	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov83_0223B5A0
ov83_0223B5A0: ; 0x0223B5A0
	push {r3, lr}
	ldr r0, [r0, #0x18]
	bl ov83_0223CBFC
	bl sub_0201DCAC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov83_0223B5A0

	thumb_func_start ov83_0223B5B0
ov83_0223B5B0: ; 0x0223B5B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02006840
	mov r2, #2
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x38
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, _0223B64C ; =0x00001604
	add r0, r5, #0
	mov r2, #0x38
	bl sub_0200681C
	ldr r2, _0223B64C ; =0x00001604
	add r5, r0, #0
	mov r1, #0
	bl sub_020D5124
	str r5, [r4, #0x18]
	mov r1, #0x38
	str r1, [r5, #0]
	mov r0, #0x10
	bl sub_0201DBEC
	ldrh r0, [r4, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _0223B5F4
	mov r1, #1
	b _0223B5F6
_0223B5F4:
	mov r1, #0
_0223B5F6:
	ldr r0, _0223B650 ; =0x0000142C
	str r1, [r5, r0]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	ldr r1, [r1, #0x10]
	bl ov83_0223D150
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223B614
	mov r0, #1
	bl sub_0203632C
_0223B614:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x18]
	bl sub_02027B50
	str r0, [r5, #0x24]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x18]
	bl sub_02027AC0
	str r0, [r5, #0x28]
	mov r0, #0xae
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _0223B654 ; =ov83_0223B5A0
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	ldr r1, _0223B658 ; =0x0000049F
	mov r0, #0xc
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0223B64C: .word 0x00001604
_0223B650: .word 0x0000142C
_0223B654: .word ov83_0223B5A0
_0223B658: .word 0x0000049F
	thumb_func_end ov83_0223B5B0

	thumb_func_start ov83_0223B65C
ov83_0223B65C: ; 0x0223B65C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02006840
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, _0223B70C ; =0x0224024C
	str r0, [sp]
	lsl r0, r0, #3
	add r1, r1, r0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223B68A
	cmp r0, #1
	beq _0223B6CC
	cmp r0, #2
	beq _0223B6DC
	b _0223B6F0
_0223B68A:
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _0223B6F0
	ldr r6, [r1, #4]
	add r2, r4, #0
	add r0, r7, #0
	add r1, r4, #0
	add r2, #0x10
	blx r3
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _0223B6AC
	ldrb r0, [r4, #0x1a]
	str r0, [r4, #0xc]
	mov r0, #0
	strb r0, [r4, #0x19]
_0223B6AC:
	ldr r1, [r4, #0xc]
	ldr r0, [sp]
	cmp r0, r1
	beq _0223B6F0
	mov r0, #0
	str r0, [r4, #0x10]
	ldrh r0, [r7, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _0223B6F0
	cmp r6, #0
	beq _0223B6F0
	str r6, [r4, #8]
	mov r0, #1
	str r0, [r5, #0]
	b _0223B6F0
_0223B6CC:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020364F0
	mov r0, #2
	str r0, [r5, #0]
	b _0223B6F0
_0223B6DC:
	ldr r0, [r4, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	cmp r0, #0
	beq _0223B6F0
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r4, #8]
_0223B6F0:
	add r0, r4, #0
	bl ov83_0223CBA4
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x20]
	bl sub_02038A1C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0223B708
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223B708:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B70C: .word 0x0224024C
	thumb_func_end ov83_0223B65C

	thumb_func_start ov83_0223B710
ov83_0223B710: ; 0x0223B710
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02006840
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200682C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	ldr r7, [r6, #0]
	cmp r0, #0
	beq _0223B73A
	bl sub_0203608C
	cmp r0, #0
	bne _0223B73A
	bl ov4_021D25FC
_0223B73A:
	add r0, r6, #0
	bl ov83_0223D1EC
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201DC3C
	ldr r2, _0223B770 ; =0x00001604
	add r0, r6, #0
	mov r1, #0
	bl sub_020C4CF4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	str r0, [r4, #0x18]
	add r0, r7, #0
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B770: .word 0x00001604
	thumb_func_end ov83_0223B710

	thumb_func_start ov83_0223B774
ov83_0223B774: ; 0x0223B774
	strb r1, [r0, #0x18]
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov83_0223B774

	thumb_func_start ov83_0223B77C
ov83_0223B77C: ; 0x0223B77C
	strb r1, [r0, #0x1a]
	mov r1, #1
	strb r1, [r0, #0x19]
	bx lr
	thumb_func_end ov83_0223B77C

	thumb_func_start ov83_0223B784
ov83_0223B784: ; 0x0223B784
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223B784

	thumb_func_start ov83_0223B78C
ov83_0223B78C: ; 0x0223B78C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, [r4, #0]
	add r5, r1, #0
	cmp r2, #0
	beq _0223B7A8
	cmp r2, #1
	bne _0223B7A0
	b _0223B8B2
_0223B7A0:
	cmp r2, #2
	bne _0223B7A6
	b _0223B8D0
_0223B7A6:
	b _0223B8E0
_0223B7A8:
	bl ov83_0223C82C
	ldr r0, _0223B8E8 ; =0x00001428
	ldr r0, [r5, r0]
	bl ov83_0223D570
	cmp r0, #0
	bne _0223B7C2
	mov r0, #0xba
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov83_0223FDB0
_0223B7C2:
	ldr r0, [r5, #0x24]
	ldr r2, _0223B8EC ; =0x0000157C
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r3, _0223B8F0 ; =0x00001424
	str r0, [sp, #4]
	ldr r0, _0223B8F4 ; =0x0000054C
	ldr r1, [r5, r3]
	add r3, #0xc
	add r0, r5, r0
	add r2, r5, r2
	add r3, r5, r3
	bl ov83_0223DEA0
	ldr r0, _0223B8F8 ; =0x000005A4
	add r0, r5, r0
	bl ov83_0223E340
	ldr r0, [r5, #0x24]
	ldr r2, _0223B8EC ; =0x0000157C
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r3, _0223B8F0 ; =0x00001424
	str r0, [sp, #4]
	ldr r0, _0223B8FC ; =0x0000063C
	ldr r1, [r5, r3]
	add r3, #0xc
	add r0, r5, r0
	add r2, r5, r2
	add r3, r5, r3
	bl ov83_0223E6D4
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r5, r0
	bl ov83_0223E244
	ldr r0, _0223B900 ; =0x0000058C
	add r0, r5, r0
	bl ov83_0223E244
	ldr r0, _0223B904 ; =0x00000598
	add r0, r5, r0
	bl ov83_0223E244
	ldr r3, _0223B908 ; =0x00001430
	ldr r0, _0223B90C ; =0x0000061C
	add r2, r3, #0
	add r1, r5, r3
	sub r2, #0xc
	sub r3, #8
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov83_0223E5A4
	ldr r0, _0223B910 ; =0x00000674
	add r0, r5, r0
	bl ov83_0223ED3C
	ldr r0, _0223B914 ; =0x00000A88
	add r0, r5, r0
	bl ov83_0223F29C
	ldr r1, _0223B8F0 ; =0x00001424
	ldr r0, _0223B918 ; =0x00000B08
	ldr r1, [r5, r1]
	add r0, r5, r0
	bl ov83_0223F494
	mov r0, #0x2d
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov83_0223F820
	add r0, r5, #0
	bl ov83_0223C958
	bl sub_02039734
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _0223B8F0 ; =0x00001424
	ldr r0, [r5, r0]
	cmp r0, #1
	ble _0223B87A
	ldr r0, _0223B8F4 ; =0x0000054C
	add r0, r5, r0
	bl ov83_0223DF84
_0223B87A:
	ldr r0, _0223B8F8 ; =0x000005A4
	mov r1, #3
	add r0, r5, r0
	mov r2, #1
	bl ov83_0223E484
	ldr r0, _0223B8F8 ; =0x000005A4
	mov r1, #4
	add r0, r5, r0
	mov r2, #1
	bl ov83_0223E484
	ldr r0, _0223B8F8 ; =0x000005A4
	mov r1, #5
	add r0, r5, r0
	mov r2, #1
	bl ov83_0223E484
	ldr r0, _0223B8F8 ; =0x000005A4
	mov r1, #6
	add r0, r5, r0
	mov r2, #1
	bl ov83_0223E484
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B8E0
_0223B8B2:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0]
	ldr r3, _0223B91C ; =0x0000FFFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B8E0
_0223B8D0:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223B8E0
	ldr r0, [r5, #0xc]
	add sp, #0xc
	add r0, r0, #1
	pop {r4, r5, pc}
_0223B8E0:
	ldr r0, [r5, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223B8E8: .word 0x00001428
_0223B8EC: .word 0x0000157C
_0223B8F0: .word 0x00001424
_0223B8F4: .word 0x0000054C
_0223B8F8: .word 0x000005A4
_0223B8FC: .word 0x0000063C
_0223B900: .word 0x0000058C
_0223B904: .word 0x00000598
_0223B908: .word 0x00001430
_0223B90C: .word 0x0000061C
_0223B910: .word 0x00000674
_0223B914: .word 0x00000A88
_0223B918: .word 0x00000B08
_0223B91C: .word 0x0000FFFF
	thumb_func_end ov83_0223B78C

	thumb_func_start ov83_0223B920
ov83_0223B920: ; 0x0223B920
	push {r4, lr}
	ldr r0, _0223B94C ; =0x00001428
	add r4, r1, #0
	ldr r0, [r4, r0]
	bl ov83_0223D570
	cmp r0, #0
	bne _0223B946
	ldr r3, _0223B94C ; =0x00001428
	mov r1, #0
	ldr r3, [r4, r3]
	mov r0, #0x16
	add r2, r1, #0
	bl ov83_0223D508
	cmp r0, #0
	bne _0223B946
	ldr r0, [r4, #0xc]
	pop {r4, pc}
_0223B946:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	pop {r4, pc}
	; .align 2, 0
_0223B94C: .word 0x00001428
	thumb_func_end ov83_0223B920

	thumb_func_start ov83_0223B950
ov83_0223B950: ; 0x0223B950
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0223B95E
	ldrb r0, [r1, #0x18]
	str r0, [r1, #0xc]
	mov r0, #0
	str r0, [r1, #0x14]
_0223B95E:
	ldr r0, [r1, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223B950

	thumb_func_start ov83_0223B964
ov83_0223B964: ; 0x0223B964
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223B97A
	cmp r1, #1
	beq _0223B990
	cmp r1, #2
	beq _0223B9B4
	b _0223B9D2
_0223B97A:
	ldr r1, _0223B9DC ; =0x00001424
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r1, [r5, r1]
	add r0, r5, r0
	bl ov83_0223DB18
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B9D6
_0223B990:
	ldr r1, [r0, #8]
	ldr r0, _0223B9E0 ; =0x00001430
	mov r2, #0
	str r1, [r5, r0]
	ldr r0, _0223B9E4 ; =0x000015F8
	add r3, r5, #0
	mov r1, #2
_0223B99E:
	add r2, r2, #1
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r2, #5
	blt _0223B99E
	ldr r0, _0223B9E8 ; =0x00001602
	strh r1, [r5, r0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B9D6
_0223B9B4:
	bl ov83_0223D4B8
	ldr r3, _0223B9E0 ; =0x00001430
	add r2, r0, #0
	add r1, r5, r3
	sub r3, #8
	ldr r3, [r5, r3]
	mov r0, #0x19
	bl ov83_0223D508
	cmp r0, #1
	bne _0223B9D6
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	pop {r3, r4, r5, pc}
_0223B9D2:
	bl sub_02022974
_0223B9D6:
	ldr r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	nop
_0223B9DC: .word 0x00001424
_0223B9E0: .word 0x00001430
_0223B9E4: .word 0x000015F8
_0223B9E8: .word 0x00001602
	thumb_func_end ov83_0223B964

	thumb_func_start ov83_0223B9EC
ov83_0223B9EC: ; 0x0223B9EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #5
	bls _0223B9FA
	b _0223BB18
_0223B9FA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BA06: ; jump table
	.short _0223BA12 - _0223BA06 - 2 ; case 0
	.short _0223BA26 - _0223BA06 - 2 ; case 1
	.short _0223BA38 - _0223BA06 - 2 ; case 2
	.short _0223BA78 - _0223BA06 - 2 ; case 3
	.short _0223BA94 - _0223BA06 - 2 ; case 4
	.short _0223BABA - _0223BA06 - 2 ; case 5
_0223BA12:
	ldr r0, _0223BB1C ; =0x0000141C
	ldr r1, [r4, #0]
	ldr r2, [r4, #0x20]
	add r0, r4, r0
	bl ov83_0223F790
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223BB18
_0223BA26:
	mov r0, #0xd7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov83_0223DC68
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223BB18
_0223BA38:
	mov r0, #0xd7
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov83_0223DD30
	add r1, r0, #0
	cmp r1, #1
	bne _0223BA5C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, _0223BB20 ; =0x0000054C
	add r0, r4, r0
	bl ov83_0223DF70
	mov r0, #0x18
	str r0, [r4, #0x1c]
	b _0223BB18
_0223BA5C:
	cmp r1, #0
	beq _0223BB18
	add r2, r4, r1
	ldr r1, _0223BB24 ; =0x0000155E
	ldr r0, _0223BB20 ; =0x0000054C
	ldrb r2, [r2, r1]
	sub r1, #0xc2
	add r0, r4, r0
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r1, [r2, r1]
	bl ov83_0223DF30
	b _0223BB18
_0223BA78:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ble _0223BA84
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	b _0223BB18
_0223BA84:
	ldr r0, _0223BB28 ; =0x00000598
	add r0, r4, r0
	bl ov83_0223E2FC
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223BB18
_0223BA94:
	ldr r0, _0223BB28 ; =0x00000598
	add r0, r4, r0
	bl ov83_0223E32C
	cmp r0, #0
	beq _0223BB18
	ldr r0, _0223BB20 ; =0x0000054C
	add r0, r4, r0
	bl ov83_0223DFAC
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov83_0223E2E4
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223BB18
_0223BABA:
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov83_0223E32C
	add r6, r0, #0
	ldr r0, _0223BB2C ; =0x00000588
	ldr r0, [r4, r0]
	bl sub_02021E74
	add r7, r0, #0
	add r0, r7, #1
	mov r1, #3
	bl sub_020E1F6C
	add r5, r0, #0
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, r5
	beq _0223BAFC
	cmp r7, #0xa
	bge _0223BAF0
	ldr r0, _0223BB30 ; =0x000006BD
	bl sub_02005748
	b _0223BAF6
_0223BAF0:
	ldr r0, _0223BB34 ; =0x000006BE
	bl sub_02005748
_0223BAF6:
	mov r0, #0xd6
	lsl r0, r0, #2
	str r5, [r4, r0]
_0223BAFC:
	cmp r6, #0
	beq _0223BB18
	ldr r0, _0223BB38 ; =0x0000061C
	mov r1, #1
	add r0, r4, r0
	bl ov83_0223E69C
	ldr r0, _0223BB3C ; =0x000005A4
	add r0, r4, r0
	bl ov83_0223E500
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223BB18:
	ldr r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BB1C: .word 0x0000141C
_0223BB20: .word 0x0000054C
_0223BB24: .word 0x0000155E
_0223BB28: .word 0x00000598
_0223BB2C: .word 0x00000588
_0223BB30: .word 0x000006BD
_0223BB34: .word 0x000006BE
_0223BB38: .word 0x0000061C
_0223BB3C: .word 0x000005A4
	thumb_func_end ov83_0223B9EC

	thumb_func_start ov83_0223BB40
ov83_0223BB40: ; 0x0223BB40
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0x2d
	add r5, r1, #0
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov83_0223F83C
	ldr r0, _0223BCC4 ; =0x00001434
	mov r1, #0x2d
	lsl r1, r1, #4
	add r0, r5, r0
	add r1, r5, r1
	bl ov83_0223F88C
	ldr r0, _0223BCC8 ; =0x00001428
	ldr r0, [r5, r0]
	bl ov83_0223D570
	cmp r0, #0
	bne _0223BBCE
	ldr r2, _0223BCCC ; =0x00001430
	mov r0, #0xba
	add r1, r5, r2
	sub r2, #0xc
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl ov83_0223FDD8
	cmp r0, #1
	bne _0223BB92
	ldr r3, _0223BCC8 ; =0x00001428
	mov r1, #0
	ldr r3, [r5, r3]
	mov r0, #0x17
	add r2, r1, #0
	bl ov83_0223D508
	ldr r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0223BB92:
	mov r0, #0xba
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov83_0223FFA0
	ldr r0, _0223BCD0 ; =0x00001578
	ldr r2, _0223BCCC ; =0x00001430
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223BBBE
	mov r0, #0xba
	add r1, r5, r2
	sub r2, #0xc
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl ov83_0223FE50
	ldr r0, _0223BCD0 ; =0x00001578
	mov r1, #1
	str r1, [r5, r0]
	b _0223BBCE
_0223BBBE:
	mov r0, #0xba
	add r1, r5, r2
	sub r2, #0xc
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl ov83_0223FEC0
_0223BBCE:
	add r4, #0x26
	ldrb r0, [r4]
	cmp r0, #0
	beq _0223BC84
	ldr r0, _0223BCD4 ; =0x000015F4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r2, [r5, r0]
	mov r1, #1
	tst r1, r2
	bne _0223BC9E
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, _0223BCC8 ; =0x00001428
	ldr r0, [r5, r0]
	bl ov83_0223D570
	cmp r0, #0
	bne _0223BC5E
	mov r7, #1
	add r6, r7, #0
	add r4, r5, #2
_0223BBFC:
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0223BC12
	ldr r0, _0223BCD8 ; =0x000015F8
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0223BC12
	mov r7, #0
_0223BC12:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #8
	blt _0223BBFC
	cmp r7, #0
	beq _0223BC9E
	bl ov83_0223D4BC
	ldr r3, _0223BCC4 ; =0x00001434
	add r2, r0, #0
	add r1, r5, r3
	sub r3, #0xc
	ldr r3, [r5, r3]
	mov r0, #0x1a
	bl ov83_0223D508
	ldr r0, _0223BCD0 ; =0x00001578
	mov r1, #0
	add r7, r0, #0
	str r1, [r5, r0]
	mov r6, #1
	add r4, r5, #2
	add r7, #0x80
_0223BC40:
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0223BC54
	ldr r0, _0223BCD8 ; =0x000015F8
	ldrh r0, [r4, r0]
	sub r0, r0, #1
	strh r0, [r4, r7]
_0223BC54:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #8
	blt _0223BC40
	b _0223BC9E
_0223BC5E:
	ldr r0, _0223BCDC ; =0x00001602
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0223BC9E
	bl ov83_0223D4C8
	ldr r3, _0223BCC4 ; =0x00001434
	add r2, r0, #0
	add r1, r5, r3
	sub r3, #0xc
	ldr r3, [r5, r3]
	mov r0, #0x20
	bl ov83_0223D508
	ldr r0, _0223BCDC ; =0x00001602
	ldrh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, r0]
	b _0223BC9E
_0223BC84:
	bl ov83_0223D4BC
	ldr r3, _0223BCC4 ; =0x00001434
	add r2, r0, #0
	add r1, r5, r3
	sub r3, #0xc
	ldr r3, [r5, r3]
	mov r0, #0x1a
	bl ov83_0223D508
	ldr r0, _0223BCD0 ; =0x00001578
	mov r1, #0
	str r1, [r5, r0]
_0223BC9E:
	add r0, r5, #0
	bl ov83_0223C3E8
	ldr r0, _0223BCE0 ; =0x00000674
	ldr r1, _0223BCCC ; =0x00001430
	add r0, r5, r0
	add r1, r5, r1
	bl ov83_0223EDA4
	ldr r0, _0223BCE4 ; =0x00000A88
	add r0, r5, r0
	bl ov83_0223F378
	ldr r0, _0223BCE8 ; =0x00000B08
	add r0, r5, r0
	bl ov83_0223F52C
	ldr r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BCC4: .word 0x00001434
_0223BCC8: .word 0x00001428
_0223BCCC: .word 0x00001430
_0223BCD0: .word 0x00001578
_0223BCD4: .word 0x000015F4
_0223BCD8: .word 0x000015F8
_0223BCDC: .word 0x00001602
_0223BCE0: .word 0x00000674
_0223BCE4: .word 0x00000A88
_0223BCE8: .word 0x00000B08
	thumb_func_end ov83_0223BB40

	thumb_func_start ov83_0223BCEC
ov83_0223BCEC: ; 0x0223BCEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r4, r1, #0
	ldr r0, _0223BF34 ; =0x00000674
	ldr r1, _0223BF38 ; =0x00001430
	add r6, r2, #0
	add r0, r4, r0
	add r1, r4, r1
	bl ov83_0223EDA4
	ldr r0, [r6, #0]
	cmp r0, #6
	bls _0223BD0A
	b _0223BF28
_0223BD0A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BD16: ; jump table
	.short _0223BD24 - _0223BD16 - 2 ; case 0
	.short _0223BDAE - _0223BD16 - 2 ; case 1
	.short _0223BDDA - _0223BD16 - 2 ; case 2
	.short _0223BDFA - _0223BD16 - 2 ; case 3
	.short _0223BE80 - _0223BD16 - 2 ; case 4
	.short _0223BEDA - _0223BD16 - 2 ; case 5
	.short _0223BF20 - _0223BD16 - 2 ; case 6
_0223BD24:
	ldr r0, _0223BF3C ; =0x0000063C
	add r0, r4, r0
	bl ov83_0223E994
	ldr r0, _0223BF40 ; =0x00000A88
	mov r1, #0
	add r0, r4, r0
	bl ov83_0223F3D0
	ldr r0, _0223BF40 ; =0x00000A88
	mov r1, #1
	add r0, r4, r0
	bl ov83_0223F3D0
	ldr r0, _0223BF40 ; =0x00000A88
	mov r1, #2
	add r0, r4, r0
	bl ov83_0223F3D0
	ldr r0, _0223BF40 ; =0x00000A88
	mov r1, #3
	add r0, r4, r0
	bl ov83_0223F3D0
	ldr r0, _0223BF44 ; =0x0000058C
	add r0, r4, r0
	bl ov83_0223E2E4
	ldr r0, _0223BF48 ; =0x000006BA
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0223BF4C ; =0x000006BB
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0223BF50 ; =0x000006BF
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0223BF54 ; =0x000006C1
	mov r1, #0
	bl sub_020057A4
	ldr r0, _0223BF58 ; =0x000006C2
	bl sub_02005748
	ldr r0, _0223BF5C ; =0x000005A4
	mov r1, #0
	add r0, r4, r0
	add r2, r1, #0
	bl ov83_0223E484
	ldr r0, _0223BF5C ; =0x000005A4
	mov r1, #1
	add r0, r4, r0
	mov r2, #0
	bl ov83_0223E484
	ldr r0, _0223BF5C ; =0x000005A4
	mov r1, #2
	add r0, r4, r0
	mov r2, #0
	bl ov83_0223E484
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0223BF2C
_0223BDAE:
	ldr r0, _0223BF44 ; =0x0000058C
	add r0, r4, r0
	bl ov83_0223E32C
	cmp r0, #0
	beq _0223BDE2
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	add r3, r1, #0
	bl sub_0200F174
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0223BF2C
_0223BDDA:
	bl sub_0200F2AC
	cmp r0, #0
	bne _0223BDE4
_0223BDE2:
	b _0223BF2C
_0223BDE4:
	add r7, #0x26
	ldrb r0, [r7]
	cmp r0, #0
	beq _0223BDF2
	mov r0, #0
	bl sub_0203632C
_0223BDF2:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0223BF2C
_0223BDFA:
	ldr r0, [r7, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	ldr r1, _0223BF60 ; =0x0000142C
	add r5, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _0223BE1C
	mov r1, #0xc
	bl sub_0202CFEC
	add r0, r5, #0
	mov r1, #0x34
	bl sub_0202CF28
	b _0223BE2A
_0223BE1C:
	mov r1, #0x12
	bl sub_0202CFEC
	add r0, r5, #0
	mov r1, #0x35
	bl sub_0202CF28
_0223BE2A:
	ldr r0, _0223BF60 ; =0x0000142C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BE78
	ldr r0, [r7, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_0202B370
	str r0, [sp, #0xc]
	ldr r0, _0223BF64 ; =0x00001424
	mov r5, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0223BE78
_0223BE46:
	ldr r0, _0223BF68 ; =0x00001560
	add r1, r4, r5
	ldrb r0, [r1, r0]
	bl sub_02032F1C
	add r1, r0, #0
	ldr r0, [r7, #0x10]
	add r2, sp, #0x10
	ldr r0, [r0, #0xc]
	bl sub_0203909C
	cmp r0, #0
	beq _0223BE64
	cmp r0, #1
	bne _0223BE6E
_0223BE64:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl sub_0202B1D0
_0223BE6E:
	ldr r0, _0223BF64 ; =0x00001424
	add r5, r5, #1
	ldr r0, [r4, r0]
	cmp r5, r0
	blt _0223BE46
_0223BE78:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0223BF2C
_0223BE80:
	ldr r0, _0223BF6C ; =0x00001428
	ldr r0, [r4, r0]
	bl ov83_0223D570
	cmp r0, #0
	bne _0223BED2
	ldr r0, [r4, #0]
	bl sub_0202A93C
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r3, _0223BF38 ; =0x00001430
	str r0, [sp]
	mov r0, #0xba
	add r2, r4, r3
	sub r3, #0xc
	lsl r0, r0, #2
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r5, #0
	bl ov83_0223FFD4
	bl sub_0202A910
	ldr r3, _0223BF6C ; =0x00001428
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1c
	add r1, r5, #0
	bl ov83_0223D508
	add r7, r0, #0
	add r0, r5, #0
	bl sub_020181C4
	cmp r7, #1
	bne _0223BF2C
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0223BF2C
_0223BED2:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0223BF2C
_0223BEDA:
	ldr r0, _0223BF6C ; =0x00001428
	ldr r0, [r4, r0]
	bl ov83_0223D570
	cmp r0, #0
	bne _0223BF18
	ldr r2, _0223BF38 ; =0x00001430
	mov r0, #0xba
	add r1, r4, r2
	sub r2, #0xc
	lsl r0, r0, #2
	ldr r2, [r4, r2]
	add r0, r4, r0
	bl ov83_022401AC
	bl ov83_0223D4C0
	ldr r3, _0223BF70 ; =0x00001450
	add r2, r0, #0
	add r1, r4, r3
	sub r3, #0x28
	ldr r3, [r4, r3]
	mov r0, #0x1b
	bl ov83_0223D508
	cmp r0, #1
	bne _0223BF2C
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0223BF2C
_0223BF18:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	b _0223BF2C
_0223BF20:
	ldr r0, [r4, #0xc]
	add sp, #0x14
	add r0, r0, #1
	pop {r4, r5, r6, r7, pc}
_0223BF28:
	bl sub_02022974
_0223BF2C:
	ldr r0, [r4, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223BF34: .word 0x00000674
_0223BF38: .word 0x00001430
_0223BF3C: .word 0x0000063C
_0223BF40: .word 0x00000A88
_0223BF44: .word 0x0000058C
_0223BF48: .word 0x000006BA
_0223BF4C: .word 0x000006BB
_0223BF50: .word 0x000006BF
_0223BF54: .word 0x000006C1
_0223BF58: .word 0x000006C2
_0223BF5C: .word 0x000005A4
_0223BF60: .word 0x0000142C
_0223BF64: .word 0x00001424
_0223BF68: .word 0x00001560
_0223BF6C: .word 0x00001428
_0223BF70: .word 0x00001450
	thumb_func_end ov83_0223BCEC

	thumb_func_start ov83_0223BF74
ov83_0223BF74: ; 0x0223BF74
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #0xb
	bls _0223BF86
	b _0223C21C
_0223BF86:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BF92: ; jump table
	.short _0223BFAA - _0223BF92 - 2 ; case 0
	.short _0223C006 - _0223BF92 - 2 ; case 1
	.short _0223C01C - _0223BF92 - 2 ; case 2
	.short _0223C040 - _0223BF92 - 2 ; case 3
	.short _0223C06E - _0223BF92 - 2 ; case 4
	.short _0223C09A - _0223BF92 - 2 ; case 5
	.short _0223C0CE - _0223BF92 - 2 ; case 6
	.short _0223C0F4 - _0223BF92 - 2 ; case 7
	.short _0223C10E - _0223BF92 - 2 ; case 8
	.short _0223C18A - _0223BF92 - 2 ; case 9
	.short _0223C1B4 - _0223BF92 - 2 ; case 10
	.short _0223C1F2 - _0223BF92 - 2 ; case 11
_0223BFAA:
	ldr r0, _0223C228 ; =0x0000063C
	mov r1, #0
	add r0, r4, r0
	bl ov83_0223EC4C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0xae
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #0]
	ldr r3, _0223C22C ; =0x00001414
	str r0, [sp]
	add r0, r4, r3
	add r3, #0x80
	ldrb r3, [r4, r3]
	mov r1, #0x80
	mov r2, #0x90
	bl ov83_0223F730
	mov r0, #6
	mov r2, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r3, r2, #0
	str r0, [sp, #8]
	mov r0, #3
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223C220
_0223C006:
	bl sub_0200F2AC
	cmp r0, #0
	bne _0223C010
	b _0223C220
_0223C010:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0x1e
	str r0, [r4, #0x1c]
	b _0223C220
_0223C01C:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bpl _0223C11C
	ldr r0, _0223C228 ; =0x0000063C
	mov r1, #1
	add r0, r4, r0
	bl ov83_0223EC4C
	ldr r0, _0223C230 ; =0x000006C3
	bl sub_02005748
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0x1e
	str r0, [r4, #0x1c]
	b _0223C220
_0223C040:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bpl _0223C11C
	ldr r0, _0223C228 ; =0x0000063C
	mov r1, #2
	add r0, r4, r0
	bl ov83_0223EC4C
	ldr r0, _0223C22C ; =0x00001414
	add r0, r4, r0
	bl ov83_0223F784
	ldr r0, _0223C230 ; =0x000006C3
	bl sub_02005748
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0x96
	lsl r0, r0, #2
	str r0, [r4, #0x1c]
	b _0223C220
_0223C06E:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bmi _0223C088
	ldr r0, _0223C234 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _0223C088
	ldr r0, _0223C238 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0223C090
_0223C088:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223C220
_0223C090:
	ldr r0, _0223C22C ; =0x00001414
	add r0, r4, r0
	bl ov83_0223F784
	b _0223C220
_0223C09A:
	ldr r0, _0223C22C ; =0x00001414
	add r0, r4, r0
	bl ov83_0223F770
	ldr r0, _0223C228 ; =0x0000063C
	add r0, r4, r0
	bl ov83_0223EC70
	ldr r1, _0223C23C ; =0x00001530
	ldr r2, _0223C240 ; =0x00001424
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r6, #0
	bl ov83_0223C8B0
	ldr r0, _0223C228 ; =0x0000063C
	mov r1, #0
	add r0, r4, r0
	bl ov83_0223EC8C
	mov r0, #0x96
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223C220
_0223C0CE:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, _0223C234 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _0223C0EC
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	blt _0223C0EC
	ldr r0, _0223C238 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0223C11C
_0223C0EC:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223C220
_0223C0F4:
	ldr r0, _0223C228 ; =0x0000063C
	mov r1, #1
	add r0, r4, r0
	bl ov83_0223EC8C
	ldr r0, _0223C244 ; =0x0000141C
	add r0, r4, r0
	bl ov83_0223F7B0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223C220
_0223C10E:
	ldr r0, _0223C244 ; =0x0000141C
	add r0, r4, r0
	bl ov83_0223F7DC
	sub r1, r0, #1
	cmp r1, #1
	bls _0223C11E
_0223C11C:
	b _0223C220
_0223C11E:
	cmp r0, #1
	bne _0223C16A
	ldr r0, [r6, #0x10]
	ldr r0, [r0, #8]
	bl sub_0202AC98
	cmp r0, #0x64
	blo _0223C142
	ldr r0, _0223C228 ; =0x0000063C
	mov r1, #2
	add r0, r4, r0
	bl ov83_0223EC8C
	mov r0, #0xa
	str r0, [r5, #0]
	mov r0, #0x96
	str r0, [r4, #0x1c]
	b _0223C220
_0223C142:
	ldr r0, [r6, #0x10]
	mov r1, #4
	ldr r0, [r0, #0x14]
	bl sub_0207D69C
	cmp r0, #0
	bne _0223C164
	ldr r0, _0223C228 ; =0x0000063C
	mov r1, #5
	add r0, r4, r0
	bl ov83_0223EC8C
	mov r0, #0xa
	str r0, [r5, #0]
	mov r0, #0x96
	str r0, [r4, #0x1c]
	b _0223C220
_0223C164:
	mov r0, #9
	str r0, [r5, #0]
	b _0223C16E
_0223C16A:
	mov r0, #0xb
	str r0, [r5, #0]
_0223C16E:
	ldr r0, _0223C240 ; =0x00001424
	ldr r0, [r4, r0]
	cmp r0, #1
	ble _0223C220
	ldr r0, _0223C228 ; =0x0000063C
	mov r1, #6
	add r0, r4, r0
	bl ov83_0223EC8C
	ldr r0, _0223C228 ; =0x0000063C
	add r0, r4, r0
	bl ov83_0223E9BC
	b _0223C220
_0223C18A:
	mov r0, #0x35
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	bl ov83_0223D4B0
	ldr r3, _0223C248 ; =0x00001428
	mov r1, #0x35
	lsl r1, r1, #4
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1e
	add r1, r4, r1
	bl ov83_0223D508
	cmp r0, #1
	bne _0223C220
	ldr r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	pop {r3, r4, r5, r6, pc}
_0223C1B4:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, _0223C234 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _0223C1D2
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	blt _0223C1D2
	ldr r0, _0223C238 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0223C220
_0223C1D2:
	ldr r0, _0223C240 ; =0x00001424
	ldr r0, [r4, r0]
	cmp r0, #1
	ble _0223C1EC
	ldr r0, _0223C228 ; =0x0000063C
	mov r1, #6
	add r0, r4, r0
	bl ov83_0223EC8C
	ldr r0, _0223C228 ; =0x0000063C
	add r0, r4, r0
	bl ov83_0223E9BC
_0223C1EC:
	mov r0, #0xb
	str r0, [r5, #0]
	b _0223C220
_0223C1F2:
	mov r0, #0x35
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	bl ov83_0223D4B0
	ldr r3, _0223C248 ; =0x00001428
	mov r1, #0x35
	lsl r1, r1, #4
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1e
	add r1, r4, r1
	bl ov83_0223D508
	cmp r0, #1
	bne _0223C220
	ldr r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	pop {r3, r4, r5, r6, pc}
_0223C21C:
	bl sub_02022974
_0223C220:
	ldr r0, [r4, #0xc]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223C228: .word 0x0000063C
_0223C22C: .word 0x00001414
_0223C230: .word 0x000006C3
_0223C234: .word 0x021BF6BC
_0223C238: .word 0x021BF67C
_0223C23C: .word 0x00001530
_0223C240: .word 0x00001424
_0223C244: .word 0x0000141C
_0223C248: .word 0x00001428
	thumb_func_end ov83_0223BF74

	thumb_func_start ov83_0223C24C
ov83_0223C24C: ; 0x0223C24C
	ldr r3, _0223C254 ; =ov83_0223CB5C
	add r0, r1, #0
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0223C254: .word ov83_0223CB5C
	thumb_func_end ov83_0223C24C

	thumb_func_start ov83_0223C258
ov83_0223C258: ; 0x0223C258
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #4
	bhi _0223C32E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223C274: ; jump table
	.short _0223C27E - _0223C274 - 2 ; case 0
	.short _0223C2D8 - _0223C274 - 2 ; case 1
	.short _0223C2E8 - _0223C274 - 2 ; case 2
	.short _0223C308 - _0223C274 - 2 ; case 3
	.short _0223C318 - _0223C274 - 2 ; case 4
_0223C27E:
	ldr r0, _0223C334 ; =0x00001575
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223C296
	ldr r0, _0223C338 ; =0x0000063C
	mov r1, #3
	add r0, r4, r0
	bl ov83_0223EC8C
	mov r0, #1
	str r0, [r6, #0x20]
	b _0223C2CC
_0223C296:
	mov r0, #0
	str r0, [r6, #0x20]
	ldr r0, _0223C33C ; =0x00001424
	ldr r0, [r4, r0]
	cmp r0, #1
	bgt _0223C2A8
	mov r0, #2
	str r0, [r5, #0]
	b _0223C32E
_0223C2A8:
	ldr r0, _0223C338 ; =0x0000063C
	mov r1, #4
	add r0, r4, r0
	bl ov83_0223EC8C
	ldr r0, _0223C340 ; =0x0000142C
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0223C2CC
	ldr r0, [r4, #0]
	bl sub_0202C1E0
	add r1, r0, #0
	ldr r0, [r6, #0x10]
	mov r2, #4
	ldr r0, [r0, #0x1c]
	bl sub_0202B758
_0223C2CC:
	mov r0, #0x3c
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223C32E
_0223C2D8:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bpl _0223C32E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223C32E
_0223C2E8:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223C32E
_0223C308:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223C32E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223C32E
_0223C318:
	add r0, r4, #0
	add r1, r5, #0
	bl ov83_0223CB8C
	add r0, r4, #0
	bl ov83_0223CAA4
	ldr r0, [r4, #0xc]
	add sp, #0xc
	add r0, r0, #1
	pop {r3, r4, r5, r6, pc}
_0223C32E:
	ldr r0, [r4, #0xc]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223C334: .word 0x00001575
_0223C338: .word 0x0000063C
_0223C33C: .word 0x00001424
_0223C340: .word 0x0000142C
	thumb_func_end ov83_0223C258

	thumb_func_start ov83_0223C344
ov83_0223C344: ; 0x0223C344
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xd7
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov83_0223DB30
	ldr r0, _0223C3C0 ; =0x0000054C
	add r0, r4, r0
	bl ov83_0223DEC4
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov83_0223E260
	ldr r0, _0223C3C4 ; =0x0000058C
	add r0, r4, r0
	bl ov83_0223E260
	ldr r0, _0223C3C8 ; =0x00000598
	add r0, r4, r0
	bl ov83_0223E260
	ldr r0, _0223C3CC ; =0x000005A4
	add r0, r4, r0
	bl ov83_0223E34C
	ldr r0, _0223C3D0 ; =0x0000061C
	add r0, r4, r0
	bl ov83_0223E5C0
	ldr r0, _0223C3D4 ; =0x0000063C
	add r0, r4, r0
	bl ov83_0223E6F8
	ldr r0, _0223C3D8 ; =0x00000674
	add r0, r4, r0
	bl ov83_0223ED4C
	ldr r0, _0223C3DC ; =0x00000A88
	add r0, r4, r0
	bl ov83_0223F2A8
	ldr r0, _0223C3E0 ; =0x00000B08
	add r0, r4, r0
	bl ov83_0223F4AC
	ldr r0, _0223C3E4 ; =0x0000141C
	add r0, r4, r0
	bl ov83_0223F7A4
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_0223C87C
	add r0, r4, #0
	bl ov83_0223B784
	ldr r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C3C0: .word 0x0000054C
_0223C3C4: .word 0x0000058C
_0223C3C8: .word 0x00000598
_0223C3CC: .word 0x000005A4
_0223C3D0: .word 0x0000061C
_0223C3D4: .word 0x0000063C
_0223C3D8: .word 0x00000674
_0223C3DC: .word 0x00000A88
_0223C3E0: .word 0x00000B08
_0223C3E4: .word 0x0000141C
	thumb_func_end ov83_0223C344

	thumb_func_start ov83_0223C3E8
ov83_0223C3E8: ; 0x0223C3E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223C470 ; =0x000014C8
	add r4, r5, r0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	ldr r0, _0223C474 ; =0x000015F0
	bne _0223C400
	ldrh r2, [r5, r0]
	ldrh r1, [r4, #0xa]
	add r1, r2, r1
	b _0223C406
_0223C400:
	ldrh r2, [r5, r0]
	ldrh r1, [r4, #0xa]
	sub r1, r2, r1
_0223C406:
	strh r1, [r5, r0]
	ldr r1, _0223C474 ; =0x000015F0
	ldr r0, _0223C478 ; =0x000005A4
	ldrh r1, [r5, r1]
	add r0, r5, r0
	bl ov83_0223E4A4
	add r0, r5, #0
	bl ov83_0223C90C
	ldrh r0, [r4, #0xa]
	ldrb r1, [r4, #0xd]
	bl ov83_0223FB68
	add r1, r0, #0
	ldr r0, _0223C478 ; =0x000005A4
	add r0, r5, r0
	bl ov83_0223E4C0
	ldr r0, _0223C478 ; =0x000005A4
	ldrb r1, [r4, #0xd]
	add r0, r5, r0
	bl ov83_0223E51C
	ldr r0, _0223C47C ; =0x0000061C
	add r0, r5, r0
	bl ov83_0223E658
	add r0, r5, #0
	bl ov83_0223C480
	add r0, r5, #0
	bl ov83_0223C758
	add r0, r5, #0
	bl ov83_0223C558
	add r0, r5, #0
	bl ov83_0223C600
	add r0, r5, #0
	bl ov83_0223C6D4
	add r0, r5, #0
	bl ov83_0223C7FC
	mov r0, #0
	strb r0, [r4, #0x13]
	strb r0, [r4, #0x12]
	strb r0, [r4, #0xf]
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
	nop
_0223C470: .word 0x000014C8
_0223C474: .word 0x000015F0
_0223C478: .word 0x000005A4
_0223C47C: .word 0x0000061C
	thumb_func_end ov83_0223C3E8

	thumb_func_start ov83_0223C480
ov83_0223C480: ; 0x0223C480
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0223C534 ; =0x000014C8
	mov r2, #7
	add r4, r5, r0
	ldrb r3, [r4, #0xd]
	ldr r0, _0223C538 ; =0x000005A4
	mov r1, #5
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223C53C ; =0x02240234
	add r0, r5, r0
	ldrb r2, [r2, r6]
	bl ov83_0223E484
	ldrb r3, [r4, #0xd]
	ldr r0, _0223C538 ; =0x000005A4
	mov r2, #7
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223C540 ; =0x02240235
	add r0, r5, r0
	ldrb r2, [r2, r6]
	mov r1, #6
	bl ov83_0223E484
	ldrb r2, [r4, #0xd]
	ldr r0, _0223C538 ; =0x000005A4
	mov r1, #7
	add r3, r2, #0
	ldr r2, _0223C544 ; =0x02240236
	mul r3, r1
	ldrb r2, [r2, r3]
	add r0, r5, r0
	bl ov83_0223E484
	ldrb r3, [r4, #0xd]
	ldr r0, _0223C538 ; =0x000005A4
	mov r2, #7
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223C548 ; =0x02240237
	add r0, r5, r0
	ldrb r2, [r2, r6]
	mov r1, #0
	bl ov83_0223E484
	ldrb r3, [r4, #0xd]
	ldr r0, _0223C538 ; =0x000005A4
	mov r2, #7
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223C54C ; =0x02240238
	add r0, r5, r0
	ldrb r2, [r2, r6]
	mov r1, #1
	bl ov83_0223E484
	ldrb r3, [r4, #0xd]
	ldr r0, _0223C538 ; =0x000005A4
	mov r2, #7
	add r6, r3, #0
	mul r6, r2
	ldr r2, _0223C550 ; =0x02240239
	add r0, r5, r0
	ldrb r2, [r2, r6]
	mov r1, #2
	bl ov83_0223E484
	ldrb r1, [r4, #0xd]
	mov r0, #7
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0223C554 ; =0x0224023A
	ldrb r1, [r0, r2]
	cmp r1, #8
	beq _0223C532
	ldrb r2, [r4, #0x10]
	ldr r0, _0223C538 ; =0x000005A4
	cmp r2, #0
	beq _0223C52A
	add r0, r5, r0
	bl ov83_0223E4E0
	pop {r4, r5, r6, pc}
_0223C52A:
	add r0, r5, r0
	mov r2, #0
	bl ov83_0223E484
_0223C532:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C534: .word 0x000014C8
_0223C538: .word 0x000005A4
_0223C53C: .word 0x02240234
_0223C540: .word 0x02240235
_0223C544: .word 0x02240236
_0223C548: .word 0x02240237
_0223C54C: .word 0x02240238
_0223C550: .word 0x02240239
_0223C554: .word 0x0224023A
	thumb_func_end ov83_0223C480

	thumb_func_start ov83_0223C558
ov83_0223C558: ; 0x0223C558
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C5F4 ; =0x000014C8
	add r1, r4, r0
	ldrb r2, [r1, #0x11]
	ldrb r0, [r1, #0xc]
	cmp r2, r0
	beq _0223C578
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _0223C578
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223C596
_0223C578:
	ldr r0, _0223C5F8 ; =0x00000A88
	mov r1, #1
	add r0, r4, r0
	bl ov83_0223F3D0
	ldr r0, _0223C5F8 ; =0x00000A88
	mov r1, #3
	add r0, r4, r0
	bl ov83_0223F3D0
	mov r0, #0xb1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_0223C596:
	cmp r2, #0
	bne _0223C5C6
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _0223C5F0
	ldr r0, _0223C5F8 ; =0x00000A88
	mov r1, #1
	add r0, r4, r0
	bl ov83_0223F3A0
	mov r0, #0xb1
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0223C5F8 ; =0x00000A88
	mov r1, #3
	add r0, r4, r0
	bl ov83_0223F3D0
	ldr r0, _0223C5FC ; =0x000006C1
	bl sub_02005748
	pop {r4, pc}
_0223C5C6:
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #2
	beq _0223C5F0
	ldr r0, _0223C5F8 ; =0x00000A88
	mov r1, #3
	add r0, r4, r0
	bl ov83_0223F3A0
	mov r0, #0xb1
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0223C5F8 ; =0x00000A88
	mov r1, #1
	add r0, r4, r0
	bl ov83_0223F3D0
	ldr r0, _0223C5FC ; =0x000006C1
	bl sub_02005748
_0223C5F0:
	pop {r4, pc}
	nop
_0223C5F4: .word 0x000014C8
_0223C5F8: .word 0x00000A88
_0223C5FC: .word 0x000006C1
	thumb_func_end ov83_0223C558

	thumb_func_start ov83_0223C600
ov83_0223C600: ; 0x0223C600
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223C6C4 ; =0x000014C8
	mov r1, #0xb1
	lsl r1, r1, #2
	add r4, r5, r0
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0223C61A
	sub r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223C630
_0223C61A:
	ldr r0, _0223C6C8 ; =0x0000063C
	add r0, r5, r0
	bl ov83_0223E994
	mov r0, #0xb3
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, r0, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
_0223C630:
	add r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0223C664
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _0223C678
	ldr r0, _0223C6C8 ; =0x0000063C
	add r0, r5, r0
	bl ov83_0223E994
	ldr r0, _0223C6C8 ; =0x0000063C
	ldrb r2, [r4, #0xd]
	ldr r1, _0223C6CC ; =0x02240208
	add r0, r5, r0
	ldrb r1, [r1, r2]
	bl ov83_0223E908
	mov r0, #0xb3
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0
	sub r0, r0, #4
	str r1, [r5, r0]
	b _0223C678
_0223C664:
	ldr r0, _0223C6C8 ; =0x0000063C
	add r0, r5, r0
	bl ov83_0223E984
	cmp r0, #0
	beq _0223C678
	mov r0, #0xb3
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0223C678:
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223C6AE
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _0223C6C2
	ldr r0, _0223C6C8 ; =0x0000063C
	add r0, r5, r0
	bl ov83_0223E994
	ldr r0, _0223C6C8 ; =0x0000063C
	ldrb r2, [r4, #0xd]
	ldr r1, _0223C6D0 ; =0x0224020C
	add r0, r5, r0
	ldrb r1, [r1, r2]
	bl ov83_0223E908
	mov r0, #0xb2
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0
	add r0, r0, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
_0223C6AE:
	ldr r0, _0223C6C8 ; =0x0000063C
	add r0, r5, r0
	bl ov83_0223E984
	cmp r0, #0
	beq _0223C6C2
	mov r0, #0xb2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0223C6C2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C6C4: .word 0x000014C8
_0223C6C8: .word 0x0000063C
_0223C6CC: .word 0x02240208
_0223C6D0: .word 0x0224020C
	thumb_func_end ov83_0223C600

	thumb_func_start ov83_0223C6D4
ov83_0223C6D4: ; 0x0223C6D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223C748 ; =0x000014C8
	add r4, r5, r0
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _0223C6FE
	ldr r0, _0223C74C ; =0x00000674
	ldrb r1, [r4, #0xd]
	add r0, r5, r0
	mov r2, #2
	bl ov83_0223EDDC
	ldrb r0, [r4, #0xd]
	lsl r1, r0, #2
	ldr r0, _0223C750 ; =0x02240210
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0223C6FE:
	ldrb r0, [r4, #0x12]
	cmp r0, #1
	bne _0223C722
	ldr r0, _0223C74C ; =0x00000674
	ldrb r1, [r4, #0xd]
	add r0, r5, r0
	mov r2, #1
	bl ov83_0223EDDC
	ldrb r0, [r4, #0xd]
	lsl r1, r0, #2
	ldr r0, _0223C754 ; =0x0224021C
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
	b _0223C732
_0223C722:
	cmp r0, #2
	bne _0223C732
	ldr r0, _0223C74C ; =0x00000674
	ldrb r1, [r4, #0xd]
	add r0, r5, r0
	mov r2, #0
	bl ov83_0223EDDC
_0223C732:
	ldrh r0, [r4, #0xa]
	ldrb r1, [r4, #0xd]
	bl ov83_0223FB50
	cmp r0, #0
	bne _0223C746
	ldr r0, _0223C74C ; =0x00000674
	add r0, r5, r0
	bl ov83_0223EFCC
_0223C746:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C748: .word 0x000014C8
_0223C74C: .word 0x00000674
_0223C750: .word 0x02240210
_0223C754: .word 0x0224021C
	thumb_func_end ov83_0223C6D4

	thumb_func_start ov83_0223C758
ov83_0223C758: ; 0x0223C758
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223C7F0 ; =0x000014C8
	add r1, r4, r0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _0223C7B0
	ldrb r0, [r1, #0x11]
	cmp r0, #0
	ldr r0, _0223C7F4 ; =0x00000A88
	bne _0223C790
	add r0, r4, r0
	mov r1, #0
	bl ov83_0223F3A0
	ldr r0, _0223C7F4 ; =0x00000A88
	mov r1, #2
	add r0, r4, r0
	bl ov83_0223F3D0
	ldr r0, _0223C7F8 ; =0x000006C1
	bl sub_02005748
	mov r0, #0xb
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
	b _0223C7B0
_0223C790:
	add r0, r4, r0
	mov r1, #2
	bl ov83_0223F3A0
	ldr r0, _0223C7F4 ; =0x00000A88
	mov r1, #0
	add r0, r4, r0
	bl ov83_0223F3D0
	ldr r0, _0223C7F8 ; =0x000006C1
	bl sub_02005748
	mov r0, #0xb
	mov r1, #2
	lsl r0, r0, #6
	str r1, [r4, r0]
_0223C7B0:
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0223C7D2
	ldr r0, _0223C7F4 ; =0x00000A88
	mov r1, #0
	add r0, r4, r0
	bl ov83_0223F3F0
	cmp r0, #1
	bne _0223C7EC
	mov r0, #0xb
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	pop {r4, pc}
_0223C7D2:
	cmp r0, #2
	bne _0223C7EC
	ldr r0, _0223C7F4 ; =0x00000A88
	mov r1, #2
	add r0, r4, r0
	bl ov83_0223F3F0
	cmp r0, #1
	bne _0223C7EC
	mov r0, #0xb
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_0223C7EC:
	pop {r4, pc}
	nop
_0223C7F0: .word 0x000014C8
_0223C7F4: .word 0x00000A88
_0223C7F8: .word 0x000006C1
	thumb_func_end ov83_0223C758

	thumb_func_start ov83_0223C7FC
ov83_0223C7FC: ; 0x0223C7FC
	push {r3, lr}
	ldr r3, _0223C820 ; =0x00001434
	add r2, r3, #1
	ldrb r1, [r0, r3]
	add r3, #0xa3
	ldrb r3, [r0, r3]
	ldrb r2, [r0, r2]
	cmp r3, #1
	bne _0223C81C
	ldr r3, _0223C824 ; =0x00000B08
	add r0, r0, r3
	bl ov83_0223F544
	ldr r0, _0223C828 ; =0x000006BF
	bl sub_02005748
_0223C81C:
	pop {r3, pc}
	nop
_0223C820: .word 0x00001434
_0223C824: .word 0x00000B08
_0223C828: .word 0x000006BF
	thumb_func_end ov83_0223C7FC

	thumb_func_start ov83_0223C82C
ov83_0223C82C: ; 0x0223C82C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0202A93C
	ldr r1, _0223C870 ; =0x00001530
	str r0, [r4, r1]
	ldr r0, _0223C874 ; =0x00001428
	ldr r0, [r4, r0]
	bl ov83_0223D570
	ldr r1, _0223C878 ; =0x00001574
	mov r6, #0
	strb r0, [r4, r1]
	add r0, r1, #0
	mov r3, #0x80
	mov r2, #0x60
	sub r0, #0xb4
	sub r1, #0xb3
_0223C854:
	strb r3, [r4, r0]
	strb r2, [r4, r1]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, #4
	blt _0223C854
	add r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	beq _0223C86E
	mov r0, #2
	bl sub_02035938
_0223C86E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C870: .word 0x00001530
_0223C874: .word 0x00001428
_0223C878: .word 0x00001574
	thumb_func_end ov83_0223C82C

	thumb_func_start ov83_0223C87C
ov83_0223C87C: ; 0x0223C87C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223C8AC ; =0x00001530
	add r4, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C88E
	bl sub_02022974
_0223C88E:
	ldr r0, _0223C8AC ; =0x00001530
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r1, _0223C8AC ; =0x00001530
	mov r0, #0
	add r5, #0x26
	str r0, [r4, r1]
	ldrb r1, [r5]
	cmp r1, #0
	beq _0223C8A8
	bl sub_02035938
_0223C8A8:
	pop {r3, r4, r5, pc}
	nop
_0223C8AC: .word 0x00001530
	thumb_func_end ov83_0223C87C

	thumb_func_start ov83_0223C8B0
ov83_0223C8B0: ; 0x0223C8B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	add r7, r1, #0
	ldr r0, [r0, #0xc]
	add r6, r2, #0
	bl sub_0202440C
	mov r4, #0
	str r0, [sp]
	cmp r6, #0
	ble _0223C8EA
_0223C8CE:
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	ldr r0, [r0, #8]
	bl sub_0202AB74
	ldr r1, _0223C908 ; =0x0000FFFF
	cmp r0, r1
	bne _0223C8E4
	mov r0, #0
	str r0, [sp, #4]
	b _0223C8EA
_0223C8E4:
	add r4, r4, #1
	cmp r4, r6
	blt _0223C8CE
_0223C8EA:
	add r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	bne _0223C902
	add r0, r7, #0
	mov r1, #0
	bl sub_0202A974
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_0206CFCC
_0223C902:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C908: .word 0x0000FFFF
	thumb_func_end ov83_0223C8B0

	thumb_func_start ov83_0223C90C
ov83_0223C90C: ; 0x0223C90C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223C950 ; =0x000014C8
	add r4, r5, r0
	ldrb r2, [r4, #0xc]
	cmp r2, #0
	bne _0223C926
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bgt _0223C936
_0223C926:
	cmp r2, #1
	bne _0223C946
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bge _0223C946
_0223C936:
	ldrb r0, [r4, #0xd]
	lsl r1, r0, #2
	ldr r0, _0223C954 ; =0x02240228
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0223C946:
	ldrh r1, [r4, #8]
	mov r0, #0xd5
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C950: .word 0x000014C8
_0223C954: .word 0x02240228
	thumb_func_end ov83_0223C90C

	thumb_func_start ov83_0223C958
ov83_0223C958: ; 0x0223C958
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x7a
	bl sub_02006C24
	add r4, r0, #0
	add r0, r5, #0
	bl ov83_0223CE9C
	add r0, r5, #0
	ldr r1, [r5, #0]
	add r0, #0x20
	bl ov83_0223CC30
	add r0, r5, #0
	bl ov83_0223CD64
	add r0, r5, #0
	bl ov83_0223CCF8
	add r0, r5, #0
	bl ov83_0223CD28
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_0223CDD0
	ldr r0, _0223CA7C ; =0x0000054C
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0]
	add r0, r5, r0
	add r3, r4, #0
	bl ov83_0223DEE0
	ldr r0, _0223CA80 ; =0x0000063C
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0]
	add r0, r5, r0
	add r3, r4, #0
	bl ov83_0223E720
	mov r1, #0xaf
	ldr r0, _0223CA84 ; =0x000005A4
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, #0]
	add r0, r5, r0
	add r3, r4, #0
	bl ov83_0223E368
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x16
	mov r2, #0x5a
	lsl r0, r0, #6
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223E28C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0223CA88 ; =0x00000598
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223E28C
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223CA8C ; =0x0000058C
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223E28C
	ldr r0, _0223CA90 ; =0x0000061C
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223E5DC
	ldr r0, _0223CA94 ; =0x00000674
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223ED6C
	ldr r0, _0223CA98 ; =0x00000A88
	add r1, r5, #0
	ldr r2, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r3, r4, #0
	bl ov83_0223F2C4
	ldr r0, _0223CA9C ; =0x00000B08
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223F4CC
	add r0, r5, #0
	bl ov83_0223CF2C
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, _0223CAA0 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223CA7C: .word 0x0000054C
_0223CA80: .word 0x0000063C
_0223CA84: .word 0x000005A4
_0223CA88: .word 0x00000598
_0223CA8C: .word 0x0000058C
_0223CA90: .word 0x0000061C
_0223CA94: .word 0x00000674
_0223CA98: .word 0x00000A88
_0223CA9C: .word 0x00000B08
_0223CAA0: .word 0x021BF6DC
	thumb_func_end ov83_0223C958

	thumb_func_start ov83_0223CAA4
ov83_0223CAA4: ; 0x0223CAA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CB34 ; =0x0000063C
	add r0, r4, r0
	bl ov83_0223E760
	ldr r0, _0223CB38 ; =0x0000054C
	add r0, r4, r0
	bl ov83_0223DF10
	ldr r0, _0223CB3C ; =0x000005A4
	add r0, r4, r0
	bl ov83_0223E438
	add r0, r4, #0
	bl ov83_0223CE7C
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov83_0223E2C8
	ldr r0, _0223CB40 ; =0x0000058C
	add r0, r4, r0
	bl ov83_0223E2C8
	ldr r0, _0223CB44 ; =0x00000598
	add r0, r4, r0
	bl ov83_0223E2C8
	ldr r0, _0223CB48 ; =0x0000061C
	add r0, r4, r0
	bl ov83_0223E63C
	ldr r0, _0223CB4C ; =0x00000674
	add r0, r4, r0
	bl ov83_0223ED78
	ldr r0, _0223CB50 ; =0x00000A88
	add r0, r4, r0
	bl ov83_0223F348
	ldr r0, _0223CB54 ; =0x00000B08
	add r0, r4, r0
	bl ov83_0223F510
	add r0, r4, #0
	add r0, #0x20
	bl ov83_0223CCCC
	add r0, r4, #0
	bl ov83_0223CD1C
	add r0, r4, #0
	bl ov83_0223CDC0
	add r0, r4, #0
	bl ov83_0223CD54
	add r0, r4, #0
	bl ov83_0223CF20
	add r0, r4, #0
	bl ov83_0223D068
	ldr r0, _0223CB58 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	pop {r4, pc}
	nop
_0223CB34: .word 0x0000063C
_0223CB38: .word 0x0000054C
_0223CB3C: .word 0x000005A4
_0223CB40: .word 0x0000058C
_0223CB44: .word 0x00000598
_0223CB48: .word 0x0000061C
_0223CB4C: .word 0x00000674
_0223CB50: .word 0x00000A88
_0223CB54: .word 0x00000B08
_0223CB58: .word 0x021BF6DC
	thumb_func_end ov83_0223CAA4

	thumb_func_start ov83_0223CB5C
ov83_0223CB5C: ; 0x0223CB5C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _0223CB88 ; =0x0000149C
	str r0, [sp]
	mov r0, #0xd7
	mov r3, #0x5a
	lsl r0, r0, #2
	add r2, r4, #0
	lsl r3, r3, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, #0x2c
	add r3, r4, r3
	bl ov83_0223DB4C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CB88: .word 0x0000149C
	thumb_func_end ov83_0223CB5C

	thumb_func_start ov83_0223CB8C
ov83_0223CB8C: ; 0x0223CB8C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x2c
	bl ov83_0223DC1C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	pop {r4, pc}
	thumb_func_end ov83_0223CB8C

	thumb_func_start ov83_0223CBA4
ov83_0223CBA4: ; 0x0223CBA4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_020241B4
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	bl sub_020B2628
	bl sub_020A73C0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223CBCE
	bl sub_020150EC
_0223CBCE:
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223CBF6
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0223CBF6
	bl sub_020219F8
_0223CBF6:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223CBA4

	thumb_func_start ov83_0223CBFC
ov83_0223CBFC: ; 0x0223CBFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200A858
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0223CC0E
	bl sub_0201C2B8
_0223CC0E:
	pop {r4, pc}
	thumb_func_end ov83_0223CBFC

	thumb_func_start ov83_0223CC10
ov83_0223CC10: ; 0x0223CC10
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223CC2C ; =0x022402F0
	add r3, sp, #0
	mov r2, #5
_0223CC1A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223CC1A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223CC2C: .word 0x022402F0
	thumb_func_end ov83_0223CC10

	thumb_func_start ov83_0223CC30
ov83_0223CC30: ; 0x0223CC30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	str r1, [sp]
	add r6, r0, #0
	bl ov83_0223CC10
	ldr r0, [sp]
	bl sub_02018340
	add r3, sp, #8
	ldr r4, _0223CCC0 ; =0x022402E0
	str r0, [r6, #0]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #0
	mov r1, #2
	bl sub_02019060
	ldr r4, _0223CCC4 ; =0x02240318
	add r3, sp, #0x18
	mov r2, #0xe
_0223CC6E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223CC6E
	ldr r1, _0223CCC8 ; =0x022402BC
	add r0, sp, #4
	ldrb r2, [r1]
	mov r7, #0
	add r5, sp, #4
	strb r2, [r0]
	ldrb r2, [r1, #1]
	add r4, sp, #0x18
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
_0223CC90:
	ldrb r1, [r5]
	ldr r0, [r6, #0]
	add r2, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldrb r1, [r5]
	ldr r0, [r6, #0]
	bl sub_02019EBC
	ldrb r0, [r5]
	ldr r3, [sp]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #1
	cmp r7, #4
	blt _0223CC90
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CCC0: .word 0x022402E0
_0223CCC4: .word 0x02240318
_0223CCC8: .word 0x022402BC
	thumb_func_end ov83_0223CC30

	thumb_func_start ov83_0223CCCC
ov83_0223CCCC: ; 0x0223CCCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov83_0223CCCC

	thumb_func_start ov83_0223CCF8
ov83_0223CCF8: ; 0x0223CCF8
	push {r3, lr}
	add r3, r0, #0
	ldr r3, [r3, #0]
	add r0, #0x2c
	mov r1, #0x48
	mov r2, #0x10
	bl ov83_0223D754
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov83_0223CCF8

	thumb_func_start ov83_0223CD1C
ov83_0223CD1C: ; 0x0223CD1C
	ldr r3, _0223CD24 ; =ov83_0223D784
	add r0, #0x2c
	bx r3
	nop
_0223CD24: .word ov83_0223D784
	thumb_func_end ov83_0223CD1C

	thumb_func_start ov83_0223CD28
ov83_0223CD28: ; 0x0223CD28
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, _0223CD50 ; =0x022402C0
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [sp, #0xc]
	add r0, r2, #0
	bl sub_02015064
	mov r1, #0xaf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223CD50: .word 0x022402C0
	thumb_func_end ov83_0223CD28

	thumb_func_start ov83_0223CD54
ov83_0223CD54: ; 0x0223CD54
	mov r1, #0xaf
	lsl r1, r1, #2
	ldr r3, _0223CD60 ; =sub_020150A8
	ldr r0, [r0, r1]
	bx r3
	nop
_0223CD60: .word sub_020150A8
	thumb_func_end ov83_0223CD54

	thumb_func_start ov83_0223CD64
ov83_0223CD64: ; 0x0223CD64
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	ldr r2, [r4, #0]
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	ldr r5, _0223CDB8 ; =0x022402D0
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r1, _0223CDBC ; =0x00200010
	str r0, [sp, #0x20]
	add r0, r2, #0
	mov r2, #0x10
	bl sub_0201E88C
	ldr r1, [r4, #0]
	mov r0, #0x20
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_0223CDB8: .word 0x022402D0
_0223CDBC: .word 0x00200010
	thumb_func_end ov83_0223CD64

	thumb_func_start ov83_0223CDC0
ov83_0223CDC0: ; 0x0223CDC0
	push {r3, lr}
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, pc}
	thumb_func_end ov83_0223CDC0

	thumb_func_start ov83_0223CDD0
ov83_0223CDD0: ; 0x0223CDD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x18]
	ldr r0, _0223CE78 ; =0x02240388
	str r1, [sp, #0x1c]
	str r0, [sp, #0x24]
	mov r0, #0xc
	str r0, [sp, #0x2c]
	mov r1, #0x5a
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r4, #0
	str r0, [sp, #0x28]
	add r0, #0x2c
	mov r7, #0xd
	mov r5, #0xe
	str r0, [sp, #0x28]
_0223CDF8:
	cmp r4, #0
	ble _0223CE2E
	ldr r0, [sp, #0x24]
	ldrb r0, [r0]
	cmp r0, #8
	bne _0223CE2E
	str r5, [sp]
	ldr r0, [sp, #0x2c]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7d
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	mov r3, #0x5b
	ldr r0, [r0, #0]
	ldr r6, [sp, #0x18]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [r6, r3]
	bl ov83_0223D894
	b _0223CE56
_0223CE2E:
	mov r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x7d
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x24]
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x14]
	ldrb r3, [r3]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x1c]
	bl ov83_0223D7A8
_0223CE56:
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	add r7, r7, #3
	add r0, r0, #3
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	add r5, r5, #3
	add r0, #0x38
	str r0, [sp, #0x20]
	cmp r4, #6
	blt _0223CDF8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CE78: .word 0x02240388
	thumb_func_end ov83_0223CDD0

	thumb_func_start ov83_0223CE7C
ov83_0223CE7C: ; 0x0223CE7C
	push {r4, r5, r6, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	add r6, r0, #0
	mov r4, #0
	add r5, r0, r1
	add r6, #0x2c
_0223CE8A:
	add r0, r6, #0
	add r1, r5, #0
	bl ov83_0223D95C
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #6
	blt _0223CE8A
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223CE7C

	thumb_func_start ov83_0223CE9C
ov83_0223CE9C: ; 0x0223CE9C
	push {r3, r4, lr}
	sub sp, #4
	bl sub_020B28CC
	bl sub_020BFB4C
	ldr r0, _0223CF08 ; =0x04000060
	ldr r2, _0223CF0C ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r3, _0223CF10 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r4, [r0]
	sub r3, #0x1c
	lsr r2, r2, #0x11
	and r4, r1
	mov r1, #8
	orr r1, r4
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r1, #0
	ldr r0, _0223CF14 ; =0x000043FF
	mov r3, #0x3f
	str r1, [sp]
	bl sub_020BFD58
	ldr r2, _0223CF18 ; =0x04000540
	mov r0, #2
	ldr r1, _0223CF1C ; =0xBFFF0000
	str r0, [r2, #0]
	str r1, [r2, #0x40]
	mov r1, #1
	bl sub_020A5A94
	mov r0, #2
	lsl r0, r0, #0xe
	mov r1, #1
	bl sub_020A5D88
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CF08: .word 0x04000060
_0223CF0C: .word 0xFFFFCFFD
_0223CF10: .word 0x0000CFFB
_0223CF14: .word 0x000043FF
_0223CF18: .word 0x04000540
_0223CF1C: .word 0xBFFF0000
	thumb_func_end ov83_0223CE9C

	thumb_func_start ov83_0223CF20
ov83_0223CF20: ; 0x0223CF20
	push {r3, lr}
	bl sub_020A5B1C
	bl sub_020A5F50
	pop {r3, pc}
	thumb_func_end ov83_0223CF20

	thumb_func_start ov83_0223CF2C
ov83_0223CF2C: ; 0x0223CF2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r2, #0x1d
	ldr r3, [r5, #0]
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #4
	bl sub_0200B144
	ldr r1, _0223D030 ; =0x0000157C
	str r0, [r5, r1]
	ldr r2, [r5, #0]
	mov r0, #4
	mov r1, #0x40
	bl sub_0200B368
	mov r1, #0x56
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r1, [r5, #0]
	mov r0, #0x40
	bl sub_02023790
	ldr r1, _0223D034 ; =0x00001584
	str r0, [r5, r1]
	sub r1, #8
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_0200B1EC
	ldr r1, _0223D038 ; =0x00001588
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_0200B1EC
	ldr r1, _0223D03C ; =0x0000158C
	str r0, [r5, r1]
	sub r1, #0x10
	ldr r0, [r5, r1]
	mov r1, #2
	bl sub_0200B1EC
	ldr r1, _0223D040 ; =0x00001590
	str r0, [r5, r1]
	sub r1, #0x14
	ldr r0, [r5, r1]
	mov r1, #0x14
	bl sub_0200B1EC
	ldr r1, _0223D044 ; =0x00001594
	str r0, [r5, r1]
	sub r1, #0x18
	ldr r0, [r5, r1]
	mov r1, #0x15
	bl sub_0200B1EC
	ldr r1, _0223D048 ; =0x00001598
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	mov r1, #0x16
	bl sub_0200B1EC
	ldr r1, _0223D04C ; =0x0000159C
	str r0, [r5, r1]
	sub r1, #0x20
	ldr r0, [r5, r1]
	mov r1, #0x17
	bl sub_0200B1EC
	ldr r1, _0223D050 ; =0x000015A0
	str r0, [r5, r1]
	sub r1, #0x24
	ldr r0, [r5, r1]
	mov r1, #0x18
	bl sub_0200B1EC
	ldr r1, _0223D054 ; =0x000015A4
	str r0, [r5, r1]
	sub r1, #0x28
	ldr r0, [r5, r1]
	mov r1, #0x19
	bl sub_0200B1EC
	ldr r1, _0223D058 ; =0x000015A8
	str r0, [r5, r1]
	sub r1, #0x2c
	ldr r0, [r5, r1]
	mov r1, #8
	bl sub_0200B1EC
	ldr r1, _0223D05C ; =0x000015AC
	str r0, [r5, r1]
	sub r1, #0x30
	ldr r0, [r5, r1]
	mov r1, #9
	bl sub_0200B1EC
	ldr r1, _0223D060 ; =0x000015B0
	mov r4, #0
	str r0, [r5, r1]
	add r6, r5, #0
	add r7, r1, #4
_0223CFFE:
	ldr r0, _0223D030 ; =0x0000157C
	add r1, r4, #3
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [r6, r7]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #5
	blt _0223CFFE
	ldr r7, _0223D064 ; =0x000015C8
	mov r4, #0
	add r6, r5, #0
_0223D018:
	ldr r0, _0223D030 ; =0x0000157C
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0xa
	bl sub_0200B1EC
	str r0, [r6, r7]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #0xa
	blt _0223D018
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D030: .word 0x0000157C
_0223D034: .word 0x00001584
_0223D038: .word 0x00001588
_0223D03C: .word 0x0000158C
_0223D040: .word 0x00001590
_0223D044: .word 0x00001594
_0223D048: .word 0x00001598
_0223D04C: .word 0x0000159C
_0223D050: .word 0x000015A0
_0223D054: .word 0x000015A4
_0223D058: .word 0x000015A8
_0223D05C: .word 0x000015AC
_0223D060: .word 0x000015B0
_0223D064: .word 0x000015C8
	thumb_func_end ov83_0223CF2C

	thumb_func_start ov83_0223D068
ov83_0223D068: ; 0x0223D068
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0223D108 ; =0x000015B0
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D10C ; =0x000015AC
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D110 ; =0x0000159C
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D114 ; =0x00001598
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D118 ; =0x00001594
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D11C ; =0x00001590
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D120 ; =0x0000158C
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D124 ; =0x00001588
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D128 ; =0x000015A0
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D12C ; =0x000015A4
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D130 ; =0x000015A8
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r7, _0223D134 ; =0x000015B4
	mov r4, #0
	add r5, r6, #0
_0223D0CA:
	ldr r0, [r5, r7]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0223D0CA
	ldr r7, _0223D138 ; =0x000015C8
	mov r5, #0
	add r4, r6, #0
_0223D0DE:
	ldr r0, [r4, r7]
	bl sub_020237BC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0xa
	blt _0223D0DE
	ldr r0, _0223D13C ; =0x00001584
	ldr r0, [r6, r0]
	bl sub_020237BC
	mov r0, #0x56
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_0200B3F0
	ldr r0, _0223D140 ; =0x0000157C
	ldr r0, [r6, r0]
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D108: .word 0x000015B0
_0223D10C: .word 0x000015AC
_0223D110: .word 0x0000159C
_0223D114: .word 0x00001598
_0223D118: .word 0x00001594
_0223D11C: .word 0x00001590
_0223D120: .word 0x0000158C
_0223D124: .word 0x00001588
_0223D128: .word 0x000015A0
_0223D12C: .word 0x000015A4
_0223D130: .word 0x000015A8
_0223D134: .word 0x000015B4
_0223D138: .word 0x000015C8
_0223D13C: .word 0x00001584
_0223D140: .word 0x0000157C
	thumb_func_end ov83_0223D068

	thumb_func_start ov83_0223D144
ov83_0223D144: ; 0x0223D144
	ldr r0, _0223D148 ; =0x02240390
	bx lr
	; .align 2, 0
_0223D148: .word 0x02240390
	thumb_func_end ov83_0223D144

	thumb_func_start ov83_0223D14C
ov83_0223D14C: ; 0x0223D14C
	mov r0, #0xb
	bx lr
	thumb_func_end ov83_0223D14C

	thumb_func_start ov83_0223D150
ov83_0223D150: ; 0x0223D150
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0223D1D8 ; =0x0000142C
	add r4, r1, #0
	ldr r1, [r7, r0]
	cmp r1, #1
	bne _0223D168
	bl sub_02035E18
	ldr r1, _0223D1DC ; =0x00001424
	str r0, [r7, r1]
	b _0223D16E
_0223D168:
	mov r1, #1
	sub r0, #8
	str r1, [r7, r0]
_0223D16E:
	bl ov83_0223D144
	add r5, r0, #0
	bl ov83_0223D14C
	add r1, r0, #0
	ldr r0, [r7, #0]
	ldr r3, _0223D1D8 ; =0x0000142C
	str r0, [sp]
	ldr r3, [r7, r3]
	add r0, r5, #0
	add r2, r7, #0
	bl ov83_0223D4CC
	ldr r1, _0223D1E0 ; =0x00001428
	str r0, [r7, r1]
	ldr r0, _0223D1E4 ; =0x00001560
	mov r1, #4
	add r0, r7, r0
	add r2, r1, #0
	bl sub_020D5124
	ldr r0, _0223D1D8 ; =0x0000142C
	ldr r0, [r7, r0]
	cmp r0, #1
	bne _0223D1CC
	mov r6, #0
	add r4, r6, #0
	add r5, r7, #0
_0223D1A8:
	add r0, r4, #0
	bl sub_02032EE8
	ldr r1, _0223D1E8 ; =0x00001564
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223D1C2
	ldr r0, _0223D1E4 ; =0x00001560
	add r1, r7, r6
	strb r4, [r1, r0]
	add r6, r6, #1
_0223D1C2:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223D1A8
	pop {r3, r4, r5, r6, r7, pc}
_0223D1CC:
	ldr r0, _0223D1E4 ; =0x00001560
	mov r1, #0
	strb r1, [r7, r0]
	add r0, r0, #4
	str r4, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D1D8: .word 0x0000142C
_0223D1DC: .word 0x00001424
_0223D1E0: .word 0x00001428
_0223D1E4: .word 0x00001560
_0223D1E8: .word 0x00001564
	thumb_func_end ov83_0223D150

	thumb_func_start ov83_0223D1EC
ov83_0223D1EC: ; 0x0223D1EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D200 ; =0x00001428
	ldr r0, [r4, r0]
	bl ov83_0223D558
	ldr r0, _0223D200 ; =0x00001428
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0223D200: .word 0x00001428
	thumb_func_end ov83_0223D1EC

	thumb_func_start ov83_0223D204
ov83_0223D204: ; 0x0223D204
	add r0, r3, #0
	ldr r3, _0223D20C ; =ov83_0223B774
	mov r1, #3
	bx r3
	; .align 2, 0
_0223D20C: .word ov83_0223B774
	thumb_func_end ov83_0223D204

	thumb_func_start ov83_0223D210
ov83_0223D210: ; 0x0223D210
	add r0, r3, #0
	ldr r3, _0223D218 ; =ov83_0223B77C
	mov r1, #8
	bx r3
	; .align 2, 0
_0223D218: .word ov83_0223B77C
	thumb_func_end ov83_0223D210

	thumb_func_start ov83_0223D21C
ov83_0223D21C: ; 0x0223D21C
	push {r3, r4, r5, lr}
	ldr r0, _0223D250 ; =0x0000149C
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	add r0, r4, r0
	add r2, r5, #0
	bl sub_020D50B8
	ldr r0, _0223D254 ; =0x000014AC
	mov r1, #0xa
	add r3, r4, r0
	add r0, #0x1c
	add r2, r4, r0
_0223D238:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0223D238
	add r0, r4, #0
	mov r1, #5
	bl ov83_0223B774
	pop {r3, r4, r5, pc}
	nop
_0223D250: .word 0x0000149C
_0223D254: .word 0x000014AC
	thumb_func_end ov83_0223D21C

	thumb_func_start ov83_0223D258
ov83_0223D258: ; 0x0223D258
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _0223D2D4 ; =0x00001428
	add r5, r3, #0
	ldr r0, [r5, r0]
	str r1, [sp]
	str r2, [sp, #4]
	bl ov83_0223D570
	cmp r0, #0
	bne _0223D2D0
	ldr r0, _0223D2D8 ; =0x00001544
	lsl r4, r6, #2
	add r7, r5, r0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r7, r4
	bl sub_020D50B8
	ldr r0, _0223D2DC ; =0x00001554
	mov r2, #1
	add r1, r5, r6
	strb r2, [r1, r0]
	ldr r1, [r7, r4]
	add r2, r5, r4
	sub r0, #0xf0
	str r1, [r2, r0]
	mov r0, #0
	ldr r1, _0223D2DC ; =0x00001554
	add r3, r0, #0
_0223D296:
	add r2, r5, r3
	ldrb r2, [r2, r1]
	cmp r2, #1
	bne _0223D2A0
	add r0, r0, #1
_0223D2A0:
	add r3, r3, #1
	cmp r3, #4
	blt _0223D296
	ldr r1, _0223D2E0 ; =0x00001424
	ldr r2, [r5, r1]
	cmp r0, r2
	blt _0223D2D0
	mov r0, #0xba
	lsl r0, r0, #2
	add r1, #0x50
	add r0, r5, r0
	add r1, r5, r1
	bl ov83_0223FF44
	bl ov83_0223D4B4
	ldr r3, _0223D2E4 ; =0x00001464
	add r2, r0, #0
	add r1, r5, r3
	sub r3, #0x3c
	ldr r3, [r5, r3]
	mov r0, #0x18
	bl ov83_0223D508
_0223D2D0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D2D4: .word 0x00001428
_0223D2D8: .word 0x00001544
_0223D2DC: .word 0x00001554
_0223D2E0: .word 0x00001424
_0223D2E4: .word 0x00001464
	thumb_func_end ov83_0223D258

	thumb_func_start ov83_0223D2E8
ov83_0223D2E8: ; 0x0223D2E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r3, #0
	mov ip, r2
	ldr r3, _0223D348 ; =0x000014D6
	mov r2, #0x1c
	add r5, r0, #0
	mul r5, r2
	add r2, r4, r3
	str r2, [sp, #4]
	str r1, [sp]
	mov r1, ip
	ldrb r2, [r2, r5]
	add r1, #8
	cmp r2, #1
	bne _0223D31C
	ldrb r1, [r1, #0xe]
	cmp r1, #0
	bne _0223D31C
	cmp r0, #0
	bne _0223D31C
	add r1, r4, r5
	sub r0, r3, #2
	mov r6, #1
	ldrb r7, [r1, r0]
	b _0223D31E
_0223D31C:
	mov r6, #0
_0223D31E:
	mov r0, #0x53
	lsl r0, r0, #6
	add r0, r4, r0
	ldr r2, [sp]
	add r0, r0, r5
	mov r1, ip
	bl sub_020D50B8
	cmp r6, #1
	bne _0223D33C
	ldr r0, [sp, #4]
	add r1, r4, r5
	strb r6, [r0, r5]
	ldr r0, _0223D34C ; =0x000014D4
	strb r7, [r1, r0]
_0223D33C:
	ldr r0, _0223D350 ; =0x00001602
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D348: .word 0x000014D6
_0223D34C: .word 0x000014D4
_0223D350: .word 0x00001602
	thumb_func_end ov83_0223D2E8

	thumb_func_start ov83_0223D354
ov83_0223D354: ; 0x0223D354
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov ip, r1
	add r1, r2, #0
	mov r2, #0x1c
	ldr r0, _0223D39C ; =0x000014D6
	add r5, r3, #0
	mul r4, r2
	add r7, r5, r0
	ldrb r2, [r7, r4]
	cmp r2, #1
	bne _0223D37E
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	bne _0223D37E
	add r2, r5, r4
	sub r0, r0, #2
	ldrb r0, [r2, r0]
	mov r6, #1
	str r0, [sp]
	b _0223D380
_0223D37E:
	mov r6, #0
_0223D380:
	ldr r0, _0223D3A0 ; =0x000014C8
	mov r2, ip
	add r0, r5, r0
	add r0, r0, r4
	bl sub_020D50B8
	cmp r6, #1
	bne _0223D39A
	strb r6, [r7, r4]
	ldr r1, _0223D3A4 ; =0x000014D4
	ldr r0, [sp]
	add r2, r5, r4
	strb r0, [r2, r1]
_0223D39A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D39C: .word 0x000014D6
_0223D3A0: .word 0x000014C8
_0223D3A4: .word 0x000014D4
	thumb_func_end ov83_0223D354

	thumb_func_start ov83_0223D3A8
ov83_0223D3A8: ; 0x0223D3A8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0x53
	add r5, r3, #0
	lsl r0, r0, #6
	add r6, r1, #0
	add r1, r5, r0
	mov r0, #0x1c
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r6, #0
	bl sub_020D50B8
	ldr r0, _0223D3D4 ; =0x000015F8
	lsl r1, r4, #1
	add r2, r5, r0
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	pop {r4, r5, r6, pc}
	nop
_0223D3D4: .word 0x000015F8
	thumb_func_end ov83_0223D3A8

	thumb_func_start ov83_0223D3D8
ov83_0223D3D8: ; 0x0223D3D8
	push {r3, r4, r5, lr}
	ldr r0, _0223D3F4 ; =0x00001488
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	add r0, r4, r0
	add r2, r5, #0
	bl sub_020D50B8
	add r0, r4, #0
	mov r1, #0xa
	bl ov83_0223B774
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D3F4: .word 0x00001488
	thumb_func_end ov83_0223D3D8

	thumb_func_start ov83_0223D3F8
ov83_0223D3F8: ; 0x0223D3F8
	push {r4, lr}
	ldr r0, _0223D40C ; =0x00001530
	add r4, r1, #0
	ldr r0, [r3, r0]
	add r1, r2, #0
	add r2, r4, #0
	bl sub_020D50B8
	pop {r4, pc}
	nop
_0223D40C: .word 0x00001530
	thumb_func_end ov83_0223D3F8

	thumb_func_start ov83_0223D410
ov83_0223D410: ; 0x0223D410
	push {r3, r4, r5, lr}
	ldr r0, _0223D42C ; =0x00001575
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	add r0, r4, r0
	add r2, r5, #0
	bl sub_020D50B8
	add r0, r4, #0
	mov r1, #0xc
	bl ov83_0223B774
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D42C: .word 0x00001575
	thumb_func_end ov83_0223D410

	thumb_func_start ov83_0223D430
ov83_0223D430: ; 0x0223D430
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223D49C ; =0x00001428
	add r4, r3, #0
	ldr r0, [r4, r0]
	add r6, r1, #0
	add r7, r2, #0
	bl ov83_0223D570
	cmp r0, #0
	bne _0223D49A
	ldr r0, _0223D4A0 ; =0x00001558
	add r1, r7, #0
	add r0, r4, r0
	add r0, r0, r5
	add r2, r6, #0
	bl sub_020D50B8
	ldr r0, _0223D4A4 ; =0x0000155C
	add r1, r4, r5
	mov r2, #1
	strb r2, [r1, r0]
	add r6, sp, #0
	mov r3, #0
	strb r2, [r6]
	add r2, r3, #0
	sub r7, r0, #4
	add r5, r0, #0
_0223D468:
	add r1, r4, r2
	ldrb r0, [r1, r5]
	cmp r0, #1
	bne _0223D47A
	ldrb r0, [r6]
	ldrb r1, [r1, r7]
	add r3, r3, #1
	and r0, r1
	strb r0, [r6]
_0223D47A:
	add r2, r2, #1
	cmp r2, #4
	blt _0223D468
	ldr r0, _0223D4A8 ; =0x00001424
	ldr r0, [r4, r0]
	cmp r3, r0
	blt _0223D49A
	bl ov83_0223D4B0
	ldr r3, _0223D49C ; =0x00001428
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1d
	add r1, sp, #0
	bl ov83_0223D508
_0223D49A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D49C: .word 0x00001428
_0223D4A0: .word 0x00001558
_0223D4A4: .word 0x0000155C
_0223D4A8: .word 0x00001424
	thumb_func_end ov83_0223D430

	thumb_func_start ov83_0223D4AC
ov83_0223D4AC: ; 0x0223D4AC
	mov r0, #0
	bx lr
	thumb_func_end ov83_0223D4AC

	thumb_func_start ov83_0223D4B0
ov83_0223D4B0: ; 0x0223D4B0
	mov r0, #1
	bx lr
	thumb_func_end ov83_0223D4B0

	thumb_func_start ov83_0223D4B4
ov83_0223D4B4: ; 0x0223D4B4
	mov r0, #0x24
	bx lr
	thumb_func_end ov83_0223D4B4

	thumb_func_start ov83_0223D4B8
ov83_0223D4B8: ; 0x0223D4B8
	mov r0, #4
	bx lr
	thumb_func_end ov83_0223D4B8

	thumb_func_start ov83_0223D4BC
ov83_0223D4BC: ; 0x0223D4BC
	mov r0, #0x1c
	bx lr
	thumb_func_end ov83_0223D4BC

	thumb_func_start ov83_0223D4C0
ov83_0223D4C0: ; 0x0223D4C0
	mov r0, #0x14
	bx lr
	thumb_func_end ov83_0223D4C0

	thumb_func_start ov83_0223D4C4
ov83_0223D4C4: ; 0x0223D4C4
	mov r0, #0x14
	bx lr
	thumb_func_end ov83_0223D4C4

	thumb_func_start ov83_0223D4C8
ov83_0223D4C8: ; 0x0223D4C8
	mov r0, #8
	bx lr
	thumb_func_end ov83_0223D4C8

	thumb_func_start ov83_0223D4CC
ov83_0223D4CC: ; 0x0223D4CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x18]
	mov r1, #8
	str r2, [sp]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	str r5, [r4, #0]
	str r0, [r4, #4]
	cmp r5, #1
	bne _0223D4F6
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02032798
	b _0223D504
_0223D4F6:
	ldr r2, [sp]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, #0
	bl ov83_0223D584
	str r0, [r4, #4]
_0223D504:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D4CC

	thumb_func_start ov83_0223D508
ov83_0223D508: ; 0x0223D508
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r3, #0]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #1
	bne _0223D54A
	bl sub_0203895C
	cmp r0, #0x1d
	bne _0223D53E
	add r0, r5, #0
	mov r4, #1
	bl sub_0203626C
	cmp r0, #0
	beq _0223D52C
	mov r4, #0
_0223D52C:
	bl ov4_021D1404
	cmp r0, #0
	bne _0223D536
	mov r4, #0
_0223D536:
	cmp r4, #0
	bne _0223D53E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223D53E:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020359DC
	pop {r3, r4, r5, r6, r7, pc}
_0223D54A:
	ldr r0, [r3, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov83_0223D638
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D508

	thumb_func_start ov83_0223D558
ov83_0223D558: ; 0x0223D558
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0223D568
	ldr r0, [r4, #4]
	bl ov83_0223D620
_0223D568:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov83_0223D558

	thumb_func_start ov83_0223D570
ov83_0223D570: ; 0x0223D570
	push {r3, lr}
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0223D57E
	bl sub_0203608C
	pop {r3, pc}
_0223D57E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D570

	thumb_func_start ov83_0223D584
ov83_0223D584: ; 0x0223D584
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x1b
	add r5, r0, #0
	add r0, r3, #0
	lsl r1, r1, #4
	add r7, r2, #0
	bl sub_02018144
	mov r2, #0x1b
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D5124
	mov r1, #0x1a
	lsl r1, r1, #4
	str r5, [r4, r1]
	add r0, r1, #4
	str r6, [r4, r0]
	add r1, #8
	str r7, [r4, r1]
	ldr r0, _0223D5C4 ; =ov83_0223D5CC
	ldr r2, _0223D5C8 ; =0x00001388
	add r1, r4, #0
	bl sub_0200DA3C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D5C4: .word ov83_0223D5CC
_0223D5C8: .word 0x00001388
	thumb_func_end ov83_0223D584

	thumb_func_start ov83_0223D5CC
ov83_0223D5CC: ; 0x0223D5CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r0, #0
	str r0, [sp]
	add r6, r7, #0
_0223D5D8:
	ldr r0, [r6, #0]
	cmp r0, #1
	bne _0223D60E
	mov r4, #0x1a
	lsl r4, r4, #4
	ldr r4, [r7, r4]
	mov r3, #0x6a
	mov ip, r4
	ldr r4, [r6, #4]
	mov r5, #0xc
	mul r5, r4
	str r5, [sp, #4]
	lsl r3, r3, #2
	add r2, r6, #0
	ldr r4, [sp, #4]
	mov r5, ip
	ldr r1, [r6, #0x30]
	ldr r3, [r7, r3]
	ldr r4, [r5, r4]
	mov r0, #0
	add r2, #8
	blx r4
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x34
	bl sub_020D5124
_0223D60E:
	ldr r0, [sp]
	add r6, #0x34
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _0223D5D8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D5CC

	thumb_func_start ov83_0223D620
ov83_0223D620: ; 0x0223D620
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D620

	thumb_func_start ov83_0223D638
ov83_0223D638: ; 0x0223D638
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	str r2, [sp]
	add r7, r1, #0
	add r5, r3, #0
	add r0, r4, #0
	add r2, r6, #0
_0223D648:
	ldr r1, [r2, #0]
	cmp r1, #0
	bne _0223D656
	mov r1, #0x34
	mul r1, r0
	add r4, r6, r1
	b _0223D65E
_0223D656:
	add r0, r0, #1
	add r2, #0x34
	cmp r0, #8
	blt _0223D648
_0223D65E:
	cmp r4, #0
	bne _0223D666
	bl sub_02022974
_0223D666:
	mov r0, #0x1a
	lsl r0, r0, #4
	add r1, r7, #0
	ldr r2, [r6, r0]
	sub r1, #0x16
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #4]
	blx r0
	cmp r0, r5
	beq _0223D682
	bl sub_02022974
_0223D682:
	cmp r5, #0x26
	blt _0223D68A
	bl sub_02022974
_0223D68A:
	sub r7, #0x16
	str r7, [r4, #4]
	cmp r5, #0
	ble _0223D69E
	add r0, r4, #0
	ldr r1, [sp]
	add r0, #8
	add r2, r5, #0
	bl sub_020D50B8
_0223D69E:
	str r5, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D638

	thumb_func_start ov83_0223D6A8
ov83_0223D6A8: ; 0x0223D6A8
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	mov r2, #0
	bl sub_02002D7C
	lsr r0, r0, #1
	sub r0, r4, r0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D6A8

	thumb_func_start ov83_0223D6BC
ov83_0223D6BC: ; 0x0223D6BC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r2, [sp]
	add r0, r3, #0
	mov r2, #0
	add r3, sp, #4
	bl sub_020071B4
	add r4, r0, #0
	ldr r0, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #8
	bl sub_02015128
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D6BC

	thumb_func_start ov83_0223D6EC
ov83_0223D6EC: ; 0x0223D6EC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r5, r0, #0
	add r0, r3, #0
	add r2, sp, #0
	add r3, r4, #0
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #4
	bl sub_020151A4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D6EC

	thumb_func_start ov83_0223D720
ov83_0223D720: ; 0x0223D720
	push {r4, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r0, sp, #0
	ldr r1, [sp, #0x28]
	strh r3, [r0, #0xc]
	strh r1, [r0, #0xe]
	mov r2, #0
	strh r2, [r0, #0x10]
	mov r1, #0x1f
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x2c]
	str r1, [sp, #0x18]
	strh r2, [r0, #0x1c]
	add r0, sp, #0
	bl sub_02015214
	mov r1, #0
	add r4, r0, #0
	bl sub_02015240
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end ov83_0223D720

	thumb_func_start ov83_0223D754
ov83_0223D754: ; 0x0223D754
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r6, r3, #0
	add r7, r2, #0
	add r1, r5, #4
	add r2, r6, #0
	bl sub_020095C4
	str r0, [r5, #0]
	mov r4, #0
_0223D76A:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02009714
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223D76A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D754

	thumb_func_start ov83_0223D784
ov83_0223D784: ; 0x0223D784
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02021964
	mov r4, #0
	mov r6, #0x4b
	str r4, [r5, #0]
	lsl r6, r6, #2
_0223D796:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223D796
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D784

	thumb_func_start ov83_0223D7A8
ov83_0223D7A8: ; 0x0223D7A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r6, [sp, #0x58]
	add r5, r0, #0
	ldr r7, [sp, #0x5c]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r4, r1, #0
	str r3, [sp, #0x30]
	str r2, [sp, #0x2c]
	add r1, r2, #0
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x4c]
	mov r3, #0
	bl sub_02009AA8
	str r0, [r4, #0]
	str r6, [sp]
	mov r1, #1
	ldr r0, [sp, #0x48]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #0x13
	str r1, [sp, #0x10]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	mov r3, #0
	bl sub_02009B64
	str r0, [r4, #4]
	mov r3, #0
	str r3, [r4, #0x10]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4d
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x50]
	bl sub_02009BC4
	str r0, [r4, #8]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4e
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x54]
	mov r3, #0
	bl sub_02009BC4
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl sub_0200A450
	cmp r0, #0
	bne _0223D838
	bl sub_02022974
_0223D838:
	ldr r0, [r4, #0]
	bl sub_02009D4C
	ldr r0, [r4, #4]
	bl sub_0200A640
	cmp r0, #0
	bne _0223D84C
	bl sub_02022974
_0223D84C:
	ldr r0, [r4, #4]
	bl sub_02009D4C
	mov r0, #0
	mov r2, #0x4b
	str r6, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r4, #0x14
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	add r3, r6, #0
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	add r2, r6, #0
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020093B4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D7A8

	thumb_func_start ov83_0223D894
ov83_0223D894: ; 0x0223D894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, [sp, #0x5c]
	add r5, r0, #0
	ldr r7, [sp, #0x60]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r4, r1, #0
	str r3, [sp, #0x30]
	str r2, [sp, #0x2c]
	add r1, r2, #0
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x50]
	mov r3, #0
	bl sub_02009AA8
	str r0, [r4, #0]
	ldr r0, [sp, #0x30]
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x30]
	bl sub_02009E08
	str r0, [sp, #0x34]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4d
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x54]
	mov r3, #0
	bl sub_02009BC4
	str r0, [r4, #8]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4e
	str r7, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x58]
	mov r3, #0
	bl sub_02009BC4
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl sub_0200A450
	cmp r0, #0
	bne _0223D912
	bl sub_02022974
_0223D912:
	ldr r0, [r4, #0]
	bl sub_02009D4C
	mov r0, #0
	mov r2, #0x4b
	str r6, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r4, #0x14
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	add r3, r6, #0
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	ldr r2, [sp, #0x34]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020093B4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D894

	thumb_func_start ov83_0223D95C
ov83_0223D95C: ; 0x0223D95C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	ldr r0, [r7, #0]
	bl sub_0200A4E4
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0223D974
	ldr r0, [r7, #4]
	bl sub_0200A6DC
_0223D974:
	mov r6, #0
	add r4, r7, #0
_0223D978:
	cmp r6, #1
	beq _0223D98A
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0]
	bl sub_02009D68
	b _0223D99C
_0223D98A:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0223D99C
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0]
	bl sub_02009D68
_0223D99C:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0223D978
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223D95C

	thumb_func_start ov83_0223D9A8
ov83_0223D9A8: ; 0x0223D9A8
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0]
	add r1, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r2, [sp, #8]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x30]
	str r3, [sp, #0xc]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl sub_02021B90
	add r4, r0, #0
	bne _0223D9D6
	bl sub_02022974
_0223D9D6:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end ov83_0223D9A8

	thumb_func_start ov83_0223D9DC
ov83_0223D9DC: ; 0x0223D9DC
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov83_0223D9DC

	thumb_func_start ov83_0223D9EC
ov83_0223D9EC: ; 0x0223D9EC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
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
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _0223DA2C
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_0223DA2C:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223D9EC

	thumb_func_start ov83_0223DA34
ov83_0223DA34: ; 0x0223DA34
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
	thumb_func_end ov83_0223DA34

	thumb_func_start ov83_0223DA94
ov83_0223DA94: ; 0x0223DA94
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
	bgt _0223DAF4
	str r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223DAF4:
	str r1, [r5, #0x10]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DA94

	thumb_func_start ov83_0223DAFC
ov83_0223DAFC: ; 0x0223DAFC
	push {r4}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r2, sp, #0
	add r4, r0, #0
	str r1, [sp]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r4}
	bx lr
	thumb_func_end ov83_0223DAFC

	thumb_func_start ov83_0223DB18
ov83_0223DB18: ; 0x0223DB18
	push {r3, r4, r5, lr}
	mov r2, #0x1f
	add r4, r1, #0
	mov r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	bl sub_020D5124
	mov r0, #0x42
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223DB18

	thumb_func_start ov83_0223DB30
ov83_0223DB30: ; 0x0223DB30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223DB3E
	bl sub_02022974
_0223DB3E:
	mov r2, #0x1f
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov83_0223DB30

	thumb_func_start ov83_0223DB4C
ov83_0223DB4C: ; 0x0223DB4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r6, [sp, #0x48]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r0, #0x35
	add r1, r6, #0
	add r7, r2, #0
	str r3, [sp, #0x20]
	bl sub_02006C24
	ldr r4, [sp, #0x18]
	str r0, [sp, #0x24]
	mov r0, #0
	ldr r5, [sp, #0x18]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r4, #0x28
_0223DB70:
	ldr r0, [sp, #0x1c]
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _0223DBEC
	mov r0, #1
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x8f
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xfa
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	add r0, r7, #0
	add r1, r4, #0
	sub r3, #0x4f
	str r6, [sp, #0x14]
	bl ov83_0223D7A8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #0
	add r0, r7, #0
	add r1, r4, #0
	add r3, r2, #0
	str r6, [sp, #8]
	bl ov83_0223D9A8
	mov r1, #0
	str r0, [r5, #8]
	bl sub_02021CAC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r1, [sp, #0x20]
	str r6, [sp, #8]
	add r0, r7, #0
	add r3, r2, #0
	bl ov83_0223D9A8
	str r0, [r5, #0x18]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [sp, #0x28]
	add r4, #0x38
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x28]
_0223DBEC:
	mov r0, #0x42
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	beq _0223DC0A
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #4
	blt _0223DB70
_0223DC0A:
	ldr r0, [sp, #0x24]
	bl sub_02006CA8
	ldr r0, [sp, #0x18]
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DB4C

	thumb_func_start ov83_0223DC1C
ov83_0223DC1C: ; 0x0223DC1C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	str r1, [sp]
	cmp r0, #1
	beq _0223DC2C
	bl sub_02022974
_0223DC2C:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	ble _0223DC62
	add r6, r7, #0
	add r5, r7, #0
	add r6, #0x28
_0223DC3E:
	ldr r0, [r5, #8]
	bl sub_02021BD4
	ldr r0, [r5, #0x18]
	bl sub_02021BD4
	ldr r0, [sp]
	add r1, r6, #0
	bl ov83_0223D95C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r4, r4, #1
	add r5, r5, #4
	add r6, #0x38
	cmp r4, r0
	blt _0223DC3E
_0223DC62:
	mov r0, #0
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223DC1C

	thumb_func_start ov83_0223DC68
ov83_0223DC68: ; 0x0223DC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0223DC78
	bl sub_02022974
_0223DC78:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r2, #0x42
	ldr r0, [sp, #4]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	cmp r0, #0
	ble _0223DD18
	ldr r0, [sp, #4]
	add r1, r2, #4
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r2, #0x64
	ldr r4, _0223DD2C ; =0x02240460
	add r7, r0, r2
	add r6, r0, #0
	add r5, r0, #0
_0223DC9C:
	ldrb r0, [r4, #0x10]
	mov r1, #8
	mov r2, #0xa
	str r0, [sp]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [sp, #8]
	ldr r3, [r4, #0]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov83_0223DA34
	ldrb r0, [r4, #0x10]
	mov r1, #0xc
	mov r2, #0xe
	str r0, [sp]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #4]
	add r0, r7, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov83_0223DA34
	mov r1, #0x43
	mov r2, #0x5b
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	add r0, sp, #0x10
	mov r3, #0
	bl ov83_0223DAFC
	ldr r0, [r5, #8]
	add r1, sp, #0x10
	bl sub_02021C50
	mov r0, #0x73
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldrb r1, [r4, #0x11]
	add r0, #0x10
	add r4, #0x14
	str r1, [r5, r0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r7, #0x18
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, [sp, #0xc]
	add r6, #0x18
	add r5, r5, #4
	cmp r0, r1
	blt _0223DC9C
_0223DD18:
	mov r1, #0x7b
	ldr r0, [sp, #4]
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r1, #1
	str r1, [r0, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223DD2C: .word 0x02240460
	thumb_func_end ov83_0223DC68

	thumb_func_start ov83_0223DD30
ov83_0223DD30: ; 0x0223DD30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0223DD46
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223DD46:
	mov r0, #0x7b
	lsl r0, r0, #2
	add r1, r0, #0
	sub r1, #0xe4
	ldr r2, [r6, r0]
	ldr r1, [r6, r1]
	cmp r2, r1
	bge _0223DD96
	add r1, r0, #0
	sub r1, #0x10
	add r1, r6, r1
	lsl r3, r2, #2
	ldr r2, [r1, r3]
	sub r2, r2, #1
	str r2, [r1, r3]
	ldr r1, [r6, r0]
	lsl r1, r1, #2
	add r2, r6, r1
	add r1, r0, #0
	sub r1, #0x10
	ldr r1, [r2, r1]
	cmp r1, #0
	bgt _0223DD96
	add r3, r0, #0
	mov r1, #1
	sub r3, #0x20
	str r1, [r2, r3]
	ldr r0, [r6, r0]
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #8]
	bl sub_02021CAC
	mov r1, #0x7b
	lsl r1, r1, #2
	ldr r2, [r6, r1]
	add r0, r2, #2
	str r0, [sp, #4]
	add r0, r2, #1
	str r0, [r6, r1]
_0223DD96:
	mov r1, #0x42
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	cmp r0, #0
	ble _0223DE7A
	add r0, r1, #4
	add r0, r6, r0
	add r1, #0x64
	add r4, r6, #0
	str r0, [sp]
	add r7, r6, r1
	add r5, r6, #0
_0223DDB2:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _0223DE58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223DDC8: ; jump table
	.short _0223DE5C - _0223DDC8 - 2 ; case 0
	.short _0223DDD0 - _0223DDC8 - 2 ; case 1
	.short _0223DE36 - _0223DDC8 - 2 ; case 2
	.short _0223DE5C - _0223DDC8 - 2 ; case 3
_0223DDD0:
	ldr r0, [sp]
	bl ov83_0223DA94
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov83_0223DA94
	mov r1, #0x43
	mov r2, #0x5b
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, sp, #0x10
	mov r3, #0
	bl ov83_0223DAFC
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl sub_02021C50
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0223DE5C
	ldr r0, [r4, #0x18]
	add r1, sp, #0x10
	bl sub_02021C50
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0223DE9C ; =0x000006BC
	bl sub_02005748
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223DE5C
_0223DE36:
	ldr r0, [r4, #0x18]
	bl sub_02021FD0
	cmp r0, #0
	bne _0223DE5C
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223DE5C
_0223DE58:
	bl sub_02022974
_0223DE5C:
	ldr r0, [sp]
	add r4, r4, #4
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #8]
	add r7, #0x18
	add r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #8]
	add r5, #0x18
	cmp r1, r0
	blt _0223DDB2
_0223DE7A:
	sub r0, r0, #1
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #3
	bne _0223DE94
	mov r0, #0
	str r0, [r6, #4]
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223DE94:
	ldr r0, [sp, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223DE9C: .word 0x000006BC
	thumb_func_end ov83_0223DD30

	thumb_func_start ov83_0223DEA0
ov83_0223DEA0: ; 0x0223DEA0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x34
	add r7, r3, #0
	bl sub_020D5124
	str r6, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r4, [r5, #0x14]
	str r0, [r5, #0]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x1c]
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DEA0

	thumb_func_start ov83_0223DEC4
ov83_0223DEC4: ; 0x0223DEC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0223DED2
	bl sub_02022974
_0223DED2:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x34
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DEC4

	thumb_func_start ov83_0223DEE0
ov83_0223DEE0: ; 0x0223DEE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0223DEF4
	bl sub_02022974
_0223DEF4:
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #4]
	bl ov83_0223E09C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov83_0223E15C
	mov r0, #1
	str r0, [r5, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223DEE0

	thumb_func_start ov83_0223DF10
ov83_0223DF10: ; 0x0223DF10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #1
	beq _0223DF1E
	bl sub_02022974
_0223DF1E:
	add r0, r4, #0
	bl ov83_0223E138
	add r0, r4, #0
	bl ov83_0223E208
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end ov83_0223DF10

	thumb_func_start ov83_0223DF30
ov83_0223DF30: ; 0x0223DF30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r2, r1, #0
	ldr r0, [r0, #4]
	mov r1, #0
	bl sub_0200B70C
	ldr r2, [r4, #0x18]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x10]
	bl sub_0200C388
	ldr r0, [r4, #8]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r1, [r4, #0x18]
	mov r2, #0
	ldr r0, [r4, #8]
	ldr r1, [r1, #8]
	add r3, r2, #0
	bl ov83_0223E21C
	mov r1, #0
	ldr r0, [r4, #8]
	mov r2, #1
	add r3, r1, #0
	bl sub_0200E060
	pop {r4, pc}
	thumb_func_end ov83_0223DF30

	thumb_func_start ov83_0223DF70
ov83_0223DF70: ; 0x0223DF70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0201ACF4
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019EBC
	pop {r4, pc}
	thumb_func_end ov83_0223DF70

	thumb_func_start ov83_0223DF84
ov83_0223DF84: ; 0x0223DF84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r1, [r4, #0x18]
	mov r2, #0
	ldr r0, [r4, #8]
	ldr r1, [r1, #0xc]
	add r3, r2, #0
	bl ov83_0223E21C
	mov r1, #0
	ldr r0, [r4, #8]
	mov r2, #1
	add r3, r1, #0
	bl sub_0200E060
	pop {r4, pc}
	thumb_func_end ov83_0223DF84

	thumb_func_start ov83_0223DFAC
ov83_0223DFAC: ; 0x0223DFAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #1
	beq _0223E098
	mov r4, #0
	cmp r0, #0
	ble _0223E08A
_0223DFBE:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r1, r2, r1
	add r2, r4, r2
	asr r2, r2, #1
	mov r0, #0xc
	add r6, r1, #0
	mul r6, r0
	lsl r0, r2, #2
	add r2, r2, r0
	str r2, [sp, #0x1c]
	mov r2, #0xa
	str r2, [sp]
	mov r2, #4
	str r2, [sp, #4]
	ldr r2, [r5, #0x2c]
	lsl r0, r0, #0x18
	add r2, #0xc
	str r2, [sp, #8]
	mov r2, #0xa
	mul r2, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	lsr r0, r0, #0x18
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x10]
	mov r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #8
	add r2, r6, #5
	add r3, #0xd
	str r0, [sp, #0x18]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #4]
	mov r1, #5
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	mov r0, #0xa
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	add r2, r6, #5
	add r3, #0xd
	str r0, [sp, #8]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #4]
	mov r1, #5
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	ldr r7, [r5, #0x1c]
	mov r2, #0x13
	ldr r0, [r5, #0x18]
	add r3, r7, r4
	lsl r2, r2, #4
	ldrb r2, [r3, r2]
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r2, r2, #2
	add r3, r7, r2
	mov r2, #0x4d
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	bl sub_0200B498
	ldr r2, [r5, #0x18]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x14]
	bl sub_0200C388
	ldr r1, [r5, #0x18]
	lsl r0, r6, #3
	ldr r1, [r1, #8]
	add r0, #0x20
	mov r2, #1
	bl ov83_0223D6A8
	ldr r1, [r5, #0x18]
	ldr r3, [sp, #0x1c]
	add r2, r0, #0
	lsl r3, r3, #3
	ldr r0, [r5, #0xc]
	ldr r1, [r1, #8]
	add r3, #8
	bl ov83_0223E21C
	ldr r0, [r5, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _0223DFBE
_0223E08A:
	ldr r0, [r5, #0xc]
	bl sub_0201A9A4
	ldr r0, [r5, #4]
	mov r1, #5
	bl sub_0201C3C0
_0223E098:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223DFAC

	thumb_func_start ov83_0223E09C
ov83_0223E09C: ; 0x0223E09C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A778
	str r0, [r5, #0xc]
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	mov r2, #4
	mov r3, #6
	bl sub_0201A7E8
	ldr r0, [r5, #8]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x10]
	mov r1, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #4]
	mov r2, #1
	mov r3, #0
	bl sub_0200DD0C
	mov r0, #4
	mov r1, #0x20
	add r2, r4, #0
	bl sub_02002E98
	mov r1, #1
	ldr r0, [r5, #8]
	add r2, r1, #0
	mov r3, #0
	bl sub_0200E060
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E09C

	thumb_func_start ov83_0223E138
ov83_0223E138: ; 0x0223E138
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0201A8FC
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0201A928
	ldr r0, [r4, #0xc]
	bl sub_0201A8FC
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0201A928
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E138

	thumb_func_start ov83_0223E15C
ov83_0223E15C: ; 0x0223E15C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	mov r3, #0x40
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp]
	add r0, r6, #0
	mov r1, #1
	mov r2, #4
	str r4, [sp, #4]
	bl sub_02007130
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, r6, #0
	mov r3, #5
	bl sub_020070E8
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0223E194
	mov r1, #2
	b _0223E196
_0223E194:
	mov r1, #3
_0223E196:
	add r3, r5, #0
	str r4, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x24
	bl sub_020071D0
	str r0, [r5, #0x20]
	ldr r2, [r5, #0x24]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_020198C0
	ldr r1, [r5, #0x24]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02019E2C
	add r3, r5, #0
	str r4, [sp]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0
	add r3, #0x2c
	bl sub_020071D0
	str r0, [r5, #0x28]
	ldr r0, [r5, #4]
	mov r1, #5
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E15C

	thumb_func_start ov83_0223E208
ov83_0223E208: ; 0x0223E208
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_020181C4
	ldr r0, [r4, #0x28]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E208

	thumb_func_start ov83_0223E21C
ov83_0223E21C: ; 0x0223E21C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	mov r2, #0
	ldr r1, _0223E240 ; =0x0001020F
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #1
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223E240: .word 0x0001020F
	thumb_func_end ov83_0223E21C

	thumb_func_start ov83_0223E244
ov83_0223E244: ; 0x0223E244
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	bx lr
	thumb_func_end ov83_0223E244

	thumb_func_start ov83_0223E260
ov83_0223E260: ; 0x0223E260
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223E26E
	bl sub_02022974
_0223E26E:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E260

	thumb_func_start ov83_0223E28C
ov83_0223E28C: ; 0x0223E28C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r1, #0
	ldr r3, [sp, #0x18]
	mov r1, #0x38
	mul r1, r3
	add r1, r2, r1
	mov r2, #2
	mov r3, #6
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov83_0223D9A8
	str r0, [r4, #8]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x1c]
	bl sub_02021D6C
	mov r0, #1
	str r0, [r4, #0]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov83_0223E28C

	thumb_func_start ov83_0223E2C8
ov83_0223E2C8: ; 0x0223E2C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	beq _0223E2D6
	bl sub_02022974
_0223E2D6:
	ldr r0, [r4, #8]
	bl sub_02021BD4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E2C8

	thumb_func_start ov83_0223E2E4
ov83_0223E2E4: ; 0x0223E2E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CC8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E2E4

	thumb_func_start ov83_0223E2FC
ov83_0223E2FC: ; 0x0223E2FC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x2a
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #0xf
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E2FC

	thumb_func_start ov83_0223E32C
ov83_0223E32C: ; 0x0223E32C
	push {r3, lr}
	ldr r0, [r0, #8]
	bl sub_02021FD0
	cmp r0, #0
	bne _0223E33C
	mov r0, #1
	pop {r3, pc}
_0223E33C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov83_0223E32C

	thumb_func_start ov83_0223E340
ov83_0223E340: ; 0x0223E340
	ldr r3, _0223E348 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x78
	bx r3
	; .align 2, 0
_0223E348: .word sub_020D5124
	thumb_func_end ov83_0223E340

	thumb_func_start ov83_0223E34C
ov83_0223E34C: ; 0x0223E34C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0223E35A
	bl sub_02022974
_0223E35A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x78
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E34C

	thumb_func_start ov83_0223E368
ov83_0223E368: ; 0x0223E368
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #8]
	ldr r0, [r0, #0x74]
	add r7, r2, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _0223E37E
	bl sub_02022974
_0223E37E:
	ldr r4, _0223E420 ; =0x02240418
	ldr r5, [sp, #8]
	mov r6, #0
_0223E384:
	ldrb r1, [r4]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r2, r7, #0
	bl ov83_0223D6BC
	add r6, r6, #1
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r6, #6
	blt _0223E384
	ldr r4, _0223E424 ; =0x02240438
	ldr r5, [sp, #8]
	mov r6, #0
_0223E3A0:
	ldrb r1, [r4]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r2, r7, #0
	bl ov83_0223D6EC
	str r0, [r5, #0x18]
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #8
	blt _0223E3A0
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _0223E428 ; =0x02240428
	ldr r6, _0223E42C ; =0x02240430
	ldr r4, _0223E430 ; =0x02240440
	ldr r5, [sp, #8]
	ldr r7, _0223E434 ; =0x02240420
	str r0, [sp, #0x18]
_0223E3C8:
	ldrb r0, [r6]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrb r1, [r7]
	ldrb r3, [r4]
	ldr r0, [sp, #0xc]
	lsl r2, r1, #2
	ldr r1, [sp, #8]
	ldr r1, [r1, r2]
	ldr r2, [r5, #0x18]
	bl ov83_0223D720
	str r0, [r5, #0x38]
	ldrb r2, [r4]
	mov r1, #0x80
	ldrb r3, [r6]
	sub r1, r1, r2
	mov r2, #0x60
	sub r2, r2, r3
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02015268
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r0, r0, #1
	add r5, r5, #4
	add r7, r7, #1
	str r0, [sp, #0x14]
	cmp r0, #8
	blt _0223E3C8
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #0x74]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E420: .word 0x02240418
_0223E424: .word 0x02240438
_0223E428: .word 0x02240428
_0223E42C: .word 0x02240430
_0223E430: .word 0x02240440
_0223E434: .word 0x02240420
	thumb_func_end ov83_0223E368

	thumb_func_start ov83_0223E438
ov83_0223E438: ; 0x0223E438
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x74]
	cmp r0, #1
	beq _0223E446
	bl sub_02022974
_0223E446:
	mov r4, #0
	add r5, r6, #0
_0223E44A:
	ldr r0, [r5, #0x38]
	bl sub_02015238
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0223E44A
	mov r5, #0
	add r4, r6, #0
_0223E45C:
	ldr r0, [r4, #0]
	bl sub_02015164
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _0223E45C
	mov r5, #0
	add r4, r6, #0
_0223E46E:
	ldr r0, [r4, #0x18]
	bl sub_020151D4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _0223E46E
	mov r0, #0
	str r0, [r6, #0x74]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E438

	thumb_func_start ov83_0223E484
ov83_0223E484: ; 0x0223E484
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	blo _0223E494
	bl sub_02022974
_0223E494:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	add r1, r6, #0
	bl sub_02015240
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E484

	thumb_func_start ov83_0223E4A4
ov83_0223E4A4: ; 0x0223E4A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #5
	add r5, #0x14
_0223E4AE:
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	bl sub_020152BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	ble _0223E4AE
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223E4A4

	thumb_func_start ov83_0223E4C0
ov83_0223E4C0: ; 0x0223E4C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #5
	add r5, #0x14
_0223E4CA:
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02015270
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	ble _0223E4CA
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E4C0

	thumb_func_start ov83_0223E4E0
ov83_0223E4E0: ; 0x0223E4E0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	blo _0223E4F0
	bl sub_02022974
_0223E4F0:
	lsl r0, r4, #2
	add r0, r5, r0
	lsl r1, r6, #0x18
	ldr r0, [r0, #0x38]
	lsr r1, r1, #0x18
	bl sub_02015294
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223E4E0

	thumb_func_start ov83_0223E500
ov83_0223E500: ; 0x0223E500
	push {r3, lr}
	mov r2, #1
	str r2, [r0, #0x6c]
	mov r1, #0
	str r1, [r0, #0x70]
	lsl r1, r2, #0xc
	ldr r2, _0223E518 ; =0x00000FAE
	add r0, #0x58
	mov r3, #4
	bl ov83_0223D9DC
	pop {r3, pc}
	; .align 2, 0
_0223E518: .word 0x00000FAE
	thumb_func_end ov83_0223E500

	thumb_func_start ov83_0223E51C
ov83_0223E51C: ; 0x0223E51C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	add r3, r1, #0
	cmp r0, #0
	beq _0223E52E
	cmp r0, #1
	beq _0223E568
	b _0223E592
_0223E52E:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _0223E54C
	ldr r1, _0223E598 ; =0x02240448
	lsl r4, r3, #2
	ldr r2, _0223E59C ; =0x02240454
	ldr r1, [r1, r4]
	ldr r2, [r2, r4]
	ldr r4, _0223E5A0 ; =0x02240414
	add r0, r5, #0
	ldrb r3, [r4, r3]
	add r0, #0x58
	bl ov83_0223D9DC
	b _0223E562
_0223E54C:
	ldr r1, _0223E59C ; =0x02240454
	lsl r4, r3, #2
	ldr r2, _0223E598 ; =0x02240448
	ldr r1, [r1, r4]
	ldr r2, [r2, r4]
	ldr r4, _0223E5A0 ; =0x02240414
	add r0, r5, #0
	ldrb r3, [r4, r3]
	add r0, #0x58
	bl ov83_0223D9DC
_0223E562:
	ldr r0, [r5, #0x6c]
	add r0, r0, #1
	str r0, [r5, #0x6c]
_0223E568:
	add r0, r5, #0
	add r0, #0x58
	bl ov83_0223D9EC
	add r7, r0, #0
	mov r6, #0
	add r4, r5, #0
_0223E576:
	ldr r1, [r5, #0x58]
	ldr r0, [r4, #0x38]
	add r2, r1, #0
	bl sub_02015270
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	ble _0223E576
	cmp r7, #1
	bne _0223E596
	mov r0, #0
	str r0, [r5, #0x6c]
	pop {r3, r4, r5, r6, r7, pc}
_0223E592:
	bl sub_02022974
_0223E596:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E598: .word 0x02240448
_0223E59C: .word 0x02240454
_0223E5A0: .word 0x02240414
	thumb_func_end ov83_0223E51C

	thumb_func_start ov83_0223E5A4
ov83_0223E5A4: ; 0x0223E5A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	add r7, r3, #0
	bl sub_020D5124
	str r4, [r5, #0x14]
	str r6, [r5, #0x18]
	str r7, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E5A4

	thumb_func_start ov83_0223E5C0
ov83_0223E5C0: ; 0x0223E5C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223E5CE
	bl sub_02022974
_0223E5CE:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E5C0

	thumb_func_start ov83_0223E5DC
ov83_0223E5DC: ; 0x0223E5DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x14]
	mov r0, #6
	add r6, r2, #0
	lsl r0, r0, #0x10
	ldr r5, [sp, #0xc]
	str r1, [sp, #0x10]
	add r7, r3, #0
	str r0, [sp, #0x18]
	mov r4, #0
	add r6, #0x38
_0223E5FA:
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	str r7, [sp, #8]
	add r1, r6, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov83_0223D9A8
	str r0, [r5, #4]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #4]
	add r1, r4, #4
	bl sub_02021D6C
	ldr r0, [r5, #4]
	add r1, sp, #0x14
	bl sub_02021C50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223E5FA
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E5DC

	thumb_func_start ov83_0223E63C
ov83_0223E63C: ; 0x0223E63C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0223E644:
	ldr r0, [r5, #4]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223E644
	mov r0, #0
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223E63C

	thumb_func_start ov83_0223E658
ov83_0223E658: ; 0x0223E658
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r7, [r6, #0x14]
	ldr r0, [r6, #0x18]
	add r7, #0x98
	mov r4, #0
	cmp r0, #0
	bls _0223E696
	add r5, r6, #0
_0223E66C:
	ldr r0, [r6, #0x14]
	add r1, r0, r4
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	add r0, r7, r1
	ldrb r1, [r7, r1]
	lsl r1, r1, #0xc
	str r1, [sp]
	ldrb r0, [r0, #4]
	add r1, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_02021C50
	ldr r0, [r6, #0x18]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _0223E66C
_0223E696:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E658

	thumb_func_start ov83_0223E69C
ov83_0223E69C: ; 0x0223E69C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	mov r6, #0
	str r1, [sp]
	cmp r0, #0
	bls _0223E6D2
	add r7, r5, #0
_0223E6AC:
	ldr r0, [r5, #0x14]
	add r1, r0, r6
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r4, [r1, r0]
	ldr r0, [r5, #0x1c]
	bl ov83_0223D570
	cmp r4, r0
	beq _0223E6C8
	ldr r0, [r7, #4]
	ldr r1, [sp]
	bl sub_02021CAC
_0223E6C8:
	ldr r0, [r5, #0x18]
	add r6, r6, #1
	add r7, r7, #4
	cmp r6, r0
	blo _0223E6AC
_0223E6D2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223E69C

	thumb_func_start ov83_0223E6D4
ov83_0223E6D4: ; 0x0223E6D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x38
	add r7, r3, #0
	bl sub_020D5124
	str r6, [r5, #0x1c]
	ldr r0, [sp, #0x1c]
	str r4, [r5, #0x20]
	str r0, [r5, #0]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x24]
	str r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E6D4

	thumb_func_start ov83_0223E6F8
ov83_0223E6F8: ; 0x0223E6F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0223E706
	bl sub_02022974
_0223E706:
	add r0, r4, #0
	bl ov83_0223E994
	add r0, r4, #0
	bl ov83_0223E9D0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E6F8

	thumb_func_start ov83_0223E720
ov83_0223E720: ; 0x0223E720
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0223E734
	bl sub_02022974
_0223E734:
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #4]
	bl ov83_0223E77C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov83_0223E844
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	str r0, [r5, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E720

	thumb_func_start ov83_0223E760
ov83_0223E760: ; 0x0223E760
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #1
	beq _0223E76E
	bl sub_02022974
_0223E76E:
	add r0, r4, #0
	bl ov83_0223E824
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E760

	thumb_func_start ov83_0223E77C
ov83_0223E77C: ; 0x0223E77C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	ldr r0, [r7, #0x18]
	str r1, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r1, #0
	str r0, [sp, #4]
	ldr r0, [r7, #4]
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl sub_0200DD0C
	ldr r2, [sp, #0x14]
	mov r0, #0
	mov r1, #0x40
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r1, #2
	str r0, [sp, #4]
	ldr r0, [r7, #4]
	mov r2, #0x1f
	mov r3, #1
	bl sub_0200DAA4
	ldr r2, [sp, #0x14]
	mov r0, #0
	mov r1, #0x60
	bl sub_02002E7C
	ldr r5, _0223E820 ; =0x022405C0
	mov r6, #0
	add r4, r7, #0
_0223E7CA:
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl sub_0201A778
	str r0, [r4, #8]
	ldrh r0, [r5, #2]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r5, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldrh r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xa]
	str r0, [sp, #0x10]
	ldrh r3, [r5]
	ldr r0, [r7, #4]
	ldr r1, [r4, #8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0201ADA4
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0xc
	cmp r6, #4
	blt _0223E7CA
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E820: .word 0x022405C0
	thumb_func_end ov83_0223E77C

	thumb_func_start ov83_0223E824
ov83_0223E824: ; 0x0223E824
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #1
_0223E82C:
	ldr r0, [r5, #8]
	bl sub_0201A8FC
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_0201A928
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223E82C
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223E824

	thumb_func_start ov83_0223E844
ov83_0223E844: ; 0x0223E844
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r2, #0
	mov r0, #0x20
	add r4, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	mov r3, #0x80
	str r4, [sp, #4]
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, r6, #0
	mov r1, #5
	mov r3, #1
	bl sub_020070E8
	str r4, [sp]
	add r0, r6, #0
	mov r1, #7
	mov r2, #0
	add r3, sp, #0x10
	bl sub_020071D0
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r4, r0, #0
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
	ldr r0, [r5, #4]
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
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_02019E2C
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E844

	thumb_func_start ov83_0223E8DC
ov83_0223E8DC: ; 0x0223E8DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	add r0, r0, #1
	str r0, [r4, #0x30]
	cmp r0, #0x1e
	blt _0223E906
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x2c]
_0223E906:
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223E8DC

	thumb_func_start ov83_0223E908
ov83_0223E908: ; 0x0223E908
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	add r5, r1, #0
	cmp r0, #0
	beq _0223E91A
	bl sub_02022974
_0223E91A:
	mov r2, #1
	ldr r0, _0223E97C ; =ov83_0223E8DC
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200D9E8
	str r0, [r4, #0x2c]
	mov r1, #0
	str r1, [r4, #0x30]
	ldr r0, [r4, #8]
	bl sub_0201ADA4
	ldr r1, [r4, #0x1c]
	lsl r5, r5, #2
	add r1, r1, r5
	ldr r1, [r1, #0x38]
	mov r0, #1
	mov r2, #0
	mov r3, #0x80
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	ldr r0, _0223E980 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #8]
	add r2, r2, r5
	ldr r2, [r2, #0x38]
	mov r1, #1
	bl sub_0201D78C
	ldr r0, [r4, #8]
	bl sub_0201A954
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223E97C: .word ov83_0223E8DC
_0223E980: .word 0x0001020F
	thumb_func_end ov83_0223E908

	thumb_func_start ov83_0223E984
ov83_0223E984: ; 0x0223E984
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _0223E98E
	mov r0, #1
	bx lr
_0223E98E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223E984

	thumb_func_start ov83_0223E994
ov83_0223E994: ; 0x0223E994
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0223E9B8
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x2c]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x2c]
_0223E9B8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223E994

	thumb_func_start ov83_0223E9BC
ov83_0223E9BC: ; 0x0223E9BC
	push {r4, lr}
	add r4, r0, #0
	bl ov83_0223E9D0
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0200E7FC
	str r0, [r4, #0x34]
	pop {r4, pc}
	thumb_func_end ov83_0223E9BC

	thumb_func_start ov83_0223E9D0
ov83_0223E9D0: ; 0x0223E9D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0223E9E2
	bl sub_0200EBA0
	mov r0, #0
	str r0, [r4, #0x34]
_0223E9E2:
	pop {r4, pc}
	thumb_func_end ov83_0223E9D0

	thumb_func_start ov83_0223E9E4
ov83_0223E9E4: ; 0x0223E9E4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0xc]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r1, [r4, #0x1c]
	mov r0, #0
	ldr r1, [r1, #0x34]
	add r2, r0, #0
	mov r3, #0xe0
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	ldr r0, _0223EA68 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0x34]
	bl sub_0201D78C
	ldr r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #1
	bl sub_0200DC48
	ldr r0, [r4, #0x10]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	ldr r0, _0223EA68 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x10]
	ldr r2, [r2, #0x64]
	add r3, r1, #0
	bl sub_0201D78C
	ldr r0, [r4, #0x10]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #1
	bl sub_0200DC48
	ldr r0, [r4, #0xc]
	bl sub_0201A9A4
	ldr r0, [r4, #0x10]
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223EA68: .word 0x0001020F
	thumb_func_end ov83_0223E9E4

	thumb_func_start ov83_0223EA6C
ov83_0223EA6C: ; 0x0223EA6C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0x4c]
	add r3, r1, #0
	bl sub_0201D78C
	mov r3, #2
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x66
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	mov r1, #0
	bl sub_0200B60C
	mov r3, #2
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x67
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	bl sub_0200B60C
	mov r1, #2
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x68
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x50]
	bl sub_0200C388
	mov r0, #0x18
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0xa0
	bl sub_0201D78C
	mov r0, #0x30
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0x54]
	add r3, r1, #0
	bl sub_0201D78C
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #4]
	ldr r2, [r2, #0x58]
	mov r3, #4
	bl sub_0200B60C
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x58]
	cmp r0, #1
	bne _0223EB34
	mov r2, #3
	b _0223EB36
_0223EB34:
	mov r2, #5
_0223EB36:
	ldr r3, [r4, #0x1c]
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, [r2, #0x4c]
	bl sub_0200C388
	mov r0, #0x30
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0xa0
	bl sub_0201D78C
	mov r0, #0x44
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #0x5c]
	add r3, r1, #0
	bl sub_0201D78C
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #4]
	ldr r2, [r2, #0x5c]
	mov r3, #4
	bl sub_0200B60C
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x5c]
	cmp r0, #1
	bne _0223EB9C
	mov r2, #3
	b _0223EB9E
_0223EB9C:
	mov r2, #5
_0223EB9E:
	ldr r3, [r4, #0x1c]
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, [r2, #0x4c]
	bl sub_0200C388
	mov r0, #0x44
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EBD4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0xa0
	bl sub_0201D78C
	ldr r0, [r4, #0xc]
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	nop
_0223EBD4: .word 0x0001020F
	thumb_func_end ov83_0223EA6C

	thumb_func_start ov83_0223EBD8
ov83_0223EBD8: ; 0x0223EBD8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x64
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	mov r1, #3
	bl sub_0200BF74
	mov r3, #2
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r2, #0x65
	ldrb r2, [r2]
	ldr r0, [r0, #4]
	bl sub_0200B60C
	mov r1, #2
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	ldr r0, [r0, #4]
	add r3, r1, #0
	bl sub_0200B60C
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x68]
	bl sub_0200C388
	mov r0, #0x18
	str r0, [sp]
	mov r1, #0
	ldr r0, _0223EC48 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x10]
	ldr r2, [r2, #8]
	mov r3, #0x10
	bl sub_0201D78C
	ldr r0, [r4, #0x10]
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0223EC48: .word 0x0001020F
	thumb_func_end ov83_0223EBD8

	thumb_func_start ov83_0223EC4C
ov83_0223EC4C: ; 0x0223EC4C
	push {r3, lr}
	cmp r1, #0
	beq _0223EC5C
	cmp r1, #1
	beq _0223EC62
	cmp r1, #2
	beq _0223EC68
	pop {r3, pc}
_0223EC5C:
	bl ov83_0223E9E4
	pop {r3, pc}
_0223EC62:
	bl ov83_0223EA6C
	pop {r3, pc}
_0223EC68:
	bl ov83_0223EBD8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov83_0223EC4C

	thumb_func_start ov83_0223EC70
ov83_0223EC70: ; 0x0223EC70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0xc]
	bl sub_0201ACF4
	ldr r0, [r4, #0x10]
	bl sub_0201ACF4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223EC70

	thumb_func_start ov83_0223EC8C
ov83_0223EC8C: ; 0x0223EC8C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r1, #0
	bl ov83_0223E9D0
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl sub_0201ADA4
	cmp r6, #6
	bhi _0223ED0C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223ECB0: ; jump table
	.short _0223ECBE - _0223ECB0 - 2 ; case 0
	.short _0223ECEA - _0223ECB0 - 2 ; case 1
	.short _0223ECF0 - _0223ECB0 - 2 ; case 2
	.short _0223ECF6 - _0223ECB0 - 2 ; case 3
	.short _0223ECFC - _0223ECB0 - 2 ; case 4
	.short _0223ED02 - _0223ECB0 - 2 ; case 5
	.short _0223ED08 - _0223ECB0 - 2 ; case 6
_0223ECBE:
	mov r3, #0x51
	ldr r2, [r4, #0x24]
	lsl r3, r3, #2
	ldrb r5, [r2, r3]
	ldr r0, [r4, #0x1c]
	sub r3, #0x10
	lsl r5, r5, #2
	add r2, r2, r5
	ldr r0, [r0, #4]
	ldr r2, [r2, r3]
	mov r1, #0
	bl sub_0200B498
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0x18]
	bl sub_0200C388
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #8]
	b _0223ED0C
_0223ECEA:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x1c]
	b _0223ED0C
_0223ECF0:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x28]
	b _0223ED0C
_0223ECF6:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x24]
	b _0223ED0C
_0223ECFC:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x20]
	b _0223ED0C
_0223ED02:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0x2c]
	b _0223ED0C
_0223ED08:
	ldr r0, [r4, #0x1c]
	ldr r5, [r0, #0xc]
_0223ED0C:
	mov r3, #0
	str r3, [sp]
	ldr r0, _0223ED38 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x14]
	mov r1, #1
	add r2, r5, #0
	bl sub_0201D78C
	mov r1, #0
	ldr r0, [r4, #0x14]
	mov r2, #1
	add r3, r1, #0
	bl sub_0200E060
	ldr r0, [r4, #0x14]
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223ED38: .word 0x0001020F
	thumb_func_end ov83_0223EC8C

	thumb_func_start ov83_0223ED3C
ov83_0223ED3C: ; 0x0223ED3C
	ldr r3, _0223ED44 ; =sub_020D5124
	mov r1, #0
	ldr r2, _0223ED48 ; =0x00000414
	bx r3
	; .align 2, 0
_0223ED44: .word sub_020D5124
_0223ED48: .word 0x00000414
	thumb_func_end ov83_0223ED3C

	thumb_func_start ov83_0223ED4C
ov83_0223ED4C: ; 0x0223ED4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223ED5A
	bl sub_02022974
_0223ED5A:
	ldr r2, _0223ED68 ; =0x00000414
	add r0, r4, #0
	mov r1, #0
	bl sub_020D5124
	pop {r4, pc}
	nop
_0223ED68: .word 0x00000414
	thumb_func_end ov83_0223ED4C

	thumb_func_start ov83_0223ED6C
ov83_0223ED6C: ; 0x0223ED6C
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	mov r1, #1
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov83_0223ED6C

	thumb_func_start ov83_0223ED78
ov83_0223ED78: ; 0x0223ED78
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x10
_0223ED84:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223ED94
	add r0, r5, #0
	bl ov83_0223F054
_0223ED94:
	add r6, r6, #1
	add r4, #0x80
	add r5, #0x80
	cmp r6, #8
	blt _0223ED84
	mov r0, #0
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223ED78

	thumb_func_start ov83_0223EDA4
ov83_0223EDA4: ; 0x0223EDA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r7, r1, #0
	mov r6, #0
	add r4, #0x10
_0223EDB0:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223EDCE
	add r0, r4, #0
	bl ov83_0223F074
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0223EDCE
	add r0, r4, #0
	add r1, r7, #0
	bl ov83_0223F0F4
_0223EDCE:
	add r6, r6, #1
	add r5, #0x80
	add r4, #0x80
	cmp r6, #8
	blt _0223EDB0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223EDA4

	thumb_func_start ov83_0223EDDC
ov83_0223EDDC: ; 0x0223EDDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	add r5, r0, #0
	lsl r0, r1, #1
	add r0, r1, r0
	add r2, r2, r0
	mov r0, #0x1c
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0223EFC0 ; =0x022404B0
	add r3, sp, #0x9c
	add r4, r0, r1
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	cmp r2, #8
	str r0, [r3, #0]
	blt _0223EE0A
	b _0223EFBC
_0223EE0A:
	add r0, r5, #0
	bl ov83_0223EFF4
	str r0, [sp, #0x60]
	cmp r0, #0
	bne _0223EE2C
	add r0, r5, #0
	bl ov83_0223F018
	str r0, [sp, #0x60]
	cmp r0, #0
	bne _0223EE26
	bl sub_02022974
_0223EE26:
	ldr r0, [sp, #0x60]
	bl ov83_0223F054
_0223EE2C:
	bl sub_0201D35C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	bl sub_0201D35C
	add r1, sp, #0x9c
	ldrb r1, [r1, #0x11]
	bl sub_020E2178
	add r0, sp, #0x9c
	ldrb r0, [r0, #0x10]
	add r4, r0, r1
	bl sub_0201D35C
	add r1, sp, #0x9c
	ldrb r1, [r1, #0x13]
	bl sub_020E2178
	add r0, sp, #0x9c
	ldrb r0, [r0, #0x12]
	add r0, r0, r1
	add r0, r0, r4
	asr r1, r6, #4
	lsl r2, r1, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x6c]
	asr r0, r0, #0x1f
	lsl r3, r2, #1
	ldr r1, _0223EFC4 ; =0x020F983C
	str r0, [sp, #0x70]
	ldr r0, [sp, #0xa8]
	ldrsh r6, [r1, r3]
	lsl r3, r4, #0xc
	add r2, r2, #1
	str r3, [sp, #0x64]
	asr r3, r3, #0x1f
	lsl r2, r2, #1
	str r0, [sp, #0x74]
	asr r0, r0, #0x1f
	str r3, [sp, #0x68]
	ldrsh r4, [r1, r2]
	str r0, [sp, #0x78]
	bl sub_0201D35C
	ldr r1, [sp, #0xa0]
	bl sub_020E2178
	ldr r0, [sp, #0x9c]
	ldr r2, [sp, #0x64]
	add r0, r0, r1
	str r0, [sp, #0x5c]
	asr r0, r6, #0x1f
	str r0, [sp, #0x7c]
	ldr r1, [sp, #0x7c]
	ldr r3, [sp, #0x68]
	add r0, r6, #0
	asr r7, r4, #0x1f
	bl sub_020E1F1C
	str r1, [sp, #0x58]
	str r0, [sp, #0x80]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	add r0, r6, #0
	bl sub_020E1F1C
	str r1, [sp, #0x50]
	str r0, [sp, #0x84]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x74]
	ldr r3, [sp, #0x78]
	add r0, r6, #0
	bl sub_020E1F1C
	str r0, [sp, #0x88]
	str r1, [sp, #0x98]
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x68]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020E1F1C
	str r0, [sp, #0x8c]
	str r1, [sp, #0x48]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020E1F1C
	str r0, [sp, #0x90]
	str r1, [sp, #0x40]
	ldr r2, [sp, #0x74]
	ldr r3, [sp, #0x78]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020E1F1C
	add r2, r0, #0
	mov r4, #2
	ldr r0, [sp, #0x88]
	ldr r3, [sp, #0x98]
	mov r6, #0
	lsl r4, r4, #0xa
	add r0, r0, r4
	adc r3, r6
	str r3, [sp, #0x98]
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	str r0, [sp]
	ldr r0, [sp, #0x8c]
	ldr r3, [sp, #0x48]
	add r0, r0, r4
	adc r3, r6
	str r3, [sp, #0x48]
	mov r7, #6
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	lsl r7, r7, #0x10
	add r0, r0, r7
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r3, [sp, #0x40]
	add r0, r0, r4
	adc r3, r6
	str r3, [sp, #0x40]
	lsl r3, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	add r0, r0, r7
	add r2, r2, r4
	adc r1, r6
	str r0, [sp, #8]
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0xc]
	ldr r0, _0223EFC8 ; =0x0000019A
	add r2, sp, #0x9c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	mov r1, #0x38
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0x18]
	ldrb r0, [r2, #0x18]
	str r0, [sp, #0x1c]
	ldrb r0, [r2, #0x14]
	str r0, [sp, #0x20]
	ldrb r3, [r2, #0x15]
	ldr r0, [r5, #8]
	mul r1, r3
	add r0, r0, r1
	str r0, [sp, #0x24]
	ldrb r0, [r2, #0x16]
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x30]
	ldrb r0, [r2, #0x19]
	str r0, [sp, #0x34]
	ldrb r0, [r2, #0x1a]
	str r0, [sp, #0x38]
	ldrb r1, [r2, #0x17]
	ldr r2, [sp, #0x80]
	ldr r0, [sp, #0x60]
	add r3, r2, r4
	ldr r2, [sp, #0x58]
	adc r2, r6
	str r2, [sp, #0x58]
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	lsl r2, r4, #8
	add r2, r3, r2
	ldr r3, [sp, #0x84]
	add r7, r3, r4
	ldr r3, [sp, #0x50]
	adc r3, r6
	str r3, [sp, #0x50]
	lsl r3, r3, #0x14
	lsr r6, r7, #0xc
	orr r6, r3
	lsl r3, r4, #8
	add r3, r6, r3
	bl ov83_0223F1C0
	mov r1, #0x41
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	ldr r0, [sp, #0x60]
	str r2, [r0, #0x7c]
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
_0223EFBC:
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223EFC0: .word 0x022404B0
_0223EFC4: .word 0x020F983C
_0223EFC8: .word 0x0000019A
	thumb_func_end ov83_0223EDDC

	thumb_func_start ov83_0223EFCC
ov83_0223EFCC: ; 0x0223EFCC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	mov r6, #0
	add r4, #0x10
_0223EFD6:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223EFE6
	add r0, r4, #0
	bl ov83_0223F268
_0223EFE6:
	add r6, r6, #1
	add r5, #0x80
	add r4, #0x80
	cmp r6, #8
	blt _0223EFD6
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223EFCC

	thumb_func_start ov83_0223EFF4
ov83_0223EFF4: ; 0x0223EFF4
	mov r2, #0
	add r3, r0, #0
_0223EFF8:
	add r1, r3, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0223F00A
	add r0, #0x10
	lsl r1, r2, #7
	add r0, r0, r1
	bx lr
_0223F00A:
	add r2, r2, #1
	add r3, #0x80
	cmp r2, #8
	blt _0223EFF8
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223EFF4

	thumb_func_start ov83_0223F018
ov83_0223F018: ; 0x0223F018
	push {r4, r5}
	mov r2, #0
	add r3, r0, #0
	add r1, r2, #0
	add r3, #0x10
_0223F022:
	add r4, r0, #0
	add r4, #0x88
	ldr r4, [r4, #0]
	cmp r4, #0
	beq _0223F042
	cmp r2, #0
	bne _0223F034
	add r2, r3, #0
	b _0223F042
_0223F034:
	add r4, r0, #0
	add r4, #0x8c
	ldr r5, [r2, #0x7c]
	ldr r4, [r4, #0]
	cmp r5, r4
	ble _0223F042
	add r2, r3, #0
_0223F042:
	add r1, r1, #1
	add r0, #0x80
	add r3, #0x80
	cmp r1, #8
	blt _0223F022
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223F018

	thumb_func_start ov83_0223F054
ov83_0223F054: ; 0x0223F054
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	bne _0223F062
	bl sub_02022974
_0223F062:
	ldr r0, [r4, #0x78]
	bl sub_02021BD4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov83_0223F054

	thumb_func_start ov83_0223F074
ov83_0223F074: ; 0x0223F074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223F0C6
	add r0, r4, #0
	add r0, #0x30
	bl ov83_0223DA94
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x48
	bl ov83_0223DA94
	add r0, r4, #0
	add r0, #0x60
	bl ov83_0223DA94
	ldr r0, [r4, #0x30]
	add r1, r4, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x48]
	add r1, #0x14
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x78]
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223F0C6
	ldr r0, [r4, #0x60]
	add r1, r4, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x60]
	add r1, #0x20
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x60]
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x78]
	bl sub_02021C70
_0223F0C6:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0223F0DA
	ldr r0, [r4, #0x78]
	bl sub_02021FD0
	cmp r0, #0
	bne _0223F0DA
	mov r0, #1
	str r0, [r4, #8]
_0223F0DA:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0223F0F2
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0223F0F2
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0223F0F2
	add r0, r4, #0
	bl ov83_0223F054
_0223F0F2:
	pop {r4, pc}
	thumb_func_end ov83_0223F074

	thumb_func_start ov83_0223F0F4
ov83_0223F0F4: ; 0x0223F0F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _0223F1B8
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0223F1B8
	add r0, r1, #0
	add r0, #0xa4
	ldrb r0, [r0]
	ldr r2, [r5, #0x2c]
	cmp r0, #0
	bne _0223F11A
	add r1, #0xa2
	ldrh r0, [r1]
	add r0, r2, r0
	b _0223F120
_0223F11A:
	add r1, #0xa2
	ldrh r0, [r1]
	sub r0, r2, r0
_0223F120:
	str r0, [r5, #0x2c]
	mov r0, #2
	ldr r1, [r5, #0x14]
	lsl r0, r0, #0x12
	sub r4, r1, r0
	mov r0, #6
	mov r2, #0
	ldr r1, [r5, #0x18]
	lsl r0, r0, #0x10
	sub r6, r1, r0
	asr r0, r4, #0xc
	asr r1, r6, #0xc
	add r3, r2, #0
	bl sub_0201E3BC
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020BDA20
	lsl r6, r7, #0xc
	ldr r1, [r5, #0x2c]
	asr r7, r6, #0x1f
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r4, r0, #1
	add r0, r4, #1
	lsl r1, r0, #1
	ldr r0, _0223F1BC ; =0x020F983C
	add r2, r6, #0
	ldrsh r0, [r0, r1]
	add r3, r7, #0
	asr r1, r0, #0x1f
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
	str r0, [sp]
	ldr r0, _0223F1BC ; =0x020F983C
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
	ldr r3, [sp]
	lsl r1, r2, #8
	add r1, r3, r1
	str r1, [sp]
	mov r1, #6
	lsl r1, r1, #0x10
	str r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #0x78]
	add r1, sp, #0
	bl sub_02021C50
_0223F1B8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F1BC: .word 0x020F983C
	thumb_func_end ov83_0223F0F4

	thumb_func_start ov83_0223F1C0
ov83_0223F1C0: ; 0x0223F1C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [sp, #0x40]
	str r1, [r5, #0]
	add r4, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r3, #0
	ldr r3, [sp, #0x20]
	add r0, #0x30
	add r1, r4, #0
	ldr r6, [sp, #0x30]
	bl ov83_0223DA34
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x24]
	str r0, [sp]
	add r0, r5, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, #0x48
	bl ov83_0223DA34
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x34]
	str r0, [sp]
	add r0, r5, #0
	ldr r3, [sp, #0x38]
	add r0, #0x60
	add r1, r6, #0
	bl ov83_0223DA34
	ldr r3, [sp, #0x24]
	str r4, [r5, #0x14]
	str r3, [r5, #0x18]
	str r6, [r5, #0x20]
	str r6, [r5, #0x24]
	ldr r0, [sp, #0x3c]
	str r6, [r5, #0x28]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x44]
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x58
	ldrb r0, [r0]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x50]
	str r0, [sp, #8]
	ldr r0, [sp, #0x4c]
	bl ov83_0223D9A8
	str r0, [r5, #0x78]
	cmp r0, #0
	bne _0223F238
	bl sub_02022974
_0223F238:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0223F24A
	add r1, r5, #0
	ldr r0, [r5, #0x78]
	add r1, #0x20
	mov r2, #2
	bl sub_02021C80
_0223F24A:
	ldr r0, [r5, #0x78]
	ldr r1, [sp, #0x48]
	bl sub_02021D6C
	ldr r0, [r5, #0x78]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r5, #0x78]
	mov r1, #2
	bl sub_02021E80
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F1C0

	thumb_func_start ov83_0223F268
ov83_0223F268: ; 0x0223F268
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _0223F296
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r4, #0x60]
	add r0, #0x60
	mov r2, #0xcd
	mov r3, #0
	bl ov83_0223DA34
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x78]
	mov r1, #2
	bl sub_02021CF8
_0223F296:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F268

	thumb_func_start ov83_0223F29C
ov83_0223F29C: ; 0x0223F29C
	ldr r3, _0223F2A4 ; =sub_020D5124
	mov r1, #0
	mov r2, #0x80
	bx r3
	; .align 2, 0
_0223F2A4: .word sub_020D5124
	thumb_func_end ov83_0223F29C

	thumb_func_start ov83_0223F2A8
ov83_0223F2A8: ; 0x0223F2A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0223F2B6
	bl sub_02022974
_0223F2B6:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F2A8

	thumb_func_start ov83_0223F2C4
ov83_0223F2C4: ; 0x0223F2C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [r6, #0x7c]
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x18]
	cmp r0, #0
	beq _0223F2DA
	bl sub_02022974
_0223F2DA:
	str r7, [r6, #0]
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x1f
	str r0, [sp, #8]
	mov r0, #0x1e
	str r0, [sp, #0xc]
	ldr r0, _0223F344 ; =0x00001B58
	add r1, r6, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r3, #0x21
	bl ov83_0223D7A8
	mov r4, #0
	add r5, r6, #0
_0223F304:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r2, #2
	mov r3, #6
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r6, #4
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov83_0223D9A8
	str r0, [r5, #0x3c]
	cmp r4, #2
	blt _0223F32C
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_02021D6C
_0223F32C:
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_02021CAC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0223F304
	mov r0, #1
	str r0, [r6, #0x7c]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F344: .word 0x00001B58
	thumb_func_end ov83_0223F2C4

	thumb_func_start ov83_0223F348
ov83_0223F348: ; 0x0223F348
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x7c]
	cmp r0, #1
	beq _0223F356
	bl sub_02022974
_0223F356:
	mov r4, #0
	add r5, r6, #0
_0223F35A:
	ldr r0, [r5, #0x3c]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0223F35A
	ldr r0, [r6, #0]
	add r1, r6, #4
	bl ov83_0223D95C
	mov r0, #0
	str r0, [r6, #0x7c]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F348

	thumb_func_start ov83_0223F378
ov83_0223F378: ; 0x0223F378
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x3c
_0223F380:
	cmp r4, #2
	beq _0223F388
	cmp r4, #0
	bne _0223F390
_0223F388:
	add r0, r5, #0
	bl ov83_0223F420
	b _0223F396
_0223F390:
	add r0, r5, #0
	bl ov83_0223F458
_0223F396:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0223F380
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223F378

	thumb_func_start ov83_0223F3A0
ov83_0223F3A0: ; 0x0223F3A0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blt _0223F3AE
	bl sub_02022974
_0223F3AE:
	cmp r5, #2
	beq _0223F3B6
	cmp r5, #0
	bne _0223F3C2
_0223F3B6:
	add r4, #0x3c
	lsl r0, r5, #4
	add r0, r4, r0
	bl ov83_0223F410
	pop {r3, r4, r5, pc}
_0223F3C2:
	add r4, #0x3c
	lsl r0, r5, #4
	add r0, r4, r0
	bl ov83_0223F44C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F3A0

	thumb_func_start ov83_0223F3D0
ov83_0223F3D0: ; 0x0223F3D0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blt _0223F3DE
	bl sub_02022974
_0223F3DE:
	lsl r0, r5, #4
	mov r1, #0
	add r0, r4, r0
	str r1, [r0, #0x48]
	ldr r0, [r0, #0x3c]
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F3D0

	thumb_func_start ov83_0223F3F0
ov83_0223F3F0: ; 0x0223F3F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blt _0223F3FE
	bl sub_02022974
_0223F3FE:
	lsl r0, r5, #4
	add r0, r4, r0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _0223F40C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223F40C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223F3F0

	thumb_func_start ov83_0223F410
ov83_0223F410: ; 0x0223F410
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #3
	str r1, [r0, #8]
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223F410

	thumb_func_start ov83_0223F420
ov83_0223F420: ; 0x0223F420
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0223F448
	bl ov83_0223F458
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223F448
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _0223F448
	mov r1, #0
	str r1, [r4, #0xc]
	ldr r0, [r4, #0]
	bl sub_02021CAC
_0223F448:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F420

	thumb_func_start ov83_0223F44C
ov83_0223F44C: ; 0x0223F44C
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov83_0223F44C

	thumb_func_start ov83_0223F458
ov83_0223F458: ; 0x0223F458
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223F490
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223F472
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02021CAC
	b _0223F48A
_0223F472:
	cmp r0, #8
	bne _0223F480
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02021CAC
	b _0223F48A
_0223F480:
	cmp r0, #0x10
	bne _0223F48A
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
_0223F48A:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_0223F490:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F458

	thumb_func_start ov83_0223F494
ov83_0223F494: ; 0x0223F494
	push {r3, r4, r5, lr}
	ldr r2, _0223F4A8 ; =0x0000090C
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl sub_020D5124
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	nop
_0223F4A8: .word 0x0000090C
	thumb_func_end ov83_0223F494

	thumb_func_start ov83_0223F4AC
ov83_0223F4AC: ; 0x0223F4AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223F4BA
	bl sub_02022974
_0223F4BA:
	ldr r2, _0223F4C8 ; =0x0000090C
	add r0, r4, #0
	mov r1, #0
	bl sub_020D5124
	pop {r4, pc}
	nop
_0223F4C8: .word 0x0000090C
	thumb_func_end ov83_0223F4AC

	thumb_func_start ov83_0223F4CC
ov83_0223F4CC: ; 0x0223F4CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r7, r3, #0
	mov r4, #0
	add r5, r0, #0
	add r6, #0x38
_0223F4DE:
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	add r3, r2, #0
	str r7, [sp, #8]
	bl ov83_0223D9A8
	mov r1, #0
	str r0, [r5, #0x50]
	bl sub_02021CAC
	add r4, r4, #1
	add r5, #0x48
	cmp r4, #0x20
	blt _0223F4DE
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F4CC

	thumb_func_start ov83_0223F510
ov83_0223F510: ; 0x0223F510
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0223F518:
	ldr r0, [r5, #0x50]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, #0x48
	cmp r4, #0x20
	blt _0223F518
	mov r0, #0
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223F510

	thumb_func_start ov83_0223F52C
ov83_0223F52C: ; 0x0223F52C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0xc
_0223F534:
	add r0, r5, #0
	bl ov83_0223F670
	add r4, r4, #1
	add r5, #0x48
	cmp r4, #0x20
	blt _0223F534
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223F52C

	thumb_func_start ov83_0223F544
ov83_0223F544: ; 0x0223F544
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, r1, #0
	str r1, [sp, #0x10]
	add r1, r2, #0
	sub r0, #0x80
	sub r1, #0x60
	str r2, [sp, #0x14]
	bl sub_020BDA20
	asr r0, r0, #4
	lsl r1, r0, #1
	add r0, r1, #1
	ldr r7, _0223F648 ; =0x020F983C
	lsl r0, r0, #1
	ldrsh r3, [r7, r0]
	asr r6, r3, #0x1f
	lsr r2, r3, #0x10
	lsl r0, r6, #0x10
	orr r0, r2
	mov r2, #2
	lsl r5, r3, #0x10
	lsl r2, r2, #0xa
	add r5, r5, r2
	ldr r2, _0223F64C ; =0x00000000
	adc r0, r2
	lsr r2, r5, #0xc
	lsl r0, r0, #0x14
	str r2, [sp, #0x18]
	orr r2, r0
	lsl r0, r1, #1
	str r2, [sp, #0x18]
	ldrsh r2, [r7, r0]
	asr r0, r2, #0x1f
	mov ip, r0
	lsr r1, r2, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	mov r1, #2
	lsl r5, r2, #0x10
	lsl r1, r1, #0xa
	add r1, r5, r1
	ldr r5, _0223F64C ; =0x00000000
	adc r0, r5
	lsr r7, r1, #0xc
	lsl r0, r0, #0x14
	orr r7, r0
	lsr r0, r3, #0x14
	lsl r1, r6, #0xc
	orr r1, r0
	mov r0, #2
	lsl r3, r3, #0xc
	lsl r0, r0, #0xa
	add r0, r3, r0
	ldr r3, _0223F64C ; =0x00000000
	adc r1, r3
	lsr r6, r0, #0xc
	lsl r1, r1, #0x14
	orr r6, r1
	mov r1, ip
	lsr r0, r2, #0x14
	lsl r1, r1, #0xc
	orr r1, r0
	mov r0, #2
	lsl r2, r2, #0xc
	lsl r0, r0, #0xa
	add r2, r2, r0
	ldr r0, _0223F64C ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r5, r2, #0xc
	orr r5, r0
	add r0, r4, #0
	bl ov83_0223F650
	cmp r0, #0
	beq _0223F604
	mov r2, #2
	ldr r1, [sp, #0x18]
	lsl r2, r2, #0x12
	add r1, r1, r2
	str r1, [sp]
	mov r1, #6
	lsl r1, r1, #0x10
	add r1, r7, r1
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldr r1, [r4, #8]
	lsl r2, r2, #0xc
	lsl r3, r3, #0xc
	bl ov83_0223F6CC
_0223F604:
	add r0, r4, #0
	bl ov83_0223F650
	cmp r0, #0
	beq _0223F636
	mov r2, #2
	ldr r1, [sp, #0x18]
	lsl r2, r2, #0x12
	sub r1, r2, r1
	str r1, [sp]
	mov r1, #6
	lsl r1, r1, #0x10
	sub r1, r1, r7
	str r1, [sp, #4]
	neg r1, r6
	str r1, [sp, #8]
	neg r1, r5
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r4, #8]
	lsl r2, r2, #0xc
	lsl r3, r3, #0xc
	bl ov83_0223F6CC
_0223F636:
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	add r0, r0, #1
	bl sub_020E1F6C
	str r1, [r4, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223F648: .word 0x020F983C
_0223F64C: .word 0x00000000
	thumb_func_end ov83_0223F544

	thumb_func_start ov83_0223F650
ov83_0223F650: ; 0x0223F650
	mov r2, #0
	add r3, r0, #0
_0223F654:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	bne _0223F664
	mov r1, #0x48
	add r0, #0xc
	mul r1, r2
	add r0, r0, r1
	bx lr
_0223F664:
	add r2, r2, #1
	add r3, #0x48
	cmp r2, #0x20
	blt _0223F654
	mov r0, #0
	bx lr
	thumb_func_end ov83_0223F650

	thumb_func_start ov83_0223F670
ov83_0223F670: ; 0x0223F670
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223F6B0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0223F6A4
	add r0, r4, #0
	add r0, #0x14
	bl ov83_0223DA94
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x2c
	bl ov83_0223DA94
	ldr r0, [r4, #0x14]
	add r1, r4, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x2c]
	add r1, #8
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x44]
	bl sub_02021C50
_0223F6A4:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0223F6B0
	add r0, r4, #0
	bl ov83_0223F6B4
_0223F6B0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F670

	thumb_func_start ov83_0223F6B4
ov83_0223F6B4: ; 0x0223F6B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223F6CA
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0
	str r0, [r4, #0]
_0223F6CA:
	pop {r4, pc}
	thumb_func_end ov83_0223F6B4

	thumb_func_start ov83_0223F6CC
ov83_0223F6CC: ; 0x0223F6CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x10
	add r4, r2, #0
	add r6, r3, #0
	str r0, [sp]
	add r0, r5, #0
	add r7, r1, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x20]
	add r0, #0x14
	add r1, r4, #0
	bl ov83_0223DA34
	mov r0, #0x10
	str r0, [sp]
	add r0, r5, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x24]
	add r0, #0x2c
	add r1, r6, #0
	bl ov83_0223DA34
	str r4, [r5, #8]
	str r6, [r5, #0xc]
	ldr r0, [r5, #0x44]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r5, #0x44]
	add r1, r7, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x44]
	bl sub_02021DE0
	ldr r0, [r5, #0x44]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r5, #0x44]
	mov r1, #2
	bl sub_02021E80
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F6CC

	thumb_func_start ov83_0223F730
ov83_0223F730: ; 0x0223F730
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	mov r1, #1
	add r6, r2, #0
	add r7, r3, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02098FFC
	str r0, [r5, #0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	lsl r2, r4, #0x10
	lsl r3, r6, #0x10
	ldr r0, [r5, #0]
	add r1, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0209916C
	str r0, [r5, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F730

	thumb_func_start ov83_0223F770
ov83_0223F770: ; 0x0223F770
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl sub_02099370
	ldr r0, [r4, #0]
	bl sub_0209903C
	pop {r4, pc}
	thumb_func_end ov83_0223F770

	thumb_func_start ov83_0223F784
ov83_0223F784: ; 0x0223F784
	ldr r3, _0223F78C ; =sub_02099160
	ldr r0, [r0, #0]
	bx r3
	nop
_0223F78C: .word sub_02099160
	thumb_func_end ov83_0223F784

	thumb_func_start ov83_0223F790
ov83_0223F790: ; 0x0223F790
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_02015920
	str r0, [r5, #0]
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F790

	thumb_func_start ov83_0223F7A4
ov83_0223F7A4: ; 0x0223F7A4
	ldr r3, _0223F7AC ; =sub_02015938
	ldr r0, [r0, #0]
	bx r3
	nop
_0223F7AC: .word sub_02015938
	thumb_func_end ov83_0223F7A4

	thumb_func_start ov83_0223F7B0
ov83_0223F7B0: ; 0x0223F7B0
	push {lr}
	sub sp, #0x14
	ldr r1, [r0, #4]
	mov r2, #0x18
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #0xaf
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0
	strb r2, [r1, #0x10]
	mov r2, #8
	strb r2, [r1, #0x11]
	ldr r0, [r0, #0]
	add r1, sp, #0
	bl sub_02015958
	add sp, #0x14
	pop {pc}
	; .align 2, 0
	thumb_func_end ov83_0223F7B0

	thumb_func_start ov83_0223F7DC
ov83_0223F7DC: ; 0x0223F7DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_020159FC
	add r4, r0, #0
	beq _0223F7F0
	ldr r0, [r5, #0]
	bl sub_02015A54
_0223F7F0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223F7DC

	thumb_func_start ov83_0223F7F4
ov83_0223F7F4: ; 0x0223F7F4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, r3, #0
	ldr r3, [sp, #0x1c]
	add r5, r0, #0
	ldr r6, [sp, #0x18]
	add r0, r2, #0
	sub r4, r4, r3
	sub r1, r1, r3
	mov r3, #0
	str r3, [sp]
	sub r2, r5, r6
	sub r0, r0, r6
	add r3, r4, #0
	bl sub_0201D4CC
	mov r1, #0xa0
	mul r1, r0
	add r0, r1, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov83_0223F7F4

	thumb_func_start ov83_0223F820
ov83_0223F820: ; 0x0223F820
	add r3, r0, #0
	mov r2, #0x18
	mov r1, #0
_0223F826:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0223F826
	mov r2, #0x80
	str r2, [r0, #0]
	mov r1, #0x60
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov83_0223F820

	thumb_func_start ov83_0223F83C
ov83_0223F83C: ; 0x0223F83C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0223F888 ; =0x021BF6BC
	ldrh r1, [r0, #0x22]
	cmp r1, #0
	beq _0223F860
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0223F860
	ldr r0, [r4, #0]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r4, #0xc]
_0223F860:
	mov r0, #0x80
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl ov83_0223F7F4
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	str r0, [r4, #0xc]
	ldr r0, _0223F888 ; =0x021BF6BC
	ldrh r0, [r0, #0x22]
	str r0, [r4, #0x14]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0223F888: .word 0x021BF6BC
	thumb_func_end ov83_0223F83C

	thumb_func_start ov83_0223F88C
ov83_0223F88C: ; 0x0223F88C
	ldr r2, [r1, #0]
	strb r2, [r0]
	ldr r2, [r1, #4]
	strb r2, [r0, #1]
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bge _0223F8A4
	neg r1, r1
	strh r1, [r0, #2]
	mov r1, #1
	strb r1, [r0, #4]
	bx lr
_0223F8A4:
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #4]
	bx lr
	thumb_func_end ov83_0223F88C

	thumb_func_start ov83_0223F8AC
ov83_0223F8AC: ; 0x0223F8AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x80
	mov r3, #0x60
	bl sub_0201E3BC
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bge _0223F8C6
	neg r0, r0
_0223F8C6:
	lsl r0, r0, #0x10
	ldr r1, [r5, #0]
	lsr r0, r0, #0x10
	bl ov83_0223FB68
	asr r2, r0, #0x1f
	lsl r3, r2, #0x12
	lsr r1, r0, #0xe
	orr r3, r1
	mov r1, #2
	lsl r2, r0, #0x12
	mov r0, #0
	lsl r1, r1, #0xa
	add r2, r2, r1
	adc r3, r0
	lsl r1, r3, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	asr r1, r2, #0xc
	cmp r4, #0x10
	bhs _0223F8F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223F8F4:
	add r1, #8
	cmp r4, r1
	bls _0223F8FC
	mov r0, #2
_0223F8FC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223F8AC

	thumb_func_start ov83_0223F900
ov83_0223F900: ; 0x0223F900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	str r0, [r5, #0x10]
	mov r0, #0
	add r4, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r2, #0
	beq _0223F98C
_0223F91A:
	ldr r0, [sp, #0xc]
	add r1, r4, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	mov r0, #0x1c
	add r6, r1, #0
	mul r6, r0
	add r1, r4, r6
	add r2, r4, r6
	add r1, #0x90
	add r2, #0x91
	ldrb r1, [r1]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov83_0223F8AC
	cmp r0, #0
	beq _0223F94A
	cmp r0, #1
	beq _0223F952
	cmp r0, #2
	beq _0223F962
	b _0223F968
_0223F94A:
	add r0, r4, r6
	add r0, #0x92
	ldrh r7, [r0]
	b _0223F968
_0223F952:
	add r0, r4, r6
	add r0, #0x92
	ldrh r0, [r0]
	lsl r0, r0, #0xf
	lsr r7, r0, #0x10
	mov r0, #0
	str r0, [r5, #0x10]
	b _0223F968
_0223F962:
	mov r7, #0
	add r0, r7, #0
	str r0, [r5, #0x10]
_0223F968:
	add r0, r4, r6
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223F97A
	ldr r0, [sp, #8]
	add r0, r0, r7
	str r0, [sp, #8]
	b _0223F980
_0223F97A:
	ldr r0, [sp, #8]
	sub r0, r0, r7
	str r0, [sp, #8]
_0223F980:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	blo _0223F91A
_0223F98C:
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl sub_020E1F6C
	add r4, r0, #0
	ldr r1, [r5, #0]
	ldr r0, _0223FA74 ; =0x02240590
	ldrb r0, [r0, r1]
	mov r1, #0x33
	lsl r1, r1, #0xe
	lsl r0, r0, #0xc
	bl sub_020BCFD0
	add r2, r0, #0
	lsl r0, r4, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r4, #2
	mov r2, #0
	lsl r4, r4, #0xa
	add r4, r0, r4
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	ldr r3, [r5, #0xc]
	asr r0, r1, #0xc
	add r0, r3, r0
	str r0, [r5, #0xc]
	cmp r0, #0
	ble _0223F9E0
	ldr r1, [r5, #0]
	lsl r3, r1, #1
	ldr r1, _0223FA78 ; =0x0224059C
	ldrh r1, [r1, r3]
	sub r0, r0, r1
	str r0, [r5, #0xc]
	bpl _0223F9F4
	str r2, [r5, #0xc]
	b _0223F9F4
_0223F9E0:
	bge _0223F9F4
	ldr r1, [r5, #0]
	lsl r3, r1, #1
	ldr r1, _0223FA78 ; =0x0224059C
	ldrh r1, [r1, r3]
	add r0, r0, r1
	str r0, [r5, #0xc]
	cmp r0, #0
	ble _0223F9F4
	str r2, [r5, #0xc]
_0223F9F4:
	ldr r1, [r5, #0xc]
	ldr r0, _0223FA7C ; =0x00000E38
	cmp r1, r0
	ble _0223FA00
	str r0, [r5, #0xc]
	b _0223FA08
_0223FA00:
	ldr r0, _0223FA80 ; =0xFFFFF1C8
	cmp r1, r0
	bge _0223FA08
	str r0, [r5, #0xc]
_0223FA08:
	ldr r0, [r5, #0xc]
	mov r1, #0xa0
	ldr r4, [r5, #8]
	bl sub_020E1F6C
	add r1, r0, #0
	mov r0, #0x44
	bl sub_0201D580
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0223FA2C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bge _0223FA38
_0223FA2C:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0223FA68
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bge _0223FA68
_0223FA38:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0223FA54
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r1, r0
	ble _0223FA68
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	b _0223FA68
_0223FA54:
	lsl r0, r4, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r1, r0
	bge _0223FA68
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
_0223FA68:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FA74: .word 0x02240590
_0223FA78: .word 0x0224059C
_0223FA7C: .word 0x00000E38
_0223FA80: .word 0xFFFFF1C8
	thumb_func_end ov83_0223F900

	thumb_func_start ov83_0223FA84
ov83_0223FA84: ; 0x0223FA84
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov83_0223FA84

	thumb_func_start ov83_0223FA8C
ov83_0223FA8C: ; 0x0223FA8C
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov83_0223FA8C

	thumb_func_start ov83_0223FA90
ov83_0223FA90: ; 0x0223FA90
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #3
	blt _0223FA9E
	bl sub_02022974
_0223FA9E:
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223FA90

	thumb_func_start ov83_0223FAA8
ov83_0223FAA8: ; 0x0223FAA8
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov83_0223FAA8

	thumb_func_start ov83_0223FAAC
ov83_0223FAAC: ; 0x0223FAAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [r5, #0x18]
	add r4, r1, #0
	add r6, r2, #0
	str r0, [r5, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	bl ov83_0223FB30
	cmp r0, #0
	beq _0223FAEA
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x1e
	blo _0223FAE4
	ldr r1, [r5, #4]
	ldr r0, _0223FB2C ; =0x0000270F
	cmp r1, r0
	bhs _0223FADC
	add r0, r1, #1
	str r0, [r5, #4]
_0223FADC:
	mov r0, #1
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0xc]
_0223FAE4:
	mov r0, #0
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_0223FAEA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov83_0223FB50
	cmp r0, #0
	beq _0223FB26
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0x5a
	blo _0223FB2A
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0223FB14
	mov r0, #2
	str r0, [r5, #0x10]
	mov r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_0223FB14:
	mov r0, #1
	str r0, [r5, #0x10]
	ldr r1, [r5, #0]
	ldr r0, _0223FB2C ; =0x0000270F
	cmp r1, r0
	bhs _0223FB2A
	add r0, r1, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_0223FB26:
	mov r0, #0
	str r0, [r5, #0x14]
_0223FB2A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223FB2C: .word 0x0000270F
	thumb_func_end ov83_0223FAAC

	thumb_func_start ov83_0223FB30
ov83_0223FB30: ; 0x0223FB30
	cmp r1, #2
	bne _0223FB38
	mov r0, #0
	bx lr
_0223FB38:
	cmp r0, #0
	bge _0223FB3E
	neg r0, r0
_0223FB3E:
	ldr r1, _0223FB4C ; =0x00000E38
	cmp r0, r1
	blt _0223FB48
	mov r0, #1
	bx lr
_0223FB48:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223FB4C: .word 0x00000E38
	thumb_func_end ov83_0223FB30

	thumb_func_start ov83_0223FB50
ov83_0223FB50: ; 0x0223FB50
	cmp r0, #0
	bge _0223FB56
	neg r0, r0
_0223FB56:
	ldr r1, _0223FB64 ; =0x0000038E
	cmp r0, r1
	bgt _0223FB60
	mov r0, #1
	bx lr
_0223FB60:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223FB64: .word 0x0000038E
	thumb_func_end ov83_0223FB50

	thumb_func_start ov83_0223FB68
ov83_0223FB68: ; 0x0223FB68
	push {r3, lr}
	ldr r1, _0223FB9C ; =0x0000038E
	sub r0, r0, r1
	bpl _0223FB72
	mov r0, #0
_0223FB72:
	lsl r2, r0, #0xc
	asr r1, r2, #0x1f
	lsr r0, r2, #0x16
	lsl r3, r1, #0xa
	orr r3, r0
	mov r0, #2
	lsl r2, r2, #0xa
	mov r1, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r1
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, _0223FBA0 ; =0x00AAA000
	bl sub_020BCFD0
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r0, r1
	pop {r3, pc}
	; .align 2, 0
_0223FB9C: .word 0x0000038E
_0223FBA0: .word 0x00AAA000
	thumb_func_end ov83_0223FB68

	thumb_func_start ov83_0223FBA4
ov83_0223FBA4: ; 0x0223FBA4
	add r3, r0, #0
	mov r2, #0x10
	mov r1, #0
_0223FBAA:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0223FBAA
	mov r1, #2
	str r1, [r0, #8]
	sub r1, r1, #3
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov83_0223FBA4

	thumb_func_start ov83_0223FBBC
ov83_0223FBBC: ; 0x0223FBBC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	str r1, [r5, #0xc]
	add r1, r2, #0
	add r6, r3, #0
	bl ov83_0223FC3C
	cmp r0, #1
	beq _0223FC34
	cmp r6, #1
	beq _0223FC34
	ldr r0, [r5, #4]
	cmp r0, #0
	bge _0223FC2E
	bl sub_0201D35C
	mov r1, #5
	add r6, r0, #0
	bl sub_020E2178
	ldr r0, [r5, #8]
	cmp r1, r0
	bhi _0223FBF4
	mov r1, #1
	str r1, [r5, #0xc]
	b _0223FBFA
_0223FBF4:
	mov r0, #1
	mov r1, #0
	str r0, [r5, #0xc]
_0223FBFA:
	ldr r0, [r5, #0]
	cmp r1, r0
	bne _0223FC18
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _0223FC0E
	sub r0, r0, #1
	bmi _0223FC1E
	str r0, [r5, #8]
	b _0223FC1E
_0223FC0E:
	add r0, r0, #1
	cmp r0, #5
	bge _0223FC1E
	str r0, [r5, #8]
	b _0223FC1E
_0223FC18:
	str r1, [r5, #0]
	mov r0, #2
	str r0, [r5, #8]
_0223FC1E:
	add r0, r6, #0
	mov r1, #0x3c
	bl sub_020E2178
	ldr r0, _0223FC38 ; =0x022405F0
	ldrb r0, [r0, r4]
	add r0, r0, r1
	str r0, [r5, #4]
_0223FC2E:
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
_0223FC34:
	pop {r4, r5, r6, pc}
	nop
_0223FC38: .word 0x022405F0
	thumb_func_end ov83_0223FBBC

	thumb_func_start ov83_0223FC3C
ov83_0223FC3C: ; 0x0223FC3C
	cmp r1, #0
	bge _0223FC46
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0223FC50
_0223FC46:
	cmp r1, #0
	ble _0223FC54
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0223FC54
_0223FC50:
	mov r0, #1
	bx lr
_0223FC54:
	mov r0, #0
	bx lr
	thumb_func_end ov83_0223FC3C

	thumb_func_start ov83_0223FC58
ov83_0223FC58: ; 0x0223FC58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0x1f
	add r0, r1, #0
	str r1, [sp]
	add r6, r7, #0
	bl ov83_0223FA8C
	add r4, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #3
	blt _0223FC74
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223FC74:
	mov r1, #0x96
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	cmp r2, r1
	beq _0223FC86
	ldr r1, _0223FCE4 ; =0x02240594
	ldrb r0, [r1, r0]
	cmp r4, r0
	blt _0223FCA0
_0223FC86:
	ldr r0, [r5, #8]
	mov r4, #0
	add r0, r0, #1
	str r0, [r5, #8]
	str r4, [r5, #0]
	ldr r1, [r5, #8]
	cmp r1, #3
	blt _0223FC9A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223FC9A:
	ldr r0, [sp]
	bl ov83_0223FA90
_0223FCA0:
	mov r0, #0x96
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	sub r1, r0, r1
	cmp r1, #0x3c
	bgt _0223FCB8
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0x3c
	bl sub_020E1F6C
	add r7, r0, #0
_0223FCB8:
	ldr r1, [r5, #8]
	ldr r0, _0223FCE4 ; =0x02240594
	ldrb r0, [r0, r1]
	sub r1, r0, r4
	cmp r1, #5
	bgt _0223FCD0
	mov r0, #0x1f
	mul r0, r1
	mov r1, #5
	bl sub_020E1F6C
	add r6, r0, #0
_0223FCD0:
	cmp r7, r6
	bge _0223FCD8
	str r7, [r5, #4]
	b _0223FCDA
_0223FCD8:
	str r6, [r5, #4]
_0223FCDA:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FCE4: .word 0x02240594
	thumb_func_end ov83_0223FC58

	thumb_func_start ov83_0223FCE8
ov83_0223FCE8: ; 0x0223FCE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	str r1, [r0, #0xc]
	add r7, r5, #0
	add r4, r3, #0
	str r0, [sp]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	add r6, r2, #0
	add r7, #0x98
	bl ov83_0223FB50
	cmp r0, #1
	beq _0223FD18
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl ov83_0223FB30
	cmp r0, #1
	beq _0223FD18
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0223FD22
_0223FD18:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0223FD22:
	cmp r6, #1
	bgt _0223FD30
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0223FD30:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	beq _0223FDAE
	mov r0, #0
	cmp r6, #0
	ble _0223FD5E
	mov r2, #0x96
	mov r4, #0x1c
	lsl r2, r2, #2
_0223FD42:
	mov r1, #0x13
	add r3, r5, r0
	lsl r1, r1, #4
	ldrb r1, [r3, r1]
	add r3, r1, #0
	mul r3, r4
	add r1, r5, r3
	add r1, #0x92
	ldrh r1, [r1]
	cmp r1, r2
	bls _0223FDAE
	add r0, r0, #1
	cmp r0, r6
	blt _0223FD42
_0223FD5E:
	mov r4, #1
	cmp r6, #1
	ble _0223FD8E
_0223FD64:
	mov r0, #0x13
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r2, [r1, r0]
	ldrb r0, [r7]
	ldrb r1, [r7, #4]
	add r3, r7, r2
	ldrb r2, [r7, r2]
	ldrb r3, [r3, #4]
	bl sub_0201E3BC
	cmp r0, #0x20
	bls _0223FD88
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0223FD88:
	add r4, r4, #1
	cmp r4, r6
	blt _0223FD64
_0223FD8E:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #4
	bge _0223FD9E
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0223FD9E:
	ldr r0, [sp]
	mov r2, #1
	str r2, [r0, #0xc]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #0]
	str r2, [r0, #8]
_0223FDAE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223FCE8

	thumb_func_start ov83_0223FDB0
ov83_0223FDB0: ; 0x0223FDB0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x68
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0xc
	bl ov83_0223FBA4
	mov r1, #0
	mov r0, #0x1f
	str r0, [r4, #0x50]
	add r4, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov83_0223FBBC
	pop {r4, pc}
	thumb_func_end ov83_0223FDB0

	thumb_func_start ov83_0223FDD8
ov83_0223FDD8: ; 0x0223FDD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r0, #0x4c
	add r1, #0x1c
	add r6, r2, #0
	bl ov83_0223FC58
	cmp r0, #1
	bne _0223FDF6
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223FDF6:
	add r0, r5, #0
	ldr r3, [r5, #0xc]
	add r0, #0x1c
	add r1, r4, #0
	add r2, r6, #0
	bl ov83_0223F900
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FAA8
	add r7, r0, #0
	add r0, r5, #0
	ldr r2, [r5, #0x54]
	add r0, #0x30
	add r1, r7, #0
	bl ov83_0223FAAC
	add r0, r5, #0
	add r0, #0xc
	add r1, r7, #0
	bl ov83_0223FC3C
	ldr r1, [r5, #0x54]
	add r2, r6, #0
	str r1, [sp]
	ldr r1, [r5, #0x2c]
	add r3, r7, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x58
	add r1, r4, #0
	bl ov83_0223FCE8
	add r0, r5, #0
	ldr r1, [r5, #0x54]
	ldr r3, [r5, #0x60]
	add r0, #0xc
	add r2, r7, #0
	bl ov83_0223FBBC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov83_0223FDD8

	thumb_func_start ov83_0223FE50
ov83_0223FE50: ; 0x0223FE50
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r4, #0xc
	mov r2, #0
_0223FE5A:
	add r3, r1, #0
	add r3, #0x90
	ldrb r3, [r3]
	add r0, r4, r2
	strb r3, [r4, r2]
	add r3, r1, #0
	add r3, #0x91
	ldrb r3, [r3]
	add r2, r2, #1
	add r1, #0x1c
	strb r3, [r0, #4]
	cmp r2, #4
	blt _0223FE5A
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FAA8
	cmp r0, #0
	blt _0223FE86
	strh r0, [r4, #0xa]
	mov r0, #0
	b _0223FE8C
_0223FE86:
	neg r0, r0
	strh r0, [r4, #0xa]
	mov r0, #1
_0223FE8C:
	strb r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FA84
	strh r0, [r4, #8]
	ldr r0, [r5, #0x40]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0x48]
	strb r0, [r4, #0x13]
	ldr r0, [r5, #0xc]
	strb r0, [r4, #0x11]
	ldr r0, [r5, #0x18]
	strb r0, [r4, #0xe]
	ldr r0, [r5, #0x54]
	cmp r0, #3
	bge _0223FEB0
	b _0223FEB2
_0223FEB0:
	mov r0, #2
_0223FEB2:
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x50]
	strb r0, [r4, #0x10]
	ldr r0, [r5, #0x64]
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223FE50

	thumb_func_start ov83_0223FEC0
ov83_0223FEC0: ; 0x0223FEC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r4, #0xc
	mov r2, #0
_0223FECA:
	add r3, r1, #0
	add r3, #0x90
	ldrb r3, [r3]
	add r0, r4, r2
	strb r3, [r4, r2]
	add r3, r1, #0
	add r3, #0x91
	ldrb r3, [r3]
	add r2, r2, #1
	add r1, #0x1c
	strb r3, [r0, #4]
	cmp r2, #4
	blt _0223FECA
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FAA8
	cmp r0, #0
	blt _0223FEF6
	strh r0, [r4, #0xa]
	mov r0, #0
	b _0223FEFC
_0223FEF6:
	neg r0, r0
	strh r0, [r4, #0xa]
	mov r0, #1
_0223FEFC:
	strb r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FA84
	strh r0, [r4, #8]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0223FF10
	strb r0, [r4, #0x12]
_0223FF10:
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _0223FF1A
	ldr r0, [r5, #0x48]
	strb r0, [r4, #0x13]
_0223FF1A:
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _0223FF28
	ldr r0, [r5, #0xc]
	strb r0, [r4, #0x11]
	ldr r0, [r5, #0x18]
	strb r0, [r4, #0xe]
_0223FF28:
	ldr r0, [r5, #0x54]
	cmp r0, #3
	bge _0223FF30
	b _0223FF32
_0223FF30:
	mov r0, #2
_0223FF32:
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x50]
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0223FF42
	ldr r0, [r5, #0x64]
	strb r0, [r4, #0xf]
_0223FF42:
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0223FEC0

	thumb_func_start ov83_0223FF44
ov83_0223FF44: ; 0x0223FF44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r3, #0
	mov r1, #0x80
	mov r0, #0x60
_0223FF50:
	add r2, r4, r3
	strb r1, [r4, r3]
	add r3, r3, #1
	strb r0, [r2, #4]
	cmp r3, #4
	blt _0223FF50
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FAA8
	cmp r0, #0
	blt _0223FF6E
	strh r0, [r4, #0xa]
	mov r0, #0
	b _0223FF74
_0223FF6E:
	neg r0, r0
	strh r0, [r4, #0xa]
	mov r0, #1
_0223FF74:
	strb r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x1c
	bl ov83_0223FA84
	strh r0, [r4, #8]
	ldr r0, [r5, #0x40]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #0x48]
	strb r0, [r4, #0x13]
	ldr r0, [r5, #0xc]
	strb r0, [r4, #0x11]
	ldr r0, [r5, #0x18]
	strb r0, [r4, #0xe]
	ldr r0, [r5, #0x54]
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x50]
	strb r0, [r4, #0x10]
	ldr r0, [r5, #0x64]
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov83_0223FF44

	thumb_func_start ov83_0223FFA0
ov83_0223FFA0: ; 0x0223FFA0
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov83_0223FFA0

	thumb_func_start ov83_0223FFA8
ov83_0223FFA8: ; 0x0223FFA8
	push {r4, lr}
	add r4, r1, #0
	mov r1, #6
	bl sub_020E2178
	ldr r1, _0223FFCC ; =0x02240597
	ldrb r1, [r1, r4]
	mul r1, r0
	add r0, r1, #0
	mov r1, #0xa
	bl sub_020E2178
	ldr r1, _0223FFD0 ; =0x0000270F
	cmp r0, r1
	ble _0223FFC8
	add r0, r1, #0
_0223FFC8:
	pop {r4, pc}
	nop
_0223FFCC: .word 0x02240597
_0223FFD0: .word 0x0000270F
	thumb_func_end ov83_0223FFA8

	thumb_func_start ov83_0223FFD4
ov83_0223FFD4: ; 0x0223FFD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r0, [sp]
	ldr r0, [sp, #0x78]
	str r1, [sp, #4]
	str r0, [sp, #0x78]
	add r0, r2, #0
	str r0, [sp, #0x24]
	add r0, #0x34
	str r0, [sp, #0x24]
	mov r1, #0
	add r0, sp, #0x4c
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	add r0, r1, #0
	add r6, r3, #0
	str r2, [sp, #8]
	str r1, [sp, #0x20]
	str r0, [sp, #0x18]
	str r0, [sp, #0x28]
	cmp r6, #0
	bls _02240086
_02240006:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x28]
	add r1, r1, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0x78]
	lsl r4, r0, #2
	ldr r0, [sp, #0x24]
	ldr r0, [r0, r4]
	bl sub_020973C8
	mov r3, #0
	add r7, r0, #0
	add r2, r3, #0
	cmp r6, #0
	bls _02240048
	ldr r0, [sp, #0x24]
	mov r5, #0x13
	ldr r4, [r0, r4]
	lsl r5, r5, #4
_02240030:
	ldr r0, [sp, #8]
	add r0, r0, r2
	ldrb r0, [r0, r5]
	lsl r1, r0, #2
	ldr r0, [sp, #0x24]
	ldr r0, [r0, r1]
	cmp r4, r0
	bne _02240042
	add r3, r3, #1
_02240042:
	add r2, r2, #1
	cmp r2, r6
	blo _02240030
_02240048:
	ldr r0, [sp, #0x18]
	cmp r3, r0
	ble _02240050
	str r3, [sp, #0x18]
_02240050:
	mov r5, #0
	add r4, sp, #0x4c
_02240054:
	add r0, r7, #0
	add r1, r5, #5
	bl sub_020973D4
	ldr r1, [r4, #0]
	add r5, r5, #1
	add r0, r1, r0
	stmia r4!, {r0}
	cmp r5, #5
	blt _02240054
	add r0, r7, #0
	mov r1, #0xa
	bl sub_020973D4
	ldr r1, [sp, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, r6
	blo _02240006
_02240086:
	ldr r0, [sp, #0x18]
	cmp r0, #2
	blt _02240096
	cmp r6, #1
	bls _02240096
	mov r0, #1
	str r0, [sp, #0x14]
	b _0224009A
_02240096:
	mov r0, #0
	str r0, [sp, #0x14]
_0224009A:
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	bl sub_020E2178
	sub r0, r0, r6
	mov r5, #0
	add r4, sp, #0x4c
	str r0, [sp, #0x1c]
	str r5, [sp, #0xc]
	add r7, sp, #0x38
	str r4, [sp, #0x2c]
_022400B0:
	ldr r0, [sp, #0xc]
	mov r1, #5
	add r0, r0, #1
	bl sub_020E1F6C
	lsl r2, r1, #2
	ldr r1, [sp, #0x2c]
	ldr r0, [r4, #0]
	ldr r1, [r1, r2]
	sub r0, r0, r1
	str r0, [r7, #0]
	bpl _022400CA
	add r5, r5, #1
_022400CA:
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0xc]
	cmp r0, #5
	blt _022400B0
	mov r2, #0
	add r1, sp, #0x38
_022400DC:
	ldr r0, [r1, #0]
	add r2, r2, #1
	sub r0, r0, r5
	stmia r1!, {r0}
	cmp r2, #5
	blt _022400DC
	cmp r5, #4
	blt _022400F0
	mov r0, #1
	str r0, [sp, #0x14]
_022400F0:
	ldr r1, [sp]
	ldr r0, _022401A8 ; =0x001B7740
	ldr r1, [r1, #0]
	bl sub_020E2178
	mov r1, #0xa
	add r5, r0, #0
	bl sub_020E1F6C
	cmp r1, #5
	blt _02240108
	add r5, #0xa
_02240108:
	add r0, r5, #0
	mov r1, #0xa
	mov r7, #0
	add r4, sp, #0x38
	bl sub_020E1F6C
	str r0, [sp, #0x10]
_02240116:
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0]
	add r5, r0, #0
	mul r5, r1
	add r0, r5, #0
	mov r1, #0x64
	bl sub_020E1F6C
	cmp r1, #0x32
	blt _0224012C
	add r5, #0x64
_0224012C:
	add r0, r5, #0
	mov r1, #0x64
	bl sub_020E1F6C
	ldr r1, [sp]
	ldr r2, [r1, #0x30]
	ldr r1, [r1, #0x34]
	add r1, r2, r1
	sub r0, r0, r1
	str r0, [r4, #0]
	bpl _02240146
	mov r0, #0
	str r0, [r4, #0]
_02240146:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #5
	blt _02240116
	cmp r6, #1
	bls _02240168
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #0x58]
	bl ov83_0223FFA8
	cmp r0, #0xa
	ble _02240162
	mov r0, #0xa
_02240162:
	ldr r1, [sp, #0x1c]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
_02240168:
	ldr r0, [sp, #0x1c]
	cmp r0, #0xf
	bge _02240172
	mov r0, #0xf
	str r0, [sp, #0x1c]
_02240172:
	mov r3, #0
	add r1, sp, #0x38
	add r2, sp, #0x30
_02240178:
	ldr r0, [r1, #0]
	add r3, r3, #1
	strb r0, [r2]
	add r1, r1, #4
	add r2, r2, #1
	cmp r3, #5
	blt _02240178
	ldr r2, [sp, #0x1c]
	ldr r0, [sp, #4]
	lsl r2, r2, #0x18
	ldr r3, [sp, #0x14]
	add r1, sp, #0x30
	lsr r2, r2, #0x18
	bl sub_0202A9E4
	ldr r1, [sp]
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	bl sub_0202AABC
	ldr r1, [sp]
	str r0, [r1, #8]
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022401A8: .word 0x001B7740
	thumb_func_end ov83_0223FFD4

	thumb_func_start ov83_022401AC
ov83_022401AC: ; 0x022401AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	str r0, [r1, #0x20]
	ldr r0, [r5, #0x30]
	add r4, #0x20
	str r0, [r4, #4]
	ldr r0, [r5, #0x58]
	add r1, r2, #0
	bl ov83_0223FFA8
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	ldr r1, _02240204 ; =0x00000708
	strb r0, [r4, #0xc]
	ldr r0, [r5, #8]
	strb r0, [r4, #0xd]
	ldr r5, [r5, #0]
	add r0, r5, #0
	bl sub_020E1F6C
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0xe]
	ldr r0, _02240204 ; =0x00000708
	mul r0, r1
	sub r5, r5, r0
	add r0, r5, #0
	mov r1, #0x1e
	bl sub_020E1F6C
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	mov r1, #0x1e
	add r2, r0, #0
	mul r2, r1
	sub r2, r5, r2
	mov r0, #0x64
	mul r0, r2
	bl sub_020E1F6C
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	nop
_02240204: .word 0x00000708
	thumb_func_end ov83_022401AC
	; 0x02240208


	.rodata
	.incbin "incbin/overlay83_rodata.bin"

	.data
	.incbin "incbin/overlay83_data.bin"

	.bss
	.space 0x0
