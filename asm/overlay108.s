	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov108_02241AE0
ov108_02241AE0: ; 0x02241AE0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	ldr r0, _02241C2C ; =0x00000068
	mov r1, #2
	bl sub_02006590
	bl ov108_02242344
	mov r2, #2
	mov r0, #3
	mov r1, #0x67
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0xf3
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x67
	bl sub_0200681C
	mov r2, #0xf3
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	bl sub_020D5124
	mov r0, #0x67
	bl sub_02018340
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1, #0]
	add r0, r4, #0
	str r4, [r5, #0]
	bl sub_02006840
	add r4, r0, #0
	add r0, r5, #0
	ldr r1, [r4, #0]
	add r0, #0xdc
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_020304A0
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_020305B8
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1, #0]
	ldrb r0, [r4, #4]
	strb r0, [r5, #9]
	ldrh r0, [r4, #0x1e]
	strh r0, [r5, #0x2a]
	ldrh r0, [r4, #0x1c]
	strh r0, [r5, #0x28]
	ldrh r1, [r4, #0x18]
	ldr r0, _02241C30 ; =0x000003C2
	strh r1, [r5, r0]
	ldrb r1, [r4, #7]
	sub r0, #0x62
	strb r1, [r5, #0x12]
	add r1, r4, #0
	add r1, #0x38
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_02025E44
	add r1, r5, #0
	add r1, #0xd8
	str r0, [r1, #0]
	mov r0, #0xd9
	ldr r1, [r4, #0x30]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0xff
	strb r0, [r5, #0xe]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	bl sub_0203068C
	str r0, [r5, #4]
	mov r0, #0xd7
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r4, #0xc]
	add r0, #0x28
	str r1, [r5, #0x1c]
	ldr r1, [r4, #0x10]
	str r1, [r5, #0x20]
	ldr r1, [r4, #0x14]
	add r4, #0x42
	str r1, [r5, #0x24]
	str r0, [r5, #0x18]
	ldrb r0, [r4]
	strb r0, [r5, #0xc]
	mov r2, #0
	mov r1, #0x20
_02241BC2:
	add r0, r5, r2
	add r0, #0x44
	add r2, r2, #1
	strb r1, [r0]
	cmp r2, #0x20
	blt _02241BC2
	add r0, r5, #0
	mov r1, #4
	add r0, #0x2c
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x2d
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x10
	add r0, #0x2e
	strb r1, [r0]
	mov r0, #0xf
	mov r1, #0
	lsl r0, r0, #6
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov108_02242B1C
	ldr r1, [r5, #0x24]
	strh r0, [r1]
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5, #0x16]
	add r0, r5, #0
	bl ov108_0224237C
	ldrb r0, [r5, #9]
	bl ov104_0223C000
	cmp r0, #1
	bne _02241C1E
	add r0, r5, #0
	bl sub_0209BA80
_02241C1E:
	mov r1, #0
	ldr r0, _02241C34 ; =0x022437A0
	str r1, [r6, #0]
	strb r1, [r0]
	strb r1, [r0, #1]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02241C2C: .word 0x00000068
_02241C30: .word 0x000003C2
_02241C34: .word 0x022437A0
	thumb_func_end ov108_02241AE0

	thumb_func_start ov108_02241C38
ov108_02241C38: ; 0x02241C38
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldrb r1, [r4, #0xe]
	cmp r1, #0xff
	beq _02241C6A
	ldr r1, [r5, #0]
	cmp r1, #1
	bne _02241C6A
	bl ov108_02243008
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	ldrb r1, [r4, #0xe]
	bl ov108_02242A04
	strb r0, [r4, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov108_0224295C
_02241C6A:
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _02241D1C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241C7C: ; jump table
	.short _02241C86 - _02241C7C - 2 ; case 0
	.short _02241C9C - _02241C7C - 2 ; case 1
	.short _02241CE2 - _02241C7C - 2 ; case 2
	.short _02241CF8 - _02241C7C - 2 ; case 3
	.short _02241D0E - _02241C7C - 2 ; case 4
_02241C86:
	add r0, r4, #0
	bl ov108_02241DB0
	cmp r0, #1
	bne _02241D1C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov108_0224295C
	b _02241D1C
_02241C9C:
	add r0, r4, #0
	bl ov108_02241F28
	cmp r0, #1
	bne _02241D1C
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	cmp r0, #1
	bne _02241CC0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov108_0224295C
	b _02241D1C
_02241CC0:
	ldrb r0, [r4, #9]
	bl ov104_0223C000
	cmp r0, #1
	bne _02241CD6
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov108_0224295C
	b _02241D1C
_02241CD6:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov108_0224295C
	b _02241D1C
_02241CE2:
	add r0, r4, #0
	bl ov108_02242104
	cmp r0, #1
	bne _02241D1C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov108_0224295C
	b _02241D1C
_02241CF8:
	add r0, r4, #0
	bl ov108_02242198
	cmp r0, #1
	bne _02241D1C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov108_0224295C
	b _02241D1C
_02241D0E:
	add r0, r4, #0
	bl ov108_022421F0
	cmp r0, #1
	bne _02241D1C
	mov r0, #1
	pop {r3, r4, r5, pc}
_02241D1C:
	ldrb r3, [r4, #0x13]
	add r1, r4, #0
	mov r2, #0xfe
	add r0, r3, #0
	lsl r3, r3, #0x18
	lsr r3, r3, #0x19
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x19
	bic r0, r2
	lsr r3, r3, #0x18
	orr r0, r3
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x13]
	add r1, #0x13
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	cmp r0, #4
	blo _02241D64
	ldrb r0, [r1]
	bic r0, r2
	strb r0, [r1]
	ldrb r3, [r1]
	mov r2, #1
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1f
	lsr r2, r2, #0x1f
	mov r3, #1
	eor r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	and r2, r3
	orr r0, r2
	strb r0, [r1]
_02241D64:
	add r4, #0xe8
	ldr r0, [r4, #0]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov108_02241C38

	thumb_func_start ov108_02241D70
ov108_02241D70: ; 0x02241D70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0x36
	lsl r0, r0, #4
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, r0]
	strh r1, [r0]
	bl sub_0201DC3C
	add r0, r4, #0
	bl ov108_02242238
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x67
	bl sub_0201807C
	ldr r0, _02241DAC ; =0x00000068
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02241DAC: .word 0x00000068
	thumb_func_end ov108_02241D70

	thumb_func_start ov108_02241DB0
ov108_02241DB0: ; 0x02241DB0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #9
	bhi _02241E14
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241DC8: ; jump table
	.short _02241DDC - _02241DC8 - 2 ; case 0
	.short _02241E00 - _02241DC8 - 2 ; case 1
	.short _02241E2A - _02241DC8 - 2 ; case 2
	.short _02241E36 - _02241DC8 - 2 ; case 3
	.short _02241E42 - _02241DC8 - 2 ; case 4
	.short _02241E4E - _02241DC8 - 2 ; case 5
	.short _02241E72 - _02241DC8 - 2 ; case 6
	.short _02241E9A - _02241DC8 - 2 ; case 7
	.short _02241EDA - _02241DC8 - 2 ; case 8
	.short _02241F14 - _02241DC8 - 2 ; case 9
_02241DDC:
	ldrb r0, [r4, #9]
	bl ov104_0223C000
	cmp r0, #1
	bne _02241DF8
	bl sub_020365F4
	mov r0, #0xc7
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241DF8:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E00:
	ldrb r0, [r4, #9]
	bl ov104_0223C000
	cmp r0, #1
	bne _02241E22
	mov r0, #0xc7
	bl sub_02036540
	cmp r0, #1
	beq _02241E16
_02241E14:
	b _02241F22
_02241E16:
	bl sub_020365F4
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E22:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E2A:
	bl ov108_02242BF0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E36:
	bl ov108_02242D5C
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E42:
	bl ov108_02242E10
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E4E:
	ldrb r0, [r4, #9]
	bl ov104_0223C000
	cmp r0, #1
	bne _02241E6A
	bl sub_020365F4
	mov r0, #0xc9
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E6A:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E72:
	ldrb r0, [r4, #9]
	bl ov104_0223C000
	cmp r0, #1
	bne _02241E92
	mov r0, #0xc9
	bl sub_02036540
	cmp r0, #1
	bne _02241F22
	bl sub_020365F4
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E92:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E9A:
	ldrb r0, [r4, #9]
	bl ov104_0223C000
	cmp r0, #1
	bne _02241EBA
	add r0, r4, #0
	mov r1, #0x1e
	mov r2, #0
	bl ov108_02242A38
	cmp r0, #1
	bne _02241F22
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241EBA:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241EDA:
	ldrb r0, [r4, #9]
	bl ov104_0223C000
	cmp r0, #1
	bne _02241F0C
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	blo _02241F22
	mov r0, #0
	strb r0, [r4, #0xf]
	mov r1, #6
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #0x67
	str r1, [sp, #8]
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241F0C:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241F14:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02241F22
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02241F22:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov108_02241DB0

	thumb_func_start ov108_02241F28
ov108_02241F28: ; 0x02241F28
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #8
	bhi _02241FC6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241F3E: ; jump table
	.short _02241F50 - _02241F3E - 2 ; case 0
	.short _02241F64 - _02241F3E - 2 ; case 1
	.short _02241F7A - _02241F3E - 2 ; case 2
	.short _02241FBA - _02241F3E - 2 ; case 3
	.short _02241FF4 - _02241F3E - 2 ; case 4
	.short _0224202C - _02241F3E - 2 ; case 5
	.short _0224207C - _02241F3E - 2 ; case 6
	.short _022420D2 - _02241F3E - 2 ; case 7
	.short _022420E2 - _02241F3E - 2 ; case 8
_02241F50:
	mov r1, #0
	strb r1, [r4, #0xb]
	ldrh r1, [r4, #0x16]
	strb r1, [r4, #0xd]
	ldrb r1, [r4, #0xd]
	bl ov108_022429C8
	mov r0, #1
	strb r0, [r4, #8]
	b _022420F2
_02241F64:
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0xa
	blo _02241FC6
	mov r0, #0
	strb r0, [r4, #0xb]
	mov r0, #2
	strb r0, [r4, #8]
	b _022420F2
_02241F7A:
	mov r7, #0xb6
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_02241F82:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02241F9A
	mov r1, #0x20
	bl ov108_022435F4
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov108_022435A8
_02241F9A:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _02241F82
	add r0, r4, #0
	mov r1, #3
	bl ov108_02242884
	ldr r0, _022420F8 ; =0x00000609
	bl sub_02005748
	mov r0, #0x18
	strb r0, [r4, #0xb]
	mov r0, #3
	strb r0, [r4, #8]
	b _022420F2
_02241FBA:
	ldrb r0, [r4, #0xb]
	sub r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _02241FC8
_02241FC6:
	b _022420F2
_02241FC8:
	mov r7, #0xb6
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_02241FD0:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02241FDC
	mov r1, #0x21
	bl ov108_022435F4
_02241FDC:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _02241FD0
	ldr r0, _022420F8 ; =0x00000609
	bl sub_02005748
	mov r0, #0x18
	strb r0, [r4, #0xb]
	mov r0, #4
	strb r0, [r4, #8]
	b _022420F2
_02241FF4:
	ldrb r0, [r4, #0xb]
	sub r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _022420F2
	mov r7, #0xb6
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_02242008:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02242014
	mov r1, #0x22
	bl ov108_022435F4
_02242014:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _02242008
	ldr r0, _022420F8 ; =0x00000609
	bl sub_02005748
	mov r0, #0x18
	strb r0, [r4, #0xb]
	mov r0, #5
	strb r0, [r4, #8]
	b _022420F2
_0224202C:
	ldrb r0, [r4, #0xb]
	sub r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _022420F2
	mov r7, #0xb6
	mov r5, #0
	add r6, r4, #0
	lsl r7, r7, #2
_02242040:
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _02242050
	add r1, r4, r5
	add r1, #0x34
	ldrb r1, [r1]
	bl ov108_022435F4
_02242050:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #0x10
	blt _02242040
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov108_022435A8
	ldr r0, _022420FC ; =0x00000624
	bl sub_02005748
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov108_022435F4
	mov r0, #6
	strb r0, [r4, #8]
	b _022420F2
_0224207C:
	ldr r1, _02242100 ; =0x021BF67C
	ldr r1, [r1, #0x48]
	bl ov108_02242964
	bl sub_0203608C
	cmp r0, #0
	bne _02242096
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _02242096
	sub r0, r0, #1
	str r0, [r4, #0x18]
_02242096:
	add r0, r4, #0
	bl ov108_02242FE8
	cmp r0, #1
	beq _022420A6
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _022420F2
_022420A6:
	add r0, r4, #0
	bl ov108_022429FC
	ldrb r0, [r4, #9]
	bl ov104_0223C000
	cmp r0, #0
	bne _022420BC
	mov r0, #7
	strb r0, [r4, #8]
	b _022420F2
_022420BC:
	add r0, r4, #0
	add r0, #0x2f
	ldrb r1, [r0]
	mov r0, #0xfe
	add r4, #0x2f
	bic r1, r0
	mov r0, #2
	orr r0, r1
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022420D2:
	ldrb r1, [r4, #0xd]
	bl ov108_02242BA0
	mov r0, #0x1e
	strb r0, [r4, #0xb]
	mov r0, #8
	strb r0, [r4, #8]
	b _022420F2
_022420E2:
	ldrb r0, [r4, #0xb]
	sub r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _022420F2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022420F2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022420F8: .word 0x00000609
_022420FC: .word 0x00000624
_02242100: .word 0x021BF67C
	thumb_func_end ov108_02241F28

	thumb_func_start ov108_02242104
ov108_02242104: ; 0x02242104
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #4
	bhi _02242194
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224211A: ; jump table
	.short _02242124 - _0224211A - 2 ; case 0
	.short _02242148 - _0224211A - 2 ; case 1
	.short _0224214E - _0224211A - 2 ; case 2
	.short _02242166 - _0224211A - 2 ; case 3
	.short _02242178 - _0224211A - 2 ; case 4
_02242124:
	ldrb r2, [r4, #0x14]
	mov r1, #0x1f
	bl ov108_02242A38
	cmp r0, #1
	bne _02242194
	add r0, r4, #0
	add r0, #0x2f
	ldrb r1, [r0]
	mov r0, #0xfe
	bic r1, r0
	add r0, r4, #0
	add r0, #0x2f
	strb r1, [r0]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242194
_02242148:
	add r0, r1, #1
	strb r0, [r4, #8]
	b _02242194
_0224214E:
	ldrb r1, [r4, #0xe]
	cmp r1, #0xff
	beq _02242194
	mov r1, #0
	strb r1, [r4, #0xf]
	ldrb r1, [r4, #0xe]
	bl ov108_02242BA0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242194
_02242166:
	bl sub_020365F4
	mov r0, #0x97
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242194
_02242178:
	mov r0, #0x97
	bl sub_02036540
	cmp r0, #1
	bne _02242194
	bl sub_020365F4
	mov r0, #0x67
	bl sub_020363E8
	mov r0, #0xff
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r4, pc}
_02242194:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov108_02242104

	thumb_func_start ov108_02242198
ov108_02242198: ; 0x02242198
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _022421AC
	cmp r0, #1
	beq _022421B8
	cmp r0, #2
	beq _022421DA
	b _022421EC
_022421AC:
	mov r0, #0xf
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022421EC
_022421B8:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _022421C2
	sub r0, r0, #1
	strb r0, [r4, #0xb]
_022421C2:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _022421EC
	bl sub_020365F4
	mov r0, #0x98
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022421EC
_022421DA:
	mov r0, #0x98
	bl sub_02036540
	cmp r0, #1
	bne _022421EC
	bl sub_020365F4
	mov r0, #1
	pop {r4, pc}
_022421EC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov108_02242198

	thumb_func_start ov108_022421F0
ov108_022421F0: ; 0x022421F0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02242202
	cmp r0, #1
	beq _02242222
	b _02242230
_02242202:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02242230
_02242222:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02242230
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02242230:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov108_022421F0

	thumb_func_start ov108_02242238
ov108_02242238: ; 0x02242238
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0224224A
	bl ov108_02243594
_0224224A:
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02242258
	bl ov108_02243594
_02242258:
	mov r7, #0xb6
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02242260:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224226A
	bl ov108_02243594
_0224226A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02242260
	ldrb r0, [r6, #9]
	mov r1, #1
	bl ov104_0223BD70
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _022422C4
	add r4, r6, #0
_02242284:
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02242292
	bl ov108_02243594
_02242292:
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022422A0
	bl ov108_02243594
_022422A0:
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022422AE
	bl ov108_02243594
_022422AE:
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022422BC
	bl ov108_02243594
_022422BC:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r7
	blt _02242284
_022422C4:
	bl sub_02039794
	add r0, r6, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02002FA0
	add r0, r6, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02002FA0
	add r0, r6, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl sub_02002F54
	add r0, r6, #0
	mov r1, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0xe8
	bl ov108_02243194
	ldr r0, [r6, #0x68]
	bl sub_0200B190
	ldr r0, [r6, #0x6c]
	bl sub_0200B3F0
	ldr r0, [r6, #0x70]
	bl sub_020237BC
	ldr r0, [r6, #0x74]
	bl sub_020237BC
	mov r5, #0
	add r4, r6, #0
_02242316:
	ldr r0, [r4, #0x78]
	bl sub_020237BC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _02242316
	add r0, r6, #0
	add r0, #0x94
	bl ov108_02243660
	add r0, r6, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov108_022426D4
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02006CA8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov108_02242238

	thumb_func_start ov108_02242344
ov108_02242344: ; 0x02242344
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
	ldr r0, _02242374 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02242378 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_02242374: .word 0xFFFFE0FF
_02242378: .word 0x04001000
	thumb_func_end ov108_02242344

	thumb_func_start ov108_0224237C
ov108_0224237C: ; 0x0224237C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x18]
	mov r0, #0x96
	mov r1, #0x67
	bl sub_02006C24
	mov r2, #0xdb
	ldr r1, [sp, #0x18]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	bl ov108_02242658
	ldr r0, [sp, #0x18]
	bl ov108_022426B0
	mov r2, #0x86
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x67
	bl sub_0200B144
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x68]
	mov r0, #0x67
	bl sub_0200B358
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x6c]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x67
	bl sub_02023790
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x70]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x67
	bl sub_02023790
	ldr r1, [sp, #0x18]
	mov r4, #0
	str r0, [r1, #0x74]
	add r5, r1, #0
	mov r6, #0x20
	mov r7, #0x67
_022423DE:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02023790
	str r0, [r5, #0x78]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _022423DE
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x67
	bl sub_02002E7C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x67
	bl sub_02002E98
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, #0x90
	ldr r0, [r0, #0]
	add r1, #0x94
	bl ov108_02243630
	mov r0, #0x23
	str r0, [sp]
	mov r0, #0x44
	str r0, [sp, #4]
	mov r0, #0x24
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x14]
	mov r1, #1
	add r0, #0xe8
	add r2, r1, #0
	add r3, r1, #0
	bl ov108_0224351C
	mov r2, #0xb5
	ldr r1, [sp, #0x18]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	mov r1, #0
	bl ov108_022435A8
	ldr r4, [sp, #0x18]
	mov r5, #0
	add r6, r4, #0
	mov r7, #0x20
	add r6, #0xe8
_02242456:
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #0x28
	mul r0, r1
	add r0, #0x44
	lsl r0, r0, #0x10
	str r7, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	asr r0, r5, #1
	lsr r0, r0, #0x1e
	add r0, r5, r0
	asr r1, r0, #2
	mov r0, #0x28
	mul r0, r1
	mov r1, #1
	add r0, #0x24
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov108_0224351C
	mov r1, #0xb6
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov108_022435A8
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x10
	blt _02242456
	ldr r0, [sp, #0x18]
	mov r1, #1
	ldrb r0, [r0, #9]
	bl ov104_0223BD70
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #9]
	bl ov104_0223C000
	cmp r0, #0
	bne _022424D4
	mov r0, #0x32
	mov r7, #0x2e
	str r0, [sp, #0x20]
	b _022424DA
_022424D4:
	mov r0, #0x1a
	mov r7, #0x16
	str r0, [sp, #0x20]
_022424DA:
	ldr r0, [sp, #0x1c]
	mov r5, #0
	cmp r0, #0
	bgt _022424E4
	b _022425FE
_022424E4:
	ldr r4, [sp, #0x18]
	add r6, r4, #0
	add r6, #0xe8
_022424EA:
	mov r0, #0
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov108_0224351C
	mov r1, #0xce
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #2
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf6
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r3, r1, #0
	bl ov108_0224351C
	mov r1, #0xd2
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0
	mov r2, #3
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r5, #3
	add r3, r2, #0
	bl ov108_0224351C
	mov r1, #0xc6
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xee
	str r0, [sp, #4]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0
	mov r2, #3
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r5, #7
	add r3, r2, #0
	bl ov108_0224351C
	mov r1, #0xca
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xd9
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov108_02243610
	mov r0, #0xda
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov108_02243610
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov108_02243624
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov108_02243624
	ldr r0, [sp, #0x20]
	add r5, r5, #1
	add r0, #0x28
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r4, r4, #4
	add r7, #0x28
	cmp r5, r0
	bge _022425FE
	b _022424EA
_022425FE:
	ldr r0, [sp, #0x18]
	bl ov108_02242F38
	mov r1, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r1, #0
	add r0, #0xe8
	add r3, r1, #0
	bl ov108_0224351C
	mov r2, #0xd6
	ldr r1, [sp, #0x18]
	lsl r2, r2, #2
	str r0, [r1, r2]
	bl sub_02035E38
	cmp r0, #0
	beq _02242648
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	bl sub_02039734
_02242648:
	ldr r0, _02242654 ; =ov108_02242708
	ldr r1, [sp, #0x18]
	bl sub_02017798
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02242654: .word ov108_02242708
	thumb_func_end ov108_0224237C

	thumb_func_start ov108_02242658
ov108_02242658: ; 0x02242658
	push {r4, lr}
	add r4, r0, #0
	bl ov108_02242740
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov108_02242760
	mov r0, #0x67
	bl sub_02002F38
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xd4
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r2, r1, #8
	mov r3, #0x67
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xd4
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x67
	bl sub_02002F70
	add r0, r4, #0
	mov r1, #3
	bl ov108_02242828
	bl ov108_022428C0
	add r0, r4, #0
	mov r1, #4
	bl ov108_022428F4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov108_02242658

	thumb_func_start ov108_022426B0
ov108_022426B0: ; 0x022426B0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov104_0223C000
	add r3, r0, #0
	mov r2, #0xd9
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	add r2, r2, #4
	add r0, r4, #0
	lsl r3, r3, #0x18
	ldr r2, [r4, r2]
	add r0, #0xe8
	lsr r3, r3, #0x18
	bl ov108_02243030
	pop {r4, pc}
	thumb_func_end ov108_022426B0

	thumb_func_start ov108_022426D4
ov108_022426D4: ; 0x022426D4
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
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov108_022426D4

	thumb_func_start ov108_02242708
ov108_02242708: ; 0x02242708
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02242718
	bl sub_02003694
_02242718:
	add r4, #0x90
	ldr r0, [r4, #0]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _02242738 ; =0x027E0000
	ldr r1, _0224273C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02242738: .word 0x027E0000
_0224273C: .word 0x00003FF8
	thumb_func_end ov108_02242708

	thumb_func_start ov108_02242740
ov108_02242740: ; 0x02242740
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0224275C ; =0x02243738
	add r3, sp, #0
	mov r2, #5
_0224274A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224274A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0224275C: .word 0x02243738
	thumb_func_end ov108_02242740

	thumb_func_start ov108_02242760
ov108_02242760: ; 0x02242760
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _02242814 ; =0x022436A0
	add r3, sp, #0x54
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02242818 ; =0x022436E0
	add r3, sp, #0x38
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
	mov r3, #0x67
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0224281C ; =0x022436FC
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
	ldr r5, _02242820 ; =0x022436C4
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
	ldr r1, _02242824 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	add sp, #0x64
	pop {r4, r5, pc}
	; .align 2, 0
_02242814: .word 0x022436A0
_02242818: .word 0x022436E0
_0224281C: .word 0x022436FC
_02242820: .word 0x022436C4
_02242824: .word 0x04000008
	thumb_func_end ov108_02242760

	thumb_func_start ov108_02242828
ov108_02242828: ; 0x02242828
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x67
	str r0, [sp, #0xc]
	mov r0, #0xdb
	add r2, r5, #0
	lsl r0, r0, #2
	add r2, #0x90
	ldr r0, [r5, r0]
	ldr r2, [r2, #0]
	mov r1, #0x78
	add r3, r4, #0
	bl sub_020070E8
	ldrb r0, [r5, #9]
	bl ov104_0223C000
	cmp r0, #0
	bne _02242860
	mov r1, #0x74
	b _02242862
_02242860:
	mov r1, #0x76
_02242862:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r5, #0x90
	ldr r2, [r5, #0]
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov108_02242828

	thumb_func_start ov108_02242884
ov108_02242884: ; 0x02242884
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	bl ov104_0223C000
	cmp r0, #0
	bne _0224289A
	mov r1, #0x75
	b _0224289C
_0224289A:
	mov r1, #0x77
_0224289C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r5, #0x90
	ldr r2, [r5, #0]
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov108_02242884

	thumb_func_start ov108_022428C0
ov108_022428C0: ; 0x022428C0
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0xa7
	add r2, sp, #0
	mov r3, #0x67
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0xe0
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0xe0
	bl sub_020C00B4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov108_022428C0

	thumb_func_start ov108_022428F4
ov108_022428F4: ; 0x022428F4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x67
	str r0, [sp, #0xc]
	mov r0, #0xdb
	add r2, r5, #0
	lsl r0, r0, #2
	add r2, #0x90
	ldr r0, [r5, r0]
	ldr r2, [r2, #0]
	mov r1, #0x7a
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x67
	str r0, [sp, #4]
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xa8
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	mov r0, #0xdb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r5, #0x90
	ldr r2, [r5, #0]
	mov r1, #0x79
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov108_022428F4

	thumb_func_start ov108_0224295C
ov108_0224295C: ; 0x0224295C
	mov r3, #0
	strb r3, [r0, #8]
	str r2, [r1, #0]
	bx lr
	thumb_func_end ov108_0224295C

	thumb_func_start ov108_02242964
ov108_02242964: ; 0x02242964
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldrb r1, [r0]
	ldrb r0, [r4, #0x10]
	lsl r1, r1, #1
	add r0, r0, #1
	strb r0, [r4, #0x10]
	ldr r0, _022429C0 ; =0x0224368F
	ldrb r2, [r4, #0x10]
	ldrb r0, [r0, r1]
	cmp r2, r0
	blo _022429BE
	mov r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0224299A
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	b _0224299E
_0224299A:
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
_0224299E:
	strb r0, [r4, #0xd]
	ldr r0, _022429C4 ; =0x000005E5
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x2e
	ldrb r1, [r4, #0xd]
	ldrb r0, [r0]
	cmp r1, r0
	blo _022429B6
	mov r0, #0
	strb r0, [r4, #0xd]
_022429B6:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov108_022429C8
_022429BE:
	pop {r4, pc}
	; .align 2, 0
_022429C0: .word 0x0224368F
_022429C4: .word 0x000005E5
	thumb_func_end ov108_02242964

	thumb_func_start ov108_022429C8
ov108_022429C8: ; 0x022429C8
	push {r4, lr}
	add r2, r1, #0
	mov r1, #0xb5
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x1e
	sub r3, r3, r4
	mov r1, #0x1e
	ror r3, r1
	add r1, r4, r3
	mov r3, #0x28
	add r4, r1, #0
	mul r4, r3
	lsr r2, r2, #2
	mul r3, r2
	add r4, #0x44
	add r3, #0x24
	lsl r1, r4, #0x10
	lsl r2, r3, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov108_022435B4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov108_022429C8

	thumb_func_start ov108_022429FC
ov108_022429FC: ; 0x022429FC
	ldrb r1, [r0, #0xd]
	strb r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov108_022429FC

	thumb_func_start ov108_02242A04
ov108_02242A04: ; 0x02242A04
	cmp r1, r0
	blo _02242A0E
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_02242A0E:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov108_02242A04

	thumb_func_start ov108_02242A14
ov108_02242A14: ; 0x02242A14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	ldrh r4, [r5, #0x28]
	bl ov104_0223C000
	cmp r0, #1
	bne _02242A30
	ldr r0, _02242A34 ; =0x000003C2
	ldrh r1, [r5, r0]
	ldrh r0, [r5, #0x28]
	cmp r1, r0
	bls _02242A30
	add r4, r1, #0
_02242A30:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02242A34: .word 0x000003C2
	thumb_func_end ov108_02242A14

	thumb_func_start ov108_02242A38
ov108_02242A38: ; 0x02242A38
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #0x1e
	beq _02242A4A
	cmp r1, #0x1f
	beq _02242A52
	cmp r1, #0x20
	beq _02242A5A
	b _02242A60
_02242A4A:
	mov r5, #0x47
	bl ov108_02242A7C
	b _02242A60
_02242A52:
	mov r5, #0x48
	bl ov108_02242AE8
	b _02242A60
_02242A5A:
	mov r5, #0x49
	bl ov108_02242B74
_02242A60:
	mov r1, #0x37
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _02242A76
	mov r0, #1
	pop {r3, r4, r5, pc}
_02242A76:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov108_02242A38

	thumb_func_start ov108_02242A7C
ov108_02242A7C: ; 0x02242A7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xdc
	ldr r0, [r0, #0]
	add r4, r1, #0
	bl sub_02025E38
	mov r0, #0x37
	lsl r0, r0, #4
	strh r4, [r5, r0]
	mov r2, #0
	add r3, r5, #0
	add r1, r0, #4
_02242A96:
	add r0, r5, r2
	add r0, #0x34
	ldrb r0, [r0]
	add r2, r2, #1
	strh r0, [r3, r1]
	add r3, r3, #2
	cmp r2, #0x10
	blt _02242A96
	ldrh r1, [r5, #0x16]
	mov r0, #0xe5
	lsl r0, r0, #2
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov108_02242A7C

	thumb_func_start ov108_02242AB0
ov108_02242AB0: ; 0x02242AB0
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #0xf]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0xf]
	bl sub_0203608C
	cmp r6, r0
	beq _02242AE6
	bl sub_0203608C
	cmp r0, #0
	beq _02242AE6
	mov r2, #0
	add r3, r5, #0
_02242AD2:
	ldrh r1, [r3, #4]
	add r0, r4, r2
	add r0, #0x34
	add r2, r2, #1
	add r3, r3, #2
	strb r1, [r0]
	cmp r2, #0x10
	blt _02242AD2
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x16]
_02242AE6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov108_02242AB0

	thumb_func_start ov108_02242AE8
ov108_02242AE8: ; 0x02242AE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x37
	lsl r0, r0, #4
	strh r1, [r5, r0]
	add r4, r2, #0
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _02242B08
	ldrb r0, [r5, #0xe]
	cmp r0, #0xff
	bne _02242B08
	strb r4, [r5, #0xe]
_02242B08:
	ldrb r1, [r5, #0xe]
	mov r0, #0xdd
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldr r1, [r5, #0x24]
	add r0, r0, #2
	ldrh r1, [r1]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov108_02242AE8

	thumb_func_start ov108_02242B1C
ov108_02242B1C: ; 0x02242B1C
	ldr r3, _02242B20 ; =sub_0201D2E8
	bx r3
	; .align 2, 0
_02242B20: .word sub_0201D2E8
	thumb_func_end ov108_02242B1C

	thumb_func_start ov108_02242B24
ov108_02242B24: ; 0x02242B24
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #0xf]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0xf]
	bl sub_0203608C
	cmp r6, r0
	beq _02242B6E
	ldrh r1, [r5, #2]
	ldr r0, _02242B70 ; =0x000003C1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _02242B64
	ldrb r0, [r4, #0xe]
	cmp r0, #0xff
	ldr r0, _02242B70 ; =0x000003C1
	beq _02242B56
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02242B56:
	ldrb r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r0, r1, r0
	strb r0, [r4, #0xe]
	pop {r4, r5, r6, pc}
_02242B64:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0xe]
	ldrh r1, [r5, #6]
	ldr r0, [r4, #0x24]
	strh r1, [r0]
_02242B6E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02242B70: .word 0x000003C1
	thumb_func_end ov108_02242B24

	thumb_func_start ov108_02242B74
ov108_02242B74: ; 0x02242B74
	mov r2, #0x37
	lsl r2, r2, #4
	strh r1, [r0, r2]
	ldrb r3, [r0, #0xd]
	add r1, r2, #2
	strh r3, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov108_02242B74

	thumb_func_start ov108_02242B84
ov108_02242B84: ; 0x02242B84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _02242B9C
	ldrh r1, [r4, #2]
	mov r0, #0xf
	lsl r0, r0, #6
	strb r1, [r6, r0]
_02242B9C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov108_02242B84

	thumb_func_start ov108_02242BA0
ov108_02242BA0: ; 0x02242BA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, #0x2e
	ldrb r0, [r0]
	bl ov108_02242A04
	ldr r1, [sp]
	str r0, [sp, #4]
	add r0, r1, r0
	add r0, #0x34
	ldrb r6, [r0]
	add r0, r1, #0
	ldr r0, [r0, #0x20]
	mov r7, #0xb6
	strb r6, [r0]
	mov r4, #0
	add r5, r1, #0
	lsl r7, r7, #2
_02242BC6:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02242BD2
	add r1, r6, #0
	bl ov108_022435F4
_02242BD2:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02242BC6
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov108_022429C8
	ldr r0, _02242BEC ; =0x000005E3
	bl sub_02005748
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242BEC: .word 0x000005E3
	thumb_func_end ov108_02242BA0

	thumb_func_start ov108_02242BF0
ov108_02242BF0: ; 0x02242BF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r0, [sp, #4]
	add r0, #0x64
	ldr r5, _02242D50 ; =0x02243718
	mov r7, #0
	str r0, [sp, #4]
_02242C00:
	ldrh r0, [r6, #0x2a]
	cmp r0, #5
	bhi _02242C4E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242C12: ; jump table
	.short _02242C1E - _02242C12 - 2 ; case 0
	.short _02242C26 - _02242C12 - 2 ; case 1
	.short _02242C2E - _02242C12 - 2 ; case 2
	.short _02242C36 - _02242C12 - 2 ; case 3
	.short _02242C3E - _02242C12 - 2 ; case 4
	.short _02242C46 - _02242C12 - 2 ; case 5
_02242C1E:
	ldrb r0, [r5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	b _02242C54
_02242C26:
	ldrb r0, [r5]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	b _02242C54
_02242C2E:
	ldrb r0, [r5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	b _02242C54
_02242C36:
	ldrb r0, [r5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	b _02242C54
_02242C3E:
	ldrb r0, [r5]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	b _02242C54
_02242C46:
	ldrb r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	b _02242C54
_02242C4E:
	ldrb r0, [r5]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
_02242C54:
	cmp r0, #1
	bne _02242D42
	add r0, r7, #0
	sub r0, #0x18
	mov r4, #0xff
	cmp r0, #7
	bhi _02242C98
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242C6E: ; jump table
	.short _02242C82 - _02242C6E - 2 ; case 0
	.short _02242C86 - _02242C6E - 2 ; case 1
	.short _02242C8A - _02242C6E - 2 ; case 2
	.short _02242C7E - _02242C6E - 2 ; case 3
	.short _02242C8E - _02242C6E - 2 ; case 4
	.short _02242C92 - _02242C6E - 2 ; case 5
	.short _02242C98 - _02242C6E - 2 ; case 6
	.short _02242C96 - _02242C6E - 2 ; case 7
_02242C7E:
	mov r4, #0
	b _02242C98
_02242C82:
	mov r4, #1
	b _02242C98
_02242C86:
	mov r4, #2
	b _02242C98
_02242C8A:
	mov r4, #3
	b _02242C98
_02242C8E:
	mov r4, #4
	b _02242C98
_02242C92:
	mov r4, #5
	b _02242C98
_02242C96:
	mov r4, #6
_02242C98:
	add r0, r6, #0
	bl ov108_02242A14
	mov r1, #7
	str r0, [sp]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	ldr r1, [sp]
	ldr r0, _02242D54 ; =0x0000270F
	cmp r1, r0
	blo _02242CB4
	mov r2, #6
_02242CB4:
	cmp r4, #0xff
	beq _02242D26
	cmp r2, #7
	bhi _02242D1E
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242CC8: ; jump table
	.short _02242CD8 - _02242CC8 - 2 ; case 0
	.short _02242CE2 - _02242CC8 - 2 ; case 1
	.short _02242CEC - _02242CC8 - 2 ; case 2
	.short _02242CF6 - _02242CC8 - 2 ; case 3
	.short _02242D00 - _02242CC8 - 2 ; case 4
	.short _02242D0A - _02242CC8 - 2 ; case 5
	.short _02242D14 - _02242CC8 - 2 ; case 6
	.short _02242D14 - _02242CC8 - 2 ; case 7
_02242CD8:
	ldr r0, _02242D58 ; =0x02243680
	ldrb r0, [r0, r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	b _02242D28
_02242CE2:
	ldr r0, _02242D58 ; =0x02243680
	ldrb r0, [r0, r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	b _02242D28
_02242CEC:
	ldr r0, _02242D58 ; =0x02243680
	ldrb r0, [r0, r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	b _02242D28
_02242CF6:
	ldr r0, _02242D58 ; =0x02243680
	ldrb r0, [r0, r4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	b _02242D28
_02242D00:
	ldr r0, _02242D58 ; =0x02243680
	ldrb r0, [r0, r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	b _02242D28
_02242D0A:
	ldr r0, _02242D58 ; =0x02243680
	ldrb r0, [r0, r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	b _02242D28
_02242D14:
	ldr r0, _02242D58 ; =0x02243680
	ldrb r0, [r0, r4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	b _02242D28
_02242D1E:
	bl sub_02022974
	mov r0, #1
	b _02242D28
_02242D26:
	mov r0, #1
_02242D28:
	cmp r0, #1
	bne _02242D42
	add r0, r6, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r0, r6, r0
	add r0, #0x44
	strb r7, [r0]
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	strb r1, [r0]
_02242D42:
	add r7, r7, #1
	add r5, r5, #1
	cmp r7, #0x20
	bhs _02242D4C
	b _02242C00
_02242D4C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242D50: .word 0x02243718
_02242D54: .word 0x0000270F
_02242D58: .word 0x02243680
	thumb_func_end ov108_02242BF0

	thumb_func_start ov108_02242D5C
ov108_02242D5C: ; 0x02242D5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r3, [r5, #0x12]
	ldr r2, _02242E0C ; =0x0224367C
	mov r1, #0
_02242D68:
	ldrb r0, [r2]
	cmp r3, r0
	bhs _02242D76
	add r1, r1, #1
	add r2, r2, #1
	cmp r1, #4
	blo _02242D68
_02242D76:
	add r0, r5, #0
	strb r1, [r5, #0x11]
	add r0, #0x64
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _02242E06
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x33
	str r0, [sp, #4]
	add r0, r5, #0
	str r0, [sp]
	add r0, #0x32
	add r7, r5, #0
	add r6, r5, #0
	str r0, [sp]
	add r7, #0x31
	add r6, #0x30
_02242D9C:
	add r0, r5, r4
	add r0, #0x44
	ldrb r0, [r0]
	bl ov104_0223C148
	cmp r0, #0
	bne _02242DB2
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	b _02242DFA
_02242DB2:
	add r0, r5, r4
	add r0, #0x44
	ldrb r0, [r0]
	bl ov104_0223C148
	cmp r0, #1
	bne _02242DC8
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	b _02242DFA
_02242DC8:
	add r0, r5, r4
	add r0, #0x44
	ldrb r0, [r0]
	bl ov104_0223C148
	cmp r0, #2
	bne _02242DE2
	ldr r0, [sp]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0]
	b _02242DFA
_02242DE2:
	add r0, r5, r4
	add r0, #0x44
	ldrb r0, [r0]
	bl ov104_0223C148
	cmp r0, #3
	bne _02242DFA
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	strb r1, [r0]
_02242DFA:
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _02242D9C
_02242E06:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242E0C: .word 0x0224367C
	thumb_func_end ov108_02242D5C

	thumb_func_start ov108_02242E10
ov108_02242E10: ; 0x02242E10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
_02242E1A:
	ldrb r1, [r6, #0x11]
	add r0, r6, #0
	bl ov108_02242EF4
	add r5, r0, #0
	add r0, r6, r5
	add r0, #0x30
	mov r4, #0
	ldrb r7, [r0]
	cmp r5, #0
	beq _02242E70
	cmp r5, #1
	bne _02242E3E
	add r0, r6, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r4, r4, r0
	b _02242E70
_02242E3E:
	cmp r5, #2
	bne _02242E54
	add r0, r6, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r1, r4, r0
	add r0, r6, #0
	add r0, #0x31
	ldrb r0, [r0]
	add r4, r1, r0
	b _02242E70
_02242E54:
	cmp r5, #3
	bne _02242E70
	add r0, r6, #0
	add r0, #0x30
	ldrb r0, [r0]
	add r1, r4, r0
	add r0, r6, #0
	add r0, #0x31
	ldrb r0, [r0]
	add r1, r1, r0
	add r0, r6, #0
	add r0, #0x32
	ldrb r0, [r0]
	add r4, r1, r0
_02242E70:
	bl sub_0201D2E8
	add r1, r7, #0
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r7, #0
_02242E8C:
	cmp r7, #0x32
	blt _02242EA0
	bl sub_02022974
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, r6, r0
	add r0, #0x34
	strb r1, [r0]
	b _02242EE6
_02242EA0:
	add r0, r6, r4
	add r0, #0x44
	ldrb r0, [r0]
	bl ov104_0223C148
	cmp r5, r0
	bne _02242EBE
	add r0, r6, r4
	add r0, #0x44
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	add r0, r6, r0
	add r0, #0x34
	strb r1, [r0]
	b _02242EE6
_02242EBE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r7, r7, #1
	cmp r4, r0
	blo _02242ED2
	mov r4, #0
_02242ED2:
	ldr r0, [sp]
	cmp r4, r0
	bne _02242E8C
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _02242E8C
	mov r5, #0
	b _02242E8C
_02242EE6:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0x10
	blt _02242E1A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov108_02242E10

	thumb_func_start ov108_02242EF4
ov108_02242EF4: ; 0x02242EF4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r5, #0
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	ldr r3, _02242F34 ; =0x022436B0
	lsl r1, r4, #2
	add r0, r5, #0
	add r1, r3, r1
_02242F10:
	ldrb r3, [r1, r0]
	add r3, r5, r3
	lsl r3, r3, #0x18
	lsr r5, r3, #0x18
	cmp r2, r5
	blt _02242F26
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _02242F10
_02242F26:
	cmp r0, #4
	blo _02242F30
	bl sub_02022974
	mov r0, #0
_02242F30:
	pop {r3, r4, r5, pc}
	nop
_02242F34: .word 0x022436B0
	thumb_func_end ov108_02242EF4

	thumb_func_start ov108_02242F38
ov108_02242F38: ; 0x02242F38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov104_0223BD70
	add r6, r0, #0
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov104_0223BDA4
	add r7, r0, #0
	mov r4, #0
	cmp r6, #0
	bls _02242F9A
_02242F56:
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02242F80
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov108_022435A8
	b _02242F90
_02242F80:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov108_022435A8
_02242F90:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _02242F56
_02242F9A:
	mov r4, #0
	cmp r7, #0
	bls _02242FE4
	mov r6, #0xda
	lsl r6, r6, #2
_02242FA4:
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02242FCA
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov108_022435A8
	b _02242FDA
_02242FCA:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov108_022435A8
_02242FDA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r7
	blo _02242FA4
_02242FE4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov108_02242F38

	thumb_func_start ov108_02242FE8
ov108_02242FE8: ; 0x02242FE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02243004 ; =0x02243687
	bl sub_020226DC
	cmp r0, #0
	bne _02243000
	add r0, r4, #0
	bl ov108_02243008
	mov r0, #1
	pop {r4, pc}
_02243000:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02243004: .word 0x02243687
	thumb_func_end ov108_02242FE8

	thumb_func_start ov108_02243008
ov108_02243008: ; 0x02243008
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02243028 ; =0x000005DC
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0224302C ; =0x000005E4
	bl sub_02005748
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov108_022435F4
	pop {r4, pc}
	; .align 2, 0
_02243028: .word 0x000005DC
_0224302C: .word 0x000005E4
	thumb_func_end ov108_02243008

	thumb_func_start ov108_02243030
ov108_02243030: ; 0x02243030
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r1, [sp, #0x14]
	mov r0, #0x20
	mov r1, #0x67
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl sub_0201DBEC
	bl ov108_022431FC
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x67
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	mov r0, #0x22
	add r1, r5, #4
	mov r2, #0x67
	bl sub_020095C4
	ldr r4, _022430EC ; =0x02243760
	str r0, [r5, #0]
	mov r7, #0
	add r6, r5, #0
_02243076:
	ldrb r0, [r4]
	add r1, r7, #0
	mov r2, #0x67
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #1
	add r6, r6, #4
	cmp r7, #4
	blt _02243076
	add r0, r5, #0
	bl ov108_02243490
	add r0, r5, #0
	bl ov108_02243230
	add r0, r5, #0
	bl ov108_022432B4
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	bl ov108_02243360
	mov r7, #0x4f
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_022430B6:
	ldr r0, [r4, r7]
	bl sub_0200A328
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #0xb
	blt _022430B6
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_022430CA:
	ldr r0, [r5, r6]
	bl sub_0200A5C8
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _022430CA
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022430EC: .word 0x02243760
	thumb_func_end ov108_02243030

	thumb_func_start ov108_022430F0
ov108_022430F0: ; 0x022430F0
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r4, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r5, #0
	ldr r0, [sp, #0x98]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	str r6, [sp, #0x14]
	add r6, r0, #4
	ldr r6, [r4, r6]
	str r6, [sp, #0x18]
	add r6, r0, #0
	add r6, #8
	ldr r6, [r4, r6]
	add r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r4, r0]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	add r0, sp, #0x5c
	bl sub_020093B4
	ldr r0, [r4, #0]
	mov r1, #1
	lsl r1, r1, #0xc
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	add r0, r5, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	add r1, sp, #0x2c
	strh r0, [r1, #0x20]
	ldr r1, [sp, #0x94]
	str r1, [sp, #0x50]
	mov r1, #0x67
	str r1, [sp, #0x58]
	add r1, sp, #0x80
	ldrb r1, [r1, #0x1c]
	cmp r1, #0
	bne _02243162
	mov r0, #1
	str r0, [sp, #0x54]
	b _0224316E
_02243162:
	mov r1, #2
	str r1, [sp, #0x54]
	mov r1, #3
	lsl r1, r1, #0x12
	add r0, r0, r1
	str r0, [sp, #0x38]
_0224316E:
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #1
	add r4, r0, #0
	bl sub_02021CC8
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r1, [sp, #0x90]
	add r0, r4, #0
	bl sub_02021D6C
	add r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	thumb_func_end ov108_022430F0

	thumb_func_start ov108_02243194
ov108_02243194: ; 0x02243194
	push {r4, r5, r6, lr}
	mov r6, #0x4f
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0224319E:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0200A4E4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	blo _0224319E
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_022431B8:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0200A6DC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _022431B8
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_022431D2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02009754
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _022431D2
	ldr r0, [r5, #0]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov108_02243194

	thumb_func_start ov108_022431FC
ov108_022431FC: ; 0x022431FC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0224322C ; =0x02243764
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #0xe
	mov r1, #0x67
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0224322C: .word 0x02243764
	thumb_func_end ov108_022431FC

	thumb_func_start ov108_02243230
ov108_02243230: ; 0x02243230
	push {r4, lr}
	sub sp, #0x10
	mov r3, #1
	str r3, [sp]
	add r4, r0, #0
	str r3, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x12
	bl sub_0200985C
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	add r0, #0xc9
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x28
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x14
	bl sub_02009918
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r3, #1
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xd1
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x13
	bl sub_02009918
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov108_02243230

	thumb_func_start ov108_022432B4
ov108_022432B4: ; 0x022432B4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x14
	mov r1, #0x67
	bl sub_02006C24
	add r4, r0, #0
	bl sub_02081930
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_02081934
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	add r0, #0xc9
	ldr r0, [r5, r0]
	mov r1, #0x14
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_02081938
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_0208193C
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xd1
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov108_022432B4

	thumb_func_start ov108_02243360
ov108_02243360: ; 0x02243360
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x13
	mov r1, #0x67
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_02006C24
	str r0, [sp, #0x18]
	bl sub_02079FD0
	mov r1, #3
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	add r0, #0xc9
	ldr r0, [r6, r0]
	mov r1, #0x13
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r6, r1]
	bl sub_02079FD8
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r6, r1]
	bl sub_02079FE4
	add r2, r0, #0
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xd1
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009BC4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r4, #0
	add r5, r6, #0
_022433E6:
	cmp r4, #3
	bne _0224341C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02243406
	add r0, r7, #0
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x1c]
	b _02243430
_02243406:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x1c]
	b _02243430
_0224341C:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #0x1c]
_02243430:
	ldr r0, [sp, #0x20]
	bl sub_02079D80
	add r2, r0, #0
	add r0, r4, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x1c]
	bl sub_02079D80
	add r2, r0, #0
	add r0, r4, #7
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	mov r3, #0
	bl sub_02009A4C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blo _022433E6
	ldr r0, [sp, #0x18]
	bl sub_02006CA8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov108_02243360

	thumb_func_start ov108_02243490
ov108_02243490: ; 0x02243490
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xc5
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x15
	mov r3, #1
	bl sub_0200985C
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r0, [sp, #0xc]
	add r0, #0xc9
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x29
	bl sub_020098B8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xcd
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x17
	mov r3, #1
	bl sub_02009918
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x67
	str r0, [sp, #8]
	add r0, #0xd1
	ldr r0, [r4, r0]
	mov r1, #0x97
	mov r2, #0x16
	mov r3, #1
	bl sub_02009918
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov108_02243490

	thumb_func_start ov108_0224351C
ov108_0224351C: ; 0x0224351C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x67
	mov r1, #0x14
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02243538:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02243538
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, sp, #0x4c
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov108_022430F0
	str r0, [r4, #0x10]
	add r0, sp, #0x28
	ldrh r3, [r0, #0x14]
	strh r3, [r4, #0xc]
	ldrh r1, [r0, #0x18]
	add r0, sp, #0x4c
	ldrb r2, [r0]
	strh r1, [r4, #0xe]
	lsl r0, r3, #0xc
	strb r2, [r4, #0xb]
	lsl r1, r1, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	cmp r2, #1
	bne _02243584
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x18]
_02243584:
	ldr r0, [r4, #0x10]
	add r1, sp, #0x14
	bl sub_02021C50
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov108_0224351C

	thumb_func_start ov108_02243594
ov108_02243594: ; 0x02243594
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov108_02243594

	thumb_func_start ov108_022435A8
ov108_022435A8: ; 0x022435A8
	ldr r3, _022435B0 ; =sub_02021CAC
	ldr r0, [r0, #0x10]
	bx r3
	nop
_022435B0: .word sub_02021CAC
	thumb_func_end ov108_022435A8

	thumb_func_start ov108_022435B4
ov108_022435B4: ; 0x022435B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	lsl r1, r6, #0xc
	str r0, [r2, #0]
	lsl r0, r4, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _022435E6
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #4]
_022435E6:
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov108_022435B4

	thumb_func_start ov108_022435F4
ov108_022435F4: ; 0x022435F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	ldr r0, [r5, #0x10]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl sub_02021DCC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov108_022435F4

	thumb_func_start ov108_02243610
ov108_02243610: ; 0x02243610
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02079FC4
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02021F24
	pop {r4, pc}
	thumb_func_end ov108_02243610

	thumb_func_start ov108_02243624
ov108_02243624: ; 0x02243624
	ldr r3, _0224362C ; =sub_02021CC8
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0224362C: .word sub_02021CC8
	thumb_func_end ov108_02243624

	thumb_func_start ov108_02243630
ov108_02243630: ; 0x02243630
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
_02243638:
	ldr r2, _0224365C ; =0x02243774
	lsl r6, r4, #4
	lsl r3, r4, #3
	add r0, r7, #0
	add r1, r5, r6
	add r2, r2, r3
	bl sub_0201A8D4
	add r0, r5, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _02243638
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224365C: .word 0x02243774
	thumb_func_end ov108_02243630

	thumb_func_start ov108_02243660
ov108_02243660: ; 0x02243660
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02243666:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _02243666
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov108_02243660
	; 0x0224367C


	.rodata
	.incbin "incbin/overlay108_rodata.bin"


	.bss
	.space 0x20
