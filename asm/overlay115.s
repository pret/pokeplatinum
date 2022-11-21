	.include "macros/function.inc"


	.text

	thumb_func_start ov115_02260440
ov115_02260440: @ 0x02260440
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02006840
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x63
	lsls r2, r0, #0x11
	bl FUN_02017FC8
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x63
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0x88
	adds r4, r0, #0
	blx FUN_020D5124
	str r5, [sp]
	adds r1, r5, #0
	adds r1, #0x39
	ldr r2, [r5, #0x34]
	adds r5, #0x38
	adds r0, r4, #0
	ldrb r1, [r1]
	ldrb r3, [r5]
	adds r0, #8
	bl FUN_0225C700
	adds r0, r4, #0
	movs r1, #0x63
	bl ov115_02260ADC
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02260440

	thumb_func_start ov115_0226048C
ov115_0226048C: @ 0x0226048C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_02006840
	adds r6, r0, #0
	adds r0, r4, #0
	adds r0, #8
	bl FUN_0225CA54
	cmp r0, #1
	bne _02260500
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _022604BE
	cmp r0, #1
	beq _022604D8
	cmp r0, #2
	beq _022604EC
	b _022604FA
_022604BE:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022604CA
	bl FUN_0200F2C0
_022604CA:
	movs r0, #0
	bl FUN_0200F370
	ldr r0, [r4, #0x78]
	adds r0, r0, #1
	str r0, [r4, #0x78]
	b _022604FA
_022604D8:
	adds r0, r4, #0
	adds r0, #8
	bl FUN_0225CA98
	cmp r0, #1
	bne _022604FA
	ldr r0, [r4, #0x78]
	adds r0, r0, #1
	str r0, [r4, #0x78]
	b _022604FA
_022604EC:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov115_02260B44
	add sp, #0x28
	movs r0, #1
	pop {r4, r5, r6, pc}
_022604FA:
	add sp, #0x28
	movs r0, #0
	pop {r4, r5, r6, pc}
_02260500:
	ldr r0, [r5]
	cmp r0, #0xf
	bhi _02260574
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02260512: @ jump table
	.2byte _02260532 - _02260512 - 2 @ case 0
	.2byte _02260546 - _02260512 - 2 @ case 1
	.2byte _0226056A - _02260512 - 2 @ case 2
	.2byte _02260674 - _02260512 - 2 @ case 3
	.2byte _0226069E - _02260512 - 2 @ case 4
	.2byte _022606D6 - _02260512 - 2 @ case 5
	.2byte _022606EC - _02260512 - 2 @ case 6
	.2byte _02260700 - _02260512 - 2 @ case 7
	.2byte _02260782 - _02260512 - 2 @ case 8
	.2byte _022607C4 - _02260512 - 2 @ case 9
	.2byte _022607DC - _02260512 - 2 @ case 10
	.2byte _022607F0 - _02260512 - 2 @ case 11
	.2byte _02260818 - _02260512 - 2 @ case 12
	.2byte _02260844 - _02260512 - 2 @ case 13
	.2byte _02260894 - _02260512 - 2 @ case 14
	.2byte _022608B6 - _02260512 - 2 @ case 15
_02260532:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0x63
	bl FUN_0225C814
	str r0, [r4]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_02260546:
	ldr r0, [r4]
	bl FUN_0225C8BC
	cmp r0, #1
	bne _02260574
	ldr r0, [r4]
	bl FUN_0225C8CC
	str r0, [r4, #0x70]
	ldr r0, [r4]
	bl FUN_0225C838
	movs r0, #0
	str r0, [r4]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_0226056A:
	ldr r0, _02260838 @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #1
	tst r0, r1
	beq _02260576
_02260574:
	b _022608DE
_02260576:
	ldr r0, _0226083C @ =ov115_02260A50
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r2, #0
	str r2, [r4, #0x38]
	str r2, [r4, #0x3c]
	adds r0, r4, #0
	adds r1, r4, #0
	str r2, [r4, #0x40]
	adds r0, #0x84
	strb r2, [r0]
	adds r1, #0x84
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	movs r0, #0x20
	movs r1, #0x63
	bl FUN_0201DBEC
	adds r0, r4, #0
	bl ov115_02265A24
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x80
	str r1, [r0]
	bl FUN_02032E64
	str r0, [r4, #0x74]
	cmp r0, #1
	bhi _022605BE
	bl FUN_02022974
_022605BE:
	bl FUN_0203608C
	adds r1, r4, #0
	adds r1, #0x44
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x44
	adds r0, r4, #0
	ldrh r1, [r1]
	adds r0, #8
	bl FUN_0225C76C
	adds r1, r4, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _022605FC
	movs r1, #0x4b
	adds r3, r4, #0
	ldr r2, [r4, #0x74]
	movs r0, #0x63
	lsls r1, r1, #4
	adds r3, #0x48
	bl ov115_02260BBC
	str r0, [r4, #0x30]
	movs r0, #1
	str r0, [r4, #0x7c]
_022605FC:
	adds r0, r4, #0
	adds r0, #0x48
	str r0, [sp]
	adds r3, r4, #0
	adds r3, #0x46
	movs r1, #0x4b
	ldrh r3, [r3]
	ldr r2, [r4, #0x74]
	movs r0, #0x63
	lsls r1, r1, #4
	bl ov115_02260CEC
	str r0, [r4, #0x34]
	bl FUN_02039734
	adds r6, #0x38
	ldrb r0, [r6]
	cmp r0, #0
	beq _02260628
	movs r0, #0x63
	bl FUN_021D1E74
_02260628:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _02260638
	cmp r0, #1
	beq _02260642
	cmp r0, #2
	beq _0226064E
	b _0226065A
_02260638:
	movs r1, #0
	add r0, sp, #0xc
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	b _0226065E
_02260642:
	movs r1, #0
	add r0, sp, #0xc
	strb r1, [r0, #8]
	movs r1, #1
	strb r1, [r0, #9]
	b _0226065E
_0226064E:
	movs r1, #1
	add r0, sp, #0xc
	strb r1, [r0, #8]
	movs r1, #0
	strb r1, [r0, #9]
	b _0226065E
_0226065A:
	bl FUN_02022974
_0226065E:
	ldr r0, [r4, #0x34]
	add r1, sp, #0x14
	bl ov115_022612BC
	movs r0, #1
	bl FUN_020364F0
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_02260674:
	movs r0, #1
	bl FUN_02036540
	cmp r0, #0
	beq _022606C4
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x63
	movs r1, #0x1b
	str r0, [sp, #8]
	ldr r3, _02260840 @ =0x0000FFFF
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_0226069E:
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl ov115_02260DAC
	bl FUN_0200F2AC
	cmp r0, #0
	beq _022606C4
	adds r4, #0x44
	ldrh r0, [r4]
	cmp r0, #0
	bne _022606CE
	movs r1, #0
	movs r0, #0x16
	adds r2, r1, #0
	bl FUN_020359DC
	cmp r0, #0
	bne _022606C6
_022606C4:
	b _022608DE
_022606C6:
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_022606CE:
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_022606D6:
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl ov115_02260DAC
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _022607D2
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_022606EC:
	ldr r0, [r4, #0x34]
	movs r1, #1
	bl ov115_02260DAC
	cmp r0, #0
	bne _022607D2
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_02260700:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _02260724
	ldr r0, [r4, #0x34]
	bl ov115_02261274
	str r0, [sp, #0x10]
	movs r0, #0x19
	add r1, sp, #0x10
	movs r2, #4
	bl FUN_020359DC
	cmp r0, #0
	beq _022607D2
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_02260724:
	adds r0, r4, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _0226076E
	ldr r0, [r4, #0x30]
	bl ov115_02260BEC
	adds r5, r0, #0
	ldr r0, [r4, #0x30]
	bl ov115_02260C54
	cmp r0, #0
	beq _0226075E
	ldr r0, [r4, #0x30]
	bl ov115_02260C64
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x1b
	add r2, sp, #0xc
	movs r3, #4
	bl ov115_02260BA0
	cmp r0, #1
	bne _0226075E
	ldr r0, [r4, #0x30]
	bl ov115_02260C5C
_0226075E:
	cmp r5, #0
	bne _0226076E
	movs r2, #0
	adds r0, r4, #0
	movs r1, #0x17
	adds r3, r2, #0
	bl ov115_02260BA0
_0226076E:
	ldr r0, [r4, #0x34]
	bl ov115_022610D4
	adds r0, r4, #0
	bl ov115_02260A5C
	adds r0, r4, #0
	bl ov115_02260A90
	b _022608DE
_02260782:
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl ov115_02260F70
	adds r0, r4, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _022607BC
	ldr r0, [r4, #0x30]
	bl ov115_02260CA4
	cmp r0, #1
	bne _022607D2
	ldr r0, [r4, #0x30]
	add r1, sp, #0x18
	bl ov115_02260CBC
	movs r0, #0x1a
	add r1, sp, #0x18
	movs r2, #0x10
	bl FUN_020359DC
	cmp r0, #0
	beq _022607D2
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_022607BC:
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_022607C4:
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl ov115_02260F70
	ldr r0, [r4, #0x40]
	cmp r0, #1
	beq _022607D4
_022607D2:
	b _022608DE
_022607D4:
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_022607DC:
	ldr r0, [r4, #0x34]
	movs r1, #1
	bl ov115_02260F70
	cmp r0, #0
	bne _022608DE
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_022607F0:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x63
	movs r1, #0x1a
	str r0, [sp, #8]
	ldr r3, _02260840 @ =0x0000FFFF
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, [r4, #0x34]
	movs r1, #1
	bl ov115_02260F70
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_02260818:
	ldr r0, [r4, #0x34]
	movs r1, #1
	bl ov115_02260F70
	bl FUN_0200F2AC
	cmp r0, #0
	beq _022608DE
	movs r0, #3
	bl FUN_020364F0
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
	nop
_02260838: .4byte 0x021BF67C
_0226083C: .4byte ov115_02260A50
_02260840: .4byte 0x0000FFFF
_02260844:
	movs r0, #3
	bl FUN_02036540
	cmp r0, #0
	bne _02260854
	add sp, #0x28
	movs r0, #0
	pop {r4, r5, r6, pc}
_02260854:
	adds r6, #0x38
	ldrb r0, [r6]
	cmp r0, #0
	beq _02260860
	bl FUN_021D1F18
_02260860:
	adds r0, r4, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02260874
	ldr r0, [r4, #0x30]
	bl ov115_02260BE4
	movs r0, #0
	str r0, [r4, #0x30]
_02260874:
	ldr r0, [r4, #0x34]
	bl ov115_02260D78
	movs r0, #0
	str r0, [r4, #0x34]
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201DC3C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_02260894:
	ldrb r1, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x18
	bl FUN_0225C9A8
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #8
	adds r1, #0x18
	movs r2, #0x63
	bl FUN_0225C8E0
	str r0, [r4, #4]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _022608DE
_022608B6:
	ldr r0, [r4, #4]
	bl FUN_0225C9A0
	cmp r0, #1
	bne _022608DE
	ldr r0, [r4, #4]
	bl FUN_0225C9A4
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0225C904
	movs r0, #0
	str r0, [r4, #4]
	cmp r6, #0
	bne _022608DC
	add sp, #0x28
	movs r0, #1
	pop {r4, r5, r6, pc}
_022608DC:
	str r0, [r5]
_022608DE:
	movs r0, #0
	add sp, #0x28
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_0226048C

	thumb_func_start ov115_022608E4
ov115_022608E4: @ 0x022608E4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0200682C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	ldr r0, [r4]
	cmp r0, #0
	beq _02260902
	cmp r0, #1
	beq _0226093C
	b _02260958
_02260902:
	adds r0, r6, #0
	adds r0, #8
	bl FUN_0225CA54
	adds r7, r0, #0
	adds r0, r6, #0
	bl ov115_02260B30
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x63
	bl FUN_0201807C
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	cmp r7, #1
	bne _0226092E
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226092E:
	movs r0, #4
	bl FUN_020364F0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _02260958
_0226093C:
	movs r0, #4
	bl FUN_02036540
	cmp r0, #0
	bne _02260954
	bl FUN_02035E18
	adds r4, r0, #0
	bl FUN_02032E64
	cmp r4, r0
	bge _02260958
_02260954:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02260958:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov115_022608E4

	thumb_func_start ov115_0226095C
ov115_0226095C: @ 0x0226095C
	movs r1, #1
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0
	thumb_func_end ov115_0226095C

	thumb_func_start ov115_02260964
ov115_02260964: @ 0x02260964
	movs r1, #1
	str r1, [r0, #0x3c]
	bx lr
	.align 2, 0
	thumb_func_end ov115_02260964

	thumb_func_start ov115_0226096C
ov115_0226096C: @ 0x0226096C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #8
	adds r1, r2, #0
	bl FUN_0225C76C
	adds r2, r0, #0
	ldr r0, [r5, #0x30]
	adds r1, r4, #0
	bl ov115_02260C6C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_0226096C

	thumb_func_start ov115_02260988
ov115_02260988: @ 0x02260988
	ldr r3, _02260990 @ =ov115_022611E4
	ldr r0, [r0, #0x34]
	bx r3
	nop
_02260990: .4byte ov115_022611E4
	thumb_func_end ov115_02260988

	thumb_func_start ov115_02260994
ov115_02260994: @ 0x02260994
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #8
	adds r1, r2, #0
	bl FUN_0225C76C
	adds r2, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _022609B0
	adds r1, r4, #0
	bl ov115_02260C7C
_022609B0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02260994

	thumb_func_start ov115_022609B4
ov115_022609B4: @ 0x022609B4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	adds r4, r1, #0
	bl ov115_02261260
	movs r0, #1
	str r0, [r5, #0x40]
	movs r1, #0
_022609C6:
	ldr r0, [r4]
	adds r1, r1, #1
	str r0, [r5, #0x18]
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r1, #4
	blt _022609C6
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_022609B4

	thumb_func_start ov115_022609D8
ov115_022609D8: @ 0x022609D8
	ldr r3, _022609E0 @ =ov115_02261278
	ldr r0, [r0, #0x34]
	bx r3
	nop
_022609E0: .4byte ov115_02261278
	thumb_func_end ov115_022609D8

	thumb_func_start ov115_022609E4
ov115_022609E4: @ 0x022609E4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #8
	adds r1, r2, #0
	bl FUN_0225C76C
	adds r4, r0, #0
	ldr r0, [r5, #0x34]
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov115_022612AC
	adds r1, r5, #0
	adds r1, #0x84
	ldrb r0, [r1, r4]
	adds r0, r0, #1
	strb r0, [r1, r4]
	adds r0, r5, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02260A46
	ldr r3, [r5, #0x74]
	movs r1, #1
	movs r0, #0
	cmp r3, #0
	bls _02260A32
	ldr r2, [r5, #0x7c]
	adds r6, r0, #0
_02260A20:
	adds r4, r5, r0
	adds r4, #0x84
	ldrb r4, [r4]
	cmp r2, r4
	bls _02260A2C
	adds r1, r6, #0
_02260A2C:
	adds r0, r0, #1
	cmp r0, r3
	blo _02260A20
_02260A32:
	cmp r1, #1
	bne _02260A46
	ldr r0, [r5, #0x7c]
	movs r1, #0
	adds r0, r0, #1
	str r0, [r5, #0x7c]
	movs r0, #0x1d
	adds r2, r1, #0
	bl FUN_020359DC
_02260A46:
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_022609E4

	thumb_func_start ov115_02260A48
ov115_02260A48: @ 0x02260A48
	movs r1, #1
	adds r0, #0x80
	str r1, [r0]
	bx lr
	thumb_func_end ov115_02260A48

	thumb_func_start ov115_02260A50
ov115_02260A50: @ 0x02260A50
	ldr r3, _02260A58 @ =ov115_022611C8
	ldr r0, [r0, #0x34]
	bx r3
	nop
_02260A58: .4byte ov115_022611C8
	thumb_func_end ov115_02260A50

	thumb_func_start ov115_02260A5C
ov115_02260A5C: @ 0x02260A5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	add r1, sp, #0
	bl ov115_02261224
	cmp r0, #1
	bne _02260A8C
	movs r6, #0x18
	add r4, sp, #0
	movs r7, #0x14
_02260A74:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl ov115_02260BA0
	ldr r0, [r5, #0x34]
	adds r1, r4, #0
	bl ov115_02261224
	cmp r0, #1
	beq _02260A74
_02260A8C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov115_02260A5C

	thumb_func_start ov115_02260A90
ov115_02260A90: @ 0x02260A90
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ov115_022611E0
	cmp r0, #0
	beq _02260AD6
	movs r1, #0x1e
	blx FUN_020E1F6C
	cmp r1, #0
	bne _02260AD6
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _02260AD6
	ldr r0, [r4, #0x34]
	bl ov115_02261274
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x1c
	add r2, sp, #0
	movs r3, #4
	bl ov115_02260BA0
	cmp r0, #0
	bne _02260AD0
	bl FUN_02022974
_02260AD0:
	movs r0, #0
	adds r4, #0x80
	str r0, [r4]
_02260AD6:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov115_02260A90

	thumb_func_start ov115_02260ADC
ov115_02260ADC: @ 0x02260ADC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r3, r1, #0
	movs r1, #0
	adds r7, r0, #0
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	movs r0, #0xbd
	adds r2, r1, #0
	bl FUN_02007068
	str r0, [r7, #0x4c]
	ldr r0, [sp, #8]
	movs r1, #0x18
	blx FUN_020E2178
	str r0, [r7, #0x48]
	ldrb r0, [r7, #0x10]
	movs r4, #0
	cmp r0, #0
	ble _02260B2C
	adds r6, r7, #0
	adds r5, r7, #0
	adds r6, #8
_02260B0E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0225C7CC
	str r0, [r5, #0x50]
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0225C7A4
	str r0, [r5, #0x60]
	ldrb r0, [r7, #0x10]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _02260B0E
_02260B2C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov115_02260ADC

	thumb_func_start ov115_02260B30
ov115_02260B30: @ 0x02260B30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x48]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_02260B30

	thumb_func_start ov115_02260B44
ov115_02260B44: @ 0x02260B44
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	ldr r0, [r5]
	cmp r0, #0
	beq _02260B64
	bl FUN_0225C838
	movs r0, #0
	str r0, [r5]
_02260B64:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _02260B84
	adds r0, r5, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02260B7A
	ldr r0, [r5, #0x30]
	bl ov115_02260BE4
_02260B7A:
	ldr r0, [r5, #0x34]
	bl ov115_02260D78
	bl FUN_0201DC3C
_02260B84:
	adds r4, #0x38
	ldrb r0, [r4]
	cmp r0, #0
	beq _02260B90
	bl FUN_021D1F18
_02260B90:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02260B9E
	bl FUN_0225C904
	movs r0, #0
	str r0, [r5, #4]
_02260B9E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov115_02260B44

	thumb_func_start ov115_02260BA0
ov115_02260BA0: @ 0x02260BA0
	push {r3, lr}
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	bne _02260BAE
	movs r0, #0
	pop {r3, pc}
_02260BAE:
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	bl FUN_020359DC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov115_02260BA0

	thumb_func_start ov115_02260BBC
ov115_02260BBC: @ 0x02260BBC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x38
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0x38
	blx FUN_020D5124
	str r5, [r4]
	str r6, [r4, #8]
	str r7, [r4, #0x30]
	movs r0, #1
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_02260BBC

	thumb_func_start ov115_02260BE4
ov115_02260BE4: @ 0x02260BE4
	ldr r3, _02260BE8 @ =FUN_020181C4
	bx r3
	.align 2, 0
_02260BE8: .4byte FUN_020181C4
	thumb_func_end ov115_02260BE4

	thumb_func_start ov115_02260BEC
ov115_02260BEC: @ 0x02260BEC
	push {r4, r5, r6, r7}
	ldr r2, [r0]
	cmp r2, #0
	ble _02260BFE
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _02260BFE
	subs r1, r2, #1
	str r1, [r0]
_02260BFE:
	ldr r1, [r0]
	cmp r1, #0
	bgt _02260C0A
	movs r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02260C0A:
	adds r1, r0, #0
	adds r1, #0x36
	ldrb r4, [r1]
	ldr r5, [r0, #0x30]
	ldr r2, [r5]
	adds r1, r4, #0
	adds r3, r4, #0
	cmp r4, r2
	bhs _02260C36
	ldr r6, [r5, #4]
	movs r5, #0x18
	muls r5, r4, r5
	ldrh r7, [r0, #0x34]
	adds r6, r6, r5
_02260C26:
	ldr r5, [r6]
	cmp r5, r7
	bge _02260C36
	adds r1, r1, #1
	adds r6, #0x18
	adds r3, r1, #0
	cmp r1, r2
	blo _02260C26
_02260C36:
	cmp r3, r2
	bne _02260C3C
	subs r1, r1, #1
_02260C3C:
	cmp r1, r4
	beq _02260C4C
	adds r2, r0, #0
	adds r2, #0x36
	strb r1, [r2]
	movs r1, #1
	adds r0, #0x37
	strb r1, [r0]
_02260C4C:
	movs r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov115_02260BEC

	thumb_func_start ov115_02260C54
ov115_02260C54: @ 0x02260C54
	adds r0, #0x37
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov115_02260C54

	thumb_func_start ov115_02260C5C
ov115_02260C5C: @ 0x02260C5C
	movs r1, #0
	adds r0, #0x37
	strb r1, [r0]
	bx lr
	thumb_func_end ov115_02260C5C

	thumb_func_start ov115_02260C64
ov115_02260C64: @ 0x02260C64
	adds r0, #0x36
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov115_02260C64

	thumb_func_start ov115_02260C6C
ov115_02260C6C: @ 0x02260C6C
	ldrh r1, [r1, #2]
	cmp r1, #0
	beq _02260C78
	ldrh r1, [r0, #0x34]
	adds r1, r1, #1
	strh r1, [r0, #0x34]
_02260C78:
	bx lr
	.align 2, 0
	thumb_func_end ov115_02260C6C

	thumb_func_start ov115_02260C7C
ov115_02260C7C: @ 0x02260C7C
	push {r3, r4}
	ldr r3, _02260CA0 @ =0x0001869F
	cmp r1, r3
	bls _02260C86
	adds r1, r3, #0
_02260C86:
	movs r3, #1
	lsls r3, r2
	ldr r4, [r0, #0x1c]
	tst r4, r3
	bne _02260C9C
	lsls r2, r2, #2
	adds r2, r0, r2
	str r1, [r2, #0xc]
	ldr r1, [r0, #0x1c]
	orrs r1, r3
	str r1, [r0, #0x1c]
_02260C9C:
	pop {r3, r4}
	bx lr
	.align 2, 0
_02260CA0: .4byte 0x0001869F
	thumb_func_end ov115_02260C7C

	thumb_func_start ov115_02260CA4
ov115_02260CA4: @ 0x02260CA4
	push {r4, lr}
	adds r4, r0, #0
	bl ov115_02260CCC
	ldr r1, [r4, #8]
	cmp r0, r1
	blo _02260CB6
	movs r0, #1
	pop {r4, pc}
_02260CB6:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_02260CA4

	thumb_func_start ov115_02260CBC
ov115_02260CBC: @ 0x02260CBC
	adds r2, r0, #0
	adds r3, r1, #0
	adds r2, #0xc
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	bx lr
	thumb_func_end ov115_02260CBC

	thumb_func_start ov115_02260CCC
ov115_02260CCC: @ 0x02260CCC
	push {r3, r4}
	movs r3, #0
	ldr r4, [r0, #0x1c]
	adds r2, r3, #0
	movs r0, #1
_02260CD6:
	adds r1, r0, #0
	lsls r1, r2
	tst r1, r4
	beq _02260CE0
	adds r3, r3, #1
_02260CE0:
	adds r2, r2, #1
	cmp r2, #4
	blt _02260CD6
	adds r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov115_02260CCC

	thumb_func_start ov115_02260CEC
ov115_02260CEC: @ 0x02260CEC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r1, _02260D5C @ =0x000087E8
	adds r5, r0, #0
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	ldr r2, _02260D5C @ =0x000087E8
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, _02260D60 @ =0x0000877C
	str r1, [r4, r0]
	ldr r1, _02260D64 @ =0x000019CC
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov115_02261B34
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov115_022633FC
	ldr r0, _02260D68 @ =0x0000878C
	ldr r1, _02260D6C @ =0x00001AB4
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r5, #0
	bl ov115_02262FB4
	ldr r0, _02260D70 @ =0x000087CC
	adds r0, r4, r0
	bl ov115_0226327C
	ldr r0, _02260D74 @ =0x022666C0
	movs r1, #8
	movs r2, #4
	bl FUN_0201E3F4
	cmp r0, #1
	beq _02260D56
	bl FUN_02022974
_02260D56:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260D5C: .4byte 0x000087E8
_02260D60: .4byte 0x0000877C
_02260D64: .4byte 0x000019CC
_02260D68: .4byte 0x0000878C
_02260D6C: .4byte 0x00001AB4
_02260D70: .4byte 0x000087CC
_02260D74: .4byte 0x022666C0
	thumb_func_end ov115_02260CEC

	thumb_func_start ov115_02260D78
ov115_02260D78: @ 0x02260D78
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201E530
	cmp r0, #1
	beq _02260D88
	bl FUN_02022974
_02260D88:
	ldr r0, _02260DA4 @ =0x0000878C
	ldr r1, _02260DA8 @ =0x00001AB4
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_022630DC
	adds r0, r4, #0
	bl ov115_02263560
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	nop
_02260DA4: .4byte 0x0000878C
_02260DA8: .4byte 0x00001AB4
	thumb_func_end ov115_02260D78

	thumb_func_start ov115_02260DAC
ov115_02260DAC: @ 0x02260DAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _02260F4C @ =0x00001F38
	adds r6, r1, #0
	ldr r0, [r4, r0]
	movs r5, #1
	cmp r0, #4
	blo _02260DDE
	ldr r0, _02260F50 @ =0x00008785
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02260DCA
	adds r1, r5, #0
	subs r1, #0x79
	b _02260DCC
_02260DCA:
	movs r1, #0x78
_02260DCC:
	ldr r2, _02260F54 @ =0x000019CC
	adds r0, r4, r2
	adds r2, r2, #2
	ldrh r2, [r4, r2]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl ov115_02261C48
_02260DDE:
	ldr r1, _02260F58 @ =0x00001AB4
	adds r0, r4, r1
	subs r1, #0xe8
	adds r1, r4, r1
	bl ov115_02261AB8
	ldr r0, _02260F5C @ =0x00001F74
	ldr r1, _02260F54 @ =0x000019CC
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_022640EC
	ldr r0, _02260F5C @ =0x00001F74
	ldr r1, _02260F54 @ =0x000019CC
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02264110
	ldr r0, _02260F4C @ =0x00001F38
	ldr r1, [r4, r0]
	cmp r1, #8
	bls _02260E0C
	b _02260F2E
_02260E0C:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02260E18: @ jump table
	.2byte _02260E2A - _02260E18 - 2 @ case 0
	.2byte _02260E3C - _02260E18 - 2 @ case 1
	.2byte _02260E5A - _02260E18 - 2 @ case 2
	.2byte _02260E74 - _02260E18 - 2 @ case 3
	.2byte _02260ECA - _02260E18 - 2 @ case 4
	.2byte _02260ED4 - _02260E18 - 2 @ case 5
	.2byte _02260EEC - _02260E18 - 2 @ case 6
	.2byte _02260F02 - _02260E18 - 2 @ case 7
	.2byte _02260F18 - _02260E18 - 2 @ case 8
_02260E2A:
	ldr r0, _02260F60 @ =0x0000878C
	adds r0, r4, r0
	bl ov115_02263130
	ldr r0, _02260F4C @ =0x00001F38
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _02260F2E
_02260E3C:
	ldr r0, _02260F60 @ =0x0000878C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov115_02263150
	cmp r0, #1
	bne _02260F2E
	ldr r0, _02260F4C @ =0x00001F38
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	movs r0, #2
	bl FUN_020364F0
	b _02260F2E
_02260E5A:
	movs r0, #2
	bl FUN_02036540
	cmp r0, #0
	beq _02260F2E
	ldr r0, _02260F4C @ =0x00001F38
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	movs r1, #0x41
	adds r0, #8
	str r1, [r4, r0]
	b _02260F2E
_02260E74:
	adds r1, r0, #0
	adds r1, #8
	ldr r1, [r4, r1]
	subs r2, r1, #1
	adds r1, r0, #0
	adds r1, #8
	str r2, [r4, r1]
	adds r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0x32
	bne _02260E90
	ldr r0, _02260F64 @ =0x0000061A
	bl FUN_02005748
_02260E90:
	movs r0, #0x7d
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0x14
	bne _02260EA0
	ldr r0, _02260F68 @ =0x0000063E
	bl FUN_02005748
_02260EA0:
	ldr r0, _02260F5C @ =0x00001F74
	movs r1, #1
	adds r0, r4, r0
	lsls r1, r1, #0xc
	bl ov115_02264214
	movs r0, #0x7d
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02260F2E
	ldr r1, _02260F58 @ =0x00001AB4
	subs r0, #8
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02261A74
	ldr r0, _02260F4C @ =0x00001F38
	movs r1, #4
	str r1, [r4, r0]
	b _02260F2E
_02260ECA:
	cmp r6, #1
	bne _02260F2E
	movs r1, #5
	str r1, [r4, r0]
	b _02260F2E
_02260ED4:
	ldr r1, _02260F58 @ =0x00001AB4
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02261A10
	ldr r0, _02260F6C @ =0x000005DD
	bl FUN_02005748
	ldr r0, _02260F4C @ =0x00001F38
	movs r1, #6
	str r1, [r4, r0]
	b _02260F2E
_02260EEC:
	ldr r1, _02260F58 @ =0x00001AB4
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02261A3C
	cmp r0, #0
	bne _02260F2E
	ldr r0, _02260F4C @ =0x00001F38
	movs r1, #7
	str r1, [r4, r0]
	b _02260F2E
_02260F02:
	ldr r1, _02260F58 @ =0x00001AB4
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02261AA4
	cmp r0, #0
	bne _02260F2E
	ldr r0, _02260F4C @ =0x00001F38
	movs r1, #8
	str r1, [r4, r0]
	b _02260F2E
_02260F18:
	ldr r1, _02260F58 @ =0x00001AB4
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02261A54
	ldr r0, _02260F54 @ =0x000019CC
	movs r1, #1
	adds r0, r4, r0
	bl ov115_02261C18
	movs r5, #0
_02260F2E:
	ldr r0, _02260F5C @ =0x00001F74
	ldr r1, _02260F54 @ =0x000019CC
	ldr r2, [r4]
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_022640A4
	ldr r1, _02260F58 @ =0x00001AB4
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov115_0226369C
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_02260F4C: .4byte 0x00001F38
_02260F50: .4byte 0x00008785
_02260F54: .4byte 0x000019CC
_02260F58: .4byte 0x00001AB4
_02260F5C: .4byte 0x00001F74
_02260F60: .4byte 0x0000878C
_02260F64: .4byte 0x0000061A
_02260F68: .4byte 0x0000063E
_02260F6C: .4byte 0x000005DD
	thumb_func_end ov115_02260DAC

	thumb_func_start ov115_02260F70
ov115_02260F70: @ 0x02260F70
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r1, _022610B0 @ =0x00001F54
	adds r4, r0, #0
	ldr r2, [r4, r1]
	movs r6, #1
	cmp r2, #3
	bhi _02261050
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_02260F8C: @ jump table
	.2byte _02260F94 - _02260F8C - 2 @ case 0
	.2byte _02260FDA - _02260F8C - 2 @ case 1
	.2byte _02261036 - _02260F8C - 2 @ case 2
	.2byte _0226104E - _02260F8C - 2 @ case 3
_02260F94:
	bl ov115_022625A8
	adds r0, r4, #0
	bl ov115_02262D90
	movs r0, #2
	str r0, [sp]
	movs r0, #0x18
	adds r1, r0, #0
	subs r1, #0x26
	movs r2, #0
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldr r0, _022610B4 @ =0x00001AB4
	adds r0, r4, r0
	bl ov115_02261ADC
	ldr r0, _022610B8 @ =0x000021A4
	ldr r0, [r4, r0]
	bl FUN_0225CBB0
	ldr r0, _022610BC @ =0x000087E4
	adds r0, r4, r0
	bl ov115_02265A08
	ldr r0, _022610C0 @ =0x0000862C
	adds r0, r4, r0
	bl ov115_02265788
	ldr r0, _022610B0 @ =0x00001F54
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _02261050
_02260FDA:
	ldr r0, _022610B4 @ =0x00001AB4
	adds r5, r6, #0
	adds r0, r4, r0
	bl ov115_02261AEC
	cmp r0, #0
	bne _02260FEA
	movs r5, #0
_02260FEA:
	adds r0, r4, #0
	bl ov115_02262304
	adds r0, r4, #0
	bl ov115_02262540
	adds r0, r4, #0
	bl ov115_022625C8
	cmp r0, #1
	bne _02261002
	movs r5, #0
_02261002:
	ldr r0, _022610B4 @ =0x00001AB4
	adds r0, r4, r0
	bl ov115_02261B1C
	cmp r0, #0
	bne _02261010
	movs r5, #0
_02261010:
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #0
	bne _0226101C
	movs r5, #0
_0226101C:
	cmp r5, #1
	bne _02261050
	cmp r7, #1
	bne _02261050
	ldr r0, _022610C4 @ =0x00001F58
	movs r1, #0
	str r1, [r4, r0]
	subs r1, r0, #4
	ldr r1, [r4, r1]
	subs r0, r0, #4
	adds r1, r1, #1
	str r1, [r4, r0]
	b _02261050
_02261036:
	adds r0, r1, #4
	ldr r0, [r4, r0]
	adds r2, r0, #1
	adds r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x40
	blo _02261050
	ldr r0, [r4, r1]
	adds r0, r0, #1
	str r0, [r4, r1]
	b _02261050
_0226104E:
	movs r6, #0
_02261050:
	ldr r0, _022610C8 @ =0x00008785
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0226105E
	movs r2, #0x77
	mvns r2, r2
	b _02261060
_0226105E:
	movs r2, #0x78
_02261060:
	ldr r1, _022610CC @ =0x000019CC
	adds r0, r4, r1
	adds r1, r1, #2
	ldrh r1, [r4, r1]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl ov115_02261C48
	ldr r0, _022610D0 @ =0x00001F74
	ldr r1, _022610CC @ =0x000019CC
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_022640C0
	ldr r0, _022610D0 @ =0x00001F74
	ldr r1, _022610CC @ =0x000019CC
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_022640EC
	ldr r0, _022610D0 @ =0x00001F74
	ldr r1, _022610CC @ =0x000019CC
	ldr r2, [r4]
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_022640A4
	ldr r1, _022610B4 @ =0x00001AB4
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov115_0226369C
	ldr r0, _022610C0 @ =0x0000862C
	adds r0, r4, r0
	bl ov115_02265820
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022610B0: .4byte 0x00001F54
_022610B4: .4byte 0x00001AB4
_022610B8: .4byte 0x000021A4
_022610BC: .4byte 0x000087E4
_022610C0: .4byte 0x0000862C
_022610C4: .4byte 0x00001F58
_022610C8: .4byte 0x00008785
_022610CC: .4byte 0x000019CC
_022610D0: .4byte 0x00001F74
	thumb_func_end ov115_02260F70

	thumb_func_start ov115_022610D4
ov115_022610D4: @ 0x022610D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4]
	cmp r2, #2
	bhs _022610FA
	ldr r0, _022611A0 @ =0x02265B3C
	lsls r1, r2, #2
	ldr r1, [r0, r1]
	ldr r0, [r4, #8]
	cmp r1, r0
	bhi _022610FA
	adds r0, r2, #1
	str r0, [r4]
	cmp r0, #1
	bne _022610FA
	ldr r0, _022611A4 @ =0x000087E4
	adds r0, r4, r0
	bl ov115_022658E0
_022610FA:
	ldr r0, _022611A8 @ =0x000086EC
	movs r1, #1
	adds r0, r4, r0
	movs r2, #0
	bl FUN_0201E564
	adds r0, r4, #0
	bl ov115_02262974
	ldr r0, _022611AC @ =0x00008730
	adds r0, r4, r0
	bl ov115_02262E64
	cmp r0, #0
	bne _02261122
	ldr r1, _022611AC @ =0x00008730
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov115_02262EFC
_02261122:
	ldr r0, _022611B0 @ =0x000087CC
	ldr r1, [r4, #0x10]
	adds r0, r4, r0
	bl ov115_022632DC
	cmp r0, #1
	bne _02261150
	ldr r0, _022611B0 @ =0x000087CC
	adds r0, r4, r0
	bl ov115_022632D8
	adds r1, r0, #0
	ldr r0, _022611B4 @ =0x0000FFFF
	cmp r1, r0
	beq _02261148
	ldr r0, _022611B8 @ =0x00001F74
	adds r0, r4, r0
	bl ov115_02264268
_02261148:
	ldr r0, _022611B0 @ =0x000087CC
	adds r0, r4, r0
	bl ov115_022632C8
_02261150:
	adds r0, r4, #0
	bl ov115_02262304
	ldr r1, _022611BC @ =0x000019CC
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov115_02261BBC
	ldr r1, _022611C0 @ =0x00001AB4
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov115_02263640
	adds r0, r4, #0
	bl ov115_02262524
	ldr r0, _022611A4 @ =0x000087E4
	ldr r1, _022611C4 @ =0x00001C54
	ldr r2, _022611B8 @ =0x00001F74
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, r2
	bl ov115_022658F8
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0226118C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0226118C:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, r1
	blt _0226119A
	str r1, [r4, #8]
	movs r0, #1
	pop {r4, pc}
_0226119A:
	movs r0, #0
	pop {r4, pc}
	nop
_022611A0: .4byte 0x02265B3C
_022611A4: .4byte 0x000087E4
_022611A8: .4byte 0x000086EC
_022611AC: .4byte 0x00008730
_022611B0: .4byte 0x000087CC
_022611B4: .4byte 0x0000FFFF
_022611B8: .4byte 0x00001F74
_022611BC: .4byte 0x000019CC
_022611C0: .4byte 0x00001AB4
_022611C4: .4byte 0x00001C54
	thumb_func_end ov115_022610D4

	thumb_func_start ov115_022611C8
ov115_022611C8: @ 0x022611C8
	push {r3, lr}
	ldr r1, _022611DC @ =0x00001AB4
	ldr r0, [r0, r1]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	pop {r3, pc}
	.align 2, 0
_022611DC: .4byte 0x00001AB4
	thumb_func_end ov115_022611C8

	thumb_func_start ov115_022611E0
ov115_022611E0: @ 0x022611E0
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov115_022611E0

	thumb_func_start ov115_022611E4
ov115_022611E4: @ 0x022611E4
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	ldr r1, [r5, #0x14]
	cmp r1, r0
	beq _0226121C
	adds r0, r4, #0
	add r1, sp, #0
	bl ov115_0226218C
	adds r0, r5, #0
	add r1, sp, #0
	movs r2, #2
	bl ov115_022621DC
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0226121C
	movs r2, #0x12
	ldr r0, _02261220 @ =0x00001E38
	ldrh r1, [r4]
	ldrsb r2, [r4, r2]
	ldr r3, [r5]
	adds r0, r5, r0
	bl ov115_0226158C
_0226121C:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.align 2, 0
_02261220: .4byte 0x00001E38
	thumb_func_end ov115_022611E4

	thumb_func_start ov115_02261224
ov115_02261224: @ 0x02261224
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	adds r3, r5, #0
_0226122C:
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #4
	bne _02261252
	movs r0, #0x44
	adds r4, r2, #0
	muls r4, r0, r4
	adds r0, r5, #0
	adds r0, #0x50
	adds r0, r0, r4
	bl ov115_02262134
	adds r5, #0x4c
	adds r0, r5, r4
	bl ov115_022622F8
	movs r0, #1
	pop {r3, r4, r5, pc}
_02261252:
	adds r2, r2, #1
	adds r3, #0x44
	cmp r2, #0x60
	blt _0226122C
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02261224

	thumb_func_start ov115_02261260
ov115_02261260: @ 0x02261260
	adds r3, r1, #0
	ldr r1, _02261270 @ =0x000086DC
	adds r2, r0, r1
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	bx lr
	.align 2, 0
_02261270: .4byte 0x000086DC
	thumb_func_end ov115_02261260

	thumb_func_start ov115_02261274
ov115_02261274: @ 0x02261274
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov115_02261274

	thumb_func_start ov115_02261278
ov115_02261278: @ 0x02261278
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, _022612A8 @ =0x00008780
	adds r3, r0, #0
	ldrh r2, [r3, r4]
	adds r0, r4, #2
	strh r2, [r3, r0]
	strh r1, [r3, r4]
	ldrh r0, [r3, r4]
	adds r2, r4, #4
	subs r1, r4, #4
	str r0, [sp]
	adds r0, r4, #0
	subs r0, #0x50
	adds r4, r4, #2
	adds r0, r3, r0
	ldr r1, [r3, r1]
	adds r2, r3, r2
	ldrh r3, [r3, r4]
	bl ov115_02262DC4
	add sp, #4
	pop {r3, r4, pc}
	nop
_022612A8: .4byte 0x00008780
	thumb_func_end ov115_02261278

	thumb_func_start ov115_022612AC
ov115_022612AC: @ 0x022612AC
	ldr r3, _022612B4 @ =0x000087CC
	adds r0, r0, r3
	ldr r3, _022612B8 @ =ov115_02263294
	bx r3
	.align 2, 0
_022612B4: .4byte 0x000087CC
_022612B8: .4byte ov115_02263294
	thumb_func_end ov115_022612AC

	thumb_func_start ov115_022612BC
ov115_022612BC: @ 0x022612BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r1]
	ldr r2, _022612FC @ =0x00008784
	strb r0, [r4, r2]
	ldrb r3, [r1, #1]
	adds r0, r2, #1
	strb r3, [r4, r0]
	ldrb r3, [r1, #2]
	adds r0, r2, #2
	strb r3, [r4, r0]
	ldrb r1, [r1, #3]
	adds r0, r2, #3
	strb r1, [r4, r0]
	movs r1, #1
	adds r0, r2, #4
	str r1, [r4, r0]
	adds r1, r2, #0
	adds r0, r2, #0
	subs r1, #8
	subs r0, #0x54
	ldr r1, [r4, r1]
	adds r0, r4, r0
	adds r2, r4, r2
	bl ov115_02262DB0
	ldr r1, _02261300 @ =0x00008730
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov115_02262EFC
	pop {r4, pc}
	.align 2, 0
_022612FC: .4byte 0x00008784
_02261300: .4byte 0x00008730
	thumb_func_end ov115_022612BC

	thumb_func_start ov115_02261304
ov115_02261304: @ 0x02261304
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	adds r5, r0, #0
	adds r7, r2, #0
	adds r0, r3, #0
	adds r6, r1, #0
	lsls r2, r4, #0xc
	str r3, [sp]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r0, #0
	subs r0, r7, r6
	movs r7, #2
	movs r3, #0
	lsls r7, r7, #0xa
	adds r2, r2, r7
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r1
	subs r2, r0, r2
	asrs r1, r2, #0x1f
	lsrs r0, r2, #0x13
	lsls r1, r1, #0xd
	orrs r1, r0
	lsls r0, r2, #0xd
	adds r0, r0, r7
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	adds r1, r4, #0
	muls r1, r4, r1
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	str r6, [r5]
	ldr r1, [sp]
	str r6, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	movs r0, #0
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_02261304

	thumb_func_start ov115_02261364
ov115_02261364: @ 0x02261364
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x10]
	ldr r0, [r5, #8]
	lsls r2, r6, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsrs r4, r2, #0xc
	lsls r0, r1, #0x14
	adds r2, r6, #0
	orrs r4, r0
	ldr r0, [r5, #0xc]
	muls r2, r6, r2
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	lsls r1, r2, #2
	blx FUN_020BCFD0
	ldr r1, [r5, #4]
	adds r0, r4, r0
	adds r0, r1, r0
	str r0, [r5]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	adds r0, r0, #1
	cmp r0, r1
	bgt _022613C4
	str r0, [r5, #0x10]
	movs r0, #0
	pop {r4, r5, r6, pc}
_022613C4:
	str r1, [r5, #0x10]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02261364

	thumb_func_start ov115_022613CC
ov115_022613CC: @ 0x022613CC
	push {r3, r4}
	lsls r4, r0, #5
	lsls r0, r2, #3
	ldr r2, _022613F0 @ =0x02265E84
	lsls r1, r1, #7
	adds r2, r2, r1
	adds r2, r4, r2
	ldr r2, [r0, r2]
	str r2, [r3]
	ldr r2, _022613F4 @ =0x02265E88
	adds r1, r2, r1
	adds r1, r4, r1
	ldr r1, [r0, r1]
	ldr r0, [sp, #8]
	str r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_022613F0: .4byte 0x02265E84
_022613F4: .4byte 0x02265E88
	thumb_func_end ov115_022613CC

	thumb_func_start ov115_022613F8
ov115_022613F8: @ 0x022613F8
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	adds r4, r3, #0
	add r3, sp, #0
	strh r0, [r3]
	movs r0, #0
	strh r0, [r3, #2]
	subs r3, r1, r4
	lsrs r1, r3, #0x1f
	adds r1, r3, r1
	asrs r1, r1, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #4
	str r1, [sp, #4]
	add r1, sp, #0x28
	ldrh r1, [r1, #0x10]
	subs r2, r2, r1
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #4
	str r0, [sp, #8]
	add r0, sp, #4
	str r1, [sp, #0xc]
	blx FUN_020BD384
	ldr r1, _022614F0 @ =0x0001E200
	cmp r0, r1
	ble _0226147A
	add r0, sp, #4
	adds r1, r0, #0
	blx FUN_020BD3E4
	ldr r0, [sp, #4]
	ldr r2, _022614F0 @ =0x0001E200
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	ldr r2, _022614F0 @ =0x0001E200
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [sp, #0xc]
_0226147A:
	movs r0, #0x26
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #4
	blx FUN_020BD384
	ldr r2, _022614F4 @ =0x0000099A
	asrs r1, r0, #0x1f
	movs r3, #0
	str r0, [sp, #0x10]
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	add r0, sp, #4
	str r1, [sp, #0x10]
	adds r1, r0, #0
	blx FUN_020BD3E4
	lsls r0, r4, #0x10
	add r2, sp, #0x28
	movs r1, #0x10
	ldrsh r1, [r2, r1]
	asrs r0, r0, #0x10
	add r2, sp, #0x14
	bl ov115_022642F8
	movs r0, #0
	str r0, [sp, #0x18]
	add r2, sp, #0
	add r0, sp, #0x14
	ldrh r2, [r2]
	ldr r3, [r5, #0x10]
	adds r1, r0, #0
	bl ov115_02264354
	add r2, sp, #0
	add r0, sp, #4
	ldrh r2, [r2]
	ldr r3, [r5, #0x10]
	adds r1, r0, #0
	bl ov115_02264354
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x3c]
	adds r0, r5, #0
	add r1, sp, #0
	bl ov115_022621DC
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_022614F0: .4byte 0x0001E200
_022614F4: .4byte 0x0000099A
	thumb_func_end ov115_022613F8

	thumb_func_start ov115_022614F8
ov115_022614F8: @ 0x022614F8
	ldr r1, [r0, #0x1c]
	cmp r1, #3
	blt _02261502
	movs r1, #2
	b _02261506
_02261502:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
_02261506:
	lsls r2, r1, #2
	ldr r1, _0226151C @ =0x02265B2C
	ldr r0, [r0]
	ldr r1, [r1, r2]
	cmp r0, #2
	bne _02261516
	lsls r0, r1, #1
	adds r1, r1, r0
_02261516:
	adds r0, r1, #0
	bx lr
	nop
_0226151C: .4byte 0x02265B2C
	thumb_func_end ov115_022614F8

	thumb_func_start ov115_02261520
ov115_02261520: @ 0x02261520
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r0, [r6, #0x1c]
	ldr r7, [sp, #0x58]
	str r0, [sp, #0x14]
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp, #0x18]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	movs r4, #0
	add r0, sp, #0x14
	strh r4, [r0, #0x20]
	movs r0, #1
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r4, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r7, [sp, #0x40]
_02261552:
	ldr r0, [sp, #0x10]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0xc]
	adds r0, r5, #0
	add r1, sp, #0x14
	adds r2, r6, #0
	str r7, [sp, #8]
	bl ov115_022615B0
	adds r4, r4, #1
	adds r5, #0x40
	cmp r4, #4
	blt _02261552
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_02261520

	thumb_func_start ov115_02261574
ov115_02261574: @ 0x02261574
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0226157A:
	adds r0, r5, #0
	bl ov115_02261648
	adds r4, r4, #1
	adds r5, #0x40
	cmp r4, #4
	blt _0226157A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02261574

	thumb_func_start ov115_0226158C
ov115_0226158C: @ 0x0226158C
	push {r4, lr}
	lsls r4, r1, #6
	adds r0, r0, r4
	bl ov115_02261660
	pop {r4, pc}
	thumb_func_end ov115_0226158C

	thumb_func_start ov115_02261598
ov115_02261598: @ 0x02261598
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0226159E:
	adds r0, r5, #0
	bl ov115_02261744
	adds r4, r4, #1
	adds r5, #0x40
	cmp r4, #4
	blt _0226159E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02261598

	thumb_func_start ov115_022615B0
ov115_022615B0: @ 0x022615B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r6, [sp, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	adds r5, r1, #0
	str r3, [sp, #8]
	str r0, [sp, #0x2c]
	movs r7, #0
	adds r4, r6, #0
_022615C8:
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	add r3, sp, #0x10
	bl ov115_022613CC
	ldr r0, [sp, #0x10]
	adds r3, r5, #0
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	adds r2, r6, #0
	lsls r0, r0, #0xc
	adds r3, #8
	str r0, [r5, #0xc]
	ldm r3!, {r0, r1}
	adds r2, #0x18
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r5, #0
	bl FUN_02021AA0
	str r0, [r4]
	movs r1, #2
	bl FUN_02021D6C
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #6
	ldr r0, [r4]
	lsls r1, r1, #0xa
	bl FUN_02021CE4
	movs r0, #0
	str r0, [r4, #0xc]
	adds r7, r7, #1
	adds r6, #0xc
	adds r4, r4, #4
	cmp r7, #3
	blt _022615C8
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	bne _0226163C
	ldr r0, [sp, #4]
	movs r1, #1
	str r1, [r0, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0226163C:
	ldr r0, [sp, #4]
	movs r1, #0
	str r1, [r0, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_022615B0

	thumb_func_start ov115_02261648
ov115_02261648: @ 0x02261648
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0226164E:
	ldr r0, [r5]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0226164E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02261648

	thumb_func_start ov115_02261660
ov115_02261660: @ 0x02261660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	movs r4, #0
	str r0, [sp]
	adds r0, r4, #0
	subs r0, r0, #1
	ldr r5, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r6, r4, #0
_0226167A:
	ldr r0, [r5]
	bl FUN_02021D34
	cmp r0, #0
	bne _0226168C
	movs r0, #1
	str r6, [sp, #0x14]
	str r0, [sp, #0x10]
	b _022616AC
_0226168C:
	ldr r0, [r5]
	bl FUN_02021F74
	adds r7, r0, #0
	ldr r0, [r5]
	adds r1, r7, #1
	bl FUN_02021F58
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _022616AC
	adds r0, r7, #1
	cmp r4, r0
	bhi _022616AC
	adds r4, r0, #0
	str r6, [sp, #0x14]
_022616AC:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #3
	blt _0226167A
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bge _022616BE
	bl FUN_02022974
_022616BE:
	ldr r0, [sp, #8]
	cmp r0, #3
	blo _022616C8
	movs r0, #2
	str r0, [sp, #8]
_022616C8:
	ldr r0, [sp, #0xc]
	cmp r0, #2
	beq _022616EA
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	cmp r0, #1
	bne _022616DE
	ldr r0, [sp, #8]
	adds r0, r0, #2
	str r0, [sp, #8]
	b _022616E4
_022616DE:
	ldr r0, [sp, #8]
	adds r0, #8
	str r0, [sp, #8]
_022616E4:
	ldr r0, [sp, #4]
	adds r4, r0, #3
	b _02261702
_022616EA:
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	cmp r0, #1
	bne _022616FA
	ldr r0, [sp, #8]
	adds r0, r0, #5
	str r0, [sp, #8]
	b _02261700
_022616FA:
	ldr r0, [sp, #8]
	adds r0, #0xb
	str r0, [sp, #8]
_02261700:
	movs r4, #7
_02261702:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	lsls r5, r0, #2
	ldr r0, [sp]
	ldr r0, [r0, r5]
	bl FUN_02021D6C
	ldr r0, [sp]
	movs r1, #0
	adds r0, r0, r5
	str r1, [r0, #0xc]
	ldr r0, [sp]
	movs r1, #1
	ldr r0, [r0, r5]
	bl FUN_02021CAC
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl ov115_0226177C
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, r5]
	bl FUN_02021F58
	ldr r0, [sp]
	adds r1, r4, #0
	ldr r0, [r0, r5]
	bl FUN_02021E90
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_02261660

	thumb_func_start ov115_02261744
ov115_02261744: @ 0x02261744
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_0226174C:
	ldr r0, [r5]
	bl FUN_02021D34
	cmp r0, #1
	bne _02261772
	ldr r0, [r5, #0xc]
	adds r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x10
	bls _0226176A
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov115_022617D8
	b _02261772
_0226176A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov115_0226177C
_02261772:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0226174C
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_02261744

	thumb_func_start ov115_0226177C
ov115_0226177C: @ 0x0226177C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r1, #0
	adds r5, r0, #0
	lsls r4, r6, #2
	adds r0, r5, r4
	ldr r0, [r0, #0xc]
	ldr r2, _022617D4 @ =0xFFFF0000
	lsls r0, r0, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x10
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	lsls r1, r2, #5
	blx FUN_020BCFD0
	adds r2, r0, #0
	movs r0, #0xc
	muls r0, r6, r0
	adds r6, r5, r0
	adds r6, #0x18
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r7, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r7, #0
	str r0, [r3]
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022617D4: .4byte 0xFFFF0000
	thumb_func_end ov115_0226177C

	thumb_func_start ov115_022617D8
ov115_022617D8: @ 0x022617D8
	ldr r3, _022617E4 @ =FUN_02021CAC
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #0
	bx r3
	nop
_022617E4: .4byte FUN_02021CAC
	thumb_func_end ov115_022617D8

	thumb_func_start ov115_022617E8
ov115_022617E8: @ 0x022617E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x58]
	adds r5, r2, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x58]
	ldr r4, [sp, #0x60]
	ldr r2, [sp, #0x14]
	str r3, [sp, #0x1c]
	movs r1, #0x1c
	movs r0, #0
_02261800:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02261800
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	movs r0, #0xa
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r0, [r0]
	adds r1, #0xc
	movs r2, #1
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0xe0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	movs r2, #0
	adds r0, #0xc
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [sp, #0x18]
	movs r1, #0
	ldr r0, [r0, #8]
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022619F0 @ =0x0001020F
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	adds r3, r1, #0
	adds r0, #0xc
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	ldr r2, [r2]
	movs r1, #0x12
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	ldr r2, [r2]
	adds r1, #0x12
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0x80
	str r0, [sp]
	movs r2, #0
	ldr r0, [sp, #0x5c]
	movs r1, #0x13
	adds r3, r2, #0
	str r4, [sp, #4]
	bl FUN_02007130
	add r0, sp, #0x30
	bl FUN_0201A7A0
	movs r3, #0
	str r3, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r2, #2
	str r2, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	adds r0, #0xfb
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x30
	ldr r0, [r0]
	bl FUN_0201A7E8
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp, #0x28]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	movs r4, #0
	cmp r0, #0
	bls _022619CA
	ldr r0, [sp, #0x58]
	ldr r1, _022619F4 @ =0x02265CA4
	lsls r0, r0, #7
	adds r1, r1, r0
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #5
	adds r6, r1, r0
_02261906:
	ldr r0, [sp, #0x58]
	cmp r4, r0
	beq _022619BE
	adds r0, r6, #0
	subs r0, #0x20
	ldr r0, [r0]
	movs r1, #2
	str r0, [sp, #0x2c]
	adds r0, r6, #0
	subs r0, #0x1c
	ldr r7, [r0]
	movs r0, #0xa
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	subs r2, r2, #1
	subs r3, r7, #1
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r0]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
	add r0, sp, #0x30
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _02261954
	ldr r0, _022619F8 @ =0x0005060F
	str r0, [sp, #0x20]
	b _02261958
_02261954:
	ldr r0, _022619F0 @ =0x0001020F
	str r0, [sp, #0x20]
_02261958:
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x24]
	bl FUN_02025EF4
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x30
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201C2AC
	lsls r1, r7, #0x18
	add r0, sp, #0x30
	lsrs r1, r1, #0x18
	bl FUN_0201C2B0
	add r0, sp, #0x30
	ldrh r1, [r0, #0xa]
	ldr r0, _022619FC @ =0xFFFF8000
	ands r0, r1
	ldr r1, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, _02261A00 @ =0x00007FFF
	ands r1, r2
	orrs r1, r0
	add r0, sp, #0x30
	strh r1, [r0, #0xa]
	movs r0, #0
	ldr r1, [sp, #0x24]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	movs r3, #0x40
	str r0, [sp, #8]
	movs r0, #0
	subs r3, r3, r7
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x24]
	add r0, sp, #0x30
	movs r1, #0
	lsrs r3, r3, #1
	bl FUN_0201D78C
	ldr r0, [sp, #0x28]
	adds r0, #0x10
	str r0, [sp, #0x28]
_022619BE:
	ldr r0, [sp, #0x1c]
	adds r4, r4, #1
	adds r6, #8
	adds r5, r5, #4
	cmp r4, r0
	blo _02261906
_022619CA:
	ldr r0, [sp, #0x24]
	bl FUN_020237BC
	add r0, sp, #0x30
	bl FUN_0201A8FC
	ldr r0, [sp, #0x14]
	movs r1, #0
	str r1, [r0, #4]
	movs r0, #2
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022619F0: .4byte 0x0001020F
_022619F4: .4byte 0x02265CA4
_022619F8: .4byte 0x0005060F
_022619FC: .4byte 0xFFFF8000
_02261A00: .4byte 0x00007FFF
	thumb_func_end ov115_022617E8

	thumb_func_start ov115_02261A04
ov115_02261A04: @ 0x02261A04
	ldr r3, _02261A0C @ =FUN_0201A8FC
	adds r0, #0xc
	bx r3
	nop
_02261A0C: .4byte FUN_0201A8FC
	thumb_func_end ov115_02261A04

	thumb_func_start ov115_02261A10
ov115_02261A10: @ 0x02261A10
	push {r4, lr}
	adds r4, r1, #0
	adds r0, #0xc
	movs r1, #0
	movs r2, #1
	movs r3, #4
	bl FUN_0200DC48
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0225CB8C
	pop {r4, pc}
	thumb_func_end ov115_02261A10

	thumb_func_start ov115_02261A3C
ov115_02261A3C: @ 0x02261A3C
	push {r3, lr}
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl FUN_0225CBE0
	cmp r0, #1
	beq _02261A50
	movs r0, #1
	pop {r3, pc}
_02261A50:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov115_02261A3C

	thumb_func_start ov115_02261A54
ov115_02261A54: @ 0x02261A54
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc
	movs r1, #1
	bl FUN_0200DC9C
	adds r4, #0xc
	adds r0, r4, #0
	bl FUN_0201AD10
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_02261A54

	thumb_func_start ov115_02261A74
ov115_02261A74: @ 0x02261A74
	push {r4, lr}
	movs r0, #0x13
	adds r4, r1, #0
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r1, #1
	bl ov115_02264190
	ldr r0, _02261AA0 @ =0x0000066C
	movs r1, #0x2d
	adds r0, r4, r0
	lsls r1, r1, #0xe
	bl FUN_02017240
	movs r0, #0x13
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r1, #1
	bl ov115_0226422C
	pop {r4, pc}
	nop
_02261AA0: .4byte 0x0000066C
	thumb_func_end ov115_02261A74

	thumb_func_start ov115_02261AA4
ov115_02261AA4: @ 0x02261AA4
	ldr r1, [r0, #4]
	adds r1, r1, #1
	str r1, [r0, #4]
	cmp r1, #8
	bge _02261AB2
	movs r0, #1
	bx lr
_02261AB2:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov115_02261AA4

	thumb_func_start ov115_02261AB8
ov115_02261AB8: @ 0x02261AB8
	movs r2, #0x13
	lsls r2, r2, #6
	ldr r3, _02261AC4 @ =ov115_022640C0
	adds r0, r0, r2
	bx r3
	nop
_02261AC4: .4byte ov115_022640C0
	thumb_func_end ov115_02261AB8

	thumb_func_start ov115_02261AC8
ov115_02261AC8: @ 0x02261AC8
	movs r1, #0x4a
	movs r2, #0
	lsls r1, r1, #4
	str r2, [r0, r1]
	adds r1, r1, #4
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov115_02261AC8

	thumb_func_start ov115_02261AD8
ov115_02261AD8: @ 0x02261AD8
	bx lr
	.align 2, 0
	thumb_func_end ov115_02261AD8

	thumb_func_start ov115_02261ADC
ov115_02261ADC: @ 0x02261ADC
	movs r1, #0x13
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r3, _02261AE8 @ =ov115_02264190
	movs r1, #5
	bx r3
	.align 2, 0
_02261AE8: .4byte ov115_02264190
	thumb_func_end ov115_02261ADC

	thumb_func_start ov115_02261AEC
ov115_02261AEC: @ 0x02261AEC
	push {r3, lr}
	ldr r1, _02261B14 @ =0x000004A4
	ldr r2, [r0, r1]
	adds r2, r2, #1
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	cmp r1, #0x3c
	blo _02261B10
	ldr r1, _02261B18 @ =0x000006BC
	adds r0, r0, r1
	movs r1, #2
	lsls r1, r1, #0xc
	bl FUN_02017204
	cmp r0, #1
	bne _02261B10
	movs r0, #1
	pop {r3, pc}
_02261B10:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_02261B14: .4byte 0x000004A4
_02261B18: .4byte 0x000006BC
	thumb_func_end ov115_02261AEC

	thumb_func_start ov115_02261B1C
ov115_02261B1C: @ 0x02261B1C
	push {r3, lr}
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl FUN_0225CBE0
	cmp r0, #1
	bne _02261B30
	movs r0, #1
	pop {r3, pc}
_02261B30:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov115_02261B1C

	thumb_func_start ov115_02261B34
ov115_02261B34: @ 0x02261B34
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	movs r0, #0
	strh r0, [r4, #6]
	ldr r1, _02261BAC @ =0x00007FFF
	adds r0, r4, #0
	bl ov115_02261C48
	ldr r1, _02261BB0 @ =0x00000E38
	adds r0, r4, #0
	bl ov115_02261C1C
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	movs r1, #0x32
	adds r0, r4, #0
	add r2, sp, #0
	lsls r1, r1, #0xe
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #0x7b
	adds r0, #0x98
	str r1, [r0]
	movs r0, #5
	lsls r0, r0, #0x10
	ldr r5, _02261BB4 @ =0x02265B20
	str r0, [r4, #8]
	ldm r5!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r5]
	str r0, [r2]
	adds r2, r4, #0
	ldm r3!, {r0, r1}
	adds r2, #0x9c
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r1, _02261BB8 @ =0x000009C4
	str r0, [r2]
	adds r0, r4, #0
	bl ov115_02261F94
	add r3, sp, #0
	adds r2, r4, #0
	ldm r3!, {r0, r1}
	adds r2, #0xd8
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	adds r4, #0xe4
	str r0, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02261BAC: .4byte 0x00007FFF
_02261BB0: .4byte 0x00000E38
_02261BB4: .4byte 0x02265B20
_02261BB8: .4byte 0x000009C4
	thumb_func_end ov115_02261B34

	thumb_func_start ov115_02261BBC
ov115_02261BBC: @ 0x02261BBC
	push {r3, r4, r5, lr}
	adds r3, r0, #0
	ldr r0, [r3]
	adds r4, r1, #0
	cmp r0, #1
	bne _02261BCC
	movs r0, #0
	b _02261BCE
_02261BCC:
	movs r0, #1
_02261BCE:
	strb r0, [r4, #1]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3]
	adds r0, r4, #0
	lsls r5, r3, #2
	ldr r3, _02261C14 @ =0x02265B50
	ldr r3, [r3, r5]
	blx r3
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov115_02261C1C
	ldrh r1, [r4, #4]
	adds r0, r4, #0
	bl ov115_02261F3C
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	adds r0, r4, #0
	bl ov115_02261F68
	adds r1, r4, #0
	adds r1, #0xe4
	str r0, [r1]
	ldrh r2, [r4, #2]
	ldrh r1, [r4, #6]
	adds r0, r4, #0
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl ov115_02261C48
	pop {r3, r4, r5, pc}
	nop
_02261C14: .4byte 0x02265B50
	thumb_func_end ov115_02261BBC

	thumb_func_start ov115_02261C18
ov115_02261C18: @ 0x02261C18
	strb r1, [r0]
	bx lr
	thumb_func_end ov115_02261C18

	thumb_func_start ov115_02261C1C
ov115_02261C1C: @ 0x02261C1C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0xc
	strh r5, [r4, #4]
	blx FUN_020BB4C8
	asrs r0, r5, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	ldr r3, _02261C44 @ =0x020F983C
	adds r2, r2, #1
	lsls r2, r2, #1
	adds r4, #0xc
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r0, r4, #0
	bl FUN_020BB5AC
	pop {r3, r4, r5, pc}
	.align 2, 0
_02261C44: .4byte 0x020F983C
	thumb_func_end ov115_02261C1C

	thumb_func_start ov115_02261C48
ov115_02261C48: @ 0x02261C48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x54
	strh r4, [r5, #2]
	blx FUN_020BB4C8
	adds r0, r5, #0
	adds r0, #0x30
	blx FUN_020BB4C8
	asrs r0, r4, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	ldr r3, _02261D7C @ =0x020F983C
	adds r2, r2, #1
	lsls r2, r2, #1
	adds r0, r5, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r0, #0x30
	bl FUN_020BB5C8
	adds r0, r5, #0
	adds r1, r5, #0
	adds r2, r5, #0
	adds r0, #0xc
	adds r1, #0x30
	adds r2, #0x54
	blx FUN_020BB8EC
	adds r1, r5, #0
	adds r2, r5, #0
	ldr r0, _02261D80 @ =0x02265B44
	adds r1, #0x54
	adds r2, #0x78
	blx FUN_020BBB0C
	movs r0, #0
	adds r1, r5, #0
	adds r2, r5, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	adds r1, #0x54
	rsbs r0, r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #8
	adds r2, #0x84
	blx FUN_020BBB0C
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r1, [r0]
	movs r0, #5
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [sp, #0x10]
	add r0, sp, #8
	adds r1, r5, #0
	adds r1, #0x30
	adds r2, r0, #0
	blx FUN_020BBB0C
	adds r1, r5, #0
	adds r1, #0x84
	add r0, sp, #8
	adds r2, r1, #0
	blx FUN_020BD17C
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0x80
	adds r2, #0x8c
	ldr r0, [r0]
	ldr r2, [r2]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r5, #0
	adds r2, #0x84
	str r0, [sp, #4]
	ldr r2, [r2]
	ldr r0, [r5, #0x78]
	adds r6, r1, #0
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	str r0, [sp]
	adds r4, r1, #0
	adds r2, r5, #0
	adds r2, #0x88
	ldr r0, [r5, #0x7c]
	ldr r2, [r2]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r1, #0
	movs r3, #2
	adds r7, r0, #0
	ldr r1, [sp, #4]
	movs r0, #0
	lsls r3, r3, #0xa
	adds r1, r1, r3
	adcs r6, r0
	lsls r3, r6, #0x14
	lsrs r1, r1, #0xc
	orrs r1, r3
	movs r3, #2
	ldr r6, [sp]
	lsls r3, r3, #0xa
	adds r3, r6, r3
	adcs r4, r0
	lsls r4, r4, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r4
	movs r4, #2
	lsls r4, r4, #0xa
	adds r4, r7, r4
	adcs r2, r0
	lsls r0, r2, #0x14
	lsrs r2, r4, #0xc
	orrs r2, r0
	adds r0, r3, r2
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x90
	str r1, [r0]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r5, #0xd8
	adds r0, #0x9c
	adds r1, #0x30
	adds r2, r5, #0
	blx FUN_020BBB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02261D7C: .4byte 0x020F983C
_02261D80: .4byte 0x02265B44
	thumb_func_end ov115_02261C48

	thumb_func_start ov115_02261D84
ov115_02261D84: @ 0x02261D84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r0, #0
	ldrb r0, [r4]
	adds r6, r1, #0
	adds r7, r3, #0
	movs r5, #0
	cmp r0, #0
	bne _02261D9C
	add sp, #0x34
	adds r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02261D9C:
	add r0, sp, #0x28
	str r0, [sp]
	add r0, sp, #0xc
	adds r3, r4, #0
	str r0, [sp, #4]
	adds r3, #0x90
	adds r1, r2, #0
	adds r2, r4, #0
	ldr r3, [r3]
	adds r0, r6, #0
	adds r2, #0x78
	bl ov115_02265100
	adds r0, r4, #0
	adds r0, #0x84
	adds r1, r6, #0
	add r2, sp, #0x1c
	blx FUN_020BD1B0
	add r0, sp, #0x1c
	blx FUN_020BD384
	adds r6, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	blt _02261DF2
	movs r1, #1
	lsls r1, r1, #0xc
	cmp r0, r1
	bgt _02261DF2
	ldr r1, [r4, #8]
	cmp r6, r1
	bgt _02261DEC
	ldrb r1, [r4, #1]
	cmp r1, #1
	bne _02261DE8
	movs r5, #1
	b _02261DF2
_02261DE8:
	movs r5, #2
	b _02261DF2
_02261DEC:
	add sp, #0x34
	movs r0, #2
	pop {r4, r5, r6, r7, pc}
_02261DF2:
	cmp r0, #0
	ble _02261EA2
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r6, r0
	bge _02261EA2
	adds r2, r4, #0
	adds r2, #0x98
	ldr r2, [r2]
	subs r0, r0, r6
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r5, r2, #0xc
	orrs r5, r0
	add r0, sp, #0x1c
	add r1, sp, #0x10
	blx FUN_020BD3E4
	asrs r0, r5, #0x1f
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #8]
	asrs r1, r0, #0x1f
	adds r2, r5, #0
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	str r0, [r7]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #8]
	asrs r1, r0, #0x1f
	adds r2, r5, #0
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	str r0, [r7, #4]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #8]
	asrs r1, r0, #0x1f
	adds r2, r5, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r7, #8]
	ldr r0, [r4, #8]
	subs r1, r6, r5
	cmp r1, r0
	bgt _02261EA0
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _02261E9C
	movs r5, #1
	b _02261EA2
_02261E9C:
	movs r5, #2
	b _02261EA2
_02261EA0:
	movs r5, #3
_02261EA2:
	adds r0, r5, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov115_02261D84

	thumb_func_start ov115_02261EA8
ov115_02261EA8: @ 0x02261EA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldrb r0, [r5]
	adds r4, r1, #0
	cmp r0, #0
	bne _02261EBC
	add sp, #0x24
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_02261EBC:
	adds r1, r5, #0
	adds r1, #0xdc
	ldr r0, [r4, #4]
	ldr r2, [r1]
	cmp r2, r0
	bge _02261F34
	adds r1, r5, #0
	adds r1, #0xe4
	ldr r1, [r1]
	adds r1, r2, r1
	cmp r1, r0
	ble _02261F34
	adds r0, r5, #0
	adds r0, #0xd8
	ldr r0, [r0]
	movs r1, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	add r2, sp, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4]
	str r0, [sp]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	str r1, [sp, #4]
	add r0, sp, #0xc
	add r1, sp, #0
	blx FUN_020BD1B0
	add r0, sp, #0x18
	blx FUN_020BD384
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r1, [r4, #4]
	ldr r0, [r0]
	subs r0, r1, r0
	asrs r1, r0, #0xc
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	muls r0, r1, r0
	adds r1, r5, #0
	adds r1, #0xe4
	ldr r1, [r1]
	asrs r1, r1, #0xc
	blx FUN_020E1F6C
	adds r5, #0xcc
	ldr r1, [r5]
	subs r0, r1, r0
	cmp r6, r0
	bge _02261F34
	add sp, #0x24
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_02261F34:
	movs r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02261EA8

	thumb_func_start ov115_02261F3C
ov115_02261F3C: @ 0x02261F3C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5a
	lsls r0, r0, #2
	muls r0, r1, r0
	ldr r1, _02261F64 @ =0x0000FFFF
	blx FUN_020E1F6C
	movs r1, #0x5a
	subs r2, r1, r0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	muls r0, r2, r0
	blx FUN_020E1F6C
	adds r4, #0xb0
	ldr r1, [r4]
	adds r0, r0, r1
	pop {r4, pc}
	.align 2, 0
_02261F64: .4byte 0x0000FFFF
	thumb_func_end ov115_02261F3C

	thumb_func_start ov115_02261F68
ov115_02261F68: @ 0x02261F68
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5a
	lsls r0, r0, #2
	muls r0, r1, r0
	ldr r1, _02261F90 @ =0x0000FFFF
	blx FUN_020E1F6C
	adds r1, r4, #0
	adds r1, #0xc4
	ldr r1, [r1]
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0x5a
	blx FUN_020E1F6C
	adds r4, #0xc0
	ldr r1, [r4]
	adds r0, r0, r1
	pop {r4, pc}
	.align 2, 0
_02261F90: .4byte 0x0000FFFF
	thumb_func_end ov115_02261F68

	thumb_func_start ov115_02261F94
ov115_02261F94: @ 0x02261F94
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0xa8
	movs r2, #0x1e
	adds r4, r1, #0
	str r1, [r0]
	asrs r6, r1, #0x1f
	adds r0, r4, #0
	adds r1, r6, #0
	lsls r2, r2, #0xc
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0xac
	str r1, [r0]
	movs r2, #0x32
	adds r0, r4, #0
	adds r1, r6, #0
	lsls r2, r2, #0xc
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0xb0
	str r1, [r0]
	movs r2, #5
	adds r0, r4, #0
	adds r1, r6, #0
	lsls r2, r2, #0x10
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r7, r2, #0xc
	orrs r7, r0
	adds r0, r5, #0
	adds r0, #0xb4
	str r7, [r0]
	adds r0, r5, #0
	adds r0, #0xb8
	movs r2, #0x37
	str r3, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	lsls r2, r2, #0xc
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	movs r2, #0x96
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	adds r1, r5, #0
	adds r1, #0xbc
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	lsls r2, r2, #0xc
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	movs r2, #0xf
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	adds r1, r5, #0
	adds r1, #0xc0
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	lsls r2, r2, #0xe
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	movs r2, #0x1e
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	adds r1, r5, #0
	adds r1, #0xc4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc8
	str r7, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	lsls r2, r2, #0xe
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0xcc
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r2, #6
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xd0
	str r1, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	lsls r2, r2, #0xa
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	adds r5, #0xd4
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov115_02261F94

	thumb_func_start ov115_022620D8
ov115_022620D8: @ 0x022620D8
	strh r1, [r0, #6]
	bx lr
	thumb_func_end ov115_022620D8

	thumb_func_start ov115_022620DC
ov115_022620DC: @ 0x022620DC
	adds r0, #0xa4
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov115_022620DC

	thumb_func_start ov115_022620E4
ov115_022620E4: @ 0x022620E4
	ldr r0, _022620E8 @ =0x00000E38
	bx lr
	.align 2, 0
_022620E8: .4byte 0x00000E38
	thumb_func_end ov115_022620E4

	thumb_func_start ov115_022620EC
ov115_022620EC: @ 0x022620EC
	ldr r0, _022620F0 @ =0x00003FFF
	bx lr
	.align 2, 0
_022620F0: .4byte 0x00003FFF
	thumb_func_end ov115_022620EC

	thumb_func_start ov115_022620F4
ov115_022620F4: @ 0x022620F4
	push {r3, lr}
	ldr r0, _02262124 @ =0x000002EE
	subs r0, r1, r0
	movs r1, #0x32
	blx FUN_020E2178
	ldr r0, _02262128 @ =0x0000638E
	muls r0, r1, r0
	movs r1, #0x32
	blx FUN_020E1F6C
	ldr r1, _0226212C @ =0x000031C7
	cmp r0, r1
	ble _02262118
	blx FUN_020E1F6C
	ldr r0, _0226212C @ =0x000031C7
	subs r0, r0, r1
_02262118:
	ldr r1, _02262130 @ =0x00000E38
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r3, pc}
	nop
_02262124: .4byte 0x000002EE
_02262128: .4byte 0x0000638E
_0226212C: .4byte 0x000031C7
_02262130: .4byte 0x00000E38
	thumb_func_end ov115_022620F4

	thumb_func_start ov115_02262134
ov115_02262134: @ 0x02262134
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5]
	adds r4, r1, #0
	ldr r2, _02262188 @ =0x0000028F
	strh r0, [r4]
	ldrh r0, [r5, #2]
	movs r3, #0
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	strh r0, [r4, #4]
	ldr r0, [r5, #8]
	strh r0, [r4, #6]
	ldr r0, [r5, #0xc]
	strh r0, [r4, #8]
	ldr r0, [r5, #0x10]
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #0xc
	strh r0, [r4, #0xa]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #0xc
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #0xc
	strh r0, [r4, #0xe]
	ldr r0, [r5, #0x20]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0x24]
	strb r0, [r4, #0x13]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02262188: .4byte 0x0000028F
	thumb_func_end ov115_02262134

	thumb_func_start ov115_0226218C
ov115_0226218C: @ 0x0226218C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5]
	adds r4, r1, #0
	ldr r1, _022621D8 @ =0x0000028F
	strh r0, [r4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #2]
	movs r0, #4
	ldrsh r0, [r5, r0]
	str r0, [r4, #4]
	movs r0, #6
	ldrsh r0, [r5, r0]
	str r0, [r4, #8]
	movs r0, #8
	ldrsh r0, [r5, r0]
	str r0, [r4, #0xc]
	movs r0, #0x10
	ldrsh r0, [r5, r0]
	blx FUN_020BCFD0
	str r0, [r4, #0x10]
	movs r0, #0xa
	ldrsh r0, [r5, r0]
	lsls r0, r0, #0xc
	str r0, [r4, #0x14]
	movs r0, #0xc
	ldrsh r0, [r5, r0]
	lsls r0, r0, #0xc
	str r0, [r4, #0x18]
	movs r0, #0xe
	ldrsh r0, [r5, r0]
	lsls r0, r0, #0xc
	str r0, [r4, #0x1c]
	ldrb r0, [r5, #0x13]
	str r0, [r4, #0x24]
	pop {r3, r4, r5, pc}
	nop
_022621D8: .4byte 0x0000028F
	thumb_func_end ov115_0226218C

	thumb_func_start ov115_022621DC
ov115_022621DC: @ 0x022621DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r6, r1, #0
	str r2, [sp]
	movs r1, #0
	adds r2, r4, #0
_022621EA:
	adds r0, r2, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02262244
	movs r0, #0x44
	adds r5, r1, #0
	muls r5, r0, r5
	adds r3, r4, r5
	adds r7, r6, #0
	adds r3, #0x50
	movs r2, #5
_02262202:
	ldm r7!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02262202
	adds r1, r4, r5
	ldr r0, [sp]
	adds r1, #0x4c
	adds r2, r4, r5
	adds r6, #0x14
	strb r0, [r1]
	ldm r6!, {r0, r1}
	adds r2, #0x78
	stm r2!, {r0, r1}
	ldr r0, [r6]
	movs r1, #0
	str r0, [r2]
	adds r0, r4, r5
	adds r0, #0x4e
	strh r1, [r0]
	adds r0, r4, r5
	adds r0, #0x88
	str r1, [r0]
	ldr r0, _022622E8 @ =0x00001AB4
	adds r1, r4, #0
	adds r1, #0x4c
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	adds r0, r4, r0
	adds r1, r1, r5
	bl ov115_02264620
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02262244:
	adds r1, r1, #1
	adds r2, #0x44
	cmp r1, #0x60
	blt _022621EA
	ldr r0, [sp]
	cmp r0, #1
	bne _022622E2
	movs r0, #0
	adds r2, r4, #0
_02262256:
	adds r1, r2, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	cmp r1, #2
	beq _02262264
	cmp r1, #5
	bne _022622D6
_02262264:
	adds r5, r0, #0
	adds r0, r4, #0
	str r0, [sp, #8]
	adds r0, #0x4c
	movs r1, #0x44
	str r0, [sp, #8]
	muls r5, r1, r5
	ldr r0, _022622E8 @ =0x00001AB4
	ldr r1, [sp, #8]
	adds r0, r4, r0
	adds r1, r1, r5
	bl ov115_0226464C
	adds r0, r4, #0
	str r0, [sp, #4]
	adds r0, #0x4c
	str r0, [sp, #4]
	adds r0, r0, r5
	bl ov115_022622F8
	adds r2, r4, r5
	mov ip, r6
	adds r2, #0x50
	movs r7, #5
_02262294:
	mov r3, ip
	ldm r3!, {r0, r1}
	mov ip, r3
	stm r2!, {r0, r1}
	subs r7, r7, #1
	bne _02262294
	ldr r1, [sp]
	ldr r0, [sp, #4]
	adds r2, r4, r5
	adds r6, #0x14
	strb r1, [r0, r5]
	ldm r6!, {r0, r1}
	adds r2, #0x78
	stm r2!, {r0, r1}
	ldr r0, [r6]
	movs r1, #0
	str r0, [r2]
	adds r0, r4, r5
	adds r0, #0x4e
	strh r1, [r0]
	adds r0, r4, r5
	adds r0, #0x88
	str r1, [r0]
	ldr r0, _022622E8 @ =0x00001AB4
	ldr r1, [sp, #8]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	adds r0, r4, r0
	adds r1, r1, r5
	bl ov115_02264620
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022622D6:
	adds r0, r0, #1
	adds r2, #0x44
	cmp r0, #0x60
	blt _02262256
	bl FUN_02022974
_022622E2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022622E8: .4byte 0x00001AB4
	thumb_func_end ov115_022621DC

	thumb_func_start ov115_022622EC
ov115_022622EC: @ 0x022622EC
	movs r0, #1
	strb r0, [r1, #1]
	strh r2, [r1, #6]
	str r3, [r1, #0x24]
	bx lr
	.align 2, 0
	thumb_func_end ov115_022622EC

	thumb_func_start ov115_022622F8
ov115_022622F8: @ 0x022622F8
	ldr r3, _02262300 @ =FUN_020D5124
	movs r1, #0
	movs r2, #0x44
	bx r3
	.align 2, 0
_02262300: .4byte FUN_020D5124
	thumb_func_end ov115_022622F8

	thumb_func_start ov115_02262304
ov115_02262304: @ 0x02262304
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	movs r7, #0
	adds r6, r5, #0
	adds r4, #0x4c
_02262310:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	adds r1, r0, #0
	adds r1, #0xff
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bhi _0226232C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov115_02262354
	b _02262346
_0226232C:
	cmp r0, #5
	bne _0226233A
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov115_022627B4
	b _02262346
_0226233A:
	cmp r0, #3
	bne _02262346
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov115_022628EC
_02262346:
	adds r7, r7, #1
	adds r6, #0x44
	adds r4, #0x44
	cmp r7, #0x60
	blt _02262310
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_02262304

	thumb_func_start ov115_02262354
ov115_02262354: @ 0x02262354
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r1, #0
	ldrb r7, [r4]
	adds r5, r0, #0
	cmp r7, #1
	beq _02262368
	cmp r7, #2
	beq _02262368
	b _022624F2
_02262368:
	ldr r0, [r4, #0x30]
	add r1, sp, #0x14
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov115_02262620
	ldrb r0, [r4]
	cmp r0, #1
	bne _0226238E
	ldr r0, _022624F8 @ =0x000019CC
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x2c
	add r2, sp, #0x14
	add r3, sp, #8
	bl ov115_02261D84
	adds r6, r0, #0
	b _02262390
_0226238E:
	movs r6, #0
_02262390:
	adds r0, r4, #0
	add r1, sp, #0x14
	bl ov115_0226294C
	cmp r6, #3
	beq _022623A0
	cmp r6, #1
	bne _022623A8
_022623A0:
	adds r0, r4, #0
	add r1, sp, #8
	bl ov115_0226294C
_022623A8:
	ldrh r0, [r4, #2]
	adds r0, r0, #1
	strh r0, [r4, #2]
	cmp r6, #1
	bne _0226243C
	adds r0, r5, #0
	bl ov115_022614F8
	ldr r1, [r5, #0x18]
	adds r1, r1, r0
	ldr r0, _022624FC @ =0x0001869F
	str r1, [r5, #0x18]
	cmp r1, r0
	ble _022623C6
	str r0, [r5, #0x18]
_022623C6:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _022623D2
	cmp r0, #1
	beq _022623E0
	b _022623EE
_022623D2:
	ldr r0, _02262500 @ =0x0000056A
	bl FUN_02005748
	ldr r0, _02262504 @ =0x0000056B
	bl FUN_02005748
	b _022623FA
_022623E0:
	ldr r0, _02262500 @ =0x0000056A
	bl FUN_02005748
	ldr r0, _02262508 @ =0x0000056C
	bl FUN_02005748
	b _022623FA
_022623EE:
	ldr r0, _02262500 @ =0x0000056A
	bl FUN_02005748
	ldr r0, _0226250C @ =0x0000056D
	bl FUN_02005748
_022623FA:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov115_022628DC
	ldr r0, _02262510 @ =0x00001E38
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5]
	adds r0, r5, r0
	bl ov115_0226158C
	ldr r0, [r5, #0x1c]
	cmp r0, #0x63
	bge _0226241A
	adds r0, r0, #1
	str r0, [r5, #0x1c]
_0226241A:
	ldr r2, [r5, #0x1c]
	ldr r0, _02262514 @ =0x0000862C
	cmp r2, #3
	ldr r1, _02262518 @ =0x00001AB4
	bne _02262430
	adds r0, r5, r0
	adds r1, r5, r1
	bl ov115_02265700
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02262430:
	adds r0, r5, r0
	adds r1, r5, r1
	bl ov115_022657A8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0226243C:
	ldr r0, _022624F8 @ =0x000019CC
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x2c
	movs r6, #0
	bl ov115_02261EA8
	cmp r0, #1
	bne _02262466
	movs r6, #1
	cmp r7, #1
	bne _0226245A
	ldr r0, _0226251C @ =0x00000722
	bl FUN_02005748
_0226245A:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov115_022626BC
	b _022624DE
_02262466:
	ldr r1, [r4, #0x30]
	ldr r0, _02262520 @ =0xFFFCE000
	cmp r1, r0
	bgt _022624B6
	adds r0, r4, #0
	bl ov115_02262888
	cmp r0, #0
	bne _0226249C
	ldr r1, _02262520 @ =0xFFFCE000
	ldr r0, [sp, #4]
	movs r6, #1
	cmp r0, r1
	bgt _02262490
	ldr r3, [r5, #0x1c]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov115_022622EC
	b _022624DE
_02262490:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov115_022626BC
	b _022624DE
_0226249C:
	movs r0, #1
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0xa
	cmp r1, r0
	bgt _022624DE
	ldr r3, [r5, #0x1c]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r6, #1
	bl ov115_022622EC
	b _022624DE
_022624B6:
	adds r0, r4, #0
	bl ov115_022628B8
	cmp r0, #1
	bne _022624DE
	adds r0, r4, #0
	adds r0, #0x2c
	movs r6, #1
	add r1, sp, #0x14
	adds r2, r0, #0
	blx FUN_020BD1B0
	movs r0, #0
	adds r2, r6, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	lsls r3, r2, #0xa
	bl ov115_022626E0
_022624DE:
	cmp r6, #1
	bne _022624F2
	cmp r7, #1
	bne _022624F2
	movs r0, #0
	str r0, [r5, #0x1c]
	ldr r0, _02262514 @ =0x0000862C
	adds r0, r5, r0
	bl ov115_02265788
_022624F2:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022624F8: .4byte 0x000019CC
_022624FC: .4byte 0x0001869F
_02262500: .4byte 0x0000056A
_02262504: .4byte 0x0000056B
_02262508: .4byte 0x0000056C
_0226250C: .4byte 0x0000056D
_02262510: .4byte 0x00001E38
_02262514: .4byte 0x0000862C
_02262518: .4byte 0x00001AB4
_0226251C: .4byte 0x00000722
_02262520: .4byte 0xFFFCE000
	thumb_func_end ov115_02262354

	thumb_func_start ov115_02262524
ov115_02262524: @ 0x02262524
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	movs r4, #0
	adds r5, #0x4c
_0226252E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov115_02262574
	adds r4, r4, #1
	adds r5, #0x44
	cmp r4, #0x60
	blt _0226252E
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_02262524

	thumb_func_start ov115_02262540
ov115_02262540: @ 0x02262540
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r7, #0
	movs r6, #0
	adds r4, r7, #0
	adds r5, #0x4c
_0226254C:
	adds r0, r4, #0
	adds r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0226255E
	adds r1, r4, #0
	adds r1, #0x4c
	movs r0, #2
	strb r0, [r1]
_0226255E:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov115_02262574
	adds r6, r6, #1
	adds r4, #0x44
	adds r5, #0x44
	cmp r6, #0x60
	blt _0226254C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_02262540

	thumb_func_start ov115_02262574
ov115_02262574: @ 0x02262574
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	adds r4, r1, #0
	cmp r0, #0
	beq _022625A2
	ldrb r0, [r5]
	cmp r0, #3
	bne _02262592
	ldrh r0, [r5, #6]
	cmp r0, #1
	bne _02262592
	movs r0, #4
	strb r0, [r5]
	b _02262598
_02262592:
	adds r0, r5, #0
	bl ov115_022622F8
_02262598:
	ldr r0, _022625A4 @ =0x00001AB4
	adds r1, r5, #0
	adds r0, r4, r0
	bl ov115_0226464C
_022625A2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022625A4: .4byte 0x00001AB4
	thumb_func_end ov115_02262574

	thumb_func_start ov115_022625A8
ov115_022625A8: @ 0x022625A8
	movs r3, #0
	movs r2, #2
_022625AC:
	adds r1, r0, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	cmp r1, #1
	bne _022625BC
	adds r1, r0, #0
	adds r1, #0x4c
	strb r2, [r1]
_022625BC:
	adds r3, r3, #1
	adds r0, #0x44
	cmp r3, #0x60
	blt _022625AC
	bx lr
	.align 2, 0
	thumb_func_end ov115_022625A8

	thumb_func_start ov115_022625C8
ov115_022625C8: @ 0x022625C8
	movs r2, #0
_022625CA:
	adds r1, r0, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	cmp r1, #1
	beq _022625E0
	cmp r1, #2
	beq _022625E0
	cmp r1, #5
	beq _022625E0
	cmp r1, #3
	bne _022625E4
_022625E0:
	movs r0, #1
	bx lr
_022625E4:
	adds r2, r2, #1
	adds r0, #0x44
	cmp r2, #0x60
	blt _022625CA
	movs r0, #0
	bx lr
	thumb_func_end ov115_022625C8

	thumb_func_start ov115_022625F0
ov115_022625F0: @ 0x022625F0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	movs r2, #0x67
	lsls r2, r2, #4
	lsls r0, r0, #0xc
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	ldr r4, [r4, #0x14]
	orrs r1, r0
	subs r0, r4, r1
	bpl _0226261C
	adds r0, r3, #0
_0226261C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_022625F0

	thumb_func_start ov115_02262620
ov115_02262620: @ 0x02262620
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov115_022625F0
	adds r7, r0, #0
	ldr r0, [r5, #8]
	asrs r6, r7, #0x1f
	asrs r1, r0, #0x1f
	adds r2, r7, #0
	adds r3, r6, #0
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	str r0, [r4]
	ldr r0, [r5, #0xc]
	adds r2, r7, #0
	asrs r1, r0, #0x1f
	adds r3, r6, #0
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	ldr r2, _022626B4 @ =0xFFFFECCC
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	str r0, [r4, #4]
	ldrh r0, [r5, #2]
	asrs r3, r2, #0xd
	lsls r0, r0, #0xc
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r3, #2
	adds r2, r0, #0
	lsls r3, r3, #0xa
	adds r3, r2, r3
	ldr r2, _022626B8 @ =0x00000000
	ldr r0, [r4, #4]
	adcs r1, r2
	lsrs r2, r3, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	adds r0, r0, r2
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	adds r2, r7, #0
	asrs r1, r0, #0x1f
	adds r3, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022626B4: .4byte 0xFFFFECCC
_022626B8: .4byte 0x00000000
	thumb_func_end ov115_02262620

	thumb_func_start ov115_022626BC
ov115_022626BC: @ 0x022626BC
	push {r3, r4, lr}
	sub sp, #4
	cmp r2, #1
	bne _022626C8
	ldr r3, _022626D8 @ =0x00000D9A
	b _022626CA
_022626C8:
	ldr r3, _022626DC @ =0x00000CCD
_022626CA:
	movs r4, #1
	str r4, [sp]
	bl ov115_022626E0
	add sp, #4
	pop {r3, r4, pc}
	nop
_022626D8: .4byte 0x00000D9A
_022626DC: .4byte 0x00000CCD
	thumb_func_end ov115_022626BC

	thumb_func_start ov115_022626E0
ov115_022626E0: @ 0x022626E0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r3, #0
	cmp r2, #0
	beq _02262776
	ldr r0, [r5, #8]
	rsbs r0, r0, #0
	str r0, [r5, #8]
	ldr r0, [r5, #0x10]
	rsbs r0, r0, #0
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02262776
	bl FUN_0201D35C
	ldr r2, [r5, #0x10]
	adds r1, r0, #0
	cmp r2, #0
	bge _0226270E
	rsbs r0, r2, #0
	b _02262710
_0226270E:
	adds r0, r2, #0
_02262710:
	ldr r3, [r5, #8]
	cmp r3, #0
	bge _0226271A
	rsbs r6, r3, #0
	b _0226271C
_0226271A:
	adds r6, r3, #0
_0226271C:
	cmp r6, r0
	bgt _0226274C
	asrs r0, r2, #0x1f
	lsrs r3, r2, #0x14
	lsls r0, r0, #0xc
	lsls r6, r2, #0xc
	movs r2, #2
	orrs r0, r3
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r6, r2
	adcs r0, r3
	lsls r0, r0, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #1
	bne _02262748
	rsbs r0, r2, #0
	str r0, [r5, #8]
	b _02262776
_02262748:
	str r2, [r5, #8]
	b _02262776
_0226274C:
	asrs r0, r3, #0x1f
	lsrs r2, r3, #0x14
	lsls r0, r0, #0xc
	orrs r0, r2
	movs r2, #2
	lsls r6, r3, #0xc
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r6, r2
	adcs r0, r3
	lsls r0, r0, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #1
	bne _02262774
	rsbs r0, r2, #0
	str r0, [r5, #0x10]
	b _02262776
_02262774:
	str r2, [r5, #0x10]
_02262776:
	ldr r0, [r5, #0x14]
	asrs r3, r4, #0x1f
	asrs r1, r0, #0x1f
	adds r2, r4, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r5, #0x14]
	strh r3, [r5, #2]
	movs r0, #5
	strb r0, [r5]
	adds r0, r5, #0
	add r1, sp, #0
	bl ov115_02262620
	adds r0, r5, #0
	add r1, sp, #0
	bl ov115_0226294C
	ldrh r0, [r5, #2]
	adds r0, r0, #1
	strh r0, [r5, #2]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov115_022626E0

	thumb_func_start ov115_022627B4
ov115_022627B4: @ 0x022627B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r1, [r5]
	movs r6, #0
	cmp r1, #5
	bne _02262878
	add r1, sp, #4
	ldr r7, [r5, #0x30]
	bl ov115_02262620
	adds r0, r5, #0
	add r1, sp, #4
	bl ov115_0226294C
	ldrh r0, [r5, #2]
	adds r1, r5, #0
	adds r1, #0x2c
	adds r0, r0, #1
	strh r0, [r5, #2]
	ldr r0, _0226287C @ =0x000019CC
	adds r0, r4, r0
	bl ov115_02261EA8
	cmp r0, #1
	bne _022627F6
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov115_022626BC
	b _0226285C
_022627F6:
	ldr r1, [r5, #0x30]
	ldr r0, _02262880 @ =0xFFFCE000
	cmp r1, r0
	bgt _02262836
	adds r0, r5, #0
	bl ov115_02262888
	cmp r0, #0
	bne _0226281E
	ldr r0, _02262880 @ =0xFFFCE000
	cmp r7, r0
	bgt _02262812
	movs r6, #1
	b _02262828
_02262812:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov115_022626BC
	b _02262828
_0226281E:
	ldr r1, [r5, #0x30]
	ldr r0, _02262884 @ =0xFFF9C000
	cmp r1, r0
	bgt _02262828
	movs r6, #1
_02262828:
	movs r0, #2
	ldr r1, [r5, #0x14]
	lsls r0, r0, #0xc
	cmp r1, r0
	bgt _0226285C
	movs r6, #1
	b _0226285C
_02262836:
	adds r0, r5, #0
	bl ov115_022628B8
	cmp r0, #1
	bne _0226285C
	adds r0, r5, #0
	adds r0, #0x2c
	add r1, sp, #4
	adds r2, r0, #0
	blx FUN_020BD1B0
	adds r0, r6, #0
	movs r2, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	lsls r3, r2, #0xa
	bl ov115_022626E0
_0226285C:
	movs r0, #1
	ldr r1, [r5, #0x14]
	lsls r0, r0, #0xc
	cmp r1, r0
	bgt _02262868
	movs r6, #1
_02262868:
	cmp r6, #1
	bne _02262878
	ldr r3, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov115_022622EC
_02262878:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226287C: .4byte 0x000019CC
_02262880: .4byte 0xFFFCE000
_02262884: .4byte 0xFFF9C000
	thumb_func_end ov115_022627B4

	thumb_func_start ov115_02262888
ov115_02262888: @ 0x02262888
	ldr r1, [r0, #0x40]
	movs r0, #0x2f
	lsls r0, r0, #0xe
	cmp r1, r0
	blt _0226289E
	movs r0, #0xf
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _0226289E
	movs r0, #1
	bx lr
_0226289E:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov115_02262888

	thumb_func_start ov115_022628A4
ov115_022628A4: @ 0x022628A4
	ldr r1, [r0, #0x40]
	movs r0, #0x1e
	lsls r0, r0, #0xe
	cmp r1, r0
	bgt _022628B2
	movs r0, #1
	bx lr
_022628B2:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov115_022628A4

	thumb_func_start ov115_022628B8
ov115_022628B8: @ 0x022628B8
	movs r1, #0xf
	ldr r2, [r0, #0x40]
	lsls r1, r1, #0x10
	cmp r2, r1
	blt _022628CC
	ldr r0, [r0, #0x3c]
	cmp r0, #1
	bne _022628D6
	movs r0, #1
	bx lr
_022628CC:
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	bne _022628D6
	movs r1, #1
	str r1, [r0, #0x3c]
_022628D6:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov115_022628B8

	thumb_func_start ov115_022628DC
ov115_022628DC: @ 0x022628DC
	movs r2, #3
	strb r2, [r0]
	movs r2, #8
	strh r2, [r0, #0x38]
	ldr r1, [r1, #0x1c]
	strh r1, [r0, #0x3a]
	bx lr
	.align 2, 0
	thumb_func_end ov115_022628DC

	thumb_func_start ov115_022628EC
ov115_022628EC: @ 0x022628EC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r6, r1, #0
	add r1, sp, #0xc
	adds r5, r0, #0
	bl ov115_02262620
	ldr r0, _02262948 @ =0x000019CC
	adds r1, r5, #0
	adds r0, r6, r0
	adds r1, #0x2c
	add r2, sp, #0xc
	add r3, sp, #0
	bl ov115_02261D84
	adds r4, r0, #0
	adds r0, r5, #0
	add r1, sp, #0xc
	bl ov115_0226294C
	cmp r4, #3
	beq _0226291C
	cmp r4, #1
	bne _02262924
_0226291C:
	adds r0, r5, #0
	add r1, sp, #0
	bl ov115_0226294C
_02262924:
	ldrh r0, [r5, #2]
	adds r0, r0, #1
	strh r0, [r5, #2]
	movs r0, #0x38
	ldrsh r1, [r5, r0]
	subs r1, r1, #1
	strh r1, [r5, #0x38]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _02262944
	ldrh r3, [r5, #0x3a]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov115_022622EC
_02262944:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_02262948: .4byte 0x000019CC
	thumb_func_end ov115_022628EC

	thumb_func_start ov115_0226294C
ov115_0226294C: @ 0x0226294C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0x2c
	adds r2, r0, #0
	blx FUN_020BD17C
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	str r0, [sp]
	ldr r0, [r4, #0x34]
	str r0, [sp, #8]
	add r0, sp, #0
	blx FUN_020BD384
	str r0, [r4, #0x40]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov115_0226294C

	thumb_func_start ov115_02262974
ov115_02262974: @ 0x02262974
	push {r3, lr}
	ldr r1, _0226298C @ =0x021BF6BC
	ldrh r1, [r1, #0x22]
	cmp r1, #0
	bne _02262984
	bl ov115_02262990
	pop {r3, pc}
_02262984:
	bl ov115_02262B70
	pop {r3, pc}
	nop
_0226298C: .4byte 0x021BF6BC
	thumb_func_end ov115_02262974

	thumb_func_start ov115_02262990
ov115_02262990: @ 0x02262990
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, [r5, #0x20]
	movs r4, #0
	cmp r0, #0
	bne _022629A8
	ldr r0, [r5, #0x48]
	add sp, #0x30
	adds r0, r0, #1
	str r0, [r5, #0x48]
	pop {r4, r5, r6, pc}
_022629A8:
	adds r0, r5, #0
	adds r0, #0x20
	add r1, sp, #4
	bl ov115_02262D3C
	cmp r0, #0
	bne _022629BA
	bl FUN_02022974
_022629BA:
	adds r0, r5, #0
	adds r0, #0x20
	add r1, sp, #0
	bl ov115_02262D58
	cmp r0, #0
	bne _022629CC
	bl FUN_02022974
_022629CC:
	adds r0, r5, #0
	adds r0, #0x20
	bl ov115_02262D7C
	adds r6, r0, #0
	cmp r6, #2
	bge _022629DC
	b _02262B3E
_022629DC:
	ldr r0, [r5, #0x14]
	add r1, sp, #0
	strh r0, [r1, #8]
	movs r3, #0
	strh r3, [r1, #0xa]
	movs r0, #4
	ldrsh r2, [r1, r0]
	ldrsh r0, [r1, r3]
	adds r1, r6, #0
	subs r0, r2, r0
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	asrs r0, r0, #4
	str r0, [sp, #0xc]
	add r1, sp, #0
	movs r0, #6
	ldrsh r2, [r1, r0]
	movs r0, #2
	ldrsh r0, [r1, r0]
	adds r1, r6, #0
	subs r0, r2, r0
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	asrs r0, r0, #4
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #0xc
	blx FUN_020BD384
	movs r1, #2
	lsls r1, r1, #0xe
	cmp r0, r1
	bge _02262A6C
	cmp r0, #0
	beq _02262A68
	add r0, sp, #0xc
	adds r1, r0, #0
	blx FUN_020BD3E4
	ldr r3, [sp, #0xc]
	asrs r1, r3, #0x1f
	lsrs r0, r3, #0x11
	lsls r2, r1, #0xf
	orrs r2, r0
	movs r0, #2
	lsls r3, r3, #0xf
	movs r1, #0
	lsls r0, r0, #0xa
	adds r3, r3, r0
	adcs r2, r1
	lsls r2, r2, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r2
	ldr r2, [sp, #0x14]
	str r3, [sp, #0xc]
	asrs r3, r2, #0x1f
	lsrs r6, r2, #0x11
	lsls r3, r3, #0xf
	orrs r3, r6
	lsls r2, r2, #0xf
	adds r2, r2, r0
	adcs r3, r1
	lsls r0, r3, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [sp, #0x14]
	b _02262AB4
_02262A68:
	movs r4, #1
	b _02262AB4
_02262A6C:
	ldr r1, _02262B64 @ =0x0001E200
	cmp r0, r1
	ble _02262AB4
	add r0, sp, #0xc
	adds r1, r0, #0
	blx FUN_020BD3E4
	ldr r0, [sp, #0xc]
	ldr r2, _02262B64 @ =0x0001E200
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	ldr r2, _02262B64 @ =0x0001E200
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [sp, #0x14]
_02262AB4:
	cmp r4, #0
	bne _02262B40
	movs r0, #0x26
	lsls r0, r0, #0xc
	str r0, [sp, #0x10]
	add r0, sp, #0xc
	blx FUN_020BD384
	ldr r2, _02262B68 @ =0x0000099A
	asrs r1, r0, #0x1f
	movs r3, #0
	str r0, [sp, #0x18]
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	add r0, sp, #0xc
	str r1, [sp, #0x18]
	adds r1, r0, #0
	blx FUN_020BD3E4
	add r2, sp, #0
	movs r0, #0
	movs r1, #2
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	add r2, sp, #0x1c
	bl ov115_022642F8
	movs r0, #0
	str r0, [sp, #0x20]
	add r2, sp, #0
	add r0, sp, #0x1c
	ldrh r2, [r2, #8]
	ldr r3, [r5, #0x10]
	adds r1, r0, #0
	bl ov115_02264354
	add r2, sp, #0
	add r0, sp, #0xc
	ldrh r2, [r2, #8]
	ldr r3, [r5, #0x10]
	adds r1, r0, #0
	bl ov115_02264354
	ldr r0, [r5, #0x1c]
	cmp r0, #5
	blt _02262B26
	movs r0, #1
	str r0, [sp, #0x2c]
	b _02262B2A
_02262B26:
	movs r0, #0
	str r0, [sp, #0x2c]
_02262B2A:
	adds r0, r5, #0
	add r1, sp, #8
	movs r2, #1
	bl ov115_022621DC
	movs r0, #0x65
	lsls r0, r0, #4
	bl FUN_02005748
	b _02262B40
_02262B3E:
	movs r4, #1
_02262B40:
	cmp r4, #1
	bne _02262B56
	add r3, sp, #0
	movs r1, #0
	movs r2, #2
	ldr r0, _02262B6C @ =0x0000854C
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r0, r5, r0
	bl ov115_02264D80
_02262B56:
	adds r0, r5, #0
	bl ov115_02262D90
	movs r0, #0
	str r0, [r5, #0x48]
	add sp, #0x30
	pop {r4, r5, r6, pc}
	.align 2, 0
_02262B64: .4byte 0x0001E200
_02262B68: .4byte 0x0000099A
_02262B6C: .4byte 0x0000854C
	thumb_func_end ov115_02262990

	thumb_func_start ov115_02262B70
ov115_02262B70: @ 0x02262B70
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	bne _02262B98
	bl ov115_02262C60
	cmp r0, #1
	bne _02262B98
	movs r0, #1
	str r0, [r4, #0x20]
	ldr r0, _02262C50 @ =0x00008544
	adds r0, r4, r0
	bl ov115_02264BAC
	ldr r0, _02262C54 @ =0x000021A8
	adds r0, r4, r0
	bl ov115_022653CC
_02262B98:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _02262C4A
	ldr r1, _02262C58 @ =0x000086EC
	ldrh r0, [r4, r1]
	cmp r0, #1
	bne _02262BCE
	adds r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, sp, #0
	mov r3, sp
	strh r0, [r2]
	adds r0, r1, #4
	ldrh r0, [r4, r0]
	subs r3, r3, #4
	adds r4, #0x20
	strh r0, [r2, #2]
	ldrh r1, [r2]
	adds r0, r4, #0
	strh r1, [r3]
	ldrh r1, [r2, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov115_02262CBC
	add sp, #4
	pop {r3, r4, pc}
_02262BCE:
	cmp r0, #2
	blo _02262C28
	adds r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, sp, #0
	mov r3, sp
	strh r0, [r2]
	adds r0, r1, #4
	ldrh r0, [r4, r0]
	subs r3, r3, #4
	strh r0, [r2, #2]
	ldrh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x20
	strh r1, [r3]
	ldrh r1, [r2, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov115_02262CBC
	ldr r0, _02262C58 @ =0x000086EC
	ldrh r1, [r4, r0]
	subs r1, r1, #1
	lsls r1, r1, #3
	adds r3, r4, r1
	adds r1, r0, #2
	ldrh r2, [r3, r1]
	add r1, sp, #0
	adds r0, r0, #4
	strh r2, [r1]
	ldrh r0, [r3, r0]
	mov r3, sp
	subs r3, r3, #4
	strh r0, [r1, #2]
	ldrh r2, [r1]
	adds r4, #0x20
	adds r0, r4, #0
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov115_02262CBC
	add sp, #4
	pop {r3, r4, pc}
_02262C28:
	ldr r0, _02262C5C @ =0x021BF6BC
	mov r3, sp
	ldrh r2, [r0, #0x1c]
	add r1, sp, #0
	subs r3, r3, #4
	strh r2, [r1]
	ldrh r0, [r0, #0x1e]
	adds r4, #0x20
	strh r0, [r1, #2]
	ldrh r2, [r1]
	adds r0, r4, #0
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov115_02262CBC
_02262C4A:
	add sp, #4
	pop {r3, r4, pc}
	nop
_02262C50: .4byte 0x00008544
_02262C54: .4byte 0x000021A8
_02262C58: .4byte 0x000086EC
_02262C5C: .4byte 0x021BF6BC
	thumb_func_end ov115_02262B70

	thumb_func_start ov115_02262C60
ov115_02262C60: @ 0x02262C60
	push {r3, lr}
	ldr r0, [r0, #0x48]
	cmp r0, #2
	bhs _02262C6C
	movs r0, #0
	pop {r3, pc}
_02262C6C:
	ldr r1, _02262C9C @ =0x021BF6BC
	movs r0, #0x80
	ldrh r2, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	subs r3, r0, r2
	subs r0, #0xe0
	subs r2, r0, r1
	adds r1, r3, #0
	adds r0, r2, #0
	muls r1, r3, r1
	muls r0, r2, r0
	adds r0, r1, r0
	lsls r0, r0, #0xc
	blx FUN_020BCFF0
	asrs r1, r0, #0xc
	ldr r0, _02262CA0 @ =0x0000011E
	cmp r1, r0
	bgt _02262C96
	movs r0, #1
	pop {r3, pc}
_02262C96:
	movs r0, #0
	pop {r3, pc}
	nop
_02262C9C: .4byte 0x021BF6BC
_02262CA0: .4byte 0x0000011E
	thumb_func_end ov115_02262C60

	thumb_func_start ov115_02262CA4
ov115_02262CA4: @ 0x02262CA4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	movs r1, #0
	movs r2, #0x20
	blx FUN_020D5124
	movs r0, #0
	strh r0, [r4, #0x24]
	strh r0, [r4, #0x26]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_02262CA4

	thumb_func_start ov115_02262CBC
ov115_02262CBC: @ 0x02262CBC
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r1, [r4, #0x26]
	adds r1, r1, #1
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x1d
	subs r2, r2, r3
	movs r1, #0x1d
	rors r2, r1
	ldrh r1, [r4, #0x24]
	adds r2, r3, r2
	cmp r2, r1
	bne _02262CE0
	add r1, sp, #0
	bl ov115_02262D0C
_02262CE0:
	ldrh r0, [r4, #0x26]
	lsls r0, r0, #2
	adds r2, r4, r0
	add r0, sp, #0x10
	ldrh r1, [r0, #4]
	strh r1, [r2, #4]
	ldrh r0, [r0, #6]
	strh r0, [r2, #6]
	ldrh r0, [r4, #0x26]
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1d
	subs r1, r1, r2
	movs r0, #0x1d
	rors r1, r0
	adds r0, r2, r1
	strh r0, [r4, #0x26]
	add sp, #4
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov115_02262CBC

	thumb_func_start ov115_02262D0C
ov115_02262D0C: @ 0x02262D0C
	ldrh r3, [r0, #0x24]
	ldrh r2, [r0, #0x26]
	cmp r2, r3
	bne _02262D18
	movs r0, #0
	bx lr
_02262D18:
	lsls r2, r3, #2
	adds r3, r0, r2
	ldrh r2, [r3, #4]
	strh r2, [r1]
	ldrh r2, [r3, #6]
	strh r2, [r1, #2]
	ldrh r1, [r0, #0x24]
	adds r1, r1, #1
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x1d
	subs r2, r2, r3
	movs r1, #0x1d
	rors r2, r1
	adds r1, r3, r2
	strh r1, [r0, #0x24]
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov115_02262D0C

	thumb_func_start ov115_02262D3C
ov115_02262D3C: @ 0x02262D3C
	ldrh r3, [r0, #0x24]
	ldrh r2, [r0, #0x26]
	cmp r2, r3
	bne _02262D48
	movs r0, #0
	bx lr
_02262D48:
	lsls r2, r3, #2
	adds r2, r0, r2
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldrh r0, [r2, #6]
	strh r0, [r1, #2]
	movs r0, #1
	bx lr
	thumb_func_end ov115_02262D3C

	thumb_func_start ov115_02262D58
ov115_02262D58: @ 0x02262D58
	ldrh r3, [r0, #0x26]
	ldrh r2, [r0, #0x24]
	cmp r3, r2
	bne _02262D64
	movs r0, #0
	bx lr
_02262D64:
	subs r2, r3, #1
	bpl _02262D6A
	adds r2, #8
_02262D6A:
	lsls r2, r2, #2
	adds r2, r0, r2
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldrh r0, [r2, #6]
	strh r0, [r1, #2]
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov115_02262D58

	thumb_func_start ov115_02262D7C
ov115_02262D7C: @ 0x02262D7C
	ldrh r2, [r0, #0x26]
	ldrh r1, [r0, #0x24]
	cmp r1, r2
	bls _02262D8C
	movs r0, #8
	subs r0, r0, r1
	adds r0, r0, r2
	bx lr
_02262D8C:
	subs r0, r2, r1
	bx lr
	thumb_func_end ov115_02262D7C

	thumb_func_start ov115_02262D90
ov115_02262D90: @ 0x02262D90
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x20
	bl ov115_02262CA4
	ldr r0, _02262DAC @ =0x00008544
	adds r0, r4, r0
	bl ov115_02264BF8
	pop {r4, pc}
	nop
_02262DAC: .4byte 0x00008544
	thumb_func_end ov115_02262D90

	thumb_func_start ov115_02262DB0
ov115_02262DB0: @ 0x02262DB0
	push {r3, lr}
	adds r3, r0, #0
	movs r0, #0x10
	str r0, [r3, #0x48]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0
	bl ov115_02262F50
	pop {r3, pc}
	thumb_func_end ov115_02262DB0

	thumb_func_start ov115_02262DC4
ov115_02262DC4: @ 0x02262DC4
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r6, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r2, r3, #0
	adds r0, r4, #0
	adds r1, r6, #0
	add r3, sp, #0x18
	bl ov115_02262F50
	add r2, sp, #0x30
	ldrh r2, [r2, #0x10]
	adds r0, r4, #0
	adds r1, r6, #0
	add r3, sp, #0
	bl ov115_02262F50
	adds r2, r5, #0
	add r3, sp, #0x18
	adds r2, #0x18
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	add r3, sp, #0x18
	adds r2, r5, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r1, [sp]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r5, #0x30]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x20]
	subs r0, r1, r0
	str r0, [r5, #0x38]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x28]
	subs r0, r1, r0
	str r0, [r5, #0x40]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	subs r0, r1, r0
	str r0, [r5, #0x44]
	ldr r2, [sp, #4]
	ldr r0, _02262E60 @ =0x0000FFFF
	ldr r3, [sp, #0x1c]
	adds r0, r2, r0
	subs r1, r0, r3
	subs r0, r2, r3
	cmp r0, r1
	bge _02262E3E
	str r0, [r5, #0x34]
	b _02262E40
_02262E3E:
	str r1, [r5, #0x34]
_02262E40:
	ldr r2, [sp, #0xc]
	ldr r0, _02262E60 @ =0x0000FFFF
	ldr r3, [sp, #0x24]
	adds r0, r2, r0
	subs r1, r0, r3
	subs r0, r2, r3
	cmp r0, r1
	bge _02262E54
	str r0, [r5, #0x3c]
	b _02262E56
_02262E54:
	str r1, [r5, #0x3c]
_02262E56:
	movs r0, #0
	str r0, [r5, #0x48]
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_02262E60: .4byte 0x0000FFFF
	thumb_func_end ov115_02262DC4

	thumb_func_start ov115_02262E64
ov115_02262E64: @ 0x02262E64
	push {r3, r4}
	ldr r1, [r0, #0x48]
	cmp r1, #0x10
	blt _02262E72
	movs r0, #1
	pop {r3, r4}
	bx lr
_02262E72:
	adds r2, r1, #1
	str r2, [r0, #0x48]
	ldr r1, [r0, #0x30]
	ldr r3, [r0, #0x18]
	muls r2, r1, r2
	asrs r1, r2, #3
	lsrs r1, r1, #0x1c
	adds r1, r2, r1
	asrs r1, r1, #4
	adds r1, r3, r1
	str r1, [r0]
	ldr r2, [r0, #0x34]
	ldr r1, [r0, #0x48]
	adds r3, r2, #0
	muls r3, r1, r3
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	ldr r4, [r0, #0x1c]
	asrs r1, r1, #4
	adds r1, r4, r1
	str r1, [r0, #4]
	ldr r2, [r0, #0x38]
	ldr r1, [r0, #0x48]
	adds r3, r2, #0
	muls r3, r1, r3
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	ldr r4, [r0, #0x20]
	asrs r1, r1, #4
	adds r1, r4, r1
	str r1, [r0, #8]
	ldr r2, [r0, #0x3c]
	ldr r1, [r0, #0x48]
	adds r3, r2, #0
	muls r3, r1, r3
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	ldr r4, [r0, #0x24]
	asrs r1, r1, #4
	adds r1, r4, r1
	str r1, [r0, #0xc]
	ldr r2, [r0, #0x40]
	ldr r1, [r0, #0x48]
	adds r3, r2, #0
	muls r3, r1, r3
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	ldr r4, [r0, #0x28]
	asrs r1, r1, #4
	adds r1, r4, r1
	str r1, [r0, #0x10]
	ldr r2, [r0, #0x44]
	ldr r1, [r0, #0x48]
	adds r3, r2, #0
	muls r3, r1, r3
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	ldr r4, [r0, #0x2c]
	asrs r1, r1, #4
	adds r1, r4, r1
	str r1, [r0, #0x14]
	movs r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov115_02262E64

	thumb_func_start ov115_02262EFC
ov115_02262EFC: @ 0x02262EFC
	ldr r3, _02262F00 @ =ov115_02262F04
	bx r3
	.align 2, 0
_02262F00: .4byte ov115_02262F04
	thumb_func_end ov115_02262EFC

	thumb_func_start ov115_02262F04
ov115_02262F04: @ 0x02262F04
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4, #4]
	adds r5, r0, #0
	ldr r0, _02262F48 @ =0x000019CC
	lsls r1, r1, #0x10
	adds r0, r5, r0
	lsrs r1, r1, #0x10
	bl ov115_022620D8
	ldr r0, _02262F4C @ =0x00001AB4
	ldr r1, [r4, #8]
	adds r0, r5, r0
	bl ov115_02265274
	ldr r1, [r4, #0xc]
	ldr r0, _02262F4C @ =0x00001AB4
	lsls r1, r1, #0x10
	adds r0, r5, r0
	lsrs r1, r1, #0x10
	bl ov115_0226527C
	ldr r0, _02262F48 @ =0x000019CC
	ldr r1, [r4, #0x10]
	adds r0, r5, r0
	bl ov115_022620DC
	ldr r0, _02262F48 @ =0x000019CC
	ldr r1, [r4, #0x14]
	adds r0, r5, r0
	bl ov115_02261F94
	pop {r3, r4, r5, pc}
	nop
_02262F48: .4byte 0x000019CC
_02262F4C: .4byte 0x00001AB4
	thumb_func_end ov115_02262F04

	thumb_func_start ov115_02262F50
ov115_02262F50: @ 0x02262F50
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r2, #0
	adds r7, r1, #0
	adds r4, r3, #0
	cmp r6, r0
	blo _02262F64
	bl FUN_02022974
_02262F64:
	movs r0, #0x18
	ldr r1, [r5, #4]
	muls r0, r6, r0
	adds r3, r1, r0
	adds r2, r4, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r4, #0xc]
	ldrb r0, [r7]
	cmp r0, #0
	beq _02262FA6
	adds r1, r6, #1
	movs r0, #6
	subs r2, r0, r1
	bpl _02262F9A
	movs r2, #0
_02262F9A:
	movs r0, #0x18
	ldr r1, [r5, #4]
	muls r0, r2, r0
	adds r0, r1, r0
	ldr r0, [r0, #0x14]
	str r0, [r4, #0x14]
_02262FA6:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _02262FB2
	ldr r0, [r4, #4]
	rsbs r0, r0, #0
	str r0, [r4, #4]
_02262FB2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov115_02262F50

	thumb_func_start ov115_02262FB4
ov115_02262FB4: @ 0x02262FB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r4, r1, #0
	adds r6, r2, #0
	movs r1, #0
	movs r2, #0x40
	adds r5, r0, #0
	blx FUN_020D5124
	movs r0, #0xab
	adds r1, r6, #0
	bl FUN_02006C24
	movs r1, #0x78
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r1, #0xd0
	ldr r0, [r4, r1]
	adds r1, r7, #0
	movs r2, #0x15
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r5]
	movs r1, #0x78
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	adds r1, #0xd4
	ldr r0, [r4, r1]
	adds r1, r7, #0
	movs r2, #0x14
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #4]
	movs r1, #0x78
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r1, #0xd8
	ldr r0, [r4, r1]
	adds r1, r7, #0
	movs r2, #0x16
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #8]
	movs r1, #0x78
	str r1, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r1, #0xdc
	ldr r0, [r4, r1]
	adds r1, r7, #0
	movs r2, #0x17
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #0xc]
	ldr r0, [r5]
	bl FUN_0200A450
	cmp r0, #0
	bne _02263048
	bl FUN_02022974
_02263048:
	ldr r0, [r5, #4]
	bl FUN_0200A640
	cmp r0, #0
	bne _02263056
	bl FUN_02022974
_02263056:
	ldr r0, [r5]
	bl FUN_02009D4C
	ldr r0, [r5, #4]
	bl FUN_02009D4C
	movs r1, #0x78
	adds r0, r1, #0
	adds r2, r1, #0
	str r1, [sp]
	subs r0, #0x79
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r2, #0xd0
	ldr r2, [r4, r2]
	adds r3, r1, #0
	str r2, [sp, #0x14]
	adds r2, r1, #0
	adds r2, #0xd4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r1, #0
	adds r2, #0xd8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	adds r2, r1, #0
	adds r2, #0xdc
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, #0
	adds r0, #0x10
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x2c]
	adds r0, r5, #0
	adds r0, #0x10
	str r0, [sp, #0x30]
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp, #0x34]
	movs r0, #0x9e
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x44]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl FUN_02021B90
	movs r1, #0
	str r0, [r5, #0x34]
	bl FUN_02021CAC
	adds r0, r7, #0
	bl FUN_02006CA8
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov115_02262FB4

	thumb_func_start ov115_022630DC
ov115_022630DC: @ 0x022630DC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	adds r4, r1, #0
	bl FUN_02021BD4
	ldr r0, [r5]
	bl FUN_0200A4E4
	ldr r0, [r5, #4]
	bl FUN_0200A6DC
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #4]
	bl FUN_02009D68
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl FUN_02009D68
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl FUN_02009D68
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x40
	blx FUN_020D5124
	pop {r3, r4, r5, pc}
	thumb_func_end ov115_022630DC

	thumb_func_start ov115_02263130
ov115_02263130: @ 0x02263130
	adds r2, r0, #0
	movs r1, #1
	adds r2, #0x38
	strb r1, [r2]
	adds r2, r0, #0
	movs r3, #0
	adds r2, #0x3a
	strb r3, [r2]
	adds r2, r0, #0
	adds r2, #0x39
	strb r3, [r2]
	ldr r3, _0226314C @ =FUN_02021CAC
	ldr r0, [r0, #0x34]
	bx r3
	.align 2, 0
_0226314C: .4byte FUN_02021CAC
	thumb_func_end ov115_02263130

	thumb_func_start ov115_02263150
ov115_02263150: @ 0x02263150
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #3
	bhi _02263260
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226316C: @ jump table
	.2byte _02263174 - _0226316C - 2 @ case 0
	.2byte _022631A6 - _0226316C - 2 @ case 1
	.2byte _02263236 - _0226316C - 2 @ case 2
	.2byte _02263248 - _0226316C - 2 @ case 3
_02263174:
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02021E50
	ldr r0, _02263274 @ =0x00008544
	adds r0, r5, r0
	bl ov115_02264BAC
	ldr r0, _02263274 @ =0x00008544
	movs r1, #0x80
	adds r0, r5, r0
	movs r2, #0xb1
	bl ov115_02264BD8
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x3b
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	adds r4, #0x3a
	adds r0, r0, #1
	strb r0, [r4]
	b _02263260
_022631A6:
	movs r1, #2
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0xc
	bl FUN_02021E2C
	ldr r0, [r4, #0x34]
	bl FUN_02021E74
	adds r6, r0, #0
	cmp r6, #0xa
	beq _022631C2
	cmp r6, #0xb
	beq _022631F0
	b _02263224
_022631C2:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	bne _02263224
	movs r0, #0x40
	str r0, [sp]
	movs r0, #2
	movs r1, #0x80
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x60
	adds r3, r1, #0
	bl ov115_022613F8
	movs r0, #0x65
	lsls r0, r0, #4
	bl FUN_02005748
	movs r0, #1
	adds r4, #0x3b
	strb r0, [r4]
	b _02263224
_022631F0:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #2
	blo _02263210
	movs r0, #3
	adds r4, #0x3a
	strb r0, [r4]
	b _0226321C
_02263210:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x3a
	strb r1, [r0]
	movs r0, #0x10
	str r0, [r4, #0x3c]
_0226321C:
	ldr r0, _02263274 @ =0x00008544
	adds r0, r5, r0
	bl ov115_02264BF8
_02263224:
	ldr r2, _02263278 @ =0x02265B7C
	lsls r3, r6, #1
	ldr r0, _02263274 @ =0x00008544
	ldrsh r2, [r2, r3]
	adds r0, r5, r0
	movs r1, #0x80
	bl ov115_02264BD8
	b _02263260
_02263236:
	ldr r0, [r4, #0x3c]
	subs r0, r0, #1
	str r0, [r4, #0x3c]
	cmp r0, #0
	bgt _02263260
	movs r0, #0
	adds r4, #0x3a
	strb r0, [r4]
	b _02263260
_02263248:
	adds r0, r5, #0
	bl ov115_022625C8
	cmp r0, #0
	bne _02263260
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_02263260:
	adds r0, r5, #0
	bl ov115_02262304
	adds r0, r5, #0
	bl ov115_02262524
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02263274: .4byte 0x00008544
_02263278: .4byte 0x02265B7C
	thumb_func_end ov115_02263150

	thumb_func_start ov115_0226327C
ov115_0226327C: @ 0x0226327C
	adds r3, r0, #0
	movs r2, #0x18
	movs r1, #0
_02263282:
	strb r1, [r3]
	adds r3, r3, #1
	subs r2, r2, #1
	bne _02263282
	ldr r1, _02263290 @ =0x0000FFFF
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
_02263290: .4byte 0x0000FFFF
	thumb_func_end ov115_0226327C

	thumb_func_start ov115_02263294
ov115_02263294: @ 0x02263294
	push {r3, r4}
	lsls r3, r2, #2
	str r1, [r0, r3]
	movs r3, #1
	ldr r4, [r0, #0x10]
	lsls r3, r2
	orrs r3, r4
	str r3, [r0, #0x10]
	cmp r1, #0
	beq _022632C0
	ldr r4, [r0, #0x14]
	ldr r3, _022632C4 @ =0x0000FFFF
	cmp r4, r3
	beq _022632BE
	lsls r3, r4, #2
	ldr r3, [r0, r3]
	cmp r3, r1
	bhs _022632C0
	str r2, [r0, #0x14]
	pop {r3, r4}
	bx lr
_022632BE:
	str r2, [r0, #0x14]
_022632C0:
	pop {r3, r4}
	bx lr
	.align 2, 0
_022632C4: .4byte 0x0000FFFF
	thumb_func_end ov115_02263294

	thumb_func_start ov115_022632C8
ov115_022632C8: @ 0x022632C8
	movs r1, #0
	str r1, [r0, #0x10]
	ldr r1, _022632D4 @ =0x0000FFFF
	str r1, [r0, #0x14]
	bx lr
	nop
_022632D4: .4byte 0x0000FFFF
	thumb_func_end ov115_022632C8

	thumb_func_start ov115_022632D8
ov115_022632D8: @ 0x022632D8
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov115_022632D8

	thumb_func_start ov115_022632DC
ov115_022632DC: @ 0x022632DC
	push {r4, r5}
	movs r4, #0
	ldr r5, [r0, #0x10]
	adds r3, r4, #0
	movs r0, #1
_022632E6:
	adds r2, r0, #0
	lsls r2, r3
	tst r2, r5
	beq _022632F0
	adds r4, r4, #1
_022632F0:
	adds r3, r3, #1
	cmp r3, #4
	blt _022632E6
	cmp r1, r4
	bhi _02263300
	movs r0, #1
	pop {r4, r5}
	bx lr
_02263300:
	movs r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov115_022632DC

	thumb_func_start ov115_02263308
ov115_02263308: @ 0x02263308
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02263324 @ =0x02265C7C
	add r3, sp, #0
	movs r2, #5
_02263312:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02263312
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_02263324: .4byte 0x02265C7C
	thumb_func_end ov115_02263308

	thumb_func_start ov115_02263328
ov115_02263328: @ 0x02263328
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _02263398 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #2
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0226339C @ =0xFFFFCFFD
	ands r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	adds r2, r1, #2
	ands r3, r2
	movs r2, #0x10
	orrs r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _022633A0 @ =0x0000CFFB
	ands r2, r3
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r3, [r0]
	adds r1, r1, #2
	ands r3, r2
	movs r2, #8
	orrs r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	ands r2, r1
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r1, #0
	ldr r0, _022633A4 @ =0x00006B5A
	ldr r2, _022633A8 @ =0x00007FFF
	movs r3, #0x3f
	str r1, [sp]
	blx FUN_020BFD58
	ldr r1, _022633AC @ =0xBFFF0000
	ldr r0, _022633B0 @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02263398: .4byte 0x04000008
_0226339C: .4byte 0xFFFFCFFD
_022633A0: .4byte 0x0000CFFB
_022633A4: .4byte 0x00006B5A
_022633A8: .4byte 0x00007FFF
_022633AC: .4byte 0xBFFF0000
_022633B0: .4byte 0x04000580
	thumb_func_end ov115_02263328

	thumb_func_start ov115_022633B4
ov115_022633B4: @ 0x022633B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #4
	str r0, [sp]
	ldr r0, _022633E8 @ =ov115_02263328
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	movs r1, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #1
	adds r3, r1, #0
	bl FUN_02024220
	str r0, [r5, #0x18]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov115_02263C24
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022633E8: .4byte ov115_02263328
	thumb_func_end ov115_022633B4

	thumb_func_start ov115_022633EC
ov115_022633EC: @ 0x022633EC
	push {r4, lr}
	adds r4, r0, #0
	bl ov115_02263CC0
	ldr r0, [r4, #0x18]
	bl FUN_020242C4
	pop {r4, pc}
	thumb_func_end ov115_022633EC

	thumb_func_start ov115_022633FC
ov115_022633FC: @ 0x022633FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0226352C @ =0x000086CC
	movs r2, #0x20
	adds r0, r5, r0
	adds r4, r1, #0
	bl FUN_020182CC
	bl ov115_02263308
	ldr r0, _02263530 @ =0x00001AB4
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	adds r0, r5, r0
	adds r3, r4, #0
	bl ov115_022633B4
	ldr r0, _02263530 @ =0x00001AB4
	adds r1, r4, #0
	adds r0, r5, r0
	bl ov115_0226376C
	ldr r0, _02263530 @ =0x00001AB4
	adds r1, r4, #0
	adds r0, r5, r0
	bl ov115_02263990
	ldr r0, _02263530 @ =0x00001AB4
	adds r1, r4, #0
	adds r0, r5, r0
	bl ov115_02263BCC
	movs r0, #0x9e
	adds r1, r4, #0
	bl FUN_02006C24
	adds r6, r0, #0
	ldr r0, _02263530 @ =0x00001AB4
	adds r1, r6, #0
	adds r0, r5, r0
	adds r2, r4, #0
	bl ov115_02263A74
	ldr r0, [r5, #0x14]
	ldr r1, _02263530 @ =0x00001AB4
	str r0, [sp]
	ldr r0, _0226352C @ =0x000086CC
	str r4, [sp, #4]
	adds r0, r5, r0
	str r0, [sp, #8]
	ldr r0, _02263534 @ =0x00001C54
	ldr r3, [r5, #0x10]
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r6, #0
	bl ov115_02264E48
	ldr r0, _02263538 @ =0x00001F74
	ldr r3, _0226352C @ =0x000086CC
	adds r0, r5, r0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, r3
	bl ov115_02263DF8
	ldr r0, _02263530 @ =0x00001AB4
	adds r1, r6, #0
	adds r0, r5, r0
	adds r2, r4, #0
	bl ov115_022643EC
	ldr r0, _02263530 @ =0x00001AB4
	ldr r1, _0226353C @ =0x00008544
	ldr r2, [r5, #0x14]
	adds r0, r5, r0
	adds r1, r5, r1
	adds r3, r4, #0
	bl ov115_02264B40
	ldr r0, _02263530 @ =0x00001AB4
	ldr r1, _02263540 @ =0x0000854C
	ldr r2, [r5, #0x14]
	adds r0, r5, r0
	adds r1, r5, r1
	adds r3, r4, #0
	bl ov115_02264C0C
	ldr r0, _02263530 @ =0x00001AB4
	ldr r2, [r5, #0x14]
	adds r0, r5, r0
	adds r1, r6, #0
	adds r3, r4, #0
	bl ov115_02263CD8
	ldr r0, [r5, #0x14]
	ldr r1, _02263530 @ =0x00001AB4
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r2, _02263544 @ =0x0000877C
	ldr r0, _02263548 @ =0x00001F38
	ldr r2, [r5, r2]
	ldr r3, [r5, #0x10]
	adds r0, r5, r0
	adds r1, r5, r1
	bl ov115_022617E8
	ldr r0, _02263530 @ =0x00001AB4
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	adds r0, r5, r0
	adds r3, r4, #0
	bl ov115_02261AC8
	str r4, [sp]
	ldr r0, _0226354C @ =0x00001E38
	ldr r1, _02263530 @ =0x00001AB4
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	adds r0, r5, r0
	adds r1, r5, r1
	bl ov115_02261520
	ldr r1, [r5, #0x14]
	ldr r0, _02263550 @ =0x000021A8
	lsls r1, r1, #0x18
	adds r0, r5, r0
	lsrs r1, r1, #0x18
	bl ov115_022652A4
	ldr r0, _02263554 @ =0x0000862C
	ldr r1, _02263530 @ =0x00001AB4
	adds r0, r5, r0
	adds r1, r5, r1
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov115_02265478
	adds r0, r6, #0
	bl FUN_02006CA8
	ldr r0, _02263558 @ =0x00001AD0
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_0225CAD4
	ldr r1, _0226355C @ =0x000021A4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226352C: .4byte 0x000086CC
_02263530: .4byte 0x00001AB4
_02263534: .4byte 0x00001C54
_02263538: .4byte 0x00001F74
_0226353C: .4byte 0x00008544
_02263540: .4byte 0x0000854C
_02263544: .4byte 0x0000877C
_02263548: .4byte 0x00001F38
_0226354C: .4byte 0x00001E38
_02263550: .4byte 0x000021A8
_02263554: .4byte 0x0000862C
_02263558: .4byte 0x00001AD0
_0226355C: .4byte 0x000021A4
	thumb_func_end ov115_022633FC

	thumb_func_start ov115_02263560
ov115_02263560: @ 0x02263560
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02263610 @ =0x0000862C
	ldr r1, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02265688
	ldr r0, _02263618 @ =0x00001E38
	ldr r1, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02261574
	ldr r0, _02263614 @ =0x00001AB4
	ldr r1, [r4, #0x10]
	adds r0, r4, r0
	bl ov115_02261AD8
	ldr r0, _0226361C @ =0x00001F38
	ldr r1, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02261A04
	ldr r0, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	bl ov115_02263DF4
	ldr r0, _02263614 @ =0x00001AB4
	ldr r1, _02263620 @ =0x0000854C
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02264C78
	ldr r0, _02263624 @ =0x00008544
	adds r0, r4, r0
	bl ov115_02264BA0
	ldr r0, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	bl ov115_02264564
	ldr r0, _02263628 @ =0x00001F74
	ldr r1, _0226362C @ =0x000086CC
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov115_02263FF4
	ldr r0, _02263630 @ =0x00001C54
	ldr r1, _02263614 @ =0x00001AB4
	ldr r2, _0226362C @ =0x000086CC
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, r2
	bl ov115_02264F68
	ldr r0, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	bl ov115_02263B78
	ldr r0, _02263634 @ =0x000021A4
	ldr r0, [r4, r0]
	bl FUN_0225CB38
	ldr r0, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	bl ov115_02263954
	ldr r0, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	bl ov115_02263A3C
	ldr r0, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	bl ov115_02263C04
	ldr r0, _02263614 @ =0x00001AB4
	adds r0, r4, r0
	bl ov115_022633EC
	ldr r0, _02263638 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0226363C @ =0x04001050
	strh r1, [r0]
	pop {r4, pc}
	nop
_02263610: .4byte 0x0000862C
_02263614: .4byte 0x00001AB4
_02263618: .4byte 0x00001E38
_0226361C: .4byte 0x00001F38
_02263620: .4byte 0x0000854C
_02263624: .4byte 0x00008544
_02263628: .4byte 0x00001F74
_0226362C: .4byte 0x000086CC
_02263630: .4byte 0x00001C54
_02263634: .4byte 0x000021A4
_02263638: .4byte 0x04000050
_0226363C: .4byte 0x04001050
	thumb_func_end ov115_02263560

	thumb_func_start ov115_02263640
ov115_02263640: @ 0x02263640
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x13
	ldr r1, _0226368C @ =0x000019CC
	lsls r0, r0, #6
	ldr r2, [r5]
	adds r0, r4, r0
	adds r1, r5, r1
	bl ov115_02264044
	movs r0, #0x13
	ldr r1, _0226368C @ =0x000019CC
	lsls r0, r0, #6
	ldr r2, [r5]
	adds r0, r4, r0
	adds r1, r5, r1
	bl ov115_022640A4
	ldr r0, _02263690 @ =0x00006A90
	adds r0, r4, r0
	bl ov115_02264BC0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov115_0226369C
	ldr r0, _02263694 @ =0x000006F4
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov115_022652C0
	ldr r0, _02263698 @ =0x00006B78
	adds r0, r4, r0
	bl ov115_02265820
	pop {r3, r4, r5, pc}
	nop
_0226368C: .4byte 0x000019CC
_02263690: .4byte 0x00006A90
_02263694: .4byte 0x000006F4
_02263698: .4byte 0x00006B78
	thumb_func_end ov115_02263640

	thumb_func_start ov115_0226369C
ov115_0226369C: @ 0x0226369C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0226375C @ =0x00006A98
	adds r4, r1, #0
	adds r0, r4, r0
	bl ov115_02264C90
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov115_02261598
	bl FUN_020241B4
	adds r0, r4, #0
	bl ov115_02263CD0
	movs r0, #0
	ldr r2, _02263760 @ =0xFFFFF000
	adds r1, r0, #0
	adds r3, r0, #0
	blx FUN_020AF51C
	ldr r1, _02263764 @ =0x00007FFF
	movs r0, #0
	blx FUN_020AF558
	ldr r0, _02263764 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF56C
	ldr r0, _02263764 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF590
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	movs r0, #0x1a
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov115_02264FA0
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #8
	str r2, [sp, #8]
	blx FUN_020B275C
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	movs r0, #0x13
	ldr r1, _02263768 @ =0x000019CC
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r1, r5, r1
	bl ov115_02264134
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #4
	str r2, [sp, #4]
	blx FUN_020B275C
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	ldr r1, [r5, #0x10]
	adds r0, r4, #0
	bl ov115_02264684
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
	ldr r0, [r4, #0x1c]
	bl FUN_020219F8
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0226375C: .4byte 0x00006A98
_02263760: .4byte 0xFFFFF000
_02263764: .4byte 0x00007FFF
_02263768: .4byte 0x000019CC
	thumb_func_end ov115_0226369C

	thumb_func_start ov115_0226376C
ov115_0226376C: @ 0x0226376C
	push {r4, r5, r6, lr}
	sub sp, #0xc0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02018340
	add r3, sp, #0xb0
	ldr r6, _02263938 @ =0x02265B6C
	str r0, [r5]
	adds r2, r3, #0
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r6, _0226393C @ =0x02265B94
	add r3, sp, #0x94
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #1
	str r0, [r3]
	ldr r0, [r5]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5]
	movs r1, #1
	bl FUN_02019EBC
	ldr r6, _02263940 @ =0x02265BB0
	add r3, sp, #0x78
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #2
	str r0, [r3]
	ldr r0, [r5]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5]
	movs r1, #2
	bl FUN_02019EBC
	ldr r6, _02263944 @ =0x02265BCC
	add r3, sp, #0x5c
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #4
	str r0, [r3]
	ldr r0, [r5]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5]
	movs r1, #4
	bl FUN_02019EBC
	ldr r6, _02263948 @ =0x02265BE8
	add r3, sp, #0x40
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #5
	str r0, [r3]
	ldr r0, [r5]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #5
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5]
	movs r1, #5
	bl FUN_02019EBC
	ldr r6, _0226394C @ =0x02265C04
	add r3, sp, #0x24
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #6
	str r0, [r3]
	ldr r0, [r5]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #6
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5]
	movs r1, #6
	bl FUN_02019EBC
	ldr r6, _02263950 @ =0x02265C20
	add r3, sp, #8
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #7
	str r0, [r3]
	ldr r0, [r5]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #7
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5]
	movs r1, #7
	bl FUN_02019EBC
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0
	movs r1, #0xa0
	adds r2, r4, #0
	bl FUN_02002E98
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	movs r1, #1
	ldr r0, [r5]
	adds r2, r1, #0
	movs r3, #4
	bl FUN_0200DAA4
	add sp, #0xc0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02263938: .4byte 0x02265B6C
_0226393C: .4byte 0x02265B94
_02263940: .4byte 0x02265BB0
_02263944: .4byte 0x02265BCC
_02263948: .4byte 0x02265BE8
_0226394C: .4byte 0x02265C04
_02263950: .4byte 0x02265C20
	thumb_func_end ov115_0226376C

	thumb_func_start ov115_02263954
ov115_02263954: @ 0x02263954
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r4]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r4]
	movs r1, #7
	bl FUN_02019044
	ldr r0, [r4]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov115_02263954

	thumb_func_start ov115_02263990
ov115_02263990: @ 0x02263990
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r7, r0, #0
	adds r6, r1, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x1f
	str r3, [sp, #0xc]
	adds r2, r0, #0
	str r6, [sp, #0x10]
	bl FUN_0200A784
	ldr r4, _02263A34 @ =0x02265B5C
	add r3, sp, #0x14
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r1, _02263A38 @ =0x00200010
	adds r0, r2, #0
	adds r2, r1, #0
	str r6, [sp, #0x20]
	bl FUN_0201E88C
	movs r0, #0x10
	adds r1, r6, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	ldr r1, _02263A38 @ =0x00200010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	adds r1, r7, #0
	movs r0, #0x80
	adds r1, #0x20
	adds r2, r6, #0
	bl FUN_020095C4
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	movs r2, #2
	adds r0, #0x20
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r4, #0
	adds r5, r7, #0
_02263A0A:
	movs r0, #0x10
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02009714
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02263A0A
	movs r0, #8
	adds r1, r6, #0
	bl FUN_02012744
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r7, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02263A34: .4byte 0x02265B5C
_02263A38: .4byte 0x00200010
	thumb_func_end ov115_02263990

	thumb_func_start ov115_02263A3C
ov115_02263A3C: @ 0x02263A3C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020127BC
	ldr r0, [r5, #0x1c]
	bl FUN_02021964
	movs r6, #0x52
	movs r4, #0
	lsls r6, r6, #2
_02263A56:
	ldr r0, [r5, r6]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02263A56
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0200A878
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02263A3C

	thumb_func_start ov115_02263A74
ov115_02263A74: @ 0x02263A74
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	adds r4, r2, #0
	movs r2, #0xc8
	adds r5, r0, #0
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r2, #0x80
	ldr r0, [r5, r2]
	movs r2, #2
	movs r3, #0
	adds r6, r1, #0
	bl FUN_02009A4C
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r1, #0xc8
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	adds r1, #0x84
	ldr r0, [r5, r1]
	adds r1, r6, #0
	movs r2, #3
	movs r3, #0
	bl FUN_02009B04
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r1, #0xc8
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r1, #0x88
	ldr r0, [r5, r1]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r1, #0xc8
	str r1, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r2, #0
	str r4, [sp, #8]
	adds r1, #0x8c
	ldr r0, [r5, r1]
	adds r1, r6, #0
	adds r3, r2, #0
	bl FUN_02009BC4
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0xc
	ldr r0, [r5, r1]
	bl FUN_0200A450
	cmp r0, #0
	bne _02263B08
	bl FUN_02022974
_02263B08:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_0200A640
	cmp r0, #0
	bne _02263B1A
	bl FUN_02022974
_02263B1A:
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	movs r1, #0xc8
	adds r0, r1, #0
	adds r2, r1, #0
	str r1, [sp]
	subs r0, #0xc9
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r2, #0x80
	ldr r2, [r5, r2]
	adds r3, r1, #0
	str r2, [sp, #0x14]
	adds r2, r1, #0
	adds r2, #0x84
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r1, #0
	adds r2, #0x88
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	adds r2, r1, #0
	adds r2, #0x8c
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r1, #0
	adds r0, #0x90
	adds r0, r5, r0
	adds r2, r1, #0
	bl FUN_020093B4
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02263A74

	thumb_func_start ov115_02263B78
ov115_02263B78: @ 0x02263B78
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200A4E4
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_0200A6DC
	movs r1, #0x52
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0x34
	ldr r1, [r4, r1]
	bl FUN_02009D68
	movs r1, #0x53
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0x34
	ldr r1, [r4, r1]
	bl FUN_02009D68
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	adds r1, #0x34
	ldr r1, [r4, r1]
	bl FUN_02009D68
	movs r1, #0x55
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0x34
	ldr r1, [r4, r1]
	bl FUN_02009D68
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_02263B78

	thumb_func_start ov115_02263BCC
ov115_02263BCC: @ 0x02263BCC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0200B358
	str r0, [r5, #4]
	ldr r2, _02263C00 @ =0x00000197
	movs r0, #0
	movs r1, #0x1a
	adds r3, r4, #0
	bl FUN_0200B144
	str r0, [r5, #8]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [r5, #0xc]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
	nop
_02263C00: .4byte 0x00000197
	thumb_func_end ov115_02263BCC

	thumb_func_start ov115_02263C04
ov115_02263C04: @ 0x02263C04
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_020237BC
	ldr r0, [r4, #0xc]
	bl FUN_020237BC
	ldr r0, [r4, #8]
	bl FUN_0200B190
	ldr r0, [r4, #4]
	bl FUN_0200B3F0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_02263C04

	thumb_func_start ov115_02263C24
ov115_02263C24: @ 0x02263C24
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r0, r3, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_020203AC
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #0
	adds r2, r1, #4
	str r0, [r5, r2]
	adds r2, r1, #0
	adds r2, #8
	str r0, [r5, r2]
	adds r2, r1, #0
	adds r2, #0xc
	str r0, [r5, r2]
	ldr r3, _02263CB0 @ =0x0000F112
	add r2, sp, #0xc
	strh r3, [r2]
	ldr r3, _02263CB4 @ =0x02265C54
	lsls r4, r4, #3
	lsls r6, r6, #1
	adds r3, r3, r4
	ldrh r3, [r6, r3]
	strh r3, [r2, #2]
	strh r0, [r2, #4]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	ldr r3, _02263CB8 @ =0x00000FA4
	str r0, [sp, #8]
	adds r0, r1, #4
	ldr r1, _02263CBC @ =0x001D9000
	adds r0, r5, r0
	add r2, sp, #0xc
	bl FUN_020206D0
	movs r1, #0
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #0x18]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	movs r1, #0x19
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	add r0, sp, #0x14
	bl FUN_02020680
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_020203D4
	movs r0, #0x32
	lsls r0, r0, #0xe
	lsrs r2, r0, #0xb
	movs r1, #0xfa
	ldr r2, [r5, r2]
	lsls r1, r1, #0xe
	bl FUN_020206BC
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_02263CB0: .4byte 0x0000F112
_02263CB4: .4byte 0x02265C54
_02263CB8: .4byte 0x00000FA4
_02263CBC: .4byte 0x001D9000
	thumb_func_end ov115_02263C24

	thumb_func_start ov115_02263CC0
ov115_02263CC0: @ 0x02263CC0
	movs r1, #0x19
	lsls r1, r1, #4
	ldr r3, _02263CCC @ =FUN_020203B8
	ldr r0, [r0, r1]
	bx r3
	nop
_02263CCC: .4byte FUN_020203B8
	thumb_func_end ov115_02263CC0

	thumb_func_start ov115_02263CD0
ov115_02263CD0: @ 0x02263CD0
	ldr r3, _02263CD4 @ =FUN_020203EC
	bx r3
	.align 2, 0
_02263CD4: .4byte FUN_020203EC
	thumb_func_end ov115_02263CD0

	thumb_func_start ov115_02263CD8
ov115_02263CD8: @ 0x02263CD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r4, r3, #0
	str r0, [sp, #8]
	adds r6, r1, #0
	str r4, [sp, #0xc]
	adds r7, r2, #0
	ldr r2, [r5]
	adds r0, r6, #0
	movs r1, #0xc
	movs r3, #4
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r1, #0xe
	movs r3, #7
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r1, #0xf
	movs r3, #6
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r1, #0x10
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r1, #0x11
	movs r3, #4
	bl FUN_0200710C
	movs r0, #6
	lsls r0, r0, #6
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xd
	movs r2, #4
	movs r3, #0
	str r4, [sp, #4]
	bl FUN_02007130
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02263DF0 @ =0x02265AE4
	movs r2, #0
	ldrb r0, [r0, r7]
	movs r1, #7
	adds r3, r2, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	bl FUN_02019E2C
	movs r0, #0x20
	str r0, [sp]
	lsls r4, r7, #1
	str r0, [sp, #4]
	adds r0, r4, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r2, #0
	ldr r0, [r5]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019E2C
	movs r0, #0x20
	str r0, [sp]
	movs r2, #0
	adds r4, r4, #1
	str r0, [sp, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019E2C
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r2, #0
	ldr r0, [r5]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019E2C
	ldr r0, [r5]
	movs r1, #4
	bl FUN_02019448
	ldr r0, [r5]
	movs r1, #5
	bl FUN_02019448
	ldr r0, [r5]
	movs r1, #6
	bl FUN_02019448
	ldr r0, [r5]
	movs r1, #7
	bl FUN_02019448
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02263DF0: .4byte 0x02265AE4
	thumb_func_end ov115_02263CD8

	thumb_func_start ov115_02263DF4
ov115_02263DF4: @ 0x02263DF4
	bx lr
	.align 2, 0
	thumb_func_end ov115_02263DF4

	thumb_func_start ov115_02263DF8
ov115_02263DF8: @ 0x02263DF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r2, [sp, #0x10]
	movs r2, #0x23
	str r1, [sp, #0xc]
	movs r1, #0
	lsls r2, r2, #4
	str r0, [sp, #8]
	str r3, [sp, #0x14]
	blx FUN_020D5124
	movs r1, #0x5a
	ldr r0, [sp, #8]
	lsls r1, r1, #2
	ldr r6, _02263FDC @ =0x02265AFC
	movs r7, #0
	adds r4, r0, r1
	adds r5, r0, #0
_02263E1C:
	ldrh r2, [r6]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	adds r0, r4, #0
	bl FUN_020170D8
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02017258
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02017348
	movs r1, #0
	ldr r2, _02263FE0 @ =0xFFEDE000
	adds r0, r5, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #6
	lsls r1, r1, #0xa
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r7, r7, #1
	adds r6, r6, #2
	adds r4, #0x10
	adds r5, #0x78
	cmp r7, #3
	blt _02263E1C
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, _02263FE4 @ =0x02265B14
	movs r1, #0x66
	str r0, [sp, #0x28]
	ldr r0, _02263FE8 @ =0x02266644
	lsls r1, r1, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	ldr r6, [sp, #8]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, _02263FEC @ =0x022660A4
	str r0, [sp, #0x1c]
_02263E7A:
	ldr r0, [sp, #0x10]
	movs r2, #0x5a
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	lsls r2, r2, #2
	adds r2, r1, r2
	str r0, [sp, #4]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldrb r1, [r1]
	ldrh r3, [r3]
	ldr r0, [sp, #0x20]
	lsls r1, r1, #4
	adds r1, r2, r1
	ldr r2, [sp, #0xc]
	bl FUN_02017164
	ldr r0, [sp, #0x20]
	movs r1, #0
	bl FUN_02017240
	ldr r0, [sp, #0x24]
	movs r5, #0
	ldrb r0, [r0]
	lsls r1, r0, #4
	ldr r0, [sp, #8]
	adds r1, r0, r1
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02263EC0
	adds r4, #0x40
	b _02263EC2
_02263EC0:
	adds r4, r5, #0
_02263EC2:
	cmp r4, #0
	bne _02263ECA
	movs r7, #1
	b _02263EDC
_02263ECA:
	movs r7, #0
	b _02263EDC
_02263ECE:
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	adds r1, r5, #0
	blx FUN_020AE5CC
	adds r5, r5, #1
_02263EDC:
	cmp r7, #0
	bne _02263EFC
	cmp r4, #0
	beq _02263EF8
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _02263EF8
	ldrh r0, [r4, #6]
	adds r1, r4, r0
	ldrh r0, [r1, #2]
	adds r1, r1, r0
	lsls r0, r5, #4
	adds r0, r1, r0
	b _02263EFE
_02263EF8:
	movs r0, #0
	b _02263EFE
_02263EFC:
	movs r0, #0
_02263EFE:
	cmp r0, #0
	bne _02263ECE
	ldr r5, [sp, #0x1c]
	movs r7, #0
_02263F06:
	cmp r4, #0
	beq _02263F16
	adds r0, r4, #0
	adds r1, r5, #0
	blx FUN_020B3AA4
	adds r1, r0, #0
	b _02263F1A
_02263F16:
	movs r1, #0
	mvns r1, r1
_02263F1A:
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	beq _02263F2C
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	blx FUN_020AE590
_02263F2C:
	adds r7, r7, #1
	adds r5, #0x10
	cmp r7, #0xf
	blt _02263F06
	ldr r0, [sp, #0x28]
	adds r6, #0x14
	adds r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	adds r0, #0x14
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r0, #0xf0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #6
	blt _02263E7A
	ldr r0, _02263FF0 @ =0x02265AE0
	movs r4, #0x85
	ldrb r5, [r0]
	ldr r0, [sp, #0x10]
	lsls r4, r4, #2
	str r0, [sp]
	ldr r0, [sp, #0x14]
	adds r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	subs r2, #0xac
	adds r2, r1, r2
	lsls r1, r5, #4
	adds r1, r2, r1
	ldr r2, [sp, #0xc]
	adds r0, r0, r4
	movs r3, #0x20
	bl FUN_02017164
	movs r0, #0x78
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [sp, #8]
	adds r0, r0, r1
	ldr r1, [sp, #8]
	adds r1, r1, r4
	bl FUN_0201727C
	adds r2, r4, #0
	ldr r0, [sp, #8]
	movs r1, #4
	adds r2, #0x18
	strh r1, [r0, r2]
	movs r1, #0
	adds r2, r2, #2
	strh r1, [r0, r2]
	bl ov115_0226422C
	ldr r0, [sp, #8]
	adds r2, r4, #0
	ldr r1, [sp, #8]
	subs r2, #0x2c
	adds r0, #0x78
	adds r1, r1, r2
	bl FUN_0201727C
	adds r1, r4, #0
	ldr r0, [sp, #8]
	subs r1, #0x2c
	adds r0, r0, r1
	movs r1, #0
	bl FUN_02017240
	ldr r0, [sp, #8]
	movs r1, #1
	adds r0, #0x78
	bl FUN_02017348
	ldr r0, [sp, #8]
	movs r2, #4
	subs r1, r4, #4
	strh r2, [r0, r1]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02263FDC: .4byte 0x02265AFC
_02263FE0: .4byte 0xFFEDE000
_02263FE4: .4byte 0x02265B14
_02263FE8: .4byte 0x02266644
_02263FEC: .4byte 0x022660A4
_02263FF0: .4byte 0x02265AE0
	thumb_func_end ov115_02263DF8

	thumb_func_start ov115_02263FF4
ov115_02263FF4: @ 0x02263FF4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x5a
	lsls r0, r0, #2
	adds r6, r1, #0
	movs r4, #0
	adds r5, r7, r0
_02264002:
	adds r0, r5, #0
	bl FUN_02017110
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #3
	blt _02264002
	movs r0, #0x66
	lsls r0, r0, #2
	movs r5, #0
	adds r4, r7, r0
_02264018:
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_020171A0
	adds r5, r5, #1
	adds r4, #0x14
	cmp r5, #6
	blt _02264018
	movs r0, #0x85
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r1, r6, #0
	bl FUN_020171A0
	movs r2, #0x23
	adds r0, r7, #0
	movs r1, #0
	lsls r2, r2, #4
	blx FUN_020D5124
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_02263FF4

	thumb_func_start ov115_02264044
ov115_02264044: @ 0x02264044
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl ov115_022640C0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov115_022640EC
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov115_02264110
	cmp r4, #0
	beq _0226406C
	cmp r4, #1
	beq _02264086
	cmp r4, #2
	bne _022640A0
_0226406C:
	adds r0, r5, #0
	movs r1, #1
	bl ov115_02264190
	ldrh r1, [r6, #4]
	adds r0, r5, #0
	bl ov115_0226414C
	adds r0, r5, #0
	movs r1, #1
	bl ov115_0226422C
	pop {r4, r5, r6, pc}
_02264086:
	adds r0, r5, #0
	movs r1, #3
	bl ov115_02264190
	adds r0, r5, #0
	movs r1, #0
	bl ov115_0226422C
	movs r1, #1
	adds r0, r5, #0
	lsls r1, r1, #0xc
	bl ov115_02264214
_022640A0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02264044

	thumb_func_start ov115_022640A4
ov115_022640A4: @ 0x022640A4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x66
	lsls r0, r0, #2
	movs r1, #1
	adds r0, r4, r0
	lsls r1, r1, #0xc
	bl FUN_020171CC
	adds r0, r4, #0
	bl ov115_02264270
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_022640A4

	thumb_func_start ov115_022640C0
ov115_022640C0: @ 0x022640C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
_022640C8:
	adds r1, r4, #0
	adds r2, r4, #0
	adds r3, r4, #0
	adds r1, #0xd8
	adds r2, #0xdc
	adds r3, #0xe0
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	adds r0, r5, #0
	bl FUN_02017350
	adds r6, r6, #1
	adds r5, #0x78
	cmp r6, #3
	blt _022640C8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_022640C0

	thumb_func_start ov115_022640EC
ov115_022640EC: @ 0x022640EC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r1, #2]
	movs r4, #0
	movs r7, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_022640FA:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl FUN_02017388
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #3
	blt _022640FA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_022640EC

	thumb_func_start ov115_02264110
ov115_02264110: @ 0x02264110
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_02264118:
	adds r0, r6, #0
	adds r0, #0xd4
	ldr r1, [r0]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #3
	blt _02264118
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02264110

	thumb_func_start ov115_02264134
ov115_02264134: @ 0x02264134
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0226413A:
	adds r0, r5, #0
	bl FUN_02017294
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #3
	blt _0226413A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02264134

	thumb_func_start ov115_0226414C
ov115_0226414C: @ 0x0226414C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _02264188 @ =0x0000F222
	adds r4, r1, #0
	bl FUN_0201D2A4
	adds r1, r0, #0
	ldr r0, _0226418C @ =0x00000E38
	subs r2, r4, r0
	movs r0, #0x5a
	muls r0, r2, r0
	blx FUN_020E2178
	movs r1, #0x2d
	lsls r1, r1, #0xe
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0x5a
	blx FUN_020E1F6C
	movs r1, #0x2d
	lsls r1, r1, #0xe
	subs r1, r1, r0
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_02017240
	pop {r3, r4, r5, pc}
	nop
_02264188: .4byte 0x0000F222
_0226418C: .4byte 0x00000E38
	thumb_func_end ov115_0226414C

	thumb_func_start ov115_02264190
ov115_02264190: @ 0x02264190
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #6
	blo _0226419E
	bl FUN_02022974
_0226419E:
	movs r2, #0x21
	lsls r2, r2, #4
	ldrh r1, [r5, r2]
	cmp r1, r4
	beq _0226420C
	ldr r0, _02264210 @ =0x02266644
	subs r2, #0x78
	ldrb r3, [r0, r1]
	movs r0, #0x78
	muls r0, r3, r0
	adds r3, r5, r2
	movs r2, #0x14
	muls r2, r1, r2
	adds r0, r5, r0
	adds r1, r3, r2
	bl FUN_02017288
	movs r0, #0x66
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r0, #0x14
	adds r7, r4, #0
	muls r7, r0, r7
	ldr r0, _02264210 @ =0x02266644
	ldrb r1, [r0, r4]
	movs r0, #0x78
	muls r0, r1, r0
	str r0, [sp]
	adds r0, r5, r0
	adds r1, r6, r7
	bl FUN_0201727C
	adds r0, r6, r7
	movs r1, #0
	bl FUN_02017240
	movs r0, #0x21
	lsls r0, r0, #4
	ldrh r1, [r5, r0]
	ldr r0, _02264210 @ =0x02266644
	ldrb r1, [r0, r1]
	movs r0, #0x78
	muls r0, r1, r0
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017348
	ldr r0, [sp]
	movs r1, #1
	adds r0, r5, r0
	bl FUN_02017348
	movs r0, #0x21
	lsls r0, r0, #4
	strh r4, [r5, r0]
_0226420C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264210: .4byte 0x02266644
	thumb_func_end ov115_02264190

	thumb_func_start ov115_02264214
ov115_02264214: @ 0x02264214
	movs r2, #0x66
	lsls r2, r2, #2
	adds r3, r0, r2
	adds r2, #0x78
	ldrh r2, [r0, r2]
	movs r0, #0x14
	muls r0, r2, r0
	adds r0, r3, r0
	ldr r3, _02264228 @ =FUN_02017204
	bx r3
	.align 2, 0
_02264228: .4byte FUN_02017204
	thumb_func_end ov115_02264214

	thumb_func_start ov115_0226422C
ov115_0226422C: @ 0x0226422C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, _02264258 @ =0x00000212
	adds r5, r0, #0
	ldrh r2, [r5, r1]
	cmp r2, r4
	beq _02264254
	cmp r4, #1
	bne _02264248
	subs r1, #0x7a
	adds r1, r5, r1
	bl FUN_0201727C
	b _02264250
_02264248:
	subs r1, #0x7a
	adds r1, r5, r1
	bl FUN_02017288
_02264250:
	ldr r0, _02264258 @ =0x00000212
	strh r4, [r5, r0]
_02264254:
	pop {r3, r4, r5, pc}
	nop
_02264258: .4byte 0x00000212
	thumb_func_end ov115_0226422C

	thumb_func_start ov115_0226425C
ov115_0226425C: @ 0x0226425C
	ldr r2, _02264264 @ =0x0000022E
	strh r1, [r0, r2]
	bx lr
	nop
_02264264: .4byte 0x0000022E
	thumb_func_end ov115_0226425C

	thumb_func_start ov115_02264268
ov115_02264268: @ 0x02264268
	movs r2, #0x8b
	lsls r2, r2, #2
	strh r1, [r0, r2]
	bx lr
	thumb_func_end ov115_02264268

	thumb_func_start ov115_02264270
ov115_02264270: @ 0x02264270
	push {r3, r4, r5, lr}
	ldr r2, _022642EC @ =0x0000022E
	adds r3, r0, #0
	ldrh r0, [r3, r2]
	cmp r0, #1
	bne _022642A2
	subs r0, r2, #6
	movs r1, #2
	ldr r0, [r3, r0]
	lsls r1, r1, #0xc
	adds r4, r0, r1
	movs r0, #0xa
	lsls r0, r0, #0xe
	cmp r4, r0
	bge _0226429A
	subs r0, r2, #6
	ldr r0, [r3, r0]
	adds r1, r0, r1
	subs r0, r2, #6
	str r1, [r3, r0]
	b _022642DC
_0226429A:
	lsrs r1, r1, #1
	subs r0, r2, #6
	str r1, [r3, r0]
	b _022642DC
_022642A2:
	subs r0, r2, #2
	ldrh r0, [r3, r0]
	cmp r0, #4
	bne _022642AE
	movs r0, #0
	b _022642B0
_022642AE:
	adds r0, r0, #1
_022642B0:
	lsls r2, r0, #1
	ldr r0, _022642F0 @ =0x02265B0A
	movs r4, #0x8a
	ldrb r0, [r0, r2]
	lsls r4, r4, #2
	ldr r5, [r3, r4]
	lsls r1, r0, #0xc
	cmp r5, r1
	bge _022642C6
	str r1, [r3, r4]
	b _022642DC
_022642C6:
	movs r0, #2
	lsls r0, r0, #0xc
	adds r0, r5, r0
	ldr r5, _022642F4 @ =0x02265B0B
	ldrb r2, [r5, r2]
	lsls r2, r2, #0xc
	cmp r0, r2
	bge _022642DA
	str r0, [r3, r4]
	b _022642DC
_022642DA:
	str r1, [r3, r4]
_022642DC:
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r3, r1
	adds r1, #0x14
	ldr r1, [r3, r1]
	bl FUN_02017240
	pop {r3, r4, r5, pc}
	.align 2, 0
_022642EC: .4byte 0x0000022E
_022642F0: .4byte 0x02265B0A
_022642F4: .4byte 0x02265B0B
	thumb_func_end ov115_02264270

	thumb_func_start ov115_022642F8
ov115_022642F8: @ 0x022642F8
	push {r3, r4}
	movs r3, #0xff
	subs r0, r3, r0
	movs r3, #0x96
	lsls r3, r3, #4
	adds r4, r0, #0
	muls r4, r3, r4
	lsls r0, r3, #7
	subs r0, r4, r0
	adds r4, r1, #0
	str r0, [r2]
	muls r4, r3, r4
	lsls r0, r3, #7
	subs r1, r4, r0
	ldr r0, _02264320 @ =0xFFED4000
	subs r0, r0, r1
	str r0, [r2, #8]
	pop {r3, r4}
	bx lr
	nop
_02264320: .4byte 0xFFED4000
	thumb_func_end ov115_022642F8

	thumb_func_start ov115_02264324
ov115_02264324: @ 0x02264324
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0x4b
	ldr r0, [r5]
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r1, r1, #7
	blx FUN_020E1F6C
	movs r1, #0xff
	subs r0, r1, r0
	strh r0, [r4]
	ldr r1, [r5, #8]
	ldr r0, _02264350 @ =0xFFF1F000
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #4
	blx FUN_020E1F6C
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02264350: .4byte 0xFFF1F000
	thumb_func_end ov115_02264324

	thumb_func_start ov115_02264354
ov115_02264354: @ 0x02264354
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r6, r0, #0
	add r0, sp, #0
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	blx FUN_020BB4C8
	ldr r0, _02264394 @ =0x02265C34
	lsls r2, r4, #3
	lsls r1, r5, #1
	adds r0, r0, r2
	ldrh r0, [r1, r0]
	ldr r3, _02264398 @ =0x020F983C
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5C8
	adds r0, r6, #0
	add r1, sp, #0
	adds r2, r7, #0
	blx FUN_020BBB0C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02264394: .4byte 0x02265C34
_02264398: .4byte 0x020F983C
	thumb_func_end ov115_02264354

	thumb_func_start ov115_0226439C
ov115_0226439C: @ 0x0226439C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r6, r0, #0
	add r0, sp, #0
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	blx FUN_020BB4C8
	ldr r0, _022643E4 @ =0x02265C34
	lsls r2, r4, #3
	lsls r1, r5, #1
	adds r0, r0, r2
	ldrh r0, [r1, r0]
	ldr r3, _022643E8 @ =0x020F983C
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5C8
	add r0, sp, #0
	adds r1, r0, #0
	blx FUN_020BB5FC
	adds r0, r6, #0
	add r1, sp, #0
	adds r2, r7, #0
	blx FUN_020BBB0C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022643E4: .4byte 0x02265C34
_022643E8: .4byte 0x020F983C
	thumb_func_end ov115_0226439C

	thumb_func_start ov115_022643EC
ov115_022643EC: @ 0x022643EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0x30]
	ldr r0, _02264544 @ =0x000006FC
	ldr r4, _02264548 @ =0x02265AE8
	str r1, [sp, #0x2c]
	adds r7, r2, #0
	adds r6, r5, r0
_02264400:
	ldrb r2, [r4]
	ldr r1, [sp, #0x2c]
	adds r0, r6, #0
	adds r3, r7, #0
	bl FUN_020170D8
	ldr r0, [sp, #0x30]
	adds r4, r4, #1
	adds r0, r0, #1
	adds r6, #0x10
	str r0, [sp, #0x30]
	cmp r0, #5
	blt _02264400
	ldr r0, _0226454C @ =0x0000074C
	ldr r1, [sp, #0x2c]
	adds r0, r5, r0
	movs r2, #0x2e
	adds r3, r7, #0
	bl FUN_020170D8
	ldr r0, _02264550 @ =0x00000754
	movs r2, #0x1f
	ldr r0, [r5, r0]
	movs r1, #0
	lsls r2, r2, #0x10
	blx FUN_020B2D8C
	movs r1, #0x64
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r1, #0xe4
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	movs r2, #7
	movs r3, #0
	bl FUN_02009A4C
	ldr r1, _02264554 @ =0x0000075C
	movs r2, #4
	str r0, [r5, r1]
	movs r1, #0x64
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	adds r1, #0xe8
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	movs r3, #0
	bl FUN_02009B04
	movs r1, #0x76
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r1, #0x64
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r1, #0xec
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	movs r2, #6
	movs r3, #0
	bl FUN_02009BC4
	ldr r1, _02264558 @ =0x00000764
	movs r2, #5
	str r0, [r5, r1]
	movs r1, #0x64
	str r1, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r1, #0xf0
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	movs r3, #0
	bl FUN_02009BC4
	ldr r1, _0226455C @ =0x00000768
	str r0, [r5, r1]
	subs r1, #0xc
	ldr r0, [r5, r1]
	bl FUN_0200A450
	cmp r0, #0
	bne _022644BA
	bl FUN_02022974
_022644BA:
	movs r0, #0x76
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0200A640
	cmp r0, #0
	bne _022644CC
	bl FUN_02022974
_022644CC:
	ldr r0, _02264554 @ =0x0000075C
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	movs r0, #0x76
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	movs r1, #0x64
	adds r0, r1, #0
	adds r2, r1, #0
	str r1, [sp]
	subs r0, #0x65
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r2, #0xe4
	ldr r2, [r5, r2]
	adds r3, r1, #0
	str r2, [sp, #0x14]
	adds r2, r1, #0
	adds r2, #0xe8
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r1, #0
	adds r2, #0xec
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	adds r2, r1, #0
	adds r2, #0xf0
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, _02264560 @ =0x0000076C
	adds r2, r1, #0
	adds r0, r5, r0
	bl FUN_020093B4
	movs r0, #0x79
	lsls r0, r0, #4
	movs r6, #0
	adds r4, r5, r0
_02264528:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov115_022646BC
	movs r0, #0x42
	lsls r0, r0, #2
	adds r6, r6, #1
	adds r4, r4, r0
	cmp r6, #0x60
	blt _02264528
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02264544: .4byte 0x000006FC
_02264548: .4byte 0x02265AE8
_0226454C: .4byte 0x0000074C
_02264550: .4byte 0x00000754
_02264554: .4byte 0x0000075C
_02264558: .4byte 0x00000764
_0226455C: .4byte 0x00000768
_02264560: .4byte 0x0000076C
	thumb_func_end ov115_022643EC

	thumb_func_start ov115_02264564
ov115_02264564: @ 0x02264564
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x79
	lsls r0, r0, #4
	movs r7, #0x42
	movs r6, #0
	adds r4, r5, r0
	lsls r7, r7, #2
_02264574:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov115_02264728
	adds r6, r6, #1
	adds r4, r4, r7
	cmp r6, #0x60
	blt _02264574
	ldr r0, _0226460C @ =0x0000075C
	ldr r0, [r5, r0]
	bl FUN_0200A4E4
	movs r0, #0x76
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0200A6DC
	movs r0, #0x52
	ldr r1, _0226460C @ =0x0000075C
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl FUN_02009D68
	movs r0, #0x53
	movs r1, #0x76
	lsls r0, r0, #2
	lsls r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl FUN_02009D68
	movs r0, #0x15
	ldr r1, _02264610 @ =0x00000764
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl FUN_02009D68
	movs r0, #0x55
	ldr r1, _02264614 @ =0x00000768
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl FUN_02009D68
	ldr r0, _02264618 @ =0x000006FC
	movs r6, #0
	adds r4, r5, r0
_022645D6:
	adds r0, r4, #0
	bl FUN_02017110
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #5
	blt _022645D6
	ldr r0, _0226461C @ =0x0000074C
	adds r0, r5, r0
	bl FUN_02017110
	ldr r0, _02264618 @ =0x000006FC
	movs r1, #0
	adds r0, r5, r0
	movs r2, #0x94
	blx FUN_020D5124
	movs r0, #0x79
	lsls r0, r0, #4
	movs r2, #0x63
	adds r0, r5, r0
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020D5124
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226460C: .4byte 0x0000075C
_02264610: .4byte 0x00000764
_02264614: .4byte 0x00000768
_02264618: .4byte 0x000006FC
_0226461C: .4byte 0x0000074C
	thumb_func_end ov115_02264564

	thumb_func_start ov115_02264620
ov115_02264620: @ 0x02264620
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r7, r2, #0
	adds r6, r3, #0
	bl ov115_02264948
	adds r1, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, r6
	bne _02264642
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl ov115_02264740
	pop {r3, r4, r5, r6, r7, pc}
_02264642:
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov115_0226477C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov115_02264620

	thumb_func_start ov115_0226464C
ov115_0226464C: @ 0x0226464C
	push {r4, r5, r6, lr}
	movs r3, #0x42
	ldr r4, _02264680 @ =0x00000888
	movs r2, #0
	adds r6, r0, #0
	lsls r3, r3, #2
_02264658:
	ldr r5, [r6, r4]
	cmp r5, r1
	bne _02264672
	movs r1, #0x79
	lsls r1, r1, #4
	adds r1, r0, r1
	movs r0, #0x42
	lsls r0, r0, #2
	muls r0, r2, r0
	adds r0, r1, r0
	bl ov115_02264924
	pop {r4, r5, r6, pc}
_02264672:
	adds r2, r2, #1
	adds r6, r6, r3
	cmp r2, #0x60
	blt _02264658
	bl FUN_02022974
	pop {r4, r5, r6, pc}
	.align 2, 0
_02264680: .4byte 0x00000888
	thumb_func_end ov115_0226464C

	thumb_func_start ov115_02264684
ov115_02264684: @ 0x02264684
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x79
	lsls r0, r0, #4
	str r1, [sp]
	movs r6, #0
	adds r4, r7, #0
	adds r5, r7, r0
_02264694:
	ldr r0, _022646B8 @ =0x00000888
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022646A6
	ldr r2, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov115_022647A0
_022646A6:
	movs r0, #0x42
	lsls r0, r0, #2
	adds r6, r6, #1
	adds r4, r4, r0
	adds r5, r5, r0
	cmp r6, #0x60
	blt _02264694
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022646B8: .4byte 0x00000888
	thumb_func_end ov115_02264684

	thumb_func_start ov115_022646BC
ov115_022646BC: @ 0x022646BC
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r5, r0, #0
	add r3, sp, #0
	movs r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	adds r1, r0, #0
	stm r6!, {r0, r1}
	stm r6!, {r0, r1}
	stm r6!, {r0, r1}
	stm r6!, {r0, r1}
	stm r6!, {r0, r1}
	stm r6!, {r0, r1}
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	ldr r0, _02264720 @ =0x0000076C
	str r2, [sp, #0x2c]
	adds r0, r5, r0
	str r0, [sp, #4]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #2
	str r0, [sp, #0x28]
	adds r0, r3, #0
	bl FUN_02021AA0
	movs r1, #0
	str r0, [r4]
	bl FUN_02021CAC
	ldr r1, _02264724 @ =0x0000074C
	adds r0, r4, #0
	adds r0, #0x7c
	adds r1, r5, r1
	bl FUN_02017258
	adds r4, #0x7c
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02017348
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_02264720: .4byte 0x0000076C
_02264724: .4byte 0x0000074C
	thumb_func_end ov115_022646BC

	thumb_func_start ov115_02264728
ov115_02264728: @ 0x02264728
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	bl FUN_02021BD4
	movs r2, #0x42
	adds r0, r4, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	pop {r4, pc}
	thumb_func_end ov115_02264728

	thumb_func_start ov115_02264740
ov115_02264740: @ 0x02264740
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	adds r4, r2, #0
	adds r0, #0xf8
	str r4, [r0]
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0xf4
	str r1, [r0]
	movs r0, #0x41
	movs r1, #0
	lsls r0, r0, #2
	strh r1, [r5, r0]
	ldrh r1, [r4, #4]
	ldr r0, [r5]
	adds r6, r3, #0
	bl FUN_02021E90
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov115_02264980
	ldr r0, [r5]
	movs r1, #1
	bl FUN_02021CAC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02264740

	thumb_func_start ov115_0226477C
ov115_0226477C: @ 0x0226477C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0xf8
	str r2, [r0]
	movs r0, #0x41
	movs r1, #0
	lsls r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4]
	bl FUN_02021CAC
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov115_022649F0
	pop {r3, r4, r5, pc}
	thumb_func_end ov115_0226477C

	thumb_func_start ov115_022647A0
ov115_022647A0: @ 0x022647A0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	adds r1, #0xf4
	ldr r1, [r1]
	cmp r1, #1
	bne _022647C6
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r1, [r1]
	bl ov115_02264980
	cmp r0, #0
	bne _022647C6
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov115_022649F0
_022647C6:
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	bne _02264838
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r1, _0226483C @ =0x000006FC
	ldr r0, [r0]
	adds r1, r4, r1
	bl ov115_02264A40
	adds r1, r5, #0
	adds r1, #0xf8
	ldr r1, [r1]
	ldr r0, [r0, #8]
	ldrb r1, [r1]
	cmp r1, #5
	bne _022647F4
	ldr r1, _02264840 @ =0x00007FFF
	blx FUN_020B35A4
	b _022647FA
_022647F4:
	ldr r1, _02264844 @ =0x00004A52
	blx FUN_020B35A4
_022647FA:
	adds r0, r5, #0
	bl ov115_02264A54
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r3, [r0]
	adds r0, r5, #4
	ldr r1, [r3, #0x2c]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x34]
	bl FUN_02017350
	adds r0, r5, #4
	bl FUN_02017294
	adds r0, r5, #0
	adds r0, #0x7c
	bl FUN_0201734C
	cmp r0, #1
	bne _02264838
	adds r0, r5, #0
	bl ov115_02264848
	adds r0, r5, #0
	adds r0, #0x7c
	bl FUN_02017294
	adds r0, r5, #0
	bl ov115_02264908
_02264838:
	pop {r3, r4, r5, pc}
	nop
_0226483C: .4byte 0x000006FC
_02264840: .4byte 0x00007FFF
_02264844: .4byte 0x00004A52
	thumb_func_end ov115_022647A0

	thumb_func_start ov115_02264848
ov115_02264848: @ 0x02264848
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0xf8
	ldr r0, [r0]
	bl ov115_022628A4
	cmp r0, #1
	bne _0226485E
	ldr r4, _02264900 @ =0xFFED4000
	b _02264872
_0226485E:
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	bl ov115_02262888
	cmp r0, #0
	bne _02264870
	ldr r4, _02264904 @ =0xFFFCD000
	b _02264872
_02264870:
	ldr r4, _02264900 @ =0xFFED4000
_02264872:
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r3, [r0]
	adds r0, r5, #0
	ldr r1, [r3, #0x2c]
	ldr r3, [r3, #0x34]
	adds r0, #0x7c
	adds r2, r4, #0
	bl FUN_02017350
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	movs r2, #0
	ldr r0, [r0, #0x30]
	subs r4, r0, r4
	asrs r6, r4, #0x1f
	lsrs r1, r4, #0x14
	lsls r0, r6, #0xc
	orrs r0, r1
	movs r1, #2
	lsls r3, r4, #0xc
	lsls r1, r1, #0xa
	adds r3, r3, r1
	adcs r0, r2
	lsls r1, r0, #0x14
	lsrs r0, r3, #0xc
	orrs r0, r1
	movs r1, #0x4b
	lsls r1, r1, #0xe
	blx FUN_020BCFD0
	movs r7, #1
	adds r3, r0, #0
	lsls r7, r7, #0xc
	adds r1, r3, r7
	adds r5, #0x7c
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r3, r7
	bl FUN_0201736C
	lsrs r0, r4, #0x10
	lsls r3, r6, #0x10
	orrs r3, r0
	lsls r2, r4, #0x10
	movs r1, #0
	lsrs r0, r7, #1
	adds r0, r2, r0
	adcs r3, r1
	lsls r1, r3, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	movs r1, #0x4b
	lsls r1, r1, #0xe
	blx FUN_020BCFD0
	asrs r1, r0, #0xc
	movs r0, #0x18
	subs r0, r0, r1
	str r0, [sp]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	str r0, [sp, #4]
	blx FUN_020AF5B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264900: .4byte 0xFFED4000
_02264904: .4byte 0xFFFCD000
	thumb_func_end ov115_02264848

	thumb_func_start ov115_02264908
ov115_02264908: @ 0x02264908
	push {r3, lr}
	sub sp, #8
	movs r0, #0x1f
	str r0, [sp]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	str r0, [sp, #4]
	blx FUN_020AF5B4
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov115_02264908

	thumb_func_start ov115_02264924
ov115_02264924: @ 0x02264924
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	adds r0, #0xf8
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	str r1, [r0]
	ldr r0, [r4]
	bl FUN_02021CAC
	adds r4, #0x7c
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02017348
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_02264924

	thumb_func_start ov115_02264948
ov115_02264948: @ 0x02264948
	push {r3, r4, r5, lr}
	movs r2, #0x42
	ldr r3, _0226497C @ =0x00000888
	movs r1, #0
	adds r5, r0, #0
	lsls r2, r2, #2
_02264954:
	ldr r4, [r5, r3]
	cmp r4, #0
	bne _0226496A
	movs r2, #0x79
	lsls r2, r2, #4
	adds r2, r0, r2
	movs r0, #0x42
	lsls r0, r0, #2
	muls r0, r1, r0
	adds r0, r2, r0
	pop {r3, r4, r5, pc}
_0226496A:
	adds r1, r1, #1
	adds r5, r5, r2
	cmp r1, #0x60
	blt _02264954
	bl FUN_02022974
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0226497C: .4byte 0x00000888
	thumb_func_end ov115_02264948

	thumb_func_start ov115_02264980
ov115_02264980: @ 0x02264980
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0xf8
	ldr r6, [r0]
	add r5, sp, #4
	adds r6, #0x2c
	ldm r6!, {r0, r1}
	adds r3, r2, #0
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r5]
	adds r0, r2, #0
	adds r2, r4, #0
	adds r2, #0xf8
	ldr r2, [r2]
	ldrh r2, [r2, #4]
	bl ov115_0226439C
	add r0, sp, #4
	add r1, sp, #0
	bl ov115_02264324
	add r1, sp, #0
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #2
	ldrsh r1, [r1, r0]
	lsls r0, r0, #0x14
	lsls r1, r1, #0xc
	adds r0, r1, r0
	str r2, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4]
	add r1, sp, #4
	bl FUN_02021C50
	add r1, sp, #0
	movs r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	blt _022649E4
	movs r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _022649EA
_022649E4:
	add sp, #0x10
	movs r0, #0
	pop {r4, r5, r6, pc}
_022649EA:
	movs r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_02264980

	thumb_func_start ov115_022649F0
ov115_022649F0: @ 0x022649F0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	movs r1, #0
	bl FUN_02021CAC
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xf4
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r1, _02264A3C @ =0x000006FC
	ldr r0, [r0]
	adds r1, r4, r1
	bl ov115_02264A40
	adds r1, r0, #0
	adds r0, r5, #4
	bl FUN_02017258
	adds r0, r5, #4
	movs r1, #1
	bl FUN_02017348
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02264A3A
	adds r5, #0x7c
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02017348
_02264A3A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02264A3C: .4byte 0x000006FC
	thumb_func_end ov115_022649F0

	thumb_func_start ov115_02264A40
ov115_02264A40: @ 0x02264A40
	ldr r2, [r0, #0x28]
	cmp r2, #1
	bne _02264A4A
	movs r0, #4
	b _02264A4C
_02264A4A:
	ldrh r0, [r0, #4]
_02264A4C:
	lsls r0, r0, #4
	adds r0, r1, r0
	bx lr
	.align 2, 0
	thumb_func_end ov115_02264A40

	thumb_func_start ov115_02264A54
ov115_02264A54: @ 0x02264A54
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x41
	lsls r0, r0, #2
	ldrsh r1, [r5, r0]
	subs r1, r1, #1
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _02264AF2
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	bl ov115_022625F0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r1, [r0]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	blx FUN_020BDA20
	asrs r0, r0, #4
	lsls r4, r0, #1
	ldr r1, _02264B34 @ =0x0001E200
	lsls r0, r6, #9
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r6, r0, #4
	asrs r7, r6, #0x1f
	ldr r0, _02264B38 @ =0x020F983C
	lsls r1, r4, #1
	ldrsh r0, [r0, r1]
	adds r2, r6, #0
	adds r3, r7, #0
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	asrs r1, r0, #0xc
	lsrs r0, r2, #2
	adds r1, r1, r0
	lsrs r0, r2, #3
	strh r1, [r5, r0]
	adds r0, r4, #1
	lsls r1, r0, #1
	ldr r0, _02264B38 @ =0x020F983C
	adds r2, r6, #0
	ldrsh r0, [r0, r1]
	adds r3, r7, #0
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r4, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r4, #0xc
	orrs r1, r0
	asrs r1, r1, #0xc
	lsrs r0, r2, #2
	adds r1, r1, r0
	ldr r0, _02264B3C @ =0x00000102
	strh r1, [r5, r0]
	movs r1, #8
	adds r0, r1, #0
	adds r0, #0xfc
	strh r1, [r5, r0]
_02264AF2:
	adds r0, r5, #0
	adds r0, #0xfc
	ldrh r2, [r0]
	movs r0, #1
	lsls r0, r0, #8
	ldrh r1, [r5, r0]
	adds r0, r0, #2
	adds r2, r2, r1
	adds r1, r5, #0
	adds r1, #0xfc
	strh r2, [r1]
	adds r1, r5, #0
	adds r1, #0xfe
	ldrh r1, [r1]
	ldrh r0, [r5, r0]
	movs r2, #0
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xfe
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0xfc
	ldrh r1, [r1]
	adds r0, r5, #4
	bl FUN_02017388
	adds r0, r5, #4
	adds r5, #0xfe
	ldrh r1, [r5]
	movs r2, #2
	bl FUN_02017388
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02264B34: .4byte 0x0001E200
_02264B38: .4byte 0x020F983C
_02264B3C: .4byte 0x00000102
	thumb_func_end ov115_02264A54

	thumb_func_start ov115_02264B40
ov115_02264B40: @ 0x02264B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r0, #0
	add r7, sp, #0
	adds r4, r2, #0
	movs r0, #0
	adds r5, r1, #0
	adds r2, r7, #0
	adds r1, r0, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r6, #0x1c]
	str r0, [sp]
	ldr r0, _02264B9C @ =0x0000076C
	str r3, [sp, #0x2c]
	adds r0, r6, r0
	str r0, [sp, #4]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #2
	str r0, [sp, #0x28]
	adds r0, r7, #0
	bl FUN_02021AA0
	str r0, [r5, #4]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_02021E90
	movs r0, #0
	str r0, [r5]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264B9C: .4byte 0x0000076C
	thumb_func_end ov115_02264B40

	thumb_func_start ov115_02264BA0
ov115_02264BA0: @ 0x02264BA0
	ldr r3, _02264BA8 @ =FUN_02021BD4
	ldr r0, [r0, #4]
	bx r3
	nop
_02264BA8: .4byte FUN_02021BD4
	thumb_func_end ov115_02264BA0

	thumb_func_start ov115_02264BAC
ov115_02264BAC: @ 0x02264BAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #1
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_02264BAC

	thumb_func_start ov115_02264BC0
ov115_02264BC0: @ 0x02264BC0
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _02264BD2
	ldr r2, _02264BD4 @ =0x021BF6BC
	ldrh r1, [r2, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl ov115_02264BD8
_02264BD2:
	pop {r3, pc}
	.align 2, 0
_02264BD4: .4byte 0x021BF6BC
	thumb_func_end ov115_02264BC0

	thumb_func_start ov115_02264BD8
ov115_02264BD8: @ 0x02264BD8
	push {lr}
	sub sp, #0xc
	lsls r1, r1, #0xc
	str r1, [sp]
	movs r1, #2
	lsls r2, r2, #0xc
	lsls r1, r1, #0x14
	adds r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov115_02264BD8

	thumb_func_start ov115_02264BF8
ov115_02264BF8: @ 0x02264BF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov115_02264BF8

	thumb_func_start ov115_02264C0C
ov115_02264C0C: @ 0x02264C0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	movs r4, #0
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	add r2, sp, #0
	adds r0, r4, #0
	adds r1, r4, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r7, #0x1c]
	str r0, [sp]
	ldr r0, _02264C74 @ =0x0000076C
	str r3, [sp, #0x2c]
	adds r0, r7, r0
	str r0, [sp, #4]
	movs r0, #9
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #2
	str r0, [sp, #0x28]
	adds r7, r4, #0
_02264C48:
	add r0, sp, #0
	bl FUN_02021AA0
	str r0, [r5, #4]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_02021CF8
	ldr r0, [r5, #4]
	adds r1, r6, #0
	bl FUN_02021E90
	str r7, [r5]
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, #8
	blt _02264C48
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02264C74: .4byte 0x0000076C
	thumb_func_end ov115_02264C0C

	thumb_func_start ov115_02264C78
ov115_02264C78: @ 0x02264C78
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r4, #0
_02264C7E:
	ldr r0, [r5, #4]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, #8
	blt _02264C7E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02264C78

	thumb_func_start ov115_02264C90
ov115_02264C90: @ 0x02264C90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	movs r4, #0
	add r6, sp, #0x10
	add r7, sp, #0xc
_02264C9C:
	ldr r0, [r5]
	cmp r0, #1
	bne _02264D70
	ldr r0, [r5, #0x14]
	cmp r0, #0x10
	bge _02264CBC
	movs r1, #0x7d
	str r1, [sp]
	str r6, [sp, #4]
	movs r1, #0x10
	movs r2, #8
	movs r3, #0xbe
	str r7, [sp, #8]
	bl ov115_02264DD8
	b _02264CEA
_02264CBC:
	cmp r0, #0x1a
	bge _02264CD6
	movs r1, #0x8c
	str r1, [sp]
	str r6, [sp, #4]
	subs r0, #0x10
	movs r1, #0xa
	movs r2, #4
	movs r3, #0xb6
	str r7, [sp, #8]
	bl ov115_02264DD8
	b _02264CEA
_02264CD6:
	movs r1, #0xa0
	str r1, [sp]
	str r6, [sp, #4]
	subs r0, #0x1a
	movs r1, #6
	movs r2, #3
	movs r3, #0xb4
	str r7, [sp, #8]
	bl ov115_02264DD8
_02264CEA:
	ldr r0, [r5, #0x14]
	adds r1, r0, #1
	lsls r0, r1, #1
	str r1, [r5, #0x14]
	adds r1, r1, r0
	asrs r0, r1, #4
	lsrs r0, r0, #0x1b
	adds r0, r1, r0
	asrs r1, r0, #5
	movs r0, #9
	subs r0, r0, r1
	movs r1, #0xa
	lsls r0, r0, #0xc
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	add r1, sp, #0x14
	bl FUN_02021C70
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #8]
	cmp r0, #0
	beq _02264D26
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	b _02264D2C
_02264D26:
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0xc
	subs r0, r1, r0
_02264D2C:
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0xc]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r5, #0xc]
	adds r1, r5, #0
	ldr r0, [r5, #4]
	adds r1, #8
	bl FUN_02021C50
	ldr r1, [r5, #8]
	ldr r0, _02264D7C @ =0xFFFE0000
	cmp r1, r0
	blt _02264D64
	movs r0, #0x12
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _02264D64
	movs r0, #0x1e
	ldr r1, [r5, #0xc]
	lsls r0, r0, #0x10
	cmp r1, r0
	blt _02264D64
	movs r0, #0x2e
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _02264D70
_02264D64:
	movs r0, #0
	str r0, [r5]
	ldr r0, [r5, #4]
	movs r1, #0
	bl FUN_02021CAC
_02264D70:
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, #8
	blt _02264C9C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02264D7C: .4byte 0xFFFE0000
	thumb_func_end ov115_02264C90

	thumb_func_start ov115_02264D80
ov115_02264D80: @ 0x02264D80
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r3, r4, #0
	adds r6, r0, #0
_02264D88:
	ldr r5, [r6]
	cmp r5, #0
	bne _02264D96
	movs r4, #0x1c
	muls r4, r3, r4
	adds r4, r0, r4
	b _02264D9E
_02264D96:
	adds r3, r3, #1
	adds r6, #0x1c
	cmp r3, #8
	blt _02264D88
_02264D9E:
	cmp r4, #0
	beq _02264DD4
	cmp r1, #0x80
	bge _02264DAA
	movs r0, #1
	b _02264DAC
_02264DAA:
	movs r0, #0
_02264DAC:
	str r0, [r4, #0x18]
	lsls r0, r1, #0xc
	str r0, [r4, #8]
	movs r0, #2
	lsls r1, r2, #0xc
	lsls r0, r0, #0x14
	adds r0, r1, r0
	str r0, [r4, #0xc]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #8
	bl FUN_02021C50
	movs r1, #1
	str r1, [r4]
	ldr r0, [r4, #4]
	bl FUN_02021CAC
	movs r0, #0
	str r0, [r4, #0x14]
_02264DD4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02264D80

	thumb_func_start ov115_02264DD8
ov115_02264DD8: @ 0x02264DD8
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r2, [sp, #0x10]
	adds r5, r3, #0
	subs r2, r2, r5
	muls r2, r0, r2
	adds r0, r2, #0
	blx FUN_020E1F6C
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	bl FUN_0201D1D4
	lsls r5, r4, #0xc
	asrs r4, r5, #0x1f
	asrs r1, r0, #0x1f
	adds r2, r5, #0
	adds r3, r4, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	ldr r0, [sp, #0x14]
	asrs r1, r1, #0xc
	str r1, [r0]
	adds r0, r6, #0
	bl FUN_0201D15C
	asrs r1, r0, #0x1f
	adds r2, r5, #0
	adds r3, r4, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	ldr r0, [sp, #0x18]
	asrs r1, r1, #0xc
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02264DD8

	thumb_func_start ov115_02264E48
ov115_02264E48: @ 0x02264E48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	movs r1, #0x5a
	str r0, [sp, #0x40]
	ldr r0, [sp, #8]
	str r2, [sp, #0xc]
	lsls r1, r1, #2
	adds r6, r0, r1
	subs r2, r3, #1
	adds r5, r0, #0
	lsls r0, r2, #1
	str r0, [sp, #0x14]
	ldr r1, _02264F54 @ =0x02265C5C
	lsls r0, r2, #3
	adds r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	lsls r0, r0, #1
	movs r4, #0
	str r0, [sp, #0x1c]
_02264E76:
	cmp r4, #0
	bne _02264E7E
	movs r2, #0x24
	b _02264E8C
_02264E7E:
	cmp r4, #1
	bne _02264E86
	movs r2, #0x25
	b _02264E8C
_02264E86:
	ldr r1, _02264F58 @ =0x02265B02
	ldr r0, [sp, #0x14]
	ldrh r2, [r1, r0]
_02264E8C:
	ldr r1, [sp, #0xc]
	adds r0, r6, #0
	adds r3, r7, #0
	bl FUN_020170D8
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_02017258
	movs r1, #0
	ldr r2, _02264F5C @ =0xFFF9E000
	adds r0, r5, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #6
	lsls r1, r1, #0xa
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	cmp r4, #1
	bne _02264EC4
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02017348
_02264EC4:
	cmp r4, #1
	bhi _02264ED8
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r0, r5, #0
	ldrh r1, [r2, r1]
	movs r2, #1
	bl FUN_02017388
	b _02264EE8
_02264ED8:
	movs r0, #0xb4
	bl FUN_0201D278
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #1
	bl FUN_02017388
_02264EE8:
	adds r4, r4, #1
	adds r6, #0x10
	adds r5, #0x78
	cmp r4, #3
	blt _02264E76
	movs r0, #0
	str r0, [sp, #0x10]
	movs r1, #0x66
	ldr r0, [sp, #8]
	lsls r1, r1, #2
	adds r5, r0, r1
	subs r1, #0x30
	adds r0, r0, r1
	ldr r6, _02264F60 @ =0x02265AF0
	ldr r4, _02264F64 @ =0x02265AF6
	str r0, [sp, #0x20]
_02264F08:
	ldr r0, [sp, #0x40]
	str r7, [sp]
	str r0, [sp, #4]
	ldrh r1, [r4]
	ldrh r3, [r6]
	adds r0, r5, #0
	lsls r2, r1, #4
	ldr r1, [sp, #0x20]
	adds r1, r1, r2
	ldr r2, [sp, #0xc]
	bl FUN_02017164
	ldrh r1, [r4]
	movs r0, #0x78
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #8]
	adds r1, r5, #0
	adds r0, r0, r2
	bl FUN_0201727C
	ldr r0, [sp, #0x10]
	adds r6, r6, #2
	adds r0, r0, #1
	adds r4, r4, #2
	adds r5, #0x14
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _02264F08
	movs r2, #1
	movs r1, #0x75
	ldr r0, [sp, #8]
	lsls r2, r2, #0xc
	lsls r1, r1, #2
	str r2, [r0, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02264F54: .4byte 0x02265C5C
_02264F58: .4byte 0x02265B02
_02264F5C: .4byte 0xFFF9E000
_02264F60: .4byte 0x02265AF0
_02264F64: .4byte 0x02265AF6
	thumb_func_end ov115_02264E48

	thumb_func_start ov115_02264F68
ov115_02264F68: @ 0x02264F68
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x66
	lsls r0, r0, #2
	adds r6, r2, #0
	movs r4, #0
	adds r5, r7, r0
_02264F76:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_020171A0
	adds r4, r4, #1
	adds r5, #0x14
	cmp r4, #3
	blt _02264F76
	movs r0, #0x5a
	lsls r0, r0, #2
	movs r4, #0
	adds r5, r7, r0
_02264F8E:
	adds r0, r5, #0
	bl FUN_02017110
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #3
	blt _02264F8E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_02264F68

	thumb_func_start ov115_02264FA0
ov115_02264FA0: @ 0x02264FA0
	push {r3, r4, r5, lr}
	movs r1, #0x66
	adds r4, r0, #0
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, #0x3c
	ldr r1, [r4, r1]
	bl FUN_020171CC
	movs r0, #0x76
	lsls r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _022650AC
	adds r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _02264FCE
	cmp r1, #1
	beq _02265020
	cmp r1, #2
	beq _02265064
	b _0226508C
_02264FCE:
	adds r1, r0, #0
	adds r1, #8
	adds r2, r0, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	adds r3, r2, r1
	movs r2, #0x33
	lsls r2, r2, #0xc
	cmp r3, r2
	bge _02264FEA
	adds r2, r0, #4
	ldr r2, [r4, r2]
	adds r1, r2, r1
	b _02264FEC
_02264FEA:
	movs r1, #0
_02264FEC:
	adds r0, r0, #4
	str r1, [r4, r0]
	movs r1, #0x1e
	lsls r1, r1, #4
	adds r0, r1, #0
	ldr r2, [r4, r1]
	subs r0, #0x46
	adds r3, r2, r0
	ldr r0, _022650C0 @ =0x000024CD
	cmp r3, r0
	bgt _0226500C
	adds r0, r1, #0
	subs r0, #0x46
	adds r0, r2, r0
	str r0, [r4, r1]
	b _02265090
_0226500C:
	str r0, [r4, r1]
	movs r2, #0x18
	subs r0, r1, #6
	strh r2, [r4, r0]
	subs r0, r1, #7
	ldrb r0, [r4, r0]
	adds r2, r0, #1
	subs r0, r1, #7
	strb r2, [r4, r0]
	b _02265090
_02265020:
	adds r1, r0, #0
	adds r1, #8
	adds r2, r0, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	adds r3, r2, r1
	movs r2, #0x33
	lsls r2, r2, #0xc
	cmp r3, r2
	bge _0226503C
	adds r2, r0, #4
	ldr r2, [r4, r2]
	adds r1, r2, r1
	b _0226503E
_0226503C:
	movs r1, #0
_0226503E:
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _022650C4 @ =0x000001DA
	ldrsh r0, [r4, r1]
	subs r0, r0, #1
	strh r0, [r4, r1]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _02265090
	subs r0, r1, #1
	ldrb r0, [r4, r0]
	adds r2, r0, #1
	subs r0, r1, #1
	strb r2, [r4, r0]
	movs r2, #0x33
	lsls r2, r2, #0xc
	adds r0, r1, #2
	str r2, [r4, r0]
	b _02265090
_02265064:
	adds r1, r0, #4
	movs r2, #1
	ldr r1, [r4, r1]
	lsls r2, r2, #0xc
	adds r3, r1, r2
	movs r1, #0x19
	lsls r1, r1, #0xe
	cmp r3, r1
	bge _02265082
	adds r1, r0, #4
	ldr r1, [r4, r1]
	adds r0, r0, #4
	adds r1, r1, r2
	str r1, [r4, r0]
	b _02265090
_02265082:
	movs r1, #0x33
	lsls r1, r1, #0xc
	adds r0, r0, #4
	str r1, [r4, r0]
	b _02265090
_0226508C:
	bl FUN_02022974
_02265090:
	movs r1, #0x6b
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, #0x30
	ldr r1, [r4, r1]
	bl FUN_02017240
	movs r1, #7
	lsls r1, r1, #6
	adds r0, r4, r1
	adds r1, #0x1c
	ldr r1, [r4, r1]
	bl FUN_02017240
_022650AC:
	movs r5, #0
_022650AE:
	adds r0, r4, #0
	bl FUN_02017294
	adds r5, r5, #1
	adds r4, #0x78
	cmp r5, #3
	blt _022650AE
	pop {r3, r4, r5, pc}
	nop
_022650C0: .4byte 0x000024CD
_022650C4: .4byte 0x000001DA
	thumb_func_end ov115_02264FA0

	thumb_func_start ov115_022650C8
ov115_022650C8: @ 0x022650C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl FUN_02017348
	adds r0, r4, #0
	adds r0, #0x78
	movs r1, #1
	bl FUN_02017348
	movs r0, #0x77
	lsls r0, r0, #2
	movs r3, #0
	movs r2, #1
	str r3, [r4, r0]
	lsls r2, r2, #0xc
	adds r1, r0, #4
	str r2, [r4, r1]
	subs r1, r0, #4
	movs r2, #1
	strb r2, [r4, r1]
	subs r0, r0, #3
	strb r3, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov115_022650C8

	thumb_func_start ov115_022650F8
ov115_022650F8: @ 0x022650F8
	movs r2, #0x75
	lsls r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov115_022650F8

	thumb_func_start ov115_02265100
ov115_02265100: @ 0x02265100
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	adds r4, r0, #0
	ldr r0, [sp, #0x68]
	ldr r6, [r2]
	str r0, [sp, #0x68]
	ldr r0, [r2, #4]
	ldr r7, [r2, #8]
	str r0, [sp, #0x2c]
	asrs r0, r0, #0x1f
	str r0, [sp, #0x30]
	asrs r0, r6, #0x1f
	str r0, [sp, #0x34]
	adds r5, r1, #0
	asrs r0, r7, #0x1f
	str r0, [sp, #0x38]
	ldr r2, [r4]
	str r3, [sp]
	ldr r1, [sp, #0x34]
	adds r0, r6, #0
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	ldr r2, [r4, #4]
	str r0, [sp, #0x3c]
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	ldr r2, [r4, #8]
	str r1, [sp, #0x20]
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x38]
	adds r0, r7, #0
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	ldr r2, [r5, #8]
	str r1, [sp, #0x18]
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	adds r0, r7, #0
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	ldr r2, [r5]
	str r1, [sp, #0x10]
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x34]
	adds r0, r6, #0
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	ldr r2, [r5, #4]
	str r0, [sp, #0x4c]
	adds r6, r1, #0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	mov ip, r0
	movs r7, #2
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	lsls r7, r7, #0xa
	movs r1, #0
	adds r2, r0, r7
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	adcs r0, r1
	str r0, [sp, #0x28]
	lsls r0, r0, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r0
	ldr r0, [sp, #0x40]
	adds r0, r0, r7
	adcs r3, r1
	str r3, [sp, #0x20]
	lsls r3, r3, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r3
	adds r2, r2, r0
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x18]
	adds r0, r0, r7
	adcs r3, r1
	str r3, [sp, #0x18]
	lsls r3, r3, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r3
	adds r2, r2, r0
	ldr r0, [sp]
	subs r0, r0, r2
	ldr r2, [sp, #0x48]
	adds r3, r2, r7
	ldr r2, [sp, #0x10]
	adcs r2, r1
	str r2, [sp, #0x10]
	lsls r2, r2, #0x14
	lsrs r3, r3, #0xc
	orrs r3, r2
	ldr r2, [sp, #0x4c]
	adds r2, r2, r7
	adcs r6, r1
	lsls r6, r6, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r6
	mov r6, ip
	adds r7, r6, r7
	ldr r6, [sp, #8]
	adcs r6, r1
	str r6, [sp, #8]
	lsls r1, r6, #0x14
	lsrs r6, r7, #0xc
	orrs r6, r1
	adds r1, r2, r6
	adds r1, r3, r1
	blx FUN_020BCFD0
	adds r6, r0, #0
	ldr r0, [r5]
	asrs r7, r6, #0x1f
	asrs r1, r0, #0x1f
	adds r2, r6, #0
	adds r3, r7, #0
	blx FUN_020E1F1C
	movs r3, #2
	adds r2, r0, #0
	lsls r3, r3, #0xa
	adds r3, r2, r3
	ldr r2, _02265270 @ =0x00000000
	ldr r0, [r4]
	adcs r1, r2
	lsrs r2, r3, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	adds r1, r0, r2
	ldr r0, [sp, #0x68]
	adds r2, r6, #0
	str r1, [r0]
	ldr r0, [r5, #4]
	adds r3, r7, #0
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r3, #2
	adds r2, r0, #0
	lsls r3, r3, #0xa
	adds r3, r2, r3
	ldr r2, _02265270 @ =0x00000000
	ldr r0, [r4, #4]
	adcs r1, r2
	lsrs r2, r3, #0xc
	lsls r1, r1, #0x14
	orrs r2, r1
	adds r1, r0, r2
	ldr r0, [sp, #0x68]
	adds r2, r6, #0
	str r1, [r0, #4]
	ldr r0, [r5, #8]
	adds r3, r7, #0
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r3, #2
	ldr r2, [r4, #8]
	movs r4, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r4
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	ldr r0, [sp, #0x68]
	adds r1, r2, r1
	str r1, [r0]
	ldr r0, [sp, #0x6c]
	str r6, [r0]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02265270: .4byte 0x00000000
	thumb_func_end ov115_02265100

	thumb_func_start ov115_02265274
ov115_02265274: @ 0x02265274
	movs r2, #0x66
	lsls r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov115_02265274

	thumb_func_start ov115_0226527C
ov115_0226527C: @ 0x0226527C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #0x19
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	add r0, sp, #0
	bl FUN_02020A94
	add r0, sp, #0
	movs r1, #0x19
	strh r4, [r0]
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	add r0, sp, #0
	bl FUN_020209D4
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov115_0226527C

	thumb_func_start ov115_022652A4
ov115_022652A4: @ 0x022652A4
	movs r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	movs r2, #2
	strh r2, [r0, #4]
	strb r1, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end ov115_022652A4

	thumb_func_start ov115_022652C0
ov115_022652C0: @ 0x022652C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4]
	adds r5, r1, #0
	cmp r0, #3
	bhi _022653C2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022652DA: @ jump table
	.2byte _022653C2 - _022652DA - 2 @ case 0
	.2byte _022652E2 - _022652DA - 2 @ case 1
	.2byte _022652FE - _022652DA - 2 @ case 2
	.2byte _02265386 - _022652DA - 2 @ case 3
_022652E2:
	movs r1, #4
	ldrsh r1, [r4, r1]
	ldrb r2, [r4, #6]
	adds r0, r5, #0
	subs r1, r1, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ov115_022653F4
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	movs r0, #0
	strh r0, [r4, #2]
_022652FE:
	movs r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _02265336
	movs r0, #3
	strh r0, [r4]
	movs r0, #0
	strh r0, [r4, #2]
	movs r1, #4
	ldrsh r1, [r4, r1]
	ldrb r2, [r4, #6]
	adds r0, r5, #0
	bl ov115_022653F4
	movs r0, #0x10
	str r0, [sp]
	movs r1, #4
	ldrsh r2, [r4, r1]
	movs r3, #1
	adds r1, r3, #0
	lsls r1, r2
	ldr r0, _022653C8 @ =0x04001050
	movs r2, #8
	movs r3, #0
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02265336:
	adds r0, r0, #1
	strh r0, [r4, #2]
	movs r0, #4
	ldrsh r2, [r4, r0]
	subs r5, r2, #2
	subs r6, r2, #1
	cmp r2, #0
	bge _02265348
	adds r2, r2, #3
_02265348:
	cmp r5, #0
	bge _0226534E
	adds r5, r5, #3
_0226534E:
	cmp r6, #0
	bge _02265354
	adds r6, r6, #3
_02265354:
	movs r0, #2
	ldrsh r0, [r4, r0]
	movs r4, #1
	lsls r1, r0, #4
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r1, r0, #4
	movs r0, #0x10
	subs r3, r0, r1
	adds r1, r4, #0
	lsls r1, r2
	adds r2, r4, #0
	subs r0, r0, r3
	str r0, [sp]
	lsls r2, r5
	lsls r4, r6
	orrs r4, r2
	movs r2, #8
	ldr r0, _022653C8 @ =0x04001050
	orrs r2, r4
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02265386:
	movs r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #8
	blt _0226539A
	movs r1, #0
	ldr r0, _022653C8 @ =0x04001050
	strh r1, [r4]
	strh r1, [r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0226539A:
	adds r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	movs r5, #1
	lsls r1, r0, #4
	asrs r0, r1, #2
	lsrs r0, r0, #0x1d
	adds r0, r1, r0
	asrs r3, r0, #3
	movs r0, #0x10
	subs r0, r0, r3
	str r0, [sp]
	movs r1, #4
	ldrsh r2, [r4, r1]
	adds r1, r5, #0
	ldr r0, _022653C8 @ =0x04001050
	lsls r1, r2
	movs r2, #8
	blx FUN_020BF55C
_022653C2:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022653C8: .4byte 0x04001050
	thumb_func_end ov115_022652C0

	thumb_func_start ov115_022653CC
ov115_022653CC: @ 0x022653CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #7]
	adds r0, r0, #1
	strb r0, [r4, #7]
	ldrb r0, [r4, #7]
	cmp r0, #0xa
	blo _022653F2
	movs r0, #1
	strh r0, [r4]
	movs r0, #4
	ldrsh r0, [r4, r0]
	movs r1, #3
	adds r0, r0, #1
	blx FUN_020E1F6C
	strh r1, [r4, #4]
	movs r0, #0
	strb r0, [r4, #7]
_022653F2:
	pop {r4, pc}
	thumb_func_end ov115_022653CC

	thumb_func_start ov115_022653F4
ov115_022653F4: @ 0x022653F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	lsls r0, r2, #1
	str r1, [sp, #0xc]
	adds r1, r0, #2
	adds r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	lsls r0, r1, #0x18
	movs r4, #0
	lsrs r7, r0, #0x18
_0226540E:
	ldr r0, [sp, #0xc]
	subs r5, r0, r4
	bpl _02265416
	adds r5, r5, #3
_02265416:
	movs r1, #2
	adds r0, r5, #4
	subs r1, r1, r4
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019060
	cmp r4, #0
	bne _02265446
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r1, r5, #4
	lsls r1, r1, #0x18
	movs r2, #0
	ldr r0, [r6]
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019E2C
	b _02265460
_02265446:
	movs r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r1, r5, #4
	str r0, [sp, #8]
	lsls r1, r1, #0x18
	movs r2, #0
	ldr r0, [r6]
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019E2C
_02265460:
	adds r1, r5, #4
	lsls r1, r1, #0x18
	ldr r0, [r6]
	lsrs r1, r1, #0x18
	bl FUN_02019448
	adds r4, r4, #1
	cmp r4, #3
	blt _0226540E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov115_022653F4

	thumb_func_start ov115_02265478
ov115_02265478: @ 0x02265478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	adds r5, r0, #0
	adds r6, r3, #0
	adds r0, #0x9c
	adds r4, r1, #0
	str r6, [r0]
	movs r1, #0x8c
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r7, r2, #0
	str r6, [sp, #8]
	adds r1, #0xbc
	ldr r0, [r4, r1]
	adds r1, r7, #0
	movs r2, #0xa
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r5]
	movs r1, #0x8c
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	adds r1, #0xc0
	ldr r0, [r4, r1]
	adds r1, r7, #0
	movs r2, #0xb
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #4]
	movs r1, #0x8c
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r1, #0xc4
	ldr r0, [r4, r1]
	adds r1, r7, #0
	movs r2, #9
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #8]
	movs r1, #0x8c
	str r1, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r1, #0xc8
	ldr r0, [r4, r1]
	adds r1, r7, #0
	movs r2, #8
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #0xc]
	ldr r0, [r5]
	bl FUN_0200A450
	cmp r0, #0
	bne _02265500
	bl FUN_02022974
_02265500:
	ldr r0, [r5, #4]
	bl FUN_0200A640
	cmp r0, #0
	bne _0226550E
	bl FUN_02022974
_0226550E:
	ldr r0, [r5]
	bl FUN_02009D4C
	ldr r0, [r5, #4]
	bl FUN_02009D4C
	movs r1, #0x8c
	adds r0, r1, #0
	adds r2, r1, #0
	str r1, [sp]
	subs r0, #0x8d
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r2, #0xbc
	ldr r2, [r4, r2]
	adds r3, r1, #0
	str r2, [sp, #0x14]
	adds r2, r1, #0
	adds r2, #0xc0
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r1, #0
	adds r2, #0xc4
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	adds r2, r1, #0
	adds r2, #0xc8
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, #0
	adds r0, #0x10
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x5c]
	adds r0, r5, #0
	adds r0, #0x10
	str r0, [sp, #0x60]
	ldr r0, _02265684 @ =0xFFFC0000
	str r6, [sp, #0x78]
	str r0, [sp, #0x64]
	movs r0, #3
	lsls r0, r0, #0x10
	str r0, [sp, #0x68]
	movs r0, #1
	str r0, [sp, #0x70]
	str r0, [sp, #0x74]
	add r0, sp, #0x5c
	bl FUN_02021B90
	movs r1, #0
	str r0, [r5, #0x34]
	bl FUN_02021CAC
	movs r0, #0x10
	adds r1, r6, #0
	bl FUN_02023790
	str r0, [r5, #0x5c]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r1, r5, #0
	ldr r0, [r4]
	adds r1, #0x38
	movs r2, #3
	movs r3, #2
	bl FUN_0201A870
	adds r0, r5, #0
	adds r0, #0x38
	adds r1, r6, #0
	bl FUN_02012B20
	movs r1, #1
	str r0, [r5, #0x4c]
	bl FUN_02012B58
	movs r1, #1
	adds r3, r5, #0
	adds r2, r1, #0
	adds r3, #0x50
	bl FUN_0201ED94
	cmp r0, #1
	beq _022655CA
	bl FUN_02022974
_022655CA:
	movs r1, #0x96
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	adds r1, #0xb6
	ldr r0, [r4, r1]
	movs r1, #0xe
	movs r2, #6
	movs r3, #0
	bl FUN_020098B8
	str r0, [r5, #0x60]
	bl FUN_0200A640
	cmp r0, #0
	bne _022655F2
	bl FUN_02022974
_022655F2:
	ldr r0, [r5, #0x60]
	bl FUN_02009D4C
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	str r0, [sp, #0x2c]
	adds r0, r5, #0
	adds r0, #0x38
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x60]
	bl FUN_0200A72C
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x3c]
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x40]
	movs r0, #6
	mvns r0, r0
	str r0, [sp, #0x44]
	adds r0, r0, #2
	str r0, [sp, #0x48]
	movs r0, #0
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x54]
	str r6, [sp, #0x58]
	ldr r1, [r5, #0x4c]
	add r0, sp, #0x2c
	bl FUN_02012B60
	movs r1, #0
	str r0, [r5, #0x48]
	bl FUN_020129D0
	adds r0, r5, #0
	adds r0, #0x38
	bl FUN_0201A8FC
	movs r2, #8
	adds r0, r5, #0
	movs r3, #9
	str r2, [sp]
	ldr r1, _02265684 @ =0xFFFC0000
	adds r0, #0x64
	lsls r2, r2, #0xe
	lsls r3, r3, #0xe
	bl ov115_02261304
	movs r0, #4
	movs r1, #3
	lsls r1, r1, #0x10
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x7c
	adds r2, r1, #0
	lsrs r3, r1, #2
	bl ov115_02261304
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x94
	strh r1, [r0]
	movs r0, #4
	adds r5, #0x96
	strh r0, [r5]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02265684: .4byte 0xFFFC0000
	thumb_func_end ov115_02265478

	thumb_func_start ov115_02265688
ov115_02265688: @ 0x02265688
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x48]
	adds r4, r1, #0
	bl FUN_02012BD8
	ldr r0, [r5, #0x60]
	bl FUN_0200A6DC
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x60]
	bl FUN_02009D68
	adds r0, r5, #0
	adds r0, #0x50
	bl FUN_0201EE28
	ldr r0, [r5, #0x4c]
	bl FUN_02012B48
	ldr r0, [r5, #0x5c]
	bl FUN_020237BC
	ldr r0, [r5, #0x34]
	bl FUN_02021BD4
	ldr r0, [r5]
	bl FUN_0200A4E4
	ldr r0, [r5, #4]
	bl FUN_0200A6DC
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #4]
	bl FUN_02009D68
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl FUN_02009D68
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02265688

	thumb_func_start ov115_02265700
ov115_02265700: @ 0x02265700
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #1
	adds r4, r1, #0
	str r0, [sp]
	adds r1, r2, #0
	movs r2, #2
	ldr r0, [r5, #0x5c]
	adds r3, r2, #0
	bl FUN_020238A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r1, r5, #0
	ldr r0, [r4]
	adds r1, #0x38
	movs r2, #3
	movs r3, #2
	bl FUN_0201A870
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02265784 @ =0x000F0E00
	adds r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x5c]
	adds r0, #0x38
	bl FUN_0201D78C
	adds r3, r5, #0
	adds r3, #0x9c
	adds r2, r5, #0
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r3, [r3]
	adds r2, #0x38
	bl FUN_02012BE0
	adds r0, r5, #0
	adds r0, #0x38
	bl FUN_0201A8FC
	ldr r0, [r5, #0x48]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [r5, #0x34]
	movs r1, #1
	bl FUN_02021CAC
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x98
	strh r1, [r0]
	movs r0, #0
	adds r5, #0x9a
	strh r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02265784: .4byte 0x000F0E00
	thumb_func_end ov115_02265700

	thumb_func_start ov115_02265788
ov115_02265788: @ 0x02265788
	adds r1, r0, #0
	adds r1, #0x98
	ldrh r1, [r1]
	cmp r1, #3
	beq _022657A4
	cmp r1, #2
	bne _0226579E
	adds r1, r0, #0
	movs r2, #0xc
	adds r1, #0x9a
	strh r2, [r1]
_0226579E:
	movs r1, #3
	adds r0, #0x98
	strh r1, [r0]
_022657A4:
	bx lr
	.align 2, 0
	thumb_func_end ov115_02265788

	thumb_func_start ov115_022657A8
ov115_022657A8: @ 0x022657A8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x98
	ldrh r0, [r0]
	adds r4, r1, #0
	cmp r0, #3
	beq _02265816
	movs r0, #1
	str r0, [sp]
	adds r1, r2, #0
	movs r2, #2
	ldr r0, [r5, #0x5c]
	adds r3, r2, #0
	bl FUN_020238A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r1, r5, #0
	ldr r0, [r4]
	adds r1, #0x38
	movs r2, #3
	movs r3, #2
	bl FUN_0201A870
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0226581C @ =0x000F0E00
	adds r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x5c]
	adds r0, #0x38
	bl FUN_0201D78C
	adds r3, r5, #0
	adds r3, #0x9c
	adds r2, r5, #0
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r3, [r3]
	adds r2, #0x38
	bl FUN_02012BE0
	adds r0, r5, #0
	adds r0, #0x38
	bl FUN_0201A8FC
	movs r0, #0
	adds r5, #0x96
	strh r0, [r5]
_02265816:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0226581C: .4byte 0x000F0E00
	thumb_func_end ov115_022657A8

	thumb_func_start ov115_02265820
ov115_02265820: @ 0x02265820
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0x98
	ldrh r0, [r0]
	cmp r0, #3
	bhi _02265898
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226583A: @ jump table
	.2byte _02265898 - _0226583A - 2 @ case 0
	.2byte _02265842 - _0226583A - 2 @ case 1
	.2byte _02265898 - _0226583A - 2 @ case 2
	.2byte _0226585E - _0226583A - 2 @ case 3
_02265842:
	movs r0, #0x94
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bge _02265854
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	strh r1, [r0]
	b _02265898
_02265854:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x98
	strh r1, [r0]
	b _02265898
_0226585E:
	movs r0, #0x9a
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02265870
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x9a
	strh r1, [r0]
	b _02265898
_02265870:
	movs r0, #0x94
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02265882
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	strh r1, [r0]
	b _02265898
_02265882:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x98
	strh r1, [r0]
	ldr r0, [r4, #0x48]
	bl FUN_020129D0
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02021CAC
_02265898:
	movs r1, #0x96
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bge _022658B8
	adds r2, r0, #1
	adds r0, r4, #0
	adds r0, #0x96
	strh r2, [r0]
	adds r0, r4, #0
	ldrsh r1, [r4, r1]
	adds r0, #0x8c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x7c
	bl ov115_02261364
_022658B8:
	movs r0, #0x94
	ldrsh r0, [r4, r0]
	str r0, [r4, #0x74]
	adds r0, r4, #0
	adds r0, #0x64
	bl ov115_02261364
	ldr r0, [r4, #0x64]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r4, #0x7c]
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	bl FUN_02021C50
	ldr r0, [r4, #0x48]
	bl FUN_02012938
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov115_02265820

	thumb_func_start ov115_022658E0
ov115_022658E0: @ 0x022658E0
	movs r2, #0
	strh r2, [r0]
	movs r1, #1
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	ldr r3, _022658F0 @ =FUN_02005748
	ldr r0, _022658F4 @ =0x0000056E
	bx r3
	.align 2, 0
_022658F0: .4byte FUN_02005748
_022658F4: .4byte 0x0000056E
	thumb_func_end ov115_022658E0

	thumb_func_start ov115_022658F8
ov115_022658F8: @ 0x022658F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	adds r5, r1, #0
	adds r6, r2, #0
	cmp r0, #0
	beq _02265A00
	ldrh r0, [r4]
	cmp r0, #5
	bhi _02265A00
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226591A: @ jump table
	.2byte _02265926 - _0226591A - 2 @ case 0
	.2byte _02265986 - _0226591A - 2 @ case 1
	.2byte _022659A0 - _0226591A - 2 @ case 2
	.2byte _022659CC - _0226591A - 2 @ case 3
	.2byte _022659E6 - _0226591A - 2 @ case 4
	.2byte _022659FA - _0226591A - 2 @ case 5
_02265926:
	movs r0, #3
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #3]
	ldrsb r1, [r4, r0]
	movs r0, #0x19
	lsls r0, r0, #0xc
	muls r0, r1, r0
	movs r1, #0x3a
	blx FUN_020E1F6C
	movs r1, #1
	adds r2, r0, #0
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r1, r2, r1
	bl ov115_022650F8
	movs r0, #3
	ldrsb r1, [r4, r0]
	movs r0, #0x96
	muls r0, r1, r0
	movs r1, #0x3a
	blx FUN_020E1F6C
	adds r2, r0, #0
	movs r0, #7
	adds r1, r0, #0
	adds r1, #0xf9
	adds r1, r2, r1
	bl FUN_02004FA8
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0xc
	bne _02265974
	ldr r0, _02265A04 @ =0x0000056F
	bl FUN_02005748
_02265974:
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0x3a
	blt _02265A00
	ldrh r0, [r4]
	add sp, #4
	adds r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02265986:
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	movs r1, #0x10
	movs r2, #0
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldrh r0, [r4]
	add sp, #4
	adds r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022659A0:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _02265A00
	adds r0, r5, #0
	bl ov115_022650C8
	movs r1, #2
	adds r0, r5, #0
	lsls r1, r1, #0xc
	bl ov115_022650F8
	adds r0, r6, #0
	movs r1, #1
	bl ov115_0226425C
	ldrh r0, [r4]
	add sp, #4
	adds r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022659CC:
	movs r0, #1
	str r0, [sp]
	movs r0, #0xe
	movs r1, #0
	movs r2, #0x10
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldrh r0, [r4]
	add sp, #4
	adds r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022659E6:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _02265A00
	ldrh r0, [r4]
	add sp, #4
	adds r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022659FA:
	movs r0, #0
	strb r0, [r4, #2]
	strh r0, [r4]
_02265A00:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02265A04: .4byte 0x0000056F
	thumb_func_end ov115_022658F8

	thumb_func_start ov115_02265A08
ov115_02265A08: @ 0x02265A08
	movs r0, #7
	adds r1, r0, #0
	ldr r3, _02265A14 @ =FUN_02004FA8
	adds r1, #0xf9
	bx r3
	nop
_02265A14: .4byte FUN_02004FA8
	thumb_func_end ov115_02265A08

	thumb_func_start ov115_02265A18
ov115_02265A18: @ 0x02265A18
	ldr r0, _02265A1C @ =0x0226664C
	bx lr
	.align 2, 0
_02265A1C: .4byte 0x0226664C
	thumb_func_end ov115_02265A18

	thumb_func_start ov115_02265A20
ov115_02265A20: @ 0x02265A20
	movs r0, #8
	bx lr
	thumb_func_end ov115_02265A20

	thumb_func_start ov115_02265A24
ov115_02265A24: @ 0x02265A24
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov115_02265A18
	adds r4, r0, #0
	bl ov115_02265A20
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	bl FUN_02032798
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov115_02265A24

	thumb_func_start ov115_02265A40
ov115_02265A40: @ 0x02265A40
	movs r0, #0
	bx lr
	thumb_func_end ov115_02265A40

	thumb_func_start ov115_02265A44
ov115_02265A44: @ 0x02265A44
	adds r0, r3, #0
	ldr r3, _02265A4C @ =ov115_0226095C
	bx r3
	nop
_02265A4C: .4byte ov115_0226095C
	thumb_func_end ov115_02265A44

	thumb_func_start ov115_02265A50
ov115_02265A50: @ 0x02265A50
	adds r0, r3, #0
	ldr r3, _02265A58 @ =ov115_02260964
	bx r3
	nop
_02265A58: .4byte ov115_02260964
	thumb_func_end ov115_02265A50

	thumb_func_start ov115_02265A5C
ov115_02265A5C: @ 0x02265A5C
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r6, r3, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov115_02260988
	bl FUN_0203608C
	cmp r0, #0
	bne _02265A80
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov115_0226096C
_02265A80:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov115_02265A5C

	thumb_func_start ov115_02265A84
ov115_02265A84: @ 0x02265A84
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r2]
	adds r0, r3, #0
	adds r2, r4, #0
	bl ov115_02260994
	pop {r4, pc}
	thumb_func_end ov115_02265A84

	thumb_func_start ov115_02265A94
ov115_02265A94: @ 0x02265A94
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r2, #0
	adds r0, r3, #0
	adds r2, r4, #0
	bl ov115_022609B4
	pop {r4, pc}
	thumb_func_end ov115_02265A94

	thumb_func_start ov115_02265AA4
ov115_02265AA4: @ 0x02265AA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r2]
	adds r0, r3, #0
	adds r2, r4, #0
	bl ov115_022609E4
	pop {r4, pc}
	thumb_func_end ov115_02265AA4

	thumb_func_start ov115_02265AB4
ov115_02265AB4: @ 0x02265AB4
	adds r0, r3, #0
	ldr r3, _02265ABC @ =ov115_02260A48
	bx r3
	nop
_02265ABC: .4byte ov115_02260A48
	thumb_func_end ov115_02265AB4

	thumb_func_start ov115_02265AC0
ov115_02265AC0: @ 0x02265AC0
	push {r3, lr}
	ldr r1, [r2]
	cmp r0, #0
	bne _02265ACE
	adds r0, r3, #0
	bl ov115_022609D8
_02265ACE:
	pop {r3, pc}
	thumb_func_end ov115_02265AC0

	thumb_func_start ov115_02265AD0
ov115_02265AD0: @ 0x02265AD0
	movs r0, #0x14
	bx lr
	thumb_func_end ov115_02265AD0

	thumb_func_start ov115_02265AD4
ov115_02265AD4: @ 0x02265AD4
	movs r0, #0x10
	bx lr
	thumb_func_end ov115_02265AD4

	thumb_func_start ov115_02265AD8
ov115_02265AD8: @ 0x02265AD8
	movs r0, #4
	bx lr
	thumb_func_end ov115_02265AD8

	thumb_func_start ov115_02265ADC
ov115_02265ADC: @ 0x02265ADC
	movs r0, #4
	bx lr
	thumb_func_end ov115_02265ADC
	@ 0x02265AE0
