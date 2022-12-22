	.include "macros/function.inc"
	.include "include/unk_0207AE68.inc"

	

	.text


	thumb_func_start sub_0207AE68
sub_0207AE68: ; 0x0207AE68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r5, [sp, #0x54]
	add r6, r0, #0
	add r7, r1, #0
	add r0, r5, #0
	mov r1, #0x88
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x88
	bl MIi_CpuClearFast
	bl sub_020241F8
	str r0, [sp, #0x1c]
	bl sub_020241F0
	add r1, r0, #0
	ldr r2, [sp, #0x1c]
	mov r0, #0
	bl MIi_CpuClear16
	bl sub_02024208
	str r0, [sp, #0x20]
	bl sub_02024200
	add r1, r0, #0
	ldr r2, [sp, #0x20]
	mov r0, #0
	bl MIi_CpuClear16
	str r6, [r4, #0x24]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	str r7, [r4, #0x28]
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x60
	strh r0, [r1]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x86
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp, #0x14]
	add r1, #0x62
	strh r0, [r1]
	mov r0, #0x93
	add r1, r5, #0
	str r5, [r4, #0x5c]
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x60
	add r0, #0x80
	add r1, r4, #0
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, #0x84
	mov r3, #1
	bl sub_02078A4C
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x62
	add r0, #0x80
	add r1, r4, #0
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, #0x85
	mov r3, #1
	bl sub_02078A4C
	add r0, r5, #0
	bl sub_02002F38
	mov r1, #1
	str r0, [r4, #0x14]
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #0x14]
	mov r1, #0
	lsl r2, r2, #8
	add r3, r5, #0
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r2, r1, #9
	add r3, r5, #0
	bl sub_02002F70
	mov r2, #7
	ldr r0, [r4, #0x14]
	mov r1, #2
	lsl r2, r2, #6
	add r3, r5, #0
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #0x14]
	mov r1, #3
	lsl r2, r2, #8
	add r3, r5, #0
	bl sub_02002F70
	add r0, r5, #0
	bl sub_02018340
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #4]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl sub_0207C690
	str r0, [r4, #0x34]
	bl sub_0207C63C
	bl sub_0207C664
	bl sub_0207C730
	ldr r1, [r4, #0]
	add r0, r4, #0
	bl sub_0207C1CC
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, [r4, #4]
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	add r0, r5, #0
	bl sub_0200762C
	str r0, [r4, #0x18]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_02015F84
	str r0, [r4, #0x44]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x67
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0x17
	mov r1, #2
	add r0, #0x66
	strb r1, [r0]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	add r3, r5, #0
	bl sub_0200B144
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0200B358
	str r0, [r4, #0xc]
	mov r0, #5
	lsl r0, r0, #6
	add r1, r5, #0
	bl sub_02023790
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #0x30
	bl sub_02018144
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x3c]
	mov r0, #0
	mov r2, #0x30
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x38]
	ldr r0, [r4, #0x3c]
	str r1, [r0, #0x2c]
	ldr r0, [sp, #0x3c]
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x40]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x44]
	str r0, [r4, #0x50]
	ldr r0, [sp, #0x48]
	str r0, [r4, #0x54]
	ldr r0, [sp, #0x4c]
	str r0, [r4, #0x78]
	ldr r0, [sp, #0x50]
	str r0, [r4, #0x7c]
	add r0, r4, #0
	bl sub_0207C498
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207B098 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_0200872C
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #0xb
	add r3, r5, #0
	bl sub_0201567C
	mov r1, #1
	str r0, [r4, #0x58]
	bl sub_02015738
	ldr r0, _0207B09C ; =sub_0207B0A0
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	mov r0, #1
	bl sub_02002AC8
	bl sub_02039734
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0207B098: .word 0x0000FFFF
_0207B09C: .word sub_0207B0A0
	thumb_func_end sub_0207AE68

	thumb_func_start sub_0207B0A0
sub_0207B0A0: ; 0x0207B0A0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0207B180
	ldr r0, [r5, #0x18]
	bl sub_02007768
	bl sub_0207C770
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
	add r5, #0x67
	ldrb r0, [r5]
	cmp r0, #0
	beq _0207B0CC
	add r0, r4, #0
	bl sub_0200DA58
_0207B0CC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207B0A0

	thumb_func_start sub_0207B0D0
sub_0207B0D0: ; 0x0207B0D0
	add r0, #0x67
	ldrb r0, [r0]
	cmp r0, #1
	bne _0207B0DC
	mov r0, #1
	bx lr
_0207B0DC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0207B0D0

	thumb_func_start sub_0207B0E0
sub_0207B0E0: ; 0x0207B0E0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0201A928
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #0x14]
	bl sub_02002F54
	ldr r0, [r4, #0x18]
	bl sub_02007B6C
	ldr r0, [r4, #0x44]
	bl sub_02015FB8
	ldr r0, [r4, #0x34]
	bl sub_020242C4
	ldr r0, [r4, #0]
	bl sub_0207C460
	ldr r0, [r4, #8]
	bl sub_0200B190
	ldr r0, [r4, #0xc]
	bl sub_0200B3F0
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	ldr r0, [r4, #0x3c]
	bl sub_020181C4
	ldr r0, [r4, #0x58]
	bl sub_02015760
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02006CA8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	bl sub_02002AC8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207B0E0

	thumb_func_start sub_0207B180
sub_0207B180: ; 0x0207B180
	push {r4, lr}
	sub sp, #0x90
	add r4, r0, #0
	add r0, #0x70
	ldrb r1, [r0]
	cmp r1, #0
	beq _0207B25C
	mov r0, #1
	tst r0, r1
	ldr r0, [r4, #0x1c]
	bne _0207B1EE
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	mov r1, #0xc
	neg r2, r2
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	neg r2, r2
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x20]
	mov r1, #0xc
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x20]
	mov r1, #0xd
	bl sub_02008274
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl sub_020080C0
	cmp r0, #0
	bne _0207B25C
	add r0, r4, #0
	add r0, #0x70
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x70
	strb r1, [r0]
	b _0207B25C
_0207B1EE:
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	mov r1, #0xc
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x20]
	mov r1, #0xc
	neg r2, r2
	bl sub_02008274
	add r2, r4, #0
	add r2, #0x71
	ldrb r2, [r2]
	ldr r0, [r4, #0x20]
	mov r1, #0xd
	neg r2, r2
	bl sub_02008274
	ldr r0, [r4, #0x20]
	mov r1, #0xc
	bl sub_020080C0
	cmp r0, #0
	bne _0207B25C
	add r0, r4, #0
	add r0, #0x70
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x70
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x71
	ldrb r0, [r0]
	cmp r0, #0x40
	bhs _0207B25C
	add r0, r4, #0
	add r0, #0x71
	ldrb r0, [r0]
	lsl r1, r0, #1
	add r0, r4, #0
	add r0, #0x71
	strb r1, [r0]
_0207B25C:
	ldr r1, [r4, #0x7c]
	mov r0, #1
	tst r0, r1
	beq _0207B296
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #8
	bne _0207B296
	ldr r0, _0207B580 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0207B296
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0207B584 ; =0x00007FFF
	ldr r2, _0207B588 ; =0x0000F3FF
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl sub_02003178
	add r0, r4, #0
	mov r1, #0x29
	add r0, #0x64
	strb r1, [r0]
_0207B296:
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0x2d
	bhi _0207B396
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207B2AC: ; jump table
	.short _0207B308 - _0207B2AC - 2 ; case 0
	.short _0207B330 - _0207B2AC - 2 ; case 1
	.short _0207B35E - _0207B2AC - 2 ; case 2
	.short _0207B388 - _0207B2AC - 2 ; case 3
	.short _0207B3A4 - _0207B2AC - 2 ; case 4
	.short _0207B440 - _0207B2AC - 2 ; case 5
	.short _0207B48C - _0207B2AC - 2 ; case 6
	.short _0207B50E - _0207B2AC - 2 ; case 7
	.short _0207B5C4 - _0207B2AC - 2 ; case 8
	.short _0207B664 - _0207B2AC - 2 ; case 9
	.short _0207B6F2 - _0207B2AC - 2 ; case 10
	.short _0207B772 - _0207B2AC - 2 ; case 11
	.short _0207B7EE - _0207B2AC - 2 ; case 12
	.short _0207B862 - _0207B2AC - 2 ; case 13
	.short _0207B8DC - _0207B2AC - 2 ; case 14
	.short _0207B9A4 - _0207B2AC - 2 ; case 15
	.short _0207B920 - _0207B2AC - 2 ; case 16
	.short _0207B9A4 - _0207B2AC - 2 ; case 17
	.short _0207B956 - _0207B2AC - 2 ; case 18
	.short _0207B9A4 - _0207B2AC - 2 ; case 19
	.short _0207B9DC - _0207B2AC - 2 ; case 20
	.short _0207B9FE - _0207B2AC - 2 ; case 21
	.short _0207BA50 - _0207B2AC - 2 ; case 22
	.short _0207BAD2 - _0207B2AC - 2 ; case 23
	.short _0207BB50 - _0207B2AC - 2 ; case 24
	.short _0207BC70 - _0207B2AC - 2 ; case 25
	.short _0207B9A4 - _0207B2AC - 2 ; case 26
	.short _0207BC96 - _0207B2AC - 2 ; case 27
	.short _0207B9A4 - _0207B2AC - 2 ; case 28
	.short _0207BCE8 - _0207B2AC - 2 ; case 29
	.short _0207B9A4 - _0207B2AC - 2 ; case 30
	.short _0207BD0E - _0207B2AC - 2 ; case 31
	.short _0207BB88 - _0207B2AC - 2 ; case 32
	.short _0207B9A4 - _0207B2AC - 2 ; case 33
	.short _0207BBBC - _0207B2AC - 2 ; case 34
	.short _0207BBDE - _0207B2AC - 2 ; case 35
	.short _0207BC3E - _0207B2AC - 2 ; case 36
	.short _0207BD9A - _0207B2AC - 2 ; case 37
	.short _0207BDB8 - _0207B2AC - 2 ; case 38
	.short _0207BDE4 - _0207B2AC - 2 ; case 39
	.short _0207BE18 - _0207B2AC - 2 ; case 40
	.short _0207BE38 - _0207B2AC - 2 ; case 41
	.short _0207BEDE - _0207B2AC - 2 ; case 42
	.short _0207BF52 - _0207B2AC - 2 ; case 43
	.short _0207BFA6 - _0207B2AC - 2 ; case 44
	.short _0207C000 - _0207B2AC - 2 ; case 45
_0207B308:
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207B396
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B330:
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl sub_02015738
	ldr r1, [r4, #0x7c]
	mov r0, #2
	tst r1, r0
	beq _0207B354
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B354:
	mov r0, #4
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B35E:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207B396
	mov r1, #0xe5
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B388:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	beq _0207B39A
_0207B396:
	bl _0207C010
_0207B39A:
	mov r0, #4
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B3A4:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207B4A4
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r3, r4, #0
	add r0, r4, #0
	add r3, #0x60
	add r0, #0x80
	ldrh r3, [r3]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x1c]
	bl sub_020789F4
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x60
	add r0, #0x80
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, sp, #0x68
	mov r3, #1
	bl sub_020789BC
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x68
	bl sub_02007C10
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02007B98
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x60
	add r1, #0x84
	add r2, #0x86
	ldrh r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl sub_0200590C
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	ldr r1, [r4, #0x7c]
	mov r0, #2
	tst r0, r1
	beq _0207B428
	ldr r1, _0207B58C ; =0x00000395
	add r0, r4, #0
	bl sub_0207C584
	b _0207B430
_0207B428:
	ldr r1, _0207B590 ; =0x00000393
	add r0, r4, #0
	bl sub_0207C584
_0207B430:
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	mov r0, #5
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B440:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207B4A4
	bl sub_0200598C
	cmp r0, #0
	bne _0207B4A4
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_020160F4
	cmp r0, #1
	bne _0207B4A4
	ldr r0, [r4, #0x1c]
	bl sub_02007C24
	cmp r0, #0
	bne _0207B4A4
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_02015738
	ldr r0, _0207B594 ; =0x00000475
	bl sub_02005474
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x66
	strb r1, [r0]
	mov r0, #6
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B48C:
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207B4A8
_0207B4A4:
	bl _0207C010
_0207B4A8:
	ldr r0, [r4, #0x5c]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x10
	bl sub_0207C894
	mov r1, #0
	str r0, [r4, #0x30]
	bl sub_0207C8C4
	ldr r0, _0207B584 ; =0x00007FFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	mov r2, #0x10
	mov r3, #4
	bl sub_020086FC
	ldr r0, _0207B584 ; =0x00007FFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	mov r2, #0x10
	mov r3, #4
	bl sub_020086FC
	ldr r0, [r4, #0x5c]
	bl sub_020182A4
	mov r1, #2
	lsl r1, r1, #0xe
	cmp r0, r1
	bhi _0207B4F0
	bl sub_02022974
_0207B4F0:
	ldr r0, _0207B598 ; =0x000005F9
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x28
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B50E:
	add r0, r4, #0
	add r0, #0x73
	ldrb r0, [r0]
	cmp r0, #0x28
	bhs _0207B534
	add r0, r4, #0
	add r0, #0x73
	ldrb r0, [r0]
	add r1, r0, #2
	add r0, r4, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x75
	ldrb r0, [r0]
	sub r1, r0, #2
	add r0, r4, #0
	add r0, #0x75
	strb r1, [r0]
_0207B534:
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207B5CE
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #7
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #8
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #9
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #0xb
	bl sub_0207C8C4
	ldr r0, _0207B59C ; =0x000005FA
	b _0207B5A0
	; .align 2, 0
_0207B580: .word 0x021BF67C
_0207B584: .word 0x00007FFF
_0207B588: .word 0x0000F3FF
_0207B58C: .word 0x00000395
_0207B590: .word 0x00000393
_0207B594: .word 0x00000475
_0207B598: .word 0x000005F9
_0207B59C: .word 0x000005FA
_0207B5A0:
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x70
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0x71
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B5C4:
	ldr r0, [r4, #0x30]
	bl sub_0207C8E0
	cmp r0, #0
	beq _0207B5D2
_0207B5CE:
	bl _0207C010
_0207B5D2:
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #4
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #5
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #6
	bl sub_0207C8C4
	ldr r0, [r4, #0x30]
	mov r1, #0xa
	bl sub_0207C8C4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0207B95C ; =0x00007FFF
	ldr r2, _0207B960 ; =0x0000F3FF
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	mov r3, #2
	bl sub_02003178
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	mov r2, #0
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x20]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x20]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, _0207B964 ; =0x000005FB
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	add r0, #0x70
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B664:
	add r0, r4, #0
	add r0, #0x73
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207B68A
	add r0, r4, #0
	add r0, #0x73
	ldrb r0, [r0]
	sub r1, r0, #2
	add r0, r4, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x75
	ldrb r0, [r0]
	add r1, r0, #2
	add r0, r4, #0
	add r0, #0x75
	strb r1, [r0]
_0207B68A:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207B706
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207B706
	ldr r0, [r4, #0x30]
	mov r1, #0xc
	bl sub_0207C8C4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0207B95C ; =0x00007FFF
	ldr r2, _0207B960 ; =0x0000F3FF
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	mov r3, #4
	bl sub_02003178
	ldr r0, _0207B95C ; =0x00007FFF
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0
	mov r3, #3
	bl sub_0200872C
	ldr r0, _0207B968 ; =0x000005FC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B6F2:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207B706
	ldr r0, [r4, #0x30]
	bl sub_0207C8E0
	cmp r0, #0
	beq _0207B70A
_0207B706:
	bl _0207C010
_0207B70A:
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r3, r4, #0
	add r0, r4, #0
	add r3, #0x62
	add r0, #0x80
	ldrh r3, [r3]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x20]
	bl sub_020789F4
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x62
	add r0, #0x80
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, sp, #0x40
	mov r3, #1
	bl sub_020789BC
	ldr r0, [r4, #0x20]
	add r1, sp, #0x40
	bl sub_02007C10
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_02007B98
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x62
	add r1, #0x85
	add r2, #0x86
	ldrh r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl sub_0200590C
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B772:
	bl sub_0200598C
	cmp r0, #0
	bne _0207B878
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_020160F4
	cmp r0, #1
	bne _0207B878
	ldr r0, [r4, #0x20]
	bl sub_02007C24
	cmp r0, #0
	bne _0207B878
	add r2, r4, #0
	ldr r0, [r4, #0x28]
	mov r1, #5
	add r2, #0x62
	bl sub_02074B30
	ldr r0, [r4, #0x28]
	bl sub_0207803C
	ldr r0, [r4, #0x28]
	bl sub_0207418C
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B538
	ldr r1, _0207B96C ; =0x00000396
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x28
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B7EE:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207B878
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207B878
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x28]
	bl sub_0202736C
	ldr r0, [r4, #0x50]
	mov r1, #0xc
	bl sub_0202CF28
	ldr r0, [r4, #0x50]
	mov r1, #0x16
	bl sub_0202CFEC
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_02056A48
	ldr r0, [r4, #0x28]
	mov r1, #0x4d
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0207B852
	ldr r0, [r4, #0x28]
	mov r1, #0xb3
	mov r2, #0
	bl sub_02074B30
_0207B852:
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B862:
	add r1, r4, #0
	ldr r0, [r4, #0x28]
	add r1, #0x68
	add r2, sp, #0xc
	bl sub_0207727C
	cmp r0, #0
	beq _0207B882
	ldr r1, _0207B970 ; =0x0000FFFE
	cmp r0, r1
	bne _0207B87A
_0207B878:
	b _0207C010
_0207B87A:
	add r1, r1, #1
	cmp r0, r1
	beq _0207B88C
	b _0207B8A0
_0207B882:
	mov r0, #0x27
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B88C:
	add r0, sp, #0xc
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6c
	strh r1, [r0]
	mov r0, #0xe
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B8A0:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r2, sp, #0xc
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	add r0, r4, #0
	mov r1, #4
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	mov r0, #0x25
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207B8DC:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	ldr r1, _0207B974 ; =0x000004A9
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B920:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	ldr r1, _0207B978 ; =0x000004AA
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B956:
	ldr r1, _0207B97C ; =0x000004AB
	b _0207B980
	nop
_0207B95C: .word 0x00007FFF
_0207B960: .word 0x0000F3FF
_0207B964: .word 0x000005FB
_0207B968: .word 0x000005FC
_0207B96C: .word 0x00000396
_0207B970: .word 0x0000FFFE
_0207B974: .word 0x000004A9
_0207B978: .word 0x000004AA
_0207B97C: .word 0x000004AB
_0207B980:
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B9A4:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207B9CA
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207B9CC
_0207B9CA:
	b _0207C010
_0207B9CC:
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B9DC:
	ldr r0, [r4, #0x5c]
	ldr r1, _0207BD30 ; =0x020F0A30
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r2, #1
	mov r3, #8
	bl sub_02002100
	str r0, [r4, #0x40]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207B9FE:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x5c]
	bl sub_02002114
	cmp r0, #0
	beq _0207BA16
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0207BA46
	add sp, #0x90
	pop {r4, pc}
_0207BA16:
	add r0, r4, #0
	mov r1, #0x16
	add r0, #0x64
	strb r1, [r0]
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207BD34 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	add sp, #0x90
	pop {r4, pc}
_0207BA46:
	mov r0, #0x20
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BA50:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207BADC
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, [r4, #0]
	bl sub_0207C460
	ldr r0, [r4, #0x1c]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x3c]
	mov r2, #1
	str r1, [r0, #0]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x3c]
	str r1, [r0, #4]
	ldr r1, [r4, #0x3c]
	mov r0, #0
	strb r0, [r1, #0x11]
	ldr r1, [r4, #0x3c]
	strb r0, [r1, #0x14]
	ldr r1, [r4, #0x3c]
	strb r2, [r1, #0x13]
	add r1, r4, #0
	add r1, #0x6c
	ldrh r2, [r1]
	ldr r1, [r4, #0x3c]
	strh r2, [r1, #0x18]
	ldr r1, [r4, #0x3c]
	mov r2, #2
	strb r2, [r1, #0x12]
	ldr r1, [r4, #0x3c]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x3c]
	ldr r1, _0207BD38 ; =0x020F0A2C
	bl sub_0208D720
	add r0, r4, #0
	bl sub_0207C624
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BAD2:
	ldr r0, [r4, #0x38]
	bl sub_02006844
	cmp r0, #0
	bne _0207BADE
_0207BADC:
	b _0207C010
_0207BADE:
	ldr r0, [r4, #0x38]
	bl sub_02006814
	ldr r1, [r4, #0]
	add r0, r4, #0
	bl sub_0207C1CC
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	ldr r0, [r4, #0x1c]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x1c]
	bl sub_020089A0
	ldr r0, [r4, #0x20]
	bl sub_020089A0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207BD34 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_0200872C
	bl sub_02039734
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BB50:
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207BC64
	ldr r0, [r4, #0x3c]
	ldrb r1, [r0, #0x16]
	cmp r1, #4
	bne _0207BB78
	mov r0, #0x20
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BB78:
	add r0, r4, #0
	add r0, #0x6e
	strb r1, [r0]
	mov r0, #0x19
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BB88:
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B630
	ldr r1, _0207BD3C ; =0x000004AD
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BBBC:
	ldr r0, [r4, #0x5c]
	ldr r1, _0207BD30 ; =0x020F0A30
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r2, #1
	mov r3, #8
	bl sub_02002100
	str r0, [r4, #0x40]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BBDE:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x5c]
	bl sub_02002114
	cmp r0, #0
	beq _0207BBF6
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0207BC34
	add sp, #0x90
	pop {r4, pc}
_0207BBF6:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	ldr r1, _0207BD40 ; =0x000004AE
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	mov r0, #0x24
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BC34:
	mov r0, #0xe
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BC3E:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207BC64
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207BC66
_0207BC64:
	b _0207C010
_0207BC66:
	mov r0, #0xd
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BC70:
	ldr r1, _0207BD44 ; =0x000004AF
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BC96:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r1, r4, #0
	add r1, #0x6e
	ldrb r1, [r1]
	ldr r0, [r4, #0x28]
	mov r2, #0
	add r1, #0x36
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	mov r1, #0x4b
	add r0, r4, #0
	lsl r1, r1, #4
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BCE8:
	ldr r1, _0207BD48 ; =0x000004B1
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BD0E:
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200B630
	ldr r1, _0207BD4C ; =0x000004B2
	b _0207BD50
	; .align 2, 0
_0207BD30: .word 0x020F0A30
_0207BD34: .word 0x0000FFFF
_0207BD38: .word 0x020F0A2C
_0207BD3C: .word 0x000004AD
_0207BD40: .word 0x000004AE
_0207BD44: .word 0x000004AF
_0207BD48: .word 0x000004B1
_0207BD4C: .word 0x000004B2
_0207BD50:
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	add r2, r4, #0
	mov r1, #0
	add r0, #0x66
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x6e
	ldrb r1, [r1]
	ldr r0, [r4, #0x28]
	add r2, #0x66
	add r1, #0x3e
	bl sub_02074B30
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x6c
	add r2, #0x6e
	ldrh r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0x28]
	bl sub_02077230
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x66
	strb r1, [r0]
	mov r0, #0x25
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BD9A:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207BDD8
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BDB8:
	bl sub_020061E4
	cmp r0, #0
	bne _0207BDD8
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207BDDA
_0207BDD8:
	b _0207C010
_0207BDDA:
	mov r0, #0xd
	add r4, #0x64
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BDE4:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207C014 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BE18:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207BEE8
	ldr r0, [r4, #0x30]
	bl sub_0207C8F4
	add r0, r4, #0
	bl sub_0207C028
	mov r0, #1
	add r4, #0x67
	add sp, #0x90
	strb r0, [r4]
	pop {r4, pc}
_0207BE38:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207BEE8
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0x1c]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x1c]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #0xc
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #0xd
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	ldr r0, _0207C018 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207C01C ; =0x0000F3FF
	mov r1, #0xf
	bl sub_02003178
	ldr r0, _0207C018 ; =0x00007FFF
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_0200872C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x72
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0xff
	add r0, #0x74
	strb r2, [r0]
	add r0, r4, #0
	mov r2, #0xa0
	add r0, #0x75
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0x70
	strb r1, [r0]
	ldr r0, _0207C020 ; =0x00000475
	bl sub_020055D0
	ldr r0, [r4, #0x30]
	bl sub_0207C8F4
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BEDE:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	beq _0207BEEA
_0207BEE8:
	b _0207C010
_0207BEEA:
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r3, r4, #0
	add r0, r4, #0
	add r3, #0x60
	add r0, #0x80
	ldrh r3, [r3]
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x1c]
	bl sub_020789F4
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x60
	add r0, #0x80
	ldrh r2, [r2]
	ldr r0, [r0, #0]
	add r1, sp, #0x18
	mov r3, #1
	bl sub_020789BC
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x18
	bl sub_02007C10
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02007B98
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x60
	add r1, #0x84
	add r2, #0x86
	ldrh r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl sub_0200590C
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BF52:
	bl sub_0200598C
	cmp r0, #0
	bne _0207C010
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_020160F4
	cmp r0, #1
	bne _0207C010
	ldr r0, [r4, #0x1c]
	bl sub_02007C24
	cmp r0, #0
	bne _0207C010
	ldr r0, [r4, #0x28]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B5CC
	ldr r1, _0207C024 ; =0x00000397
	add r0, r4, #0
	bl sub_0207C584
	add r1, r4, #0
	add r1, #0x65
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207BFA6:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207C010
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	cmp r0, #0
	bne _0207C010
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _0207C014 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, #0x64
	add sp, #0x90
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0207C000:
	ldr r0, [r4, #0x14]
	bl sub_0200384C
	cmp r0, #0
	bne _0207C010
	mov r0, #1
	add r4, #0x67
	strb r0, [r4]
_0207C010:
	add sp, #0x90
	pop {r4, pc}
	; .align 2, 0
_0207C014: .word 0x0000FFFF
_0207C018: .word 0x00007FFF
_0207C01C: .word 0x0000F3FF
_0207C020: .word 0x00000475
_0207C024: .word 0x00000397
	thumb_func_end sub_0207B180

	thumb_func_start sub_0207C028
sub_0207C028: ; 0x0207C028
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #6
	bgt _0207C03C
	bne _0207C038
	b _0207C1BA
_0207C038:
	add sp, #0x20
	pop {r4, r5, r6, pc}
_0207C03C:
	sub r0, #0xd
	cmp r0, #6
	bhi _0207C074
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207C04E: ; jump table
	.short _0207C05C - _0207C04E - 2 ; case 0
	.short _0207C05C - _0207C04E - 2 ; case 1
	.short _0207C1C8 - _0207C04E - 2 ; case 2
	.short _0207C1C8 - _0207C04E - 2 ; case 3
	.short _0207C1C8 - _0207C04E - 2 ; case 4
	.short _0207C1BA - _0207C04E - 2 ; case 5
	.short _0207C1BA - _0207C04E - 2 ; case 6
_0207C05C:
	ldr r0, [r4, #0x4c]
	ldr r2, [r4, #0x5c]
	mov r1, #4
	bl sub_0207D730
	cmp r0, #0
	beq _0207C074
	ldr r0, [r4, #0x24]
	bl sub_0207A0F8
	cmp r0, #6
	blt _0207C076
_0207C074:
	b _0207C1C8
_0207C076:
	ldr r0, [r4, #0x5c]
	bl sub_02073C74
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_020775EC
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x9b
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0xb
	add r2, sp, #0
	bl sub_02074B30
	mov r1, #0x19
	str r1, [sp, #4]
	add r6, sp, #0
_0207C0C2:
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02074B30
	ldr r0, [sp, #4]
	add r1, r0, #1
	str r1, [sp, #4]
	cmp r1, #0x36
	blt _0207C0C2
	mov r1, #0x4e
	str r1, [sp, #4]
	add r6, sp, #0
_0207C0DA:
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02074B30
	ldr r0, [sp, #4]
	add r1, r0, #1
	str r1, [sp, #4]
	cmp r1, #0x6e
	blt _0207C0DA
	mov r1, #0x7b
	str r1, [sp, #4]
	add r6, sp, #0
_0207C0F2:
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02074B30
	ldr r0, [sp, #4]
	add r1, r0, #1
	str r1, [sp, #4]
	cmp r1, #0x90
	blt _0207C0F2
	add r0, r5, #0
	mov r1, #0xb3
	mov r2, #0
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0x4d
	add r2, sp, #0
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #0xa0
	add r2, sp, #0
	bl sub_02074B30
	ldr r0, [r4, #0x5c]
	bl sub_0202818C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xaa
	add r2, r6, #0
	bl sub_02074B30
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0xa2
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	add r1, sp, #8
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r5, #0
	mov r1, #0xab
	add r2, sp, #8
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207803C
	add r0, r5, #0
	bl sub_02075D6C
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x6f
	add r2, sp, #4
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0207A048
	ldr r0, [r4, #0x48]
	add r1, r5, #0
	bl sub_0202736C
	ldr r0, [r4, #0x50]
	mov r1, #0xc
	bl sub_0202CF28
	ldr r0, [r4, #0x50]
	mov r1, #0x16
	bl sub_0202CFEC
	add r0, r5, #0
	bl sub_02076B10
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_02056A48
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0x4c]
	ldr r3, [r4, #0x5c]
	mov r1, #4
	mov r2, #1
	bl sub_0207D60C
	add sp, #0x20
	pop {r4, r5, r6, pc}
_0207C1BA:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	mov r1, #6
	add r2, sp, #4
	bl sub_02074B30
_0207C1C8:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207C028

	thumb_func_start sub_0207C1CC
sub_0207C1CC: ; 0x0207C1CC
	push {r4, r5, r6, lr}
	sub sp, #0xb8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201FF00
	ldr r6, _0207C440 ; =0x020F0A64
	add r3, sp, #0x3c
	mov r2, #5
_0207C1DE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207C1DE
	add r0, sp, #0x3c
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	ldr r6, _0207C444 ; =0x020F0A38
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r6, _0207C448 ; =0x020F0A8C
	add r3, sp, #0x64
	mov r2, #0xa
_0207C23E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207C23E
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x64
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x80
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x9c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r1, _0207C44C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r6, _0207C450 ; =0x020F0A48
	add r3, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r0, [r5, #0x2c]
	bl sub_02027B50
	add r6, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x5c]
	mov r1, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0xa
	bl sub_0200E218
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	add r2, r4, #0
	str r0, [sp, #0xc]
	mov r0, #0x76
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, [r5, #0x5c]
	add r2, r4, #0
	str r0, [sp, #0xc]
	mov r0, #0x76
	mov r3, #3
	bl sub_02006E60
	mov r1, #0
	str r1, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	mov r1, #0x76
	mov r2, #8
	bl sub_02003050
	add r0, r6, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	mov r1, #0x26
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	mov r1, #0xe
	mov r2, #7
	bl sub_02003050
	ldr r0, [r5, #0x5c]
	mov r1, #2
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #1
	mov r3, #0
	bl sub_0200DA60
	bl sub_0200DAA0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	mov r1, #0x26
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	mov r1, #0xa
	str r0, [sp, #0xc]
	mov r0, #0xc
	add r2, r4, #0
	mov r3, #4
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0x5c]
	mov r1, #0xb
	str r0, [sp, #0xc]
	mov r0, #0xc
	add r2, r4, #0
	mov r3, #4
	bl sub_02006E60
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #0xc
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #0x5c]
	add r2, r1, #0
	bl sub_02003050
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r2, _0207C454 ; =0xFFFF1FFF
	add r3, r1, #0
	and r3, r2
	lsr r1, r0, #0xd
	orr r1, r3
	ldr r3, _0207C458 ; =0x04001000
	str r1, [r0, #0]
	ldr r1, [r3, #0]
	and r1, r2
	str r1, [r3, #0]
	add r3, r0, #0
	add r3, #0x48
	ldrh r4, [r3]
	mov r2, #0x3f
	mov r1, #0x1f
	bic r4, r2
	orr r1, r4
	strh r1, [r3]
	add r0, #0x4a
	ldrh r3, [r0]
	mov r1, #0x12
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x72
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x73
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x74
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0xa0
	add r0, #0x75
	strb r1, [r0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _0207C45C ; =sub_0207C520
	add r1, r5, #0
	bl sub_02017798
	add sp, #0xb8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207C440: .word 0x020F0A64
_0207C444: .word 0x020F0A38
_0207C448: .word 0x020F0A8C
_0207C44C: .word 0x04000008
_0207C450: .word 0x020F0A48
_0207C454: .word 0xFFFF1FFF
_0207C458: .word 0x04001000
_0207C45C: .word sub_0207C520
	thumb_func_end sub_0207C1CC

	thumb_func_start sub_0207C460
sub_0207C460: ; 0x0207C460
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207C460

	thumb_func_start sub_0207C498
sub_0207C498: ; 0x0207C498
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r1, [r4, #0x28]
	add r0, sp, #0x10
	mov r2, #2
	bl sub_02075EF4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	add r1, sp, #0x10
	mov r2, #0x80
	mov r3, #0x50
	bl sub_02007C34
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x5c]
	bl sub_02073C74
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_020775EC
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #5
	add r2, #0x62
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	add r0, sp, #0x10
	add r1, r5, #0
	mov r2, #2
	bl sub_02075EF4
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	add r1, sp, #0x10
	mov r2, #0x80
	mov r3, #0x50
	bl sub_02007C34
	str r0, [r4, #0x20]
	mov r1, #0xc
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x20]
	mov r1, #0xd
	mov r2, #0
	bl sub_02007DEC
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207C498

	thumb_func_start sub_0207C520
sub_0207C520: ; 0x0207C520
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x75
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x73
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x72
	ldrb r0, [r0]
	mov r3, #0xff
	lsl r3, r3, #8
	lsl r0, r0, #8
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x74
	lsl r1, r1, #8
	and r1, r3
	ldrb r0, [r0]
	and r5, r3
	orr r1, r2
	orr r5, r0
	ldr r0, _0207C578 ; =0x04000040
	strh r5, [r0]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x18]
	bl sub_02008A94
	bl sub_0201DCAC
	ldr r0, [r4, #0x14]
	bl sub_02003694
	ldr r0, [r4, #0]
	bl sub_0201C2B8
	ldr r3, _0207C57C ; =0x027E0000
	ldr r1, _0207C580 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, r4, r5, pc}
	nop
_0207C578: .word 0x04000040
_0207C57C: .word 0x027E0000
_0207C580: .word 0x00003FF8
	thumb_func_end sub_0207C520

	thumb_func_start sub_0207C584
sub_0207C584: ; 0x0207C584
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #4]
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r0, [r4, #0x2c]
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0207C5C8 ; =sub_0207C5CC
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x10]
	bl sub_0201D738
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0207C5C8: .word sub_0207C5CC
	thumb_func_end sub_0207C584

	thumb_func_start sub_0207C5CC
sub_0207C5CC: ; 0x0207C5CC
	push {r4, lr}
	mov r4, #0
	cmp r1, #5
	bhi _0207C612
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207C5E0: ; jump table
	.short _0207C612 - _0207C5E0 - 2 ; case 0
	.short _0207C5EC - _0207C5E0 - 2 ; case 1
	.short _0207C5F4 - _0207C5E0 - 2 ; case 2
	.short _0207C5FC - _0207C5E0 - 2 ; case 3
	.short _0207C604 - _0207C5E0 - 2 ; case 4
	.short _0207C60C - _0207C5E0 - 2 ; case 5
_0207C5EC:
	bl sub_020057E0
	add r4, r0, #0
	b _0207C612
_0207C5F4:
	bl sub_020061E4
	add r4, r0, #0
	b _0207C612
_0207C5FC:
	ldr r0, _0207C618 ; =0x00000484
	bl sub_02006150
	b _0207C612
_0207C604:
	ldr r0, _0207C61C ; =0x000005E6
	bl sub_02005748
	b _0207C612
_0207C60C:
	ldr r0, _0207C620 ; =0x00000483
	bl sub_02006150
_0207C612:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0207C618: .word 0x00000484
_0207C61C: .word 0x000005E6
_0207C620: .word 0x00000483
	thumb_func_end sub_0207C5CC

	thumb_func_start sub_0207C624
sub_0207C624: ; 0x0207C624
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0207C638 ; =0x020F410C
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x5c]
	bl sub_020067E8
	str r0, [r4, #0x38]
	pop {r4, pc}
	nop
_0207C638: .word 0x020F410C
	thumb_func_end sub_0207C624

	.rodata


	.global Unk_020F0A2C
Unk_020F0A2C: ; 0x020F0A2C
	.incbin "incbin/arm9_rodata.bin", 0xBDEC, 0xBDF0 - 0xBDEC

	.global Unk_020F0A30
Unk_020F0A30: ; 0x020F0A30
	.incbin "incbin/arm9_rodata.bin", 0xBDF0, 0xBDF8 - 0xBDF0

	.global Unk_020F0A38
Unk_020F0A38: ; 0x020F0A38
	.incbin "incbin/arm9_rodata.bin", 0xBDF8, 0xBE08 - 0xBDF8

	.global Unk_020F0A48
Unk_020F0A48: ; 0x020F0A48
	.incbin "incbin/arm9_rodata.bin", 0xBE08, 0xBE24 - 0xBE08

	.global Unk_020F0A64
Unk_020F0A64: ; 0x020F0A64
	.incbin "incbin/arm9_rodata.bin", 0xBE24, 0xBE4C - 0xBE24

	.global Unk_020F0A8C
Unk_020F0A8C: ; 0x020F0A8C
	.incbin "incbin/arm9_rodata.bin", 0xBE4C, 0x54

