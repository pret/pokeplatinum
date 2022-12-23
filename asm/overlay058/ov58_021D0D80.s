	.include "macros/function.inc"
	.include "overlay058/ov58_021D0D80.inc"

	

	.text


	thumb_func_start ov58_021D0D80
ov58_021D0D80: ; 0x021D0D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r6, r0, #0
	cmp r1, #0
	beq _021D0D96
	cmp r1, #1
	bne _021D0D94
	b _021D0ED6
_021D0D94:
	b _021D0EE4
_021D0D96:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0EEC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0EF0 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #3
	mov r1, #0x27
	lsl r2, r2, #6
	bl sub_02017FC8
	ldr r1, _021D0EF4 ; =0x0000940C
	add r0, r6, #0
	mov r2, #0x27
	bl sub_0200681C
	ldr r2, _021D0EF4 ; =0x0000940C
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x27
	bl sub_02018340
	str r0, [r4, #0]
	mov r0, #0x27
	bl sub_0200B358
	str r0, [r4, #0xc]
	ldr r2, _021D0EF8 ; =0x000001A9
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x27
	bl sub_0200B144
	str r0, [r4, #0x10]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl ov58_021D1184
	ldr r0, [r4, #0]
	bl ov58_021D11A4
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x11
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add r0, r6, #0
	bl sub_02006840
	str r0, [r4, #8]
	mov r0, #0x4e
	mov r1, #0x27
	bl sub_02006C24
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov58_021D142C
	bl sub_0201E3D8
	mov r0, #2
	bl sub_0201E450
	ldr r0, _021D0EFC ; =ov58_021D115C
	ldr r1, [r4, #0]
	bl sub_02017798
	add r0, r4, #0
	bl ov58_021D12C4
	bl ov58_021D1524
	add r0, r4, #0
	add r1, r7, #0
	bl ov58_021D1554
	add r0, r4, #0
	bl ov58_021D16D8
	add r0, r4, #0
	add r1, r6, #0
	bl ov58_021D18AC
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl sub_02004550
	ldr r2, _021D0F00 ; =0x04000304
	ldr r0, _021D0F04 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl sub_02095E98
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	bl sub_0203608C
	cmp r0, #0
	bne _021D0EB0
	mov r0, #3
	bl sub_02037B58
_021D0EB0:
	bl sub_02039734
	bl sub_0203608C
	cmp r0, #0
	bne _021D0EC8
	mov r0, #1
	bl sub_0205BEA8
	mov r0, #1
	bl sub_02033ED4
_021D0EC8:
	add r0, r7, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D0EE4
_021D0ED6:
	bl sub_0200682C
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D0EE4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D0EEC: .word 0xFFFFE0FF
_021D0EF0: .word 0x04001000
_021D0EF4: .word 0x0000940C
_021D0EF8: .word 0x000001A9
_021D0EFC: .word ov58_021D115C
_021D0F00: .word 0x04000304
_021D0F04: .word 0xFFFF7FFF
	thumb_func_end ov58_021D0D80

	thumb_func_start ov58_021D0F08
ov58_021D0F08: ; 0x021D0F08
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D0F2E
	ldr r0, _021D1004 ; =0x000093B4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D0F2E
	bl sub_020318EC
	ldr r1, _021D1004 ; =0x000093B4
	ldr r2, [r4, r1]
	and r0, r2
	str r0, [r4, r1]
_021D0F2E:
	mov r0, #3
	ldr r1, [r5, #0]
	lsl r0, r0, #8
	str r1, [r4, r0]
	ldr r1, [r5, #0]
	add r0, r4, #0
	bl ov58_021D2CB8
	ldr r1, [r5, #0]
	cmp r1, #3
	bhi _021D0FF8
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D0F50: ; jump table
	.short _021D0F58 - _021D0F50 - 2 ; case 0
	.short _021D0F86 - _021D0F50 - 2 ; case 1
	.short _021D0FCC - _021D0F50 - 2 ; case 2
	.short _021D0FEC - _021D0F50 - 2 ; case 3
_021D0F58:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0FF8
	bl sub_0203608C
	cmp r0, #0
	beq _021D0F80
	bl ov58_021D2A30
	cmp r0, #2
	blt _021D0FF8
	mov r1, #0
	mov r0, #0x80
	add r2, r1, #0
	bl sub_020359DC
	mov r0, #1
	str r0, [r5, #0]
	b _021D0FF8
_021D0F80:
	mov r0, #1
	str r0, [r5, #0]
	b _021D0FF8
_021D0F86:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #3
	ldr r0, _021D1008 ; =0x021D3180
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021D0F9C
	add r0, r4, #0
	blx r2
	str r0, [r5, #0]
_021D0F9C:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r2, _021D100C ; =0x000E0D0F
	add r0, r4, r0
	mov r1, #0
	add r3, r4, #0
	bl ov58_021D28E4
	bl sub_0203608C
	cmp r0, #0
	bne _021D0FC2
	add r0, r4, #0
	bl ov58_021D2B5C
	ldr r1, [r5, #0]
	cmp r1, #1
	bne _021D0FC2
	str r0, [r5, #0]
_021D0FC2:
	ldr r0, _021D1010 ; =0x00004374
	add r0, r4, r0
	bl ov58_021D2888
	b _021D0FF8
_021D0FCC:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r3, r0, #3
	ldr r0, _021D1008 ; =0x021D3180
	ldr r2, [r0, r3]
	cmp r2, #0
	beq _021D0FF8
	ldr r0, _021D1014 ; =0x021D3184
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _021D0FF8
	add r0, r4, #0
	blx r2
	str r0, [r5, #0]
	b _021D0FF8
_021D0FEC:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0FF8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0FF8:
	ldr r0, [r4, #0x34]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1004: .word 0x000093B4
_021D1008: .word 0x021D3180
_021D100C: .word 0x000E0D0F
_021D1010: .word 0x00004374
_021D1014: .word 0x021D3184
	thumb_func_end ov58_021D0F08

	thumb_func_start ov58_021D1018
ov58_021D1018: ; 0x021D1018
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0200682C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r0, [r7, #0]
	cmp r0, #3
	bls _021D1034
	b _021D1152
_021D1034:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1040: ; jump table
	.short _021D1048 - _021D1040 - 2 ; case 0
	.short _021D10D4 - _021D1040 - 2 ; case 1
	.short _021D1102 - _021D1040 - 2 ; case 2
	.short _021D1122 - _021D1040 - 2 ; case 3
_021D1048:
	mov r0, #0x27
	bl sub_0202C168
	add r1, r0, #0
	ldr r0, [r4, #4]
	mov r2, #4
	bl sub_0202B758
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r4, #0
	add r5, r6, #0
_021D108C:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D108C
	ldr r0, [r6, #0x34]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	add r0, r6, #0
	bl ov58_021D19D4
	ldr r0, [r6, #0]
	bl ov58_021D13F0
	bl sub_0201E530
	ldr r0, [r6, #0x10]
	bl sub_0200B190
	ldr r0, [r6, #0xc]
	bl sub_0200B3F0
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021D1152
_021D10D4:
	mov r0, #1
	bl sub_02037B58
	bl sub_02036AC4
	ldr r0, [r4, #0]
	bl sub_0205C2C8
	ldr r2, _021D1158 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	bl sub_0205BEA8
	mov r0, #0
	bl sub_02033ED4
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021D1152
_021D1102:
	mov r1, #0x25
	lsl r1, r1, #0xa
	ldr r1, [r6, r1]
	cmp r1, #0
	beq _021D111C
	bl sub_020318EC
	cmp r0, #1
	bne _021D1152
	ldr r0, [r7, #0]
	add r0, r0, #1
	str r0, [r7, #0]
	b _021D1152
_021D111C:
	add r0, r0, #1
	str r0, [r7, #0]
	b _021D1152
_021D1122:
	mov r0, #2
	bl sub_02037B58
	add r0, r6, #0
	bl ov58_021D13B4
	ldr r0, [r6, #8]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x27
	bl sub_0201807C
	mov r0, #2
	bl sub_02037B58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1152:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1158: .word 0x04000304
	thumb_func_end ov58_021D1018

	thumb_func_start ov58_021D115C
ov58_021D115C: ; 0x021D115C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200A858
	add r0, r4, #0
	bl sub_0201C2B8
	ldr r3, _021D117C ; =0x027E0000
	ldr r1, _021D1180 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_021D117C: .word 0x027E0000
_021D1180: .word 0x00003FF8
	thumb_func_end ov58_021D115C

	thumb_func_start ov58_021D1184
ov58_021D1184: ; 0x021D1184
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D11A0 ; =0x021D2E90
	add r3, sp, #0
	mov r2, #5
_021D118E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D118E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D11A0: .word 0x021D2E90
	thumb_func_end ov58_021D1184

	thumb_func_start ov58_021D11A4
ov58_021D11A4: ; 0x021D11A4
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _021D12AC ; =0x021D2DE4
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D12B0 ; =0x021D2E04
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _021D12B4 ; =0x021D2E3C
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _021D12B8 ; =0x021D2E58
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D12BC ; =0x021D2E74
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _021D12C0 ; =0x021D2E20
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x27
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x27
	bl sub_02019690
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x27
	bl sub_02019690
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x27
	bl sub_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021D12AC: .word 0x021D2DE4
_021D12B0: .word 0x021D2E04
_021D12B4: .word 0x021D2E3C
_021D12B8: .word 0x021D2E58
_021D12BC: .word 0x021D2E74
_021D12C0: .word 0x021D2E20
	thumb_func_end ov58_021D11A4

	thumb_func_start ov58_021D12C4
ov58_021D12C4: ; 0x021D12C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1398 ; =0x0000438A
	add r6, r7, #0
	add r4, r7, r0
	mov r0, #0x38
	add r5, r7, #0
	str r0, [sp, #4]
_021D12DA:
	mov r0, #8
	mov r1, #0x27
	bl sub_02023790
	str r0, [r6, #0x14]
	ldrb r1, [r4]
	ldr r0, [sp, #4]
	bic r1, r0
	strb r1, [r4]
	ldr r0, _021D139C ; =0x000043B6
	mov r1, #0
	strh r1, [r6, r0]
	mov r0, #0xcd
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [sp]
	add r6, r6, #4
	add r0, r0, #1
	add r4, #0xa
	add r5, #8
	str r0, [sp]
	cmp r0, #5
	blt _021D12DA
	mov r0, #0xa
	mov r1, #0x27
	bl sub_02023790
	str r0, [r7, #0x28]
	mov r0, #0x50
	mov r1, #0x27
	bl sub_02023790
	str r0, [r7, #0x2c]
	ldr r0, _021D13A0 ; =0x00004376
	mov r2, #0
	strb r2, [r7, r0]
	mov r1, #1
	add r0, r0, #1
	strb r1, [r7, r0]
	ldr r0, _021D13A4 ; =0x000093F4
	str r1, [r7, r0]
	add r0, r0, #4
	str r2, [r7, r0]
	mov r0, #0xc6
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r7, r0]
	bl sub_020318EC
	mov r1, #0xc7
	lsl r1, r1, #2
	str r0, [r7, r1]
	ldr r2, _021D13A8 ; =0x000093FC
	mov r3, #0
	str r3, [r7, r2]
	add r0, r2, #4
	str r3, [r7, r0]
	add r0, r2, #0
	sub r1, #0x18
	str r3, [r7, r1]
	add r0, #8
	str r3, [r7, r0]
	add r2, #0xc
	str r3, [r7, r2]
	bl sub_0203608C
	add r0, r7, #0
	mov r1, #4
	bl ov58_021D2CB0
	ldr r0, [r7, #0x10]
	ldr r2, [r7, #0x28]
	mov r1, #7
	bl sub_0200B1B8
	mov r1, #0xf
	mov r0, #0x27
	lsl r1, r1, #0xa
	bl sub_02018144
	ldr r1, _021D13AC ; =0x000043C8
	str r0, [r7, r1]
	mov r0, #0x27
	bl sub_02015920
	ldr r1, _021D13B0 ; =0x000093F0
	str r0, [r7, r1]
	mov r0, #0xc5
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r7, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1398: .word 0x0000438A
_021D139C: .word 0x000043B6
_021D13A0: .word 0x00004376
_021D13A4: .word 0x000093F4
_021D13A8: .word 0x000093FC
_021D13AC: .word 0x000043C8
_021D13B0: .word 0x000093F0
	thumb_func_end ov58_021D12C4

	thumb_func_start ov58_021D13B4
ov58_021D13B4: ; 0x021D13B4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021D13E8 ; =0x000043C8
	ldr r0, [r6, r0]
	bl sub_020181C4
	ldr r0, _021D13EC ; =0x000093F0
	ldr r0, [r6, r0]
	bl sub_02015938
	mov r4, #0
	add r5, r6, #0
_021D13CC:
	ldr r0, [r5, #0x14]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021D13CC
	ldr r0, [r6, #0x2c]
	bl sub_020237BC
	ldr r0, [r6, #0x28]
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D13E8: .word 0x000043C8
_021D13EC: .word 0x000093F0
	thumb_func_end ov58_021D13B4

	thumb_func_start ov58_021D13F0
ov58_021D13F0: ; 0x021D13F0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov58_021D13F0

	thumb_func_start ov58_021D142C
ov58_021D142C: ; 0x021D142C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r4, [r6, #0]
	mov r0, #0x40
	add r5, r1, #0
	mov r1, #0
	str r0, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02007130
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x27
	bl sub_02002E98
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x27
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x27
	mov r1, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r1, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x27
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #0
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x27
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x27
	mov r1, #5
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200710C
	ldr r0, [r6, #8]
	ldr r0, [r0, #8]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov58_021D142C

	thumb_func_start ov58_021D1524
ov58_021D1524: ; 0x021D1524
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D1550 ; =0x021D2DF4
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x27
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D1550: .word 0x021D2DF4
	thumb_func_end ov58_021D1524

	thumb_func_start ov58_021D1554
ov58_021D1554: ; 0x021D1554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x27
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add r1, r5, #0
	mov r0, #0x35
	add r1, #0x38
	mov r2, #0x27
	bl sub_020095C4
	str r0, [r5, #0x34]
	add r0, r5, #0
	mov r2, #1
	add r0, #0x38
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r6, #0
	add r4, r5, #0
_021D1598:
	mov r0, #2
	add r1, r6, #0
	mov r2, #0x27
	bl sub_02009714
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021D1598
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #6
	bl sub_02009A4C
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r2, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #0x27
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02009B04
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #7
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #8
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #6
	bl sub_02009A4C
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x27
	mov r2, #0
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02009B04
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #7
	bl sub_02009BC4
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x27
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #8
	bl sub_02009BC4
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	bl sub_0200A328
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_0200A328
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov58_021D1554

	thumb_func_start ov58_021D16D8
ov58_021D16D8: ; 0x021D16D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0x16
	str r1, [sp, #0x10]
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r5, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	mov r1, #1
	mov r3, #0x16
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #4
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r5, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	ldr r0, [r5, #0x34]
	mov r6, #0
	str r0, [sp, #0x34]
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x38]
	mov r0, #1
	lsl r0, r0, #0xc
	str r6, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	add r0, sp, #0x34
	strh r6, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	mov r0, #0x27
	str r0, [sp, #0x60]
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r7, #0x18
	add r4, r5, #0
	str r0, [sp, #0x2c]
_021D178C:
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x38]
	lsl r0, r7, #0xc
	str r0, [sp, #0x3c]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x5c]
	add r0, sp, #0x34
	bl sub_02021AA0
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_02021D6C
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r7, #0x28
	add r4, r4, #4
	cmp r6, #5
	blt _021D178C
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r6, _021D18A8 ; =0x021D2EEC
	mov r7, #0
	add r4, r5, #0
	str r0, [sp, #0x30]
_021D17E4:
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x38]
	ldrh r0, [r6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x3c]
	ldrh r0, [r6, #2]
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl sub_02021AA0
	mov r1, #0x92
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x92
	lsl r0, r0, #2
	ldrh r1, [r6, #4]
	ldr r0, [r4, r0]
	bl sub_02021D6C
	cmp r7, #8
	blt _021D1826
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02021E80
_021D1826:
	add r7, r7, #1
	add r6, r6, #6
	add r4, r4, #4
	cmp r7, #0xc
	blt _021D17E4
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_02021D6C
	mov r7, #6
	mov r6, #0
	mov r4, #0x20
	lsl r7, r7, #0xe
_021D1844:
	mov r0, #1
	lsl r1, r4, #0xc
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	str r7, [sp, #0x3c]
	bl sub_02021AA0
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02021D6C
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021F58
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, #0x20
	add r5, r5, #4
	cmp r6, #5
	blt _021D1844
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D18A8: .word 0x021D2EEC
	thumb_func_end ov58_021D16D8

	thumb_func_start ov58_021D18AC
ov58_021D18AC: ; 0x021D18AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	mov r1, #0xb6
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r7, #0]
	add r1, r7, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #2
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r1, #0xb2
	lsl r1, r1, #2
	ldr r0, [r7, #0]
	add r1, r7, r1
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #2
	bl sub_0201ADA4
	mov r0, #0x15
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021D19C8 ; =0x000001C3
	mov r1, #0xba
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r7, #0]
	add r1, r7, r1
	mov r2, #1
	mov r3, #0x19
	bl sub_0201A7E8
	mov r0, #0xba
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, [r7, #0x28]
	mov r0, #1
	mov r2, #0
	mov r3, #0x30
	bl sub_02002EEC
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	ldr r0, _021D19CC ; =0x00070100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r2, [r7, #0x28]
	add r0, r7, r0
	mov r1, #1
	add r3, r3, #2
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x9e
	lsl r0, r0, #2
	mov r6, #1
	mov r4, #3
	add r5, r7, r0
_021D1978:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r7, #0]
	add r1, r5, #0
	mov r2, #4
	mov r3, #5
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	add r6, #0x14
	add r0, r0, #1
	add r4, r4, #4
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _021D1978
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r2, _021D19D0 ; =0x000E0D0F
	add r0, r7, r0
	mov r1, #0
	add r3, r7, #0
	bl ov58_021D28E4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D19C8: .word 0x000001C3
_021D19CC: .word 0x00070100
_021D19D0: .word 0x000E0D0F
	thumb_func_end ov58_021D18AC

	thumb_func_start ov58_021D19D4
ov58_021D19D4: ; 0x021D19D4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x9e
	lsl r0, r0, #2
	mov r4, #0
	add r5, r6, r0
_021D19E0:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _021D19E0
	mov r0, #0xba
	lsl r0, r0, #2
	add r0, r6, r0
	bl sub_0201A8FC
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r6, r0
	bl sub_0201A8FC
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r6, r0
	bl sub_0201A8FC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov58_021D19D4

	thumb_func_start ov58_021D1A10
ov58_021D1A10: ; 0x021D1A10
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0
	ble _021D1A2E
	lsl r0, r1, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D1A3C
_021D1A2E:
	lsl r0, r1, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D1A3C:
	bl _f_ftoi
	sub r5, #8
	str r0, [sp]
	cmp r5, #0
	ble _021D1A5A
	lsl r0, r5, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D1A68
_021D1A5A:
	lsl r0, r5, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D1A68:
	bl _f_ftoi
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov58_021D1A10

	thumb_func_start ov58_021D1A80
ov58_021D1A80: ; 0x021D1A80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021D1C7C ; =0x021D2EB8
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #8]
	cmp r0, r1
	beq _021D1ACE
	cmp r0, #0xb
	bhi _021D1ACE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1AAA: ; jump table
	.short _021D1AC2 - _021D1AAA - 2 ; case 0
	.short _021D1AC2 - _021D1AAA - 2 ; case 1
	.short _021D1AC2 - _021D1AAA - 2 ; case 2
	.short _021D1AC2 - _021D1AAA - 2 ; case 3
	.short _021D1AC2 - _021D1AAA - 2 ; case 4
	.short _021D1AC2 - _021D1AAA - 2 ; case 5
	.short _021D1AC2 - _021D1AAA - 2 ; case 6
	.short _021D1AC2 - _021D1AAA - 2 ; case 7
	.short _021D1AEA - _021D1AAA - 2 ; case 8
	.short _021D1B8E - _021D1AAA - 2 ; case 9
	.short _021D1B8E - _021D1AAA - 2 ; case 10
	.short _021D1B8E - _021D1AAA - 2 ; case 11
_021D1AC2:
	ldr r2, _021D1C80 ; =0x00004376
	ldr r0, [sp]
	ldrb r1, [r0, r2]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _021D1AD0
_021D1ACE:
	b _021D1BE6
_021D1AD0:
	add r1, r0, #0
	ldr r0, [sp]
	strb r1, [r0, r2]
	mov r1, #0x92
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r1, [sp, #8]
	bl ov58_021D1CAC
	ldr r0, _021D1C84 ; =0x000005DC
	bl sub_02005748
	b _021D1BE6
_021D1AEA:
	mov r1, #0xc1
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #4
	bne _021D1BE6
	bl sub_0203608C
	cmp r0, #0
	bne _021D1B50
	bl sub_020318EC
	mov r2, #0xc7
	ldr r1, [sp]
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	cmp r1, r0
	beq _021D1B16
	ldr r0, _021D1C88 ; =0x000005F2
	bl sub_02005748
	b _021D1BE6
_021D1B16:
	bl sub_02035E18
	bl sub_02037B58
	ldr r1, _021D1C8C ; =0x000093F4
	ldr r0, [sp]
	mov r2, #2
	str r2, [r0, r1]
	mov r1, #1
	add r2, r1, #0
	bl ov58_021D2A98
	ldr r0, [sp]
	mov r1, #5
	bl ov58_021D2CB0
	mov r1, #0x92
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #1
	bl ov58_021D1CDC
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021D1C84 ; =0x000005DC
	bl sub_02005748
	b _021D1BE6
_021D1B50:
	ldr r1, _021D1C90 ; =0x0000438B
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #2
	bne _021D1B62
	ldr r0, _021D1C88 ; =0x000005F2
	bl sub_02005748
	b _021D1BE6
_021D1B62:
	mov r1, #1
	ldr r0, [sp]
	add r2, r1, #0
	bl ov58_021D2A98
	ldr r0, [sp]
	mov r1, #5
	bl ov58_021D2CB0
	mov r1, #0x92
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #1
	bl ov58_021D1CDC
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021D1C84 ; =0x000005DC
	bl sub_02005748
	b _021D1BE6
_021D1B8E:
	ldr r0, [sp, #8]
	ldr r5, [sp]
	str r0, [sp, #0xc]
	sub r0, #9
	mov r4, #0
	mov r7, #0x1e
	mov r6, #0x1d
	str r0, [sp, #0xc]
_021D1B9E:
	ldr r0, [sp, #0xc]
	cmp r0, r4
	bne _021D1BB2
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02021D6C
	b _021D1BBE
_021D1BB2:
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02021D6C
_021D1BBE:
	add r4, r4, #1
	add r7, r7, #2
	add r5, r5, #4
	add r6, r6, #2
	cmp r4, #3
	blt _021D1B9E
	ldr r2, _021D1C94 ; =0x00004377
	ldr r0, [sp]
	ldrb r1, [r0, r2]
	ldr r0, [sp, #8]
	sub r0, #9
	str r0, [sp, #8]
	cmp r1, r0
	beq _021D1BE6
	add r1, r0, #0
	ldr r0, [sp]
	strb r1, [r0, r2]
	ldr r0, _021D1C98 ; =0x000005E5
	bl sub_02005748
_021D1BE6:
	ldr r0, _021D1C9C ; =0x021D2DDC
	bl sub_02022644
	add r4, r0, #0
	bl sub_0203608C
	lsl r1, r0, #2
	ldr r0, [sp]
	add r1, r0, r1
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D1C3C
	bl sub_0203608C
	lsl r1, r0, #2
	ldr r0, [sp]
	ldr r2, _021D1CA0 ; =0x021BF6BC
	add r1, r0, r1
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r1, [r2, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl ov58_021D1A10
	bl sub_0203608C
	lsl r1, r0, #2
	ldr r0, [sp]
	add r1, r0, r1
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
_021D1C3C:
	add r0, sp, #0x10
	mov r1, #4
	mov r2, #0x40
	bl sub_0201E564
	cmp r0, #1
	bne _021D1C76
	ldr r3, _021D1CA4 ; =0x00004378
	ldr r0, [sp]
	ldr r2, [sp]
	sub r4, r3, #2
	ldrb r2, [r2, r4]
	add r0, r0, r3
	sub r4, r3, #1
	ldr r3, [sp]
	add r1, sp, #0x10
	ldrb r3, [r3, r4]
	bl ov58_021D2D4C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021D1C76
	ldr r1, _021D1CA8 ; =0x00004380
	ldr r0, [sp]
	ldrb r2, [r0, r1]
	mov r0, #0x38
	bic r2, r0
	ldr r0, [sp]
	strb r2, [r0, r1]
_021D1C76:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021D1C7C: .word 0x021D2EB8
_021D1C80: .word 0x00004376
_021D1C84: .word 0x000005DC
_021D1C88: .word 0x000005F2
_021D1C8C: .word 0x000093F4
_021D1C90: .word 0x0000438B
_021D1C94: .word 0x00004377
_021D1C98: .word 0x000005E5
_021D1C9C: .word 0x021D2DDC
_021D1CA0: .word 0x021BF6BC
_021D1CA4: .word 0x00004378
_021D1CA8: .word 0x00004380
	thumb_func_end ov58_021D1A80

	thumb_func_start ov58_021D1CAC
ov58_021D1CAC: ; 0x021D1CAC
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021D1CD8 ; =0x021D2EEC
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #0
_021D1CB6:
	cmp r6, r7
	ldr r0, [r5, #0]
	bne _021D1CC6
	ldrh r1, [r4, #4]
	add r1, r1, #1
	bl sub_02021D6C
	b _021D1CCC
_021D1CC6:
	ldrh r1, [r4, #4]
	bl sub_02021D6C
_021D1CCC:
	add r6, r6, #1
	add r4, r4, #6
	add r5, r5, #4
	cmp r6, #8
	blt _021D1CB6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1CD8: .word 0x021D2EEC
	thumb_func_end ov58_021D1CAC

	thumb_func_start ov58_021D1CDC
ov58_021D1CDC: ; 0x021D1CDC
	push {r3, lr}
	cmp r1, #1
	ldr r0, [r0, #0x20]
	bne _021D1CEC
	mov r1, #0x16
	bl sub_02021D6C
	pop {r3, pc}
_021D1CEC:
	mov r1, #0x15
	bl sub_02021D6C
	pop {r3, pc}
	thumb_func_end ov58_021D1CDC

	thumb_func_start ov58_021D1CF4
ov58_021D1CF4: ; 0x021D1CF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov58_021D1A80
	bl sub_0203608C
	cmp r0, #0
	bne _021D1D16
	bl ov58_021D28C8
	cmp r0, #1
	beq _021D1D1C
	add r0, r5, #0
	bl ov58_021D29C8
	b _021D1D1C
_021D1D16:
	add r0, r5, #0
	bl ov58_021D29C8
_021D1D1C:
	add r0, r5, #0
	bl ov58_021D2820
	ldr r2, _021D1D3C ; =0x00004382
	mov r0, #0xb2
	lsl r0, r0, #2
	add r1, r5, r2
	add r2, #0x32
	add r0, r5, r0
	add r2, r5, r2
	mov r3, #1
	bl ov58_021D2754
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1D3C: .word 0x00004382
	thumb_func_end ov58_021D1CF4

	thumb_func_start ov58_021D1D40
ov58_021D1D40: ; 0x021D1D40
	push {r4, lr}
	add r4, r0, #0
	bl ov58_021D2820
	ldr r2, _021D1D60 ; =0x00004382
	mov r0, #0xb2
	lsl r0, r0, #2
	add r1, r4, r2
	add r2, #0x32
	add r0, r4, r0
	add r2, r4, r2
	mov r3, #0
	bl ov58_021D2754
	pop {r4, pc}
	nop
_021D1D60: .word 0x00004382
	thumb_func_end ov58_021D1D40

	thumb_func_start ov58_021D1D64
ov58_021D1D64: ; 0x021D1D64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	mov r1, #0x32
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021D1D84
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ov58_021D2A98
	b _021D1D8E
_021D1D84:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov58_021D2A98
_021D1D8E:
	add r0, r5, #0
	mov r1, #2
	bl ov58_021D2CB0
	ldr r0, _021D1DB4 ; =0x000005E4
	bl sub_02005748
	mov r1, #0x1e
	add r2, r1, #0
	ldr r0, _021D1DB8 ; =0x04000050
	sub r2, #0x24
	bl G2x_SetBlendBrightness_
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1DB4: .word 0x000005E4
_021D1DB8: .word 0x04000050
	thumb_func_end ov58_021D1D64

	thumb_func_start ov58_021D1DBC
ov58_021D1DBC: ; 0x021D1DBC
	push {r4, lr}
	add r4, r1, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov58_021D1DBC

	thumb_func_start ov58_021D1DC8
ov58_021D1DC8: ; 0x021D1DC8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021D1DF4 ; =0x04000050
	mov r2, #0
	strh r2, [r1]
	add r5, r0, #0
	mov r1, #1
	bl ov58_021D2B3C
	add r0, r5, #0
	mov r1, #4
	bl ov58_021D2CB0
	add r0, r5, #0
	bl ov58_021D1D40
	ldr r0, _021D1DF8 ; =0x00009404
	mov r1, #0
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1DF4: .word 0x04000050
_021D1DF8: .word 0x00009404
	thumb_func_end ov58_021D1DC8

	thumb_func_start ov58_021D1DFC
ov58_021D1DFC: ; 0x021D1DFC
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D1E40
	ldr r0, [r5, #0]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xb4
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	add r0, r5, #0
	add r1, sp, #0
	bl ov58_021D2CEC
	cmp r0, #0
	bne _021D1E38
	bl GF_AssertFail
_021D1E38:
	add r0, r5, #0
	mov r1, #6
	bl ov58_021D2CB0
_021D1E40:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov58_021D1DFC

	thumb_func_start ov58_021D1E4C
ov58_021D1E4C: ; 0x021D1E4C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _021D1F98 ; =0x00004380
	mov r0, #0x38
	ldrb r2, [r5, r1]
	bic r2, r0
	strb r2, [r5, r1]
	add r1, #0xb
	ldrb r0, [r5, r1]
	cmp r0, #2
	bne _021D1E8A
	bl sub_0203608C
	cmp r0, #0
	beq _021D1E8A
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r5, #0
	bl ov58_021D2D30
	cmp r0, #0
	beq _021D1E84
	ldr r0, _021D1F9C ; =0x000005F2
	bl sub_02005748
_021D1E84:
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D1E8A:
	bl sub_0203608C
	cmp r0, #0
	bne _021D1EA6
	ldr r0, _021D1FA0 ; =0x000093B4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D1EA6
	add r0, r5, #0
	bl ov58_021D1D40
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D1EA6:
	bl ov58_021D2A30
	add r4, r0, #0
	bl sub_02035E18
	cmp r4, r0
	beq _021D1EC0
	add r0, r5, #0
	bl ov58_021D1D40
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D1EC0:
	ldr r0, _021D1FA4 ; =0x000093F0
	ldr r0, [r5, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _021D1ED2
	cmp r0, #2
	beq _021D1F42
	b _021D1F8A
_021D1ED2:
	bl sub_0203608C
	cmp r0, #0
	bne _021D1EEE
	add r0, r5, #0
	mov r1, #0xd
	bl ov58_021D2CB0
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov58_021D2A98
	b _021D1F30
_021D1EEE:
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #2]
	bl sub_0203608C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, _021D1FA8 ; =0x000093BC
	mov r1, #1
	strb r1, [r5, r0]
	mov r1, #0
	sub r0, r0, #2
	strh r1, [r5, r0]
	add r0, r5, #0
	mov r1, #7
	bl ov58_021D2CB0
	mov r0, #0x7e
	add r1, sp, #0
	mov r2, #4
	bl sub_020359DC
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
_021D1F30:
	add r0, r5, #0
	bl ov58_021D2D10
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A954
	b _021D1F8A
_021D1F42:
	add r0, r5, #0
	mov r1, #4
	bl ov58_021D2CB0
	mov r0, #0x92
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov58_021D1CDC
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl ov58_021D2D10
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A954
	bl sub_0203608C
	cmp r0, #0
	bne _021D1F8A
	bl sub_02035E18
	add r0, r0, #1
	bl sub_02037B58
	ldr r0, _021D1FAC ; =0x000093F4
	mov r1, #1
	str r1, [r5, r0]
_021D1F8A:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D1F98: .word 0x00004380
_021D1F9C: .word 0x000005F2
_021D1FA0: .word 0x000093B4
_021D1FA4: .word 0x000093F0
_021D1FA8: .word 0x000093BC
_021D1FAC: .word 0x000093F4
	thumb_func_end ov58_021D1E4C

	thumb_func_start ov58_021D1FB0
ov58_021D1FB0: ; 0x021D1FB0
	push {r4, lr}
	ldr r2, _021D1FCC ; =0x00004380
	add r4, r1, #0
	ldrb r3, [r0, r2]
	mov r1, #0x38
	bic r3, r1
	strb r3, [r0, r2]
	ldr r1, _021D1FD0 ; =0x000093BA
	mov r2, #0
	strh r2, [r0, r1]
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_021D1FCC: .word 0x00004380
_021D1FD0: .word 0x000093BA
	thumb_func_end ov58_021D1FB0

	thumb_func_start ov58_021D1FD4
ov58_021D1FD4: ; 0x021D1FD4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _021D2060 ; =0x00004380
	mov r0, #0x38
	ldrb r2, [r5, r1]
	bic r2, r0
	strb r2, [r5, r1]
	bl sub_02035E18
	ldr r1, _021D2064 ; =0x000093B8
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _021D1FFC
	bl ov58_021D2A30
	ldr r1, _021D2064 ; =0x000093B8
	ldrh r2, [r5, r1]
	cmp r2, r0
	beq _021D2014
_021D1FFC:
	ldr r0, _021D2068 ; =0x000093BA
	mov r1, #0
	strh r1, [r5, r0]
	add r0, r5, #0
	mov r1, #9
	bl ov58_021D2CB0
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021D2014:
	add r0, r1, #2
	ldrsh r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x1e
	ble _021D2054
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	bl sub_0203608C
	add r1, sp, #0
	strb r0, [r1]
	mov r0, #0x7e
	add r1, sp, #0
	mov r2, #4
	bl sub_020359DC
	ldr r0, _021D2068 ; =0x000093BA
	mov r1, #0
	strh r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0xa
	bl ov58_021D2CB0
_021D2054:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D2060: .word 0x00004380
_021D2064: .word 0x000093B8
_021D2068: .word 0x000093BA
	thumb_func_end ov58_021D1FD4

	thumb_func_start ov58_021D206C
ov58_021D206C: ; 0x021D206C
	push {r3, r4, r5, lr}
	ldr r2, _021D20A0 ; =0x00004380
	add r5, r0, #0
	ldrb r3, [r5, r2]
	add r4, r1, #0
	mov r1, #0x38
	bic r3, r1
	strb r3, [r5, r2]
	ldr r1, _021D20A4 ; =0x000093BC
	mov r2, #0
	strb r2, [r5, r1]
	mov r1, #4
	bl ov58_021D2CB0
	mov r0, #0x92
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov58_021D1CDC
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D20A0: .word 0x00004380
_021D20A4: .word 0x000093BC
	thumb_func_end ov58_021D206C

	thumb_func_start ov58_021D20A8
ov58_021D20A8: ; 0x021D20A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #6
	mov r2, #1
	bl ov58_021D2A98
	add r0, r5, #0
	mov r1, #0xb
	bl ov58_021D2CB0
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D20A8

	thumb_func_start ov58_021D20C8
ov58_021D20C8: ; 0x021D20C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D20E8
	mov r0, #0x31
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0xc
	bl ov58_021D2CB0
_021D20E8:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov58_021D20C8

	thumb_func_start ov58_021D20F4
ov58_021D20F4: ; 0x021D20F4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x31
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0x3c
	ble _021D2124
	mov r1, #0x10
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r4, #3
_021D2124:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov58_021D20F4

	thumb_func_start ov58_021D2130
ov58_021D2130: ; 0x021D2130
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D2174
	ldr r0, [r5, #0]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xb4
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	add r0, r5, #0
	add r1, sp, #0
	bl ov58_021D2CEC
	cmp r0, #0
	bne _021D216C
	bl GF_AssertFail
_021D216C:
	add r0, r5, #0
	mov r1, #0xe
	bl ov58_021D2CB0
_021D2174:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov58_021D2130

	thumb_func_start ov58_021D2180
ov58_021D2180: ; 0x021D2180
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021D2230 ; =0x000093F0
	add r6, r1, #0
	ldr r0, [r5, r0]
	bl sub_020159FC
	add r4, r0, #0
	bl ov58_021D2A30
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021D21A6
	ldr r0, _021D2234 ; =0x000093B4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D21B0
_021D21A6:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021D21B0:
	cmp r4, #1
	beq _021D21BA
	cmp r4, #2
	beq _021D21E6
	b _021D2224
_021D21BA:
	add r0, r5, #0
	mov r1, #0xf
	bl ov58_021D2CB0
	mov r1, #0
	mov r0, #0x7f
	add r2, r1, #0
	bl sub_02035AC4
	mov r0, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0200B498
	add r0, r5, #0
	mov r6, #2
	bl ov58_021D2D10
	b _021D2224
_021D21E6:
	add r0, r5, #0
	mov r1, #4
	bl ov58_021D2CB0
	mov r0, #0x92
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov58_021D1CDC
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl ov58_021D2D10
	bl sub_0203608C
	cmp r0, #0
	bne _021D2224
	bl sub_02035E18
	add r0, r0, #1
	bl sub_02037B58
	ldr r0, _021D2238 ; =0x000093F4
	mov r1, #1
	str r1, [r5, r0]
_021D2224:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021D2230: .word 0x000093F0
_021D2234: .word 0x000093B4
_021D2238: .word 0x000093F4
	thumb_func_end ov58_021D2180

	thumb_func_start ov58_021D223C
ov58_021D223C: ; 0x021D223C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0200B498
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	bl ov58_021D2A98
	add r0, r5, #0
	mov r1, #0x10
	bl ov58_021D2CB0
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov58_021D223C

	thumb_func_start ov58_021D2270
ov58_021D2270: ; 0x021D2270
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D228E
	add r0, r5, #0
	mov r1, #0x11
	bl ov58_021D2CB0
	mov r0, #0xc8
	bl sub_020364F0
_021D228E:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D2270

	thumb_func_start ov58_021D2298
ov58_021D2298: ; 0x021D2298
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xc8
	add r5, r1, #0
	bl sub_02036540
	cmp r0, #0
	bne _021D22B2
	bl sub_02035E18
	cmp r0, #1
	bne _021D22CA
_021D22B2:
	mov r1, #0x10
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r5, #3
_021D22CA:
	add r0, r4, #0
	bl ov58_021D1D40
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov58_021D2298

	thumb_func_start ov58_021D22D8
ov58_021D22D8: ; 0x021D22D8
	add r0, r1, #0
	bx lr
	thumb_func_end ov58_021D22D8

	thumb_func_start ov58_021D22DC
ov58_021D22DC: ; 0x021D22DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #5
	mov r2, #1
	bl ov58_021D2A98
	add r0, r5, #0
	mov r1, #0x14
	bl ov58_021D2CB0
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D22DC

	thumb_func_start ov58_021D22FC
ov58_021D22FC: ; 0x021D22FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D2314
	add r0, r5, #0
	mov r1, #0xc
	bl ov58_021D2CB0
_021D2314:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov58_021D22FC

	thumb_func_start ov58_021D2320
ov58_021D2320: ; 0x021D2320
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	cmp r0, #0xff
	beq _021D233E
	bl ov58_021D2B0C
	cmp r0, #0
	bne _021D233E
	ldr r0, [r5, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_021D233E:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ov58_021D2A98
	add r0, r5, #0
	mov r1, #0x16
	bl ov58_021D2CB0
	ldr r0, _021D2378 ; =0x000005E4
	bl sub_02005748
	bl sub_0203608C
	cmp r0, #0
	bne _021D2366
	add r0, r5, #0
	mov r1, #0
	bl ov58_021D2B3C
_021D2366:
	bl sub_02035E18
	ldr r1, _021D237C ; =0x000093B0
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D2378: .word 0x000005E4
_021D237C: .word 0x000093B0
	thumb_func_end ov58_021D2320

	thumb_func_start ov58_021D2380
ov58_021D2380: ; 0x021D2380
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D23C4 ; =0x000093B0
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D239E
	bl sub_02035E18
	ldr r1, _021D23C4 ; =0x000093B0
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D239E
	mov r0, #0
	str r0, [r5, r1]
_021D239E:
	ldr r0, [r5, #0x30]
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D23B8
	add r0, r5, #0
	mov r1, #0x17
	bl ov58_021D2CB0
	mov r0, #0x31
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D23B8:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D23C4: .word 0x000093B0
	thumb_func_end ov58_021D2380

	thumb_func_start ov58_021D23C8
ov58_021D23C8: ; 0x021D23C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D242C ; =0x000093B0
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D23E6
	bl sub_02035E18
	ldr r1, _021D242C ; =0x000093B0
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D23E6
	mov r0, #0
	str r0, [r5, r1]
_021D23E6:
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0x3c
	ble _021D2420
	ldr r0, _021D242C ; =0x000093B0
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021D2420
	add r0, r5, #0
	bl ov58_021D2B2C
	add r0, r5, #0
	mov r1, #4
	bl ov58_021D2CB0
	bl sub_0203608C
	cmp r0, #0
	bne _021D2420
	ldr r0, _021D2430 ; =0x000093F4
	mov r1, #1
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov58_021D2B3C
_021D2420:
	add r0, r5, #0
	bl ov58_021D1D40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D242C: .word 0x000093B0
_021D2430: .word 0x000093F4
	thumb_func_end ov58_021D23C8

	thumb_func_start ov58_021D2434
ov58_021D2434: ; 0x021D2434
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r6, r2, #0
	cmp r5, #0xf
	bgt _021D2466
	bge _021D2512
	cmp r5, #9
	bhi _021D251A
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D2452: ; jump table
	.short _021D2510 - _021D2452 - 2 ; case 0
	.short _021D246C - _021D2452 - 2 ; case 1
	.short _021D2510 - _021D2452 - 2 ; case 2
	.short _021D24AA - _021D2452 - 2 ; case 3
	.short _021D2510 - _021D2452 - 2 ; case 4
	.short _021D2510 - _021D2452 - 2 ; case 5
	.short _021D2510 - _021D2452 - 2 ; case 6
	.short _021D2510 - _021D2452 - 2 ; case 7
	.short _021D2512 - _021D2452 - 2 ; case 8
	.short _021D2512 - _021D2452 - 2 ; case 9
_021D2466:
	cmp r5, #0x15
	beq _021D24B0
	pop {r4, r5, r6, pc}
_021D246C:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _021D247A
	cmp r0, #0xe
	bne _021D2480
_021D247A:
	add r0, r4, #0
	bl ov58_021D2D10
_021D2480:
	mov r0, #0x92
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov58_021D1CDC
	add r0, r6, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B498
	mov r0, #0x32
	lsl r0, r0, #4
	str r6, [r4, r0]
	ldr r0, _021D251C ; =0x000093B4
	mov r1, #0
	str r1, [r4, r0]
	b _021D2512
_021D24AA:
	bl ov58_021D2B2C
	b _021D2512
_021D24B0:
	ldr r0, _021D2520 ; =0x000093BC
	ldrb r0, [r4, r0]
	cmp r0, #1
	beq _021D251A
	add r0, r6, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200B498
	bl sub_0203608C
	cmp r6, r0
	beq _021D251A
	bl sub_0203608C
	cmp r0, #0
	bne _021D24E4
	ldr r1, _021D251C ; =0x000093B4
	ldr r0, _021D2524 ; =0x0000FFFF
	ldr r2, [r4, r1]
	eor r0, r6
	and r0, r2
	str r0, [r4, r1]
_021D24E4:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _021D24F2
	cmp r0, #0xe
	bne _021D2502
_021D24F2:
	add r0, r4, #0
	bl ov58_021D2D10
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A954
_021D2502:
	mov r0, #0x92
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov58_021D1CDC
	b _021D2512
_021D2510:
	pop {r4, r5, r6, pc}
_021D2512:
	add r0, r4, #0
	add r1, r5, #0
	bl ov58_021D2CB0
_021D251A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D251C: .word 0x000093B4
_021D2520: .word 0x000093BC
_021D2524: .word 0x0000FFFF
	thumb_func_end ov58_021D2434

	thumb_func_start ov58_021D2528
ov58_021D2528: ; 0x021D2528
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x38]
	mov ip, r1
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #0x18]
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	cmp r4, #0
	bge _021D2554
	neg r0, r4
	cmp r0, r2
	ble _021D2548
	add r0, r2, #0
_021D2548:
	ldr r5, [sp, #0x30]
	mov r4, #0
	sub r5, r5, r0
	add r6, r6, r0
	str r5, [sp, #0x30]
	sub r2, r2, r0
_021D2554:
	cmp r3, #0
	bge _021D256C
	neg r0, r3
	cmp r0, r1
	ble _021D2560
	add r0, r1, #0
_021D2560:
	ldr r5, [sp, #0x34]
	mov r3, #0
	sub r5, r5, r0
	add r7, r7, r0
	str r5, [sp, #0x34]
	sub r1, r1, r0
_021D256C:
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x34]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	lsl r2, r6, #0x10
	lsl r3, r7, #0x10
	ldr r0, [sp, #0x18]
	mov r1, ip
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201ADDC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov58_021D2528

	thumb_func_start ov58_021D25A8
ov58_021D25A8: ; 0x021D25A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x20]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x50]
	str r3, [sp, #0x24]
	ldr r4, [r0, #0]
	ldr r0, [sp, #0x54]
	ldr r5, [r0, #0]
	add r0, r2, #0
	str r0, [sp, #0x38]
	add r0, r3, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bne _021D25E8
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _021D25E8
	ldr r0, [sp, #0x50]
	add r1, r2, #0
	str r1, [r0, #0]
	ldr r0, [sp, #0x54]
	add r1, r3, #0
	str r1, [r0, #0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021D25E8:
	ldr r0, [sp, #0x20]
	sub r0, r0, r4
	str r0, [sp, #0x34]
	bpl _021D25F4
	neg r0, r0
	str r0, [sp, #0x34]
_021D25F4:
	ldr r0, [sp, #0x24]
	sub r7, r0, r5
	bpl _021D25FC
	neg r7, r7
_021D25FC:
	ldr r0, [sp, #0x34]
	cmp r0, r7
	ble _021D268A
	ldr r0, [sp, #0x20]
	cmp r4, r0
	ble _021D2622
	ldr r0, [sp, #0x24]
	cmp r5, r0
	ble _021D2614
	mov r0, #1
	str r0, [sp, #0x2c]
	b _021D261A
_021D2614:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x2c]
_021D261A:
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	b _021D2634
_021D2622:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	bge _021D262E
	mov r0, #1
	str r0, [sp, #0x2c]
	b _021D2634
_021D262E:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x2c]
_021D2634:
	mov r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r3, r2, #0
	bl ov58_021D2528
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	asr r6, r0, #1
	ldr r0, [sp, #0x38]
	cmp r4, r0
	bgt _021D270E
_021D265A:
	sub r6, r6, r7
	bpl _021D2666
	ldr r0, [sp, #0x34]
	add r6, r6, r0
	ldr r0, [sp, #0x2c]
	add r5, r5, r0
_021D2666:
	mov r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r3, r2, #0
	bl ov58_021D2528
	ldr r0, [sp, #0x38]
	add r4, r4, #1
	cmp r4, r0
	ble _021D265A
	b _021D270E
_021D268A:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	ble _021D26AA
	ldr r0, [sp, #0x20]
	cmp r4, r0
	ble _021D269C
	mov r0, #1
	str r0, [sp, #0x28]
	b _021D26A2
_021D269C:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x28]
_021D26A2:
	str r5, [sp, #0x30]
	ldr r5, [sp, #0x24]
	ldr r4, [sp, #0x20]
	b _021D26BC
_021D26AA:
	ldr r0, [sp, #0x20]
	cmp r4, r0
	bge _021D26B6
	mov r0, #1
	str r0, [sp, #0x28]
	b _021D26BC
_021D26B6:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x28]
_021D26BC:
	mov r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r3, r2, #0
	bl ov58_021D2528
	ldr r0, [sp, #0x30]
	add r5, r5, #1
	asr r6, r7, #1
	cmp r5, r0
	bgt _021D270E
_021D26E0:
	ldr r0, [sp, #0x34]
	sub r6, r6, r0
	bpl _021D26EC
	ldr r0, [sp, #0x28]
	add r6, r6, r7
	add r4, r4, r0
_021D26EC:
	mov r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r3, r2, #0
	bl ov58_021D2528
	ldr r0, [sp, #0x30]
	add r5, r5, #1
	cmp r5, r0
	ble _021D26E0
_021D270E:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x50]
	str r1, [r0, #0]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x54]
	str r1, [r0, #0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov58_021D25A8

	thumb_func_start ov58_021D2720
ov58_021D2720: ; 0x021D2720
	mov r2, #0
_021D2722:
	ldrb r3, [r0, #8]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1d
	strh r3, [r1, #2]
	ldrb r3, [r0, #8]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1d
	beq _021D2746
	add r3, r0, r3
	sub r3, r3, #1
	ldrb r3, [r3]
	strb r3, [r1]
	ldrb r3, [r0, #8]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1d
	add r3, r0, r3
	ldrb r3, [r3, #3]
	strb r3, [r1, #1]
_021D2746:
	add r2, r2, #1
	add r0, #0xa
	add r1, r1, #4
	cmp r2, #5
	blt _021D2722
	bx lr
	; .align 2, 0
	thumb_func_end ov58_021D2720

	thumb_func_start ov58_021D2754
ov58_021D2754: ; 0x021D2754
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	mov r0, #0
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	add r5, r1, #0
	add r7, r2, #0
_021D276A:
	ldrb r0, [r5, #8]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	beq _021D27DA
	ldrh r0, [r7, #2]
	cmp r0, #0
	beq _021D2784
	ldrb r0, [r7]
	sub r0, #9
	str r0, [sp, #0x2c]
	ldrb r0, [r7, #1]
	sub r0, #0x11
	str r0, [sp, #0x28]
_021D2784:
	ldrb r0, [r5, #8]
	mov r4, #0
	lsl r0, r0, #0x1a
	lsr r1, r0, #0x1d
	cmp r1, #0
	ble _021D27DA
	mov r0, #1
	str r0, [sp, #0x20]
	cmp r1, #0
	ble _021D27DA
_021D2798:
	add r0, sp, #0x2c
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrh r0, [r7, #2]
	mov r6, #0xc0
	add r3, r5, r4
	str r0, [sp, #0xc]
	ldrb r1, [r5, #8]
	ldrb r3, [r3, #4]
	ldr r0, [sp, #0x10]
	lsl r2, r1, #0x18
	lsr r2, r2, #0x1e
	mul r6, r2
	ldr r2, _021D281C ; =0x021D2F34
	lsl r1, r1, #0x1d
	add r2, r2, r6
	lsr r6, r1, #0x1d
	mov r1, #0x18
	mul r1, r6
	add r1, r2, r1
	ldrb r2, [r5, r4]
	sub r3, #0x11
	sub r2, #9
	bl ov58_021D25A8
	ldrb r0, [r5, #8]
	add r4, r4, #1
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	cmp r4, r0
	blt _021D2798
_021D27DA:
	ldr r0, [sp, #0x24]
	add r5, #0xa
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0x24]
	cmp r0, #5
	blt _021D276A
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021D27FA
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021D27FA
	ldr r0, [sp, #0x10]
	bl sub_0201A954
_021D27FA:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov58_021D2720
	mov r3, #0
	mov r1, #0x38
_021D2806:
	ldr r0, [sp, #0x14]
	add r3, r3, #1
	ldrb r2, [r0, #8]
	bic r2, r1
	strb r2, [r0, #8]
	add r0, #0xa
	str r0, [sp, #0x14]
	cmp r3, #5
	blt _021D2806
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D281C: .word 0x021D2F34
	thumb_func_end ov58_021D2754

	thumb_func_start ov58_021D2820
ov58_021D2820: ; 0x021D2820
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021D2884 ; =0x00004382
	mov r7, #0x76
	mov r6, #0
	add r4, r5, r0
	lsl r7, r7, #2
_021D282E:
	bl sub_0203608C
	cmp r6, r0
	beq _021D2876
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	beq _021D286A
	add r0, r6, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D286A
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	ldrb r0, [r4, #8]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	add r2, r4, r0
	sub r1, r2, #1
	ldrb r1, [r1]
	ldrb r2, [r2, #3]
	ldr r0, [r5, r7]
	bl ov58_021D1A10
	b _021D2876
_021D286A:
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_021D2876:
	add r6, r6, #1
	add r4, #0xa
	add r5, r5, #4
	cmp r6, #5
	blt _021D282E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2884: .word 0x00004382
	thumb_func_end ov58_021D2820

	thumb_func_start ov58_021D2888
ov58_021D2888: ; 0x021D2888
	push {r3, lr}
	ldrh r1, [r0]
	add r1, #0x14
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r2, r1
	bls _021D289E
	mov r1, #0
	strh r1, [r0]
_021D289E:
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xa
	mul r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	add r0, #0xf
	lsl r1, r0, #5
	mov r0, #0x1d
	orr r1, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	mov r1, #0x18
	mov r2, #2
	bl GX_LoadOBJPltt
	pop {r3, pc}
	thumb_func_end ov58_021D2888

	thumb_func_start ov58_021D28C8
ov58_021D28C8: ; 0x021D28C8
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_021D28CE:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D28DA
	add r5, r5, #1
_021D28DA:
	add r4, r4, #1
	cmp r4, #5
	blt _021D28CE
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D28C8

	thumb_func_start ov58_021D28E4
ov58_021D28E4: ; 0x021D28E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r3, #0
	add r5, r0, #0
	str r2, [sp, #0x10]
	bl sub_0203608C
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl ov58_021D2A54
	cmp r0, #0
	beq _021D29BE
	mov r0, #0
	str r0, [sp, #0x18]
	add r6, r7, #0
	add r4, r7, #0
_021D2906:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D291E
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _021D292A
_021D291E:
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
_021D292A:
	ldr r0, [sp, #0x18]
	add r6, #8
	add r0, r0, #1
	add r4, r4, #4
	str r0, [sp, #0x18]
	cmp r0, #5
	blt _021D2906
	mov r6, #0
	add r4, r5, #0
_021D293C:
	mov r0, #0x50
	mov r1, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #5
	blt _021D293C
	mov r6, #0
	add r4, r7, #0
_021D295C:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021D29AC
	ldr r1, [r4, #0x14]
	bl sub_02025EF4
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bne _021D2990
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D29C4 ; =0x0003040F
	mov r1, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r3, #0
	bl sub_0201D78C
	b _021D29AC
_021D2990:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r3, #0
	bl sub_0201D78C
_021D29AC:
	add r0, r5, #0
	bl sub_0201A954
	add r6, r6, #1
	add r7, #8
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #5
	blt _021D295C
_021D29BE:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D29C4: .word 0x0003040F
	thumb_func_end ov58_021D28E4

	thumb_func_start ov58_021D29C8
ov58_021D29C8: ; 0x021D29C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D2A08
	bl sub_02036284
	cmp r0, #0
	beq _021D2A1C
	ldr r1, _021D2A20 ; =0x000093F4
	ldr r0, _021D2A24 ; =0x00004381
	ldr r2, [r4, r1]
	sub r1, #0x37
	strb r2, [r4, r0]
	sub r0, #9
	add r2, r4, r1
	add r3, r4, r0
	mov r1, #0xa
_021D29EE:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D29EE
	ldr r1, _021D2A28 ; =0x000093BD
	mov r0, #0x78
	add r1, r4, r1
	mov r2, #0x32
	bl sub_02035AC4
	pop {r4, pc}
_021D2A08:
	bl sub_0203629C
	cmp r0, #0
	beq _021D2A1C
	ldr r1, _021D2A2C ; =0x00004378
	mov r0, #0x77
	add r1, r4, r1
	mov r2, #0xa
	bl sub_020359DC
_021D2A1C:
	pop {r4, pc}
	nop
_021D2A20: .word 0x000093F4
_021D2A24: .word 0x00004381
_021D2A28: .word 0x000093BD
_021D2A2C: .word 0x00004378
	thumb_func_end ov58_021D29C8

	thumb_func_start ov58_021D2A30
ov58_021D2A30: ; 0x021D2A30
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_021D2A36:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D2A42
	add r5, r5, #1
_021D2A42:
	add r4, r4, #1
	cmp r4, #5
	blt _021D2A36
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D2A30

	thumb_func_start ov58_021D2A4C
ov58_021D2A4C: ; 0x021D2A4C
	ldr r3, _021D2A50 ; =ov58_021D2A30
	bx r3
	; .align 2, 0
_021D2A50: .word ov58_021D2A30
	thumb_func_end ov58_021D2A4C

	thumb_func_start ov58_021D2A54
ov58_021D2A54: ; 0x021D2A54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0
	add r6, r7, #0
	add r4, r5, #0
_021D2A5E:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r6, #0
	bl sub_02032EE8
	mov r1, #0xcd
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r6, r6, #1
	add r4, #8
	cmp r6, #5
	blt _021D2A5E
	mov r6, #0
	mov r2, #1
	add r0, r1, #4
_021D2A82:
	ldr r4, [r5, r0]
	ldr r3, [r5, r1]
	cmp r4, r3
	beq _021D2A8C
	add r7, r2, #0
_021D2A8C:
	add r6, r6, #1
	add r5, #8
	cmp r6, #5
	blt _021D2A82
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov58_021D2A54

	thumb_func_start ov58_021D2A98
ov58_021D2A98: ; 0x021D2A98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x50
	mov r1, #0x27
	add r4, r2, #0
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x2c]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	cmp r4, #0
	bne _021D2AE8
	mov r4, #0
_021D2AE8:
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r2, [r5, #0x2c]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	str r0, [r5, #0x30]
	cmp r4, #0
	bne _021D2B08
	mov r0, #0xff
	str r0, [r5, #0x30]
_021D2B08:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov58_021D2A98

	thumb_func_start ov58_021D2B0C
ov58_021D2B0C: ; 0x021D2B0C
	push {r3, lr}
	cmp r0, #0xff
	bne _021D2B16
	mov r0, #1
	pop {r3, pc}
_021D2B16:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D2B26
	mov r0, #1
	pop {r3, pc}
_021D2B26:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov58_021D2B0C

	thumb_func_start ov58_021D2B2C
ov58_021D2B2C: ; 0x021D2B2C
	mov r1, #0xb6
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, _021D2B38 ; =sub_0200E084
	mov r1, #0
	bx r3
	; .align 2, 0
_021D2B38: .word sub_0200E084
	thumb_func_end ov58_021D2B2C

	thumb_func_start ov58_021D2B3C
ov58_021D2B3C: ; 0x021D2B3C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D2B58
	bl sub_02035E18
	add r0, r4, r0
	cmp r0, #5
	ble _021D2B54
	mov r0, #5
_021D2B54:
	bl sub_02037B58
_021D2B58:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov58_021D2B3C

	thumb_func_start ov58_021D2B5C
ov58_021D2B5C: ; 0x021D2B5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov58_021D2A30
	add r5, r0, #0
	cmp r5, #5
	bhi _021D2BFA
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2B76: ; jump table
	.short _021D2BFA - _021D2B76 - 2 ; case 0
	.short _021D2B82 - _021D2B76 - 2 ; case 1
	.short _021D2BC8 - _021D2B76 - 2 ; case 2
	.short _021D2BC8 - _021D2B76 - 2 ; case 3
	.short _021D2BC8 - _021D2B76 - 2 ; case 4
	.short _021D2BF4 - _021D2B76 - 2 ; case 5
_021D2B82:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0xe
	bgt _021D2BFA
	bl sub_020318EC
	cmp r0, #1
	beq _021D2B9C
	mov r0, #0x25
	mov r1, #1
	lsl r0, r0, #0xa
	str r1, [r4, r0]
_021D2B9C:
	mov r0, #0xc2
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	bl sub_02037B58
	ldr r0, _021D2C9C ; =0x000093F8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2BC4
	add r0, r4, #0
	bl ov58_021D2D10
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x15
	bl sub_02021D6C
_021D2BC4:
	mov r0, #2
	pop {r3, r4, r5, pc}
_021D2BC8:
	mov r0, #1
	bl sub_0205BEA8
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r5, r0
	bge _021D2BFA
	ldr r0, _021D2CA0 ; =0x000093F4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _021D2BEA
	add r0, r4, #0
	mov r1, #0
	bl ov58_021D2B3C
	b _021D2BFA
_021D2BEA:
	add r0, r4, #0
	mov r1, #1
	bl ov58_021D2B3C
	b _021D2BFA
_021D2BF4:
	mov r0, #8
	bl sub_0205BEA8
_021D2BFA:
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r5, r0
	bge _021D2C44
	bl sub_02035E18
	mov r1, #0xc6
	lsl r1, r1, #2
	str r0, [r4, r1]
	bl sub_020318EC
	mov r1, #0xc7
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _021D2CA4 ; =0x00009404
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _021D2C44
	add r0, r0, #4
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	tst r0, r1
	bne _021D2C44
	add r0, r4, #0
	mov r1, #1
	bl ov58_021D2B3C
	ldr r1, _021D2CA0 ; =0x000093F4
	mov r0, #1
	str r0, [r4, r1]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x10
	str r2, [r4, r0]
	add r1, #0x14
	str r2, [r4, r1]
_021D2C44:
	bl ov58_021D2A30
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r4, r1]
	bl sub_02035E18
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	bge _021D2C98
	ldr r0, _021D2CA0 ; =0x000093F4
	mov r1, #2
	str r1, [r4, r0]
	mov r1, #1
	add r0, #0x10
	str r1, [r4, r0]
	bl sub_020318EC
	mov r1, #0xc7
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	eor r0, r1
	ldr r1, _021D2CA8 ; =0x00009408
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	sub r1, r1, #2
	cmp r1, #0xe
	bhi _021D2C90
	mov r2, #1
	add r3, r2, #0
	lsl r3, r1
	ldr r1, _021D2CAC ; =0x00004045
	tst r1, r3
	beq _021D2C90
	add r0, r2, #0
_021D2C90:
	cmp r0, #0
	bne _021D2C98
	bl GF_AssertFail
_021D2C98:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D2C9C: .word 0x000093F8
_021D2CA0: .word 0x000093F4
_021D2CA4: .word 0x00009404
_021D2CA8: .word 0x00009408
_021D2CAC: .word 0x00004045
	thumb_func_end ov58_021D2B5C

	thumb_func_start ov58_021D2CB0
ov58_021D2CB0: ; 0x021D2CB0
	mov r2, #0xc2
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov58_021D2CB0

	thumb_func_start ov58_021D2CB8
ov58_021D2CB8: ; 0x021D2CB8
	push {r3, r4}
	mov r3, #0xc2
	lsl r3, r3, #2
	sub r4, r3, #4
	ldr r2, [r0, r3]
	ldr r4, [r0, r4]
	cmp r4, r2
	beq _021D2CE2
	cmp r1, #2
	beq _021D2CD4
	sub r1, r3, #4
	str r2, [r0, r1]
	pop {r3, r4}
	bx lr
_021D2CD4:
	ldr r1, _021D2CE8 ; =0x021D3184
	lsl r4, r2, #3
	ldr r1, [r1, r4]
	cmp r1, #0
	beq _021D2CE2
	sub r1, r3, #4
	str r2, [r0, r1]
_021D2CE2:
	pop {r3, r4}
	bx lr
	nop
_021D2CE8: .word 0x021D3184
	thumb_func_end ov58_021D2CB8

	thumb_func_start ov58_021D2CEC
ov58_021D2CEC: ; 0x021D2CEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D2D0C ; =0x000093F8
	ldr r2, [r4, r0]
	cmp r2, #0
	bne _021D2D08
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_02015958
	ldr r1, _021D2D0C ; =0x000093F8
	mov r0, #1
	str r0, [r4, r1]
	pop {r4, pc}
_021D2D08:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D2D0C: .word 0x000093F8
	thumb_func_end ov58_021D2CEC

	thumb_func_start ov58_021D2D10
ov58_021D2D10: ; 0x021D2D10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D2D2C ; =0x000093F8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021D2D2A
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_02015A54
	ldr r0, _021D2D2C ; =0x000093F8
	mov r1, #0
	str r1, [r4, r0]
_021D2D2A:
	pop {r4, pc}
	; .align 2, 0
_021D2D2C: .word 0x000093F8
	thumb_func_end ov58_021D2D10

	thumb_func_start ov58_021D2D30
ov58_021D2D30: ; 0x021D2D30
	push {r3, lr}
	ldr r0, _021D2D48 ; =0x021D2DD4
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D2D44
	mov r0, #1
	pop {r3, pc}
_021D2D44:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D2D48: .word 0x021D2DD4
	thumb_func_end ov58_021D2D30

	thumb_func_start ov58_021D2D4C
ov58_021D2D4C: ; 0x021D2D4C
	push {r4, r5, r6, r7}
	add r5, r1, #0
	ldrh r1, [r5]
	add r4, r2, #0
	add r2, r3, #0
	cmp r1, #0
	beq _021D2D88
	ldrh r1, [r5, #2]
	strb r1, [r0]
	ldrh r1, [r5, #4]
	strb r1, [r0, #4]
	ldrh r1, [r5]
	sub r1, r1, #1
	lsl r1, r1, #3
	add r3, r5, r1
	ldrh r1, [r3, #2]
	strb r1, [r0, #1]
	ldrh r1, [r3, #4]
	strb r1, [r0, #5]
	mov r1, #0
	add r3, r1, #0
_021D2D76:
	add r6, r0, r1
	ldrb r7, [r0, r1]
	ldrb r6, [r6, #4]
	add r6, r7, r6
	bne _021D2D82
	strh r3, [r5]
_021D2D82:
	add r1, r1, #1
	cmp r1, #2
	blt _021D2D76
_021D2D88:
	ldrh r5, [r5]
	cmp r5, #2
	blo _021D2D98
	ldrb r3, [r0, #8]
	mov r1, #0x38
	bic r3, r1
	mov r1, #0x10
	b _021D2DA6
_021D2D98:
	ldrb r1, [r0, #8]
	mov r3, #0x38
	bic r1, r3
	lsl r3, r5, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x1d
	lsr r3, r3, #0x1a
_021D2DA6:
	orr r1, r3
	strb r1, [r0, #8]
	ldrb r1, [r0, #8]
	mov r3, #7
	bic r1, r3
	lsl r3, r4, #0x18
	lsr r4, r3, #0x18
	mov r3, #7
	and r3, r4
	orr r1, r3
	strb r1, [r0, #8]
	ldrb r3, [r0, #8]
	mov r1, #0xc0
	bic r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x18
	orr r1, r3
	strb r1, [r0, #8]
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov58_021D2D4C

	.rodata


	.global Unk_ov58_021D2DD4
Unk_ov58_021D2DD4: ; 0x021D2DD4
	.incbin "incbin/overlay58_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov58_021D2DDC
Unk_ov58_021D2DDC: ; 0x021D2DDC
	.incbin "incbin/overlay58_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov58_021D2DE4
Unk_ov58_021D2DE4: ; 0x021D2DE4
	.incbin "incbin/overlay58_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov58_021D2DF4
Unk_ov58_021D2DF4: ; 0x021D2DF4
	.incbin "incbin/overlay58_rodata.bin", 0x20, 0x30 - 0x20

	.global Unk_ov58_021D2E04
Unk_ov58_021D2E04: ; 0x021D2E04
	.incbin "incbin/overlay58_rodata.bin", 0x30, 0x4C - 0x30

	.global Unk_ov58_021D2E20
Unk_ov58_021D2E20: ; 0x021D2E20
	.incbin "incbin/overlay58_rodata.bin", 0x4C, 0x68 - 0x4C

	.global Unk_ov58_021D2E3C
Unk_ov58_021D2E3C: ; 0x021D2E3C
	.incbin "incbin/overlay58_rodata.bin", 0x68, 0x84 - 0x68

	.global Unk_ov58_021D2E58
Unk_ov58_021D2E58: ; 0x021D2E58
	.incbin "incbin/overlay58_rodata.bin", 0x84, 0xA0 - 0x84

	.global Unk_ov58_021D2E74
Unk_ov58_021D2E74: ; 0x021D2E74
	.incbin "incbin/overlay58_rodata.bin", 0xA0, 0xBC - 0xA0

	.global Unk_ov58_021D2E90
Unk_ov58_021D2E90: ; 0x021D2E90
	.incbin "incbin/overlay58_rodata.bin", 0xBC, 0xE4 - 0xBC

	.global Unk_ov58_021D2EB8
Unk_ov58_021D2EB8: ; 0x021D2EB8
	.incbin "incbin/overlay58_rodata.bin", 0xE4, 0x118 - 0xE4

	.global Unk_ov58_021D2EEC
Unk_ov58_021D2EEC: ; 0x021D2EEC
	.incbin "incbin/overlay58_rodata.bin", 0x118, 0x160 - 0x118

	.global Unk_ov58_021D2F34
Unk_ov58_021D2F34: ; 0x021D2F34
	.incbin "incbin/overlay58_rodata.bin", 0x160, 0x240


	.data


	.global Unk_ov58_021D3180
Unk_ov58_021D3180: ; 0x021D3180
	.incbin "incbin/overlay58_data.bin", 0x0, 0xC0

