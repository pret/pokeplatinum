	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F1CC8
ov5_021F1CC8: ; 0x021F1CC8
	push {r3, r4, r5, lr}
	mov r2, #0
	ldr r1, _021F1CE4 ; =0x00000824
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F1CF8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021F1CE4: .word 0x00000824
	thumb_func_end ov5_021F1CC8

	thumb_func_start ov5_021F1CE8
ov5_021F1CE8: ; 0x021F1CE8
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F1D80
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F1CE8

	thumb_func_start ov5_021F1CF8
ov5_021F1CF8: ; 0x021F1CF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0x65
	ldr r5, [sp, #4]
	lsl r1, r1, #2
	add r4, r0, #4
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r1, _021F1D74 ; =0x000004DC
	ldr r0, [sp, #4]
	ldr r7, _021F1D78 ; =0x0220039C
	add r0, r0, r1
	ldr r6, _021F1D7C ; =0x02200374
	add r5, #0xcc
	str r0, [sp, #8]
_021F1D1E:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r7, #0]
	ldr r0, [r0, #0]
	add r1, r4, #0
	mov r2, #0
	bl ov5_021DFB00
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl sub_02073B70
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r6, #0]
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov5_021DFB00
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_02073B70
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, #0x54
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r4, #0x14
	add r0, #0x54
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r6, r6, #4
	add r0, r0, #1
	add r5, #0x14
	str r0, [sp, #0x10]
	cmp r0, #0xa
	blo _021F1D1E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F1D74: .word 0x000004DC
_021F1D78: .word 0x0220039C
_021F1D7C: .word 0x02200374
	thumb_func_end ov5_021F1CF8

	thumb_func_start ov5_021F1D80
ov5_021F1D80: ; 0x021F1D80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r0, #4
	add r5, #0xcc
_021F1D8A:
	add r0, r4, #0
	bl sub_0207395C
	add r0, r5, #0
	bl sub_0207395C
	add r6, r6, #1
	add r4, #0x14
	add r5, #0x14
	cmp r6, #0xa
	blt _021F1D8A
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F1D80

	thumb_func_start ov5_021F1DA4
ov5_021F1DA4: ; 0x021F1DA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	mov r4, #0
	cmp r0, #4
	bhi _021F1E0E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F1DBE: ; jump table
	.short _021F1DC8 - _021F1DBE - 2 ; case 0
	.short _021F1DD6 - _021F1DBE - 2 ; case 1
	.short _021F1DEE - _021F1DBE - 2 ; case 2
	.short _021F1DFA - _021F1DBE - 2 ; case 3
	.short _021F1DEE - _021F1DBE - 2 ; case 4
_021F1DC8:
	mov r0, #0x65
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x54
	mul r0, r2
	add r4, r1, r0
	b _021F1E0E
_021F1DD6:
	lsl r3, r1, #4
	ldr r1, _021F1E1C ; =0x022003C4
	lsl r2, r2, #2
	add r1, r1, r3
	mov r0, #0x65
	ldr r2, [r2, r1]
	lsl r0, r0, #2
	mov r1, #0x54
	add r0, r5, r0
	mul r1, r2
	add r4, r0, r1
	b _021F1E0E
_021F1DEE:
	ldr r0, _021F1E20 ; =0x000004DC
	add r1, r5, r0
	mov r0, #0x54
	mul r0, r2
	add r4, r1, r0
	b _021F1E0E
_021F1DFA:
	lsl r3, r1, #4
	ldr r1, _021F1E1C ; =0x022003C4
	lsl r2, r2, #2
	add r1, r1, r3
	ldr r0, _021F1E20 ; =0x000004DC
	ldr r2, [r2, r1]
	mov r1, #0x54
	add r0, r5, r0
	mul r1, r2
	add r4, r0, r1
_021F1E0E:
	cmp r4, #0
	bne _021F1E16
	bl sub_02022974
_021F1E16:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021F1E1C: .word 0x022003C4
_021F1E20: .word 0x000004DC
	thumb_func_end ov5_021F1DA4

	thumb_func_start ov5_021F1E24
ov5_021F1E24: ; 0x021F1E24
	push {r4, lr}
	mov r4, #0
	cmp r1, #4
	bhi _021F1E7C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F1E38: ; jump table
	.short _021F1E42 - _021F1E38 - 2 ; case 0
	.short _021F1E4C - _021F1E38 - 2 ; case 1
	.short _021F1E60 - _021F1E38 - 2 ; case 2
	.short _021F1E6A - _021F1E38 - 2 ; case 3
	.short _021F1E60 - _021F1E38 - 2 ; case 4
_021F1E42:
	add r1, r0, #4
	mov r0, #0x14
	mul r0, r2
	add r4, r1, r0
	b _021F1E7C
_021F1E4C:
	ldr r1, _021F1E88 ; =0x022003C4
	lsl r3, r3, #4
	lsl r2, r2, #2
	add r1, r1, r3
	ldr r2, [r2, r1]
	mov r1, #0x14
	add r0, r0, #4
	mul r1, r2
	add r4, r0, r1
	b _021F1E7C
_021F1E60:
	mov r1, #0x14
	add r0, #0xcc
	mul r1, r2
	add r4, r0, r1
	b _021F1E7C
_021F1E6A:
	ldr r1, _021F1E88 ; =0x022003C4
	lsl r3, r3, #4
	lsl r2, r2, #2
	add r1, r1, r3
	ldr r2, [r2, r1]
	mov r1, #0x14
	add r0, #0xcc
	mul r1, r2
	add r4, r0, r1
_021F1E7C:
	cmp r4, #0
	bne _021F1E84
	bl sub_02022974
_021F1E84:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_021F1E88: .word 0x022003C4
	thumb_func_end ov5_021F1E24

	thumb_func_start ov5_021F1E8C
ov5_021F1E8C: ; 0x021F1E8C
	ldr r3, _021F1E94 ; =ov5_021F1ECC
	mov r1, #0
	bx r3
	nop
_021F1E94: .word ov5_021F1ECC
	thumb_func_end ov5_021F1E8C

	thumb_func_start ov5_021F1E98
ov5_021F1E98: ; 0x021F1E98
	ldr r3, _021F1EA0 ; =ov5_021F1ECC
	mov r1, #1
	bx r3
	nop
_021F1EA0: .word ov5_021F1ECC
	thumb_func_end ov5_021F1E98

	thumb_func_start ov5_021F1EA4
ov5_021F1EA4: ; 0x021F1EA4
	ldr r3, _021F1EAC ; =ov5_021F1ECC
	mov r1, #2
	bx r3
	nop
_021F1EAC: .word ov5_021F1ECC
	thumb_func_end ov5_021F1EA4

	thumb_func_start ov5_021F1EB0
ov5_021F1EB0: ; 0x021F1EB0
	ldr r3, _021F1EB8 ; =ov5_021F1ECC
	mov r1, #3
	bx r3
	nop
_021F1EB8: .word ov5_021F1ECC
	thumb_func_end ov5_021F1EB0

	thumb_func_start ov5_021F1EBC
ov5_021F1EBC: ; 0x021F1EBC
	ldr r3, _021F1EC4 ; =ov5_021F1ECC
	mov r1, #4
	bx r3
	nop
_021F1EC4: .word ov5_021F1ECC
	thumb_func_end ov5_021F1EBC

	thumb_func_start ov5_021F1EC8
ov5_021F1EC8: ; 0x021F1EC8
	mov r0, #0
	bx lr
	thumb_func_end ov5_021F1EC8

	thumb_func_start ov5_021F1ECC
ov5_021F1ECC: ; 0x021F1ECC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02063008
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02063018
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02063074
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0206298C
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_02062990
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r7, r0, #0
	add r0, r5, #0
	bl ov5_021DF578
	mov r1, #0xb
	str r0, [sp, #8]
	bl ov5_021DF55C
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r1, r4, #0
	add r5, r0, #0
	str r4, [sp, #0x1c]
	bl ov5_021F1DA4
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021F1E24
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x28
	bl sub_02064450
	str r6, [sp, #0x2c]
	cmp r4, #5
	bhi _021F1F9E
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F1F4C: ; jump table
	.short _021F1F58 - _021F1F4C - 2 ; case 0
	.short _021F1F58 - _021F1F4C - 2 ; case 1
	.short _021F1F7A - _021F1F4C - 2 ; case 2
	.short _021F1F7A - _021F1F4C - 2 ; case 3
	.short _021F1F58 - _021F1F4C - 2 ; case 4
	.short _021F1F58 - _021F1F4C - 2 ; case 5
_021F1F58:
	mov r0, #2
	lsl r0, r0, #0xe
	sub r1, r6, r0
	str r1, [sp, #0x2c]
	sub r1, r4, #2
	cmp r1, #1
	bhi _021F1F70
	ldr r1, [sp, #0x30]
	lsr r0, r0, #2
	sub r0, r1, r0
	str r0, [sp, #0x30]
	b _021F1F9E
_021F1F70:
	ldr r1, [sp, #0x30]
	lsr r0, r0, #3
	add r0, r1, r0
	str r0, [sp, #0x30]
	b _021F1F9E
_021F1F7A:
	mov r0, #0xa
	lsl r0, r0, #0xc
	sub r0, r6, r0
	str r0, [sp, #0x2c]
	sub r0, r4, #2
	cmp r0, #1
	bhi _021F1F94
	mov r0, #2
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x30]
	b _021F1F9E
_021F1F94:
	mov r0, #2
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x30]
_021F1F9E:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, _021F1FB4 ; =0x02200360
	add r2, sp, #0x28
	mov r3, #0
	str r7, [sp, #4]
	bl ov5_021DF72C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F1FB4: .word 0x02200360
	thumb_func_end ov5_021F1ECC

	thumb_func_start ov5_021F1FB8
ov5_021F1FB8: ; 0x021F1FB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715B4
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_020715BC
	ldr r1, [r0, #8]
	str r1, [r4, #0x18]
	ldr r1, [r0, #4]
	str r1, [r4, #0x14]
	mov r1, #0x1f
	str r1, [r4, #0xc]
	ldr r0, [r0, #0]
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F1FB8

	thumb_func_start ov5_021F1FE0
ov5_021F1FE0: ; 0x021F1FE0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F1FE0

	thumb_func_start ov5_021F1FE4
ov5_021F1FE4: ; 0x021F1FE4
	push {r3, lr}
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _021F1FF2
	cmp r2, #1
	beq _021F2004
	pop {r3, pc}
_021F1FF2:
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0x10
	blt _021F2010
	ldr r0, [r1, #0]
	add r0, r0, #1
	str r0, [r1, #0]
	pop {r3, pc}
_021F2004:
	ldr r2, [r1, #0xc]
	sub r2, r2, #2
	str r2, [r1, #0xc]
	bpl _021F2010
	bl ov5_021DF74C
_021F2010:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F1FE4

	thumb_func_start ov5_021F2014
ov5_021F2014: ; 0x021F2014
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _021F2046
	add r1, sp, #0
	bl sub_020715E4
	ldr r0, [r4, #0x14]
	mov r2, #0x1f
	ldr r0, [r0, #0xc]
	mov r1, #1
	lsl r2, r2, #0x10
	bl sub_020B2D8C
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl sub_020B3764
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_02073BB4
_021F2046:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2014

	.rodata


	.global Unk_ov5_02200360
Unk_ov5_02200360: ; 0x02200360
	.incbin "incbin/overlay5_rodata.bin", 0x7A4C, 0x7A60 - 0x7A4C

	.global Unk_ov5_02200374
Unk_ov5_02200374: ; 0x02200374
	.incbin "incbin/overlay5_rodata.bin", 0x7A60, 0x7A88 - 0x7A60

	.global Unk_ov5_0220039C
Unk_ov5_0220039C: ; 0x0220039C
	.incbin "incbin/overlay5_rodata.bin", 0x7A88, 0x7AB0 - 0x7A88

	.global Unk_ov5_022003C4
Unk_ov5_022003C4: ; 0x022003C4
	.incbin "incbin/overlay5_rodata.bin", 0x7AB0, 0x40

