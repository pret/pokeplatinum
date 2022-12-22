	.include "macros/function.inc"
	.include "include/ov83_0223B5A0.inc"

	

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
	bl memset
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
	bl MI_CpuFill8
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
	bl GF_AssertFail
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
	bl _s32_div_f
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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
	bl GF_AssertFail
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

	.rodata


	.global Unk_ov83_02240208
Unk_ov83_02240208: ; 0x02240208
	.incbin "incbin/overlay83_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov83_0224020C
Unk_ov83_0224020C: ; 0x0224020C
	.incbin "incbin/overlay83_rodata.bin", 0x4, 0x8 - 0x4

	.global Unk_ov83_02240210
Unk_ov83_02240210: ; 0x02240210
	.incbin "incbin/overlay83_rodata.bin", 0x8, 0x14 - 0x8

	.global Unk_ov83_0224021C
Unk_ov83_0224021C: ; 0x0224021C
	.incbin "incbin/overlay83_rodata.bin", 0x14, 0x20 - 0x14

	.global Unk_ov83_02240228
Unk_ov83_02240228: ; 0x02240228
	.incbin "incbin/overlay83_rodata.bin", 0x20, 0x2C - 0x20

	.global Unk_ov83_02240234
Unk_ov83_02240234: ; 0x02240234
	.incbin "incbin/overlay83_rodata.bin", 0x2C, 0x44 - 0x2C

	.global Unk_ov83_0224024C
Unk_ov83_0224024C: ; 0x0224024C
	.incbin "incbin/overlay83_rodata.bin", 0x44, 0x70

