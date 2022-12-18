	.include "macros/function.inc"
	.include "include/ov22_0225B660.inc"

	

	.text


	thumb_func_start ov22_0225B660
ov22_0225B660: ; 0x0225B660
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl sub_02017FC8
	mov r1, #0x1a
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0xd
	bl sub_0200681C
	mov r2, #0x1a
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _0225B730 ; =ov22_0225B848
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	ldr r0, [r5, #0]
	bne _0225B6BC
	ldr r1, [r5, #4]
	bl sub_02029CA8
	str r0, [r4, #0]
	b _0225B6C4
_0225B6BC:
	ldr r1, [r5, #4]
	bl sub_02029CD0
	str r0, [r4, #4]
_0225B6C4:
	ldr r0, [r5, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	str r0, [r4, #0xc]
	bl ov22_02255094
	ldr r0, _0225B734 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0xe
	bl ov22_022555D4
	ldr r0, [r4, #0x54]
	str r0, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	add r0, sp, #0
	bne _0225B704
	ldr r1, [r4, #0]
	bl ov22_0225AF8C
	b _0225B70A
_0225B704:
	ldr r1, [r4, #4]
	bl ov22_0225AFB0
_0225B70A:
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl ov22_0225B85C
	add r0, r4, #0
	bl ov22_0225B910
	add r0, r4, #0
	bl ov22_0225B964
	add r0, r4, #0
	bl ov22_0225BA40
	add r0, r4, #0
	bl ov22_0225BAD0
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225B730: .word ov22_0225B848
_0225B734: .word 0x021BF6DC
	thumb_func_end ov22_0225B660

	thumb_func_start ov22_0225B738
ov22_0225B738: ; 0x0225B738
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl sub_0200682C
	add r5, r0, #0
	bl sub_020241B4
	bl sub_020A73C0
	ldr r0, [r5, #0x10]
	bl ov22_0225AFF8
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add r5, #0x14
	add r0, r5, #0
	bl ov22_0225562C
	ldr r0, [r4, #0]
	cmp r0, #5
	bhi _0225B7F2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225B774: ; jump table
	.short _0225B780 - _0225B774 - 2 ; case 0
	.short _0225B786 - _0225B774 - 2 ; case 1
	.short _0225B7A4 - _0225B774 - 2 ; case 2
	.short _0225B7B4 - _0225B774 - 2 ; case 3
	.short _0225B7C4 - _0225B774 - 2 ; case 4
	.short _0225B7E4 - _0225B774 - 2 ; case 5
_0225B780:
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B786:
	mov r0, #6
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #5
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B7A4:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225B7F2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B7B4:
	ldr r1, _0225B7F8 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _0225B7F2
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B7C4:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B7E4:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225B7F2
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0225B7F2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0225B7F8: .word 0x021BF67C
	thumb_func_end ov22_0225B738

	thumb_func_start ov22_0225B7FC
ov22_0225B7FC: ; 0x0225B7FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov22_0225B020
	add r0, r4, #0
	bl ov22_0225BA00
	add r0, r4, #0
	bl ov22_0225BAA8
	add r4, #0x14
	add r0, r4, #0
	bl ov22_022555FC
	bl ov22_022550B4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0xd
	bl sub_0201807C
	mov r0, #0xe
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B7FC

	thumb_func_start ov22_0225B848
ov22_0225B848: ; 0x0225B848
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov22_0225B06C
	add r4, #0x14
	add r0, r4, #0
	bl ov22_0225561C
	pop {r4, pc}
	thumb_func_end ov22_0225B848

	thumb_func_start ov22_0225B85C
ov22_0225B85C: ; 0x0225B85C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x7e
	mov r2, #0
	mov r3, #0x60
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x54]
	mov r1, #0x7d
	mov r3, #1
	bl sub_020070E8
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0225B8A2
	mov r1, #0x80
	mov r4, #4
	b _0225B8A6
_0225B8A2:
	mov r1, #0x7f
	mov r4, #3
_0225B8A6:
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0
	add r3, sp, #0x10
	bl sub_020071D0
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl sub_020198C0
	ldr r1, [sp, #0x10]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl sub_02019E2C
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_0225B85C

	thumb_func_start ov22_0225B910
ov22_0225B910: ; 0x0225B910
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xc
	add r1, r0, #0
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0xc
	mov r1, #0xb
	mov r3, #4
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0xc
	mov r1, #0xa
	mov r3, #4
	bl sub_02006E3C
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B910

	thumb_func_start ov22_0225B964
ov22_0225B964: ; 0x0225B964
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp, #4]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xe9
	mov r3, #0
	bl ov22_02255248
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp, #8]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xea
	mov r3, #0
	bl ov22_02255268
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xe8
	mov r3, #0
	bl ov22_0225528C
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xe7
	mov r3, #0
	bl ov22_022552A8
	mov r0, #0x64
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	mov r2, #0
	mov r3, #0x90
	bl ov22_022551E4
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021E80
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov22_0225B964

	thumb_func_start ov22_0225BA00
ov22_0225BA00: ; 0x0225BA00
	push {r4, lr}
	mov r1, #0xfa
	add r4, r0, #0
	add r0, #0x14
	lsl r1, r1, #2
	bl ov22_022552C4
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	bl ov22_022552D8
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	bl ov22_022552EC
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	bl ov22_02255300
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021BD4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225BA00

	thumb_func_start ov22_0225BA40
ov22_0225BA40: ; 0x0225BA40
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0xe
	mov r1, #1
	bl sub_0201A778
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x54]
	ldr r1, [r4, r1]
	mov r2, #3
	mov r3, #0
	bl sub_0201A7E8
	mov r0, #0
	mov r1, #0xa0
	mov r2, #0xe
	bl sub_02002E7C
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #0
	mov r1, #2
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r1, #3
	ldr r0, [r4, #0x54]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225BA40

	thumb_func_start ov22_0225BAA8
ov22_0225BAA8: ; 0x0225BAA8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201ACF4
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A8FC
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0201A928
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225BAA8

	thumb_func_start ov22_0225BAD0
ov22_0225BAD0: ; 0x0225BAD0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0225BAEE
	add r0, r4, #0
	bl ov22_0225BB00
	b _0225BAF4
_0225BAEE:
	add r0, r4, #0
	bl ov22_0225BC18
_0225BAF4:
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A954
	pop {r4, pc}
	thumb_func_end ov22_0225BAD0

	thumb_func_start ov22_0225BB00
ov22_0225BB00: ; 0x0225BB00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r2, _0225BC10 ; =0x00000181
	add r5, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0225BB1C
	bl sub_02022974
_0225BB1C:
	mov r0, #0xd
	bl sub_0200B358
	add r6, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_02021D6C
	mov r0, #3
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x14
	bl sub_02021C50
	mov r0, #0xc
	mov r1, #0xd
	bl sub_02023790
	add r7, r0, #0
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_0202A1A0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r4, r0, #0
	mov r0, #7
	str r0, [sp]
	mov r1, #0
	lsr r3, r4, #0x1f
	add r3, r4, r3
	asr r4, r3, #1
	mov r3, #0x80
	ldr r0, _0225BC14 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r7, #0
	sub r3, r3, r4
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [r5, #0]
	bl sub_0202A1F4
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200BE48
	mov r0, #0xc8
	mov r1, #0xd
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0x2d
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x1b
	str r0, [sp]
	mov r1, #0
	ldr r0, _0225BC14 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	mov r3, #0x80
	add r2, r4, #0
	sub r3, r3, r5
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add r0, r6, #0
	bl sub_0200B3F0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BC10: .word 0x00000181
_0225BC14: .word 0x00010200
	thumb_func_end ov22_0225BB00

	thumb_func_start ov22_0225BC18
ov22_0225BC18: ; 0x0225BC18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, #8]
	bl sub_02021D6C
	ldr r0, [r5, #4]
	bl sub_0202A5D0
	add r6, r0, #0
	mov r0, #0xd
	bl sub_0200B358
	add r7, r0, #0
	mov r0, #0xc8
	mov r1, #0xd
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_020958B8
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_0200BBDC
	add r0, r6, #0
	bl sub_02095888
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl sub_0200BBA8
	ldr r0, [r5, #4]
	bl sub_0202A544
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0202A524
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #3
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200B48C
	mov r0, #0xd
	bl sub_02073C74
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl sub_0202A560
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #4
	bl sub_0200B5CC
	add r0, r6, #0
	bl sub_020181C4
	ldr r2, _0225BD70 ; =0x00000181
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0225BCC4
	bl sub_02022974
_0225BCC4:
	ldr r0, [sp, #0x10]
	mov r1, #0x2b
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #7
	str r0, [sp]
	mov r1, #0
	lsr r6, r3, #0x1f
	add r6, r3, r6
	ldr r0, _0225BD74 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	asr r6, r6, #1
	mov r3, #0x80
	add r2, r4, #0
	sub r3, r3, r6
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	mov r1, #0x2c
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x1b
	str r0, [sp]
	mov r1, #0
	ldr r0, _0225BD74 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	mov r3, #0x80
	add r2, r4, #0
	sub r3, r3, r5
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add r0, r7, #0
	bl sub_0200B3F0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225BD70: .word 0x00000181
_0225BD74: .word 0x00010200
	thumb_func_end ov22_0225BC18