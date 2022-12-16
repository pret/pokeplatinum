	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov115_02260CEC
ov115_02260CEC: ; 0x02260CEC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _02260D5C ; =0x000087E8
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	ldr r2, _02260D5C ; =0x000087E8
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, _02260D60 ; =0x0000877C
	str r1, [r4, r0]
	ldr r1, _02260D64 ; =0x000019CC
	add r0, r4, #0
	add r1, r4, r1
	bl ov115_02261B34
	add r0, r4, #0
	add r1, r5, #0
	bl ov115_022633FC
	ldr r0, _02260D68 ; =0x0000878C
	ldr r1, _02260D6C ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	add r2, r5, #0
	bl ov115_02262FB4
	ldr r0, _02260D70 ; =0x000087CC
	add r0, r4, r0
	bl ov115_0226327C
	ldr r0, _02260D74 ; =0x022666C0
	mov r1, #8
	mov r2, #4
	bl sub_0201E3F4
	cmp r0, #1
	beq _02260D56
	bl sub_02022974
_02260D56:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260D5C: .word 0x000087E8
_02260D60: .word 0x0000877C
_02260D64: .word 0x000019CC
_02260D68: .word 0x0000878C
_02260D6C: .word 0x00001AB4
_02260D70: .word 0x000087CC
_02260D74: .word 0x022666C0
	thumb_func_end ov115_02260CEC

	thumb_func_start ov115_02260D78
ov115_02260D78: ; 0x02260D78
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201E530
	cmp r0, #1
	beq _02260D88
	bl sub_02022974
_02260D88:
	ldr r0, _02260DA4 ; =0x0000878C
	ldr r1, _02260DA8 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_022630DC
	add r0, r4, #0
	bl ov115_02263560
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	nop
_02260DA4: .word 0x0000878C
_02260DA8: .word 0x00001AB4
	thumb_func_end ov115_02260D78

	thumb_func_start ov115_02260DAC
ov115_02260DAC: ; 0x02260DAC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _02260F4C ; =0x00001F38
	add r6, r1, #0
	ldr r0, [r4, r0]
	mov r5, #1
	cmp r0, #4
	blo _02260DDE
	ldr r0, _02260F50 ; =0x00008785
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02260DCA
	add r1, r5, #0
	sub r1, #0x79
	b _02260DCC
_02260DCA:
	mov r1, #0x78
_02260DCC:
	ldr r2, _02260F54 ; =0x000019CC
	add r0, r4, r2
	add r2, r2, #2
	ldrh r2, [r4, r2]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov115_02261C48
_02260DDE:
	ldr r1, _02260F58 ; =0x00001AB4
	add r0, r4, r1
	sub r1, #0xe8
	add r1, r4, r1
	bl ov115_02261AB8
	ldr r0, _02260F5C ; =0x00001F74
	ldr r1, _02260F54 ; =0x000019CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_022640EC
	ldr r0, _02260F5C ; =0x00001F74
	ldr r1, _02260F54 ; =0x000019CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02264110
	ldr r0, _02260F4C ; =0x00001F38
	ldr r1, [r4, r0]
	cmp r1, #8
	bls _02260E0C
	b _02260F2E
_02260E0C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02260E18: ; jump table
	.short _02260E2A - _02260E18 - 2 ; case 0
	.short _02260E3C - _02260E18 - 2 ; case 1
	.short _02260E5A - _02260E18 - 2 ; case 2
	.short _02260E74 - _02260E18 - 2 ; case 3
	.short _02260ECA - _02260E18 - 2 ; case 4
	.short _02260ED4 - _02260E18 - 2 ; case 5
	.short _02260EEC - _02260E18 - 2 ; case 6
	.short _02260F02 - _02260E18 - 2 ; case 7
	.short _02260F18 - _02260E18 - 2 ; case 8
_02260E2A:
	ldr r0, _02260F60 ; =0x0000878C
	add r0, r4, r0
	bl ov115_02263130
	ldr r0, _02260F4C ; =0x00001F38
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _02260F2E
_02260E3C:
	ldr r0, _02260F60 ; =0x0000878C
	add r1, r4, #0
	add r0, r4, r0
	bl ov115_02263150
	cmp r0, #1
	bne _02260F2E
	ldr r0, _02260F4C ; =0x00001F38
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r0, #2
	bl sub_020364F0
	b _02260F2E
_02260E5A:
	mov r0, #2
	bl sub_02036540
	cmp r0, #0
	beq _02260F2E
	ldr r0, _02260F4C ; =0x00001F38
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0x41
	add r0, #8
	str r1, [r4, r0]
	b _02260F2E
_02260E74:
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #0
	add r1, #8
	str r2, [r4, r1]
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0x32
	bne _02260E90
	ldr r0, _02260F64 ; =0x0000061A
	bl sub_02005748
_02260E90:
	mov r0, #0x7d
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0x14
	bne _02260EA0
	ldr r0, _02260F68 ; =0x0000063E
	bl sub_02005748
_02260EA0:
	ldr r0, _02260F5C ; =0x00001F74
	mov r1, #1
	add r0, r4, r0
	lsl r1, r1, #0xc
	bl ov115_02264214
	mov r0, #0x7d
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02260F2E
	ldr r1, _02260F58 ; =0x00001AB4
	sub r0, #8
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02261A74
	ldr r0, _02260F4C ; =0x00001F38
	mov r1, #4
	str r1, [r4, r0]
	b _02260F2E
_02260ECA:
	cmp r6, #1
	bne _02260F2E
	mov r1, #5
	str r1, [r4, r0]
	b _02260F2E
_02260ED4:
	ldr r1, _02260F58 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02261A10
	ldr r0, _02260F6C ; =0x000005DD
	bl sub_02005748
	ldr r0, _02260F4C ; =0x00001F38
	mov r1, #6
	str r1, [r4, r0]
	b _02260F2E
_02260EEC:
	ldr r1, _02260F58 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02261A3C
	cmp r0, #0
	bne _02260F2E
	ldr r0, _02260F4C ; =0x00001F38
	mov r1, #7
	str r1, [r4, r0]
	b _02260F2E
_02260F02:
	ldr r1, _02260F58 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02261AA4
	cmp r0, #0
	bne _02260F2E
	ldr r0, _02260F4C ; =0x00001F38
	mov r1, #8
	str r1, [r4, r0]
	b _02260F2E
_02260F18:
	ldr r1, _02260F58 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02261A54
	ldr r0, _02260F54 ; =0x000019CC
	mov r1, #1
	add r0, r4, r0
	bl ov115_02261C18
	mov r5, #0
