
	.include "macros/function.inc"
	.include "include/arm9_11.inc"

	.text

	arm_func_start sub_020B091C
sub_020B091C: ; 0x020B091C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r0, [sl]
	mov sb, r1
	ldrb r6, [r0, #1]
	mov r4, #4
	strb r6, [sl, #0xae]
	ldr r0, [sl, #8]
	orr r0, r0, #0x10
	str r0, [sl, #8]
	tst r0, #0x400
	beq _020B09A4
	cmp sb, #0x40
	cmpne sb, #0x60
	addeq r4, r4, #1
	cmp sb, #0x20
	cmpne sb, #0x60
	bne _020B0990
	tst r0, #0x100
	add r4, r4, #1
	bne _020B0990
	ldr r0, [sl]
	add r1, sp, #0x10
	ldrb r3, [r0, #4]
	mov r0, #0x14
	mov r2, #1
	str r3, [sp, #0x10]
	bl sub_020B275C
_020B0990:
	ldr r0, [sl]
	add sp, sp, #0x14
	add r0, r0, r4
	str r0, [sl]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B09A4:
	cmp sb, #0x40
	cmpne sb, #0x60
	bne _020B09E8
	ldr r0, [sl]
	cmp sb, #0x40
	ldreqb r0, [r0, #4]
	add r4, r4, #1
	streq r0, [sp, #0xc]
	ldrneb r0, [r0, #5]
	strne r0, [sp, #0xc]
	ldr r0, [sl, #8]
	tst r0, #0x100
	bne _020B09E8
	add r1, sp, #0xc
	mov r0, #0x14
	mov r2, #1
	bl sub_020B275C
_020B09E8:
	add r0, sl, #0x12c
	str r0, [sl, #0xb4]
	ldr r0, [sl, #0x24]
	cmp r0, #0
	ldrneb r8, [sl, #0x92]
	moveq r8, #0
	cmp r8, #1
	bne _020B0A3C
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x24]
	blx r1
	ldr r0, [sl, #0x24]
	cmp r0, #0
	ldrneb r8, [sl, #0x92]
	ldr r0, [sl, #8]
	moveq r8, #0
	and r0, r0, #0x40
	b _020B0A40
_020B0A3C:
	mov r0, #0
_020B0A40:
	cmp r0, #0
	bne _020B0C88
	ldr r0, [sl, #4]
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _020B0A74
	mov r0, #0x58
	mla r5, r6, r0, r1
	ldr r0, [sl, #8]
	tst r0, #0x80
	moveq r0, #1
	movne r0, #0
	b _020B0A7C
_020B0A74:
	add r5, sl, #0x12c
	mov r0, #0
_020B0A7C:
	cmp r0, #0
	bne _020B0C84
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [sl, #4]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _020B0AB4
	ldr r3, [r0, #0x14]
	mov r0, r5
	mov r2, r6
	blx r3
	cmp r0, #0
	bne _020B0C84
_020B0AB4:
	ldr r2, [sl, #0xd4]
	cmp r2, #0
	beq _020B0AFC
	beq _020B0AE8
	ldrb r0, [r2, #1]
	cmp r6, r0
	bhs _020B0AE8
	ldrh r1, [r2, #6]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _020B0AEC
_020B0AE8:
	mov r1, #0
_020B0AEC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r7, r2, r0
	bne _020B0B00
_020B0AFC:
	mov r7, #0
_020B0B00:
	ldrh r0, [r7]
	add r6, r7, #4
	tst r0, #1
	beq _020B0B20
	ldr r0, [r5, #0]
	orr r0, r0, #4
	str r0, [r5, #0]
	b _020B0B3C
_020B0B20:
	ldr r0, [r6, #0]
	str r0, [r5, #0x4c]
	ldr r0, [r6, #4]
	str r0, [r5, #0x50]
	ldr r0, [r6, #8]
	add r6, r6, #0xc
	str r0, [r5, #0x54]
_020B0B3C:
	ldrh r0, [r7]
	tst r0, #2
	beq _020B0B58
	ldr r0, [r5, #0]
	orr r0, r0, #2
	str r0, [r5, #0]
	b _020B0C6C
_020B0B58:
	tst r0, #8
	beq _020B0C20
	and r1, r0, #0xf0
	mov fp, r1, asr #4
	ldrsh r1, [r6]
	add r0, r5, #0x28
	str r1, [sp]
	ldrsh r1, [r6, #2]
	str r1, [sp, #4]
	bl sub_020C4F30
	ldrh r0, [r7]
	ldr r2, _020B0D6C ; =0x020F97F4
	ldr r1, _020B0D70 ; =0x020F97F5
	tst r0, #0x100
	mov r0, #0x1000
	ldrb r2, [r2, fp, lsl #2]
	ldrb r1, [r1, fp, lsl #2]
	rsbne r0, r0, #0
	add r3, r5, fp, lsl #2
	str r0, [r3, #0x28]
	ldr r0, [sp]
	add r2, r5, r2, lsl #2
	str r0, [r2, #0x28]
	ldr r0, [sp, #4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x28]
	ldrh r0, [r7]
	tst r0, #0x200
	beq _020B0BD8
	ldr r0, [sp, #4]
	rsb r0, r0, #0
	str r0, [sp, #4]
_020B0BD8:
	ldr r0, _020B0D74 ; =0x020F97F6
	ldrb r0, [r0, fp, lsl #2]
	add r1, r5, r0, lsl #2
	ldr r0, [sp, #4]
	str r0, [r1, #0x28]
	ldrh r0, [r7]
	tst r0, #0x400
	beq _020B0C04
	ldr r0, [sp]
	rsb r0, r0, #0
	str r0, [sp]
_020B0C04:
	ldr r0, _020B0D78 ; =0x020F97F7
	add r6, r6, #4
	ldrb r0, [r0, fp, lsl #2]
	add r1, r5, r0, lsl #2
	ldr r0, [sp]
	str r0, [r1, #0x28]
	b _020B0C6C
_020B0C20:
	ldrsh r0, [r7, #2]
	str r0, [r5, #0x28]
	ldrsh r0, [r6]
	str r0, [r5, #0x2c]
	ldrsh r0, [r6, #2]
	str r0, [r5, #0x30]
	ldrsh r0, [r6, #4]
	str r0, [r5, #0x34]
	ldrsh r0, [r6, #6]
	str r0, [r5, #0x38]
	ldrsh r0, [r6, #8]
	str r0, [r5, #0x3c]
	ldrsh r0, [r6, #0xa]
	str r0, [r5, #0x40]
	ldrsh r0, [r6, #0xc]
	str r0, [r5, #0x44]
	ldrsh r0, [r6, #0xe]
	add r6, r6, #0x10
	str r0, [r5, #0x48]
_020B0C6C:
	ldrh r3, [r7]
	ldr r2, [sl]
	ldr r7, [sl, #0xe8]
	mov r0, r5
	mov r1, r6
	blx r7
_020B0C84:
	str r5, [sl, #0xb4]
_020B0C88:
	cmp r8, #2
	bne _020B0CC4
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x24]
	blx r1
	ldr r0, [sl, #0x24]
	cmp r0, #0
	ldrneb r8, [sl, #0x92]
	ldr r0, [sl, #8]
	moveq r8, #0
	and r0, r0, #0x40
	b _020B0CC8
_020B0CC4:
	mov r0, #0
_020B0CC8:
	cmp r0, #0
	bne _020B0CE8
	ldr r0, [sl, #8]
	tst r0, #0x100
	bne _020B0CE8
	ldr r0, [sl, #0xb4]
	ldr r1, [sl, #0xec]
	blx r1
_020B0CE8:
	mov r0, #0
	str r0, [sl, #0xb4]
	cmp r8, #3
	bne _020B0D18
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x24]
	blx r1
	ldr r0, [sl, #8]
	and r0, r0, #0x40
_020B0D18:
	cmp sb, #0x20
	cmpne sb, #0x60
	bne _020B0D58
	cmp r0, #0
	add r4, r4, #1
	bne _020B0D58
	ldr r0, [sl, #8]
	tst r0, #0x100
	bne _020B0D58
	ldr r0, [sl]
	add r1, sp, #8
	ldrb r3, [r0, #4]
	mov r0, #0x13
	mov r2, #1
	str r3, [sp, #8]
	bl sub_020B275C
_020B0D58:
	ldr r0, [sl]
	add r0, r0, r4
	str r0, [sl]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B0D6C: .word 0x020F97F4
_020B0D70: .word 0x020F97F5
_020B0D74: .word 0x020F97F6
_020B0D78: .word 0x020F97F7
	arm_func_end sub_020B091C

	arm_func_start sub_020B0D7C
sub_020B0D7C: ; 0x020B0D7C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xc8
	mov sb, r0
	ldr r0, [sb, #8]
	mov r8, r1
	tst r0, #0x200
	mov r4, #2
	ldr r5, _020B1058 ; =0x02101004
	ldr r6, _020B105C ; =0x02101010
	beq _020B0DD0
	cmp r8, #0x40
	cmpne r8, #0x60
	addeq r4, r4, #1
	cmp r8, #0x20
	cmpne r8, #0x60
	ldr r0, [sb]
	addeq r4, r4, #1
	add r0, r0, r4
	add sp, sp, #0xc8
	str r0, [sb]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B0DD0:
	cmp r8, #0x40
	cmpne r8, #0x60
	bne _020B0E10
	tst r0, #0x100
	add r4, r4, #1
	bne _020B0E10
	ldr r0, [sb]
	cmp r8, #0x40
	ldreqb r0, [r0, #2]
	add r1, sp, #4
	mov r2, #1
	streq r0, [sp, #4]
	ldrneb r0, [r0, #3]
	strne r0, [sp, #4]
	mov r0, #0x14
	bl sub_020B275C
_020B0E10:
	ldr r0, [sb, #0x28]
	cmp r0, #0
	ldrneb r7, [sb, #0x93]
	moveq r7, #0
	cmp r7, #1
	bne _020B0E5C
	ldr r1, [sb, #8]
	mov r0, sb
	bic r1, r1, #0x40
	str r1, [sb, #8]
	ldr r1, [sb, #0x28]
	blx r1
	ldr r0, [sb, #0x28]
	cmp r0, #0
	ldrneb r7, [sb, #0x93]
	ldr r0, [sb, #8]
	moveq r7, #0
	and r1, r0, #0x40
	b _020B0E60
_020B0E5C:
	mov r1, #0
_020B0E60:
	ldr r0, [sb, #8]
	tst r0, #0x100
	cmpeq r1, #0
	bne _020B0FD8
	bl sub_020B2628
	ldr r2, _020B1060 ; =0x00151110
	ldr r1, _020B1064 ; =0x04000400
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #0]
	str r0, [r1, #0]
	add sl, sp, #0x88
_020B0E90:
	mov r0, sl
	bl sub_020BFCCC
	cmp r0, #0
	bne _020B0E90
	ldr r0, _020B1068 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B0ED0
	bl sub_020AF67C
	add r1, sp, #0x48
	bl sub_020BBBB0
	add r0, sp, #0x88
	add r1, sp, #0x48
	mov r2, r0
	bl sub_020BC618
	b _020B0EF4
_020B0ED0:
	tst r0, #2
	beq _020B0EF4
	ldr r0, _020B106C ; =0x021C5AD8
	add r1, sp, #8
	bl sub_020BBBB0
	add r0, sp, #0x88
	add r1, sp, #8
	mov r2, r0
	bl sub_020BC618
_020B0EF4:
	ldr r3, [sp, #0xb8]
	ldr r2, [sp, #0xbc]
	ldr r1, [sp, #0xc0]
	add r0, sp, #0x88
	str r3, [r5, #0]
	str r2, [r5, #4]
	str r1, [r5, #8]
	bl sub_020BD384
	str r0, [r6, #0]
	add r0, sp, #0x98
	bl sub_020BD384
	str r0, [r6, #4]
	add r0, sp, #0xa8
	bl sub_020BD384
	ldr r1, _020B1068 ; =0x021C5A8C
	str r0, [r6, #8]
	ldr r0, [r1, #0xfc]
	ldr r1, _020B1064 ; =0x04000400
	tst r0, #1
	beq _020B0F84
	ldr r3, _020B1070 ; =0x00171012
	ldr r0, _020B1074 ; =0x02100FD8
	mov r2, #8
	str r3, [r1, #0]
	bl sub_020C4B90
	bl sub_020AF6B4
	ldr r1, _020B1064 ; =0x04000400
	mov r2, #0x30
	bl sub_020C4B90
	ldr r2, _020B1078 ; =0x00001B19
	ldr r1, _020B1064 ; =0x04000400
	ldr r0, _020B107C ; =0x02100FE0
	str r2, [r1, #0]
	mov r2, #0x3c
	bl sub_020C4B90
	b _020B0FD8
_020B0F84:
	tst r0, #2
	beq _020B0FCC
	ldr r3, _020B1070 ; =0x00171012
	ldr r0, _020B1074 ; =0x02100FD8
	mov r2, #8
	str r3, [r1, #0]
	bl sub_020C4B90
	bl sub_020AF5E0
	ldr r1, _020B1064 ; =0x04000400
	mov r2, #0x30
	bl sub_020C4B90
	ldr r2, _020B1078 ; =0x00001B19
	ldr r1, _020B1064 ; =0x04000400
	ldr r0, _020B107C ; =0x02100FE0
	str r2, [r1, #0]
	mov r2, #0x3c
	bl sub_020C4B90
	b _020B0FD8
_020B0FCC:
	ldr r0, _020B1080 ; =0x02100FD4
	mov r2, #0x48
	bl sub_020C4B90
_020B0FD8:
	cmp r7, #3
	movne r0, #0
	bne _020B1004
	ldr r1, [sb, #8]
	mov r0, sb
	bic r1, r1, #0x40
	str r1, [sb, #8]
	ldr r1, [sb, #0x28]
	blx r1
	ldr r0, [sb, #8]
	and r0, r0, #0x40
_020B1004:
	cmp r8, #0x20
	cmpne r8, #0x60
	bne _020B1044
	cmp r0, #0
	add r4, r4, #1
	bne _020B1044
	ldr r0, [sb, #8]
	tst r0, #0x100
	bne _020B1044
	ldr r0, [sb]
	add r1, sp, #0
	ldrb r3, [r0, #2]
	mov r0, #0x13
	mov r2, #1
	str r3, [sp]
	bl sub_020B275C
_020B1044:
	ldr r0, [sb]
	add r0, r0, r4
	str r0, [sb]
	add sp, sp, #0xc8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020B1058: .word 0x02101004
_020B105C: .word 0x02101010
_020B1060: .word 0x00151110
_020B1064: .word 0x04000400
_020B1068: .word 0x021C5A8C
_020B106C: .word 0x021C5AD8
_020B1070: .word 0x00171012
_020B1074: .word 0x02100FD8
_020B1078: .word 0x00001B19
_020B107C: .word 0x02100FE0
_020B1080: .word 0x02100FD4
	arm_func_end sub_020B0D7C

	arm_func_start sub_020B1084
sub_020B1084: ; 0x020B1084
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc8
	mov sl, r0
	ldr r0, [sl, #8]
	mov sb, r1
	tst r0, #0x200
	mov r5, #2
	ldr fp, _020B13BC ; =0x0210104C
	ldr r6, _020B13C0 ; =0x02101058
	ldr r7, _020B13C4 ; =0x02101028
	beq _020B10DC
	cmp sb, #0x40
	cmpne sb, #0x60
	addeq r5, r5, #1
	cmp sb, #0x20
	cmpne sb, #0x60
	ldr r0, [sl]
	addeq r5, r5, #1
	add r0, r0, r5
	add sp, sp, #0xc8
	str r0, [sl]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B10DC:
	cmp sb, #0x40
	cmpne sb, #0x60
	bne _020B111C
	tst r0, #0x100
	add r5, r5, #1
	bne _020B111C
	ldr r0, [sl]
	cmp sb, #0x40
	ldreqb r0, [r0, #2]
	add r1, sp, #4
	mov r2, #1
	streq r0, [sp, #4]
	ldrneb r0, [r0, #3]
	strne r0, [sp, #4]
	mov r0, #0x14
	bl sub_020B275C
_020B111C:
	ldr r0, [sl, #0x2c]
	cmp r0, #0
	ldrneb r8, [sl, #0x94]
	moveq r8, #0
	cmp r8, #1
	bne _020B1168
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x2c]
	blx r1
	ldr r0, [sl, #0x2c]
	cmp r0, #0
	ldrneb r8, [sl, #0x94]
	ldr r0, [sl, #8]
	moveq r8, #0
	and r1, r0, #0x40
	b _020B116C
_020B1168:
	mov r1, #0
_020B116C:
	ldr r0, [sl, #8]
	tst r0, #0x100
	cmpeq r1, #0
	bne _020B133C
	bl sub_020B2628
	ldr r2, _020B13C8 ; =0x00151110
	ldr r1, _020B13CC ; =0x04000400
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #0]
	str r0, [r1, #0]
	add r4, sp, #0x88
_020B119C:
	mov r0, r4
	bl sub_020BFCCC
	cmp r0, #0
	bne _020B119C
	ldr r0, _020B13D0 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B11DC
	bl sub_020AF67C
	add r1, sp, #0x48
	bl sub_020BBBB0
	add r0, sp, #0x88
	add r1, sp, #0x48
	mov r2, r0
	bl sub_020BC618
	b _020B1200
_020B11DC:
	tst r0, #2
	beq _020B1200
	ldr r0, _020B13D4 ; =0x021C5AD8
	add r1, sp, #8
	bl sub_020BBBB0
	add r0, sp, #0x88
	add r1, sp, #8
	mov r2, r0
	bl sub_020BC618
_020B1200:
	ldr r3, [sp, #0xb8]
	ldr r2, [sp, #0xbc]
	ldr r1, [sp, #0xc0]
	add r0, sp, #0x88
	str r3, [fp]
	str r2, [fp, #4]
	str r1, [fp, #8]
	bl sub_020BD384
	str r0, [r6, #0]
	add r0, sp, #0x98
	bl sub_020BD384
	str r0, [r6, #4]
	add r0, sp, #0xa8
	bl sub_020BD384
	ldr r1, [sp, #0x9c]
	str r0, [r6, #8]
	cmp r1, #0
	ldreq r0, [sp, #0xa0]
	cmpeq r0, #0
	beq _020B1274
	add r0, sp, #0x98
	add r1, r7, #0xc
	bl sub_020BD3E4
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x10]
	rsb r1, r1, #0
	str r1, [r7, #0x1c]
	str r0, [r7, #0x20]
	b _020B1294
_020B1274:
	add r0, sp, #0xa8
	add r1, r7, #0x18
	bl sub_020BD3E4
	ldr r1, [r7, #0x1c]
	ldr r0, [r7, #0x20]
	rsb r1, r1, #0
	str r1, [r7, #0x14]
	str r0, [r7, #0x10]
_020B1294:
	ldr r0, _020B13D0 ; =0x021C5A8C
	ldr r1, _020B13CC ; =0x04000400
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B12E8
	ldr r3, _020B13D8 ; =0x00171012
	ldr r0, _020B13DC ; =0x02101020
	mov r2, #8
	str r3, [r1, #0]
	bl sub_020C4B90
	bl sub_020AF6B4
	ldr r1, _020B13CC ; =0x04000400
	mov r2, #0x30
	bl sub_020C4B90
	ldr r2, _020B13E0 ; =0x00001B19
	ldr r1, _020B13CC ; =0x04000400
	ldr r0, _020B13C4 ; =0x02101028
	str r2, [r1, #0]
	mov r2, #0x3c
	bl sub_020C4B90
	b _020B133C
_020B12E8:
	tst r0, #2
	beq _020B1330
	ldr r3, _020B13D8 ; =0x00171012
	ldr r0, _020B13DC ; =0x02101020
	mov r2, #8
	str r3, [r1, #0]
	bl sub_020C4B90
	bl sub_020AF5E0
	ldr r1, _020B13CC ; =0x04000400
	mov r2, #0x30
	bl sub_020C4B90
	ldr r2, _020B13E0 ; =0x00001B19
	ldr r1, _020B13CC ; =0x04000400
	ldr r0, _020B13C4 ; =0x02101028
	str r2, [r1, #0]
	mov r2, #0x3c
	bl sub_020C4B90
	b _020B133C
_020B1330:
	ldr r0, _020B13E4 ; =0x0210101C
	mov r2, #0x48
	bl sub_020C4B90
_020B133C:
	cmp r8, #3
	movne r0, #0
	bne _020B1368
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x2c]
	blx r1
	ldr r0, [sl, #8]
	and r0, r0, #0x40
_020B1368:
	cmp sb, #0x20
	cmpne sb, #0x60
	bne _020B13A8
	cmp r0, #0
	add r5, r5, #1
	bne _020B13A8
	ldr r0, [sl, #8]
	tst r0, #0x100
	bne _020B13A8
	ldr r0, [sl]
	add r1, sp, #0
	ldrb r3, [r0, #2]
	mov r0, #0x13
	mov r2, #1
	str r3, [sp]
	bl sub_020B275C
_020B13A8:
	ldr r0, [sl]
	add r0, r0, r5
	str r0, [sl]
	add sp, sp, #0xc8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B13BC: .word 0x0210104C
_020B13C0: .word 0x02101058
_020B13C4: .word 0x02101028
_020B13C8: .word 0x00151110
_020B13CC: .word 0x04000400
_020B13D0: .word 0x021C5A8C
_020B13D4: .word 0x021C5AD8
_020B13D8: .word 0x00171012
_020B13DC: .word 0x02101020
_020B13E0: .word 0x00001B19
_020B13E4: .word 0x0210101C
	arm_func_end sub_020B1084

	arm_func_start sub_020B13E8
sub_020B13E8: ; 0x020B13E8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x104
	ldr r1, [r0, #4]
	ldr r6, [r0, #0]
	ldr r7, [r1, #4]
	ldrb r2, [r6, #2]
	ldr r3, [r7, #0x10]
	mov r5, #0
	str r0, [sp]
	str r2, [sp, #0x10]
	add r3, r7, r3
	add r1, sp, #0xb0
	mov r0, r5
	mov r2, #0x54
	mov r4, r5
	str r3, [sp, #0x14]
	add r6, r6, #3
	bl sub_020C4BB8
	bl sub_020B2628
	mov r0, r5
	ldr r1, _020B1B34 ; =0x04000440
	str r0, [sp, #0xc]
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r1, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r1, #0x14]
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bls _020B18D8
_020B1468:
	ldrb fp, [r6, #1]
	mov r1, #0x64
	ldr r0, [sp]
	smulbb r1, fp, r1
	mov r2, fp, lsr #5
	str r1, [sp, #4]
	add r0, r0, r2, lsl #2
	ldr r3, _020B1B38 ; =0x021C70F4
	ldr r2, [sp, #4]
	ldr sb, [r0, #0xcc]
	add r7, r3, r2
	and r1, fp, #0x1f
	mov r2, #1
	ands r3, sb, r2, lsl r1
	str r3, [sp, #8]
	bne _020B14D4
	ldr sb, [r0, #0xcc]
	ldr r3, _020B1B3C ; =0x04000450
	orr r1, sb, r2, lsl r1
	str r1, [r0, #0xcc]
	ldr r0, [sp, #0x14]
	mov r1, #0x54
	mla r0, fp, r1, r0
	ldrb sb, [r6]
	str sb, [r3]
	str r2, [r3, #-0x10]
	bl sub_020BF974
_020B14D4:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020B16FC
	ldr r0, [sp, #0xe0]
	ldmia r8, {sb, lr}
	str r0, [sp, #0x18]
	mov r0, sb, asr #0x1f
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xe4]
	ldr ip, [r8, #8]
	str r0, [sp, #0x24]
	mov r0, lr, asr #0x1f
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xe8]
	ldr r3, [r8, #0xc]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0xec]
	ldr r2, [r8, #0x10]
	str r0, [sp, #0x34]
	mov r0, ip, asr #0x1f
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xf0]
	ldr r1, [r8, #0x14]
	str r0, [sp, #0x3c]
	mov r0, r3, asr #0x1f
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xf4]
	str r0, [sp, #0x44]
	mov r0, r2, asr #0x1f
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xf8]
	str r0, [sp, #0x4c]
	mov r0, r1, asr #0x1f
	str r0, [sp, #0x48]
	ldr r0, [r8, #0x18]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0xfc]
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x50]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x54]
	ldr r0, [r8, #0x1c]
	str r0, [sp, #0xa8]
	ldr r0, [r8, #0x20]
	ldr r8, [sp, #0xa8]
	mov r8, r8, asr #0x1f
	str r8, [sp, #0x5c]
	ldr r8, [sp, #0x100]
	str r8, [sp, #0x60]
	mov r8, r0, asr #0x1f
	str r8, [sp, #0x64]
	umull sl, r8, r5, sb
	str sl, [sp, #0x1c]
	ldr sl, [sp, #0x20]
	mla r8, r5, sl, r8
	mla r8, r4, sb, r8
	ldr sb, [sp, #0x1c]
	mov sb, sb, lsr #0xc
	orr sb, sb, r8, lsl #20
	ldr r8, [sp, #0x18]
	adds r8, r8, sb
	str r8, [sp, #0xe0]
	umull sl, sb, r5, lr
	ldr r8, [sp, #0x28]
	mov sl, sl, lsr #0xc
	mla sb, r5, r8, sb
	mla sb, r4, lr, sb
	ldr r8, [sp, #0x24]
	orr sl, sl, sb, lsl #20
	adds r8, r8, sl
	str r8, [sp, #0xe4]
	umull sl, sb, r5, ip
	ldr r8, [sp, #0x30]
	mov sl, sl, lsr #0xc
	mla sb, r5, r8, sb
	mla sb, r4, ip, sb
	ldr r8, [sp, #0x2c]
	orr sl, sl, sb, lsl #20
	adds r8, r8, sl
	str r8, [sp, #0xe8]
	ldr r8, [sp, #0x38]
	umull sl, sb, r5, r3
	mla sb, r5, r8, sb
	mla sb, r4, r3, sb
	mov r8, sl, lsr #0xc
	ldr r3, [sp, #0x34]
	orr r8, r8, sb, lsl #20
	adds r3, r3, r8
	str r3, [sp, #0xec]
	ldr r3, [sp, #0x40]
	umull sb, r8, r5, r2
	mla r8, r5, r3, r8
	mla r8, r4, r2, r8
	mov r3, sb, lsr #0xc
	ldr r2, [sp, #0x3c]
	orr r3, r3, r8, lsl #20
	adds r2, r2, r3
	str r2, [sp, #0xf0]
	ldr r2, [sp, #0x48]
	umull r8, r3, r5, r1
	mla r3, r5, r2, r3
	mla r3, r4, r1, r3
	mov r2, r8, lsr #0xc
	ldr r1, [sp, #0x44]
	orr r2, r2, r3, lsl #20
	adds r1, r1, r2
	str r1, [sp, #0xf4]
	ldr r1, [sp, #0x50]
	umull r3, r2, r5, r1
	ldr r1, [sp, #0x54]
	mov r3, r3, lsr #0xc
	mla r2, r5, r1, r2
	ldr r1, [sp, #0x50]
	mla r2, r4, r1, r2
	ldr r1, [sp, #0x4c]
	orr r3, r3, r2, lsl #20
	adds r1, r1, r3
	str r1, [sp, #0xf8]
	ldr r1, [sp, #0xa8]
	umull r3, r2, r5, r1
	ldr r1, [sp, #0x5c]
	mov r3, r3, lsr #0xc
	mla r2, r5, r1, r2
	ldr r1, [sp, #0xa8]
	mla r2, r4, r1, r2
	ldr r1, [sp, #0x58]
	orr r3, r3, r2, lsl #20
	adds r1, r1, r3
	str r1, [sp, #0xfc]
	ldr r1, [sp, #0x64]
	umull r3, r2, r5, r0
	mla r2, r5, r1, r2
	mla r2, r4, r0, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x60]
	orr r1, r1, r2, lsl #20
	adds r0, r0, r1
	str r0, [sp, #0x100]
_020B16FC:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020B1738
_020B1708:
	mov r0, r7
	bl sub_020BFCCC
	cmp r0, #0
	bne _020B1708
	ldr r0, [sp, #0x14]
	mov r1, #0x54
	mla r0, fp, r1, r0
	ldr r1, _020B1B34 ; =0x04000440
	mov r2, #2
	add r0, r0, #0x30
	str r2, [r1, #0]
	bl sub_020BF990
_020B1738:
	ldrb r0, [r6, #2]
	ldr r2, [r7, #0]
	ldr r1, [r7, #4]
	mov r5, r0, lsl #4
	ldr r0, [r7, #8]
	ldr r4, [r7, #0x10]
	ldr r3, [r7, #0x14]
	smull r2, r8, r5, r2
	mov r2, r2, lsr #0xc
	orr r2, r2, r8, lsl #20
	smull r1, r8, r5, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r8, lsl #20
	smull r0, r8, r5, r0
	mov r0, r0, lsr #0xc
	orr r0, r0, r8, lsl #20
	smull r8, r4, r5, r4
	mov sb, r8, lsr #0xc
	orr sb, sb, r4, lsl #20
	smull r4, r3, r5, r3
	mov r8, r4, lsr #0xc
	orr r8, r8, r3, lsl #20
	mov r4, r5, asr #0x1f
	ldr sl, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	adds r2, sl, r2
	adds r1, r3, r1
	str r2, [sp, #0xb0]
	str r1, [sp, #0xb4]
	ldr r2, [sp, #0xb8]
	ldr r1, [sp, #0xbc]
	adds r2, r2, r0
	adds r0, r1, sb
	str r2, [sp, #0xb8]
	str r0, [sp, #0xbc]
	ldr r0, [sp, #0xc0]
	ldr r2, [sp, #0xc4]
	adds r0, r0, r8
	str r0, [sp, #0xc0]
	ldr r0, [r7, #0x18]
	ldr r3, [sp, #0xc8]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r2, r1
	str r0, [sp, #0xc4]
	ldr r0, [r7, #0x20]
	ldr r2, [sp, #0xcc]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r3, r1
	str r0, [sp, #0xc8]
	ldr r0, [r7, #0x24]
	ldr r3, [sp, #0xd0]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r2, r1
	str r0, [sp, #0xcc]
	ldr r0, [r7, #0x28]
	ldr r2, [sp, #0xd4]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r3, r1
	str r0, [sp, #0xd0]
	ldr r0, [r7, #0x30]
	ldr r3, [sp, #0xd8]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r2, r1
	str r0, [sp, #0xd4]
	ldr r1, [r7, #0x34]
	ldr r0, [r7, #0x38]
	smull r2, r1, r5, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	adds r1, r3, r2
	str r1, [sp, #0xd8]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [sp, #0xdc]
	adds r0, r0, r1
	str r0, [sp, #0xdc]
	ldr r1, _020B1B40 ; =0x021C7134
	ldr r0, [sp, #8]
	cmp r0, #0
	add r6, r6, #3
	ldr r0, [sp, #4]
	add r8, r1, r0
	bne _020B18C0
_020B18B0:
	mov r0, r8
	bl sub_020BFCFC
	cmp r0, #0
	bne _020B18B0
_020B18C0:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blo _020B1468
_020B18D8:
	ldmia r8, {r0, fp}
	ldr sl, [r8, #8]
	ldr sb, [r8, #0xc]
	ldr r7, [r8, #0x10]
	ldr r6, [r8, #0x14]
	ldr r3, [r8, #0x18]
	ldr r2, [r8, #0x1c]
	ldr r1, [r8, #0x20]
	umull ip, r8, r5, r0
	mov lr, ip, lsr #0xc
	ldr ip, [sp, #0xe0]
	str ip, [sp, #0x68]
	mov ip, r0, asr #0x1f
	mla r8, r5, ip, r8
	mla r8, r4, r0, r8
	orr lr, lr, r8, lsl #20
	umull ip, r8, r5, fp
	ldr r0, [sp, #0x68]
	str ip, [sp, #0x6c]
	adds r0, r0, lr
	str r0, [sp, #0xe0]
	mov r0, fp, asr #0x1f
	str r0, [sp, #0xac]
	ldr ip, [sp, #0xac]
	ldr r0, [sp, #0xe8]
	mla r8, r5, ip, r8
	mla r8, r4, fp, r8
	ldr fp, [sp, #0x6c]
	str r0, [sp, #0x70]
	mov fp, fp, lsr #0xc
	mov r0, sl, asr #0x1f
	str r0, [sp, #0x74]
	ldr r0, [sp, #0xec]
	ldr lr, [sp, #0xe4]
	orr fp, fp, r8, lsl #20
	adds r8, lr, fp
	str r8, [sp, #0xe4]
	str r0, [sp, #0x78]
	mov r0, sb, asr #0x1f
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0xf0]
	ldr r8, [sp, #0x74]
	umull ip, fp, r5, sl
	mla fp, r5, r8, fp
	mla fp, r4, sl, fp
	mov sl, ip, lsr #0xc
	str r0, [sp, #0x80]
	mov r0, r7, asr #0x1f
	str r0, [sp, #0x84]
	ldr r0, [sp, #0xf4]
	ldr r8, [sp, #0x70]
	orr sl, sl, fp, lsl #20
	adds r8, r8, sl
	str r8, [sp, #0xe8]
	str r0, [sp, #0x88]
	mov r0, r6, asr #0x1f
	str r0, [sp, #0x8c]
	ldr r0, [sp, #0xf8]
	ldr r8, [sp, #0x7c]
	umull fp, sl, r5, sb
	mla sl, r5, r8, sl
	mla sl, r4, sb, sl
	mov sb, fp, lsr #0xc
	str r0, [sp, #0x90]
	mov r0, r3, asr #0x1f
	str r0, [sp, #0x94]
	ldr r0, [sp, #0xfc]
	ldr r8, [sp, #0x78]
	orr sb, sb, sl, lsl #20
	adds r8, r8, sb
	str r8, [sp, #0xec]
	str r0, [sp, #0x98]
	mov r0, r2, asr #0x1f
	str r0, [sp, #0x9c]
	ldr r0, [sp, #0x100]
	ldr r8, [sp, #0x84]
	umull sl, sb, r5, r7
	mla sb, r5, r8, sb
	mla sb, r4, r7, sb
	mov r8, sl, lsr #0xc
	str r0, [sp, #0xa0]
	mov r0, r1, asr #0x1f
	str r0, [sp, #0xa4]
	ldr r7, [sp, #0x80]
	orr r8, r8, sb, lsl #20
	adds r7, r7, r8
	str r7, [sp, #0xf0]
	ldr r7, [sp, #0x8c]
	umull sb, r8, r5, r6
	mla r8, r5, r7, r8
	mla r8, r4, r6, r8
	mov r7, sb, lsr #0xc
	ldr r6, [sp, #0x88]
	orr r7, r7, r8, lsl #20
	adds r6, r6, r7
	str r6, [sp, #0xf4]
	ldr r6, [sp, #0x94]
	umull r8, r7, r5, r3
	mla r7, r5, r6, r7
	mla r7, r4, r3, r7
	mov r6, r8, lsr #0xc
	ldr r3, [sp, #0x90]
	orr r6, r6, r7, lsl #20
	adds r3, r3, r6
	str r3, [sp, #0xf8]
	ldr r3, [sp, #0x9c]
	umull r7, r6, r5, r2
	mla r6, r5, r3, r6
	mla r6, r4, r2, r6
	mov r3, r7, lsr #0xc
	ldr r2, [sp, #0x98]
	orr r3, r3, r6, lsl #20
	adds r2, r2, r3
	str r2, [sp, #0xfc]
	ldr r2, [sp, #0xa4]
	umull r6, r3, r5, r1
	mla r3, r5, r2, r3
	mla r3, r4, r1, r3
	mov r2, r6, lsr #0xc
	ldr r1, [sp, #0xa0]
	orr r2, r2, r3, lsl #20
	adds r1, r1, r2
	add r0, sp, #0xe0
	str r1, [sp, #0x100]
	bl sub_020BF958
	ldr r1, _020B1B34 ; =0x04000440
	mov r2, #1
	add r0, sp, #0xb0
	str r2, [r1, #0]
	bl sub_020BF958
	ldr r1, _020B1B34 ; =0x04000440
	mov r2, #0
	mov r0, #1
	str r2, [r1, #0]
	str r0, [r1, #0x10]
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #1]
	str r0, [r1, #0xc]
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldrb r0, [r1, #2]
	add r0, r0, #1
	add r0, r0, r0, lsl #1
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r0, #0]
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B1B34: .word 0x04000440
_020B1B38: .word 0x021C70F4
_020B1B3C: .word 0x04000450
_020B1B40: .word 0x021C7134
	arm_func_end sub_020B13E8

	arm_func_start sub_020B1B44
sub_020B1B44: ; 0x020B1B44
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	ldrneb r4, [r5, #0x96]
	moveq r4, #0
	cmp r4, #1
	bne _020B1B98
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x34]
	blx r1
	ldr r0, [r5, #0x34]
	cmp r0, #0
	ldrneb r4, [r5, #0x96]
	ldr r0, [r5, #8]
	moveq r4, #0
	and r1, r0, #0x40
	b _020B1B9C
_020B1B98:
	mov r1, #0
_020B1B9C:
	ldr r0, [r5, #8]
	tst r0, #0x100
	cmpeq r1, #0
	bne _020B1BF0
	ldr r0, [r5, #0]
	ldrb ip, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb lr, [r0, #3]
	ldrb r2, [r0, #5]
	ldrb r1, [r0, #6]
	orr r3, ip, r3, lsl #8
	ldrb r6, [r0, #4]
	orr ip, r3, lr, lsl #16
	ldrb r3, [r0, #7]
	orr r1, r2, r1, lsl #8
	orr r6, ip, r6, lsl #24
	ldrb r2, [r0, #8]
	orr r1, r1, r3, lsl #16
	add r0, r0, r6
	orr r1, r1, r2, lsl #24
	bl sub_020B26A8
_020B1BF0:
	cmp r4, #3
	bne _020B1C10
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x34]
	blx r1
_020B1C10:
	ldr r0, [r5, #0]
	add r0, r0, #9
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B1B44

	arm_func_start sub_020B1C20
sub_020B1C20: ; 0x020B1C20
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x100
	bne _020B1C7C
	tst r0, #0x200
	bne _020B1C7C
	cmp r1, #0
	bne _020B1C5C
	ldr r0, [r4, #0xe0]
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	b _020B1C6C
_020B1C5C:
	ldr r0, [r4, #0xe4]
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
_020B1C6C:
	add r1, sp, #0
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
_020B1C7C:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020B1C20

	arm_func_start sub_020B1C90
sub_020B1C90: ; 0x020B1C90
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r7, r0
	ldr r0, [r7, #8]
	tst r0, #0x200
	bne _020B1FAC
	tst r0, #1
	beq _020B1FAC
	ldr r2, [r7, #0xb0]
	ldr r0, [r2, #0x10]
	and r1, r0, #0xc0000000
	cmp r1, #-0x80000000
	beq _020B1CFC
	bic r0, r0, #0xc0000000
	str r0, [r2, #0x10]
	ldr r3, [r7, #0xb0]
	ldr r0, _020B1FC0 ; =0x02100F64
	ldr r2, [r3, #0x10]
	ldr r1, _020B1FC4 ; =0x02100F70
	orr r2, r2, #0x80000000
	str r2, [r3, #0x10]
	ldr r3, [r7, #0xb0]
	mov r2, #1
	ldr r3, [r3, #0x10]
	str r3, [r0, #0xc]
	ldr r0, [r0, #8]
	bl sub_020B275C
_020B1CFC:
	mov r0, #3
	str r0, [sp, #0x10]
	add r1, sp, #0x10
	mov r0, #0x10
	mov r2, #1
	bl sub_020B275C
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	ldrneb r6, [r7, #0x98]
	moveq r6, #0
	cmp r6, #1
	bne _020B1D60
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x3c]
	blx r1
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	ldrneb r6, [r7, #0x98]
	ldr r0, [r7, #8]
	moveq r6, #0
	and r0, r0, #0x40
	b _020B1D64
_020B1D60:
	mov r0, #0
_020B1D64:
	cmp r0, #0
	bne _020B1DDC
	ldr r0, [r7, #0xb0]
	add r1, sp, #0x14
	ldrh r5, [r0, #0x2e]
	ldrh r4, [r0, #0x2c]
	mov r3, #0x10000
	rsb r0, r5, #0
	mov ip, r0, lsl #0xf
	mov lr, r4, lsl #0xf
	mov r0, #0x1b
	mov r2, #3
	str lr, [sp, #0x14]
	str ip, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl sub_020B275C
	mov r0, r5, lsl #0x13
	mov r1, r0, asr #0x10
	mov r0, r4, lsl #0x13
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r3, r1, r0, lsr #16
	add r1, sp, #0xc
	mov r0, #0x22
	mov r2, #1
	str r3, [sp, #0xc]
	bl sub_020B275C
_020B1DDC:
	cmp r6, #2
	bne _020B1E18
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x3c]
	blx r1
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	ldrneb r6, [r7, #0x98]
	ldr r0, [r7, #8]
	moveq r6, #0
	and r0, r0, #0x40
	b _020B1E1C
_020B1E18:
	mov r0, #0
_020B1E1C:
	cmp r0, #0
	bne _020B1EB0
	ldr r0, [r7, #0]
	ldr r4, [r7, #0xd8]
	ldrb r3, [r0, #1]
	cmp r4, #0
	beq _020B1E78
	adds r2, r4, #4
	beq _020B1E64
	ldrb r0, [r4, #5]
	cmp r3, r0
	bhs _020B1E64
	ldrh r1, [r4, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r3, r1
	b _020B1E68
_020B1E64:
	mov r1, #0
_020B1E68:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, r4, r0
	bne _020B1E7C
_020B1E78:
	mov r0, #0
_020B1E7C:
	ldrh r2, [r0, #0x1e]
	tst r2, #0x2000
	beq _020B1EB0
	add r1, r0, #0x2c
	tst r2, #2
	addeq r1, r1, #8
	tst r2, #4
	addeq r1, r1, #4
	tst r2, #8
	addeq r1, r1, #8
	mov r0, #0x18
	mov r2, #0x10
	bl sub_020B275C
_020B1EB0:
	cmp r6, #3
	movne r0, #0
	bne _020B1EDC
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x3c]
	blx r1
	ldr r0, [r7, #8]
	and r0, r0, #0x40
_020B1EDC:
	cmp r0, #0
	bne _020B1F94
	mov r3, #2
	add r1, sp, #8
	mov r0, #0x10
	mov r2, #1
	str r3, [sp, #8]
	bl sub_020B275C
	add r1, sp, #0x20
	mov r0, #0
	bl sub_020B2840
	mov r3, #3
	add r1, sp, #4
	mov r0, #0x10
	mov r2, #1
	str r3, [sp, #4]
	bl sub_020B275C
	ldr r0, _020B1FC8 ; =0x021C5A8C
	mov r2, #9
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B1F64
	ldr r1, _020B1FCC ; =0x021C5AD8
	mov r0, #0x1a
	bl sub_020B275C
	ldr r1, _020B1FD0 ; =0x021C5B48
	mov r0, #0x1a
	mov r2, #9
	bl sub_020B275C
	add r1, sp, #0x20
	mov r0, #0x1a
	mov r2, #9
	bl sub_020B275C
	b _020B1F94
_020B1F64:
	tst r0, #2
	mov r0, #0x1a
	beq _020B1F8C
	ldr r1, _020B1FCC ; =0x021C5AD8
	bl sub_020B275C
	add r1, sp, #0x20
	mov r0, #0x1a
	mov r2, #9
	bl sub_020B275C
	b _020B1F94
_020B1F8C:
	add r1, sp, #0x20
	bl sub_020B275C
_020B1F94:
	mov r3, #2
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl sub_020B275C
_020B1FAC:
	ldr r0, [r7, #0]
	add r0, r0, #3
	str r0, [r7, #0]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020B1FC0: .word 0x02100F64
_020B1FC4: .word 0x02100F70
_020B1FC8: .word 0x021C5A8C
_020B1FCC: .word 0x021C5AD8
_020B1FD0: .word 0x021C5B48
	arm_func_end sub_020B1C90

	arm_func_start sub_020B1FD4
sub_020B1FD4: ; 0x020B1FD4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r5, r0
	ldr r0, [r5, #8]
	tst r0, #0x200
	bne _020B2350
	tst r0, #1
	beq _020B2350
	add r0, sp, #0x50
	mov r1, #0
	bl sub_020B2840
	mov r0, #0x1e
	str r0, [sp, #0xc]
	add r1, sp, #0xc
	mov r0, #0x13
	mov r2, #1
	bl sub_020B275C
	ldr r2, [r5, #0xb0]
	ldr r0, [r2, #0x10]
	and r1, r0, #0xc0000000
	cmp r1, #-0x40000000
	beq _020B2064
	bic r0, r0, #0xc0000000
	str r0, [r2, #0x10]
	ldr r3, [r5, #0xb0]
	ldr r0, _020B2364 ; =0x02100F64
	ldr r2, [r3, #0x10]
	ldr r1, _020B2368 ; =0x02100F68
	orr r2, r2, #0xc0000000
	str r2, [r3, #0x10]
	ldr r3, [r5, #0xb0]
	mov r2, #1
	ldr r3, [r3, #0x10]
	str r3, [r0, #4]
	ldr r0, [r0, #0]
	bl sub_020B275C
_020B2064:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldrneb r4, [r5, #0x99]
	moveq r4, #0
	cmp r4, #1
	bne _020B20B0
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x40]
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldrneb r4, [r5, #0x99]
	ldr r0, [r5, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _020B20B4
_020B20B0:
	mov r0, #0
_020B20B4:
	cmp r0, #0
	bne _020B20FC
	ldr r0, [r5, #0xb0]
	ldr r3, _020B2364 ; =0x02100F64
	ldrh ip, [r0, #0x2e]
	ldrh r2, [r0, #0x2c]
	ldr r1, _020B236C ; =0x02100F94
	rsb r0, ip, #0
	mov r2, r2, lsl #0xf
	str r2, [r3, #0x30]
	mov r0, r0, lsl #0xf
	str r0, [r3, #0x44]
	str r2, [r3, #0x60]
	mov ip, ip, lsl #0xf
	mov r0, #0x16
	mov r2, #0x10
	str ip, [r3, #0x64]
	bl sub_020B275C
_020B20FC:
	cmp r4, #2
	bne _020B2138
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x40]
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldrneb r4, [r5, #0x99]
	ldr r0, [r5, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _020B213C
_020B2138:
	mov r0, #0
_020B213C:
	cmp r0, #0
	bne _020B21D0
	ldr r0, [r5, #0]
	ldr ip, [r5, #0xd8]
	ldrb r3, [r0, #1]
	cmp ip, #0
	beq _020B2198
	adds r2, ip, #4
	beq _020B2184
	ldrb r0, [ip, #5]
	cmp r3, r0
	bhs _020B2184
	ldrh r1, [ip, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r3, r1
	b _020B2188
_020B2184:
	mov r1, #0
_020B2188:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, ip, r0
	bne _020B219C
_020B2198:
	mov r0, #0
_020B219C:
	ldrh r2, [r0, #0x1e]
	tst r2, #0x2000
	beq _020B21D0
	add r1, r0, #0x2c
	tst r2, #2
	addeq r1, r1, #8
	tst r2, #4
	addeq r1, r1, #4
	tst r2, #8
	addeq r1, r1, #8
	mov r0, #0x18
	mov r2, #0x10
	bl sub_020B275C
_020B21D0:
	cmp r4, #3
	movne r0, #0
	bne _020B21FC
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x40]
	blx r1
	ldr r0, [r5, #8]
	and r0, r0, #0x40
_020B21FC:
	cmp r0, #0
	bne _020B2320
	ldr r0, _020B2370 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B2248
	ldr r1, _020B2374 ; =0x021C5B6C
	mov r0, #0x1c
	mov r2, #3
	bl sub_020B275C
	ldr r1, _020B2378 ; =0x021C5B48
	mov r0, #0x1a
	mov r2, #9
	bl sub_020B275C
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	bl sub_020B275C
	b _020B2288
_020B2248:
	tst r0, #2
	beq _020B2264
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	bl sub_020B275C
	b _020B2288
_020B2264:
	bl sub_020AF5E0
	mov r1, r0
	mov r0, #0x19
	mov r2, #0xc
	bl sub_020B275C
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	bl sub_020B275C
_020B2288:
	bl sub_020B2628
	ldr r0, _020B237C ; =0x04000440
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	add r4, sp, #0x10
_020B22A4:
	mov r0, r4
	bl sub_020BFCCC
	cmp r0, #0
	bne _020B22A4
	ldr r2, _020B2380 ; =0x04000448
	mov r0, #1
	str r0, [r2, #0]
	mov r0, #3
	str r0, [r2, #-8]
	add r1, sp, #0x10
	mov r0, #0x16
	mov r2, #0x10
	bl sub_020B275C
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x40]
	mov r0, r0, asr #4
	mov r0, r0, lsl #8
	mov r2, r1, asr #4
	mov r1, r0, asr #0x10
	mov r0, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r3, r1, r0, lsr #16
	add r1, sp, #8
	mov r0, #0x22
	mov r2, #1
	str r3, [sp, #8]
	bl sub_020B275C
_020B2320:
	mov r3, #2
	add r1, sp, #4
	mov r0, #0x10
	mov r2, #1
	str r3, [sp, #4]
	bl sub_020B275C
	mov r3, #0x1e
	add r1, sp, #0
	mov r0, #0x14
	mov r2, #1
	str r3, [sp]
	bl sub_020B275C
_020B2350:
	ldr r0, [r5, #0]
	add r0, r0, #3
	str r0, [r5, #0]
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B2364: .word 0x02100F64
_020B2368: .word 0x02100F68
_020B236C: .word 0x02100F94
_020B2370: .word 0x021C5A8C
_020B2374: .word 0x021C5B6C
_020B2378: .word 0x021C5B48
_020B237C: .word 0x04000440
_020B2380: .word 0x04000448
	arm_func_end sub_020B1FD4

	arm_func_start sub_020B2384
sub_020B2384: ; 0x020B2384
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x6c
	mov r6, r0
	ldr ip, [r6, #0x1c]
	mov r4, r1
	mov r5, r2
	mov r7, r3
	cmp ip, #0x1000
	beq _020B23C4
	add r1, sp, #0xc
	mov r0, #0x1b
	mov r2, #3
	str ip, [sp, #0xc]
	str ip, [sp, #0x10]
	str ip, [sp, #0x14]
	bl sub_020B275C
_020B23C4:
	cmp r7, #0
	beq _020B2570
	ldrb r0, [r6, #0x18]
	cmp r4, r0
	bhs _020B2570
	cmp r6, #0
	ldrne r0, [r6, #8]
	cmpne r0, #0
	addne r3, r6, r0
	moveq r3, #0
	cmp r3, #0
	beq _020B2434
	adds r2, r3, #4
	beq _020B2420
	ldrb r0, [r3, #5]
	cmp r4, r0
	bhs _020B2420
	ldrh r1, [r3, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r4, r1
	b _020B2424
_020B2420:
	mov r1, #0
_020B2424:
	cmp r1, #0
	ldrne r0, [r1]
	addne r4, r3, r0
	bne _020B2438
_020B2434:
	mov r4, #0
_020B2438:
	ldr r0, [r4, #0xc]
	tst r0, #0x1f0000
	addeq sp, sp, #0x6c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _020B261C ; =0x00293130
	str r0, [sp, #0x50]
	ldr r0, [r4, #4]
	str r0, [sp, #0x54]
	ldr r0, [r4, #8]
	str r0, [sp, #0x58]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x5c]
	ldrh r0, [r4, #0x1e]
	tst r0, #0x20
	bicne r0, r1, #0x1f0000
	ldr r1, _020B2620 ; =0x00002B2A
	strne r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r2, [r4, #0x14]
	ldr r0, [sp, #0x50]
	str r2, [sp, #0x64]
	ldrh r3, [r4, #0x1c]
	add r1, sp, #0x54
	mov r2, #6
	str r3, [sp, #0x68]
	bl sub_020B275C
	ldrh r0, [r4, #0x1e]
	tst r0, #1
	beq _020B2570
	mov r2, #8
	str r2, [sp, #0x18]
	ldrh r1, [r4, #0x20]
	add r0, r4, #0x2c
	strh r1, [sp, #0x44]
	ldrh r1, [r4, #0x22]
	strh r1, [sp, #0x46]
	ldr r1, [r4, #0x24]
	str r1, [sp, #0x48]
	ldr r1, [r4, #0x28]
	str r1, [sp, #0x4c]
	ldrh r1, [r4, #0x1e]
	tst r1, #2
	orrne r1, r2, #1
	strne r1, [sp, #0x18]
	bne _020B2500
	ldr r1, [r0, #0]
	str r1, [sp, #0x30]
	ldr r1, [r0, #4]
	add r0, r0, #8
	str r1, [sp, #0x34]
_020B2500:
	ldrh r1, [r4, #0x1e]
	tst r1, #4
	ldrne r1, [sp, #0x18]
	orrne r1, r1, #2
	strne r1, [sp, #0x18]
	bne _020B252C
	ldrsh r1, [r0]
	strh r1, [sp, #0x38]
	ldrsh r1, [r0, #2]
	add r0, r0, #4
	strh r1, [sp, #0x3a]
_020B252C:
	ldrh r1, [r4, #0x1e]
	tst r1, #8
	ldrne r0, [sp, #0x18]
	orrne r0, r0, #4
	strne r0, [sp, #0x18]
	bne _020B2554
	ldr r1, [r0, #0]
	str r1, [sp, #0x3c]
	ldr r0, [r0, #4]
	str r0, [sp, #0x40]
_020B2554:
	ldrb r1, [r6, #0x16]
	ldr r0, _020B2624 ; =0x02100F54
	ldr r1, [r0, r1, lsl #2]
	cmp r1, #0
	beq _020B2570
	add r0, sp, #0x18
	blx r1
_020B2570:
	ldrb r0, [r6, #0x19]
	cmp r5, r0
	bhs _020B25E8
	cmp r6, #0
	ldrne r0, [r6, #0xc]
	cmpne r0, #0
	addne r2, r6, r0
	moveq r2, #0
	cmp r2, #0
	beq _020B25D4
	beq _020B25C0
	ldrb r0, [r2, #1]
	cmp r5, r0
	bhs _020B25C0
	ldrh r1, [r2, #6]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _020B25C4
_020B25C0:
	mov r1, #0
_020B25C4:
	cmp r1, #0
	ldrne r0, [r1]
	addne r2, r2, r0
	bne _020B25D8
_020B25D4:
	mov r2, #0
_020B25D8:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0xc]
	add r0, r2, r0
	bl sub_020B26A8
_020B25E8:
	ldr r3, [r6, #0x20]
	cmp r3, #0x1000
	addeq sp, sp, #0x6c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r0, #0x1b
	mov r2, #3
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	bl sub_020B275C
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020B261C: .word 0x00293130
_020B2620: .word 0x00002B2A
_020B2624: .word 0x02100F54
	arm_func_end sub_020B2384

	arm_func_start sub_020B2628
sub_020B2628: ; 0x020B2628
	stmfd sp!, {r3, lr}
	ldr r0, _020B267C ; =0x021C89F4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020B2640
	bl sub_020B2684
_020B2640:
	ldr r0, _020B267C ; =0x021C89F4
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r2, [r0]
	cmpne r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, _020B2680 ; =0x04000400
	add r0, r0, #4
	mov r2, r2, lsl #2
	bl sub_020C4B90
	ldr r0, _020B267C ; =0x021C89F4
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B267C: .word 0x021C89F4
_020B2680: .word 0x04000400
	arm_func_end sub_020B2628

	arm_func_start sub_020B2684
sub_020B2684: ; 0x020B2684
	ldr r0, _020B2698 ; =0x021C89F4
_020B2688:
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _020B2688
	bx lr
	; .align 2, 0
_020B2698: .word 0x021C89F4
	arm_func_end sub_020B2684

	arm_func_start sub_020B269C
sub_020B269C: ; 0x020B269C
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	arm_func_end sub_020B269C

	arm_func_start sub_020B26A8
sub_020B26A8: ; 0x020B26A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0x100
	blo _020B26D0
	ldr r1, _020B274C ; =0x02101148
	mvn r0, #0
	ldr r1, [r1, #0]
	cmp r1, r0
	bne _020B26E8
_020B26D0:
	mov r2, r4, lsr #2
	ldr r0, [r5, #0]
	add r1, r5, #4
	sub r2, r2, #1
	bl sub_020B275C
	ldmia sp!, {r3, r4, r5, pc}
_020B26E8:
	bl sub_020B2628
	ldr r0, _020B2750 ; =0x021C89F4
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020B2728
	ldr r1, _020B2754 ; =0x021C89F8
	ldr r0, _020B274C ; =0x02101148
	str r1, [sp]
	ldr r0, [r0, #0]
	ldr r3, _020B2758 ; =sub_020B269C
	mov r1, r5
	mov r2, r4
	bl sub_020C4A0C
	ldmia sp!, {r3, r4, r5, pc}
_020B2728:
	ldr r1, _020B2754 ; =0x021C89F8
	ldr r0, _020B274C ; =0x02101148
	str r1, [sp]
	ldr r0, [r0, #0]
	ldr r3, _020B2758 ; =sub_020B269C
	mov r1, r5
	mov r2, r4
	bl sub_020C4808
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B274C: .word 0x02101148
_020B2750: .word 0x021C89F4
_020B2754: .word 0x021C89F8
_020B2758: .word sub_020B269C
	arm_func_end sub_020B26A8

	arm_func_start sub_020B275C
sub_020B275C: ; 0x020B275C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _020B2838 ; =0x021C89F4
	mov r6, r0
	ldr ip, [r3]
	mov r5, r1
	mov r4, r2
	cmp ip, #0
	beq _020B2810
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _020B27E4
	ldr r2, [ip]
	add r0, r2, #1
	add r1, r0, r4
	cmp r1, #0xc0
	bhi _020B27E4
	str r0, [ip]
	ldr r0, [r3, #0]
	cmp r4, #0
	add r0, r0, r2, lsl #2
	str r6, [r0, #4]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, [r3, #0]
	mov r0, r5
	ldr r1, [r2, #0], #4
	add r1, r2, r1, lsl #2
	mov r2, r4, lsl #2
	bl sub_020C4C14
	ldr r0, _020B2838 ; =0x021C89F4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	add r0, r0, r4
	str r0, [r1, #0]
	ldmia sp!, {r4, r5, r6, pc}
_020B27E4:
	ldr r0, [ip]
	cmp r0, #0
	beq _020B27F8
	bl sub_020B2628
	b _020B2820
_020B27F8:
	ldr r0, _020B2838 ; =0x021C89F4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020B2820
	bl sub_020B2684
	b _020B2820
_020B2810:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _020B2820
	bl sub_020B2684
_020B2820:
	ldr r1, _020B283C ; =0x04000400
	mov r0, r5
	mov r2, r4, lsl #2
	str r6, [r1, #0]
	bl sub_020C4B90
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B2838: .word 0x021C89F4
_020B283C: .word 0x04000400
	arm_func_end sub_020B275C

	arm_func_start sub_020B2840
sub_020B2840: ; 0x020B2840
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x40
	mov r6, r0
	mov r5, r1
	bl sub_020B2628
	ldr r0, _020B28C4 ; =0x04000440
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	cmp r6, #0
	beq _020B2890
	add r4, sp, #0
_020B2874:
	mov r0, r4
	bl sub_020BFCCC
	cmp r0, #0
	bne _020B2874
	add r0, sp, #0
	mov r1, r6
	bl sub_020BC4A0
_020B2890:
	cmp r5, #0
	beq _020B28A8
_020B2898:
	mov r0, r5
	bl sub_020BFCFC
	cmp r0, #0
	bne _020B2898
_020B28A8:
	ldr r1, _020B28C8 ; =0x04000448
	mov r0, #1
	str r0, [r1, #0]
	mov r0, #2
	str r0, [r1, #-8]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B28C4: .word 0x04000440
_020B28C8: .word 0x04000448
	arm_func_end sub_020B2840

	arm_func_start sub_020B28CC
sub_020B28CC: ; 0x020B28CC
	stmfd sp!, {r3, lr}
	bl sub_020BF9AC
	bl sub_020AF32C
	ldr r1, _020B28F0 ; =0x04000600
	ldr r0, [r1, #0]
	bic r0, r0, #0xc0000000
	orr r0, r0, #0x80000000
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B28F0: .word 0x04000600
	arm_func_end sub_020B28CC

	arm_func_start sub_020B28F4
sub_020B28F4: ; 0x020B28F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r2, [sl]
	ldr r1, _020B2B10 ; =0x30415642
	cmp r2, r1
	bhi _020B2940
	bhs _020B2B00
	sub r0, r1, #0x900
	cmp r2, r0
	bhi _020B2930
	bhs _020B2B00
	sub r0, r1, #0x1300
	cmp r2, r0
	beq _020B2B00
	b _020B2B08
_020B2930:
	sub r0, r1, #0x200
	cmp r2, r0
	beq _020B2B00
	b _020B2B08
_020B2940:
	ldr r0, _020B2B14 ; =0x30505442
	cmp r2, r0
	bhi _020B2960
	bhs _020B2B00
	ldr r0, _020B2B18 ; =0x30444D42
	cmp r2, r0
	beq _020B296C
	b _020B2B08
_020B2960:
	add r0, r0, #0x80000
	cmp r2, r0
	bne _020B2B08
_020B296C:
	mov r5, #1
	mov r0, sl
	mov r6, r5
	mov r7, r5
	bl sub_020B3C1C
	movs r4, r0
	beq _020B2AD0
	bl sub_020AE8C4
	mov sb, r0
	mov r0, r4
	bl sub_020AE8D8
	mov r8, r0
	mov r0, r4
	bl sub_020AEA04
	str r0, [sp]
	cmp sb, #0
	beq _020B29D4
	ldr r0, _020B2B1C ; =0x02100DEC
	mov r1, #0
	ldr r3, [r0, #0]
	mov r0, sb
	mov r2, r1
	blx r3
	movs fp, r0
	moveq r5, #0
	b _020B29D8
_020B29D4:
	mov fp, #0
_020B29D8:
	cmp r8, #0
	beq _020B2A04
	ldr r1, _020B2B1C ; =0x02100DEC
	mov r0, r8
	ldr r3, [r1, #0]
	mov r1, #1
	mov r2, #0
	blx r3
	movs r8, r0
	moveq r6, #0
	b _020B2A08
_020B2A04:
	mov r8, #0
_020B2A08:
	ldr r0, [sp]
	cmp r0, #0
	beq _020B2A38
	ldr r1, _020B2B20 ; =0x02100DF4
	ldrh r2, [r4, #0x20]
	ldr r3, [r1, #0]
	and r1, r2, #0x8000
	mov r2, #0
	blx r3
	movs sb, r0
	moveq r7, #0
	b _020B2A3C
_020B2A38:
	mov sb, #0
_020B2A3C:
	cmp r5, #0
	cmpne r6, #0
	cmpne r7, #0
	bne _020B2A9C
	cmp r7, #0
	beq _020B2A64
	ldr r1, _020B2B24 ; =0x02100DF8
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
_020B2A64:
	cmp r6, #0
	beq _020B2A7C
	ldr r1, _020B2B28 ; =0x02100DF0
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
_020B2A7C:
	cmp r5, #0
	beq _020B2A94
	ldr r1, _020B2B28 ; =0x02100DF0
	mov r0, fp
	ldr r1, [r1, #0]
	blx r1
_020B2A94:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B2A9C:
	mov r0, r4
	mov r1, fp
	mov r2, r8
	bl sub_020AE8EC
	mov r0, r4
	mov r1, sb
	bl sub_020AEA18
	mov r0, r4
	mov r1, #1
	bl sub_020AE900
	mov r0, r4
	mov r1, #1
	bl sub_020AEA20
_020B2AD0:
	ldr r1, [sl]
	ldr r0, _020B2B18 ; =0x30444D42
	cmp r1, r0
	bne _020B2AF8
	mov r0, sl
	bl sub_020B3C0C
	cmp r4, #0
	beq _020B2AF8
	mov r1, r4
	bl sub_020AF1E8
_020B2AF8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B2B00:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B2B08:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B2B10: .word 0x30415642
_020B2B14: .word 0x30505442
_020B2B18: .word 0x30444D42
_020B2B1C: .word 0x02100DEC
_020B2B20: .word 0x02100DF4
_020B2B24: .word 0x02100DF8
_020B2B28: .word 0x02100DF0
	arm_func_end sub_020B28F4

	arm_func_start sub_020B2B2C
sub_020B2B2C: ; 0x020B2B2C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c
	mov r5, r1
	mov r4, r2
	ldr r6, _020B2CAC ; =0x021C5A94
	ldr r1, _020B2CB0 ; =0x021C5AD8
	add r2, sp, #0x10
	bl sub_020BC2CC
	ldr r1, [sp, #0x14]
	ldr r0, [r6, #0x1c]
	ldr r2, [sp, #0x10]
	smull r8, r7, r1, r0
	ldr r0, [r6, #0xc]
	ldr r3, [sp, #0x18]
	smlal r8, r7, r2, r0
	ldr r1, [r6, #0x2c]
	ldr r0, [r6, #0x3c]
	smlal r8, r7, r3, r1
	mov r1, r8, lsr #0xc
	orr r1, r1, r7, lsl #20
	add r0, r1, r0
	bl sub_020BD080
	ldr r2, [sp, #0x14]
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x14]
	smull sb, r8, r2, r1
	smull lr, ip, r2, r0
	ldr r1, [sp, #0x10]
	ldr r3, [r6, #0]
	ldr r0, [sp, #0x18]
	smlal sb, r8, r1, r3
	ldr r7, [r6, #0x20]
	ldr r2, [r6, #0x30]
	smlal sb, r8, r0, r7
	mov r3, sb, lsr #0xc
	orr r3, r3, r8, lsl #20
	add r7, r3, r2
	ldr r3, [r6, #4]
	ldr r8, [r6, #0x24]
	smlal lr, ip, r1, r3
	smlal lr, ip, r0, r8
	mov r0, lr, lsr #0xc
	ldr r2, [r6, #0x34]
	orr r0, r0, ip, lsl #20
	add r8, r0, r2
	bl sub_020BD024
	umull lr, ip, r0, r7
	mov r2, r7, asr #0x1f
	mla ip, r0, r2, ip
	mla ip, r1, r7, ip
	adds lr, lr, #-0x80000000
	adc r2, ip, #0
	add r2, r2, #0x1000
	add r2, r2, r2, lsr #31
	mov r7, r2, asr #1
	mov r3, r8, asr #0x1f
	umull ip, r2, r0, r8
	mla r2, r0, r3, r2
	mla r2, r1, r8, r2
	adds r0, ip, #-0x80000000
	adc r0, r2, #0
	add r0, r0, #0x1000
	add r0, r0, r0, lsr #31
	mov r8, r0, asr #1
	cmp r7, #0
	mov r6, #0
	cmpge r8, #0
	blt _020B2C48
	cmp r7, #0x1000
	cmple r8, #0x1000
	ble _020B2C4C
_020B2C48:
	mvn r6, #0
_020B2C4C:
	add r0, sp, #0xc
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_020AF6EC
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr ip, [sp]
	sub r0, r0, r2
	mul r0, r7, r0
	add r1, r0, #0x800
	ldr r3, [sp, #8]
	add r1, r2, r1, asr #12
	sub r0, ip, r3
	mul r0, r8, r0
	str r1, [r5, #0]
	ldr r1, [sp, #8]
	add r0, r0, #0x800
	rsb r1, r1, #0xbf
	sub r1, r1, r0, asr #12
	mov r0, r6
	str r1, [r4, #0]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020B2CAC: .word 0x021C5A94
_020B2CB0: .word 0x021C5AD8
	arm_func_end sub_020B2B2C

	arm_func_start sub_020B2CB4
sub_020B2CB4: ; 0x020B2CB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	bl sub_020AE490
	mov r1, r0
	mov r0, r4
	bl sub_020A59EC
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B2CB4

	arm_func_start sub_020B2CD8
sub_020B2CD8: ; 0x020B2CD8
	ldr ip, _020B2CE0 ; =sub_020A5A00
	bx ip
	; .align 2, 0
_020B2CE0: .word sub_020A5A00
	arm_func_end sub_020B2CD8

	arm_func_start sub_020B2CE4
sub_020B2CE4: ; 0x020B2CE4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r0, #0
	ldrne r4, [r0, #8]
	ldrb r3, [r0, #0x18]
	cmpne r4, #0
	addne lr, r0, r4
	moveq lr, #0
	cmp r3, #0
	mov ip, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	mvn r4, r2
	add r0, lr, #4
	mov r7, ip
	mov r6, ip
_020B2D1C:
	cmp lr, #0
	beq _020B2D64
	cmp r0, #0
	beq _020B2D50
	ldrb r5, [lr, #5]
	cmp ip, r5
	bhs _020B2D50
	ldrh r8, [lr, #0xa]
	ldrh r5, [r0, r8]
	add r8, r0, r8
	add r8, r8, #4
	mla r8, r5, ip, r8
	b _020B2D54
_020B2D50:
	mov r8, r7
_020B2D54:
	cmp r8, #0
	ldrne r5, [r8]
	addne r8, lr, r5
	bne _020B2D68
_020B2D64:
	mov r8, r6
_020B2D68:
	ldrh r5, [r8, #0x1e]
	cmp r1, #0
	add ip, ip, #1
	orrne r5, r5, r2
	andeq r5, r5, r4
	strh r5, [r8, #0x1e]
	cmp ip, r3
	blo _020B2D1C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020B2CE4

	arm_func_start sub_020B2D8C
sub_020B2D8C: ; 0x020B2D8C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r0, #0
	ldrne r4, [r0, #8]
	ldrb r3, [r0, #0x18]
	cmpne r4, #0
	addne lr, r0, r4
	moveq lr, #0
	cmp r3, #0
	mov ip, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	mvn r4, r2
	add r0, lr, #4
	mov r7, ip
	mov r6, ip
_020B2DC4:
	cmp lr, #0
	beq _020B2E0C
	cmp r0, #0
	beq _020B2DF8
	ldrb r5, [lr, #5]
	cmp ip, r5
	bhs _020B2DF8
	ldrh r8, [lr, #0xa]
	ldrh r5, [r0, r8]
	add r8, r0, r8
	add r8, r8, #4
	mla r8, r5, ip, r8
	b _020B2DFC
_020B2DF8:
	mov r8, r7
_020B2DFC:
	cmp r8, #0
	ldrne r5, [r8]
	addne r8, lr, r5
	bne _020B2E10
_020B2E0C:
	mov r8, r6
_020B2E10:
	ldr r5, [r8, #0x10]
	cmp r1, #0
	orrne r5, r5, r2
	andeq r5, r5, r4
	add ip, ip, #1
	str r5, [r8, #0x10]
	cmp ip, r3
	blo _020B2DC4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020B2D8C

	arm_func_start sub_020B2E34
sub_020B2E34: ; 0x020B2E34
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B2E94
	adds ip, lr, #4
	beq _020B2E80
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B2E80
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B2E84
_020B2E80:
	mov r1, #0
_020B2E84:
	cmp r1, #0
	ldrne r0, [r1]
	addne r3, lr, r0
	bne _020B2E98
_020B2E94:
	mov r3, #0
_020B2E98:
	mov r0, #0x8000
	ldr r1, [r3, #4]
	rsb r0, r0, #0
	and r0, r1, r0
	orr r0, r0, r2
	str r0, [r3, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B2E34

	arm_func_start sub_020B2EB4
sub_020B2EB4: ; 0x020B2EB4
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B2F14
	adds ip, lr, #4
	beq _020B2F00
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B2F00
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B2F04
_020B2F00:
	mov r1, #0
_020B2F04:
	cmp r1, #0
	ldrne r0, [r1]
	addne r3, lr, r0
	bne _020B2F18
_020B2F14:
	mov r3, #0
_020B2F18:
	ldr r1, [r3, #4]
	ldr r0, _020B2F30 ; =0x8000FFFF
	and r0, r1, r0
	orr r0, r0, r2, lsl #16
	str r0, [r3, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B2F30: .word 0x8000FFFF
	arm_func_end sub_020B2EB4

	arm_func_start sub_020B2F34
sub_020B2F34: ; 0x020B2F34
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B2F94
	adds ip, lr, #4
	beq _020B2F80
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B2F80
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B2F84
_020B2F80:
	mov r1, #0
_020B2F84:
	cmp r1, #0
	ldrne r0, [r1]
	addne r3, lr, r0
	bne _020B2F98
_020B2F94:
	mov r3, #0
_020B2F98:
	mov r0, #0x8000
	ldr r1, [r3, #8]
	rsb r0, r0, #0
	and r0, r1, r0
	orr r0, r0, r2
	str r0, [r3, #8]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B2F34

	arm_func_start sub_020B2FB4
sub_020B2FB4: ; 0x020B2FB4
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3014
	adds ip, lr, #4
	beq _020B3000
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3000
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3004
_020B3000:
	mov r1, #0
_020B3004:
	cmp r1, #0
	ldrne r0, [r1]
	addne r3, lr, r0
	bne _020B3018
_020B3014:
	mov r3, #0
_020B3018:
	ldr r1, [r3, #8]
	ldr r0, _020B3030 ; =0x8000FFFF
	and r0, r1, r0
	orr r0, r0, r2, lsl #16
	str r0, [r3, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B3030: .word 0x8000FFFF
	arm_func_end sub_020B2FB4

	arm_func_start sub_020B3034
sub_020B3034: ; 0x020B3034
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3094
	adds ip, lr, #4
	beq _020B3080
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3080
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3084
_020B3080:
	mov r1, #0
_020B3084:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3098
_020B3094:
	mov r1, #0
_020B3098:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0xf
	orr r0, r0, r2
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B3034

	arm_func_start sub_020B30AC
sub_020B30AC: ; 0x020B30AC
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B310C
	adds ip, lr, #4
	beq _020B30F8
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B30F8
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B30FC
_020B30F8:
	mov r1, #0
_020B30FC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3110
_020B310C:
	mov r1, #0
_020B3110:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x30
	orr r0, r0, r2, lsl #4
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B30AC

	arm_func_start sub_020B3124
sub_020B3124: ; 0x020B3124
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3184
	adds ip, lr, #4
	beq _020B3170
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3170
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3174
_020B3170:
	mov r1, #0
_020B3174:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3188
_020B3184:
	mov r1, #0
_020B3188:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0xc0
	orr r0, r0, r2, lsl #6
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B3124

	arm_func_start sub_020B319C
sub_020B319C: ; 0x020B319C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B31FC
	adds ip, lr, #4
	beq _020B31E8
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B31E8
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B31EC
_020B31E8:
	mov r1, #0
_020B31EC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3200
_020B31FC:
	mov r1, #0
_020B3200:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x3f000000
	orr r0, r0, r2, lsl #24
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B319C

	arm_func_start sub_020B3214
sub_020B3214: ; 0x020B3214
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3274
	adds ip, lr, #4
	beq _020B3260
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3260
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3264
_020B3260:
	mov r1, #0
_020B3264:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3278
_020B3274:
	mov r1, #0
_020B3278:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x1f0000
	orr r0, r0, r2, lsl #16
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B3214

	arm_func_start sub_020B328C
sub_020B328C: ; 0x020B328C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B32EC
	adds ip, lr, #4
	beq _020B32D8
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B32D8
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B32DC
_020B32D8:
	mov r1, #0
_020B32DC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B32F0
_020B32EC:
	mov r1, #0
_020B32F0:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x8000
	biceq r0, r0, #0x8000
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B328C

	arm_func_start sub_020B3308
sub_020B3308: ; 0x020B3308
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3368
	adds ip, lr, #4
	beq _020B3354
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3354
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3358
_020B3354:
	mov r1, #0
_020B3358:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B336C
_020B3368:
	mov r1, #0
_020B336C:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x4000
	biceq r0, r0, #0x4000
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B3308

	arm_func_start sub_020B3384
sub_020B3384: ; 0x020B3384
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B33E4
	adds ip, lr, #4
	beq _020B33D0
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B33D0
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B33D4
_020B33D0:
	mov r1, #0
_020B33D4:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B33E8
_020B33E4:
	mov r1, #0
_020B33E8:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x2000
	biceq r0, r0, #0x2000
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B3384

	arm_func_start sub_020B3400
sub_020B3400: ; 0x020B3400
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3460
	adds ip, lr, #4
	beq _020B344C
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B344C
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3450
_020B344C:
	mov r1, #0
_020B3450:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3464
_020B3460:
	mov r1, #0
_020B3464:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x1000
	biceq r0, r0, #0x1000
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B3400

	arm_func_start sub_020B347C
sub_020B347C: ; 0x020B347C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B34DC
	adds ip, lr, #4
	beq _020B34C8
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B34C8
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B34CC
_020B34C8:
	mov r1, #0
_020B34CC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B34E0
_020B34DC:
	mov r1, #0
_020B34E0:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x800
	biceq r0, r0, #0x800
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B347C

	arm_func_start sub_020B34F8
sub_020B34F8: ; 0x020B34F8
	cmp r0, #0
	ldrne r2, [r0, #8]
	cmpne r2, #0
	addne ip, r0, r2
	moveq ip, #0
	cmp ip, #0
	beq _020B3554
	adds r3, ip, #4
	beq _020B3540
	ldrb r0, [ip, #5]
	cmp r1, r0
	bhs _020B3540
	ldrh r2, [ip, #0xa]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r1, r0, r1, r2
	b _020B3544
_020B3540:
	mov r1, #0
_020B3544:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, ip, r0
	bne _020B3558
_020B3554:
	mov r0, #0
_020B3558:
	ldr r0, [r0, #0xc]
	and r0, r0, #0xf
	bx lr
	arm_func_end sub_020B34F8

	arm_func_start sub_020B3564
sub_020B3564: ; 0x020B3564
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3580:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B2E34
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3580
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B3564

	arm_func_start sub_020B35A4
sub_020B35A4: ; 0x020B35A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B35C0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B2EB4
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B35C0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B35A4

	arm_func_start sub_020B35E4
sub_020B35E4: ; 0x020B35E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3600:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B2F34
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3600
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B35E4

	arm_func_start sub_020B3624
sub_020B3624: ; 0x020B3624
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3640:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B2FB4
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3640
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B3624

	arm_func_start sub_020B3664
sub_020B3664: ; 0x020B3664
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3680:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B3034
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3680
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B3664

	arm_func_start sub_020B36A4
sub_020B36A4: ; 0x020B36A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B36C0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B30AC
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B36C0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B36A4

	arm_func_start sub_020B36E4
sub_020B36E4: ; 0x020B36E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3700:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B3124
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3700
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B36E4

	arm_func_start sub_020B3724
sub_020B3724: ; 0x020B3724
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3740:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B319C
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3740
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B3724

	arm_func_start sub_020B3764
sub_020B3764: ; 0x020B3764
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3780:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B3214
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3780
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B3764

	arm_func_start sub_020B37A4
sub_020B37A4: ; 0x020B37A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B37C0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B328C
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B37C0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B37A4

	arm_func_start sub_020B37E4
sub_020B37E4: ; 0x020B37E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3800:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B3308
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3800
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B37E4

	arm_func_start sub_020B3824
sub_020B3824: ; 0x020B3824
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3840:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B3384
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3840
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B3824

	arm_func_start sub_020B3864
sub_020B3864: ; 0x020B3864
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3880:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B3400
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3880
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B3864

	arm_func_start sub_020B38A4
sub_020B38A4: ; 0x020B38A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B38C0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl sub_020B347C
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B38C0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B38A4

	arm_func_start sub_020B38E4
sub_020B38E4: ; 0x020B38E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r5, [r0, #1]
	cmp r5, #0x10
	bhs _020B39B4
	ldmia r1, {r2, r3, ip, lr}
	cmp r5, #0
	mov r1, #0
	bls _020B3A9C
	mov r4, r1
	mov r7, r1
_020B3918:
	cmp r0, #0
	beq _020B3944
	ldrb r6, [r0, #1]
	cmp r1, r6
	bhs _020B3944
	ldrh r6, [r0, #6]
	add r8, r0, r6
	ldrh r6, [r8, #2]
	add r6, r8, r6
	add r8, r6, r4
	b _020B3948
_020B3944:
	mov r8, r7
_020B3948:
	ldr r6, [r8]
	cmp r6, r2
	ldreq r6, [r8, #4]
	cmpeq r6, r3
	ldreq r6, [r8, #8]
	cmpeq r6, ip
	ldreq r6, [r8, #0xc]
	cmpeq r6, lr
	bne _020B399C
	cmp r0, #0
	beq _020B3994
	cmp r1, r5
	bhs _020B3994
	ldrh r3, [r0, #6]
	ldrh r2, [r0, r3]
	add r0, r0, r3
	add r0, r0, #4
	mla r0, r2, r1, r0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B3994:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B399C:
	ldrb r6, [r0, #1]
	add r1, r1, #1
	add r4, r4, #0x10
	cmp r1, r6
	blo _020B3918
	b _020B3A9C
_020B39B4:
	add r4, r0, #8
	ldrb r3, [r4, #1]
	cmp r3, #0
	beq _020B3A9C
	ldrb r7, [r4, r3, lsl #2]
	ldrb r2, [r4]
	add r6, r4, r3, lsl #2
	cmp r2, r7
	bls _020B3A08
_020B39D8:
	mov r2, r7, asr #5
	ldr r3, [r1, r2, lsl #2]
	and r2, r7, #0x1f
	mov r2, r3, lsr r2
	and r2, r2, #1
	add r2, r6, r2
	ldrb r3, [r2, #1]
	ldrb r2, [r6]
	ldrb r7, [r4, r3, lsl #2]
	add r6, r4, r3, lsl #2
	cmp r2, r7
	bhi _020B39D8
_020B3A08:
	cmp r0, #0
	ldrb r2, [r6, #3]
	beq _020B3A34
	cmp r2, r5
	bhs _020B3A34
	ldrh r3, [r0, #6]
	add r4, r0, r3
	ldrh r3, [r4, #2]
	add r3, r4, r3
	add r6, r3, r2, lsl #4
	b _020B3A38
_020B3A34:
	mov r6, #0
_020B3A38:
	ldr r4, [r6, #0]
	ldr r3, [r1, #0]
	cmp r4, r3
	ldreq r4, [r6, #4]
	ldreq r3, [r1, #4]
	cmpeq r4, r3
	ldreq r4, [r6, #8]
	ldreq r3, [r1, #8]
	cmpeq r4, r3
	ldreq r3, [r6, #0xc]
	ldreq r1, [r1, #0xc]
	cmpeq r3, r1
	bne _020B3A9C
	cmp r0, #0
	beq _020B3A94
	cmp r2, r5
	bhs _020B3A94
	ldrh r3, [r0, #6]
	ldrh r1, [r0, r3]
	add r0, r0, r3
	add r0, r0, #4
	mla r0, r1, r2, r0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B3A94:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B3A9C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020B38E4

	arm_func_start sub_020B3AA4
sub_020B3AA4: ; 0x020B3AA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r1, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r0, #1]
	cmp r2, #0x10
	bhs _020B3B48
	cmp r2, #0
	ldmia r1, {r2, r3, ip, lr}
	mov r1, #0
	bls _020B3C04
	mov r4, r1
	mov r6, r1
_020B3AD8:
	cmp r0, #0
	beq _020B3B04
	ldrb r5, [r0, #1]
	cmp r1, r5
	bhs _020B3B04
	ldrh r5, [r0, #6]
	add r7, r0, r5
	ldrh r5, [r7, #2]
	add r5, r7, r5
	add r7, r5, r4
	b _020B3B08
_020B3B04:
	mov r7, r6
_020B3B08:
	ldr r5, [r7, #0]
	cmp r5, r2
	ldreq r5, [r7, #4]
	cmpeq r5, r3
	ldreq r5, [r7, #8]
	cmpeq r5, ip
	ldreq r5, [r7, #0xc]
	cmpeq r5, lr
	moveq r0, r1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r5, [r0, #1]
	add r1, r1, #1
	add r4, r4, #0x10
	cmp r1, r5
	blo _020B3AD8
	b _020B3C04
_020B3B48:
	add r5, r0, #8
	ldrb r4, [r5, #1]
	cmp r4, #0
	beq _020B3C04
	ldrb r7, [r5, r4, lsl #2]
	ldrb r3, [r5]
	add r6, r5, r4, lsl #2
	cmp r3, r7
	bls _020B3B9C
_020B3B6C:
	mov r3, r7, asr #5
	ldr r4, [r1, r3, lsl #2]
	and r3, r7, #0x1f
	mov r3, r4, lsr r3
	and r3, r3, #1
	add r3, r6, r3
	ldrb r4, [r3, #1]
	ldrb r3, [r6]
	ldrb r7, [r5, r4, lsl #2]
	add r6, r5, r4, lsl #2
	cmp r3, r7
	bhi _020B3B6C
_020B3B9C:
	cmp r0, #0
	ldrb r3, [r6, #3]
	beq _020B3BC8
	cmp r3, r2
	bhs _020B3BC8
	ldrh r2, [r0, #6]
	add r2, r0, r2
	ldrh r0, [r2, #2]
	add r0, r2, r0
	add r4, r0, r3, lsl #4
	b _020B3BCC
_020B3BC8:
	mov r4, #0
_020B3BCC:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	cmp r2, r0
	ldreq r2, [r4, #4]
	ldreq r0, [r1, #4]
	cmpeq r2, r0
	ldreq r2, [r4, #8]
	ldreq r0, [r1, #8]
	cmpeq r2, r0
	ldreq r2, [r4, #0xc]
	ldreq r0, [r1, #0xc]
	cmpeq r2, r0
	moveq r0, r3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020B3C04:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020B3AA4

	arm_func_start sub_020B3C0C
sub_020B3C0C: ; 0x020B3C0C
	ldrh r1, [r0, #0xc]
	ldr r1, [r0, r1]
	add r0, r0, r1
	bx lr
	arm_func_end sub_020B3C0C

	arm_func_start sub_020B3C1C
sub_020B3C1C: ; 0x020B3C1C
	ldrh r2, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	add r3, r0, r2
	cmp r1, #1
	bne _020B3C4C
	ldr r2, [r0, #0]
	ldr r1, _020B3C58 ; =0x30585442
	cmp r2, r1
	ldreq r1, [r3]
	addeq r0, r0, r1
	movne r0, #0
	bx lr
_020B3C4C:
	ldr r1, [r3, #4]
	add r0, r0, r1
	bx lr
	; .align 2, 0
_020B3C58: .word 0x30585442
	arm_func_end sub_020B3C1C

	arm_func_start sub_020B3C5C
sub_020B3C5C: ; 0x020B3C5C
	cmp r0, #0
	beq _020B3CB0
	ldrh r2, [r0, #0xc]
	ldr r2, [r0, r2]
	add ip, r0, r2
	adds r3, ip, #8
	beq _020B3C9C
	ldrb r0, [ip, #9]
	cmp r1, r0
	bhs _020B3C9C
	ldrh r2, [ip, #0xe]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r1, r0, r1, r2
	b _020B3CA0
_020B3C9C:
	mov r1, #0
_020B3CA0:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, ip, r0
	bxne lr
_020B3CB0:
	mov r0, #0
	bx lr
	arm_func_end sub_020B3C5C

	arm_func_start sub_020B3CB8
sub_020B3CB8: ; 0x020B3CB8
	cmp r0, #0
	beq _020B3CDC
	ldrb r2, [r0, #6]
	cmp r1, r2
	bhs _020B3CDC
	ldrh r2, [r0, #8]
	add r0, r0, r2
	add r0, r0, r1, lsl #4
	bx lr
_020B3CDC:
	mov r0, #0
	bx lr
	arm_func_end sub_020B3CB8

	arm_func_start sub_020B3CE4
sub_020B3CE4: ; 0x020B3CE4
	cmp r0, #0
	beq _020B3D08
	ldrb r2, [r0, #7]
	cmp r1, r2
	bhs _020B3D08
	ldrh r2, [r0, #0xa]
	add r0, r0, r2
	add r0, r0, r1, lsl #4
	bx lr
_020B3D08:
	mov r0, #0
	bx lr
	arm_func_end sub_020B3CE4

	arm_func_start sub_020B3D10
sub_020B3D10: ; 0x020B3D10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl sub_020B3D84
	ldrsh r1, [r0, #4]
	ldrh r3, [r0, #6]
	mul r2, r1, r4
	add r3, r5, r3
	mov r2, r2, lsr #0xc
	b _020B3D3C
_020B3D38:
	sub r2, r2, #1
_020B3D3C:
	cmp r2, #0
	beq _020B3D54
	mov r1, r2, lsl #2
	ldrh r1, [r3, r1]
	cmp r1, r4
	bhs _020B3D38
_020B3D54:
	ldrh r1, [r0]
	b _020B3D60
_020B3D5C:
	add r2, r2, #1
_020B3D60:
	add r0, r2, #1
	cmp r0, r1
	bhs _020B3D7C
	add r0, r3, r2, lsl #2
	ldrh r0, [r0, #4]
	cmp r0, r4
	bls _020B3D5C
_020B3D7C:
	add r0, r3, r2, lsl #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B3D10

	arm_func_start sub_020B3D84
sub_020B3D84: ; 0x020B3D84
	adds r3, r0, #0xc
	beq _020B3DB0
	ldrb r2, [r0, #0xd]
	cmp r1, r2
	bhs _020B3DB0
	ldrh r0, [r0, #0x12]
	ldrh r2, [r3, r0]
	add r0, r3, r0
	add r0, r0, #4
	mla r0, r2, r1, r0
	bx lr
_020B3DB0:
	mov r0, #0
	bx lr
	arm_func_end sub_020B3D84

	arm_func_start sub_020B3DB8
sub_020B3DB8: ; 0x020B3DB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, _020B3E30 ; =0x02100ED0
	str r4, [r5, #8]
	ldr r0, [r0, #0]
	add r1, r5, #0x1a
	str r0, [r5, #0xc]
	ldrb r2, [r2, #0x17]
	mov r0, #0
	strb r2, [r5, #0x19]
	mov r2, r2, lsl #1
	bl sub_020C4AF0
	ldrh r0, [r4, #6]
	add r3, r4, #0x14
	mov r2, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
_020B3E00:
	mov r0, r2, lsl #1
	ldrh r1, [r3, r0]
	add r0, r5, r2, lsl #1
	add r2, r2, #1
	ldr r1, [r4, r1]
	mov r1, r1, lsr #0x18
	orr r1, r1, #0x100
	strh r1, [r0, #0x1a]
	ldrh r0, [r4, #6]
	cmp r2, r0
	blo _020B3E00
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B3E30: .word 0x02100ED0
	arm_func_end sub_020B3DB8

	arm_func_start sub_020B3E34
sub_020B3E34: ; 0x020B3E34
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r1, #8]
	ldr ip, [r1]
	ldrh r1, [r0, #4]
	cmp ip, r1, lsl #12
	mov r1, r1, lsl #0xc
	subge ip, r1, #1
	bge _020B3E60
	cmp ip, #0
	movlt ip, #0
_020B3E60:
	mov r1, r2
	mov r2, ip
	bl sub_020B4118
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B3E34

	arm_func_start sub_020B3E70
sub_020B3E70: ; 0x020B3E70
	ldr r1, _020B3F04 ; =0x021C5CF0
	ldr r2, [r1, #0]
	ldr r1, [r2, #0]
	ldr ip, [r2, #0xd4]
	ldrb r3, [r1, #1]
	cmp ip, #0
	beq _020B3EC8
	beq _020B3EB4
	ldrb r1, [ip, #1]
	cmp r3, r1
	bhs _020B3EB4
	ldrh r2, [ip, #6]
	ldrh r1, [ip, r2]
	add r2, ip, r2
	add r2, r2, #4
	mla r2, r1, r3, r2
	b _020B3EB8
_020B3EB4:
	mov r2, #0
_020B3EB8:
	cmp r2, #0
	ldrne r1, [r2]
	addne r2, ip, r1
	bne _020B3ECC
_020B3EC8:
	mov r2, #0
_020B3ECC:
	ldrh r1, [r2]
	tst r1, #1
	beq _020B3EE8
	ldr r1, [r0, #0]
	orr r1, r1, #4
	str r1, [r0, #0]
	bx lr
_020B3EE8:
	ldr r1, [r2, #4]
	str r1, [r0, #0x4c]
	ldr r1, [r2, #8]
	str r1, [r0, #0x50]
	ldr r1, [r2, #0xc]
	str r1, [r0, #0x54]
	bx lr
	; .align 2, 0
_020B3F04: .word 0x021C5CF0
	arm_func_end sub_020B3E70

	arm_func_start sub_020B3F08
sub_020B3F08: ; 0x020B3F08
	stmfd sp!, {r4, lr}
	ldr r1, _020B3F94 ; =0x021C5CF0
	ldr ip, [r1]
	ldr r2, [ip]
	ldr r4, [ip, #0xd4]
	ldrb lr, [r2, #1]
	cmp r4, #0
	beq _020B3F64
	beq _020B3F50
	ldrb r1, [r4, #1]
	cmp lr, r1
	bhs _020B3F50
	ldrh r3, [r4, #6]
	ldrh r1, [r4, r3]
	add r3, r4, r3
	add r3, r3, #4
	mla r3, r1, lr, r3
	b _020B3F54
_020B3F50:
	mov r3, #0
_020B3F54:
	cmp r3, #0
	ldrne r1, [r3]
	addne r1, r4, r1
	bne _020B3F68
_020B3F64:
	mov r1, #0
_020B3F68:
	ldrh r3, [r1], #4
	tst r3, #1
	addeq r1, r1, #0xc
	tst r3, #2
	bne _020B3F88
	tst r3, #8
	addne r1, r1, #4
	addeq r1, r1, #0x10
_020B3F88:
	ldr ip, [ip, #0xe8]
	blx ip
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B3F94: .word 0x021C5CF0
	arm_func_end sub_020B3F08

	arm_func_start sub_020B3F98
sub_020B3F98: ; 0x020B3F98
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _020B4104 ; =0x021C5CF0
	mov r8, r0
	ldr r1, [r1, #0]
	ldr r0, [r1, #0]
	ldr r3, [r1, #0xd4]
	ldrb r2, [r0, #1]
	cmp r3, #0
	beq _020B3FF8
	beq _020B3FE4
	ldrb r0, [r3, #1]
	cmp r2, r0
	bhs _020B3FE4
	ldrh r1, [r3, #6]
	ldrh r0, [r3, r1]
	add r1, r3, r1
	add r1, r1, #4
	mla r1, r0, r2, r1
	b _020B3FE8
_020B3FE4:
	mov r1, #0
_020B3FE8:
	cmp r1, #0
	ldrne r0, [r1]
	addne r5, r3, r0
	bne _020B3FFC
_020B3FF8:
	mov r5, #0
_020B3FFC:
	ldrh r0, [r5]
	add r1, r5, #4
	tst r0, #1
	addeq r1, r1, #0xc
	tst r0, #2
	bne _020B40F4
	tst r0, #8
	beq _020B40A8
	and r2, r0, #0xf0
	add r0, r8, #0x28
	mov r4, r2, asr #4
	ldrsh r7, [r1]
	ldrsh r6, [r1, #2]
	bl sub_020C4F30
	ldrh r0, [r5]
	ldr r1, _020B4108 ; =0x020F9818
	mov r3, #0x1000
	tst r0, #0x100
	ldr r0, _020B410C ; =0x020F9819
	ldrb r1, [r1, r4, lsl #2]
	ldrb r0, [r0, r4, lsl #2]
	rsbne r3, r3, #0
	add r2, r8, r4, lsl #2
	str r3, [r2, #0x28]
	add r1, r8, r1, lsl #2
	str r7, [r1, #0x28]
	add r0, r8, r0, lsl #2
	str r6, [r0, #0x28]
	ldrh r0, [r5]
	tst r0, #0x200
	ldr r0, _020B4110 ; =0x020F981A
	rsbne r6, r6, #0
	ldrb r0, [r0, r4, lsl #2]
	add r0, r8, r0, lsl #2
	str r6, [r0, #0x28]
	ldrh r0, [r5]
	tst r0, #0x400
	ldr r0, _020B4114 ; =0x020F981B
	rsbne r7, r7, #0
	ldrb r0, [r0, r4, lsl #2]
	add r0, r8, r0, lsl #2
	str r7, [r0, #0x28]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B40A8:
	ldrsh r0, [r5, #2]
	str r0, [r8, #0x28]
	ldrsh r0, [r1]
	str r0, [r8, #0x2c]
	ldrsh r0, [r1, #2]
	str r0, [r8, #0x30]
	ldrsh r0, [r1, #4]
	str r0, [r8, #0x34]
	ldrsh r0, [r1, #6]
	str r0, [r8, #0x38]
	ldrsh r0, [r1, #8]
	str r0, [r8, #0x3c]
	ldrsh r0, [r1, #0xa]
	str r0, [r8, #0x40]
	ldrsh r0, [r1, #0xc]
	str r0, [r8, #0x44]
	ldrsh r0, [r1, #0xe]
	str r0, [r8, #0x48]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B40F4:
	ldr r0, [r8]
	orr r0, r0, #2
	str r0, [r8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B4104: .word 0x021C5CF0
_020B4108: .word 0x020F9818
_020B410C: .word 0x020F9819
_020B4110: .word 0x020F981A
_020B4114: .word 0x020F981B
	arm_func_end sub_020B3F98

	arm_func_start sub_020B4118
sub_020B4118: ; 0x020B4118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	mov sb, r0
	add r0, sb, r1, lsl #1
	ldrh r0, [r0, #0x14]
	mov r7, r3
	mov r8, r2
	ldr r4, [sb, r0]
	add r1, sb, r0
	tst r4, #1
	movne r0, #7
	strne r0, [r7]
	bne _020B4490
	ldr r0, _020B44C4 ; =0x00000FFF
	add r5, r1, #4
	tst r8, r0
	beq _020B416C
	ldr r0, [sb, #8]
	tst r0, #1
	movne r6, #1
	bne _020B4170
_020B416C:
	mov r6, #0
_020B4170:
	mov r0, #0
	str r0, [r7, #0]
	tst r4, #6
	bne _020B4250
	tst r4, #8
	bne _020B41BC
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	beq _020B41A8
	mov r3, sb
	add r0, r7, #0x4c
	bl sub_020B462C
	b _020B41B4
_020B41A8:
	mov r3, sb
	add r0, r7, #0x4c
	bl sub_020B44CC
_020B41B4:
	add r5, r5, #8
	b _020B41C4
_020B41BC:
	ldr r0, [r5, #0], #4
	str r0, [r7, #0x4c]
_020B41C4:
	tst r4, #0x10
	bne _020B4200
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	beq _020B41EC
	mov r3, sb
	add r0, r7, #0x50
	bl sub_020B462C
	b _020B41F8
_020B41EC:
	mov r3, sb
	add r0, r7, #0x50
	bl sub_020B44CC
_020B41F8:
	add r5, r5, #8
	b _020B4208
_020B4200:
	ldr r0, [r5, #0], #4
	str r0, [r7, #0x50]
_020B4208:
	tst r4, #0x20
	bne _020B4244
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	beq _020B4230
	mov r3, sb
	add r0, r7, #0x54
	bl sub_020B462C
	b _020B423C
_020B4230:
	mov r3, sb
	add r0, r7, #0x54
	bl sub_020B44CC
_020B423C:
	add r5, r5, #8
	b _020B4270
_020B4244:
	ldr r0, [r5, #0], #4
	str r0, [r7, #0x54]
	b _020B4270
_020B4250:
	tst r4, #2
	beq _020B4268
	ldr r0, [r7, #0]
	orr r0, r0, #4
	str r0, [r7, #0]
	b _020B4270
_020B4268:
	mov r0, r7
	bl sub_020B3E70
_020B4270:
	tst r4, #0xc0
	bne _020B4334
	tst r4, #0x100
	bne _020B42B4
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	beq _020B42A0
	mov r3, sb
	add r0, r7, #0x28
	bl sub_020B4F28
	b _020B42AC
_020B42A0:
	mov r3, sb
	add r0, r7, #0x28
	bl sub_020B4B10
_020B42AC:
	add r5, r5, #8
	b _020B4354
_020B42B4:
	ldr r1, [sb, #0xc]
	ldr r2, [sb, #0x10]
	ldr r3, [r5, #0]
	add r0, r7, #0x28
	add r1, sb, r1
	add r2, sb, r2
	bl sub_020B526C
	cmp r0, #0
	beq _020B432C
	ldr ip, [r7, #0x3c]
	ldr r0, [r7, #0x2c]
	ldr r3, [r7, #0x28]
	ldr fp, [r7, #0x38]
	ldr r1, [r7, #0x30]
	ldr r2, [r7, #0x34]
	mul sl, r0, ip
	mul lr, r1, fp
	sub sl, sl, lr
	mov sl, sl, asr #0xc
	mul lr, r1, r2
	mul r1, r3, ip
	sub r1, lr, r1
	mul fp, r3, fp
	mul r2, r0, r2
	sub r0, fp, r2
	str sl, [r7, #0x40]
	mov r1, r1, asr #0xc
	str r1, [r7, #0x44]
	mov r0, r0, asr #0xc
	str r0, [r7, #0x48]
_020B432C:
	add r5, r5, #4
	b _020B4354
_020B4334:
	tst r4, #0x40
	beq _020B434C
	ldr r0, [r7, #0]
	orr r0, r0, #2
	str r0, [r7, #0]
	b _020B4354
_020B434C:
	mov r0, r7
	bl sub_020B3F98
_020B4354:
	tst r4, #0x600
	bne _020B4468
	tst r4, #0x800
	bne _020B43A4
	cmp r6, #0
	add r0, sp, #0x10
	mov r1, r8
	beq _020B4384
	mov r2, r5
	mov r3, sb
	bl sub_020B497C
	b _020B4390
_020B4384:
	mov r2, r5
	mov r3, sb
	bl sub_020B4788
_020B4390:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x24]
	b _020B43B4
_020B43A4:
	ldr r0, [r5, #0]
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	str r0, [sp, #0x24]
_020B43B4:
	tst r4, #0x1000
	bne _020B43FC
	cmp r6, #0
	add r0, sp, #8
	mov r1, r8
	beq _020B43DC
	mov r3, sb
	add r2, r5, #8
	bl sub_020B497C
	b _020B43E8
_020B43DC:
	mov r3, sb
	add r2, r5, #8
	bl sub_020B4788
_020B43E8:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x28]
	b _020B440C
_020B43FC:
	ldr r0, [r5, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x28]
_020B440C:
	tst r4, #0x2000
	bne _020B4454
	cmp r6, #0
	add r0, sp, #0
	mov r1, r8
	beq _020B4434
	mov r3, sb
	add r2, r5, #0x10
	bl sub_020B497C
	b _020B4440
_020B4434:
	mov r3, sb
	add r2, r5, #0x10
	bl sub_020B4788
_020B4440:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [sp, #0x20]
	str r0, [sp, #0x2c]
	b _020B4490
_020B4454:
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x2c]
	b _020B4490
_020B4468:
	tst r4, #0x200
	beq _020B4480
	ldr r0, [r7, #0]
	orr r0, r0, #1
	str r0, [r7, #0]
	b _020B4490
_020B4480:
	mov r0, r7
	bl sub_020B3F08
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B4490:
	ldr r0, [r7, #0]
	add r1, sp, #0x18
	tst r0, #1
	ldr r0, _020B44C8 ; =0x021C5CF0
	movne r3, #4
	ldr r4, [r0, #0]
	moveq r3, #0
	ldr r2, [r4, #0]
	ldr r4, [r4, #0xe8]
	mov r0, r7
	blx r4
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B44C4: .word 0x00000FFF
_020B44C8: .word 0x021C5CF0
	arm_func_end sub_020B4118

	arm_func_start sub_020B44CC
sub_020B44CC: ; 0x020B44CC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r2, #4]
	ldr ip, [r2]
	mov r5, r1, asr #0xc
	tst ip, #-0x40000000
	add r1, r3, r4
	beq _020B4608
	ldr r2, _020B4628 ; =0x1FFF0000
	tst ip, #0x40000000
	and r2, ip, r2
	mov r3, r2, lsr #0x10
	beq _020B4524
	tst r5, #1
	beq _020B451C
	cmp r5, r3
	movhi r2, r3, lsr #1
	addhi r5, r2, #1
	bhi _020B4608
	mov r4, r5, lsr #1
	b _020B45C8
_020B451C:
	mov r5, r5, lsr #1
	b _020B4608
_020B4524:
	ands r2, r5, #3
	beq _020B45C0
	cmp r5, r3
	addhi r5, r2, r3, lsr #2
	bhi _020B4608
	tst r5, #1
	beq _020B45B8
	tst r5, #2
	movne r5, r5, lsr #2
	addne r2, r5, #1
	moveq r2, r5, lsr #2
	addeq r5, r2, #1
	tst ip, #0x20000000
	beq _020B4580
	mov r3, r2, lsl #1
	mov r2, r5, lsl #1
	ldrsh r3, [r1, r3]
	ldrsh r1, [r1, r2]
	add r2, r3, r3, lsl #1
	add r1, r2, r1
	mov r1, r1, asr #2
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B4580:
	ldr ip, [r1, r2, lsl #2]
	mov r2, #3
	mov r3, #0
	umull r4, lr, ip, r2
	mla lr, ip, r3, lr
	mov r3, ip, asr #0x1f
	mla lr, r3, r2, lr
	ldr r1, [r1, r5, lsl #2]
	adds r2, r4, r1
	adc r1, lr, r1, asr #31
	mov r2, r2, lsr #2
	orr r2, r2, r1, lsl #30
	str r2, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B45B8:
	mov r4, r5, lsr #2
	b _020B45C8
_020B45C0:
	mov r5, r5, lsr #2
	b _020B4608
_020B45C8:
	tst ip, #0x20000000
	beq _020B45EC
	mov r3, r4, lsl #1
	add r2, r1, r4, lsl #1
	ldrsh r3, [r1, r3]
	ldrsh r1, [r2, #2]
	add r1, r3, r1
	mov r1, r1, asr #1
	b _020B4600
_020B45EC:
	add r2, r1, r4, lsl #2
	ldr r2, [r2, #4]
	ldr r3, [r1, r4, lsl #2]
	mov r1, r2, asr #1
	add r1, r1, r3, asr #1
_020B4600:
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B4608:
	tst ip, #0x20000000
	ldreq r1, [r1, r5, lsl #2]
	streq r1, [r0]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, r5, lsl #1
	ldrsh r1, [r1, r2]
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B4628: .word 0x1FFF0000
	arm_func_end sub_020B44CC

	arm_func_start sub_020B462C
sub_020B462C: ; 0x020B462C
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r4, [r3, #4]
	ldr ip, [r2, #4]
	mov lr, r1, asr #0xc
	sub r4, r4, #1
	cmp r4, r1, asr #12
	add ip, r3, ip
	ldr r2, [r2, #0]
	bne _020B46C8
	tst r2, #-0x40000000
	beq _020B466C
	tst r2, #0x40000000
	andne r4, lr, #1
	addne lr, r4, lr, lsr #1
	andeq r4, lr, #3
	addeq lr, r4, lr, lsr #2
_020B466C:
	ldr r3, [r3, #8]
	tst r3, #2
	beq _020B46B0
	ldr r3, _020B477C ; =0x00000FFF
	tst r2, #0x20000000
	and r2, r1, r3
	ldreq r3, [ip, lr, lsl #2]
	ldreq r1, [ip]
	beq _020B469C
	mov r1, lr, lsl #1
	ldrsh r3, [ip, r1]
	ldrsh r1, [ip]
_020B469C:
	sub r1, r1, r3
	mul r1, r2, r1
	add r1, r3, r1, asr #12
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B46B0:
	tst r2, #0x20000000
	movne r1, lr, lsl #1
	ldrnesh r1, [ip, r1]
	ldreq r1, [ip, lr, lsl #2]
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B46C8:
	tst r2, #-0x40000000
	beq _020B472C
	ldr r3, _020B4780 ; =0x1FFF0000
	tst r2, #0x40000000
	and r4, r2, r3
	mov r4, r4, lsr #0x10
	beq _020B4704
	cmp lr, r4
	movhs lr, r4, lsr #1
	bhs _020B472C
	mov lr, lr, lsr #1
	and r1, r1, r3, lsr #16
	mov r4, #2
	mov r5, #1
	b _020B473C
_020B4704:
	cmp lr, r4
	andhs r3, lr, #3
	addhs lr, r3, lr, lsr #2
	bhs _020B472C
	ldr r3, _020B4784 ; =0x00003FFF
	mov lr, lr, lsr #2
	and r1, r1, r3
	mov r4, #4
	mov r5, #2
	b _020B473C
_020B472C:
	ldr r3, _020B477C ; =0x00000FFF
	mov r4, #1
	and r1, r1, r3
	mov r5, #0
_020B473C:
	tst r2, #0x20000000
	addeq r2, ip, lr, lsl #2
	ldreq ip, [ip, lr, lsl #2]
	ldreq r2, [r2, #4]
	beq _020B4760
	add r2, ip, lr, lsl #1
	mov r3, lr, lsl #1
	ldrsh ip, [ip, r3]
	ldrsh r2, [r2, #2]
_020B4760:
	sub r2, r2, ip
	mul r3, ip, r4
	mul r2, r1, r2
	add r1, r3, r2, asr #12
	mov r1, r1, asr r5
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B477C: .word 0x00000FFF
_020B4780: .word 0x1FFF0000
_020B4784: .word 0x00003FFF
	arm_func_end sub_020B462C

	arm_func_start sub_020B4788
sub_020B4788: ; 0x020B4788
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, [r2, #4]
	ldr r5, [r2, #0]
	mov r6, r1, asr #0xc
	tst r5, #-0x40000000
	add r1, r3, r4
	beq _020B48D4
	ldr r2, _020B4978 ; =0x1FFF0000
	tst r5, #0x40000000
	and r2, r5, r2
	mov r3, r2, lsr #0x10
	beq _020B47E0
	tst r6, #1
	beq _020B47D8
	cmp r6, r3
	movhi r2, r3, lsr #1
	addhi r6, r2, #1
	bhi _020B48D4
	mov r4, r6, lsr #1
	b _020B490C
_020B47D8:
	mov r6, r6, lsr #1
	b _020B48D4
_020B47E0:
	ands r2, r6, #3
	beq _020B48D0
	cmp r6, r3
	addhi r6, r2, r3, lsr #2
	bhi _020B48D4
	tst r6, #1
	beq _020B48C8
	tst r6, #2
	movne r3, r6, lsr #2
	addne r2, r3, #1
	moveq r2, r6, lsr #2
	addeq r3, r2, #1
	tst r5, #0x20000000
	beq _020B485C
	mov r5, r2, lsl #2
	mov r4, r3, lsl #2
	ldrsh r6, [r1, r5]
	ldrsh r5, [r1, r4]
	add r2, r1, r2, lsl #2
	add r4, r6, r6, lsl #1
	add r4, r5, r4
	mov r4, r4, asr #2
	str r4, [r0, #0]
	add r1, r1, r3, lsl #2
	ldrsh r3, [r2, #2]
	ldrsh r2, [r1, #2]
	add r1, r3, r3, lsl #1
	add r1, r2, r1
	mov r1, r1, asr #2
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B485C:
	ldr r4, [r1, r2, lsl #3]
	mov ip, #3
	mov lr, #0
	umull r6, r5, r4, ip
	mla r5, r4, lr, r5
	mov r4, r4, asr #0x1f
	ldr r7, [r1, r3, lsl #3]
	add r2, r1, r2, lsl #3
	mla r5, r4, ip, r5
	adds r6, r6, r7
	adc r4, r5, r7, asr #31
	mov r5, r6, lsr #2
	orr r5, r5, r4, lsl #30
	str r5, [r0, #0]
	add r1, r1, r3, lsl #3
	ldr r2, [r2, #4]
	ldr r1, [r1, #4]
	umull r4, r3, r2, ip
	mla r3, r2, lr, r3
	mov r2, r2, asr #0x1f
	mla r3, r2, ip, r3
	adds r4, r4, r1
	adc r1, r3, r1, asr #31
	mov r2, r4, lsr #2
	orr r2, r2, r1, lsl #30
	str r2, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B48C8:
	mov r4, r6, lsr #2
	b _020B490C
_020B48D0:
	mov r6, r6, lsr #2
_020B48D4:
	tst r5, #0x20000000
	beq _020B48F4
	mov r2, r6, lsl #2
	ldrsh r2, [r1, r2]
	add r1, r1, r6, lsl #2
	str r2, [r0, #0]
	ldrsh r1, [r1, #2]
	b _020B4904
_020B48F4:
	ldr r2, [r1, r6, lsl #3]
	add r1, r1, r6, lsl #3
	str r2, [r0, #0]
	ldr r1, [r1, #4]
_020B4904:
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B490C:
	tst r5, #0x20000000
	beq _020B4948
	mov r2, r4, lsl #2
	add r3, r1, r4, lsl #2
	ldrsh r2, [r1, r2]
	ldrsh r1, [r3, #4]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r0, #0]
	ldrsh r2, [r3, #2]
	ldrsh r1, [r3, #6]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B4948:
	add r3, r1, r4, lsl #3
	ldr r2, [r1, r4, lsl #3]
	ldr r1, [r3, #8]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r0, #0]
	ldr r2, [r3, #4]
	ldr r1, [r3, #0xc]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B4978: .word 0x1FFF0000
	arm_func_end sub_020B4788

	arm_func_start sub_020B497C
sub_020B497C: ; 0x020B497C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldrh r4, [r3, #4]
	ldr r5, [r2, #4]
	mov lr, r1, asr #0xc
	sub r4, r4, #1
	cmp r4, r1, asr #12
	add ip, r3, r5
	ldr r2, [r2, #0]
	bne _020B4A04
	tst r2, #-0x40000000
	beq _020B49BC
	tst r2, #0x40000000
	andne r4, lr, #1
	addne lr, r4, lr, lsr #1
	andeq r4, lr, #3
	addeq lr, r4, lr, lsr #2
_020B49BC:
	ldr r3, [r3, #8]
	tst r3, #2
	movne r3, #0
	bne _020B4A80
	tst r2, #0x20000000
	beq _020B49EC
	mov r1, lr, lsl #2
	ldrsh r2, [ip, r1]
	add r1, ip, lr, lsl #2
	str r2, [r0, #0]
	ldrsh r1, [r1, #2]
	b _020B49FC
_020B49EC:
	ldr r2, [ip, lr, lsl #3]
	add r1, ip, lr, lsl #3
	str r2, [r0, #0]
	ldr r1, [r1, #4]
_020B49FC:
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B4A04:
	tst r2, #-0x40000000
	beq _020B4A7C
	ldr r4, _020B4B04 ; =0x1FFF0000
	tst r2, #0x40000000
	and r3, r2, r4
	mov r3, r3, lsr #0x10
	beq _020B4A48
	cmp lr, r3
	movhs lr, r3, lsr #1
	addhs r3, lr, #1
	bhs _020B4A80
	mov lr, lr, lsr #1
	add r3, lr, #1
	and r1, r1, r4, lsr #16
	mov r4, #2
	mov r5, #1
	b _020B4A90
_020B4A48:
	cmp lr, r3
	blo _020B4A60
	and r3, lr, #3
	add lr, r3, lr, lsr #2
	add r3, lr, #1
	b _020B4A80
_020B4A60:
	ldr r4, _020B4B08 ; =0x00003FFF
	mov lr, lr, lsr #2
	add r3, lr, #1
	and r1, r1, r4
	mov r4, #4
	mov r5, #2
	b _020B4A90
_020B4A7C:
	add r3, lr, #1
_020B4A80:
	ldr r5, _020B4B0C ; =0x00000FFF
	mov r4, #1
	and r1, r1, r5
	mov r5, #0
_020B4A90:
	tst r2, #0x20000000
	beq _020B4ABC
	mov r2, lr, lsl #2
	add r7, ip, lr, lsl #2
	mov r6, r3, lsl #2
	add r3, ip, r3, lsl #2
	ldrsh r2, [ip, r2]
	ldrsh lr, [r7, #2]
	ldrsh r7, [ip, r6]
	ldrsh r3, [r3, #2]
	b _020B4AD0
_020B4ABC:
	add r7, ip, lr, lsl #3
	ldmia r7, {r2, lr}
	add r6, ip, r3, lsl #3
	ldr r7, [ip, r3, lsl #3]
	ldr r3, [r6, #4]
_020B4AD0:
	sub ip, r7, r2
	sub r3, r3, lr
	mul r6, r2, r4
	mul r2, r1, ip
	add r2, r6, r2, asr #12
	mov r6, r2, asr r5
	mul r4, lr, r4
	mul r2, r1, r3
	add r1, r4, r2, asr #12
	mov r1, r1, asr r5
	str r6, [r0, #0]
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B4B04: .word 0x1FFF0000
_020B4B08: .word 0x00003FFF
_020B4B0C: .word 0x00000FFF
	arm_func_end sub_020B497C

	arm_func_start sub_020B4B10
sub_020B4B10: ; 0x020B4B10
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x48
	ldr sb, [r2]
	mov r4, r3
	ldr r2, [r2, #4]
	mov r5, r0
	tst sb, #-0x40000000
	mov r3, r1, asr #0xc
	add r8, r4, r2
	ldr r7, [r4, #0xc]
	ldr r6, [r4, #0x10]
	beq _020B4E94
	ldr r0, _020B4F24 ; =0x1FFF0000
	tst sb, #0x40000000
	and r0, sb, r0
	mov r1, r0, lsr #0x10
	beq _020B4B7C
	tst r3, #1
	beq _020B4B74
	cmp r3, r1
	movhi r0, r1, lsr #1
	addhi r3, r0, #1
	bhi _020B4E94
	mov sb, r3, lsr #1
	b _020B4D3C
_020B4B74:
	mov r3, r3, lsr #1
	b _020B4E94
_020B4B7C:
	ands r0, r3, #3
	beq _020B4D34
	cmp r3, r1
	addhi r3, r0, r1, lsr #2
	bhi _020B4E94
	tst r3, #1
	beq _020B4D2C
	tst r3, #2
	movne sb, r3, lsr #2
	addne r0, sb, #1
	moveq r0, r3, lsr #2
	addeq sb, r0, #1
	mov r0, r0, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r5
	add r1, r4, r7
	add r2, r4, r6
	mov sl, #0
	bl sub_020B526C
	mov r1, sb, lsl #1
	ldrh r3, [r8, r1]
	orr sl, sl, r0
	add r0, sp, #0x24
	add r1, r4, r7
	add r2, r4, r6
	bl sub_020B526C
	ldr r1, [r5, #0]
	ldr r2, [sp, #0x24]
	add r1, r1, r1, lsl #1
	add r1, r2, r1
	str r1, [r5, #0]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x28]
	add r1, r1, r1, lsl #1
	add r1, r2, r1
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [sp, #0x2c]
	add r1, r1, r1, lsl #1
	add r1, r2, r1
	str r1, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [sp, #0x30]
	add r1, r1, r1, lsl #1
	add r1, r2, r1
	str r1, [r5, #0xc]
	ldr r1, [r5, #0x10]
	orr sl, sl, r0
	ldr r2, [sp, #0x34]
	add r0, r1, r1, lsl #1
	add r0, r2, r0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x38]
	add r0, r0, r0, lsl #1
	add r2, r1, r0
	mov r0, r5
	mov r1, r5
	str r2, [r5, #0x14]
	bl sub_020BD3E4
	add r0, r5, #0xc
	mov r1, r0
	bl sub_020BD3E4
	cmp sl, #0
	bne _020B4CD0
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x3c]
	add r0, r0, r0, lsl #1
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	ldr r1, [sp, #0x40]
	add r0, r0, r0, lsl #1
	add r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x44]
	add r0, r0, r0, lsl #1
	add r2, r1, r0
	add r0, r5, #0x18
	mov r1, r0
	str r2, [r5, #0x20]
	bl sub_020BD3E4
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4CD0:
	ldr sb, [r5, #0x14]
	ldr r6, [r5, #4]
	ldr r4, [r5, #0x10]
	ldr r2, [r5, #8]
	mul r1, r6, sb
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r7, [r5, #0xc]
	ldr r8, [r5]
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, sb
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r6, r7
	sub r0, r1, r0
	str r3, [r5, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r5, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r0, [r5, #0x20]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4D2C:
	mov sb, r3, lsr #2
	b _020B4D3C
_020B4D34:
	mov r3, r3, lsr #2
	b _020B4E94
_020B4D3C:
	mov r0, sb, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r5
	add r1, r4, r7
	add r2, r4, r6
	bl sub_020B526C
	add r1, r8, sb, lsl #1
	ldrh r3, [r1, #2]
	orr r8, r0, #0
	add r0, sp, #0
	add r1, r4, r7
	add r2, r4, r6
	bl sub_020B526C
	ldr r2, [r5, #0]
	ldr r1, [sp]
	orr r8, r8, r0
	add r0, r2, r1
	str r0, [r5, #0]
	ldr r2, [r5, #4]
	ldr r1, [sp, #4]
	mov r0, r5
	add r1, r2, r1
	str r1, [r5, #4]
	ldr r3, [r5, #8]
	ldr r2, [sp, #8]
	mov r1, r5
	add r2, r3, r2
	str r2, [r5, #8]
	ldr r3, [r5, #0xc]
	ldr r2, [sp, #0xc]
	add r2, r3, r2
	str r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	ldr r2, [sp, #0x10]
	add r2, r3, r2
	str r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	ldr r2, [sp, #0x14]
	add r2, r3, r2
	str r2, [r5, #0x14]
	bl sub_020BD3E4
	add r0, r5, #0xc
	mov r1, r0
	bl sub_020BD3E4
	cmp r8, #0
	bne _020B4E38
	ldr r2, [r5, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0x18
	add r1, r2, r1
	str r1, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r2, [sp, #0x1c]
	mov r1, r0
	add r2, r3, r2
	str r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	ldr r2, [sp, #0x20]
	add r2, r3, r2
	str r2, [r5, #0x20]
	bl sub_020BD3E4
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4E38:
	ldr sb, [r5, #0x14]
	ldr r6, [r5, #4]
	ldr r4, [r5, #0x10]
	ldr r2, [r5, #8]
	mul r1, r6, sb
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r7, [r5, #0xc]
	ldr r8, [r5]
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, r9
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r6, r7
	sub r0, r1, r0
	str r3, [r5, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r5, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r0, [r5, #0x20]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4E94:
	mov r0, r3, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r5
	add r1, r4, r7
	add r2, r4, r6
	bl sub_020B526C
	cmp r0, #0
	beq _020B4F10
	ldr sb, [r5, #0x14]
	ldr r6, [r5, #4]
	ldr r4, [r5, #0x10]
	ldr r2, [r5, #8]
	mul r1, r6, sb
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r7, [r5, #0xc]
	ldr r8, [r5]
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, r9
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r6, r7
	sub r0, r1, r0
	str r3, [r5, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r5, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r0, [r5, #0x20]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4F10:
	add r0, r5, #0x18
	mov r1, r0
	bl sub_020BD3E4
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020B4F24: .word 0x1FFF0000
	arm_func_end sub_020B4B10

	arm_func_start sub_020B4F28
sub_020B4F28: ; 0x020B4F28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	mov sb, r3
	ldrh r3, [sb, #4]
	ldr r4, [r2, #4]
	mov sl, r0
	sub r0, r3, #1
	cmp r0, r1, asr #12
	add r8, sb, r4
	mov r0, r1, asr #0xc
	ldr r4, [sb, #0xc]
	ldr fp, [sb, #0x10]
	ldr r3, [r2, #0]
	bne _020B501C
	tst r3, #-0x40000000
	beq _020B4F7C
	tst r3, #0x40000000
	andne r2, r0, #1
	addne r0, r2, r0, lsr #1
	andeq r2, r0, #3
	addeq r0, r2, r0, lsr #2
_020B4F7C:
	ldr r2, [sb, #8]
	tst r2, #2
	movne r5, #0
	bne _020B5090
	mov r0, r0, lsl #1
	ldrh r3, [r8, r0]
	mov r0, sl
	add r1, sb, r4
	add r2, sb, fp
	bl sub_020B526C
	cmp r0, #0
	beq _020B5008
	ldr r8, [sl, #0x14]
	ldr r5, [sl, #4]
	ldr r4, [sl, #0x10]
	ldr r2, [sl, #8]
	mul r1, r5, r8
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r6, [sl, #0xc]
	ldr r7, [sl]
	mov r3, r0, asr #0xc
	mul r1, r2, r6
	mul r0, r7, r8
	sub r2, r1, r0
	mul r1, r7, r4
	mul r0, r5, r6
	sub r0, r1, r0
	str r3, [sl, #0x18]
	mov r1, r2, asr #0xc
	str r1, [sl, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r0, [sl, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B5008:
	add r0, sl, #0x18
	mov r1, r0
	bl sub_020BD3E4
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B501C:
	tst r3, #-0x40000000
	beq _020B508C
	ldr r2, _020B5260 ; =0x1FFF0000
	tst r3, #0x40000000
	and r3, r3, r2
	mov r3, r3, lsr #0x10
	beq _020B505C
	cmp r0, r3
	movhs r0, r3, lsr #1
	addhs r5, r0, #1
	bhs _020B5090
	mov r0, r0, lsr #1
	add r5, r0, #1
	and r6, r1, r2, lsr #16
	mov r7, #2
	b _020B509C
_020B505C:
	cmp r0, r3
	blo _020B5074
	and r2, r0, #3
	add r0, r2, r0, lsr #2
	add r5, r0, #1
	b _020B5090
_020B5074:
	ldr r2, _020B5264 ; =0x00003FFF
	mov r0, r0, lsr #2
	add r5, r0, #1
	and r6, r1, r2
	mov r7, #4
	b _020B509C
_020B508C:
	add r5, r0, #1
_020B5090:
	ldr r2, _020B5268 ; =0x00000FFF
	mov r7, #1
	and r6, r1, r2
_020B509C:
	mov r0, r0, lsl #1
	ldrh r3, [r8, r0]
	add r0, sp, #0x24
	add r1, sb, r4
	add r2, sb, fp
	bl sub_020B526C
	mov r1, r5, lsl #1
	ldrh r3, [r8, r1]
	orr r5, r0, #0
	add r0, sp, #0
	add r1, sb, r4
	add r2, sb, fp
	bl sub_020B526C
	ldr r3, [sp, #0x24]
	ldr r1, [sp]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [sl]
	ldr r3, [sp, #0x28]
	ldr r1, [sp, #4]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [sl, #4]
	ldr r3, [sp, #0x2c]
	ldr r1, [sp, #8]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [sl, #8]
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #0xc]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [sl, #0xc]
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x10]
	orr r5, r5, r0
	sub r0, r1, r2
	mul r1, r2, r7
	mul r0, r6, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x10]
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0x14]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r2, r1, r0, asr #12
	mov r0, sl
	mov r1, sl
	str r2, [sl, #0x14]
	bl sub_020BD3E4
	add r0, sl, #0xc
	mov r1, r0
	bl sub_020BD3E4
	cmp r5, #0
	bne _020B5204
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x18]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x18]
	ldr r2, [sp, #0x40]
	ldr r0, [sp, #0x1c]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x1c]
	ldr r2, [sp, #0x44]
	ldr r0, [sp, #0x20]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r2, r1, r0, asr #12
	add r0, sl, #0x18
	mov r1, r0
	str r2, [sl, #0x20]
	bl sub_020BD3E4
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B5204:
	ldr r8, [sl, #0x14]
	ldr r5, [sl, #4]
	ldr r7, [sl]
	ldr r4, [sl, #0x10]
	ldr r2, [sl, #8]
	ldr r6, [sl, #0xc]
	mul r1, r5, r8
	mul r0, r2, r4
	sub r0, r1, r0
	mov r3, r0, asr #0xc
	mul r1, r2, r6
	mul r0, r7, r8
	sub r2, r1, r0
	mul r1, r7, r4
	mul r0, r5, r6
	sub r0, r1, r0
	str r3, [sl, #0x18]
	mov r1, r2, asr #0xc
	str r1, [sl, #0x1c]
	mov r0, r0, asr #0xc
	str r0, [sl, #0x20]
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B5260: .word 0x1FFF0000
_020B5264: .word 0x00003FFF
_020B5268: .word 0x00000FFF
	arm_func_end sub_020B4F28

	arm_func_start sub_020B526C
sub_020B526C: ; 0x020B526C
	stmfd sp!, {r3, r4, r5, lr}
	tst r3, #0x8000
	beq _020B5324
	mov r4, #0
	str r4, [r0, #0x20]
	str r4, [r0, #0x1c]
	str r4, [r0, #0x18]
	str r4, [r0, #0x14]
	str r4, [r0, #0x10]
	ldr r2, _020B53C4 ; =0x00007FFF
	str r4, [r0, #0xc]
	str r4, [r0, #8]
	and r2, r3, r2
	add r3, r2, r2, lsl #1
	str r4, [r0, #4]
	add r2, r1, r3, lsl #1
	str r4, [r0, #0]
	mov r3, r3, lsl #1
	ldrsh r1, [r1, r3]
	ldrsh ip, [r2, #2]
	ldrsh r3, [r2, #4]
	tst r1, #0x10
	subne r5, r4, #0x1000
	ldr r4, _020B53C8 ; =0x020F9818
	and r1, r1, #0xf
	ldr lr, _020B53CC ; =0x020F9819
	moveq r5, #0x1000
	ldrb r4, [r4, r1, lsl #2]
	str r5, [r0, r1, lsl #2]
	ldrb lr, [lr, r1, lsl #2]
	str ip, [r0, r4, lsl #2]
	str r3, [r0, lr, lsl #2]
	ldrsh lr, [r2]
	tst lr, #0x20
	ldr lr, _020B53D0 ; =0x020F981A
	rsbne r3, r3, #0
	ldrb lr, [lr, r1, lsl #2]
	str r3, [r0, lr, lsl #2]
	ldrsh r2, [r2]
	tst r2, #0x40
	ldr r2, _020B53D4 ; =0x020F981B
	rsbne ip, ip, #0
	ldrb r1, [r2, r1, lsl #2]
	str ip, [r0, r1, lsl #2]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020B5324:
	ldr r1, _020B53C4 ; =0x00007FFF
	and r1, r3, r1
	add r3, r1, r1, lsl #2
	add r1, r2, r3, lsl #1
	ldrsh lr, [r1, #8]
	mov ip, r3, lsl #1
	mov r3, lr, asr #3
	str r3, [r0, #0x10]
	ldrsh ip, [r2, ip]
	and r2, lr, #7
	mov r2, r2, lsl #0x10
	mov r3, ip, asr #3
	str r3, [r0, #0]
	ldrsh r3, [r1, #2]
	and ip, ip, #7
	orr lr, ip, r2, asr #13
	mov r2, r3, asr #3
	str r2, [r0, #4]
	ldrsh ip, [r1, #4]
	mov r2, lr, lsl #0x10
	and lr, r3, #7
	mov r3, ip, asr #3
	str r3, [r0, #8]
	ldrsh r3, [r1, #6]
	orr r1, lr, r2, asr #13
	mov r1, r1, lsl #0x10
	and r2, ip, #7
	orr r1, r2, r1, asr #13
	mov r1, r1, lsl #0x10
	and r2, r3, #7
	orr r1, r2, r1, asr #13
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r3, asr #3
	mov r1, r1, lsl #0x13
	str r2, [r0, #0xc]
	mov r1, r1, asr #0x13
	str r1, [r0, #0x14]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B53C4: .word 0x00007FFF
_020B53C8: .word 0x020F9818
_020B53CC: .word 0x020F9819
_020B53D0: .word 0x020F981A
_020B53D4: .word 0x020F981B
	arm_func_end sub_020B526C

	arm_func_start sub_020B53D8
sub_020B53D8: ; 0x020B53D8
	tst r1, #0x20000000
	movne r0, r1, lsl #0x10
	movne r0, r0, lsr #0x10
	bxne lr
	mov r3, r1, lsl #0x10
	tst r1, #-0x40000000
	add r0, r0, r3, lsr #16
	moveq r1, r2, lsl #1
	ldreqh r0, [r0, r1]
	bxeq lr
	ldr r3, _020B5538 ; =0x1FFF0000
	tst r1, #0x40000000
	and r1, r1, r3
	mov r3, r1, lsr #0x10
	beq _020B5448
	tst r2, #1
	beq _020B543C
	cmp r2, r3
	bls _020B5434
	bic r1, r3, #1
	add r0, r0, r1
	ldrh r0, [r0, #2]
	bx lr
_020B5434:
	mov r1, r2, lsr #1
	b _020B54F0
_020B543C:
	bic r1, r2, #1
	ldrh r0, [r0, r1]
	bx lr
_020B5448:
	ands r1, r2, #3
	beq _020B54E0
	cmp r2, r3
	bls _020B546C
	mov r2, r3, lsr #2
	mov r1, r1, lsl #1
	add r0, r0, r2, lsl #1
	ldrh r0, [r1, r0]
	bx lr
_020B546C:
	tst r2, #1
	beq _020B54D8
	tst r2, #2
	movne r3, r2, lsr #2
	addne r1, r3, #1
	moveq r1, r2, lsr #2
	mov r2, r1, lsl #1
	addeq r3, r1, #1
	mov r1, r3, lsl #1
	ldrh r2, [r0, r2]
	ldrh ip, [r0, r1]
	ldr r0, _020B553C ; =0x00007C1F
	and r1, r2, #0x3e0
	and r3, r2, r0
	add r2, r1, r1, lsl #1
	and r1, ip, #0x3e0
	add r1, r2, r1
	add r3, r3, r3, lsl #1
	and r2, ip, r0
	add r2, r3, r2
	mov r1, r1, lsr #2
	and r2, r0, r2, lsr #2
	and r0, r1, #0x3e0
	orr r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_020B54D8:
	mov r1, r2, lsr #2
	b _020B54F0
_020B54E0:
	mov r1, r2, lsr #2
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bx lr
_020B54F0:
	mov r2, r1, lsl #1
	add r1, r0, r1, lsl #1
	ldrh r3, [r0, r2]
	ldrh ip, [r1, #2]
	ldr r0, _020B553C ; =0x00007C1F
	and r2, r3, #0x3e0
	and r1, ip, #0x3e0
	add r1, r2, r1
	mov r1, r1, lsr #1
	and r3, r3, r0
	and r2, ip, r0
	add r2, r3, r2
	and r2, r0, r2, lsr #1
	and r0, r1, #0x3e0
	orr r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	; .align 2, 0
_020B5538: .word 0x1FFF0000
_020B553C: .word 0x00007C1F
	arm_func_end sub_020B53D8

	arm_func_start sub_020B5540
sub_020B5540: ; 0x020B5540
	tst r1, #0x20000000
	movne r0, r1, lsl #0x10
	movne r0, r0, lsr #0x10
	bxne lr
	mov r3, r1, lsl #0x10
	add r3, r0, r3, lsr #16
	tst r1, #-0x40000000
	ldreqb r0, [r3, r2]
	bxeq lr
	ldr r0, _020B5628 ; =0x1FFF0000
	tst r1, #0x40000000
	and r0, r1, r0
	mov r0, r0, lsr #0x10
	beq _020B55B4
	tst r2, #1
	beq _020B55AC
	cmp r2, r0
	addhi r0, r3, r0, lsr #1
	ldrhib r0, [r0, #1]
	bxhi lr
	add r0, r3, r2, lsr #1
	ldrb r1, [r3, r2, lsr #1]
	ldrb r0, [r0, #1]
	add r0, r1, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	bx lr
_020B55AC:
	ldrb r0, [r3, r2, lsr #1]
	bx lr
_020B55B4:
	ands r1, r2, #3
	beq _020B5620
	cmp r2, r0
	addhi r0, r3, r0, lsr #2
	ldrhib r0, [r1, r0]
	bxhi lr
	tst r2, #1
	beq _020B5604
	tst r2, #2
	movne r2, r2, lsr #2
	addne r0, r2, #1
	moveq r0, r2, lsr #2
	ldrb r1, [r3, r0]
	addeq r2, r0, #1
	ldrb r0, [r3, r2]
	add r1, r1, r1, lsl #1
	add r0, r1, r0
	mov r0, r0, lsl #0xe
	mov r0, r0, lsr #0x10
	bx lr
_020B5604:
	add r0, r3, r2, lsr #2
	ldrb r1, [r3, r2, lsr #2]
	ldrb r0, [r0, #1]
	add r0, r1, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	bx lr
_020B5620:
	ldrb r0, [r3, r2, lsr #2]
	bx lr
	; .align 2, 0
_020B5628: .word 0x1FFF0000
	arm_func_end sub_020B5540

	arm_func_start sub_020B562C
sub_020B562C: ; 0x020B562C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	cmp r2, #0
	ldrne r0, [r2, #8]
	mov sb, r1
	cmpne r0, #0
	addne r7, r2, r0
	ldr r0, _020B56FC ; =0x02100EDC
	add r1, sl, #0x1a
	ldr r3, [r0, #0]
	mov r0, #0
	str r3, [sl, #0xc]
	ldrb r2, [r2, #0x18]
	moveq r7, #0
	strb r2, [sl, #0x19]
	mov r2, r2, lsl #1
	bl sub_020C4AF0
	ldrb r0, [sb, #9]
	mov r6, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r8, r6
	add r5, sb, #8
	mov fp, r6
	mvn r4, #0
_020B5690:
	cmp r5, #0
	beq _020B56BC
	ldrb r0, [sb, #9]
	cmp r6, r0
	bhs _020B56BC
	ldrh r0, [sb, #0xe]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r8
	b _020B56C0
_020B56BC:
	mov r1, fp
_020B56C0:
	cmp r7, #0
	moveq r0, r4
	beq _020B56D4
	add r0, r7, #4
	bl sub_020B3AA4
_020B56D4:
	cmp r0, #0
	orrge r1, r6, #0x100
	addge r0, sl, r0, lsl #1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [sb, #9]
	add r6, r6, #1
	add r8, r8, #0x10
	cmp r6, r0
	blo _020B5690
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B56FC: .word 0x02100EDC
	arm_func_end sub_020B562C

	arm_func_start sub_020B5700
sub_020B5700: ; 0x020B5700
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [r1, #8]
	ldr r1, [r1, #0]
	mov r7, r0
	mov r5, r1, asr #0xc
	adds r3, r4, #8
	beq _020B5748
	ldrb r1, [r4, #9]
	mov r0, r2, lsl #0x10
	mov r2, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bls _020B5748
	ldrh r1, [r4, #0xe]
	ldrh r0, [r3, r1]
	add r1, r3, r1
	add r1, r1, #4
	mla r6, r0, r2, r1
	b _020B574C
_020B5748:
	mov r6, #0
_020B574C:
	ldr r1, [r6, #0]
	mov r0, r4
	mov r2, r5
	bl sub_020B53D8
	mov r8, r0
	ldr r1, [r6, #4]
	mov r0, r4
	mov r2, r5
	bl sub_020B53D8
	ldr r1, [r7, #4]
	orr r0, r8, r0, lsl #16
	tst r1, #0x8000
	movne r1, #1
	moveq r1, #0
	orr r0, r0, r1, lsl #15
	str r0, [r7, #4]
	ldr r1, [r6, #0xc]
	mov r0, r4
	mov r2, r5
	bl sub_020B53D8
	mov r8, r0
	ldr r1, [r6, #8]
	mov r0, r4
	mov r2, r5
	bl sub_020B53D8
	ldr r1, [r7, #8]
	orr r0, r0, r8, lsl #16
	tst r1, #0x8000
	movne r1, #1
	moveq r1, #0
	orr r0, r0, r1, lsl #15
	str r0, [r7, #8]
	ldr r1, [r6, #0x10]
	mov r0, r4
	mov r2, r5
	bl sub_020B5540
	ldr r1, [r7, #0xc]
	bic r1, r1, #0x1f0000
	orr r0, r1, r0, lsl #16
	str r0, [r7, #0xc]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020B5700

	arm_func_start sub_020B57F0
sub_020B57F0: ; 0x020B57F0
	tst r1, #0x20000000
	movne r0, r2
	bxne lr
	tst r1, #-0x40000000
	add r0, r0, r2
	beq _020B58AC
	mov r2, r1, lsl #0x10
	tst r1, #0x40000000
	mov ip, r2, lsr #0x10
	beq _020B5840
	tst r3, #1
	beq _020B5838
	cmp r3, ip
	movhi r2, ip, lsr #1
	addhi r3, r2, #1
	bhi _020B58AC
	mov r3, r3, lsr #1
	b _020B58C0
_020B5838:
	mov r3, r3, lsr #1
	b _020B58AC
_020B5840:
	ands r2, r3, #3
	beq _020B58A8
	cmp r3, ip
	addhi r3, r2, ip, lsr #2
	bhi _020B58AC
	tst r3, #1
	beq _020B58A0
	tst r3, #2
	movne r3, r3, lsr #2
	addne r2, r3, #1
	moveq r2, r3, lsr #2
	addeq r3, r2, #1
	tst r1, #0x10000000
	ldreq r2, [r0, r2, lsl #2]
	ldreq r1, [r0, r3, lsl #2]
	beq _020B5890
	mov r2, r2, lsl #1
	mov r1, r3, lsl #1
	ldrsh r2, [r0, r2]
	ldrsh r1, [r0, r1]
_020B5890:
	add r0, r2, r2, lsl #1
	add r0, r0, r1
	mov r0, r0, asr #2
	bx lr
_020B58A0:
	mov r3, r3, lsr #2
	b _020B58C0
_020B58A8:
	mov r3, r3, lsr #2
_020B58AC:
	tst r1, #0x10000000
	movne r1, r3, lsl #1
	ldrnesh r0, [r0, r1]
	ldreq r0, [r0, r3, lsl #2]
	bx lr
_020B58C0:
	tst r1, #0x10000000
	addeq r1, r0, r3, lsl #2
	ldreq r0, [r0, r3, lsl #2]
	ldreq r1, [r1, #4]
	beq _020B58E4
	add r1, r0, r3, lsl #1
	mov r2, r3, lsl #1
	ldrsh r0, [r0, r2]
	ldrsh r1, [r1, #2]
_020B58E4:
	add r0, r0, r1
	mov r0, r0, asr #1
	bx lr
	arm_func_end sub_020B57F0

	arm_func_start sub_020B58F0
sub_020B58F0: ; 0x020B58F0
	tst r1, #0x20000000
	movne r0, r2
	bxne lr
	tst r1, #-0x40000000
	add r0, r0, r2
	beq _020B59C0
	mov r2, r1, lsl #0x10
	tst r1, #0x40000000
	mov r2, r2, lsr #0x10
	beq _020B5940
	tst r3, #1
	beq _020B5938
	cmp r3, r2
	movhi r1, r2, lsr #1
	addhi r3, r1, #1
	bhi _020B59C0
	mov r1, r3, lsr #1
	b _020B59C8
_020B5938:
	mov r3, r3, lsr #1
	b _020B59C0
_020B5940:
	ands r1, r3, #3
	beq _020B59BC
	cmp r3, r2
	addhi r3, r1, r2, lsr #2
	bhi _020B59C0
	tst r3, #1
	beq _020B59B4
	tst r3, #2
	movne r3, r3, lsr #2
	addne r1, r3, #1
	moveq r1, r3, lsr #2
	add r2, r0, r1, lsl #2
	mov ip, r1, lsl #2
	addeq r3, r1, #1
	add r1, r0, r3, lsl #2
	ldrsh r2, [r2, #2]
	mov r3, r3, lsl #2
	ldrsh ip, [r0, ip]
	ldrsh r1, [r1, #2]
	ldrsh r3, [r0, r3]
	add r2, r2, r2, lsl #1
	add r0, r2, r1
	add ip, ip, ip, lsl #1
	mov r1, r0, asr #2
	add r2, ip, r3
	mov r0, r2, lsl #0xe
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	bx lr
_020B59B4:
	mov r1, r3, lsr #2
	b _020B59C8
_020B59BC:
	mov r3, r3, lsr #2
_020B59C0:
	ldr r0, [r0, r3, lsl #2]
	bx lr
_020B59C8:
	add r3, r0, r1, lsl #2
	mov ip, r1, lsl #2
	ldrsh r2, [r3, #2]
	ldrsh r1, [r3, #6]
	ldrsh ip, [r0, ip]
	ldrsh r3, [r3, #4]
	add r0, r2, r1
	mov r1, r0, asr #1
	add r0, ip, r3
	mov r0, r0, lsl #0xf
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	bx lr
	arm_func_end sub_020B58F0

	arm_func_start sub_020B59FC
sub_020B59FC: ; 0x020B59FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r6, r2
	mov r5, r3
	adds r3, r7, #8
	beq _020B5A38
	ldrb r0, [r7, #9]
	cmp r1, r0
	bhs _020B5A38
	ldrh r2, [r7, #0xe]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r4, r0, r1, r2
	b _020B5A3C
_020B5A38:
	mov r4, #0
_020B5A3C:
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	mov r0, r7
	mov r3, r6
	ldr r8, [r5]
	bl sub_020B57F0
	mov sb, r0
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	mov r0, r7
	mov r3, r6
	bl sub_020B57F0
	cmp sb, #0
	cmpeq r0, #0
	strne sb, [r5, #0x24]
	strne r0, [r5, #0x28]
	orreq r8, r8, #4
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bicne r8, r8, #4
	mov r0, r7
	mov r3, r6
	bl sub_020B58F0
	cmp r0, #0x10000000
	orreq r8, r8, #2
	beq _020B5AB4
	strh r0, [r5, #0x20]
	mov r0, r0, lsr #0x10
	strh r0, [r5, #0x22]
	bic r8, r8, #2
_020B5AB4:
	mov r0, r7
	mov r3, r6
	ldmia r4, {r1, r2}
	bl sub_020B57F0
	mov sb, r0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	mov r0, r7
	mov r3, r6
	bl sub_020B57F0
	cmp sb, #0x1000
	cmpeq r0, #0x1000
	orreq r8, r8, #1
	strne sb, [r5, #0x18]
	strne r0, [r5, #0x1c]
	bicne r8, r8, #1
	str r8, [r5]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020B59FC

	arm_func_start sub_020B5AFC
sub_020B5AFC: ; 0x020B5AFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	cmp r2, #0
	ldrne r0, [r2, #8]
	mov sb, r1
	cmpne r0, #0
	addne r7, r2, r0
	ldr r0, _020B5BCC ; =0x02100ED4
	add r1, sl, #0x1a
	ldr r3, [r0, #0]
	mov r0, #0
	str r3, [sl, #0xc]
	ldrb r2, [r2, #0x18]
	moveq r7, #0
	strb r2, [sl, #0x19]
	mov r2, r2, lsl #1
	bl sub_020C4AF0
	ldrb r0, [sb, #9]
	mov r6, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r8, r6
	add r5, sb, #8
	mov fp, r6
	mvn r4, #0
_020B5B60:
	cmp r5, #0
	beq _020B5B8C
	ldrb r0, [sb, #9]
	cmp r6, r0
	bhs _020B5B8C
	ldrh r0, [sb, #0xe]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r8
	b _020B5B90
_020B5B8C:
	mov r1, fp
_020B5B90:
	cmp r7, #0
	moveq r0, r4
	beq _020B5BA4
	add r0, r7, #4
	bl sub_020B3AA4
_020B5BA4:
	cmp r0, #0
	orrge r1, r6, #0x100
	addge r0, sl, r0, lsl #1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [sb, #9]
	add r6, r6, #1
	add r8, r8, #0x10
	cmp r6, r0
	blo _020B5B60
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B5BCC: .word 0x02100ED4
	arm_func_end sub_020B5AFC

	arm_func_start sub_020B5BD0
sub_020B5BD0: ; 0x020B5BD0
	stmfd sp!, {r4, lr}
	ldr ip, [r1]
	mov r4, r0
	mov r2, r2, lsl #0x10
	ldr r0, [r1, #8]
	mov r1, r2, lsr #0x10
	mov r3, r4
	mov r2, ip, asr #0xc
	bl sub_020B59FC
	ldr r0, [r4, #0x10]
	bic r0, r0, #0xc0000000
	orr r0, r0, #0x40000000
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	orr r0, r0, #8
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B5BD0

	arm_func_start sub_020B5C14
sub_020B5C14: ; 0x020B5C14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	cmp r2, #0
	ldrne r0, [r2, #8]
	mov sb, r1
	cmpne r0, #0
	addne r7, r2, r0
	ldr r0, _020B5CEC ; =0x02100ED8
	add r1, sl, #0x1a
	ldr r3, [r0, #0]
	mov r0, #0
	str r3, [sl, #0xc]
	ldrb r2, [r2, #0x18]
	moveq r7, #0
	strb r2, [sl, #0x19]
	str sb, [sl, #8]
	ldrb r2, [sl, #0x19]
	mov r2, r2, lsl #1
	bl sub_020C4AF0
	ldrb r0, [sb, #0xd]
	mov r6, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r8, r6
	add r5, sb, #0xc
	mov fp, r6
	mvn r4, #0
_020B5C80:
	cmp r5, #0
	beq _020B5CAC
	ldrb r0, [sb, #0xd]
	cmp r6, r0
	bhs _020B5CAC
	ldrh r0, [sb, #0x12]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r8
	b _020B5CB0
_020B5CAC:
	mov r1, fp
_020B5CB0:
	cmp r7, #0
	moveq r0, r4
	beq _020B5CC4
	add r0, r7, #4
	bl sub_020B3AA4
_020B5CC4:
	cmp r0, #0
	orrge r1, r6, #0x100
	addge r0, sl, r0, lsl #1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [sb, #0xd]
	add r6, r6, #1
	add r8, r8, #0x10
	cmp r6, r0
	blo _020B5C80
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B5CEC: .word 0x02100ED8
	arm_func_end sub_020B5C14

	arm_func_start sub_020B5CF0
sub_020B5CF0: ; 0x020B5CF0
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r2
	moveq r0, #0
	beq _020B5D0C
	add r0, r5, #0x3c
	bl sub_020B38E4
_020B5D0C:
	ldr r1, [r0, #0]
	ldr r3, [r4, #0x10]
	and r1, r1, #0x1c000000
	cmp r1, #0x14000000
	ldrne r1, [r5, #8]
	ldr r2, _020B5DC0 ; =0x000007FF
	ldreq r1, [r5, #0x18]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r5, r1, #0xe0000000
	ldr r1, _020B5DC4 ; =0xC00F0000
	and r3, r3, r1
	str r3, [r4, #0x10]
	ldr r1, [r0, #0]
	add r1, r1, r5
	orr r1, r3, r1
	str r1, [r4, #0x10]
	ldr r1, [r0, #4]
	and r1, r1, r2
	strh r1, [r4, #0x2c]
	ldr r1, [r0, #4]
	and r1, r1, r2, lsl #11
	mov r1, r1, lsr #0xb
	strh r1, [r4, #0x2e]
	ldr r0, [r0, #4]
	ldrh r1, [r4, #0x2c]
	and r3, r0, r2
	and r0, r0, r2, lsl #11
	cmp r3, r1
	mov r5, r0, lsr #0xb
	moveq r0, #0x1000
	beq _020B5D98
	mov r0, r3, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_020BCFD0
_020B5D98:
	str r0, [r4, #0x30]
	ldrh r1, [r4, #0x2e]
	cmp r5, r1
	moveq r0, #0x1000
	beq _020B5DB8
	mov r0, r5, lsl #0xc
	mov r1, r1, lsl #0xc
	bl sub_020BCFD0
_020B5DB8:
	str r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B5DC0: .word 0x000007FF
_020B5DC4: .word 0xC00F0000
	arm_func_end sub_020B5CF0

	arm_func_start sub_020B5DC8
sub_020B5DC8: ; 0x020B5DC8
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	ldrneh r0, [r5, #0x34]
	mov r4, r2
	cmpne r0, #0
	moveq r0, #0
	beq _020B5DEC
	add r0, r5, r0
	bl sub_020B38E4
_020B5DEC:
	ldr r1, [r5, #0x2c]
	ldrh r2, [r0, #2]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r1, r1, #0xe0000000
	mov r1, r1, lsl #0x10
	tst r2, #1
	mov r1, r1, lsr #0x10
	ldrh r0, [r0]
	bne _020B5E24
	mov r0, r0, lsl #0xf
	mov r1, r1, lsl #0xf
	mov r0, r0, lsr #0x10
	mov r1, r1, lsr #0x10
_020B5E24:
	add r0, r0, r1
	str r0, [r4, #0x14]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B5DC8

	arm_func_start sub_020B5E30
sub_020B5E30: ; 0x020B5E30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r3, [r6, #0]
	ldr r5, [r6, #8]
	mov r1, r2, lsl #0x10
	mov r2, r3, lsl #4
	mov r7, r0
	mov r0, r5
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl sub_020B3D10
	mov r4, r0
	ldrb r1, [r4, #2]
	mov r0, r5
	bl sub_020B3CB8
	mov r1, r0
	ldr r0, [r6, #0x14]
	mov r2, r7
	bl sub_020B5CF0
	ldrb r1, [r4, #3]
	cmp r1, #0xff
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl sub_020B3CE4
	mov r1, r0
	ldr r0, [r6, #0x14]
	mov r2, r7
	bl sub_020B5DC8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020B5E30

	arm_func_start sub_020B5EA4
sub_020B5EA4: ; 0x020B5EA4
	ldr r3, _020B5EEC ; =0x02100ECC
	mov ip, #0
	ldr r3, [r3, #0]
	str r3, [r0, #0xc]
	ldrb r2, [r2, #0x17]
	strb r2, [r0, #0x19]
	str r1, [r0, #8]
	ldrb r1, [r0, #0x19]
	cmp r1, #0
	bxls lr
_020B5ECC:
	orr r2, ip, #0x100
	add r1, r0, ip, lsl #1
	strh r2, [r1, #0x1a]
	ldrb r1, [r0, #0x19]
	add ip, ip, #1
	cmp ip, r1
	blo _020B5ECC
	bx lr
	; .align 2, 0
_020B5EEC: .word 0x02100ECC
	arm_func_end sub_020B5EA4

	arm_func_start sub_020B5EF0
sub_020B5EF0: ; 0x020B5EF0
	stmfd sp!, {r3, lr}
	ldr lr, [r1, #8]
	ldr r3, [r1, #0]
	ldrh r1, [lr, #6]
	mov ip, r3, asr #0xc
	mov r3, #1
	mla r2, ip, r1, r2
	mov r1, r2, lsr #5
	add r1, lr, r1, lsl #2
	ldr r1, [r1, #0xc]
	and r2, r2, #0x1f
	and r1, r1, r3, lsl r2
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B5EF0

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

	arm_func_start sub_020B5FE4
sub_020B5FE4: ; 0x020B5FE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0]
	mov r4, #0
	tst r0, #4
	moveq r4, #1
	tst r0, #0x20
	beq _020B6038
	tst r0, #8
	bne _020B6038
	cmp r4, #0
	beq _020B6028
	add r1, r5, #0x4c
	mov r0, #0x1c
	mov r2, #3
	bl sub_020B275C
	mov r4, #0
_020B6028:
	add r1, r5, #0x10
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
_020B6038:
	ldr r0, [r5, #0]
	tst r0, #2
	bne _020B6070
	cmp r4, #0
	add r1, r5, #0x28
	beq _020B6060
	mov r0, #0x19
	mov r2, #0xc
	bl sub_020B275C
	b _020B6088
_020B6060:
	mov r0, #0x1a
	mov r2, #9
	bl sub_020B275C
	b _020B6088
_020B6070:
	cmp r4, #0
	beq _020B6088
	add r1, r5, #0x4c
	mov r0, #0x1c
	mov r2, #3
	bl sub_020B275C
_020B6088:
	ldr r0, [r5, #0]
	tst r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	add r1, r5, #4
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B5FE4

	arm_func_start sub_020B60A8
sub_020B60A8: ; 0x020B60A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov ip, r0
	tst r3, #4
	ldrb r0, [r2, #3]
	beq _020B60FC
	ldr r1, [ip]
	tst r0, #2
	orr r1, r1, #1
	str r1, [ip]
	beq _020B6174
	ldr r1, _020B61E8 ; =0x021C5CF0
	ldrb r7, [r2, #1]
	ldr r1, [r1, #0]
	mov r3, #1
	add r6, r1, #0xc4
	mov r5, r7, lsr #5
	ldr r4, [r6, r5, lsl #2]
	and r1, r7, #0x1f
	orr r1, r4, r3, lsl r1
	str r1, [r6, r5, lsl #2]
	b _020B6174
_020B60FC:
	ldr r3, [r1, #0]
	tst r0, #2
	str r3, [ip, #4]
	ldr r3, [r1, #4]
	str r3, [ip, #8]
	ldr r3, [r1, #8]
	str r3, [ip, #0xc]
	beq _020B6174
	ldr r3, _020B61E8 ; =0x021C5CF0
	ldrb r8, [r2, #1]
	ldr r4, [r3, #0]
	mov r3, #0x18
	add r7, r4, #0xc4
	mov r6, r8, lsr #5
	and r4, r8, #0x1f
	mov r5, #1
	mvn r4, r5, lsl r4
	ldr lr, [r7, r6, lsl #2]
	smulbb r5, r8, r3
	and r3, lr, r4
	str r3, [r7, r6, lsl #2]
	ldr r4, [r1, #0xc]
	ldr r3, _020B61EC ; =0x021C6B00
	ldr lr, _020B61F0 ; =0x021C6B04
	str r4, [r3, r5]
	ldr r4, [r1, #0x10]
	ldr r3, _020B61F4 ; =0x021C6B08
	str r4, [lr, r5]
	ldr r1, [r1, #0x14]
	str r1, [r3, r5]
_020B6174:
	tst r0, #1
	beq _020B61D8
	ldrb r3, [r2, #2]
	ldr r1, [ip]
	ldr r0, _020B61E8 ; =0x021C5CF0
	orr r1, r1, #0x20
	str r1, [ip]
	ldr r1, [r0, #0]
	mov r0, r3, lsr #5
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0xc4]
	and r1, r3, #0x1f
	mov r2, #1
	tst r0, r2, lsl r1
	beq _020B61C0
	ldr r0, [ip]
	orr r0, r0, #8
	str r0, [ip]
	b _020B61D8
_020B61C0:
	ldr r1, _020B61EC ; =0x021C6B00
	mov r0, #0x18
	mla r0, r3, r0, r1
	add r3, ip, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
_020B61D8:
	ldr r0, [ip]
	orr r0, r0, #0x10
	str r0, [ip]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B61E8: .word 0x021C5CF0
_020B61EC: .word 0x021C6B00
_020B61F0: .word 0x021C6B04
_020B61F4: .word 0x021C6B08
	arm_func_end sub_020B60A8

	arm_func_start sub_020B61F8
sub_020B61F8: ; 0x020B61F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldrh r2, [sb, #0x2c]
	ldrh r1, [sb, #0x2e]
	mov sl, r0
	mov r8, r2, lsl #0xc
	mov fp, r1, lsl #0xc
	mov r0, fp
	mov r1, r8
	bl sub_020BD0DC
	ldrsh r5, [sb, #0x22]
	ldr r3, [sb, #0x18]
	ldrsh r0, [sb, #0x20]
	ldr r4, [sb, #0x1c]
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r6, [sl]
	str r4, [sl, #0x14]
	bl sub_020BD048
	mov r1, fp
	rsb r2, r5, #0
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	bl sub_020BD0DC
	sub r0, r5, r4
	add r1, r7, r6
	ldr r5, [sb, #0x18]
	ldrh r4, [sb, #0x2c]
	sub r2, r5, r1
	ldr r1, [sb, #0x24]
	mul r3, r4, r2
	smull r2, r1, r5, r1
	mov r2, r2, lsr #8
	orr r2, r2, r1, lsl #24
	mul r1, r4, r2
	rsb r1, r1, r3, lsl #3
	str r1, [sl, #0x30]
	ldr r4, [sb, #0x1c]
	ldrh r3, [sb, #0x2e]
	sub r0, r0, r4
	add r0, r0, #0x2000
	mul r2, r3, r0
	ldr r0, [sb, #0x28]
	smull r1, r0, r4, r0
	mov r1, r1, lsr #8
	orr r1, r1, r0, lsl #24
	mul r0, r3, r1
	add r0, r0, r2, lsl #3
	str r0, [sl, #0x34]
	bl sub_020BD048
	mul r0, r7, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020B61F8

	arm_func_start sub_020B6300
sub_020B6300: ; 0x020B6300
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl sub_020BD0DC
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl sub_020BD048
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	rsb r2, r2, #0
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl sub_020BD0DC
	ldrsh r2, [r5, #0x20]
	ldrsh r1, [r5, #0x22]
	ldrh r3, [r5, #0x2c]
	ldr r0, [r5, #0x24]
	add r1, r2, r1
	rsb r1, r1, #0
	add r2, r1, #0x1000
	mul r1, r0, r3
	mul r2, r3, r2
	mov r0, r1, lsl #4
	rsb r0, r0, r2, lsl #3
	str r0, [r6, #0x30]
	ldrsh r2, [r5, #0x20]
	ldrsh r1, [r5, #0x22]
	ldrh r3, [r5, #0x2e]
	ldr r0, [r5, #0x28]
	sub r1, r2, r1
	add r2, r1, #0x1000
	mul r1, r0, r3
	mul r2, r3, r2
	mov r0, r1, lsl #4
	add r0, r0, r2, lsl #3
	str r0, [r6, #0x34]
	bl sub_020BD048
	ldrsh r1, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020B6300

	arm_func_start sub_020B63D0
sub_020B63D0: ; 0x020B63D0
	stmfd sp!, {r4, lr}
	ldr r3, [r1, #0x18]
	mov r2, #0
	str r3, [r0, #0]
	ldr r3, [r1, #0x1c]
	str r3, [r0, #0x14]
	str r2, [r0, #4]
	ldr r4, [r1, #0x18]
	ldr r3, [r1, #0x24]
	ldrh lr, [r1, #0x2c]
	smull ip, r3, r4, r3
	mov r4, ip, lsr #8
	orr r4, r4, r3, lsl #24
	rsb r3, r4, #0
	mul r3, lr, r3
	str r3, [r0, #0x30]
	ldr r4, [r1, #0x1c]
	ldr ip, [r1, #0x28]
	mov r3, r4, lsl #1
	smull lr, ip, r4, ip
	rsb r4, r3, #0
	mov r3, lr, lsr #8
	ldrh lr, [r1, #0x2e]
	add r1, r4, #0x2000
	orr r3, r3, ip, lsl #24
	mul r4, lr, r1
	mul r1, lr, r3
	add r1, r1, r4, lsl #3
	str r1, [r0, #0x34]
	str r2, [r0, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B63D0

	arm_func_start sub_020B644C
sub_020B644C: ; 0x020B644C
	mov r2, #0x1000
	str r2, [r0, #0]
	str r2, [r0, #0x14]
	mov ip, #0
	str ip, [r0, #4]
	ldrh r2, [r1, #0x2c]
	ldr r3, [r1, #0x24]
	mul r2, r3, r2
	rsb r2, r2, #0
	mov r2, r2, lsl #4
	str r2, [r0, #0x30]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x28]
	mul r2, r1, r2
	mov r1, r2, lsl #4
	str r1, [r0, #0x34]
	str ip, [r0, #0x10]
	bx lr
	arm_func_end sub_020B644C

	arm_func_start sub_020B6494
sub_020B6494: ; 0x020B6494
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldrh r2, [sb, #0x2c]
	ldrh r1, [sb, #0x2e]
	mov sl, r0
	mov r8, r2, lsl #0xc
	mov fp, r1, lsl #0xc
	mov r0, fp
	mov r1, r8
	bl sub_020BD0DC
	ldrsh r5, [sb, #0x22]
	ldr r3, [sb, #0x18]
	ldrsh r0, [sb, #0x20]
	ldr r4, [sb, #0x1c]
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r6, [sl]
	str r4, [sl, #0x14]
	bl sub_020BD048
	mov r1, fp
	rsb r2, r5, #0
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	bl sub_020BD0DC
	sub r1, r5, r4
	add r0, r7, r6
	ldrh r3, [sb, #0x2c]
	ldr r2, [sb, #0x18]
	sub r0, r2, r0
	mul r0, r3, r0
	mov r0, r0, lsl #3
	str r0, [sl, #0x30]
	ldrh r2, [sb, #0x2e]
	ldr r0, [sb, #0x1c]
	sub r0, r1, r0
	add r0, r0, #0x2000
	mul r0, r2, r0
	mov r0, r0, lsl #3
	str r0, [sl, #0x34]
	bl sub_020BD048
	mul r0, r7, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020B6494

	arm_func_start sub_020B6574
sub_020B6574: ; 0x020B6574
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl sub_020BD0DC
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl sub_020BD048
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	rsb r2, r2, #0
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl sub_020BD0DC
	ldrsh r1, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	ldrh r2, [r5, #0x2c]
	add r0, r1, r0
	rsb r0, r0, #0
	add r0, r0, #0x1000
	mul r0, r2, r0
	mov r0, r0, lsl #3
	str r0, [r6, #0x30]
	ldrsh r1, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	ldrh r2, [r5, #0x2e]
	sub r0, r1, r0
	add r0, r0, #0x1000
	mul r0, r2, r0
	mov r0, r0, lsl #3
	str r0, [r6, #0x34]
	bl sub_020BD048
	ldrsh r1, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020B6574

	arm_func_start sub_020B662C
sub_020B662C: ; 0x020B662C
	ldr r2, [r1, #0x18]
	mov ip, #0
	str r2, [r0, #0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str ip, [r0, #4]
	str ip, [r0, #0x30]
	ldr r2, [r1, #0x1c]
	ldrh r3, [r1, #0x2e]
	mov r1, r2, lsl #1
	rsb r1, r1, #0
	add r1, r1, #0x2000
	mul r1, r3, r1
	mov r1, r1, lsl #3
	str r1, [r0, #0x34]
	str ip, [r0, #0x10]
	bx lr
	arm_func_end sub_020B662C

	arm_func_start sub_020B6670
sub_020B6670: ; 0x020B6670
	mov r2, #0x1000
	str r2, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end sub_020B6670

	arm_func_start sub_020B6694
sub_020B6694: ; 0x020B6694
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4, #0]
	mov r1, #0
	tst r0, #8
	ldrne r0, _020B67D0 ; =0x00101610
	mov r3, #3
	strne r0, [sp]
	ldreq r0, _020B67D4 ; =0x00101810
	mov r2, #2
	streq r0, [sp]
	mov r0, #0x1000
	str r0, [sp, #0x44]
	str r3, [sp, #4]
	str r2, [sp, #0x48]
	str r1, [sp, #0x40]
	str r1, [sp, #0x34]
	str r1, [sp, #0x30]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x28]
	str r1, [sp, #0x24]
	str r1, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	ldr r1, [r4, #0]
	ldr r0, _020B67D8 ; =0x021010E4
	and r1, r1, #7
	ldr r2, [r0, r1, lsl #2]
	add r0, sp, #8
	mov r1, r4
	blx r2
	ldr r3, [r4, #0x30]
	cmp r3, #0x1000
	beq _020B6764
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #8]
	ldr r2, [r4, #0x30]
	ldr r0, [sp, #0x38]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0xc]
	ldr r1, [r4, #0x30]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x38]
_020B6764:
	ldr r3, [r4, #0x34]
	cmp r3, #0x1000
	beq _020B67B4
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x18]
	ldr r2, [r4, #0x34]
	ldr r0, [sp, #0x3c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x34]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x3c]
_020B67B4:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0x12
	bl sub_020B275C
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020B67D0: .word 0x00101610
_020B67D4: .word 0x00101810
_020B67D8: .word 0x021010E4
	arm_func_end sub_020B6694

	arm_func_start sub_020B67DC
sub_020B67DC: ; 0x020B67DC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r0, [r6, #0]
	mov r4, #0
	ands r5, r0, #0x18
	bne _020B6808
	add r1, r6, #0x1c
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
_020B6808:
	ldr r0, [r6, #0]
	tst r0, #4
	bne _020B6878
	cmp r5, #0
	movne r4, #1
	bne _020B6878
	ldr r2, [r6, #0x4c]
	ldr r0, [r6, #0x10]
	add r1, sp, #0
	smull r3, r0, r2, r0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp]
	ldr r3, [r6, #0x50]
	ldr r2, [r6, #0x14]
	mov r0, #0x1c
	smull ip, r2, r3, r2
	mov r3, ip, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sp, #4]
	ldr ip, [r6, #0x54]
	ldr r3, [r6, #0x18]
	mov r2, #3
	smull lr, r3, ip, r3
	mov ip, lr, lsr #0xc
	orr ip, ip, r3, lsl #20
	str ip, [sp, #8]
	bl sub_020B275C
_020B6878:
	ldr r0, [r6, #0]
	tst r0, #2
	bne _020B68B0
	cmp r4, #0
	add r1, r6, #0x28
	beq _020B68A0
	mov r0, #0x19
	mov r2, #0xc
	bl sub_020B275C
	b _020B68C8
_020B68A0:
	mov r0, #0x1a
	mov r2, #9
	bl sub_020B275C
	b _020B68C8
_020B68B0:
	cmp r4, #0
	beq _020B68C8
	add r1, r6, #0x4c
	mov r0, #0x1c
	mov r2, #3
	bl sub_020B275C
_020B68C8:
	cmp r5, #0
	bne _020B68E0
	add r1, r6, #0x10
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
_020B68E0:
	ldr r0, [r6, #0]
	tst r0, #1
	addne sp, sp, #0xc
	ldmneia sp!, {r3, r4, r5, r6, pc}
	add r1, r6, #4
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_020B67DC

	arm_func_start sub_020B6908
sub_020B6908: ; 0x020B6908
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	tst r3, #4
	ldrb r4, [r2, #1]
	ldrb r0, [r2, #2]
	beq _020B69A4
	ldr r2, [r5, #0]
	ldr r1, _020B6B08 ; =0x021C5CF0
	orr r2, r2, #1
	str r2, [r5, #0]
	ldr r3, [r1, #0]
	mov r1, r0, lsr #5
	add r1, r3, r1, lsl #2
	ldr r1, [r1, #0xc4]
	and r2, r0, #0x1f
	mov r6, #1
	tst r1, r6, lsl r2
	beq _020B6978
	add r3, r3, #0xc4
	mov r2, r4, lsr #5
	ldr r1, [r3, r2, lsl #2]
	and r0, r4, #0x1f
	orr r0, r1, r6, lsl r0
	str r0, [r3, r2, lsl #2]
	ldr r0, [r5, #0]
	orr r0, r0, #0x18
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B6978:
	mov r2, #0x18
	ldr r7, _020B6B0C ; =0x021C6AF4
	mul r6, r0, r2
	mla r1, r4, r2, r7
	add r0, r7, r6
	bl sub_020C4B68
	add r0, r7, r6
	add r1, r5, #0x10
	mov r2, #0x18
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B69A4:
	ldr r3, [r1, #0]
	ldr r2, _020B6B08 ; =0x021C5CF0
	str r3, [r5, #4]
	ldr r3, [r1, #4]
	mov r7, r0, lsr #5
	str r3, [r5, #8]
	ldr r3, [r1, #8]
	and r8, r0, #0x1f
	str r3, [r5, #0xc]
	ldr r6, [r2, #0]
	mov r3, #1
	add r2, r6, r7, lsl #2
	ldr r2, [r2, #0xc4]
	tst r2, r3, lsl r8
	mov r2, #0x18
	beq _020B6A2C
	ldr r3, _020B6B0C ; =0x021C6AF4
	mov r0, r1
	mla r1, r4, r2, r3
	bl sub_020C4B68
	ldr r0, _020B6B08 ; =0x021C5CF0
	mov r2, r4, lsr #5
	ldr r1, [r0, #0]
	and r0, r4, #0x1f
	add r3, r1, #0xc4
	mov r1, #1
	mvn r0, r1, lsl r0
	ldr r1, [r3, r2, lsl #2]
	and r0, r1, r0
	str r0, [r3, r2, lsl #2]
	ldr r0, [r5, #0]
	orr r0, r0, #0x18
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B6A2C:
	mul ip, r0, r2
	and r7, r4, #0x1f
	mvn r7, r3, lsl r7
	add r6, r6, #0xc4
	mov lr, r4, lsr #5
	ldr r8, [r6, lr, lsl #2]
	mul r3, r4, r2
	and r4, r8, r7
	str r4, [r6, lr, lsl #2]
	ldr r0, _020B6B0C ; =0x021C6AF4
	ldr r7, [r1, #0]
	ldr r4, [r0, ip]
	ldr r6, _020B6B10 ; =0x021C6AF8
	smull r8, r4, r7, r4
	mov r7, r8, lsr #0xc
	orr r7, r7, r4, lsl #20
	str r7, [r0, r3]
	ldr r8, [r1, #4]
	ldr r4, [r6, ip]
	ldr r7, _020B6B14 ; =0x021C6AFC
	smull lr, r4, r8, r4
	mov r8, lr, lsr #0xc
	orr r8, r8, r4, lsl #20
	str r8, [r6, r3]
	ldr r8, [r1, #8]
	ldr r4, [r7, ip]
	ldr r6, _020B6B18 ; =0x021C6B00
	smull lr, r4, r8, r4
	mov r8, lr, lsr #0xc
	orr r8, r8, r4, lsl #20
	str r8, [r7, r3]
	ldr r7, [r1, #0xc]
	ldr r4, [r6, ip]
	ldr lr, _020B6B1C ; =0x021C6B04
	smull r8, r4, r7, r4
	mov r7, r8, lsr #0xc
	orr r7, r7, r4, lsl #20
	str r7, [r6, r3]
	ldr r7, [r1, #0x10]
	ldr r6, [lr, ip]
	ldr r4, _020B6B20 ; =0x021C6B08
	smull r8, r6, r7, r6
	mov r7, r8, lsr #0xc
	orr r7, r7, r6, lsl #20
	str r7, [lr, r3]
	ldr r6, [r1, #0x14]
	ldr r1, [r4, ip]
	add r0, r0, ip
	smull ip, r1, r6, r1
	mov r6, ip, lsr #0xc
	orr r6, r6, r1, lsl #20
	add r1, r5, #0x10
	str r6, [r4, r3]
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B6B08: .word 0x021C5CF0
_020B6B0C: .word 0x021C6AF4
_020B6B10: .word 0x021C6AF8
_020B6B14: .word 0x021C6AFC
_020B6B18: .word 0x021C6B00
_020B6B1C: .word 0x021C6B04
_020B6B20: .word 0x021C6B08
	arm_func_end sub_020B6908

	arm_func_start sub_020B6B24
sub_020B6B24: ; 0x020B6B24
	stmdb sp!, {lr}
	sub sp, sp, #0x3c
	ldr r1, [r0, #0]
	mov r2, #0
	tst r1, #8
	ldrne r1, _020B6CE8 ; =0x00101710
	mov r3, #3
	strne r1, [sp]
	ldreq r1, _020B6CEC ; =0x00101910
	str r3, [sp, #4]
	streq r1, [sp]
	mov r1, #2
	str r2, [sp, #0x34]
	str r2, [sp, #0x28]
	str r2, [sp, #0x24]
	str r2, [sp, #0x20]
	str r2, [sp, #0x1c]
	str r2, [sp, #0x14]
	str r2, [sp, #0x10]
	str r2, [sp, #0xc]
	str r1, [sp, #0x38]
	ldr r1, [r0, #0]
	tst r1, #4
	beq _020B6BBC
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	ldr r1, [r0, #0]
	tst r1, #1
	beq _020B6BA8
	mov r1, #0x1000
	str r1, [sp, #8]
	str r1, [sp, #0x18]
	b _020B6C5C
_020B6BA8:
	ldr r1, [r0, #0x18]
	str r1, [sp, #8]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #0x18]
	b _020B6C5C
_020B6BBC:
	tst r1, #1
	beq _020B6C04
	ldr r2, [r0, #0x24]
	ldrh r1, [r0, #0x2c]
	mov r2, r2, lsl #4
	rsb r2, r2, #0
	mul r1, r2, r1
	str r1, [sp, #0x2c]
	ldr r2, [r0, #0x28]
	ldrh r1, [r0, #0x2e]
	mov r2, r2, lsl #4
	rsb r2, r2, #0
	mul r3, r2, r1
	mov r1, #0x1000
	str r3, [sp, #0x30]
	str r1, [sp, #8]
	str r1, [sp, #0x18]
	b _020B6C5C
_020B6C04:
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x24]
	ldrh ip, [r0, #0x2c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #8
	orr r2, r2, r1, lsl #24
	rsb r1, r2, #0
	mul r1, ip, r1
	str r1, [sp, #0x2c]
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x28]
	ldrh ip, [r0, #0x2e]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #8
	orr r2, r2, r1, lsl #24
	rsb r1, r2, #0
	mul r1, ip, r1
	str r1, [sp, #0x30]
	ldr r1, [r0, #0x18]
	str r1, [sp, #8]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #0x18]
_020B6C5C:
	ldr ip, [r0, #0x30]
	cmp ip, #0x1000
	beq _020B6C94
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x2c]
	smull r3, r2, ip, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sp, #8]
	ldr r2, [r0, #0x30]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x2c]
_020B6C94:
	ldr ip, [r0, #0x34]
	cmp ip, #0x1000
	beq _020B6CCC
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x30]
	smull r3, r2, ip, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sp, #0x18]
	ldr r0, [r0, #0x34]
	smull r2, r1, r0, r1
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	str r0, [sp, #0x30]
_020B6CCC:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0xe
	bl sub_020B275C
	add sp, sp, #0x3c
	ldmia sp!, {pc}
	; .align 2, 0
_020B6CE8: .word 0x00101710
_020B6CEC: .word 0x00101910
	arm_func_end sub_020B6B24

	arm_func_start sub_020B6CF0
sub_020B6CF0: ; 0x020B6CF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldrh r2, [sb, #0x2c]
	ldrh r1, [sb, #0x2e]
	mov sl, r0
	mov r8, r2, lsl #0xc
	mov fp, r1, lsl #0xc
	mov r0, fp
	mov r1, r8
	bl sub_020BD0DC
	ldrsh r0, [sb, #0x22]
	ldr r3, [sb, #0x18]
	ldrsh r5, [sb, #0x20]
	ldr r4, [sb, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r7, [sl]
	str r5, [sl, #0x14]
	bl sub_020BD048
	mov r1, fp
	mul r0, r4, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	bl sub_020BD0DC
	ldrh r1, [sb, #0x2c]
	ldrh r8, [sb, #0x2e]
	ldr r2, [sb, #0x28]
	rsb r0, r1, #0
	mul r3, r2, r8
	rsb r2, r8, #0
	add r8, r3, r2, lsl #11
	smull r3, r2, r5, r8
	smull r8, r5, r6, r8
	ldr fp, [sb, #0x24]
	mul ip, fp, r1
	rsb r0, ip, r0, lsl #11
	smlal r3, r2, r4, r0
	smull r4, r0, r7, r0
	subs r4, r4, r8
	sbc r0, r0, r5
	mov r4, r4, lsr #8
	orr r4, r4, r0, lsl #24
	add r0, r4, r1, lsl #15
	str r0, [sl, #0x30]
	ldrh r1, [sb, #0x2e]
	mov r0, r3, lsr #8
	orr r0, r0, r2, lsl #24
	add r0, r0, r1, lsl #15
	str r0, [sl, #0x34]
	bl sub_020BD048
	rsb r1, r6, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020B6CF0

	arm_func_start sub_020B6DF8
sub_020B6DF8: ; 0x020B6DF8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl sub_020BD0DC
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl sub_020BD048
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl sub_020BD0DC
	ldrh r2, [r5, #0x2c]
	ldrh r4, [r5, #0x2e]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x24]
	mul r3, r1, r4
	rsb r1, r4, #0
	mul r4, r0, r2
	rsb r0, r2, #0
	add r1, r3, r1, lsl #11
	ldrsh r3, [r5, #0x20]
	rsb r0, r4, r0, lsl #11
	ldrsh lr, [r5, #0x22]
	smull ip, r4, r3, r1
	smull r7, r3, lr, r0
	subs r7, r7, ip
	sbc r3, r3, r4
	mov r4, r7, lsr #8
	orr r4, r4, r3, lsl #24
	add r2, r4, r2, lsl #15
	str r2, [r6, #0x30]
	ldrsh r2, [r5, #0x22]
	ldrsh r3, [r5, #0x20]
	ldrh ip, [r5, #0x2e]
	smull r4, r1, r2, r1
	smlal r4, r1, r3, r0
	mov r0, r4, lsr #8
	orr r0, r0, r1, lsl #24
	add r0, r0, ip, lsl #15
	str r0, [r6, #0x34]
	bl sub_020BD048
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020B6DF8

	arm_func_start sub_020B6EE0
sub_020B6EE0: ; 0x020B6EE0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, [r1, #0x18]
	mov r3, #0
	str r2, [r0, #0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str r3, [r0, #4]
	ldrh r5, [r1, #0x2c]
	ldr ip, [r1, #0x24]
	ldrh r2, [r1, #0x2e]
	mul lr, ip, r5
	rsb ip, r5, #0
	ldr r4, [r1, #0x18]
	rsb ip, lr, ip, lsl #11
	smull lr, ip, r4, ip
	ldr r6, [r1, #0x28]
	mov r4, lr, lsr #8
	orr r4, r4, ip, lsl #24
	add r4, r4, r5, lsl #15
	str r4, [r0, #0x30]
	mul r4, r6, r2
	rsb r5, r2, #0
	ldr r2, [r1, #0x1c]
	add r4, r4, r5, lsl #11
	smull lr, ip, r2, r4
	mov r2, lr, lsr #8
	ldrh r1, [r1, #0x2e]
	orr r2, r2, ip, lsl #24
	add r1, r2, r1, lsl #15
	str r1, [r0, #0x34]
	str r3, [r0, #0x10]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B6EE0

	arm_func_start sub_020B6F60
sub_020B6F60: ; 0x020B6F60
	mov r2, #0x1000
	str r2, [r0, #0]
	str r2, [r0, #0x14]
	mov ip, #0
	str ip, [r0, #4]
	ldr r3, [r1, #0x24]
	ldrh r2, [r1, #0x2c]
	rsb r3, r3, #0
	mul r2, r3, r2
	mov r2, r2, lsl #4
	str r2, [r0, #0x30]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x28]
	mul r2, r1, r2
	mov r1, r2, lsl #4
	str r1, [r0, #0x34]
	str ip, [r0, #0x10]
	bx lr
	arm_func_end sub_020B6F60

	arm_func_start sub_020B6FA8
sub_020B6FA8: ; 0x020B6FA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldrh r2, [sb, #0x2c]
	ldrh r1, [sb, #0x2e]
	mov sl, r0
	mov r8, r2, lsl #0xc
	mov fp, r1, lsl #0xc
	mov r0, fp
	mov r1, r8
	bl sub_020BD0DC
	ldrsh r0, [sb, #0x22]
	ldr r3, [sb, #0x18]
	ldrsh r5, [sb, #0x20]
	ldr r4, [sb, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r7, [sl]
	str r5, [sl, #0x14]
	bl sub_020BD048
	mov r1, fp
	mul r0, r4, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	bl sub_020BD0DC
	ldrh r3, [sb, #0x2c]
	ldrh r1, [sb, #0x2e]
	rsb r0, r3, #0
	rsb r1, r1, #0
	mov r2, r1, lsl #0xb
	mov fp, r0, lsl #0xb
	smull r1, r0, r7, fp
	smull r8, r7, r5, r2
	smlal r8, r7, r4, fp
	mov r4, r8, lsr #8
	orr r4, r4, r7, lsl #24
	smull r5, r2, r6, r2
	subs r1, r1, r5
	sbc r0, r0, r2
	mov r1, r1, lsr #8
	orr r1, r1, r0, lsl #24
	add r0, r1, r3, lsl #15
	str r0, [sl, #0x30]
	ldrh r0, [sb, #0x2e]
	add r0, r4, r0, lsl #15
	str r0, [sl, #0x34]
	bl sub_020BD048
	rsb r1, r6, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020B6FA8

	arm_func_start sub_020B70A0
sub_020B70A0: ; 0x020B70A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl sub_020BD0DC
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl sub_020BD048
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl sub_020BD0DC
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	ldrsh r4, [r5, #0x22]
	rsb r0, r2, #0
	rsb r1, r1, #0
	mov r0, r0, lsl #0xb
	ldrsh r3, [r5, #0x20]
	mov r1, r1, lsl #0xb
	smull r7, lr, r4, r0
	smull ip, r4, r3, r1
	subs r7, r7, ip
	sbc r3, lr, r4
	mov r4, r7, lsr #8
	orr r4, r4, r3, lsl #24
	add r2, r4, r2, lsl #15
	str r2, [r6, #0x30]
	ldrsh r2, [r5, #0x22]
	ldrsh r3, [r5, #0x20]
	ldrh ip, [r5, #0x2e]
	smull r4, r1, r2, r1
	smlal r4, r1, r3, r0
	mov r0, r4, lsr #8
	orr r0, r0, r1, lsl #24
	add r0, r0, ip, lsl #15
	str r0, [r6, #0x34]
	bl sub_020BD048
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020B70A0

	arm_func_start sub_020B7178
sub_020B7178: ; 0x020B7178
	ldr r2, [r1, #0x18]
	mov ip, #0
	str r2, [r0, #0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str ip, [r0, #4]
	ldr r3, [r1, #0x18]
	ldrh r2, [r1, #0x2c]
	rsb r3, r3, #0x1000
	mul r2, r3, r2
	mov r2, r2, lsl #3
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x1c]
	ldrh r1, [r1, #0x2e]
	rsb r2, r2, #0x1000
	mul r1, r2, r1
	mov r1, r1, lsl #3
	str r1, [r0, #0x34]
	str ip, [r0, #0x10]
	bx lr
	arm_func_end sub_020B7178

	arm_func_start sub_020B71C8
sub_020B71C8: ; 0x020B71C8
	mov r2, #0x1000
	str r2, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end sub_020B71C8

	arm_func_start sub_020B71EC
sub_020B71EC: ; 0x020B71EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4, #0]
	mov r1, #0
	tst r0, #8
	ldrne r0, _020B7328 ; =0x00101610
	mov r3, #3
	strne r0, [sp]
	ldreq r0, _020B732C ; =0x00101810
	mov r2, #2
	streq r0, [sp]
	mov r0, #0x1000
	str r0, [sp, #0x44]
	str r3, [sp, #4]
	str r2, [sp, #0x48]
	str r1, [sp, #0x40]
	str r1, [sp, #0x34]
	str r1, [sp, #0x30]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x28]
	str r1, [sp, #0x24]
	str r1, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	ldr r1, [r4, #0]
	ldr r0, _020B7330 ; =0x02101104
	and r1, r1, #7
	ldr r2, [r0, r1, lsl #2]
	add r0, sp, #8
	mov r1, r4
	blx r2
	ldr r3, [r4, #0x30]
	cmp r3, #0x1000
	beq _020B72BC
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #8]
	ldr r2, [r4, #0x30]
	ldr r0, [sp, #0x38]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0xc]
	ldr r1, [r4, #0x30]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x38]
_020B72BC:
	ldr r3, [r4, #0x34]
	cmp r3, #0x1000
	beq _020B730C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x18]
	ldr r2, [r4, #0x34]
	ldr r0, [sp, #0x3c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x34]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x3c]
_020B730C:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0x12
	bl sub_020B275C
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020B7328: .word 0x00101610
_020B732C: .word 0x00101810
_020B7330: .word 0x02101104
	arm_func_end sub_020B71EC

	arm_func_start sub_020B7334
sub_020B7334: ; 0x020B7334
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, r1
	ldrh r2, [r6, #0x2c]
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	mov sl, r2, lsl #0xc
	mov fp, r1, lsl #0xc
	mov r0, fp
	mov r1, sl
	bl sub_020BD0DC
	ldrsh r3, [r6, #0x22]
	ldr r0, [r6, #0x18]
	ldrsh sb, [r6, #0x20]
	smull r2, r1, r0, r3
	mov r2, r2, lsr #0xc
	ldr r8, [r6, #0x1c]
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0]
	smull r2, r1, r8, r3
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #20
	smull r2, r1, r0, sb
	mov r5, r2, lsr #0xc
	orr r5, r5, r1, lsl #20
	str r4, [r7, #0x14]
	bl sub_020BD048
	smull r2, r1, r8, sb
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r7, #4]
	mov r0, sl
	mov r1, fp
	bl sub_020BD0DC
	ldr lr, [r6, #0x1c]
	ldrsh r2, [r6, #0x20]
	ldr r8, [r6, #0x24]
	ldr r0, [r6, #0x28]
	smull sl, sb, r8, r2
	ldrh r1, [r6, #0x2c]
	smull r3, r2, r0, r2
	ldrsh ip, [r6, #0x22]
	str r1, [sp]
	mov fp, lr, asr #0x1f
	smlal r3, r2, r8, ip
	smull r8, ip, r0, ip
	subs r8, sl, r8
	sbc r0, sb, ip
	mov sb, r8, lsr #0xc
	mov ip, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r3, r2, asr #0xc
	orr ip, ip, r2, lsl #20
	umull sl, r2, sb, lr
	mla r2, sb, fp, r2
	mov r8, r0, asr #0xc
	mla r2, r8, lr, r2
	ldr r1, [r6, #0x18]
	mov r8, sl, lsr #0xc
	orr r8, r8, r2, lsl #20
	add r2, r4, r8
	mov r0, r1, asr #0x1f
	umull r8, r4, ip, r1
	mla r4, ip, r0, r4
	mla r4, r3, r1, r4
	mov r0, r8, lsr #0xc
	orr r0, r0, r4, lsl #20
	sub r1, r5, r0
	ldr r0, [sp]
	sub r2, r2, #0x1000
	mul r1, r0, r1
	mov r0, r1, lsl #4
	str r0, [r7, #0x30]
	ldrh r0, [r6, #0x2e]
	rsb r0, r0, #0
	mul r1, r0, r2
	mov r0, r1, lsl #4
	str r0, [r7, #0x34]
	bl sub_020BD048
	rsb r1, r5, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020B7334

	arm_func_start sub_020B7488
sub_020B7488: ; 0x020B7488
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl sub_020BD0DC
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl sub_020BD048
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl sub_020BD0DC
	ldrsh lr, [r5, #0x20]
	ldr r4, [r5, #0x28]
	ldrsh r0, [r5, #0x22]
	ldr ip, [r5, #0x24]
	smull r3, r2, r4, lr
	smlal r3, r2, ip, r0
	smull r1, r0, r4, r0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r4, lr, r3
	smull r3, r2, ip, lr
	subs r1, r3, r1
	sbc r0, r2, r0
	ldrh r2, [r5, #0x2c]
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mul r0, r2, r4
	mov r0, r0, lsl #4
	str r0, [r6, #0x30]
	ldrsh r0, [r5, #0x22]
	ldrh r2, [r5, #0x2e]
	add r0, r0, r1
	rsb r1, r2, #0
	sub r0, r0, #0x1000
	mul r0, r1, r0
	mov r0, r0, lsl #4
	str r0, [r6, #0x34]
	bl sub_020BD048
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020B7488

	arm_func_start sub_020B7568
sub_020B7568: ; 0x020B7568
	stmfd sp!, {r4, lr}
	ldr r3, [r1, #0x18]
	mov r2, #0
	str r3, [r0, #0]
	ldr r3, [r1, #0x1c]
	str r3, [r0, #0x14]
	str r2, [r0, #4]
	ldr ip, [r1, #0x24]
	ldr r3, [r1, #0x18]
	ldr r4, [r1, #0x28]
	smull lr, r3, ip, r3
	mov ip, lr, lsr #0xc
	orr ip, ip, r3, lsl #20
	ldrh lr, [r1, #0x2c]
	rsb r3, ip, #0
	ldr ip, [r1, #0x1c]
	rsb r4, r4, #0
	mul r3, lr, r3
	smull lr, ip, r4, ip
	mov r3, r3, lsl #4
	str r3, [r0, #0x30]
	mov r4, lr, lsr #0xc
	ldrh r3, [r1, #0x2e]
	ldr r1, [r1, #0x1c]
	orr r4, r4, ip, lsl #20
	add r1, r1, r4
	rsb r3, r3, #0
	sub r1, r1, #0x1000
	mul r1, r3, r1
	mov r1, r1, lsl #4
	str r1, [r0, #0x34]
	str r2, [r0, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B7568

	arm_func_start sub_020B75EC
sub_020B75EC: ; 0x020B75EC
	stmfd sp!, {r3, lr}
	mov r2, #0x1000
	str r2, [r0, #0]
	str r2, [r0, #0x14]
	mov lr, #0
	str lr, [r0, #4]
	ldr r2, [r1, #0x24]
	ldrh r3, [r1, #0x2c]
	rsb r2, r2, #0
	ldr ip, [r1, #0x28]
	mul r2, r3, r2
	mov r2, r2, lsl #4
	str r2, [r0, #0x30]
	ldrh r1, [r1, #0x2e]
	rsb r2, ip, #0
	rsb r1, r1, #0
	mul r2, r1, r2
	mov r1, r2, lsl #4
	str r1, [r0, #0x34]
	str lr, [r0, #0x10]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B75EC

	arm_func_start sub_020B7640
sub_020B7640: ; 0x020B7640
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldrh r2, [sb, #0x2c]
	ldrh r1, [sb, #0x2e]
	mov sl, r0
	mov r8, r2, lsl #0xc
	mov fp, r1, lsl #0xc
	mov r0, fp
	mov r1, r8
	bl sub_020BD0DC
	ldrsh r3, [sb, #0x22]
	ldr r0, [sb, #0x18]
	ldrsh r7, [sb, #0x20]
	ldr r5, [sb, #0x1c]
	smull r2, r1, r0, r3
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sl]
	smull r2, r1, r5, r3
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #20
	smull r2, r1, r0, r7
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	str r4, [sl, #0x14]
	bl sub_020BD048
	smull r2, r1, r5, r7
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	mov r1, fp
	bl sub_020BD0DC
	sub r0, r4, #0x1000
	ldrh r1, [sb, #0x2c]
	mul r2, r1, r6
	mov r1, r2, lsl #4
	str r1, [sl, #0x30]
	ldrh r1, [sb, #0x2e]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, lsl #4
	str r0, [sl, #0x34]
	bl sub_020BD048
	rsb r1, r6, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020B7640

	arm_func_start sub_020B770C
sub_020B770C: ; 0x020B770C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl sub_020BD0DC
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl sub_020BD048
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl sub_020BD0DC
	ldrh r1, [r5, #0x2c]
	ldrsh r0, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, lsl #4
	str r0, [r6, #0x30]
	ldrh r1, [r5, #0x2e]
	ldrsh r0, [r5, #0x22]
	rsb r1, r1, #0
	sub r0, r0, #0x1000
	mul r0, r1, r0
	mov r0, r0, lsl #4
	str r0, [r6, #0x34]
	bl sub_020BD048
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020B770C

	arm_func_start sub_020B77B0
sub_020B77B0: ; 0x020B77B0
	ldr r2, [r1, #0x18]
	mov r3, #0
	str r2, [r0, #0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str r3, [r0, #4]
	str r3, [r0, #0x30]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x1c]
	rsb r2, r2, #0
	sub r1, r1, #0x1000
	mul r1, r2, r1
	mov r1, r1, lsl #4
	str r1, [r0, #0x34]
	str r3, [r0, #0x10]
	bx lr
	arm_func_end sub_020B77B0

	arm_func_start sub_020B77F0
sub_020B77F0: ; 0x020B77F0
	mov r2, #0x1000
	str r2, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end sub_020B77F0

	arm_func_start sub_020B7814
sub_020B7814: ; 0x020B7814
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4, #0]
	mov r3, #3
	tst r0, #8
	ldrne r0, _020B7990 ; =0x00101610
	mov r2, #2
	strne r0, [sp]
	ldreq r0, _020B7994 ; =0x00101810
	mov r1, #0x1000
	streq r0, [sp]
	mov r0, #0
	str r3, [sp, #4]
	str r2, [sp, #0x48]
	str r1, [sp, #0x44]
	str r0, [sp, #0x40]
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	tst r0, #1
	strne r1, [r4, #0x1c]
	strne r1, [r4, #0x18]
	ldr r0, [r4, #0]
	tst r0, #2
	beq _020B78A4
	mov r0, #0x1000
	strh r0, [r4, #0x22]
	mov r0, #0
	strh r0, [r4, #0x20]
_020B78A4:
	ldr r0, [r4, #0]
	tst r0, #4
	movne r0, #0
	strne r0, [r4, #0x28]
	strne r0, [r4, #0x24]
	ldr r1, [r4, #0]
	ldr r0, _020B7998 ; =0x02101124
	and r1, r1, #7
	ldr r2, [r0, r1, lsl #2]
	add r0, sp, #8
	mov r1, r4
	blx r2
	ldr r3, [r4, #0x30]
	cmp r3, #0x1000
	beq _020B7924
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #8]
	ldr r2, [r4, #0x30]
	ldr r0, [sp, #0x38]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0xc]
	ldr r1, [r4, #0x30]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x38]
_020B7924:
	ldr r3, [r4, #0x34]
	cmp r3, #0x1000
	beq _020B7974
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x18]
	ldr r2, [r4, #0x34]
	ldr r0, [sp, #0x3c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x34]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x3c]
_020B7974:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0x12
	bl sub_020B275C
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020B7990: .word 0x00101610
_020B7994: .word 0x00101810
_020B7998: .word 0x02101124
	arm_func_end sub_020B7814

	arm_func_start sub_020B799C
sub_020B799C: ; 0x020B799C
	stmfd sp!, {r3, lr}
	ldr r0, _020B7A10 ; =0x021C8A00
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	mov r1, #1
	str r1, [r0, #0xc]
	bl sub_020C5580
	ldr r0, _020B7A14 ; =sub_020B7A80
	ldr r1, _020B7A10 ; =0x021C8A00
	mov r2, #0
	str r0, [r1, #0x10]
	ldr r0, _020B7A18 ; =sub_020B7AB8
	str r2, [r1, #0x14]
	str r0, [r1, #0x1c]
	ldr r0, _020B7A1C ; =0x021C8A10
	str r2, [r1, #0x20]
	bl sub_020CB848
	ldr r0, _020B7A20 ; =0x021C8A1C
	bl sub_020CB860
	bl sub_020B7BE4
	bl sub_020B90FC
	bl sub_020B82A0
	ldr r0, _020B7A10 ; =0x021C8A00
	mvn r1, #0
	strb r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B7A10: .word 0x021C8A00
_020B7A14: .word sub_020B7A80
_020B7A18: .word sub_020B7AB8
_020B7A1C: .word 0x021C8A10
_020B7A20: .word 0x021C8A1C
	arm_func_end sub_020B799C

	arm_func_start sub_020B7A24
sub_020B7A24: ; 0x020B7A24
	stmfd sp!, {r4, lr}
	mov r4, #0
_020B7A2C:
	mov r0, r4
	bl sub_020C56B4
	cmp r0, #0
	bne _020B7A2C
	bl sub_020B8354
	bl sub_020B9114
	bl sub_020BB070
	mov r0, #0
	bl sub_020C5884
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B7A24

	arm_func_start sub_020B7A54
sub_020B7A54: ; 0x020B7A54
	ldr ip, _020B7A5C ; =sub_020C5464
	bx ip
	; .align 2, 0
_020B7A5C: .word sub_020C5464
	arm_func_end sub_020B7A54

	arm_func_start sub_020B7A60
sub_020B7A60: ; 0x020B7A60
	stmfd sp!, {r3, lr}
	cmp r0, #0
	beq _020B7A78
	mov r0, #0x40
	bl sub_020C54AC
	ldmia sp!, {r3, pc}
_020B7A78:
	bl sub_020C54CC
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B7A60

	arm_func_start sub_020B7A80
sub_020B7A80: ; 0x020B7A80
	stmfd sp!, {r4, lr}
	bl sub_020B95F8
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl sub_020C522C
	bl sub_020C5AAC
	mov r4, r0
	mov r0, #1
	bl sub_020C5884
	mov r0, r4
	bl sub_020C5A40
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B7A80

	arm_func_start sub_020B7AB8
sub_020B7AB8: ; 0x020B7AB8
	ldr ip, _020B7AC0 ; =sub_020B9658
	bx ip
	; .align 2, 0
_020B7AC0: .word sub_020B9658
	arm_func_end sub_020B7AB8

	arm_func_start sub_020B7AC4
sub_020B7AC4: ; 0x020B7AC4
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r1, _020B7B08 ; =0x021CAE00
	ldr r1, [r1, #8]
	tst r4, r1
	movne r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, #0
	bl sub_020C5310
	ldr r1, _020B7B08 ; =0x021CAE00
	mov r0, #1
	ldr r2, [r1, #8]
	orr r2, r2, r4
	str r2, [r1, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B7B08: .word 0x021CAE00
	arm_func_end sub_020B7AC4

	arm_func_start sub_020B7B0C
sub_020B7B0C: ; 0x020B7B0C
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	bl sub_020C5330
	ldr r0, _020B7B38 ; =0x021CAE00
	mvn r1, r4
	ldr r2, [r0, #8]
	and r1, r2, r1
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B7B38: .word 0x021CAE00
	arm_func_end sub_020B7B0C

	arm_func_start sub_020B7B3C
sub_020B7B3C: ; 0x020B7B3C
	ldr r1, _020B7B5C ; =0x021CAE00
	ldr r2, [r1, #0]
	tst r0, r2
	movne r0, #0
	orreq r0, r2, r0
	streq r0, [r1]
	moveq r0, #1
	bx lr
	; .align 2, 0
_020B7B5C: .word 0x021CAE00
	arm_func_end sub_020B7B3C

	arm_func_start sub_020B7B60
sub_020B7B60: ; 0x020B7B60
	ldr r1, _020B7B78 ; =0x021CAE00
	mvn r0, r0
	ldr r2, [r1, #0]
	and r0, r2, r0
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020B7B78: .word 0x021CAE00
	arm_func_end sub_020B7B60

	arm_func_start sub_020B7B7C
sub_020B7B7C: ; 0x020B7B7C
	ldr r0, _020B7BC0 ; =0x021CAE00
	mov r3, #1
	ldr r1, [r0, #4]
	mov r0, #0
_020B7B8C:
	tst r1, r3
	bne _020B7BA8
	ldr r1, _020B7BC0 ; =0x021CAE00
	ldr r2, [r1, #4]
	orr r2, r2, r3
	str r2, [r1, #4]
	bx lr
_020B7BA8:
	add r0, r0, #1
	cmp r0, #8
	mov r3, r3, lsl #1
	blt _020B7B8C
	mvn r0, #0
	bx lr
	; .align 2, 0
_020B7BC0: .word 0x021CAE00
	arm_func_end sub_020B7B7C

	arm_func_start sub_020B7BC4
sub_020B7BC4: ; 0x020B7BC4
	ldr r1, _020B7BE0 ; =0x021CAE00
	mov r2, #1
	mvn r0, r2, lsl r0
	ldr r2, [r1, #4]
	and r0, r2, r0
	str r0, [r1, #4]
	bx lr
	; .align 2, 0
_020B7BE0: .word 0x021CAE00
	arm_func_end sub_020B7BC4

	arm_func_start sub_020B7BE4
sub_020B7BE4: ; 0x020B7BE4
	ldr r0, _020B7BFC ; =0x021CAE00
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020B7BFC: .word 0x021CAE00
	arm_func_end sub_020B7BE4

	arm_func_start sub_020B7C00
sub_020B7C00: ; 0x020B7C00
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r0, r0, lsl r4
	bl sub_020B7AC4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0x14
	mul r0, r4, r0
	ldr r2, _020B7C40 ; =0x021CAE0C
	mov r1, #0
	str r4, [r2, r0]
	add r0, r2, r0
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B7C40: .word 0x021CAE0C
	arm_func_end sub_020B7C00

	arm_func_start sub_020B7C44
sub_020B7C44: ; 0x020B7C44
	ldr r0, [r0, #0]
	mov r1, #1
	ldr ip, _020B7C58 ; =sub_020B7B0C
	mov r0, r1, lsl r0
	bx ip
	; .align 2, 0
_020B7C58: .word sub_020B7B0C
	arm_func_end sub_020B7C44

	arm_func_start sub_020B7C5C
sub_020B7C5C: ; 0x020B7C5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x18
	movs r8, r1
	mov sb, r0
	mov r7, r2
	mov r6, r3
	beq _020B7C84
	cmp r8, #1
	beq _020B7C98
	b _020B7CA8
_020B7C84:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	mov r4, r1, asr #2
	rsb r5, r4, r0, asr #2
	b _020B7CA8
_020B7C98:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	mov r4, r1, asr #1
	rsb r5, r4, r0, asr #1
_020B7CA8:
	ldr r2, [sp, #0x40]
	ldr r0, _020B7D74 ; =0xD87F8000
	mov r3, r2, asr #0x1f
	mov r1, #0x7f
	bl sub_020E1ED4
	ldr r2, [sp, #0x48]
	mov r3, r2, asr #0x1f
	bl sub_020E1ED4
	cmp r1, #0
	mov r2, #0x10
	cmpeq r0, #0x10
	mov r3, #0
	movlo r0, r2
	blo _020B7CF0
	ldr r2, _020B7D78 ; =0x0000FFFF
	cmp r1, r3
	cmpeq r0, r2
	movhi r0, r2
_020B7CF0:
	ldr r1, [sp, #0x44]
	stmia sp, {r4, r5}
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	cmp r6, #0
	movne r3, #1
	ldr r1, [sp, #0x4c]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sb]
	moveq r3, #2
	mov r1, r8
	mov r2, r7
	bl sub_020C53B8
	mov r1, #0
	ldr r0, [sb]
	mov r2, #1
	mov r0, r2, lsl r0
	mov r2, r1
	mov r3, r1
	bl sub_020C5204
	mov r0, #1
	str r0, [sb, #8]
	mov r0, #0
	str r0, [sb, #0xc]
	bl sub_020C5AAC
	str r0, [sb, #0x10]
	ldr r1, [sp, #0x40]
	mov r0, #1
	str r1, [sb, #4]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020B7D74: .word 0xD87F8000
_020B7D78: .word 0x0000FFFF
	arm_func_end sub_020B7C5C

	arm_func_start sub_020B7D7C
sub_020B7D7C: ; 0x020B7D7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0]
	mov r2, #1
	mov r1, #0
	mov r0, r2, lsl r0
	mov r2, r1
	mov r3, r1
	bl sub_020C522C
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B7D7C

	arm_func_start sub_020B7DB8
sub_020B7DB8: ; 0x020B7DB8
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	mov r2, #1
	mov r0, r2, lsl r0
	mov r2, #0
	bl sub_020C5370
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B7DB8

	arm_func_start sub_020B7DE0
sub_020B7DE0: ; 0x020B7DE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #4]
	ldr r0, _020B7E5C ; =0xD87F8000
	mov r3, r2, asr #0x1f
	mov r1, #0x7f
	bl sub_020E1ED4
	mov r2, r4
	mov r3, r4, asr #0x1f
	bl sub_020E1ED4
	mov r3, r0
	cmp r1, #0
	mov r0, #0x10
	cmpeq r3, #0x10
	mov r2, #0
	movlo r3, r0
	blo _020B7E44
	ldr r0, _020B7E60 ; =0x0000FFFF
	cmp r1, r2
	cmpeq r3, r0
	movhi r3, r0
_020B7E44:
	ldr r0, [r5, #0]
	mov r1, #1
	mov r0, r1, lsl r0
	mov r1, r3
	bl sub_020C5350
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B7E5C: .word 0xD87F8000
_020B7E60: .word 0x0000FFFF
	arm_func_end sub_020B7DE0

	arm_func_start sub_020B7E64
sub_020B7E64: ; 0x020B7E64
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	mov r2, #1
	mov r0, r2, lsl r0
	bl sub_020C5398
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B7E64

	arm_func_start sub_020B7E88
sub_020B7E88: ; 0x020B7E88
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _020B7EC4
	ldr r0, [r4, #0x10]
	bl sub_020C5AD8
	cmp r0, #0
	mov r0, #1
	ldmeqia sp!, {r4, pc}
	str r0, [r4, #0xc]
_020B7EC4:
	bl sub_020C5DE0
	ldr r1, [r4, #0]
	mov r2, #1
	tst r0, r2, lsl r1
	movne r0, r2
	moveq r0, #0
	streq r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B7E88

	arm_func_start sub_020B7EE4
sub_020B7EE4: ; 0x020B7EE4
	mov r2, #0x24
	mul r2, r0, r2
	ldr r0, _020B7EF8 ; =0x021CB3C4
	strb r1, [r0, r2]
	bx lr
	; .align 2, 0
_020B7EF8: .word 0x021CB3C4
	arm_func_end sub_020B7EE4

	arm_func_start sub_020B7EFC
sub_020B7EFC: ; 0x020B7EFC
	mov r2, #0x24
	mul r2, r0, r2
	mov r0, r1, lsl #0x10
	ldr r1, _020B7F18 ; =0x021CB3BC
	mov r0, r0, lsr #0x10
	str r0, [r1, r2]
	bx lr
	; .align 2, 0
_020B7F18: .word 0x021CB3BC
	arm_func_end sub_020B7EFC

	arm_func_start sub_020B7F1C
sub_020B7F1C: ; 0x020B7F1C
	mov r2, #0x24
	mul r2, r0, r2
	ldr r0, _020B7F30 ; =0x021CB3C0
	str r1, [r0, r2]
	bx lr
	; .align 2, 0
_020B7F30: .word 0x021CB3C0
	arm_func_end sub_020B7F1C

	arm_func_start sub_020B7F34
sub_020B7F34: ; 0x020B7F34
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r6, r0
	mov r0, r1
	mov r3, #0
	ldr r2, _020B7FC0 ; =sub_020B8884
	add r1, r5, #0x14
	str r3, [sp]
	bl sub_020BA018
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r2, #0
	str r2, [r4, #0xc]
	str r6, [r4, #0x10]
	mov r1, r5
	add r0, r4, #0x14
	str r2, [r4, #8]
	bl sub_020B9ED4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r2, _020B7FC4 ; =0x021CB3A4
	mov r1, #0x24
	mla r2, r6, r1, r2
	str r0, [r4, #8]
	mov r1, r4
	add r0, r2, #0xc
	bl sub_020A4C54
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020B7FC0: .word sub_020B8884
_020B7FC4: .word 0x021CB3A4
	arm_func_end sub_020B7F34

	arm_func_start sub_020B7FC8
sub_020B7FC8: ; 0x020B7FC8
	ldr ip, _020B7FD4 ; =sub_020B85AC
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_020B7FD4: .word sub_020B85AC
	arm_func_end sub_020B7FC8

	arm_func_start sub_020B7FD8
sub_020B7FD8: ; 0x020B7FD8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020B802C ; =0x021CB3A4
	mov r2, #0x24
	mla r6, r0, r2, r3
	ldr r5, _020B8030 ; =0x021CAF64
	mov r7, r1
	mov r4, #0
_020B7FF4:
	ldrb r0, [r5, #0x2c]
	cmp r0, #0
	beq _020B8018
	ldr r0, [r5, #4]
	cmp r0, r6
	bne _020B8018
	mov r0, r5
	mov r1, r7
	bl sub_020B85AC
_020B8018:
	add r4, r4, #1
	cmp r4, #0x10
	add r5, r5, #0x44
	blt _020B7FF4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B802C: .word 0x021CB3A4
_020B8030: .word 0x021CAF64
	arm_func_end sub_020B7FD8

	arm_func_start sub_020B8034
sub_020B8034: ; 0x020B8034
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020B8088 ; =0x021CAF64
	mov r7, r0
	mov r6, r1
	mov r4, #0
_020B8048:
	ldrb r0, [r5, #0x2c]
	cmp r0, #0
	beq _020B8074
	ldrh r0, [r5, #0x34]
	cmp r0, #1
	ldreqh r0, [r5, #0x38]
	cmpeq r0, r7
	bne _020B8074
	mov r0, r5
	mov r1, r6
	bl sub_020B85AC
_020B8074:
	add r4, r4, #1
	cmp r4, #0x10
	add r5, r5, #0x44
	blt _020B8048
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B8088: .word 0x021CAF64
	arm_func_end sub_020B8034

	arm_func_start sub_020B808C
sub_020B808C: ; 0x020B808C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020B80C8 ; =0x021CAF64
	mov r6, r0
	mov r4, #0
_020B809C:
	ldrb r0, [r5, #0x2c]
	cmp r0, #0
	beq _020B80B4
	mov r0, r5
	mov r1, r6
	bl sub_020B85AC
_020B80B4:
	add r4, r4, #1
	cmp r4, #0x10
	add r5, r5, #0x44
	blt _020B809C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B80C8: .word 0x021CAF64
	arm_func_end sub_020B808C

	arm_func_start sub_020B80CC
sub_020B80CC: ; 0x020B80CC
	ldr ip, _020B80D8 ; =sub_020B85F8
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_020B80D8: .word sub_020B85F8
	arm_func_end sub_020B80CC

	arm_func_start sub_020B80DC
sub_020B80DC: ; 0x020B80DC
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	arm_func_end sub_020B80DC

	arm_func_start sub_020B80E8
sub_020B80E8: ; 0x020B80E8
	ldr r1, [r0, #0]
	cmp r1, #0
	bxeq lr
	ldr r1, [r0, #0]
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r0, #0]
	bx lr
	arm_func_end sub_020B80E8

	arm_func_start sub_020B8108
sub_020B8108: ; 0x020B8108
	mov r1, #0x24
	mul r1, r0, r1
	ldr r0, _020B811C ; =0x021CB3AC
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_020B811C: .word 0x021CB3AC
	arm_func_end sub_020B8108

	arm_func_start sub_020B8120
sub_020B8120: ; 0x020B8120
	ldr r2, [r0, #0]
	cmp r2, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x41]
	bx lr
	arm_func_end sub_020B8120

	arm_func_start sub_020B8134
sub_020B8134: ; 0x020B8134
	ldr r2, [r0, #0]
	cmp r2, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x40]
	bx lr
	arm_func_end sub_020B8134

	arm_func_start sub_020B8148
sub_020B8148: ; 0x020B8148
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	ldrne r3, [r0]
	ldrneb r0, [r3, #0x2c]
	cmpne r0, #2
	ldmeqia sp!, {r3, pc}
	add r0, r3, #0x1c
	mov r1, r1, lsl #8
	bl sub_020BB3C0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B8148

	arm_func_start sub_020B8174
sub_020B8174: ; 0x020B8174
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x3c]
	bl sub_020C518C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B8174

	arm_func_start sub_020B8194
sub_020B8194: ; 0x020B8194
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x3c]
	bl sub_020C51A4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B8194

	arm_func_start sub_020B81B4
sub_020B81B4: ; 0x020B81B4
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x3c]
	bl sub_020C51C0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B81B4

	arm_func_start sub_020B81D4
sub_020B81D4: ; 0x020B81D4
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x3c]
	bl sub_020C515C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B81D4

	arm_func_start sub_020B81F4
sub_020B81F4: ; 0x020B81F4
	ldr r2, [r0, #0]
	cmp r2, #0
	bxeq lr
	ldr r2, [r0, #0]
	mov r3, #1
	strh r3, [r2, #0x34]
	ldr r0, [r0, #0]
	strh r1, [r0, #0x38]
	bx lr
	arm_func_end sub_020B81F4

	arm_func_start sub_020B8218
sub_020B8218: ; 0x020B8218
	ldr r3, [r0, #0]
	cmp r3, #0
	bxeq lr
	ldr r3, [r0, #0]
	mov ip, #2
	strh ip, [r3, #0x34]
	ldr r3, [r0, #0]
	strh r1, [r3, #0x38]
	ldr r0, [r0, #0]
	strh r2, [r0, #0x3a]
	bx lr
	arm_func_end sub_020B8218

	arm_func_start sub_020B8244
sub_020B8244: ; 0x020B8244
	ldr r1, [r0, #0]
	cmp r1, #0
	mvneq r0, #0
	bxeq lr
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x34]
	cmp r0, #1
	mvnne r0, #0
	ldreqh r0, [r1, #0x38]
	bx lr
	arm_func_end sub_020B8244

	arm_func_start sub_020B826C
sub_020B826C: ; 0x020B826C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r0, [r1, #0x3c]
	bl sub_020C5E0C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B826C

	arm_func_start sub_020B82A0
sub_020B82A0: ; 0x020B82A0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _020B8344 ; =0x021CAF58
	mov r1, #0x14
	bl sub_020A4C10
	ldr r0, _020B8348 ; =0x021CAF4C
	mov r1, #0x14
	bl sub_020A4C10
	mov r6, #0
	ldr r7, _020B834C ; =0x021CAF64
	ldr r4, _020B8348 ; =0x021CAF4C
	mov r5, r6
_020B82CC:
	strb r5, [r7, #0x2c]
	mov r0, r4
	mov r1, r7
	strb r6, [r7, #0x3c]
	bl sub_020A4C54
	add r6, r6, #1
	cmp r6, #0x10
	add r7, r7, #0x44
	blt _020B82CC
	mov sl, #0
	ldr sb, _020B8350 ; =0x021CB3A4
	mov r8, #0xc
	mov r7, sl
	mov r6, #0x7f
	mov r5, #1
	mov r4, sl
_020B830C:
	mov r0, sb
	mov r1, r8
	bl sub_020A4C10
	mov r1, r7
	add r0, sb, #0xc
	bl sub_020A4C10
	strb r6, [sb, #0x20]
	str r5, [sb, #0x18]
	add sl, sl, #1
	str r4, [sb, #0x1c]
	cmp sl, #0x20
	add sb, sb, #0x24
	blt _020B830C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020B8344: .word 0x021CAF58
_020B8348: .word 0x021CAF4C
_020B834C: .word 0x021CAF64
_020B8350: .word 0x021CB3A4
	arm_func_end sub_020B82A0

	arm_func_start sub_020B8354
sub_020B8354: ; 0x020B8354
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bl sub_020C5DB4
	mov fp, r0
	ldr r0, _020B84AC ; =0x021CAF58
	mov r1, #0
	bl sub_020A4DBC
	movs r6, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	ldr r5, _020B84B0 ; =0x020FDAB0
	rsb r4, r4, #0
_020B8380:
	ldr r0, _020B84AC ; =0x021CAF58
	mov r1, r6
	bl sub_020A4DBC
	ldrb r1, [r6, #0x2d]
	mov r7, r0
	cmp r1, #0
	bne _020B83B0
	ldr r0, [r6, #0x30]
	bl sub_020C5AD8
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6, #0x2d]
_020B83B0:
	ldrb r0, [r6, #0x2d]
	cmp r0, #0
	beq _020B83D8
	ldrb r1, [r6, #0x3c]
	mov r0, #1
	tst fp, r0, lsl r1
	bne _020B83D8
	mov r0, r6
	bl sub_020B8800
	b _020B849C
_020B83D8:
	add r0, r6, #0x1c
	bl sub_020BB41C
	ldr r0, [r6, #4]
	ldrb r2, [r6, #0x41]
	ldrb r0, [r0, #0x20]
	ldrb r1, [r6, #0x40]
	mov r2, r2, lsl #1
	mov r0, r0, lsl #1
	mov r1, r1, lsl #1
	ldrsh sl, [r5, r0]
	add r0, r6, #0x1c
	ldrsh r8, [r5, r2]
	ldrsh sb, [r5, r1]
	bl sub_020BB3E8
	mov r0, r0, asr #8
	mov r0, r0, lsl #1
	add r1, sb, r8
	ldrsh r0, [r5, r0]
	add r1, sl, r1
	add r8, r0, r1
	cmp r8, r4
	movlt r8, r4
	blt _020B8440
	ldr r0, _020B84B4 ; =0x00007FFF
	cmp r8, r0
	movgt r8, r0
_020B8440:
	ldrsh r0, [r6, #0x3e]
	cmp r8, r0
	beq _020B845C
	ldrb r0, [r6, #0x3c]
	mov r1, r8
	bl sub_020C5174
	strh r8, [r6, #0x3e]
_020B845C:
	ldrb r0, [r6, #0x2c]
	cmp r0, #2
	bne _020B8480
	add r0, r6, #0x1c
	bl sub_020BB434
	cmp r0, #0
	beq _020B8480
	mov r0, r6
	bl sub_020B8760
_020B8480:
	ldrb r0, [r6, #0x2f]
	cmp r0, #0
	beq _020B849C
	ldrb r0, [r6, #0x3c]
	bl sub_020C511C
	mov r0, #0
	strb r0, [r6, #0x2f]
_020B849C:
	mov r6, r7
	cmp r7, #0
	bne _020B8380
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B84AC: .word 0x021CAF58
_020B84B0: .word 0x020FDAB0
_020B84B4: .word 0x00007FFF
	arm_func_end sub_020B8354

	arm_func_start sub_020B84B8
sub_020B84B8: ; 0x020B84B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _020B854C ; =0x021CB3A4
	mov r3, #0x24
	mov r4, r0
	ldr r5, [r4, #0]
	mla r6, r1, r3, ip
	mov r7, r2
	cmp r5, #0
	beq _020B84E0
	bl sub_020B80E8
_020B84E0:
	ldrh r1, [r6, #8]
	ldr r0, [r6, #0x18]
	cmp r1, r0
	blo _020B851C
	mov r0, r6
	mov r1, #0
	bl sub_020A4DBC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r0, #0x3d]
	cmp r7, r1
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_020B8760
_020B851C:
	mov r0, r7
	bl sub_020B8798
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl sub_020B86BC
	str r4, [r5, #0]
	mov r0, r5
	str r5, [r4, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B854C: .word 0x021CB3A4
	arm_func_end sub_020B84B8

	arm_func_start sub_020B8550
sub_020B8550: ; 0x020B8550
	ldr ip, _020B8558 ; =sub_020B8800
	bx ip
	; .align 2, 0
_020B8558: .word sub_020B8800
	arm_func_end sub_020B8550

	arm_func_start sub_020B855C
sub_020B855C: ; 0x020B855C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x3c]
	ldr r4, [r5, #4]
	bl sub_020C50F4
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _020B8588
	ldrb r0, [r5, #0x3c]
	ldr r1, _020B85A8 ; =0x0000FFFF
	bl sub_020C51DC
_020B8588:
	mov r0, r5
	bl sub_020B8674
	bl sub_020C5AAC
	str r0, [r5, #0x30]
	mov r0, #1
	strb r0, [r5, #0x2f]
	strb r0, [r5, #0x2c]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B85A8: .word 0x0000FFFF
	arm_func_end sub_020B855C

	arm_func_start sub_020B85AC
sub_020B85AC: ; 0x020B85AC
	stmfd sp!, {r4, lr}
	movs r4, r0
	mov r2, r1
	ldrneb r1, [r4, #0x2c]
	cmpne r1, #0
	ldmeqia sp!, {r4, pc}
	cmp r2, #0
	bne _020B85D4
	bl sub_020B8760
	ldmia sp!, {r4, pc}
_020B85D4:
	add r0, r4, #0x1c
	mov r1, #0
	bl sub_020BB3C0
	mov r0, r4
	mov r1, #0
	bl sub_020B88D4
	mov r0, #2
	strb r0, [r4, #0x2c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B85AC

	arm_func_start sub_020B85F8
sub_020B85F8: ; 0x020B85F8
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	ldrneb r0, [r5, #0x2e]
	mov r4, r1
	cmpne r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x3c]
	bl sub_020C513C
	strb r4, [r5, #0x2e]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B85F8

	arm_func_start sub_020B8620
sub_020B8620: ; 0x020B8620
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _020B8670 ; =0x021CB3A4
	mov r2, #0x24
	mla r5, r0, r2, r3
	mov r6, r1
	add r0, r5, #0xc
	mov r1, #0
	bl sub_020A4DBC
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r4
	add r0, r5, #0xc
	bl sub_020A4D5C
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	ldr r0, [r4, #8]
	bl sub_020B9F5C
	ldr r0, [r4, #8]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B8670: .word 0x021CB3A4
	arm_func_end sub_020B8620

	arm_func_start sub_020B8674
sub_020B8674: ; 0x020B8674
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	strb r0, [r4, #0x2e]
	strb r0, [r4, #0x2d]
	strb r0, [r4, #0x2f]
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x3e]
	mov r1, #0x7f
	strb r1, [r4, #0x40]
	add r0, r4, #0x1c
	strb r1, [r4, #0x41]
	bl sub_020BB3A8
	add r0, r4, #0x1c
	mov r1, #0x7f00
	mov r2, #1
	bl sub_020BB3C0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B8674

	arm_func_start sub_020B86BC
sub_020B86BC: ; 0x020B86BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0
	mov r5, r0
	bl sub_020A4DBC
	movs r1, r0
	beq _020B86F8
_020B86D8:
	ldrb r2, [r4, #0x3d]
	ldrb r0, [r1, #0x3d]
	cmp r2, r0
	blo _020B86F8
	mov r0, r5
	bl sub_020A4DBC
	movs r1, r0
	bne _020B86D8
_020B86F8:
	mov r0, r5
	mov r2, r4
	bl sub_020A4CF8
	str r5, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B86BC

	arm_func_start sub_020B870C
sub_020B870C: ; 0x020B870C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020B875C ; =0x021CAF58
	mov r1, #0
	bl sub_020A4DBC
	movs r1, r0
	beq _020B874C
	ldr r4, _020B875C ; =0x021CAF58
_020B872C:
	ldrb r2, [r5, #0x3d]
	ldrb r0, [r1, #0x3d]
	cmp r2, r0
	blo _020B874C
	mov r0, r4
	bl sub_020A4DBC
	movs r1, r0
	bne _020B872C
_020B874C:
	ldr r0, _020B875C ; =0x021CAF58
	mov r2, r5
	bl sub_020A4CF8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B875C: .word 0x021CAF58
	arm_func_end sub_020B870C

	arm_func_start sub_020B8760
sub_020B8760: ; 0x020B8760
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x2c]
	cmp r0, #2
	bne _020B8780
	ldrb r0, [r4, #0x3c]
	ldr r1, _020B8794 ; =0xFFFFFD2D
	bl sub_020C5174
_020B8780:
	ldrb r0, [r4, #0x3c]
	bl sub_020C50D4
	mov r0, r4
	bl sub_020B8800
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B8794: .word 0xFFFFFD2D
	arm_func_end sub_020B8760

	arm_func_start sub_020B8798
sub_020B8798: ; 0x020B8798
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020B87F8 ; =0x021CAF4C
	mov r1, #0
	bl sub_020A4DBC
	movs r4, r0
	bne _020B87D8
	ldr r0, _020B87FC ; =0x021CAF58
	mov r1, #0
	bl sub_020A4DBC
	mov r4, r0
	ldrb r1, [r4, #0x3d]
	cmp r5, r1
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	bl sub_020B8760
_020B87D8:
	ldr r0, _020B87F8 ; =0x021CAF4C
	mov r1, r4
	bl sub_020A4D5C
	mov r0, r4
	strb r5, [r4, #0x3d]
	bl sub_020B870C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B87F8: .word 0x021CAF4C
_020B87FC: .word 0x021CAF58
	arm_func_end sub_020B8798

	arm_func_start sub_020B8800
sub_020B8800: ; 0x020B8800
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	strne r0, [r4]
	ldr r5, [r4, #4]
	mov r1, r4
	mov r0, r5
	bl sub_020A4D5C
	mov r0, #0
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020B8858
	add r0, r5, #0xc
	bl sub_020A4C54
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r4, #8]
_020B8858:
	ldr r0, _020B887C ; =0x021CAF58
	mov r1, r4
	bl sub_020A4D5C
	ldr r0, _020B8880 ; =0x021CAF4C
	mov r1, r4
	bl sub_020A4C54
	mov r0, #0
	strb r0, [r4, #0x2c]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B887C: .word 0x021CAF58
_020B8880: .word 0x021CAF4C
	arm_func_end sub_020B8800

	arm_func_start sub_020B8884
sub_020B8884: ; 0x020B8884
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020B9F44
	ldr r1, [r4, #0xc]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #8]
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0x10]
	ldr r2, _020B88D0 ; =0x021CB3A4
	mov r0, #0x24
	mla r0, r1, r0, r2
	mov r1, r4
	add r0, r0, #0xc
	bl sub_020A4D5C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B88D0: .word 0x021CB3A4
	arm_func_end sub_020B8884

	arm_func_start sub_020B88D4
sub_020B88D4: ; 0x020B88D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #4]
	mov r5, r1
	cmp r4, #0
	beq _020B8900
	mov r0, r4
	mov r1, r6
	bl sub_020A4D5C
	mov r0, #0
	str r0, [r6, #4]
_020B8900:
	ldr r0, _020B8930 ; =0x021CAF58
	mov r1, r6
	bl sub_020A4D5C
	strb r5, [r6, #0x3d]
	cmp r4, #0
	beq _020B8924
	mov r0, r4
	mov r1, r6
	bl sub_020B86BC
_020B8924:
	mov r0, r6
	bl sub_020B870C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B8930: .word 0x021CAF58
	arm_func_end sub_020B88D4

	arm_func_start sub_020B8934
sub_020B8934: ; 0x020B8934
	stmfd sp!, {r4, lr}
	ldr r1, _020B899C ; =0x021CB824
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _020B8964
	ldr r0, _020B89A0 ; =0x021CB828
	mov r1, #0
	bl sub_020A4C10
	ldr r0, _020B899C ; =0x021CB824
	mov r1, #1
	str r1, [r0, #0]
_020B8964:
	ldr r1, _020B89A4 ; =sub_020B8E14
	ldr r0, _020B89A8 ; =sub_020B8E60
	str r1, [r4, #8]
	str r4, [r4, #0xc]
	str r0, [r4, #0x14]
	str r4, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x24]
	bic r0, r0, #1
	bic r0, r0, #2
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B899C: .word 0x021CB824
_020B89A0: .word 0x021CB828
_020B89A4: .word sub_020B8E14
_020B89A8: .word sub_020B8E60
	arm_func_end sub_020B8934

	arm_func_start sub_020B89AC
sub_020B89AC: ; 0x020B89AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r6, #0
	mov r5, r0
	mov ip, r6
	cmp r4, #0
	ble _020B89EC
	mov r1, #1
_020B89CC:
	ldrb r3, [r2, ip]
	add r0, r5, ip
	strb r3, [r0, #0x4c]
	ldrb r0, [r2, ip]
	add ip, ip, #1
	cmp ip, r4
	orr r6, r6, r1, lsl r0
	blt _020B89CC
_020B89EC:
	mov r0, r6
	bl sub_020B7AC4
	cmp r0, #0
	moveq r0, #0
	strne r4, [r5, #0x48]
	strne r6, [r5, #0x44]
	movne r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B89AC

	arm_func_start sub_020B8A0C
sub_020B8A0C: ; 0x020B8A0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020B7B0C
	mov r0, #0
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B8A0C

	arm_func_start sub_020B8A34
sub_020B8A34: ; 0x020B8A34
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	ldr r4, [sl, #0x24]
	mov sb, r1
	mov r1, r4, lsl #0x1f
	mov r8, r2
	mov r4, r3
	movs r1, r1, asr #0x1f
	ldr fp, [sp, #0x44]
	beq _020B8A64
	bl sub_020B8C28
_020B8A64:
	ldr r2, [sl, #0x48]
	mov r0, fp, lsl #5
	mul r1, r2, r0
	mov r0, r4
	bl sub_020E2178
	mul r1, r0, r11
	mov r0, r1, lsl #5
	ldr r2, [sp, #0x40]
	str r0, [sl, #0x28]
	cmp sb, #1
	moveq r0, r0, lsr #1
	mul r0, r2, r0
	mov r1, fp
	bl sub_020E2178
	str r0, [sp, #0x18]
	bl sub_020B7B7C
	cmp r0, #0
	str r0, [sl, #0x40]
	addlt sp, sp, #0x1c
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x48]
	mov r6, #0
	cmp r0, #0
	ble _020B8B3C
	ldr r0, [sp, #0x40]
	ldr r5, _020B8BC8 ; =0x021CB874
	mov r7, r0, lsl #5
	mov r4, r6
_020B8AD8:
	ldr r1, [sl, #0x28]
	add r0, sl, r6
	mla r2, r1, r6, r8
	ldrb r0, [r0, #0x4c]
	mov r3, #1
	str r2, [r5, r0, lsl #3]
	add r1, r5, r0, lsl #3
	str r4, [r1, #4]
	str r4, [sp]
	ldr r2, [sl, #0x28]
	mov r1, sb
	mov r2, r2, lsr #2
	str r2, [sp, #4]
	mov r2, #0x7f
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r2, #0x40
	str r2, [sp, #0x14]
	ldr r2, [r5, r0, lsl #3]
	bl sub_020C53B8
	ldr r0, [sl, #0x48]
	add r6, r6, #1
	cmp r6, r0
	blt _020B8AD8
_020B8B3C:
	str sl, [sp]
	ldr r1, [sp, #0x18]
	ldr r0, [sl, #0x40]
	ldr r3, _020B8BCC ; =sub_020B8D54
	mov r2, r1
	bl sub_020C52D0
	ldr r0, _020B8BD0 ; =0x021CB828
	mov r1, sl
	bl sub_020A4C54
	str sb, [sl, #0x20]
	ldr r1, [sp, #0x48]
	str fp, [sl, #0x2c]
	ldr r0, [sp, #0x4c]
	str r1, [sl, #0x30]
	str r0, [sl, #0x34]
	mov r0, #0
	str r0, [sl, #0x38]
	str r0, [sl, #0x3c]
	ldr r0, [sl, #0x24]
	bic r0, r0, #1
	orr r0, r0, #1
	str r0, [sl, #0x24]
	bl sub_020C3D98
	mov r4, r0
	mov r2, #1
	mov r0, sl
	mov r1, #0
	str r2, [sl, #0x2c]
	bl sub_020B8D64
	mov r0, r4
	str fp, [sl, #0x2c]
	bl sub_020C3DAC
	mov r0, #1
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B8BC8: .word 0x021CB874
_020B8BCC: .word sub_020B8D54
_020B8BD0: .word 0x021CB828
	arm_func_end sub_020B8A34

	arm_func_start sub_020B8BD4
sub_020B8BD4: ; 0x020B8BD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	mov r2, #1
	mov r1, #0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x44]
	mov r3, r1
	bl sub_020C5204
	ldr r0, [r4, #0x24]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	ldmneia sp!, {r4, pc}
	add r0, r4, #8
	bl sub_020CB848
	add r0, r4, #0x14
	bl sub_020CB860
	ldr r0, [r4, #0x24]
	orr r0, r0, #2
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B8BD4

	arm_func_start sub_020B8C28
sub_020B8C28: ; 0x020B8C28
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x24]
	mov r1, r1, lsl #0x1f
	movs r1, r1, asr #0x1f
	ldmeqia sp!, {r3, pc}
	bl sub_020B8CB0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B8C28

	arm_func_start sub_020B8C44
sub_020B8C44: ; 0x020B8C44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	str r1, [r7, #0x3c]
	ldr r0, [r7, #0x48]
	mov r6, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _020B8CAC ; =0x021CB874
	mov r8, #1
_020B8C68:
	add r0, r7, r6
	ldrb r5, [r0, #0x4c]
	ldr r1, [r7, #0x3c]
	add r0, r4, r5, lsl #3
	ldr r0, [r0, #4]
	add r0, r1, r0
	bl sub_020C5EEC
	mov r2, r0
	mov r0, r8, lsl r5
	and r1, r2, #0xff
	mov r2, r2, asr #8
	bl sub_020C5370
	ldr r0, [r7, #0x48]
	add r6, r6, #1
	cmp r6, r0
	blt _020B8C68
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B8CAC: .word 0x021CB874
	arm_func_end sub_020B8C44

	arm_func_start sub_020B8CB0
sub_020B8CB0: ; 0x020B8CB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _020B8D18
	ldr r0, [r4, #0x40]
	mov r2, #1
	mov r1, #0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x44]
	mov r3, r1
	bl sub_020C522C
	add r0, r4, #8
	bl sub_020CB878
	add r0, r4, #0x14
	bl sub_020CB890
	ldr r0, [r4, #0x24]
	bic r0, r0, #2
	str r0, [r4, #0x24]
	bl sub_020C5AAC
	mov r5, r0
	mov r0, #1
	bl sub_020C5884
	mov r0, r5
	bl sub_020C5A40
_020B8D18:
	mov r0, r4
	bl sub_020B8D24
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B8CB0

	arm_func_start sub_020B8D24
sub_020B8D24: ; 0x020B8D24
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	bl sub_020B7BC4
	ldr r0, _020B8D50 ; =0x021CB828
	mov r1, r4
	bl sub_020A4D5C
	ldr r0, [r4, #0x24]
	bic r0, r0, #1
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B8D50: .word 0x021CB828
	arm_func_end sub_020B8D24

	arm_func_start sub_020B8D54
sub_020B8D54: ; 0x020B8D54
	ldr ip, _020B8D60 ; =sub_020B8D64
	mov r1, #1
	bx ip
	; .align 2, 0
_020B8D60: .word sub_020B8D64
	arm_func_end sub_020B8D54

	arm_func_start sub_020B8D64
sub_020B8D64: ; 0x020B8D64
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_020E2178
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x38]
	mov r3, r0
	mul ip, r3, r2
	cmp r1, #0
	mov lr, #0
	ble _020B8DC8
	ldr r2, _020B8E0C ; =0x021CB874
	ldr r0, _020B8E10 ; =0x021CB834
_020B8DA4:
	add r1, r5, lr
	ldrb r1, [r1, #0x4c]
	ldr r1, [r2, r1, lsl #3]
	add r1, r1, ip
	str r1, [r0, lr, lsl #2]
	ldr r1, [r5, #0x48]
	add lr, lr, #1
	cmp lr, r1
	blt _020B8DA4
_020B8DC8:
	ldr r0, [r5, #0x20]
	ldr r2, _020B8E10 ; =0x021CB834
	str r0, [sp]
	ldr ip, [r5, #0x34]
	mov r0, r4
	str ip, [sp, #4]
	ldr r4, [r5, #0x30]
	blx r4
	ldr r0, [r5, #0x38]
	add r1, r0, #1
	str r1, [r5, #0x38]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	movge r0, #0
	strge r0, [r5, #0x38]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B8E0C: .word 0x021CB874
_020B8E10: .word 0x021CB834
	arm_func_end sub_020B8D64

	arm_func_start sub_020B8E14
sub_020B8E14: ; 0x020B8E14
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x24]
	mov r1, r1, lsl #0x1e
	movs r1, r1, asr #0x1f
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0, #0x40]
	mov r3, #1
	mov r1, #0
	mov r2, r3, lsl r2
	ldr r0, [r0, #0x44]
	mov r3, r1
	bl sub_020C522C
	bl sub_020C5AAC
	mov r4, r0
	mov r0, #1
	bl sub_020C5884
	mov r0, r4
	bl sub_020C5A40
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B8E14

	arm_func_start sub_020B8E60
sub_020B8E60: ; 0x020B8E60
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _020B8EB0
	mov r5, #1
_020B8E88:
	bl sub_020C3D98
	mov r6, r0
	mov r0, r4
	mov r1, r5
	bl sub_020B8D64
	mov r0, r6
	bl sub_020C3DAC
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _020B8E88
_020B8EB0:
	ldr r0, [r4, #0x40]
	mov r2, #1
	mov r1, #0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x44]
	mov r3, r1
	bl sub_020C5204
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B8E60

	arm_func_start sub_020B8ED0
sub_020B8ED0: ; 0x020B8ED0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	mov r0, #0
	mov r4, r1
	mov r7, r2
	mov r6, r3
	bl sub_020B8FBC
	ldr r0, _020B8F74 ; =0x021CB8F4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	addne sp, sp, #0x2c
	mov r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r1, r5
	mov r2, r4
	bl sub_020C4B4C
	mov r0, r5
	mov r1, r4
	bl sub_020C2C54
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x40]
	str r6, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r1, #0x7f
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r1, r5
	mov r3, r4, lsr #1
	add r2, r5, r4, lsr #1
	str r0, [sp, #0x28]
	bl sub_020B919C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020B8F74: .word 0x021CB8F4
	arm_func_end sub_020B8ED0

	arm_func_start sub_020B8F78
sub_020B8F78: ; 0x020B8F78
	stmfd sp!, {r3, lr}
	ldr r2, _020B8FB4 ; =0x021CB8F4
	mov r3, r0
	ldr r0, [r2, #0x48]
	mov r2, r1
	cmp r0, #0
	ldr r1, _020B8FB8 ; =0x021CB93C
	ldmeqia sp!, {r3, pc}
	ldr r0, [r1, #4]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r1, #0x3c
	mov r1, r3, lsl #8
	bl sub_020BB3C0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B8FB4: .word 0x021CB8F4
_020B8FB8: .word 0x021CB93C
	arm_func_end sub_020B8F78

	arm_func_start sub_020B8FBC
sub_020B8FBC: ; 0x020B8FBC
	stmfd sp!, {r4, lr}
	ldr r1, _020B900C ; =0x021CB8F4
	mov r2, r0
	ldr r0, [r1, #0x48]
	ldr r4, _020B9010 ; =0x021CB93C
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	cmp r2, #0
	bne _020B8FF4
	bl sub_020B9508
	ldmia sp!, {r4, pc}
_020B8FF4:
	add r0, r4, #0x3c
	mov r1, #0
	bl sub_020BB3C0
	mov r0, #1
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B900C: .word 0x021CB8F4
_020B9010: .word 0x021CB93C
	arm_func_end sub_020B8FBC

	arm_func_start sub_020B9014
sub_020B9014: ; 0x020B9014
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	mov r4, r1
	mov r7, r2
	mov r6, r3
	bl sub_020B90C0
	ldr r0, _020B90BC ; =0x021CB8F4
	ldr r0, [r0, #0x48]
	cmp r0, #0
	addne sp, sp, #0x2c
	mov r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r1, r5
	mov r2, r4
	bl sub_020C4B4C
	mov r0, r5
	mov r1, r4
	bl sub_020C2C54
	str r7, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r1, #0x7f
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr ip, [sp, #0x48]
	mov r1, r5
	mov r3, r4, lsr #1
	add r2, r5, r4, lsr #1
	str ip, [sp, #0x28]
	bl sub_020B919C
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020B90BC: .word 0x021CB8F4
	arm_func_end sub_020B9014

	arm_func_start sub_020B90C0
sub_020B90C0: ; 0x020B90C0
	stmfd sp!, {r3, lr}
	ldr r0, _020B90E8 ; =0x021CB8F4
	ldr r1, [r0, #0x48]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x4c]
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	bl sub_020B9508
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B90E8: .word 0x021CB8F4
	arm_func_end sub_020B90C0

	arm_func_start sub_020B90EC
sub_020B90EC: ; 0x020B90EC
	ldr r0, _020B90F8 ; =0x021CB8F4
	ldr r0, [r0, #0x48]
	bx lr
	; .align 2, 0
_020B90F8: .word 0x021CB8F4
	arm_func_end sub_020B90EC

	arm_func_start sub_020B90FC
sub_020B90FC: ; 0x020B90FC
	ldr r0, _020B9110 ; =0x021CB8F4
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #0x48]
	bx lr
	; .align 2, 0
_020B9110: .word 0x021CB8F4
	arm_func_end sub_020B90FC

	arm_func_start sub_020B9114
sub_020B9114: ; 0x020B9114
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020B9194 ; =0x021CB8F4
	ldr r4, _020B9198 ; =0x021CB93C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	add r0, r4, #0x3c
	bl sub_020BB41C
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _020B9164
	add r0, r4, #0x3c
	bl sub_020BB434
	cmp r0, #0
	beq _020B9164
	bl sub_020B9508
	ldmia sp!, {r3, r4, r5, pc}
_020B9164:
	add r0, r4, #0x3c
	bl sub_020BB3E8
	ldr r1, [r4, #0x50]
	mov r5, r0, asr #8
	cmp r5, r1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x24]
	mov r1, r5
	mov r2, #0
	bl sub_020C5370
	str r5, [r4, #0x50]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B9194: .word 0x021CB8F4
_020B9198: .word 0x021CB93C
	arm_func_end sub_020B9114

	arm_func_start sub_020B919C
sub_020B919C: ; 0x020B919C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	str r1, [sp, #0x1c]
	mov r1, #0
	str r0, [sp, #0x18]
	str r1, [sp, #0x3c]
	mov sl, r3
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x1c]
	mov r1, sl
	str r2, [sp, #0x38]
	mov r4, r2
	sub r5, r2, #1
	ldr sb, [sp, #0x74]
	ldr r8, [sp, #0x7c]
	ldr r6, _020B94FC ; =0x021CB93C
	bl sub_020C2C54
	ldr r0, [sp, #0x20]
	mov r1, sl
	bl sub_020C2C54
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x78]
	cmp r0, #1
	moveq r7, #1
	ldr r0, _020B9500 ; =0x00FFB0FF
	movne r7, #0
	bl sub_020E1F6C
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	beq _020B926C
	ldr r1, [sp, #0x34]
	mov r0, sl
	add r1, r1, #0x10
	bic r1, r1, #0x1f
	str r1, [sp, #0x34]
	mov r1, r1, asr #5
	str r1, [sp, #0x2c]
	cmp r7, #0
	ldr r1, [sp, #0x88]
	moveq r0, sl, lsr #1
	bl sub_020E2178
	ldr r1, [sp, #0x2c]
	mov fp, #0x20
	mul r0, r1, r0
	str r0, [sp, #0x30]
	cmp r7, #0
	ldr r0, [sp, #0x2c]
	moveq fp, fp, lsr #1
	mul r0, fp, r0
	mov fp, r0
_020B926C:
	cmp r7, #0
	movne r0, #0
	strne r0, [sp, #0x28]
	moveq r0, #1
	streq r0, [sp, #0x28]
	cmp r7, #0
	movne r0, #1
	strne r0, [sp, #0x24]
	moveq r0, #0
	streq r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	orr r4, r4, #3
	cmp r0, #2
	ldr r0, [sp, #0x3c]
	orr r0, r0, #0xa
	str r0, [sp, #0x3c]
	strne r0, [sp, #0x38]
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	beq _020B92D0
	bl sub_020B7B7C
	movs r5, r0
	addmi sp, sp, #0x40
	movmi r0, #0
	ldmmiia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B92D0:
	mov r0, r4
	bl sub_020B7B3C
	cmp r0, #0
	bne _020B92FC
	cmp r5, #0
	blt _020B92F0
	mov r0, r5
	bl sub_020B7BC4
_020B92F0:
	add sp, sp, #0x40
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B92FC:
	ldr r0, [sp, #0x3c]
	bl sub_020B7AC4
	cmp r0, #0
	bne _020B9330
	cmp r5, #0
	blt _020B931C
	mov r0, r5
	bl sub_020B7BC4
_020B931C:
	mov r0, r4
	bl sub_020B7B60
	add sp, sp, #0x40
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B9330:
	mov r7, sl, lsr #2
	mov r0, #0
	stmia sp, {r0, r7, r8}
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	cmp sb, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x80]
	movne r3, #1
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x1c]
	moveq r3, #2
	mov r0, #1
	bl sub_020C53B8
	ldr r1, [sp, #0x6c]
	str sb, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x24]
	str r0, [sp, #8]
	ldr r2, [sp, #0x1c]
	mov r0, #0
	mov r3, r7
	bl sub_020C5290
	mov r0, #0
	stmia sp, {r0, r7, r8}
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	cmp sb, #0
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x84]
	movne r3, #1
	str r2, [sp, #0x14]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x20]
	moveq r3, #2
	mov r0, #3
	bl sub_020C53B8
	ldr r2, [sp, #0x6c]
	str sb, [sp]
	str r2, [sp, #4]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x24]
	str r0, [sp, #8]
	ldr r2, [sp, #0x20]
	mov r3, r7
	mov r0, #1
	bl sub_020C5290
	cmp r5, #0
	blt _020B9418
	ldr r1, [sp, #0x30]
	ldr r3, _020B9504 ; =sub_020B96DC
	ldr r2, [sp, #0x30]
	mov r0, r5
	add r1, r1, fp
	str r6, [sp]
	bl sub_020C52D0
_020B9418:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _020B9438
	mov r0, #1
	mov r2, r0
	mov r3, r0
	mov r1, #2
	bl sub_020C5484
_020B9438:
	cmp r5, #0
	movge r0, #1
	movge r2, r0, lsl r5
	ldr r0, [sp, #0x38]
	movlt r2, #0
	mov r1, r4
	mov r3, #0
	bl sub_020C5204
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x38]
	str r0, [r6, #4]
	mov r0, #1
	str r2, [r6, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [r6, #0]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x68]
	str r2, [r6, #0xc]
	ldr r2, [sp, #0x20]
	str r0, [r6, #0x20]
	ldr r1, [sp, #0x88]
	mov r0, sl
	str r4, [r6, #0x28]
	str r5, [r6, #0x2c]
	str r3, [r6, #8]
	str r2, [r6, #0x10]
	str sl, [r6, #0x14]
	bl sub_020E2178
	ldr r3, [sp, #0x88]
	ldr r2, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	str r0, [r6, #0x18]
	mov r4, #0
	add r0, r6, #0x3c
	str r4, [r6, #0x1c]
	str r3, [r6, #0x30]
	str r2, [r6, #0x34]
	str r1, [r6, #0x38]
	str r8, [r6, #0x50]
	bl sub_020BB3A8
	add r0, r6, #0x3c
	mov r1, r8, lsl #8
	mov r2, #1
	bl sub_020BB3C0
	mov r0, r4
	str r0, [r6, #0x4c]
	mov r0, #1
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B94FC: .word 0x021CB93C
_020B9500: .word 0x00FFB0FF
_020B9504: .word sub_020B96DC
	arm_func_end sub_020B919C

	arm_func_start sub_020B9508
sub_020B9508: ; 0x020B9508
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020B95EC ; =0x021CB8F4
	ldr r4, _020B95F0 ; =0x021CB93C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0x2c]
	mov r3, #0
	cmp r1, #0
	movge r7, #1
	movlt r7, #0
	cmp r7, #0
	movne r0, #1
	movne r2, r0, lsl r1
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	moveq r2, #0
	bl sub_020C522C
	cmp r7, #0
	beq _020B9590
	bl sub_020C5AAC
	mov r5, r0
	mov r0, #1
	bl sub_020C5884
	mov r0, r5
	bl sub_020C5A40
	ldr r6, _020B95F4 ; =0x021CB8FC
	mov r5, #0
_020B9578:
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl sub_020C2804
	cmp r0, #0
	bne _020B9578
_020B9590:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _020B95A0
	bl sub_020B7B60
_020B95A0:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _020B95B0
	bl sub_020B7B0C
_020B95B0:
	cmp r7, #0
	beq _020B95C0
	ldr r0, [r4, #0x2c]
	bl sub_020B7BC4
_020B95C0:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _020B95E0
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	bl sub_020C5484
_020B95E0:
	mov r0, #0
	str r0, [r4, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B95EC: .word 0x021CB8F4
_020B95F0: .word 0x021CB93C
_020B95F4: .word 0x021CB8FC
	arm_func_end sub_020B9508

	arm_func_start sub_020B95F8
sub_020B95F8: ; 0x020B95F8
	stmfd sp!, {r4, lr}
	ldr r0, _020B9650 ; =0x021CB8F4
	ldr r3, _020B9654 ; =0x021CB93C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r3, #0x2c]
	cmp r1, #0
	movge r0, #1
	movge r2, r0, lsl r1
	ldr r0, [r3, #0x24]
	ldr r1, [r3, #0x28]
	movlt r2, #0
	mov r3, #0
	bl sub_020C522C
	bl sub_020C5AAC
	mov r4, r0
	mov r0, #1
	bl sub_020C5884
	mov r0, r4
	bl sub_020C5A40
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B9650: .word 0x021CB8F4
_020B9654: .word 0x021CB93C
	arm_func_end sub_020B95F8

	arm_func_start sub_020B9658
sub_020B9658: ; 0x020B9658
	stmfd sp!, {r4, lr}
	ldr r0, _020B96D4 ; =0x021CB8F4
	ldr r4, _020B96D8 ; =0x021CB93C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0xc]
	mov r0, #0
	ldr r2, [r4, #0x14]
	str r0, [r4, #0x1c]
	bl sub_020C4B4C
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	mov r0, #0
	bl sub_020C4B4C
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_020C2C54
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl sub_020C2C54
	ldr r1, [r4, #0x2c]
	mov r3, #0
	cmp r1, #0
	movge r0, #1
	movge r2, r0, lsl r1
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	movlt r2, #0
	bl sub_020C5204
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B96D4: .word 0x021CB8F4
_020B96D8: .word 0x021CB93C
	arm_func_end sub_020B9658

	arm_func_start sub_020B96DC
sub_020B96DC: ; 0x020B96DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r6, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	ldr r0, _020B97BC ; =0x021CB8F4
	mul r2, r6, r1
	ldr r4, [r7, #0xc]
	ldr r3, [r7, #0x10]
	ldr r1, [r0, #0]
	add r4, r4, r2
	cmp r1, #0
	add r5, r3, r2
	beq _020B9764
	ldr r1, [r0, #4]
	mov r0, #0x14
	mul r3, r1, r0
	ldr r1, _020B97C0 ; =0x021CB990
	ldr r0, _020B97C4 ; =0x021CB8FC
	str r7, [r1, r3]
	add r1, r1, r3
	str r6, [r1, #4]
	str r2, [r1, #8]
	str r4, [r1, #0xc]
	mov r2, #0
	str r5, [r1, #0x10]
	bl sub_020C2770
	ldr r0, _020B97BC ; =0x021CB8F4
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	cmp r1, #8
	movge r1, #0
	strge r1, [r0, #4]
	b _020B979C
_020B9764:
	mov r0, r4
	mov r1, r6
	bl sub_020C2C1C
	mov r0, r5
	mov r1, r6
	bl sub_020C2C1C
	ldr r1, [r7, #0x38]
	mov r0, r4
	str r1, [sp]
	ldr r3, [r7, #8]
	ldr r4, [r7, #0x34]
	mov r1, r5
	mov r2, r6
	blx r4
_020B979C:
	ldr r0, [r7, #0x1c]
	add r1, r0, #1
	str r1, [r7, #0x1c]
	ldr r0, [r7, #0x30]
	cmp r1, r0
	movge r0, #0
	strge r0, [r7, #0x1c]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B97BC: .word 0x021CB8F4
_020B97C0: .word 0x021CB990
_020B97C4: .word 0x021CB8FC
	arm_func_end sub_020B96DC

	arm_func_start sub_020B97C8
sub_020B97C8: ; 0x020B97C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov ip, #0
	str ip, [r6, #0x8c]
	str ip, [r6, #0x84]
	str ip, [r6, #0x88]
	add r0, r6, #0x7c
	mov r5, r2
	mov r4, r3
	str ip, [r6, #0x90]
	bl sub_020C7F88
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r6, #0x34
	bl sub_020C7DA0
	add r1, r6, #0x7c
	add r0, r6, #0x34
	ldmia r1, {r1, r2}
	bl sub_020C8010
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r3, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r3, [r6, #0x30]
	bl sub_020B9848
	cmp r0, #0
	ldrne r0, _020B9844 ; =0x021CBEF0
	strne r6, [r0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B9844: .word 0x021CBEF0
	arm_func_end sub_020B97C8

	arm_func_start sub_020B9848
sub_020B9848: ; 0x020B9848
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	mov r1, #0
	mov r6, r2
	mov r2, r1
	add r0, r5, #0x34
	bl sub_020C81E4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r5, #0x34
	mov r2, #0x30
	bl sub_020C81D4
	cmp r0, #0x30
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	cmp r4, #0
	beq _020B9A08
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x1c]
	ldr r2, _020B9A14 ; =sub_020B9EB0
	mov r0, r4
	mov r3, r5
	bl sub_020BA018
	cmp r0, #0
	str r0, [r5, #0x8c]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x18]
	add r0, r5, #0x34
	mov r2, #0
	bl sub_020C81E4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x8c]
	ldr r2, [r5, #0x1c]
	add r0, r5, #0x34
	bl sub_020C81D4
	ldr r1, [r5, #0x1c]
	cmp r0, r1
	addne sp, sp, #4
	mov r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	str r0, [sp]
	ldr r1, [r5, #0x24]
	ldr r2, _020B9A18 ; =sub_020B9EBC
	mov r0, r4
	mov r3, r5
	bl sub_020BA018
	cmp r0, #0
	str r0, [r5, #0x84]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x20]
	add r0, r5, #0x34
	mov r2, #0
	bl sub_020C81E4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x84]
	ldr r2, [r5, #0x24]
	add r0, r5, #0x34
	bl sub_020C81D4
	ldr r1, [r5, #0x24]
	cmp r0, r1
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	cmp r6, #0
	ldrne r1, [r5, #0x14]
	cmpne r1, #0
	beq _020B9A08
	ldr r2, _020B9A1C ; =sub_020B9EC8
	mov ip, #0
	mov r0, r4
	mov r3, r5
	str ip, [sp]
	bl sub_020BA018
	cmp r0, #0
	str r0, [r5, #0x88]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x10]
	add r0, r5, #0x34
	mov r2, #0
	bl sub_020C81E4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x88]
	ldr r2, [r5, #0x14]
	add r0, r5, #0x34
	bl sub_020C81D4
	ldr r1, [r5, #0x14]
	cmp r0, r1
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
_020B9A08:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020B9A14: .word sub_020B9EB0
_020B9A18: .word sub_020B9EBC
_020B9A1C: .word sub_020B9EC8
	arm_func_end sub_020B9848

	arm_func_start sub_020B9A20
sub_020B9A20: ; 0x020B9A20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	mov r1, r5
	mov r2, #0x30
	bl sub_020C4B68
	ldr r0, [r5, #0x18]
	mov r3, #0
	cmp r0, #0
	moveq r0, #0
	addne r0, r4, r0
	str r0, [r5, #0x8c]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	moveq r0, #0
	addne r0, r4, r0
	str r0, [r5, #0x84]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	moveq r0, #0
	addne r0, r4, r0
	str r0, [r5, #0x88]
	str r3, [r5, #0x90]
	ldr r2, [r5, #0x84]
	ldr r0, [r2, #8]
	cmp r0, #0
	bls _020B9ACC
	mov ip, r3
	mov r1, r3
_020B9A98:
	add r2, r2, #0xc
	ldr r0, [r2, ip]
	add r2, r2, ip
	cmp r0, #0
	moveq r0, r1
	addne r0, r4, r0
	str r0, [r2, #8]
	ldr r2, [r5, #0x84]
	add r3, r3, #1
	ldr r0, [r2, #8]
	add ip, ip, #0x10
	cmp r3, r0
	blo _020B9A98
_020B9ACC:
	mov r1, #0
	ldr r0, _020B9AE0 ; =0x021CBEF0
	str r1, [r5, #0x30]
	str r5, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B9AE0: .word 0x021CBEF0
	arm_func_end sub_020B9A20

	arm_func_start sub_020B9AE4
sub_020B9AE4: ; 0x020B9AE4
	ldr r1, _020B9AF8 ; =0x021CBEF0
	ldr r2, [r1, #0]
	str r0, [r1, #0]
	mov r0, r2
	bx lr
	; .align 2, 0
_020B9AF8: .word 0x021CBEF0
	arm_func_end sub_020B9AE4

	arm_func_start sub_020B9AFC
sub_020B9AFC: ; 0x020B9AFC
	ldr r0, _020B9B08 ; =0x021CBEF0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020B9B08: .word 0x021CBEF0
	arm_func_end sub_020B9AFC

	arm_func_start sub_020B9B0C
sub_020B9B0C: ; 0x020B9B0C
	stmfd sp!, {r3, lr}
	bl sub_020B9B24
	cmp r0, #0
	moveq r0, #0
	addne r0, r0, #4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B9B0C

	arm_func_start sub_020B9B24
sub_020B9B24: ; 0x020B9B24
	ldr r1, _020B9B84 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #8]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9B84: .word 0x021CBEF0
	arm_func_end sub_020B9B24

	arm_func_start sub_020B9B88
sub_020B9B88: ; 0x020B9B88
	ldr r1, _020B9BE8 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0xc]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9BE8: .word 0x021CBEF0
	arm_func_end sub_020B9B88

	arm_func_start sub_020B9BEC
sub_020B9BEC: ; 0x020B9BEC
	ldr r1, _020B9C4C ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9C4C: .word 0x021CBEF0
	arm_func_end sub_020B9BEC

	arm_func_start sub_020B9C50
sub_020B9C50: ; 0x020B9C50
	ldr r1, _020B9CB0 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0x14]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9CB0: .word 0x021CBEF0
	arm_func_end sub_020B9C50

	arm_func_start sub_020B9CB4
sub_020B9CB4: ; 0x020B9CB4
	ldr r1, _020B9D14 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0x18]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9D14: .word 0x021CBEF0
	arm_func_end sub_020B9CB4

	arm_func_start sub_020B9D18
sub_020B9D18: ; 0x020B9D18
	ldr r1, _020B9D78 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0x1c]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9D78: .word 0x021CBEF0
	arm_func_end sub_020B9D18

	arm_func_start sub_020B9D7C
sub_020B9D7C: ; 0x020B9D7C
	ldr r1, _020B9DA0 ; =0x021CBEF0
	ldr r1, [r1, #0]
	ldr r2, [r1, #0x84]
	ldr r1, [r2, #8]
	cmp r0, r1
	movhs r0, #0
	addlo r0, r2, r0, lsl #4
	ldrlo r0, [r0, #0x10]
	bx lr
	; .align 2, 0
_020B9DA0: .word 0x021CBEF0
	arm_func_end sub_020B9D7C

	arm_func_start sub_020B9DA4
sub_020B9DA4: ; 0x020B9DA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _020B9E68 ; =0x021CBEF0
	mov sb, r2
	ldr r7, [r4, #0]
	mov sl, r1
	ldr r2, [r7, #0x84]
	mov r8, r3
	ldr r1, [r2, #8]
	cmp r0, r1
	mvnhs r0, #0
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, [r7, #0x90]
	add r1, r2, #0xc
	cmp r5, #0
	moveq r5, sb
	add fp, r1, r0, lsl #4
	cmp sb, #0
	mov r4, #0
	ble _020B9E60
_020B9DF0:
	ldr r0, [fp, #4]
	sub r6, sb, r4
	cmp r6, r5
	movgt r6, r5
	sub r0, r0, r8
	cmp r6, r0
	movhi r6, r0
	cmp r6, #0
	beq _020B9E60
	ldr r1, [fp]
	mov r2, #0
	add r0, r7, #0x34
	add r1, r1, r8
	bl sub_020C81E4
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, sl
	mov r2, r6
	add r0, r7, #0x34
	bl sub_020C81D4
	cmp r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, r4, r0
	cmp r4, sb
	add r8, r8, r0
	add sl, sl, r0
	blt _020B9DF0
_020B9E60:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B9E68: .word 0x021CBEF0
	arm_func_end sub_020B9DA4

	arm_func_start sub_020B9E6C
sub_020B9E6C: ; 0x020B9E6C
	ldr r1, _020B9E90 ; =0x021CBEF0
	ldr r1, [r1, #0]
	ldr r2, [r1, #0x84]
	ldr r1, [r2, #8]
	cmp r0, r1
	movhs r0, #0
	addlo r0, r2, r0, lsl #4
	ldrlo r0, [r0, #0x14]
	bx lr
	; .align 2, 0
_020B9E90: .word 0x021CBEF0
	arm_func_end sub_020B9E6C

	arm_func_start sub_020B9E94
sub_020B9E94: ; 0x020B9E94
	ldr r2, _020B9EAC ; =0x021CBEF0
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x84]
	add r0, r2, r0, lsl #4
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
_020B9EAC: .word 0x021CBEF0
	arm_func_end sub_020B9E94

	arm_func_start sub_020B9EB0
sub_020B9EB0: ; 0x020B9EB0
	mov r0, #0
	str r0, [r2, #0x8c]
	bx lr
	arm_func_end sub_020B9EB0

	arm_func_start sub_020B9EBC
sub_020B9EBC: ; 0x020B9EBC
	mov r0, #0
	str r0, [r2, #0x84]
	bx lr
	arm_func_end sub_020B9EBC

	arm_func_start sub_020B9EC8
sub_020B9EC8: ; 0x020B9EC8
	mov r0, #0
	str r0, [r2, #0x88]
	bx lr
	arm_func_end sub_020B9EC8

	arm_func_start sub_020B9ED4
sub_020B9ED4: ; 0x020B9ED4
	stmfd sp!, {r3, r4, r5, lr}
	add r2, r0, #3
	add r0, r0, r1
	bic r5, r2, #3
	cmp r5, r0
	movhi r0, #0
	ldmhiia sp!, {r3, r4, r5, pc}
	sub r1, r0, r5
	cmp r1, #0x10
	movlo r0, #0
	ldmloia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	sub r1, r1, #0x10
	mov r2, #0
	bl sub_020A579C
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl sub_020BA1B0
	cmp r0, #0
	movne r0, r5
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl sub_020A57D4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B9ED4

	arm_func_start sub_020B9F44
sub_020B9F44: ; 0x020B9F44
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020B9F5C
	ldr r0, [r4, #0]
	bl sub_020A57D4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B9F44

	arm_func_start sub_020B9F5C
sub_020B9F5C: ; 0x020B9F5C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	mov r6, #0
	mov r1, r6
	add r0, r8, #4
	bl sub_020A4DD4
	movs r5, r0
	beq _020B9FF4
	mov sl, #1
	mov sb, r6
	mov r4, r6
_020B9F88:
	mov r0, r5
	mov r1, r4
	bl sub_020A4DD4
	movs r7, r0
	beq _020B9FD4
_020B9F9C:
	ldr ip, [r7, #0xc]
	cmp ip, #0
	beq _020B9FC0
	ldr r1, [r7, #8]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	add r0, r7, #0x20
	blx ip
	mov r6, sl
_020B9FC0:
	mov r0, r5
	mov r1, r7
	bl sub_020A4DD4
	movs r7, r0
	bne _020B9F9C
_020B9FD4:
	mov r1, r5
	add r0, r8, #4
	bl sub_020A4D5C
	mov r1, sb
	add r0, r8, #4
	bl sub_020A4DD4
	movs r5, r0
	bne _020B9F88
_020B9FF4:
	ldr r0, [r8]
	mov r1, #3
	bl sub_020A5814
	cmp r6, #0
	beq _020BA00C
	bl sub_020BA220
_020BA00C:
	mov r0, r8
	bl sub_020BA1E4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_020B9F5C

	arm_func_start sub_020BA018
sub_020BA018: ; 0x020BA018
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	add r0, r7, #0x1f
	bic r1, r0, #0x1f
	mov r6, r2
	ldr r0, [r8]
	add r1, r1, #0x20
	mov r2, #0x20
	mov r5, r3
	bl sub_020A57E0
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, #4
	mov r1, #0
	bl sub_020A4DD4
	str r7, [r4, #8]
	str r6, [r4, #0xc]
	ldr r2, [sp, #0x18]
	str r5, [r4, #0x10]
	mov r1, r4
	str r2, [r4, #0x14]
	bl sub_020A4C54
	add r0, r4, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BA018

	arm_func_start sub_020BA080
sub_020BA080: ; 0x020BA080
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0xc]
	ldr r0, [r4, #0]
	bl sub_020A5840
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl sub_020BA1E4
	cmp r0, #0
	ldrneh r0, [r4, #0xc]
	subne r0, r0, #1
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_020A5890
	mvn r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BA080

	arm_func_start sub_020BA0CC
sub_020BA0CC: ; 0x020BA0CC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, #0
	movs sb, r1
	mov sl, r0
	mov r7, r8
	bne _020BA0EC
	bl sub_020B9F5C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020BA0EC:
	ldrh r0, [sl, #0xc]
	cmp sb, r0
	bge _020BA170
	mov r4, #1
	mov r5, r8
_020BA100:
	mov r1, r5
	add r0, sl, #4
	bl sub_020A4DD4
	mov r1, r8
	mov r6, r0
	bl sub_020A4DD4
	movs r8, r0
	beq _020BA158
_020BA120:
	ldr ip, [r8, #0xc]
	cmp ip, #0
	beq _020BA144
	ldr r1, [r8, #8]
	ldr r2, [r8, #0x10]
	ldr r3, [r8, #0x14]
	add r0, r8, #0x20
	blx ip
	mov r7, r4
_020BA144:
	mov r0, r6
	mov r1, r8
	bl sub_020A4DD4
	movs r8, r0
	bne _020BA120
_020BA158:
	mov r1, r6
	add r0, sl, #4
	bl sub_020A4D5C
	ldrh r0, [sl, #0xc]
	cmp sb, r0
	blt _020BA100
_020BA170:
	ldr r0, [sl]
	mov r1, sb
	bl sub_020A5890
	cmp r7, #0
	beq _020BA188
	bl sub_020BA220
_020BA188:
	ldrh r1, [sl, #0xc]
	ldr r0, [sl]
	bl sub_020A5840
	mov r0, sl
	bl sub_020BA1E4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_020BA0CC

	arm_func_start sub_020BA1A0
sub_020BA1A0: ; 0x020BA1A0
	ldr ip, _020BA1AC ; =sub_020A4C10
	mov r1, #0
	bx ip
	; .align 2, 0
_020BA1AC: .word sub_020A4C10
	arm_func_end sub_020BA1A0

	arm_func_start sub_020BA1B0
sub_020BA1B0: ; 0x020BA1B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #4
	mov r1, #0xc
	bl sub_020A4C10
	mov r0, r5
	str r4, [r5, #0]
	bl sub_020BA1E4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BA1B0

	arm_func_start sub_020BA1E4
sub_020BA1E4: ; 0x020BA1E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0]
	mov r1, #0x14
	mov r2, #4
	bl sub_020A57E0
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl sub_020BA1A0
	mov r1, r4
	add r0, r5, #4
	bl sub_020A4C54
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BA1E4

	arm_func_start sub_020BA220
sub_020BA220: ; 0x020BA220
	stmfd sp!, {r4, lr}
	bl sub_020C5AAC
	mov r4, r0
	mov r0, #1
	bl sub_020C5884
	mov r0, r4
	bl sub_020C5A40
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BA220

	arm_func_start sub_020BA240
sub_020BA240: ; 0x020BA240
	stmfd sp!, {r3, lr}
	bl sub_020BA300
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BA240

	arm_func_start sub_020BA258
sub_020BA258: ; 0x020BA258
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov ip, #0
	mov r1, #0xff
	mov r3, #1
	str ip, [sp]
	bl sub_020BA404
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BA258

	arm_func_start sub_020BA284
sub_020BA284: ; 0x020BA284
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov ip, #0
	mov r1, #0xff
	mov r3, #1
	str ip, [sp]
	bl sub_020BA4E8
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BA284

	arm_func_start sub_020BA2B0
sub_020BA2B0: ; 0x020BA2B0
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov ip, #0
	mov r1, #0xff
	mov r3, #1
	str ip, [sp]
	bl sub_020BA628
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BA2B0

	arm_func_start sub_020BA2DC
sub_020BA2DC: ; 0x020BA2DC
	stmfd sp!, {r3, lr}
	mov ip, #0
	mov r3, #1
	str ip, [sp]
	bl sub_020BA404
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BA2DC

	arm_func_start sub_020BA300
sub_020BA300: ; 0x020BA300
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	bl sub_020B9D18
	movs r6, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r6, #0]
	mov r7, #0
	cmp r0, #0
	bls _020BA3FC
	add r8, r6, #4
	mov fp, r7
	mov sl, r7
	mov r4, r7
	mov r5, r7
_020BA33C:
	ldrb r0, [r8]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020BA3E8
_020BA34C: ; jump table
	b _020BA35C ; case 0
	b _020BA3A4 ; case 1
	b _020BA3C8 ; case 2
	b _020BA380 ; case 3
_020BA35C:
	str r5, [sp]
	ldrb r1, [r8, #1]
	ldr r0, [r8, #4]
	mov r2, sb
	mov r3, #1
	bl sub_020BA404
	cmp r0, #0
	beq _020BA3E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA380:
	str r4, [sp]
	ldrb r1, [r8, #1]
	ldr r0, [r8, #4]
	mov r2, sb
	mov r3, #1
	bl sub_020BA488
	cmp r0, #0
	beq _020BA3E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA3A4:
	str sl, [sp]
	ldrb r1, [r8, #1]
	ldr r0, [r8, #4]
	mov r2, sb
	mov r3, #1
	bl sub_020BA4E8
	cmp r0, #0
	beq _020BA3E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA3C8:
	str fp, [sp]
	ldrb r1, [r8, #1]
	ldr r0, [r8, #4]
	mov r2, sb
	mov r3, #1
	bl sub_020BA628
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA3E8:
	ldr r0, [r6, #0]
	add r7, r7, #1
	cmp r7, r0
	add r8, r8, #8
	blo _020BA33C
_020BA3FC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020BA300

	arm_func_start sub_020BA404
sub_020BA404: ; 0x020BA404
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl sub_020B9B24
	movs r4, r0
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r4, #4]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl sub_020BA4E8
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	tst r7, #1
	ldr r0, [r4, #0]
	beq _020BA470
	mov r1, r6
	mov r2, r5
	bl sub_020BA754
	cmp r0, #0
	bne _020BA474
	mov r0, #6
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020BA470:
	bl sub_020B9E6C
_020BA474:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020BA404

	arm_func_start sub_020BA488
sub_020BA488: ; 0x020BA488
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020B9B88
	cmp r0, #0
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, pc}
	tst r6, #8
	ldr r0, [r0, #0]
	beq _020BA4D0
	mov r1, r5
	mov r2, r4
	bl sub_020BA7C0
	cmp r0, #0
	bne _020BA4D4
	mov r0, #7
	ldmia sp!, {r4, r5, r6, pc}
_020BA4D0:
	bl sub_020B9E6C
_020BA4D4:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020BA488

	arm_func_start sub_020BA4E8
sub_020BA4E8: ; 0x020BA4E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r1
	mov sb, r2
	mov fp, r3
	bl sub_020B9BEC
	movs r5, r0
	addeq sp, sp, #8
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	tst sl, #2
	ldr r0, [r5, #0]
	beq _020BA53C
	mov r1, sb
	mov r2, fp
	bl sub_020BA82C
	movs r6, r0
	bne _020BA544
	add sp, sp, #8
	mov r0, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA53C:
	bl sub_020B9E6C
	mov r6, r0
_020BA544:
	and r8, sl, #4
	mov r7, #0
_020BA54C:
	add r0, r5, r7, lsl #1
	ldrh r0, [r0, #4]
	ldr r1, _020BA624 ; =0x0000FFFF
	cmp r0, r1
	beq _020BA600
	bl sub_020B9C50
	movs r4, r0
	addeq sp, sp, #8
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, r7, lsl #1
	ldrh r0, [r0, #4]
	mov r1, sl
	mov r2, sb
	mov r3, fp
	bl sub_020BA628
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0]
	mov r0, r0, lsr #0x18
	tst r0, #1
	cmpne r8, #0
	beq _020BA5E4
	str sb, [sp]
	ldr r1, [r4, #0]
	ldr r0, [sp, #4]
	mov r3, r1, lsl #8
	mov r1, r6
	mov r2, r7
	mov r3, r3, lsr #8
	bl sub_020BAC1C
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #9
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA5E4:
	cmp r6, #0
	ldrne r2, [sp, #4]
	cmpne r2, #0
	beq _020BA600
	mov r0, r6
	mov r1, r7
	bl sub_020C5F5C
_020BA600:
	add r7, r7, #1
	cmp r7, #4
	blt _020BA54C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	strne r6, [r0]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020BA624: .word 0x0000FFFF
	arm_func_end sub_020BA4E8

	arm_func_start sub_020BA628
sub_020BA628: ; 0x020BA628
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020B9C50
	cmp r0, #0
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, pc}
	tst r6, #4
	ldr r0, [r0, #0]
	beq _020BA694
	mov r1, r0, lsr #0x18
	tst r1, #1
	mov r0, r0, lsl #8
	mov r1, r5
	beq _020BA678
	mov r2, r4
	mov r0, r0, lsr #8
	bl sub_020BA904
	b _020BA684
_020BA678:
	mov r2, r4
	mov r0, r0, lsr #8
	bl sub_020BA898
_020BA684:
	cmp r0, #0
	bne _020BA6A0
	mov r0, #9
	ldmia sp!, {r4, r5, r6, pc}
_020BA694:
	mov r0, r0, lsl #8
	mov r0, r0, lsr #8
	bl sub_020B9E6C
_020BA6A0:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020BA628

	arm_func_start sub_020BA6B4
sub_020BA6B4: ; 0x020BA6B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, r3
	bl sub_020B9D7C
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r2, r7
	mov r3, r6
	add r1, r5, #0x20
	str r4, [sp]
	bl sub_020BA018
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	mov r2, r5
	mov r3, #0
	bl sub_020B9DA4
	cmp r5, r0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r5
	bl sub_020C2C38
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BA6B4

	arm_func_start sub_020BA754
sub_020BA754: ; 0x020BA754
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl sub_020B9E6C
	movs r4, r0
	bne _020BA7B4
	cmp r5, #0
	moveq r2, #0
	beq _020BA784
	bl sub_020B9AFC
	mov r2, r0
_020BA784:
	ldr r1, _020BA7BC ; =sub_020BAA64
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl sub_020BA6B4
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _020BA7B4
	mov r0, r7
	mov r1, r4
	bl sub_020B9E94
_020BA7B4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BA7BC: .word sub_020BAA64
	arm_func_end sub_020BA754

	arm_func_start sub_020BA7C0
sub_020BA7C0: ; 0x020BA7C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl sub_020B9E6C
	movs r4, r0
	bne _020BA820
	cmp r5, #0
	moveq r2, #0
	beq _020BA7F0
	bl sub_020B9AFC
	mov r2, r0
_020BA7F0:
	ldr r1, _020BA828 ; =sub_020BAA64
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl sub_020BA6B4
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _020BA820
	mov r0, r7
	mov r1, r4
	bl sub_020B9E94
_020BA820:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BA828: .word sub_020BAA64
	arm_func_end sub_020BA7C0

	arm_func_start sub_020BA82C
sub_020BA82C: ; 0x020BA82C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl sub_020B9E6C
	movs r4, r0
	bne _020BA88C
	cmp r5, #0
	moveq r2, #0
	beq _020BA85C
	bl sub_020B9AFC
	mov r2, r0
_020BA85C:
	ldr r1, _020BA894 ; =sub_020BAA8C
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl sub_020BA6B4
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _020BA88C
	mov r0, r7
	mov r1, r4
	bl sub_020B9E94
_020BA88C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BA894: .word sub_020BAA8C
	arm_func_end sub_020BA82C

	arm_func_start sub_020BA898
sub_020BA898: ; 0x020BA898
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl sub_020B9E6C
	movs r4, r0
	bne _020BA8F8
	cmp r5, #0
	moveq r2, #0
	beq _020BA8C8
	bl sub_020B9AFC
	mov r2, r0
_020BA8C8:
	ldr r1, _020BA900 ; =sub_020BAABC
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl sub_020BA6B4
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _020BA8F8
	mov r0, r7
	mov r1, r4
	bl sub_020B9E94
_020BA8F8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BA900: .word sub_020BAABC
	arm_func_end sub_020BA898

	arm_func_start sub_020BA904
sub_020BA904: ; 0x020BA904
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	bl sub_020B9E6C
	movs r5, r0
	bne _020BA9F8
	ldr r1, _020BAA00 ; =0x021CBEF4
	mov r0, sb
	mov r2, #0x3c
	mov r3, #0
	bl sub_020B9DA4
	cmp r0, #0x3c
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _020BAA04 ; =0x021CBEF4
	cmp r8, #0
	ldr r0, [r0, #0x38]
	mov r6, r0, lsl #2
	mov r4, r6, lsl #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r7, #0
	moveq r3, #0
	beq _020BA970
	bl sub_020B9AFC
	mov r3, r0
_020BA970:
	ldr r2, _020BAA08 ; =sub_020BAAEC
	mov r0, r8
	add r1, r4, #0x5c
	str sb, [sp]
	bl sub_020BA018
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	mov r1, r5
	add r2, r6, #0x3c
	mov r3, #0
	bl sub_020B9DA4
	add r1, r6, #0x3c
	cmp r0, r1
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [r5, #0x38]
	add r0, r5, #0x3c
	mov r2, r6
	add r1, r0, r1, lsl #2
	bl sub_020C4DB0
	mov r2, r6
	add r0, r5, #0x3c
	mov r1, #0
	bl sub_020C4CF4
	mov r0, r5
	add r1, r4, #0x3c
	bl sub_020C2C38
	cmp r7, #0
	beq _020BA9F8
	mov r0, sb
	mov r1, r5
	bl sub_020B9E94
_020BA9F8:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020BAA00: .word 0x021CBEF4
_020BAA04: .word 0x021CBEF4
_020BAA08: .word sub_020BAAEC
	arm_func_end sub_020BA904

	arm_func_start sub_020BAA0C
sub_020BAA0C: ; 0x020BAA0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r7, r0
	mov r6, r2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_020C3D98
	mov r5, r0
	mov r0, r4
	bl sub_020B9AE4
	mov r4, r0
	mov r0, r6
	bl sub_020B9E6C
	cmp r7, r0
	bne _020BAA50
	mov r0, r6
	mov r1, #0
	bl sub_020B9E94
_020BAA50:
	mov r0, r4
	bl sub_020B9AE4
	mov r0, r5
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020BAA0C

	arm_func_start sub_020BAA64
sub_020BAA64: ; 0x020BAA64
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl sub_020BAA0C
	mov r0, r5
	add r1, r5, r4
	bl sub_020C5404
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BAA64

	arm_func_start sub_020BAA8C
sub_020BAA8C: ; 0x020BAA8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl sub_020BAA0C
	mov r0, r5
	add r1, r5, r4
	bl sub_020C5424
	mov r0, r5
	bl sub_020C6028
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BAA8C

	arm_func_start sub_020BAABC
sub_020BAABC: ; 0x020BAABC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl sub_020BAA0C
	mov r0, r5
	add r1, r5, r4
	bl sub_020C5444
	mov r0, r5
	bl sub_020C60C0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BAABC

	arm_func_start sub_020BAAEC
sub_020BAAEC: ; 0x020BAAEC
	stmfd sp!, {r4, lr}
	mov r1, r2
	mov r4, r0
	mov r2, r3
	bl sub_020BAA0C
	mov r0, r4
	bl sub_020C60C0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BAAEC

	arm_func_start sub_020BAB0C
sub_020BAB0C: ; 0x020BAB0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r4, r3
	mov r6, r1
	mov r0, r5
	mov r1, r4
	bl sub_020C6314
	cmp r7, r0
	bne _020BAB44
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl sub_020C62E0
_020BAB44:
	mov r0, r7
	add r1, r7, r6
	bl sub_020C5444
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020BAB0C

	arm_func_start sub_020BAB54
sub_020BAB54: ; 0x020BAB54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl sub_020C6314
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r8
	bl sub_020C62D8
	ldr r1, [r8, #0x38]
	sub r0, r0, #1
	add r1, r1, r7
	add r1, r8, r1, lsl #2
	cmp r7, r0
	ldrlo r0, [r1, #0x40]
	ldr r4, [r1, #0x3c]
	ldrhs r0, [r8, #8]
	cmp r5, #0
	sub sb, r0, r4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r2, _020BAC18 ; =sub_020BAB0C
	mov r0, r5
	mov r3, r8
	add r1, sb, #0x20
	str r7, [sp]
	bl sub_020BA018
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r6
	mov r1, r5
	mov r2, sb
	mov r3, r4
	bl sub_020B9DA4
	cmp sb, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	mov r1, sb
	bl sub_020C2C38
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl sub_020C62E0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020BAC18: .word sub_020BAB0C
	arm_func_end sub_020BAB54

	arm_func_start sub_020BAC1C
sub_020BAC1C: ; 0x020BAC1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	add r0, sp, #0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x40]
	bl sub_020C6108
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r7, #0
	add r2, sp, #8
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r1, sp, #0x10
	mov r0, r7
	bl sub_020C6128
	cmp r0, #0
	beq _020BACD0
	add sl, sp, #0x10
	add sb, sp, #8
_020BAC80:
	ldrb r0, [sp, #0x10]
	cmp r0, #1
	ldreqh r0, [sp, #0x14]
	cmpeq r6, r0
	bne _020BACB8
	ldrh r1, [sp, #0x12]
	mov r0, r8
	mov r2, r5
	mov r3, r4
	bl sub_020BAB54
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020BACB8:
	mov r0, r7
	mov r1, sl
	mov r2, sb
	bl sub_020C6128
	cmp r0, #0
	bne _020BAC80
_020BACD0:
	mov r0, #1
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_020BAC1C

	arm_func_start sub_020BACDC
sub_020BACDC: ; 0x020BACDC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	bl sub_020B9AFC
	mov r6, #0
	mov r5, r6
_020BACF0:
	mov r0, r6
	bl sub_020B9CB4
	movs r7, r0
	beq _020BAD64
	ldrb r1, [r7]
	mov r0, r6
	bl sub_020B7EFC
	ldrh r1, [r7, #2]
	mov r0, r6
	bl sub_020B7F1C
	ldr r0, [r7, #4]
	cmp r0, #0
	cmpne r4, #0
	beq _020BAD64
	ldrb r0, [r7]
	mov r8, r5
	cmp r0, #0
	ble _020BAD64
_020BAD38:
	ldr r2, [r7, #4]
	mov r0, r6
	mov r1, r4
	bl sub_020B7F34
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7]
	add r8, r8, #1
	cmp r8, r0
	blt _020BAD38
_020BAD64:
	add r6, r6, #1
	cmp r6, #0x20
	blt _020BACF0
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BACDC

	arm_func_start sub_020BAD78
sub_020BAD78: ; 0x020BAD78
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl sub_020B9B24
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	stmia sp, {r0, r4}
	ldrb r1, [r0, #9]
	ldrh r2, [r0, #4]
	ldrb r3, [r0, #8]
	mov r0, r5
	bl sub_020BAEB0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BAD78

	arm_func_start sub_020BADC0
sub_020BADC0: ; 0x020BADC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, [sp, #0x20]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020B9B24
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	ldrltb r4, [r0, #8]
	cmp r5, #0
	ldrlth r5, [r0, #4]
	cmp r6, #0
	ldrltb r6, [r0, #9]
	ldr ip, [sp, #0x20]
	mov r2, r5
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r3, r4
	str ip, [sp, #4]
	bl sub_020BAEB0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020BADC0

	arm_func_start sub_020BAE30
sub_020BAE30: ; 0x020BAE30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl sub_020B9B88
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r0, #0]
	bl sub_020B9E6C
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r5
	bl sub_020BB368
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	stmia sp, {r0, r4, r6}
	str r5, [sp, #0xc]
	ldrb r1, [r0, #9]
	ldrh r2, [r0, #4]
	ldrb r3, [r0, #8]
	mov r0, r7
	bl sub_020BAFAC
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020BAE30

	arm_func_start sub_020BAEB0
sub_020BAEB0: ; 0x020BAEB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r2
	mov r2, r3
	ldr r5, [sp, #0x28]
	mov r6, r0
	mov r7, r1
	bl sub_020B84B8
	movs r4, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r4
	bl sub_020B8620
	mov r7, r0
	add ip, sp, #4
	mov r0, r8
	mov r2, r7
	mov r1, #6
	mov r3, #0
	str ip, [sp]
	bl sub_020BA4E8
	cmp r0, #0
	beq _020BAF28
	mov r0, r4
	bl sub_020B8550
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BAF28:
	ldr r0, [sp, #0x2c]
	add ip, sp, #8
	mov r2, r7
	mov r1, #1
	mov r3, #0
	str ip, [sp]
	bl sub_020BA404
	cmp r0, #0
	beq _020BAF60
	mov r0, r4
	bl sub_020B8550
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BAF60:
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r1, [r2, #0x18]
	mov r0, r4
	add r1, r2, r1
	mov r2, #0
	bl sub_020B855C
	ldrb r1, [r5, #6]
	mov r0, r6
	bl sub_020B8134
	ldrb r1, [r5, #7]
	mov r0, r6
	bl sub_020B8174
	ldr r1, [sp, #0x2c]
	mov r0, r6
	bl sub_020B81F4
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BAEB0

	arm_func_start sub_020BAFAC
sub_020BAFAC: ; 0x020BAFAC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r2
	mov r2, r3
	ldr r6, [sp, #0x20]
	mov r4, r0
	mov r8, r1
	bl sub_020B84B8
	movs r5, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r5
	bl sub_020B8620
	add ip, sp, #4
	mov r2, r0
	mov r0, r7
	mov r1, #6
	mov r3, #0
	str ip, [sp]
	bl sub_020BA4E8
	cmp r0, #0
	beq _020BB020
	mov r0, r5
	bl sub_020B8550
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020BB020:
	ldr ip, [sp, #0x24]
	ldr r2, [r6, #0]
	ldr r1, [ip, #0x18]
	ldr r3, [sp, #4]
	mov r0, r5
	add r1, ip, r1
	bl sub_020B855C
	ldrb r1, [r6, #6]
	mov r0, r4
	bl sub_020B8134
	ldrb r1, [r6, #7]
	mov r0, r4
	bl sub_020B8174
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r0, r4
	bl sub_020B8218
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BAFAC

	arm_func_start sub_020BB070
sub_020BB070: ; 0x020BB070
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020BB178 ; =0x021CC5CC
	ldr r4, _020BB17C ; =0x020FDAB0
	mov r5, #0
_020BB080:
	ldr r1, [r7, #0x110]
	mov r0, r1, lsl #0x1f
	movs r0, r0, asr #0x1f
	beq _020BB164
	ldr r0, [r7, #0x114]
	cmp r0, #0
	bne _020BB0A8
	mov r0, r7
	bl sub_020BB1AC
	b _020BB164
_020BB0A8:
	mov r0, r1, lsl #0x1d
	movs r0, r0, asr #0x1f
	ldrne r0, [r7, #0x118]
	cmpne r0, #0
	beq _020BB0D4
	mov r0, r7
	bl sub_020B8BD4
	ldr r0, [r7, #0x110]
	orr r0, r0, #2
	bic r0, r0, #4
	str r0, [r7, #0x110]
_020BB0D4:
	ldr r0, [r7, #0x110]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _020BB164
	add r0, r7, #0xe8
	bl sub_020BB41C
	ldr r1, [r7, #0x154]
	add r0, r7, #0xe8
	mov r1, r1, lsl #1
	ldrsh r6, [r4, r1]
	bl sub_020BB3E8
	mov r0, r0, asr #8
	ldr r1, [r7, #0x158]
	mov r0, r0, lsl #1
	mov r2, r1, lsl #1
	ldrsh r1, [r4, r0]
	ldrsh r2, [r4, r2]
	ldr r0, [r7, #0x15c]
	add r1, r1, r6
	add r6, r2, r1
	cmp r6, r0
	beq _020BB13C
	mov r0, r7
	mov r1, r6
	bl sub_020B8C44
	str r6, [r7, #0x15c]
_020BB13C:
	ldr r0, [r7, #0x110]
	mov r0, r0, lsl #0x1c
	movs r0, r0, asr #0x1f
	beq _020BB164
	add r0, r7, #0xe8
	bl sub_020BB434
	cmp r0, #0
	beq _020BB164
	mov r0, r7
	bl sub_020BB1AC
_020BB164:
	add r5, r5, #1
	cmp r5, #4
	add r7, r7, #0x174
	blt _020BB080
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BB178: .word 0x021CC5CC
_020BB17C: .word 0x020FDAB0
	arm_func_end sub_020BB070

	arm_func_start sub_020BB180
sub_020BB180: ; 0x020BB180
	ldr r2, [r0, #0x14c]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2]
	strne r1, [r0, #0x14c]
	ldr r1, [r0, #0x110]
	bic r2, r1, #1
	bic r1, r2, #4
	bic r1, r1, #2
	str r1, [r0, #0x110]
	bx lr
	arm_func_end sub_020BB180

	arm_func_start sub_020BB1AC
sub_020BB1AC: ; 0x020BB1AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020BB23C ; =0x021CC5A8
	bl sub_020C29D8
	ldr r0, _020BB240 ; =0x021CBF30
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020BB1D8
	add r0, r0, #0xc8
	add r0, r0, #0x400
	bl sub_020C29D8
_020BB1D8:
	ldr r0, [r4, #0x110]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _020BB1F0
	mov r0, r4
	bl sub_020B8C28
_020BB1F0:
	ldr r0, [r4, #0x110]
	mov r0, r0, lsl #0x1f
	movs r0, r0, asr #0x1f
	beq _020BB20C
	ldr r1, [r4, #0x170]
	mov r0, r4
	blx r1
_020BB20C:
	mov r0, r4
	bl sub_020BB244
	ldr r0, _020BB23C ; =0x021CC5A8
	bl sub_020C2A5C
	ldr r0, _020BB240 ; =0x021CBF30
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0xc8
	add r0, r0, #0x400
	bl sub_020C2A5C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BB23C: .word 0x021CC5A8
_020BB240: .word 0x021CBF30
	arm_func_end sub_020BB1AC

	arm_func_start sub_020BB244
sub_020BB244: ; 0x020BB244
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x110]
	mov r1, r1, lsl #0x1f
	movs r1, r1, asr #0x1f
	ldmeqia sp!, {r4, pc}
	bl sub_020BB2A8
	ldr r1, [r4, #0x168]
	mov r0, r4
	blx r1
	ldr r0, _020BB2A0 ; =0x021CC5C0
	mov r1, r4
	bl sub_020BB2CC
	ldr r0, _020BB2A4 ; =0x021CBF30
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020BB294
	mov r1, r4
	add r0, r0, #0x4e0
	bl sub_020BB2CC
_020BB294:
	mov r0, r4
	bl sub_020BB180
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BB2A0: .word 0x021CC5C0
_020BB2A4: .word 0x021CBF30
	arm_func_end sub_020BB244

	arm_func_start sub_020BB2A8
sub_020BB2A8: ; 0x020BB2A8
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x120]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	subs r1, r1, #1
	str r1, [r0, #0x120]
	ldmneia sp!, {r3, pc}
	bl sub_020B8A0C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BB2A8

	arm_func_start sub_020BB2CC
sub_020BB2CC: ; 0x020BB2CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	bl sub_020C3D98
	mov r4, r0
	mov r0, r8
	mov r1, #0
	bl sub_020A4DBC
	movs r5, r0
	beq _020BB330
_020BB2F4:
	mov r0, r8
	mov r1, r5
	bl sub_020A4DBC
	ldr r1, [r5, #8]
	mov r6, r0
	cmp r1, r7
	bne _020BB324
	mov r0, r8
	mov r1, r5
	bl sub_020A4D5C
	mov r0, r5
	bl sub_020BB33C
_020BB324:
	mov r5, r6
	cmp r6, #0
	bne _020BB2F4
_020BB330:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BB2CC

	arm_func_start sub_020BB33C
sub_020BB33C: ; 0x020BB33C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	mov r4, r0
	ldr r0, _020BB364 ; =0x021CBF3C
	mov r1, r5
	bl sub_020A4C54
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020BB364: .word 0x021CBF3C
	arm_func_end sub_020BB33C

	arm_func_start sub_020BB368
sub_020BB368: ; 0x020BB368
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	ldr r2, [r0, #0x1c]
	cmp r1, r2
	movhs r0, #0
	bxhs lr
	mov r2, #0xc
	mul r3, r1, r2
	add ip, r0, #0x20
	ldr r1, [ip, r3]
	sub r0, r2, #0xd
	cmp r1, r0
	add r0, ip, r3
	moveq r0, #0
	bx lr
	arm_func_end sub_020BB368

	arm_func_start sub_020BB3A8
sub_020BB3A8: ; 0x020BB3A8
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0]
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_020BB3A8

	arm_func_start sub_020BB3C0
sub_020BB3C0: ; 0x020BB3C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020BB3E8
	stmia r6, {r0, r5}
	str r4, [r6, #0xc]
	mov r0, #0
	str r0, [r6, #8]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020BB3C0

	arm_func_start sub_020BB3E8
sub_020BB3E8: ; 0x020BB3E8
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #8]
	cmp r2, r1
	ldrge r0, [r0, #4]
	ldmgeia sp!, {r4, pc}
	ldr r4, [r0, #0]
	ldr r0, [r0, #4]
	sub r0, r0, r4
	mul r0, r2, r0
	bl sub_020E1F6C
	add r0, r4, r0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BB3E8

	arm_func_start sub_020BB41C
sub_020BB41C: ; 0x020BB41C
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	addlt r1, r2, #1
	strlt r1, [r0, #8]
	bx lr
	arm_func_end sub_020BB41C

	arm_func_start sub_020BB434
sub_020BB434: ; 0x020BB434
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end sub_020BB434

	arm_func_start sub_020BB44C
sub_020BB44C: ; 0x020BB44C
	mov r1, #0
	mov r2, #0x1000
	mov r3, #0
	stmia r0!, {r2, r3}
	stmia r0!, {r1, r2}
	bx lr
	arm_func_end sub_020BB44C
