	.include "macros/function.inc"
	.include "include/unk_020D5280.inc"

	.extern Unk_021CCC80
	

	.text


	arm_func_start parse_format_dup1
parse_format_dup1: ; 0x020D5280
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldrsb r3, [r0, #1]
	mov r4, #0
	mov r5, #1
	mov lr, r2
	strb r5, [sp]
	strb r4, [sp, #1]
	strb r4, [sp, #2]
	strb r4, [sp, #3]
	strb r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	cmp r3, #0x25
	add ip, r0, #1
	bne _020D52DC
	add r0, sp, #0
	strb r3, [sp, #5]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, ip, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020D52DC:
	mov r2, #2
	mov r0, r4
	mov r5, r2
	mov r6, r4
	mov r7, #1
_020D52F0:
	mov r8, r7
	cmp r3, #0x2b
	bgt _020D5320
	bge _020D5348
	cmp r3, #0x23
	bgt _020D5378
	cmp r3, #0x20
	blt _020D5378
	beq _020D5350
	cmp r3, #0x23
	beq _020D5360
	b _020D5378
_020D5320:
	cmp r3, #0x30
	bgt _020D5378
	cmp r3, #0x2d
	blt _020D5378
	beq _020D5340
	cmp r3, #0x30
	beq _020D5368
	b _020D5378
_020D5340:
	strb r6, [sp]
	b _020D537C
_020D5348:
	strb r7, [sp, #1]
	b _020D537C
_020D5350:
	ldrb r4, [sp, #1]
	cmp r4, #1
	strneb r5, [sp, #1]
	b _020D537C
_020D5360:
	strb r7, [sp, #3]
	b _020D537C
_020D5368:
	ldrb r4, [sp]
	cmp r4, #0
	strneb r2, [sp]
	b _020D537C
_020D5378:
	mov r8, r0
_020D537C:
	cmp r8, #0
	ldrnesb r3, [ip, #1]!
	bne _020D52F0
	cmp r3, #0x2a
	bne _020D53C4
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	ldr r0, [r0, #-4]
	str r0, [sp, #8]
	cmp r0, #0
	bge _020D53BC
	rsb r0, r0, #0
	mov r2, #0
	strb r2, [sp]
	str r0, [sp, #8]
_020D53BC:
	ldrsb r3, [ip, #1]!
	b _020D5414
_020D53C4:
	ldr r4, _020D5808 ; =0x020FE864
	mov r5, #0
	mov r0, #0xa
	b _020D53E8
_020D53D4:
	ldr r2, [sp, #8]
	sub r3, r3, #0x30
	mla r6, r2, r0, r3
	ldrsb r3, [ip, #1]!
	str r6, [sp, #8]
_020D53E8:
	cmp r3, #0
	blt _020D53F8
	cmp r3, #0x80
	blt _020D5400
_020D53F8:
	mov r2, r5
	b _020D540C
_020D5400:
	mov r2, r3, lsl #1
	ldrh r2, [r4, r2]
	and r2, r2, #8
_020D540C:
	cmp r2, #0
	bne _020D53D4
_020D5414:
	ldr r2, [sp, #8]
	ldr r0, _020D580C ; =0x000001FD
	cmp r2, r0
	ble _020D5444
	mov r1, #0xff
	add r0, sp, #0
	strb r1, [sp, #5]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, ip, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020D5444:
	cmp r3, #0x2e
	bne _020D54D8
	ldrsb r3, [ip, #1]!
	mov r0, #1
	strb r0, [sp, #2]
	cmp r3, #0x2a
	bne _020D5488
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	ldr r0, [r0, #-4]
	ldrsb r3, [ip, #1]!
	str r0, [sp, #0xc]
	cmp r0, #0
	movlt r0, #0
	strltb r0, [sp, #2]
	b _020D54D8
_020D5488:
	ldr r2, _020D5808 ; =0x020FE864
	mov r4, #0
	mov r0, #0xa
	b _020D54AC
_020D5498:
	ldr r1, [sp, #0xc]
	sub r3, r3, #0x30
	mla r5, r1, r0, r3
	ldrsb r3, [ip, #1]!
	str r5, [sp, #0xc]
_020D54AC:
	cmp r3, #0
	blt _020D54BC
	cmp r3, #0x80
	blt _020D54C4
_020D54BC:
	mov r1, r4
	b _020D54D0
_020D54C4:
	mov r1, r3, lsl #1
	ldrh r1, [r2, r1]
	and r1, r1, #8
_020D54D0:
	cmp r1, #0
	bne _020D5498
_020D54D8:
	cmp r3, #0x6c
	mov r0, #1
	bgt _020D5510
	cmp r3, #0x68
	blt _020D5504
	beq _020D552C
	cmp r3, #0x6a
	beq _020D5578
	cmp r3, #0x6c
	beq _020D5548
	b _020D559C
_020D5504:
	cmp r3, #0x4c
	beq _020D556C
	b _020D559C
_020D5510:
	cmp r3, #0x74
	bgt _020D5520
	beq _020D5584
	b _020D559C
_020D5520:
	cmp r3, #0x7a
	beq _020D5590
	b _020D559C
_020D552C:
	ldrsb r1, [ip, #1]
	mov r2, #2
	strb r2, [sp, #4]
	cmp r1, #0x68
	streqb r0, [sp, #4]
	ldreqsb r3, [ip, #1]!
	b _020D55A0
_020D5548:
	ldrsb r1, [ip, #1]
	mov r2, #3
	strb r2, [sp, #4]
	cmp r1, #0x6c
	bne _020D55A0
	mov r1, #4
	strb r1, [sp, #4]
	ldrsb r3, [ip, #1]!
	b _020D55A0
_020D556C:
	mov r1, #9
	strb r1, [sp, #4]
	b _020D55A0
_020D5578:
	mov r1, #6
	strb r1, [sp, #4]
	b _020D55A0
_020D5584:
	mov r1, #8
	strb r1, [sp, #4]
	b _020D55A0
_020D5590:
	mov r1, #7
	strb r1, [sp, #4]
	b _020D55A0
_020D559C:
	mov r0, #0
_020D55A0:
	cmp r0, #0
	ldrnesb r3, [ip, #1]!
	strb r3, [sp, #5]
	cmp r3, #0x61
	bgt _020D55F4
	bge _020D56DC
	cmp r3, #0x47
	bgt _020D55E8
	subs r0, r3, #0x41
	addpl pc, pc, r0, lsl #2
	b _020D57E8
_020D55CC: ; jump table
	b _020D56DC ; case 0
	b _020D57E8 ; case 1
	b _020D57E8 ; case 2
	b _020D57E8 ; case 3
	b _020D5724 ; case 4
	b _020D56A4 ; case 5
	b _020D5714 ; case 6
_020D55E8:
	cmp r3, #0x58
	beq _020D5668
	b _020D57E8
_020D55F4:
	cmp r3, #0x63
	bgt _020D5604
	beq _020D5784
	b _020D57E8
_020D5604:
	sub r0, r3, #0x64
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _020D57E8
_020D5614: ; jump table
	b _020D5668 ; case 0
	b _020D5724 ; case 1
	b _020D56A4 ; case 2
	b _020D5714 ; case 3
	b _020D57E8 ; case 4
	b _020D5668 ; case 5
	b _020D57E8 ; case 6
	b _020D57E8 ; case 7
	b _020D57E8 ; case 8
	b _020D57E8 ; case 9
	b _020D57D4 ; case 10
	b _020D5668 ; case 11
	b _020D5760 ; case 12
	b _020D57E8 ; case 13
	b _020D57E8 ; case 14
	b _020D57B0 ; case 15
	b _020D57E8 ; case 16
	b _020D5668 ; case 17
	b _020D57E8 ; case 18
	b _020D57E8 ; case 19
	b _020D5668 ; case 20
_020D5668:
	ldrb r0, [sp, #4]
	cmp r0, #9
	moveq r0, #0xff
	streqb r0, [sp, #5]
	beq _020D57F0
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
	beq _020D57F0
	ldrb r0, [sp]
	cmp r0, #2
	moveq r0, #1
	streqb r0, [sp]
	b _020D57F0
_020D56A4:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	moveq r0, #0xff
	streqb r0, [sp, #5]
	beq _020D57F0
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [sp, #0xc]
	b _020D57F0
_020D56DC:
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #0xd
	streq r0, [sp, #0xc]
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	cmpne r0, #1
	moveq r0, #0xff
	streqb r0, [sp, #5]
	b _020D57F0
_020D5714:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
_020D5724:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	cmpne r0, #1
	moveq r0, #0xff
	streqb r0, [sp, #5]
	beq _020D57F0
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [sp, #0xc]
	b _020D57F0
_020D5760:
	mov r3, #0x78
	mov r2, #1
	mov r1, #3
	mov r0, #8
	strb r3, [sp, #5]
	strb r2, [sp, #3]
	strb r1, [sp, #4]
	str r0, [sp, #0xc]
	b _020D57F0
_020D5784:
	ldrb r1, [sp, #4]
	cmp r1, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _020D57F0
	ldrb r0, [sp, #2]
	cmp r0, #0
	cmpeq r1, #0
	movne r0, #0xff
	strneb r0, [sp, #5]
	b _020D57F0
_020D57B0:
	ldrb r0, [sp, #4]
	cmp r0, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _020D57F0
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [sp, #5]
	b _020D57F0
_020D57D4:
	ldrb r0, [sp, #4]
	cmp r0, #9
	moveq r0, #0xff
	streqb r0, [sp, #5]
	b _020D57F0
_020D57E8:
	mov r0, #0xff
	strb r0, [sp, #5]
_020D57F0:
	add r0, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add r0, ip, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020D5808: .word 0x020FE864
_020D580C: .word 0x000001FD
	arm_func_end parse_format_dup1

	arm_func_start long2str_dup1
long2str_dup1: ; 0x020D5810
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	movs sl, r0
	mov r0, #0
	mov r5, r1
	str r0, [sp, #0xc]
	ldr r7, [sp, #0x4c]
	mov r6, r0
	strb r0, [r5, #-1]!
	ldrb r0, [sp, #0x43]
	str r1, [sp]
	ldrb r8, [sp, #0x45]
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldrb fp, [sp, #0x41]
	str r0, [sp, #8]
	cmpeq r7, #0
	bne _020D5884
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020D5870
	cmp r8, #0x6f
	beq _020D5884
_020D5870:
	add sp, sp, #0x10
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D5884:
	cmp r8, #0x69
	bgt _020D58AC
	bge _020D58E0
	cmp r8, #0x58
	bgt _020D58A0
	beq _020D590C
	b _020D5914
_020D58A0:
	cmp r8, #0x64
	beq _020D58E0
	b _020D5914
_020D58AC:
	cmp r8, #0x6f
	bgt _020D58C0
	moveq r4, #8
	moveq fp, #0
	b _020D5914
_020D58C0:
	cmp r8, #0x78
	bgt _020D5914
	cmp r8, #0x75
	blt _020D5914
	beq _020D5900
	cmp r8, #0x78
	beq _020D590C
	b _020D5914
_020D58E0:
	cmp sl, #0
	mov r4, #0xa
	bge _020D5914
	mov r0, #1
	cmp sl, #-0x80000000
	rsbne sl, sl, #0
	str r0, [sp, #0xc]
	b _020D5914
_020D5900:
	mov r4, #0xa
	mov fp, #0
	b _020D5914
_020D590C:
	mov r4, #0x10
	mov fp, #0
_020D5914:
	mov r0, sl
	mov r1, r4
	bl _u32_div_f
	mov sb, r1
	mov r0, sl
	mov r1, r4
	bl _u32_div_f
	cmp sb, #0xa
	mov sl, r0
	addlt sb, sb, #0x30
	blt _020D594C
	cmp r8, #0x78
	addeq sb, sb, #0x57
	addne sb, sb, #0x37
_020D594C:
	cmp sl, #0
	strb sb, [r5, #-1]!
	add r6, r6, #1
	bne _020D5914
	cmp r4, #8
	bne _020D5980
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrnesb r0, [r5]
	cmpne r0, #0x30
	movne r0, #0x30
	strneb r0, [r5, #-1]!
	addne r6, r6, #1
_020D5980:
	ldrb r0, [sp, #0x40]
	cmp r0, #2
	bne _020D59B4
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #8]
	cmp r0, #0
	cmpeq fp, #0
	subne r7, r7, #1
	cmp r4, #0x10
	bne _020D59B4
	ldr r0, [sp, #4]
	cmp r0, #0
	subne r7, r7, #2
_020D59B4:
	ldr r0, [sp]
	sub r1, r0, r5
	ldr r0, _020D5A58 ; =0x000001FD
	add r1, r7, r1
	cmp r1, r0
	addgt sp, sp, #0x10
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	cmp r6, r7
	bge _020D59F8
	mov r0, #0x30
_020D59E8:
	add r6, r6, #1
	cmp r6, r7
	strb r0, [r5, #-1]!
	blt _020D59E8
_020D59F8:
	cmp r4, #0x10
	bne _020D5A14
	ldr r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x30
	strneb r8, [r5, #-1]
	strneb r0, [r5, #-2]!
_020D5A14:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r5, #-1]!
	bne _020D5A44
	cmp fp, #1
	moveq r0, #0x2b
	streqb r0, [r5, #-1]!
	beq _020D5A44
	cmp fp, #2
	moveq r0, #0x20
	streqb r0, [r5, #-1]!
_020D5A44:
	mov r0, r5
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D5A58: .word 0x000001FD
	arm_func_end long2str_dup1

	arm_func_start longlong2str_dup1
longlong2str_dup1: ; 0x020D5A5C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sb, r1
	mov r1, #0
	mov sl, r0
	mov r8, r2
	mov r0, r1
	strb r0, [r8, #-1]!
	ldr r0, [sp, #0x58]
	cmp sb, #0
	str r0, [sp, #0x14]
	ldrb r0, [sp, #0x4f]
	cmpeq sl, #0
	str r2, [sp]
	str r0, [sp, #4]
	ldrb r0, [sp, #0x51]
	str r1, [sp, #0x18]
	mov fp, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0xc]
	ldrb r0, [sp, #0x4d]
	str r0, [sp, #0x10]
	ldreq r0, [sp, #0x14]
	cmpeq r0, #0
	bne _020D5AF4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020D5AE0
	ldr r0, [sp, #8]
	cmp r0, #0x6f
	beq _020D5AF4
_020D5AE0:
	add sp, sp, #0x1c
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D5AF4:
	ldr r0, [sp, #8]
	cmp r0, #0x69
	bgt _020D5B20
	bge _020D5B50
	cmp r0, #0x58
	bgt _020D5B14
	beq _020D5BA4
	b _020D5BB0
_020D5B14:
	cmp r0, #0x64
	beq _020D5B50
	b _020D5BB0
_020D5B20:
	cmp r0, #0x6f
	bgt _020D5B30
	beq _020D5B84
	b _020D5BB0
_020D5B30:
	cmp r0, #0x78
	bgt _020D5BB0
	cmp r0, #0x75
	blt _020D5BB0
	beq _020D5B94
	cmp r0, #0x78
	beq _020D5BA4
	b _020D5BB0
_020D5B50:
	subs r0, sl, #0
	sbcs r0, sb, #0
	mov r7, #0xa
	mov r6, #0
	bge _020D5BB0
	cmp sb, #-0x80000000
	cmpeq sl, r6
	beq _020D5B78
	rsbs sl, sl, #0
	rsc sb, sb, #0
_020D5B78:
	mov r0, #1
	str r0, [sp, #0x18]
	b _020D5BB0
_020D5B84:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #8
	b _020D5BB0
_020D5B94:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #0xa
	b _020D5BB0
_020D5BA4:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #0x10
_020D5BB0:
	mov r4, #0
_020D5BB4:
	mov r0, sl
	mov r1, sb
	mov r2, r7
	mov r3, r6
	bl _ull_mod
	mov r5, r0
	mov r0, sl
	mov r1, sb
	mov r2, r7
	mov r3, r6
	bl _ull_div
	mov sl, r0
	cmp r5, #0xa
	mov sb, r1
	addlt r0, r5, #0x30
	blt _020D5C04
	ldr r0, [sp, #8]
	cmp r0, #0x78
	addeq r0, r5, #0x57
	addne r0, r5, #0x37
_020D5C04:
	strb r0, [r8, #-1]!
	mov r0, #0
	cmp sb, r0
	cmpeq sl, r4
	add fp, fp, #1
	bne _020D5BB4
	cmp r6, #0
	cmpeq r7, #8
	bne _020D5C44
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrnesb r0, [r8]
	cmpne r0, #0x30
	movne r0, #0x30
	strneb r0, [r8, #-1]!
	addne fp, fp, #1
_020D5C44:
	ldrb r0, [sp, #0x4c]
	cmp r0, #2
	bne _020D5C94
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0
	ldrne r0, [sp, #0x14]
	subne r0, r0, #1
	strne r0, [sp, #0x14]
	cmp r6, #0
	cmpeq r7, #0x10
	bne _020D5C94
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrne r0, [sp, #0x14]
	subne r0, r0, #2
	strne r0, [sp, #0x14]
_020D5C94:
	ldr r0, [sp]
	ldr r1, _020D5D54 ; =0x000001FD
	sub r2, r0, r8
	ldr r0, [sp, #0x14]
	add r0, r0, r2
	cmp r0, r1
	addgt sp, sp, #0x1c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldr r0, [sp, #0x14]
	cmp fp, r0
	bge _020D5CE4
	mov r1, #0x30
_020D5CD0:
	ldr r0, [sp, #0x14]
	add fp, fp, #1
	cmp fp, r0
	strb r1, [r8, #-1]!
	blt _020D5CD0
_020D5CE4:
	cmp r6, #0
	cmpeq r7, #0x10
	bne _020D5D0C
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020D5D0C
	ldr r0, [sp, #8]
	mov r1, #0x30
	strb r0, [r8, #-1]
	strb r1, [r8, #-2]!
_020D5D0C:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _020D5D40
	ldr r0, [sp, #0x10]
	cmp r0, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020D5D40
	cmp r0, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
_020D5D40:
	mov r0, r8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D5D54: .word 0x000001FD
	arm_func_end longlong2str_dup1

	arm_func_start double2hex_dup1
double2hex_dup1: ; 0x020D5D58
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x44
	ldr r7, [sp, #0x80]
	ldr r0, _020D6208 ; =0x000001FD
	mov r8, r2
	cmp r7, r0
	ldrb r6, [sp, #0x79]
	ldrb r5, [sp, #0x77]
	ldrb r4, [sp, #0x75]
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x6c]
	addgt sp, sp, #0x44
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addgt sp, sp, #0x10
	bxgt lr
	mov sl, #0
	mov sb, #0x20
	add r0, sp, #8
	add r3, sp, #0xc
	strb sl, [sp, #8]
	strh sb, [sp, #0xa]
	bl __num2dec
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	bl fabs
	mov r2, r0
	mov r0, sl
	mov r3, r1
	mov r1, r0
	bl _d_feq
	bne _020D5E24
	ldr r3, _020D620C ; =0x021017D8
	sub r0, r8, #6
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	add sp, sp, #0x44
	strb r2, [r8, #-6]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r2, [r3, #4]
	ldrb r1, [r3, #5]
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5E24:
	ldrb r0, [sp, #0x11]
	cmp r0, #0x49
	bne _020D5F34
	ldrsb r0, [sp, #0xc]
	cmp r0, #0
	beq _020D5EC0
	cmp r6, #0x41
	sub r0, r8, #5
	bne _020D5E84
	ldr r3, _020D6210 ; =0x021017E0
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5E84:
	ldr r3, _020D6214 ; =0x021017E8
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5EC0:
	cmp r6, #0x41
	sub r0, r8, #4
	bne _020D5F00
	ldr r3, _020D6218 ; =0x021017F0
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5F00:
	ldr r3, _020D621C ; =0x021017F4
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5F34:
	cmp r0, #0x4e
	bne _020D6040
	ldrsb r0, [sp, #0xc]
	cmp r0, #0
	beq _020D5FCC
	cmp r6, #0x41
	sub r0, r8, #5
	bne _020D5F90
	ldr r3, _020D6220 ; =0x021017F8
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5F90:
	ldr r3, _020D6224 ; =0x02101800
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D5FCC:
	cmp r6, #0x41
	sub r0, r8, #4
	bne _020D600C
	ldr r3, _020D6228 ; =0x02101808
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D600C:
	ldr r3, _020D622C ; =0x0210180C
	add sp, sp, #0x44
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020D6040:
	mov r3, sl
	mov r1, #1
	mov r0, #0x64
	add sb, sp, #0x68
	strb r1, [sp, #0x34]
	strb r1, [sp, #0x35]
	strb r3, [sp, #0x36]
	strb r3, [sp, #0x37]
	strb r3, [sp, #0x38]
	str r3, [sp, #0x3c]
	str r1, [sp, #0x40]
	strb r0, [sp, #0x39]
_020D6070:
	rsb r1, r3, #7
	ldrsb r2, [sb, r3]
	ldrsb r0, [sb, r1]
	strb r0, [sb, r3]
	add r3, r3, #1
	strb r2, [sb, r1]
	cmp r3, #4
	blt _020D6070
	ldrb r0, [sp, #0x69]
	ldrb r1, [sp, #0x68]
	ldr sb, _020D6230 ; =0x000007FF
	mov r0, r0, lsl #0x11
	orr r1, r0, r1, lsl #25
	add r0, sp, #0x34
	and lr, sb, r1, lsr #21
	sub ip, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	rsb r0, sb, #0x400
	mov r1, r8
	add r0, lr, r0
	ldmia ip, {r2, r3}
	bl long2str_dup1
	cmp r6, #0x61
	moveq r1, #0x70
	movne r1, #0x50
	strb r1, [r0, #-1]!
	mov r1, r7, lsl #2
	mov lr, r7
	cmp r7, #1
	add r8, r1, #0xb
	add ip, sp, #0x68
	blt _020D6180
	mov sb, #0x30
_020D60F8:
	cmp r8, #0x40
	bge _020D6168
	ldrb r1, [ip, r8, asr #3]
	and r2, r8, #7
	rsb r3, r2, #7
	mov r2, r1, asr r3
	sub sl, r8, #4
	bic r1, r8, #7
	bic sl, sl, #7
	cmp r1, sl
	add sl, ip, r8, asr #3
	and r1, r2, #0xff
	beq _020D613C
	ldrb r2, [sl, #-1]
	mov r2, r2, lsl #8
	orr r1, r1, r2, asr r3
	and r1, r1, #0xff
_020D613C:
	and r1, r1, #0xf
	cmp r1, #0xa
	addlo r1, r1, #0x30
	andlo r1, r1, #0xff
	blo _020D616C
	cmp r6, #0x61
	addeq r1, r1, #0x57
	andeq r1, r1, #0xff
	addne r1, r1, #0x37
	andne r1, r1, #0xff
	b _020D616C
_020D6168:
	mov r1, sb
_020D616C:
	sub lr, lr, #1
	cmp lr, #1
	strb r1, [r0, #-1]!
	sub r8, r8, #4
	bge _020D60F8
_020D6180:
	cmp r7, #0
	cmpeq r5, #0
	movne r1, #0x2e
	strneb r1, [r0, #-1]!
	mov r1, #0x31
	strb r1, [r0, #-1]
	cmp r6, #0x61
	moveq r1, #0x78
	movne r1, #0x58
	strb r1, [r0, #-2]!
	mov r1, #0x30
	strb r1, [r0, #-1]!
	ldrsb r1, [sp, #0xc]
	cmp r1, #0
	movne r1, #0x2d
	strneb r1, [r0, #-1]!
	addne sp, sp, #0x44
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addne sp, sp, #0x10
	bxne lr
	cmp r4, #1
	moveq r1, #0x2b
	streqb r1, [r0, #-1]!
	addeq sp, sp, #0x44
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r4, #2
	moveq r1, #0x20
	streqb r1, [r0, #-1]!
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D6208: .word 0x000001FD
_020D620C: .word 0x021017D8
_020D6210: .word 0x021017E0
_020D6214: .word 0x021017E8
_020D6218: .word 0x021017F0
_020D621C: .word 0x021017F4
_020D6220: .word 0x021017F8
_020D6224: .word 0x02101800
_020D6228: .word 0x02101808
_020D622C: .word 0x0210180C
_020D6230: .word 0x000007FF
	arm_func_end double2hex_dup1

	arm_func_start round_decimal_dup1
round_decimal_dup1: ; 0x020D6234
	stmfd sp!, {r4, lr}
	cmp r1, #0
	bge _020D625C
_020D6240:
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #1
	strb r1, [r0, #4]
	mov r1, #0x30
	strb r1, [r0, #5]
	ldmia sp!, {r4, pc}
_020D625C:
	ldrb lr, [r0, #4]
	cmp r1, lr
	ldmgeia sp!, {r4, pc}
	add ip, r0, #5
	add r2, ip, r1
	add r2, r2, #1
	ldrsb r3, [r2, #-1]!
	sub r3, r3, #0x30
	mov r3, r3, lsl #0x18
	mov r3, r3, asr #0x18
	cmp r3, #5
	bne _020D62BC
	add ip, ip, lr
_020D6290:
	sub ip, ip, #1
	cmp ip, r2
	bls _020D62A8
	ldrsb r3, [ip]
	cmp r3, #0x30
	beq _020D6290
_020D62A8:
	cmp ip, r2
	ldreqsb r3, [r2, #-1]
	andeq r4, r3, #1
	movne r4, #1
	b _020D62C4
_020D62BC:
	movgt r4, #1
	movle r4, #0
_020D62C4:
	cmp r1, #0
	beq _020D6320
	mov ip, #0
	mov lr, #1
_020D62D4:
	ldrsb r3, [r2, #-1]!
	sub r3, r3, #0x30
	add r3, r3, r4
	mov r3, r3, lsl #0x18
	mov r3, r3, asr #0x18
	cmp r3, #9
	movgt r4, lr
	movle r4, ip
	cmp r4, #0
	bne _020D6304
	cmp r3, #0
	bne _020D630C
_020D6304:
	sub r1, r1, #1
	b _020D6318
_020D630C:
	add r3, r3, #0x30
	strb r3, [r2]
	b _020D6320
_020D6318:
	cmp r1, #0
	bne _020D62D4
_020D6320:
	cmp r4, #0
	beq _020D6348
	ldrsh r3, [r0, #2]
	mov r2, #1
	mov r1, #0x31
	add r3, r3, #1
	strh r3, [r0, #2]
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	ldmia sp!, {r4, pc}
_020D6348:
	cmp r1, #0
	beq _020D6240
	strb r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end round_decimal_dup1

	arm_func_start float2str_dup1
float2str_dup1: ; 0x020D6358
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	ldr r7, [sp, #0x68]
	ldr r3, _020D6A90 ; =0x000001FD
	ldrb r6, [sp, #0x61]
	ldrb r5, [sp, #0x5f]
	ldrb r4, [sp, #0x5d]
	cmp r7, r3
	mov sl, r0
	mov r8, r1
	mov sb, r2
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	mov ip, #0
	mov fp, #0x20
	add r0, sp, #0
	add r3, sp, #4
	mov r1, sl
	mov r2, r8
	strb ip, [sp]
	strh fp, [sp, #2]
	bl __num2dec
	ldrb r0, [sp, #8]
	add r1, sp, #9
	add r0, r1, r0
	b _020D63E8
_020D63D0:
	ldrb r2, [sp, #8]
	ldrsh r1, [sp, #6]
	sub r2, r2, #1
	add r1, r1, #1
	strb r2, [sp, #8]
	strh r1, [sp, #6]
_020D63E8:
	ldrb r1, [sp, #8]
	cmp r1, #1
	bls _020D6400
	ldrsb r1, [r0, #-1]!
	cmp r1, #0x30
	beq _020D63D0
_020D6400:
	ldrb r0, [sp, #9]
	cmp r0, #0x30
	beq _020D6420
	cmp r0, #0x49
	beq _020D642C
	cmp r0, #0x4e
	beq _020D658C
	b _020D66E0
_020D6420:
	mov r0, #0
	strh r0, [sp, #6]
	b _020D66E0
_020D642C:
	mov r2, #0
	mov r0, sl
	mov r1, r8
	mov r3, r2
	bl _d_flt
	bhs _020D64F0
	cmp r6, #0
	sub r0, sb, #5
	blt _020D6458
	cmp r6, #0x80
	blt _020D6460
_020D6458:
	mov r1, #0
	b _020D6470
_020D6460:
	ldr r1, _020D6A94 ; =0x020FE864
	mov r2, r6, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #0x200
_020D6470:
	cmp r1, #0
	beq _020D64B4
	ldr r3, _020D6A98 ; =0x021017E0
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D64B4:
	ldr r3, _020D6A9C ; =0x021017E8
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D64F0:
	cmp r6, #0
	sub r0, sb, #4
	blt _020D6504
	cmp r6, #0x80
	blt _020D650C
_020D6504:
	mov r1, #0
	b _020D651C
_020D650C:
	ldr r1, _020D6A94 ; =0x020FE864
	mov r2, r6, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #0x200
_020D651C:
	cmp r1, #0
	beq _020D6558
	ldr r3, _020D6AA0 ; =0x021017F0
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D6558:
	ldr r3, _020D6AA4 ; =0x021017F4
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D658C:
	ldrsb r0, [sp, #4]
	cmp r0, #0
	beq _020D6644
	cmp r6, #0
	sub r0, sb, #5
	blt _020D65AC
	cmp r6, #0x80
	blt _020D65B4
_020D65AC:
	mov r1, #0
	b _020D65C4
_020D65B4:
	ldr r1, _020D6A94 ; =0x020FE864
	mov r2, r6, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #0x200
_020D65C4:
	cmp r1, #0
	beq _020D6608
	ldr r3, _020D6AA8 ; =0x021017F8
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D6608:
	ldr r3, _020D6AAC ; =0x02101800
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D6644:
	cmp r6, #0
	sub r0, sb, #4
	blt _020D6658
	cmp r6, #0x80
	blt _020D6660
_020D6658:
	mov r1, #0
	b _020D6670
_020D6660:
	ldr r1, _020D6A94 ; =0x020FE864
	mov r2, r6, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #0x200
_020D6670:
	cmp r1, #0
	beq _020D66AC
	ldr r3, _020D6AB0 ; =0x02101808
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D66AC:
	ldr r3, _020D6AB4 ; =0x0210180C
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D66E0:
	ldrb r0, [sp, #8]
	ldrsh r1, [sp, #6]
	sub r8, sb, #1
	sub r0, r0, #1
	add r0, r1, r0
	strh r0, [sp, #6]
	mov r0, #0
	strb r0, [r8]
	cmp r6, #0x65
	bgt _020D6734
	bge _020D67C0
	cmp r6, #0x47
	bgt _020D6A7C
	cmp r6, #0x45
	blt _020D6A7C
	beq _020D67C0
	cmp r6, #0x46
	beq _020D6908
	cmp r6, #0x47
	beq _020D674C
	b _020D6A7C
_020D6734:
	cmp r6, #0x66
	bgt _020D6744
	beq _020D6908
	b _020D6A7C
_020D6744:
	cmp r6, #0x67
	bne _020D6A7C
_020D674C:
	ldrb r0, [sp, #8]
	cmp r0, r7
	ble _020D6764
	add r0, sp, #4
	mov r1, r7
	bl round_decimal_dup1
_020D6764:
	ldrsh r2, [sp, #6]
	mvn r0, #3
	cmp r2, r0
	blt _020D677C
	cmp r2, r7
	blt _020D679C
_020D677C:
	cmp r5, #0
	ldreqb r0, [sp, #8]
	subne r7, r7, #1
	subeq r7, r0, #1
	cmp r6, #0x67
	moveq r6, #0x65
	movne r6, #0x45
	b _020D67C0
_020D679C:
	cmp r5, #0
	addne r0, r2, #1
	subne r7, r7, r0
	bne _020D6908
	ldrb r1, [sp, #8]
	add r0, r2, #1
	subs r7, r1, r0
	movmi r7, #0
	b _020D6908
_020D67C0:
	ldrb r0, [sp, #8]
	add r1, r7, #1
	cmp r0, r1
	ble _020D67D8
	add r0, sp, #4
	bl round_decimal_dup1
_020D67D8:
	ldrsh lr, [sp, #6]
	mov fp, #0x2b
	mov sl, #0
	cmp lr, #0
	rsblt lr, lr, #0
	movlt fp, #0x2d
	ldr r3, _020D6AB8 ; =0x66666667
	mov r0, #0xa
	b _020D682C
_020D67FC:
	mov r1, lr, lsr #0x1f
	smull r2, ip, r3, lr
	add ip, r1, ip, asr #2
	smull r1, r2, r0, ip
	sub ip, lr, r1
	add r1, ip, #0x30
	strb r1, [r8, #-1]!
	mov r2, lr
	smull r1, lr, r3, r2
	mov r1, r2, lsr #0x1f
	add lr, r1, lr, asr #2
	add sl, sl, #1
_020D682C:
	cmp lr, #0
	bne _020D67FC
	cmp sl, #2
	blt _020D67FC
	strb fp, [r8, #-1]
	strb r6, [r8, #-2]!
	sub r1, sb, r8
	ldr r0, _020D6A90 ; =0x000001FD
	add r1, r7, r1
	cmp r1, r0
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldrb r1, [sp, #8]
	add r0, r7, #1
	cmp r1, r0
	bge _020D6898
	add r0, r7, #2
	sub r0, r0, r1
	subs r1, r0, #1
	beq _020D6898
	mov r0, #0x30
_020D688C:
	strb r0, [r8, #-1]!
	subs r1, r1, #1
	bne _020D688C
_020D6898:
	ldrb r1, [sp, #8]
	add r0, sp, #9
	add r2, r0, r1
	subs r1, r1, #1
	beq _020D68BC
_020D68AC:
	ldrsb r0, [r2, #-1]!
	subs r1, r1, #1
	strb r0, [r8, #-1]!
	bne _020D68AC
_020D68BC:
	cmp r7, #0
	cmpeq r5, #0
	movne r0, #0x2e
	strneb r0, [r8, #-1]!
	ldrb r0, [sp, #9]
	strb r0, [r8, #-1]!
	ldrsb r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _020D6A7C
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020D6A7C
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
	b _020D6A7C
_020D6908:
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	subs r1, r0, #1
	movmi r1, #0
	cmp r1, r7
	ble _020D6948
	sub r1, r1, r7
	add r0, sp, #4
	sub r1, r2, r1
	bl round_decimal_dup1
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	subs r1, r0, #1
	movmi r1, #0
_020D6948:
	adds r0, r3, #1
	movmi r0, #0
	ldr r3, _020D6A90 ; =0x000001FD
	add r6, r0, r1
	cmp r6, r3
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	add r3, sp, #9
	sub r6, r7, r1
	cmp r6, #0
	add r2, r3, r2
	mov sb, #0
	ble _020D699C
	mov r3, #0x30
_020D698C:
	add sb, sb, #1
	cmp sb, r6
	strb r3, [r8, #-1]!
	blt _020D698C
_020D699C:
	mov r6, #0
	b _020D69B0
_020D69A4:
	ldrsb r3, [r2, #-1]!
	add r6, r6, #1
	strb r3, [r8, #-1]!
_020D69B0:
	cmp r6, r1
	ldrltb r3, [sp, #8]
	cmplt r6, r3
	blt _020D69A4
	cmp r6, r1
	bge _020D69DC
	mov r3, #0x30
_020D69CC:
	add r6, r6, #1
	cmp r6, r1
	strb r3, [r8, #-1]!
	blt _020D69CC
_020D69DC:
	cmp r7, #0
	cmpeq r5, #0
	movne r1, #0x2e
	strneb r1, [r8, #-1]!
	cmp r0, #0
	beq _020D6A44
	ldrb r1, [sp, #8]
	mov r5, #0
	sub r1, r0, r1
	cmp r1, #0
	ble _020D6A24
	mov r3, #0x30
_020D6A0C:
	strb r3, [r8, #-1]!
	ldrb r1, [sp, #8]
	add r5, r5, #1
	sub r1, r0, r1
	cmp r5, r1
	blt _020D6A0C
_020D6A24:
	cmp r5, r0
	bge _020D6A4C
_020D6A2C:
	ldrsb r1, [r2, #-1]!
	add r5, r5, #1
	cmp r5, r0
	strb r1, [r8, #-1]!
	blt _020D6A2C
	b _020D6A4C
_020D6A44:
	mov r0, #0x30
	strb r0, [r8, #-1]!
_020D6A4C:
	ldrsb r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _020D6A7C
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020D6A7C
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
_020D6A7C:
	mov r0, r8
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D6A90: .word 0x000001FD
_020D6A94: .word 0x020FE864
_020D6A98: .word 0x021017E0
_020D6A9C: .word 0x021017E8
_020D6AA0: .word 0x021017F0
_020D6AA4: .word 0x021017F4
_020D6AA8: .word 0x021017F8
_020D6AAC: .word 0x02101800
_020D6AB0: .word 0x02101808
_020D6AB4: .word 0x0210180C
_020D6AB8: .word 0x66666667
	arm_func_end float2str_dup1

	arm_func_start __pformatter
__pformatter: ; 0x020D6ABC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x22c
	mov r3, #0x20
	mov fp, r2
	strb r3, [sp, #0x19]
	ldrsb r2, [fp]
	mov sb, r0
	mov r8, r1
	cmp r2, #0
	mov sl, #0
	beq _020D72C4
_020D6AEC:
	mov r0, fp
	mov r1, #0x25
	bl strchr
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020D6B40
	mov r0, fp
	bl strlen
	movs r2, r0
	add sl, sl, r2
	beq _020D72C4
	mov r0, r8
	mov r1, fp
	blx sb
	cmp r0, #0
	bne _020D72C4
	add sp, sp, #0x22c
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D6B40:
	subs r2, r0, fp
	add sl, sl, r2
	beq _020D6B70
	mov r0, r8
	mov r1, fp
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020D6B70:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x25c
	add r2, sp, #0x1c
	bl parse_format_dup1
	ldrb r1, [sp, #0x21]
	mov fp, r0
	cmp r1, #0x61
	bgt _020D6BDC
	bge _020D6F40
	cmp r1, #0x47
	bgt _020D6BD0
	subs r0, r1, #0x41
	addpl pc, pc, r0, lsl #2
	b _020D6BC4
_020D6BA8: ; jump table
	b _020D6F40 ; case 0
	b _020D7128 ; case 1
	b _020D7128 ; case 2
	b _020D7128 ; case 3
	b _020D6ED8 ; case 4
	b _020D6ED8 ; case 5
	b _020D6ED8 ; case 6
_020D6BC4:
	cmp r1, #0x25
	beq _020D7114
	b _020D7128
_020D6BD0:
	cmp r1, #0x58
	beq _020D6D9C
	b _020D7128
_020D6BDC:
	cmp r1, #0x75
	bgt _020D6C44
	subs r0, r1, #0x64
	addpl pc, pc, r0, lsl #2
	b _020D6C38
_020D6BF0: ; jump table
	b _020D6C5C ; case 0
	b _020D6ED8 ; case 1
	b _020D6ED8 ; case 2
	b _020D6ED8 ; case 3
	b _020D7128 ; case 4
	b _020D6C5C ; case 5
	b _020D7128 ; case 6
	b _020D7128 ; case 7
	b _020D7128 ; case 8
	b _020D7128 ; case 9
	b _020D7068 ; case 10
	b _020D6D9C ; case 11
	b _020D7128 ; case 12
	b _020D7128 ; case 13
	b _020D7128 ; case 14
	b _020D6FA8 ; case 15
	b _020D7128 ; case 16
	b _020D6D9C ; case 17
_020D6C38:
	cmp r1, #0x63
	beq _020D70F4
	b _020D7128
_020D6C44:
	cmp r1, #0x78
	bgt _020D6C54
	beq _020D6D9C
	b _020D7128
_020D6C54:
	cmp r1, #0xff
	b _020D7128
_020D6C5C:
	ldrb r0, [sp, #0x20]
	cmp r0, #3
	bne _020D6C7C
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6D14
_020D6C7C:
	cmp r0, #4
	bne _020D6CA4
	ldr r1, [sp, #0x25c]
	add r2, r1, #8
	str r2, [sp, #0x25c]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020D6D14
_020D6CA4:
	cmp r0, #6
	bne _020D6CCC
	ldr r1, [sp, #0x25c]
	add r2, r1, #8
	str r2, [sp, #0x25c]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020D6D14
_020D6CCC:
	cmp r0, #7
	bne _020D6CE8
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6D14
_020D6CE8:
	cmp r0, #8
	bne _020D6D04
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6D14
_020D6D04:
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
_020D6D14:
	cmp r0, #2
	moveq r1, r5, lsl #0x10
	moveq r5, r1, asr #0x10
	cmp r0, #1
	moveq r1, r5, lsl #0x18
	moveq r5, r1, asr #0x18
	cmp r0, #4
	cmpne r0, #6
	add r0, sp, #0x1c
	bne _020D6D68
	sub r4, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r3, [r4, #0]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x22c
	bl longlong2str_dup1
	movs r7, r0
	beq _020D7128
	b _020D6D8C
_020D6D68:
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r1, sp, #0x22c
	mov r0, r5
	ldmia r4, {r2, r3}
	bl long2str_dup1
	movs r7, r0
	beq _020D7128
_020D6D8C:
	add r0, sp, #0x200
	add r0, r0, #0x2b
	sub r6, r0, r7
	b _020D7174
_020D6D9C:
	ldrb r0, [sp, #0x20]
	cmp r0, #3
	bne _020D6DBC
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6E54
_020D6DBC:
	cmp r0, #4
	bne _020D6DE4
	ldr r1, [sp, #0x25c]
	add r2, r1, #8
	str r2, [sp, #0x25c]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020D6E54
_020D6DE4:
	cmp r0, #6
	bne _020D6E0C
	ldr r1, [sp, #0x25c]
	add r2, r1, #8
	str r2, [sp, #0x25c]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020D6E54
_020D6E0C:
	cmp r0, #7
	bne _020D6E28
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6E54
_020D6E28:
	cmp r0, #8
	bne _020D6E44
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
	b _020D6E54
_020D6E44:
	ldr r1, [sp, #0x25c]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r5, [r1, #-4]
_020D6E54:
	cmp r0, #2
	moveq r1, r5, lsl #0x10
	moveq r5, r1, lsr #0x10
	cmp r0, #1
	andeq r5, r5, #0xff
	cmp r0, #4
	cmpne r0, #6
	add r0, sp, #0x1c
	bne _020D6EA4
	sub r4, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r3, [r4, #0]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x22c
	bl longlong2str_dup1
	movs r7, r0
	beq _020D7128
	b _020D6EC8
_020D6EA4:
	sub r4, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r1, sp, #0x22c
	mov r0, r5
	ldmia r4, {r2, r3}
	bl long2str_dup1
	movs r7, r0
	beq _020D7128
_020D6EC8:
	add r0, sp, #0x200
	add r0, r0, #0x2b
	sub r6, r0, r7
	b _020D7174
_020D6ED8:
	ldrb r0, [sp, #0x20]
	cmp r0, #9
	ldrne r0, [sp, #0x25c]
	addne r0, r0, #8
	strne r0, [sp, #0x25c]
	bne _020D6EFC
	ldr r0, [sp, #0x25c]
	add r0, r0, #8
	str r0, [sp, #0x25c]
_020D6EFC:
	ldr r7, [r0, #-8]
	ldr r6, [r0, #-4]
	add r0, sp, #0x1c
	sub r4, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r3, [r4, #0]
	mov r0, r7
	mov r1, r6
	add r2, sp, #0x22c
	bl float2str_dup1
	movs r7, r0
	beq _020D7128
	add r0, sp, #0x200
	add r0, r0, #0x2b
	sub r6, r0, r7
	b _020D7174
_020D6F40:
	ldrb r0, [sp, #0x20]
	cmp r0, #9
	ldrne r0, [sp, #0x25c]
	addne r0, r0, #8
	strne r0, [sp, #0x25c]
	bne _020D6F64
	ldr r0, [sp, #0x25c]
	add r0, r0, #8
	str r0, [sp, #0x25c]
_020D6F64:
	ldr r7, [r0, #-8]
	ldr r6, [r0, #-4]
	add r0, sp, #0x1c
	sub r4, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r3, [r4, #0]
	mov r0, r7
	mov r1, r6
	add r2, sp, #0x22c
	bl double2hex_dup1
	movs r7, r0
	beq _020D7128
	add r0, sp, #0x200
	add r0, r0, #0x2b
	sub r6, r0, r7
	b _020D7174
_020D6FA8:
	ldrb r0, [sp, #0x20]
	cmp r0, #5
	bne _020D6FE8
	ldr r0, [sp, #0x25c]
	mov r2, #0x200
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r1, [r0, #-4]
	add r0, sp, #0x2c
	cmp r1, #0
	ldreq r1, _020D72D8 ; =0x02101810
	bl wcstombs
	cmp r0, #0
	blt _020D7128
	add r7, sp, #0x2c
	b _020D6FF8
_020D6FE8:
	ldr r0, [sp, #0x25c]
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r7, [r0, #-4]
_020D6FF8:
	ldrb r0, [sp, #0x1f]
	cmp r7, #0
	ldreq r7, _020D72DC ; =0x02101814
	cmp r0, #0
	beq _020D702C
	ldrb r0, [sp, #0x1e]
	ldrb r6, [r7], #1
	cmp r0, #0
	beq _020D7174
	ldr r0, [sp, #0x28]
	cmp r6, r0
	movgt r6, r0
	b _020D7174
_020D702C:
	ldrb r0, [sp, #0x1e]
	cmp r0, #0
	beq _020D7058
	ldr r6, [sp, #0x28]
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl memchr
	cmp r0, #0
	subne r6, r0, r7
	b _020D7174
_020D7058:
	mov r0, r7
	bl strlen
	mov r6, r0
	b _020D7174
_020D7068:
	ldr r1, [sp, #0x25c]
	ldrb r0, [sp, #0x20]
	add r1, r1, #4
	str r1, [sp, #0x25c]
	ldr r1, [r1, #-4]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020D72B8
_020D7088: ; jump table
	b _020D70AC ; case 0
	b _020D72B8 ; case 1
	b _020D70B4 ; case 2
	b _020D70BC ; case 3
	b _020D70E4 ; case 4
	b _020D72B8 ; case 5
	b _020D70C4 ; case 6
	b _020D70D4 ; case 7
	b _020D70DC ; case 8
_020D70AC:
	str sl, [r1]
	b _020D72B8
_020D70B4:
	strh sl, [r1]
	b _020D72B8
_020D70BC:
	str sl, [r1]
	b _020D72B8
_020D70C4:
	str sl, [r1]
	mov r0, sl, asr #0x1f
	str r0, [r1, #4]
	b _020D72B8
_020D70D4:
	str sl, [r1]
	b _020D72B8
_020D70DC:
	str sl, [r1]
	b _020D72B8
_020D70E4:
	str sl, [r1]
	mov r0, sl, asr #0x1f
	str r0, [r1, #4]
	b _020D72B8
_020D70F4:
	ldr r0, [sp, #0x25c]
	add r7, sp, #0x2c
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r0, [r0, #-4]
	mov r6, #1
	strb r0, [sp, #0x2c]
	b _020D7174
_020D7114:
	mov r0, #0x25
	strb r0, [sp, #0x2c]
	add r7, sp, #0x2c
	mov r6, #1
	b _020D7174
_020D7128:
	ldr r0, [sp, #0xc]
	bl strlen
	movs r4, r0
	beq _020D7160
	ldr r1, [sp, #0xc]
	mov r0, r8
	mov r2, r4
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020D7160:
	add sp, sp, #0x22c
	add r0, sl, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020D7174:
	ldrb r0, [sp, #0x1c]
	mov r4, r6
	cmp r0, #0
	beq _020D7228
	cmp r0, #2
	moveq r0, #0x30
	movne r0, #0x20
	strb r0, [sp, #0x19]
	ldrsb r0, [r7]
	cmp r0, #0x2b
	cmpne r0, #0x2d
	cmpne r0, #0x20
	bne _020D71E4
	ldrsb r0, [sp, #0x19]
	cmp r0, #0x30
	bne _020D71E4
	mov r0, r8
	mov r1, r7
	mov r2, #1
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r7, r7, #1
	sub r6, r6, #1
_020D71E4:
	ldr r0, [sp, #0x24]
	cmp r4, r0
	bge _020D7228
_020D71F0:
	mov r0, r8
	add r1, sp, #0x19
	mov r2, #1
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	cmp r4, r0
	blt _020D71F0
_020D7228:
	cmp r6, #0
	beq _020D7258
	mov r0, r8
	mov r1, r7
	mov r2, r6
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020D7258:
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	bne _020D72B4
	ldr r0, [sp, #0x24]
	cmp r4, r0
	bge _020D72B4
	mov r6, #0x20
	add r7, sp, #0x18
_020D7278:
	mov r0, r8
	mov r1, r7
	mov r2, #1
	strb r6, [sp, #0x18]
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	cmp r4, r0
	blt _020D7278
_020D72B4:
	add sl, sl, r4
_020D72B8:
	ldrsb r0, [fp]
	cmp r0, #0
	bne _020D6AEC
_020D72C4:
	mov r0, sl
	add sp, sp, #0x22c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D72D8: .word 0x02101810
_020D72DC: .word 0x02101814
	arm_func_end __pformatter

	arm_func_start __FileWrite
__FileWrite: ; 0x020D72E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	mov r3, r5
	mov r1, #1
	mov r4, r2
	bl __fwrite
	cmp r4, r0
	movne r5, #0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end __FileWrite

	arm_func_start __StringWrite
__StringWrite: ; 0x020D730C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r3, [r4, #8]
	mov r5, r2
	ldr r2, [r4, #4]
	add r0, r3, r5
	cmp r0, r2
	ldr r0, [r4, #0]
	subhi r5, r2, r3
	mov r2, r5
	add r0, r0, r3
	bl memcpy
	ldr r1, [r4, #8]
	mov r0, #1
	add r1, r1, r5
	str r1, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end __StringWrite

	arm_func_start printf
printf: ; 0x020D7350
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r0, _020D7450 ; =0x021014DC
	mvn r1, #0
	bl fwide
	cmp r0, #0
	mvnge r0, #0
	ldmgeia sp!, {r4, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r0, _020D7454 ; =0x021D09B0
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020D73AC
	ldr r0, _020D7458 ; =0x021CCC80
	ldr r1, _020D745C ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D7460 ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0xc]
	str r2, [r0, #0xc]
	b _020D7404
_020D73AC:
	ldr r0, _020D7458 ; =0x021CCC80
	ldr r1, _020D745C ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, #0xc]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D73DC
	ldr r0, _020D7460 ; =0x021D0944
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	b _020D7404
_020D73DC:
	ldr r0, _020D7454 ; =0x021D09B0
	bl OS_LockMutex
	ldr r0, _020D7458 ; =0x021CCC80
	ldr r1, _020D745C ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D7460 ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0xc]
	str r2, [r0, #0xc]
_020D7404:
	add r0, sp, #8
	bic r3, r0, #3
	ldr r2, [sp, #8]
	ldr r0, _020D7464 ; =__FileWrite
	ldr r1, _020D7450 ; =0x021014DC
	add r3, r3, #4
	bl __pformatter
	ldr r1, _020D7460 ; =0x021D0944
	mov r4, r0
	ldr r0, [r1, #0xc]
	subs r0, r0, #1
	str r0, [r1, #0xc]
	bne _020D7440
	ldr r0, _020D7454 ; =0x021D09B0
	bl OS_UnlockMutex
_020D7440:
	mov r0, r4
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020D7450: .word 0x021014DC
_020D7454: .word 0x021D09B0
_020D7458: .word Unk_021CCC80
_020D745C: .word 0x021D0920
_020D7460: .word 0x021D0944
_020D7464: .word __FileWrite
	arm_func_end printf

	arm_func_start vsnprintf
vsnprintf: ; 0x020D7468
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	mov ip, #0
	ldr r0, _020D74CC ; =__StringWrite
	add r1, sp, #0
	str r5, [sp]
	str r4, [sp, #4]
	str ip, [sp, #8]
	bl __pformatter
	cmp r5, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, pc}
	cmp r0, r4
	movlo r1, #0
	addlo sp, sp, #0xc
	strlob r1, [r5, r0]
	ldmloia sp!, {r4, r5, pc}
	cmp r4, #0
	addne r1, r5, r4
	movne r2, #0
	strneb r2, [r1, #-1]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020D74CC: .word __StringWrite
	arm_func_end vsnprintf

	arm_func_start vsprintf
vsprintf: ; 0x020D74D0
	ldr ip, _020D74E4 ; =vsnprintf
	mov r3, r2
	mov r2, r1
	mvn r1, #0
	bx ip
	; .align 2, 0
_020D74E4: .word vsnprintf
	arm_func_end vsprintf

	arm_func_start snprintf
snprintf: ; 0x020D74E8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r3, sp, #0x10
	bic r3, r3, #3
	ldr r2, [sp, #0x10]
	add r3, r3, #4
	bl vsnprintf
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end snprintf

	arm_func_start sprintf
sprintf: ; 0x020D7510
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r1, sp, #0xc
	bic r1, r1, #3
	add r3, r1, #4
	ldr r2, [sp, #0xc]
	mvn r1, #0
	bl vsnprintf
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sprintf


	.section .exception, 4

	.global Unk_020E4558
Unk_020E4558: ; 0x020E4558
	.incbin "incbin/arm9_exception.bin", 0x0, 0x8

	.data


	.global Unk_021017D8
Unk_021017D8: ; 0x021017D8
	.incbin "incbin/arm9_data.bin", 0x2AF8, 0x2B00 - 0x2AF8

	.global Unk_021017E0
Unk_021017E0: ; 0x021017E0
	.incbin "incbin/arm9_data.bin", 0x2B00, 0x2B08 - 0x2B00

	.global Unk_021017E8
Unk_021017E8: ; 0x021017E8
	.incbin "incbin/arm9_data.bin", 0x2B08, 0x2B10 - 0x2B08

	.global Unk_021017F0
Unk_021017F0: ; 0x021017F0
	.incbin "incbin/arm9_data.bin", 0x2B10, 0x2B14 - 0x2B10

	.global Unk_021017F4
Unk_021017F4: ; 0x021017F4
	.incbin "incbin/arm9_data.bin", 0x2B14, 0x2B18 - 0x2B14

	.global Unk_021017F8
Unk_021017F8: ; 0x021017F8
	.incbin "incbin/arm9_data.bin", 0x2B18, 0x2B20 - 0x2B18

	.global Unk_02101800
Unk_02101800: ; 0x02101800
	.incbin "incbin/arm9_data.bin", 0x2B20, 0x2B28 - 0x2B20

	.global Unk_02101808
Unk_02101808: ; 0x02101808
	.incbin "incbin/arm9_data.bin", 0x2B28, 0x2B2C - 0x2B28

	.global Unk_0210180C
Unk_0210180C: ; 0x0210180C
	.incbin "incbin/arm9_data.bin", 0x2B2C, 0x2B30 - 0x2B2C

	.global Unk_02101810
Unk_02101810: ; 0x02101810
	.incbin "incbin/arm9_data.bin", 0x2B30, 0x2B34 - 0x2B30

	.global Unk_02101814
Unk_02101814: ; 0x02101814
	.incbin "incbin/arm9_data.bin", 0x2B34, 0x1

