	.include "macros/function.inc"
	.include "include/ov115_02260440.inc"

	

	.text


	thumb_func_start ov115_02260440
ov115_02260440: ; 0x02260440
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x63
	lsl r2, r0, #0x11
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x88
	mov r2, #0x63
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x88
	add r4, r0, #0
	bl memset
	str r5, [sp]
	add r1, r5, #0
	add r1, #0x39
	ldr r2, [r5, #0x34]
	add r5, #0x38
	add r0, r4, #0
	ldrb r1, [r1]
	ldrb r3, [r5]
	add r0, #8
	bl ov114_0225C700
	add r0, r4, #0
	mov r1, #0x63
	bl ov115_02260ADC
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02260440

	thumb_func_start ov115_0226048C
ov115_0226048C: ; 0x0226048C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02006840
	add r6, r0, #0
	add r0, r4, #0
	add r0, #8
	bl ov114_0225CA54
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
	bl sub_0200F2AC
	cmp r0, #1
	bne _022604CA
	bl sub_0200F2C0
_022604CA:
	mov r0, #0
	bl sub_0200F370
	ldr r0, [r4, #0x78]
	add r0, r0, #1
	str r0, [r4, #0x78]
	b _022604FA
_022604D8:
	add r0, r4, #0
	add r0, #8
	bl ov114_0225CA98
	cmp r0, #1
	bne _022604FA
	ldr r0, [r4, #0x78]
	add r0, r0, #1
	str r0, [r4, #0x78]
	b _022604FA
_022604EC:
	add r0, r4, #0
	add r1, r6, #0
	bl ov115_02260B44
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_022604FA:
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_02260500:
	ldr r0, [r5, #0]
	cmp r0, #0xf
	bhi _02260574
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260512: ; jump table
	.short _02260532 - _02260512 - 2 ; case 0
	.short _02260546 - _02260512 - 2 ; case 1
	.short _0226056A - _02260512 - 2 ; case 2
	.short _02260674 - _02260512 - 2 ; case 3
	.short _0226069E - _02260512 - 2 ; case 4
	.short _022606D6 - _02260512 - 2 ; case 5
	.short _022606EC - _02260512 - 2 ; case 6
	.short _02260700 - _02260512 - 2 ; case 7
	.short _02260782 - _02260512 - 2 ; case 8
	.short _022607C4 - _02260512 - 2 ; case 9
	.short _022607DC - _02260512 - 2 ; case 10
	.short _022607F0 - _02260512 - 2 ; case 11
	.short _02260818 - _02260512 - 2 ; case 12
	.short _02260844 - _02260512 - 2 ; case 13
	.short _02260894 - _02260512 - 2 ; case 14
	.short _022608B6 - _02260512 - 2 ; case 15
_02260532:
	add r0, r4, #0
	add r0, #8
	mov r1, #0x63
	bl ov114_0225C814
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_02260546:
	ldr r0, [r4, #0]
	bl ov114_0225C8BC
	cmp r0, #1
	bne _02260574
	ldr r0, [r4, #0]
	bl ov114_0225C8CC
	str r0, [r4, #0x70]
	ldr r0, [r4, #0]
	bl ov114_0225C838
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_0226056A:
	ldr r0, _02260838 ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #1
	tst r0, r1
	beq _02260576
_02260574:
	b _022608DE
_02260576:
	ldr r0, _0226083C ; =ov115_02260A50
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	mov r2, #0
	str r2, [r4, #0x38]
	str r2, [r4, #0x3c]
	add r0, r4, #0
	add r1, r4, #0
	str r2, [r4, #0x40]
	add r0, #0x84
	strb r2, [r0]
	add r1, #0x84
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	mov r0, #0x20
	mov r1, #0x63
	bl sub_0201DBEC
	add r0, r4, #0
	bl ov115_02265A24
	add r0, r4, #0
	mov r1, #1
	add r0, #0x80
	str r1, [r0, #0]
	bl sub_02032E64
	str r0, [r4, #0x74]
	cmp r0, #1
	bhi _022605BE
	bl sub_02022974
_022605BE:
	bl sub_0203608C
	add r1, r4, #0
	add r1, #0x44
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x44
	add r0, r4, #0
	ldrh r1, [r1]
	add r0, #8
	bl ov114_0225C76C
	add r1, r4, #0
	add r1, #0x46
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _022605FC
	mov r1, #0x4b
	add r3, r4, #0
	ldr r2, [r4, #0x74]
	mov r0, #0x63
	lsl r1, r1, #4
	add r3, #0x48
	bl ov115_02260BBC
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #0x7c]
_022605FC:
	add r0, r4, #0
	add r0, #0x48
	str r0, [sp]
	add r3, r4, #0
	add r3, #0x46
	mov r1, #0x4b
	ldrh r3, [r3]
	ldr r2, [r4, #0x74]
	mov r0, #0x63
	lsl r1, r1, #4
	bl ov115_02260CEC
	str r0, [r4, #0x34]
	bl sub_02039734
	add r6, #0x38
	ldrb r0, [r6]
	cmp r0, #0
	beq _02260628
	mov r0, #0x63
	bl ov4_021D1E74
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
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	b _0226065E
_02260642:
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #9]
	b _0226065E
_0226064E:
	mov r1, #1
	add r0, sp, #0xc
	strb r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #9]
	b _0226065E
_0226065A:
	bl sub_02022974
_0226065E:
	ldr r0, [r4, #0x34]
	add r1, sp, #0x14
	bl ov115_022612BC
	mov r0, #1
	bl sub_020364F0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_02260674:
	mov r0, #1
	bl sub_02036540
	cmp r0, #0
	beq _022606C4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x63
	mov r1, #0x1b
	str r0, [sp, #8]
	ldr r3, _02260840 ; =0x0000FFFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_0226069E:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov115_02260DAC
	bl sub_0200F2AC
	cmp r0, #0
	beq _022606C4
	add r4, #0x44
	ldrh r0, [r4]
	cmp r0, #0
	bne _022606CE
	mov r1, #0
	mov r0, #0x16
	add r2, r1, #0
	bl sub_020359DC
	cmp r0, #0
	bne _022606C6
_022606C4:
	b _022608DE
_022606C6:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_022606CE:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_022606D6:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov115_02260DAC
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _022607D2
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_022606EC:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov115_02260DAC
	cmp r0, #0
	bne _022607D2
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_02260700:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _02260724
	ldr r0, [r4, #0x34]
	bl ov115_02261274
	str r0, [sp, #0x10]
	mov r0, #0x19
	add r1, sp, #0x10
	mov r2, #4
	bl sub_020359DC
	cmp r0, #0
	beq _022607D2
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_02260724:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _0226076E
	ldr r0, [r4, #0x30]
	bl ov115_02260BEC
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	bl ov115_02260C54
	cmp r0, #0
	beq _0226075E
	ldr r0, [r4, #0x30]
	bl ov115_02260C64
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1b
	add r2, sp, #0xc
	mov r3, #4
	bl ov115_02260BA0
	cmp r0, #1
	bne _0226075E
	ldr r0, [r4, #0x30]
	bl ov115_02260C5C
_0226075E:
	cmp r5, #0
	bne _0226076E
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x17
	add r3, r2, #0
	bl ov115_02260BA0
_0226076E:
	ldr r0, [r4, #0x34]
	bl ov115_022610D4
	add r0, r4, #0
	bl ov115_02260A5C
	add r0, r4, #0
	bl ov115_02260A90
	b _022608DE
_02260782:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov115_02260F70
	add r0, r4, #0
	add r0, #0x44
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
	mov r0, #0x1a
	add r1, sp, #0x18
	mov r2, #0x10
	bl sub_020359DC
	cmp r0, #0
	beq _022607D2
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_022607BC:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_022607C4:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov115_02260F70
	ldr r0, [r4, #0x40]
	cmp r0, #1
	beq _022607D4
_022607D2:
	b _022608DE
_022607D4:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_022607DC:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov115_02260F70
	cmp r0, #0
	bne _022608DE
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_022607F0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x63
	mov r1, #0x1a
	str r0, [sp, #8]
	ldr r3, _02260840 ; =0x0000FFFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov115_02260F70
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_02260818:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov115_02260F70
	bl sub_0200F2AC
	cmp r0, #0
	beq _022608DE
	mov r0, #3
	bl sub_020364F0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
	nop
_02260838: .word 0x021BF67C
_0226083C: .word ov115_02260A50
_02260840: .word 0x0000FFFF
_02260844:
	mov r0, #3
	bl sub_02036540
	cmp r0, #0
	bne _02260854
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_02260854:
	add r6, #0x38
	ldrb r0, [r6]
	cmp r0, #0
	beq _02260860
	bl ov4_021D1F18
_02260860:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02260874
	ldr r0, [r4, #0x30]
	bl ov115_02260BE4
	mov r0, #0
	str r0, [r4, #0x30]
_02260874:
	ldr r0, [r4, #0x34]
	bl ov115_02260D78
	mov r0, #0
	str r0, [r4, #0x34]
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201DC3C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_02260894:
	ldrb r1, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x18
	bl ov114_0225C9A8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #8
	add r1, #0x18
	mov r2, #0x63
	bl ov114_0225C8E0
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _022608DE
_022608B6:
	ldr r0, [r4, #4]
	bl ov114_0225C9A0
	cmp r0, #1
	bne _022608DE
	ldr r0, [r4, #4]
	bl ov114_0225C9A4
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov114_0225C904
	mov r0, #0
	str r0, [r4, #4]
	cmp r6, #0
	bne _022608DC
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_022608DC:
	str r0, [r5, #0]
_022608DE:
	mov r0, #0
	add sp, #0x28
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_0226048C

	thumb_func_start ov115_022608E4
ov115_022608E4: ; 0x022608E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200682C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02260902
	cmp r0, #1
	beq _0226093C
	b _02260958
_02260902:
	add r0, r6, #0
	add r0, #8
	bl ov114_0225CA54
	add r7, r0, #0
	add r0, r6, #0
	bl ov115_02260B30
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x63
	bl sub_0201807C
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	cmp r7, #1
	bne _0226092E
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226092E:
	mov r0, #4
	bl sub_020364F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02260958
_0226093C:
	mov r0, #4
	bl sub_02036540
	cmp r0, #0
	bne _02260954
	bl sub_02035E18
	add r4, r0, #0
	bl sub_02032E64
	cmp r4, r0
	bge _02260958
_02260954:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02260958:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov115_022608E4

	thumb_func_start ov115_0226095C
ov115_0226095C: ; 0x0226095C
	mov r1, #1
	str r1, [r0, #0x38]
	bx lr
	; .align 2, 0
	thumb_func_end ov115_0226095C

	thumb_func_start ov115_02260964
ov115_02260964: ; 0x02260964
	mov r1, #1
	str r1, [r0, #0x3c]
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02260964

	thumb_func_start ov115_0226096C
ov115_0226096C: ; 0x0226096C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #8
	add r1, r2, #0
	bl ov114_0225C76C
	add r2, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	bl ov115_02260C6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_0226096C

	thumb_func_start ov115_02260988
ov115_02260988: ; 0x02260988
	ldr r3, _02260990 ; =ov115_022611E4
	ldr r0, [r0, #0x34]
	bx r3
	nop
_02260990: .word ov115_022611E4
	thumb_func_end ov115_02260988

	thumb_func_start ov115_02260994
ov115_02260994: ; 0x02260994
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #8
	add r1, r2, #0
	bl ov114_0225C76C
	add r2, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _022609B0
	add r1, r4, #0
	bl ov115_02260C7C
_022609B0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02260994

	thumb_func_start ov115_022609B4
ov115_022609B4: ; 0x022609B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	bl ov115_02261260
	mov r0, #1
	str r0, [r5, #0x40]
	mov r1, #0
_022609C6:
	ldr r0, [r4, #0]
	add r1, r1, #1
	str r0, [r5, #0x18]
	add r4, r4, #4
	add r5, r5, #4
	cmp r1, #4
	blt _022609C6
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_022609B4

	thumb_func_start ov115_022609D8
ov115_022609D8: ; 0x022609D8
	ldr r3, _022609E0 ; =ov115_02261278
	ldr r0, [r0, #0x34]
	bx r3
	nop
_022609E0: .word ov115_02261278
	thumb_func_end ov115_022609D8

	thumb_func_start ov115_022609E4
ov115_022609E4: ; 0x022609E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, #8
	add r1, r2, #0
	bl ov114_0225C76C
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	add r2, r4, #0
	bl ov115_022612AC
	add r1, r5, #0
	add r1, #0x84
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	add r0, r5, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02260A46
	ldr r3, [r5, #0x74]
	mov r1, #1
	mov r0, #0
	cmp r3, #0
	bls _02260A32
	ldr r2, [r5, #0x7c]
	add r6, r0, #0
_02260A20:
	add r4, r5, r0
	add r4, #0x84
	ldrb r4, [r4]
	cmp r2, r4
	bls _02260A2C
	add r1, r6, #0
_02260A2C:
	add r0, r0, #1
	cmp r0, r3
	blo _02260A20
_02260A32:
	cmp r1, #1
	bne _02260A46
	ldr r0, [r5, #0x7c]
	mov r1, #0
	add r0, r0, #1
	str r0, [r5, #0x7c]
	mov r0, #0x1d
	add r2, r1, #0
	bl sub_020359DC
_02260A46:
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_022609E4

	thumb_func_start ov115_02260A48
ov115_02260A48: ; 0x02260A48
	mov r1, #1
	add r0, #0x80
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov115_02260A48

	thumb_func_start ov115_02260A50
ov115_02260A50: ; 0x02260A50
	ldr r3, _02260A58 ; =ov115_022611C8
	ldr r0, [r0, #0x34]
	bx r3
	nop
_02260A58: .word ov115_022611C8
	thumb_func_end ov115_02260A50

	thumb_func_start ov115_02260A5C
ov115_02260A5C: ; 0x02260A5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r1, sp, #0
	bl ov115_02261224
	cmp r0, #1
	bne _02260A8C
	mov r6, #0x18
	add r4, sp, #0
	mov r7, #0x14
_02260A74:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov115_02260BA0
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl ov115_02261224
	cmp r0, #1
	beq _02260A74
_02260A8C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov115_02260A5C

	thumb_func_start ov115_02260A90
ov115_02260A90: ; 0x02260A90
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ov115_022611E0
	cmp r0, #0
	beq _02260AD6
	mov r1, #0x1e
	bl _s32_div_f
	cmp r1, #0
	bne _02260AD6
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02260AD6
	ldr r0, [r4, #0x34]
	bl ov115_02261274
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x1c
	add r2, sp, #0
	mov r3, #4
	bl ov115_02260BA0
	cmp r0, #0
	bne _02260AD0
	bl sub_02022974
_02260AD0:
	mov r0, #0
	add r4, #0x80
	str r0, [r4, #0]
_02260AD6:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02260A90

	thumb_func_start ov115_02260ADC
ov115_02260ADC: ; 0x02260ADC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r3, r1, #0
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0xbd
	add r2, r1, #0
	bl sub_02007068
	str r0, [r7, #0x4c]
	ldr r0, [sp, #8]
	mov r1, #0x18
	bl _u32_div_f
	str r0, [r7, #0x48]
	ldrb r0, [r7, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _02260B2C
	add r6, r7, #0
	add r5, r7, #0
	add r6, #8
_02260B0E:
	add r0, r6, #0
	add r1, r4, #0
	bl ov114_0225C7CC
	str r0, [r5, #0x50]
	add r0, r6, #0
	add r1, r4, #0
	bl ov114_0225C7A4
	str r0, [r5, #0x60]
	ldrb r0, [r7, #0x10]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _02260B0E
_02260B2C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov115_02260ADC

	thumb_func_start ov115_02260B30
ov115_02260B30: ; 0x02260B30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x48]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02260B30

	thumb_func_start ov115_02260B44
ov115_02260B44: ; 0x02260B44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02260B64
	bl ov114_0225C838
	mov r0, #0
	str r0, [r5, #0]
_02260B64:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _02260B84
	add r0, r5, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02260B7A
	ldr r0, [r5, #0x30]
	bl ov115_02260BE4
_02260B7A:
	ldr r0, [r5, #0x34]
	bl ov115_02260D78
	bl sub_0201DC3C
_02260B84:
	add r4, #0x38
	ldrb r0, [r4]
	cmp r0, #0
	beq _02260B90
	bl ov4_021D1F18
_02260B90:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02260B9E
	bl ov114_0225C904
	mov r0, #0
	str r0, [r5, #4]
_02260B9E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov115_02260B44

	thumb_func_start ov115_02260BA0
ov115_02260BA0: ; 0x02260BA0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02260BAE
	mov r0, #0
	pop {r3, pc}
_02260BAE:
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_020359DC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov115_02260BA0