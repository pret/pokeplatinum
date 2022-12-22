	.include "macros/function.inc"
	.include "include/ov19_021DE3E8.inc"

	

	.text


	thumb_func_start ov19_021DE3E8
ov19_021DE3E8: ; 0x021DE3E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0xa
	mov r1, #0x3c
	add r6, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _021DE43C
	str r5, [r4, #4]
	ldr r0, [sp]
	str r6, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl ov19_021D77D8
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov19_021D77F4
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x34]
	add r0, r6, #0
	bl ov19_021D5E08
	cmp r0, #3
	bne _021DE42C
	mov r0, #1
	b _021DE42E
_021DE42C:
	mov r0, #0
_021DE42E:
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov19_021DE450
	str r4, [r7, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DE43C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DE3E8

	thumb_func_start ov19_021DE440
ov19_021DE440: ; 0x021DE440
	push {r4, lr}
	add r4, r0, #0
	bl ov19_021DE51C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov19_021DE440

	thumb_func_start ov19_021DE450
ov19_021DE450: ; 0x021DE450
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r6, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _021DE500
	ldr r4, [r6, #0x14]
	ldr r0, [r6, #4]
	bl ov19_021D77D0
	add r2, r0, #0
	ldr r0, [r4, #0x20]
	add r1, sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	add r0, sp, #0x34
	bl ov19_021D783C
	mov r0, #1
	add r1, r0, #0
	bl sub_0207CE78
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x10
	mov r2, #0
	add r3, sp, #0xc
	bl sub_02006F50
	str r0, [sp, #8]
	cmp r0, #0
	beq _021DE510
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r0, _021DE514 ; =0x00300010
	ldr r4, _021DE518 ; =0x021E04CC
	and r1, r0
	ldr r0, [sp, #0xc]
	mov r7, #0
	str r1, [r0, #8]
	add r5, r6, #0
_021DE4AA:
	add r0, sp, #0x10
	bl NNS_G2dInitImageProxy
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0]
	mov r2, #1
	add r3, sp, #0x10
	bl NNS_G2dLoadImage1DMapping
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [r6, #0x10]
	add r1, sp, #0x34
	add r3, r2, #0
	bl ov19_021D785C
	str r0, [r5, #0x1c]
	ldr r1, [r4, #4]
	bl sub_02021E90
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #0x1c]
	mov r1, #1
	bl sub_02021CF8
	mov r0, #0
	str r0, [r5, #0x28]
	add r7, r7, #1
	add r4, #8
	add r5, r5, #4
	cmp r7, #3
	blt _021DE4AA
	ldr r0, [sp, #8]
	bl sub_020181C4
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_021DE500:
	mov r1, #0
	add r0, r1, #0
_021DE504:
	str r0, [r6, #0x1c]
	str r0, [r6, #0x28]
	add r1, r1, #1
	add r6, r6, #4
	cmp r1, #3
	blt _021DE504
_021DE510:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DE514: .word 0x00300010
_021DE518: .word 0x021E04CC
	thumb_func_end ov19_021DE450

	thumb_func_start ov19_021DE51C
ov19_021DE51C: ; 0x021DE51C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021DE522:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DE52C
	bl sub_02021BD4
_021DE52C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021DE522
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DE51C

	thumb_func_start ov19_021DE538
ov19_021DE538: ; 0x021DE538
	push {r3, r4}
	mov r3, #0
	add r4, r0, #0
_021DE53E:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	bne _021DE550
	lsl r2, r3, #2
	add r0, r0, r2
	str r1, [r0, #0x28]
	add r0, r3, #0
	pop {r3, r4}
	bx lr
_021DE550:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #3
	blt _021DE53E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
	thumb_func_end ov19_021DE538

	thumb_func_start ov19_021DE560
ov19_021DE560: ; 0x021DE560
	mov r3, #0
_021DE562:
	ldr r2, [r0, #0x28]
	cmp r1, r2
	bne _021DE56C
	add r0, r3, #0
	bx lr
_021DE56C:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #3
	blt _021DE562
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DE560

	thumb_func_start ov19_021DE57C
ov19_021DE57C: ; 0x021DE57C
	lsl r1, r1, #2
	add r0, r0, r1
	str r2, [r0, #0x28]
	bx lr
	thumb_func_end ov19_021DE57C

	thumb_func_start ov19_021DE584
ov19_021DE584: ; 0x021DE584
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021DE598
	bl ov19_021DE59C
	add r0, r4, #0
	bl ov19_021DE5D4
_021DE598:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DE584

	thumb_func_start ov19_021DE59C
ov19_021DE59C: ; 0x021DE59C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E74
	add r4, r0, #0
	beq _021DE5D2
	add r0, r5, #0
	mov r1, #1
	bl ov19_021DE538
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov19_021DE718
	add r5, #0x1c
	lsl r4, r6, #2
	ldr r0, [r5, r4]
	mov r1, #6
	bl sub_02021D6C
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
_021DE5D2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DE59C

	thumb_func_start ov19_021DE5D4
ov19_021DE5D4: ; 0x021DE5D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5F7C
	add r7, r0, #0
	beq _021DE688
	add r0, r5, #0
	mov r1, #3
	bl ov19_021DE538
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	add r1, sp, #0x10
	bl ov19_021D9B1C
	mov r0, #2
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	bl ov19_021D5E10
	cmp r0, #1
	bne _021DE610
	mov r0, #1
	str r0, [sp, #0xc]
	b _021DE614
_021DE610:
	mov r0, #2
	str r0, [sp, #0xc]
_021DE614:
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	lsl r4, r6, #3
	bl sub_0207CE78
	mov r2, #0
	ldr r3, _021DE68C ; =0x021E04CC
	str r2, [sp]
	add r1, r0, #0
	str r2, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	ldr r3, [r3, r4]
	mov r0, #0x10
	bl sub_02006EC0
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	mov r1, #2
	bl sub_0207CE78
	ldr r3, _021DE690 ; =0x021E04D0
	add r1, r0, #0
	mov r0, #0x20
	ldr r3, [r3, r4]
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x10
	mov r2, #1
	lsl r3, r3, #5
	bl sub_02006E84
	ldr r1, [sp, #0xc]
	add r5, #0x1c
	lsl r4, r6, #2
	lsl r1, r1, #0x18
	ldr r0, [r5, r4]
	lsr r1, r1, #0x18
	bl sub_02021E80
	ldr r0, [r5, r4]
	mov r1, #2
	bl ov19_021D78AC
	ldr r0, [r5, r4]
	add r1, sp, #0x10
	bl sub_02021C50
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
_021DE688:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DE68C: .word 0x021E04CC
_021DE690: .word 0x021E04D0
	thumb_func_end ov19_021DE5D4

	thumb_func_start ov19_021DE694
ov19_021DE694: ; 0x021DE694
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	add r6, r2, #0
	bl ov19_021D5E10
	cmp r0, #1
	ldr r0, [r5, #4]
	bne _021DE6DE
	bl ov19_021D77E8
	add r7, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E2C
	add r1, r0, #0
	add r0, r7, #0
	add r2, sp, #4
	add r3, sp, #0
	bl ov19_021DCD30
	ldr r0, [sp, #4]
	add r0, #0xa
	lsl r0, r0, #0xc
	str r0, [r4, #0]
	ldr r0, [sp]
	add sp, #8
	add r0, #8
	lsl r0, r0, #0xc
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021DE6DE:
	bl ov19_021D7820
	add r7, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E14
	mov r1, #0x18
	add r7, #0x70
	mul r1, r0
	add r0, r7, r1
	add r0, #0xa
	str r0, [r4, #0]
	ldr r0, [r5, #8]
	bl ov19_021D5E1C
	mov r1, #0x18
	mul r1, r0
	add r1, #0x30
	str r1, [r4, #4]
	ldr r0, [r4, #0]
	lsl r0, r0, #0xc
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	lsl r0, r0, #0xc
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r6, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DE694

	thumb_func_start ov19_021DE718
ov19_021DE718: ; 0x021DE718
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	cmp r4, #0
	blt _021DE792
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov19_021DE694
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	lsl r6, r4, #3
	bl sub_0207CE78
	mov r2, #0
	ldr r3, _021DE798 ; =0x021E04CC
	str r2, [sp]
	add r1, r0, #0
	str r2, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	ldr r3, [r3, r6]
	mov r0, #0x10
	bl sub_02006EC0
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	mov r1, #2
	bl sub_0207CE78
	ldr r3, _021DE79C ; =0x021E04D0
	add r1, r0, #0
	mov r0, #0x20
	ldr r3, [r3, r6]
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x10
	mov r2, #1
	lsl r3, r3, #5
	bl sub_02006E84
	ldr r1, [sp, #0xc]
	add r5, #0x1c
	lsl r4, r4, #2
	lsl r1, r1, #0x18
	ldr r0, [r5, r4]
	lsr r1, r1, #0x18
	bl sub_02021E80
	ldr r0, [r5, r4]
	mov r1, #3
	bl ov19_021D78AC
	ldr r0, [r5, r4]
	add r1, sp, #0x10
	bl sub_02021C50
_021DE792:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DE798: .word 0x021E04CC
_021DE79C: .word 0x021E04D0
	thumb_func_end ov19_021DE718

	thumb_func_start ov19_021DE7A0
ov19_021DE7A0: ; 0x021DE7A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021DE7FE
	mov r1, #1
	bl ov19_021DE560
	add r4, r0, #0
	bmi _021DE7CA
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov19_021DE57C
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	mov r1, #2
	bl sub_02021D6C
_021DE7CA:
	ldr r0, [r5, #8]
	bl ov19_021D5E74
	add r6, r0, #0
	beq _021DE7FE
	add r0, r5, #0
	mov r1, #1
	bl ov19_021DE538
	add r4, r0, #0
	bmi _021DE7FE
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov19_021DE718
	add r5, #0x1c
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_02021CAC
_021DE7FE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DE7A0

	thumb_func_start ov19_021DE800
ov19_021DE800: ; 0x021DE800
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	bne _021DE80E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DE80E:
	mov r1, #1
	bl ov19_021DE560
	cmp r0, #0
	blt _021DE82A
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_02021FD0
	cmp r0, #0
	beq _021DE82A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DE82A:
	add r0, r5, #0
	mov r1, #2
	bl ov19_021DE560
	add r4, r0, #0
	bmi _021DE852
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_02021FD0
	cmp r0, #0
	beq _021DE848
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DE848:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov19_021DE57C
_021DE852:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DE800

	thumb_func_start ov19_021DE858
ov19_021DE858: ; 0x021DE858
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0xa
	mov r1, #0x34
	add r6, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _021DE8DA
	lsl r0, r7, #2
	str r5, [r4, #0]
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	str r0, [r4, #4]
	bl sub_02021D28
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r6, [sp, #0x18]
	str r0, [r2, #0]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	sub r0, r1, r0
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x18]
	mov r2, #0
	str r0, [r4, #0x2c]
	ldr r0, [sp]
	add r1, r4, #0
	str r0, [r4, #0x28]
	ldr r0, _021DE8DC ; =ov19_021DE8E0
	str r2, [r4, #0x30]
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DE8D4
	ldr r0, [r5, #0x34]
	add r0, r0, #1
	str r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_021DE8D4:
	add r0, r4, #0
	bl sub_020181C4
_021DE8DA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DE8DC: .word ov19_021DE8E0
	thumb_func_end ov19_021DE858

	thumb_func_start ov19_021DE8E0
ov19_021DE8E0: ; 0x021DE8E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021DE8F2
	cmp r0, #1
	beq _021DE928
	pop {r3, r4, r5, pc}
_021DE8F2:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021DE918
	ldr r2, [r4, #8]
	ldr r0, [r4, #0x20]
	add r1, #8
	add r0, r2, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x24]
	add r0, r2, r0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl sub_02021C50
	ldr r0, [r4, #0x2c]
	sub r0, r0, #1
	str r0, [r4, #0x2c]
	pop {r3, r4, r5, pc}
_021DE918:
	ldr r0, [r4, #4]
	add r1, #0x14
	bl sub_02021C50
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
	pop {r3, r4, r5, pc}
_021DE928:
	ldr r0, [r4, #4]
	bl sub_02021FD0
	cmp r0, #0
	bne _021DE952
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x28]
	bl ov19_021D78AC
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x34]
	sub r0, r0, #1
	str r0, [r1, #0x34]
	add r0, r5, #0
	bl sub_0200DA58
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov19_021D79B8
_021DE952:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DE8E0

	thumb_func_start ov19_021DE954
ov19_021DE954: ; 0x021DE954
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021DE9A2
	mov r1, #1
	bl ov19_021DE560
	add r4, r0, #0
	bmi _021DE9A2
	ldr r0, [r5, #0x18]
	add r1, sp, #4
	bl ov19_021D9B1C
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov19_021DE57C
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	mov r1, #3
	bl sub_02021D6C
	mov r0, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #4
	mov r3, #2
	bl ov19_021DE858
_021DE9A2:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DE954

	thumb_func_start ov19_021DE9A8
ov19_021DE9A8: ; 0x021DE9A8
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _021DE9B2
	mov r0, #1
	bx lr
_021DE9B2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DE9A8

	thumb_func_start ov19_021DE9B8
ov19_021DE9B8: ; 0x021DE9B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021DE9E2
	mov r1, #1
	bl ov19_021DE560
	add r5, r0, #0
	bmi _021DE9E2
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov19_021DE57C
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	mov r1, #2
	bl sub_02021D6C
_021DE9E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DE9B8

	thumb_func_start ov19_021DE9E4
ov19_021DE9E4: ; 0x021DE9E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021DEA14
	mov r1, #2
	bl ov19_021DE560
	add r4, r0, #0
	bmi _021DEA14
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_02021FD0
	cmp r0, #0
	beq _021DEA0A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DEA0A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov19_021DE57C
_021DEA14:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DE9E4

	thumb_func_start ov19_021DEA18
ov19_021DEA18: ; 0x021DEA18
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021DEA5E
	mov r1, #3
	bl ov19_021DE560
	add r4, r0, #0
	bmi _021DEA5E
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov19_021DE694
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov19_021DE57C
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	mov r1, #4
	bl sub_02021D6C
	mov r0, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #8
	mov r3, #3
	bl ov19_021DE858
_021DEA5E:
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DEA18

	thumb_func_start ov19_021DEA64
ov19_021DEA64: ; 0x021DEA64
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _021DEA6E
	mov r0, #1
	bx lr
_021DEA6E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DEA64

	thumb_func_start ov19_021DEA74
ov19_021DEA74: ; 0x021DEA74
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021DEB02
	mov r1, #3
	bl ov19_021DE560
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov19_021DE560
	add r6, r0, #0
	cmp r4, #0
	blt _021DEB02
	cmp r6, #0
	blt _021DEB02
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov19_021DE694
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov19_021DE57C
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	mov r1, #4
	bl sub_02021D6C
	mov r0, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #8
	mov r3, #3
	bl ov19_021DE858
	ldr r0, [r5, #0x18]
	add r1, sp, #8
	bl ov19_021D9B1C
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #3
	bl ov19_021DE57C
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	mov r1, #3
	bl sub_02021D6C
	mov r0, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #8
	mov r3, #2
	bl ov19_021DE858
_021DEB02:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DEA74

	thumb_func_start ov19_021DEB08
ov19_021DEB08: ; 0x021DEB08
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _021DEB12
	mov r0, #1
	bx lr
_021DEB12:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021DEB08

	thumb_func_start ov19_021DEB18
ov19_021DEB18: ; 0x021DEB18
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021DEB5E
	mov r1, #3
	bl ov19_021DE560
	add r5, r0, #0
	bmi _021DEB3C
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	mov r1, #5
	bl sub_02021D6C
	str r5, [r4, #0x38]
	pop {r3, r4, r5, pc}
_021DEB3C:
	add r0, r4, #0
	mov r1, #1
	bl ov19_021DE560
	add r5, r0, #0
	bmi _021DEB58
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	mov r1, #2
	bl sub_02021D6C
	str r5, [r4, #0x38]
	pop {r3, r4, r5, pc}
_021DEB58:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x38]
_021DEB5E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DEB18

	thumb_func_start ov19_021DEB60
ov19_021DEB60: ; 0x021DEB60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021DEB96
	mov r0, #0
	ldr r1, [r4, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _021DEB96
	lsl r0, r1, #2
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	bl sub_02021FD0
	cmp r0, #0
	beq _021DEB86
	mov r0, #0
	pop {r4, pc}
_021DEB86:
	ldr r1, [r4, #0x38]
	add r0, r4, #0
	mov r2, #0
	bl ov19_021DE57C
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x38]
_021DEB96:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DEB60

	thumb_func_start ov19_021DEB9C
ov19_021DEB9C: ; 0x021DEB9C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021DEBD6
	mov r1, #3
	bl ov19_021DE560
	add r6, r0, #0
	bmi _021DEBD6
	ldmia r4!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #4]
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	add r1, r2, #0
	bl sub_02021C50
_021DEBD6:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DEB9C

	thumb_func_start ov19_021DEBDC
ov19_021DEBDC: ; 0x021DEBDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021DEC00
	mov r1, #3
	bl ov19_021DE560
	cmp r0, #0
	blt _021DEC00
	lsl r0, r0, #2
	add r0, r5, r0
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x1c]
	lsr r1, r1, #0x18
	bl sub_02021E80
_021DEC00:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DEBDC

	.rodata


	.global Unk_ov19_021E04CC
Unk_ov19_021E04CC: ; 0x021E04CC
	.incbin "incbin/overlay19_rodata.bin", 0x6DC, 0x18