_02260F2E:
	ldr r0, _02260F5C ; =0x00001F74
	ldr r1, _02260F54 ; =0x000019CC
	ldr r2, [r4, #0]
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_022640A4
	ldr r1, _02260F58 ; =0x00001AB4
	add r0, r4, #0
	add r1, r4, r1
	bl ov115_0226369C
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_02260F4C: .word 0x00001F38
_02260F50: .word 0x00008785
_02260F54: .word 0x000019CC
_02260F58: .word 0x00001AB4
_02260F5C: .word 0x00001F74
_02260F60: .word 0x0000878C
_02260F64: .word 0x0000061A
_02260F68: .word 0x0000063E
_02260F6C: .word 0x000005DD
	thumb_func_end ov115_02260DAC

	thumb_func_start ov115_02260F70
ov115_02260F70: ; 0x02260F70
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _022610B0 ; =0x00001F54
	add r4, r0, #0
	ldr r2, [r4, r1]
	mov r6, #1
	cmp r2, #3
	bhi _02261050
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02260F8C: ; jump table
	.short _02260F94 - _02260F8C - 2 ; case 0
	.short _02260FDA - _02260F8C - 2 ; case 1
	.short _02261036 - _02260F8C - 2 ; case 2
	.short _0226104E - _02260F8C - 2 ; case 3
_02260F94:
	bl ov115_022625A8
	add r0, r4, #0
	bl ov115_02262D90
	mov r0, #2
	str r0, [sp]
	mov r0, #0x18
	add r1, r0, #0
	sub r1, #0x26
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, _022610B4 ; =0x00001AB4
	add r0, r4, r0
	bl ov115_02261ADC
	ldr r0, _022610B8 ; =0x000021A4
	ldr r0, [r4, r0]
	bl ov114_0225CBB0
	ldr r0, _022610BC ; =0x000087E4
	add r0, r4, r0
	bl ov115_02265A08
	ldr r0, _022610C0 ; =0x0000862C
	add r0, r4, r0
	bl ov115_02265788
	ldr r0, _022610B0 ; =0x00001F54
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _02261050
_02260FDA:
	ldr r0, _022610B4 ; =0x00001AB4
	add r5, r6, #0
	add r0, r4, r0
	bl ov115_02261AEC
	cmp r0, #0
	bne _02260FEA
	mov r5, #0
_02260FEA:
	add r0, r4, #0
	bl ov115_02262304
	add r0, r4, #0
	bl ov115_02262540
	add r0, r4, #0
	bl ov115_022625C8
	cmp r0, #1
	bne _02261002
	mov r5, #0
_02261002:
	ldr r0, _022610B4 ; =0x00001AB4
	add r0, r4, r0
	bl ov115_02261B1C
	cmp r0, #0
	bne _02261010
	mov r5, #0
_02261010:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	bne _0226101C
	mov r5, #0
_0226101C:
	cmp r5, #1
	bne _02261050
	cmp r7, #1
	bne _02261050
	ldr r0, _022610C4 ; =0x00001F58
	mov r1, #0
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r0, r0, #4
	add r1, r1, #1
	str r1, [r4, r0]
	b _02261050
_02261036:
	add r0, r1, #4
	ldr r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x40
	blo _02261050
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	b _02261050
_0226104E:
	mov r6, #0
_02261050:
	ldr r0, _022610C8 ; =0x00008785
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0226105E
	mov r2, #0x77
	mvn r2, r2
	b _02261060
_0226105E:
	mov r2, #0x78
_02261060:
	ldr r1, _022610CC ; =0x000019CC
	add r0, r4, r1
	add r1, r1, #2
	ldrh r1, [r4, r1]
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov115_02261C48
	ldr r0, _022610D0 ; =0x00001F74
	ldr r1, _022610CC ; =0x000019CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_022640C0
	ldr r0, _022610D0 ; =0x00001F74
	ldr r1, _022610CC ; =0x000019CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_022640EC
	ldr r0, _022610D0 ; =0x00001F74
	ldr r1, _022610CC ; =0x000019CC
	ldr r2, [r4, #0]
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_022640A4
	ldr r1, _022610B4 ; =0x00001AB4
	add r0, r4, #0
	add r1, r4, r1
	bl ov115_0226369C
	ldr r0, _022610C0 ; =0x0000862C
	add r0, r4, r0
	bl ov115_02265820
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022610B0: .word 0x00001F54
_022610B4: .word 0x00001AB4
_022610B8: .word 0x000021A4
_022610BC: .word 0x000087E4
_022610C0: .word 0x0000862C
_022610C4: .word 0x00001F58
_022610C8: .word 0x00008785
_022610CC: .word 0x000019CC
_022610D0: .word 0x00001F74
	thumb_func_end ov115_02260F70

	thumb_func_start ov115_022610D4
ov115_022610D4: ; 0x022610D4
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0]
	cmp r2, #2
	bhs _022610FA
	ldr r0, _022611A0 ; =0x02265B3C
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	ldr r0, [r4, #8]
	cmp r1, r0
	bhi _022610FA
	add r0, r2, #1
	str r0, [r4, #0]
	cmp r0, #1
	bne _022610FA
	ldr r0, _022611A4 ; =0x000087E4
	add r0, r4, r0
	bl ov115_022658E0
_022610FA:
	ldr r0, _022611A8 ; =0x000086EC
	mov r1, #1
	add r0, r4, r0
	mov r2, #0
	bl sub_0201E564
	add r0, r4, #0
	bl ov115_02262974
	ldr r0, _022611AC ; =0x00008730
	add r0, r4, r0
	bl ov115_02262E64
	cmp r0, #0
	bne _02261122
	ldr r1, _022611AC ; =0x00008730
	add r0, r4, #0
	add r1, r4, r1
	bl ov115_02262EFC
_02261122:
	ldr r0, _022611B0 ; =0x000087CC
	ldr r1, [r4, #0x10]
	add r0, r4, r0
	bl ov115_022632DC
	cmp r0, #1
	bne _02261150
	ldr r0, _022611B0 ; =0x000087CC
	add r0, r4, r0
	bl ov115_022632D8
	add r1, r0, #0
	ldr r0, _022611B4 ; =0x0000FFFF
	cmp r1, r0
	beq _02261148
	ldr r0, _022611B8 ; =0x00001F74
	add r0, r4, r0
	bl ov115_02264268
_02261148:
	ldr r0, _022611B0 ; =0x000087CC
	add r0, r4, r0
	bl ov115_022632C8
_02261150:
	add r0, r4, #0
	bl ov115_02262304
	ldr r1, _022611BC ; =0x000019CC
	add r0, r4, #0
	add r1, r4, r1
	bl ov115_02261BBC
	ldr r1, _022611C0 ; =0x00001AB4
	add r0, r4, #0
	add r1, r4, r1
	bl ov115_02263640
	add r0, r4, #0
	bl ov115_02262524
	ldr r0, _022611A4 ; =0x000087E4
	ldr r1, _022611C4 ; =0x00001C54
	ldr r2, _022611B8 ; =0x00001F74
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, r2
	bl ov115_022658F8
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0226118C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0226118C:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, r1
	blt _0226119A
	str r1, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_0226119A:
	mov r0, #0
	pop {r4, pc}
	nop
_022611A0: .word 0x02265B3C
_022611A4: .word 0x000087E4
_022611A8: .word 0x000086EC
_022611AC: .word 0x00008730
_022611B0: .word 0x000087CC
_022611B4: .word 0x0000FFFF
_022611B8: .word 0x00001F74
_022611BC: .word 0x000019CC
_022611C0: .word 0x00001AB4
_022611C4: .word 0x00001C54
	thumb_func_end ov115_022610D4

	thumb_func_start ov115_022611C8
ov115_022611C8: ; 0x022611C8
	push {r3, lr}
	ldr r1, _022611DC ; =0x00001AB4
	ldr r0, [r0, r1]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	pop {r3, pc}
	; .align 2, 0
_022611DC: .word 0x00001AB4
	thumb_func_end ov115_022611C8

	thumb_func_start ov115_022611E0
ov115_022611E0: ; 0x022611E0
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov115_022611E0

	thumb_func_start ov115_022611E4
ov115_022611E4: ; 0x022611E4
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	ldr r1, [r5, #0x14]
	cmp r1, r0
	beq _0226121C
	add r0, r4, #0
	add r1, sp, #0
	bl ov115_0226218C
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #2
	bl ov115_022621DC
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0226121C
	mov r2, #0x12
	ldr r0, _02261220 ; =0x00001E38
	ldrh r1, [r4]
	ldrsb r2, [r4, r2]
	ldr r3, [r5, #0]
	add r0, r5, r0
	bl ov115_0226158C
_0226121C:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02261220: .word 0x00001E38
	thumb_func_end ov115_022611E4

	thumb_func_start ov115_02261224
ov115_02261224: ; 0x02261224
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0
	add r3, r5, #0
_0226122C:
	add r0, r3, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #4
	bne _02261252
	mov r0, #0x44
	add r4, r2, #0
	mul r4, r0
	add r0, r5, #0
	add r0, #0x50
	add r0, r0, r4
	bl ov115_02262134
	add r5, #0x4c
	add r0, r5, r4
	bl ov115_022622F8
	mov r0, #1
	pop {r3, r4, r5, pc}
_02261252:
	add r2, r2, #1
	add r3, #0x44
	cmp r2, #0x60
	blt _0226122C
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02261224

	thumb_func_start ov115_02261260
ov115_02261260: ; 0x02261260
	add r3, r1, #0
	ldr r1, _02261270 ; =0x000086DC
	add r2, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	bx lr
	; .align 2, 0
_02261270: .word 0x000086DC
	thumb_func_end ov115_02261260

	thumb_func_start ov115_02261274
ov115_02261274: ; 0x02261274
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov115_02261274

	thumb_func_start ov115_02261278
ov115_02261278: ; 0x02261278
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, _022612A8 ; =0x00008780
	add r3, r0, #0
	ldrh r2, [r3, r4]
	add r0, r4, #2
	strh r2, [r3, r0]
	strh r1, [r3, r4]
	ldrh r0, [r3, r4]
	add r2, r4, #4
	sub r1, r4, #4
	str r0, [sp]
	add r0, r4, #0
	sub r0, #0x50
	add r4, r4, #2
	add r0, r3, r0
	ldr r1, [r3, r1]
	add r2, r3, r2
	ldrh r3, [r3, r4]
	bl ov115_02262DC4
	add sp, #4
	pop {r3, r4, pc}
	nop
_022612A8: .word 0x00008780
	thumb_func_end ov115_02261278

	thumb_func_start ov115_022612AC
ov115_022612AC: ; 0x022612AC
	ldr r3, _022612B4 ; =0x000087CC
	add r0, r0, r3
	ldr r3, _022612B8 ; =ov115_02263294
	bx r3
	; .align 2, 0
_022612B4: .word 0x000087CC
_022612B8: .word ov115_02263294
	thumb_func_end ov115_022612AC

	thumb_func_start ov115_022612BC
ov115_022612BC: ; 0x022612BC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r1]
	ldr r2, _022612FC ; =0x00008784
	strb r0, [r4, r2]
	ldrb r3, [r1, #1]
	add r0, r2, #1
	strb r3, [r4, r0]
	ldrb r3, [r1, #2]
	add r0, r2, #2
	strb r3, [r4, r0]
	ldrb r1, [r1, #3]
	add r0, r2, #3
	strb r1, [r4, r0]
	mov r1, #1
	add r0, r2, #4
	str r1, [r4, r0]
	add r1, r2, #0
	add r0, r2, #0
	sub r1, #8
	sub r0, #0x54
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r2, r4, r2
	bl ov115_02262DB0
	ldr r1, _02261300 ; =0x00008730
	add r0, r4, #0
	add r1, r4, r1
	bl ov115_02262EFC
	pop {r4, pc}
	; .align 2, 0
_022612FC: .word 0x00008784
_02261300: .word 0x00008730
	thumb_func_end ov115_022612BC

	thumb_func_start ov115_02261304
ov115_02261304: ; 0x02261304
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r7, r2, #0
	add r0, r3, #0
	add r6, r1, #0
	lsl r2, r4, #0xc
	str r3, [sp]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	sub r0, r7, r6
	mov r7, #2
	mov r3, #0
	lsl r7, r7, #0xa
	add r2, r2, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r2, r0, r2
	asr r1, r2, #0x1f
	lsr r0, r2, #0x13
	lsl r1, r1, #0xd
	orr r1, r0
	lsl r0, r2, #0xd
	add r0, r0, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r4, #0
	mul r1, r4
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	str r6, [r5, #0]
	ldr r1, [sp]
	str r6, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_02261304

	thumb_func_start ov115_02261364
ov115_02261364: ; 0x02261364
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r6, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	add r2, r6, #0
	orr r4, r0
	ldr r0, [r5, #0xc]
	mul r2, r6
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #2
	bl sub_020BCFD0
	ldr r1, [r5, #4]
	add r0, r4, r0
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, #1
	cmp r0, r1
	bgt _022613C4
	str r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_022613C4:
	str r1, [r5, #0x10]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02261364

	thumb_func_start ov115_022613CC
ov115_022613CC: ; 0x022613CC
	push {r3, r4}
	lsl r4, r0, #5
	lsl r0, r2, #3
	ldr r2, _022613F0 ; =0x02265E84
	lsl r1, r1, #7
	add r2, r2, r1
	add r2, r4, r2
	ldr r2, [r0, r2]
	str r2, [r3, #0]
	ldr r2, _022613F4 ; =0x02265E88
	add r1, r2, r1
	add r1, r4, r1
	ldr r1, [r0, r1]
	ldr r0, [sp, #8]
	str r1, [r0, #0]
	pop {r3, r4}
	bx lr
	nop
_022613F0: .word 0x02265E84
_022613F4: .word 0x02265E88
	thumb_func_end ov115_022613CC

	thumb_func_start ov115_022613F8
ov115_022613F8: ; 0x022613F8
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r3, #0
	add r3, sp, #0
	strh r0, [r3]
	mov r0, #0
	strh r0, [r3, #2]
	sub r3, r1, r4
	lsr r1, r3, #0x1f
	add r1, r3, r1
	asr r1, r1, #1
	lsl r1, r1, #0x10
	asr r1, r1, #4
	str r1, [sp, #4]
	add r1, sp, #0x28
	ldrh r1, [r1, #0x10]
	sub r2, r2, r1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	lsl r1, r1, #0x10
	asr r1, r1, #4
	str r0, [sp, #8]
	add r0, sp, #4
	str r1, [sp, #0xc]
	bl sub_020BD384
	ldr r1, _022614F0 ; =0x0001E200
	cmp r0, r1
	ble _0226147A
	add r0, sp, #4
	add r1, r0, #0
	bl sub_020BD3E4
	ldr r0, [sp, #4]
	ldr r2, _022614F0 ; =0x0001E200
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	ldr r2, _022614F0 ; =0x0001E200
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0xc]
_0226147A:
	mov r0, #0x26
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, sp, #4
	bl sub_020BD384
	ldr r2, _022614F4 ; =0x0000099A
	asr r1, r0, #0x1f
	mov r3, #0
	str r0, [sp, #0x10]
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, sp, #4
	str r1, [sp, #0x10]
	add r1, r0, #0
	bl sub_020BD3E4
	lsl r0, r4, #0x10
	add r2, sp, #0x28
	mov r1, #0x10
	ldrsh r1, [r2, r1]
	asr r0, r0, #0x10
	add r2, sp, #0x14
	bl ov115_022642F8
	mov r0, #0
	str r0, [sp, #0x18]
	add r2, sp, #0
	add r0, sp, #0x14
	ldrh r2, [r2]
	ldr r3, [r5, #0x10]
	add r1, r0, #0
	bl ov115_02264354
	add r2, sp, #0
	add r0, sp, #4
	ldrh r2, [r2]
	ldr r3, [r5, #0x10]
	add r1, r0, #0
	bl ov115_02264354
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x3c]
	add r0, r5, #0
	add r1, sp, #0
	bl ov115_022621DC
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_022614F0: .word 0x0001E200
_022614F4: .word 0x0000099A
	thumb_func_end ov115_022613F8

	thumb_func_start ov115_022614F8
ov115_022614F8: ; 0x022614F8
	ldr r1, [r0, #0x1c]
	cmp r1, #3
	blt _02261502
	mov r1, #2
	b _02261506
_02261502:
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
_02261506:
	lsl r2, r1, #2
	ldr r1, _0226151C ; =0x02265B2C
	ldr r0, [r0, #0]
	ldr r1, [r1, r2]
	cmp r0, #2
	bne _02261516
	lsl r0, r1, #1
	add r1, r1, r0
_02261516:
	add r0, r1, #0
	bx lr
	nop
_0226151C: .word 0x02265B2C
	thumb_func_end ov115_022614F8

	thumb_func_start ov115_02261520
ov115_02261520: ; 0x02261520
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #0x1c]
	ldr r7, [sp, #0x58]
	str r0, [sp, #0x14]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r4, #0
	add r0, sp, #0x14
	strh r4, [r0, #0x20]
	mov r0, #1
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
	add r0, r5, #0
	add r1, sp, #0x14
	add r2, r6, #0
	str r7, [sp, #8]
	bl ov115_022615B0
	add r4, r4, #1
	add r5, #0x40
	cmp r4, #4
	blt _02261552
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_02261520

	thumb_func_start ov115_02261574
ov115_02261574: ; 0x02261574
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0226157A:
	add r0, r5, #0
	bl ov115_02261648
	add r4, r4, #1
	add r5, #0x40
	cmp r4, #4
	blt _0226157A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02261574

	thumb_func_start ov115_0226158C
ov115_0226158C: ; 0x0226158C
	push {r4, lr}
	lsl r4, r1, #6
	add r0, r0, r4
	bl ov115_02261660
	pop {r4, pc}
	thumb_func_end ov115_0226158C

	thumb_func_start ov115_02261598
ov115_02261598: ; 0x02261598
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0226159E:
	add r0, r5, #0
	bl ov115_02261744
	add r4, r4, #1
	add r5, #0x40
	cmp r4, #4
	blt _0226159E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02261598

	thumb_func_start ov115_022615B0
ov115_022615B0: ; 0x022615B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r6, [sp, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	add r5, r1, #0
	str r3, [sp, #8]
	str r0, [sp, #0x2c]
	mov r7, #0
	add r4, r6, #0
_022615C8:
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	add r3, sp, #0x10
	bl ov115_022613CC
	ldr r0, [sp, #0x10]
	add r3, r5, #0
	lsl r0, r0, #0xc
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	lsl r0, r0, #0xc
	add r3, #8
	str r0, [r5, #0xc]
	ldmia r3!, {r0, r1}
	add r2, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_02021AA0
	str r0, [r4, #0]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CC8
	mov r1, #6
	ldr r0, [r4, #0]
	lsl r1, r1, #0xa
	bl sub_02021CE4
	mov r0, #0
	str r0, [r4, #0xc]
	add r7, r7, #1
	add r6, #0xc
	add r4, r4, #4
	cmp r7, #3
	blt _022615C8
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	bne _0226163C
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0226163C:
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0, #0x3c]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_022615B0

	thumb_func_start ov115_02261648
ov115_02261648: ; 0x02261648
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0226164E:
	ldr r0, [r5, #0]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0226164E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02261648

	thumb_func_start ov115_02261660
ov115_02261660: ; 0x02261660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0
	str r0, [sp]
	add r0, r4, #0
	sub r0, r0, #1
	ldr r5, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	str r0, [sp, #0x14]
	add r6, r4, #0
_0226167A:
	ldr r0, [r5, #0]
	bl sub_02021D34
	cmp r0, #0
	bne _0226168C
	mov r0, #1
	str r6, [sp, #0x14]
	str r0, [sp, #0x10]
	b _022616AC
_0226168C:
	ldr r0, [r5, #0]
	bl sub_02021F74
	add r7, r0, #0
	ldr r0, [r5, #0]
	add r1, r7, #1
	bl sub_02021F58
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _022616AC
	add r0, r7, #1
	cmp r4, r0
	bhi _022616AC
	add r4, r0, #0
	str r6, [sp, #0x14]
_022616AC:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _0226167A
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bge _022616BE
	bl sub_02022974
_022616BE:
	ldr r0, [sp, #8]
	cmp r0, #3
	blo _022616C8
	mov r0, #2
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
	add r0, r0, #2
	str r0, [sp, #8]
	b _022616E4
_022616DE:
	ldr r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
_022616E4:
	ldr r0, [sp, #4]
	add r4, r0, #3
	b _02261702
_022616EA:
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	cmp r0, #1
	bne _022616FA
	ldr r0, [sp, #8]
	add r0, r0, #5
	str r0, [sp, #8]
	b _02261700
_022616FA:
	ldr r0, [sp, #8]
	add r0, #0xb
	str r0, [sp, #8]
_02261700:
	mov r4, #7
_02261702:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	lsl r5, r0, #2
	ldr r0, [sp]
	ldr r0, [r0, r5]
	bl sub_02021D6C
	ldr r0, [sp]
	mov r1, #0
	add r0, r0, r5
	str r1, [r0, #0xc]
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0, r5]
	bl sub_02021CAC
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl ov115_0226177C
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, r5]
	bl sub_02021F58
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, r5]
	bl sub_02021E90
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_02261660

	thumb_func_start ov115_02261744
ov115_02261744: ; 0x02261744
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0226174C:
	ldr r0, [r5, #0]
	bl sub_02021D34
	cmp r0, #1
	bne _02261772
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x10
	bls _0226176A
	add r0, r6, #0
	add r1, r4, #0
	bl ov115_022617D8
	b _02261772
_0226176A:
	add r0, r6, #0
	add r1, r4, #0
	bl ov115_0226177C
_02261772:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0226174C
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_02261744

	thumb_func_start ov115_0226177C
ov115_0226177C: ; 0x0226177C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	lsl r4, r6, #2
	add r0, r5, r4
	ldr r0, [r0, #0xc]
	ldr r2, _022617D4 ; =0xFFFF0000
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x10
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #5
	bl sub_020BCFD0
	add r2, r0, #0
	mov r0, #0xc
	mul r0, r6
	add r6, r5, r0
	add r6, #0x18
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r7, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r7, #0
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022617D4: .word 0xFFFF0000
	thumb_func_end ov115_0226177C

	thumb_func_start ov115_022617D8
ov115_022617D8: ; 0x022617D8
	ldr r3, _022617E4 ; =sub_02021CAC
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	bx r3
	nop
_022617E4: .word sub_02021CAC
	thumb_func_end ov115_022617D8

	thumb_func_start ov115_022617E8
ov115_022617E8: ; 0x022617E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x58]
	add r5, r2, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x58]
	ldr r4, [sp, #0x60]
	ldr r2, [sp, #0x14]
	str r3, [sp, #0x1c]
	mov r1, #0x1c
	mov r0, #0
_02261800:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02261800
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0]
	add r1, #0xc
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r0, #0xc
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	mov r0, #0x80
	add r1, r4, #0
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r0, #8]
	add r2, r6, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022619F0 ; =0x0001020F
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, r1, #0
	add r0, #0xc
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	ldr r2, [r2, #0]
	mov r1, #0x12
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	ldr r2, [r2, #0]
	add r1, #0x12
	mov r3, #2
	bl sub_0200710C
	mov r0, #0x80
	str r0, [sp]
	mov r2, #0
	ldr r0, [sp, #0x5c]
	mov r1, #0x13
	add r3, r2, #0
	str r4, [sp, #4]
	bl sub_02007130
	add r0, sp, #0x30
	bl sub_0201A7A0
	mov r3, #0
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	add r0, #0xfb
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x30
	ldr r0, [r0, #0]
	bl sub_0201A7E8
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x28]
	mov r0, #0x80
	add r1, r4, #0
	bl sub_02023790
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	mov r4, #0
	cmp r0, #0
	bls _022619CA
	ldr r0, [sp, #0x58]
	ldr r1, _022619F4 ; =0x02265CA4
	lsl r0, r0, #7
	add r1, r1, r0
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #5
	add r6, r1, r0
_02261906:
	ldr r0, [sp, #0x58]
	cmp r4, r0
	beq _022619BE
	add r0, r6, #0
	sub r0, #0x20
	ldr r0, [r0, #0]
	mov r1, #2
	str r0, [sp, #0x2c]
	add r0, r6, #0
	sub r0, #0x1c
	ldr r7, [r0, #0]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	sub r2, r2, #1
	sub r3, r7, #1
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	add r0, sp, #0x30
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _02261954
	ldr r0, _022619F8 ; =0x0005060F
	str r0, [sp, #0x20]
	b _02261958
_02261954:
	ldr r0, _022619F0 ; =0x0001020F
	str r0, [sp, #0x20]
_02261958:
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x24]
	bl sub_02025EF4
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x30
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C2AC
	lsl r1, r7, #0x18
	add r0, sp, #0x30
	lsr r1, r1, #0x18
	bl sub_0201C2B0
	add r0, sp, #0x30
	ldrh r1, [r0, #0xa]
	ldr r0, _022619FC ; =0xFFFF8000
	and r0, r1
	ldr r1, [sp, #0x28]
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldr r1, _02261A00 ; =0x00007FFF
	and r1, r2
	orr r1, r0
	add r0, sp, #0x30
	strh r1, [r0, #0xa]
	mov r0, #0
	ldr r1, [sp, #0x24]
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r3, #0x40
	str r0, [sp, #8]
	mov r0, #0
	sub r3, r3, r7
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x24]
	add r0, sp, #0x30
	mov r1, #0
	lsr r3, r3, #1
	bl sub_0201D78C
	ldr r0, [sp, #0x28]
	add r0, #0x10
	str r0, [sp, #0x28]
_022619BE:
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #4
	cmp r4, r0
	blo _02261906
_022619CA:
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	add r0, sp, #0x30
	bl sub_0201A8FC
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #2
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022619F0: .word 0x0001020F
_022619F4: .word 0x02265CA4
_022619F8: .word 0x0005060F
_022619FC: .word 0xFFFF8000
_02261A00: .word 0x00007FFF
	thumb_func_end ov115_022617E8

	thumb_func_start ov115_02261A04
ov115_02261A04: ; 0x02261A04
	ldr r3, _02261A0C ; =sub_0201A8FC
	add r0, #0xc
	bx r3
	nop
_02261A0C: .word sub_0201A8FC
	thumb_func_end ov115_02261A04

	thumb_func_start ov115_02261A10
ov115_02261A10: ; 0x02261A10
	push {r4, lr}
	add r4, r1, #0
	add r0, #0xc
	mov r1, #0
	mov r2, #1
	mov r3, #4
	bl sub_0200DC48
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov114_0225CB8C
	pop {r4, pc}
	thumb_func_end ov115_02261A10

	thumb_func_start ov115_02261A3C
ov115_02261A3C: ; 0x02261A3C
	push {r3, lr}
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov114_0225CBE0
	cmp r0, #1
	beq _02261A50
	mov r0, #1
	pop {r3, pc}
_02261A50:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov115_02261A3C

	thumb_func_start ov115_02261A54
ov115_02261A54: ; 0x02261A54
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc
	mov r1, #1
	bl sub_0200DC9C
	add r4, #0xc
	add r0, r4, #0
	bl sub_0201AD10
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02261A54

	thumb_func_start ov115_02261A74
ov115_02261A74: ; 0x02261A74
	push {r4, lr}
	mov r0, #0x13
	add r4, r1, #0
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #1
	bl ov115_02264190
	ldr r0, _02261AA0 ; =0x0000066C
	mov r1, #0x2d
	add r0, r4, r0
	lsl r1, r1, #0xe
	bl sub_02017240
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #1
	bl ov115_0226422C
	pop {r4, pc}
	nop
_02261AA0: .word 0x0000066C
	thumb_func_end ov115_02261A74

	thumb_func_start ov115_02261AA4
ov115_02261AA4: ; 0x02261AA4
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	cmp r1, #8
	bge _02261AB2
	mov r0, #1
	bx lr
_02261AB2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02261AA4

	thumb_func_start ov115_02261AB8
ov115_02261AB8: ; 0x02261AB8
	mov r2, #0x13
	lsl r2, r2, #6
	ldr r3, _02261AC4 ; =ov115_022640C0
	add r0, r0, r2
	bx r3
	nop
_02261AC4: .word ov115_022640C0
	thumb_func_end ov115_02261AB8

	thumb_func_start ov115_02261AC8
ov115_02261AC8: ; 0x02261AC8
	mov r1, #0x4a
	mov r2, #0
	lsl r1, r1, #4
	str r2, [r0, r1]
	add r1, r1, #4
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02261AC8

	thumb_func_start ov115_02261AD8
ov115_02261AD8: ; 0x02261AD8
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02261AD8

	thumb_func_start ov115_02261ADC
ov115_02261ADC: ; 0x02261ADC
	mov r1, #0x13
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r3, _02261AE8 ; =ov115_02264190
	mov r1, #5
	bx r3
	; .align 2, 0
_02261AE8: .word ov115_02264190
	thumb_func_end ov115_02261ADC

	thumb_func_start ov115_02261AEC
ov115_02261AEC: ; 0x02261AEC
	push {r3, lr}
	ldr r1, _02261B14 ; =0x000004A4
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	cmp r1, #0x3c
	blo _02261B10
	ldr r1, _02261B18 ; =0x000006BC
	add r0, r0, r1
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_02017204
	cmp r0, #1
	bne _02261B10
	mov r0, #1
	pop {r3, pc}
_02261B10:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02261B14: .word 0x000004A4
_02261B18: .word 0x000006BC
	thumb_func_end ov115_02261AEC

	thumb_func_start ov115_02261B1C
ov115_02261B1C: ; 0x02261B1C
	push {r3, lr}
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov114_0225CBE0
	cmp r0, #1
	bne _02261B30
	mov r0, #1
	pop {r3, pc}
_02261B30:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov115_02261B1C

	thumb_func_start ov115_02261B34
ov115_02261B34: ; 0x02261B34
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r0, #0
	strh r0, [r4, #6]
	ldr r1, _02261BAC ; =0x00007FFF
	add r0, r4, #0
	bl ov115_02261C48
	ldr r1, _02261BB0 ; =0x00000E38
	add r0, r4, #0
	bl ov115_02261C1C
	mov r0, #0
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r1, #0x32
	add r0, r4, #0
	add r2, sp, #0
	lsl r1, r1, #0xe
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0x7b
	add r0, #0x98
	str r1, [r0, #0]
	mov r0, #5
	lsl r0, r0, #0x10
	ldr r5, _02261BB4 ; =0x02265B20
	str r0, [r4, #8]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x9c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r1, _02261BB8 ; =0x000009C4
	str r0, [r2, #0]
	add r0, r4, #0
	bl ov115_02261F94
	add r3, sp, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xd8
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0, #0]
	add r4, #0xe4
	str r0, [r4, #0]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02261BAC: .word 0x00007FFF
_02261BB0: .word 0x00000E38
_02261BB4: .word 0x02265B20
_02261BB8: .word 0x000009C4
	thumb_func_end ov115_02261B34

	thumb_func_start ov115_02261BBC
ov115_02261BBC: ; 0x02261BBC
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldr r0, [r3, #0]
	add r4, r1, #0
	cmp r0, #1
	bne _02261BCC
	mov r0, #0
	b _02261BCE
_02261BCC:
	mov r0, #1
_02261BCE:
	strb r0, [r4, #1]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0]
	add r0, r4, #0
	lsl r5, r3, #2
	ldr r3, _02261C14 ; =0x02265B50
	ldr r3, [r3, r5]
	blx r3
	add r1, r0, #0
	add r0, r4, #0
	bl ov115_02261C1C
	ldrh r1, [r4, #4]
	add r0, r4, #0
	bl ov115_02261F3C
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	add r0, r4, #0
	bl ov115_02261F68
	add r1, r4, #0
	add r1, #0xe4
	str r0, [r1, #0]
	ldrh r2, [r4, #2]
	ldrh r1, [r4, #6]
	add r0, r4, #0
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov115_02261C48
	pop {r3, r4, r5, pc}
	nop
_02261C14: .word 0x02265B50
	thumb_func_end ov115_02261BBC

	thumb_func_start ov115_02261C18
ov115_02261C18: ; 0x02261C18
	strb r1, [r0]
	bx lr
	thumb_func_end ov115_02261C18

	thumb_func_start ov115_02261C1C
ov115_02261C1C: ; 0x02261C1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r0, #0xc
	strh r5, [r4, #4]
	bl sub_020BB4C8
	asr r0, r5, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _02261C44 ; =0x020F983C
	add r2, r2, #1
	lsl r2, r2, #1
	add r4, #0xc
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	bl sub_020BB5AC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02261C44: .word 0x020F983C
	thumb_func_end ov115_02261C1C

	thumb_func_start ov115_02261C48
ov115_02261C48: ; 0x02261C48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x54
	strh r4, [r5, #2]
	bl sub_020BB4C8
	add r0, r5, #0
	add r0, #0x30
	bl sub_020BB4C8
	asr r0, r4, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _02261D7C ; =0x020F983C
	add r2, r2, #1
	lsl r2, r2, #1
	add r0, r5, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, #0x30
	bl sub_020BB5C8
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0xc
	add r1, #0x30
	add r2, #0x54
	bl sub_020BB8EC
	add r1, r5, #0
	add r2, r5, #0
	ldr r0, _02261D80 ; =0x02265B44
	add r1, #0x54
	add r2, #0x78
	bl sub_020BBB0C
	mov r0, #0
	add r1, r5, #0
	add r2, r5, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	add r1, #0x54
	neg r0, r0
	str r0, [sp, #0x10]
	add r0, sp, #8
	add r2, #0x84
	bl sub_020BBB0C
	add r0, r5, #0
	add r0, #0xb8
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xa4
	ldr r1, [r0, #0]
	mov r0, #5
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, sp, #8
	add r1, r5, #0
	add r1, #0x30
	add r2, r0, #0
	bl sub_020BBB0C
	add r1, r5, #0
	add r1, #0x84
	add r0, sp, #8
	add r2, r1, #0
	bl sub_020BD17C
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0x80
	add r2, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r5, #0
	add r2, #0x84
	str r0, [sp, #4]
	ldr r2, [r2, #0]
	ldr r0, [r5, #0x78]
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	str r0, [sp]
	add r4, r1, #0
	add r2, r5, #0
	add r2, #0x88
	ldr r0, [r5, #0x7c]
	ldr r2, [r2, #0]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r1, #0
	mov r3, #2
	add r7, r0, #0
	ldr r1, [sp, #4]
	mov r0, #0
	lsl r3, r3, #0xa
	add r1, r1, r3
	adc r6, r0
	lsl r3, r6, #0x14
	lsr r1, r1, #0xc
	orr r1, r3
	mov r3, #2
	ldr r6, [sp]
	lsl r3, r3, #0xa
	add r3, r6, r3
	adc r4, r0
	lsl r4, r4, #0x14
	lsr r3, r3, #0xc
	orr r3, r4
	mov r4, #2
	lsl r4, r4, #0xa
	add r4, r7, r4
	adc r2, r0
	lsl r0, r2, #0x14
	lsr r2, r4, #0xc
	orr r2, r0
	add r0, r3, r2
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r5, #0
	add r1, r5, #0
	add r5, #0xd8
	add r0, #0x9c
	add r1, #0x30
	add r2, r5, #0
	bl sub_020BBB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02261D7C: .word 0x020F983C
_02261D80: .word 0x02265B44
	thumb_func_end ov115_02261C48

	thumb_func_start ov115_02261D84
ov115_02261D84: ; 0x02261D84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	ldrb r0, [r4]
	add r6, r1, #0
	add r7, r3, #0
	mov r5, #0
	cmp r0, #0
	bne _02261D9C
	add sp, #0x34
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02261D9C:
	add r0, sp, #0x28
	str r0, [sp]
	add r0, sp, #0xc
	add r3, r4, #0
	str r0, [sp, #4]
	add r3, #0x90
	add r1, r2, #0
	add r2, r4, #0
	ldr r3, [r3, #0]
	add r0, r6, #0
	add r2, #0x78
	bl ov115_02265100
	add r0, r4, #0
	add r0, #0x84
	add r1, r6, #0
	add r2, sp, #0x1c
	bl sub_020BD1B0
	add r0, sp, #0x1c
	bl sub_020BD384
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	blt _02261DF2
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	bgt _02261DF2
	ldr r1, [r4, #8]
	cmp r6, r1
	bgt _02261DEC
	ldrb r1, [r4, #1]
	cmp r1, #1
	bne _02261DE8
	mov r5, #1
	b _02261DF2
_02261DE8:
	mov r5, #2
	b _02261DF2
_02261DEC:
	add sp, #0x34
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_02261DF2:
	cmp r0, #0
	ble _02261EA2
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r6, r0
	bge _02261EA2
	add r2, r4, #0
	add r2, #0x98
	ldr r2, [r2, #0]
	sub r0, r0, r6
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r5, r2, #0xc
	orr r5, r0
	add r0, sp, #0x1c
	add r1, sp, #0x10
	bl sub_020BD3E4
	asr r0, r5, #0x1f
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r5, #0
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r7, #0]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r5, #0
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r7, #4]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r5, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r7, #8]
	ldr r0, [r4, #8]
	sub r1, r6, r5
	cmp r1, r0
	bgt _02261EA0
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _02261E9C
	mov r5, #1
	b _02261EA2
_02261E9C:
	mov r5, #2
	b _02261EA2
_02261EA0:
	mov r5, #3
_02261EA2:
	add r0, r5, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov115_02261D84

	thumb_func_start ov115_02261EA8
ov115_02261EA8: ; 0x02261EA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrb r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	bne _02261EBC
	add sp, #0x24
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02261EBC:
	add r1, r5, #0
	add r1, #0xdc
	ldr r0, [r4, #4]
	ldr r2, [r1, #0]
	cmp r2, r0
	bge _02261F34
	add r1, r5, #0
	add r1, #0xe4
	ldr r1, [r1, #0]
	add r1, r2, r1
	cmp r1, r0
	ble _02261F34
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	add r2, sp, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	str r0, [sp]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	str r1, [sp, #4]
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_020BD1B0
	add r0, sp, #0x18
	bl sub_020BD384
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xdc
	ldr r1, [r4, #4]
	ldr r0, [r0, #0]
	sub r0, r1, r0
	asr r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mul r0, r1
	add r1, r5, #0
	add r1, #0xe4
	ldr r1, [r1, #0]
	asr r1, r1, #0xc
	bl sub_020E1F6C
	add r5, #0xcc
	ldr r1, [r5, #0]
	sub r0, r1, r0
	cmp r6, r0
	bge _02261F34
	add sp, #0x24
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02261F34:
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02261EA8

	thumb_func_start ov115_02261F3C
ov115_02261F3C: ; 0x02261F3C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	mul r0, r1
	ldr r1, _02261F64 ; =0x0000FFFF
	bl sub_020E1F6C
	mov r1, #0x5a
	sub r2, r1, r0
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mul r0, r2
	bl sub_020E1F6C
	add r4, #0xb0
	ldr r1, [r4, #0]
	add r0, r0, r1
	pop {r4, pc}
	; .align 2, 0
_02261F64: .word 0x0000FFFF
	thumb_func_end ov115_02261F3C

	thumb_func_start ov115_02261F68
ov115_02261F68: ; 0x02261F68
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	mul r0, r1
	ldr r1, _02261F90 ; =0x0000FFFF
	bl sub_020E1F6C
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x5a
	bl sub_020E1F6C
	add r4, #0xc0
	ldr r1, [r4, #0]
	add r0, r0, r1
	pop {r4, pc}
	; .align 2, 0
_02261F90: .word 0x0000FFFF
	thumb_func_end ov115_02261F68

	thumb_func_start ov115_02261F94
ov115_02261F94: ; 0x02261F94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xa8
	mov r2, #0x1e
	add r4, r1, #0
	str r1, [r0, #0]
	asr r6, r1, #0x1f
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #0xc
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0, #0]
	mov r2, #0x32
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #0xc
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r5, #0
	add r0, #0xb0
	str r1, [r0, #0]
	mov r2, #5
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #0x10
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r7, r2, #0xc
	orr r7, r0
	add r0, r5, #0
	add r0, #0xb4
	str r7, [r0, #0]
	add r0, r5, #0
	add r0, #0xb8
	mov r2, #0x37
	str r3, [r0, #0]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #0xc
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	mov r2, #0x96
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1, #0]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #0xc
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	mov r2, #0xf
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1, #0]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #0xe
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	mov r2, #0x1e
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xc8
	str r7, [r0, #0]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #0xe
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r5, #0
	add r0, #0xcc
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r2, #6
	sub r1, r1, r0
	add r0, r5, #0
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #0xa
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r5, #0xd4
	str r1, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov115_02261F94

	thumb_func_start ov115_022620D8
ov115_022620D8: ; 0x022620D8
	strh r1, [r0, #6]
	bx lr
	thumb_func_end ov115_022620D8

	thumb_func_start ov115_022620DC
ov115_022620DC: ; 0x022620DC
	add r0, #0xa4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov115_022620DC

	thumb_func_start ov115_022620E4
ov115_022620E4: ; 0x022620E4
	ldr r0, _022620E8 ; =0x00000E38
	bx lr
	; .align 2, 0
_022620E8: .word 0x00000E38
	thumb_func_end ov115_022620E4

	thumb_func_start ov115_022620EC
ov115_022620EC: ; 0x022620EC
	ldr r0, _022620F0 ; =0x00003FFF
	bx lr
	; .align 2, 0
_022620F0: .word 0x00003FFF
	thumb_func_end ov115_022620EC

	thumb_func_start ov115_022620F4
ov115_022620F4: ; 0x022620F4
	push {r3, lr}
	ldr r0, _02262124 ; =0x000002EE
	sub r0, r1, r0
	mov r1, #0x32
	bl sub_020E2178
	ldr r0, _02262128 ; =0x0000638E
	mul r0, r1
	mov r1, #0x32
	bl sub_020E1F6C
	ldr r1, _0226212C ; =0x000031C7
	cmp r0, r1
	ble _02262118
	bl sub_020E1F6C
	ldr r0, _0226212C ; =0x000031C7
	sub r0, r0, r1
_02262118:
	ldr r1, _02262130 ; =0x00000E38
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	nop
_02262124: .word 0x000002EE
_02262128: .word 0x0000638E
_0226212C: .word 0x000031C7
_02262130: .word 0x00000E38
	thumb_func_end ov115_022620F4

	thumb_func_start ov115_02262134
ov115_02262134: ; 0x02262134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	ldr r2, _02262188 ; =0x0000028F
	strh r0, [r4]
	ldrh r0, [r5, #2]
	mov r3, #0
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	strh r0, [r4, #4]
	ldr r0, [r5, #8]
	strh r0, [r4, #6]
	ldr r0, [r5, #0xc]
	strh r0, [r4, #8]
	ldr r0, [r5, #0x10]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	asr r0, r0, #0xc
	strh r0, [r4, #0xa]
	ldr r0, [r5, #0x18]
	asr r0, r0, #0xc
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0x1c]
	asr r0, r0, #0xc
	strh r0, [r4, #0xe]
	ldr r0, [r5, #0x20]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0x24]
	strb r0, [r4, #0x13]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02262188: .word 0x0000028F
	thumb_func_end ov115_02262134

	thumb_func_start ov115_0226218C
ov115_0226218C: ; 0x0226218C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	ldr r1, _022621D8 ; =0x0000028F
	strh r0, [r4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #2]
	mov r0, #4
	ldrsh r0, [r5, r0]
	str r0, [r4, #4]
	mov r0, #6
	ldrsh r0, [r5, r0]
	str r0, [r4, #8]
	mov r0, #8
	ldrsh r0, [r5, r0]
	str r0, [r4, #0xc]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	bl sub_020BCFD0
	str r0, [r4, #0x10]
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x14]
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x18]
	mov r0, #0xe
	ldrsh r0, [r5, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0x1c]
	ldrb r0, [r5, #0x13]
	str r0, [r4, #0x24]
	pop {r3, r4, r5, pc}
	nop
_022621D8: .word 0x0000028F
	thumb_func_end ov115_0226218C

	thumb_func_start ov115_022621DC
ov115_022621DC: ; 0x022621DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r1, #0
	str r2, [sp]
	mov r1, #0
	add r2, r4, #0
_022621EA:
	add r0, r2, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02262244
	mov r0, #0x44
	add r5, r1, #0
	mul r5, r0
	add r3, r4, r5
	add r7, r6, #0
	add r3, #0x50
	mov r2, #5
_02262202:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02262202
	add r1, r4, r5
	ldr r0, [sp]
	add r1, #0x4c
	add r2, r4, r5
	add r6, #0x14
	strb r0, [r1]
	ldmia r6!, {r0, r1}
	add r2, #0x78
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [r2, #0]
	add r0, r4, r5
	add r0, #0x4e
	strh r1, [r0]
	add r0, r4, r5
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, _022622E8 ; =0x00001AB4
	add r1, r4, #0
	add r1, #0x4c
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r4, r0
	add r1, r1, r5
	bl ov115_02264620
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02262244:
	add r1, r1, #1
	add r2, #0x44
	cmp r1, #0x60
	blt _022621EA
	ldr r0, [sp]
	cmp r0, #1
	bne _022622E2
	mov r0, #0
	add r2, r4, #0
_02262256:
	add r1, r2, #0
	add r1, #0x4c
	ldrb r1, [r1]
	cmp r1, #2
	beq _02262264
	cmp r1, #5
	bne _022622D6
_02262264:
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0x4c
	mov r1, #0x44
	str r0, [sp, #8]
	mul r5, r1
	ldr r0, _022622E8 ; =0x00001AB4
	ldr r1, [sp, #8]
	add r0, r4, r0
	add r1, r1, r5
	bl ov115_0226464C
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x4c
	str r0, [sp, #4]
	add r0, r0, r5
	bl ov115_022622F8
	add r2, r4, r5
	mov ip, r6
	add r2, #0x50
	mov r7, #5
_02262294:
	mov r3, ip
	ldmia r3!, {r0, r1}
	mov ip, r3
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _02262294
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r2, r4, r5
	add r6, #0x14
	strb r1, [r0, r5]
	ldmia r6!, {r0, r1}
	add r2, #0x78
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [r2, #0]
	add r0, r4, r5
	add r0, #0x4e
	strh r1, [r0]
	add r0, r4, r5
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, _022622E8 ; =0x00001AB4
	ldr r1, [sp, #8]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r4, r0
	add r1, r1, r5
	bl ov115_02264620
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022622D6:
	add r0, r0, #1
	add r2, #0x44
	cmp r0, #0x60
	blt _02262256
	bl sub_02022974
_022622E2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022622E8: .word 0x00001AB4
	thumb_func_end ov115_022621DC

	thumb_func_start ov115_022622EC
ov115_022622EC: ; 0x022622EC
	mov r0, #1
	strb r0, [r1, #1]
	strh r2, [r1, #6]
	str r3, [r1, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end ov115_022622EC

	thumb_func_start ov115_022622F8
ov115_022622F8: ; 0x022622F8
	ldr r3, _02262300 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x44
	bx r3
	; .align 2, 0
_02262300: .word sub_020D5124
	thumb_func_end ov115_022622F8

	thumb_func_start ov115_02262304
ov115_02262304: ; 0x02262304
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	mov r7, #0
	add r6, r5, #0
	add r4, #0x4c
_02262310:
	add r0, r6, #0
	add r0, #0x4c
	ldrb r0, [r0]
	add r1, r0, #0
	add r1, #0xff
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	bhi _0226232C
	add r0, r5, #0
	add r1, r4, #0
	bl ov115_02262354
	b _02262346
_0226232C:
	cmp r0, #5
	bne _0226233A
	add r0, r4, #0
	add r1, r5, #0
	bl ov115_022627B4
	b _02262346
_0226233A:
	cmp r0, #3
	bne _02262346
	add r0, r4, #0
	add r1, r5, #0
	bl ov115_022628EC
_02262346:
	add r7, r7, #1
	add r6, #0x44
	add r4, #0x44
	cmp r7, #0x60
	blt _02262310
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_02262304

	thumb_func_start ov115_02262354
ov115_02262354: ; 0x02262354
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	ldrb r7, [r4]
	add r5, r0, #0
	cmp r7, #1
	beq _02262368
	cmp r7, #2
	beq _02262368
	b _022624F2
_02262368:
	ldr r0, [r4, #0x30]
	add r1, sp, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov115_02262620
	ldrb r0, [r4]
	cmp r0, #1
	bne _0226238E
	ldr r0, _022624F8 ; =0x000019CC
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x2c
	add r2, sp, #0x14
	add r3, sp, #8
	bl ov115_02261D84
	add r6, r0, #0
	b _02262390
_0226238E:
	mov r6, #0
_02262390:
	add r0, r4, #0
	add r1, sp, #0x14
	bl ov115_0226294C
	cmp r6, #3
	beq _022623A0
	cmp r6, #1
	bne _022623A8
_022623A0:
	add r0, r4, #0
	add r1, sp, #8
	bl ov115_0226294C
_022623A8:
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	cmp r6, #1
	bne _0226243C
	add r0, r5, #0
	bl ov115_022614F8
	ldr r1, [r5, #0x18]
	add r1, r1, r0
	ldr r0, _022624FC ; =0x0001869F
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
	ldr r0, _02262500 ; =0x0000056A
	bl sub_02005748
	ldr r0, _02262504 ; =0x0000056B
	bl sub_02005748
	b _022623FA
_022623E0:
	ldr r0, _02262500 ; =0x0000056A
	bl sub_02005748
	ldr r0, _02262508 ; =0x0000056C
	bl sub_02005748
	b _022623FA
_022623EE:
	ldr r0, _02262500 ; =0x0000056A
	bl sub_02005748
	ldr r0, _0226250C ; =0x0000056D
	bl sub_02005748
_022623FA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov115_022628DC
	ldr r0, _02262510 ; =0x00001E38
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0]
	add r0, r5, r0
	bl ov115_0226158C
	ldr r0, [r5, #0x1c]
	cmp r0, #0x63
	bge _0226241A
	add r0, r0, #1
	str r0, [r5, #0x1c]
_0226241A:
	ldr r2, [r5, #0x1c]
	ldr r0, _02262514 ; =0x0000862C
	cmp r2, #3
	ldr r1, _02262518 ; =0x00001AB4
	bne _02262430
	add r0, r5, r0
	add r1, r5, r1
	bl ov115_02265700
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02262430:
	add r0, r5, r0
	add r1, r5, r1
	bl ov115_022657A8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0226243C:
	ldr r0, _022624F8 ; =0x000019CC
	add r1, r4, #0
	add r0, r5, r0
	add r1, #0x2c
	mov r6, #0
	bl ov115_02261EA8
	cmp r0, #1
	bne _02262466
	mov r6, #1
	cmp r7, #1
	bne _0226245A
	ldr r0, _0226251C ; =0x00000722
	bl sub_02005748
_0226245A:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov115_022626BC
	b _022624DE
_02262466:
	ldr r1, [r4, #0x30]
	ldr r0, _02262520 ; =0xFFFCE000
	cmp r1, r0
	bgt _022624B6
	add r0, r4, #0
	bl ov115_02262888
	cmp r0, #0
	bne _0226249C
	ldr r1, _02262520 ; =0xFFFCE000
	ldr r0, [sp, #4]
	mov r6, #1
	cmp r0, r1
	bgt _02262490
	ldr r3, [r5, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov115_022622EC
	b _022624DE
_02262490:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov115_022626BC
	b _022624DE
_0226249C:
	mov r0, #1
	ldr r1, [r4, #0x30]
	lsl r0, r0, #0xa
	cmp r1, r0
	bgt _022624DE
	ldr r3, [r5, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r6, #1
	bl ov115_022622EC
	b _022624DE
_022624B6:
	add r0, r4, #0
	bl ov115_022628B8
	cmp r0, #1
	bne _022624DE
	add r0, r4, #0
	add r0, #0x2c
	mov r6, #1
	add r1, sp, #0x14
	add r2, r0, #0
	bl sub_020BD1B0
	mov r0, #0
	add r2, r6, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	lsl r3, r2, #0xa
	bl ov115_022626E0
_022624DE:
	cmp r6, #1
	bne _022624F2
	cmp r7, #1
	bne _022624F2
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r0, _02262514 ; =0x0000862C
	add r0, r5, r0
	bl ov115_02265788
_022624F2:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022624F8: .word 0x000019CC
_022624FC: .word 0x0001869F
_02262500: .word 0x0000056A
_02262504: .word 0x0000056B
_02262508: .word 0x0000056C
_0226250C: .word 0x0000056D
_02262510: .word 0x00001E38
_02262514: .word 0x0000862C
_02262518: .word 0x00001AB4
_0226251C: .word 0x00000722
_02262520: .word 0xFFFCE000
	thumb_func_end ov115_02262354

	thumb_func_start ov115_02262524
ov115_02262524: ; 0x02262524
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0x4c
_0226252E:
	add r0, r5, #0
	add r1, r6, #0
	bl ov115_02262574
	add r4, r4, #1
	add r5, #0x44
	cmp r4, #0x60
	blt _0226252E
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_02262524

	thumb_func_start ov115_02262540
ov115_02262540: ; 0x02262540
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x4c
_0226254C:
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0226255E
	add r1, r4, #0
	add r1, #0x4c
	mov r0, #2
	strb r0, [r1]
_0226255E:
	add r0, r5, #0
	add r1, r7, #0
	bl ov115_02262574
	add r6, r6, #1
	add r4, #0x44
	add r5, #0x44
	cmp r6, #0x60
	blt _0226254C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_02262540

	thumb_func_start ov115_02262574
ov115_02262574: ; 0x02262574
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #1]
	add r4, r1, #0
	cmp r0, #0
	beq _022625A2
	ldrb r0, [r5]
	cmp r0, #3
	bne _02262592
	ldrh r0, [r5, #6]
	cmp r0, #1
	bne _02262592
	mov r0, #4
	strb r0, [r5]
	b _02262598
_02262592:
	add r0, r5, #0
	bl ov115_022622F8
_02262598:
	ldr r0, _022625A4 ; =0x00001AB4
	add r1, r5, #0
	add r0, r4, r0
	bl ov115_0226464C
_022625A2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022625A4: .word 0x00001AB4
	thumb_func_end ov115_02262574

	thumb_func_start ov115_022625A8
ov115_022625A8: ; 0x022625A8
	mov r3, #0
	mov r2, #2
_022625AC:
	add r1, r0, #0
	add r1, #0x4c
	ldrb r1, [r1]
	cmp r1, #1
	bne _022625BC
	add r1, r0, #0
	add r1, #0x4c
	strb r2, [r1]
_022625BC:
	add r3, r3, #1
	add r0, #0x44
	cmp r3, #0x60
	blt _022625AC
	bx lr
	; .align 2, 0
	thumb_func_end ov115_022625A8

	thumb_func_start ov115_022625C8
ov115_022625C8: ; 0x022625C8
	mov r2, #0
_022625CA:
	add r1, r0, #0
	add r1, #0x4c
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
	mov r0, #1
	bx lr
_022625E4:
	add r2, r2, #1
	add r0, #0x44
	cmp r2, #0x60
	blt _022625CA
	mov r0, #0
	bx lr
	thumb_func_end ov115_022625C8

	thumb_func_start ov115_022625F0
ov115_022625F0: ; 0x022625F0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	mov r2, #0x67
	lsl r2, r2, #4
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	ldr r4, [r4, #0x14]
	orr r1, r0
	sub r0, r4, r1
	bpl _0226261C
	add r0, r3, #0
_0226261C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_022625F0

	thumb_func_start ov115_02262620
ov115_02262620: ; 0x02262620
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov115_022625F0
	add r7, r0, #0
	ldr r0, [r5, #8]
	asr r6, r7, #0x1f
	asr r1, r0, #0x1f
	add r2, r7, #0
	add r3, r6, #0
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	add r2, r7, #0
	asr r1, r0, #0x1f
	add r3, r6, #0
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	ldr r2, _022626B4 ; =0xFFFFECCC
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r4, #4]
	ldrh r0, [r5, #2]
	asr r3, r2, #0xd
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _022626B8 ; =0x00000000
	ldr r0, [r4, #4]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	add r2, r7, #0
	asr r1, r0, #0x1f
	add r3, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022626B4: .word 0xFFFFECCC
_022626B8: .word 0x00000000
	thumb_func_end ov115_02262620

	thumb_func_start ov115_022626BC
ov115_022626BC: ; 0x022626BC
	push {r3, r4, lr}
	sub sp, #4
	cmp r2, #1
	bne _022626C8
	ldr r3, _022626D8 ; =0x00000D9A
	b _022626CA
_022626C8:
	ldr r3, _022626DC ; =0x00000CCD
_022626CA:
	mov r4, #1
	str r4, [sp]
	bl ov115_022626E0
	add sp, #4
	pop {r3, r4, pc}
	nop
_022626D8: .word 0x00000D9A
_022626DC: .word 0x00000CCD
	thumb_func_end ov115_022626BC

	thumb_func_start ov115_022626E0
ov115_022626E0: ; 0x022626E0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r3, #0
	cmp r2, #0
	beq _02262776
	ldr r0, [r5, #8]
	neg r0, r0
	str r0, [r5, #8]
	ldr r0, [r5, #0x10]
	neg r0, r0
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02262776
	bl sub_0201D35C
	ldr r2, [r5, #0x10]
	add r1, r0, #0
	cmp r2, #0
	bge _0226270E
	neg r0, r2
	b _02262710
_0226270E:
	add r0, r2, #0
_02262710:
	ldr r3, [r5, #8]
	cmp r3, #0
	bge _0226271A
	neg r6, r3
	b _0226271C
_0226271A:
	add r6, r3, #0
_0226271C:
	cmp r6, r0
	bgt _0226274C
	asr r0, r2, #0x1f
	lsr r3, r2, #0x14
	lsl r0, r0, #0xc
	lsl r6, r2, #0xc
	mov r2, #2
	orr r0, r3
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r6, r2
	adc r0, r3
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	mov r0, #1
	and r0, r1
	cmp r0, #1
	bne _02262748
	neg r0, r2
	str r0, [r5, #8]
	b _02262776
_02262748:
	str r2, [r5, #8]
	b _02262776
_0226274C:
	asr r0, r3, #0x1f
	lsr r2, r3, #0x14
	lsl r0, r0, #0xc
	orr r0, r2
	mov r2, #2
	lsl r6, r3, #0xc
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r6, r2
	adc r0, r3
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	mov r0, #1
	and r0, r1
	cmp r0, #1
	bne _02262774
	neg r0, r2
	str r0, [r5, #0x10]
	b _02262776
_02262774:
	str r2, [r5, #0x10]
_02262776:
	ldr r0, [r5, #0x14]
	asr r3, r4, #0x1f
	asr r1, r0, #0x1f
	add r2, r4, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x14]
	strh r3, [r5, #2]
	mov r0, #5
	strb r0, [r5]
	add r0, r5, #0
	add r1, sp, #0
	bl ov115_02262620
	add r0, r5, #0
	add r1, sp, #0
	bl ov115_0226294C
	ldrh r0, [r5, #2]
	add r0, r0, #1
	strh r0, [r5, #2]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov115_022626E0

	thumb_func_start ov115_022627B4
ov115_022627B4: ; 0x022627B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5]
	mov r6, #0
	cmp r1, #5
	bne _02262878
	add r1, sp, #4
	ldr r7, [r5, #0x30]
	bl ov115_02262620
	add r0, r5, #0
	add r1, sp, #4
	bl ov115_0226294C
	ldrh r0, [r5, #2]
	add r1, r5, #0
	add r1, #0x2c
	add r0, r0, #1
	strh r0, [r5, #2]
	ldr r0, _0226287C ; =0x000019CC
	add r0, r4, r0
	bl ov115_02261EA8
	cmp r0, #1
	bne _022627F6
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov115_022626BC
	b _0226285C
_022627F6:
	ldr r1, [r5, #0x30]
	ldr r0, _02262880 ; =0xFFFCE000
	cmp r1, r0
	bgt _02262836
	add r0, r5, #0
	bl ov115_02262888
	cmp r0, #0
	bne _0226281E
	ldr r0, _02262880 ; =0xFFFCE000
	cmp r7, r0
	bgt _02262812
	mov r6, #1
	b _02262828
_02262812:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov115_022626BC
	b _02262828
_0226281E:
	ldr r1, [r5, #0x30]
	ldr r0, _02262884 ; =0xFFF9C000
	cmp r1, r0
	bgt _02262828
	mov r6, #1
_02262828:
	mov r0, #2
	ldr r1, [r5, #0x14]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _0226285C
	mov r6, #1
	b _0226285C
_02262836:
	add r0, r5, #0
	bl ov115_022628B8
	cmp r0, #1
	bne _0226285C
	add r0, r5, #0
	add r0, #0x2c
	add r1, sp, #4
	add r2, r0, #0
	bl sub_020BD1B0
	add r0, r6, #0
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #0xa
	bl ov115_022626E0
_0226285C:
	mov r0, #1
	ldr r1, [r5, #0x14]
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _02262868
	mov r6, #1
_02262868:
	cmp r6, #1
	bne _02262878
	ldr r3, [r4, #0x1c]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov115_022622EC
_02262878:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226287C: .word 0x000019CC
_02262880: .word 0xFFFCE000
_02262884: .word 0xFFF9C000
	thumb_func_end ov115_022627B4

	thumb_func_start ov115_02262888
ov115_02262888: ; 0x02262888
	ldr r1, [r0, #0x40]
	mov r0, #0x2f
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _0226289E
	mov r0, #0xf
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0226289E
	mov r0, #1
	bx lr
_0226289E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02262888

	thumb_func_start ov115_022628A4
ov115_022628A4: ; 0x022628A4
	ldr r1, [r0, #0x40]
	mov r0, #0x1e
	lsl r0, r0, #0xe
	cmp r1, r0
	bgt _022628B2
	mov r0, #1
	bx lr
_022628B2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov115_022628A4

	thumb_func_start ov115_022628B8
ov115_022628B8: ; 0x022628B8
	mov r1, #0xf
	ldr r2, [r0, #0x40]
	lsl r1, r1, #0x10
	cmp r2, r1
	blt _022628CC
	ldr r0, [r0, #0x3c]
	cmp r0, #1
	bne _022628D6
	mov r0, #1
	bx lr
_022628CC:
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	bne _022628D6
	mov r1, #1
	str r1, [r0, #0x3c]
_022628D6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov115_022628B8

	thumb_func_start ov115_022628DC
ov115_022628DC: ; 0x022628DC
	mov r2, #3
	strb r2, [r0]
	mov r2, #8
	strh r2, [r0, #0x38]
	ldr r1, [r1, #0x1c]
	strh r1, [r0, #0x3a]
	bx lr
	; .align 2, 0
	thumb_func_end ov115_022628DC

	thumb_func_start ov115_022628EC
ov115_022628EC: ; 0x022628EC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r1, sp, #0xc
	add r5, r0, #0
	bl ov115_02262620
	ldr r0, _02262948 ; =0x000019CC
	add r1, r5, #0
	add r0, r6, r0
	add r1, #0x2c
	add r2, sp, #0xc
	add r3, sp, #0
	bl ov115_02261D84
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov115_0226294C
	cmp r4, #3
	beq _0226291C
	cmp r4, #1
	bne _02262924
_0226291C:
	add r0, r5, #0
	add r1, sp, #0
	bl ov115_0226294C
_02262924:
	ldrh r0, [r5, #2]
	add r0, r0, #1
	strh r0, [r5, #2]
	mov r0, #0x38
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, #0x38]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _02262944
	ldrh r3, [r5, #0x3a]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl ov115_022622EC
_02262944:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02262948: .word 0x000019CC
	thumb_func_end ov115_022628EC

	thumb_func_start ov115_0226294C
ov115_0226294C: ; 0x0226294C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x2c
	add r2, r0, #0
	bl sub_020BD17C
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	str r0, [sp]
	ldr r0, [r4, #0x34]
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_020BD384
	str r0, [r4, #0x40]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov115_0226294C

	thumb_func_start ov115_02262974
ov115_02262974: ; 0x02262974
	push {r3, lr}
	ldr r1, _0226298C ; =0x021BF6BC
	ldrh r1, [r1, #0x22]
	cmp r1, #0
	bne _02262984
	bl ov115_02262990
	pop {r3, pc}
_02262984:
	bl ov115_02262B70
	pop {r3, pc}
	nop
_0226298C: .word 0x021BF6BC
	thumb_func_end ov115_02262974

	thumb_func_start ov115_02262990
ov115_02262990: ; 0x02262990
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	mov r4, #0
	cmp r0, #0
	bne _022629A8
	ldr r0, [r5, #0x48]
	add sp, #0x30
	add r0, r0, #1
	str r0, [r5, #0x48]
	pop {r4, r5, r6, pc}
_022629A8:
	add r0, r5, #0
	add r0, #0x20
	add r1, sp, #4
	bl ov115_02262D3C
	cmp r0, #0
	bne _022629BA
	bl sub_02022974
_022629BA:
	add r0, r5, #0
	add r0, #0x20
	add r1, sp, #0
	bl ov115_02262D58
	cmp r0, #0
	bne _022629CC
	bl sub_02022974
_022629CC:
	add r0, r5, #0
	add r0, #0x20
	bl ov115_02262D7C
	add r6, r0, #0
	cmp r6, #2
	bge _022629DC
	b _02262B3E
_022629DC:
	ldr r0, [r5, #0x14]
	add r1, sp, #0
	strh r0, [r1, #8]
	mov r3, #0
	strh r3, [r1, #0xa]
	mov r0, #4
	ldrsh r2, [r1, r0]
	ldrsh r0, [r1, r3]
	add r1, r6, #0
	sub r0, r2, r0
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	asr r0, r0, #4
	str r0, [sp, #0xc]
	add r1, sp, #0
	mov r0, #6
	ldrsh r2, [r1, r0]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, r6, #0
	sub r0, r2, r0
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	asr r0, r0, #4
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #0xc
	bl sub_020BD384
	mov r1, #2
	lsl r1, r1, #0xe
	cmp r0, r1
	bge _02262A6C
	cmp r0, #0
	beq _02262A68
	add r0, sp, #0xc
	add r1, r0, #0
	bl sub_020BD3E4
	ldr r3, [sp, #0xc]
	asr r1, r3, #0x1f
	lsr r0, r3, #0x11
	lsl r2, r1, #0xf
	orr r2, r0
	mov r0, #2
	lsl r3, r3, #0xf
	mov r1, #0
	lsl r0, r0, #0xa
	add r3, r3, r0
	adc r2, r1
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	ldr r2, [sp, #0x14]
	str r3, [sp, #0xc]
	asr r3, r2, #0x1f
	lsr r6, r2, #0x11
	lsl r3, r3, #0xf
	orr r3, r6
	lsl r2, r2, #0xf
	add r2, r2, r0
	adc r3, r1
	lsl r0, r3, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x14]
	b _02262AB4
_02262A68:
	mov r4, #1
	b _02262AB4
_02262A6C:
	ldr r1, _02262B64 ; =0x0001E200
	cmp r0, r1
	ble _02262AB4
	add r0, sp, #0xc
	add r1, r0, #0
	bl sub_020BD3E4
	ldr r0, [sp, #0xc]
	ldr r2, _02262B64 ; =0x0001E200
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	ldr r2, _02262B64 ; =0x0001E200
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x14]
_02262AB4:
	cmp r4, #0
	bne _02262B40
	mov r0, #0x26
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	add r0, sp, #0xc
	bl sub_020BD384
	ldr r2, _02262B68 ; =0x0000099A
	asr r1, r0, #0x1f
	mov r3, #0
	str r0, [sp, #0x18]
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, sp, #0xc
	str r1, [sp, #0x18]
	add r1, r0, #0
	bl sub_020BD3E4
	add r2, sp, #0
	mov r0, #0
	mov r1, #2
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	add r2, sp, #0x1c
	bl ov115_022642F8
	mov r0, #0
	str r0, [sp, #0x20]
	add r2, sp, #0
	add r0, sp, #0x1c
	ldrh r2, [r2, #8]
	ldr r3, [r5, #0x10]
	add r1, r0, #0
	bl ov115_02264354
	add r2, sp, #0
	add r0, sp, #0xc
	ldrh r2, [r2, #8]
	ldr r3, [r5, #0x10]
	add r1, r0, #0
	bl ov115_02264354
	ldr r0, [r5, #0x1c]
	cmp r0, #5
	blt _02262B26
	mov r0, #1
	str r0, [sp, #0x2c]
	b _02262B2A
_02262B26:
	mov r0, #0
	str r0, [sp, #0x2c]
_02262B2A:
	add r0, r5, #0
	add r1, sp, #8
	mov r2, #1
	bl ov115_022621DC
	mov r0, #0x65
	lsl r0, r0, #4
	bl sub_02005748
	b _02262B40
_02262B3E:
	mov r4, #1
_02262B40:
	cmp r4, #1
	bne _02262B56
	add r3, sp, #0
	mov r1, #0
	mov r2, #2
	ldr r0, _02262B6C ; =0x0000854C
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r5, r0
	bl ov115_02264D80
_02262B56:
	add r0, r5, #0
	bl ov115_02262D90
	mov r0, #0
	str r0, [r5, #0x48]
	add sp, #0x30
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02262B64: .word 0x0001E200
_02262B68: .word 0x0000099A
_02262B6C: .word 0x0000854C
	thumb_func_end ov115_02262990

	thumb_func_start ov115_02262B70
ov115_02262B70: ; 0x02262B70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	bne _02262B98
	bl ov115_02262C60
	cmp r0, #1
	bne _02262B98
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r0, _02262C50 ; =0x00008544
	add r0, r4, r0
	bl ov115_02264BAC
	ldr r0, _02262C54 ; =0x000021A8
	add r0, r4, r0
	bl ov115_022653CC
_02262B98:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _02262C4A
	ldr r1, _02262C58 ; =0x000086EC
	ldrh r0, [r4, r1]
	cmp r0, #1
	bne _02262BCE
	add r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, sp, #0
	mov r3, sp
	strh r0, [r2]
	add r0, r1, #4
	ldrh r0, [r4, r0]
	sub r3, r3, #4
	add r4, #0x20
	strh r0, [r2, #2]
	ldrh r1, [r2]
	add r0, r4, #0
	strh r1, [r3]
	ldrh r1, [r2, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov115_02262CBC
	add sp, #4
	pop {r3, r4, pc}
_02262BCE:
	cmp r0, #2
	blo _02262C28
	add r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, sp, #0
	mov r3, sp
	strh r0, [r2]
	add r0, r1, #4
	ldrh r0, [r4, r0]
	sub r3, r3, #4
	strh r0, [r2, #2]
	ldrh r1, [r2]
	add r0, r4, #0
	add r0, #0x20
	strh r1, [r3]
	ldrh r1, [r2, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov115_02262CBC
	ldr r0, _02262C58 ; =0x000086EC
	ldrh r1, [r4, r0]
	sub r1, r1, #1
	lsl r1, r1, #3
	add r3, r4, r1
	add r1, r0, #2
	ldrh r2, [r3, r1]
	add r1, sp, #0
	add r0, r0, #4
	strh r2, [r1]
	ldrh r0, [r3, r0]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r4, #0x20
	add r0, r4, #0
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov115_02262CBC
	add sp, #4
	pop {r3, r4, pc}
_02262C28:
	ldr r0, _02262C5C ; =0x021BF6BC
	mov r3, sp
	ldrh r2, [r0, #0x1c]
	add r1, sp, #0
	sub r3, r3, #4
	strh r2, [r1]
	ldrh r0, [r0, #0x1e]
	add r4, #0x20
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r0, r4, #0
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov115_02262CBC
_02262C4A:
	add sp, #4
	pop {r3, r4, pc}
	nop
_02262C50: .word 0x00008544
_02262C54: .word 0x000021A8
_02262C58: .word 0x000086EC
_02262C5C: .word 0x021BF6BC
	thumb_func_end ov115_02262B70

	thumb_func_start ov115_02262C60
ov115_02262C60: ; 0x02262C60
	push {r3, lr}
	ldr r0, [r0, #0x48]
	cmp r0, #2
	bhs _02262C6C
	mov r0, #0
	pop {r3, pc}
_02262C6C:
	ldr r1, _02262C9C ; =0x021BF6BC
	mov r0, #0x80
	ldrh r2, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	sub r3, r0, r2
	sub r0, #0xe0
	sub r2, r0, r1
	add r1, r3, #0
	add r0, r2, #0
	mul r1, r3
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0xc
	bl sub_020BCFF0
	asr r1, r0, #0xc
	ldr r0, _02262CA0 ; =0x0000011E
	cmp r1, r0
	bgt _02262C96
	mov r0, #1
	pop {r3, pc}
_02262C96:
	mov r0, #0
	pop {r3, pc}
	nop
_02262C9C: .word 0x021BF6BC
_02262CA0: .word 0x0000011E
	thumb_func_end ov115_02262C60

	thumb_func_start ov115_02262CA4
ov115_02262CA4: ; 0x02262CA4
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	mov r0, #0
	strh r0, [r4, #0x24]
	strh r0, [r4, #0x26]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02262CA4

	thumb_func_start ov115_02262CBC
ov115_02262CBC: ; 0x02262CBC
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r1, [r4, #0x26]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1d
	sub r2, r2, r3
	mov r1, #0x1d
	ror r2, r1
	ldrh r1, [r4, #0x24]
	add r2, r3, r2
	cmp r2, r1
	bne _02262CE0
	add r1, sp, #0
	bl ov115_02262D0C
_02262CE0:
	ldrh r0, [r4, #0x26]
	lsl r0, r0, #2
	add r2, r4, r0
	add r0, sp, #0x10
	ldrh r1, [r0, #4]
	strh r1, [r2, #4]
	ldrh r0, [r0, #6]
	strh r0, [r2, #6]
	ldrh r0, [r4, #0x26]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	strh r0, [r4, #0x26]
	add sp, #4
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov115_02262CBC

	thumb_func_start ov115_02262D0C
ov115_02262D0C: ; 0x02262D0C
	ldrh r3, [r0, #0x24]
	ldrh r2, [r0, #0x26]
	cmp r2, r3
	bne _02262D18
	mov r0, #0
	bx lr
_02262D18:
	lsl r2, r3, #2
	add r3, r0, r2
	ldrh r2, [r3, #4]
	strh r2, [r1]
	ldrh r2, [r3, #6]
	strh r2, [r1, #2]
	ldrh r1, [r0, #0x24]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1d
	sub r2, r2, r3
	mov r1, #0x1d
	ror r2, r1
	add r1, r3, r2
	strh r1, [r0, #0x24]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02262D0C

	thumb_func_start ov115_02262D3C
ov115_02262D3C: ; 0x02262D3C
	ldrh r3, [r0, #0x24]
	ldrh r2, [r0, #0x26]
	cmp r2, r3
	bne _02262D48
	mov r0, #0
	bx lr
_02262D48:
	lsl r2, r3, #2
	add r2, r0, r2
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldrh r0, [r2, #6]
	strh r0, [r1, #2]
	mov r0, #1
	bx lr
	thumb_func_end ov115_02262D3C

	thumb_func_start ov115_02262D58
ov115_02262D58: ; 0x02262D58
	ldrh r3, [r0, #0x26]
	ldrh r2, [r0, #0x24]
	cmp r3, r2
	bne _02262D64
	mov r0, #0
	bx lr
_02262D64:
	sub r2, r3, #1
	bpl _02262D6A
	add r2, #8
_02262D6A:
	lsl r2, r2, #2
	add r2, r0, r2
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldrh r0, [r2, #6]
	strh r0, [r1, #2]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02262D58

	thumb_func_start ov115_02262D7C
ov115_02262D7C: ; 0x02262D7C
	ldrh r2, [r0, #0x26]
	ldrh r1, [r0, #0x24]
	cmp r1, r2
	bls _02262D8C
	mov r0, #8
	sub r0, r0, r1
	add r0, r0, r2
	bx lr
_02262D8C:
	sub r0, r2, r1
	bx lr
	thumb_func_end ov115_02262D7C

	thumb_func_start ov115_02262D90
ov115_02262D90: ; 0x02262D90
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0x20
	bl ov115_02262CA4
	ldr r0, _02262DAC ; =0x00008544
	add r0, r4, r0
	bl ov115_02264BF8
	pop {r4, pc}
	nop
_02262DAC: .word 0x00008544
	thumb_func_end ov115_02262D90

	thumb_func_start ov115_02262DB0
ov115_02262DB0: ; 0x02262DB0
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x10
	str r0, [r3, #0x48]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	bl ov115_02262F50
	pop {r3, pc}
	thumb_func_end ov115_02262DB0

	thumb_func_start ov115_02262DC4
ov115_02262DC4: ; 0x02262DC4
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r2, r3, #0
	add r0, r4, #0
	add r1, r6, #0
	add r3, sp, #0x18
	bl ov115_02262F50
	add r2, sp, #0x30
	ldrh r2, [r2, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	add r3, sp, #0
	bl ov115_02262F50
	add r2, r5, #0
	add r3, sp, #0x18
	add r2, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r3, sp, #0x18
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [sp]
	ldr r0, [sp, #0x18]
	sub r0, r1, r0
	str r0, [r5, #0x30]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x20]
	sub r0, r1, r0
	str r0, [r5, #0x38]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x28]
	sub r0, r1, r0
	str r0, [r5, #0x40]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	sub r0, r1, r0
	str r0, [r5, #0x44]
	ldr r2, [sp, #4]
	ldr r0, _02262E60 ; =0x0000FFFF
	ldr r3, [sp, #0x1c]
	add r0, r2, r0
	sub r1, r0, r3
	sub r0, r2, r3
	cmp r0, r1
	bge _02262E3E
	str r0, [r5, #0x34]
	b _02262E40
_02262E3E:
	str r1, [r5, #0x34]
_02262E40:
	ldr r2, [sp, #0xc]
	ldr r0, _02262E60 ; =0x0000FFFF
	ldr r3, [sp, #0x24]
	add r0, r2, r0
	sub r1, r0, r3
	sub r0, r2, r3
	cmp r0, r1
	bge _02262E54
	str r0, [r5, #0x3c]
	b _02262E56
_02262E54:
	str r1, [r5, #0x3c]
_02262E56:
	mov r0, #0
	str r0, [r5, #0x48]
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_02262E60: .word 0x0000FFFF
	thumb_func_end ov115_02262DC4

	thumb_func_start ov115_02262E64
ov115_02262E64: ; 0x02262E64
	push {r3, r4}
	ldr r1, [r0, #0x48]
	cmp r1, #0x10
	blt _02262E72
	mov r0, #1
	pop {r3, r4}
	bx lr
_02262E72:
	add r2, r1, #1
	str r2, [r0, #0x48]
	ldr r1, [r0, #0x30]
	ldr r3, [r0, #0x18]
	mul r2, r1
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	add r1, r3, r1
	str r1, [r0, #0]
	ldr r2, [r0, #0x34]
	ldr r1, [r0, #0x48]
	add r3, r2, #0
	mul r3, r1
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	ldr r4, [r0, #0x1c]
	asr r1, r1, #4
	add r1, r4, r1
	str r1, [r0, #4]
	ldr r2, [r0, #0x38]
	ldr r1, [r0, #0x48]
	add r3, r2, #0
	mul r3, r1
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	ldr r4, [r0, #0x20]
	asr r1, r1, #4
	add r1, r4, r1
	str r1, [r0, #8]
	ldr r2, [r0, #0x3c]
	ldr r1, [r0, #0x48]
	add r3, r2, #0
	mul r3, r1
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	ldr r4, [r0, #0x24]
	asr r1, r1, #4
	add r1, r4, r1
	str r1, [r0, #0xc]
	ldr r2, [r0, #0x40]
	ldr r1, [r0, #0x48]
	add r3, r2, #0
	mul r3, r1
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	ldr r4, [r0, #0x28]
	asr r1, r1, #4
	add r1, r4, r1
	str r1, [r0, #0x10]
	ldr r2, [r0, #0x44]
	ldr r1, [r0, #0x48]
	add r3, r2, #0
	mul r3, r1
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	ldr r4, [r0, #0x2c]
	asr r1, r1, #4
	add r1, r4, r1
	str r1, [r0, #0x14]
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov115_02262E64

	thumb_func_start ov115_02262EFC
ov115_02262EFC: ; 0x02262EFC
	ldr r3, _02262F00 ; =ov115_02262F04
	bx r3
	; .align 2, 0
_02262F00: .word ov115_02262F04
	thumb_func_end ov115_02262EFC

	thumb_func_start ov115_02262F04
ov115_02262F04: ; 0x02262F04
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r0, _02262F48 ; =0x000019CC
	lsl r1, r1, #0x10
	add r0, r5, r0
	lsr r1, r1, #0x10
	bl ov115_022620D8
	ldr r0, _02262F4C ; =0x00001AB4
	ldr r1, [r4, #8]
	add r0, r5, r0
	bl ov115_02265274
	ldr r1, [r4, #0xc]
	ldr r0, _02262F4C ; =0x00001AB4
	lsl r1, r1, #0x10
	add r0, r5, r0
	lsr r1, r1, #0x10
	bl ov115_0226527C
	ldr r0, _02262F48 ; =0x000019CC
	ldr r1, [r4, #0x10]
	add r0, r5, r0
	bl ov115_022620DC
	ldr r0, _02262F48 ; =0x000019CC
	ldr r1, [r4, #0x14]
	add r0, r5, r0
	bl ov115_02261F94
	pop {r3, r4, r5, pc}
	nop
_02262F48: .word 0x000019CC
_02262F4C: .word 0x00001AB4
	thumb_func_end ov115_02262F04

	thumb_func_start ov115_02262F50
ov115_02262F50: ; 0x02262F50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r2, #0
	add r7, r1, #0
	add r4, r3, #0
	cmp r6, r0
	blo _02262F64
	bl sub_02022974
_02262F64:
	mov r0, #0x18
	ldr r1, [r5, #4]
	mul r0, r6
	add r3, r1, r0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0xc]
	ldrb r0, [r7]
	cmp r0, #0
	beq _02262FA6
	add r1, r6, #1
	mov r0, #6
	sub r2, r0, r1
	bpl _02262F9A
	mov r2, #0
_02262F9A:
	mov r0, #0x18
	ldr r1, [r5, #4]
	mul r0, r2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	str r0, [r4, #0x14]
_02262FA6:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _02262FB2
	ldr r0, [r4, #4]
	neg r0, r0
	str r0, [r4, #4]
_02262FB2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov115_02262F50

	thumb_func_start ov115_02262FB4
ov115_02262FB4: ; 0x02262FB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x40
	add r5, r0, #0
	bl sub_020D5124
	mov r0, #0xab
	add r1, r6, #0
	bl sub_02006C24
	mov r1, #0x78
	add r7, r0, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xd0
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0x15
	mov r3, #0
	bl sub_02009A4C
	str r0, [r5, #0]
	mov r1, #0x78
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, #0xd4
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #4]
	mov r1, #0x78
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xd8
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0x16
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #8]
	mov r1, #0x78
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xdc
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0x17
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0xc]
	ldr r0, [r5, #0]
	bl sub_0200A450
	cmp r0, #0
	bne _02263048
	bl sub_02022974
_02263048:
	ldr r0, [r5, #4]
	bl sub_0200A640
	cmp r0, #0
	bne _02263056
	bl sub_02022974
_02263056:
	ldr r0, [r5, #0]
	bl sub_02009D4C
	ldr r0, [r5, #4]
	bl sub_02009D4C
	mov r1, #0x78
	add r0, r1, #0
	add r2, r1, #0
	str r1, [sp]
	sub r0, #0x79
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r2, #0xd0
	ldr r2, [r4, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xd4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xd8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xdc
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x10
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x30]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x34]
	mov r0, #0x9e
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl sub_02021B90
	mov r1, #0
	str r0, [r5, #0x34]
	bl sub_02021CAC
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov115_02262FB4

	thumb_func_start ov115_022630DC
ov115_022630DC: ; 0x022630DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	bl sub_02021BD4
	ldr r0, [r5, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #4]
	bl sub_0200A6DC
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #4]
	bl sub_02009D68
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl sub_02009D68
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl sub_02009D68
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	pop {r3, r4, r5, pc}
	thumb_func_end ov115_022630DC

	thumb_func_start ov115_02263130
ov115_02263130: ; 0x02263130
	add r2, r0, #0
	mov r1, #1
	add r2, #0x38
	strb r1, [r2]
	add r2, r0, #0
	mov r3, #0
	add r2, #0x3a
	strb r3, [r2]
	add r2, r0, #0
	add r2, #0x39
	strb r3, [r2]
	ldr r3, _0226314C ; =sub_02021CAC
	ldr r0, [r0, #0x34]
	bx r3
	; .align 2, 0
_0226314C: .word sub_02021CAC
	thumb_func_end ov115_02263130

	thumb_func_start ov115_02263150
ov115_02263150: ; 0x02263150
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r5, r1, #0
	cmp r0, #3
	bhi _02263260
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226316C: ; jump table
	.short _02263174 - _0226316C - 2 ; case 0
	.short _022631A6 - _0226316C - 2 ; case 1
	.short _02263236 - _0226316C - 2 ; case 2
	.short _02263248 - _0226316C - 2 ; case 3
_02263174:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_02021E50
	ldr r0, _02263274 ; =0x00008544
	add r0, r5, r0
	bl ov115_02264BAC
	ldr r0, _02263274 ; =0x00008544
	mov r1, #0x80
	add r0, r5, r0
	mov r2, #0xb1
	bl ov115_02264BD8
	add r0, r4, #0
	mov r1, #0
	add r0, #0x3b
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r4, #0x3a
	add r0, r0, #1
	strb r0, [r4]
	b _02263260
_022631A6:
	mov r1, #2
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0x34]
	bl sub_02021E74
	add r6, r0, #0
	cmp r6, #0xa
	beq _022631C2
	cmp r6, #0xb
	beq _022631F0
	b _02263224
_022631C2:
	add r0, r4, #0
	add r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	bne _02263224
	mov r0, #0x40
	str r0, [sp]
	mov r0, #2
	mov r1, #0x80
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x60
	add r3, r1, #0
	bl ov115_022613F8
	mov r0, #0x65
	lsl r0, r0, #4
	bl sub_02005748
	mov r0, #1
	add r4, #0x3b
	strb r0, [r4]
	b _02263224
_022631F0:
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #2
	blo _02263210
	mov r0, #3
	add r4, #0x3a
	strb r0, [r4]
	b _0226321C
_02263210:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x3a
	strb r1, [r0]
	mov r0, #0x10
	str r0, [r4, #0x3c]
_0226321C:
	ldr r0, _02263274 ; =0x00008544
	add r0, r5, r0
	bl ov115_02264BF8
_02263224:
	ldr r2, _02263278 ; =0x02265B7C
	lsl r3, r6, #1
	ldr r0, _02263274 ; =0x00008544
	ldrsh r2, [r2, r3]
	add r0, r5, r0
	mov r1, #0x80
	bl ov115_02264BD8
	b _02263260
_02263236:
	ldr r0, [r4, #0x3c]
	sub r0, r0, #1
	str r0, [r4, #0x3c]
	cmp r0, #0
	bgt _02263260
	mov r0, #0
	add r4, #0x3a
	strb r0, [r4]
	b _02263260
_02263248:
	add r0, r5, #0
	bl ov115_022625C8
	cmp r0, #0
	bne _02263260
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_02021CAC
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02263260:
	add r0, r5, #0
	bl ov115_02262304
	add r0, r5, #0
	bl ov115_02262524
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02263274: .word 0x00008544
_02263278: .word 0x02265B7C
	thumb_func_end ov115_02263150

	thumb_func_start ov115_0226327C
ov115_0226327C: ; 0x0226327C
	add r3, r0, #0
	mov r2, #0x18
	mov r1, #0
_02263282:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02263282
	ldr r1, _02263290 ; =0x0000FFFF
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
_02263290: .word 0x0000FFFF
	thumb_func_end ov115_0226327C

	thumb_func_start ov115_02263294
ov115_02263294: ; 0x02263294
	push {r3, r4}
	lsl r3, r2, #2
	str r1, [r0, r3]
	mov r3, #1
	ldr r4, [r0, #0x10]
	lsl r3, r2
	orr r3, r4
	str r3, [r0, #0x10]
	cmp r1, #0
	beq _022632C0
	ldr r4, [r0, #0x14]
	ldr r3, _022632C4 ; =0x0000FFFF
	cmp r4, r3
	beq _022632BE
	lsl r3, r4, #2
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
	; .align 2, 0
_022632C4: .word 0x0000FFFF
	thumb_func_end ov115_02263294

	thumb_func_start ov115_022632C8
ov115_022632C8: ; 0x022632C8
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r1, _022632D4 ; =0x0000FFFF
	str r1, [r0, #0x14]
	bx lr
	nop
_022632D4: .word 0x0000FFFF
	thumb_func_end ov115_022632C8

	thumb_func_start ov115_022632D8
ov115_022632D8: ; 0x022632D8
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov115_022632D8

	thumb_func_start ov115_022632DC
ov115_022632DC: ; 0x022632DC
	push {r4, r5}
	mov r4, #0
	ldr r5, [r0, #0x10]
	add r3, r4, #0
	mov r0, #1
_022632E6:
	add r2, r0, #0
	lsl r2, r3
	tst r2, r5
	beq _022632F0
	add r4, r4, #1
_022632F0:
	add r3, r3, #1
	cmp r3, #4
	blt _022632E6
	cmp r1, r4
	bhi _02263300
	mov r0, #1
	pop {r4, r5}
	bx lr
_02263300:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov115_022632DC

	thumb_func_start ov115_02263308
ov115_02263308: ; 0x02263308
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02263324 ; =0x02265C7C
	add r3, sp, #0
	mov r2, #5
_02263312:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02263312
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02263324: .word 0x02265C7C
	thumb_func_end ov115_02263308

	thumb_func_start ov115_02263328
ov115_02263328: ; 0x02263328
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _02263398 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0226339C ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _022633A0 ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r1, #0
	ldr r0, _022633A4 ; =0x00006B5A
	ldr r2, _022633A8 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl sub_020BFD58
	ldr r1, _022633AC ; =0xBFFF0000
	ldr r0, _022633B0 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_02263398: .word 0x04000008
_0226339C: .word 0xFFFFCFFD
_022633A0: .word 0x0000CFFB
_022633A4: .word 0x00006B5A
_022633A8: .word 0x00007FFF
_022633AC: .word 0xBFFF0000
_022633B0: .word 0x04000580
	thumb_func_end ov115_02263328

	thumb_func_start ov115_022633B4
ov115_022633B4: ; 0x022633B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, _022633E8 ; =ov115_02263328
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #1
	add r3, r1, #0
	bl sub_02024220
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov115_02263C24
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022633E8: .word ov115_02263328
	thumb_func_end ov115_022633B4

	thumb_func_start ov115_022633EC
ov115_022633EC: ; 0x022633EC
	push {r4, lr}
	add r4, r0, #0
	bl ov115_02263CC0
	ldr r0, [r4, #0x18]
	bl sub_020242C4
	pop {r4, pc}
	thumb_func_end ov115_022633EC

	thumb_func_start ov115_022633FC
ov115_022633FC: ; 0x022633FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0226352C ; =0x000086CC
	mov r2, #0x20
	add r0, r5, r0
	add r4, r1, #0
	bl sub_020182CC
	bl ov115_02263308
	ldr r0, _02263530 ; =0x00001AB4
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r3, r4, #0
	bl ov115_022633B4
	ldr r0, _02263530 ; =0x00001AB4
	add r1, r4, #0
	add r0, r5, r0
	bl ov115_0226376C
	ldr r0, _02263530 ; =0x00001AB4
	add r1, r4, #0
	add r0, r5, r0
	bl ov115_02263990
	ldr r0, _02263530 ; =0x00001AB4
	add r1, r4, #0
	add r0, r5, r0
	bl ov115_02263BCC
	mov r0, #0x9e
	add r1, r4, #0
	bl sub_02006C24
	add r6, r0, #0
	ldr r0, _02263530 ; =0x00001AB4
	add r1, r6, #0
	add r0, r5, r0
	add r2, r4, #0
	bl ov115_02263A74
	ldr r0, [r5, #0x14]
	ldr r1, _02263530 ; =0x00001AB4
	str r0, [sp]
	ldr r0, _0226352C ; =0x000086CC
	str r4, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	ldr r0, _02263534 ; =0x00001C54
	ldr r3, [r5, #0x10]
	add r0, r5, r0
	add r1, r5, r1
	add r2, r6, #0
	bl ov115_02264E48
	ldr r0, _02263538 ; =0x00001F74
	ldr r3, _0226352C ; =0x000086CC
	add r0, r5, r0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r5, r3
	bl ov115_02263DF8
	ldr r0, _02263530 ; =0x00001AB4
	add r1, r6, #0
	add r0, r5, r0
	add r2, r4, #0
	bl ov115_022643EC
	ldr r0, _02263530 ; =0x00001AB4
	ldr r1, _0226353C ; =0x00008544
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r1, r5, r1
	add r3, r4, #0
	bl ov115_02264B40
	ldr r0, _02263530 ; =0x00001AB4
	ldr r1, _02263540 ; =0x0000854C
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r1, r5, r1
	add r3, r4, #0
	bl ov115_02264C0C
	ldr r0, _02263530 ; =0x00001AB4
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r1, r6, #0
	add r3, r4, #0
	bl ov115_02263CD8
	ldr r0, [r5, #0x14]
	ldr r1, _02263530 ; =0x00001AB4
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	ldr r2, _02263544 ; =0x0000877C
	ldr r0, _02263548 ; =0x00001F38
	ldr r2, [r5, r2]
	ldr r3, [r5, #0x10]
	add r0, r5, r0
	add r1, r5, r1
	bl ov115_022617E8
	ldr r0, _02263530 ; =0x00001AB4
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r3, r4, #0
	bl ov115_02261AC8
	str r4, [sp]
	ldr r0, _0226354C ; =0x00001E38
	ldr r1, _02263530 ; =0x00001AB4
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r5, r0
	add r1, r5, r1
	bl ov115_02261520
	ldr r1, [r5, #0x14]
	ldr r0, _02263550 ; =0x000021A8
	lsl r1, r1, #0x18
	add r0, r5, r0
	lsr r1, r1, #0x18
	bl ov115_022652A4
	ldr r0, _02263554 ; =0x0000862C
	ldr r1, _02263530 ; =0x00001AB4
	add r0, r5, r0
	add r1, r5, r1
	add r2, r6, #0
	add r3, r4, #0
	bl ov115_02265478
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, _02263558 ; =0x00001AD0
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov114_0225CAD4
	ldr r1, _0226355C ; =0x000021A4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226352C: .word 0x000086CC
_02263530: .word 0x00001AB4
_02263534: .word 0x00001C54
_02263538: .word 0x00001F74
_0226353C: .word 0x00008544
_02263540: .word 0x0000854C
_02263544: .word 0x0000877C
_02263548: .word 0x00001F38
_0226354C: .word 0x00001E38
_02263550: .word 0x000021A8
_02263554: .word 0x0000862C
_02263558: .word 0x00001AD0
_0226355C: .word 0x000021A4
	thumb_func_end ov115_022633FC

	thumb_func_start ov115_02263560
ov115_02263560: ; 0x02263560
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02263610 ; =0x0000862C
	ldr r1, _02263614 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02265688
	ldr r0, _02263618 ; =0x00001E38
	ldr r1, _02263614 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02261574
	ldr r0, _02263614 ; =0x00001AB4
	ldr r1, [r4, #0x10]
	add r0, r4, r0
	bl ov115_02261AD8
	ldr r0, _0226361C ; =0x00001F38
	ldr r1, _02263614 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02261A04
	ldr r0, _02263614 ; =0x00001AB4
	add r0, r4, r0
	bl ov115_02263DF4
	ldr r0, _02263614 ; =0x00001AB4
	ldr r1, _02263620 ; =0x0000854C
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02264C78
	ldr r0, _02263624 ; =0x00008544
	add r0, r4, r0
	bl ov115_02264BA0
	ldr r0, _02263614 ; =0x00001AB4
	add r0, r4, r0
	bl ov115_02264564
	ldr r0, _02263628 ; =0x00001F74
	ldr r1, _0226362C ; =0x000086CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov115_02263FF4
	ldr r0, _02263630 ; =0x00001C54
	ldr r1, _02263614 ; =0x00001AB4
	ldr r2, _0226362C ; =0x000086CC
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, r2
	bl ov115_02264F68
	ldr r0, _02263614 ; =0x00001AB4
	add r0, r4, r0
	bl ov115_02263B78
	ldr r0, _02263634 ; =0x000021A4
	ldr r0, [r4, r0]
	bl ov114_0225CB38
	ldr r0, _02263614 ; =0x00001AB4
	add r0, r4, r0
	bl ov115_02263954
	ldr r0, _02263614 ; =0x00001AB4
	add r0, r4, r0
	bl ov115_02263A3C
	ldr r0, _02263614 ; =0x00001AB4
	add r0, r4, r0
	bl ov115_02263C04
	ldr r0, _02263614 ; =0x00001AB4
	add r0, r4, r0
	bl ov115_022633EC
	ldr r0, _02263638 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0226363C ; =0x04001050
	strh r1, [r0]
	pop {r4, pc}
	nop
_02263610: .word 0x0000862C
_02263614: .word 0x00001AB4
_02263618: .word 0x00001E38
_0226361C: .word 0x00001F38
_02263620: .word 0x0000854C
_02263624: .word 0x00008544
_02263628: .word 0x00001F74
_0226362C: .word 0x000086CC
_02263630: .word 0x00001C54
_02263634: .word 0x000021A4
_02263638: .word 0x04000050
_0226363C: .word 0x04001050
	thumb_func_end ov115_02263560

	thumb_func_start ov115_02263640
ov115_02263640: ; 0x02263640
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x13
	ldr r1, _0226368C ; =0x000019CC
	lsl r0, r0, #6
	ldr r2, [r5, #0]
	add r0, r4, r0
	add r1, r5, r1
	bl ov115_02264044
	mov r0, #0x13
	ldr r1, _0226368C ; =0x000019CC
	lsl r0, r0, #6
	ldr r2, [r5, #0]
	add r0, r4, r0
	add r1, r5, r1
	bl ov115_022640A4
	ldr r0, _02263690 ; =0x00006A90
	add r0, r4, r0
	bl ov115_02264BC0
	add r0, r5, #0
	add r1, r4, #0
	bl ov115_0226369C
	ldr r0, _02263694 ; =0x000006F4
	add r1, r4, #0
	add r0, r4, r0
	bl ov115_022652C0
	ldr r0, _02263698 ; =0x00006B78
	add r0, r4, r0
	bl ov115_02265820
	pop {r3, r4, r5, pc}
	nop
_0226368C: .word 0x000019CC
_02263690: .word 0x00006A90
_02263694: .word 0x000006F4
_02263698: .word 0x00006B78
	thumb_func_end ov115_02263640

	thumb_func_start ov115_0226369C
ov115_0226369C: ; 0x0226369C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0226375C ; =0x00006A98
	add r4, r1, #0
	add r0, r4, r0
	bl ov115_02264C90
	mov r0, #0xe1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov115_02261598
	bl sub_020241B4
	add r0, r4, #0
	bl ov115_02263CD0
	mov r0, #0
	ldr r2, _02263760 ; =0xFFFFF000
	add r1, r0, #0
	add r3, r0, #0
	bl sub_020AF51C
	ldr r1, _02263764 ; =0x00007FFF
	mov r0, #0
	bl sub_020AF558
	ldr r0, _02263764 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF56C
	ldr r0, _02263764 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF590
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov115_02264FA0
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #8
	str r2, [sp, #8]
	bl sub_020B275C
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r0, #0x13
	ldr r1, _02263768 ; =0x000019CC
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, r5, r1
	bl ov115_02264134
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #4
	str r2, [sp, #4]
	bl sub_020B275C
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	ldr r1, [r5, #0x10]
	add r0, r4, #0
	bl ov115_02264684
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	ldr r0, [r4, #0x1c]
	bl sub_020219F8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0226375C: .word 0x00006A98
_02263760: .word 0xFFFFF000
_02263764: .word 0x00007FFF
_02263768: .word 0x000019CC
	thumb_func_end ov115_0226369C

	thumb_func_start ov115_0226376C
ov115_0226376C: ; 0x0226376C
	push {r4, r5, r6, lr}
	sub sp, #0xc0
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02018340
	add r3, sp, #0xb0
	ldr r6, _02263938 ; =0x02265B6C
	str r0, [r5, #0]
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r6, _0226393C ; =0x02265B94
	add r3, sp, #0x94
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02019EBC
	ldr r6, _02263940 ; =0x02265BB0
	add r3, sp, #0x78
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_02019EBC
	ldr r6, _02263944 ; =0x02265BCC
	add r3, sp, #0x5c
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
	ldr r0, [r5, #0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_02019EBC
	ldr r6, _02263948 ; =0x02265BE8
	add r3, sp, #0x40
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0]
	mov r1, #5
	bl sub_02019EBC
	ldr r6, _0226394C ; =0x02265C04
	add r3, sp, #0x24
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #6
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0]
	mov r1, #6
	bl sub_02019EBC
	ldr r6, _02263950 ; =0x02265C20
	add r3, sp, #8
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #7
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0]
	mov r1, #7
	bl sub_02019EBC
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0
	mov r1, #0xa0
	add r2, r4, #0
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #0]
	add r2, r1, #0
	mov r3, #4
	bl sub_0200DAA4
	add sp, #0xc0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02263938: .word 0x02265B6C
_0226393C: .word 0x02265B94
_02263940: .word 0x02265BB0
_02263944: .word 0x02265BCC
_02263948: .word 0x02265BE8
_0226394C: .word 0x02265C04
_02263950: .word 0x02265C20
	thumb_func_end ov115_0226376C

	thumb_func_start ov115_02263954
ov115_02263954: ; 0x02263954
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov115_02263954

	thumb_func_start ov115_02263990
ov115_02263990: ; 0x02263990
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	add r6, r1, #0
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r6, [sp, #0x10]
	bl sub_0200A784
	ldr r4, _02263A34 ; =0x02265B5C
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _02263A38 ; =0x00200010
	add r0, r2, #0
	add r2, r1, #0
	str r6, [sp, #0x20]
	bl sub_0201E88C
	mov r0, #0x10
	add r1, r6, #0
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	ldr r1, _02263A38 ; =0x00200010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	add r1, r7, #0
	mov r0, #0x80
	add r1, #0x20
	add r2, r6, #0
	bl sub_020095C4
	str r0, [r7, #0x1c]
	add r0, r7, #0
	mov r2, #2
	add r0, #0x20
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r4, #0
	add r5, r7, #0
_02263A0A:
	mov r0, #0x10
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02009714
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02263A0A
	mov r0, #8
	add r1, r6, #0
	bl sub_02012744
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r7, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02263A34: .word 0x02265B5C
_02263A38: .word 0x00200010
	thumb_func_end ov115_02263990

	thumb_func_start ov115_02263A3C
ov115_02263A3C: ; 0x02263A3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020127BC
	ldr r0, [r5, #0x1c]
	bl sub_02021964
	mov r6, #0x52
	mov r4, #0
	lsl r6, r6, #2
_02263A56:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02263A56
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0200A878
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02263A3C

	thumb_func_start ov115_02263A74
ov115_02263A74: ; 0x02263A74
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r2, #0
	mov r2, #0xc8
	add r5, r0, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r2, #0x80
	ldr r0, [r5, r2]
	mov r2, #2
	mov r3, #0
	add r6, r1, #0
	bl sub_02009A4C
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0xc8
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r1, #0x84
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r1, #0xc8
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r1, #0x88
	ldr r0, [r5, r1]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0xc8
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r2, #0
	str r4, [sp, #8]
	add r1, #0x8c
	ldr r0, [r5, r1]
	add r1, r6, #0
	add r3, r2, #0
	bl sub_02009BC4
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_0200A450
	cmp r0, #0
	bne _02263B08
	bl sub_02022974
_02263B08:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_0200A640
	cmp r0, #0
	bne _02263B1A
	bl sub_02022974
_02263B1A:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009D4C
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_02009D4C
	mov r1, #0xc8
	add r0, r1, #0
	add r2, r1, #0
	str r1, [sp]
	sub r0, #0xc9
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r2, #0x80
	ldr r2, [r5, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0x84
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0x88
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0x8c
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r1, #0
	add r0, #0x90
	add r0, r5, r0
	add r2, r1, #0
	bl sub_020093B4
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02263A74

	thumb_func_start ov115_02263B78
ov115_02263B78: ; 0x02263B78
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A4E4
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0200A6DC
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x34
	ldr r1, [r4, r1]
	bl sub_02009D68
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x34
	ldr r1, [r4, r1]
	bl sub_02009D68
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, #0x34
	ldr r1, [r4, r1]
	bl sub_02009D68
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x34
	ldr r1, [r4, r1]
	bl sub_02009D68
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02263B78

	thumb_func_start ov115_02263BCC
ov115_02263BCC: ; 0x02263BCC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0200B358
	str r0, [r5, #4]
	ldr r2, _02263C00 ; =0x00000197
	mov r0, #0
	mov r1, #0x1a
	add r3, r4, #0
	bl sub_0200B144
	str r0, [r5, #8]
	mov r0, #0x80
	add r1, r4, #0
	bl sub_02023790
	str r0, [r5, #0xc]
	mov r0, #0x80
	add r1, r4, #0
	bl sub_02023790
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
	nop
_02263C00: .word 0x00000197
	thumb_func_end ov115_02263BCC

	thumb_func_start ov115_02263C04
ov115_02263C04: ; 0x02263C04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020237BC
	ldr r0, [r4, #0xc]
	bl sub_020237BC
	ldr r0, [r4, #8]
	bl sub_0200B190
	ldr r0, [r4, #4]
	bl sub_0200B3F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02263C04

	thumb_func_start ov115_02263C24
ov115_02263C24: ; 0x02263C24
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020203AC
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0
	add r2, r1, #4
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #8
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xc
	str r0, [r5, r2]
	ldr r3, _02263CB0 ; =0x0000F112
	add r2, sp, #0xc
	strh r3, [r2]
	ldr r3, _02263CB4 ; =0x02265C54
	lsl r4, r4, #3
	lsl r6, r6, #1
	add r3, r3, r4
	ldrh r3, [r6, r3]
	strh r3, [r2, #2]
	strh r0, [r2, #4]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	ldr r3, _02263CB8 ; =0x00000FA4
	str r0, [sp, #8]
	add r0, r1, #4
	ldr r1, _02263CBC ; =0x001D9000
	add r0, r5, r0
	add r2, sp, #0xc
	bl sub_020206D0
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, sp, #0x14
	bl sub_02020680
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020203D4
	mov r0, #0x32
	lsl r0, r0, #0xe
	lsr r2, r0, #0xb
	mov r1, #0xfa
	ldr r2, [r5, r2]
	lsl r1, r1, #0xe
	bl sub_020206BC
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_02263CB0: .word 0x0000F112
_02263CB4: .word 0x02265C54
_02263CB8: .word 0x00000FA4
_02263CBC: .word 0x001D9000
	thumb_func_end ov115_02263C24

	thumb_func_start ov115_02263CC0
ov115_02263CC0: ; 0x02263CC0
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r3, _02263CCC ; =sub_020203B8
	ldr r0, [r0, r1]
	bx r3
	nop
_02263CCC: .word sub_020203B8
	thumb_func_end ov115_02263CC0

	thumb_func_start ov115_02263CD0
ov115_02263CD0: ; 0x02263CD0
	ldr r3, _02263CD4 ; =sub_020203EC
	bx r3
	; .align 2, 0
_02263CD4: .word sub_020203EC
	thumb_func_end ov115_02263CD0

	thumb_func_start ov115_02263CD8
ov115_02263CD8: ; 0x02263CD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r4, r3, #0
	str r0, [sp, #8]
	add r6, r1, #0
	str r4, [sp, #0xc]
	add r7, r2, #0
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r1, #0xc
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r1, #0xe
	mov r3, #7
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r1, #0xf
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r1, #0x10
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r1, #0x11
	mov r3, #4
	bl sub_0200710C
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0xd
	mov r2, #4
	mov r3, #0
	str r4, [sp, #4]
	bl sub_02007130
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02263DF0 ; =0x02265AE4
	mov r2, #0
	ldrb r0, [r0, r7]
	mov r1, #7
	add r3, r2, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_02019E2C
	mov r0, #0x20
	str r0, [sp]
	lsl r4, r7, #1
	str r0, [sp, #4]
	add r0, r4, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019E2C
	mov r0, #0x20
	str r0, [sp]
	mov r2, #0
	add r4, r4, #1
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019E2C
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_02019448
	ldr r0, [r5, #0]
	mov r1, #5
	bl sub_02019448
	ldr r0, [r5, #0]
	mov r1, #6
	bl sub_02019448
	ldr r0, [r5, #0]
	mov r1, #7
	bl sub_02019448
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263DF0: .word 0x02265AE4
	thumb_func_end ov115_02263CD8

	thumb_func_start ov115_02263DF4
ov115_02263DF4: ; 0x02263DF4
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02263DF4

	thumb_func_start ov115_02263DF8
ov115_02263DF8: ; 0x02263DF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r2, [sp, #0x10]
	mov r2, #0x23
	str r1, [sp, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	str r0, [sp, #8]
	str r3, [sp, #0x14]
	bl sub_020D5124
	mov r1, #0x5a
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldr r6, _02263FDC ; =0x02265AFC
	mov r7, #0
	add r4, r0, r1
	add r5, r0, #0
_02263E1C:
	ldrh r2, [r6]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	bl sub_020170D8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02017258
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	mov r1, #0
	ldr r2, _02263FE0 ; =0xFFEDE000
	add r0, r5, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #6
	lsl r1, r1, #0xa
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r7, r7, #1
	add r6, r6, #2
	add r4, #0x10
	add r5, #0x78
	cmp r7, #3
	blt _02263E1C
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _02263FE4 ; =0x02265B14
	mov r1, #0x66
	str r0, [sp, #0x28]
	ldr r0, _02263FE8 ; =0x02266644
	lsl r1, r1, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	ldr r6, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, _02263FEC ; =0x022660A4
	str r0, [sp, #0x1c]
_02263E7A:
	ldr r0, [sp, #0x10]
	mov r2, #0x5a
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	lsl r2, r2, #2
	add r2, r1, r2
	str r0, [sp, #4]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldrb r1, [r1]
	ldrh r3, [r3]
	ldr r0, [sp, #0x20]
	lsl r1, r1, #4
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	bl sub_02017164
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl sub_02017240
	ldr r0, [sp, #0x24]
	mov r5, #0
	ldrb r0, [r0]
	lsl r1, r0, #4
	ldr r0, [sp, #8]
	add r1, r0, r1
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02263EC0
	add r4, #0x40
	b _02263EC2
_02263EC0:
	add r4, r5, #0
_02263EC2:
	cmp r4, #0
	bne _02263ECA
	mov r7, #1
	b _02263EDC
_02263ECA:
	mov r7, #0
	b _02263EDC
_02263ECE:
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	add r1, r5, #0
	bl sub_020AE5CC
	add r5, r5, #1
_02263EDC:
	cmp r7, #0
	bne _02263EFC
	cmp r4, #0
	beq _02263EF8
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _02263EF8
	ldrh r0, [r4, #6]
	add r1, r4, r0
	ldrh r0, [r1, #2]
	add r1, r1, r0
	lsl r0, r5, #4
	add r0, r1, r0
	b _02263EFE
_02263EF8:
	mov r0, #0
	b _02263EFE
_02263EFC:
	mov r0, #0
_02263EFE:
	cmp r0, #0
	bne _02263ECE
	ldr r5, [sp, #0x1c]
	mov r7, #0
_02263F06:
	cmp r4, #0
	beq _02263F16
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020B3AA4
	add r1, r0, #0
	b _02263F1A
_02263F16:
	mov r1, #0
	mvn r1, r1
_02263F1A:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02263F2C
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_020AE590
_02263F2C:
	add r7, r7, #1
	add r5, #0x10
	cmp r7, #0xf
	blt _02263F06
	ldr r0, [sp, #0x28]
	add r6, #0x14
	add r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0x14
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, #0xf0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #6
	blt _02263E7A
	ldr r0, _02263FF0 ; =0x02265AE0
	mov r4, #0x85
	ldrb r5, [r0]
	ldr r0, [sp, #0x10]
	lsl r4, r4, #2
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	sub r2, #0xac
	add r2, r1, r2
	lsl r1, r5, #4
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	add r0, r0, r4
	mov r3, #0x20
	bl sub_02017164
	mov r0, #0x78
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r0, r0, r1
	ldr r1, [sp, #8]
	add r1, r1, r4
	bl sub_0201727C
	add r2, r4, #0
	ldr r0, [sp, #8]
	mov r1, #4
	add r2, #0x18
	strh r1, [r0, r2]
	mov r1, #0
	add r2, r2, #2
	strh r1, [r0, r2]
	bl ov115_0226422C
	ldr r0, [sp, #8]
	add r2, r4, #0
	ldr r1, [sp, #8]
	sub r2, #0x2c
	add r0, #0x78
	add r1, r1, r2
	bl sub_0201727C
	add r1, r4, #0
	ldr r0, [sp, #8]
	sub r1, #0x2c
	add r0, r0, r1
	mov r1, #0
	bl sub_02017240
	ldr r0, [sp, #8]
	mov r1, #1
	add r0, #0x78
	bl sub_02017348
	ldr r0, [sp, #8]
	mov r2, #4
	sub r1, r4, #4
	strh r2, [r0, r1]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02263FDC: .word 0x02265AFC
_02263FE0: .word 0xFFEDE000
_02263FE4: .word 0x02265B14
_02263FE8: .word 0x02266644
_02263FEC: .word 0x022660A4
_02263FF0: .word 0x02265AE0
	thumb_func_end ov115_02263DF8

	thumb_func_start ov115_02263FF4
ov115_02263FF4: ; 0x02263FF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	add r6, r1, #0
	mov r4, #0
	add r5, r7, r0
_02264002:
	add r0, r5, #0
	bl sub_02017110
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _02264002
	mov r0, #0x66
	lsl r0, r0, #2
	mov r5, #0
	add r4, r7, r0
_02264018:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020171A0
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #6
	blt _02264018
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r7, r0
	add r1, r6, #0
	bl sub_020171A0
	mov r2, #0x23
	add r0, r7, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_02263FF4

	thumb_func_start ov115_02264044
ov115_02264044: ; 0x02264044
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov115_022640C0
	add r0, r5, #0
	add r1, r6, #0
	bl ov115_022640EC
	add r0, r5, #0
	add r1, r6, #0
	bl ov115_02264110
	cmp r4, #0
	beq _0226406C
	cmp r4, #1
	beq _02264086
	cmp r4, #2
	bne _022640A0
_0226406C:
	add r0, r5, #0
	mov r1, #1
	bl ov115_02264190
	ldrh r1, [r6, #4]
	add r0, r5, #0
	bl ov115_0226414C
	add r0, r5, #0
	mov r1, #1
	bl ov115_0226422C
	pop {r4, r5, r6, pc}
_02264086:
	add r0, r5, #0
	mov r1, #3
	bl ov115_02264190
	add r0, r5, #0
	mov r1, #0
	bl ov115_0226422C
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl ov115_02264214
_022640A0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02264044

	thumb_func_start ov115_022640A4
ov115_022640A4: ; 0x022640A4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	mov r1, #1
	add r0, r4, r0
	lsl r1, r1, #0xc
	bl sub_020171CC
	add r0, r4, #0
	bl ov115_02264270
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_022640A4

	thumb_func_start ov115_022640C0
ov115_022640C0: ; 0x022640C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
_022640C8:
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	add r1, #0xd8
	add r2, #0xdc
	add r3, #0xe0
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r0, r5, #0
	bl sub_02017350
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #3
	blt _022640C8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_022640C0

	thumb_func_start ov115_022640EC
ov115_022640EC: ; 0x022640EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r1, #2]
	mov r4, #0
	mov r7, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_022640FA:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02017388
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _022640FA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_022640EC

	thumb_func_start ov115_02264110
ov115_02264110: ; 0x02264110
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02264118:
	add r0, r6, #0
	add r0, #0xd4
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _02264118
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02264110

	thumb_func_start ov115_02264134
ov115_02264134: ; 0x02264134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0226413A:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _0226413A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02264134

	thumb_func_start ov115_0226414C
ov115_0226414C: ; 0x0226414C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02264188 ; =0x0000F222
	add r4, r1, #0
	bl sub_0201D2A4
	add r1, r0, #0
	ldr r0, _0226418C ; =0x00000E38
	sub r2, r4, r0
	mov r0, #0x5a
	mul r0, r2
	bl sub_020E2178
	mov r1, #0x2d
	lsl r1, r1, #0xe
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x5a
	bl sub_020E1F6C
	mov r1, #0x2d
	lsl r1, r1, #0xe
	sub r1, r1, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_02017240
	pop {r3, r4, r5, pc}
	nop
_02264188: .word 0x0000F222
_0226418C: .word 0x00000E38
	thumb_func_end ov115_0226414C

	thumb_func_start ov115_02264190
ov115_02264190: ; 0x02264190
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blo _0226419E
	bl sub_02022974
_0226419E:
	mov r2, #0x21
	lsl r2, r2, #4
	ldrh r1, [r5, r2]
	cmp r1, r4
	beq _0226420C
	ldr r0, _02264210 ; =0x02266644
	sub r2, #0x78
	ldrb r3, [r0, r1]
	mov r0, #0x78
	mul r0, r3
	add r3, r5, r2
	mov r2, #0x14
	mul r2, r1
	add r0, r5, r0
	add r1, r3, r2
	bl sub_02017288
	mov r0, #0x66
	lsl r0, r0, #2
	add r6, r5, r0
	mov r0, #0x14
	add r7, r4, #0
	mul r7, r0
	ldr r0, _02264210 ; =0x02266644
	ldrb r1, [r0, r4]
	mov r0, #0x78
	mul r0, r1
	str r0, [sp]
	add r0, r5, r0
	add r1, r6, r7
	bl sub_0201727C
	add r0, r6, r7
	mov r1, #0
	bl sub_02017240
	mov r0, #0x21
	lsl r0, r0, #4
	ldrh r1, [r5, r0]
	ldr r0, _02264210 ; =0x02266644
	ldrb r1, [r0, r1]
	mov r0, #0x78
	mul r0, r1
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, [sp]
	mov r1, #1
	add r0, r5, r0
	bl sub_02017348
	mov r0, #0x21
	lsl r0, r0, #4
	strh r4, [r5, r0]
_0226420C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264210: .word 0x02266644
	thumb_func_end ov115_02264190

	thumb_func_start ov115_02264214
ov115_02264214: ; 0x02264214
	mov r2, #0x66
	lsl r2, r2, #2
	add r3, r0, r2
	add r2, #0x78
	ldrh r2, [r0, r2]
	mov r0, #0x14
	mul r0, r2
	add r0, r3, r0
	ldr r3, _02264228 ; =sub_02017204
	bx r3
	; .align 2, 0
_02264228: .word sub_02017204
	thumb_func_end ov115_02264214

	thumb_func_start ov115_0226422C
ov115_0226422C: ; 0x0226422C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02264258 ; =0x00000212
	add r5, r0, #0
	ldrh r2, [r5, r1]
	cmp r2, r4
	beq _02264254
	cmp r4, #1
	bne _02264248
	sub r1, #0x7a
	add r1, r5, r1
	bl sub_0201727C
	b _02264250
_02264248:
	sub r1, #0x7a
	add r1, r5, r1
	bl sub_02017288
_02264250:
	ldr r0, _02264258 ; =0x00000212
	strh r4, [r5, r0]
_02264254:
	pop {r3, r4, r5, pc}
	nop
_02264258: .word 0x00000212
	thumb_func_end ov115_0226422C

	thumb_func_start ov115_0226425C
ov115_0226425C: ; 0x0226425C
	ldr r2, _02264264 ; =0x0000022E
	strh r1, [r0, r2]
	bx lr
	nop
_02264264: .word 0x0000022E
	thumb_func_end ov115_0226425C

	thumb_func_start ov115_02264268
ov115_02264268: ; 0x02264268
	mov r2, #0x8b
	lsl r2, r2, #2
	strh r1, [r0, r2]
	bx lr
	thumb_func_end ov115_02264268

	thumb_func_start ov115_02264270
ov115_02264270: ; 0x02264270
	push {r3, r4, r5, lr}
	ldr r2, _022642EC ; =0x0000022E
	add r3, r0, #0
	ldrh r0, [r3, r2]
	cmp r0, #1
	bne _022642A2
	sub r0, r2, #6
	mov r1, #2
	ldr r0, [r3, r0]
	lsl r1, r1, #0xc
	add r4, r0, r1
	mov r0, #0xa
	lsl r0, r0, #0xe
	cmp r4, r0
	bge _0226429A
	sub r0, r2, #6
	ldr r0, [r3, r0]
	add r1, r0, r1
	sub r0, r2, #6
	str r1, [r3, r0]
	b _022642DC
_0226429A:
	lsr r1, r1, #1
	sub r0, r2, #6
	str r1, [r3, r0]
	b _022642DC
_022642A2:
	sub r0, r2, #2
	ldrh r0, [r3, r0]
	cmp r0, #4
	bne _022642AE
	mov r0, #0
	b _022642B0
_022642AE:
	add r0, r0, #1
_022642B0:
	lsl r2, r0, #1
	ldr r0, _022642F0 ; =0x02265B0A
	mov r4, #0x8a
	ldrb r0, [r0, r2]
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	lsl r1, r0, #0xc
	cmp r5, r1
	bge _022642C6
	str r1, [r3, r4]
	b _022642DC
_022642C6:
	mov r0, #2
	lsl r0, r0, #0xc
	add r0, r5, r0
	ldr r5, _022642F4 ; =0x02265B0B
	ldrb r2, [r5, r2]
	lsl r2, r2, #0xc
	cmp r0, r2
	bge _022642DA
	str r0, [r3, r4]
	b _022642DC
_022642DA:
	str r1, [r3, r4]
_022642DC:
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r3, r1
	add r1, #0x14
	ldr r1, [r3, r1]
	bl sub_02017240
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022642EC: .word 0x0000022E
_022642F0: .word 0x02265B0A
_022642F4: .word 0x02265B0B
	thumb_func_end ov115_02264270

	thumb_func_start ov115_022642F8
ov115_022642F8: ; 0x022642F8
	push {r3, r4}
	mov r3, #0xff
	sub r0, r3, r0
	mov r3, #0x96
	lsl r3, r3, #4
	add r4, r0, #0
	mul r4, r3
	lsl r0, r3, #7
	sub r0, r4, r0
	add r4, r1, #0
	str r0, [r2, #0]
	mul r4, r3
	lsl r0, r3, #7
	sub r1, r4, r0
	ldr r0, _02264320 ; =0xFFED4000
	sub r0, r0, r1
	str r0, [r2, #8]
	pop {r3, r4}
	bx lr
	nop
_02264320: .word 0xFFED4000
	thumb_func_end ov115_022642F8

	thumb_func_start ov115_02264324
ov115_02264324: ; 0x02264324
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0x4b
	ldr r0, [r5, #0]
	lsl r1, r1, #0xc
	add r0, r0, r1
	lsr r1, r1, #7
	bl sub_020E1F6C
	mov r1, #0xff
	sub r0, r1, r0
	strh r0, [r4]
	ldr r1, [r5, #8]
	ldr r0, _02264350 ; =0xFFF1F000
	sub r0, r0, r1
	mov r1, #0x96
	lsl r1, r1, #4
	bl sub_020E1F6C
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02264350: .word 0xFFF1F000
	thumb_func_end ov115_02264324

	thumb_func_start ov115_02264354
ov115_02264354: ; 0x02264354
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r0, sp, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_020BB4C8
	ldr r0, _02264394 ; =0x02265C34
	lsl r2, r4, #3
	lsl r1, r5, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	ldr r3, _02264398 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5C8
	add r0, r6, #0
	add r1, sp, #0
	add r2, r7, #0
	bl sub_020BBB0C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02264394: .word 0x02265C34
_02264398: .word 0x020F983C
	thumb_func_end ov115_02264354

	thumb_func_start ov115_0226439C
ov115_0226439C: ; 0x0226439C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r0, sp, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_020BB4C8
	ldr r0, _022643E4 ; =0x02265C34
	lsl r2, r4, #3
	lsl r1, r5, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	ldr r3, _022643E8 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl sub_020BB5C8
	add r0, sp, #0
	add r1, r0, #0
	bl sub_020BB5FC
	add r0, r6, #0
	add r1, sp, #0
	add r2, r7, #0
	bl sub_020BBB0C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022643E4: .word 0x02265C34
_022643E8: .word 0x020F983C
	thumb_func_end ov115_0226439C

	thumb_func_start ov115_022643EC
ov115_022643EC: ; 0x022643EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, _02264544 ; =0x000006FC
	ldr r4, _02264548 ; =0x02265AE8
	str r1, [sp, #0x2c]
	add r7, r2, #0
	add r6, r5, r0
_02264400:
	ldrb r2, [r4]
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	add r3, r7, #0
	bl sub_020170D8
	ldr r0, [sp, #0x30]
	add r4, r4, #1
	add r0, r0, #1
	add r6, #0x10
	str r0, [sp, #0x30]
	cmp r0, #5
	blt _02264400
	ldr r0, _0226454C ; =0x0000074C
	ldr r1, [sp, #0x2c]
	add r0, r5, r0
	mov r2, #0x2e
	add r3, r7, #0
	bl sub_020170D8
	ldr r0, _02264550 ; =0x00000754
	mov r2, #0x1f
	ldr r0, [r5, r0]
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_020B2D8C
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r1, #0xe4
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	mov r2, #7
	mov r3, #0
	bl sub_02009A4C
	ldr r1, _02264554 ; =0x0000075C
	mov r2, #4
	str r0, [r5, r1]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	add r1, #0xe8
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	mov r3, #0
	bl sub_02009B04
	mov r1, #0x76
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r1, #0xec
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	mov r2, #6
	mov r3, #0
	bl sub_02009BC4
	ldr r1, _02264558 ; =0x00000764
	mov r2, #5
	str r0, [r5, r1]
	mov r1, #0x64
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r1, #0xf0
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x2c]
	mov r3, #0
	bl sub_02009BC4
	ldr r1, _0226455C ; =0x00000768
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_0200A450
	cmp r0, #0
	bne _022644BA
	bl sub_02022974
_022644BA:
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200A640
	cmp r0, #0
	bne _022644CC
	bl sub_02022974
_022644CC:
	ldr r0, _02264554 ; =0x0000075C
	ldr r0, [r5, r0]
	bl sub_02009D4C
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02009D4C
	mov r1, #0x64
	add r0, r1, #0
	add r2, r1, #0
	str r1, [sp]
	sub r0, #0x65
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r2, #0xe4
	ldr r2, [r5, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xe8
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xec
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xf0
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, _02264560 ; =0x0000076C
	add r2, r1, #0
	add r0, r5, r0
	bl sub_020093B4
	mov r0, #0x79
	lsl r0, r0, #4
	mov r6, #0
	add r4, r5, r0
_02264528:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov115_022646BC
	mov r0, #0x42
	lsl r0, r0, #2
	add r6, r6, #1
	add r4, r4, r0
	cmp r6, #0x60
	blt _02264528
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02264544: .word 0x000006FC
_02264548: .word 0x02265AE8
_0226454C: .word 0x0000074C
_02264550: .word 0x00000754
_02264554: .word 0x0000075C
_02264558: .word 0x00000764
_0226455C: .word 0x00000768
_02264560: .word 0x0000076C
	thumb_func_end ov115_022643EC

	thumb_func_start ov115_02264564
ov115_02264564: ; 0x02264564
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x79
	lsl r0, r0, #4
	mov r7, #0x42
	mov r6, #0
	add r4, r5, r0
	lsl r7, r7, #2
_02264574:
	add r0, r5, #0
	add r1, r4, #0
	bl ov115_02264728
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #0x60
	blt _02264574
	ldr r0, _0226460C ; =0x0000075C
	ldr r0, [r5, r0]
	bl sub_0200A4E4
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200A6DC
	mov r0, #0x52
	ldr r1, _0226460C ; =0x0000075C
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_02009D68
	mov r0, #0x53
	mov r1, #0x76
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_02009D68
	mov r0, #0x15
	ldr r1, _02264610 ; =0x00000764
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_02009D68
	mov r0, #0x55
	ldr r1, _02264614 ; =0x00000768
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_02009D68
	ldr r0, _02264618 ; =0x000006FC
	mov r6, #0
	add r4, r5, r0
_022645D6:
	add r0, r4, #0
	bl sub_02017110
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #5
	blt _022645D6
	ldr r0, _0226461C ; =0x0000074C
	add r0, r5, r0
	bl sub_02017110
	ldr r0, _02264618 ; =0x000006FC
	mov r1, #0
	add r0, r5, r0
	mov r2, #0x94
	bl sub_020D5124
	mov r0, #0x79
	lsl r0, r0, #4
	mov r2, #0x63
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020D5124
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226460C: .word 0x0000075C
_02264610: .word 0x00000764
_02264614: .word 0x00000768
_02264618: .word 0x000006FC
_0226461C: .word 0x0000074C
	thumb_func_end ov115_02264564

	thumb_func_start ov115_02264620
ov115_02264620: ; 0x02264620
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	bl ov115_02264948
	add r1, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, r6
	bne _02264642
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov115_02264740
	pop {r3, r4, r5, r6, r7, pc}
_02264642:
	add r0, r5, #0
	add r2, r4, #0
	bl ov115_0226477C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov115_02264620

	thumb_func_start ov115_0226464C
ov115_0226464C: ; 0x0226464C
	push {r4, r5, r6, lr}
	mov r3, #0x42
	ldr r4, _02264680 ; =0x00000888
	mov r2, #0
	add r6, r0, #0
	lsl r3, r3, #2
_02264658:
	ldr r5, [r6, r4]
	cmp r5, r1
	bne _02264672
	mov r1, #0x79
	lsl r1, r1, #4
	add r1, r0, r1
	mov r0, #0x42
	lsl r0, r0, #2
	mul r0, r2
	add r0, r1, r0
	bl ov115_02264924
	pop {r4, r5, r6, pc}
_02264672:
	add r2, r2, #1
	add r6, r6, r3
	cmp r2, #0x60
	blt _02264658
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02264680: .word 0x00000888
	thumb_func_end ov115_0226464C

	thumb_func_start ov115_02264684
ov115_02264684: ; 0x02264684
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x79
	lsl r0, r0, #4
	str r1, [sp]
	mov r6, #0
	add r4, r7, #0
	add r5, r7, r0
_02264694:
	ldr r0, _022646B8 ; =0x00000888
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022646A6
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl ov115_022647A0
_022646A6:
	mov r0, #0x42
	lsl r0, r0, #2
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, r0
	cmp r6, #0x60
	blt _02264694
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022646B8: .word 0x00000888
	thumb_func_end ov115_02264684

	thumb_func_start ov115_022646BC
ov115_022646BC: ; 0x022646BC
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r3, sp, #0
	mov r0, #0
	add r4, r1, #0
	add r6, r3, #0
	add r1, r0, #0
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	ldr r0, _02264720 ; =0x0000076C
	str r2, [sp, #0x2c]
	add r0, r5, r0
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #0x20
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	add r0, r3, #0
	bl sub_02021AA0
	mov r1, #0
	str r0, [r4, #0]
	bl sub_02021CAC
	ldr r1, _02264724 ; =0x0000074C
	add r0, r4, #0
	add r0, #0x7c
	add r1, r5, r1
	bl sub_02017258
	add r4, #0x7c
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_02264720: .word 0x0000076C
_02264724: .word 0x0000074C
	thumb_func_end ov115_022646BC

	thumb_func_start ov115_02264728
ov115_02264728: ; 0x02264728
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl sub_02021BD4
	mov r2, #0x42
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov115_02264728

	thumb_func_start ov115_02264740
ov115_02264740: ; 0x02264740
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r4, r2, #0
	add r0, #0xf8
	str r4, [r0, #0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xf4
	str r1, [r0, #0]
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldrh r1, [r4, #4]
	ldr r0, [r5, #0]
	add r6, r3, #0
	bl sub_02021E90
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov115_02264980
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02021CAC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02264740

	thumb_func_start ov115_0226477C
ov115_0226477C: ; 0x0226477C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xf8
	str r2, [r0, #0]
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4, #0]
	bl sub_02021CAC
	add r0, r4, #0
	add r1, r5, #0
	bl ov115_022649F0
	pop {r3, r4, r5, pc}
	thumb_func_end ov115_0226477C

	thumb_func_start ov115_022647A0
ov115_022647A0: ; 0x022647A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #0xf4
	ldr r1, [r1, #0]
	cmp r1, #1
	bne _022647C6
	add r1, r5, #0
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl ov115_02264980
	cmp r0, #0
	bne _022647C6
	add r0, r5, #0
	add r1, r4, #0
	bl ov115_022649F0
_022647C6:
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02264838
	add r0, r5, #0
	add r0, #0xf8
	ldr r1, _0226483C ; =0x000006FC
	ldr r0, [r0, #0]
	add r1, r4, r1
	bl ov115_02264A40
	add r1, r5, #0
	add r1, #0xf8
	ldr r1, [r1, #0]
	ldr r0, [r0, #8]
	ldrb r1, [r1]
	cmp r1, #5
	bne _022647F4
	ldr r1, _02264840 ; =0x00007FFF
	bl sub_020B35A4
	b _022647FA
_022647F4:
	ldr r1, _02264844 ; =0x00004A52
	bl sub_020B35A4
_022647FA:
	add r0, r5, #0
	bl ov115_02264A54
	add r0, r5, #0
	add r0, #0xf8
	ldr r3, [r0, #0]
	add r0, r5, #4
	ldr r1, [r3, #0x2c]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x34]
	bl sub_02017350
	add r0, r5, #4
	bl sub_02017294
	add r0, r5, #0
	add r0, #0x7c
	bl sub_0201734C
	cmp r0, #1
	bne _02264838
	add r0, r5, #0
	bl ov115_02264848
	add r0, r5, #0
	add r0, #0x7c
	bl sub_02017294
	add r0, r5, #0
	bl ov115_02264908
_02264838:
	pop {r3, r4, r5, pc}
	nop
_0226483C: .word 0x000006FC
_02264840: .word 0x00007FFF
_02264844: .word 0x00004A52
	thumb_func_end ov115_022647A0

	thumb_func_start ov115_02264848
ov115_02264848: ; 0x02264848
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl ov115_022628A4
	cmp r0, #1
	bne _0226485E
	ldr r4, _02264900 ; =0xFFED4000
	b _02264872
_0226485E:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl ov115_02262888
	cmp r0, #0
	bne _02264870
	ldr r4, _02264904 ; =0xFFFCD000
	b _02264872
_02264870:
	ldr r4, _02264900 ; =0xFFED4000
_02264872:
	add r0, r5, #0
	add r0, #0xf8
	ldr r3, [r0, #0]
	add r0, r5, #0
	ldr r1, [r3, #0x2c]
	ldr r3, [r3, #0x34]
	add r0, #0x7c
	add r2, r4, #0
	bl sub_02017350
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r2, #0
	ldr r0, [r0, #0x30]
	sub r4, r0, r4
	asr r6, r4, #0x1f
	lsr r1, r4, #0x14
	lsl r0, r6, #0xc
	orr r0, r1
	mov r1, #2
	lsl r3, r4, #0xc
	lsl r1, r1, #0xa
	add r3, r3, r1
	adc r0, r2
	lsl r1, r0, #0x14
	lsr r0, r3, #0xc
	orr r0, r1
	mov r1, #0x4b
	lsl r1, r1, #0xe
	bl sub_020BCFD0
	mov r7, #1
	add r3, r0, #0
	lsl r7, r7, #0xc
	add r1, r3, r7
	add r5, #0x7c
	add r0, r5, #0
	add r2, r1, #0
	add r3, r3, r7
	bl sub_0201736C
	lsr r0, r4, #0x10
	lsl r3, r6, #0x10
	orr r3, r0
	lsl r2, r4, #0x10
	mov r1, #0
	lsr r0, r7, #1
	add r0, r2, r0
	adc r3, r1
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0x4b
	lsl r1, r1, #0xe
	bl sub_020BCFD0
	asr r1, r0, #0xc
	mov r0, #0x18
	sub r0, r0, r1
	str r0, [sp]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_020AF5B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264900: .word 0xFFED4000
_02264904: .word 0xFFFCD000
	thumb_func_end ov115_02264848

	thumb_func_start ov115_02264908
ov115_02264908: ; 0x02264908
	push {r3, lr}
	sub sp, #8
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_020AF5B4
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov115_02264908

	thumb_func_start ov115_02264924
ov115_02264924: ; 0x02264924
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xf4
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	bl sub_02021CAC
	add r4, #0x7c
	add r0, r4, #0
	mov r1, #0
	bl sub_02017348
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02264924

	thumb_func_start ov115_02264948
ov115_02264948: ; 0x02264948
	push {r3, r4, r5, lr}
	mov r2, #0x42
	ldr r3, _0226497C ; =0x00000888
	mov r1, #0
	add r5, r0, #0
	lsl r2, r2, #2
_02264954:
	ldr r4, [r5, r3]
	cmp r4, #0
	bne _0226496A
	mov r2, #0x79
	lsl r2, r2, #4
	add r2, r0, r2
	mov r0, #0x42
	lsl r0, r0, #2
	mul r0, r1
	add r0, r2, r0
	pop {r3, r4, r5, pc}
_0226496A:
	add r1, r1, #1
	add r5, r5, r2
	cmp r1, #0x60
	blt _02264954
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0226497C: .word 0x00000888
	thumb_func_end ov115_02264948

	thumb_func_start ov115_02264980
ov115_02264980: ; 0x02264980
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0xf8
	ldr r6, [r0, #0]
	add r5, sp, #4
	add r6, #0x2c
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r5, #0]
	add r0, r2, #0
	add r2, r4, #0
	add r2, #0xf8
	ldr r2, [r2, #0]
	ldrh r2, [r2, #4]
	bl ov115_0226439C
	add r0, sp, #4
	add r1, sp, #0
	bl ov115_02264324
	add r1, sp, #0
	mov r2, #0
	ldrsh r0, [r1, r2]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #2
	ldrsh r1, [r1, r0]
	lsl r0, r0, #0x14
	lsl r1, r1, #0xc
	add r0, r1, r0
	str r2, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	add r1, sp, #4
	bl sub_02021C50
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	blt _022649E4
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _022649EA
_022649E4:
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_022649EA:
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov115_02264980

	thumb_func_start ov115_022649F0
ov115_022649F0: ; 0x022649F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r1, #0
	bl sub_02021CAC
	add r0, r5, #0
	mov r1, #0
	add r0, #0xf4
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xf8
	ldr r1, _02264A3C ; =0x000006FC
	ldr r0, [r0, #0]
	add r1, r4, r1
	bl ov115_02264A40
	add r1, r0, #0
	add r0, r5, #4
	bl sub_02017258
	add r0, r5, #4
	mov r1, #1
	bl sub_02017348
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02264A3A
	add r5, #0x7c
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
_02264A3A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02264A3C: .word 0x000006FC
	thumb_func_end ov115_022649F0

	thumb_func_start ov115_02264A40
ov115_02264A40: ; 0x02264A40
	ldr r2, [r0, #0x28]
	cmp r2, #1
	bne _02264A4A
	mov r0, #4
	b _02264A4C
_02264A4A:
	ldrh r0, [r0, #4]
_02264A4C:
	lsl r0, r0, #4
	add r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02264A40

	thumb_func_start ov115_02264A54
ov115_02264A54: ; 0x02264A54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _02264AF2
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl ov115_022625F0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xf8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	bl sub_020BDA20
	asr r0, r0, #4
	lsl r4, r0, #1
	ldr r1, _02264B34 ; =0x0001E200
	lsl r0, r6, #9
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #4
	asr r7, r6, #0x1f
	ldr r0, _02264B38 ; =0x020F983C
	lsl r1, r4, #1
	ldrsh r0, [r0, r1]
	add r2, r6, #0
	add r3, r7, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0xc
	lsr r0, r2, #2
	add r1, r1, r0
	lsr r0, r2, #3
	strh r1, [r5, r0]
	add r0, r4, #1
	lsl r1, r0, #1
	ldr r0, _02264B38 ; =0x020F983C
	add r2, r6, #0
	ldrsh r0, [r0, r1]
	add r3, r7, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r4, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	asr r1, r1, #0xc
	lsr r0, r2, #2
	add r1, r1, r0
	ldr r0, _02264B3C ; =0x00000102
	strh r1, [r5, r0]
	mov r1, #8
	add r0, r1, #0
	add r0, #0xfc
	strh r1, [r5, r0]
_02264AF2:
	add r0, r5, #0
	add r0, #0xfc
	ldrh r2, [r0]
	mov r0, #1
	lsl r0, r0, #8
	ldrh r1, [r5, r0]
	add r0, r0, #2
	add r2, r2, r1
	add r1, r5, #0
	add r1, #0xfc
	strh r2, [r1]
	add r1, r5, #0
	add r1, #0xfe
	ldrh r1, [r1]
	ldrh r0, [r5, r0]
	mov r2, #0
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0xfe
	strh r1, [r0]
	add r1, r5, #0
	add r1, #0xfc
	ldrh r1, [r1]
	add r0, r5, #4
	bl sub_02017388
	add r0, r5, #4
	add r5, #0xfe
	ldrh r1, [r5]
	mov r2, #2
	bl sub_02017388
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264B34: .word 0x0001E200
_02264B38: .word 0x020F983C
_02264B3C: .word 0x00000102
	thumb_func_end ov115_02264A54

	thumb_func_start ov115_02264B40
ov115_02264B40: ; 0x02264B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	add r7, sp, #0
	add r4, r2, #0
	mov r0, #0
	add r5, r1, #0
	add r2, r7, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x1c]
	str r0, [sp]
	ldr r0, _02264B9C ; =0x0000076C
	str r3, [sp, #0x2c]
	add r0, r6, r0
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #0x20
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	add r0, r7, #0
	bl sub_02021AA0
	str r0, [r5, #4]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_02021E90
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264B9C: .word 0x0000076C
	thumb_func_end ov115_02264B40

	thumb_func_start ov115_02264BA0
ov115_02264BA0: ; 0x02264BA0
	ldr r3, _02264BA8 ; =sub_02021BD4
	ldr r0, [r0, #4]
	bx r3
	nop
_02264BA8: .word sub_02021BD4
	thumb_func_end ov115_02264BA0

	thumb_func_start ov115_02264BAC
ov115_02264BAC: ; 0x02264BAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02264BAC

	thumb_func_start ov115_02264BC0
ov115_02264BC0: ; 0x02264BC0
	push {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02264BD2
	ldr r2, _02264BD4 ; =0x021BF6BC
	ldrh r1, [r2, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl ov115_02264BD8
_02264BD2:
	pop {r3, pc}
	; .align 2, 0
_02264BD4: .word 0x021BF6BC
	thumb_func_end ov115_02264BC0

	thumb_func_start ov115_02264BD8
ov115_02264BD8: ; 0x02264BD8
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	mov r1, #2
	lsl r2, r2, #0xc
	lsl r1, r1, #0x14
	add r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov115_02264BD8

	thumb_func_start ov115_02264BF8
ov115_02264BF8: ; 0x02264BF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov115_02264BF8

	thumb_func_start ov115_02264C0C
ov115_02264C0C: ; 0x02264C0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r4, #0
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r2, sp, #0
	add r0, r4, #0
	add r1, r4, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r7, #0x1c]
	str r0, [sp]
	ldr r0, _02264C74 ; =0x0000076C
	str r3, [sp, #0x2c]
	add r0, r7, r0
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #0x20
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	add r7, r4, #0
_02264C48:
	add r0, sp, #0
	bl sub_02021AA0
	str r0, [r5, #4]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02021CF8
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl sub_02021E90
	str r7, [r5, #0]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #8
	blt _02264C48
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264C74: .word 0x0000076C
	thumb_func_end ov115_02264C0C

	thumb_func_start ov115_02264C78
ov115_02264C78: ; 0x02264C78
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_02264C7E:
	ldr r0, [r5, #4]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #8
	blt _02264C7E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02264C78

	thumb_func_start ov115_02264C90
ov115_02264C90: ; 0x02264C90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r4, #0
	add r6, sp, #0x10
	add r7, sp, #0xc
_02264C9C:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _02264D70
	ldr r0, [r5, #0x14]
	cmp r0, #0x10
	bge _02264CBC
	mov r1, #0x7d
	str r1, [sp]
	str r6, [sp, #4]
	mov r1, #0x10
	mov r2, #8
	mov r3, #0xbe
	str r7, [sp, #8]
	bl ov115_02264DD8
	b _02264CEA
_02264CBC:
	cmp r0, #0x1a
	bge _02264CD6
	mov r1, #0x8c
	str r1, [sp]
	str r6, [sp, #4]
	sub r0, #0x10
	mov r1, #0xa
	mov r2, #4
	mov r3, #0xb6
	str r7, [sp, #8]
	bl ov115_02264DD8
	b _02264CEA
_02264CD6:
	mov r1, #0xa0
	str r1, [sp]
	str r6, [sp, #4]
	sub r0, #0x1a
	mov r1, #6
	mov r2, #3
	mov r3, #0xb4
	str r7, [sp, #8]
	bl ov115_02264DD8
_02264CEA:
	ldr r0, [r5, #0x14]
	add r1, r0, #1
	lsl r0, r1, #1
	str r1, [r5, #0x14]
	add r1, r1, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r1, r0, #5
	mov r0, #9
	sub r0, r0, r1
	mov r1, #0xa
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	add r1, sp, #0x14
	bl sub_02021C70
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #8]
	cmp r0, #0
	beq _02264D26
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	b _02264D2C
_02264D26:
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r0, r1, r0
_02264D2C:
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0xc]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #8
	bl sub_02021C50
	ldr r1, [r5, #8]
	ldr r0, _02264D7C ; =0xFFFE0000
	cmp r1, r0
	blt _02264D64
	mov r0, #0x12
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _02264D64
	mov r0, #0x1e
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0x10
	cmp r1, r0
	blt _02264D64
	mov r0, #0x2e
	lsl r0, r0, #0x10
	cmp r1, r0
	ble _02264D70
_02264D64:
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_02021CAC
_02264D70:
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #8
	blt _02264C9C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02264D7C: .word 0xFFFE0000
	thumb_func_end ov115_02264C90

	thumb_func_start ov115_02264D80
ov115_02264D80: ; 0x02264D80
	push {r4, r5, r6, lr}
	mov r4, #0
	add r3, r4, #0
	add r6, r0, #0
_02264D88:
	ldr r5, [r6, #0]
	cmp r5, #0
	bne _02264D96
	mov r4, #0x1c
	mul r4, r3
	add r4, r0, r4
	b _02264D9E
_02264D96:
	add r3, r3, #1
	add r6, #0x1c
	cmp r3, #8
	blt _02264D88
_02264D9E:
	cmp r4, #0
	beq _02264DD4
	cmp r1, #0x80
	bge _02264DAA
	mov r0, #1
	b _02264DAC
_02264DAA:
	mov r0, #0
_02264DAC:
	str r0, [r4, #0x18]
	lsl r0, r1, #0xc
	str r0, [r4, #8]
	mov r0, #2
	lsl r1, r2, #0xc
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [r4, #0xc]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #8
	bl sub_02021C50
	mov r1, #1
	str r1, [r4, #0]
	ldr r0, [r4, #4]
	bl sub_02021CAC
	mov r0, #0
	str r0, [r4, #0x14]
_02264DD4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02264D80

	thumb_func_start ov115_02264DD8
ov115_02264DD8: ; 0x02264DD8
	push {r4, r5, r6, lr}
	add r4, r2, #0
	ldr r2, [sp, #0x10]
	add r5, r3, #0
	sub r2, r2, r5
	mul r2, r0
	add r0, r2, #0
	bl sub_020E1F6C
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	bl sub_0201D1D4
	lsl r5, r4, #0xc
	asr r4, r5, #0x1f
	asr r1, r0, #0x1f
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x14]
	asr r1, r1, #0xc
	str r1, [r0, #0]
	add r0, r6, #0
	bl sub_0201D15C
	asr r1, r0, #0x1f
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x18]
	asr r1, r1, #0xc
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov115_02264DD8

	thumb_func_start ov115_02264E48
ov115_02264E48: ; 0x02264E48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	mov r1, #0x5a
	str r0, [sp, #0x40]
	ldr r0, [sp, #8]
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	add r6, r0, r1
	sub r2, r3, #1
	add r5, r0, #0
	lsl r0, r2, #1
	str r0, [sp, #0x14]
	ldr r1, _02264F54 ; =0x02265C5C
	lsl r0, r2, #3
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	lsl r0, r0, #1
	mov r4, #0
	str r0, [sp, #0x1c]
_02264E76:
	cmp r4, #0
	bne _02264E7E
	mov r2, #0x24
	b _02264E8C
_02264E7E:
	cmp r4, #1
	bne _02264E86
	mov r2, #0x25
	b _02264E8C
_02264E86:
	ldr r1, _02264F58 ; =0x02265B02
	ldr r0, [sp, #0x14]
	ldrh r2, [r1, r0]
_02264E8C:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	add r3, r7, #0
	bl sub_020170D8
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02017258
	mov r1, #0
	ldr r2, _02264F5C ; =0xFFF9E000
	add r0, r5, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #6
	lsl r1, r1, #0xa
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	cmp r4, #1
	bne _02264EC4
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
_02264EC4:
	cmp r4, #1
	bhi _02264ED8
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl sub_02017388
	b _02264EE8
_02264ED8:
	mov r0, #0xb4
	bl sub_0201D278
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_02017388
_02264EE8:
	add r4, r4, #1
	add r6, #0x10
	add r5, #0x78
	cmp r4, #3
	blt _02264E76
	mov r0, #0
	str r0, [sp, #0x10]
	mov r1, #0x66
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	add r5, r0, r1
	sub r1, #0x30
	add r0, r0, r1
	ldr r6, _02264F60 ; =0x02265AF0
	ldr r4, _02264F64 ; =0x02265AF6
	str r0, [sp, #0x20]
_02264F08:
	ldr r0, [sp, #0x40]
	str r7, [sp]
	str r0, [sp, #4]
	ldrh r1, [r4]
	ldrh r3, [r6]
	add r0, r5, #0
	lsl r2, r1, #4
	ldr r1, [sp, #0x20]
	add r1, r1, r2
	ldr r2, [sp, #0xc]
	bl sub_02017164
	ldrh r1, [r4]
	mov r0, #0x78
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r0, r0, r2
	bl sub_0201727C
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, r0, #1
	add r4, r4, #2
	add r5, #0x14
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _02264F08
	mov r2, #1
	mov r1, #0x75
	ldr r0, [sp, #8]
	lsl r2, r2, #0xc
	lsl r1, r1, #2
	str r2, [r0, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02264F54: .word 0x02265C5C
_02264F58: .word 0x02265B02
_02264F5C: .word 0xFFF9E000
_02264F60: .word 0x02265AF0
_02264F64: .word 0x02265AF6
	thumb_func_end ov115_02264E48

	thumb_func_start ov115_02264F68
ov115_02264F68: ; 0x02264F68
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	add r6, r2, #0
	mov r4, #0
	add r5, r7, r0
_02264F76:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020171A0
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _02264F76
	mov r0, #0x5a
	lsl r0, r0, #2
	mov r4, #0
	add r5, r7, r0
_02264F8E:
	add r0, r5, #0
	bl sub_02017110
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _02264F8E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_02264F68

	thumb_func_start ov115_02264FA0
ov115_02264FA0: ; 0x02264FA0
	push {r3, r4, r5, lr}
	mov r1, #0x66
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, #0x3c
	ldr r1, [r4, r1]
	bl sub_020171CC
	mov r0, #0x76
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _022650AC
	add r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _02264FCE
	cmp r1, #1
	beq _02265020
	cmp r1, #2
	beq _02265064
	b _0226508C
_02264FCE:
	add r1, r0, #0
	add r1, #8
	add r2, r0, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r2, r1
	mov r2, #0x33
	lsl r2, r2, #0xc
	cmp r3, r2
	bge _02264FEA
	add r2, r0, #4
	ldr r2, [r4, r2]
	add r1, r2, r1
	b _02264FEC
_02264FEA:
	mov r1, #0
_02264FEC:
	add r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0x1e
	lsl r1, r1, #4
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #0x46
	add r3, r2, r0
	ldr r0, _022650C0 ; =0x000024CD
	cmp r3, r0
	bgt _0226500C
	add r0, r1, #0
	sub r0, #0x46
	add r0, r2, r0
	str r0, [r4, r1]
	b _02265090
_0226500C:
	str r0, [r4, r1]
	mov r2, #0x18
	sub r0, r1, #6
	strh r2, [r4, r0]
	sub r0, r1, #7
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #7
	strb r2, [r4, r0]
	b _02265090
_02265020:
	add r1, r0, #0
	add r1, #8
	add r2, r0, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r2, r1
	mov r2, #0x33
	lsl r2, r2, #0xc
	cmp r3, r2
	bge _0226503C
	add r2, r0, #4
	ldr r2, [r4, r2]
	add r1, r2, r1
	b _0226503E
_0226503C:
	mov r1, #0
_0226503E:
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _022650C4 ; =0x000001DA
	ldrsh r0, [r4, r1]
	sub r0, r0, #1
	strh r0, [r4, r1]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _02265090
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r2, #0x33
	lsl r2, r2, #0xc
	add r0, r1, #2
	str r2, [r4, r0]
	b _02265090
_02265064:
	add r1, r0, #4
	mov r2, #1
	ldr r1, [r4, r1]
	lsl r2, r2, #0xc
	add r3, r1, r2
	mov r1, #0x19
	lsl r1, r1, #0xe
	cmp r3, r1
	bge _02265082
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, r2
	str r1, [r4, r0]
	b _02265090
_02265082:
	mov r1, #0x33
	lsl r1, r1, #0xc
	add r0, r0, #4
	str r1, [r4, r0]
	b _02265090
_0226508C:
	bl sub_02022974
_02265090:
	mov r1, #0x6b
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, #0x30
	ldr r1, [r4, r1]
	bl sub_02017240
	mov r1, #7
	lsl r1, r1, #6
	add r0, r4, r1
	add r1, #0x1c
	ldr r1, [r4, r1]
	bl sub_02017240
_022650AC:
	mov r5, #0
_022650AE:
	add r0, r4, #0
	bl sub_02017294
	add r5, r5, #1
	add r4, #0x78
	cmp r5, #3
	blt _022650AE
	pop {r3, r4, r5, pc}
	nop
_022650C0: .word 0x000024CD
_022650C4: .word 0x000001DA
	thumb_func_end ov115_02264FA0

	thumb_func_start ov115_022650C8
ov115_022650C8: ; 0x022650C8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_02017348
	add r0, r4, #0
	add r0, #0x78
	mov r1, #1
	bl sub_02017348
	mov r0, #0x77
	lsl r0, r0, #2
	mov r3, #0
	mov r2, #1
	str r3, [r4, r0]
	lsl r2, r2, #0xc
	add r1, r0, #4
	str r2, [r4, r1]
	sub r1, r0, #4
	mov r2, #1
	strb r2, [r4, r1]
	sub r0, r0, #3
	strb r3, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov115_022650C8

	thumb_func_start ov115_022650F8
ov115_022650F8: ; 0x022650F8
	mov r2, #0x75
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov115_022650F8

	thumb_func_start ov115_02265100
ov115_02265100: ; 0x02265100
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, r0, #0
	ldr r0, [sp, #0x68]
	ldr r6, [r2, #0]
	str r0, [sp, #0x68]
	ldr r0, [r2, #4]
	ldr r7, [r2, #8]
	str r0, [sp, #0x2c]
	asr r0, r0, #0x1f
	str r0, [sp, #0x30]
	asr r0, r6, #0x1f
	str r0, [sp, #0x34]
	add r5, r1, #0
	asr r0, r7, #0x1f
	str r0, [sp, #0x38]
	ldr r2, [r4, #0]
	str r3, [sp]
	ldr r1, [sp, #0x34]
	add r0, r6, #0
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	ldr r2, [r4, #4]
	str r0, [sp, #0x3c]
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	ldr r2, [r4, #8]
	str r1, [sp, #0x20]
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x38]
	add r0, r7, #0
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	ldr r2, [r5, #8]
	str r1, [sp, #0x18]
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	add r0, r7, #0
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	ldr r2, [r5, #0]
	str r1, [sp, #0x10]
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x34]
	add r0, r6, #0
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	ldr r2, [r5, #4]
	str r0, [sp, #0x4c]
	add r6, r1, #0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov ip, r0
	mov r7, #2
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	lsl r7, r7, #0xa
	mov r1, #0
	add r2, r0, r7
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	adc r0, r1
	str r0, [sp, #0x28]
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	ldr r0, [sp, #0x40]
	add r0, r0, r7
	adc r3, r1
	str r3, [sp, #0x20]
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	add r2, r2, r0
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x18]
	add r0, r0, r7
	adc r3, r1
	str r3, [sp, #0x18]
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	add r2, r2, r0
	ldr r0, [sp]
	sub r0, r0, r2
	ldr r2, [sp, #0x48]
	add r3, r2, r7
	ldr r2, [sp, #0x10]
	adc r2, r1
	str r2, [sp, #0x10]
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	ldr r2, [sp, #0x4c]
	add r2, r2, r7
	adc r6, r1
	lsl r6, r6, #0x14
	lsr r2, r2, #0xc
	orr r2, r6
	mov r6, ip
	add r7, r6, r7
	ldr r6, [sp, #8]
	adc r6, r1
	str r6, [sp, #8]
	lsl r1, r6, #0x14
	lsr r6, r7, #0xc
	orr r6, r1
	add r1, r2, r6
	add r1, r3, r1
	bl sub_020BCFD0
	add r6, r0, #0
	ldr r0, [r5, #0]
	asr r7, r6, #0x1f
	asr r1, r0, #0x1f
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020E1F1C
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _02265270 ; =0x00000000
	ldr r0, [r4, #0]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r1, r0, r2
	ldr r0, [sp, #0x68]
	add r2, r6, #0
	str r1, [r0, #0]
	ldr r0, [r5, #4]
	add r3, r7, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _02265270 ; =0x00000000
	ldr r0, [r4, #4]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r1, r0, r2
	ldr r0, [sp, #0x68]
	add r2, r6, #0
	str r1, [r0, #4]
	ldr r0, [r5, #8]
	add r3, r7, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	ldr r2, [r4, #8]
	mov r4, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	ldr r0, [sp, #0x68]
	add r1, r2, r1
	str r1, [r0, #0]
	ldr r0, [sp, #0x6c]
	str r6, [r0, #0]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02265270: .word 0x00000000
	thumb_func_end ov115_02265100

	thumb_func_start ov115_02265274
ov115_02265274: ; 0x02265274
	mov r2, #0x66
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov115_02265274

	thumb_func_start ov115_0226527C
ov115_0226527C: ; 0x0226527C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x19
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, sp, #0
	bl sub_02020A94
	add r0, sp, #0
	mov r1, #0x19
	strh r4, [r0]
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, sp, #0
	bl sub_020209D4
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov115_0226527C

	thumb_func_start ov115_022652A4
ov115_022652A4: ; 0x022652A4
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	mov r2, #2
	strh r2, [r0, #4]
	strb r1, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end ov115_022652A4

	thumb_func_start ov115_022652C0
ov115_022652C0: ; 0x022652C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	add r5, r1, #0
	cmp r0, #3
	bhi _022653C2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022652DA: ; jump table
	.short _022653C2 - _022652DA - 2 ; case 0
	.short _022652E2 - _022652DA - 2 ; case 1
	.short _022652FE - _022652DA - 2 ; case 2
	.short _02265386 - _022652DA - 2 ; case 3
_022652E2:
	mov r1, #4
	ldrsh r1, [r4, r1]
	ldrb r2, [r4, #6]
	add r0, r5, #0
	sub r1, r1, #1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ov115_022653F4
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
_022652FE:
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _02265336
	mov r0, #3
	strh r0, [r4]
	mov r0, #0
	strh r0, [r4, #2]
	mov r1, #4
	ldrsh r1, [r4, r1]
	ldrb r2, [r4, #6]
	add r0, r5, #0
	bl ov115_022653F4
	mov r0, #0x10
	str r0, [sp]
	mov r1, #4
	ldrsh r2, [r4, r1]
	mov r3, #1
	add r1, r3, #0
	lsl r1, r2
	ldr r0, _022653C8 ; =0x04001050
	mov r2, #8
	mov r3, #0
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02265336:
	add r0, r0, #1
	strh r0, [r4, #2]
	mov r0, #4
	ldrsh r2, [r4, r0]
	sub r5, r2, #2
	sub r6, r2, #1
	cmp r2, #0
	bge _02265348
	add r2, r2, #3
_02265348:
	cmp r5, #0
	bge _0226534E
	add r5, r5, #3
_0226534E:
	cmp r6, #0
	bge _02265354
	add r6, r6, #3
_02265354:
	mov r0, #2
	ldrsh r0, [r4, r0]
	mov r4, #1
	lsl r1, r0, #4
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r1, r0, #4
	mov r0, #0x10
	sub r3, r0, r1
	add r1, r4, #0
	lsl r1, r2
	add r2, r4, #0
	sub r0, r0, r3
	str r0, [sp]
	lsl r2, r5
	lsl r4, r6
	orr r4, r2
	mov r2, #8
	ldr r0, _022653C8 ; =0x04001050
	orr r2, r4
	bl sub_020BF55C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02265386:
	mov r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #8
	blt _0226539A
	mov r1, #0
	ldr r0, _022653C8 ; =0x04001050
	strh r1, [r4]
	strh r1, [r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0226539A:
	add r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	mov r5, #1
	lsl r1, r0, #4
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r3, r0, #3
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	mov r1, #4
	ldrsh r2, [r4, r1]
	add r1, r5, #0
	ldr r0, _022653C8 ; =0x04001050
	lsl r1, r2
	mov r2, #8
	bl sub_020BF55C
_022653C2:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022653C8: .word 0x04001050
	thumb_func_end ov115_022652C0

	thumb_func_start ov115_022653CC
ov115_022653CC: ; 0x022653CC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #7]
	add r0, r0, #1
	strb r0, [r4, #7]
	ldrb r0, [r4, #7]
	cmp r0, #0xa
	blo _022653F2
	mov r0, #1
	strh r0, [r4]
	mov r0, #4
	ldrsh r0, [r4, r0]
	mov r1, #3
	add r0, r0, #1
	bl sub_020E1F6C
	strh r1, [r4, #4]
	mov r0, #0
	strb r0, [r4, #7]
_022653F2:
	pop {r4, pc}
	thumb_func_end ov115_022653CC

	thumb_func_start ov115_022653F4
ov115_022653F4: ; 0x022653F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	lsl r0, r2, #1
	str r1, [sp, #0xc]
	add r1, r0, #2
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	lsl r0, r1, #0x18
	mov r4, #0
	lsr r7, r0, #0x18
_0226540E:
	ldr r0, [sp, #0xc]
	sub r5, r0, r4
	bpl _02265416
	add r5, r5, #3
_02265416:
	mov r1, #2
	add r0, r5, #4
	sub r1, r1, r4
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	cmp r4, #0
	bne _02265446
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r1, r5, #4
	lsl r1, r1, #0x18
	mov r2, #0
	ldr r0, [r6, #0]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019E2C
	b _02265460
_02265446:
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r5, #4
	str r0, [sp, #8]
	lsl r1, r1, #0x18
	mov r2, #0
	ldr r0, [r6, #0]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019E2C
_02265460:
	add r1, r5, #4
	lsl r1, r1, #0x18
	ldr r0, [r6, #0]
	lsr r1, r1, #0x18
	bl sub_02019448
	add r4, r4, #1
	cmp r4, #3
	blt _0226540E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov115_022653F4

	thumb_func_start ov115_02265478
ov115_02265478: ; 0x02265478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r0, #0
	add r6, r3, #0
	add r0, #0x9c
	add r4, r1, #0
	str r6, [r0, #0]
	mov r1, #0x8c
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r7, r2, #0
	str r6, [sp, #8]
	add r1, #0xbc
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_02009A4C
	str r0, [r5, #0]
	mov r1, #0x8c
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, #0xc0
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #0xb
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #4]
	mov r1, #0x8c
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xc4
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #9
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #8]
	mov r1, #0x8c
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r1, #0xc8
	ldr r0, [r4, r1]
	add r1, r7, #0
	mov r2, #8
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0xc]
	ldr r0, [r5, #0]
	bl sub_0200A450
	cmp r0, #0
	bne _02265500
	bl sub_02022974
_02265500:
	ldr r0, [r5, #4]
	bl sub_0200A640
	cmp r0, #0
	bne _0226550E
	bl sub_02022974
_0226550E:
	ldr r0, [r5, #0]
	bl sub_02009D4C
	ldr r0, [r5, #4]
	bl sub_02009D4C
	mov r1, #0x8c
	add r0, r1, #0
	add r2, r1, #0
	str r1, [sp]
	sub r0, #0x8d
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r2, #0xbc
	ldr r2, [r4, r2]
	add r3, r1, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	add r2, #0xc0
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r1, #0
	add r2, #0xc4
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r1, #0
	add r2, #0xc8
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0x10
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x5c]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #0x60]
	ldr r0, _02265684 ; =0xFFFC0000
	str r6, [sp, #0x78]
	str r0, [sp, #0x64]
	mov r0, #3
	lsl r0, r0, #0x10
	str r0, [sp, #0x68]
	mov r0, #1
	str r0, [sp, #0x70]
	str r0, [sp, #0x74]
	add r0, sp, #0x5c
	bl sub_02021B90
	mov r1, #0
	str r0, [r5, #0x34]
	bl sub_02021CAC
	mov r0, #0x10
	add r1, r6, #0
	bl sub_02023790
	str r0, [r5, #0x5c]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r1, r5, #0
	ldr r0, [r4, #0]
	add r1, #0x38
	mov r2, #3
	mov r3, #2
	bl sub_0201A870
	add r0, r5, #0
	add r0, #0x38
	add r1, r6, #0
	bl sub_02012B20
	mov r1, #1
	str r0, [r5, #0x4c]
	bl sub_02012B58
	mov r1, #1
	add r3, r5, #0
	add r2, r1, #0
	add r3, #0x50
	bl sub_0201ED94
	cmp r0, #1
	beq _022655CA
	bl sub_02022974
_022655CA:
	mov r1, #0x96
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, #0xb6
	ldr r0, [r4, r1]
	mov r1, #0xe
	mov r2, #6
	mov r3, #0
	bl sub_020098B8
	str r0, [r5, #0x60]
	bl sub_0200A640
	cmp r0, #0
	bne _022655F2
	bl sub_02022974
_022655F2:
	ldr r0, [r5, #0x60]
	bl sub_02009D4C
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r0, #0x38
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x60]
	bl sub_0200A72C
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x3c]
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x40]
	mov r0, #6
	mvn r0, r0
	str r0, [sp, #0x44]
	add r0, r0, #2
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	str r6, [sp, #0x58]
	ldr r1, [r5, #0x4c]
	add r0, sp, #0x2c
	bl sub_02012B60
	mov r1, #0
	str r0, [r5, #0x48]
	bl sub_020129D0
	add r0, r5, #0
	add r0, #0x38
	bl sub_0201A8FC
	mov r2, #8
	add r0, r5, #0
	mov r3, #9
	str r2, [sp]
	ldr r1, _02265684 ; =0xFFFC0000
	add r0, #0x64
	lsl r2, r2, #0xe
	lsl r3, r3, #0xe
	bl ov115_02261304
	mov r0, #4
	mov r1, #3
	lsl r1, r1, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x7c
	add r2, r1, #0
	lsr r3, r1, #2
	bl ov115_02261304
	add r0, r5, #0
	mov r1, #0
	add r0, #0x94
	strh r1, [r0]
	mov r0, #4
	add r5, #0x96
	strh r0, [r5]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02265684: .word 0xFFFC0000
	thumb_func_end ov115_02265478

	thumb_func_start ov115_02265688
ov115_02265688: ; 0x02265688
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	add r4, r1, #0
	bl sub_02012BD8
	ldr r0, [r5, #0x60]
	bl sub_0200A6DC
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x60]
	bl sub_02009D68
	add r0, r5, #0
	add r0, #0x50
	bl sub_0201EE28
	ldr r0, [r5, #0x4c]
	bl sub_02012B48
	ldr r0, [r5, #0x5c]
	bl sub_020237BC
	ldr r0, [r5, #0x34]
	bl sub_02021BD4
	ldr r0, [r5, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #4]
	bl sub_0200A6DC
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #4]
	bl sub_02009D68
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl sub_02009D68
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov115_02265688

	thumb_func_start ov115_02265700
ov115_02265700: ; 0x02265700
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	str r0, [sp]
	add r1, r2, #0
	mov r2, #2
	ldr r0, [r5, #0x5c]
	add r3, r2, #0
	bl sub_020238A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r1, r5, #0
	ldr r0, [r4, #0]
	add r1, #0x38
	mov r2, #3
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02265784 ; =0x000F0E00
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x5c]
	add r0, #0x38
	bl sub_0201D78C
	add r3, r5, #0
	add r3, #0x9c
	add r2, r5, #0
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r3, [r3, #0]
	add r2, #0x38
	bl sub_02012BE0
	add r0, r5, #0
	add r0, #0x38
	bl sub_0201A8FC
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_02021CAC
	add r0, r5, #0
	mov r1, #1
	add r0, #0x98
	strh r1, [r0]
	mov r0, #0
	add r5, #0x9a
	strh r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02265784: .word 0x000F0E00
	thumb_func_end ov115_02265700

	thumb_func_start ov115_02265788
ov115_02265788: ; 0x02265788
	add r1, r0, #0
	add r1, #0x98
	ldrh r1, [r1]
	cmp r1, #3
	beq _022657A4
	cmp r1, #2
	bne _0226579E
	add r1, r0, #0
	mov r2, #0xc
	add r1, #0x9a
	strh r2, [r1]
_0226579E:
	mov r1, #3
	add r0, #0x98
	strh r1, [r0]
_022657A4:
	bx lr
	; .align 2, 0
	thumb_func_end ov115_02265788

	thumb_func_start ov115_022657A8
ov115_022657A8: ; 0x022657A8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x98
	ldrh r0, [r0]
	add r4, r1, #0
	cmp r0, #3
	beq _02265816
	mov r0, #1
	str r0, [sp]
	add r1, r2, #0
	mov r2, #2
	ldr r0, [r5, #0x5c]
	add r3, r2, #0
	bl sub_020238A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r1, r5, #0
	ldr r0, [r4, #0]
	add r1, #0x38
	mov r2, #3
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0226581C ; =0x000F0E00
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x5c]
	add r0, #0x38
	bl sub_0201D78C
	add r3, r5, #0
	add r3, #0x9c
	add r2, r5, #0
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r3, [r3, #0]
	add r2, #0x38
	bl sub_02012BE0
	add r0, r5, #0
	add r0, #0x38
	bl sub_0201A8FC
	mov r0, #0
	add r5, #0x96
	strh r0, [r5]
_02265816:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0226581C: .word 0x000F0E00
	thumb_func_end ov115_022657A8

	thumb_func_start ov115_02265820
ov115_02265820: ; 0x02265820
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x98
	ldrh r0, [r0]
	cmp r0, #3
	bhi _02265898
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226583A: ; jump table
	.short _02265898 - _0226583A - 2 ; case 0
	.short _02265842 - _0226583A - 2 ; case 1
	.short _02265898 - _0226583A - 2 ; case 2
	.short _0226585E - _0226583A - 2 ; case 3
_02265842:
	mov r0, #0x94
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bge _02265854
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	strh r1, [r0]
	b _02265898
_02265854:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x98
	strh r1, [r0]
	b _02265898
_0226585E:
	mov r0, #0x9a
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02265870
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x9a
	strh r1, [r0]
	b _02265898
_02265870:
	mov r0, #0x94
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02265882
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	strh r1, [r0]
	b _02265898
_02265882:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	strh r1, [r0]
	ldr r0, [r4, #0x48]
	bl sub_020129D0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_02021CAC
_02265898:
	mov r1, #0x96
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bge _022658B8
	add r2, r0, #1
	add r0, r4, #0
	add r0, #0x96
	strh r2, [r0]
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x7c
	bl ov115_02261364
_022658B8:
	mov r0, #0x94
	ldrsh r0, [r4, r0]
	str r0, [r4, #0x74]
	add r0, r4, #0
	add r0, #0x64
	bl ov115_02261364
	ldr r0, [r4, #0x64]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r4, #0x7c]
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	bl sub_02021C50
	ldr r0, [r4, #0x48]
	bl sub_02012938
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov115_02265820

	thumb_func_start ov115_022658E0
ov115_022658E0: ; 0x022658E0
	mov r2, #0
	strh r2, [r0]
	mov r1, #1
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	ldr r3, _022658F0 ; =sub_02005748
	ldr r0, _022658F4 ; =0x0000056E
	bx r3
	; .align 2, 0
_022658F0: .word sub_02005748
_022658F4: .word 0x0000056E
	thumb_func_end ov115_022658E0

	thumb_func_start ov115_022658F8
ov115_022658F8: ; 0x022658F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r0, [r4, #2]
	add r5, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _02265A00
	ldrh r0, [r4]
	cmp r0, #5
	bhi _02265A00
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226591A: ; jump table
	.short _02265926 - _0226591A - 2 ; case 0
	.short _02265986 - _0226591A - 2 ; case 1
	.short _022659A0 - _0226591A - 2 ; case 2
	.short _022659CC - _0226591A - 2 ; case 3
	.short _022659E6 - _0226591A - 2 ; case 4
	.short _022659FA - _0226591A - 2 ; case 5
_02265926:
	mov r0, #3
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #3]
	ldrsb r1, [r4, r0]
	mov r0, #0x19
	lsl r0, r0, #0xc
	mul r0, r1
	mov r1, #0x3a
	bl sub_020E1F6C
	mov r1, #1
	add r2, r0, #0
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r1, r2, r1
	bl ov115_022650F8
	mov r0, #3
	ldrsb r1, [r4, r0]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x3a
	bl sub_020E1F6C
	add r2, r0, #0
	mov r0, #7
	add r1, r0, #0
	add r1, #0xf9
	add r1, r2, r1
	bl sub_02004FA8
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0xc
	bne _02265974
	ldr r0, _02265A04 ; =0x0000056F
	bl sub_02005748
_02265974:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0x3a
	blt _02265A00
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02265986:
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022659A0:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _02265A00
	add r0, r5, #0
	bl ov115_022650C8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl ov115_022650F8
	add r0, r6, #0
	mov r1, #1
	bl ov115_0226425C
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022659CC:
	mov r0, #1
	str r0, [sp]
	mov r0, #0xe
	mov r1, #0
	mov r2, #0x10
	mov r3, #0x3f
	bl sub_0200AAE0
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022659E6:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _02265A00
	ldrh r0, [r4]
	add sp, #4
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022659FA:
	mov r0, #0
	strb r0, [r4, #2]
	strh r0, [r4]
_02265A00:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02265A04: .word 0x0000056F
	thumb_func_end ov115_022658F8

	thumb_func_start ov115_02265A08
ov115_02265A08: ; 0x02265A08
	mov r0, #7
	add r1, r0, #0
	ldr r3, _02265A14 ; =sub_02004FA8
	add r1, #0xf9
	bx r3
	nop
_02265A14: .word sub_02004FA8
	thumb_func_end ov115_02265A08

	.rodata


	.global Unk_ov115_02265AE0
Unk_ov115_02265AE0: ; 0x02265AE0
	.incbin "incbin/overlay115_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov115_02265AE4
Unk_ov115_02265AE4: ; 0x02265AE4
	.incbin "incbin/overlay115_rodata.bin", 0x4, 0x8 - 0x4

	.global Unk_ov115_02265AE8
Unk_ov115_02265AE8: ; 0x02265AE8
	.incbin "incbin/overlay115_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov115_02265AF0
Unk_ov115_02265AF0: ; 0x02265AF0
	.incbin "incbin/overlay115_rodata.bin", 0x10, 0x16 - 0x10

	.global Unk_ov115_02265AF6
Unk_ov115_02265AF6: ; 0x02265AF6
	.incbin "incbin/overlay115_rodata.bin", 0x16, 0x1C - 0x16

	.global Unk_ov115_02265AFC
Unk_ov115_02265AFC: ; 0x02265AFC
	.incbin "incbin/overlay115_rodata.bin", 0x1C, 0x22 - 0x1C

	.global Unk_ov115_02265B02
Unk_ov115_02265B02: ; 0x02265B02
	.incbin "incbin/overlay115_rodata.bin", 0x22, 0x2A - 0x22

	.global Unk_ov115_02265B0A
Unk_ov115_02265B0A: ; 0x02265B0A
	.incbin "incbin/overlay115_rodata.bin", 0x2A, 0x34 - 0x2A

	.global Unk_ov115_02265B14
Unk_ov115_02265B14: ; 0x02265B14
	.incbin "incbin/overlay115_rodata.bin", 0x34, 0x40 - 0x34

	.global Unk_ov115_02265B20
Unk_ov115_02265B20: ; 0x02265B20
	.incbin "incbin/overlay115_rodata.bin", 0x40, 0x4C - 0x40

	.global Unk_ov115_02265B2C
Unk_ov115_02265B2C: ; 0x02265B2C
	.incbin "incbin/overlay115_rodata.bin", 0x4C, 0x58 - 0x4C

	.global Unk_ov115_02265B38
Unk_ov115_02265B38: ; 0x02265B38
	.incbin "incbin/overlay115_rodata.bin", 0x58, 0x64 - 0x58

	.global Unk_ov115_02265B44
Unk_ov115_02265B44: ; 0x02265B44
	.incbin "incbin/overlay115_rodata.bin", 0x64, 0x70 - 0x64

	.global Unk_ov115_02265B50
Unk_ov115_02265B50: ; 0x02265B50
	.incbin "incbin/overlay115_rodata.bin", 0x70, 0x7C - 0x70

	.global Unk_ov115_02265B5C
Unk_ov115_02265B5C: ; 0x02265B5C
	.incbin "incbin/overlay115_rodata.bin", 0x7C, 0x8C - 0x7C

	.global Unk_ov115_02265B6C
Unk_ov115_02265B6C: ; 0x02265B6C
	.incbin "incbin/overlay115_rodata.bin", 0x8C, 0x9C - 0x8C

	.global Unk_ov115_02265B7C
Unk_ov115_02265B7C: ; 0x02265B7C
	.incbin "incbin/overlay115_rodata.bin", 0x9C, 0xB4 - 0x9C

	.global Unk_ov115_02265B94
Unk_ov115_02265B94: ; 0x02265B94
	.incbin "incbin/overlay115_rodata.bin", 0xB4, 0xD0 - 0xB4

	.global Unk_ov115_02265BB0
Unk_ov115_02265BB0: ; 0x02265BB0
	.incbin "incbin/overlay115_rodata.bin", 0xD0, 0xEC - 0xD0

	.global Unk_ov115_02265BCC
Unk_ov115_02265BCC: ; 0x02265BCC
	.incbin "incbin/overlay115_rodata.bin", 0xEC, 0x108 - 0xEC

	.global Unk_ov115_02265BE8
Unk_ov115_02265BE8: ; 0x02265BE8
	.incbin "incbin/overlay115_rodata.bin", 0x108, 0x124 - 0x108

	.global Unk_ov115_02265C04
Unk_ov115_02265C04: ; 0x02265C04
	.incbin "incbin/overlay115_rodata.bin", 0x124, 0x140 - 0x124

	.global Unk_ov115_02265C20
Unk_ov115_02265C20: ; 0x02265C20
	.incbin "incbin/overlay115_rodata.bin", 0x140, 0x15C - 0x140

	.global Unk_ov115_02265C3C
Unk_ov115_02265C3C: ; 0x02265C3C
	.incbin "incbin/overlay115_rodata.bin", 0x15C, 0x17C - 0x15C

	.global Unk_ov115_02265C5C
Unk_ov115_02265C5C: ; 0x02265C5C
	.incbin "incbin/overlay115_rodata.bin", 0x17C, 0x19C - 0x17C

	.global Unk_ov115_02265C7C
Unk_ov115_02265C7C: ; 0x02265C7C
	.incbin "incbin/overlay115_rodata.bin", 0x19C, 0x1C4 - 0x19C

	.global Unk_ov115_02265CA4
Unk_ov115_02265CA4: ; 0x02265CA4
	.incbin "incbin/overlay115_rodata.bin", 0x1C4, 0x3C4 - 0x1C4

	.global Unk_ov115_02265EA4
Unk_ov115_02265EA4: ; 0x02265EA4
	.incbin "incbin/overlay115_rodata.bin", 0x3C4, 0x5C4 - 0x3C4

	.global Unk_ov115_022660A4
Unk_ov115_022660A4: ; 0x022660A4
	.incbin "incbin/overlay115_rodata.bin", 0x5C4, 0xB64 - 0x5C4

	.global Unk_ov115_02266644
Unk_ov115_02266644: ; 0x02266644
	.incbin "incbin/overlay115_rodata.bin", 0xB64, 0x6


	.bss


	.global Unk_ov115_022666C0
Unk_ov115_022666C0: ; 0x022666C0
	.space 0x40

