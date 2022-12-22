	.include "macros/function.inc"
	.include "include/unk_020232E0.inc"

	

	.text


	thumb_func_start sub_020232E0
sub_020232E0: ; 0x020232E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x20]
	mov r1, #0x78
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	beq _02023310
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #4]
	str r1, [sp]
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02023350
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02023424
_02023310:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020232E0

	thumb_func_start sub_02023318
sub_02023318: ; 0x02023318
	push {r4, lr}
	add r4, r0, #0
	bl sub_02023478
	add r0, r4, #0
	bl sub_02023408
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02023318

	thumb_func_start sub_02023330
sub_02023330: ; 0x02023330
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	add r6, r2, #0
	cmp r1, r4
	beq _0202334C
	bl sub_02023478
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02023424
_0202334C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02023330

	thumb_func_start sub_02023350
sub_02023350: ; 0x02023350
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0x18]
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02006C24
	str r0, [r5, #0x54]
	cmp r0, #0
	beq _020233F6
	add r1, r5, #0
	add r1, #0x5c
	str r1, [sp]
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x10
	bl sub_02006DC8
	str r6, [r5, #0x6c]
	cmp r6, #0
	beq _02023388
	mov r0, #0
	str r0, [r5, #0x74]
	ldr r0, _020233FC ; =sub_020236C8
	str r0, [r5, #0x70]
	b _020233B0
_02023388:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	bne _02023392
	bl GF_AssertFail
_02023392:
	ldr r0, [sp, #0x18]
	ldr r1, [r5, #0x64]
	bl sub_02018144
	str r0, [r5, #0x74]
	ldr r0, _02023400 ; =sub_020236B0
	add r1, r4, #0
	str r0, [r5, #0x70]
	ldr r0, [r5, #0x74]
	str r0, [sp]
	ldr r0, [r5, #0x54]
	ldr r2, [r5, #0x60]
	ldr r3, [r5, #0x64]
	bl sub_02006DC8
_020233B0:
	add r0, r5, #0
	add r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #2
	bhi _020233C4
	add r0, r5, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #2
	bls _020233C8
_020233C4:
	bl GF_AssertFail
_020233C8:
	add r0, r5, #0
	add r0, #0x6a
	ldrb r0, [r0]
	ldr r2, _02023404 ; =0x020E56F4
	sub r0, r0, #1
	lsl r3, r0, #1
	add r0, r5, #0
	add r0, #0x6b
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r2, r3
	ldrb r0, [r1, r0]
	str r0, [r5, #8]
	add r0, r5, #0
	add r0, #0x6b
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x6a
	ldrb r0, [r0]
	lsl r0, r0, #4
	mul r0, r1
	str r0, [r5, #0xc]
	str r4, [r5, #0x58]
_020233F6:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020233FC: .word sub_020236C8
_02023400: .word sub_020236B0
_02023404: .word 0x020E56F4
	thumb_func_end sub_02023350

	thumb_func_start sub_02023408
sub_02023408: ; 0x02023408
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _02023416
	bl sub_020181C4
_02023416:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _02023420
	bl sub_02006CA8
_02023420:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02023408

	thumb_func_start sub_02023424
sub_02023424: ; 0x02023424
	push {r3, lr}
	add r3, r1, #0
	add r1, r2, #0
	str r3, [r0, #0]
	ldr r2, _02023438 ; =0x020E56F8
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_02023438: .word 0x020E56F8
	thumb_func_end sub_02023424

	thumb_func_start sub_0202343C
sub_0202343C: ; 0x0202343C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x64]
	add r4, r2, #0
	mul r4, r0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018144
	str r0, [r5, #0x10]
	ldr r0, _02023468 ; =sub_020234BC
	add r3, r4, #0
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	str r0, [sp]
	ldr r0, [r5, #0x54]
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x5c]
	bl sub_02006DC8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02023468: .word sub_020234BC
	thumb_func_end sub_0202343C

	thumb_func_start sub_0202346C
sub_0202346C: ; 0x0202346C
	ldr r1, _02023474 ; =sub_02023564
	str r1, [r0, #4]
	bx lr
	nop
_02023474: .word sub_02023564
	thumb_func_end sub_0202346C

	thumb_func_start sub_02023478
sub_02023478: ; 0x02023478
	push {r3, lr}
	ldr r1, [r0, #0]
	lsl r2, r1, #2
	ldr r1, _02023488 ; =0x020E5700
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_02023488: .word 0x020E5700
	thumb_func_end sub_02023478

	thumb_func_start sub_0202348C
sub_0202348C: ; 0x0202348C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end sub_0202348C

	thumb_func_start sub_0202349C
sub_0202349C: ; 0x0202349C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202349C

	thumb_func_start sub_020234A0
sub_020234A0: ; 0x020234A0
	push {r3, lr}
	ldr r3, [r0, #0x64]
	cmp r1, r3
	bhi _020234B0
	sub r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	b _020234B2
_020234B0:
	ldr r1, _020234B8 ; =0x000001AB
_020234B2:
	ldr r3, [r0, #4]
	blx r3
	pop {r3, pc}
	; .align 2, 0
_020234B8: .word 0x000001AB
	thumb_func_end sub_020234A0

	thumb_func_start sub_020234BC
sub_020234BC: ; 0x020234BC
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [r7, #0xc]
	add r5, r0, #0
	ldr r0, [r7, #8]
	add r6, r2, #0
	mul r5, r1
	ldr r4, [r7, #0x10]
	cmp r0, #3
	bhi _0202354A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020234E0: ; jump table
	.short _020234E8 - _020234E0 - 2 ; case 0
	.short _020234F2 - _020234E0 - 2 ; case 1
	.short _02023508 - _020234E0 - 2 ; case 2
	.short _0202351E - _020234E0 - 2 ; case 3
_020234E8:
	add r0, r4, r5
	add r1, r6, #0
	bl sub_0201DAA0
	b _0202354A
_020234F2:
	add r0, r4, r5
	add r1, r6, #0
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x10
	add r1, #0x40
	bl sub_0201DAA0
	b _0202354A
_02023508:
	add r0, r4, r5
	add r1, r6, #0
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x10
	add r1, #0x20
	bl sub_0201DAA0
	b _0202354A
_0202351E:
	add r0, r4, r5
	add r1, r6, #0
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x10
	add r1, #0x20
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x20
	add r1, #0x40
	bl sub_0201DAA0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x30
	add r1, #0x60
	bl sub_0201DAA0
_0202354A:
	ldr r1, [sp]
	ldr r2, [r7, #0x70]
	add r0, r7, #0
	blx r2
	add r1, r6, #0
	add r1, #0x80
	add r7, #0x69
	strb r0, [r1]
	ldrb r0, [r7]
	add r6, #0x81
	strb r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020234BC

	thumb_func_start sub_02023564
sub_02023564: ; 0x02023564
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r6, [r4, #0xc]
	add r0, #0x14
	str r0, [sp]
	add r7, r1, #0
	add r5, r2, #0
	add r2, r7, #0
	ldr r3, [r4, #0x5c]
	mul r2, r6
	add r2, r3, r2
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	add r3, r6, #0
	bl sub_02006DC8
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _02023608
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02023596: ; jump table
	.short _0202359E - _02023596 - 2 ; case 0
	.short _020235AA - _02023596 - 2 ; case 1
	.short _020235C2 - _02023596 - 2 ; case 2
	.short _020235DA - _02023596 - 2 ; case 3
_0202359E:
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl sub_0201DAA0
	b _02023608
_020235AA:
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x40
	bl sub_0201DAA0
	b _02023608
_020235C2:
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x20
	bl sub_0201DAA0
	b _02023608
_020235DA:
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x20
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x34
	add r1, #0x40
	bl sub_0201DAA0
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0x44
	add r1, #0x60
	bl sub_0201DAA0
_02023608:
	ldr r2, [r4, #0x70]
	add r0, r4, #0
	add r1, r7, #0
	blx r2
	add r1, r5, #0
	add r1, #0x80
	add r4, #0x69
	strb r0, [r1]
	ldrb r0, [r4]
	add r5, #0x81
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02023564

	thumb_func_start sub_02023620
sub_02023620: ; 0x02023620
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	ldr r0, _02023664 ; =0x0000FFFF
	add r7, r2, #0
	mov r6, #0
	cmp r1, r0
	beq _0202365E
_02023632:
	ldr r0, _02023668 ; =0x0000FFFE
	cmp r1, r0
	bne _02023648
	add r0, r4, #0
	bl sub_0201D0C8
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _02023664 ; =0x0000FFFF
	cmp r1, r0
	beq _0202365E
_02023648:
	ldr r2, [r5, #0x70]
	add r0, r5, #0
	sub r1, r1, #1
	blx r2
	add r4, r4, #2
	add r0, r7, r0
	add r6, r6, r0
	ldrh r1, [r4]
	ldr r0, _02023664 ; =0x0000FFFF
	cmp r1, r0
	bne _02023632
_0202365E:
	sub r0, r6, r7
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02023664: .word 0x0000FFFF
_02023668: .word 0x0000FFFE
	thumb_func_end sub_02023620

	thumb_func_start sub_0202366C
sub_0202366C: ; 0x0202366C
	push {r3, r4, r5, r6, r7, lr}
	ldrh r2, [r1]
	add r5, r0, #0
	ldr r0, _020236AC ; =0x0000FFFF
	cmp r2, r0
	beq _020236A8
	add r6, r0, #0
	add r7, r0, #0
	sub r4, r0, #1
_0202367E:
	cmp r2, r4
	bne _02023694
	add r0, r1, #0
	bl sub_0201D0C8
	add r1, r0, #0
	ldrh r2, [r1]
	cmp r2, r6
	bne _02023694
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02023694:
	ldr r0, [r5, #0x64]
	sub r2, r2, #1
	cmp r2, r0
	blo _020236A0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020236A0:
	add r1, r1, #2
	ldrh r2, [r1]
	cmp r2, r7
	bne _0202367E
_020236A8:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020236AC: .word 0x0000FFFF
	thumb_func_end sub_0202366C

	thumb_func_start sub_020236B0
sub_020236B0: ; 0x020236B0
	ldr r2, [r0, #0x64]
	cmp r1, r2
	bhs _020236BC
	ldr r0, [r0, #0x74]
	ldrb r0, [r0, r1]
	bx lr
_020236BC:
	ldr r1, [r0, #0x74]
	ldr r0, _020236C4 ; =0x000001AB
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_020236C4: .word 0x000001AB
	thumb_func_end sub_020236B0

	thumb_func_start sub_020236C8
sub_020236C8: ; 0x020236C8
	add r0, #0x68
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020236C8

	thumb_func_start sub_020236D0
sub_020236D0: ; 0x020236D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrh r1, [r5]
	add r7, r0, #0
	mov r4, #0
	ldr r0, _02023730 ; =0x0000FFFF
	add r6, r2, #0
	str r4, [sp]
	cmp r1, r0
	beq _02023722
_020236E4:
	ldr r0, _02023734 ; =0x0000FFFE
	cmp r1, r0
	bne _020236F4
	add r0, r5, #0
	bl sub_0201D0C8
	add r5, r0, #0
	b _0202371A
_020236F4:
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _0202370C
	ldr r0, [sp]
	sub r1, r4, r6
	cmp r0, r1
	bhs _02023706
	str r1, [sp]
_02023706:
	mov r4, #0
	add r5, r5, #2
	b _0202371A
_0202370C:
	ldr r2, [r7, #0x70]
	add r0, r7, #0
	sub r1, r1, #1
	blx r2
	add r0, r6, r0
	add r4, r4, r0
	add r5, r5, #2
_0202371A:
	ldrh r1, [r5]
	ldr r0, _02023730 ; =0x0000FFFF
	cmp r1, r0
	bne _020236E4
_02023722:
	ldr r0, [sp]
	sub r1, r4, r6
	cmp r0, r1
	bhs _0202372C
	str r1, [sp]
_0202372C:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02023730: .word 0x0000FFFF
_02023734: .word 0x0000FFFE
	thumb_func_end sub_020236D0

	thumb_func_start sub_02023738
sub_02023738: ; 0x02023738
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrh r1, [r5]
	add r6, r0, #0
	ldr r0, _02023788 ; =0x0000FFFF
	mov r4, #0
	cmp r1, r0
	beq _02023784
	sub r7, r0, #1
_0202374A:
	cmp r1, r7
	bne _02023770
	add r0, r5, #0
	bl sub_0201D0F0
	ldr r1, _0202378C ; =0x00000203
	cmp r0, r1
	bne _02023766
	add r0, r5, #0
	mov r1, #0
	bl sub_0201D134
	add r4, r0, #0
	sub r4, #0xc
_02023766:
	add r0, r5, #0
	bl sub_0201D0C8
	add r5, r0, #0
	b _0202377C
_02023770:
	ldr r2, [r6, #0x70]
	add r0, r6, #0
	sub r1, r1, #1
	blx r2
	add r4, r4, r0
	add r5, r5, #2
_0202377C:
	ldrh r1, [r5]
	ldr r0, _02023788 ; =0x0000FFFF
	cmp r1, r0
	bne _0202374A
_02023784:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02023788: .word 0x0000FFFF
_0202378C: .word 0x00000203
	thumb_func_end sub_02023738

	.rodata


	.global Unk_020E56F4
Unk_020E56F4: ; 0x020E56F4
	.incbin "incbin/arm9_rodata.bin", 0xAB4, 0xAB8 - 0xAB4

	.global Unk_020E56F8
Unk_020E56F8: ; 0x020E56F8
	.incbin "incbin/arm9_rodata.bin", 0xAB8, 0xAC0 - 0xAB8

	.global Unk_020E5700
Unk_020E5700: ; 0x020E5700
	.incbin "incbin/arm9_rodata.bin", 0xAC0, 0x8

