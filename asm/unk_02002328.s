	.include "macros/function.inc"
	.include "include/unk_02002328.inc"

	

	.text


	thumb_func_start sub_02002328
sub_02002328: ; 0x02002328
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x28
	ldrb r1, [r1]
	add r6, r4, #0
	add r6, #0x20
	cmp r1, #6
	bls _0200233E
	b _020027A0
_0200233E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200234A: ; jump table
	.short _02002358 - _0200234A - 2 ; case 0
	.short _020026AA - _0200234A - 2 ; case 1
	.short _020026C4 - _0200234A - 2 ; case 2
	.short _020026EE - _0200234A - 2 ; case 3
	.short _0200271E - _0200234A - 2 ; case 4
	.short _02002774 - _0200234A - 2 ; case 5
	.short _02002780 - _0200234A - 2 ; case 6
_02002358:
	ldr r0, _020025C0 ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #3
	tst r0, r1
	beq _0200236A
	ldrb r0, [r6]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bne _0200237C
_0200236A:
	ldr r0, _020025C4 ; =0x021BF6BC
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	beq _0200239A
	ldr r0, _020025C8 ; =0x02101D44
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _0200239A
_0200237C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2a
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	beq _0200239A
	ldr r1, _020025C8 ; =0x02101D44
	mov r0, #0x40
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
_0200239A:
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _020023F4
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	beq _020023F4
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	ldr r0, _020025C8 ; =0x02101D44
	ldrb r0, [r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _020023EE
	ldr r1, _020025C0 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	bne _020023E0
	ldr r1, _020025C4 ; =0x021BF6BC
	ldrh r1, [r1, #0x20]
	cmp r1, #0
	beq _020023EE
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _020023EE
_020023E0:
	ldrb r1, [r6]
	mov r0, #0x10
	add r4, #0x2a
	orr r0, r1
	strb r0, [r6]
	mov r0, #0
	strb r0, [r4]
_020023EE:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020023F4:
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x19
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	ldr r0, [r4, #0]
	ldrh r5, [r0]
	add r0, r0, #2
	str r0, [r4, #0]
	mov r0, #0xf1
	lsl r0, r0, #8
	cmp r5, r0
	bne _02002418
	bl sub_02022974
_02002418:
	ldr r0, _020025CC ; =0x0000F0FD
	cmp r5, r0
	bgt _02002442
	bge _02002476
	ldr r1, _020025D0 ; =0x000025BD
	cmp r5, r1
	bgt _02002438
	sub r0, r1, #1
	cmp r5, r0
	blt _02002436
	bne _02002430
	b _02002640
_02002430:
	cmp r5, r1
	bne _02002436
	b _02002654
_02002436:
	b _02002668
_02002438:
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r5, r0
	beq _0200245A
	b _02002668
_02002442:
	ldr r0, _020025D4 ; =0x0000FFFE
	cmp r5, r0
	bgt _0200244C
	beq _02002482
	b _02002668
_0200244C:
	add r0, r0, #1
	cmp r5, r0
	beq _02002454
	b _02002668
_02002454:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0200245A:
	ldrb r0, [r4, #0xa]
	mov r1, #1
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #9]
	bl sub_02002DF8
	ldrh r1, [r4, #0x12]
	ldrh r2, [r4, #0xe]
	add sp, #0xc
	add r0, r1, r0
	add r0, r2, r0
	strh r0, [r4, #0xe]
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02002476:
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #2
	str r0, [r4, #0]
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02002482:
	ldr r0, [r4, #0]
	sub r0, r0, #2
	str r0, [r4, #0]
	bl sub_0201D0F0
	lsl r0, r0, #0x10
	ldr r1, _020025D8 ; =0x0000FE06
	lsr r0, r0, #0x10
	cmp r0, r1
	bgt _020024BA
	blt _0200249A
	b _020025E0
_0200249A:
	mov r1, #2
	lsl r1, r1, #8
	sub r1, r0, r1
	cmp r1, #4
	bhi _020024C4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020024B0: ; jump table
	.short _0200251C - _020024B0 - 2 ; case 0
	.short _02002546 - _020024B0 - 2 ; case 1
	.short _02002568 - _020024B0 - 2 ; case 2
	.short _02002580 - _020024B0 - 2 ; case 3
	.short _0200258C - _020024B0 - 2 ; case 4
_020024BA:
	mov r1, #0xff
	lsl r1, r1, #8
	cmp r0, r1
	bgt _020024C6
	beq _020024CE
_020024C4:
	b _02002632
_020024C6:
	add r1, r1, #1
	cmp r0, r1
	beq _02002598
	b _02002632
_020024CE:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xff
	bne _020024FE
	ldrb r0, [r4, #0x15]
	ldrb r2, [r4, #0x1b]
	sub r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0x64
	strb r0, [r4, #0x1b]
	cmp r2, #0x64
	blo _020025AC
	cmp r2, #0x6b
	bhs _020025AC
	sub r2, #0x64
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	b _02002506
_020024FE:
	cmp r0, #0x64
	blo _02002506
	strb r0, [r4, #0x1b]
	b _02002632
_02002506:
	lsl r1, r0, #1
	add r0, r1, #1
	strb r0, [r4, #0x15]
	add r0, r1, #2
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x16]
	ldrb r2, [r4, #0x17]
	bl sub_0201D9FC
	b _02002632
_0200251C:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldrh r1, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	add r0, r4, #0
	bl sub_0201DB8C
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _02002632
	ldr r0, [r4, #4]
	bl sub_0201A954
	b _02002632
_02002546:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	add r1, r4, #0
	add r1, #0x2a
	strb r0, [r1]
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	mov r0, #6
	add r4, #0x28
	strb r0, [r4]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002568:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	strh r0, [r4, #0x2e]
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002580:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	strh r0, [r4, #0xc]
	b _02002632
_0200258C:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	strh r0, [r4, #0xe]
	b _02002632
_02002598:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x64
	beq _020025AE
	cmp r0, #0xc8
	beq _020025B6
_020025AC:
	b _02002632
_020025AE:
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x1a]
	b _02002632
_020025B6:
	ldr r0, _020025DC ; =0x0000FFFC
	strh r0, [r4, #0x18]
	mov r0, #0
	strb r0, [r4, #0x1a]
	b _02002632
	; .align 2, 0
_020025C0: .word 0x021BF67C
_020025C4: .word 0x021BF6BC
_020025C8: .word 0x02101D44
_020025CC: .word 0x0000F0FD
_020025D0: .word 0x000025BD
_020025D4: .word 0x0000FFFE
_020025D8: .word 0x0000FE06
_020025DC: .word 0x0000FFFC
_020025E0:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xfe
	lsl r0, r0, #8
	cmp r1, r0
	beq _02002616
	add r0, r0, #1
	cmp r1, r0
	bne _02002632
	add r0, r4, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027B4
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002616:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027B4
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002632:
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02002640:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027B4
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002654:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027B4
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002668:
	ldrb r0, [r6]
	add r1, r5, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl sub_02002CFC
	add r5, r0, #0
	ldrh r0, [r4, #0xc]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp]
	ldrh r0, [r4, #0xe]
	add r2, #0x80
	add r3, #0x81
	str r0, [sp, #4]
	ldrh r0, [r4, #0x18]
	add r1, r5, #0
	str r0, [sp, #8]
	ldrb r2, [r2]
	ldrb r3, [r3]
	ldr r0, [r4, #4]
	bl sub_0201AED0
	add r5, #0x80
	ldrb r1, [r5]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xc]
	add sp, #0xc
	add r0, r1, r0
	add r0, r2, r0
	strh r0, [r4, #0xc]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_020026AA:
	bl sub_02002AA4
	cmp r0, #0
	beq _020026BE
	add r0, r4, #0
	bl sub_02002968
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_020026BE:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020026C4:
	bl sub_02002A80
	cmp r0, #0
	beq _020026E8
	add r0, r4, #0
	bl sub_02002968
	ldrb r1, [r4, #0x16]
	ldr r0, [r4, #4]
	bl sub_0201ADA4
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	strh r0, [r4, #0xe]
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_020026E8:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020026EE:
	bl sub_02002A80
	cmp r0, #0
	beq _02002718
	add r0, r4, #0
	bl sub_02002968
	ldrb r0, [r4, #9]
	mov r1, #1
	bl sub_02002DF8
	ldrh r1, [r4, #0x12]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	mov r0, #4
	add r4, #0x28
	strb r0, [r4]
_02002718:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_0200271E:
	add r0, #0x2b
	ldrb r2, [r0]
	cmp r2, #0
	beq _02002768
	cmp r2, #4
	ldrb r5, [r4, #0x16]
	bge _02002740
	lsl r3, r5, #4
	orr r3, r5
	lsl r3, r3, #0x18
	ldr r0, [r4, #4]
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_0201C04C
	mov r1, #0
	b _0200275A
_02002740:
	lsl r3, r5, #4
	orr r3, r5
	lsl r3, r3, #0x18
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #4
	lsr r3, r3, #0x18
	bl sub_0201C04C
	add r0, r4, #0
	add r0, #0x2b
	ldrb r0, [r0]
	sub r1, r0, #4
_0200275A:
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl sub_0201A954
	b _0200276E
_02002768:
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_0200276E:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002774:
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002780:
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _02002794
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r4, #0x2a
	sub r0, r0, #1
	b _02002798
_02002794:
	mov r0, #0
	add r4, #0x28
_02002798:
	add sp, #0xc
	strb r0, [r4]
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020027A0:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02002328

	thumb_func_start sub_020027A8
sub_020027A8: ; 0x020027A8
	ldr r1, _020027B0 ; =0x02101D44
	strh r0, [r1, #2]
	bx lr
	nop
_020027B0: .word 0x02101D44
	thumb_func_end sub_020027A8

	thumb_func_start sub_020027B4
sub_020027B4: ; 0x020027B4
	ldr r1, _020027DC ; =0x02101D44
	add r0, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _020027CA
	ldrb r2, [r0, #2]
	mov r1, #0xff
	bic r2, r1
	strb r2, [r0, #2]
	bx lr
_020027CA:
	ldrb r2, [r0, #1]
	mov r1, #0x60
	bic r2, r1
	strb r2, [r0, #1]
	ldrb r2, [r0, #1]
	mov r1, #0x1f
	bic r2, r1
	strb r2, [r0, #1]
	bx lr
	; .align 2, 0
_020027DC: .word 0x02101D44
	thumb_func_end sub_020027B4

	thumb_func_start sub_020027E0
sub_020027E0: ; 0x020027E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, _02002960 ; =0x02101D44
	add r4, r5, #0
	ldrb r0, [r0]
	add r4, #0x20
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _020027F6
	b _0200295C
_020027F6:
	ldrb r0, [r4, #1]
	lsl r1, r0, #0x1b
	lsr r2, r1, #0x1b
	beq _02002814
	mov r1, #0x1f
	add r2, #0xff
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	add sp, #0x2c
	strb r0, [r4, #1]
	pop {r4, r5, r6, r7, pc}
_02002814:
	ldr r0, [r5, #4]
	bl sub_0201C290
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	bl sub_0201C29C
	str r0, [sp, #0x24]
	ldr r0, [r5, #4]
	bl sub_0201C2A0
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	bl sub_0201C294
	ldr r1, _02002960 ; =0x02101D44
	ldrh r6, [r1, #2]
	ldr r1, [sp, #0x28]
	add r7, r1, #2
	ldr r1, [sp, #0x24]
	add r2, r6, #0
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x18]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	add r2, #0x12
	mov ip, r2
	ldrb r2, [r4, #1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _02002964 ; =0x020E4CD0
	ldr r0, [r0, #0]
	ldrb r2, [r2, r3]
	mov r3, ip
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r3, [sp, #0x18]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, #2
	str r0, [sp, #0x10]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #1]
	add r7, r6, #0
	ldr r0, [r5, #4]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _02002964 ; =0x020E4CD0
	add r7, #0x13
	ldrb r2, [r2, r3]
	ldr r3, [sp, #0x10]
	ldr r0, [r0, #0]
	lsl r2, r2, #2
	add r2, r7, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x28]
	add r7, r6, #0
	add r0, r0, #3
	str r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #1]
	ldr r0, [r5, #4]
	add r7, #0x14
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _02002964 ; =0x020E4CD0
	ldr r0, [r0, #0]
	ldrb r2, [r2, r3]
	ldr r3, [sp, #0x18]
	ldr r1, [sp, #0x20]
	lsl r2, r2, #2
	add r2, r7, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x14]
	add r6, #0x15
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _02002964 ; =0x020E4CD0
	ldr r0, [r0, #0]
	ldrb r2, [r2, r3]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #2
	add r2, r6, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	bl sub_02019448
	ldrb r1, [r4, #1]
	mov r0, #0x1f
	bic r1, r0
	mov r0, #8
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r2, [r4, #1]
	mov r1, #0x60
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x1e
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r0, r1
	strb r0, [r4, #1]
_0200295C:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02002960: .word 0x02101D44
_02002964: .word 0x020E4CD0
	thumb_func_end sub_020027E0

	thumb_func_start sub_02002968
sub_02002968: ; 0x02002968
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201C290
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	bl sub_0201C29C
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	bl sub_0201C2A0
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201C294
	ldr r1, _020029F8 ; =0x02101D44
	add r7, r6, #2
	ldrh r4, [r1, #2]
	ldr r1, [sp, #0x14]
	add r6, r1, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r2, r4, #0
	add r2, #0xa
	add r3, r6, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r4, #0xb
	add r3, r6, #2
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_02019448
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020029F8: .word 0x02101D44
	thumb_func_end sub_02002968

	thumb_func_start sub_020029FC
sub_020029FC: ; 0x020029FC
	push {r3, lr}
	ldr r0, _02002A34 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02002A1A
	ldr r0, _02002A38 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02002A2E
	ldr r0, _02002A3C ; =0x02101D44
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _02002A2E
_02002A1A:
	ldr r0, _02002A40 ; =0x000005DC
	bl sub_02005748
	ldr r1, _02002A3C ; =0x02101D44
	mov r0, #0x80
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	mov r0, #1
	pop {r3, pc}
_02002A2E:
	mov r0, #0
	pop {r3, pc}
	nop
_02002A34: .word 0x021BF67C
_02002A38: .word 0x021BF6BC
_02002A3C: .word 0x02101D44
_02002A40: .word 0x000005DC
	thumb_func_end sub_020029FC

	thumb_func_start sub_02002A44
sub_02002A44: ; 0x02002A44
	push {r4, lr}
	add r2, r0, #0
	add r2, #0x20
	ldrb r1, [r2, #2]
	add r4, r1, #0
	cmp r4, #0x64
	bne _02002A56
	mov r0, #1
	pop {r4, pc}
_02002A56:
	mov r3, #0xff
	bic r1, r3
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	orr r1, r3
	strb r1, [r2, #2]
	ldr r1, _02002A7C ; =0x02101D44
	ldrb r1, [r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _02002A78
	bl sub_020029FC
	pop {r4, pc}
_02002A78:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02002A7C: .word 0x02101D44
	thumb_func_end sub_02002A44

	thumb_func_start sub_02002A80
sub_02002A80: ; 0x02002A80
	push {r4, lr}
	ldr r1, _02002AA0 ; =0x02101D44
	add r4, r0, #0
	ldrb r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _02002A94
	bl sub_02002A44
	pop {r4, pc}
_02002A94:
	bl sub_020027E0
	add r0, r4, #0
	bl sub_020029FC
	pop {r4, pc}
	; .align 2, 0
_02002AA0: .word 0x02101D44
	thumb_func_end sub_02002A80

	thumb_func_start sub_02002AA4
sub_02002AA4: ; 0x02002AA4
	push {r3, lr}
	ldr r1, _02002AC4 ; =0x02101D44
	ldrb r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _02002ABA
	bl sub_02002A44
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
_02002ABA:
	bl sub_020029FC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
_02002AC4: .word 0x02101D44
	thumb_func_end sub_02002AA4

	thumb_func_start sub_02002AC8
sub_02002AC8: ; 0x02002AC8
	ldr r2, _02002AE0 ; =0x02101D44
	mov r1, #1
	ldrb r3, [r2]
	lsl r0, r0, #0x18
	bic r3, r1
	lsr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	orr r0, r3
	strb r0, [r2]
	bx lr
	nop
_02002AE0: .word 0x02101D44
	thumb_func_end sub_02002AC8

	thumb_func_start sub_02002AE4
sub_02002AE4: ; 0x02002AE4
	push {r3, r4}
	ldr r1, _02002B1C ; =0x02101D44
	mov r3, #4
	ldrb r2, [r1]
	mov r4, #1
	bic r2, r3
	add r3, r0, #0
	and r3, r4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1d
	orr r2, r3
	asr r0, r0, #1
	and r0, r4
	strb r2, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r2, [r1]
	mov r3, #0x20
	lsr r0, r0, #0x1a
	bic r2, r3
	orr r0, r2
	strb r0, [r1]
	pop {r3, r4}
	bx lr
	nop
_02002B1C: .word 0x02101D44
	thumb_func_end sub_02002AE4

	thumb_func_start sub_02002B20
sub_02002B20: ; 0x02002B20
	ldr r2, _02002B38 ; =0x02101D44
	lsl r0, r0, #0x18
	ldrb r3, [r2]
	lsr r0, r0, #0x18
	mov r1, #0x10
	lsl r0, r0, #0x1f
	bic r3, r1
	lsr r0, r0, #0x1b
	orr r0, r3
	strb r0, [r2]
	bx lr
	nop
_02002B38: .word 0x02101D44
	thumb_func_end sub_02002B20

	thumb_func_start sub_02002B3C
sub_02002B3C: ; 0x02002B3C
	ldr r0, _02002B48 ; =0x02101D44
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
	nop
_02002B48: .word 0x02101D44
	thumb_func_end sub_02002B3C

	thumb_func_start sub_02002B4C
sub_02002B4C: ; 0x02002B4C
	ldr r1, _02002B58 ; =0x02101D44
	mov r0, #0x40
	ldrb r2, [r1]
	bic r2, r0
	strb r2, [r1]
	bx lr
	; .align 2, 0
_02002B58: .word 0x02101D44
	thumb_func_end sub_02002B4C

	thumb_func_start sub_02002B5C
sub_02002B5C: ; 0x02002B5C
	ldr r0, _02002B68 ; =0x02101D44
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	nop
_02002B68: .word 0x02101D44
	thumb_func_end sub_02002B5C

	thumb_func_start sub_02002B6C
sub_02002B6C: ; 0x02002B6C
	ldr r1, _02002B78 ; =0x02101D44
	mov r0, #0x80
	ldrb r2, [r1]
	bic r2, r0
	strb r2, [r1]
	bx lr
	; .align 2, 0
_02002B78: .word 0x02101D44
	thumb_func_end sub_02002B6C

	.rodata


	.global Unk_020E4CD0
Unk_020E4CD0: ; 0x020E4CD0
	.incbin "incbin/arm9_rodata.bin", 0x90, 0x4



	.bss


	.global Unk_02101D44
Unk_02101D44: ; 0x02101D44
	.space 0x2

	.global Unk_02101D46
Unk_02101D46: ; 0x02101D46
	.space 0x2

