	.include "macros/function.inc"
	.include "include/unk_020DAECC.inc"

	

	.text


	arm_func_start parse_format_dup3
parse_format_dup3: ; 0x020DAECC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldrh r3, [r0, #2]
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
	add ip, r0, #2
	bne _020DAF28
	add r0, sp, #0
	strh r3, [sp, #6]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, ip, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020DAF28:
	mov r2, #2
	mov r0, r4
	mov r5, r2
	mov r6, r4
	mov r7, #1
_020DAF3C:
	mov r8, r7
	cmp r3, #0x2b
	bgt _020DAF6C
	bge _020DAF94
	cmp r3, #0x23
	bgt _020DAFC4
	cmp r3, #0x20
	blt _020DAFC4
	beq _020DAF9C
	cmp r3, #0x23
	beq _020DAFAC
	b _020DAFC4
_020DAF6C:
	cmp r3, #0x30
	bgt _020DAFC4
	cmp r3, #0x2d
	blt _020DAFC4
	beq _020DAF8C
	cmp r3, #0x30
	beq _020DAFB4
	b _020DAFC4
_020DAF8C:
	strb r6, [sp]
	b _020DAFC8
_020DAF94:
	strb r7, [sp, #1]
	b _020DAFC8
_020DAF9C:
	ldrb r4, [sp, #1]
	cmp r4, #1
	strneb r5, [sp, #1]
	b _020DAFC8
_020DAFAC:
	strb r7, [sp, #3]
	b _020DAFC8
_020DAFB4:
	ldrb r4, [sp]
	cmp r4, #0
	strneb r2, [sp]
	b _020DAFC8
_020DAFC4:
	mov r8, r0
_020DAFC8:
	cmp r8, #0
	ldrneh r3, [ip, #2]!
	bne _020DAF3C
	cmp r3, #0x2a
	bne _020DB010
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	ldr r0, [r0, #-4]
	str r0, [sp, #8]
	cmp r0, #0
	bge _020DB008
	rsb r0, r0, #0
	mov r2, #0
	strb r2, [sp]
	str r0, [sp, #8]
_020DB008:
	ldrh r3, [ip, #2]!
	b _020DB054
_020DB010:
	mov r2, #0
	ldr r5, _020DB438 ; =0x020FEA9C
	mov r0, #0xa
	b _020DB034
_020DB020:
	ldr r4, [sp, #8]
	sub r3, r3, #0x30
	mla r6, r4, r0, r3
	ldrh r3, [ip, #2]!
	str r6, [sp, #8]
_020DB034:
	cmp r3, #0x80
	movhs r4, r2
	bhs _020DB04C
	mov r4, r3, lsl #1
	ldrh r4, [r5, r4]
	and r4, r4, #8
_020DB04C:
	cmp r4, #0
	bne _020DB020
_020DB054:
	ldr r2, [sp, #8]
	ldr r0, _020DB43C ; =0x000001FD
	cmp r2, r0
	ble _020DB084
	ldr r1, _020DB440 ; =0x0000FFFF
	add r0, sp, #0
	strh r1, [sp, #6]
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, ip, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020DB084:
	cmp r3, #0x2e
	bne _020DB10C
	ldrh r3, [ip, #2]!
	mov r0, #1
	strb r0, [sp, #2]
	cmp r3, #0x2a
	bne _020DB0C8
	ldr r0, [r1, #0]
	add r0, r0, #4
	str r0, [r1, #0]
	ldr r0, [r0, #-4]
	ldrh r3, [ip, #2]!
	str r0, [sp, #0xc]
	cmp r0, #0
	movlt r0, #0
	strltb r0, [sp, #2]
	b _020DB10C
_020DB0C8:
	mov r1, #0
	ldr r4, _020DB438 ; =0x020FEA9C
	mov r0, #0xa
	b _020DB0EC
_020DB0D8:
	ldr r2, [sp, #0xc]
	sub r3, r3, #0x30
	mla r5, r2, r0, r3
	ldrh r3, [ip, #2]!
	str r5, [sp, #0xc]
_020DB0EC:
	cmp r3, #0x80
	movhs r2, r1
	bhs _020DB104
	mov r2, r3, lsl #1
	ldrh r2, [r4, r2]
	and r2, r2, #8
_020DB104:
	cmp r2, #0
	bne _020DB0D8
_020DB10C:
	cmp r3, #0x6c
	mov r0, #1
	bgt _020DB144
	cmp r3, #0x68
	blt _020DB138
	beq _020DB160
	cmp r3, #0x6a
	beq _020DB1AC
	cmp r3, #0x6c
	beq _020DB17C
	b _020DB1D0
_020DB138:
	cmp r3, #0x4c
	beq _020DB1A0
	b _020DB1D0
_020DB144:
	cmp r3, #0x74
	bgt _020DB154
	beq _020DB1B8
	b _020DB1D0
_020DB154:
	cmp r3, #0x7a
	beq _020DB1C4
	b _020DB1D0
_020DB160:
	ldrh r1, [ip, #2]
	mov r2, #2
	strb r2, [sp, #4]
	cmp r1, #0x68
	streqb r0, [sp, #4]
	ldreqh r3, [ip, #2]!
	b _020DB1D4
_020DB17C:
	ldrh r1, [ip, #2]
	mov r2, #3
	strb r2, [sp, #4]
	cmp r1, #0x6c
	bne _020DB1D4
	mov r1, #4
	strb r1, [sp, #4]
	ldrh r3, [ip, #2]!
	b _020DB1D4
_020DB1A0:
	mov r1, #9
	strb r1, [sp, #4]
	b _020DB1D4
_020DB1AC:
	mov r1, #6
	strb r1, [sp, #4]
	b _020DB1D4
_020DB1B8:
	mov r1, #8
	strb r1, [sp, #4]
	b _020DB1D4
_020DB1C4:
	mov r1, #7
	strb r1, [sp, #4]
	b _020DB1D4
_020DB1D0:
	mov r0, #0
_020DB1D4:
	cmp r0, #0
	ldrneh r3, [ip, #2]!
	strh r3, [sp, #6]
	cmp r3, #0x61
	bgt _020DB228
	bge _020DB30C
	cmp r3, #0x47
	bgt _020DB21C
	subs r0, r3, #0x41
	addpl pc, pc, r0, lsl #2
	b _020DB418
_020DB200: ; jump table
	b _020DB30C ; case 0
	b _020DB418 ; case 1
	b _020DB418 ; case 2
	b _020DB418 ; case 3
	b _020DB354 ; case 4
	b _020DB2D4 ; case 5
	b _020DB344 ; case 6
_020DB21C:
	cmp r3, #0x58
	beq _020DB29C
	b _020DB418
_020DB228:
	cmp r3, #0x63
	bgt _020DB238
	beq _020DB3B4
	b _020DB418
_020DB238:
	sub r0, r3, #0x64
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _020DB418
_020DB248: ; jump table
	b _020DB29C ; case 0
	b _020DB354 ; case 1
	b _020DB2D4 ; case 2
	b _020DB344 ; case 3
	b _020DB418 ; case 4
	b _020DB29C ; case 5
	b _020DB418 ; case 6
	b _020DB418 ; case 7
	b _020DB418 ; case 8
	b _020DB418 ; case 9
	b _020DB404 ; case 10
	b _020DB29C ; case 11
	b _020DB390 ; case 12
	b _020DB418 ; case 13
	b _020DB418 ; case 14
	b _020DB3E0 ; case 15
	b _020DB418 ; case 16
	b _020DB29C ; case 17
	b _020DB418 ; case 18
	b _020DB418 ; case 19
	b _020DB29C ; case 20
_020DB29C:
	ldrb r0, [sp, #4]
	cmp r0, #9
	moveq r0, #4
	streqb r0, [sp, #4]
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
	beq _020DB420
	ldrb r0, [sp]
	cmp r0, #2
	moveq r0, #1
	streqb r0, [sp]
	b _020DB420
_020DB2D4:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	ldreq r0, _020DB440 ; =0x0000FFFF
	streqh r0, [sp, #6]
	beq _020DB420
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [sp, #0xc]
	b _020DB420
_020DB30C:
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
	ldreq r0, _020DB440 ; =0x0000FFFF
	streqh r0, [sp, #6]
	b _020DB420
_020DB344:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
_020DB354:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	cmpne r0, #1
	ldreq r0, _020DB440 ; =0x0000FFFF
	streqh r0, [sp, #6]
	beq _020DB420
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [sp, #0xc]
	b _020DB420
_020DB390:
	mov r3, #3
	mov r2, #1
	mov r1, #0x78
	mov r0, #8
	strb r3, [sp, #4]
	strb r2, [sp, #3]
	strh r1, [sp, #6]
	str r0, [sp, #0xc]
	b _020DB420
_020DB3B4:
	ldrb r1, [sp, #4]
	cmp r1, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _020DB420
	ldrb r0, [sp, #2]
	cmp r0, #0
	cmpeq r1, #0
	ldrne r0, _020DB440 ; =0x0000FFFF
	strneh r0, [sp, #6]
	b _020DB420
_020DB3E0:
	ldrb r0, [sp, #4]
	cmp r0, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _020DB420
	cmp r0, #0
	ldrne r0, _020DB440 ; =0x0000FFFF
	strneh r0, [sp, #6]
	b _020DB420
_020DB404:
	ldrb r0, [sp, #4]
	cmp r0, #9
	moveq r0, #4
	streqb r0, [sp, #4]
	b _020DB420
_020DB418:
	ldr r0, _020DB440 ; =0x0000FFFF
	strh r0, [sp, #6]
_020DB420:
	add r0, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	add r0, ip, #2
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020DB438: .word 0x020FEA9C
_020DB43C: .word 0x000001FD
_020DB440: .word 0x0000FFFF
	arm_func_end parse_format_dup3

	arm_func_start long2str_dup2
long2str_dup2: ; 0x020DB444
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	movs sl, r0
	mov r0, #0
	mov r5, r1
	str r0, [sp, #0xc]
	ldr r7, [sp, #0x4c]
	mov r6, r0
	strh r0, [r5, #-2]!
	ldrb r0, [sp, #0x43]
	str r1, [sp]
	ldrh r8, [sp, #0x46]
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldrb fp, [sp, #0x41]
	str r0, [sp, #8]
	cmpeq r7, #0
	bne _020DB4B8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020DB4A4
	cmp r8, #0x6f
	beq _020DB4B8
_020DB4A4:
	add sp, sp, #0x10
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DB4B8:
	cmp r8, #0x69
	bgt _020DB4E0
	bge _020DB514
	cmp r8, #0x58
	bgt _020DB4D4
	beq _020DB540
	b _020DB548
_020DB4D4:
	cmp r8, #0x64
	beq _020DB514
	b _020DB548
_020DB4E0:
	cmp r8, #0x6f
	bgt _020DB4F4
	moveq r4, #8
	moveq fp, #0
	b _020DB548
_020DB4F4:
	cmp r8, #0x78
	bgt _020DB548
	cmp r8, #0x75
	blt _020DB548
	beq _020DB534
	cmp r8, #0x78
	beq _020DB540
	b _020DB548
_020DB514:
	cmp sl, #0
	mov r4, #0xa
	bge _020DB548
	mov r0, #1
	cmp sl, #-0x80000000
	rsbne sl, sl, #0
	str r0, [sp, #0xc]
	b _020DB548
_020DB534:
	mov r4, #0xa
	mov fp, #0
	b _020DB548
_020DB540:
	mov r4, #0x10
	mov fp, #0
_020DB548:
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
	blt _020DB580
	cmp r8, #0x78
	addeq sb, sb, #0x57
	addne sb, sb, #0x37
_020DB580:
	cmp sl, #0
	strh sb, [r5, #-2]!
	add r6, r6, #1
	bne _020DB548
	cmp r4, #8
	bne _020DB5B4
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrneh r0, [r5]
	cmpne r0, #0x30
	movne r0, #0x30
	strneh r0, [r5, #-2]!
	addne r6, r6, #1
_020DB5B4:
	ldrb r0, [sp, #0x40]
	cmp r0, #2
	bne _020DB5E8
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #8]
	cmp r0, #0
	cmpeq fp, #0
	subne r7, r7, #1
	cmp r4, #0x10
	bne _020DB5E8
	ldr r0, [sp, #4]
	cmp r0, #0
	subne r7, r7, #2
_020DB5E8:
	ldr r0, [sp]
	ldr r1, _020DB690 ; =0x000001FD
	sub r0, r0, r5
	add r0, r0, r0, lsr #31
	add r0, r7, r0, asr #1
	cmp r0, r1
	addgt sp, sp, #0x10
	movgt r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	cmp r6, r7
	bge _020DB630
	mov r0, #0x30
_020DB620:
	add r6, r6, #1
	cmp r6, r7
	strh r0, [r5, #-2]!
	blt _020DB620
_020DB630:
	cmp r4, #0x10
	bne _020DB64C
	ldr r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x30
	strneh r8, [r5, #-2]
	strneh r0, [r5, #-4]!
_020DB64C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #0x2d
	strneh r0, [r5, #-2]!
	bne _020DB67C
	cmp fp, #1
	moveq r0, #0x2b
	streqh r0, [r5, #-2]!
	beq _020DB67C
	cmp fp, #2
	moveq r0, #0x20
	streqh r0, [r5, #-2]!
_020DB67C:
	mov r0, r5
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DB690: .word 0x000001FD
	arm_func_end long2str_dup2

	arm_func_start longlong2str_dup2
longlong2str_dup2: ; 0x020DB694
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sb, r1
	mov r1, #0
	mov sl, r0
	mov r8, r2
	mov r0, r1
	strh r0, [r8, #-2]!
	ldr r0, [sp, #0x58]
	cmp sb, #0
	str r0, [sp, #0x14]
	ldrb r0, [sp, #0x4f]
	cmpeq sl, #0
	str r2, [sp]
	str r0, [sp, #4]
	ldrh r0, [sp, #0x52]
	str r1, [sp, #0x18]
	mov fp, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0xc]
	ldrb r0, [sp, #0x4d]
	str r0, [sp, #0x10]
	ldreq r0, [sp, #0x14]
	cmpeq r0, #0
	bne _020DB72C
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020DB718
	ldr r0, [sp, #8]
	cmp r0, #0x6f
	beq _020DB72C
_020DB718:
	add sp, sp, #0x1c
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DB72C:
	ldr r0, [sp, #8]
	cmp r0, #0x69
	bgt _020DB758
	bge _020DB788
	cmp r0, #0x58
	bgt _020DB74C
	beq _020DB7DC
	b _020DB7E8
_020DB74C:
	cmp r0, #0x64
	beq _020DB788
	b _020DB7E8
_020DB758:
	cmp r0, #0x6f
	bgt _020DB768
	beq _020DB7BC
	b _020DB7E8
_020DB768:
	cmp r0, #0x78
	bgt _020DB7E8
	cmp r0, #0x75
	blt _020DB7E8
	beq _020DB7CC
	cmp r0, #0x78
	beq _020DB7DC
	b _020DB7E8
_020DB788:
	subs r0, sl, #0
	sbcs r0, sb, #0
	mov r7, #0xa
	mov r6, #0
	bge _020DB7E8
	cmp sb, #-0x80000000
	cmpeq sl, r6
	beq _020DB7B0
	rsbs sl, sl, #0
	rsc sb, sb, #0
_020DB7B0:
	mov r0, #1
	str r0, [sp, #0x18]
	b _020DB7E8
_020DB7BC:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #8
	b _020DB7E8
_020DB7CC:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #0xa
	b _020DB7E8
_020DB7DC:
	mov r6, #0
	str r6, [sp, #0x10]
	mov r7, #0x10
_020DB7E8:
	mov r4, #0
_020DB7EC:
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
	blt _020DB83C
	ldr r0, [sp, #8]
	cmp r0, #0x78
	addeq r0, r5, #0x57
	addne r0, r5, #0x37
_020DB83C:
	strh r0, [r8, #-2]!
	mov r0, #0
	cmp sb, r0
	cmpeq sl, r4
	add fp, fp, #1
	bne _020DB7EC
	cmp r6, #0
	cmpeq r7, #8
	bne _020DB87C
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrneh r0, [r8]
	cmpne r0, #0x30
	movne r0, #0x30
	strneh r0, [r8, #-2]!
	addne fp, fp, #1
_020DB87C:
	ldrb r0, [sp, #0x4c]
	cmp r0, #2
	bne _020DB8CC
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
	bne _020DB8CC
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrne r0, [sp, #0x14]
	subne r0, r0, #2
	strne r0, [sp, #0x14]
_020DB8CC:
	ldr r0, [sp]
	ldr r2, _020DB990 ; =0x000001FD
	sub r0, r0, r8
	add r1, r0, r0, lsr #31
	ldr r0, [sp, #0x14]
	add r0, r0, r1, asr #1
	cmp r0, r2
	addgt sp, sp, #0x1c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldr r0, [sp, #0x14]
	cmp fp, r0
	bge _020DB920
	mov r1, #0x30
_020DB90C:
	ldr r0, [sp, #0x14]
	add fp, fp, #1
	cmp fp, r0
	strh r1, [r8, #-2]!
	blt _020DB90C
_020DB920:
	cmp r6, #0
	cmpeq r7, #0x10
	bne _020DB948
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020DB948
	ldr r0, [sp, #8]
	mov r1, #0x30
	strh r0, [r8, #-2]
	strh r1, [r8, #-4]!
_020DB948:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	movne r0, #0x2d
	strneh r0, [r8, #-2]!
	bne _020DB97C
	ldr r0, [sp, #0x10]
	cmp r0, #1
	moveq r0, #0x2b
	streqh r0, [r8, #-2]!
	beq _020DB97C
	cmp r0, #2
	moveq r0, #0x20
	streqh r0, [r8, #-2]!
_020DB97C:
	mov r0, r8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DB990: .word 0x000001FD
	arm_func_end longlong2str_dup2

	arm_func_start double2hex_dup2
double2hex_dup2: ; 0x020DB994
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x44
	ldr r7, [sp, #0x80]
	ldr r0, _020DBD00 ; =0x000001FD
	mov r8, r2
	cmp r7, r0
	ldrh r6, [sp, #0x7a]
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
	bne _020DBA3C
	sub r4, r8, #0xc
	ldr r1, _020DBD04 ; =0x02101828
	mov r0, r4
	bl wcscpy
	add sp, sp, #0x44
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020DBA3C:
	ldrb r0, [sp, #0x11]
	cmp r0, #0x49
	bne _020DBABC
	ldrsb r0, [sp, #0xc]
	cmp r0, #0
	beq _020DBA80
	cmp r6, #0x41
	sub r4, r8, #0xa
	bne _020DBA70
	ldr r1, _020DBD08 ; =0x02101834
	mov r0, r4
	bl wcscpy
	b _020DBAA8
_020DBA70:
	ldr r1, _020DBD0C ; =0x02101840
	mov r0, r4
	bl wcscpy
	b _020DBAA8
_020DBA80:
	cmp r6, #0x41
	sub r4, r8, #8
	bne _020DBA9C
	ldr r1, _020DBD10 ; =0x0210184C
	mov r0, r4
	bl wcscpy
	b _020DBAA8
_020DBA9C:
	ldr r1, _020DBD14 ; =0x02101854
	mov r0, r4
	bl wcscpy
_020DBAA8:
	add sp, sp, #0x44
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020DBABC:
	cmp r0, #0x4e
	bne _020DBB38
	ldrsb r0, [sp, #0xc]
	cmp r0, #0
	beq _020DBAFC
	cmp r6, #0x41
	sub r4, r8, #0xa
	bne _020DBAEC
	ldr r1, _020DBD18 ; =0x0210185C
	mov r0, r4
	bl wcscpy
	b _020DBB24
_020DBAEC:
	ldr r1, _020DBD1C ; =0x02101868
	mov r0, r4
	bl wcscpy
	b _020DBB24
_020DBAFC:
	cmp r6, #0x41
	sub r4, r8, #8
	bne _020DBB18
	ldr r1, _020DBD20 ; =0x02101874
	mov r0, r4
	bl wcscpy
	b _020DBB24
_020DBB18:
	ldr r1, _020DBD24 ; =0x0210187C
	mov r0, r4
	bl wcscpy
_020DBB24:
	add sp, sp, #0x44
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
_020DBB38:
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
	strh r0, [sp, #0x3a]
_020DBB68:
	rsb r1, r3, #7
	ldrsb r2, [sb, r3]
	ldrsb r0, [sb, r1]
	strb r0, [sb, r3]
	add r3, r3, #1
	strb r2, [sb, r1]
	cmp r3, #4
	blt _020DBB68
	ldrb r0, [sp, #0x69]
	ldrb r1, [sp, #0x68]
	ldr sb, _020DBD28 ; =0x000007FF
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
	bl long2str_dup2
	cmp r6, #0x61
	moveq r1, #0x70
	movne r1, #0x50
	strh r1, [r0, #-2]!
	mov r1, r7, lsl #2
	mov lr, r7
	cmp r7, #1
	add r8, r1, #0xb
	add ip, sp, #0x68
	blt _020DBC78
	mov sb, #0x30
_020DBBF0:
	cmp r8, #0x40
	bge _020DBC60
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
	beq _020DBC34
	ldrb r2, [sl, #-1]
	mov r2, r2, lsl #8
	orr r1, r1, r2, asr r3
	and r1, r1, #0xff
_020DBC34:
	and r1, r1, #0xf
	cmp r1, #0xa
	addlo r1, r1, #0x30
	andlo r1, r1, #0xff
	blo _020DBC64
	cmp r6, #0x61
	addeq r1, r1, #0x57
	andeq r1, r1, #0xff
	addne r1, r1, #0x37
	andne r1, r1, #0xff
	b _020DBC64
_020DBC60:
	mov r1, sb
_020DBC64:
	sub lr, lr, #1
	cmp lr, #1
	strh r1, [r0, #-2]!
	sub r8, r8, #4
	bge _020DBBF0
_020DBC78:
	cmp r7, #0
	cmpeq r5, #0
	movne r1, #0x2e
	strneh r1, [r0, #-2]!
	mov r1, #0x31
	strh r1, [r0, #-2]
	cmp r6, #0x61
	moveq r1, #0x78
	movne r1, #0x58
	strh r1, [r0, #-4]!
	mov r1, #0x30
	strh r1, [r0, #-2]!
	ldrsb r1, [sp, #0xc]
	cmp r1, #0
	movne r1, #0x2d
	strneh r1, [r0, #-2]!
	addne sp, sp, #0x44
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addne sp, sp, #0x10
	bxne lr
	cmp r4, #1
	moveq r1, #0x2b
	streqh r1, [r0, #-2]!
	addeq sp, sp, #0x44
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r4, #2
	moveq r1, #0x20
	streqh r1, [r0, #-2]!
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DBD00: .word 0x000001FD
_020DBD04: .word 0x02101828
_020DBD08: .word 0x02101834
_020DBD0C: .word 0x02101840
_020DBD10: .word 0x0210184C
_020DBD14: .word 0x02101854
_020DBD18: .word 0x0210185C
_020DBD1C: .word 0x02101868
_020DBD20: .word 0x02101874
_020DBD24: .word 0x0210187C
_020DBD28: .word 0x000007FF
	arm_func_end double2hex_dup2

	arm_func_start round_decimal_dup2
round_decimal_dup2: ; 0x020DBD2C
	stmfd sp!, {r4, lr}
	cmp r1, #0
	bge _020DBD54
_020DBD38:
	mov r1, #0
	strh r1, [r0, #2]
	mov r1, #1
	strb r1, [r0, #4]
	mov r1, #0x30
	strb r1, [r0, #5]
	ldmia sp!, {r4, pc}
_020DBD54:
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
	bne _020DBDB4
	add ip, ip, lr
_020DBD88:
	sub ip, ip, #1
	cmp ip, r2
	bls _020DBDA0
	ldrsb r3, [ip]
	cmp r3, #0x30
	beq _020DBD88
_020DBDA0:
	cmp ip, r2
	ldreqsb r3, [r2, #-1]
	andeq r4, r3, #1
	movne r4, #1
	b _020DBDBC
_020DBDB4:
	movgt r4, #1
	movle r4, #0
_020DBDBC:
	cmp r1, #0
	beq _020DBE18
	mov ip, #0
	mov lr, #1
_020DBDCC:
	ldrsb r3, [r2, #-1]!
	sub r3, r3, #0x30
	add r3, r3, r4
	mov r3, r3, lsl #0x18
	mov r3, r3, asr #0x18
	cmp r3, #9
	movgt r4, lr
	movle r4, ip
	cmp r4, #0
	bne _020DBDFC
	cmp r3, #0
	bne _020DBE04
_020DBDFC:
	sub r1, r1, #1
	b _020DBE10
_020DBE04:
	add r3, r3, #0x30
	strb r3, [r2]
	b _020DBE18
_020DBE10:
	cmp r1, #0
	bne _020DBDCC
_020DBE18:
	cmp r4, #0
	beq _020DBE40
	ldrsh r3, [r0, #2]
	mov r2, #1
	mov r1, #0x31
	add r3, r3, #1
	strh r3, [r0, #2]
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	ldmia sp!, {r4, pc}
_020DBE40:
	cmp r1, #0
	beq _020DBD38
	strb r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end round_decimal_dup2

	arm_func_start float2str_dup2
float2str_dup2: ; 0x020DBE50
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x22c
	mov sl, r0
	add r0, sp, #0x250
	ldr r7, [sp, #0x268]
	ldr r3, _020DC470 ; =0x000001FD
	ldrh r6, [r0, #0x12]
	cmp r7, r3
	ldrb r5, [sp, #0x25f]
	ldrb r4, [sp, #0x25d]
	mov r8, r1
	mov sb, r2
	addgt sp, sp, #0x22c
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
	b _020DBEE4
_020DBECC:
	ldrb r2, [sp, #8]
	ldrsh r1, [sp, #6]
	sub r2, r2, #1
	add r1, r1, #1
	strb r2, [sp, #8]
	strh r1, [sp, #6]
_020DBEE4:
	ldrb r1, [sp, #8]
	cmp r1, #1
	bls _020DBEFC
	ldrsb r1, [r0, #-1]!
	cmp r1, #0x30
	beq _020DBECC
_020DBEFC:
	ldrb r0, [sp, #9]
	cmp r0, #0x30
	beq _020DBF1C
	cmp r0, #0x49
	beq _020DBF28
	cmp r0, #0x4e
	beq _020DBFE0
	b _020DC08C
_020DBF1C:
	mov r0, #0
	strh r0, [sp, #6]
	b _020DC08C
_020DBF28:
	mov r2, #0
	mov r0, sl
	mov r1, r8
	mov r3, r2
	bl _d_flt
	bhs _020DBF88
	cmp r6, #0x80
	sub r4, sb, #0xa
	movhs r0, #0
	bhs _020DBF60
	ldr r0, _020DC474 ; =0x020FEA9C
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #0x200
_020DBF60:
	cmp r0, #0
	beq _020DBF78
	ldr r1, _020DC478 ; =0x02101834
	mov r0, r4
	bl wcscpy
	b _020DBFCC
_020DBF78:
	ldr r1, _020DC47C ; =0x02101840
	mov r0, r4
	bl wcscpy
	b _020DBFCC
_020DBF88:
	cmp r6, #0x80
	sub r4, sb, #8
	movhs r0, #0
	bhs _020DBFA8
	ldr r0, _020DC474 ; =0x020FEA9C
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #0x200
_020DBFA8:
	cmp r0, #0
	beq _020DBFC0
	ldr r1, _020DC480 ; =0x0210184C
	mov r0, r4
	bl wcscpy
	b _020DBFCC
_020DBFC0:
	ldr r1, _020DC484 ; =0x02101854
	mov r0, r4
	bl wcscpy
_020DBFCC:
	add sp, sp, #0x22c
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DBFE0:
	ldrsb r0, [sp, #4]
	cmp r0, #0
	beq _020DC034
	cmp r6, #0x80
	sub r4, sb, #0xa
	movhs r0, #0
	bhs _020DC00C
	ldr r0, _020DC474 ; =0x020FEA9C
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #0x200
_020DC00C:
	cmp r0, #0
	beq _020DC024
	ldr r1, _020DC488 ; =0x0210185C
	mov r0, r4
	bl wcscpy
	b _020DC078
_020DC024:
	ldr r1, _020DC48C ; =0x02101868
	mov r0, r4
	bl wcscpy
	b _020DC078
_020DC034:
	cmp r6, #0x80
	sub r4, sb, #8
	movhs r0, #0
	bhs _020DC054
	ldr r0, _020DC474 ; =0x020FEA9C
	mov r1, r6, lsl #1
	ldrh r0, [r0, r1]
	and r0, r0, #0x200
_020DC054:
	cmp r0, #0
	beq _020DC06C
	ldr r1, _020DC490 ; =0x02101874
	mov r0, r4
	bl wcscpy
	b _020DC078
_020DC06C:
	ldr r1, _020DC494 ; =0x0210187C
	mov r0, r4
	bl wcscpy
_020DC078:
	add sp, sp, #0x22c
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DC08C:
	ldrb r1, [sp, #8]
	ldrsh r2, [sp, #6]
	add r0, sp, #0x200
	sub r1, r1, #1
	add r0, r0, #0x2a
	add r1, r2, r1
	sub r8, r0, #1
	strh r1, [sp, #6]
	mov r0, #0
	strb r0, [r8]
	cmp r6, #0x65
	bgt _020DC0E8
	bge _020DC174
	cmp r6, #0x47
	bgt _020DC434
	cmp r6, #0x45
	blt _020DC434
	beq _020DC174
	cmp r6, #0x46
	beq _020DC2C0
	cmp r6, #0x47
	beq _020DC100
	b _020DC434
_020DC0E8:
	cmp r6, #0x66
	bgt _020DC0F8
	beq _020DC2C0
	b _020DC434
_020DC0F8:
	cmp r6, #0x67
	bne _020DC434
_020DC100:
	ldrb r0, [sp, #8]
	cmp r0, r7
	ble _020DC118
	add r0, sp, #4
	mov r1, r7
	bl round_decimal_dup2
_020DC118:
	ldrsh r2, [sp, #6]
	mvn r0, #3
	cmp r2, r0
	blt _020DC130
	cmp r2, r7
	blt _020DC150
_020DC130:
	cmp r5, #0
	ldreqb r0, [sp, #8]
	subne r7, r7, #1
	subeq r7, r0, #1
	cmp r6, #0x67
	moveq r6, #0x65
	movne r6, #0x45
	b _020DC174
_020DC150:
	cmp r5, #0
	addne r0, r2, #1
	subne r7, r7, r0
	bne _020DC2C0
	ldrb r1, [sp, #8]
	add r0, r2, #1
	subs r7, r1, r0
	movmi r7, #0
	b _020DC2C0
_020DC174:
	ldrb r0, [sp, #8]
	add r1, r7, #1
	cmp r0, r1
	ble _020DC18C
	add r0, sp, #4
	bl round_decimal_dup2
_020DC18C:
	ldrsh lr, [sp, #6]
	mov fp, #0x2b
	mov sl, #0
	cmp lr, #0
	rsblt lr, lr, #0
	movlt fp, #0x2d
	ldr r3, _020DC498 ; =0x66666667
	mov r0, #0xa
	b _020DC1E0
_020DC1B0:
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
_020DC1E0:
	cmp lr, #0
	bne _020DC1B0
	cmp sl, #2
	blt _020DC1B0
	add r0, sp, #0x2a
	strb fp, [r8, #-1]
	strb r6, [r8, #-2]!
	sub r1, r0, r8
	ldr r0, _020DC470 ; =0x000001FD
	add r1, r1, r7
	cmp r1, r0
	addgt sp, sp, #0x22c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldrb r1, [sp, #8]
	add r0, r7, #1
	cmp r1, r0
	bge _020DC250
	add r0, r7, #2
	sub r0, r0, r1
	subs r1, r0, #1
	beq _020DC250
	mov r0, #0x30
_020DC244:
	strb r0, [r8, #-1]!
	subs r1, r1, #1
	bne _020DC244
_020DC250:
	ldrb r1, [sp, #8]
	add r0, sp, #9
	add r2, r0, r1
	subs r1, r1, #1
	beq _020DC274
_020DC264:
	ldrsb r0, [r2, #-1]!
	subs r1, r1, #1
	strb r0, [r8, #-1]!
	bne _020DC264
_020DC274:
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
	bne _020DC434
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020DC434
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
	b _020DC434
_020DC2C0:
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	subs r1, r0, #1
	movmi r1, #0
	cmp r1, r7
	ble _020DC300
	sub r1, r1, r7
	add r0, sp, #4
	sub r1, r2, r1
	bl round_decimal_dup2
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	subs r1, r0, #1
	movmi r1, #0
_020DC300:
	adds r0, r3, #1
	movmi r0, #0
	ldr r3, _020DC470 ; =0x000001FD
	add r6, r0, r1
	cmp r6, r3
	addgt sp, sp, #0x22c
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addgt sp, sp, #0x10
	bxgt lr
	add r3, sp, #9
	sub r6, r7, r1
	cmp r6, #0
	add r2, r3, r2
	mov sl, #0
	ble _020DC354
	mov r3, #0x30
_020DC344:
	add sl, sl, #1
	cmp sl, r6
	strb r3, [r8, #-1]!
	blt _020DC344
_020DC354:
	mov r6, #0
	b _020DC368
_020DC35C:
	ldrsb r3, [r2, #-1]!
	add r6, r6, #1
	strb r3, [r8, #-1]!
_020DC368:
	cmp r6, r1
	ldrltb r3, [sp, #8]
	cmplt r6, r3
	blt _020DC35C
	cmp r6, r1
	bge _020DC394
	mov r3, #0x30
_020DC384:
	add r6, r6, #1
	cmp r6, r1
	strb r3, [r8, #-1]!
	blt _020DC384
_020DC394:
	cmp r7, #0
	cmpeq r5, #0
	movne r1, #0x2e
	strneb r1, [r8, #-1]!
	cmp r0, #0
	beq _020DC3FC
	ldrb r1, [sp, #8]
	mov r5, #0
	sub r1, r0, r1
	cmp r1, #0
	ble _020DC3DC
	mov r3, #0x30
_020DC3C4:
	strb r3, [r8, #-1]!
	ldrb r1, [sp, #8]
	add r5, r5, #1
	sub r1, r0, r1
	cmp r5, r1
	blt _020DC3C4
_020DC3DC:
	cmp r5, r0
	bge _020DC404
_020DC3E4:
	ldrsb r1, [r2, #-1]!
	add r5, r5, #1
	cmp r5, r0
	strb r1, [r8, #-1]!
	blt _020DC3E4
	b _020DC404
_020DC3FC:
	mov r0, #0x30
	strb r0, [r8, #-1]!
_020DC404:
	ldrsb r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _020DC434
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _020DC434
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
_020DC434:
	mov r0, r8
	bl strlen
	sub r1, sb, r0, lsl #1
	mov r0, r8
	sub r4, r1, #2
	bl strlen
	mov r2, r0
	mov r0, r4
	mov r1, r8
	bl mbstowcs
	mov r0, r4
	add sp, sp, #0x22c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DC470: .word 0x000001FD
_020DC474: .word 0x020FEA9C
_020DC478: .word 0x02101834
_020DC47C: .word 0x02101840
_020DC480: .word 0x0210184C
_020DC484: .word 0x02101854
_020DC488: .word 0x0210185C
_020DC48C: .word 0x02101868
_020DC490: .word 0x02101874
_020DC494: .word 0x0210187C
_020DC498: .word 0x66666667
	arm_func_end float2str_dup2

	arm_func_start __wpformatter
__wpformatter: ; 0x020DC49C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x430
	mov r3, #0x20
	mov fp, r2
	strh r3, [sp, #0x1c]
	ldrh r2, [fp]
	mov sb, r0
	mov r8, r1
	cmp r2, #0
	mov r4, #0
	beq _020DCD6C
_020DC4CC:
	mov r0, fp
	mov r1, #0x25
	bl wcschr
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020DC520
	mov r0, fp
	bl wcslen
	movs r2, r0
	add r4, r4, r2
	beq _020DCD6C
	mov r0, r8
	mov r1, fp
	blx sb
	cmp r0, #0
	bne _020DCD6C
	add sp, sp, #0x430
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DC520:
	sub r0, r0, fp
	add r0, r0, r0, lsr #31
	movs r2, r0, asr #1
	add r4, r4, r2
	beq _020DC558
	mov r0, r8
	mov r1, fp
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020DC558:
	add r1, sp, #0x400
	ldr r0, [sp, #0xc]
	add r1, r1, #0x64
	add r2, sp, #0x20
	bl parse_format_dup3
	ldrh r1, [sp, #0x26]
	mov fp, r0
	cmp r1, #0x61
	bgt _020DC5C8
	bge _020DC934
	cmp r1, #0x47
	bgt _020DC5BC
	subs r0, r1, #0x41
	addpl pc, pc, r0, lsl #2
	b _020DC5B0
_020DC594: ; jump table
	b _020DC934 ; case 0
	b _020DCBD8 ; case 1
	b _020DCBD8 ; case 2
	b _020DCBD8 ; case 3
	b _020DC8C4 ; case 4
	b _020DC8C4 ; case 5
	b _020DC8C4 ; case 6
_020DC5B0:
	cmp r1, #0x25
	beq _020DCBC4
	b _020DCBD8
_020DC5BC:
	cmp r1, #0x58
	beq _020DC788
	b _020DCBD8
_020DC5C8:
	cmp r1, #0x75
	bgt _020DC630
	subs r0, r1, #0x64
	addpl pc, pc, r0, lsl #2
	b _020DC624
_020DC5DC: ; jump table
	b _020DC64C ; case 0
	b _020DC8C4 ; case 1
	b _020DC8C4 ; case 2
	b _020DC8C4 ; case 3
	b _020DCBD8 ; case 4
	b _020DC64C ; case 5
	b _020DCBD8 ; case 6
	b _020DCBD8 ; case 7
	b _020DCBD8 ; case 8
	b _020DCBD8 ; case 9
	b _020DCAE0 ; case 10
	b _020DC788 ; case 11
	b _020DCBD8 ; case 12
	b _020DCBD8 ; case 13
	b _020DCBD8 ; case 14
	b _020DC9A4 ; case 15
	b _020DCBD8 ; case 16
	b _020DC788 ; case 17
_020DC624:
	cmp r1, #0x63
	beq _020DCB6C
	b _020DCBD8
_020DC630:
	cmp r1, #0x78
	bgt _020DC640
	beq _020DC788
	b _020DCBD8
_020DC640:
	ldr r0, _020DCD80 ; =0x0000FFFF
	cmp r1, r0
	b _020DCBD8
_020DC64C:
	ldrb r0, [sp, #0x24]
	cmp r0, #3
	bne _020DC66C
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC704
_020DC66C:
	cmp r0, #4
	bne _020DC694
	ldr r1, [sp, #0x464]
	add r2, r1, #8
	str r2, [sp, #0x464]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020DC704
_020DC694:
	cmp r0, #6
	bne _020DC6BC
	ldr r1, [sp, #0x464]
	add r2, r1, #8
	str r2, [sp, #0x464]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020DC704
_020DC6BC:
	cmp r0, #7
	bne _020DC6D8
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC704
_020DC6D8:
	cmp r0, #8
	bne _020DC6F4
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC704
_020DC6F4:
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
_020DC704:
	cmp r0, #2
	moveq r1, sl, lsl #0x10
	moveq sl, r1, asr #0x10
	cmp r0, #4
	cmpne r0, #6
	add r0, sp, #0x20
	bne _020DC74C
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5, #0]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x430
	bl longlong2str_dup2
	movs r6, r0
	beq _020DCBD8
	b _020DC770
_020DC74C:
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	add r1, sp, #0x430
	mov r0, sl
	ldmia r5, {r2, r3}
	bl long2str_dup2
	movs r6, r0
	beq _020DCBD8
_020DC770:
	add r0, sp, #0x400
	add r0, r0, #0x2e
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DC788:
	ldrb r0, [sp, #0x24]
	cmp r0, #3
	bne _020DC7A8
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC840
_020DC7A8:
	cmp r0, #4
	bne _020DC7D0
	ldr r1, [sp, #0x464]
	add r2, r1, #8
	str r2, [sp, #0x464]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020DC840
_020DC7D0:
	cmp r0, #6
	bne _020DC7F8
	ldr r1, [sp, #0x464]
	add r2, r1, #8
	str r2, [sp, #0x464]
	ldr r1, [r2, #-8]
	str r1, [sp, #0x10]
	ldr r1, [r2, #-4]
	str r1, [sp, #0x14]
	b _020DC840
_020DC7F8:
	cmp r0, #7
	bne _020DC814
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC840
_020DC814:
	cmp r0, #8
	bne _020DC830
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
	b _020DC840
_020DC830:
	ldr r1, [sp, #0x464]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr sl, [r1, #-4]
_020DC840:
	cmp r0, #2
	moveq r1, sl, lsl #0x10
	moveq sl, r1, lsr #0x10
	cmp r0, #4
	cmpne r0, #6
	add r0, sp, #0x20
	bne _020DC888
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5, #0]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x430
	bl longlong2str_dup2
	movs r6, r0
	beq _020DCBD8
	b _020DC8AC
_020DC888:
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	add r1, sp, #0x430
	mov r0, sl
	ldmia r5, {r2, r3}
	bl long2str_dup2
	movs r6, r0
	beq _020DCBD8
_020DC8AC:
	add r0, sp, #0x400
	add r0, r0, #0x2e
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DC8C4:
	ldrb r0, [sp, #0x24]
	cmp r0, #9
	ldrne r0, [sp, #0x464]
	addne r0, r0, #8
	strne r0, [sp, #0x464]
	bne _020DC8E8
	ldr r0, [sp, #0x464]
	add r0, r0, #8
	str r0, [sp, #0x464]
_020DC8E8:
	ldr r7, [r0, #-8]
	ldr r6, [r0, #-4]
	add r0, sp, #0x20
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5, #0]
	mov r0, r7
	mov r1, r6
	add r2, sp, #0x430
	bl float2str_dup2
	movs r6, r0
	beq _020DCBD8
	add r0, sp, #0x400
	add r0, r0, #0x2e
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DC934:
	ldrb r0, [sp, #0x24]
	cmp r0, #9
	ldrne r0, [sp, #0x464]
	addne r0, r0, #8
	strne r0, [sp, #0x464]
	bne _020DC958
	ldr r0, [sp, #0x464]
	add r0, r0, #8
	str r0, [sp, #0x464]
_020DC958:
	ldr r7, [r0, #-8]
	ldr r6, [r0, #-4]
	add r0, sp, #0x20
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5, #0]
	mov r0, r7
	mov r1, r6
	add r2, sp, #0x430
	bl double2hex_dup2
	movs r6, r0
	beq _020DCBD8
	add r0, sp, #0x400
	add r0, r0, #0x2e
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DC9A4:
	ldrb r0, [sp, #0x24]
	cmp r0, #5
	bne _020DCA40
	ldr r0, [sp, #0x464]
	add r0, r0, #4
	str r0, [sp, #0x464]
	ldr r6, [r0, #-4]
	ldrb r0, [sp, #0x23]
	cmp r6, #0
	ldreq r6, _020DCD84 ; =0x02101884
	cmp r0, #0
	beq _020DC9F8
	ldrh r1, [r6], #2
	ldrb r0, [sp, #0x22]
	and r7, r1, #0xff
	cmp r0, #0
	beq _020DCC24
	ldr r0, [sp, #0x2c]
	cmp r7, r0
	movgt r7, r0
	b _020DCC24
_020DC9F8:
	ldrb r0, [sp, #0x22]
	cmp r0, #0
	beq _020DCA30
	ldr r7, [sp, #0x2c]
	mov r0, r6
	mov r2, r7
	mov r1, #0
	bl wmemchr
	cmp r0, #0
	beq _020DCC24
	sub r0, r0, r6
	add r0, r0, r0, lsr #31
	mov r7, r0, asr #1
	b _020DCC24
_020DCA30:
	mov r0, r6
	bl wcslen
	mov r7, r0
	b _020DCC24
_020DCA40:
	ldr r0, [sp, #0x464]
	add r0, r0, #4
	str r0, [sp, #0x464]
	ldr r5, [r0, #-4]
	ldrb r0, [sp, #0x23]
	cmp r5, #0
	ldreq r5, _020DCD88 ; =0x02101888
	cmp r0, #0
	beq _020DCA88
	ldrh r1, [r6]
	ldrb r0, [sp, #0x22]
	and r6, r1, #0xff
	cmp r0, #0
	beq _020DCAC0
	ldr r0, [sp, #0x2c]
	cmp r6, r0
	movgt r6, r0
	b _020DCAC0
_020DCA88:
	ldrb r0, [sp, #0x22]
	cmp r0, #0
	beq _020DCAB4
	ldr r6, [sp, #0x2c]
	mov r0, r5
	mov r2, r6
	mov r1, #0
	bl memchr
	cmp r0, #0
	subne r6, r0, r5
	b _020DCAC0
_020DCAB4:
	mov r0, r5
	bl strlen
	mov r6, r0
_020DCAC0:
	add r0, sp, #0x30
	mov r1, r5
	mov r2, r6
	bl mbstowcs
	movs r7, r0
	bmi _020DCBD8
	add r6, sp, #0x30
	b _020DCC24
_020DCAE0:
	ldr r1, [sp, #0x464]
	ldrb r0, [sp, #0x24]
	add r1, r1, #4
	str r1, [sp, #0x464]
	ldr r6, [r1, #-4]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020DCD60
_020DCB00: ; jump table
	b _020DCB24 ; case 0
	b _020DCD60 ; case 1
	b _020DCB2C ; case 2
	b _020DCB34 ; case 3
	b _020DCB5C ; case 4
	b _020DCD60 ; case 5
	b _020DCB3C ; case 6
	b _020DCB4C ; case 7
	b _020DCB54 ; case 8
_020DCB24:
	str r4, [r6, #0]
	b _020DCD60
_020DCB2C:
	strh r4, [r6]
	b _020DCD60
_020DCB34:
	str r4, [r6, #0]
	b _020DCD60
_020DCB3C:
	str r4, [r6, #0]
	mov r0, r4, asr #0x1f
	str r0, [r6, #4]
	b _020DCD60
_020DCB4C:
	str r4, [r6, #0]
	b _020DCD60
_020DCB54:
	str r4, [r6, #0]
	b _020DCD60
_020DCB5C:
	str r4, [r6, #0]
	mov r0, r4, asr #0x1f
	str r0, [r6, #4]
	b _020DCD60
_020DCB6C:
	ldrb r0, [sp, #0x24]
	add r6, sp, #0x30
	cmp r0, #5
	bne _020DCB98
	ldr r0, [sp, #0x464]
	mov r7, #1
	add r0, r0, #4
	str r0, [sp, #0x464]
	ldr r0, [r0, #-4]
	strh r0, [r6]
	b _020DCC24
_020DCB98:
	ldr r0, [sp, #0x464]
	add r1, sp, #0x18
	add r0, r0, #4
	str r0, [sp, #0x464]
	ldr r3, [r0, #-4]
	mov r0, r6
	mov r2, #1
	strb r3, [sp, #0x18]
	bl mbtowc
	mov r7, r0
	b _020DCC24
_020DCBC4:
	mov r0, #0x25
	strh r0, [sp, #0x30]
	add r6, sp, #0x30
	mov r7, #1
	b _020DCC24
_020DCBD8:
	ldr r0, [sp, #0xc]
	bl wcslen
	movs r5, r0
	beq _020DCC10
	ldr r1, [sp, #0xc]
	mov r0, r8
	mov r2, r5
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020DCC10:
	add sp, sp, #0x430
	add r0, r4, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
_020DCC24:
	ldrb r0, [sp, #0x20]
	mov r5, r7
	cmp r0, #0
	beq _020DCCD4
	cmp r0, #2
	moveq r1, #0x30
	movne r1, #0x20
	strh r1, [sp, #0x1c]
	ldrh r0, [r6]
	cmp r0, #0x2b
	cmpne r0, #0x2d
	cmpne r0, #0x20
	bne _020DCC90
	cmp r1, #0x30
	bne _020DCC90
	mov r0, r8
	mov r1, r6
	mov r2, #1
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r6, r6, #2
	sub r7, r7, #1
_020DCC90:
	ldr r0, [sp, #0x28]
	cmp r5, r0
	bge _020DCCD4
_020DCC9C:
	mov r0, r8
	add r1, sp, #0x1c
	mov r2, #1
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x28]
	add r5, r5, #1
	cmp r5, r0
	blt _020DCC9C
_020DCCD4:
	cmp r7, #0
	beq _020DCD04
	mov r0, r8
	mov r1, r6
	mov r2, r7
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020DCD04:
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	bne _020DCD5C
	ldr r0, [sp, #0x28]
	cmp r5, r0
	bge _020DCD5C
	mov r7, #0x20
_020DCD20:
	mov r0, r8
	add r1, sp, #0x1a
	mov r2, #1
	strh r7, [sp, #0x1a]
	blx sb
	cmp r0, #0
	addeq sp, sp, #0x430
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x28]
	add r5, r5, #1
	cmp r5, r0
	blt _020DCD20
_020DCD5C:
	add r4, r4, r5
_020DCD60:
	ldrh r0, [fp]
	cmp r0, #0
	bne _020DC4CC
_020DCD6C:
	mov r0, r4
	add sp, sp, #0x430
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DCD80: .word 0x0000FFFF
_020DCD84: .word 0x02101884
_020DCD88: .word 0x02101888
	arm_func_end __wpformatter

	arm_func_start __wStringWrite
__wStringWrite: ; 0x020DCD8C
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
	add r0, r0, r3, lsl #1
	bl wmemcpy
	ldr r1, [r4, #8]
	add r1, r1, r5
	str r1, [r4, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end __wStringWrite

	arm_func_start swprintf
swprintf: ; 0x020DCDCC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r3, sp, #0x10
	bic r3, r3, #3
	ldr r2, [sp, #0x10]
	add r3, r3, #4
	bl vswprintf
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end swprintf

	arm_func_start vswprintf
vswprintf: ; 0x020DCDF4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	mov ip, #0
	ldr r0, _020DCE60 ; =__wStringWrite
	add r1, sp, #0
	str r5, [sp]
	str r4, [sp, #4]
	str ip, [sp, #8]
	bl __wpformatter
	cmp r0, #0
	addlt sp, sp, #0xc
	ldmltia sp!, {r4, r5, pc}
	cmp r0, r4
	bhs _020DCE48
	mov r1, r0, lsl #1
	mov r2, #0
	add sp, sp, #0xc
	strh r2, [r5, r1]
	ldmia sp!, {r4, r5, pc}
_020DCE48:
	mov r1, #0
	add r0, r5, r4, lsl #1
	strh r1, [r0, #-2]
	sub r0, r1, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020DCE60: .word __wStringWrite
	arm_func_end vswprintf


	.section .exception, 4


	.global Unk_020E4570
Unk_020E4570: ; 0x020E4570
	.incbin "incbin/arm9_exception.bin", 0x18, 0x8

	.global Unk_020E4578
Unk_Unk_020E4578: ; Unk_020E4578
	.incbin "incbin/arm9_exception.bin", 0x20, 0x8


	.data


	.global Unk_02101828
Unk_02101828: ; 0x02101828
	.incbin "incbin/arm9_data.bin", 0x2B48, 0x2B54 - 0x2B48

	.global Unk_02101834
Unk_02101834: ; 0x02101834
	.incbin "incbin/arm9_data.bin", 0x2B54, 0x2B60 - 0x2B54

	.global Unk_02101840
Unk_02101840: ; 0x02101840
	.incbin "incbin/arm9_data.bin", 0x2B60, 0x2B6C - 0x2B60

	.global Unk_0210184C
Unk_0210184C: ; 0x0210184C
	.incbin "incbin/arm9_data.bin", 0x2B6C, 0x2B74 - 0x2B6C

	.global Unk_02101854
Unk_02101854: ; 0x02101854
	.incbin "incbin/arm9_data.bin", 0x2B74, 0x2B7C - 0x2B74

	.global Unk_0210185C
Unk_0210185C: ; 0x0210185C
	.incbin "incbin/arm9_data.bin", 0x2B7C, 0x2B88 - 0x2B7C

	.global Unk_02101868
Unk_02101868: ; 0x02101868
	.incbin "incbin/arm9_data.bin", 0x2B88, 0x2B94 - 0x2B88

	.global Unk_02101874
Unk_02101874: ; 0x02101874
	.incbin "incbin/arm9_data.bin", 0x2B94, 0x2B9C - 0x2B94

	.global Unk_0210187C
Unk_0210187C: ; 0x0210187C
	.incbin "incbin/arm9_data.bin", 0x2B9C, 0x2BA4 - 0x2B9C

	.global Unk_02101884
Unk_02101884: ; 0x02101884
	.incbin "incbin/arm9_data.bin", 0x2BA4, 0x2BA8 - 0x2BA4

	.global Unk_02101888
Unk_02101888: ; 0x02101888
	.incbin "incbin/arm9_data.bin", 0x2BA8, 0x1

