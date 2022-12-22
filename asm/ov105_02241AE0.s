	.include "macros/function.inc"
	.include "include/ov105_02241AE0.inc"

	

	.text


	thumb_func_start ov105_02241AE0
ov105_02241AE0: ; 0x02241AE0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _02241BD0 ; =0x00000068
	mov r1, #2
	bl sub_02006590
	bl ov105_022452E4
	mov r2, #2
	mov r0, #3
	mov r1, #0x5d
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x36
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0x5d
	bl sub_0200681C
	mov r2, #0x36
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	mov r2, #2
	mov r1, #0
	ldr r0, _02241BD4 ; =ov105_02245CD0
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0x5d
	add r3, r1, #0
	bl sub_02024220
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x5d
	bl sub_02018340
	str r0, [r4, #0x4c]
	str r5, [r4, #0]
	add r0, r5, #0
	bl sub_02006840
	mov r3, #0x4f
	mov r2, #0xae
	ldr r1, [r0, #0]
	lsl r3, r3, #2
	str r1, [r4, r3]
	ldrb r1, [r0, #4]
	lsl r2, r2, #2
	strb r1, [r4, #9]
	ldrb r1, [r0, #5]
	strb r1, [r4, #0xa]
	ldrb r1, [r0, #6]
	strb r1, [r4, #0xb]
	ldr r1, [r0, #8]
	str r1, [r4, r2]
	ldr r5, [r0, #0xc]
	add r1, r2, #4
	str r5, [r4, r1]
	add r0, #0x10
	add r2, #0x14
	str r0, [r4, r2]
	ldr r0, [r4, r3]
	bl sub_02025E44
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #8
	str r0, [r4, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02241B8A
	mov r0, #6
	strb r0, [r4, #0x12]
	b _02241BAE
_02241B8A:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02241BA2
	mov r0, #2
	strb r0, [r4, #0x12]
	mov r0, #3
	strb r0, [r4, #0x1a]
	mov r0, #6
	strb r0, [r4, #0x1b]
	b _02241BAE
_02241BA2:
	mov r0, #3
	strb r0, [r4, #0x12]
	mov r0, #4
	strb r0, [r4, #0x1a]
	mov r0, #5
	strb r0, [r4, #0x1b]
_02241BAE:
	add r0, r4, #0
	bl ov105_0224531C
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02241BC4
	add r0, r4, #0
	bl sub_0209BA80
_02241BC4:
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02241BD0: .word 0x00000068
_02241BD4: .word ov105_02245CD0
	thumb_func_end ov105_02241AE0

	thumb_func_start ov105_02241BD8
ov105_02241BD8: ; 0x02241BD8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	mov r1, #0x35
	add r4, r0, #0
	lsl r1, r1, #4
	ldrh r1, [r4, r1]
	cmp r1, #1
	bne _02241C22
	ldr r1, [r5, #0]
	cmp r1, #9
	bhi _02241C22
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241BFE: ; jump table
	.short _02241C22 - _02241BFE - 2 ; case 0
	.short _02241C22 - _02241BFE - 2 ; case 1
	.short _02241C22 - _02241BFE - 2 ; case 2
	.short _02241C22 - _02241BFE - 2 ; case 3
	.short _02241C22 - _02241BFE - 2 ; case 4
	.short _02241C22 - _02241BFE - 2 ; case 5
	.short _02241C12 - _02241BFE - 2 ; case 6
	.short _02241C12 - _02241BFE - 2 ; case 7
	.short _02241C12 - _02241BFE - 2 ; case 8
	.short _02241C12 - _02241BFE - 2 ; case 9
_02241C12:
	ldrb r1, [r4, #0x13]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	bne _02241C22
	add r1, r5, #0
	mov r2, #0xb
	bl ov105_02244778
_02241C22:
	ldr r0, [r5, #0]
	cmp r0, #0xe
	bhi _02241CC0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241C34: ; jump table
	.short _02241C52 - _02241C34 - 2 ; case 0
	.short _02241C82 - _02241C34 - 2 ; case 1
	.short _02241C68 - _02241C34 - 2 ; case 2
	.short _02241CB0 - _02241C34 - 2 ; case 3
	.short _02241D12 - _02241C34 - 2 ; case 4
	.short _02241D46 - _02241C34 - 2 ; case 5
	.short _02241D5C - _02241C34 - 2 ; case 6
	.short _02241DA6 - _02241C34 - 2 ; case 7
	.short _02241DF8 - _02241C34 - 2 ; case 8
	.short _02241E56 - _02241C34 - 2 ; case 9
	.short _02241EA8 - _02241C34 - 2 ; case 10
	.short _02241ED6 - _02241C34 - 2 ; case 11
	.short _02241F02 - _02241C34 - 2 ; case 12
	.short _02241F18 - _02241C34 - 2 ; case 13
	.short _02241F26 - _02241C34 - 2 ; case 14
_02241C52:
	add r0, r4, #0
	bl ov105_02241FF4
	cmp r0, #1
	bne _02241CC0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov105_02244778
	b _02241F3A
_02241C68:
	add r0, r4, #0
	bl ov105_02242698
	cmp r0, #1
	bne _02241C7E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov105_02244778
	b _02241C82
_02241C7E:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02241C82:
	add r0, r4, #0
	bl ov105_022421F0
	cmp r0, #1
	bne _02241CC0
	add r0, r4, #0
	mov r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02241CA4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov105_02244778
	b _02241F3A
_02241CA4:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #6
	bl ov105_02244778
	b _02241F3A
_02241CB0:
	add r0, r4, #0
	bl ov105_022457C0
	add r0, r4, #0
	bl ov105_022426E0
	cmp r0, #1
	beq _02241CC2
_02241CC0:
	b _02241F3A
_02241CC2:
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02241CD8
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov105_02244778
	b _02241F3A
_02241CD8:
	ldrb r0, [r4, #9]
	bl ov105_02245508
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	bne _02241CF0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov105_02244778
	b _02241F3A
_02241CF0:
	add r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241D06
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241D06:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov105_02244778
	b _02241F3A
_02241D12:
	add r0, r4, #0
	bl ov105_022457C0
	add r0, r4, #0
	bl ov105_02242D04
	cmp r0, #1
	bne _02241E02
	ldrb r0, [r4, #9]
	bl ov105_02245508
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	bne _02241D3A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241D3A:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #5
	bl ov105_02244778
	b _02241F3A
_02241D46:
	add r0, r4, #0
	bl ov105_02243144
	cmp r0, #1
	bne _02241E02
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov105_02244778
	b _02241F3A
_02241D5C:
	add r0, r4, #0
	bl ov105_022434BC
	cmp r0, #1
	bne _02241E02
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02241D7C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov105_02244778
	b _02241F3A
_02241D7C:
	add r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241D9A
	add r0, r4, #0
	mov r1, #0
	bl ov105_02245528
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #7
	bl ov105_02244778
	b _02241F3A
_02241D9A:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xa
	bl ov105_02244778
	b _02241F3A
_02241DA6:
	add r0, r4, #0
	bl ov105_02243818
	cmp r0, #1
	bne _02241E02
	add r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241DCE
	add r0, r4, #0
	mov r1, #0
	bl ov105_02245528
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #6
	bl ov105_02244778
	b _02241F3A
_02241DCE:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02241DEC
	ldrb r1, [r4, #0x13]
	mov r0, #8
	mov r2, #0xb
	bic r1, r0
	strb r1, [r4, #0x13]
	add r0, r4, #0
	add r1, r5, #0
	bl ov105_02244778
	b _02241F3A
_02241DEC:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241DF8:
	add r0, r4, #0
	bl ov105_02243A3C
	cmp r0, #1
	beq _02241E04
_02241E02:
	b _02241F3A
_02241E04:
	add r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241E22
	add r0, r4, #0
	mov r1, #0
	bl ov105_02245528
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #9
	bl ov105_02244778
	b _02241F3A
_02241E22:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _02241E34
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xa
	bl ov105_02244778
	b _02241F3A
_02241E34:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02241E4A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xb
	bl ov105_02244778
	b _02241F3A
_02241E4A:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241E56:
	add r0, r4, #0
	bl ov105_02243E84
	cmp r0, #1
	bne _02241F3A
	add r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241E7E
	add r0, r4, #0
	mov r1, #0
	bl ov105_02245528
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl ov105_02244778
	b _02241F3A
_02241E7E:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02241E9C
	ldrb r1, [r4, #0x13]
	mov r0, #8
	mov r2, #0xb
	bic r1, r0
	strb r1, [r4, #0x13]
	add r0, r4, #0
	add r1, r5, #0
	bl ov105_02244778
	b _02241F3A
_02241E9C:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241EA8:
	add r0, r4, #0
	bl ov105_0224400C
	cmp r0, #1
	bne _02241F3A
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _02241ECA
	add r0, r4, #0
	bl ov105_022424CC
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #6
	bl ov105_02244778
	b _02241F3A
_02241ECA:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl ov105_02244778
	b _02241F3A
_02241ED6:
	add r0, r4, #0
	bl ov105_0224435C
	cmp r0, #1
	bne _02241F3A
	mov r0, #0x35
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	cmp r0, #1
	bne _02241EF6
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xe
	bl ov105_02244778
	b _02241F3A
_02241EF6:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xc
	bl ov105_02244778
	b _02241F3A
_02241F02:
	add r0, r4, #0
	bl ov105_0224439C
	cmp r0, #1
	bne _02241F3A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241F18:
	add r0, r4, #0
	bl ov105_022443DC
	cmp r0, #1
	bne _02241F3A
	mov r0, #1
	pop {r3, r4, r5, pc}
_02241F26:
	add r0, r4, #0
	bl ov105_02244424
	cmp r0, #1
	bne _02241F3A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xc
	bl ov105_02244778
_02241F3A:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02245D50
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov105_02241BD8

	thumb_func_start ov105_02241F54
ov105_02241F54: ; 0x02241F54
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	mov r1, #0
	add r4, r0, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02241F96
	ldrb r0, [r4, #9]
	mov r7, #0
	bl ov105_02245508
	cmp r0, #0
	ble _02241FCA
	add r6, r4, #0
	add r5, r7, #0
_02241F78:
	mov r0, #0xb
	lsl r0, r0, #6
	ldrh r1, [r6, r0]
	add r0, #0xc
	ldr r0, [r4, r0]
	add r6, r6, #2
	strh r1, [r0, r5]
	ldrb r0, [r4, #9]
	add r5, r5, #2
	add r7, r7, #1
	bl ov105_02245508
	cmp r7, r0
	blt _02241F78
	b _02241FCA
_02241F96:
	mov r7, #0xb
	lsl r7, r7, #6
	mov r6, #0
	add r0, r7, #0
	add r3, r4, #0
	add r5, r6, #0
	add r0, #0xc
_02241FA4:
	ldrh r2, [r3, r7]
	ldr r1, [r4, r0]
	add r6, r6, #1
	strh r2, [r1, r5]
	add r3, r3, #2
	add r5, r5, #2
	cmp r6, #2
	blt _02241FA4
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _02241FCA
	mov r0, #0xb3
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #0xff
	strh r2, [r1]
	ldr r0, [r4, r0]
	strh r2, [r0, #2]
_02241FCA:
	add r0, r4, #0
	bl ov105_022451B4
	ldr r0, [sp]
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x5d
	bl sub_0201807C
	ldr r0, _02241FF0 ; =0x00000068
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241FF0: .word 0x00000068
	thumb_func_end ov105_02241F54

	thumb_func_start ov105_02241FF4
ov105_02241FF4: ; 0x02241FF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #6
	bhi _022420CA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224200C: ; jump table
	.short _0224201A - _0224200C - 2 ; case 0
	.short _02242036 - _0224200C - 2 ; case 1
	.short _0224205E - _0224200C - 2 ; case 2
	.short _022420C2 - _0224200C - 2 ; case 3
	.short _022420DE - _0224200C - 2 ; case 4
	.short _0224212C - _0224200C - 2 ; case 5
	.short _0224214C - _0224200C - 2 ; case 6
_0224201A:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _0224202E
	bl sub_020365F4
	mov r0, #0xed
	bl sub_020364F0
_0224202E:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_02242036:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02242056
	mov r0, #0xed
	bl sub_02036540
	cmp r0, #1
	bne _022420CA
	bl sub_020365F4
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_02242056:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_0224205E:
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _02242086
	mov r7, #0x29
	add r5, r4, #0
	lsl r7, r7, #4
_0224206C:
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov105_02245F2C
	ldr r0, [r5, r7]
	bl ov105_02245F5C
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0224206C
_02242086:
	mov r3, #0x42
	ldr r0, [r4, #0x4c]
	mov r1, #2
	mov r2, #0
	lsl r3, r3, #2
	bl sub_02019184
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x5d
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_022420C2:
	bl sub_0200F2AC
	cmp r0, #0
	bne _022420CC
_022420CA:
	b _022421DC
_022420CC:
	ldr r0, _022421E4 ; =0x00000612
	bl sub_02005748
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_022420DE:
	bl ov105_02244780
	cmp r0, #1
	bne _022421DC
	ldr r0, _022421E4 ; =0x00000612
	mov r1, #0
	bl sub_020057A4
	ldr r0, _022421E8 ; =0x00000679
	bl sub_02005748
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _02242114
	mov r7, #0x29
	add r5, r4, #0
	lsl r7, r7, #4
_02242102:
	ldr r0, [r5, r7]
	mov r1, #0xa
	bl ov105_02245F90
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02242102
_02242114:
	add r0, r4, #0
	mov r1, #0
	bl ov105_02244924
	mov r0, #8
	str r0, [r4, #0x14]
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_0224212C:
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _022421DC
	add r0, r4, #0
	bl ov105_02245A30
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_0224214C:
	ldrb r1, [r4, #0x19]
	cmp r1, #0
	bne _0224219C
	mov r1, #3
	bl ov105_02244B90
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, _022421EC ; =0x0000FFFF
	mov r1, #0x10
	str r0, [sp]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0
	mov r3, #1
	bl sub_0200872C
_0224219C:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020087B4
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	blo _022421DC
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
	mov r0, #0
	strb r0, [r4, #0x19]
	add r0, r4, #0
	bl ov105_02245A64
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022421DC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022421E4: .word 0x00000612
_022421E8: .word 0x00000679
_022421EC: .word 0x0000FFFF
	thumb_func_end ov105_02241FF4

	thumb_func_start ov105_022421F0
ov105_022421F0: ; 0x022421F0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02242202
	cmp r1, #1
	beq _02242266
	b _02242274
_02242202:
	mov r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02242214
	add r0, r4, #0
	bl ov105_0224227C
	b _0224221A
_02242214:
	add r0, r4, #0
	bl ov105_022424CC
_0224221A:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02242234
	mov r2, #0
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x60
	add r3, r2, #0
	str r2, [sp]
	bl ov105_02244F84
_02242234:
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02242256
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x5d
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
_02242256:
	ldrb r1, [r4, #0x13]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242274
_02242266:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02242274
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02242274:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov105_022421F0

	thumb_func_start ov105_0224227C
ov105_0224227C: ; 0x0224227C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldrb r0, [r5, #9]
	bl ov104_0223AA50
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #0
	bl ov105_02245528
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _0224245C ; =0x02246394
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r3, [sp, #8]
	bl ov105_02245FB8
	mov r1, #0xaa
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r2, #0
	add r1, r5, #0
	str r2, [sp]
	add r0, r5, #0
	add r1, #0x50
	add r3, r2, #0
	bl ov105_02244F0C
	ldrb r0, [r5, #0x11]
	mov r6, #0
	cmp r0, #0
	ble _02242354
	add r7, r5, #0
	add r4, r5, #0
	add r7, #0x50
_022422D8:
	mov r0, #0xb
	lsl r0, r0, #6
	ldrh r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F44
	mov r0, #0xb
	lsl r0, r0, #6
	ldrh r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov105_02245FAC
	mov r0, #0xb
	lsl r0, r0, #6
	ldrh r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #7
	bl ov105_02245F90
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0xb
	str r0, [sp, #0x14]
	lsl r2, r2, #6
	ldrh r2, [r4, r2]
	add r1, r6, #2
	lsl r1, r1, #4
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r7, r1
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov105_02244FF8
	ldrb r0, [r5, #0x11]
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r0
	blt _022422D8
_02242354:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0xae
	add r1, r5, #0
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x50
	str r0, [sp, #0x14]
	ldrb r4, [r5, #0x11]
	add r0, r5, #0
	add r4, r4, #2
	lsl r4, r4, #4
	add r1, r1, r4
	bl ov105_02244FF8
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xa0
	bl ov105_0224628C
	ldrb r2, [r5, #0x11]
	add r0, r5, #0
	mov r1, #0
	add r2, r2, #1
	bl ov105_02244EE8
	add r0, r5, #0
	mov r1, #0
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02242458
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov105_022461A4
	add r0, r5, #0
	bl ov105_02244DF0
	mov r1, #0
	ldr r0, _02242460 ; =0x02246308
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x51
	str r1, [sp, #8]
	lsl r0, r0, #2
	mov r1, #3
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #1
	bl ov105_02245FB8
	mov r1, #0xab
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _02242458
	ldr r0, [sp, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _02242458
	add r7, r5, #0
	add r6, r5, #0
	add r7, #0x50
_02242404:
	add r0, r4, #0
	add r0, #8
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, r7, r0
	mov r1, #0
	bl sub_0201ADA4
	ldrb r0, [r5, #0x18]
	cmp r4, r0
	bge _02242446
	mov r0, #0xf
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02242464 ; =0x00000352
	ldr r1, [sp, #0x1c]
	ldrh r0, [r6, r0]
	mov r2, #0
	add r1, r7, r1
	str r0, [sp, #0x10]
	ldr r0, _02242468 ; =0x00000356
	add r3, r2, #0
	ldrh r0, [r6, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov105_022450DC
_02242446:
	ldr r0, [sp, #0x1c]
	add r0, r7, r0
	bl sub_0201A9A4
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blt _02242404
_02242458:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224245C: .word 0x02246394
_02242460: .word 0x02246308
_02242464: .word 0x00000352
_02242468: .word 0x00000356
	thumb_func_end ov105_0224227C

	thumb_func_start ov105_0224246C
ov105_0224246C: ; 0x0224246C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #0x12]
	mov r4, #0
	cmp r0, #0
	ble _0224249E
	mov r7, #0x29
	add r5, r6, #0
	lsl r7, r7, #4
_0224247E:
	add r0, r6, #0
	add r1, r4, #0
	bl ov105_02245934
	mov r1, #0x29
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r7]
	mov r1, #1
	bl ov105_02245EBC
	ldrb r0, [r6, #0x12]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0224247E
_0224249E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_0224246C

	thumb_func_start ov105_022424A0
ov105_022424A0: ; 0x022424A0
	push {r4, lr}
	sub sp, #8
	mov r1, #0xae
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x18
	ldr r1, [r4, r1]
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	mov r1, #0
	add r0, r4, #0
	mov r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_022424A0

	thumb_func_start ov105_022424CC
ov105_022424CC: ; 0x022424CC
	push {r4, lr}
	sub sp, #0x18
	mov r1, #0
	add r4, r0, #0
	bl ov105_02245528
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xa0
	bl ov105_0224628C
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _0224251C
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r2, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _022425F8 ; =0x02246340
	mov r3, #2
	str r0, [sp, #4]
	ldr r0, _022425FC ; =0x022462D0
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldrb r1, [r4, #0x1a]
	add r0, r4, r0
	bl ov105_02245FB8
	b _02242540
_0224251C:
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _02242600 ; =0x022462FC
	add r3, r2, #0
	str r0, [sp, #4]
	ldr r0, _02242604 ; =0x022462CC
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldrb r1, [r4, #0x1a]
	add r0, r4, r0
	bl ov105_02245FB8
_02242540:
	mov r1, #0xaa
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #0
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	add r3, r2, #0
	str r2, [sp]
	bl ov105_02244F0C
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	mov r3, #0
	add r2, r0, #0
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0xae
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, #0x70
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov105_02244FF8
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0xc0
	bl ov105_02246260
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x13
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xc0
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #9
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022425F4
	add r0, r4, #0
	bl ov105_02244DF0
	mov r1, #0
	ldr r0, _02242608 ; =0x02246308
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x51
	str r1, [sp, #8]
	lsl r0, r0, #2
	mov r1, #3
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #1
	bl ov105_02245FB8
	mov r1, #0xab
	lsl r1, r1, #2
	str r0, [r4, r1]
_022425F4:
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_022425F8: .word 0x02246340
_022425FC: .word 0x022462D0
_02242600: .word 0x022462FC
_02242604: .word 0x022462CC
_02242608: .word 0x02246308
	thumb_func_end ov105_022424CC

	thumb_func_start ov105_0224260C
ov105_0224260C: ; 0x0224260C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _02242668
	mov r7, #0x29
	add r4, r5, #0
	lsl r7, r7, #4
_0224261E:
	add r0, r5, #0
	add r1, r6, #0
	bl ov105_02245934
	mov r1, #0x29
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r7]
	mov r1, #1
	bl ov105_02245EBC
	ldrb r0, [r5, #0x13]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0224265E
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F44
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov105_02245FAC
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #6
	bl ov105_02245F90
_0224265E:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0224261E
_02242668:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov105_0224260C

	thumb_func_start ov105_0224266C
ov105_0224266C: ; 0x0224266C
	push {r4, lr}
	sub sp, #8
	mov r1, #0xae
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x18
	ldr r1, [r4, r1]
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x78
	bl ov105_022455C4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov105_0224266C

	thumb_func_start ov105_02242698
ov105_02242698: ; 0x02242698
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _022426DC
	ldr r0, [r4, #4]
	bl sub_02006844
	cmp r0, #1
	bne _022426DC
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	ldrb r2, [r0, #0x14]
	mov r0, #0x2d
	lsl r0, r0, #4
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov105_022452A0
	ldrb r1, [r4, #0x13]
	mov r0, #0x40
	bic r1, r0
	strb r1, [r4, #0x13]
	mov r0, #1
	pop {r4, pc}
_022426DC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov105_02242698

	thumb_func_start ov105_022426E0
ov105_022426E0: ; 0x022426E0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #5
	bls _022426EE
	b _02242956
_022426EE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022426FA: ; jump table
	.short _02242706 - _022426FA - 2 ; case 0
	.short _02242720 - _022426FA - 2 ; case 1
	.short _022427D4 - _022426FA - 2 ; case 2
	.short _0224290C - _022426FA - 2 ; case 3
	.short _0224293E - _022426FA - 2 ; case 4
	.short _0224294A - _022426FA - 2 ; case 5
_02242706:
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02242712
	mov r0, #1
	b _02242714
_02242712:
	mov r0, #2
_02242714:
	strb r0, [r4, #8]
	ldrb r1, [r4, #0x13]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x13]
	b _02242956
_02242720:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	ldr r0, _0224295C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x30
	tst r0, r1
	beq _02242758
	ldr r0, _02242960 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	add r2, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r3, #0
	str r0, [sp]
	ldrb r1, [r4, #0x11]
	add r0, r4, #0
	bl ov105_022453F8
_02242758:
	ldr r0, _0224295C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _022427A2
	ldr r0, _02242960 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov105_022461A4
	add r0, r4, #0
	bl ov105_02244DF0
	mov r1, #0
	ldr r0, _02242964 ; =0x02246308
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x51
	str r1, [sp, #8]
	lsl r0, r0, #2
	mov r1, #3
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #1
	bl ov105_02245FB8
	mov r1, #0xab
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242956
_022427A2:
	mov r0, #2
	tst r0, r1
	beq _02242814
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _02242814
	ldr r0, _02242960 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov105_0224296C
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _022427CE
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov105_02245620
_022427CE:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_022427D4:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	bl sub_02001BE0
	add r5, r0, #0
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0224280C
	bhs _022428D2
	cmp r5, #3
	bhi _022428D2
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242804: ; jump table
	.short _02242818 - _02242804 - 2 ; case 0
	.short _02242866 - _02242804 - 2 ; case 1
	.short _022428D2 - _02242804 - 2 ; case 2
	.short _0224289C - _02242804 - 2 ; case 3
_0224280C:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _02242816
_02242814:
	b _02242956
_02242816:
	b _022428D2
_02242818:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r1, #0xab
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r2, [r4, #0x13]
	mov r1, #0x40
	add r3, r0, #0
	orr r1, r2
	strb r1, [r4, #0x13]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0x5d
	str r1, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242956
_02242866:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	add r0, r4, #0
	bl ov105_02242A58
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02242896
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov105_02245620
_02242896:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224289C:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	add r0, r4, #0
	bl ov105_02242B54
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _022428CC
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov105_02245620
_022428CC:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_022428D2:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov105_022461A4
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224290C:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02242956
	add r0, r4, #0
	bl ov105_02245464
	add r0, r4, #0
	bl ov105_022451B4
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, _02242968 ; =0x020F410C
	ldr r1, [r4, r1]
	mov r2, #0x5d
	bl sub_020067E8
	str r0, [r4, #4]
	ldrb r1, [r4, #0x13]
	mov r0, #2
	add sp, #0xc
	orr r0, r1
	strb r0, [r4, #0x13]
	mov r0, #1
	pop {r4, r5, pc}
_0224293E:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02242956
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224294A:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02242956
	mov r0, #2
	strb r0, [r4, #8]
_02242956:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224295C: .word 0x021BF67C
_02242960: .word 0x000005DC
_02242964: .word 0x02246308
_02242968: .word 0x020F410C
	thumb_func_end ov105_022426E0

	thumb_func_start ov105_0224296C
ov105_0224296C: ; 0x0224296C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r0, [r4, #0x11]
	add r1, r4, #0
	add r1, #0x50
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldrb r0, [r4, #0x11]
	add r1, r4, #0
	add r1, #0x50
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	ldrb r0, [r4, #0x11]
	add r1, r4, #0
	add r1, #0x50
	sub r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	mov r3, #0
	add r2, r0, #0
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0xae
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, #0x50
	str r0, [sp, #0x14]
	ldrb r5, [r4, #0x11]
	add r0, r4, #0
	add r5, r5, #2
	lsl r5, r5, #4
	add r1, r1, r5
	bl ov105_02244FF8
	ldrb r2, [r4, #0x11]
	add r0, r4, #0
	mov r1, #0
	add r2, r2, #1
	bl ov105_02244EE8
	add r0, r4, #0
	mov r1, #0
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xb
	lsl r0, r0, #6
	ldrh r1, [r1, r0]
	sub r0, #0x30
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	bl ov105_02245F50
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xb
	lsl r0, r0, #6
	ldrh r1, [r1, r0]
	sub r0, #0x30
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov105_02245FAC
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xb
	lsl r0, r0, #6
	ldrh r1, [r1, r0]
	sub r0, #0x30
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	mov r1, #6
	bl ov105_02245F90
	ldrb r0, [r4, #0x11]
	mov r2, #0
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xb
	lsl r0, r0, #6
	strh r2, [r1, r0]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov105_0224296C

	thumb_func_start ov105_02242A58
ov105_02242A58: ; 0x02242A58
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F44
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov105_02245FAC
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #7
	bl ov105_02245F90
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x11]
	lsl r1, r1, #1
	add r2, r4, r1
	mov r1, #0xb
	lsl r1, r1, #6
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #9]
	bl ov105_02245508
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	bne _02242AE8
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	add sp, #0x18
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02242AE8:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov105_022461A4
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_022461A0
	mov r3, #0
	add r2, r0, #0
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0xae
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, #0x50
	str r0, [sp, #0x14]
	ldrb r5, [r4, #0x11]
	add r0, r4, #0
	add r5, r5, #2
	lsl r5, r5, #4
	add r1, r1, r5
	bl ov105_02244FF8
	ldrb r2, [r4, #0x11]
	add r0, r4, #0
	mov r1, #0
	add r2, r2, #1
	bl ov105_02244EE8
	add r0, r4, #0
	mov r1, #0
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02242A58

	thumb_func_start ov105_02242B54
ov105_02242B54: ; 0x02242B54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F50
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov105_02245FAC
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #6
	bl ov105_02245F90
	ldrb r0, [r5, #0x11]
	cmp r0, #2
	blo _02242BF8
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	mov r1, #0xb
	lsl r1, r1, #6
	ldrh r2, [r5, r1]
	cmp r2, r0
	bne _02242BF8
	add r0, r1, #2
	ldrh r0, [r5, r0]
	strh r0, [r5, r1]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02007DC8
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	add r1, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	mov r1, #0
	add r0, r5, #0
	mov r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
_02242BF8:
	ldrb r0, [r5, #0x11]
	mov r1, #0
	sub r0, r0, #1
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x11]
	lsl r0, r0, #1
	add r2, r5, r0
	mov r0, #0xb
	lsl r0, r0, #6
	strh r1, [r2, r0]
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl ov105_022461A4
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldrb r0, [r5, #9]
	bl ov105_02245508
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _02242C4A
	add r6, r5, #0
	add r6, #0x50
_02242C38:
	add r0, r4, #2
	lsl r0, r0, #4
	add r0, r6, r0
	mov r1, #0
	bl sub_0201ADA4
	add r4, r4, #1
	cmp r4, r7
	blt _02242C38
_02242C4A:
	ldrb r0, [r5, #0x11]
	mov r4, #0
	cmp r0, #0
	ble _02242C9A
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x50
	add r6, r5, #0
	str r0, [sp, #0x18]
_02242C5C:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xae
	add r1, r4, #2
	lsl r0, r0, #2
	lsl r2, r1, #4
	ldr r1, [sp, #0x18]
	ldr r0, [r5, r0]
	add r1, r1, r2
	mov r2, #0xb
	str r0, [sp, #0x14]
	lsl r2, r2, #6
	ldrh r2, [r6, r2]
	add r0, r5, #0
	mov r3, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov105_02244FF8
	ldrb r0, [r5, #0x11]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blt _02242C5C
_02242C9A:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0xae
	add r1, r5, #0
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x50
	str r0, [sp, #0x14]
	ldrb r4, [r5, #0x11]
	add r0, r5, #0
	add r4, r4, #2
	lsl r4, r4, #4
	add r1, r1, r4
	bl ov105_02244FF8
	mov r4, #0
	cmp r7, #0
	ble _02242CEA
	add r6, r5, #0
	add r6, #0x50
_02242CDA:
	add r0, r4, #2
	lsl r0, r0, #4
	add r0, r6, r0
	bl sub_0201A9A4
	add r4, r4, #1
	cmp r4, r7
	blt _02242CDA
_02242CEA:
	ldrb r2, [r5, #0x11]
	add r0, r5, #0
	mov r1, #0
	add r2, r2, #1
	bl ov105_02244EE8
	add r0, r5, #0
	mov r1, #0
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov105_02242B54

	thumb_func_start ov105_02242D04
ov105_02242D04: ; 0x02242D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov104_0223AA50
	str r0, [sp, #0xc]
	ldrb r0, [r4, #8]
	cmp r0, #7
	bls _02242D1A
	b _0224313C
_02242D1A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242D26: ; jump table
	.short _02242D36 - _02242D26 - 2 ; case 0
	.short _02242DD4 - _02242D26 - 2 ; case 1
	.short _02242E24 - _02242D26 - 2 ; case 2
	.short _02242EC0 - _02242D26 - 2 ; case 3
	.short _02242EE0 - _02242D26 - 2 ; case 4
	.short _02243020 - _02242D26 - 2 ; case 5
	.short _022430EE - _02242D26 - 2 ; case 6
	.short _02243128 - _02242D26 - 2 ; case 7
_02242D36:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov105_02246074
	ldrb r1, [r4, #0x13]
	mov r0, #0x20
	orr r0, r1
	strb r0, [r4, #0x13]
	add r0, r4, #0
	add r0, #0x60
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xd0
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xe0
	bl sub_0201ACF4
	ldrb r0, [r4, #0x11]
	mov r5, #0
	cmp r0, #0
	ble _02242D88
	add r6, r4, #0
	add r6, #0x50
_02242D6E:
	add r0, r5, #2
	lsl r7, r0, #4
	add r0, r6, r7
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, r7
	bl sub_0201A9A4
	ldrb r0, [r4, #0x11]
	add r5, r5, #1
	cmp r5, r0
	blt _02242D6E
_02242D88:
	add r0, r4, #0
	add r0, #0x50
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x50
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
	ldr r0, _02243084 ; =0x0000FFFF
	mov r1, #0
	str r0, [sp]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02242DD4:
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	blo _02242E3C
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	add r0, r4, #0
	mov r1, #1
	bl ov105_02244924
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
	add r0, r4, #0
	mov r1, #3
	bl ov105_02244BE4
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02242E24:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020087B4
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	bne _02242E3E
_02242E3C:
	b _0224313C
_02242E3E:
	add r0, r4, #0
	bl ov105_02245A30
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007DC8
	mov r0, #0x2c
	str r0, [sp, #0x14]
	mov r0, #0x80
	str r0, [sp, #0x18]
	mov r0, #0xd4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _02242EB0
	add r6, sp, #0x14
	str r4, [sp, #0x10]
	add r7, r4, #0
_02242E68:
	mov r1, #0xb
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r2, [sp, #0x10]
	lsl r1, r1, #6
	ldrh r1, [r2, r1]
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r1, r5, #0x18
	ldr r3, [r6, #0]
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov105_022455C4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	add r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r7, r7, #4
	cmp r5, r0
	blt _02242E68
_02242EB0:
	add r0, r4, #0
	mov r1, #4
	bl ov105_02244924
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02242EC0:
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _02242F7A
	add r0, r4, #0
	bl ov105_02245A30
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02242EE0:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _02242F64
	add r0, r4, #0
	mov r1, #3
	bl ov105_02244C0C
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _02242F10
	mov r7, #0x4b
	add r5, r4, #0
	lsl r7, r7, #2
_02242EFC:
	ldr r0, [r5, r7]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02242EFC
_02242F10:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _02242F36
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x20
	bl ov105_022448F4
	b _02242F50
_02242F36:
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
_02242F50:
	ldr r0, _02243084 ; =0x0000FFFF
	mov r1, #0x10
	str r0, [sp]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0
	mov r3, #1
	bl sub_0200872C
_02242F64:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020087B4
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #0x15
	bhs _02242F7C
_02242F7A:
	b _0224313C
_02242F7C:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _02242FA2
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x20
	bl ov105_022448F4
	b _02242FBC
_02242FA2:
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
_02242FBC:
	ldrb r1, [r4, #0x13]
	mov r0, #0x20
	bic r1, r0
	strb r1, [r4, #0x13]
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02242FDA
	ldr r0, _02243088 ; =0x0000035B
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov105_022457C0
_02242FDA:
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl ov105_02244EE8
	add r0, r4, #0
	mov r1, #1
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	add r0, r4, #0
	bl ov105_02244E94
	mov r1, #0
	ldr r0, _0224308C ; =0x022462F4
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x51
	str r1, [sp, #8]
	lsl r0, r0, #2
	mov r1, #2
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #1
	bl ov105_02245FB8
	mov r1, #0xab
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02243020:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	bl sub_02001BE0
	add r5, r0, #0
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0224304C
	bhs _02243090
	cmp r5, #1
	bhi _02243090
	cmp r5, #0
	beq _02243054
	cmp r5, #1
	b _02243090
_0224304C:
	add r0, r0, #1
	cmp r5, r0
	beq _0224313C
	b _02243090
_02243054:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
	; .align 2, 0
_02243084: .word 0x0000FFFF
_02243088: .word 0x0000035B
_0224308C: .word 0x022462F4
_02243090:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov105_02246074
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r1, #0xab
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r2, [r4, #0x11]
	add r1, #0x14
	sub r2, r2, #1
	strb r2, [r4, #0x11]
	ldrb r2, [r4, #0x11]
	lsl r2, r2, #1
	add r2, r4, r2
	strh r0, [r2, r1]
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _022430E8
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov105_02245620
_022430E8:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022430EE:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _022430FE
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022430FE:
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl ov105_02245620
	cmp r0, #1
	bne _0224313C
	add r0, r4, #0
	mov r1, #2
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	bl sub_020365F4
	mov r0, #0xa4
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02243128:
	mov r0, #0xa4
	bl sub_02036540
	cmp r0, #1
	bne _0224313C
	bl sub_020365F4
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224313C:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov105_02242D04

	thumb_func_start ov105_02243144
ov105_02243144: ; 0x02243144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov104_0223AA50
	add r7, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bls _0224315A
	b _0224339C
_0224315A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02243166: ; jump table
	.short _02243170 - _02243166 - 2 ; case 0
	.short _022431F0 - _02243166 - 2 ; case 1
	.short _02243272 - _02243166 - 2 ; case 2
	.short _022432D8 - _02243166 - 2 ; case 3
	.short _022432F8 - _02243166 - 2 ; case 4
_02243170:
	ldrb r1, [r4, #0x13]
	mov r0, #0x20
	orr r0, r1
	strb r0, [r4, #0x13]
	add r0, r4, #0
	add r0, #0x60
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xd0
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xe0
	bl sub_0201ACF4
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _022431B6
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x20
	bl ov105_022448F4
	b _022431D0
_022431B6:
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
_022431D0:
	ldr r0, _022433A4 ; =0x0000FFFF
	mov r1, #0
	str r0, [sp]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224339C
_022431F0:
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	blo _0224328A
	mov r6, #0
	cmp r7, #0
	ble _02243216
	add r5, r4, #0
_02243204:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02007DC8
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blt _02243204
_02243216:
	add r0, r4, #0
	mov r1, #5
	bl ov105_02244924
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _02243244
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x20
	bl ov105_022448F4
	b _0224325E
_02243244:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
_0224325E:
	add r0, r4, #0
	mov r1, #3
	bl ov105_02244BE4
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224339C
_02243272:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020087B4
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	bne _0224328C
_0224328A:
	b _0224339C
_0224328C:
	add r0, r4, #0
	bl ov105_02245A30
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	add r1, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	mov r1, #0
	add r0, r4, #0
	mov r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	add r0, r4, #0
	mov r1, #0
	bl ov105_02244924
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224339C
_022432D8:
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _0224339C
	add r0, r4, #0
	bl ov105_02245A30
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224339C
_022432F8:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _02243342
	add r0, r4, #0
	mov r1, #3
	bl ov105_02244B90
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
	ldr r0, _022433A4 ; =0x0000FFFF
	mov r1, #0x10
	str r0, [sp]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0
	mov r3, #1
	bl sub_0200872C
_02243342:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020087B4
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #0x15
	blo _0224339C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
	ldrb r1, [r4, #0x13]
	mov r0, #0x20
	bic r1, r0
	strb r1, [r4, #0x13]
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02243390
	ldr r0, _022433A8 ; =0x0000035B
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov105_022457C0
_02243390:
	add r0, r4, #0
	bl ov105_022433AC
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224339C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022433A4: .word 0x0000FFFF
_022433A8: .word 0x0000035B
	thumb_func_end ov105_02243144

	thumb_func_start ov105_022433AC
ov105_022433AC: ; 0x022433AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrb r0, [r5, #9]
	bl ov104_0223AA50
	ldrb r0, [r5, #0x11]
	mov r4, #0
	cmp r0, #0
	ble _02243402
	add r7, r5, #0
	add r6, r5, #0
	add r7, #0x50
_022433C6:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0xb
	str r0, [sp, #0x14]
	lsl r2, r2, #6
	ldrh r2, [r6, r2]
	add r1, r4, #2
	lsl r1, r1, #4
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r7, r1
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov105_02244FF8
	ldrb r0, [r5, #0x11]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blt _022433C6
_02243402:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	mov r3, #0
	add r2, r0, #0
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0xae
	add r1, r5, #0
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x50
	str r0, [sp, #0x14]
	ldrb r4, [r5, #0x11]
	add r0, r5, #0
	add r4, r4, #2
	lsl r4, r4, #4
	add r1, r1, r4
	bl ov105_02244FF8
	mov r2, #0
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	add r3, r2, #0
	str r2, [sp]
	bl ov105_02244F0C
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov105_022461A4
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F50
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov105_02245FAC
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #6
	bl ov105_02245F90
	ldrb r2, [r5, #0x11]
	add r0, r5, #0
	mov r1, #0
	add r2, r2, #1
	bl ov105_02244EE8
	add r0, r5, #0
	mov r1, #0
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov105_022433AC

	thumb_func_start ov105_022434BC
ov105_022434BC: ; 0x022434BC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #5
	bls _022434CA
	b _02243722
_022434CA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022434D6: ; jump table
	.short _022434E2 - _022434D6 - 2 ; case 0
	.short _02243502 - _022434D6 - 2 ; case 1
	.short _022435BE - _022434D6 - 2 ; case 2
	.short _022436D8 - _022434D6 - 2 ; case 3
	.short _0224370A - _022434D6 - 2 ; case 4
	.short _02243716 - _022434D6 - 2 ; case 5
_022434E2:
	mov r1, #0
	bl ov105_02245528
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _022434F4
	mov r0, #1
	b _022434F6
_022434F4:
	mov r0, #2
_022434F6:
	strb r0, [r4, #8]
	ldrb r1, [r4, #0x13]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x13]
	b _02243722
_02243502:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	ldr r0, _02243728 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xf0
	tst r0, r1
	beq _0224353A
	ldr r0, _0224372C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	add r2, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r3, #1
	str r0, [sp]
	ldrb r1, [r4, #0x11]
	add r0, r4, #0
	bl ov105_022453F8
_0224353A:
	ldr r0, _02243728 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _022435A4
	ldr r0, _0224372C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x1a]
	sub r1, r1, #1
	cmp r1, r0
	bne _0224356A
	add r0, r4, #0
	mov r1, #1
	bl ov105_02245528
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224356A:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov105_022461A4
	add r0, r4, #0
	bl ov105_02244DF0
	mov r1, #0
	ldr r0, _02243730 ; =0x02246308
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x51
	str r1, [sp, #8]
	lsl r0, r0, #2
	mov r1, #3
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #1
	bl ov105_02245FB8
	mov r1, #0xab
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243722
_022435A4:
	mov r0, #2
	tst r0, r1
	beq _022435F4
	ldr r0, _0224372C ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	bl ov105_02245528
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_022435BE:
	add r0, #0xfc
	ldr r0, [r0, #0]
	bl sub_02001BE0
	add r5, r0, #0
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _022435EE
	bhs _02243668
	cmp r5, #4
	bhi _02243668
	cmp r5, #0
	beq _022435F8
	cmp r5, #2
	beq _02243668
	cmp r5, #4
	beq _02243646
	b _02243668
_022435EE:
	add r0, r0, #1
	cmp r5, r0
	bne _022435F6
_022435F4:
	b _02243722
_022435F6:
	b _02243668
_022435F8:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r1, #0xab
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r2, [r4, #0x13]
	mov r1, #0x40
	add r3, r0, #0
	orr r1, r2
	strb r1, [r4, #0x13]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0x5d
	str r1, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243722
_02243646:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	add r0, r4, #0
	bl ov105_02243738
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_02243668:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov105_022461A4
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0xc0
	bl ov105_02246260
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x13
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xc0
	bl sub_0201A9A4
	mov r0, #1
	strb r0, [r4, #8]
	b _02243722
_022436D8:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02243722
	add r0, r4, #0
	bl ov105_02245464
	add r0, r4, #0
	bl ov105_022451B4
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, _02243734 ; =0x020F410C
	ldr r1, [r4, r1]
	mov r2, #0x5d
	bl sub_020067E8
	str r0, [r4, #4]
	ldrb r1, [r4, #0x13]
	mov r0, #2
	add sp, #0x18
	orr r0, r1
	strb r0, [r4, #0x13]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224370A:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02243722
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_02243716:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02243722
	mov r0, #2
	strb r0, [r4, #8]
_02243722:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02243728: .word 0x021BF67C
_0224372C: .word 0x000005DC
_02243730: .word 0x02246308
_02243734: .word 0x020F410C
	thumb_func_end ov105_022434BC

	thumb_func_start ov105_02243738
ov105_02243738: ; 0x02243738
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F44
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov105_02245FAC
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #6
	bl ov105_02245F90
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	mov r3, #0
	add r2, r0, #0
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0xae
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, #0x50
	str r0, [sp, #0x14]
	ldrb r5, [r4, #0x11]
	add r0, r4, #0
	add r5, r5, #2
	lsl r5, r5, #4
	add r1, r1, r5
	bl ov105_02244FF8
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x11]
	lsl r1, r1, #1
	add r2, r4, r1
	mov r1, #0xb
	lsl r1, r1, #6
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x11]
	sub r1, #0x14
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldr r0, [r4, r1]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r0, #0xaa
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldrb r2, [r4, #0x13]
	mov r0, #4
	orr r0, r2
	strb r0, [r4, #0x13]
	add r0, r4, #0
	add r0, #0x70
	bl sub_0201ADA4
	add r4, #0x70
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02243738

	thumb_func_start ov105_02243818
ov105_02243818: ; 0x02243818
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02243830
	cmp r0, #1
	beq _022438A4
	cmp r0, #2
	bne _0224382E
	b _0224395A
_0224382E:
	b _02243960
_02243830:
	add r0, r5, #0
	add r0, #0x70
	mov r1, #0
	bl sub_0201ADA4
	ldrb r0, [r5, #0x11]
	add r1, r5, #0
	add r1, #0x50
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201A9A4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02007DC8
	add r0, r5, #0
	mov r1, #0xa
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov105_02246074
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov105_022461A4
	add r0, r5, #0
	bl ov105_02244E94
	mov r1, #0
	ldr r0, _02243968 ; =0x022462F4
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x51
	str r1, [sp, #8]
	lsl r0, r0, #2
	mov r1, #2
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #1
	bl ov105_02245FB8
	mov r1, #0xab
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
	b _02243960
_022438A4:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	bl sub_02001BE0
	add r4, r0, #0
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246080
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bhi _022438D0
	bhs _02243924
	cmp r4, #1
	bhi _02243924
	cmp r4, #0
	beq _022438D8
	cmp r4, #1
	b _02243924
_022438D0:
	add r0, r0, #1
	cmp r4, r0
	beq _02243960
	b _02243924
_022438D8:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldrb r1, [r5, #0x13]
	mov r0, #8
	bic r1, r0
	strb r1, [r5, #0x13]
	ldrb r0, [r5, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _0224391C
	add r0, r5, #0
	mov r1, #2
	bl ov105_02244D14
	strb r0, [r5, #0x10]
_0224391C:
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
	b _02243960
_02243924:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov105_0224396C
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
	b _02243960
_0224395A:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02243960:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02243968: .word 0x022462F4
	thumb_func_end ov105_02243818

	thumb_func_start ov105_0224396C
ov105_0224396C: ; 0x0224396C
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov105_022461C0
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	mov r3, #0
	add r2, r0, #0
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0xae
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, #0x70
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov105_02244FF8
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	add r1, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x78
	bl ov105_022455C4
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov105_02246074
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov105_022461A4
	add r0, r4, #0
	mov r1, #1
	bl ov105_02245528
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0xc0
	bl ov105_02246260
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x13
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xc0
	bl sub_0201A9A4
	add r0, r4, #0
	mov r1, #9
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_0224396C

	thumb_func_start ov105_02243A3C
ov105_02243A3C: ; 0x02243A3C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #3
	bls _02243A4A
	b _02243CFE
_02243A4A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02243A56: ; jump table
	.short _02243A5E - _02243A56 - 2 ; case 0
	.short _02243B58 - _02243A56 - 2 ; case 1
	.short _02243C6A - _02243A56 - 2 ; case 2
	.short _02243CF8 - _02243A56 - 2 ; case 3
_02243A5E:
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0xc0
	bl ov105_02246260
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x17
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r3, #1
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x18
	bl ov105_02244CC0
	strb r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xc0
	bl sub_0201A9A4
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _02243AE2
	mov r0, #0
	str r0, [sp]
	ldr r0, _02243D04 ; =0x02246350
	mov r2, #3
	str r0, [sp, #4]
	ldr r0, _02243D08 ; =0x022462D4
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldrb r1, [r4, #0x1b]
	add r0, r4, r0
	bl ov105_02245FB8
	b _02243AFE
_02243AE2:
	mov r0, #0
	str r0, [sp]
	ldr r0, _02243D0C ; =0x0224637C
	mov r2, #4
	str r0, [sp, #4]
	ldr r0, _02243D10 ; =0x022462E4
	mov r3, #2
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldrb r1, [r4, #0x1b]
	add r0, r4, r0
	bl ov105_02245FB8
_02243AFE:
	mov r1, #0xaa
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	mov r3, #0
	add r2, r0, #0
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0xaf
	str r3, [sp, #0x10]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, #0x70
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov105_02244FF8
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xa0
	bl ov105_0224628C
	add r0, r4, #0
	mov r1, #0xd
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243CFE
_02243B58:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	ldr r0, _02243D14 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xc0
	tst r0, r1
	beq _02243B90
	ldr r0, _02243D18 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	add r2, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r1, #0
	bl ov105_022453F8
_02243B90:
	ldr r0, _02243D14 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x30
	tst r0, r1
	beq _02243BBE
	ldr r0, _02243D18 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	add r2, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r1, #0
	bl ov105_022453F8
_02243BBE:
	ldr r0, _02243D14 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02243C50
	ldr r0, _02243D18 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x1b]
	sub r1, r1, #1
	cmp r1, r0
	bne _02243BEE
	add r0, r4, #0
	mov r1, #1
	bl ov105_02245528
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_02243BEE:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x1b]
	sub r1, r1, #2
	cmp r1, r0
	bne _02243C0C
	add r0, r4, #0
	bl ov105_02243D20
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_02243C0C:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov105_022461A4
	add r0, r4, #0
	bl ov105_02244E94
	mov r1, #0
	ldr r0, _02243D1C ; =0x022462F4
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x51
	str r1, [sp, #8]
	lsl r0, r0, #2
	mov r1, #2
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #1
	bl ov105_02245FB8
	mov r1, #0xab
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0xe
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243CFE
_02243C50:
	mov r0, #2
	tst r0, r1
	beq _02243CFE
	ldr r0, _02243D18 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	bl ov105_02245528
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_02243C6A:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	bl sub_02001BE0
	add r5, r0, #0
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _02243C96
	bhs _02243CD6
	cmp r5, #1
	bhi _02243CD6
	cmp r5, #0
	beq _02243C9E
	cmp r5, #1
	b _02243CD6
_02243C96:
	add r0, r0, #1
	cmp r5, r0
	beq _02243CFE
	b _02243CD6
_02243C9E:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	add r0, r4, #0
	bl ov105_02243D84
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02243CCE
	add r0, r4, #0
	mov r1, #2
	bl ov105_02244D14
	strb r0, [r4, #0x10]
_02243CCE:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243CFE
_02243CD6:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	add r0, r4, #0
	bl ov105_02243DE4
	mov r0, #1
	strb r0, [r4, #8]
	b _02243CFE
_02243CF8:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_02243CFE:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02243D04: .word 0x02246350
_02243D08: .word 0x022462D4
_02243D0C: .word 0x0224637C
_02243D10: .word 0x022462E4
_02243D14: .word 0x021BF67C
_02243D18: .word 0x000005DC
_02243D1C: .word 0x022462F4
	thumb_func_end ov105_02243A3C

	thumb_func_start ov105_02243D20
ov105_02243D20: ; 0x02243D20
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r0, #0xaa
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldrb r2, [r4, #0x13]
	mov r0, #4
	bic r2, r0
	add r0, r4, #0
	add r0, #0x70
	strb r2, [r4, #0x13]
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x70
	bl sub_0201A9A4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007DC8
	add r0, r4, #0
	add r0, #0xc0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0xc0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0xc0
	bl sub_0201AD10
	ldrb r0, [r4, #0x11]
	mov r1, #0
	sub r0, r0, #1
	strb r0, [r4, #0x11]
	mov r0, #0xb
	lsl r0, r0, #6
	strh r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov105_02243D20

	thumb_func_start ov105_02243D84
ov105_02243D84: ; 0x02243D84
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x13]
	mov r0, #8
	orr r0, r1
	strb r0, [r4, #0x13]
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x11]
	lsl r1, r1, #1
	add r2, r4, r1
	mov r1, #0xb
	lsl r1, r1, #6
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x11]
	sub r1, #0x14
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldr r0, [r4, r1]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02246074
	add r0, r4, #0
	add r0, #0x70
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x70
	bl sub_0201A9A4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007DC8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02243D84

	thumb_func_start ov105_02243DE4
ov105_02243DE4: ; 0x02243DE4
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_022461A4
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0xc0
	bl ov105_02246260
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x17
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r3, #1
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x18
	bl ov105_02244CC0
	strb r0, [r4, #0x10]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xa0
	bl ov105_0224628C
	add r0, r4, #0
	mov r1, #0xd
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	add r4, #0xc0
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02243DE4

	thumb_func_start ov105_02243E84
ov105_02243E84: ; 0x02243E84
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02243E9C
	cmp r0, #1
	beq _02243F10
	cmp r0, #2
	bne _02243E9A
	b _02243FCC
_02243E9A:
	b _02243FD2
_02243E9C:
	add r0, r5, #0
	add r0, #0x70
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x70
	bl sub_0201A9A4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02007DC8
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xa0
	bl ov105_0224628C
	add r0, r5, #0
	mov r1, #0xa
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov105_02246074
	add r0, r5, #0
	bl ov105_02244E94
	mov r1, #0
	ldr r0, _02243FD8 ; =0x022462F4
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x51
	str r1, [sp, #8]
	lsl r0, r0, #2
	mov r1, #2
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #1
	bl ov105_02245FB8
	mov r1, #0xab
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
	b _02243FD2
_02243F10:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	bl sub_02001BE0
	add r4, r0, #0
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246080
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bhi _02243F3C
	bhs _02243F90
	cmp r4, #1
	bhi _02243F90
	cmp r4, #0
	beq _02243F44
	cmp r4, #1
	b _02243F90
_02243F3C:
	add r0, r0, #1
	cmp r4, r0
	beq _02243FD2
	b _02243F90
_02243F44:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldrb r1, [r5, #0x13]
	mov r0, #8
	bic r1, r0
	strb r1, [r5, #0x13]
	ldrb r0, [r5, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _02243F88
	add r0, r5, #0
	mov r1, #2
	bl ov105_02244D14
	strb r0, [r5, #0x10]
_02243F88:
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
	b _02243FD2
_02243F90:
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	mov r0, #0xaa
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov105_02243FDC
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
	b _02243FD2
_02243FCC:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02243FD2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02243FD8: .word 0x022462F4
	thumb_func_end ov105_02243E84

	thumb_func_start ov105_02243FDC
ov105_02243FDC: ; 0x02243FDC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	mov r1, #0
	add r0, r4, #0
	mov r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
	add r0, r4, #0
	mov r1, #1
	bl ov105_02245528
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov105_02243FDC

	thumb_func_start ov105_0224400C
ov105_0224400C: ; 0x0224400C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov104_0223AA50
	ldrb r0, [r4, #8]
	cmp r0, #6
	bhi _022440CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224402A: ; jump table
	.short _02244038 - _0224402A - 2 ; case 0
	.short _022440BE - _0224402A - 2 ; case 1
	.short _0224410C - _0224402A - 2 ; case 2
	.short _02244160 - _0224402A - 2 ; case 3
	.short _022441F6 - _0224402A - 2 ; case 4
	.short _02244248 - _0224402A - 2 ; case 5
	.short _02244268 - _0224402A - 2 ; case 6
_02244038:
	ldrb r1, [r4, #0x13]
	mov r0, #0x20
	orr r0, r1
	strb r0, [r4, #0x13]
	add r0, r4, #0
	add r0, #0x60
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xd0
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xe0
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x50
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x50
	bl sub_0201A9A4
	add r0, r4, #0
	add r0, #0xa0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0xa0
	bl sub_0201AD10
	add r0, r4, #0
	add r0, #0x50
	bl ov105_02246244
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
	ldr r0, _0224434C ; =0x0000FFFF
	mov r1, #0
	str r0, [sp]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_022440BE:
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	bhs _022440CC
_022440CA:
	b _02244346
_022440CC:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007DC8
	add r0, r4, #0
	mov r1, #1
	bl ov105_02244924
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
	add r0, r4, #0
	mov r1, #3
	bl ov105_02244BE4
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_0224410C:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020087B4
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _02244200
	add r0, r4, #0
	bl ov105_02245A30
	add r0, r4, #0
	mov r1, #1
	bl ov105_02244AA8
	add r0, r4, #0
	mov r1, #2
	bl ov105_02244A60
	add r0, r4, #0
	mov r1, #3
	bl ov105_02244A18
	ldr r0, [r4, #0x4c]
	ldr r3, [r4, #0xc]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	ldr r0, _02244350 ; =0x00000612
	bl sub_02005748
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_02244160:
	add r0, r4, #0
	bl ov105_02244830
	cmp r0, #1
	bne _02244200
	ldr r0, _02244350 ; =0x00000612
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02244354 ; =0x00000679
	bl sub_02005748
	mov r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _022441A6
	add r5, r4, #0
	add r7, r6, #0
_02244188:
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov105_02245EA8
	mov r1, #0x29
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	str r7, [r5, r0]
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02244188
_022441A6:
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _022441C0
	ldrb r0, [r4, #0x12]
	cmp r0, #2
	bne _022441BC
	mov r0, #4
	strb r0, [r4, #0x12]
	b _022441C0
_022441BC:
	mov r0, #2
	strb r0, [r4, #0x12]
_022441C0:
	add r0, r4, #0
	bl ov105_0224260C
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _022441E4
	mov r7, #0x29
	add r5, r4, #0
	lsl r7, r7, #4
_022441D4:
	ldr r0, [r5, r7]
	bl ov105_02245F5C
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _022441D4
_022441E4:
	ldr r0, _02244350 ; =0x00000612
	bl sub_02005748
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_022441F6:
	add r0, r4, #0
	bl ov105_02244780
	cmp r0, #1
	beq _02244202
_02244200:
	b _02244346
_02244202:
	ldr r0, _02244350 ; =0x00000612
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02244354 ; =0x00000679
	bl sub_02005748
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _02244230
	mov r7, #0x29
	add r5, r4, #0
	lsl r7, r7, #4
_0224421E:
	ldr r0, [r5, r7]
	mov r1, #0xa
	bl ov105_02245F90
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0224421E
_02244230:
	mov r0, #8
	str r0, [r4, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl ov105_02244924
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_02244248:
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _02244346
	add r0, r4, #0
	bl ov105_02245A30
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_02244268:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _022442E8
	add r0, r4, #0
	mov r1, #3
	bl ov105_02244B90
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0224428E
	add r0, r4, #0
	bl ov105_0224266C
	b _022442AC
_0224428E:
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	mov r1, #0
	add r0, r4, #0
	mov r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
_022442AC:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldr r0, _0224434C ; =0x0000FFFF
	mov r1, #0x10
	str r0, [sp]
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0
	mov r3, #1
	bl sub_0200872C
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
_022442E8:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020087B4
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #0x15
	blo _02244346
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov105_02245538
	add r2, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0x15
	bl ov105_022448F4
	add r0, r4, #0
	bl ov105_02245A64
	ldrb r1, [r4, #0x13]
	mov r0, #0x20
	bic r1, r0
	strb r1, [r4, #0x13]
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _0224433C
	ldr r0, _02244358 ; =0x0000035B
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov105_022457C0
_0224433C:
	mov r0, #0
	strb r0, [r4, #0x19]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244346:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224434C: .word 0x0000FFFF
_02244350: .word 0x00000612
_02244354: .word 0x00000679
_02244358: .word 0x0000035B
	thumb_func_end ov105_0224400C

	thumb_func_start ov105_0224435C
ov105_0224435C: ; 0x0224435C
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0224436C
	cmp r1, #1
	beq _02244384
	b _02244394
_0224436C:
	ldrb r2, [r4, #0x13]
	mov r1, #0xa
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1f
	bl ov105_02245620
	cmp r0, #1
	bne _02244394
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02244394
_02244384:
	ldr r0, _02244398 ; =0x0000035A
	ldrb r1, [r4, r0]
	cmp r1, #2
	blo _02244394
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_02244394:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02244398: .word 0x0000035A
	thumb_func_end ov105_0224435C

	thumb_func_start ov105_0224439C
ov105_0224439C: ; 0x0224439C
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _022443AC
	cmp r1, #1
	beq _022443C6
	b _022443D8
_022443AC:
	mov r1, #0xf
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	bl sub_020365F4
	mov r0, #0xa5
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022443D8
_022443C6:
	mov r0, #0xa5
	bl sub_02036540
	cmp r0, #1
	bne _022443D8
	bl sub_020365F4
	mov r0, #1
	pop {r4, pc}
_022443D8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov105_0224439C

	thumb_func_start ov105_022443DC
ov105_022443DC: ; 0x022443DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _022443EE
	cmp r0, #1
	beq _0224440E
	b _0224441C
_022443EE:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x5d
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224441C
_0224440E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0224441C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0224441C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov105_022443DC

	thumb_func_start ov105_02244424
ov105_02244424: ; 0x02244424
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02244436
	cmp r0, #1
	beq _02244500
	b _02244514
_02244436:
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02244468
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl ov105_02245A98
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	mov r0, #0xab
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02244468:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl ov104_0222E5D0
	mov r1, #0xae
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #8
	ldrh r1, [r4, r1]
	add r1, r1, #2
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov105_02244F00
	mov r1, #0xaf
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #6
	ldrh r1, [r4, r1]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl ov105_02244F00
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xa0
	bl ov105_0224628C
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02025E44
	bl sub_02027AC0
	mov r3, #1
	str r3, [sp]
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xa0
	mov r2, #0x10
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xa0
	bl sub_0201A9A4
	mov r0, #0x50
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02244514
_02244500:
	ldrb r0, [r4, #0x10]
	bl sub_0201D724
	cmp r0, #0
	bne _02244514
	mov r0, #0
	strb r0, [r4, #0x19]
	add sp, #0x18
	mov r0, #1
	pop {r4, pc}
_02244514:
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02244424

	thumb_func_start ov105_0224451C
ov105_0224451C: ; 0x0224451C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02244558
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02008A94
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224453E
	bl sub_02003694
_0224453E:
	ldr r0, [r4, #0x4c]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _0224455C ; =0x027E0000
	ldr r1, _02244560 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
_02244558:
	pop {r4, pc}
	nop
_0224455C: .word 0x027E0000
_02244560: .word 0x00003FF8
	thumb_func_end ov105_0224451C

	thumb_func_start ov105_02244564
ov105_02244564: ; 0x02244564
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02244580 ; =0x0224641C
	add r3, sp, #0
	mov r2, #5
_0224456E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224456E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02244580: .word 0x0224641C
	thumb_func_end ov105_02244564

	thumb_func_start ov105_02244584
ov105_02244584: ; 0x02244584
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02244660 ; =0x02246330
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02244664 ; =0x022463E4
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
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x5d
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02244668 ; =0x022463AC
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
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _0224466C ; =0x02246400
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _02244670 ; =0x022463C8
	add r3, sp, #0
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
	ldr r1, _02244674 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	add sp, #0x80
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244660: .word 0x02246330
_02244664: .word 0x022463E4
_02244668: .word 0x022463AC
_0224466C: .word 0x02246400
_02244670: .word 0x022463C8
_02244674: .word 0x04000008
	thumb_func_end ov105_02244584

	thumb_func_start ov105_02244678
ov105_02244678: ; 0x02244678
	push {r4, lr}
	add r4, r0, #0
	bl ov105_02244564
	ldr r0, [r4, #0x4c]
	bl ov105_02244584
	mov r0, #0x5d
	bl sub_02002F38
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x5d
	bl sub_02002F70
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0
	add r2, #0xe0
	mov r3, #0x5d
	bl sub_02002F70
	bl ov105_02244AF8
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bne _022446EC
	add r0, r4, #0
	mov r1, #1
	bl ov105_02244AA8
	add r0, r4, #0
	mov r1, #2
	bl ov105_02244A60
	add r0, r4, #0
	mov r1, #3
	bl ov105_02244A18
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	b _02244720
_022446EC:
	add r0, r4, #0
	mov r1, #3
	bl ov105_022449A4
	add r0, r4, #0
	mov r1, #2
	bl ov105_02244A60
	ldr r0, [r4, #0x4c]
	ldr r3, [r4, #0xc]
	mov r1, #2
	mov r2, #0
	bl sub_02019184
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
_02244720:
	add r0, r4, #0
	mov r1, #4
	bl ov105_02244B30
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02244678

	thumb_func_start ov105_0224472C
ov105_0224472C: ; 0x0224472C
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r3, _02244738 ; =ov105_02245AAC
	add r0, r0, r1
	bx r3
	nop
_02244738: .word ov105_02245AAC
	thumb_func_end ov105_0224472C

	thumb_func_start ov105_0224473C
ov105_0224473C: ; 0x0224473C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF74
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
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov105_0224473C

	thumb_func_start ov105_02244778
ov105_02244778: ; 0x02244778
	mov r3, #0
	strb r3, [r0, #8]
	str r2, [r1, #0]
	bx lr
	thumb_func_end ov105_02244778

	thumb_func_start ov105_02244780
ov105_02244780: ; 0x02244780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	mov r1, #2
	mov r2, #1
	mov r3, #8
	bl sub_02019184
	ldr r0, [r5, #0x4c]
	mov r1, #2
	bl sub_020192EC
	str r0, [r5, #0xc]
	ldrb r0, [r5, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _02244816
	add r4, r5, #0
_022447AA:
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F2C
	add r7, r0, #0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F88
	ldr r2, [r7, #0]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	sub r1, #8
	cmp r1, r0
	bgt _022447FA
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F88
	add r7, r0, #0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F8C
	add r2, r0, #0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r7, #0
	bl ov105_02245F14
	mov r0, #1
	str r0, [sp]
	b _0224480C
_022447FA:
	mov r1, #0x29
	lsl r1, r1, #4
	mov r2, #7
	ldr r1, [r4, r1]
	add r0, sp, #4
	mvn r2, r2
	mov r3, #0
	bl ov105_02245EC8
_0224480C:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _022447AA
_02244816:
	add r0, r5, #0
	bl ov105_022448BC
	ldr r0, [sp]
	cmp r0, #1
	bne _02244828
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244828:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov105_02244780

	thumb_func_start ov105_02244830
ov105_02244830: ; 0x02244830
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [r6, #0x4c]
	mov r1, #2
	mov r2, #1
	mov r3, #8
	mov r4, #0
	bl sub_02019184
	ldr r0, [r6, #0x4c]
	mov r1, #2
	bl sub_020192EC
	str r0, [r6, #0xc]
	ldrb r0, [r6, #0x12]
	add r7, r4, #0
	cmp r0, #0
	ble _022448A2
	add r5, r6, #0
_02244858:
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov105_02245F2C
	ldr r1, [r0, #0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	mov r0, #0x17
	sub r1, #8
	mvn r0, r0
	cmp r1, r0
	bge _02244886
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov105_02245EBC
	add r4, r4, #1
	b _02244898
_02244886:
	mov r1, #0x29
	lsl r1, r1, #4
	mov r2, #7
	ldr r1, [r5, r1]
	add r0, sp, #0
	mvn r2, r2
	mov r3, #0
	bl ov105_02245EC8
_02244898:
	ldrb r0, [r6, #0x12]
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, r0
	blt _02244858
_022448A2:
	add r0, r6, #0
	bl ov105_022448BC
	ldrb r0, [r6, #0x12]
	cmp r4, r0
	bne _022448B4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022448B4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov105_02244830

	thumb_func_start ov105_022448BC
ov105_022448BC: ; 0x022448BC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	mov r0, #3
	tst r0, r1
	bne _022448EA
	lsr r0, r1, #2
	cmp r0, #4
	blo _022448D4
	mov r0, #0
	str r0, [r4, #0x14]
_022448D4:
	mov r3, #0x20
	str r3, [sp]
	ldr r2, [r4, #0x14]
	add r0, r4, #0
	lsr r2, r2, #2
	add r2, r2, #6
	lsl r2, r2, #0x18
	mov r1, #1
	lsr r2, r2, #0x18
	bl ov105_022448F4
_022448EA:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov105_022448BC

	thumb_func_start ov105_022448F4
ov105_022448F4: ; 0x022448F4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r4, r1, #0
	lsl r1, r4, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0x4c]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019E2C
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x4c]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov105_022448F4

	thumb_func_start ov105_02244924
ov105_02244924: ; 0x02244924
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r0, #0
	cmp r6, #5
	bhi _0224496C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224493A: ; jump table
	.short _02244946 - _0224493A - 2 ; case 0
	.short _02244950 - _0224493A - 2 ; case 1
	.short _0224496C - _0224493A - 2 ; case 2
	.short _0224496C - _0224493A - 2 ; case 3
	.short _0224495A - _0224493A - 2 ; case 4
	.short _02244964 - _0224493A - 2 ; case 5
_02244946:
	ldr r0, _0224499C ; =0x000005EE
	bl sub_02005748
	mov r5, #2
	b _0224496C
_02244950:
	ldr r0, _022449A0 ; =0x000005EF
	bl sub_02005748
	mov r5, #3
	b _0224496C
_0224495A:
	ldr r0, _0224499C ; =0x000005EE
	bl sub_02005748
	mov r5, #2
	b _0224496C
_02244964:
	ldr r0, _022449A0 ; =0x000005EF
	bl sub_02005748
	mov r5, #3
_0224496C:
	add r0, r4, #0
	add r1, r6, #0
	bl ov105_02245584
	add r1, r0, #0
	add r0, r4, #0
	bl ov105_022459B0
	mov r1, #0x2b
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _0224499A
	add r0, r4, #0
	add r1, r5, #0
	bl ov105_02245A04
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r4, r1]
_0224499A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224499C: .word 0x000005EE
_022449A0: .word 0x000005EF
	thumb_func_end ov105_02244924

	thumb_func_start ov105_022449A4
ov105_022449A4: ; 0x022449A4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #4
	add r3, r4, #0
	bl sub_020070E8
	ldrb r0, [r5, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _022449F6
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #5
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022449F6:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0xb
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_022449A4

	thumb_func_start ov105_02244A18
ov105_02244A18: ; 0x02244A18
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #4
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #7
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244A18

	thumb_func_start ov105_02244A60
ov105_02244A60: ; 0x02244A60
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #4
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #8
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244A60

	thumb_func_start ov105_02244AA8
ov105_02244AA8: ; 0x02244AA8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #4
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #9
	add r3, r4, #0
	bl sub_0200710C
	mov r0, #1
	mov r1, #2
	bl sub_02019060
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244AA8

	thumb_func_start ov105_02244AF8
ov105_02244AF8: ; 0x02244AF8
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0x82
	add r2, sp, #0
	mov r3, #0x5d
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x16
	ldr r0, [r0, #0xc]
	lsl r1, r1, #4
	bl DC_FlushRange
	ldr r0, [sp]
	mov r2, #0x16
	ldr r0, [r0, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl GX_LoadBGPltt
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02244AF8

	thumb_func_start ov105_02244B30
ov105_02244B30: ; 0x02244B30
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x7d
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x7e
	add r3, r4, #0
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x5d
	str r0, [sp, #4]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xab
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244B30

	thumb_func_start ov105_02244B90
ov105_02244B90: ; 0x02244B90
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _02244BC2
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x4c]
	mov r1, #5
	mov r3, #3
	bl sub_0200710C
	add sp, #0x10
	pop {r4, pc}
_02244BC2:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x4c]
	mov r1, #0xb
	mov r3, #3
	bl sub_0200710C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov105_02244B90

	thumb_func_start ov105_02244BE4
ov105_02244BE4: ; 0x02244BE4
	push {r3, lr}
	sub sp, #0x10
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r2, [r2, #0x4c]
	mov r1, #7
	mov r3, #3
	bl sub_0200710C
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end ov105_02244BE4

	thumb_func_start ov105_02244C0C
ov105_02244C0C: ; 0x02244C0C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _02244C3E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x4c]
	mov r1, #0xa
	mov r3, #3
	bl sub_0200710C
	add sp, #0x10
	pop {r4, pc}
_02244C3E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5d
	str r0, [sp, #0xc]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x4c]
	mov r1, #0xc
	mov r3, #3
	bl sub_0200710C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov105_02244C0C

	thumb_func_start ov105_02244C60
ov105_02244C60: ; 0x02244C60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x28]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	bl sub_0200C388
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x24]
	add r0, r4, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_02244C60

	thumb_func_start ov105_02244CC0
ov105_02244CC0: ; 0x02244CC0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x28]
	add r6, r3, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	bl sub_0200C388
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r3, r6, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x24]
	add r0, r4, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov105_02244CC0

	thumb_func_start ov105_02244D14
ov105_02244D14: ; 0x02244D14
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r2, r1, #0
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xa0
	str r3, [sp, #0x14]
	bl ov105_02244C60
	add r4, #0xa0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244D14

	thumb_func_start ov105_02244D48
ov105_02244D48: ; 0x02244D48
	push {r4, r5, r6, r7}
	mov r4, #1
	mov r6, #0
	lsl r4, r4, #8
	add r7, r0, #0
	add r3, r6, #0
	add r5, r4, #4
_02244D56:
	str r3, [r7, r4]
	str r3, [r7, r5]
	add r6, r6, #1
	add r7, #8
	cmp r6, #4
	blt _02244D56
	mov r4, #1
	lsl r4, r4, #8
	add r5, r0, r4
	add r4, r0, #0
	add r4, #0xf0
	str r5, [r4, #0]
	add r4, r0, #0
	add r4, #0xf4
	str r1, [r4, #0]
	add r1, r0, #0
	add r1, #0xf8
	strb r3, [r1]
	add r1, r0, #0
	mov r3, #1
	add r1, #0xf9
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0xfa
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xfb
	ldrb r2, [r1]
	mov r1, #0xf
	bic r2, r1
	add r1, r0, #0
	add r1, #0xfb
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xfb
	ldrb r2, [r1]
	mov r1, #0x30
	bic r2, r1
	mov r1, #0x10
	orr r2, r1
	add r1, r0, #0
	add r1, #0xfb
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xfb
	ldrb r2, [r1]
	mov r1, #0xc0
	add r0, #0xfb
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov105_02244D48

	thumb_func_start ov105_02244DC4
ov105_02244DC4: ; 0x02244DC4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r7, #0
	str r2, [sp]
	add r5, #0x2c
	lsl r4, r6, #2
	ldr r0, [r7, #0x1c]
	ldr r2, [r5, r4]
	add r1, r3, #0
	bl sub_0200B1B8
	lsl r0, r6, #3
	add r2, r7, r0
	mov r0, #1
	ldr r1, [r5, r4]
	lsl r0, r0, #8
	str r1, [r2, r0]
	add r1, r0, #4
	ldr r0, [sp]
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_02244DC4

	thumb_func_start ov105_02244DF0
ov105_02244DF0: ; 0x02244DF0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0xc0
	bl ov105_02246260
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #3
	bl ov105_02244D48
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #5
	bl ov105_02244DC4
	add r0, r4, #0
	mov r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02244E5C
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F3C
	cmp r0, #0
	bne _02244E4E
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #6
	bl ov105_02244DC4
	b _02244E68
_02244E4E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #8
	bl ov105_02244DC4
	b _02244E68
_02244E5C:
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0x15
	bl ov105_02244DC4
_02244E68:
	mov r1, #2
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #7
	bl ov105_02244DC4
	mov r1, #0
	mov r0, #0x5d
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xf0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02001B7C
	add r4, #0xfc
	str r0, [r4, #0]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02244DF0

	thumb_func_start ov105_02244E94
ov105_02244E94: ; 0x02244E94
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0xc0
	bl ov105_02246260
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #2
	bl ov105_02244D48
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #3
	bl ov105_02244DC4
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #4
	bl ov105_02244DC4
	mov r1, #0
	mov r0, #0x5d
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xf0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02001B7C
	add r4, #0xfc
	str r0, [r4, #0]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02244E94

	thumb_func_start ov105_02244EE8
ov105_02244EE8: ; 0x02244EE8
	push {r3, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r0, #0x20]
	bl sub_0200B60C
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov105_02244EE8

	thumb_func_start ov105_02244F00
ov105_02244F00: ; 0x02244F00
	ldr r3, _02244F08 ; =sub_0200B538
	ldr r0, [r0, #0x20]
	bx r3
	nop
_02244F08: .word sub_0200B538
	thumb_func_end ov105_02244F00

	thumb_func_start ov105_02244F0C
ov105_02244F0C: ; 0x02244F0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	str r2, [sp, #0x10]
	add r6, r3, #0
	bl sub_02025E38
	add r7, r0, #0
	mov r0, #8
	mov r1, #0x5d
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r7, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023D28
	add r0, r7, #0
	bl sub_02025F30
	cmp r0, #0
	bne _02244F50
	ldr r1, _02244F80 ; =0x00070800
	b _02244F54
_02244F50:
	mov r1, #0xc1
	lsl r1, r1, #0xa
_02244F54:
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02244F80: .word 0x00070800
	thumb_func_end ov105_02244F0C

	thumb_func_start ov105_02244F84
ov105_02244F84: ; 0x02244F84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	str r2, [sp, #0x10]
	add r6, r3, #0
	bl sub_0203608C
	mov r1, #1
	sub r0, r1, r0
	bl sub_02032EE8
	add r7, r0, #0
	mov r0, #8
	mov r1, #0x5d
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02025EF4
	add r0, r7, #0
	bl sub_02025F30
	cmp r0, #0
	bne _02244FC4
	ldr r1, _02244FF4 ; =0x00070800
	b _02244FC8
_02244FC4:
	mov r1, #0xc1
	lsl r1, r1, #0xa
_02244FC8:
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02244FF4: .word 0x00070800
	thumb_func_end ov105_02244F84

	thumb_func_start ov105_02244FF8
ov105_02244FF8: ; 0x02244FF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x10]
	add r5, r1, #0
	ldr r0, [sp, #0x64]
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0207A0FC
	mov r1, #0xb3
	add r2, sp, #0x20
	add r7, r0, #0
	bl sub_02074470
	add r1, sp, #0x40
	ldrb r1, [r1, #0x1c]
	add r0, r5, #0
	bl sub_0201ADA4
	mov r0, #0xb
	mov r1, #0x5d
	bl sub_02023790
	add r1, sp, #0x20
	add r4, r0, #0
	bl sub_02023D28
	add r0, sp, #0x60
	ldrb r0, [r0]
	add r2, sp, #0x40
	add r3, r6, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldrb r0, [r2, #0x14]
	ldrb r1, [r2, #0x1c]
	ldrb r2, [r2, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201C294
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	bne _02245084
	mov r0, #0x19
	str r0, [sp, #0x14]
	b _02245088
_02245084:
	mov r0, #0x1a
	str r0, [sp, #0x14]
_02245088:
	cmp r7, #0
	bne _02245090
	ldr r6, _022450D8 ; =0x00070800
	b _02245094
_02245090:
	mov r6, #0xc1
	lsl r6, r6, #0xa
_02245094:
	add r0, r4, #0
	bl sub_020237E8
	cmp r7, #2
	beq _022450C6
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0x1c]
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r2, r4, #0
	lsl r3, r3, #3
	bl sub_0201D78C
_022450C6:
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022450D8: .word 0x00070800
	thumb_func_end ov105_02244FF8

	thumb_func_start ov105_022450DC
ov105_022450DC: ; 0x022450DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r1, sp, #0x28
	ldrb r1, [r1, #0x18]
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r2, [sp, #0x14]
	add r6, r3, #0
	bl sub_0201ADA4
	mov r2, #0x67
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x5d
	bl sub_0200B144
	add r1, sp, #0x28
	ldrh r1, [r1, #0x20]
	add r7, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0200B190
	add r2, sp, #0x28
	ldrb r0, [r2, #0x1c]
	ldr r3, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldrb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	ldrb r2, [r2, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201C294
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	add r0, sp, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224515E
	mov r0, #0x19
	str r0, [sp, #0x18]
	b _02245162
_0224515E:
	mov r0, #0x1a
	str r0, [sp, #0x18]
_02245162:
	add r0, sp, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224516E
	ldr r7, _022451B0 ; =0x00070800
	b _02245172
_0224516E:
	mov r7, #0xc1
	lsl r7, r7, #0xa
_02245172:
	add r0, r4, #0
	bl sub_020237E8
	add r0, sp, #0x4c
	ldrb r0, [r0]
	cmp r0, #2
	beq _022451A6
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x1c]
	add r2, r4, #0
	bl sub_0200B1B8
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	add r2, r4, #0
	lsl r3, r3, #3
	bl sub_0201D78C
_022451A6:
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022451B0: .word 0x00070800
	thumb_func_end ov105_022450DC

	thumb_func_start ov105_022451B4
ov105_022451B4: ; 0x022451B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _022451E0
	mov r7, #0x29
	add r4, r5, #0
	lsl r7, r7, #4
_022451C6:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _022451D6
	bl ov105_02245EA8
	mov r1, #0x29
	lsl r1, r1, #4
	str r0, [r4, r1]
_022451D6:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _022451C6
_022451E0:
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022451F6
	bl ov105_02246060
	mov r0, #0xaa
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_022451F6:
	bl sub_02039794
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_02002FA0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02002FA0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02002F54
	mov r0, #0x12
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, #0x24
	add r0, r5, r0
	bl ov105_02245C50
	mov r7, #0x4b
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_02245234:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224523E
	bl sub_02007DC8
_0224523E:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02245234
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02007B6C
	ldr r0, [r5, #0x1c]
	bl sub_0200B190
	ldr r0, [r5, #0x20]
	bl sub_0200B3F0
	ldr r0, [r5, #0x24]
	bl sub_020237BC
	ldr r0, [r5, #0x28]
	bl sub_020237BC
	mov r6, #0
	add r4, r5, #0
_0224526C:
	ldr r0, [r4, #0x2c]
	bl sub_020237BC
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0224526C
	add r0, r5, #0
	add r0, #0x50
	bl ov105_02246244
	ldr r0, [r5, #0x4c]
	bl ov105_0224473C
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02006CA8
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020242C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov105_022451B4

	thumb_func_start ov105_022452A0
ov105_022452A0: ; 0x022452A0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov105_022452E4
	mov r2, #2
	mov r1, #0
	ldr r0, _022452E0 ; =ov105_02245CD0
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0x5d
	add r3, r1, #0
	bl sub_02024220
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x5d
	bl sub_02018340
	str r0, [r4, #0x4c]
	add r0, r4, #0
	bl ov105_0224531C
	ldr r0, [r4, #0x4c]
	add r4, #0x50
	add r1, r4, #0
	bl ov105_02246214
	add sp, #8
	pop {r4, pc}
	nop
_022452E0: .word ov105_02245CD0
	thumb_func_end ov105_022452A0

	thumb_func_start ov105_022452E4
ov105_022452E4: ; 0x022452E4
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02245314 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02245318 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_02245314: .word 0xFFFFE0FF
_02245318: .word 0x04001000
	thumb_func_end ov105_022452E4

	thumb_func_start ov105_0224531C
ov105_0224531C: ; 0x0224531C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x96
	mov r1, #0x5d
	bl sub_02006C24
	mov r1, #0xb5
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r6, #0
	bl ov105_02244678
	add r0, r6, #0
	bl ov105_0224472C
	mov r2, #0x5b
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x5d
	bl sub_0200B144
	str r0, [r6, #0x1c]
	mov r0, #0x5d
	bl sub_0200B358
	str r0, [r6, #0x20]
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x5d
	bl sub_02023790
	str r0, [r6, #0x24]
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x5d
	bl sub_02023790
	str r0, [r6, #0x28]
	mov r4, #0
	add r5, r6, #0
	mov r7, #0x40
_02245370:
	add r0, r7, #0
	mov r1, #0x5d
	bl sub_02023790
	str r0, [r5, #0x2c]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02245370
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x5d
	bl sub_02002E7C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x5d
	bl sub_02002E98
	mov r0, #0x5d
	bl sub_0200762C
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r6, r1]
	bl sub_02035E38
	cmp r0, #0
	beq _022453C0
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	bl sub_02039734
_022453C0:
	add r0, r6, #0
	mov r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _022453DA
	add r0, r6, #0
	bl ov105_0224246C
	add r0, r6, #0
	bl ov105_022424A0
	b _022453E6
_022453DA:
	add r0, r6, #0
	bl ov105_0224260C
	add r0, r6, #0
	bl ov105_0224266C
_022453E6:
	bl sub_0201FFD0
	ldr r0, _022453F4 ; =ov105_0224451C
	add r1, r6, #0
	bl sub_02017798
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022453F4: .word ov105_0224451C
	thumb_func_end ov105_0224531C

	thumb_func_start ov105_022453F8
ov105_022453F8: ; 0x022453F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov105_022461A0
	ldrb r1, [r5, #0x12]
	cmp r0, r1
	bhs _0224545E
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02007DC8
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	bl sub_0207A0FC
	add r2, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x78
	str r7, [sp, #4]
	bl ov105_022455C4
	mov r3, #0
	add r1, r6, #2
	lsl r2, r4, #0x18
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r5, #0x50
	lsl r1, r1, #4
	add r1, r5, r1
	lsr r2, r2, #0x18
	bl ov105_02244FF8
_0224545E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov105_022453F8

	thumb_func_start ov105_02245464
ov105_02245464: ; 0x02245464
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5d
	mov r1, #0x30
	bl sub_02018144
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	mov r2, #0x30
	bl memset
	mov r2, #0xae
	mov r1, #5
	lsl r2, r2, #2
	lsl r1, r1, #6
	ldr r3, [r4, r2]
	ldr r0, [r4, r1]
	sub r2, #0x10
	str r3, [r0, #0]
	add r0, r1, #0
	sub r0, #8
	ldr r3, [r4, r0]
	ldr r0, [r4, r1]
	str r3, [r0, #4]
	ldr r0, [r4, r1]
	mov r3, #1
	strb r3, [r0, #0x11]
	ldr r0, [r4, r1]
	strb r3, [r0, #0x12]
	ldrb r3, [r4, #0x12]
	ldr r0, [r4, r1]
	strb r3, [r0, #0x13]
	ldr r0, [r4, r2]
	bl ov105_022461A0
	mov r1, #5
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	strb r0, [r2, #0x14]
	ldr r0, [r4, r1]
	mov r2, #0
	strh r2, [r0, #0x18]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	bl sub_0207A274
	mov r1, #5
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	str r0, [r2, #0x1c]
	ldr r0, [r4, r1]
	mov r2, #0
	str r2, [r0, #0x2c]
	ldr r0, [r4, r1]
	ldr r1, _022454F4 ; =0x022462DC
	bl sub_0208D720
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02025E38
	add r1, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0208E9C0
	pop {r4, pc}
	; .align 2, 0
_022454F4: .word 0x022462DC
	thumb_func_end ov105_02245464

	thumb_func_start ov105_022454F8
ov105_022454F8: ; 0x022454F8
	ldrb r0, [r0, #0xb]
	cmp r0, r1
	bne _02245502
	mov r0, #1
	bx lr
_02245502:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov105_022454F8

	thumb_func_start ov105_02245508
ov105_02245508: ; 0x02245508
	cmp r0, #0
	beq _02245510
	cmp r0, #1
	bne _02245514
_02245510:
	mov r0, #3
	bx lr
_02245514:
	mov r0, #2
	bx lr
	thumb_func_end ov105_02245508

	thumb_func_start ov105_02245518
ov105_02245518: ; 0x02245518
	ldrb r0, [r0, #0x13]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02245524
	mov r0, #1
	bx lr
_02245524:
	mov r0, #0
	bx lr
	thumb_func_end ov105_02245518

	thumb_func_start ov105_02245528
ov105_02245528: ; 0x02245528
	ldrb r3, [r0, #0x13]
	mov r2, #1
	bic r3, r2
	mov r2, #1
	and r1, r2
	orr r1, r3
	strb r1, [r0, #0x13]
	bx lr
	thumb_func_end ov105_02245528

	thumb_func_start ov105_02245538
ov105_02245538: ; 0x02245538
	push {r3, lr}
	mov r3, #0
	cmp r1, #0
	beq _0224554A
	cmp r1, #1
	beq _0224555C
	cmp r1, #2
	beq _0224556E
	b _0224557E
_0224554A:
	cmp r2, #1
	bne _02245552
	mov r3, #2
	b _0224557E
_02245552:
	ldrb r0, [r0, #9]
	bl ov104_0223AED4
	mov r3, #2
	b _0224557E
_0224555C:
	cmp r2, #1
	bne _02245564
	mov r3, #1
	b _0224557E
_02245564:
	ldrb r0, [r0, #9]
	bl ov104_0223AED4
	mov r3, #1
	b _0224557E
_0224556E:
	cmp r2, #1
	bne _02245576
	mov r3, #2
	b _0224557E
_02245576:
	ldrb r0, [r0, #9]
	bl ov104_0223AED4
	mov r3, #2
_0224557E:
	add r0, r3, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov105_02245538

	thumb_func_start ov105_02245584
ov105_02245584: ; 0x02245584
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #5
	bhi _022455C0
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245598: ; jump table
	.short _022455C0 - _02245598 - 2 ; case 0
	.short _022455C0 - _02245598 - 2 ; case 1
	.short _022455C0 - _02245598 - 2 ; case 2
	.short _022455C0 - _02245598 - 2 ; case 3
	.short _022455A4 - _02245598 - 2 ; case 4
	.short _022455B2 - _02245598 - 2 ; case 5
_022455A4:
	ldrb r0, [r0, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _022455C0
	mov r0, #0xb
	pop {r4, pc}
_022455B2:
	ldrb r0, [r0, #9]
	bl ov104_0223AED4
	cmp r0, #1
	bne _022455C0
	mov r0, #0xc
	pop {r4, pc}
_022455C0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov105_02245584

	thumb_func_start ov105_022455C4
ov105_022455C4: ; 0x022455C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	lsl r4, r1, #2
	ldr r1, [sp, #0x20]
	mov r7, #0x4b
	lsl r7, r7, #2
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	sub r1, r7, #4
	add r5, r0, r7
	ldr r0, [r0, r1]
	mov r1, #0
	add r6, r2, #0
	bl ov105_02245D88
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0x1c
	bl sub_020759CC
	cmp r0, #0
	bne _0224561C
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x24]
	bl ov105_02245DB8
_0224561C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_022455C4

	thumb_func_start ov105_02245620
ov105_02245620: ; 0x02245620
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	add r7, r2, #0
	bl ov104_0223AED4
	cmp r0, #0
	bne _02245636
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245636:
	cmp r4, #7
	beq _02245644
	cmp r4, #8
	beq _02245650
	cmp r4, #0xa
	beq _0224565E
	b _0224566A
_02245644:
	add r0, r5, #0
	add r1, r4, #0
	mov r6, #0x1d
	bl ov105_02245684
	b _0224566A
_02245650:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r6, #0x1e
	bl ov105_022456A8
	b _0224566A
_0224565E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r6, #0x20
	bl ov105_02245884
_0224566A:
	mov r1, #0xb6
	lsl r1, r1, #2
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #0x3c
	bl sub_020359DC
	cmp r0, #1
	bne _02245680
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02245680:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_02245620

	thumb_func_start ov105_02245684
ov105_02245684: ; 0x02245684
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02025E38
	mov r0, #0xb6
	lsl r0, r0, #2
	strh r4, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02245684

	thumb_func_start ov105_0224569C
ov105_0224569C: ; 0x0224569C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r4, r0
	pop {r4, pc}
	thumb_func_end ov105_0224569C

	thumb_func_start ov105_022456A8
ov105_022456A8: ; 0x022456A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0
	mov r0, #0xb6
	str r1, [sp]
	add r2, r5, #0
	add r4, r1, #0
	lsl r0, r0, #2
_022456B8:
	add r1, r1, #1
	strh r4, [r2, r0]
	add r2, r2, #2
	cmp r1, #0x3c
	blt _022456B8
	ldrb r1, [r5, #0x11]
	mov r0, #0xb6
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	ble _02245708
	ldr r0, [sp]
	add r7, r5, #0
	lsl r0, r0, #1
	add r6, r5, r0
_022456DE:
	mov r1, #0xb
	mov r0, #0xae
	lsl r1, r1, #6
	lsl r0, r0, #2
	ldrh r1, [r7, r1]
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0xb6
	lsl r1, r1, #2
	strh r0, [r6, r1]
	ldrb r0, [r5, #0x11]
	add r4, r4, #1
	add r7, r7, #2
	add r6, r6, #2
	cmp r4, r0
	blt _022456DE
_02245708:
	ldr r1, [sp]
	mov r7, #0
	add r1, r1, r0
	cmp r0, #0
	ble _02245742
	lsl r0, r1, #1
	add r6, r5, #0
	add r4, r5, r0
_02245718:
	mov r1, #0xb
	mov r0, #0xae
	lsl r1, r1, #6
	lsl r0, r0, #2
	ldrh r1, [r6, r1]
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	mov r1, #0xb6
	lsl r1, r1, #2
	strh r0, [r4, r1]
	ldrb r0, [r5, #0x11]
	add r7, r7, #1
	add r6, r6, #2
	add r4, r4, #2
	cmp r7, r0
	blt _02245718
_02245742:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_022456A8

	thumb_func_start ov105_02245744
ov105_02245744: ; 0x02245744
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r7, r0, #0
	ldrb r0, [r5, #9]
	add r6, r2, #0
	mov r4, #0
	bl ov104_0223AA50
	bl sub_0203608C
	cmp r7, r0
	beq _022457A8
	ldrh r0, [r6]
	add r4, r4, #1
	strb r0, [r5, #0x18]
	ldrb r3, [r5, #0x18]
	mov r0, #0
	cmp r3, #0
	ble _02245782
	lsl r1, r4, #1
	ldr r7, _022457AC ; =0x00000352
	add r1, r6, r1
	add r2, r5, #0
_02245772:
	ldrh r3, [r1]
	add r0, r0, #1
	add r1, r1, #2
	strh r3, [r2, r7]
	ldrb r3, [r5, #0x18]
	add r2, r2, #2
	cmp r0, r3
	blt _02245772
_02245782:
	add r1, r4, r3
	mov r0, #0
	cmp r3, #0
	ble _022457A2
	lsl r1, r1, #1
	add r3, r6, r1
	ldr r1, _022457B0 ; =0x00000356
	add r4, r5, #0
_02245792:
	ldrh r2, [r3]
	add r0, r0, #1
	add r3, r3, #2
	strh r2, [r4, r1]
	ldrb r2, [r5, #0x18]
	add r4, r4, #2
	cmp r0, r2
	blt _02245792
_022457A2:
	ldr r0, _022457B4 ; =0x0000035B
	mov r1, #1
	strb r1, [r5, r0]
_022457A8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022457AC: .word 0x00000352
_022457B0: .word 0x00000356
_022457B4: .word 0x0000035B
	thumb_func_end ov105_02245744

	thumb_func_start ov105_022457B8
ov105_022457B8: ; 0x022457B8
	ldr r3, _022457BC ; =sub_02022974
	bx r3
	; .align 2, 0
_022457BC: .word sub_02022974
	thumb_func_end ov105_022457B8

	thumb_func_start ov105_022457C0
ov105_022457C0: ; 0x022457C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	ldrb r0, [r7, #9]
	bl ov104_0223AA50
	str r0, [sp, #0x18]
	ldrb r0, [r7, #0x13]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022457F4
	add r0, r7, #0
	add r0, #0x60
	bl sub_0201ACF4
	add r0, r7, #0
	add r0, #0xd0
	bl sub_0201ACF4
	add r7, #0xe0
	add r0, r7, #0
	bl sub_0201ACF4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_022457F4:
	ldr r0, _02245878 ; =0x0000035B
	ldrb r0, [r7, r0]
	cmp r0, #1
	bne _0224586E
	ldr r0, [sp, #0x18]
	mov r4, #0
	cmp r0, #0
	ble _0224585E
	add r6, r7, #0
	add r5, r7, #0
	add r6, #0x50
_0224580A:
	add r0, r4, #0
	add r0, #8
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, r6, r0
	mov r1, #0
	bl sub_0201ADA4
	ldrb r0, [r7, #0x18]
	cmp r4, r0
	bge _0224584C
	mov r0, #0xf
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0224587C ; =0x00000352
	ldr r1, [sp, #0x1c]
	ldrh r0, [r5, r0]
	mov r2, #0
	add r1, r6, r1
	str r0, [sp, #0x10]
	ldr r0, _02245880 ; =0x00000356
	add r3, r2, #0
	ldrh r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl ov105_022450DC
_0224584C:
	ldr r0, [sp, #0x1c]
	add r0, r6, r0
	bl sub_0201A9A4
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r0
	blt _0224580A
_0224585E:
	mov r2, #0
	add r1, r7, #0
	add r0, r7, #0
	add r1, #0x60
	add r3, r2, #0
	str r2, [sp]
	bl ov105_02244F84
_0224586E:
	ldr r0, _02245878 ; =0x0000035B
	mov r1, #0
	strb r1, [r7, r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245878: .word 0x0000035B
_0224587C: .word 0x00000352
_02245880: .word 0x00000356
	thumb_func_end ov105_022457C0

	thumb_func_start ov105_02245884
ov105_02245884: ; 0x02245884
	mov r3, #0xb6
	lsl r3, r3, #2
	strh r1, [r0, r3]
	add r1, r3, #2
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0x18
	ldrh r2, [r0, r1]
	add r1, r3, #4
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0x16
	ldrh r2, [r0, r1]
	add r1, r3, #6
	strh r2, [r0, r1]
	bx lr
	thumb_func_end ov105_02245884

	thumb_func_start ov105_022458A4
ov105_022458A4: ; 0x022458A4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02245930 ; =0x0000035A
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r6, r0
	beq _0224592E
	ldrh r0, [r5, #2]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x35
	lsl r0, r0, #4
	strh r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _02245906
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022458E4
	mov r0, #0x35
	mov r1, #0
	lsl r0, r0, #4
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022458E4:
	mov r1, #0x35
	lsl r1, r1, #4
	ldrh r0, [r4, r1]
	cmp r0, #1
	bne _0224592E
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r0, r1, #0
	sub r0, #0x90
	strh r2, [r4, r0]
	ldrh r0, [r5, #6]
	sub r1, #0x8e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r0, [r4, r1]
	pop {r4, r5, r6, pc}
_02245906:
	mov r1, #0x35
	lsl r1, r1, #4
	ldrh r0, [r4, r1]
	cmp r0, #1
	bne _0224592E
	ldrb r2, [r4, #0x13]
	mov r0, #8
	bic r2, r0
	strb r2, [r4, #0x13]
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r0, r1, #0
	sub r0, #0x90
	strh r2, [r4, r0]
	ldrh r0, [r5, #6]
	sub r1, #0x8e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r0, [r4, r1]
_0224592E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02245930: .word 0x0000035A
	thumb_func_end ov105_022458A4

	thumb_func_start ov105_02245934
ov105_02245934: ; 0x02245934
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02245950
	ldr r0, _02245990 ; =0x02246364
	lsl r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _02245994 ; =0x02246366
	ldrh r2, [r0, r2]
	b _02245982
_02245950:
	ldrb r0, [r5, #9]
	bl ov104_0223AED4
	cmp r0, #0
	bne _02245966
	ldr r0, _02245998 ; =0x02246314
	lsl r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _0224599C ; =0x02246316
	ldrh r2, [r0, r2]
	b _02245982
_02245966:
	ldrb r0, [r5, #0x12]
	cmp r0, #2
	bne _02245978
	ldr r0, _022459A0 ; =0x022462EC
	lsl r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _022459A4 ; =0x022462EE
	ldrh r2, [r0, r2]
	b _02245982
_02245978:
	ldr r0, _022459A8 ; =0x02246320
	lsl r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _022459AC ; =0x02246322
	ldrh r2, [r0, r2]
_02245982:
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r5, r0
	mov r3, #0x5d
	bl ov105_02245E54
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245990: .word 0x02246364
_02245994: .word 0x02246366
_02245998: .word 0x02246314
_0224599C: .word 0x02246316
_022459A0: .word 0x022462EC
_022459A4: .word 0x022462EE
_022459A8: .word 0x02246320
_022459AC: .word 0x02246322
	thumb_func_end ov105_02245934

	thumb_func_start ov105_022459B0
ov105_022459B0: ; 0x022459B0
	push {r3, r4, lr}
	sub sp, #4
	cmp r1, #0xc
	bhi _022459F4
	add r4, r1, r1
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_022459C4: ; jump table
	.short _022459DE - _022459C4 - 2 ; case 0
	.short _022459DE - _022459C4 - 2 ; case 1
	.short _022459F4 - _022459C4 - 2 ; case 2
	.short _022459F4 - _022459C4 - 2 ; case 3
	.short _022459E4 - _022459C4 - 2 ; case 4
	.short _022459E4 - _022459C4 - 2 ; case 5
	.short _022459F4 - _022459C4 - 2 ; case 6
	.short _022459F4 - _022459C4 - 2 ; case 7
	.short _022459F4 - _022459C4 - 2 ; case 8
	.short _022459F4 - _022459C4 - 2 ; case 9
	.short _022459F4 - _022459C4 - 2 ; case 10
	.short _022459EA - _022459C4 - 2 ; case 11
	.short _022459F0 - _022459C4 - 2 ; case 12
_022459DE:
	mov r2, #0x50
	mov r3, #0x28
	b _022459F4
_022459E4:
	mov r2, #0x80
	mov r3, #0x28
	b _022459F4
_022459EA:
	mov r2, #0x50
	mov r3, #0x28
	b _022459F4
_022459F0:
	mov r2, #0x50
	mov r3, #0x28
_022459F4:
	mov r4, #0x5d
	str r4, [sp]
	add r4, #0xe7
	add r0, r0, r4
	bl ov105_02245DC4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov105_022459B0

	thumb_func_start ov105_02245A04
ov105_02245A04: ; 0x02245A04
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	beq _02245A12
	cmp r4, #3
	bne _02245A18
_02245A12:
	mov r2, #0xd8
	mov r3, #0x28
	b _02245A20
_02245A18:
	bl sub_02022974
	mov r2, #0
	add r3, r2, #0
_02245A20:
	mov r0, #0x5d
	str r0, [sp]
	add r0, #0xe7
	add r0, r5, r0
	add r1, r4, #0
	bl ov105_02245DC4
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02245A04

	thumb_func_start ov105_02245A30
ov105_02245A30: ; 0x02245A30
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02245A4A
	bl ov105_02245E1C
	mov r0, #0x2b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_02245A4A:
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02245A60
	bl ov105_02245E1C
	mov r0, #0xad
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02245A60:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02245A30

	thumb_func_start ov105_02245A64
ov105_02245A64: ; 0x02245A64
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x5d
	bl sub_02019690
	ldr r0, [r4, #0x4c]
	mov r1, #1
	bl sub_02019EBC
	ldr r0, [r4, #0x4c]
	add r4, #0x50
	add r1, r4, #0
	bl ov105_02246214
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	pop {r4, pc}
	thumb_func_end ov105_02245A64

	thumb_func_start ov105_02245A98
ov105_02245A98: ; 0x02245A98
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	bl sub_0201AD10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov105_02245A98

	.rodata


	.global Unk_ov105_022462CC
Unk_ov105_022462CC: ; 0x022462CC
	.incbin "incbin/overlay105_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov105_022462D0
Unk_ov105_022462D0: ; 0x022462D0
	.incbin "incbin/overlay105_rodata.bin", 0x4, 0x8 - 0x4

	.global Unk_ov105_022462D4
Unk_ov105_022462D4: ; 0x022462D4
	.incbin "incbin/overlay105_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov105_022462DC
Unk_ov105_022462DC: ; 0x022462DC
	.incbin "incbin/overlay105_rodata.bin", 0x10, 0x18 - 0x10

	.global Unk_ov105_022462E4
Unk_ov105_022462E4: ; 0x022462E4
	.incbin "incbin/overlay105_rodata.bin", 0x18, 0x20 - 0x18

	.global Unk_ov105_022462EC
Unk_ov105_022462EC: ; 0x022462EC
	.incbin "incbin/overlay105_rodata.bin", 0x20, 0x28 - 0x20

	.global Unk_ov105_022462F4
Unk_ov105_022462F4: ; 0x022462F4
	.incbin "incbin/overlay105_rodata.bin", 0x28, 0x30 - 0x28

	.global Unk_ov105_022462FC
Unk_ov105_022462FC: ; 0x022462FC
	.incbin "incbin/overlay105_rodata.bin", 0x30, 0x3C - 0x30

	.global Unk_ov105_02246308
Unk_ov105_02246308: ; 0x02246308
	.incbin "incbin/overlay105_rodata.bin", 0x3C, 0x48 - 0x3C

	.global Unk_ov105_02246314
Unk_ov105_02246314: ; 0x02246314
	.incbin "incbin/overlay105_rodata.bin", 0x48, 0x54 - 0x48

	.global Unk_ov105_02246320
Unk_ov105_02246320: ; 0x02246320
	.incbin "incbin/overlay105_rodata.bin", 0x54, 0x64 - 0x54

	.global Unk_ov105_02246330
Unk_ov105_02246330: ; 0x02246330
	.incbin "incbin/overlay105_rodata.bin", 0x64, 0x74 - 0x64

	.global Unk_ov105_02246340
Unk_ov105_02246340: ; 0x02246340
	.incbin "incbin/overlay105_rodata.bin", 0x74, 0x84 - 0x74

	.global Unk_ov105_02246350
Unk_ov105_02246350: ; 0x02246350
	.incbin "incbin/overlay105_rodata.bin", 0x84, 0x98 - 0x84

	.global Unk_ov105_02246364
Unk_ov105_02246364: ; 0x02246364
	.incbin "incbin/overlay105_rodata.bin", 0x98, 0xB0 - 0x98

	.global Unk_ov105_0224637C
Unk_ov105_0224637C: ; 0x0224637C
	.incbin "incbin/overlay105_rodata.bin", 0xB0, 0xC8 - 0xB0

	.global Unk_ov105_02246394
Unk_ov105_02246394: ; 0x02246394
	.incbin "incbin/overlay105_rodata.bin", 0xC8, 0xE0 - 0xC8

	.global Unk_ov105_022463AC
Unk_ov105_022463AC: ; 0x022463AC
	.incbin "incbin/overlay105_rodata.bin", 0xE0, 0xFC - 0xE0

	.global Unk_ov105_022463C8
Unk_ov105_022463C8: ; 0x022463C8
	.incbin "incbin/overlay105_rodata.bin", 0xFC, 0x118 - 0xFC

	.global Unk_ov105_022463E4
Unk_ov105_022463E4: ; 0x022463E4
	.incbin "incbin/overlay105_rodata.bin", 0x118, 0x134 - 0x118

	.global Unk_ov105_02246400
Unk_ov105_02246400: ; 0x02246400
	.incbin "incbin/overlay105_rodata.bin", 0x134, 0x150 - 0x134

	.global Unk_ov105_0224641C
Unk_ov105_0224641C: ; 0x0224641C
	.incbin "incbin/overlay105_rodata.bin", 0x150, 0x28

