	.include "macros/function.inc"
	.include "include/ov18_0223A6B4.inc"

	

	.text


	arm_func_start ov18_0223A6B4
ov18_0223A6B4: ; 0x0223A6B4
	stmfd sp!, {r3, lr}
	mov r0, #0x20
	mov r1, #4
	bl ov18_02245068
	ldr r1, _0223A70C ; =0x0225334C
	mov r2, #0
	str r0, [r1, #4]
	strb r2, [r0, #0x1d]
	bl ov18_0223A714
	mov r0, #1
	bl ov18_0222BBC0
	mov r0, #0x2f
	sub r1, r0, #0x30
	mov r2, #0
	bl ov18_0222B594
	mov r0, #0
	bl ov18_0222B740
	bl ov18_0223A824
	bl ov18_0223AE94
	ldr r0, _0223A710 ; =ov18_0223A92C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A70C: .word 0x0225334C
_0223A710: .word ov18_0223A92C
	arm_func_end ov18_0223A6B4

	arm_func_start ov18_0223A714
ov18_0223A714: ; 0x0223A714
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr ip, _0223A7F4 ; =0x022493E8
	add r3, sp, #0
	mov r2, #0xb
_0223A728:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _0223A728
	ldr r0, _0223A7F8 ; =0x0224A3EC
	ldr r1, _0223A7FC ; =0x020C0160
	bl ov18_0222B700
	ldr r0, _0223A800 ; =0x0224A400
	ldr r1, _0223A804 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _0223A808 ; =0x0224A418
	ldr r1, _0223A80C ; =sub_020C00B4
	bl ov18_0222B700
	ldr r0, _0223A810 ; =0x0224A430
	ldr r1, _0223A814 ; =sub_020C04EC
	bl ov18_0222B700
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r2, _0223A818 ; =0x0225334C
	mov r1, #0x10
	ldr r2, [r2, #4]
	str r0, [r2, #0]
	mov r0, #1
	bl ov18_02244C84
	ldr r2, _0223A81C ; =0x04001008
	ldr r1, _0223A820 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A7F4: .word 0x022493E8
_0223A7F8: .word 0x0224A3EC
_0223A7FC: .word 0x020C0160
_0223A800: .word 0x0224A400
_0223A804: .word 0x020C07EC
_0223A808: .word 0x0224A418
_0223A80C: .word sub_020C00B4
_0223A810: .word 0x0224A430
_0223A814: .word sub_020C04EC
_0223A818: .word 0x0225334C
_0223A81C: .word 0x04001008
_0223A820: .word 0x0400000A
	arm_func_end ov18_0223A714

	arm_func_start ov18_0223A824
ov18_0223A824: ; 0x0223A824
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, #0
	ldr r6, _0223A920 ; =0x022493FE
	ldr r5, _0223A924 ; =0x022493DC
	ldr r4, _0223A928 ; =0x0225334C
	mov fp, sl
	mvn r7, #0
	mov r8, #3
_0223A844:
	mov r0, sl
	bl ov18_0223E1D8
	mov sb, r0
	cmp sb, #0xff
	moveq sb, r8
	beq _0223A8B8
	mov r0, fp
	mov r1, #0x11
	mov r2, #1
	bl ov18_02243F8C
	ldr r1, [r4, #4]
	add r3, sl, #3
	add r1, r1, sl, lsl #2
	str r0, [r1, #0x10]
	mov r2, r3, lsl #2
	ldr r0, [r4, #4]
	add r3, r6, r3, lsl #2
	add r0, r0, sl, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl ov18_02243CF4
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl ov18_02243DE4
_0223A8B8:
	ldrb r1, [r5, sb]
	mov r0, #0
	mov r2, #1
	bl ov18_02243F8C
	ldr r1, [r4, #4]
	mov r2, sl, lsl #2
	add r1, r1, sl, lsl #2
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	add r3, r6, sl, lsl #2
	add r0, r0, sl, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #4]
	mov r1, r7
	bl ov18_02243CF4
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, sl, lsl #2
	ldr r0, [r0, #4]
	mov r2, #3
	bl ov18_02243DE4
	add sl, sl, #1
	cmp sl, #3
	blt _0223A844
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223A920: .word 0x022493FE
_0223A924: .word 0x022493DC
_0223A928: .word 0x0225334C
	arm_func_end ov18_0223A824

	arm_func_start ov18_0223A92C
ov18_0223A92C: ; 0x0223A92C
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _0223A97C ; =ov18_0223A980
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A97C: .word ov18_0223A980
	arm_func_end ov18_0223A92C

	arm_func_start ov18_0223A980
ov18_0223A980: ; 0x0223A980
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _0223A9B8 ; =ov18_0223A9BC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A9B8: .word ov18_0223A9BC
	arm_func_end ov18_0223A980

	arm_func_start ov18_0223A9BC
ov18_0223A9BC: ; 0x0223A9BC
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0223F084
	cmp r0, #1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223A9EC ; =ov18_0223A9F0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A9EC: .word ov18_0223A9F0
	arm_func_end ov18_0223A9BC

	arm_func_start ov18_0223A9F0
ov18_0223A9F0: ; 0x0223A9F0
	stmfd sp!, {r3, lr}
	bl ov18_0223AA04
	bl ov18_0223AAF8
	bl ov18_0223AAFC
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223A9F0

	arm_func_start ov18_0223AA04
ov18_0223AA04: ; 0x0223AA04
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0223AAF0 ; =0x02249416
	mov r4, #0
_0223AA10:
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _0223AA38
	mov r0, #1
	bl ov18_0222B048
	ldr r0, _0223AAF4 ; =0x0225334C
	strb r4, [r0]
	bl ov18_0223AE94
	ldmia sp!, {r3, r4, r5, pc}
_0223AA38:
	add r4, r4, #1
	cmp r4, #7
	add r5, r5, #8
	blo _0223AA10
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _0223AA64
	mov r0, #1
	bl ov18_0222B048
	ldmia sp!, {r3, r4, r5, pc}
_0223AA64:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _0223AA80
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, r4, r5, pc}
_0223AA80:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _0223AA9C
	mov r0, #1
	bl ov18_0223AF10
	ldmia sp!, {r3, r4, r5, pc}
_0223AA9C:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _0223AAB8
	mov r0, #3
	bl ov18_0223AF10
	ldmia sp!, {r3, r4, r5, pc}
_0223AAB8:
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _0223AAD4
	mov r0, #0
	bl ov18_0223AF10
	ldmia sp!, {r3, r4, r5, pc}
_0223AAD4:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #2
	bl ov18_0223AF10
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223AAF0: .word 0x02249416
_0223AAF4: .word 0x0225334C
	arm_func_end ov18_0223AA04

	arm_func_start ov18_0223AAF8
ov18_0223AAF8: ; 0x0223AAF8
	bx lr
	arm_func_end ov18_0223AAF8

	arm_func_start ov18_0223AAFC
ov18_0223AAFC: ; 0x0223AAFC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl ov18_0222B034
	cmp r0, #0
	beq _0223AB20
	cmp r0, #1
	beq _0223AB68
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0223AB20:
	bl ov18_0222F75C
	cmp r0, #0
	beq _0223AB38
	cmp r0, #1
	beq _0223AB54
	b _0223AC0C
_0223AB38:
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223AC1C ; =0x0225334C
	mov r1, #2
	ldr r0, [r0, #4]
	strb r1, [r0, #0x1d]
	b _0223AC0C
_0223AB54:
	bl ov18_0222B0C0
	ldr r0, _0223AC20 ; =ov18_0222FEE8
	bl ov18_0222F6C4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0223AB68:
	ldr r0, _0223AC1C ; =0x0225334C
	mov r2, #1
	ldr r1, [r0, #4]
	strb r2, [r1, #0x1d]
	ldrb r0, [r0]
	cmp r0, #4
	blo _0223ABF4
	sub r4, r0, #4
	mov r0, r4
	bl ov18_0223E1D8
	cmp r0, #0xff
	bne _0223ABB0
	mov r0, #9
	bl ov18_0223E994
	mvn r0, #0
	bl ov18_0222B068
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0223ABB0:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0222F74C
	ldr r1, _0223AC24 ; =0x02249488
	add ip, r4, #1
	ldrsb r3, [r1, r0]
	mov r0, #0x46
	mov r1, #0
	mov r2, #1
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0223B104
	bl ov18_0222B0C0
	ldr r0, _0223AC28 ; =ov18_0223B194
	bl ov18_0222F6C4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0223ABF4:
	cmp r0, #2
	bhi _0223AC00
	bl ov18_0223E1F0
_0223AC00:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223B324
_0223AC0C:
	ldr r0, _0223AC2C ; =ov18_0223AC30
	bl ov18_0222F6C4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0223AC1C: .word 0x0225334C
_0223AC20: .word ov18_0222FEE8
_0223AC24: .word 0x02249488
_0223AC28: .word ov18_0223B194
_0223AC2C: .word ov18_0223AC30
	arm_func_end ov18_0223AAFC

	arm_func_start ov18_0223AC30
ov18_0223AC30: ; 0x0223AC30
	stmfd sp!, {r3, lr}
	ldr r0, _0223AC64 ; =0x0225334C
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	bne _0223AC4C
	bl ov18_0223EF7C
_0223AC4C:
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _0223AC68 ; =ov18_0223AC6C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223AC64: .word 0x0225334C
_0223AC68: .word ov18_0223AC6C
	arm_func_end ov18_0223AC30

	arm_func_start ov18_0223AC6C
ov18_0223AC6C: ; 0x0223AC6C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223ACE8 ; =0x0225334C
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x1d]
	cmp r1, #1
	bne _0223ACB4
	ldrb r0, [r0]
	cmp r0, #3
	beq _0223ACB0
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	beq _0223ACB4
_0223ACB0:
	bl ov18_0222B004
_0223ACB4:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223ACEC ; =ov18_0223ACF0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223ACE8: .word 0x0225334C
_0223ACEC: .word ov18_0223ACF0
	arm_func_end ov18_0223AC6C

	arm_func_start ov18_0223ACF0
ov18_0223ACF0: ; 0x0223ACF0
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov18_0223F4A4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r4, _0223AE74 ; =0x0225334C
	mov r5, #0
_0223AD34:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0223AD4C
	bl ov18_02243B3C
_0223AD4C:
	add r5, r5, #1
	cmp r5, #3
	blo _0223AD34
	ldr r4, _0223AE74 ; =0x0225334C
	mov r5, #0
_0223AD60:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0223AD78
	bl ov18_02243B3C
_0223AD78:
	add r5, r5, #1
	cmp r5, #3
	blo _0223AD60
	bl ov18_0222BAF4
	bl ov18_0222B668
	ldr r0, _0223AE74 ; =0x0225334C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl ov18_0224382C
	ldr r0, _0223AE78 ; =0x0224A444
	ldr r1, _0223AE7C ; =0x020C0160
	bl ov18_0222B700
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	ldr r0, _0223AE74 ; =0x0225334C
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x1d]
	cmp r1, #2
	bne _0223ADEC
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223AE80 ; =ov18_02230228
	bl ov18_0222F6C4
	b _0223AE68
_0223ADEC:
	ldrb r0, [r0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0223AE68
_0223ADFC: ; jump table
	b _0223AE0C ; case 0
	b _0223AE0C ; case 1
	b _0223AE0C ; case 2
	b _0223AE54 ; case 3
_0223AE0C:
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	bne _0223AE34
	ldr r0, _0223AE84 ; =ov18_0223B3F4
	bl ov18_0222F6C4
	b _0223AE68
_0223AE34:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	mov r0, #0
	bl ov18_0223909C
	ldr r0, _0223AE88 ; =ov18_02236BE0
	bl ov18_0222F6C4
	b _0223AE68
_0223AE54:
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223AE8C ; =ov18_0223C67C
	bl ov18_0222F6C4
_0223AE68:
	ldr r0, _0223AE90 ; =0x02253350
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223AE74: .word 0x0225334C
_0223AE78: .word 0x0224A444
_0223AE7C: .word 0x020C0160
_0223AE80: .word ov18_02230228
_0223AE84: .word ov18_0223B3F4
_0223AE88: .word ov18_02236BE0
_0223AE8C: .word ov18_0223C67C
_0223AE90: .word 0x02253350
	arm_func_end ov18_0223ACF0

	arm_func_start ov18_0223AE94
ov18_0223AE94: ; 0x0223AE94
	stmfd sp!, {r3, lr}
	ldr r0, _0223AEFC ; =0x0225334C
	ldrb r2, [r0]
	cmp r2, #4
	bhs _0223AED4
	mov ip, r2, lsl #3
	ldr r0, _0223AF00 ; =0x0224944E
	ldr r1, _0223AF04 ; =0x02249452
	ldr r2, _0223AF08 ; =0x02249450
	ldr r3, _0223AF0C ; =0x02249454
	ldrh r0, [r0, ip]
	ldrh r1, [r1, ip]
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	bl ov18_0222BA04
	ldmia sp!, {r3, pc}
_0223AED4:
	ldr r1, _0223AF00 ; =0x0224944E
	mov r3, r2, lsl #3
	ldr r2, _0223AF04 ; =0x02249452
	ldr r0, _0223AF08 ; =0x02249450
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #0
	bl ov18_0222B948
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223AEFC: .word 0x0225334C
_0223AF00: .word 0x0224944E
_0223AF04: .word 0x02249452
_0223AF08: .word 0x02249450
_0223AF0C: .word 0x02249454
	arm_func_end ov18_0223AE94

	arm_func_start ov18_0223AF10
ov18_0223AF10: ; 0x0223AF10
	stmfd sp!, {r3, lr}
	ldr r2, _0223B100 ; =0x0225334C
	mov r1, #1
	ldrb r3, [r2]
	cmp r3, #6
	addls pc, pc, r3, lsl #2
	b _0223B0E8
_0223AF2C: ; jump table
	b _0223AF48 ; case 0
	b _0223AF88 ; case 1
	b _0223AFC8 ; case 2
	b _0223B008 ; case 3
	b _0223B030 ; case 4
	b _0223B070 ; case 5
	b _0223B0AC ; case 6
_0223AF48:
	ldr r3, [r2, #4]
	mov ip, #0
	cmp r0, #0
	strb ip, [r3, #0x1c]
	moveq r0, #2
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	streqb r1, [r2]
	beq _0223B0E8
	cmp r0, #1
	moveq r0, #3
	streqb r0, [r2]
	movne r0, #4
	strneb r0, [r2]
	b _0223B0E8
_0223AF88:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	moveq r0, #0
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #2
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	moveq r0, #3
	streqb r0, [r2]
	movne r0, #5
	strneb r0, [r2]
	b _0223B0E8
_0223AFC8:
	ldr r3, [r2, #4]
	mov ip, #2
	strb ip, [r3, #0x1c]
	cmp r0, #0
	streqb r1, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #0
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	moveq r0, #3
	streqb r0, [r2]
	movne r0, #6
	strneb r0, [r2]
	b _0223B0E8
_0223B008:
	ldr r3, [r2, #4]
	cmp r0, #1
	ldrb ip, [r3, #0x1c]
	add r3, ip, #4
	streqb r3, [r2]
	beq _0223B0E8
	cmp r0, #3
	streqb ip, [r2]
	movne r1, #0
	b _0223B0E8
_0223B030:
	ldr r3, [r2, #4]
	mov ip, #0
	cmp r0, #0
	strb ip, [r3, #0x1c]
	moveq r0, #6
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #5
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	streqb ip, [r2]
	movne r0, #3
	strneb r0, [r2]
	b _0223B0E8
_0223B070:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	moveq r0, #4
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #6
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	streqb r1, [r2]
	movne r0, #3
	strneb r0, [r2]
	b _0223B0E8
_0223B0AC:
	ldr r3, [r2, #4]
	mov ip, #2
	cmp r0, #0
	strb ip, [r3, #0x1c]
	moveq r0, #5
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #2
	moveq r0, #4
	streqb r0, [r2]
	beq _0223B0E8
	cmp r0, #1
	streqb ip, [r2]
	movne r0, #3
	strneb r0, [r2]
_0223B0E8:
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #8
	bl ov18_0223E994
	bl ov18_0223AE94
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223B100: .word 0x0225334C
	arm_func_end ov18_0223AF10

	arm_func_start ov18_0223B104
ov18_0223B104: ; 0x0223B104
	stmfd sp!, {r4, lr}
	ldr r0, _0223B188 ; =0x0225334C
	mov r1, #0
	ldrb r2, [r0]
	ldr r0, [r0, #4]
	sub r4, r2, #4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243BBC
	mov r2, r0
	mov r0, #0
	mov r1, #0x32
	bl ov18_02243ECC
	ldr r0, _0223B188 ; =0x0225334C
	add r3, r4, #3
	ldr r2, [r0, #4]
	ldr r1, _0223B18C ; =0x022493FE
	mov r3, r3, lsl #2
	ldr r0, _0223B190 ; =0x02249400
	add ip, r2, r4, lsl #2
	ldrh r2, [r1, r3]
	ldrh r3, [r0, r3]
	ldr r0, [ip, #0x10]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0223B188 ; =0x0225334C
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r2, #3
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243DE4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223B188: .word 0x0225334C
_0223B18C: .word 0x022493FE
_0223B190: .word 0x02249400
	arm_func_end ov18_0223B104

	arm_func_start ov18_0223B194
ov18_0223B194: ; 0x0223B194
	stmfd sp!, {r4, lr}
	ldr r0, _0223B2F0 ; =0x0225334C
	ldrb r0, [r0]
	sub r4, r0, #4
	bl ov18_0223FFB8
	cmp r0, #0
	beq _0223B264
	cmp r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, #0xe
	bl ov18_0223E994
	mov r0, r4
	bl ov18_0223E5E0
	ldr r0, _0223B2F0 ; =0x0225334C
	mov r1, #0
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #4]
	bl ov18_02243BBC
	mov r2, r0
	mov r0, #0
	mov r1, #0x56
	bl ov18_02243ECC
	ldr r0, _0223B2F0 ; =0x0225334C
	mov ip, r4, lsl #2
	ldr r0, [r0, #4]
	mvn r1, #0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #4]
	ldr r2, _0223B2F4 ; =0x022493FE
	ldr r3, _0223B2F8 ; =0x02249400
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	bl ov18_02243CF4
	ldr r0, _0223B2F0 ; =0x0225334C
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r2, #3
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #4]
	bl ov18_02243DE4
	ldr r0, _0223B2F0 ; =0x0225334C
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243B3C
	mov r1, #0
	ldr r0, _0223B2F0 ; =0x0225334C
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0x10]
	b _0223B2E0
_0223B264:
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _0223B2F0 ; =0x0225334C
	mov r1, #0
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243BBC
	mov r2, r0
	mov r0, #0
	mov r1, #0x11
	bl ov18_02243ECC
	ldr r0, _0223B2F0 ; =0x0225334C
	add r1, r4, #3
	ldr r0, [r0, #4]
	mov ip, r1, lsl #2
	ldr r2, _0223B2F4 ; =0x022493FE
	ldr r3, _0223B2F8 ; =0x02249400
	add r0, r0, r4, lsl #2
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	ldr r0, [r0, #0x10]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _0223B2F0 ; =0x0225334C
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r2, #3
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl ov18_02243DE4
_0223B2E0:
	bl ov18_0223FF74
	ldr r0, _0223B2FC ; =ov18_0223B300
	bl ov18_0222F6C4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223B2F0: .word 0x0225334C
_0223B2F4: .word 0x022493FE
_0223B2F8: .word 0x02249400
_0223B2FC: .word ov18_0223B300
	arm_func_end ov18_0223B194

	arm_func_start ov18_0223B300
ov18_0223B300: ; 0x0223B300
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223B320 ; =ov18_0223A9F0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223B320: .word ov18_0223A9F0
	arm_func_end ov18_0223B300

	arm_func_start ov18_0223B324
ov18_0223B324: ; 0x0223B324
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _0223B3EC ; =0x022493E0
	ldr r0, _0223B3F0 ; =0x0225334C
	ldrb r7, [r1]
	ldrb r6, [r1, #1]
	ldrb r5, [r1, #2]
	ldrb r4, [r1, #3]
	ldrb lr, [r1, #4]
	ldrb ip, [r1, #5]
	ldrb r3, [r1, #6]
	ldrb r2, [r1, #7]
	ldrb r1, [r0]
	strb r7, [sp, #4]
	strb r2, [sp, #3]
	strb r6, [sp, #5]
	strb r5, [sp, #6]
	strb r4, [sp, #7]
	strb lr, [sp]
	strb ip, [sp, #1]
	strb r3, [sp, #2]
	cmp r1, #3
	add r2, sp, #4
	addhi sp, sp, #8
	ldmhiia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r2, r1]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	mov r2, r1
	bl ov18_0223D154
	ldr r0, _0223B3F0 ; =0x0225334C
	ldrb r0, [r0]
	cmp r0, #3
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov18_0223E1D8
	ldr r1, _0223B3F0 ; =0x0225334C
	cmp r0, #2
	ldrb ip, [r1]
	ldr r1, [r1, #4]
	movgt r0, #3
	add r2, sp, #0
	ldrb r3, [r2, r0]
	add r0, r1, ip, lsl #2
	ldr r0, [r0, #4]
	mvn r1, #0
	mov r2, #0
	bl ov18_02243C74
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B3EC: .word 0x022493E0
_0223B3F0: .word 0x0225334C
	arm_func_end ov18_0223B324

	.rodata


	.global Unk_ov18_022493DC
Unk_ov18_022493DC: ; 0x022493DC
	.incbin "incbin/overlay18_rodata.bin", 0x2FA8, 0x2FAC - 0x2FA8

	.global Unk_ov18_022493E0
Unk_ov18_022493E0: ; 0x022493E0
	.incbin "incbin/overlay18_rodata.bin", 0x2FAC, 0x2FB0 - 0x2FAC

	.global Unk_ov18_022493E4
Unk_ov18_022493E4: ; 0x022493E4
	.incbin "incbin/overlay18_rodata.bin", 0x2FB0, 0x2FB4 - 0x2FB0

	.global Unk_ov18_022493E8
Unk_ov18_022493E8: ; 0x022493E8
	.incbin "incbin/overlay18_rodata.bin", 0x2FB4, 0x2FCA - 0x2FB4

	.global Unk_ov18_022493FE
Unk_ov18_022493FE: ; 0x022493FE
	.incbin "incbin/overlay18_rodata.bin", 0x2FCA, 0x2FE2 - 0x2FCA

	.global Unk_ov18_02249416
Unk_ov18_02249416: ; 0x02249416
	.incbin "incbin/overlay18_rodata.bin", 0x2FE2, 0x301A - 0x2FE2

	.global Unk_ov18_0224944E
Unk_ov18_0224944E: ; 0x0224944E
	.incbin "incbin/overlay18_rodata.bin", 0x301A, 0x3054 - 0x301A

	.global Unk_ov18_02249488
Unk_ov18_02249488: ; 0x02249488
	.incbin "incbin/overlay18_rodata.bin", 0x3054, 0x7



	.data


	.global Unk_ov18_0224A3EC
Unk_ov18_0224A3EC: ; 0x0224A3EC
	.incbin "incbin/overlay18_data.bin", 0xC8C, 0xCA0 - 0xC8C

	.global Unk_ov18_0224A400
Unk_ov18_0224A400: ; 0x0224A400
	.incbin "incbin/overlay18_data.bin", 0xCA0, 0xCB8 - 0xCA0

	.global Unk_ov18_0224A418
Unk_ov18_0224A418: ; 0x0224A418
	.incbin "incbin/overlay18_data.bin", 0xCB8, 0xCD0 - 0xCB8

	.global Unk_ov18_0224A430
Unk_ov18_0224A430: ; 0x0224A430
	.incbin "incbin/overlay18_data.bin", 0xCD0, 0xCE4 - 0xCD0

	.global Unk_ov18_0224A444
Unk_ov18_0224A444: ; 0x0224A444
	.incbin "incbin/overlay18_data.bin", 0xCE4, 0x15



	.bss


	.global Unk_ov18_0225334C
Unk_ov18_0225334C: ; 0x0225334C
	.space 0x4

	.global Unk_ov18_02253350
Unk_ov18_02253350: ; 0x02253350
	.space 0x4

