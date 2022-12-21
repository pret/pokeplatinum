	.include "macros/function.inc"
	.include "include/unk_02018340.inc"

	

	.text


	thumb_func_start sub_02018340
sub_02018340: ; 0x02018340
	push {r3, r4, r5, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	add r5, r0, #0
	bl sub_02018144
	mov r2, #0x5a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	str r5, [r4, #0]
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02018340

	thumb_func_start sub_02018364
sub_02018364: ; 0x02018364
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02018364

	thumb_func_start sub_02018368
sub_02018368: ; 0x02018368
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	bl sub_020BDE40
	ldr r0, [r4, #8]
	bl sub_020BDEA8
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0201839C ; =0xC7FFFFFF
	and r1, r0
	str r1, [r2, #0]
	ldr r1, [r2, #0]
	asr r0, r0, #3
	and r0, r1
	str r0, [r2, #0]
	bl sub_0201FF00
	bl sub_0201FF68
	pop {r4, pc}
	nop
_0201839C: .word 0xC7FFFFFF
	thumb_func_end sub_02018368

	thumb_func_start sub_020183A0
sub_020183A0: ; 0x020183A0
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #0
	bne _020183B8
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #0xc]
	bl sub_020BDE40
	bl sub_0201FF00
	pop {r3, pc}
_020183B8:
	ldr r0, [r2, #8]
	bl sub_020BDEA8
	bl sub_0201FF68
	pop {r3, pc}
	thumb_func_end sub_020183A0

	thumb_func_start sub_020183C4
sub_020183C4: ; 0x020183C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r3, [sp, #8]
	add r4, r2, #0
	str r0, [sp]
	ldrb r0, [r4, #0x10]
	ldr r1, [sp, #8]
	bl sub_02018F80
	add r5, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #7
	bls _020183E2
	b _02018800
_020183E2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020183EE: ; jump table
	.short _020183FE - _020183EE - 2 ; case 0
	.short _02018456 - _020183EE - 2 ; case 1
	.short _020184AE - _020183EE - 2 ; case 2
	.short _02018550 - _020183EE - 2 ; case 3
	.short _020185F2 - _020183EE - 2 ; case 4
	.short _0201864A - _020183EE - 2 ; case 5
	.short _020186A2 - _020183EE - 2 ; case 6
	.short _02018760 - _020183EE - 2 ; case 7
_020183FE:
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0xc]
	ldr r2, _02018744 ; =0x04000008
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0xc]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0201844C
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _02018800
_0201844C:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _02018800
_02018456:
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0x10]
	ldr r2, _02018748 ; =0x0400000A
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x10]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020184A4
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _02018800
_020184A4:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _02018800
_020184AE:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020184C4
	cmp r0, #1
	beq _020184E6
	cmp r0, #2
	beq _02018508
_020184C4:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201874C ; =0x0400000C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _02018528
_020184E6:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201874C ; =0x0400000C
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _02018528
_02018508:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201874C ; =0x0400000C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_02018528:
	ldr r0, _0201874C ; =0x0400000C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _02018546
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _02018800
_02018546:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _02018800
_02018550:
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02018566
	cmp r0, #1
	beq _02018588
	cmp r0, #2
	beq _020185AA
_02018566:
	ldrb r1, [r4, #0x12]
	ldr r7, _02018750 ; =0x0400000E
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _020185CA
_02018588:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _02018750 ; =0x0400000E
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _020185CA
_020185AA:
	ldrb r1, [r4, #0x12]
	ldr r7, _02018750 ; =0x0400000E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_020185CA:
	ldr r0, _02018750 ; =0x0400000E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _020185E8
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _02018800
_020185E8:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _02018800
_020185F2:
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #7
	lsl r3, r2, #2
	str r0, [sp, #0x14]
	ldr r2, _02018754 ; =0x04001008
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x14]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02018640
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _02018800
_02018640:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _02018800
_0201864A:
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrb r3, [r4, #0x14]
	lsl r0, r0, #7
	mov ip, r0
	ldr r2, _02018758 ; =0x0400100A
	lsl r7, r1, #8
	ldrh r1, [r2]
	mov r0, #0x43
	lsl r3, r3, #0xd
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	mov r1, ip
	orr r0, r1
	orr r0, r7
	orr r0, r6
	orr r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02018698
	ldrh r1, [r2]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2]
	b _02018800
_02018698:
	ldrh r1, [r2]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2]
	b _02018800
_020186A2:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020186B8
	cmp r0, #1
	beq _020186DA
	cmp r0, #2
	beq _020186FC
_020186B8:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201875C ; =0x0400100C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201871C
_020186DA:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _0201875C ; =0x0400100C
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _0201871C
_020186FC:
	ldrb r1, [r4, #0x12]
	ldr r7, _0201875C ; =0x0400100C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_0201871C:
	ldr r0, _0201875C ; =0x0400100C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0201873A
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _02018800
_0201873A:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	b _02018800
	; .align 2, 0
_02018744: .word 0x04000008
_02018748: .word 0x0400000A
_0201874C: .word 0x0400000C
_02018750: .word 0x0400000E
_02018754: .word 0x04001008
_02018758: .word 0x0400100A
_0201875C: .word 0x0400100C
_02018760:
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02018776
	cmp r0, #1
	beq _02018798
	cmp r0, #2
	beq _020187BA
_02018776:
	ldrb r1, [r4, #0x12]
	ldr r7, _02018894 ; =0x0400100E
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #2
	ldrh r1, [r7]
	lsl r2, r0, #7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _020187DA
_02018798:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #2
	ldr r7, _02018894 ; =0x0400100E
	lsl r2, r1, #8
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
	b _020187DA
_020187BA:
	ldrb r1, [r4, #0x12]
	ldr r7, _02018894 ; =0x0400100E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7]
	mov r0, #0x43
	lsl r2, r2, #2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7]
_020187DA:
	ldr r0, _02018894 ; =0x0400100E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _020187F8
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0]
	b _02018800
_020187F8:
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
_02018800:
	ldr r0, [sp, #4]
	mov r1, #0x2c
	add r5, r0, #0
	ldr r0, [sp]
	mul r5, r1
	add r2, r0, r5
	mov r3, #0
	mov r0, #1
	strh r3, [r2, #0x20]
	lsl r0, r0, #0xc
	str r0, [r2, #0x24]
	str r0, [r2, #0x28]
	str r3, [r2, #0x2c]
	str r3, [r2, #0x30]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02018848
	ldr r0, [sp]
	ldr r6, [sp]
	ldr r0, [r0, #0]
	add r6, #8
	bl sub_02018144
	str r0, [r6, r5]
	ldr r1, [r6, r5]
	ldr r2, [r4, #8]
	mov r0, #0
	bl sub_020C4AF0
	ldr r0, [sp]
	ldr r2, [r4, #8]
	add r1, r0, r5
	str r2, [r1, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [r1, #0x10]
	b _0201884E
_02018848:
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x10]
_0201884E:
	ldr r0, [sp]
	ldrb r1, [r4, #0x10]
	add r0, r0, r5
	strb r1, [r0, #0x1d]
	ldr r1, [sp, #8]
	strb r1, [r0, #0x1c]
	ldrb r1, [r4, #0x11]
	strb r1, [r0, #0x1e]
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _02018870
	ldrb r1, [r4, #0x11]
	cmp r1, #0
	bne _02018870
	mov r1, #0x20
	strb r1, [r0, #0x1f]
	b _02018878
_02018870:
	ldr r0, [sp]
	mov r1, #0x40
	add r0, r0, r5
	strb r1, [r0, #0x1f]
_02018878:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r4, #0]
	mov r2, #0
	bl sub_02019184
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [r4, #4]
	mov r2, #3
	bl sub_02019184
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02018894: .word 0x0400100E
	thumb_func_end sub_020183C4

	thumb_func_start sub_02018898
sub_02018898: ; 0x02018898
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	add r0, r3, #0
	cmp r1, #0
	bne _020188B0
	mov r2, #0x2c
	mul r2, r4
	add r2, r5, r2
	strb r0, [r2, #0x1e]
_020188B0:
	cmp r4, #7
	bls _020188B6
	b _02018F7C
_020188B6:
	add r2, r4, r4
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020188C2: ; jump table
	.short _020188D2 - _020188C2 - 2 ; case 0
	.short _0201893E - _020188C2 - 2 ; case 1
	.short _020189AA - _020188C2 - 2 ; case 2
	.short _02018ADE - _020188C2 - 2 ; case 3
	.short _02018C28 - _020188C2 - 2 ; case 4
	.short _02018C94 - _020188C2 - 2 ; case 5
	.short _02018D00 - _020188C2 - 2 ; case 6
	.short _02018E34 - _020188C2 - 2 ; case 7
_020188D2:
	ldr r2, _02018BE8 ; =0x04000008
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x1e]
	bne _020188EE
	ldrh r3, [r2, #0x1e]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x1e]
	b _02018900
_020188EE:
	cmp r1, #2
	bne _02018900
	ldrh r3, [r2, #0x1e]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x1e]
_02018900:
	add r0, sp, #0
	ldrh r3, [r0, #0x1e]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	lsl r4, r6, #0xd
	lsl r1, r0, #7
	ldr r0, _02018BE8 ; =0x04000008
	mov r6, #0x43
	ldrh r7, [r0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_0201893E:
	ldr r2, _02018BF0 ; =0x0400000A
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x1c]
	bne _0201895A
	ldrh r3, [r2, #0x1c]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x1c]
	b _0201896C
_0201895A:
	cmp r1, #2
	bne _0201896C
	ldrh r3, [r2, #0x1c]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x1c]
_0201896C:
	add r0, sp, #0
	ldrh r3, [r0, #0x1c]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	lsl r4, r6, #0xd
	lsl r1, r0, #7
	ldr r0, _02018BF0 ; =0x0400000A
	mov r6, #0x43
	ldrh r7, [r0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_020189AA:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0
	beq _020189BE
	cmp r3, #1
	beq _02018A1E
	cmp r3, #2
	beq _02018A7E
_020189BE:
	ldr r3, _02018BF4 ; =0x0400000C
	cmp r1, #1
	ldrh r4, [r3]
	add r3, sp, #0
	strh r4, [r3, #0x1a]
	bne _020189DA
	ldrh r4, [r3, #0x1a]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0x1a]
	b _020189EC
_020189DA:
	cmp r1, #2
	bne _020189EC
	ldrh r4, [r3, #0x1a]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0x1a]
_020189EC:
	add r0, sp, #0
	ldrh r3, [r0, #0x1a]
	add r2, r5, r2
	ldr r6, _02018BF4 ; =0x0400000C
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6]
	lsr r0, r0, #0x1b
	lsl r2, r1, #2
	lsl r1, r0, #8
	lsl r0, r4, #7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018A1E:
	ldr r2, _02018BF4 ; =0x0400000C
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x18]
	bne _02018A3A
	ldrh r3, [r2, #0x18]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x18]
	b _02018A4C
_02018A3A:
	cmp r1, #2
	bne _02018A4C
	ldrh r3, [r2, #0x18]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x18]
_02018A4C:
	add r0, sp, #0
	ldrh r3, [r0, #0x18]
	ldr r6, _02018BF4 ; =0x0400000C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018A7E:
	ldr r2, _02018BF4 ; =0x0400000C
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x16]
	bne _02018A9A
	ldrh r3, [r2, #0x16]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x16]
	b _02018AAC
_02018A9A:
	cmp r1, #2
	bne _02018AAC
	ldrh r3, [r2, #0x16]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x16]
_02018AAC:
	add r0, sp, #0
	ldrh r3, [r0, #0x16]
	ldr r6, _02018BF4 ; =0x0400000C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018ADE:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0
	beq _02018AF2
	cmp r3, #1
	beq _02018B52
	cmp r3, #2
	beq _02018BB2
_02018AF2:
	ldr r3, _02018BF8 ; =0x0400000E
	cmp r1, #1
	ldrh r4, [r3]
	add r3, sp, #0
	strh r4, [r3, #0x14]
	bne _02018B0E
	ldrh r4, [r3, #0x14]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0x14]
	b _02018B20
_02018B0E:
	cmp r1, #2
	bne _02018B20
	ldrh r4, [r3, #0x14]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0x14]
_02018B20:
	add r0, sp, #0
	ldrh r3, [r0, #0x14]
	add r2, r5, r2
	ldr r6, _02018BF8 ; =0x0400000E
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6]
	lsr r0, r0, #0x1b
	lsl r2, r1, #2
	lsl r1, r0, #8
	lsl r0, r4, #7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018B52:
	ldr r2, _02018BF8 ; =0x0400000E
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x12]
	bne _02018B6E
	ldrh r3, [r2, #0x12]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x12]
	b _02018B80
_02018B6E:
	cmp r1, #2
	bne _02018B80
	ldrh r3, [r2, #0x12]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x12]
_02018B80:
	add r0, sp, #0
	ldrh r3, [r0, #0x12]
	ldr r6, _02018BF8 ; =0x0400000E
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018BB2:
	ldr r2, _02018BF8 ; =0x0400000E
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0x10]
	bne _02018BCE
	ldrh r3, [r2, #0x10]
	ldr r1, _02018BEC ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x10]
	b _02018BE0
_02018BCE:
	cmp r1, #2
	bne _02018BE0
	ldrh r3, [r2, #0x10]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x10]
_02018BE0:
	add r0, sp, #0
	ldrh r3, [r0, #0x10]
	ldr r6, _02018BF8 ; =0x0400000E
	b _02018BFC
	; .align 2, 0
_02018BE8: .word 0x04000008
_02018BEC: .word 0xFFFFE0FF
_02018BF0: .word 0x0400000A
_02018BF4: .word 0x0400000C
_02018BF8: .word 0x0400000E
_02018BFC:
	add sp, #0x20
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018C28:
	ldr r2, _02018F40 ; =0x04001008
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0xe]
	bne _02018C44
	ldrh r3, [r2, #0xe]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0xe]
	b _02018C56
_02018C44:
	cmp r1, #2
	bne _02018C56
	ldrh r3, [r2, #0xe]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0xe]
_02018C56:
	add r0, sp, #0
	ldrh r3, [r0, #0xe]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	lsl r4, r6, #0xd
	lsl r1, r0, #7
	ldr r0, _02018F40 ; =0x04001008
	mov r6, #0x43
	ldrh r7, [r0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02018C94:
	ldr r2, _02018F48 ; =0x0400100A
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #0xc]
	bne _02018CB0
	ldrh r3, [r2, #0xc]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0xc]
	b _02018CC2
_02018CB0:
	cmp r1, #2
	bne _02018CC2
	ldrh r3, [r2, #0xc]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0xc]
_02018CC2:
	add r0, sp, #0
	ldrh r3, [r0, #0xc]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #8
	lsl r4, r6, #0xd
	lsl r1, r0, #7
	ldr r0, _02018F48 ; =0x0400100A
	mov r6, #0x43
	ldrh r7, [r0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02018D00:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0
	beq _02018D14
	cmp r3, #1
	beq _02018D74
	cmp r3, #2
	beq _02018DD4
_02018D14:
	ldr r3, _02018F4C ; =0x0400100C
	cmp r1, #1
	ldrh r4, [r3]
	add r3, sp, #0
	strh r4, [r3, #0xa]
	bne _02018D30
	ldrh r4, [r3, #0xa]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0xa]
	b _02018D42
_02018D30:
	cmp r1, #2
	bne _02018D42
	ldrh r4, [r3, #0xa]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0xa]
_02018D42:
	add r0, sp, #0
	ldrh r3, [r0, #0xa]
	add r2, r5, r2
	ldr r6, _02018F4C ; =0x0400100C
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6]
	lsr r0, r0, #0x1b
	lsl r2, r1, #2
	lsl r1, r0, #8
	lsl r0, r4, #7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018D74:
	ldr r2, _02018F4C ; =0x0400100C
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #8]
	bne _02018D90
	ldrh r3, [r2, #8]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #8]
	b _02018DA2
_02018D90:
	cmp r1, #2
	bne _02018DA2
	ldrh r3, [r2, #8]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #8]
_02018DA2:
	add r0, sp, #0
	ldrh r3, [r0, #8]
	ldr r6, _02018F4C ; =0x0400100C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018DD4:
	ldr r2, _02018F4C ; =0x0400100C
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #6]
	bne _02018DF0
	ldrh r3, [r2, #6]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #6]
	b _02018E02
_02018DF0:
	cmp r1, #2
	bne _02018E02
	ldrh r3, [r2, #6]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #6]
_02018E02:
	add r0, sp, #0
	ldrh r3, [r0, #6]
	ldr r6, _02018F4C ; =0x0400100C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018E34:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0
	beq _02018E48
	cmp r3, #1
	beq _02018EA8
	cmp r3, #2
	beq _02018F08
_02018E48:
	ldr r3, _02018F50 ; =0x0400100E
	cmp r1, #1
	ldrh r4, [r3]
	add r3, sp, #0
	strh r4, [r3, #4]
	bne _02018E64
	ldrh r4, [r3, #4]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #4]
	b _02018E76
_02018E64:
	cmp r1, #2
	bne _02018E76
	ldrh r4, [r3, #4]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #4]
_02018E76:
	add r0, sp, #0
	ldrh r3, [r0, #4]
	add r2, r5, r2
	ldr r6, _02018F50 ; =0x0400100E
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6]
	lsr r0, r0, #0x1b
	lsl r2, r1, #2
	lsl r1, r0, #8
	lsl r0, r4, #7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018EA8:
	ldr r2, _02018F50 ; =0x0400100E
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2, #2]
	bne _02018EC4
	ldrh r3, [r2, #2]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #2]
	b _02018ED6
_02018EC4:
	cmp r1, #2
	bne _02018ED6
	ldrh r3, [r2, #2]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #2]
_02018ED6:
	add r0, sp, #0
	ldrh r3, [r0, #2]
	ldr r6, _02018F50 ; =0x0400100E
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #2
	lsl r0, r4, #8
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02018F08:
	ldr r2, _02018F50 ; =0x0400100E
	cmp r1, #1
	ldrh r3, [r2]
	add r2, sp, #0
	strh r3, [r2]
	bne _02018F24
	ldrh r3, [r2]
	ldr r1, _02018F44 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2]
	b _02018F36
_02018F24:
	cmp r1, #2
	bne _02018F36
	ldrh r3, [r2]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2]
_02018F36:
	add r0, sp, #0
	ldrh r3, [r0]
	ldr r6, _02018F50 ; =0x0400100E
	b _02018F54
	nop
_02018F40: .word 0x04001008
_02018F44: .word 0xFFFFE0FF
_02018F48: .word 0x0400100A
_02018F4C: .word 0x0400100C
_02018F50: .word 0x0400100E
_02018F54:
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #8
	lsr r0, r0, #0x1d
	ldrh r5, [r6]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6]
_02018F7C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02018898

	thumb_func_start sub_02018F80
sub_02018F80: ; 0x02018F80
	cmp r1, #0
	beq _02018F8E
	cmp r1, #1
	beq _02018FAE
	cmp r1, #2
	beq _02018FCE
	b _02018FEE
_02018F8E:
	cmp r0, #1
	bne _02018F96
	mov r0, #0
	bx lr
_02018F96:
	cmp r0, #2
	bne _02018F9E
	mov r0, #2
	bx lr
_02018F9E:
	cmp r0, #3
	bne _02018FA6
	mov r0, #1
	bx lr
_02018FA6:
	cmp r0, #4
	bne _02018FEE
	mov r0, #3
	bx lr
_02018FAE:
	cmp r0, #0
	bne _02018FB6
	mov r0, #0
	bx lr
_02018FB6:
	cmp r0, #1
	bne _02018FBE
	mov r0, #1
	bx lr
_02018FBE:
	cmp r0, #4
	bne _02018FC6
	mov r0, #2
	bx lr
_02018FC6:
	cmp r0, #5
	bne _02018FEE
	mov r0, #3
	bx lr
_02018FCE:
	cmp r0, #0
	bne _02018FD6
	mov r0, #0
	bx lr
_02018FD6:
	cmp r0, #1
	bne _02018FDE
	mov r0, #1
	bx lr
_02018FDE:
	cmp r0, #4
	bne _02018FE6
	mov r0, #2
	bx lr
_02018FE6:
	cmp r0, #5
	bne _02018FEE
	mov r0, #3
	bx lr
_02018FEE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02018F80

	thumb_func_start sub_02018FF4
sub_02018FF4: ; 0x02018FF4
	cmp r0, #5
	bhi _02019042
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019004: ; jump table
	.short _02019010 - _02019004 - 2 ; case 0
	.short _02019018 - _02019004 - 2 ; case 1
	.short _02019020 - _02019004 - 2 ; case 2
	.short _0201902A - _02019004 - 2 ; case 3
	.short _02019034 - _02019004 - 2 ; case 4
	.short _0201903C - _02019004 - 2 ; case 5
_02019010:
	mov r0, #0x10
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_02019018:
	mov r0, #0x20
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_02019020:
	mov r0, #0x20
	strb r0, [r1]
	mov r0, #0x40
	strb r0, [r2]
	bx lr
_0201902A:
	mov r0, #0x40
	strb r0, [r1]
	mov r0, #0x20
	strb r0, [r2]
	bx lr
_02019034:
	mov r0, #0x40
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_0201903C:
	mov r0, #0x80
	strb r0, [r1]
	strb r0, [r2]
_02019042:
	bx lr
	thumb_func_end sub_02018FF4

	thumb_func_start sub_02019044
sub_02019044: ; 0x02019044
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r2, #0x2c
	add r5, r1, #0
	mul r5, r2
	add r4, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0201905E
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, r5]
_0201905E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019044

	thumb_func_start sub_02019060
sub_02019060: ; 0x02019060
	cmp r0, #7
	bhi _020190FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019070: ; jump table
	.short _02019080 - _02019070 - 2 ; case 0
	.short _02019090 - _02019070 - 2 ; case 1
	.short _020190A0 - _02019070 - 2 ; case 2
	.short _020190B0 - _02019070 - 2 ; case 3
	.short _020190C0 - _02019070 - 2 ; case 4
	.short _020190D0 - _02019070 - 2 ; case 5
	.short _020190E0 - _02019070 - 2 ; case 6
	.short _020190F0 - _02019070 - 2 ; case 7
_02019080:
	ldr r2, _02019100 ; =0x04000008
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_02019090:
	ldr r2, _02019104 ; =0x0400000A
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190A0:
	ldr r2, _02019108 ; =0x0400000C
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190B0:
	ldr r2, _0201910C ; =0x0400000E
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190C0:
	ldr r2, _02019110 ; =0x04001008
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190D0:
	ldr r2, _02019114 ; =0x0400100A
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190E0:
	ldr r2, _02019118 ; =0x0400100C
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_020190F0:
	ldr r2, _0201911C ; =0x0400100E
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
_020190FE:
	bx lr
	; .align 2, 0
_02019100: .word 0x04000008
_02019104: .word 0x0400000A
_02019108: .word 0x0400000C
_0201910C: .word 0x0400000E
_02019110: .word 0x04001008
_02019114: .word 0x0400100A
_02019118: .word 0x0400100C
_0201911C: .word 0x0400100E
	thumb_func_end sub_02019060

	thumb_func_start sub_02019120
sub_02019120: ; 0x02019120
	push {r3, lr}
	cmp r0, #7
	bhi _02019180
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019132: ; jump table
	.short _02019142 - _02019132 - 2 ; case 0
	.short _0201914A - _02019132 - 2 ; case 1
	.short _02019152 - _02019132 - 2 ; case 2
	.short _0201915A - _02019132 - 2 ; case 3
	.short _02019162 - _02019132 - 2 ; case 4
	.short _0201916A - _02019132 - 2 ; case 5
	.short _02019172 - _02019132 - 2 ; case 6
	.short _0201917A - _02019132 - 2 ; case 7
_02019142:
	mov r0, #1
	bl sub_0201FF0C
	pop {r3, pc}
_0201914A:
	mov r0, #2
	bl sub_0201FF0C
	pop {r3, pc}
_02019152:
	mov r0, #4
	bl sub_0201FF0C
	pop {r3, pc}
_0201915A:
	mov r0, #8
	bl sub_0201FF0C
	pop {r3, pc}
_02019162:
	mov r0, #1
	bl sub_0201FF74
	pop {r3, pc}
_0201916A:
	mov r0, #2
	bl sub_0201FF74
	pop {r3, pc}
_02019172:
	mov r0, #4
	bl sub_0201FF74
	pop {r3, pc}
_0201917A:
	mov r0, #8
	bl sub_0201FF74
_02019180:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02019120

	thumb_func_start sub_02019184
sub_02019184: ; 0x02019184
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r0, #0x2c
	add r6, r5, #0
	mul r6, r0
	add r0, r4, #0
	add r0, #8
	add r1, r2, #0
	add r2, r3, #0
	add r0, r0, r6
	bl sub_02019304
	add r0, r4, r6
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	cmp r5, #7
	bls _020191AA
	b _020192C0
_020191AA:
	add r2, r5, r5
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020191B6: ; jump table
	.short _020191C6 - _020191B6 - 2 ; case 0
	.short _020191DC - _020191B6 - 2 ; case 1
	.short _020191F2 - _020191B6 - 2 ; case 2
	.short _0201921C - _020191B6 - 2 ; case 3
	.short _02019246 - _020191B6 - 2 ; case 4
	.short _0201925C - _020191B6 - 2 ; case 5
	.short _02019272 - _020191B6 - 2 ; case 6
	.short _0201929A - _020191B6 - 2 ; case 7
_020191C6:
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192C8 ; =0x04000010
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_020191DC:
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192CC ; =0x04000014
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_020191F2:
	add r2, r4, #0
	add r2, #0x74
	ldrb r2, [r2]
	cmp r2, #0
	bne _02019212
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192D0 ; =0x04000018
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_02019212:
	add r0, r4, #0
	mov r1, #2
	bl sub_020193E4
	pop {r4, r5, r6, pc}
_0201921C:
	add r2, r4, #0
	add r2, #0xa0
	ldrb r2, [r2]
	cmp r2, #0
	bne _0201923C
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192D4 ; =0x0400001C
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_0201923C:
	add r0, r4, #0
	mov r1, #3
	bl sub_020193E4
	pop {r4, r5, r6, pc}
_02019246:
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192D8 ; =0x04001010
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_0201925C:
	ldr r2, _020192C4 ; =0x000001FF
	add r3, r1, #0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _020192DC ; =0x04001014
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_02019272:
	mov r2, #0x49
	lsl r2, r2, #2
	ldrb r3, [r4, r2]
	cmp r3, #0
	bne _02019290
	add r2, #0xdb
	and r2, r1
	lsl r1, r0, #0x10
	ldr r0, _020192E0 ; =0x01FF0000
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _020192E4 ; =0x04001018
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_02019290:
	add r0, r4, #0
	mov r1, #6
	bl sub_020193E4
	pop {r4, r5, r6, pc}
_0201929A:
	mov r2, #0x15
	lsl r2, r2, #4
	ldrb r3, [r4, r2]
	cmp r3, #0
	bne _020192B8
	add r2, #0xaf
	and r2, r1
	lsl r1, r0, #0x10
	ldr r0, _020192E0 ; =0x01FF0000
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _020192E8 ; =0x0400101C
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
_020192B8:
	add r0, r4, #0
	mov r1, #7
	bl sub_020193E4
_020192C0:
	pop {r4, r5, r6, pc}
	nop
_020192C4: .word 0x000001FF
_020192C8: .word 0x04000010
_020192CC: .word 0x04000014
_020192D0: .word 0x04000018
_020192D4: .word 0x0400001C
_020192D8: .word 0x04001010
_020192DC: .word 0x04001014
_020192E0: .word 0x01FF0000
_020192E4: .word 0x04001018
_020192E8: .word 0x0400101C
	thumb_func_end sub_02019184

	thumb_func_start sub_020192EC
sub_020192EC: ; 0x020192EC
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020192EC

	thumb_func_start sub_020192F8
sub_020192F8: ; 0x020192F8
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020192F8

	thumb_func_start sub_02019304
sub_02019304: ; 0x02019304
	cmp r1, #5
	bhi _02019346
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02019314: ; jump table
	.short _02019320 - _02019314 - 2 ; case 0
	.short _02019324 - _02019314 - 2 ; case 1
	.short _0201932C - _02019314 - 2 ; case 2
	.short _02019334 - _02019314 - 2 ; case 3
	.short _02019338 - _02019314 - 2 ; case 4
	.short _02019340 - _02019314 - 2 ; case 5
_02019320:
	str r2, [r0, #0xc]
	bx lr
_02019324:
	ldr r1, [r0, #0xc]
	add r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_0201932C:
	ldr r1, [r0, #0xc]
	sub r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_02019334:
	str r2, [r0, #0x10]
	bx lr
_02019338:
	ldr r1, [r0, #0x10]
	add r1, r1, r2
	str r1, [r0, #0x10]
	bx lr
_02019340:
	ldr r1, [r0, #0x10]
	sub r1, r1, r2
	str r1, [r0, #0x10]
_02019346:
	bx lr
	thumb_func_end sub_02019304

	thumb_func_start sub_02019348
sub_02019348: ; 0x02019348
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x18]
	cmp r4, #7
	bhi _020193D0
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02019364: ; jump table
	.short _020193D0 - _02019364 - 2 ; case 0
	.short _020193D0 - _02019364 - 2 ; case 1
	.short _02019374 - _02019364 - 2 ; case 2
	.short _0201938C - _02019364 - 2 ; case 3
	.short _020193D0 - _02019364 - 2 ; case 4
	.short _020193D0 - _02019364 - 2 ; case 5
	.short _020193A4 - _02019364 - 2 ; case 6
	.short _020193BC - _02019364 - 2 ; case 7
_02019374:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _020193D4 ; =0x04000020
	bl sub_020BF4AC
	add sp, #8
	pop {r3, r4, r5, pc}
_0201938C:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _020193D8 ; =0x04000030
	bl sub_020BF4AC
	add sp, #8
	pop {r3, r4, r5, pc}
_020193A4:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _020193DC ; =0x04001020
	bl sub_020BF4AC
	add sp, #8
	pop {r3, r4, r5, pc}
_020193BC:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _020193E0 ; =0x04001030
	bl sub_020BF4AC
_020193D0:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020193D4: .word 0x04000020
_020193D8: .word 0x04000030
_020193DC: .word 0x04001020
_020193E0: .word 0x04001030
	thumb_func_end sub_02019348

	thumb_func_start sub_020193E4
sub_020193E4: ; 0x020193E4
	push {r4, r5, lr}
	sub sp, #0x14
	mov r2, #1
	lsl r2, r2, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #4
	add r3, r2, #0
	str r1, [sp]
	bl sub_0201D470
	mov r3, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #4
	str r3, [sp]
	bl sub_02019348
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020193E4

	thumb_func_start sub_02019410
sub_02019410: ; 0x02019410
	push {r3, r4, r5, lr}
	cmp r2, #0
	bne _0201941C
	bl sub_020C4F48
	pop {r3, r4, r5, pc}
_0201941C:
	mov r4, #3
	add r3, r0, #0
	tst r3, r4
	bne _02019442
	add r3, r1, #0
	tst r3, r4
	bne _02019442
	lsl r3, r2, #0x10
	lsr r3, r3, #0x10
	lsr r4, r3, #0x1f
	lsl r5, r3, #0x1e
	sub r5, r5, r4
	mov r3, #0x1e
	ror r5, r3
	add r3, r4, r5
	bne _02019442
	bl sub_020C4B68
	pop {r3, r4, r5, pc}
_02019442:
	bl sub_020C4B18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019410

	thumb_func_start sub_02019448
sub_02019448: ; 0x02019448
	push {r3, lr}
	mov r2, #0x2c
	mul r2, r1
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02019448

	thumb_func_start sub_02019460
sub_02019460: ; 0x02019460
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r3, #0
	bne _020194CE
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r0, r5, r7
	ldr r0, [r0, #8]
	str r0, [sp, #4]
	cmp r0, #0
	beq _0201949E
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r3, #0
	bl sub_02019410
	add r3, r5, r7
	ldr r2, [r3, #0x10]
	ldr r1, [sp, #4]
	ldr r3, [r3, #0xc]
	add r0, r4, #0
	lsl r2, r2, #1
	bl sub_020194E0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0201949E:
	ldr r0, [r6, #0]
	lsr r7, r0, #8
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_02018184
	add r5, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02019410
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #1
	add r3, r7, #0
	bl sub_020194E0
	add r0, r5, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020194CE:
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #1
	bl sub_020194E0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02019460

	thumb_func_start sub_020194E0
sub_020194E0: ; 0x020194E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r5, r2, #0
	bl sub_020C2C54
	cmp r7, #7
	bhi _02019570
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019502: ; jump table
	.short _02019512 - _02019502 - 2 ; case 0
	.short _0201951E - _02019502 - 2 ; case 1
	.short _0201952A - _02019502 - 2 ; case 2
	.short _02019536 - _02019502 - 2 ; case 3
	.short _02019542 - _02019502 - 2 ; case 4
	.short _0201954E - _02019502 - 2 ; case 5
	.short _0201955A - _02019502 - 2 ; case 6
	.short _02019566 - _02019502 - 2 ; case 7
_02019512:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C036C
	pop {r3, r4, r5, r6, r7, pc}
_0201951E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C042C
	pop {r3, r4, r5, r6, r7, pc}
_0201952A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C04EC
	pop {r3, r4, r5, r6, r7, pc}
_02019536:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C05AC
	pop {r3, r4, r5, r6, r7, pc}
_02019542:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C03CC
	pop {r3, r4, r5, r6, r7, pc}
_0201954E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C048C
	pop {r3, r4, r5, r6, r7, pc}
_0201955A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C054C
	pop {r3, r4, r5, r6, r7, pc}
_02019566:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C060C
_02019570:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020194E0

	thumb_func_start sub_02019574
sub_02019574: ; 0x02019574
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	mov r2, #0x2c
	mul r2, r1
	add r1, r4, r2
	ldr r1, [r1, #8]
	add r2, r3, #0
	bl sub_02019410
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02019574

	thumb_func_start sub_0201958C
sub_0201958C: ; 0x0201958C
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0x2c
	mul r4, r1
	add r4, r0, r4
	ldrb r4, [r4, #0x1e]
	cmp r4, #0
	bne _020195AA
	ldr r4, [sp, #0x10]
	lsl r4, r4, #5
	str r4, [sp]
	bl sub_020195B8
	add sp, #4
	pop {r3, r4, pc}
_020195AA:
	ldr r4, [sp, #0x10]
	lsl r4, r4, #6
	str r4, [sp]
	bl sub_020195B8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0201958C

	thumb_func_start sub_020195B8
sub_020195B8: ; 0x020195B8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp]
	cmp r3, #0
	bne _020195F0
	ldr r1, [r5, #0]
	ldr r0, [r0, #0]
	lsr r4, r1, #8
	add r1, r4, #0
	bl sub_02018184
	add r6, r0, #0
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02019410
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	add r3, r4, #0
	bl sub_020195FC
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_020195F0:
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020195FC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020195B8

	thumb_func_start sub_020195FC
sub_020195FC: ; 0x020195FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r5, r2, #0
	bl sub_020C2C54
	cmp r7, #7
	bhi _0201968C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201961E: ; jump table
	.short _0201962E - _0201961E - 2 ; case 0
	.short _0201963A - _0201961E - 2 ; case 1
	.short _02019646 - _0201961E - 2 ; case 2
	.short _02019652 - _0201961E - 2 ; case 3
	.short _0201965E - _0201961E - 2 ; case 4
	.short _0201966A - _0201961E - 2 ; case 5
	.short _02019676 - _0201961E - 2 ; case 6
	.short _02019682 - _0201961E - 2 ; case 7
_0201962E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C066C
	pop {r3, r4, r5, r6, r7, pc}
_0201963A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C072C
	pop {r3, r4, r5, r6, r7, pc}
_02019646:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C07EC
	pop {r3, r4, r5, r6, r7, pc}
_02019652:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C08AC
	pop {r3, r4, r5, r6, r7, pc}
_0201965E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C06CC
	pop {r3, r4, r5, r6, r7, pc}
_0201966A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C078C
	pop {r3, r4, r5, r6, r7, pc}
_02019676:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C084C
	pop {r3, r4, r5, r6, r7, pc}
_02019682:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020C090C
_0201968C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020195FC

	thumb_func_start sub_02019690
sub_02019690: ; 0x02019690
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r5, #0
	bl sub_020195FC
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_02018238
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02019690

	thumb_func_start sub_020196C0
sub_020196C0: ; 0x020196C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r4, r0, #0
	mov r1, #0x2c
	add r6, r7, #0
	add r4, #0x1f
	mul r6, r1
	ldrb r1, [r4, r6]
	ldr r0, [r0, #0]
	add r5, r2, #0
	mul r1, r3
	str r1, [sp]
	bl sub_02018184
	str r0, [sp, #4]
	ldrb r0, [r4, r6]
	cmp r0, #0x20
	bne _020196FA
	lsl r2, r5, #0xc
	lsl r1, r5, #8
	lsl r0, r5, #4
	orr r1, r2
	orr r0, r1
	add r1, r5, #0
	orr r1, r0
	lsl r0, r1, #0x10
	add r5, r1, #0
	b _02019704
_020196FA:
	lsl r2, r5, #0x18
	lsl r1, r5, #0x10
	lsl r0, r5, #8
	orr r1, r2
	orr r0, r1
_02019704:
	orr r5, r0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_020C4BB8
	lsl r0, r7, #0x18
	ldrb r2, [r4, r6]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #4]
	mul r2, r3
	ldr r3, [sp]
	lsr r0, r0, #0x18
	bl sub_020195FC
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020196C0

	thumb_func_start sub_0201972C
sub_0201972C: ; 0x0201972C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r7, r3, #0
	bl sub_020C2C54
	cmp r6, #4
	bhs _0201974E
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_020C00B4
	pop {r3, r4, r5, r6, r7, pc}
_0201974E:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_020C0108
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201972C

	thumb_func_start sub_0201975C
sub_0201975C: ; 0x0201975C
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r1, sp, #0xc
	mov r2, #2
	mov r3, #0
	bl sub_0201972C
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end sub_0201975C

	thumb_func_start sub_02019774
sub_02019774: ; 0x02019774
	cmp r2, #5
	bhi _020197DE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02019784: ; jump table
	.short _02019790 - _02019784 - 2 ; case 0
	.short _0201979A - _02019784 - 2 ; case 1
	.short _0201979A - _02019784 - 2 ; case 2
	.short _020197A4 - _02019784 - 2 ; case 3
	.short _020197BA - _02019784 - 2 ; case 4
	.short _020197DC - _02019784 - 2 ; case 5
_02019790:
	lsl r1, r1, #4
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0201979A:
	lsl r1, r1, #5
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_020197A4:
	mov r2, #0x1f
	add r3, r0, #0
	and r3, r2
	mov r2, #0x1f
	bic r0, r2
	add r0, r1, r0
	lsl r0, r0, #5
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_020197BA:
	asr r2, r1, #5
	asr r3, r0, #5
	lsl r2, r2, #1
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x1a
	lsr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x16
	add r0, r2, r0
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_020197DC:
	mov r0, #0
_020197DE:
	bx lr
	thumb_func_end sub_02019774

	thumb_func_start sub_020197E0
sub_020197E0: ; 0x020197E0
	push {r3, r4, r5, r6, r7}
	sub sp, #4
	str r3, [sp]
	add r6, r2, #0
	ldr r5, [sp]
	add r4, r6, #0
	sub r4, #0x20
	sub r5, #0x20
	mov r2, #0
	lsl r4, r4, #0x10
	lsl r5, r5, #0x10
	add r3, r2, #0
	asr r4, r4, #0x10
	asr r7, r5, #0x10
	lsr r5, r0, #5
	beq _02019806
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_02019806:
	lsr r5, r1, #5
	beq _02019810
	add r2, r2, #2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_02019810:
	cmp r2, #3
	bhi _020198B8
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02019820: ; jump table
	.short _02019828 - _02019820 - 2 ; case 0
	.short _02019846 - _02019820 - 2 ; case 1
	.short _0201986C - _02019820 - 2 ; case 2
	.short _02019898 - _02019820 - 2 ; case 3
_02019828:
	cmp r4, #0
	blt _02019838
	lsl r1, r1, #5
	add r0, r0, r1
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_02019838:
	add r2, r1, #0
	mul r2, r6
	add r0, r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_02019846:
	cmp r7, #0
	blt _02019850
	mov r2, #1
	lsl r2, r2, #0xa
	b _02019854
_02019850:
	ldr r2, [sp]
	lsl r2, r2, #5
_02019854:
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r0
	add r0, r1, #0
	mul r0, r4
	add r0, r2, r0
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_0201986C:
	lsl r2, r6, #5
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r4, #0
	blt _02019886
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	add r0, r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_02019886:
	mov r3, #0x1f
	and r1, r3
	add r3, r1, #0
	mul r3, r6
	add r0, r0, r3
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _020198B8
_02019898:
	add r2, r6, r7
	lsl r2, r2, #5
	add r2, r3, r2
	add r5, r0, #0
	mov r3, #0x1f
	add r0, r1, #0
	and r0, r3
	add r1, r0, #0
	lsl r2, r2, #0x10
	and r5, r3
	mul r1, r4
	lsr r2, r2, #0x10
	add r0, r5, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
_020198B8:
	add r0, r3, #0
	add sp, #4
	pop {r3, r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_020197E0

	thumb_func_start sub_020198C0
sub_020198C0: ; 0x020198C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, sp, #0x20
	ldrb r5, [r6, #0x14]
	str r5, [sp]
	ldrb r4, [r6, #0x18]
	str r4, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	add r2, r3, #0
	ldrb r3, [r6, #0x10]
	bl sub_020198E8
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020198C0

	thumb_func_start sub_020198E8
sub_020198E8: ; 0x020198E8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r2, r3, #0
	mov r3, #0x2c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #0x18
	cmp r1, #1
	beq _02019932
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_020199E0
	add sp, #0x1c
	pop {r4, r5, pc}
_02019932:
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_02019B54
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_020198E8

	thumb_func_start sub_02019964
sub_02019964: ; 0x02019964
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r2, r3, #0
	mov r3, #0x2c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #0x18
	cmp r1, #1
	beq _020199AE
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_020199E0
	add sp, #0x1c
	pop {r4, r5, pc}
_020199AE:
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	add r1, sp, #0x38
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_02019B54
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end sub_02019964

	thumb_func_start sub_020199E0
sub_020199E0: ; 0x020199E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r3, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7, #0]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _02019A04
	b _02019B4E
_02019A04:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #1
	add r2, sp, #0x40
	bl sub_02018FF4
	add r0, sp, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _02019AB2
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _02019A42
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x18]
	lsl r1, r0, #1
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	str r0, [sp, #0x14]
_02019A34:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	add r1, sp, #0x40
	ldrb r1, [r1]
	cmp r0, r1
	blt _02019A44
_02019A42:
	b _02019B4E
_02019A44:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, r2, r1
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	bge _02019B4E
	mov r5, #0
	cmp r6, #0
	bls _02019A9E
	add r1, r4, #0
	mul r1, r2
	lsl r2, r1, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x18
	add r1, r1, r2
	lsr r0, r0, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
_02019A68:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _02019A9E
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	cmp r1, r4
	bge _02019A9E
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x30]
	lsr r0, r0, #0x18
	bl sub_02019774
	ldr r1, [sp, #0x10]
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	lsl r2, r0, #1
	ldr r0, [sp, #0x2c]
	strh r1, [r0, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02019A68
_02019A9E:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02019A34
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_02019AB2:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _02019B4E
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x24]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x20]
_02019AC6:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bge _02019B4E
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _02019B4E
	mov r5, #0
	cmp r6, #0
	bls _02019B3E
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_02019AF2:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _02019B3E
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _02019B3E
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl sub_02019774
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_020197E0
	lsl r1, r0, #1
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x38]
	lsl r2, r1, #1
	ldr r1, [sp, #0x2c]
	strh r0, [r1, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02019AF2
_02019B3E:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02019AC6
_02019B4E:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020199E0

	thumb_func_start sub_02019B54
sub_02019B54: ; 0x02019B54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r3, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7, #0]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _02019B78
	b _02019CB4
_02019B78:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #1
	add r2, sp, #0x40
	bl sub_02018FF4
	add r0, sp, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _02019C1C
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bhi _02019B98
	b _02019CB4
_02019B98:
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x18]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x14]
_02019BA8:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	add r1, sp, #0x40
	ldrb r1, [r1]
	cmp r0, r1
	bge _02019CB4
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, r2, r1
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	bge _02019CB4
	mov r5, #0
	cmp r6, #0
	bls _02019C08
	ldr r1, [sp, #0x14]
	mul r2, r4
	lsl r0, r0, #0x18
	add r1, r1, r2
	lsr r0, r0, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
_02019BD6:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _02019C08
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	cmp r1, r4
	bge _02019C08
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x30]
	lsr r0, r0, #0x18
	bl sub_02019774
	ldr r1, [sp, #0x10]
	ldrb r2, [r1, r5]
	ldr r1, [sp, #0x2c]
	strb r2, [r1, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02019BD6
_02019C08:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02019BA8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_02019C1C:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bls _02019CB4
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x24]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x20]
_02019C30:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bge _02019CB4
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _02019CB4
	mov r5, #0
	cmp r6, #0
	bls _02019CA4
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_02019C5C:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _02019CA4
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _02019CA4
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl sub_02019774
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_020197E0
	ldr r1, [sp, #0x5c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	strb r2, [r1, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02019C5C
_02019CA4:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02019C30
_02019CB4:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02019B54

	thumb_func_start sub_02019CB8
sub_02019CB8: ; 0x02019CB8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r2, r3, #0
	mov r3, #0x2c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #8
	cmp r1, #1
	beq _02019CEC
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldrb r1, [r3, #0x18]
	str r1, [sp, #4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #8]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0
	bl sub_02019D08
	add sp, #0xc
	pop {r4, r5, pc}
_02019CEC:
	ldrb r1, [r3, #0x14]
	add r0, #8
	add r0, r0, r5
	str r1, [sp]
	ldrb r1, [r3, #0x18]
	str r1, [sp, #4]
	lsl r1, r4, #0x18
	ldrb r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl sub_02019DB8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02019CB8

	thumb_func_start sub_02019D08
sub_02019D08: ; 0x02019D08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [r0, #0]
	add r7, r1, #0
	str r0, [sp]
	ldr r6, [sp, #0x38]
	cmp r4, #0
	beq _02019DB2
	ldrb r0, [r0, #0x15]
	add r1, sp, #0x18
	add r1, #1
	add r2, sp, #0x18
	bl sub_02018FF4
	add r0, sp, #0x20
	ldrb r2, [r0, #0x14]
	ldr r1, [sp, #8]
	add r1, r1, r2
	ldr r2, [sp, #8]
	str r1, [sp, #0xc]
	cmp r2, r1
	bge _02019DB2
	ldrb r2, [r0, #0x10]
	ldr r0, [sp, #4]
	lsl r1, r6, #0xc
	add r0, r0, r2
	add r1, r1, r7
	str r0, [sp, #0x10]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
_02019D4A:
	add r0, sp, #0x18
	ldrb r1, [r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	bhs _02019DB2
	ldr r5, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	cmp r1, r0
	bge _02019DA2
_02019D5E:
	add r0, sp, #0x18
	ldrb r0, [r0, #1]
	cmp r5, r0
	bhs _02019DA2
	ldr r2, [sp]
	ldr r1, [sp, #8]
	ldrb r2, [r2, #0x15]
	add r0, r5, #0
	bl sub_02019774
	cmp r6, #0x11
	bne _02019D7C
	lsl r0, r0, #1
	strh r7, [r4, r0]
	b _02019D96
_02019D7C:
	cmp r6, #0x10
	bne _02019D90
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	mov r1, #0xf
	lsl r1, r1, #0xc
	and r1, r2
	add r1, r7, r1
	strh r1, [r4, r0]
	b _02019D96
_02019D90:
	lsl r1, r0, #1
	ldr r0, [sp, #0x14]
	strh r0, [r4, r1]
_02019D96:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r5, r0
	blt _02019D5E
_02019DA2:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _02019D4A
_02019DB2:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02019D08

	thumb_func_start sub_02019DB8
sub_02019DB8: ; 0x02019DB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	add r7, r0, #0
	str r2, [sp, #4]
	ldr r0, [r7, #0]
	add r5, r3, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02019E28
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x10
	add r1, #1
	add r2, sp, #0x10
	bl sub_02018FF4
	add r1, sp, #0x18
	ldrb r0, [r1, #0x14]
	add r0, r5, r0
	str r0, [sp, #8]
	cmp r5, r0
	bge _02019E28
	ldrb r1, [r1, #0x10]
	ldr r0, [sp, #4]
	add r6, r0, r1
_02019DEA:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r5, r0
	bhs _02019E28
	ldr r4, [sp, #4]
	add r0, r4, #0
	cmp r0, r6
	bge _02019E1C
_02019DFA:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r4, r0
	bhs _02019E1C
	ldrb r2, [r7, #0x15]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02019774
	ldr r2, [sp]
	ldr r1, [sp, #0xc]
	strb r2, [r1, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _02019DFA
_02019E1C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #8]
	cmp r5, r0
	blt _02019DEA
_02019E28:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02019DB8

	thumb_func_start sub_02019E2C
sub_02019E2C: ; 0x02019E2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x2c
	add r7, r1, #0
	mul r7, r0
	str r2, [sp]
	add r0, r5, r7
	ldr r4, [r0, #8]
	add r6, r3, #0
	cmp r4, #0
	beq _02019EB4
	ldrb r0, [r0, #0x1d]
	add r1, sp, #0x10
	add r1, #1
	add r2, sp, #0x10
	bl sub_02018FF4
	add r0, sp, #0x18
	ldrb r1, [r0, #0x14]
	add r1, r6, r1
	str r1, [sp, #4]
	cmp r6, r1
	bge _02019EB4
	add r1, r5, r7
	str r1, [sp, #0xc]
	ldrb r1, [r0, #0x18]
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	ldrb r1, [r0, #0x10]
	ldr r0, [sp]
	add r7, r0, r1
_02019E6C:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r6, r0
	bhs _02019EB4
	ldr r5, [sp]
	add r0, r5, #0
	cmp r0, r7
	bge _02019EA8
_02019E7C:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r5, r0
	bhs _02019EA8
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	ldrb r2, [r2, #0x1d]
	add r1, r6, #0
	bl sub_02019774
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	ldr r1, _02019EB8 ; =0x00000FFF
	and r2, r1
	ldr r1, [sp, #8]
	orr r1, r2
	strh r1, [r4, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r7
	blt _02019E7C
_02019EA8:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _02019E6C
_02019EB4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02019EB8: .word 0x00000FFF
	thumb_func_end sub_02019E2C

	thumb_func_start sub_02019EBC
sub_02019EBC: ; 0x02019EBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2c
	mul r0, r4
	add r2, r5, r0
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02019EDE
	ldr r2, [r2, #0xc]
	mov r0, #0
	bl sub_020C4AF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019448
_02019EDE:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019EBC

	thumb_func_start sub_02019EE0
sub_02019EE0: ; 0x02019EE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02019F02
	add r0, r2, #0
	ldr r2, [r3, #0xc]
	bl sub_020C4AF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02019448
_02019F02:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019EE0

	thumb_func_start sub_02019F04
sub_02019F04: ; 0x02019F04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02019F26
	add r0, r2, #0
	ldr r2, [r3, #0xc]
	bl sub_020C4AF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0201C3C0
_02019F26:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02019F04

	thumb_func_start sub_02019F28
sub_02019F28: ; 0x02019F28
	push {r3, lr}
	cmp r0, #7
	bhi _02019F7A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02019F3A: ; jump table
	.short _02019F4A - _02019F3A - 2 ; case 0
	.short _02019F50 - _02019F3A - 2 ; case 1
	.short _02019F56 - _02019F3A - 2 ; case 2
	.short _02019F5C - _02019F3A - 2 ; case 3
	.short _02019F62 - _02019F3A - 2 ; case 4
	.short _02019F68 - _02019F3A - 2 ; case 5
	.short _02019F6E - _02019F3A - 2 ; case 6
	.short _02019F74 - _02019F3A - 2 ; case 7
_02019F4A:
	bl sub_020BF2D4
	pop {r3, pc}
_02019F50:
	bl sub_020BF328
	pop {r3, pc}
_02019F56:
	bl sub_020BF37C
	pop {r3, pc}
_02019F5C:
	bl sub_020BF40C
	pop {r3, pc}
_02019F62:
	bl sub_020BF308
	pop {r3, pc}
_02019F68:
	bl sub_020BF35C
	pop {r3, pc}
_02019F6E:
	bl sub_020BF3CC
	pop {r3, pc}
_02019F74:
	bl sub_020BF464
	pop {r3, pc}
_02019F7A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02019F28

	thumb_func_start sub_02019F80
sub_02019F80: ; 0x02019F80
	push {r4, r5, r6, r7}
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x18
	mov r4, #0
	cmp r1, #0
	bls _02019FBA
	mov r5, #0xf
	add r6, r5, #0
_02019F90:
	ldrb r7, [r0, r4]
	and r7, r6
	strb r7, [r2]
	ldrb r7, [r2]
	cmp r7, #0
	beq _02019FA0
	add r7, r7, r3
	strb r7, [r2]
_02019FA0:
	ldrb r7, [r0, r4]
	asr r7, r7, #4
	and r7, r5
	strb r7, [r2, #1]
	ldrb r7, [r2, #1]
	cmp r7, #0
	beq _02019FB2
	add r7, r7, r3
	strb r7, [r2, #1]
_02019FB2:
	add r4, r4, #1
	add r2, r2, #2
	cmp r4, r1
	blo _02019F90
_02019FBA:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02019F80

	thumb_func_start sub_02019FC0
sub_02019FC0: ; 0x02019FC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r3, #0
	lsl r1, r5, #1
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02019F80
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02019FC0

	thumb_func_start sub_02019FE4
sub_02019FE4: ; 0x02019FE4
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02019FE4

	thumb_func_start sub_02019FF0
sub_02019FF0: ; 0x02019FF0
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02019FF0

	thumb_func_start sub_02019FFC
sub_02019FFC: ; 0x02019FFC
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrh r0, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02019FFC

	thumb_func_start sub_0201A008
sub_0201A008: ; 0x0201A008
	sub sp, #0x20
	cmp r1, #7
	bls _0201A010
	b _0201A1BC
_0201A010:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0201A01C: ; jump table
	.short _0201A02C - _0201A01C - 2 ; case 0
	.short _0201A040 - _0201A01C - 2 ; case 1
	.short _0201A054 - _0201A01C - 2 ; case 2
	.short _0201A0A4 - _0201A01C - 2 ; case 3
	.short _0201A0F4 - _0201A01C - 2 ; case 4
	.short _0201A108 - _0201A01C - 2 ; case 5
	.short _0201A11C - _0201A01C - 2 ; case 6
	.short _0201A16C - _0201A01C - 2 ; case 7
_0201A02C:
	ldr r0, _0201A1C4 ; =0x04000008
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x1e]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A040:
	ldr r0, _0201A1C8 ; =0x0400000A
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x1c]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A054:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201A068
	cmp r0, #1
	beq _0201A07C
	cmp r0, #2
	beq _0201A090
_0201A068:
	ldr r0, _0201A1CC ; =0x0400000C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x1a]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A07C:
	ldr r0, _0201A1CC ; =0x0400000C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x18]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A090:
	ldr r0, _0201A1CC ; =0x0400000C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x16]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A0A4:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201A0B8
	cmp r0, #1
	beq _0201A0CC
	cmp r0, #2
	beq _0201A0E0
_0201A0B8:
	ldr r0, _0201A1D0 ; =0x0400000E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x14]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A0CC:
	ldr r0, _0201A1D0 ; =0x0400000E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x12]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A0E0:
	ldr r0, _0201A1D0 ; =0x0400000E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0x10]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A0F4:
	ldr r0, _0201A1D4 ; =0x04001008
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0xe]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A108:
	ldr r0, _0201A1D8 ; =0x0400100A
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0xc]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A11C:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201A130
	cmp r0, #1
	beq _0201A144
	cmp r0, #2
	beq _0201A158
_0201A130:
	ldr r0, _0201A1DC ; =0x0400100C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #0xa]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A144:
	ldr r0, _0201A1DC ; =0x0400100C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #8]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A158:
	ldr r0, _0201A1DC ; =0x0400100C
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #6]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A16C:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0201A180
	cmp r0, #1
	beq _0201A194
	cmp r0, #2
	beq _0201A1A8
_0201A180:
	ldr r0, _0201A1E0 ; =0x0400100E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #4]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A194:
	ldr r0, _0201A1E0 ; =0x0400100E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0, #2]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A1A8:
	ldr r0, _0201A1E0 ; =0x0400100E
	ldrh r1, [r0]
	add r0, sp, #0
	add sp, #0x20
	strh r1, [r0]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201A1BC:
	mov r0, #0
	add sp, #0x20
	bx lr
	nop
_0201A1C4: .word 0x04000008
_0201A1C8: .word 0x0400000A
_0201A1CC: .word 0x0400000C
_0201A1D0: .word 0x0400000E
_0201A1D4: .word 0x04001008
_0201A1D8: .word 0x0400100A
_0201A1DC: .word 0x0400100C
_0201A1E0: .word 0x0400100E
	thumb_func_end sub_0201A008

	thumb_func_start sub_0201A1E4
sub_0201A1E4: ; 0x0201A1E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, sp, #0x70
	str r0, [sp]
	ldrh r0, [r2, #0x10]
	str r1, [sp, #4]
	ldrh r2, [r2, #0x18]
	str r0, [sp, #0x10]
	add r0, r1, #0
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x10]
	sub r3, r1, r0
	cmp r3, r2
	bge _0201A20C
	ldr r0, [sp, #8]
	add r0, r0, r3
	str r0, [sp, #0x50]
	b _0201A212
_0201A20C:
	ldr r0, [sp, #8]
	add r0, r2, r0
	str r0, [sp, #0x50]
_0201A212:
	ldr r2, [sp, #4]
	add r3, sp, #0x70
	ldrh r0, [r3, #0x14]
	ldrh r2, [r2, #6]
	ldrh r3, [r3, #0x1c]
	sub r4, r2, r0
	cmp r4, r3
	bge _0201A22A
	ldr r2, [sp, #0xc]
	add r2, r2, r4
	str r2, [sp, #0x4c]
	b _0201A230
_0201A22A:
	ldr r2, [sp, #0xc]
	add r2, r3, r2
	str r2, [sp, #0x4c]
_0201A230:
	ldr r2, [sp]
	mov r3, #7
	ldrh r4, [r2, #4]
	add r2, r4, #0
	and r2, r3
	add r2, r4, r2
	asr r2, r2, #3
	str r2, [sp, #0x48]
	add r2, r1, #0
	and r2, r3
	add r1, r1, r2
	asr r1, r1, #3
	str r1, [sp, #0x44]
	add r1, sp, #0x70
	ldrh r1, [r1, #0x20]
	ldr r2, _0201A41C ; =0x0000FFFF
	str r1, [sp, #0x38]
	cmp r1, r2
	bne _0201A338
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bge _0201A262
	cmp r2, r1
	blt _0201A264
_0201A262:
	b _0201A416
_0201A264:
	add r1, r2, #0
	lsl r1, r1, #2
	lsl r0, r0, #2
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
_0201A26E:
	ldr r3, [sp, #8]
	ldr r0, [sp, #0x50]
	add r1, r3, #0
	ldr r4, [sp, #0x10]
	cmp r1, r0
	bge _0201A31A
	cmp r1, r0
	bge _0201A31A
	add r0, r3, #0
	lsl r5, r0, #2
	add r0, r4, #0
	lsl r6, r0, #2
	ldr r0, _0201A420 ; =0x00003FE0
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x48]
	and r1, r0
	mul r2, r1
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x28]
	mov r1, #0x1c
	and r2, r1
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	and r0, r2
	ldr r2, [sp, #0x44]
	mul r2, r0
	ldr r0, [sp, #0x24]
	str r2, [sp, #0x18]
	and r0, r1
	str r0, [sp, #0x14]
_0201A2AA:
	ldr r0, [sp, #4]
	asr r2, r4, #1
	mov r1, #3
	ldr r0, [r0, #0]
	and r1, r2
	add r1, r0, r1
	ldr r0, _0201A420 ; =0x00003FE0
	and r0, r6
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	add r6, r6, #4
	add r0, r1, r0
	str r0, [sp, #0x64]
	lsl r0, r4, #0x1f
	lsr r2, r0, #0x1d
	ldr r0, [sp]
	asr r1, r3, #1
	ldr r7, [r0, #0]
	mov r0, #3
	and r0, r1
	ldr r1, _0201A420 ; =0x00003FE0
	add r4, r4, #1
	and r1, r5
	str r1, [sp, #0x54]
	add r1, r7, r0
	ldr r0, [sp, #0x54]
	add r5, r5, #4
	add r1, r0, r1
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r1, [r0, r1]
	lsl r0, r3, #0x1f
	lsr r0, r0, #0x1d
	asr r1, r0
	mov r0, #0xf
	and r0, r1
	add r7, r0, #0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x64]
	lsl r7, r2
	ldrb r0, [r0, r1]
	add r3, r3, #1
	str r0, [sp, #0x58]
	mov r0, #0xf0
	asr r0, r2
	ldr r1, [sp, #0x58]
	add r2, r7, #0
	and r0, r1
	orr r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x64]
	strb r2, [r0, r1]
	ldr r0, [sp, #0x50]
	cmp r3, r0
	blt _0201A2AA
_0201A31A:
	ldr r0, [sp, #0x28]
	add r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	blt _0201A26E
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
_0201A338:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bge _0201A416
	cmp r2, r1
	bge _0201A416
	add r1, r2, #0
	lsl r1, r1, #2
	lsl r0, r0, #2
	str r1, [sp, #0x40]
	str r0, [sp, #0x3c]
_0201A34E:
	ldr r3, [sp, #8]
	ldr r0, [sp, #0x50]
	add r1, r3, #0
	ldr r4, [sp, #0x10]
	cmp r1, r0
	bge _0201A3FC
	cmp r1, r0
	bge _0201A3FC
	add r0, r3, #0
	lsl r1, r0, #2
	add r0, r4, #0
	lsl r2, r0, #2
	ldr r0, _0201A420 ; =0x00003FE0
	ldr r5, [sp, #0x40]
	ldr r6, [sp, #0x48]
	and r5, r0
	mul r6, r5
	str r6, [sp, #0x34]
	ldr r6, [sp, #0x40]
	mov r5, #0x1c
	and r6, r5
	str r6, [sp, #0x30]
	ldr r6, [sp, #0x3c]
	and r0, r6
	ldr r6, [sp, #0x44]
	mul r6, r0
	ldr r0, [sp, #0x3c]
	str r6, [sp, #0x2c]
	and r0, r5
	str r0, [sp, #0x60]
_0201A38A:
	ldr r0, [sp, #4]
	asr r6, r4, #1
	mov r5, #3
	and r5, r6
	ldr r0, [r0, #0]
	asr r6, r3, #1
	add r5, r0, r5
	ldr r0, _0201A420 ; =0x00003FE0
	and r0, r2
	add r5, r5, r0
	ldr r0, [sp, #0x2c]
	add r5, r5, r0
	ldr r0, [sp]
	ldr r7, [r0, #0]
	mov r0, #3
	and r0, r6
	ldr r6, _0201A420 ; =0x00003FE0
	and r6, r1
	str r6, [sp, #0x5c]
	add r6, r7, r0
	ldr r0, [sp, #0x5c]
	add r6, r0, r6
	ldr r0, [sp, #0x34]
	add r6, r0, r6
	ldr r0, [sp, #0x30]
	ldrb r6, [r0, r6]
	lsl r0, r3, #0x1f
	lsr r0, r0, #0x1d
	asr r6, r0
	mov r0, #0xf
	and r0, r6
	ldr r6, [sp, #0x38]
	cmp r0, r6
	beq _0201A3EE
	lsl r6, r4, #0x1f
	lsr r7, r6, #0x1d
	lsl r0, r7
	mov lr, r0
	ldr r0, [sp, #0x60]
	ldrb r0, [r5, r0]
	mov ip, r0
	mov r0, #0xf0
	add r6, r0, #0
	asr r6, r7
	mov r0, ip
	and r0, r6
	mov r6, lr
	orr r6, r0
	ldr r0, [sp, #0x60]
	strb r6, [r5, r0]
_0201A3EE:
	ldr r0, [sp, #0x50]
	add r3, r3, #1
	add r1, r1, #4
	add r2, r2, #4
	add r4, r4, #1
	cmp r3, r0
	blt _0201A38A
_0201A3FC:
	ldr r0, [sp, #0x40]
	add r0, r0, #4
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	blt _0201A34E
_0201A416:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201A41C: .word 0x0000FFFF
_0201A420: .word 0x00003FE0
	thumb_func_end sub_0201A1E4

	thumb_func_start sub_0201A424
sub_0201A424: ; 0x0201A424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, sp, #0x58
	str r0, [sp]
	ldrh r0, [r2, #0x10]
	str r1, [sp, #4]
	ldrh r2, [r2, #0x18]
	str r0, [sp, #0x10]
	add r0, r1, #0
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0x10]
	sub r3, r1, r0
	cmp r3, r2
	bge _0201A44A
	ldr r0, [sp, #8]
	add r0, r0, r3
	b _0201A44E
_0201A44A:
	ldr r0, [sp, #8]
	add r0, r2, r0
_0201A44E:
	ldr r2, [sp, #4]
	add r3, sp, #0x58
	mov ip, r0
	ldrh r0, [r3, #0x14]
	ldrh r2, [r2, #6]
	ldrh r3, [r3, #0x1c]
	sub r4, r2, r0
	cmp r4, r3
	bge _0201A466
	ldr r2, [sp, #0xc]
	add r2, r2, r4
	b _0201A46A
_0201A466:
	ldr r2, [sp, #0xc]
	add r2, r3, r2
_0201A46A:
	mov lr, r2
	ldr r2, [sp]
	mov r3, #7
	ldrh r4, [r2, #4]
	add r2, r4, #0
	and r2, r3
	add r2, r4, r2
	asr r2, r2, #3
	str r2, [sp, #0x4c]
	add r2, r1, #0
	and r2, r3
	add r1, r1, r2
	asr r1, r1, #3
	str r1, [sp, #0x48]
	add r1, sp, #0x58
	ldrh r1, [r1, #0x20]
	ldr r2, _0201A604 ; =0x0000FFFF
	str r1, [sp, #0x3c]
	cmp r1, r2
	bne _0201A54A
	ldr r2, [sp, #0xc]
	mov r1, lr
	cmp r2, r1
	bge _0201A4A0
	mov r1, lr
	cmp r2, r1
	blt _0201A4A2
_0201A4A0:
	b _0201A600
_0201A4A2:
	add r1, r2, #0
	lsl r1, r1, #3
	lsl r0, r0, #3
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
_0201A4AC:
	ldr r1, [sp, #8]
	mov r0, ip
	add r2, r1, #0
	ldr r7, [sp, #0x10]
	cmp r2, r0
	bge _0201A52C
	mov r0, ip
	cmp r2, r0
	bge _0201A52C
	add r0, r1, #0
	lsl r2, r0, #3
	add r0, r7, #0
	lsl r3, r0, #3
	ldr r6, _0201A608 ; =0x00007FC0
	ldr r0, [sp, #0x28]
	ldr r4, [sp, #0x4c]
	and r0, r6
	mul r4, r0
	str r4, [sp, #0x20]
	ldr r0, [sp, #0x28]
	mov r5, #0x38
	and r0, r5
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x48]
	and r0, r6
	mul r4, r0
	ldr r0, [sp, #0x24]
	str r4, [sp, #0x18]
	and r0, r5
	str r0, [sp, #0x14]
_0201A4EA:
	ldr r0, [sp]
	add r5, r1, #0
	mov r4, #7
	and r5, r4
	ldr r0, [r0, #0]
	ldr r4, _0201A608 ; =0x00007FC0
	add r0, r0, r5
	and r4, r2
	add r4, r4, r0
	ldr r0, [sp, #0x20]
	add r5, r7, #0
	add r4, r0, r4
	ldr r0, [sp, #0x1c]
	add r1, r1, #1
	ldrb r6, [r0, r4]
	ldr r0, [sp, #4]
	mov r4, #7
	and r5, r4
	ldr r0, [r0, #0]
	ldr r4, _0201A608 ; =0x00007FC0
	add r0, r0, r5
	and r4, r3
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r2, #8
	add r4, r0, r4
	ldr r0, [sp, #0x14]
	add r3, #8
	strb r6, [r0, r4]
	mov r0, ip
	add r7, r7, #1
	cmp r1, r0
	blt _0201A4EA
_0201A52C:
	ldr r0, [sp, #0x28]
	add r0, #8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0x24]
	mov r0, lr
	cmp r1, r0
	blt _0201A4AC
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
_0201A54A:
	ldr r2, [sp, #0xc]
	mov r1, lr
	cmp r2, r1
	bge _0201A600
	mov r1, lr
	cmp r2, r1
	bge _0201A600
	add r1, r2, #0
	lsl r1, r1, #3
	lsl r0, r0, #3
	str r1, [sp, #0x44]
	str r0, [sp, #0x40]
_0201A562:
	ldr r2, [sp, #8]
	mov r0, ip
	add r1, r2, #0
	ldr r3, [sp, #0x10]
	cmp r1, r0
	bge _0201A5E6
	mov r0, ip
	cmp r1, r0
	bge _0201A5E6
	add r0, r2, #0
	lsl r6, r0, #3
	add r0, r3, #0
	lsl r1, r0, #3
	ldr r7, _0201A608 ; =0x00007FC0
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	and r0, r7
	mul r4, r0
	str r4, [sp, #0x38]
	ldr r0, [sp, #0x44]
	mov r5, #0x38
	and r0, r5
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x48]
	and r0, r7
	mul r4, r0
	ldr r0, [sp, #0x40]
	str r4, [sp, #0x30]
	and r0, r5
	str r0, [sp, #0x2c]
_0201A5A0:
	ldr r0, [sp, #4]
	mov r4, #7
	ldr r0, [r0, #0]
	and r4, r3
	add r0, r0, r4
	ldr r4, _0201A608 ; =0x00007FC0
	add r5, r2, #0
	and r4, r1
	add r4, r0, r4
	ldr r0, [sp, #0x30]
	add r7, r4, r0
	ldr r0, [sp]
	mov r4, #7
	and r5, r4
	ldr r0, [r0, #0]
	ldr r4, _0201A608 ; =0x00007FC0
	add r0, r0, r5
	and r4, r6
	add r4, r4, r0
	ldr r0, [sp, #0x38]
	add r4, r0, r4
	ldr r0, [sp, #0x34]
	ldrb r0, [r0, r4]
	ldr r4, [sp, #0x3c]
	cmp r0, r4
	beq _0201A5D8
	ldr r4, [sp, #0x2c]
	strb r0, [r7, r4]
_0201A5D8:
	add r2, r2, #1
	mov r0, ip
	add r6, #8
	add r1, #8
	add r3, r3, #1
	cmp r2, r0
	blt _0201A5A0
_0201A5E6:
	ldr r0, [sp, #0x44]
	add r0, #8
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0x40]
	mov r0, lr
	cmp r1, r0
	blt _0201A562
_0201A600:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201A604: .word 0x0000FFFF
_0201A608: .word 0x00007FC0
	thumb_func_end sub_0201A424

	thumb_func_start sub_0201A60C
sub_0201A60C: ; 0x0201A60C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	add r6, r0, r3
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r6, r0
	ble _0201A628
	add r6, r0, #0
_0201A628:
	add r1, sp, #0x18
	ldrh r2, [r1, #0x10]
	ldr r1, [sp, #8]
	add r1, r1, r2
	mov ip, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, ip
	cmp r1, r2
	ble _0201A63E
	mov ip, r2
_0201A63E:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	mov lr, r0
	ldr r1, [sp, #8]
	mov r0, ip
	cmp r1, r0
	bge _0201A6C8
	add r0, r1, #0
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #4
	str r0, [sp, #0x10]
_0201A65C:
	ldr r1, [sp, #4]
	add r0, r1, #0
	cmp r0, r6
	bge _0201A6B6
	lsl r5, r0, #2
	ldr r2, _0201A6CC ; =0x00003FE0
	ldr r0, [sp, #0xc]
	and r0, r2
	add r7, r0, #0
	mov r2, lr
	mul r7, r2
	ldr r0, [sp, #0xc]
	mov r2, #0x1c
	and r2, r0
_0201A678:
	ldr r0, [sp]
	asr r3, r1, #1
	ldr r4, [r0, #0]
	mov r0, #3
	and r0, r3
	ldr r3, _0201A6CC ; =0x00003FE0
	add r0, r4, r0
	and r3, r5
	add r0, r0, r3
	add r0, r0, r7
	mov r3, #1
	tst r3, r1
	ldrb r4, [r0, r2]
	beq _0201A6A0
	mov r3, #0xf
	and r3, r4
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	ldr r3, [sp, #0x10]
	b _0201A6AA
_0201A6A0:
	mov r3, #0xf0
	and r3, r4
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	ldr r3, [sp, #0x2c]
_0201A6AA:
	orr r3, r4
	add r1, r1, #1
	strb r3, [r0, r2]
	add r5, r5, #4
	cmp r1, r6
	blt _0201A678
_0201A6B6:
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r0, #1
	mov r0, ip
	str r1, [sp, #8]
	cmp r1, r0
	blt _0201A65C
_0201A6C8:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0201A6CC: .word 0x00003FE0
	thumb_func_end sub_0201A60C

	thumb_func_start sub_0201A6D0
sub_0201A6D0: ; 0x0201A6D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	add r5, r0, r3
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r5, r0
	ble _0201A6EC
	add r5, r0, #0
_0201A6EC:
	add r1, sp, #0x18
	ldrh r2, [r1, #0x10]
	ldr r1, [sp, #8]
	add r1, r1, r2
	mov lr, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, lr
	cmp r1, r2
	ble _0201A702
	mov lr, r2
_0201A702:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	mov r0, lr
	cmp r1, r0
	bge _0201A76E
	add r0, r1, #0
	lsl r0, r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	mov ip, r0
_0201A720:
	ldr r2, [sp, #4]
	add r0, r2, #0
	cmp r0, r5
	bge _0201A75C
	ldr r1, [sp, #0xc]
	ldr r0, _0201A774 ; =0x00007FC0
	mov r3, ip
	and r0, r1
	add r7, r0, #0
	ldr r1, [sp, #0x10]
	mov r0, #0x38
	mul r7, r1
	ldr r1, [sp, #0xc]
	add r6, r1, #0
	and r6, r0
_0201A73E:
	ldr r0, [sp]
	ldr r4, _0201A774 ; =0x00007FC0
	ldr r1, [r0, #0]
	mov r0, #7
	and r0, r2
	and r4, r3
	add r0, r1, r0
	add r0, r4, r0
	add r1, r7, r0
	ldr r0, [sp, #0x2c]
	add r2, r2, #1
	strb r0, [r6, r1]
	add r3, #8
	cmp r2, r5
	blt _0201A73E
_0201A75C:
	ldr r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r0, #1
	mov r0, lr
	str r1, [sp, #8]
	cmp r1, r0
	blt _0201A720
_0201A76E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0201A774: .word 0x00007FC0
	thumb_func_end sub_0201A6D0

	thumb_func_start sub_0201A778
sub_0201A778: ; 0x0201A778
	push {r4, r5, r6, lr}
	add r5, r1, #0
	lsl r1, r5, #4
	bl sub_02018144
	add r6, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0201A79C
_0201A78A:
	lsl r0, r4, #4
	add r0, r6, r0
	bl sub_0201A7A0
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blt _0201A78A
_0201A79C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201A778

	thumb_func_start sub_0201A7A0
sub_0201A7A0: ; 0x0201A7A0
	mov r3, #0
	str r3, [r0, #0]
	mov r1, #0xff
	strb r1, [r0, #4]
	strb r3, [r0, #5]
	strb r3, [r0, #6]
	strb r3, [r0, #7]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	ldrh r2, [r0, #0xa]
	ldr r1, _0201A7C8 ; =0xFFFF8000
	and r2, r1
	strh r2, [r0, #0xa]
	str r3, [r0, #0xc]
	ldrh r2, [r0, #0xa]
	sub r1, r1, #1
	and r1, r2
	strh r1, [r0, #0xa]
	bx lr
	nop
_0201A7C8: .word 0xFFFF8000
	thumb_func_end sub_0201A7A0

	thumb_func_start sub_0201A7CC
sub_0201A7CC: ; 0x0201A7CC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0201A7DE
	ldrb r1, [r0, #4]
	cmp r1, #0xff
	beq _0201A7DE
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0201A7E2
_0201A7DE:
	mov r0, #0
	bx lr
_0201A7E2:
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201A7CC

	thumb_func_start sub_0201A7E8
sub_0201A7E8: ; 0x0201A7E8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	mov r0, #0x2c
	add r7, r6, #0
	mul r7, r0
	add r4, r1, #0
	str r3, [sp]
	add r1, r5, r7
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0201A864
	add r3, sp, #8
	ldrb r2, [r1, #0x1f]
	ldrb r1, [r3, #0x14]
	ldrb r3, [r3, #0x18]
	ldr r0, [r5, #0]
	mul r3, r1
	add r1, r2, #0
	mul r1, r3
	bl sub_02018144
	add r1, r0, #0
	beq _0201A864
	str r5, [r4, #0]
	strb r6, [r4, #4]
	ldr r0, [sp]
	add r3, sp, #8
	strb r0, [r4, #5]
	ldrb r0, [r3, #0x10]
	ldr r2, _0201A868 ; =0xFFFF8000
	strb r0, [r4, #6]
	ldrb r0, [r3, #0x14]
	strb r0, [r4, #7]
	ldrb r0, [r3, #0x18]
	strb r0, [r4, #8]
	ldrb r0, [r3, #0x1c]
	strb r0, [r4, #9]
	ldrh r0, [r4, #0xa]
	ldrh r3, [r3, #0x20]
	and r0, r2
	lsr r2, r2, #0x11
	and r2, r3
	orr r0, r2
	strh r0, [r4, #0xa]
	str r1, [r4, #0xc]
	add r0, r5, r7
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0201A850
	mov r2, #0
	b _0201A852
_0201A850:
	mov r2, #1
_0201A852:
	ldrh r1, [r4, #0xa]
	ldr r0, _0201A86C ; =0xFFFF7FFF
	and r1, r0
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r4, #0xa]
_0201A864:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201A868: .word 0xFFFF8000
_0201A86C: .word 0xFFFF7FFF
	thumb_func_end sub_0201A7E8

	thumb_func_start sub_0201A870
sub_0201A870: ; 0x0201A870
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp]
	add r5, r0, #0
	ldr r0, [sp, #0x24]
	add r6, r2, #0
	str r0, [sp, #0x24]
	ldr r0, [sp]
	add r4, r1, #0
	mul r0, r6
	lsl r0, r0, #5
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [sp, #4]
	bl sub_02018144
	ldr r1, [sp, #0x24]
	add r7, r0, #0
	lsl r2, r1, #4
	orr r1, r2
	lsl r1, r1, #0x18
	ldr r2, [sp, #4]
	lsr r1, r1, #0x18
	bl sub_020D5124
	cmp r7, #0
	beq _0201A8CC
	str r5, [r4, #0]
	strb r6, [r4, #7]
	ldr r0, [sp]
	strb r0, [r4, #8]
	ldrh r1, [r4, #0xa]
	ldr r0, _0201A8D0 ; =0xFFFF8000
	add r3, r1, #0
	add r1, sp, #0x10
	ldrh r2, [r1, #0x10]
	lsr r1, r0, #0x11
	and r3, r0
	and r1, r2
	orr r1, r3
	strh r1, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	sub r0, r0, #1
	and r0, r1
	strh r0, [r4, #0xa]
_0201A8CC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201A8D0: .word 0xFFFF8000
	thumb_func_end sub_0201A870

	thumb_func_start sub_0201A8D4
sub_0201A8D4: ; 0x0201A8D4
	push {lr}
	sub sp, #0x14
	add r3, r2, #0
	ldrb r2, [r3, #2]
	str r2, [sp]
	ldrb r2, [r3, #3]
	str r2, [sp, #4]
	ldrb r2, [r3, #4]
	str r2, [sp, #8]
	ldrb r2, [r3, #5]
	str r2, [sp, #0xc]
	ldrh r2, [r3, #6]
	str r2, [sp, #0x10]
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	bl sub_0201A7E8
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_0201A8D4

	thumb_func_start sub_0201A8FC
sub_0201A8FC: ; 0x0201A8FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	mov r2, #0
	str r2, [r4, #0]
	mov r0, #0xff
	strb r0, [r4, #4]
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	strb r2, [r4, #8]
	strb r2, [r4, #9]
	ldrh r1, [r4, #0xa]
	ldr r0, _0201A924 ; =0xFFFF8000
	and r0, r1
	strh r0, [r4, #0xa]
	str r2, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
_0201A924: .word 0xFFFF8000
	thumb_func_end sub_0201A8FC

	thumb_func_start sub_0201A928
sub_0201A928: ; 0x0201A928
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0201A94C
_0201A934:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0201A942
	bl sub_020181C4
_0201A942:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blt _0201A934
_0201A94C:
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0201A928

	thumb_func_start sub_0201A954
sub_0201A954: ; 0x0201A954
	push {r4, lr}
	add r4, r0, #0
	bne _0201A95E
	bl sub_02022974
_0201A95E:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0201A968
	bl sub_02022974
_0201A968:
	ldrb r0, [r4, #4]
	cmp r0, #8
	blo _0201A972
	bl sub_02022974
_0201A972:
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	ldr r2, [r4, #0]
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0x1c]
	cmp r0, #3
	blo _0201A986
	bl sub_02022974
_0201A986:
	ldrb r2, [r4, #4]
	mov r1, #0x2c
	ldr r3, [r4, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0201A9A0 ; =0x020E56CC
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0201A9A0: .word 0x020E56CC
	thumb_func_end sub_0201A954

	thumb_func_start sub_0201A9A4
sub_0201A9A4: ; 0x0201A9A4
	push {r4, lr}
	add r4, r0, #0
	bne _0201A9AE
	bl sub_02022974
_0201A9AE:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0201A9B8
	bl sub_02022974
_0201A9B8:
	ldrb r0, [r4, #4]
	cmp r0, #8
	blo _0201A9C2
	bl sub_02022974
_0201A9C2:
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	ldr r2, [r4, #0]
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0x1c]
	cmp r0, #3
	blo _0201A9D6
	bl sub_02022974
_0201A9D6:
	ldrb r2, [r4, #4]
	mov r1, #0x2c
	ldr r3, [r4, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0201A9F0 ; =0x020E56C0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0201A9F0: .word 0x020E56C0
	thumb_func_end sub_0201A9A4

	thumb_func_start sub_0201A9F4
sub_0201A9F4: ; 0x0201A9F4
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AA0C ; =0x020E569C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_0201AA0C: .word 0x020E569C
	thumb_func_end sub_0201A9F4

	thumb_func_start sub_0201AA10
sub_0201AA10: ; 0x0201AA10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r6, [r5, #7]
	ldrb r4, [r5, #8]
	strb r1, [r5, #7]
	strb r2, [r5, #8]
	ldrb r3, [r5, #4]
	mov r2, #0x2c
	ldr r1, [r5, #0]
	mul r2, r3
	add r1, r1, r2
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AA38 ; =0x020E569C
	ldr r1, [r1, r2]
	blx r1
	strb r6, [r5, #7]
	strb r4, [r5, #8]
	pop {r4, r5, r6, pc}
	nop
_0201AA38: .word 0x020E569C
	thumb_func_end sub_0201AA10

	thumb_func_start sub_0201AA3C
sub_0201AA3C: ; 0x0201AA3C
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AA54 ; =0x020E56D8
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_0201AA54: .word 0x020E56D8
	thumb_func_end sub_0201AA3C

	thumb_func_start sub_0201AA58
sub_0201AA58: ; 0x0201AA58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r1, [r5, #4]
	mov r0, #0x2c
	ldr r2, [r5, #0]
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #8]
	str r0, [sp, #4]
	cmp r0, #0
	beq _0201AAD8
	ldrh r0, [r5, #0xa]
	ldrb r1, [r5, #5]
	lsl r0, r0, #0x11
	lsr r3, r0, #0x11
	ldrb r0, [r5, #7]
	add r7, r1, r0
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #8]
	mov ip, r0
	add r0, r0, r1
	mov r1, ip
	mov lr, r0
	cmp r1, r0
	bhs _0201AAD8
_0201AA8C:
	ldrb r2, [r5, #5]
	cmp r2, r7
	bhs _0201AACC
	mov r0, ip
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	lsl r1, r0, #1
	ldr r0, [sp, #4]
	add r0, r0, r1
	mov r1, ip
	str r0, [sp]
	mov r0, #0x20
	add r6, r1, #0
	and r6, r0
_0201AAA8:
	ldrb r0, [r5, #9]
	mov r4, #0x20
	add r1, r3, #0
	lsl r0, r0, #0xc
	and r4, r2
	orr r1, r0
	mov r0, #0x1f
	add r4, r6, r4
	and r0, r2
	lsl r4, r4, #5
	add r0, r0, r4
	lsl r4, r0, #1
	ldr r0, [sp]
	add r2, r2, #1
	strh r1, [r0, r4]
	add r3, r3, #1
	cmp r2, r7
	blo _0201AAA8
_0201AACC:
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blo _0201AA8C
_0201AAD8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201AA58

	thumb_func_start sub_0201AADC
sub_0201AADC: ; 0x0201AADC
	push {r4, r5, r6, r7}
	ldrb r3, [r0, #4]
	mov r1, #0x2c
	add r2, r3, #0
	mul r2, r1
	ldr r1, [r0, #0]
	add r1, r1, r2
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0201AB30
	ldrb r2, [r1, #0x1d]
	ldr r1, _0201AB34 ; =0x020E5694
	ldrb r6, [r1, r2]
	ldrb r1, [r0, #6]
	add r2, r1, #0
	mul r2, r6
	add r2, r3, r2
	ldrb r1, [r0, #5]
	mov r3, #0
	add r4, r2, r1
	ldrh r1, [r0, #0xa]
	lsl r1, r1, #0x11
	lsr r5, r1, #0x11
	ldrb r1, [r0, #8]
	cmp r1, #0
	ble _0201AB30
	add r1, r3, #0
_0201AB12:
	ldrb r7, [r0, #7]
	add r2, r1, #0
	cmp r7, #0
	ble _0201AB26
_0201AB1A:
	strb r5, [r4, r2]
	ldrb r7, [r0, #7]
	add r2, r2, #1
	add r5, r5, #1
	cmp r2, r7
	blt _0201AB1A
_0201AB26:
	ldrb r2, [r0, #8]
	add r3, r3, #1
	add r4, r4, r6
	cmp r3, r2
	blt _0201AB12
_0201AB30:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0201AB34: .word 0x020E5694
	thumb_func_end sub_0201AADC

	thumb_func_start sub_0201AB38
sub_0201AB38: ; 0x0201AB38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldrb r2, [r0, #4]
	str r0, [sp]
	mov r0, #0x2c
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp]
	ldr r0, [r0, #0]
	add r1, r0, r1
	ldr r0, [r1, #8]
	str r0, [sp, #4]
	cmp r0, #0
	beq _0201ABC0
	ldrb r1, [r1, #0x1d]
	ldr r0, _0201ABC4 ; =0x020E5694
	ldrb r0, [r0, r1]
	str r0, [sp, #8]
	ldr r0, [sp]
	ldrb r1, [r0, #5]
	ldrb r0, [r0, #7]
	add r2, r1, r0
	ldr r0, [sp]
	ldrb r0, [r0, #6]
	mov ip, r0
	ldr r0, [sp]
	ldrb r1, [r0, #8]
	mov r0, ip
	add r0, r0, r1
	mov r1, ip
	mov lr, r0
	cmp r1, r0
	bhs _0201ABC0
	mov r6, #0
	mov r7, #0x20
_0201AB7E:
	ldr r0, [sp]
	ldrb r1, [r0, #5]
	cmp r1, r2
	bhs _0201ABB4
	mov r3, ip
	mov r0, #0x1f
	and r3, r0
	ldr r0, [sp, #8]
	mul r0, r3
	lsl r3, r0, #1
	ldr r0, [sp, #4]
	add r5, r0, r3
	mov r3, ip
	mov r0, #0x20
	and r3, r0
_0201AB9C:
	add r4, r1, #0
	and r4, r7
	mov r0, #0x1f
	add r4, r3, r4
	and r0, r1
	lsl r4, r4, #5
	add r0, r0, r4
	lsl r0, r0, #1
	add r1, r1, #1
	strh r6, [r5, r0]
	cmp r1, r2
	blo _0201AB9C
_0201ABB4:
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blo _0201AB7E
_0201ABC0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0201ABC4: .word 0x020E5694
	thumb_func_end sub_0201AB38

	thumb_func_start sub_0201ABC8
sub_0201ABC8: ; 0x0201ABC8
	push {r4, r5, r6, r7}
	ldrb r3, [r0, #4]
	mov r1, #0x2c
	add r2, r3, #0
	mul r2, r1
	ldr r1, [r0, #0]
	add r1, r1, r2
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0201AC16
	ldrb r2, [r1, #0x1d]
	ldr r1, _0201AC1C ; =0x020E5694
	mov r4, #0
	ldrb r6, [r1, r2]
	ldrb r1, [r0, #6]
	add r2, r1, #0
	mul r2, r6
	ldrb r1, [r0, #5]
	add r2, r3, r2
	add r5, r2, r1
	ldrb r1, [r0, #8]
	cmp r1, #0
	ble _0201AC16
	add r1, r4, #0
	add r2, r4, #0
_0201ABFA:
	ldrb r7, [r0, #7]
	add r3, r2, #0
	cmp r7, #0
	ble _0201AC0C
_0201AC02:
	strb r1, [r5, r3]
	ldrb r7, [r0, #7]
	add r3, r3, #1
	cmp r3, r7
	blt _0201AC02
_0201AC0C:
	ldrb r3, [r0, #8]
	add r4, r4, #1
	add r5, r5, r6
	cmp r4, r3
	blt _0201ABFA
_0201AC16:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0201AC1C: .word 0x020E5694
	thumb_func_end sub_0201ABC8

	thumb_func_start sub_0201AC20
sub_0201AC20: ; 0x0201AC20
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0201AA58
	add r0, r4, #0
	bl sub_0201ACCC
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0201AC20

	thumb_func_start sub_0201AC4C
sub_0201AC4C: ; 0x0201AC4C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201AA58
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_0201ACCC
	pop {r4, pc}
	thumb_func_end sub_0201AC4C

	thumb_func_start sub_0201AC64
sub_0201AC64: ; 0x0201AC64
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201AADC
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	str r0, [sp]
	ldrb r5, [r4, #7]
	ldrb r3, [r4, #8]
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	mul r3, r5
	ldr r2, [r4, #0xc]
	lsl r3, r3, #6
	bl sub_0201958C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201AC64

	thumb_func_start sub_0201ACA0
sub_0201ACA0: ; 0x0201ACA0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201AADC
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	str r0, [sp]
	ldrb r5, [r4, #7]
	ldrb r3, [r4, #8]
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	mul r3, r5
	ldr r2, [r4, #0xc]
	lsl r3, r3, #6
	bl sub_0201958C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201ACA0

	thumb_func_start sub_0201ACCC
sub_0201ACCC: ; 0x0201ACCC
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldrh r2, [r3, #0xa]
	ldrb r1, [r3, #4]
	mov r4, #0x2c
	lsl r2, r2, #0x11
	ldr r0, [r3, #0]
	lsr r2, r2, #0x11
	str r2, [sp]
	mul r4, r1
	add r4, r0, r4
	ldr r2, [r3, #0xc]
	ldrb r5, [r3, #7]
	ldrb r3, [r3, #8]
	ldrb r4, [r4, #0x1f]
	mul r3, r5
	mul r3, r4
	bl sub_0201958C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201ACCC

	thumb_func_start sub_0201ACF4
sub_0201ACF4: ; 0x0201ACF4
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AD0C ; =0x020E56B4
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_0201AD0C: .word 0x020E56B4
	thumb_func_end sub_0201ACF4

	thumb_func_start sub_0201AD10
sub_0201AD10: ; 0x0201AD10
	push {r3, lr}
	ldrb r2, [r0, #4]
	mov r1, #0x2c
	ldr r3, [r0, #0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #2
	ldr r1, _0201AD28 ; =0x020E56A8
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	; .align 2, 0
_0201AD28: .word 0x020E56A8
	thumb_func_end sub_0201AD10

	thumb_func_start sub_0201AD2C
sub_0201AD2C: ; 0x0201AD2C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0201AB38
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201AD2C

	thumb_func_start sub_0201AD54
sub_0201AD54: ; 0x0201AD54
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201AB38
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201AD54

	thumb_func_start sub_0201AD68
sub_0201AD68: ; 0x0201AD68
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0201ABC8
	ldrb r1, [r4, #4]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02019460
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201AD68

	thumb_func_start sub_0201AD90
sub_0201AD90: ; 0x0201AD90
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201ABC8
	ldrb r1, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0201C3C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201AD90

	thumb_func_start sub_0201ADA4
sub_0201ADA4: ; 0x0201ADA4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r2, [r4, #4]
	mov r0, #0x2c
	ldr r3, [r4, #0]
	mul r0, r2
	add r0, r3, r0
	ldrb r2, [r0, #0x1f]
	cmp r2, #0x20
	bne _0201ADC0
	lsl r0, r1, #4
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_0201ADC0:
	lsl r3, r1, #0x18
	lsl r0, r1, #0x10
	orr r0, r3
	lsl r5, r1, #8
	orr r0, r5
	orr r0, r1
	ldr r1, [r4, #0xc]
	ldrb r3, [r4, #8]
	ldrb r4, [r4, #7]
	mul r2, r4
	mul r2, r3
	bl sub_020C4BB8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201ADA4

	thumb_func_start sub_0201ADDC
sub_0201ADDC: ; 0x0201ADDC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrh r5, [r4, #0x10]
	str r5, [sp]
	ldrh r5, [r4, #0x14]
	str r5, [sp, #4]
	ldrh r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrh r5, [r4, #0x1c]
	str r5, [sp, #0xc]
	ldrh r5, [r4, #0x20]
	str r5, [sp, #0x10]
	ldrh r4, [r4, #0x24]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl sub_0201AE08
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201ADDC

	thumb_func_start sub_0201AE08
sub_0201AE08: ; 0x0201AE08
	push {r4, r5, lr}
	sub sp, #0x24
	str r1, [sp, #0x1c]
	add r4, sp, #0x20
	ldrh r5, [r4, #0x10]
	add r1, sp, #0x14
	strh r5, [r1, #0xc]
	ldrh r5, [r4, #0x14]
	strh r5, [r1, #0xe]
	ldr r5, [r0, #0xc]
	str r5, [sp, #0x14]
	ldrb r5, [r0, #7]
	lsl r5, r5, #3
	strh r5, [r1, #4]
	ldrb r5, [r0, #8]
	lsl r5, r5, #3
	strh r5, [r1, #6]
	ldrb r5, [r0, #4]
	ldr r1, [r0, #0]
	mov r0, #0x2c
	mul r0, r5
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	add r1, sp, #0x14
	cmp r0, #0
	ldrh r0, [r4, #0x18]
	bne _0201AE5A
	str r0, [sp]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl sub_0201A1E4
	add sp, #0x24
	pop {r4, r5, pc}
_0201AE5A:
	str r0, [sp]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl sub_0201A424
	add sp, #0x24
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201AE08

	thumb_func_start sub_0201AE78
sub_0201AE78: ; 0x0201AE78
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, [r0, #0xc]
	add r4, r2, #0
	str r1, [sp, #8]
	ldrb r1, [r0, #7]
	add r2, r3, #0
	lsl r3, r1, #3
	add r1, sp, #8
	strh r3, [r1, #4]
	ldrb r3, [r0, #8]
	lsl r3, r3, #3
	strh r3, [r1, #6]
	ldrb r3, [r0, #4]
	ldr r1, [r0, #0]
	mov r0, #0x2c
	mul r0, r3
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	add r3, sp, #0x10
	cmp r0, #0
	bne _0201AEBA
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #0x10]
	add r0, sp, #8
	bl sub_0201A60C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0201AEBA:
	ldrh r0, [r3, #0x14]
	add r1, r4, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r3, [r3, #0x10]
	add r0, sp, #8
	bl sub_0201A6D0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0201AE78

	thumb_func_start sub_0201AED0
sub_0201AED0: ; 0x0201AED0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x118
	add r5, r0, #0
	ldr r0, [sp, #0x330]
	str r1, [sp]
	str r0, [sp, #0x330]
	add r1, sp, #0x318
	ldrh r1, [r1, #0x10]
	ldr r0, [r5, #0xc]
	str r1, [sp, #0x5c]
	ldrb r1, [r5, #7]
	str r0, [sp, #0x278]
	ldrb r0, [r5, #8]
	lsl r1, r1, #0x13
	lsr r4, r1, #0x10
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0x13
	sub r1, r4, r1
	lsr r0, r0, #0x10
	str r4, [sp, #0x58]
	str r1, [sp, #8]
	cmp r1, r2
	blt _0201AF02
	str r2, [sp, #8]
_0201AF02:
	add r1, sp, #0x318
	ldrh r1, [r1, #0x14]
	sub r0, r0, r1
	str r1, [sp, #0x48]
	str r0, [sp, #4]
	cmp r0, r3
	blt _0201AF12
	str r3, [sp, #4]
_0201AF12:
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #8
	ble _0201AF22
	mov r0, #1
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0201AF22:
	ldr r0, [sp, #4]
	cmp r0, #8
	ble _0201AF30
	mov r0, #2
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0201AF30:
	ldrh r0, [r5, #0xa]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _0201AF3C
	bl sub_0201B8B0
_0201AF3C:
	cmp r4, #3
	bls _0201AF44
	bl sub_0201C040
_0201AF44:
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201AF50: ; jump table
	.short _0201AF58 - _0201AF50 - 2 ; case 0
	.short _0201B05A - _0201AF50 - 2 ; case 1
	.short _0201B26A - _0201AF50 - 2 ; case 2
	.short _0201B48A - _0201AF50 - 2 ; case 3
_0201AF58:
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x70]
	mov r0, #0
	str r0, [sp, #0x274]
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _0201AF6E
	bl sub_0201C040
_0201AF6E:
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x6c]
_0201AF7A:
	ldr r0, [sp]
	ldr r1, [sp, #0x70]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x26c]
	ldr r0, [sp, #0x274]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x270]
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	ble _0201B02E
	ble _0201B02E
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x6c]
	lsl r5, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x68]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	ldr r5, [sp, #0x6c]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0x64]
	str r0, [sp, #0x60]
_0201AFCC:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B2EC ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x68]
	str r5, [sp, #0x27c]
	add r0, r5, r0
	ldr r5, [sp, #0x26c]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B020
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x280]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x284]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x284]
	and r6, r5
	ldr r5, [sp, #0x280]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x270]
	cmp r0, #0
	beq _0201B020
	ldr r6, [sp, #0x27c]
	ldr r0, [sp, #0x64]
	add r6, r6, r0
	ldr r0, [sp, #0x60]
	strb r5, [r0, r6]
_0201B020:
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201AFCC
_0201B02E:
	ldr r0, [sp, #0x270]
	cmp r0, #0
	beq _0201B03C
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B042
_0201B03C:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B042:
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x274]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x274]
	cmp r1, r0
	blt _0201AF7A
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
_0201B05A:
	ldr r0, [sp]
	str r0, [sp, #0x25c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x264]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x84]
	mov r0, #0
	str r0, [sp, #0x268]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201B156
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x80]
_0201B086:
	ldr r0, [sp, #0x25c]
	ldr r1, [sp, #0x84]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x258]
	ldr r0, [sp, #0x268]
	ldr r6, [sp, #0x80]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x260]
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x264]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x264]
	str r6, [sp, #0x7c]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	ldr r5, [sp, #0x80]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0x78]
	str r0, [sp, #0x74]
_0201B0D0:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B2EC ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x7c]
	str r5, [sp, #0x288]
	add r0, r5, r0
	ldr r5, [sp, #0x258]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B124
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x28c]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x290]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x290]
	and r6, r5
	ldr r5, [sp, #0x28c]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x260]
	cmp r0, #0
	beq _0201B124
	ldr r6, [sp, #0x288]
	ldr r0, [sp, #0x78]
	add r6, r6, r0
	ldr r0, [sp, #0x74]
	strb r5, [r0, r6]
_0201B124:
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, #8
	blt _0201B0D0
	ldr r0, [sp, #0x260]
	cmp r0, #0
	beq _0201B13E
	ldr r0, [sp, #0x264]
	add r0, r0, #2
	str r0, [sp, #0x264]
	b _0201B144
_0201B13E:
	ldr r0, [sp, #0x264]
	add r0, r0, #1
	str r0, [sp, #0x264]
_0201B144:
	ldr r0, [sp, #0x25c]
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r0, [sp, #0x268]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x268]
	cmp r1, r0
	blt _0201B086
_0201B156:
	ldr r0, [sp]
	add r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x54]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x98]
	mov r0, #0
	str r0, [sp, #0x254]
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _0201B172
	bl sub_0201C040
_0201B172:
	ldr r0, [sp, #0x5c]
	mov r1, #7
	add r0, #8
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x94]
_0201B184:
	ldr r0, [sp]
	ldr r1, [sp, #0x98]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x24c]
	ldr r0, [sp, #0x254]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x250]
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x294]
	sub r0, #8
	str r0, [sp, #0x294]
	cmp r0, #0
	ble _0201B23E
	ble _0201B23E
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x94]
	lsl r5, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x90]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	ldr r5, [sp, #0x94]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0x8c]
	str r0, [sp, #0x88]
_0201B1DC:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B2EC ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x90]
	str r5, [sp, #0x298]
	add r0, r5, r0
	ldr r5, [sp, #0x24c]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B230
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x29c]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2a0]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2a0]
	and r6, r5
	ldr r5, [sp, #0x29c]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x250]
	cmp r0, #0
	beq _0201B230
	ldr r6, [sp, #0x298]
	ldr r0, [sp, #0x8c]
	add r6, r6, r0
	ldr r0, [sp, #0x88]
	strb r5, [r0, r6]
_0201B230:
	ldr r0, [sp, #0x294]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B1DC
_0201B23E:
	ldr r0, [sp, #0x250]
	cmp r0, #0
	beq _0201B24C
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B252
_0201B24C:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B252:
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x254]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x254]
	cmp r1, r0
	blt _0201B184
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
_0201B26A:
	ldr r0, [sp]
	mov r1, #7
	str r0, [sp, #0x23c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x244]
	mov r0, #0
	str r0, [sp, #0x248]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x40]
_0201B28A:
	ldr r0, [sp, #0x23c]
	ldr r1, [sp, #0xa8]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x238]
	ldr r0, [sp, #0x248]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x240]
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	ble _0201B346
	ble _0201B346
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x244]
	ldr r6, [sp, #0x40]
	lsl r5, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x244]
	str r6, [sp, #0xa4]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B2EC ; =0x00003FE0
	ldr r5, [sp, #0x40]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xa0]
	str r0, [sp, #0x9c]
_0201B2DC:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B2EC ; =0x00003FE0
	b _0201B2F0
	nop
_0201B2EC: .word 0x00003FE0
_0201B2F0:
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xa4]
	str r5, [sp, #0x2a4]
	add r0, r5, r0
	ldr r5, [sp, #0x238]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B338
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2a8]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2ac]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2ac]
	and r6, r5
	ldr r5, [sp, #0x2a8]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x240]
	cmp r0, #0
	beq _0201B338
	ldr r6, [sp, #0x2a4]
	ldr r0, [sp, #0xa0]
	add r6, r6, r0
	ldr r0, [sp, #0x9c]
	strb r5, [r0, r6]
_0201B338:
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B2DC
_0201B346:
	ldr r0, [sp, #0x240]
	cmp r0, #0
	beq _0201B354
	ldr r0, [sp, #0x244]
	add r0, r0, #2
	str r0, [sp, #0x244]
	b _0201B35A
_0201B354:
	ldr r0, [sp, #0x244]
	add r0, r0, #1
	str r0, [sp, #0x244]
_0201B35A:
	ldr r0, [sp, #0x23c]
	add r0, r0, #4
	str r0, [sp, #0x23c]
	ldr r0, [sp, #0x248]
	add r0, r0, #1
	str r0, [sp, #0x248]
	cmp r0, #8
	blt _0201B28A
	ldr r0, [sp]
	mov r2, #0
	add r0, #0x40
	str r0, [sp]
	ldr r0, [sp, #0x48]
	mov r1, #1
	add r0, #8
	str r0, [sp, #0x48]
_0201B37A:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201B388
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B388:
	add r2, r2, #1
	cmp r2, #8
	blt _0201B37A
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xb8]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	bgt _0201B3A8
	bl sub_0201C040
_0201B3A8:
	ldr r0, [sp]
	ldr r1, [sp, #0xb8]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x230]
	ldr r0, [sp, #0x20]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x234]
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	ble _0201B45C
	ble _0201B45C
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x40]
	lsl r5, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0xb4]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	ldr r5, [sp, #0x40]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xb0]
	str r0, [sp, #0xac]
_0201B3FA:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B70C ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xb4]
	str r5, [sp, #0x2b0]
	add r0, r5, r0
	ldr r5, [sp, #0x230]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B44E
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2b4]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2b8]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2b8]
	and r6, r5
	ldr r5, [sp, #0x2b4]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x234]
	cmp r0, #0
	beq _0201B44E
	ldr r6, [sp, #0x2b0]
	ldr r0, [sp, #0xb0]
	add r6, r6, r0
	ldr r0, [sp, #0xac]
	strb r5, [r0, r6]
_0201B44E:
	ldr r0, [sp, #8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B3FA
_0201B45C:
	ldr r0, [sp, #0x234]
	cmp r0, #0
	beq _0201B46A
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B470
_0201B46A:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B470:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x20]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _0201B3A8
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
_0201B48A:
	ldr r0, [sp]
	str r0, [sp, #0x220]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x228]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0
	str r0, [sp, #0x22c]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x38]
_0201B4AE:
	ldr r0, [sp, #0x220]
	ldr r1, [sp, #0x3c]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x21c]
	ldr r0, [sp, #0x22c]
	ldr r6, [sp, #0x38]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x224]
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x228]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x228]
	str r6, [sp, #0xc4]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	str r3, [sp, #0x34]
	add r4, r1, #0
	str r5, [sp, #0xc0]
	str r0, [sp, #0xbc]
_0201B4FA:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B70C ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xc4]
	str r5, [sp, #0x2bc]
	add r0, r5, r0
	ldr r5, [sp, #0x21c]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B54E
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2c0]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2c4]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2c4]
	and r6, r5
	ldr r5, [sp, #0x2c0]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x224]
	cmp r0, #0
	beq _0201B54E
	ldr r6, [sp, #0x2bc]
	ldr r0, [sp, #0xc0]
	add r6, r6, r0
	ldr r0, [sp, #0xbc]
	strb r5, [r0, r6]
_0201B54E:
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, #8
	blt _0201B4FA
	ldr r0, [sp, #0x224]
	cmp r0, #0
	beq _0201B568
	ldr r0, [sp, #0x228]
	add r0, r0, #2
	str r0, [sp, #0x228]
	b _0201B56E
_0201B568:
	ldr r0, [sp, #0x228]
	add r0, r0, #1
	str r0, [sp, #0x228]
_0201B56E:
	ldr r0, [sp, #0x220]
	add r0, r0, #4
	str r0, [sp, #0x220]
	ldr r0, [sp, #0x22c]
	add r0, r0, #1
	str r0, [sp, #0x22c]
	cmp r0, #8
	blt _0201B4AE
	ldr r0, [sp]
	str r0, [sp, #0x20c]
	add r0, #0x20
	str r0, [sp, #0x20c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x214]
	mov r0, #0
	str r0, [sp, #0x218]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xd4]
	add r0, #8
	str r0, [sp, #0xd4]
_0201B596:
	ldr r0, [sp, #0x20c]
	ldr r1, [sp, #0x3c]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0xd4]
	str r0, [sp, #0x208]
	ldr r0, [sp, #0x218]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x210]
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x2c8]
	sub r0, #8
	str r0, [sp, #0x2c8]
	cmp r0, #0
	ble _0201B650
	ble _0201B650
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x214]
	ldr r6, [sp, #0x38]
	lsl r5, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x214]
	str r6, [sp, #0xd0]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xcc]
	str r0, [sp, #0xc8]
_0201B5EE:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B70C ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xd0]
	str r5, [sp, #0x2cc]
	add r0, r5, r0
	ldr r5, [sp, #0x208]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B642
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2d0]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2d4]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2d4]
	and r6, r5
	ldr r5, [sp, #0x2d0]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x210]
	cmp r0, #0
	beq _0201B642
	ldr r6, [sp, #0x2cc]
	ldr r0, [sp, #0xcc]
	add r6, r6, r0
	ldr r0, [sp, #0xc8]
	strb r5, [r0, r6]
_0201B642:
	ldr r0, [sp, #0x2c8]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B5EE
_0201B650:
	ldr r0, [sp, #0x210]
	cmp r0, #0
	beq _0201B65E
	ldr r0, [sp, #0x214]
	add r0, r0, #2
	str r0, [sp, #0x214]
	b _0201B664
_0201B65E:
	ldr r0, [sp, #0x214]
	add r0, r0, #1
	str r0, [sp, #0x214]
_0201B664:
	ldr r0, [sp, #0x20c]
	add r0, r0, #4
	str r0, [sp, #0x20c]
	ldr r0, [sp, #0x218]
	add r0, r0, #1
	str r0, [sp, #0x218]
	cmp r0, #8
	blt _0201B596
	ldr r0, [sp]
	mov r2, #0
	str r0, [sp, #0x1fc]
	add r0, #0x40
	str r0, [sp, #0x1fc]
	ldr r0, [sp, #0x48]
	mov r1, #1
	add r0, #8
	str r0, [sp, #0x48]
	str r0, [sp, #0x204]
_0201B688:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201B696
	ldr r0, [sp, #0x204]
	add r0, r0, #1
	str r0, [sp, #0x204]
_0201B696:
	add r2, r2, #1
	cmp r2, #8
	blt _0201B688
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	str r0, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xe4]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201B78C
_0201B6B4:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0xe4]
	ldr r0, [r0, #0]
	ldr r6, [sp, #0x38]
	str r0, [sp, #0x1f8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x5c]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x200]
	ldr r0, [sp, #0x204]
	mov r1, #0
	lsl r5, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x204]
	str r6, [sp, #0xe0]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201B70C ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	ldr r3, [sp, #0x34]
	add r4, r1, #0
	str r5, [sp, #0xdc]
	str r0, [sp, #0xd8]
_0201B6FC:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201B70C ; =0x00003FE0
	b _0201B710
	nop
_0201B70C: .word 0x00003FE0
_0201B710:
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xe0]
	str r5, [sp, #0x2d8]
	add r0, r5, r0
	ldr r5, [sp, #0x1f8]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B758
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2dc]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2e0]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2e0]
	and r6, r5
	ldr r5, [sp, #0x2dc]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x200]
	cmp r0, #0
	beq _0201B758
	ldr r6, [sp, #0x2d8]
	ldr r0, [sp, #0xdc]
	add r6, r6, r0
	ldr r0, [sp, #0xd8]
	strb r5, [r0, r6]
_0201B758:
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, #8
	blt _0201B6FC
	ldr r0, [sp, #0x200]
	cmp r0, #0
	beq _0201B772
	ldr r0, [sp, #0x204]
	add r0, r0, #2
	str r0, [sp, #0x204]
	b _0201B778
_0201B772:
	ldr r0, [sp, #0x204]
	add r0, r0, #1
	str r0, [sp, #0x204]
_0201B778:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #0x1fc]
	ldr r0, [sp, #0x1c]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r1
	blt _0201B6B4
_0201B78C:
	ldr r0, [sp]
	mov r2, #0
	add r0, #0x60
	str r0, [sp]
	mov r1, #1
_0201B796:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201B7A4
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B7A4:
	add r2, r2, #1
	cmp r2, #8
	blt _0201B796
	ldr r0, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xf4]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	bgt _0201B7C2
	bl sub_0201C040
_0201B7C2:
	ldr r0, [sp, #0x5c]
	add r0, #8
	str r0, [sp, #0x5c]
_0201B7C8:
	ldr r0, [sp]
	ldr r1, [sp, #0xf4]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x1f0]
	ldr r0, [sp, #0x18]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1f4]
	ldr r0, [sp, #8]
	mov r1, #0
	str r0, [sp, #0x2e4]
	sub r0, #8
	str r0, [sp, #0x2e4]
	cmp r0, #0
	ble _0201B882
	ble _0201B882
	add r0, r2, #0
	lsl r3, r0, #2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x38]
	lsl r5, r0, #2
	ldr r0, _0201BAF4 ; =0x00003FE0
	add r7, r5, #0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0xf0]
	add r0, r0, #1
	lsl r6, r0, #2
	ldr r0, _0201BAF4 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0
	str r5, [sp, #0xec]
	str r0, [sp, #0xe8]
_0201B820:
	asr r5, r2, #1
	mov r0, #3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201BAF4 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xf0]
	str r5, [sp, #0x2e8]
	add r0, r5, r0
	ldr r5, [sp, #0x1f0]
	add r6, r5, #0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201B874
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2ec]
	ldrb r5, [r0, r7]
	mov ip, r5
	mov r5, #0xf0
	asr r5, r6
	mov r6, ip
	and r6, r5
	ldr r5, [sp, #0x2ec]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x1f4]
	cmp r0, #0
	beq _0201B874
	ldr r6, [sp, #0x2e8]
	ldr r0, [sp, #0xec]
	add r6, r6, r0
	ldr r0, [sp, #0xe8]
	strb r5, [r0, r6]
_0201B874:
	ldr r0, [sp, #0x2e4]
	add r1, r1, #1
	add r4, r4, #4
	add r3, r3, #4
	add r2, r2, #1
	cmp r1, r0
	blt _0201B820
_0201B882:
	ldr r0, [sp, #0x1f4]
	cmp r0, #0
	beq _0201B890
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B896
_0201B890:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B896:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x18]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _0201B7C8
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0201AED0

	thumb_func_start sub_0201B8B0
sub_0201B8B0: ; 0x0201B8B0
	lsl r1, r2, #2
	mul r1, r3
	ldr r3, [r5, #0]
	ldrb r2, [r5, #9]
	ldr r0, [sp]
	ldr r3, [r3, #0]
	lsl r1, r1, #3
	bl sub_02019FC0
	str r0, [sp, #0x1ec]
	cmp r4, #3
	bhi _0201B9A2
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201B8D4: ; jump table
	.short _0201B8DC - _0201B8D4 - 2 ; case 0
	.short _0201B9A4 - _0201B8D4 - 2 ; case 1
	.short _0201BB50 - _0201B8D4 - 2 ; case 2
	.short _0201BCF4 - _0201B8D4 - 2 ; case 3
_0201B8DC:
	ldr r0, [sp, #0x330]
	ldr r7, [sp, #0x1ec]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10c]
	mov r0, #0
	str r0, [sp, #0x1e8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201B9A2
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x108]
_0201B8FC:
	ldr r1, [sp, #0x10c]
	ldr r0, [sp, #0x1e8]
	mov r4, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x310]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0
	ble _0201B980
	ble _0201B980
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x108]
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x100]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x104]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	ldr r2, [sp, #0x108]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0xfc]
	str r0, [sp, #0xf8]
_0201B948:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BAF8 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x104]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201B974
	ldr r0, [sp, #0x100]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x310]
	cmp r0, #0
	beq _0201B974
	ldr r0, [sp, #0xfc]
	add r2, r3, r0
	ldr r0, [sp, #0xf8]
	strb r1, [r0, r2]
_0201B974:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r0
	blt _0201B948
_0201B980:
	ldr r0, [sp, #0x310]
	cmp r0, #0
	beq _0201B98E
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201B994
_0201B98E:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201B994:
	ldr r0, [sp, #0x1e8]
	add r7, #8
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1e8]
	cmp r1, r0
	blt _0201B8FC
_0201B9A2:
	b _0201C03A
_0201B9A4:
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	str r0, [sp, #0x1e0]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x124]
	mov r0, #0
	str r0, [sp, #0x1e4]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201BA6A
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x120]
_0201B9CE:
	ldr r1, [sp, #0x124]
	ldr r0, [sp, #0x1e4]
	ldr r5, [sp, #0x5c]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x30c]
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1e0]
	ldr r2, [sp, #0x120]
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x118]
	ldr r0, [sp, #0x1e0]
	str r2, [sp, #0x11c]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	ldr r2, [sp, #0x120]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	mov r4, #0
	str r2, [sp, #0x114]
	str r0, [sp, #0x110]
_0201BA12:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BAF8 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x11c]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BA3E
	ldr r0, [sp, #0x118]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x30c]
	cmp r0, #0
	beq _0201BA3E
	ldr r0, [sp, #0x114]
	add r2, r3, r0
	ldr r0, [sp, #0x110]
	strb r1, [r0, r2]
_0201BA3E:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, #8
	blt _0201BA12
	ldr r0, [sp, #0x30c]
	cmp r0, #0
	beq _0201BA56
	ldr r0, [sp, #0x1e0]
	add r0, r0, #2
	str r0, [sp, #0x1e0]
	b _0201BA5C
_0201BA56:
	ldr r0, [sp, #0x1e0]
	add r0, r0, #1
	str r0, [sp, #0x1e0]
_0201BA5C:
	ldr r0, [sp, #0x1e4]
	add r7, #8
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1e4]
	cmp r1, r0
	blt _0201B9CE
_0201BA6A:
	ldr r0, [sp, #0x1ec]
	str r0, [sp, #0x308]
	add r0, #0x40
	str r0, [sp, #0x308]
	ldr r0, [sp, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x13c]
	mov r0, #0
	str r0, [sp, #0x1dc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0201BB4E
	ldr r0, [sp, #0x5c]
	mov r1, #7
	add r0, #8
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x138]
_0201BA96:
	ldr r1, [sp, #0x13c]
	ldr r0, [sp, #0x1dc]
	ldr r7, [sp, #8]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #8
	mov r4, #0
	str r0, [sp, #0x1d8]
	ldr r5, [sp, #0x5c]
	cmp r7, #0
	ble _0201BB28
	ble _0201BB28
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x138]
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x130]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x134]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BAF8 ; =0x00007FC0
	ldr r2, [sp, #0x138]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x12c]
	str r0, [sp, #0x128]
_0201BAE4:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BAF8 ; =0x00007FC0
	b _0201BAFC
	nop
_0201BAF4: .word 0x00003FE0
_0201BAF8: .word 0x00007FC0
_0201BAFC:
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x134]
	add r2, r3, r0
	ldr r0, [sp, #0x308]
	ldrb r1, [r0, r4]
	cmp r1, #0
	beq _0201BB1E
	ldr r0, [sp, #0x130]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1d8]
	cmp r0, #0
	beq _0201BB1E
	ldr r0, [sp, #0x12c]
	add r2, r3, r0
	ldr r0, [sp, #0x128]
	strb r1, [r0, r2]
_0201BB1E:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r7
	blt _0201BAE4
_0201BB28:
	ldr r0, [sp, #0x1d8]
	cmp r0, #0
	beq _0201BB36
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201BB3C
_0201BB36:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201BB3C:
	ldr r0, [sp, #0x308]
	add r0, #8
	str r0, [sp, #0x308]
	ldr r0, [sp, #0x1dc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x1dc]
	cmp r1, r0
	blt _0201BA96
_0201BB4E:
	b _0201C03A
_0201BB50:
	ldr r0, [sp, #0x48]
	mov r1, #7
	str r0, [sp, #0x1d0]
	mov r0, #0
	str r0, [sp, #0x1d4]
	ldr r0, [sp, #0x330]
	ldr r7, [sp, #0x1ec]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x150]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x30]
_0201BB6E:
	ldr r1, [sp, #0x150]
	ldr r0, [sp, #0x1d4]
	mov r4, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x304]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0
	ble _0201BBF2
	ble _0201BBF2
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1d0]
	ldr r2, [sp, #0x30]
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x148]
	ldr r0, [sp, #0x1d0]
	str r2, [sp, #0x14c]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	ldr r2, [sp, #0x30]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x144]
	str r0, [sp, #0x140]
_0201BBBA:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BE60 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x14c]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BBE6
	ldr r0, [sp, #0x148]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x304]
	cmp r0, #0
	beq _0201BBE6
	ldr r0, [sp, #0x144]
	add r2, r3, r0
	ldr r0, [sp, #0x140]
	strb r1, [r0, r2]
_0201BBE6:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r0
	blt _0201BBBA
_0201BBF2:
	ldr r0, [sp, #0x304]
	cmp r0, #0
	beq _0201BC00
	ldr r0, [sp, #0x1d0]
	add r0, r0, #2
	str r0, [sp, #0x1d0]
	b _0201BC06
_0201BC00:
	ldr r0, [sp, #0x1d0]
	add r0, r0, #1
	str r0, [sp, #0x1d0]
_0201BC06:
	ldr r0, [sp, #0x1d4]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #0x1d4]
	cmp r0, #8
	blt _0201BB6E
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	add r0, #8
	str r0, [sp, #0x48]
	add r7, #0x80
	mov r0, #0
	mov r2, #1
_0201BC20:
	ldr r1, [sp, #0x330]
	asr r1, r0
	tst r1, r2
	beq _0201BC2E
	ldr r1, [sp, #0x48]
	add r1, r1, #1
	str r1, [sp, #0x48]
_0201BC2E:
	add r0, r0, #1
	cmp r0, #8
	blt _0201BC20
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x164]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201BCF2
_0201BC4A:
	ldr r1, [sp, #0x164]
	ldr r0, [sp, #0x14]
	mov r4, #0
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x300]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0
	ble _0201BCCE
	ble _0201BCCE
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x30]
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x15c]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x160]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	ldr r2, [sp, #0x30]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x158]
	str r0, [sp, #0x154]
_0201BC96:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BE60 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x160]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BCC2
	ldr r0, [sp, #0x15c]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x300]
	cmp r0, #0
	beq _0201BCC2
	ldr r0, [sp, #0x158]
	add r2, r3, r0
	ldr r0, [sp, #0x154]
	strb r1, [r0, r2]
_0201BCC2:
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r0
	blt _0201BC96
_0201BCCE:
	ldr r0, [sp, #0x300]
	cmp r0, #0
	beq _0201BCDC
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201BCE2
_0201BCDC:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201BCE2:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	add r0, r0, #1
	sub r1, #8
	add r7, #8
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0201BC4A
_0201BCF2:
	b _0201C03A
_0201BCF4:
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	str r0, [sp, #0x1c8]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0
	str r0, [sp, #0x1cc]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x58]
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x28]
_0201BD16:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1cc]
	ldr r5, [sp, #0x5c]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2fc]
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1c8]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x170]
	ldr r0, [sp, #0x1c8]
	str r2, [sp, #0x174]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	mov r4, #0
	str r6, [sp, #0x24]
	str r2, [sp, #0x16c]
	str r0, [sp, #0x168]
_0201BD5C:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BE60 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x174]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BD88
	ldr r0, [sp, #0x170]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x2fc]
	cmp r0, #0
	beq _0201BD88
	ldr r0, [sp, #0x16c]
	add r2, r3, r0
	ldr r0, [sp, #0x168]
	strb r1, [r0, r2]
_0201BD88:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, #8
	blt _0201BD5C
	ldr r0, [sp, #0x2fc]
	cmp r0, #0
	beq _0201BDA0
	ldr r0, [sp, #0x1c8]
	add r0, r0, #2
	str r0, [sp, #0x1c8]
	b _0201BDA6
_0201BDA0:
	ldr r0, [sp, #0x1c8]
	add r0, r0, #1
	str r0, [sp, #0x1c8]
_0201BDA6:
	ldr r0, [sp, #0x1cc]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #0x1cc]
	cmp r0, #8
	blt _0201BD16
	ldr r0, [sp, #0x1ec]
	str r0, [sp, #0x2f8]
	add r0, #0x40
	str r0, [sp, #0x2f8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x1c0]
	mov r0, #0
	str r0, [sp, #0x1c4]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x188]
	add r0, #8
	str r0, [sp, #0x188]
_0201BDCA:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c4]
	ldr r7, [sp, #8]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #8
	mov r4, #0
	str r0, [sp, #0x1bc]
	ldr r5, [sp, #0x188]
	cmp r7, #0
	ble _0201BE50
	ble _0201BE50
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x1c0]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x180]
	ldr r0, [sp, #0x1c0]
	str r2, [sp, #0x184]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201BE60 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x17c]
	str r0, [sp, #0x178]
_0201BE18:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201BE60 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x184]
	add r2, r3, r0
	ldr r0, [sp, #0x2f8]
	ldrb r1, [r0, r4]
	cmp r1, #0
	beq _0201BE46
	ldr r0, [sp, #0x180]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1bc]
	cmp r0, #0
	beq _0201BE46
	ldr r0, [sp, #0x17c]
	add r2, r3, r0
	ldr r0, [sp, #0x178]
	strb r1, [r0, r2]
_0201BE46:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r7
	blt _0201BE18
_0201BE50:
	ldr r0, [sp, #0x1bc]
	cmp r0, #0
	beq _0201BE64
	ldr r0, [sp, #0x1c0]
	add r0, r0, #2
	str r0, [sp, #0x1c0]
	b _0201BE6A
	nop
_0201BE60: .word 0x00007FC0
_0201BE64:
	ldr r0, [sp, #0x1c0]
	add r0, r0, #1
	str r0, [sp, #0x1c0]
_0201BE6A:
	ldr r0, [sp, #0x2f8]
	add r0, #8
	str r0, [sp, #0x2f8]
	ldr r0, [sp, #0x1c4]
	add r0, r0, #1
	str r0, [sp, #0x1c4]
	cmp r0, #8
	blt _0201BDCA
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	add r0, #8
	add r7, #0x80
	str r0, [sp, #0x48]
	str r0, [sp, #0x1b8]
	mov r0, #0
	mov r2, #1
_0201BE8A:
	ldr r1, [sp, #0x330]
	asr r1, r0
	tst r1, r2
	beq _0201BE98
	ldr r1, [sp, #0x1b8]
	add r1, r1, #1
	str r1, [sp, #0x1b8]
_0201BE98:
	add r0, r0, #1
	cmp r0, #8
	blt _0201BE8A
	ldr r0, [sp, #0x330]
	asr r0, r0, #8
	str r0, [sp, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x19c]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201BF52
_0201BEB6:
	ldr r1, [sp, #0x19c]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x28]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2f4]
	ldr r0, [sp, #0x1b8]
	mov r3, #0x38
	lsl r1, r0, #3
	ldr r0, _0201C048 ; =0x00007FC0
	ldr r5, [sp, #0x5c]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x194]
	ldr r0, [sp, #0x1b8]
	str r2, [sp, #0x198]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201C048 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	ldr r6, [sp, #0x24]
	mov r4, #0
	str r2, [sp, #0x190]
	str r0, [sp, #0x18c]
_0201BEF8:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201C048 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x198]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0
	beq _0201BF24
	ldr r0, [sp, #0x194]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x2f4]
	cmp r0, #0
	beq _0201BF24
	ldr r0, [sp, #0x190]
	add r2, r3, r0
	ldr r0, [sp, #0x18c]
	strb r1, [r0, r2]
_0201BF24:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, #8
	blt _0201BEF8
	ldr r0, [sp, #0x2f4]
	cmp r0, #0
	beq _0201BF3C
	ldr r0, [sp, #0x1b8]
	add r0, r0, #2
	str r0, [sp, #0x1b8]
	b _0201BF42
_0201BF3C:
	ldr r0, [sp, #0x1b8]
	add r0, r0, #1
	str r0, [sp, #0x1b8]
_0201BF42:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r0, #1
	sub r1, #8
	add r7, #8
	str r0, [sp, #0x10]
	cmp r0, r1
	blt _0201BEB6
_0201BF52:
	ldr r0, [sp, #0x1ec]
	mov r2, #0
	str r0, [sp, #0x2f0]
	add r0, #0xc0
	str r0, [sp, #0x2f0]
	mov r1, #1
_0201BF5E:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201BF6C
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201BF6C:
	add r2, r2, #1
	cmp r2, #8
	blt _0201BF5E
	ldr r0, [sp, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1b0]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	sub r0, #8
	cmp r0, #0
	ble _0201C03A
	ldr r0, [sp, #0x5c]
	add r0, #8
	str r0, [sp, #0x5c]
_0201BF8C:
	ldr r1, [sp, #0x1b0]
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #8]
	asr r1, r0
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #8
	mov r4, #0
	str r0, [sp, #0x1b4]
	ldr r5, [sp, #0x5c]
	cmp r7, #0
	ble _0201C012
	ble _0201C012
	add r0, r5, #0
	lsl r6, r0, #3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #3
	ldr r0, _0201C048 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r0, [sp, #0x1a8]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x1ac]
	add r0, r0, #1
	lsl r1, r0, #3
	ldr r0, _0201C048 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0
	and r0, r3
	str r2, [sp, #0x1a4]
	str r0, [sp, #0x1a0]
_0201BFDA:
	mov r0, #7
	add r1, r5, #0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201C048 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x1ac]
	add r2, r3, r0
	ldr r0, [sp, #0x2f0]
	ldrb r1, [r0, r4]
	cmp r1, #0
	beq _0201C008
	ldr r0, [sp, #0x1a8]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1b4]
	cmp r0, #0
	beq _0201C008
	ldr r0, [sp, #0x1a4]
	add r2, r3, r0
	ldr r0, [sp, #0x1a0]
	strb r1, [r0, r2]
_0201C008:
	add r4, r4, #1
	add r6, #8
	add r5, r5, #1
	cmp r4, r7
	blt _0201BFDA
_0201C012:
	ldr r0, [sp, #0x1b4]
	cmp r0, #0
	beq _0201C020
	ldr r0, [sp, #0x48]
	add r0, r0, #2
	str r0, [sp, #0x48]
	b _0201C026
_0201C020:
	ldr r0, [sp, #0x48]
	add r0, r0, #1
	str r0, [sp, #0x48]
_0201C026:
	ldr r0, [sp, #0x2f0]
	ldr r1, [sp, #4]
	add r0, #8
	str r0, [sp, #0x2f0]
	ldr r0, [sp, #0xc]
	sub r1, #8
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	blt _0201BF8C
_0201C03A:
	ldr r0, [sp, #0x1ec]
	bl sub_020181C4
	thumb_func_end sub_0201B8B0

	thumb_func_start sub_0201C040
sub_0201C040: ; 0x0201C040
	add sp, #0x1fc
	add sp, #0x118
	pop {r4, r5, r6, r7, pc}
	nop
_0201C048: .word 0x00007FC0
	thumb_func_end sub_0201C040

	thumb_func_start sub_0201C04C
sub_0201C04C: ; 0x0201C04C
	push {r4, r5, r6, lr}
	ldrb r6, [r0, #4]
	mov r5, #0x2c
	ldr r4, [r0, #0]
	mul r5, r6
	add r4, r4, r5
	ldrb r4, [r4, #0x1e]
	cmp r4, #0
	bne _0201C064
	bl sub_0201C06C
	pop {r4, r5, r6, pc}
_0201C064:
	bl sub_0201C158
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201C04C

	thumb_func_start sub_0201C06C
sub_0201C06C: ; 0x0201C06C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r3, #0
	add r4, r0, #0
	add r0, r1, #0
	lsl r3, r6, #0x18
	lsl r1, r6, #0x10
	str r2, [sp]
	orr r1, r3
	lsl r5, r6, #8
	orr r1, r5
	orr r1, r6
	str r1, [sp, #4]
	ldrb r1, [r4, #7]
	ldrb r3, [r4, #8]
	ldr r2, [r4, #0xc]
	str r1, [sp, #8]
	mul r1, r3
	lsl r1, r1, #5
	str r1, [sp, #0xc]
	cmp r0, #3
	bhi _0201C152
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201C0A4: ; jump table
	.short _0201C0AC - _0201C0A4 - 2 ; case 0
	.short _0201C0FA - _0201C0A4 - 2 ; case 1
	.short _0201C152 - _0201C0A4 - 2 ; case 2
	.short _0201C152 - _0201C0A4 - 2 ; case 3
_0201C0AC:
	add r0, r1, #0
	mov r7, #0
	cmp r0, #0
	ble _0201C152
	mov r0, #7
	mov lr, r0
_0201C0B8:
	ldr r3, [sp]
	mov r4, #0
	add r5, r7, #0
_0201C0BE:
	mov r0, #7
	add r6, r3, #0
	and r6, r0
	add r1, r3, #0
	mov r0, lr
	bic r1, r0
	ldr r0, [sp, #8]
	mul r1, r0
	add r0, r6, #0
	orr r0, r1
	lsl r0, r0, #2
	add r1, r7, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0201C0E0
	ldr r0, [r2, r1]
	b _0201C0E2
_0201C0E0:
	ldr r0, [sp, #4]
_0201C0E2:
	add r4, r4, #1
	str r0, [r2, r5]
	add r3, r3, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0201C0BE
	ldr r0, [sp, #0xc]
	add r7, #0x20
	cmp r7, r0
	blt _0201C0B8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0201C0FA:
	add r0, r1, #0
	sub r0, r0, #4
	add r2, r2, r0
	add r0, r1, #0
	mov r7, #0
	cmp r0, #0
	ble _0201C152
	mov r0, #7
	mov ip, r0
_0201C10C:
	ldr r4, [sp]
	mov r5, #0
	add r3, r7, #0
_0201C112:
	mov r0, #7
	add r6, r4, #0
	and r6, r0
	add r1, r4, #0
	mov r0, ip
	bic r1, r0
	ldr r0, [sp, #8]
	mul r1, r0
	add r0, r6, #0
	orr r0, r1
	lsl r0, r0, #2
	add r1, r7, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0201C13A
	sub r0, r2, r1
	ldr r1, [r0, #0]
	sub r0, r2, r3
	str r1, [r0, #0]
	b _0201C140
_0201C13A:
	ldr r0, [sp, #4]
	sub r1, r2, r3
	str r0, [r1, #0]
_0201C140:
	add r5, r5, #1
	add r4, r4, #1
	add r3, r3, #4
	cmp r5, #8
	blt _0201C112
	ldr r0, [sp, #0xc]
	add r7, #0x20
	cmp r7, r0
	blt _0201C10C
_0201C152:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201C06C

	thumb_func_start sub_0201C158
sub_0201C158: ; 0x0201C158
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r3, #0
	add r4, r0, #0
	str r2, [sp]
	lsl r2, r6, #0x18
	lsl r0, r6, #0x10
	orr r0, r2
	ldrb r2, [r4, #7]
	ldr r3, [r4, #0xc]
	lsl r5, r6, #8
	orr r0, r5
	ldrb r4, [r4, #8]
	str r2, [sp, #0x10]
	orr r0, r6
	mul r2, r4
	lsl r2, r2, #6
	str r2, [sp, #0x1c]
	cmp r1, #3
	bls _0201C182
	b _0201C288
_0201C182:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201C18E: ; jump table
	.short _0201C196 - _0201C18E - 2 ; case 0
	.short _0201C204 - _0201C18E - 2 ; case 1
	.short _0201C288 - _0201C18E - 2 ; case 2
	.short _0201C288 - _0201C18E - 2 ; case 3
_0201C196:
	mov r1, #0
	str r1, [sp, #0xc]
	add r1, r2, #0
	cmp r1, #0
	ble _0201C288
	add r1, r1, #4
	str r1, [sp, #0x14]
	mov r1, #7
	mov lr, r1
_0201C1A8:
	ldr r4, [sp]
	ldr r5, [sp, #0xc]
	mov r7, #0
_0201C1AE:
	mov r1, #7
	add r6, r4, #0
	and r6, r1
	add r2, r4, #0
	mov r1, lr
	bic r2, r1
	ldr r1, [sp, #0x10]
	mul r2, r1
	add r1, r6, #0
	orr r1, r2
	lsl r2, r1, #3
	ldr r1, [sp, #0xc]
	add r1, r1, r2
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	bge _0201C1D4
	ldr r2, [r3, r1]
	str r2, [r3, r5]
	b _0201C1D6
_0201C1D4:
	str r0, [r3, r5]
_0201C1D6:
	add r2, r1, #4
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bge _0201C1E6
	ldr r2, [r3, r2]
	add r1, r5, #4
	str r2, [r3, r1]
	b _0201C1EA
_0201C1E6:
	add r1, r5, #4
	str r0, [r3, r1]
_0201C1EA:
	add r7, r7, #1
	add r4, r4, #1
	add r5, #8
	cmp r7, #8
	blt _0201C1AE
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r2, #0x40
	str r2, [sp, #0xc]
	cmp r2, r1
	blt _0201C1A8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0201C204:
	add r1, r2, #0
	sub r1, #8
	add r3, r3, r1
	mov r1, #0
	str r1, [sp, #8]
	add r1, r2, #0
	cmp r1, #0
	ble _0201C288
_0201C214:
	mov r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	ldr r5, [sp]
	sub r1, r1, #4
	str r1, [sp, #0x18]
	mov r1, #7
	ldr r4, [sp, #8]
	mov ip, r1
_0201C226:
	mov r1, #7
	add r6, r5, #0
	and r6, r1
	add r2, r5, #0
	mov r1, ip
	bic r2, r1
	ldr r1, [sp, #0x10]
	mul r2, r1
	add r1, r6, #0
	orr r1, r2
	lsl r2, r1, #3
	ldr r1, [sp, #8]
	add r6, r1, r2
	ldr r1, [sp, #0x1c]
	cmp r6, r1
	bge _0201C250
	sub r1, r3, r6
	ldr r2, [r1, #0]
	sub r1, r3, r4
	str r2, [r1, #0]
	b _0201C254
_0201C250:
	sub r1, r3, r4
	str r0, [r1, #0]
_0201C254:
	ldr r1, [sp, #0x18]
	sub r2, r6, #4
	cmp r2, r1
	bge _0201C268
	sub r1, r3, r2
	sub r2, r4, #4
	ldr r1, [r1, #0]
	sub r2, r3, r2
	str r1, [r2, #0]
	b _0201C26E
_0201C268:
	sub r1, r4, #4
	sub r1, r3, r1
	str r0, [r1, #0]
_0201C26E:
	ldr r1, [sp, #4]
	add r5, r5, #1
	add r1, r1, #1
	add r4, #8
	str r1, [sp, #4]
	cmp r1, #8
	blt _0201C226
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x1c]
	add r2, #0x40
	str r2, [sp, #8]
	cmp r2, r1
	blt _0201C214
_0201C288:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201C158

	thumb_func_start sub_0201C28C
sub_0201C28C: ; 0x0201C28C
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0201C28C

	thumb_func_start sub_0201C290
sub_0201C290: ; 0x0201C290
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_0201C290

	thumb_func_start sub_0201C294
sub_0201C294: ; 0x0201C294
	ldrb r0, [r0, #7]
	bx lr
	thumb_func_end sub_0201C294

	thumb_func_start sub_0201C298
sub_0201C298: ; 0x0201C298
	ldrb r0, [r0, #8]
	bx lr
	thumb_func_end sub_0201C298

	thumb_func_start sub_0201C29C
sub_0201C29C: ; 0x0201C29C
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_0201C29C

	thumb_func_start sub_0201C2A0
sub_0201C2A0: ; 0x0201C2A0
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end sub_0201C2A0

	thumb_func_start sub_0201C2A4
sub_0201C2A4: ; 0x0201C2A4
	ldrh r0, [r0, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	bx lr
	thumb_func_end sub_0201C2A4

	thumb_func_start sub_0201C2AC
sub_0201C2AC: ; 0x0201C2AC
	strb r1, [r0, #5]
	bx lr
	thumb_func_end sub_0201C2AC

	thumb_func_start sub_0201C2B0
sub_0201C2B0: ; 0x0201C2B0
	strb r1, [r0, #6]
	bx lr
	thumb_func_end sub_0201C2B0

	thumb_func_start sub_0201C2B4
sub_0201C2B4: ; 0x0201C2B4
	strb r1, [r0, #9]
	bx lr
	thumb_func_end sub_0201C2B4

	thumb_func_start sub_0201C2B8
sub_0201C2B8: ; 0x0201C2B8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201C3D0
	add r0, r4, #0
	bl sub_0201C2D0
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201C2B8

	thumb_func_start sub_0201C2D0
sub_0201C2D0: ; 0x0201C2D0
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #6]
	mov r0, #1
	tst r0, r1
	beq _0201C2EA
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r3, [r4, #0xc]
	mov r0, #0
	lsl r2, r2, #1
	bl sub_020194E0
_0201C2EA:
	ldrh r1, [r4, #6]
	mov r0, #2
	tst r0, r1
	beq _0201C300
	ldr r2, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	ldr r3, [r4, #0x38]
	mov r0, #1
	lsl r2, r2, #1
	bl sub_020194E0
_0201C300:
	ldrh r1, [r4, #6]
	mov r0, #4
	tst r0, r1
	beq _0201C316
	ldr r2, [r4, #0x68]
	ldr r1, [r4, #0x60]
	ldr r3, [r4, #0x64]
	mov r0, #2
	lsl r2, r2, #1
	bl sub_020194E0
_0201C316:
	ldrh r1, [r4, #6]
	mov r0, #8
	tst r0, r1
	beq _0201C338
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0x94
	add r3, r4, #0
	add r1, #0x8c
	ldr r2, [r2, #0]
	add r3, #0x90
	ldr r1, [r1, #0]
	ldr r3, [r3, #0]
	mov r0, #3
	lsl r2, r2, #1
	bl sub_020194E0
_0201C338:
	ldrh r1, [r4, #6]
	mov r0, #0x10
	tst r0, r1
	beq _0201C35A
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0xc0
	add r3, r4, #0
	add r1, #0xb8
	ldr r2, [r2, #0]
	add r3, #0xbc
	ldr r1, [r1, #0]
	ldr r3, [r3, #0]
	mov r0, #4
	lsl r2, r2, #1
	bl sub_020194E0
_0201C35A:
	ldrh r1, [r4, #6]
	mov r0, #0x20
	tst r0, r1
	beq _0201C37C
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0xec
	add r3, r4, #0
	add r1, #0xe4
	ldr r2, [r2, #0]
	add r3, #0xe8
	ldr r1, [r1, #0]
	ldr r3, [r3, #0]
	mov r0, #5
	lsl r2, r2, #1
	bl sub_020194E0
_0201C37C:
	ldrh r0, [r4, #6]
	mov r3, #0x40
	tst r0, r3
	beq _0201C39C
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0xd8
	add r1, #0xd0
	ldr r2, [r4, r2]
	add r3, #0xd4
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #6
	lsl r2, r2, #1
	bl sub_020194E0
_0201C39C:
	ldrh r0, [r4, #6]
	mov r3, #0x80
	tst r0, r3
	beq _0201C3BC
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0xc4
	add r1, #0xbc
	ldr r2, [r4, r2]
	add r3, #0xc0
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #7
	lsl r2, r2, #1
	bl sub_020194E0
_0201C3BC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0201C2D0

	thumb_func_start sub_0201C3C0
sub_0201C3C0: ; 0x0201C3C0
	ldrh r3, [r0, #6]
	mov r2, #1
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strh r1, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201C3C0

	thumb_func_start sub_0201C3D0
sub_0201C3D0: ; 0x0201C3D0
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #1
	tst r0, r1
	beq _0201C3F6
	ldr r1, [r4, #0x14]
	ldr r0, _0201C608 ; =0x000001FF
	add r2, r1, #0
	ldr r1, [r4, #0x18]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201C60C ; =0x04000010
	str r1, [r0, #0]
_0201C3F6:
	ldrh r1, [r4, #4]
	mov r0, #2
	tst r0, r1
	beq _0201C416
	ldr r1, [r4, #0x40]
	ldr r0, _0201C608 ; =0x000001FF
	add r2, r1, #0
	ldr r1, [r4, #0x44]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201C610 ; =0x04000014
	str r1, [r0, #0]
_0201C416:
	ldrh r1, [r4, #4]
	mov r0, #4
	tst r0, r1
	beq _0201C476
	add r0, r4, #0
	add r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201C442
	ldr r1, [r4, #0x6c]
	ldr r0, _0201C608 ; =0x000001FF
	add r2, r1, #0
	ldr r1, [r4, #0x70]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201C614 ; =0x04000018
	str r1, [r0, #0]
	b _0201C476
_0201C442:
	mov r0, #2
	str r0, [sp]
	add r1, r4, #0
	add r1, #0x78
	add r3, r4, #0
	add r3, #0x80
	ldrh r1, [r1]
	ldr r2, [r4, #0x7c]
	ldr r3, [r3, #0]
	add r0, sp, #0x38
	bl sub_0201D470
	ldr r0, [r4, #0x6c]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0x70]
	add r3, r4, #0
	str r0, [sp, #4]
	add r2, #0x84
	add r3, #0x88
	ldr r0, _0201C618 ; =0x04000020
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r1, sp, #0x38
	bl sub_020BF4AC
_0201C476:
	ldrh r1, [r4, #4]
	mov r0, #8
	tst r0, r1
	beq _0201C4E6
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0201C4A6
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x98
	add r2, #0x9c
	ldr r2, [r2, #0]
	ldr r0, [r0, #0]
	ldr r1, _0201C608 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201C61C ; =0x0400001C
	str r1, [r0, #0]
	b _0201C4E6
_0201C4A6:
	mov r0, #2
	add r1, r4, #0
	str r0, [sp]
	add r1, #0xa4
	add r2, r4, #0
	add r3, r4, #0
	add r2, #0xa8
	add r3, #0xac
	ldrh r1, [r1]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r0, sp, #0x28
	bl sub_0201D470
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r3, r4, #0
	str r0, [sp, #4]
	add r2, #0xb0
	add r3, #0xb4
	ldr r0, _0201C620 ; =0x04000030
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r1, sp, #0x28
	bl sub_020BF4AC
_0201C4E6:
	ldrh r1, [r4, #4]
	mov r0, #0x10
	tst r0, r1
	beq _0201C50A
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xc4
	add r2, #0xc8
	ldr r2, [r2, #0]
	ldr r0, [r0, #0]
	ldr r1, _0201C608 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201C624 ; =0x04001010
	str r1, [r0, #0]
_0201C50A:
	ldrh r1, [r4, #4]
	mov r0, #0x20
	tst r0, r1
	beq _0201C52E
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xf0
	add r2, #0xf4
	ldr r2, [r2, #0]
	ldr r0, [r0, #0]
	ldr r1, _0201C608 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201C628 ; =0x04001014
	str r1, [r0, #0]
_0201C52E:
	ldrh r0, [r4, #4]
	mov r3, #0x40
	tst r0, r3
	beq _0201C596
	add r0, r3, #0
	add r0, #0xe4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0201C55C
	ldr r1, _0201C608 ; =0x000001FF
	add r3, #0xdc
	add r2, r1, #0
	sub r2, #0xdf
	ldr r0, [r4, r3]
	ldr r2, [r4, r2]
	and r0, r1
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201C62C ; =0x04001018
	str r1, [r0, #0]
	b _0201C596
_0201C55C:
	mov r0, #2
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp]
	add r1, #0xe8
	add r2, #0xec
	add r3, #0xf0
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, sp, #0x18
	bl sub_0201D470
	mov r3, #0x47
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r2, r3, #0
	str r0, [sp]
	add r0, r3, #4
	ldr r0, [r4, r0]
	add r2, #0x18
	str r0, [sp, #4]
	add r3, #0x1c
	ldr r0, _0201C630 ; =0x04001020
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, sp, #0x18
	bl sub_020BF4AC
_0201C596:
	ldrh r0, [r4, #4]
	mov r3, #0x80
	tst r0, r3
	beq _0201C604
	add r0, r3, #0
	add r0, #0xd0
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0201C5CA
	add r3, #0xc8
	ldr r1, [r4, r3]
	ldr r0, _0201C608 ; =0x000001FF
	add r2, r1, #0
	add r1, r0, #0
	sub r1, #0xb3
	ldr r1, [r4, r1]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0201C634 ; =0x0400101C
	add sp, #0x48
	str r1, [r0, #0]
	pop {r4, pc}
_0201C5CA:
	mov r0, #2
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp]
	add r1, #0xd4
	add r2, #0xd8
	add r3, #0xdc
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, sp, #8
	bl sub_0201D470
	mov r3, #0x52
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r2, r3, #0
	str r0, [sp]
	add r0, r3, #4
	ldr r0, [r4, r0]
	add r2, #0x18
	str r0, [sp, #4]
	add r3, #0x1c
	ldr r0, _0201C638 ; =0x04001030
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, sp, #8
	bl sub_020BF4AC
_0201C604:
	add sp, #0x48
	pop {r4, pc}
	; .align 2, 0
_0201C608: .word 0x000001FF
_0201C60C: .word 0x04000010
_0201C610: .word 0x04000014
_0201C614: .word 0x04000018
_0201C618: .word 0x04000020
_0201C61C: .word 0x0400001C
_0201C620: .word 0x04000030
_0201C624: .word 0x04001010
_0201C628: .word 0x04001014
_0201C62C: .word 0x04001018
_0201C630: .word 0x04001020
_0201C634: .word 0x0400101C
_0201C638: .word 0x04001030
	thumb_func_end sub_0201C3D0

	thumb_func_start sub_0201C63C
sub_0201C63C: ; 0x0201C63C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_02019304
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201C63C

	thumb_func_start sub_0201C660
sub_0201C660: ; 0x0201C660
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0201C684
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201C660

	thumb_func_start sub_0201C684
sub_0201C684: ; 0x0201C684
	cmp r1, #0
	beq _0201C692
	cmp r1, #1
	beq _0201C696
	cmp r1, #2
	beq _0201C69E
	bx lr
_0201C692:
	strh r2, [r0, #0x18]
	bx lr
_0201C696:
	ldrh r1, [r0, #0x18]
	add r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
_0201C69E:
	ldrh r1, [r0, #0x18]
	sub r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201C684

	thumb_func_start sub_0201C6A8
sub_0201C6A8: ; 0x0201C6A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0201C6CC
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201C6A8

	thumb_func_start sub_0201C6CC
sub_0201C6CC: ; 0x0201C6CC
	cmp r1, #8
	bhi _0201C714
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201C6DC: ; jump table
	.short _0201C714 - _0201C6DC - 2 ; case 0
	.short _0201C714 - _0201C6DC - 2 ; case 1
	.short _0201C714 - _0201C6DC - 2 ; case 2
	.short _0201C6EE - _0201C6DC - 2 ; case 3
	.short _0201C6F2 - _0201C6DC - 2 ; case 4
	.short _0201C6FA - _0201C6DC - 2 ; case 5
	.short _0201C702 - _0201C6DC - 2 ; case 6
	.short _0201C706 - _0201C6DC - 2 ; case 7
	.short _0201C70E - _0201C6DC - 2 ; case 8
_0201C6EE:
	str r2, [r0, #0x1c]
	bx lr
_0201C6F2:
	ldr r1, [r0, #0x1c]
	add r1, r1, r2
	str r1, [r0, #0x1c]
	bx lr
_0201C6FA:
	ldr r1, [r0, #0x1c]
	sub r1, r1, r2
	str r1, [r0, #0x1c]
	bx lr
_0201C702:
	str r2, [r0, #0x20]
	bx lr
_0201C706:
	ldr r1, [r0, #0x20]
	add r1, r1, r2
	str r1, [r0, #0x20]
	bx lr
_0201C70E:
	ldr r1, [r0, #0x20]
	sub r1, r1, r2
	str r1, [r0, #0x20]
_0201C714:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201C6CC

	thumb_func_start sub_0201C718
sub_0201C718: ; 0x0201C718
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	mov r0, #0x2c
	add r1, #8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0201C73C
	mov r0, #1
	ldrh r1, [r5, #4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0201C718

	thumb_func_start sub_0201C73C
sub_0201C73C: ; 0x0201C73C
	sub r1, #9
	cmp r1, #5
	bhi _0201C780
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201C74E: ; jump table
	.short _0201C75A - _0201C74E - 2 ; case 0
	.short _0201C75E - _0201C74E - 2 ; case 1
	.short _0201C766 - _0201C74E - 2 ; case 2
	.short _0201C76E - _0201C74E - 2 ; case 3
	.short _0201C772 - _0201C74E - 2 ; case 4
	.short _0201C77A - _0201C74E - 2 ; case 5
_0201C75A:
	str r2, [r0, #0x24]
	bx lr
_0201C75E:
	ldr r1, [r0, #0x24]
	add r1, r1, r2
	str r1, [r0, #0x24]
	bx lr
_0201C766:
	ldr r1, [r0, #0x24]
	sub r1, r1, r2
	str r1, [r0, #0x24]
	bx lr
_0201C76E:
	str r2, [r0, #0x28]
	bx lr
_0201C772:
	ldr r1, [r0, #0x28]
	add r1, r1, r2
	str r1, [r0, #0x28]
	bx lr
_0201C77A:
	ldr r1, [r0, #0x28]
	sub r1, r1, r2
	str r1, [r0, #0x28]
_0201C780:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201C73C

	thumb_func_start sub_0201C784
sub_0201C784: ; 0x0201C784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp]
	add r7, r0, #0
	str r2, [sp, #4]
	ldr r0, [sp, #0x30]
	str r3, [sp, #8]
	str r0, [sp, #0x30]
	ldr r0, [sp]
	add r4, r7, #0
	mov r1, #0x2c
	add r5, r0, #0
	mul r5, r1
	add r4, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _0201C7AC
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0201C7AC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r7, r5
	lsl r0, r0, #0x15
	lsl r1, r1, #0x15
	ldrb r2, [r2, #0x1d]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019774
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_02019F28
	str r0, [sp, #0x18]
	ldr r1, [sp, #4]
	mov r0, #7
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r7, r5
	str r0, [sp, #0x10]
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0201C85E
	ldr r0, [r4, r5]
	mov r1, #0x40
	str r0, [sp, #0xc]
	ldr r0, [r7, #0]
	bl sub_02018184
	add r4, r0, #0
	lsl r0, r6, #1
	ldr r1, [sp, #0xc]
	mov ip, r0
	ldrh r0, [r1, r0]
	mov r3, #0
	mov r6, #0xf
	lsl r0, r0, #0x16
	lsr r1, r0, #0x11
	ldr r0, [sp, #0x18]
	add r2, r0, r1
_0201C80A:
	ldrb r5, [r2, r3]
	lsl r0, r3, #1
	add r1, r4, r0
	and r5, r6
	strb r5, [r4, r0]
	ldrb r0, [r2, r3]
	asr r0, r0, #4
	strb r0, [r1, #1]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0x20
	blo _0201C80A
	ldr r2, [sp, #0xc]
	mov r1, ip
	ldrh r1, [r2, r1]
	add r0, r7, #0
	asr r2, r1, #0xa
	mov r1, #3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl sub_0201C8E0
	ldr r0, [sp, #0x10]
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r5, [r4, r0]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x30]
	ldrh r2, [r0]
	mov r0, #1
	add r1, r0, #0
	lsl r1, r5
	tst r1, r2
	beq _0201C8D4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0201C85E:
	ldrb r0, [r1, #0x1c]
	cmp r0, #1
	beq _0201C8A8
	ldr r0, [r7, #0]
	ldr r4, [r4, r5]
	mov r1, #0x40
	bl sub_02018184
	lsl r6, r6, #1
	ldrh r1, [r4, r6]
	add r5, r0, #0
	lsl r1, r1, #0x16
	lsr r2, r1, #0x10
	ldr r1, [sp, #0x18]
	add r1, r1, r2
	mov r2, #0x40
	bl sub_020D50B8
	ldrh r1, [r4, r6]
	add r0, r7, #0
	asr r2, r1, #0xa
	mov r1, #3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r5, #0
	bl sub_0201C8E0
	ldr r0, [sp, #0x10]
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r4, [r5, r0]
	add r0, r5, #0
	bl sub_020181C4
	b _0201C8BC
_0201C8A8:
	ldr r1, [r4, r5]
	ldr r0, [sp, #0x10]
	ldrb r1, [r1, r6]
	lsl r0, r0, #3
	lsl r2, r1, #6
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	ldrb r4, [r0, r1]
_0201C8BC:
	ldr r0, [sp, #0x30]
	ldrh r2, [r0]
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	ldr r0, _0201C8DC ; =0x0000FFFF
_0201C8C6:
	cmp r2, r0
	beq _0201C8D4
	cmp r4, r1
	bne _0201C8C6
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0201C8D4:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0201C8DC: .word 0x0000FFFF
	thumb_func_end sub_0201C784

	thumb_func_start sub_0201C8E0
sub_0201C8E0: ; 0x0201C8E0
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	ldr r1, [sp]
	add r7, r2, #0
	cmp r1, #0
	beq _0201C96C
	ldr r0, [r0, #0]
	mov r1, #0x40
	bl sub_02018184
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #1
	tst r0, r1
	beq _0201C92E
	mov r0, #0
	mov r5, #7
_0201C902:
	lsl r3, r0, #3
	add r2, r7, r3
	mov r1, #0
	add r3, r4, r3
_0201C90A:
	sub r6, r5, r1
	ldrb r6, [r2, r6]
	strb r6, [r3, r1]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #8
	blo _0201C90A
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	blo _0201C902
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x40
	bl sub_020D50B8
_0201C92E:
	ldr r0, [sp]
	mov r1, #2
	tst r0, r1
	beq _0201C966
	mov r5, #0
	mov r6, #7
_0201C93A:
	lsl r0, r5, #3
	add r3, r4, r0
	sub r0, r6, r5
	lsl r0, r0, #3
	add r2, r7, r0
	mov r1, #8
_0201C946:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _0201C946
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0201C93A
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x40
	bl sub_020D50B8
_0201C966:
	add r0, r4, #0
	bl sub_020181C4
_0201C96C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201C8E0

	.rodata


	.global Unk_020E5694
Unk_020E5694: ; 0x020E5694
	.incbin "incbin/arm9_rodata.bin", 0xA54, 0xA5C - 0xA54

	.global Unk_020E569C
Unk_020E569C: ; 0x020E569C
	.incbin "incbin/arm9_rodata.bin", 0xA5C, 0xA68 - 0xA5C

	.global Unk_020E56A8
Unk_020E56A8: ; 0x020E56A8
	.incbin "incbin/arm9_rodata.bin", 0xA68, 0xA74 - 0xA68

	.global Unk_020E56B4
Unk_020E56B4: ; 0x020E56B4
	.incbin "incbin/arm9_rodata.bin", 0xA74, 0xA80 - 0xA74

	.global Unk_020E56C0
Unk_020E56C0: ; 0x020E56C0
	.incbin "incbin/arm9_rodata.bin", 0xA80, 0xA8C - 0xA80

	.global Unk_020E56CC
Unk_020E56CC: ; 0x020E56CC
	.incbin "incbin/arm9_rodata.bin", 0xA8C, 0xA98 - 0xA8C

	.global Unk_020E56D8
Unk_020E56D8: ; 0x020E56D8
	.incbin "incbin/arm9_rodata.bin", 0xA98, 0xC

