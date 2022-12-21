	.include "macros/function.inc"
	.include "include/unk_020DE3B8.inc"

	

	.text


	arm_func_start sub_020DE3B8
sub_020DE3B8: ; 0x020DE3B8
	add r3, r0, #5
	ldrb r2, [r3, r1]
	add ip, r3, r1
	cmp r2, #5
	movhi r0, #1
	bxhi lr
	mvnlo r0, #0
	bxlo lr
	ldrb r2, [r0, #4]
	add ip, ip, #1
	add r3, r3, r2
	cmp ip, r3
	bhs _020DE408
_020DE3EC:
	ldrb r2, [ip]
	cmp r2, #0
	movne r0, #1
	bxne lr
	add ip, ip, #1
	cmp ip, r3
	blo _020DE3EC
_020DE408:
	sub r1, r1, #1
	add r0, r0, r1
	ldrb r0, [r0, #5]
	tst r0, #1
	movne r0, #1
	mvneq r0, #0
	bx lr
	arm_func_end sub_020DE3B8

	arm_func_start sub_020DE424
sub_020DE424: ; 0x020DE424
	add r3, r0, #5
	add r1, r3, r1
	sub ip, r1, #1
	mov r1, #0
_020DE434:
	ldrb r2, [ip]
	cmp r2, #9
	addlo r0, r2, #1
	strlob r0, [ip]
	bxlo lr
	cmp ip, r3
	bne _020DE468
	mov r1, #1
	strb r1, [ip]
	ldrsh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
	bx lr
_020DE468:
	strb r1, [ip], #-1
	b _020DE434
_020DE470:
	.byte 0x1E, 0xFF, 0x2F, 0xE1
	arm_func_end sub_020DE424

	arm_func_start sub_020DE474
sub_020DE474: ; 0x020DE474
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldrb r2, [r5, #4]
	cmp r4, r2
	ldmgeia sp!, {r3, r4, r5, pc}
	bl sub_020DE3B8
	strb r4, [r5, #4]
	cmp r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl sub_020DE424
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020DE474

	arm_func_start sub_020DE4B4
sub_020DE4B4: ; 0x020DE4B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r0, #0
	mov r8, r2
	strb r0, [sl]
	mov sb, r1
	cmp r8, #0
	strb r0, [sl, #4]
	cmpeq sb, #0
	beq _020DE540
	mov r6, #0xa
	mov fp, r0
	mov r5, r0
	mov r4, r0
_020DE4EC:
	ldrb r1, [sl, #4]
	mov r0, sb
	mov r2, r6
	add r3, r1, #1
	mov r7, r1
	strb r3, [sl, #4]
	mov r1, r8
	mov r3, fp
	bl sub_020E1EE0
	add r1, sl, r7
	strb r0, [r1, #5]
	mov r0, sb
	mov r1, r8
	mov r2, #0xa
	mov r3, #0
	bl sub_020E1ED4
	mov r8, r1
	mov sb, r0
	cmp r8, r5
	cmpeq sb, r4
	bne _020DE4EC
_020DE540:
	ldrb r0, [sl, #4]
	add r2, sl, #5
	add r0, r2, r0
	sub r3, r0, #1
	cmp r2, r3
	bhs _020DE570
_020DE558:
	ldrb r0, [r3]
	ldrb r1, [r2]
	strb r0, [r2], #1
	strb r1, [r3], #-1
	cmp r2, r3
	blo _020DE558
_020DE570:
	ldrb r0, [sl, #4]
	sub r0, r0, #1
	strh r0, [sl, #2]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020DE4B4

	arm_func_start sub_020DE580
sub_020DE580: ; 0x020DE580
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	ldrb r6, [r1, #4]
	ldrb r5, [r2, #4]
	mov r4, #0
	add r3, sp, #0
	add r5, r6, r5
	sub r5, r5, #1
	add r3, r3, r5
	add r6, r3, #1
	mov r7, r6
	strb r4, [r0]
	cmp r5, #0
	ble _020DE648
	add lr, r1, #5
	add fp, r2, #5
_020DE5C0:
	ldrb r3, [r2, #4]
	sub sl, r3, #1
	sub r3, r5, sl
	subs sb, r3, #1
	ldrb r3, [r1, #4]
	movmi sb, #0
	submi sl, r5, #1
	add r8, sl, #1
	sub r3, r3, sb
	cmp r8, r3
	movgt r8, r3
	add sl, fp, sl
	add sb, lr, sb
	cmp r8, #0
	ble _020DE614
_020DE5FC:
	ldrb ip, [sb], #1
	ldrb r3, [sl], #-1
	sub r8, r8, #1
	cmp r8, #0
	mla r4, ip, r3, r4
	bgt _020DE5FC
_020DE614:
	ldr r3, _020DE700 ; =0xCCCCCCCD
	sub r5, r5, #1
	umull r8, sb, r4, r3
	mov sb, sb, lsr #3
	cmp r5, #0
	mov sl, #0xa
	umull r8, sb, sl, sb
	sub sb, r4, r8
	strb sb, [r6, #-1]!
	mov r8, r4
	umull r3, r4, r8, r3
	mov r4, r4, lsr #3
	bgt _020DE5C0
_020DE648:
	ldrsh r3, [r1, #2]
	ldrsh r1, [r2, #2]
	cmp r4, #0
	add r1, r3, r1
	strh r1, [r0, #2]
	beq _020DE670
	strb r4, [r6, #-1]!
	ldrsh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
_020DE670:
	mov r3, #0
	b _020DE688
_020DE678:
	ldrb r2, [r6], #1
	add r1, r0, r3
	add r3, r3, #1
	strb r2, [r1, #5]
_020DE688:
	cmp r3, #0x20
	bge _020DE698
	cmp r6, r7
	blo _020DE678
_020DE698:
	cmp r6, r7
	addhs sp, sp, #0x40
	strb r3, [r0, #4]
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [r6]
	cmp r1, #5
	addlo sp, sp, #0x40
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bne _020DE6F0
	add r2, r6, #1
	cmp r2, r7
	bhs _020DE6E0
_020DE6C8:
	ldrb r1, [r2]
	cmp r1, #0
	bne _020DE6F0
	add r2, r2, #1
	cmp r2, r7
	blo _020DE6C8
_020DE6E0:
	ldrb r1, [r6, #-1]
	tst r1, #1
	addeq sp, sp, #0x40
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DE6F0:
	ldrb r1, [r0, #4]
	bl sub_020DE424
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020DE700: .word 0xCCCCCCCD
	arm_func_end sub_020DE580

	arm_func_start sub_020DE704
sub_020DE704: ; 0x020DE704
	stmfd sp!, {r3, lr}
	strh r2, [r0, #2]
	mov ip, #0
	strb ip, [r0]
	b _020DE72C
_020DE718:
	ldrsb r3, [r1], #1
	add r2, r0, ip
	add ip, ip, #1
	sub r3, r3, #0x30
	strb r3, [r2, #5]
_020DE72C:
	cmp ip, #0x20
	bge _020DE740
	ldrsb r2, [r1]
	cmp r2, #0
	bne _020DE718
_020DE740:
	strb ip, [r0, #4]
	ldrsb r2, [r1]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	cmp r2, #5
	ldmltia sp!, {r3, pc}
	bgt _020DE794
	ldrsb r2, [r1, #1]
	add r1, r1, #1
	cmp r2, #0
	beq _020DE780
_020DE76C:
	cmp r2, #0x30
	bne _020DE794
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _020DE76C
_020DE780:
	sub r1, ip, #1
	add r1, r0, r1
	ldrb r1, [r1, #5]
	tst r1, #1
	ldmeqia sp!, {r3, pc}
_020DE794:
	ldrb r1, [r0, #4]
	bl sub_020DE424
	ldmia sp!, {r3, pc}
	arm_func_end sub_020DE704

	arm_func_start sub_020DE7A0
sub_020DE7A0: ; 0x020DE7A0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r4, r1
	mvn r2, #0x34
	mov r5, r0
	cmp r4, r2
	bgt _020DE7D0
	bge _020DE89C
	sub r0, r2, #0xb
	cmp r4, r0
	beq _020DE884
	b _020DEA2C
_020DE7D0:
	add r1, r4, #0x20
	cmp r1, #0x28
	addls pc, pc, r1, lsl #2
	b _020DEA2C
_020DE7E0: ; jump table
	b _020DE8B0 ; case 0
	b _020DEA2C ; case 1
	b _020DEA2C ; case 2
	b _020DEA2C ; case 3
	b _020DEA2C ; case 4
	b _020DEA2C ; case 5
	b _020DEA2C ; case 6
	b _020DEA2C ; case 7
	b _020DEA2C ; case 8
	b _020DEA2C ; case 9
	b _020DEA2C ; case 10
	b _020DEA2C ; case 11
	b _020DEA2C ; case 12
	b _020DEA2C ; case 13
	b _020DEA2C ; case 14
	b _020DEA2C ; case 15
	b _020DE8C4 ; case 16
	b _020DEA2C ; case 17
	b _020DEA2C ; case 18
	b _020DEA2C ; case 19
	b _020DEA2C ; case 20
	b _020DEA2C ; case 21
	b _020DEA2C ; case 22
	b _020DEA2C ; case 23
	b _020DE8D8 ; case 24
	b _020DE8EC ; case 25
	b _020DE900 ; case 26
	b _020DE914 ; case 27
	b _020DE928 ; case 28
	b _020DE93C ; case 29
	b _020DE950 ; case 30
	b _020DE964 ; case 31
	b _020DE978 ; case 32
	b _020DE98C ; case 33
	b _020DE9A0 ; case 34
	b _020DE9B4 ; case 35
	b _020DE9C8 ; case 36
	b _020DE9DC ; case 37
	b _020DE9F0 ; case 38
	b _020DEA04 ; case 39
	b _020DEA18 ; case 40
_020DE884:
	ldr r1, _020DEAD0 ; =0x021018CC
	mov r0, r5
	mvn r2, #0x13
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE89C:
	ldr r1, _020DEAD4 ; =0x021018FC
	add r2, r2, #0x25
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE8B0:
	ldr r1, _020DEAD8 ; =0x02101924
	add r2, r2, #0x2b
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE8C4:
	ldr r1, _020DEADC ; =0x0210193C
	add r2, r2, #0x30
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE8D8:
	ldr r1, _020DEAE0 ; =0x0210194C
	add r2, r2, #0x32
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE8EC:
	ldr r1, _020DEAE4 ; =0x02101954
	add r2, r2, #0x32
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE900:
	ldr r1, _020DEAE8 ; =0x0210195C
	add r2, r2, #0x33
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE914:
	ldr r1, _020DEAEC ; =0x02101964
	add r2, r2, #0x33
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE928:
	ldr r1, _020DEAF0 ; =0x0210196C
	add r2, r2, #0x33
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE93C:
	ldr r1, _020DEAF4 ; =0x02101970
	add r2, r2, #0x34
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE950:
	ldr r1, _020DEAF8 ; =0x02101974
	add r2, r2, #0x34
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE964:
	ldr r1, _020DEAFC ; =0x02101978
	add r2, r2, #0x34
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE978:
	ldr r1, _020DEB00 ; =0x0210197C
	mov r2, #0
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE98C:
	ldr r1, _020DEB04 ; =0x02101980
	mov r2, #0
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9A0:
	ldr r1, _020DEB08 ; =0x02101984
	mov r2, #0
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9B4:
	ldr r1, _020DEB0C ; =0x02101988
	mov r2, #0
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9C8:
	ldr r1, _020DEB10 ; =0x0210198C
	mov r2, #1
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9DC:
	ldr r1, _020DEB14 ; =0x02101990
	mov r2, #1
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DE9F0:
	ldr r1, _020DEB18 ; =0x02101994
	mov r2, #1
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DEA04:
	ldr r1, _020DEB1C ; =0x02101998
	mov r2, #2
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DEA18:
	ldr r1, _020DEB20 ; =0x0210199C
	mov r2, #2
	bl sub_020DE704
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_020DEA2C:
	and r0, r4, #0x80000000
	add r1, r4, r0, lsr #31
	add r0, sp, #0x26
	mov r1, r1, asr #1
	bl sub_020DE7A0
	add r1, sp, #0x26
	mov r0, r5
	mov r2, r1
	bl sub_020DE580
	tst r4, #1
	addeq sp, sp, #0x4c
	ldmeqia sp!, {r4, r5, pc}
	add r3, sp, #0
	mov ip, r5
	mov r2, #9
_020DEA68:
	ldrh r1, [ip]
	ldrh r0, [ip, #2]
	add ip, ip, #4
	subs r2, r2, #1
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	bne _020DEA68
	ldrh r0, [ip]
	cmp r4, #0
	strh r0, [r3]
	add r0, sp, #0x26
	ble _020DEAAC
	ldr r1, _020DEB04 ; =0x02101980
	mov r2, #0
	bl sub_020DE704
	b _020DEAB8
_020DEAAC:
	ldr r1, _020DEAFC ; =0x02101978
	mvn r2, #0
	bl sub_020DE704
_020DEAB8:
	add r1, sp, #0
	add r2, sp, #0x26
	mov r0, r5
	bl sub_020DE580
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020DEAD0: .word 0x021018CC
_020DEAD4: .word 0x021018FC
_020DEAD8: .word 0x02101924
_020DEADC: .word 0x0210193C
_020DEAE0: .word 0x0210194C
_020DEAE4: .word 0x02101954
_020DEAE8: .word 0x0210195C
_020DEAEC: .word 0x02101964
_020DEAF0: .word 0x0210196C
_020DEAF4: .word 0x02101970
_020DEAF8: .word 0x02101974
_020DEAFC: .word 0x02101978
_020DEB00: .word 0x0210197C
_020DEB04: .word 0x02101980
_020DEB08: .word 0x02101984
_020DEB0C: .word 0x02101988
_020DEB10: .word 0x0210198C
_020DEB14: .word 0x02101990
_020DEB18: .word 0x02101994
_020DEB1C: .word 0x02101998
_020DEB20: .word 0x0210199C
	arm_func_end sub_020DE7A0

	arm_func_start sub_020DEB24
sub_020DEB24: ; 0x020DEB24
	stmfd sp!, {r4, lr}
	ldrb r3, [r0, #5]
	cmp r3, #0
	bne _020DEB48
	ldrb r0, [r1, #5]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
_020DEB48:
	ldrb r2, [r1, #5]
	cmp r2, #0
	bne _020DEB64
	cmp r3, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
_020DEB64:
	ldrsh r3, [r0, #2]
	ldrsh r2, [r1, #2]
	cmp r3, r2
	bne _020DEBFC
	ldrb r4, [r0, #4]
	ldrb r2, [r1, #4]
	mov ip, #0
	mov lr, r4
	cmp r4, r2
	movgt lr, r2
	cmp lr, #0
	ble _020DEBBC
_020DEB94:
	add r3, r0, ip
	add r2, r1, ip
	ldrb r3, [r3, #5]
	ldrb r2, [r2, #5]
	cmp r3, r2
	movne r0, #0
	ldmneia sp!, {r4, pc}
	add ip, ip, #1
	cmp ip, lr
	blt _020DEB94
_020DEBBC:
	cmp lr, r4
	moveq r0, r1
	ldrb r1, [r0, #4]
	cmp ip, r1
	bge _020DEBF4
_020DEBD0:
	add r1, r0, ip
	ldrb r1, [r1, #5]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldrb r1, [r0, #4]
	add ip, ip, #1
	cmp ip, r1
	blt _020DEBD0
_020DEBF4:
	mov r0, #1
	ldmia sp!, {r4, pc}
_020DEBFC:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020DEB24

	arm_func_start sub_020DEC04
sub_020DEC04: ; 0x020DEC04
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r2, [r0, #5]
	cmp r2, #0
	bne _020DEC28
	ldrb r0, [r1, #5]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020DEC28:
	ldrb r2, [r1, #5]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrsh r3, [r1, #2]
	ldrsh r2, [r0, #2]
	cmp r2, r3
	bne _020DECD8
	ldrb r5, [r0, #4]
	ldrb r4, [r1, #4]
	mov ip, #0
	mov lr, r5
	cmp r5, r4
	movgt lr, r4
	cmp lr, #0
	ble _020DEC9C
_020DEC68:
	add r3, r1, ip
	add r2, r0, ip
	ldrb r3, [r3, #5]
	ldrb r2, [r2, #5]
	cmp r2, r3
	movlo r0, #1
	ldmloia sp!, {r3, r4, r5, pc}
	cmp r3, r2
	movlo r0, #0
	ldmloia sp!, {r3, r4, r5, pc}
	add ip, ip, #1
	cmp ip, lr
	blt _020DEC68
_020DEC9C:
	cmp lr, r5
	bne _020DECD0
	cmp ip, r4
	bge _020DECD0
_020DECAC:
	add r0, r1, ip
	ldrb r0, [r0, #5]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #4]
	add ip, ip, #1
	cmp ip, r0
	blt _020DECAC
_020DECD0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020DECD8:
	movlt r0, #1
	movge r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020DEC04

	arm_func_start sub_020DECE4
sub_020DECE4: ; 0x020DECE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, #9
_020DECF0:
	ldrh r4, [r1]
	ldrh r3, [r1, #2]
	add r1, r1, #4
	subs r5, r5, #1
	strh r4, [r6]
	strh r3, [r6, #2]
	add r6, r6, #4
	bne _020DECF0
	ldrh r1, [r1]
	strh r1, [r6]
	ldrb r1, [r2, #5]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r7, [r0, #4]
	ldrb r3, [r2, #4]
	ldrsh r4, [r0, #2]
	mov r1, r7
	cmp r7, r3
	movlt r1, r3
	ldrsh r3, [r2, #2]
	sub r6, r4, r3
	add r1, r1, r6
	cmp r1, #0x20
	movgt r1, #0x20
	cmp r7, r1
	bge _020DED7C
	mov r4, #0
_020DED5C:
	ldrb r5, [r0, #4]
	add r3, r0, r7
	add r5, r5, #1
	strb r5, [r0, #4]
	strb r4, [r3, #5]
	ldrb r7, [r0, #4]
	cmp r7, r1
	blt _020DED5C
_020DED7C:
	ldrb r4, [r2, #4]
	add r3, r0, #5
	add ip, r3, r1
	add r4, r4, r6
	cmp r4, r1
	addlt ip, r3, r4
	sub r4, ip, r3
	add r1, r2, #5
	sub r4, r4, r6
	add lr, r1, r4
	mov r4, lr
	b _020DEE10
_020DEDAC:
	ldrb r7, [ip, #-1]!
	ldrb r5, [lr, #-1]!
	cmp r7, r5
	bhs _020DEE00
	ldrb r7, [ip, #-1]
	sub r5, ip, #1
	cmp r7, #0
	bne _020DEDD8
_020DEDCC:
	ldrb r7, [r5, #-1]!
	cmp r7, #0
	beq _020DEDCC
_020DEDD8:
	cmp r5, ip
	beq _020DEE00
_020DEDE0:
	ldrb r7, [r5]
	sub r7, r7, #1
	strb r7, [r5]
	ldrb r7, [r5, #1]!
	cmp r5, ip
	add r7, r7, #0xa
	strb r7, [r5]
	bne _020DEDE0
_020DEE00:
	ldrb r7, [ip]
	ldrb r5, [lr]
	sub r5, r7, r5
	strb r5, [ip]
_020DEE10:
	cmp ip, r3
	cmphi lr, r1
	bhi _020DEDAC
	ldrb r5, [r2, #4]
	sub lr, r4, r1
	cmp lr, r5
	bge _020DEEEC
	ldrb r1, [r4]
	mov r7, #0
	cmp r1, #5
	movlo r7, #1
	blo _020DEE88
	bne _020DEE88
	add r1, r2, #5
	add r2, r1, r5
	add r4, r4, #1
	cmp r4, r2
	bhs _020DEE70
_020DEE58:
	ldrb r1, [r4]
	cmp r1, #0
	bne _020DEEEC
	add r4, r4, #1
	cmp r4, r2
	blo _020DEE58
_020DEE70:
	add r1, r3, lr
	add r2, r1, r6
	ldrb r1, [r2, #-1]
	sub ip, r2, #1
	tst r1, #1
	movne r7, #1
_020DEE88:
	cmp r7, #0
	beq _020DEEEC
	ldrb r1, [ip]
	cmp r1, #1
	bhs _020DEEE0
	ldrb r1, [ip, #-1]
	sub r2, ip, #1
	cmp r1, #0
	bne _020DEEB8
_020DEEAC:
	ldrb r1, [r2, #-1]!
	cmp r1, #0
	beq _020DEEAC
_020DEEB8:
	cmp r2, ip
	beq _020DEEE0
_020DEEC0:
	ldrb r1, [r2]
	sub r1, r1, #1
	strb r1, [r2]
	ldrb r1, [r2, #1]!
	cmp r2, ip
	add r1, r1, #0xa
	strb r1, [r2]
	bne _020DEEC0
_020DEEE0:
	ldrb r1, [ip]
	sub r1, r1, #1
	strb r1, [ip]
_020DEEEC:
	ldrb r1, [r3]
	mov r5, r3
	cmp r1, #0
	bne _020DEF08
_020DEEFC:
	ldrb r1, [r5, #1]!
	cmp r1, #0
	beq _020DEEFC
_020DEF08:
	cmp r5, r3
	bls _020DEF50
	ldrsh r1, [r0, #2]
	sub r2, r5, r3
	and r4, r2, #0xff
	sub r1, r1, r4
	strh r1, [r0, #2]
	ldrb r1, [r0, #4]
	add r2, r3, r1
	cmp r5, r2
	bhs _020DEF44
_020DEF34:
	ldrb r1, [r5], #1
	cmp r5, r2
	strb r1, [r3], #1
	blo _020DEF34
_020DEF44:
	ldrb r1, [r0, #4]
	sub r1, r1, r4
	strb r1, [r0, #4]
_020DEF50:
	ldrb r1, [r0, #4]
	add r2, r0, #5
	add r3, r2, r1
	cmp r3, r2
	bls _020DEF78
_020DEF64:
	ldrb r1, [r3, #-1]!
	cmp r1, #0
	bne _020DEF78
	cmp r3, r2
	bhi _020DEF64
_020DEF78:
	sub r1, r3, r2
	add r1, r1, #1
	strb r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020DECE4

	arm_func_start sub_020DEF88
sub_020DEF88: ; 0x020DEF88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x58
	mov r8, r1
	mov r6, r2
	mov r7, r0
	mov r0, r8
	mov r1, r6
	bl sub_020DF868
	cmp r0, #0
	movne r1, #1
	moveq r1, #0
	mov r4, r1, lsl #0x18
	mov r0, #0
	mov r1, r0
	mov r2, r8
	mov r3, r6
	mov r5, r4, asr #0x18
	bl sub_020E0F94
	bne _020DEFF4
	strb r5, [r7]
	mov r1, #0
	strh r1, [r7, #2]
	mov r0, #1
	strb r0, [r7, #4]
	add sp, sp, #0x58
	strb r1, [r7, #5]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020DEFF4:
	mov r0, r8
	mov r1, r6
	bl sub_020DF87C
	cmp r0, #2
	bgt _020DF040
	strb r5, [r7]
	mov r2, #0
	strh r2, [r7, #2]
	mov r2, #1
	mov r0, r8
	mov r1, r6
	strb r2, [r7, #4]
	bl sub_020DF87C
	cmp r0, #1
	moveq r0, #0x4e
	movne r0, #0x49
	add sp, sp, #0x58
	strb r0, [r7, #5]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020DF040:
	cmp r5, #0
	beq _020DF064
	mov r0, #0
	mov r1, r0
	mov r2, r8
	mov r3, r6
	bl sub_020E074C
	mov r8, r0
	mov r6, r1
_020DF064:
	add r2, sp, #8
	mov r0, r8
	mov r1, r6
	bl sub_020DE0A4
	mov r4, r0
	mov r6, r1
	orr ip, r4, #0
	rsbs r2, ip, #0
	orr r3, r6, #0x100000
	rsc r1, r3, #0
	mov r0, #0
	and r3, r3, r1
	sub r1, r0, #1
	and ip, ip, r2
	mov r2, r1
	adds r0, ip, r1
	adc r1, r3, r2
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_020DF7D4
	rsb r8, r0, #0x35
	ldr r1, [sp, #8]
	add r0, sp, #0xc
	sub r1, r1, r8
	bl sub_020DE7A0
	mov r0, r4
	mov r1, r6
	mov r2, r8
	bl sub_020DE160
	bl sub_020E012C
	mov r2, r1
	mov r1, r0
	add r0, sp, #0x32
	bl sub_020DE4B4
	mov r0, r7
	add r1, sp, #0x32
	add r2, sp, #0xc
	bl sub_020DE580
	strb r5, [r7]
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020DEF88

	arm_func_start sub_020DF108
sub_020DF108: ; 0x020DF108
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r3
	ldrsh r5, [r0, #2]
	mov r0, r4
	bl sub_020DEF88
	ldrb r0, [r4, #5]
	cmp r0, #9
	ldmhiia sp!, {r3, r4, r5, pc}
	cmp r5, #0x20
	movgt r5, #0x20
	mov r0, r4
	mov r1, r5
	bl sub_020DE474
	ldrb r0, [r4, #4]
	cmp r0, r5
	bge _020DF16C
	mov r1, #0
_020DF14C:
	ldrb r2, [r4, #4]
	add r0, r4, r0
	add r2, r2, #1
	strb r2, [r4, #4]
	strb r1, [r0, #5]
	ldrb r0, [r4, #4]
	cmp r0, r5
	blt _020DF14C
_020DF16C:
	ldrsh r1, [r4, #2]
	sub r0, r0, #1
	mov r2, #0
	sub r0, r1, r0
	strh r0, [r4, #2]
	ldrb r0, [r4, #4]
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, pc}
_020DF18C:
	add r1, r4, r2
	ldrb r0, [r1, #5]
	add r2, r2, #1
	add r0, r0, #0x30
	strb r0, [r1, #5]
	ldrb r0, [r4, #4]
	cmp r2, r0
	blt _020DF18C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020DF108

	arm_func_start sub_020DF1B0
sub_020DF1B0: ; 0x020DF1B0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xfc
	mov r4, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _020DF1F0
	ldrsb r0, [r4]
	mov r2, #0
	cmp r0, #0
	ldreq r3, _020DF7B4 ; =0x3FF00000
	mov r0, #0
	ldrne r3, _020DF7B8 ; =0xBFF00000
	mov r1, r0
	bl sub_020DE05C
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF1F0:
	ldrb r0, [r4, #5]
	cmp r0, #0x30
	beq _020DF210
	cmp r0, #0x49
	beq _020DF238
	cmp r0, #0x4e
	beq _020DF26C
	b _020DF2B4
_020DF210:
	ldrsb r0, [r4]
	mov r2, #0
	cmp r0, #0
	ldreq r3, _020DF7B4 ; =0x3FF00000
	mov r0, #0
	ldrne r3, _020DF7B8 ; =0xBFF00000
	mov r1, r0
	bl sub_020DE05C
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF238:
	ldrsb r0, [r4]
	mov r5, #0
	cmp r0, #0
	ldreq r4, _020DF7B4 ; =0x3FF00000
	ldr r0, _020DF7BC ; =0x021015AC
	ldrne r4, _020DF7B8 ; =0xBFF00000
	ldr r0, [r0, #0]
	bl sub_020E16BC
	mov r2, r5
	mov r3, r4
	bl sub_020DE05C
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF26C:
	ldr r1, _020DF7C0 ; =0x7FF00000
	add r3, sp, #0x10
	mov r2, #0
	str r2, [r3, #0]
	str r1, [r3, #4]
	ldrsb r0, [r4]
	cmp r0, #0
	beq _020DF29C
	orr r0, r1, #0x80000000
	orr r1, r2, r2
	str r1, [r3, #0]
	str r0, [r3, #4]
_020DF29C:
	ldmia r3, {r0, r1}
	orr r0, r0, #0
	orr r1, r1, #0x80000
	stmia r3, {r0, r1}
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF2B4:
	add r3, sp, #0xd6
	mov r5, r4
	mov r2, #9
_020DF2C0:
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	add r5, r5, #4
	subs r2, r2, #1
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	bne _020DF2C0
	ldrh r0, [r5]
	add r1, sp, #0xdb
	strh r0, [r3]
	ldrb r0, [sp, #0xda]
	add r5, r1, r0
	cmp r1, r5
	bhs _020DF310
_020DF2FC:
	ldrb r0, [r1]
	sub r0, r0, #0x30
	strb r0, [r1], #1
	cmp r1, r5
	blo _020DF2FC
_020DF310:
	ldrb r1, [sp, #0xda]
	ldrsh r2, [sp, #0xd8]
	add r0, sp, #0xb0
	sub r1, r1, #1
	add r1, r2, r1
	strh r1, [sp, #0xd8]
	ldr r1, _020DF7C4 ; =0x021019A0
	mov r2, #0x134
	ldrsh fp, [sp, #0xd8]
	bl sub_020DE704
	add r0, sp, #0xb0
	add r1, sp, #0xd6
	bl sub_020DEC04
	cmp r0, #0
	beq _020DF380
	ldrsb r0, [r4]
	mov r5, #0
	cmp r0, #0
	ldreq r4, _020DF7B4 ; =0x3FF00000
	ldr r0, _020DF7BC ; =0x021015AC
	ldrne r4, _020DF7B8 ; =0xBFF00000
	ldr r0, [r0, #0]
	bl sub_020E16BC
	mov r2, r5
	mov r3, r4
	bl sub_020DE05C
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DF380:
	add r1, sp, #0xdb
	ldrb r0, [r1]
	add r8, r1, #1
	bl sub_020E01F8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r8, r5
	bhs _020DF458
_020DF3A0:
	sub r0, r5, r8
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	adds r7, r1, r0, ror #29
	moveq r7, #8
	mov r6, #0
	mov r2, #0
	cmp r7, #0
	ble _020DF3DC
	mov r0, #0xa
_020DF3C8:
	ldrb r1, [r8], #1
	add r2, r2, #1
	cmp r2, r7
	mla r6, r0, r6, r1
	blt _020DF3C8
_020DF3DC:
	ldr r0, _020DF7C8 ; =0x0210188C
	ldr r1, [sp, #0xc]
	add r3, r0, r7, lsl #3
	ldr r2, [r3, #-8]
	ldr r0, [sp, #8]
	ldr r3, [r3, #-4]
	bl sub_020E0234
	mov r4, r0
	mov sb, r1
	mov r0, r6
	bl sub_020E01F8
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, sb
	bl sub_020DFC6C
	cmp r6, #0
	mov r6, r0
	mov sl, r1
	beq _020DF444
	mov r0, r4
	mov r1, sb
	mov r2, r6
	mov r3, sl
	bl sub_020E0F94
	beq _020DF458
_020DF444:
	str r6, [sp, #8]
	str sl, [sp, #0xc]
	cmp r8, r5
	sub fp, fp, r7
	blo _020DF3A0
_020DF458:
	cmp fp, #0
	bge _020DF49C
	rsb r0, fp, #0
	bl sub_020E01B8
	mov r3, r1
	mov r2, r0
	ldr r1, _020DF7CC ; =0x40140000
	mov r0, #0
	bl sub_020DE3AC
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_020E2374
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	b _020DF4D4
_020DF49C:
	mov r0, fp
	bl sub_020E01B8
	mov r3, r1
	mov r2, r0
	ldr r1, _020DF7CC ; =0x40140000
	mov r0, #0
	bl sub_020DE3AC
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_020E0234
	str r0, [sp, #8]
	str r1, [sp, #0xc]
_020DF4D4:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r2, fp
	bl sub_020DE160
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	bl sub_020DF87C
	cmp r0, #2
	bne _020DF508
	ldr r0, _020DF7D0 ; =0x7FEFFFFF
	mvn r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_020DF508:
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, sp, #0x8a
	add r4, sp, #0
	mov r5, #0
	bl sub_020DEF88
	add r0, sp, #0x8a
	add r1, sp, #0xd6
	bl sub_020DEB24
	cmp r0, #0
	bne _020DF77C
	add r0, sp, #0x8a
	add r1, sp, #0xd6
	bl sub_020DEC04
	cmp r0, #0
	movne r5, #1
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r5, #0
	moveq r6, #1
	str r1, [sp]
	str r0, [sp, #4]
	movne r6, #0
_020DF564:
	cmp r6, #0
	bne _020DF58C
	ldmia r4, {r0, r1}
	adds r0, r0, #1
	adc r1, r1, #0
	stmia r4, {r0, r1}
	bl sub_020DF87C
	cmp r0, #2
	beq _020DF77C
	b _020DF5A4
_020DF58C:
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	subs r1, r1, #1
	sbc r0, r0, #0
	str r1, [r4, #0]
	str r0, [r4, #4]
_020DF5A4:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, sp, #0x64
	bl sub_020DEF88
	cmp r5, #0
	beq _020DF5D0
	add r0, sp, #0x64
	add r1, sp, #0xd6
	bl sub_020DEC04
	cmp r0, #0
	beq _020DF6F4
_020DF5D0:
	cmp r5, #0
	bne _020DF6AC
	add r0, sp, #0xd6
	add r1, sp, #0x64
	bl sub_020DEC04
	cmp r0, #0
	bne _020DF6AC
	add r3, sp, #0x8a
	add r5, sp, #0x3e
	mov r2, #9
_020DF5F8:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [r5]
	strh r0, [r5, #2]
	add r5, r5, #4
	subs r2, r2, #1
	bne _020DF5F8
	ldrh r0, [r3]
	add r3, sp, #0x64
	add r4, sp, #0x8a
	strh r0, [r5]
	mov r2, #9
_020DF62C:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [r4]
	strh r0, [r4, #2]
	add r4, r4, #4
	subs r2, r2, #1
	bne _020DF62C
	ldrh r0, [r3]
	add r3, sp, #0x3e
	add r5, sp, #0x64
	strh r0, [r4]
	mov r2, #9
_020DF660:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	add r3, r3, #4
	strh r1, [r5]
	strh r0, [r5, #2]
	add r5, r5, #4
	subs r2, r2, #1
	bne _020DF660
	ldrh r4, [r3]
	ldr r3, [sp, #8]
	ldr r1, [sp]
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #4]
	strh r4, [r5]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r3, [sp]
	str r2, [sp, #4]
	b _020DF6F4
_020DF6AC:
	add r7, sp, #0x64
	add r3, sp, #0x8a
	mov r2, #9
_020DF6B8:
	ldrh r1, [r7]
	ldrh r0, [r7, #2]
	add r7, r7, #4
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	subs r2, r2, #1
	bne _020DF6B8
	ldrh r2, [r7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	strh r2, [r3]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	b _020DF564
_020DF6F4:
	add r0, sp, #0x3e
	add r1, sp, #0xd6
	add r2, sp, #0x8a
	bl sub_020DECE4
	add r0, sp, #0x18
	add r1, sp, #0x64
	add r2, sp, #0xd6
	bl sub_020DECE4
	add r0, sp, #0x3e
	add r1, sp, #0x18
	bl sub_020DEB24
	cmp r0, #0
	beq _020DF758
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	and r1, r1, #1
	and r0, r0, #0
	cmp r0, #0
	cmpeq r1, #0
	beq _020DF77C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	b _020DF77C
_020DF758:
	add r0, sp, #0x3e
	add r1, sp, #0x18
	bl sub_020DEC04
	cmp r0, #0
	bne _020DF77C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_020DF77C:
	ldrsb r0, [sp, #0xd6]
	cmp r0, #0
	beq _020DF7A4
	mov r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r1, r0
	bl sub_020E074C
	str r0, [sp, #8]
	str r1, [sp, #0xc]
_020DF7A4:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0xfc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020DF7B4: .word 0x3FF00000
_020DF7B8: .word 0xBFF00000
_020DF7BC: .word 0x021015AC
_020DF7C0: .word 0x7FF00000
_020DF7C4: .word 0x021019A0
_020DF7C8: .word 0x0210188C
_020DF7CC: .word 0x40140000
_020DF7D0: .word 0x7FEFFFFF
	arm_func_end sub_020DF1B0


	.section .exception, 4


	.global Unk_020E4588
Unk_020E4588: ; 0x020E4588
	.incbin "incbin/arm9_exception.bin", 0x30, 0x8


	.data


	.global Unk_0210188C
Unk_0210188C: ; 0x0210188C
	.incbin "incbin/arm9_data.bin", 0x2BAC, 0x2BEC - 0x2BAC

	.global Unk_021018CC
Unk_021018CC: ; 0x021018CC
	.incbin "incbin/arm9_data.bin", 0x2BEC, 0x2C1C - 0x2BEC

	.global Unk_021018FC
Unk_021018FC: ; 0x021018FC
	.incbin "incbin/arm9_data.bin", 0x2C1C, 0x2C44 - 0x2C1C

	.global Unk_02101924
Unk_02101924: ; 0x02101924
	.incbin "incbin/arm9_data.bin", 0x2C44, 0x2C5C - 0x2C44

	.global Unk_0210193C
Unk_0210193C: ; 0x0210193C
	.incbin "incbin/arm9_data.bin", 0x2C5C, 0x2C6C - 0x2C5C

	.global Unk_0210194C
Unk_0210194C: ; 0x0210194C
	.incbin "incbin/arm9_data.bin", 0x2C6C, 0x2C74 - 0x2C6C

	.global Unk_02101954
Unk_02101954: ; 0x02101954
	.incbin "incbin/arm9_data.bin", 0x2C74, 0x2C7C - 0x2C74

	.global Unk_0210195C
Unk_0210195C: ; 0x0210195C
	.incbin "incbin/arm9_data.bin", 0x2C7C, 0x2C84 - 0x2C7C

	.global Unk_02101964
Unk_02101964: ; 0x02101964
	.incbin "incbin/arm9_data.bin", 0x2C84, 0x2C8C - 0x2C84

	.global Unk_0210196C
Unk_0210196C: ; 0x0210196C
	.incbin "incbin/arm9_data.bin", 0x2C8C, 0x2C90 - 0x2C8C

	.global Unk_02101970
Unk_02101970: ; 0x02101970
	.incbin "incbin/arm9_data.bin", 0x2C90, 0x2C94 - 0x2C90

	.global Unk_02101974
Unk_02101974: ; 0x02101974
	.incbin "incbin/arm9_data.bin", 0x2C94, 0x2C98 - 0x2C94

	.global Unk_02101978
Unk_02101978: ; 0x02101978
	.incbin "incbin/arm9_data.bin", 0x2C98, 0x2C9C - 0x2C98

	.global Unk_0210197C
Unk_0210197C: ; 0x0210197C
	.incbin "incbin/arm9_data.bin", 0x2C9C, 0x2CA0 - 0x2C9C

	.global Unk_02101980
Unk_02101980: ; 0x02101980
	.incbin "incbin/arm9_data.bin", 0x2CA0, 0x2CA4 - 0x2CA0

	.global Unk_02101984
Unk_02101984: ; 0x02101984
	.incbin "incbin/arm9_data.bin", 0x2CA4, 0x2CA8 - 0x2CA4

	.global Unk_02101988
Unk_02101988: ; 0x02101988
	.incbin "incbin/arm9_data.bin", 0x2CA8, 0x2CAC - 0x2CA8

	.global Unk_0210198C
Unk_0210198C: ; 0x0210198C
	.incbin "incbin/arm9_data.bin", 0x2CAC, 0x2CB0 - 0x2CAC

	.global Unk_02101990
Unk_02101990: ; 0x02101990
	.incbin "incbin/arm9_data.bin", 0x2CB0, 0x2CB4 - 0x2CB0

	.global Unk_02101994
Unk_02101994: ; 0x02101994
	.incbin "incbin/arm9_data.bin", 0x2CB4, 0x2CB8 - 0x2CB4

	.global Unk_02101998
Unk_02101998: ; 0x02101998
	.incbin "incbin/arm9_data.bin", 0x2CB8, 0x2CBC - 0x2CB8

	.global Unk_0210199C
Unk_0210199C: ; 0x0210199C
	.incbin "incbin/arm9_data.bin", 0x2CBC, 0x2CC0 - 0x2CBC

	.global Unk_021019A0
Unk_021019A0: ; 0x021019A0
	.incbin "incbin/arm9_data.bin", 0x2CC0, 0x25

