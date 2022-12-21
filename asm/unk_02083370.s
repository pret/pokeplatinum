	.include "macros/function.inc"
	.include "include/unk_02083370.inc"

	

	.text


	thumb_func_start sub_02083370
sub_02083370: ; 0x02083370
	lsl r1, r0, #2
	ldr r0, _02083378 ; =0x020F2458
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_02083378: .word 0x020F2458
	thumb_func_end sub_02083370

	thumb_func_start sub_0208337C
sub_0208337C: ; 0x0208337C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _020833B8 ; =0x000006FC
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_020833B8: .word 0x000006FC
	thumb_func_end sub_0208337C

	thumb_func_start sub_020833BC
sub_020833BC: ; 0x020833BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0x26
	mov r2, #0
	bl sub_020826F4
	mov r0, #3
	mov r1, #0xc
	bl sub_02013A04
	ldr r1, _02083478 ; =0x000006FC
	str r0, [r5, r1]
	mov r0, #3
	bl sub_02083370
	ldr r1, _02083478 ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x44
	ldr r1, [r5, r1]
	bl sub_02013A6C
	mov r0, #4
	bl sub_02083370
	ldr r1, _02083478 ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x40
	ldr r1, [r5, r1]
	bl sub_02013A6C
	mov r0, #9
	bl sub_02083370
	ldr r1, _02083478 ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x2c
	ldr r1, [r5, r1]
	bl sub_02013A6C
	ldr r0, _02083478 ; =0x000006FC
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, sp, #8
	str r0, [sp, #8]
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0xc]
	strb r1, [r2, #8]
	mov r1, #1
	strb r1, [r2, #9]
	mov r3, #3
	strb r3, [r2, #0xa]
	ldrb r6, [r2, #0xb]
	mov r3, #0xf
	bic r6, r3
	strb r6, [r2, #0xb]
	ldrb r6, [r2, #0xb]
	mov r3, #0x30
	bic r6, r3
	strb r6, [r2, #0xb]
	ldrb r6, [r2, #0xb]
	mov r3, #0xc0
	bic r6, r3
	strb r6, [r2, #0xb]
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0xc
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r5, r1]
	mov r0, #0xf
	str r0, [r4, #0]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02083478: .word 0x000006FC
	thumb_func_end sub_020833BC

	thumb_func_start sub_0208347C
sub_0208347C: ; 0x0208347C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _020834A8 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _020834AC ; =0x000005A4
	mov r1, #3
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_020834A8: .word 0x000006FC
_020834AC: .word 0x000005A4
	thumb_func_end sub_0208347C

	thumb_func_start sub_020834B0
sub_020834B0: ; 0x020834B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	str r1, [sp]
	add r0, r5, r0
	mov r1, #1
	mov r6, #0x11
	bl sub_0200DC9C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _02083644 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r1, _02083648 ; =0x00000B29
	ldr r0, _0208364C ; =0x000005A4
	ldrb r1, [r5, r1]
	mov r2, #0x2c
	ldr r0, [r5, r0]
	mul r2, r1
	add r3, r5, r2
	mov r2, #0x71
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	ldr r4, [r0, #0x1c]
	cmp r2, #0
	bne _02083532
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r2, _02083650 ; =0x0000069C
	add r4, r0, #0
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x51
	bl sub_0200B1B8
	add r0, r4, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	b _02083618
_02083532:
	ldr r0, [r0, #4]
	add r1, r2, #0
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D570
	cmp r0, #1
	bne _0208360A
	ldr r0, _0208364C ; =0x000005A4
	ldr r1, _02083648 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0
	str r1, [sp, #4]
	add r7, r0, #0
	mov r1, #6
	add r2, sp, #4
	bl sub_02074B30
	add r0, r7, #0
	bl sub_02077928
	cmp r4, #0
	beq _02083578
	ldr r0, [r4, #0x1c]
	ldr r1, [r0, #0]
	ldr r0, _02083654 ; =0x0000023D
	cmp r1, r0
	blt _02083578
	add r0, #0xa
	cmp r1, r0
	ble _02083598
_02083578:
	add r0, r7, #0
	bl sub_02077A00
	ldr r1, _02083648 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #4
	ldrh r1, [r2, r1]
	cmp r1, #0x70
	bne _02083598
	cmp r0, #0
	bne _02083598
	mov r6, #0x12
_02083598:
	ldr r2, _02083650 ; =0x0000069C
	mov r1, #0x52
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r2, _02083648 ; =0x00000B29
	mov r3, #0x6a
	ldrb r4, [r5, r2]
	mov r2, #0x2c
	lsl r3, r3, #4
	mul r2, r4
	ldr r0, [r5, r3]
	add r2, r5, r2
	add r3, #0x70
	ldrh r2, [r2, r3]
	mov r1, #1
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	ldr r1, _02083648 ; =0x00000B29
	mov r2, #0x2c
	ldrb r3, [r5, r1]
	mov r0, #0
	add r4, r3, #0
	mul r4, r2
	mov r3, #0x71
	add r4, r5, r4
	lsl r3, r3, #4
	strh r0, [r4, r3]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	mul r2, r1
	add r2, r5, r2
	ldrh r2, [r2, r3]
	bl sub_02083040
	b _02083618
_0208360A:
	ldr r2, _02083650 ; =0x0000069C
	mov r1, #0x53
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_02083618:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200E060
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0208274C
	ldr r0, [sp]
	str r6, [r0, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02083644: .word 0x000006FC
_02083648: .word 0x00000B29
_0208364C: .word 0x000005A4
_02083650: .word 0x0000069C
_02083654: .word 0x0000023D
	thumb_func_end sub_020834B0

	thumb_func_start sub_02083658
sub_02083658: ; 0x02083658
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0208369C ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02083696
	ldr r0, _020836A0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02083696
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020836A4 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
_02083696:
	mov r0, #0x11
	pop {r4, pc}
	nop
_0208369C: .word 0x00000B28
_020836A0: .word 0x021BF67C
_020836A4: .word 0x000005C8
	thumb_func_end sub_02083658

	thumb_func_start sub_020836A8
sub_020836A8: ; 0x020836A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020836DC ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _020836D8
	ldr r0, _020836E0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _020836D8
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_020819B4
	mov r0, #0x13
	pop {r4, pc}
_020836D8:
	mov r0, #0x12
	pop {r4, pc}
	; .align 2, 0
_020836DC: .word 0x00000B28
_020836E0: .word 0x021BF67C
	thumb_func_end sub_020836A8

	thumb_func_start sub_020836E4
sub_020836E4: ; 0x020836E4
	push {r4, lr}
	add r4, r0, #0
	bl ov118_021D0DBC
	cmp r0, #1
	bne _020836FA
	add r0, r4, #0
	bl sub_020819CC
	mov r0, #0x11
	pop {r4, pc}
_020836FA:
	mov r0, #0x13
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020836E4

	thumb_func_start sub_02083700
sub_02083700: ; 0x02083700
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0x27
	mov r2, #0
	bl sub_020826F4
	mov r0, #3
	mov r1, #0xc
	bl sub_02013A04
	ldr r1, _020837BC ; =0x000006FC
	str r0, [r5, r1]
	mov r0, #6
	bl sub_02083370
	ldr r1, _020837BC ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x38
	ldr r1, [r5, r1]
	bl sub_02013A6C
	mov r0, #7
	bl sub_02083370
	ldr r1, _020837BC ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x34
	ldr r1, [r5, r1]
	bl sub_02013A6C
	mov r0, #9
	bl sub_02083370
	ldr r1, _020837BC ; =0x000006FC
	add r2, r0, #0
	ldr r0, [r5, r1]
	sub r1, #0x2c
	ldr r1, [r5, r1]
	bl sub_02013A6C
	ldr r0, _020837BC ; =0x000006FC
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, sp, #8
	str r0, [sp, #8]
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0xc]
	strb r1, [r2, #8]
	mov r1, #1
	strb r1, [r2, #9]
	mov r3, #3
	strb r3, [r2, #0xa]
	ldrb r6, [r2, #0xb]
	mov r3, #0xf
	bic r6, r3
	strb r6, [r2, #0xb]
	ldrb r6, [r2, #0xb]
	mov r3, #0x30
	bic r6, r3
	strb r6, [r2, #0xb]
	ldrb r6, [r2, #0xb]
	mov r3, #0xc0
	bic r6, r3
	strb r6, [r2, #0xb]
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0xc
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r5, r1]
	mov r0, #0xf
	str r0, [r4, #0]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020837BC: .word 0x000006FC
	thumb_func_end sub_02083700

	thumb_func_start sub_020837C0
sub_020837C0: ; 0x020837C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _020837EC ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _020837F0 ; =0x000005A4
	mov r1, #7
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_020837EC: .word 0x000006FC
_020837F0: .word 0x000005A4
	thumb_func_end sub_020837C0

	thumb_func_start sub_020837F4
sub_020837F4: ; 0x020837F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0208383C ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r5, #0
	mov r1, #0x2b
	mov r2, #1
	bl sub_02082708
	ldr r0, _02083840 ; =sub_0208384C
	ldr r1, _02083844 ; =0x00000B1C
	ldr r2, _02083848 ; =sub_020838C4
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208383C: .word 0x000006FC
_02083840: .word sub_0208384C
_02083844: .word 0x00000B1C
_02083848: .word sub_020838C4
	thumb_func_end sub_020837F4

	thumb_func_start sub_0208384C
sub_0208384C: ; 0x0208384C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _020838B8 ; =0x000005A4
	ldr r1, _020838BC ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, _020838B8 ; =0x000005A4
	mov r2, #0xc
	ldr r0, [r4, r0]
	ldr r0, [r0, #8]
	bl sub_02097788
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _020838A2
	ldr r1, _020838BC ; =0x00000B29
	mov r2, #0x2c
	ldrb r3, [r4, r1]
	mov r0, #0
	add r5, r3, #0
	mul r5, r2
	mov r3, #0x71
	add r5, r4, r5
	lsl r3, r3, #4
	strh r0, [r5, r3]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mul r2, r1
	add r2, r4, r2
	ldrh r2, [r2, r3]
	bl sub_02083040
	add r0, r4, #0
	mov r1, #0x2e
	mov r2, #0
	bl sub_02082708
	b _020838AC
_020838A2:
	add r0, r4, #0
	mov r1, #0x32
	mov r2, #0
	bl sub_02082708
_020838AC:
	ldr r0, _020838C0 ; =0x00000B26
	mov r1, #0x14
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_020838B8: .word 0x000005A4
_020838BC: .word 0x00000B29
_020838C0: .word 0x00000B26
	thumb_func_end sub_0208384C

	thumb_func_start sub_020838C4
sub_020838C4: ; 0x020838C4
	push {r4, lr}
	mov r1, #0x2f
	mov r2, #0
	add r4, r0, #0
	bl sub_02082708
	ldr r0, _020838E8 ; =sub_020838F4
	ldr r1, _020838EC ; =0x00000B1C
	ldr r2, _020838F0 ; =sub_02083990
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	mov r0, #0x18
	pop {r4, pc}
	nop
_020838E8: .word sub_020838F4
_020838EC: .word 0x00000B1C
_020838F0: .word sub_02083990
	thumb_func_end sub_020838C4

	thumb_func_start sub_020838F4
sub_020838F4: ; 0x020838F4
	push {r3, r4, r5, lr}
	ldr r1, _02083984 ; =0x00000B29
	add r4, r0, #0
	ldrb r2, [r4, r1]
	mov r1, #0x2c
	ldr r0, _02083988 ; =0x000005A4
	mul r1, r2
	add r2, r4, r1
	mov r1, #0x71
	ldr r0, [r4, r0]
	lsl r1, r1, #4
	ldrh r1, [r2, r1]
	ldr r0, [r0, #4]
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D570
	cmp r0, #1
	bne _02083970
	ldr r0, _02083988 ; =0x000005A4
	ldr r1, _02083984 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0
	str r1, [sp]
	add r5, r0, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r5, #0
	bl sub_02077928
	add r0, r5, #0
	bl sub_02077A00
	ldr r1, _02083984 ; =0x00000B29
	mov r2, #0x2c
	ldrb r3, [r4, r1]
	mov r0, #0
	add r5, r3, #0
	mul r5, r2
	mov r3, #0x71
	add r5, r4, r5
	lsl r3, r3, #4
	strh r0, [r5, r3]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mul r2, r1
	add r2, r4, r2
	ldrh r2, [r2, r3]
	bl sub_02083040
	add r0, r4, #0
	mov r1, #0x33
	mov r2, #0
	bl sub_02082708
	b _0208397A
_02083970:
	add r0, r4, #0
	mov r1, #0x53
	mov r2, #0
	bl sub_02082708
_0208397A:
	ldr r0, _0208398C ; =0x00000B26
	mov r1, #0x14
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02083984: .word 0x00000B29
_02083988: .word 0x000005A4
_0208398C: .word 0x00000B26
	thumb_func_end sub_020838F4

	thumb_func_start sub_02083990
sub_02083990: ; 0x02083990
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020839B8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020839B8: .word 0x000005C8
	thumb_func_end sub_02083990

	thumb_func_start sub_020839BC
sub_020839BC: ; 0x020839BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020839F4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _020839EE
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020839F8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
_020839EE:
	mov r0, #0x14
	pop {r4, pc}
	nop
_020839F4: .word 0x021BF67C
_020839F8: .word 0x000005C8
	thumb_func_end sub_020839BC

	thumb_func_start sub_020839FC
sub_020839FC: ; 0x020839FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02083A5C ; =0x00000B29
	add r5, r0, #0
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02083A60 ; =0x00000716
	ldrh r2, [r2, r1]
	cmp r2, #0
	bne _02083A36
	sub r1, #0x16
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _02083A64 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _02083A68 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02083A36:
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0xc3
	mov r2, #1
	bl sub_02082708
	ldr r0, _02083A6C ; =sub_02083A78
	ldr r1, _02083A70 ; =0x00000B1C
	ldr r2, _02083A74 ; =sub_02083AA4
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02083A5C: .word 0x00000B29
_02083A60: .word 0x00000716
_02083A64: .word 0x000006FC
_02083A68: .word 0x000005A4
_02083A6C: .word sub_02083A78
_02083A70: .word 0x00000B1C
_02083A74: .word sub_02083AA4
	thumb_func_end sub_020839FC

	thumb_func_start sub_02083A78
sub_02083A78: ; 0x02083A78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02083A9C ; =0x000005A4
	ldr r1, _02083AA0 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	bl sub_0207893C
	ldr r0, _02083A9C ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
	; .align 2, 0
_02083A9C: .word 0x000005A4
_02083AA0: .word 0x00000B29
	thumb_func_end sub_02083A78

	thumb_func_start sub_02083AA4
sub_02083AA4: ; 0x02083AA4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _02083ACC ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02083ACC: .word 0x000005C8
	thumb_func_end sub_02083AA4

	thumb_func_start sub_02083AD0
sub_02083AD0: ; 0x02083AD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02083B78 ; =0x00000B27
	add r4, r1, #0
	ldrb r2, [r5, r0]
	mov r1, #0x40
	orr r1, r2
	strb r1, [r5, r0]
	ldrb r1, [r5, r0]
	mov r2, #0x3f
	bic r1, r2
	add r2, r0, #2
	ldrb r3, [r5, r2]
	mov r2, #0x3f
	and r2, r3
	orr r1, r2
	strb r1, [r5, r0]
	ldr r0, _02083B7C ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	ldr r0, _02083B7C ; =0x000005C8
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D50C
	ldr r0, _02083B80 ; =0x000005CC
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
	ldr r0, _02083B84 ; =0x000005A4
	ldr r1, _02083B78 ; =0x00000B27
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	add r0, #0x21
	ldrb r0, [r0]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _02083B80 ; =0x000005CC
	add r1, r1, #2
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _02083B80 ; =0x000005CC
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r1, _02083B78 ; =0x00000B27
	add r0, r5, #0
	ldrb r1, [r5, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_0207F8F8
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0x1e
	mov r2, #1
	bl sub_020826E0
	mov r0, #0x1c
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_02083B78: .word 0x00000B27
_02083B7C: .word 0x000005C8
_02083B80: .word 0x000005CC
_02083B84: .word 0x000005A4
	thumb_func_end sub_02083AD0

	thumb_func_start sub_02083B88
sub_02083B88: ; 0x02083B88
	push {r4, lr}
	ldr r1, _02083BC8 ; =0x00000B27
	add r4, r0, #0
	ldrb r2, [r4, r1]
	mov r0, #0x40
	bic r2, r0
	strb r2, [r4, r1]
	ldr r0, _02083BCC ; =0x000005CC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _02083BD0 ; =0x00000B29
	ldrb r1, [r4, r0]
	cmp r1, #6
	bhs _02083BAE
	add r0, r4, #0
	bl sub_0207F8F8
_02083BAE:
	ldr r1, _02083BC8 ; =0x00000B27
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_0207F8F8
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	pop {r4, pc}
	; .align 2, 0
_02083BC8: .word 0x00000B27
_02083BCC: .word 0x000005CC
_02083BD0: .word 0x00000B29
	thumb_func_end sub_02083B88

	thumb_func_start sub_02083BD4
sub_02083BD4: ; 0x02083BD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _02083D08 ; =0x00000B29
	add r6, r0, #0
	ldrb r1, [r6, r2]
	add r0, r2, #0
	sub r0, #0x19
	strb r1, [r6, r0]
	sub r0, r2, #2
	ldrb r0, [r6, r0]
	add r3, r2, #0
	sub r3, #0x13
	lsl r0, r0, #0x1a
	lsr r1, r0, #0x1a
	add r0, r2, #0
	sub r0, #0x18
	strb r1, [r6, r0]
	add r0, r2, #0
	mov r1, #1
	sub r0, #0x15
	strb r1, [r6, r0]
	mov r0, #0
	strb r0, [r6, r3]
	add r3, r2, #0
	sub r3, #0x14
	strb r0, [r6, r3]
	add r3, r2, #0
	sub r3, #0x19
	ldrb r3, [r6, r3]
	tst r3, r1
	beq _02083C18
	sub r2, #0x17
	strb r1, [r6, r2]
	b _02083C1C
_02083C18:
	sub r2, #0x17
	strb r0, [r6, r2]
_02083C1C:
	ldr r0, _02083D0C ; =0x00000B11
	mov r1, #1
	ldrb r2, [r6, r0]
	tst r2, r1
	beq _02083C28
	b _02083C2A
_02083C28:
	mov r1, #0
_02083C2A:
	add r0, r0, #2
	strb r1, [r6, r0]
	ldr r0, [r6, #0]
	mov r1, #2
	bl sub_02019FE4
	str r0, [sp, #0x14]
	ldr r0, [r6, #0]
	mov r1, #1
	bl sub_02019FE4
	mov r1, #0xb1
	lsl r1, r1, #4
	ldrb r3, [r6, r1]
	str r0, [sp, #0x10]
	add r1, r1, #1
	add r0, r3, #0
	ldrb r3, [r6, r1]
	mov r2, #0x2c
	mul r0, r2
	add r1, r3, #0
	add r3, r6, r0
	ldr r0, _02083D10 ; =0x00000719
	mul r1, r2
	ldrsb r2, [r3, r0]
	mov r4, #0
	str r2, [sp, #0xc]
	sub r2, r0, #1
	ldrsb r2, [r3, r2]
	str r2, [sp, #8]
	add r2, r6, r1
	ldrsb r1, [r2, r0]
	sub r0, r0, #1
	ldrsb r0, [r2, r0]
	str r1, [sp, #4]
	str r0, [sp]
	mov r0, #0x81
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #0x18]
	mov r0, #0x99
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #0x1c]
	mov r0, #0x8d
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #0x20]
	mov r0, #0xa5
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #0x24]
_02083C92:
	ldr r0, [sp, #0xc]
	lsl r5, r4, #5
	add r0, r0, r4
	lsl r1, r0, #5
	ldr r0, [sp, #8]
	mov r2, #0x20
	add r0, r0, r1
	lsl r7, r0, #1
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r0, r0, r5
	add r1, r1, r7
	bl sub_020D50B8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	add r0, r0, r5
	add r1, r1, r7
	mov r2, #0x20
	bl sub_020D50B8
	ldr r0, [sp, #4]
	mov r2, #0x20
	add r0, r0, r4
	lsl r1, r0, #5
	ldr r0, [sp]
	add r0, r0, r1
	lsl r7, r0, #1
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x14]
	add r0, r0, r5
	add r1, r1, r7
	bl sub_020D50B8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x10]
	add r0, r0, r5
	add r1, r1, r7
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _02083C92
	ldr r0, _02083D14 ; =0x000005C8
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
	ldr r0, _02083D18 ; =0x000005CC
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_02021CAC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02083D08: .word 0x00000B29
_02083D0C: .word 0x00000B11
_02083D10: .word 0x00000719
_02083D14: .word 0x000005C8
_02083D18: .word 0x000005CC
	thumb_func_end sub_02083BD4

	thumb_func_start sub_02083D1C
sub_02083D1C: ; 0x02083D1C
	push {r3, r4, r5, lr}
	mov r1, #0x81
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r2, _02083E70 ; =0x00000305
	add r4, r5, r1
	ldrb r1, [r4, r2]
	cmp r1, #4
	bls _02083D30
	b _02083E6C
_02083D30:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02083D3C: ; jump table
	.short _02083D46 - _02083D3C - 2 ; case 0
	.short _02083D56 - _02083D3C - 2 ; case 1
	.short _02083DA6 - _02083D3C - 2 ; case 2
	.short _02083DBA - _02083D3C - 2 ; case 3
	.short _02083E18 - _02083D3C - 2 ; case 4
_02083D46:
	mov r0, #0x6a
	lsl r0, r0, #4
	bl sub_02005748
	ldr r0, _02083E70 ; =0x00000305
	mov r1, #1
	strb r1, [r4, r0]
	b _02083E6C
_02083D56:
	add r1, r2, #1
	ldrb r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #1
	strb r3, [r4, r1]
	mov r1, #0
	bl sub_02083E8C
	add r0, r5, #0
	mov r1, #1
	bl sub_02083E8C
	ldr r2, _02083E74 ; =0x00000302
	add r0, r5, #0
	ldrb r2, [r4, r2]
	mov r1, #0
	bl sub_02083FDC
	ldr r2, _02083E78 ; =0x00000303
	add r0, r5, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	bl sub_02083FDC
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, _02083E7C ; =0x00000306
	ldrb r1, [r4, r0]
	cmp r1, #0x10
	bne _02083E6C
	mov r1, #2
	sub r0, r0, #1
	strb r1, [r4, r0]
	b _02083E6C
_02083DA6:
	bl sub_02084134
	mov r0, #0x6a
	lsl r0, r0, #4
	bl sub_02005748
	ldr r0, _02083E70 ; =0x00000305
	mov r1, #3
	strb r1, [r4, r0]
	b _02083E6C
_02083DBA:
	add r1, r2, #1
	ldrb r1, [r4, r1]
	sub r3, r1, #1
	add r1, r2, #1
	strb r3, [r4, r1]
	mov r1, #0
	bl sub_02083E8C
	add r0, r5, #0
	mov r1, #1
	bl sub_02083E8C
	ldr r2, _02083E74 ; =0x00000302
	add r0, r5, #0
	ldrb r3, [r4, r2]
	mov r2, #1
	mov r1, #0
	eor r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083FDC
	ldr r2, _02083E78 ; =0x00000303
	mov r1, #1
	ldrb r2, [r4, r2]
	add r0, r5, #0
	eor r2, r1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083FDC
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, _02083E7C ; =0x00000306
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _02083E6C
	mov r1, #4
	sub r0, r0, #1
	strb r1, [r4, r0]
	b _02083E6C
_02083E18:
	ldr r0, _02083E80 ; =0x000005A4
	sub r1, r2, #5
	ldr r0, [r5, r0]
	sub r2, r2, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldr r0, [r0, #0]
	bl sub_0207A184
	ldr r0, _02083E84 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #0xc1
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	ldr r1, _02083E88 ; =0x00000B27
	mov r0, #0x40
	ldrb r2, [r5, r1]
	bic r2, r0
	strb r2, [r5, r1]
	add r1, r1, #2
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_0207F8F8
	ldr r1, _02083E88 ; =0x00000B27
	add r0, r5, #0
	ldrb r1, [r5, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_0207F8F8
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #0
	bl sub_020826E0
	mov r0, #1
	pop {r3, r4, r5, pc}
_02083E6C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02083E70: .word 0x00000305
_02083E74: .word 0x00000302
_02083E78: .word 0x00000303
_02083E7C: .word 0x00000306
_02083E80: .word 0x000005A4
_02083E84: .word 0x000005C8
_02083E88: .word 0x00000B27
	thumb_func_end sub_02083D1C

	thumb_func_start sub_02083E8C
sub_02083E8C: ; 0x02083E8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0x81
	str r1, [sp, #0x1c]
	lsl r0, r0, #4
	ldr r1, [sp, #0x1c]
	add r4, r5, r0
	add r2, r4, r1
	mov r1, #3
	lsl r1, r1, #8
	ldrb r2, [r2, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	add r1, r0, #0
	sub r1, #0xf8
	ldrsb r7, [r2, r1]
	sub r0, #0xf7
	ldrb r6, [r2, r0]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	str r6, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r3, [sp, #0x20]
	mov r1, #2
	mov r2, #0
	bl sub_02019CB8
	str r6, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r3, [sp, #0x20]
	mov r1, #1
	mov r2, #0
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r1, r4, r0
	ldr r0, _02083FD4 ; =0x00000302
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _02083F5E
	add r0, r0, #4
	ldrb r2, [r4, r0]
	ldr r0, [sp, #0x1c]
	mov r3, #0x10
	add r7, r0, #0
	sub r0, r3, r2
	lsl r0, r0, #0x18
	mov r1, #0xc0
	lsr r0, r0, #0x18
	mul r7, r1
	str r0, [sp]
	mov r1, #6
	str r1, [sp, #4]
	add r0, r4, r7
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x20]
	mov r1, #2
	add r3, r6, #0
	bl sub_020198E8
	ldr r0, _02083FD8 ; =0x00000306
	mov r3, #0x10
	ldrb r2, [r4, r0]
	mov r1, #6
	sub r0, r3, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r1, #6
	add r0, r4, r0
	str r1, [sp, #4]
	add r0, r0, r7
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x20]
	mov r1, #1
	add r3, r6, #0
	bl sub_020198E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02083F5E:
	ldr r1, [sp, #0x1c]
	mov r2, #0xc0
	mul r2, r1
	str r2, [sp, #0x24]
	add r0, r0, #4
	ldrb r2, [r4, r0]
	mov r3, #0x10
	ldr r1, [sp, #0x24]
	sub r0, r3, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r1, r4, r1
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	add r2, r7, r2
	str r0, [sp, #0x18]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl sub_020198E8
	ldr r0, _02083FD8 ; =0x00000306
	ldrb r2, [r4, r0]
	mov r0, #0x10
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #6
	lsl r1, r0, #6
	add r3, r4, r1
	ldr r1, [sp, #0x24]
	add r2, r7, r2
	add r1, r3, r1
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x10
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0]
	mov r1, #1
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl sub_020198E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02083FD4: .word 0x00000302
_02083FD8: .word 0x00000306
	thumb_func_end sub_02083E8C

	thumb_func_start sub_02083FDC
sub_02083FDC: ; 0x02083FDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #4
	add r4, r1, #0
	add r1, r5, r0
	mov r0, #3
	lsl r0, r0, #8
	add r6, r1, r0
	ldrb r0, [r6, r4]
	add r7, r2, #0
	add r2, sp, #0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl sub_0200D50C
	cmp r7, #0
	ldr r0, _02084124 ; =0x0000071A
	bne _02084046
	ldrb r3, [r6, r4]
	mov r7, #0x2c
	add r2, r5, r0
	add r1, r3, #0
	mul r1, r7
	ldrsh r3, [r2, r1]
	sub r3, #8
	strh r3, [r2, r1]
	ldrb r3, [r6, r4]
	add r1, r0, #4
	add r2, r5, r1
	add r1, r3, #0
	mul r1, r7
	ldrsh r3, [r2, r1]
	add r0, #8
	add r0, r5, r0
	sub r3, #8
	strh r3, [r2, r1]
	ldrb r1, [r6, r4]
	add r2, r1, #0
	mul r2, r7
	ldrsh r1, [r0, r2]
	sub r1, #8
	strh r1, [r0, r2]
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r0, #8
	b _0208407E
_02084046:
	ldrb r3, [r6, r4]
	mov r7, #0x2c
	add r2, r5, r0
	add r1, r3, #0
	mul r1, r7
	ldrsh r3, [r2, r1]
	add r3, #8
	strh r3, [r2, r1]
	ldrb r3, [r6, r4]
	add r1, r0, #4
	add r2, r5, r1
	add r1, r3, #0
	mul r1, r7
	ldrsh r3, [r2, r1]
	add r0, #8
	add r0, r5, r0
	add r3, #8
	strh r3, [r2, r1]
	ldrb r1, [r6, r4]
	add r2, r1, #0
	mul r2, r7
	ldrsh r1, [r0, r2]
	add r1, #8
	strh r1, [r0, r2]
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #8
_0208407E:
	strh r0, [r1, #2]
	ldrb r1, [r6, r4]
	mov r0, #0x2c
	ldr r2, _02084128 ; =0x00000728
	mul r0, r1
	add r3, r5, r0
	add r1, r2, #0
	ldr r0, [r3, r2]
	sub r1, #0xe
	sub r2, #0xc
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl sub_0200D494
	ldrb r2, [r6, r4]
	mov r0, #0x2c
	ldr r3, _0208412C ; =0x0000071E
	add r1, r2, #0
	add r2, #0xa
	mul r1, r0
	lsl r0, r2, #2
	add r2, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	ldrsh r2, [r2, r3]
	bl sub_0200D494
	ldrb r2, [r6, r4]
	mov r0, #0x2c
	ldr r3, _02084130 ; =0x00000722
	add r1, r2, #0
	add r2, #0x10
	mul r1, r0
	lsl r0, r2, #2
	add r2, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	ldrsh r2, [r2, r3]
	bl sub_0200D494
	ldrb r2, [r6, r4]
	mov r0, #0x2c
	ldr r3, _02084130 ; =0x00000722
	add r1, r2, #0
	add r2, #0x16
	mul r1, r0
	lsl r0, r2, #2
	add r2, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	ldrsh r2, [r2, r3]
	add r1, #8
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl sub_0200D494
	ldrb r0, [r6, r4]
	add r3, sp, #0
	mov r2, #0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl sub_0200D494
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02084124: .word 0x0000071A
_02084128: .word 0x00000728
_0208412C: .word 0x0000071E
_02084130: .word 0x00000722
	thumb_func_end sub_02083FDC

	thumb_func_start sub_02084134
sub_02084134: ; 0x02084134
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #4
	add r4, r5, r0
	mov r0, #0xc
	mov r1, #0x2c
	bl sub_02018144
	add r7, r0, #0
	mov r0, #3
	lsl r0, r0, #8
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	add r3, r7, #0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02084410 ; =0x00000704
	mov r2, #5
	add r6, r1, r0
_0208415E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0208415E
	ldr r0, [r6, #0]
	mov r1, #3
	lsl r1, r1, #8
	str r0, [r3, #0]
	ldrb r0, [r4, r1]
	add r1, r1, #1
	ldrb r1, [r4, r1]
	mov r2, #0x2c
	add r3, r0, #0
	mul r3, r2
	mul r2, r1
	ldr r1, _02084410 ; =0x00000704
	add r0, r5, r3
	add r2, r5, r2
	add r6, r2, r1
	add r3, r0, r1
	mov r2, #5
_02084188:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02084188
	ldr r0, [r6, #0]
	add r6, r7, #0
	str r0, [r3, #0]
	ldr r0, _02084414 ; =0x00000301
	mov r2, #5
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02084410 ; =0x00000704
	add r3, r1, r0
_020841A6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020841A6
	ldr r0, [r6, #0]
	add r1, r7, #0
	str r0, [r3, #0]
	mov r0, #0xc
	bl sub_02018238
	mov r1, #3
	lsl r1, r1, #8
	ldrb r3, [r4, r1]
	ldr r0, _02084418 ; =0x0000071A
	add r2, r5, r0
	mov r0, #0x2c
	add r7, r3, #0
	mul r7, r0
	ldrsh r3, [r2, r7]
	str r3, [sp]
	add r3, r1, #1
	ldrb r3, [r4, r3]
	add r6, r3, #0
	mul r6, r0
	ldr r3, _02084418 ; =0x0000071A
	add r6, r5, r6
	ldrsh r3, [r6, r3]
	strh r3, [r2, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r6, r5, r3
	ldr r3, [sp]
	ldr r2, _02084418 ; =0x0000071A
	strh r3, [r6, r2]
	add r2, r2, #2
	add r3, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsh r2, [r3, r7]
	str r2, [sp, #4]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r6, r2, #0
	mul r6, r0
	add r2, r5, r6
	ldr r6, _02084418 ; =0x0000071A
	add r6, r6, #2
	ldrsh r2, [r2, r6]
	strh r2, [r3, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r2, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	add r6, r3, #2
	ldr r3, [sp, #4]
	strh r3, [r2, r6]
	ldr r2, _02084418 ; =0x0000071A
	add r2, r2, #4
	add r3, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsh r2, [r3, r7]
	str r2, [sp, #8]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r6, r2, #0
	mul r6, r0
	add r2, r5, r6
	ldr r6, _02084418 ; =0x0000071A
	add r6, r6, #4
	ldrsh r2, [r2, r6]
	strh r2, [r3, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r2, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	add r6, r3, #4
	ldr r3, [sp, #8]
	strh r3, [r2, r6]
	ldr r2, _02084418 ; =0x0000071A
	add r2, r2, #6
	add r3, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsh r2, [r3, r7]
	str r2, [sp, #0xc]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r6, r2, #0
	mul r6, r0
	add r2, r5, r6
	ldr r6, _02084418 ; =0x0000071A
	add r6, r6, #6
	ldrsh r2, [r2, r6]
	strh r2, [r3, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r2, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	add r6, r3, #6
	ldr r3, [sp, #0xc]
	strh r3, [r2, r6]
	ldrb r3, [r4, r1]
	ldr r2, _02084418 ; =0x0000071A
	add r2, #8
	add r7, r3, #0
	add r2, r5, r2
	mul r7, r0
	ldrsh r3, [r2, r7]
	str r3, [sp, #0x10]
	add r3, r1, #1
	ldrb r3, [r4, r3]
	add r6, r3, #0
	ldr r3, _02084418 ; =0x0000071A
	mul r6, r0
	add r6, r5, r6
	add r3, #8
	ldrsh r3, [r6, r3]
	strh r3, [r2, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r6, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	ldr r2, [sp, #0x10]
	add r3, #8
	strh r2, [r6, r3]
	ldrb r3, [r4, r1]
	ldr r2, _02084418 ; =0x0000071A
	add r2, #0xa
	add r7, r3, #0
	add r2, r5, r2
	mul r7, r0
	ldrsh r3, [r2, r7]
	str r3, [sp, #0x14]
	add r3, r1, #1
	ldrb r3, [r4, r3]
	add r6, r3, #0
	ldr r3, _02084418 ; =0x0000071A
	mul r6, r0
	add r6, r5, r6
	add r3, #0xa
	ldrsh r3, [r6, r3]
	strh r3, [r2, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r6, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	ldr r2, [sp, #0x14]
	add r3, #0xa
	strh r2, [r6, r3]
	ldr r2, _02084418 ; =0x0000071A
	sub r2, r2, #2
	add r3, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsb r2, [r3, r7]
	str r2, [sp, #0x18]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r6, r2, #0
	mul r6, r0
	add r2, r5, r6
	ldr r6, _02084418 ; =0x0000071A
	sub r6, r6, #2
	ldrsb r2, [r2, r6]
	strb r2, [r3, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	mul r3, r0
	add r2, r5, r3
	ldr r3, _02084418 ; =0x0000071A
	sub r6, r3, #2
	ldr r3, [sp, #0x18]
	strb r3, [r2, r6]
	ldr r2, _02084418 ; =0x0000071A
	sub r2, r2, #1
	add r6, r5, r2
	ldrb r2, [r4, r1]
	add r7, r2, #0
	mul r7, r0
	ldrsb r2, [r6, r7]
	mov ip, r2
	add r2, r1, #1
	ldrb r2, [r4, r2]
	add r3, r2, #0
	ldr r2, _02084418 ; =0x0000071A
	mul r3, r0
	add r3, r5, r3
	sub r2, r2, #1
	ldrsb r2, [r3, r2]
	strb r2, [r6, r7]
	add r2, r1, #1
	ldrb r2, [r4, r2]
	mul r0, r2
	ldr r2, _02084418 ; =0x0000071A
	add r0, r5, r0
	sub r3, r2, #1
	mov r2, ip
	strb r2, [r0, r3]
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020821F8
	ldr r1, _02084414 ; =0x00000301
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl sub_020821F8
	mov r1, #3
	lsl r1, r1, #8
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl sub_020822F4
	ldr r1, _02084414 ; =0x00000301
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl sub_020822F4
	add r0, r5, #0
	mov r1, #0
	bl sub_02084420
	add r0, r5, #0
	mov r1, #1
	bl sub_02084420
	mov r0, #3
	lsl r0, r0, #8
	ldrb r1, [r4, r0]
	mov r2, #0x2c
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	ldr r2, _0208441C ; =0x00000712
	ldrh r2, [r3, r2]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	ldr r0, _02084414 ; =0x00000301
	mov r2, #0x2c
	ldrb r1, [r4, r0]
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	ldr r2, _0208441C ; =0x00000712
	ldrh r2, [r3, r2]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	mov r0, #3
	lsl r0, r0, #8
	ldrb r1, [r4, r0]
	mov r2, #0x2c
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	mov r2, #0x71
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	bl sub_02083040
	ldr r0, _02084414 ; =0x00000301
	mov r2, #0x2c
	ldrb r1, [r4, r0]
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	mov r2, #0x71
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	bl sub_02083040
	mov r1, #3
	lsl r1, r1, #8
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl sub_02083104
	ldr r1, _02084414 ; =0x00000301
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl sub_02083104
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02084410: .word 0x00000704
_02084414: .word 0x00000301
_02084418: .word 0x0000071A
_0208441C: .word 0x00000712
	thumb_func_end sub_02084134

	thumb_func_start sub_02084420
sub_02084420: ; 0x02084420
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x81
	add r6, r0, #0
	lsl r1, r1, #4
	add r4, r6, r1
	mov r1, #0xc0
	mul r1, r7
	add r5, r4, r1
	bl sub_0207F248
	add r3, r0, #0
	mov r0, #3
	add r1, r4, r7
	lsl r0, r0, #8
	ldrb r1, [r1, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r6, r0
	ldr r0, _020844A8 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02084478
	mov r3, #0xf
	mov r1, #0
	lsl r3, r3, #0xc
	mov r4, #0x17
_02084456:
	lsl r0, r1, #1
	add r2, r5, r0
	add r2, #0x6c
	ldrh r2, [r2]
	add r0, r5, r0
	add r0, #0x6c
	and r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	orr r2, r4
	strh r2, [r0]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #9
	blo _02084456
	pop {r3, r4, r5, r6, r7, pc}
_02084478:
	mov r6, #0xf
	ldr r0, _020844AC ; =0x00000FFF
	mov r4, #0
	lsl r6, r6, #0xc
_02084480:
	lsl r2, r4, #1
	add r1, r5, r2
	add r1, #0x6c
	ldrh r1, [r1]
	ldrh r7, [r3, r2]
	and r1, r6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	and r7, r0
	orr r7, r1
	add r1, r5, r2
	add r1, #0x6c
	strh r7, [r1]
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, #9
	blo _02084480
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020844A8: .word 0x00000714
_020844AC: .word 0x00000FFF
	thumb_func_end sub_02084420

	thumb_func_start sub_020844B0
sub_020844B0: ; 0x020844B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	add r6, r1, #0
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0208337C
	ldr r0, _02084598 ; =0x000005A4
	mov r4, #0
	ldr r0, [r5, r0]
	add r1, r0, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	beq _02084536
_020844DA:
	add r2, r0, r4
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r2, #0
	bne _0208452C
	ldr r1, _0208459C ; =0x00000B29
	add r0, r0, r4
	ldrb r2, [r5, r1]
	add r0, #0x2c
	add r2, r2, #1
	strb r2, [r0]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_02082508
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020845A0 ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	ldr r0, _02084598 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	sub r0, r0, #1
	cmp r4, r0
	bne _02084526
	add r0, r5, #0
	mov r1, #6
	bl sub_0207FD68
_02084526:
	mov r0, #1
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
_0208452C:
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, r1
	blo _020844DA
_02084536:
	cmp r1, #5
	bhi _0208458C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02084546: ; jump table
	.short _0208458C - _02084546 - 2 ; case 0
	.short _02084552 - _02084546 - 2 ; case 1
	.short _0208455E - _02084546 - 2 ; case 2
	.short _0208456A - _02084546 - 2 ; case 3
	.short _02084576 - _02084546 - 2 ; case 4
	.short _02084582 - _02084546 - 2 ; case 5
_02084552:
	add r0, r5, #0
	mov r1, #0x7b
	mov r2, #1
	bl sub_02082708
	b _0208458C
_0208455E:
	add r0, r5, #0
	mov r1, #0x64
	mov r2, #1
	bl sub_02082708
	b _0208458C
_0208456A:
	add r0, r5, #0
	mov r1, #0x7c
	mov r2, #1
	bl sub_02082708
	b _0208458C
_02084576:
	add r0, r5, #0
	mov r1, #0x7d
	mov r2, #1
	bl sub_02082708
	b _0208458C
_02084582:
	add r0, r5, #0
	mov r1, #0x7e
	mov r2, #1
	bl sub_02082708
_0208458C:
	ldr r0, _020845A4 ; =0x00000B26
	mov r1, #0x17
	strb r1, [r5, r0]
	mov r0, #0x18
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02084598: .word 0x000005A4
_0208459C: .word 0x00000B29
_020845A0: .word 0x000005C8
_020845A4: .word 0x00000B26
	thumb_func_end sub_020844B0

	thumb_func_start sub_020845A8
sub_020845A8: ; 0x020845A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020845E0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _020845DA
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020845E4 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r4, pc}
_020845DA:
	mov r0, #0x17
	pop {r4, pc}
	nop
_020845E0: .word 0x021BF67C
_020845E4: .word 0x000005C8
	thumb_func_end sub_020845A8

	thumb_func_start sub_020845E8
sub_020845E8: ; 0x020845E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _020846BC ; =0x000005A4
	str r1, [sp]
	ldr r1, [r5, r0]
	mov r4, #0
	add r0, r1, #0
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x1c
	beq _02084668
	ldr r0, _020846C0 ; =0x00000B29
	ldrb r0, [r5, r0]
	add r0, r0, #1
_02084606:
	add r3, r1, r4
	add r3, #0x2c
	ldrb r3, [r3]
	cmp r0, r3
	bne _0208465E
	add r0, r1, r4
	mov r2, #0
	add r0, #0x2c
	strb r2, [r0]
	ldr r0, _020846BC ; =0x000005A4
	ldr r6, [r5, r0]
	add r0, r6, #0
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	sub r0, r0, #1
	cmp r4, r0
	bge _02084668
	ldr r0, _020846BC ; =0x000005A4
	add r1, r0, #0
_02084630:
	add r3, r6, r4
	add r3, #0x2d
	ldrb r3, [r3]
	add r6, r6, r4
	add r6, #0x2c
	strb r3, [r6]
	ldr r3, [r5, r0]
	add r3, r3, r4
	add r3, #0x2d
	strb r2, [r3]
	add r3, r4, #1
	lsl r3, r3, #0x18
	ldr r6, [r5, r1]
	lsr r4, r3, #0x18
	add r3, r6, #0
	add r3, #0x32
	ldrb r3, [r3]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	sub r3, r3, #1
	cmp r4, r3
	blt _02084630
	b _02084668
_0208465E:
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	cmp r4, r2
	blo _02084606
_02084668:
	ldr r6, _020846C4 ; =0x0000072D
	mov r4, #0
	mov r7, #0x2c
_0208466E:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldrb r0, [r0, r6]
	cmp r0, #0
	beq _02084682
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082508
_02084682:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0208466E
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0208337C
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _020846C8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020846BC: .word 0x000005A4
_020846C0: .word 0x00000B29
_020846C4: .word 0x0000072D
_020846C8: .word 0x000005C8
	thumb_func_end sub_020845E8

	thumb_func_start sub_020846CC
sub_020846CC: ; 0x020846CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020846F4 ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x23
	strb r1, [r0]
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _020846F8 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020846F4: .word 0x000005A4
_020846F8: .word 0x000006FC
	thumb_func_end sub_020846CC

	thumb_func_start sub_020846FC
sub_020846FC: ; 0x020846FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02084724 ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	add r0, #0x23
	strb r1, [r0]
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _02084728 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02084724: .word 0x000005A4
_02084728: .word 0x000006FC
	thumb_func_end sub_020846FC

	thumb_func_start sub_0208472C
sub_0208472C: ; 0x0208472C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02084758 ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	add r0, #0x23
	strb r1, [r0]
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0208475C ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	mov r0, #0x20
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_02084758: .word 0x000005A4
_0208475C: .word 0x000006FC
	thumb_func_end sub_0208472C

	thumb_func_start sub_02084760
sub_02084760: ; 0x02084760
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0208337C
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_02084780
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02084760

	thumb_func_start sub_02084780
sub_02084780: ; 0x02084780
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020847F8 ; =0x000005A4
	ldr r1, _020847FC ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa2
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	ldr r2, _02084800 ; =0x0000069C
	bne _020847C4
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	mov r1, #0x81
	bl sub_0200B1B8
	ldr r0, _020847FC ; =0x00000B29
	ldrb r0, [r4, r0]
	add r0, #0x16
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	b _020847D6
_020847C4:
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	mov r1, #0x82
	bl sub_0200B1B8
	ldr r0, _020847FC ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
_020847D6:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020847F8 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02084804 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r4, pc}
	nop
_020847F8: .word 0x000005A4
_020847FC: .word 0x00000B29
_02084800: .word 0x0000069C
_02084804: .word 0x00000B26
	thumb_func_end sub_02084780

	thumb_func_start sub_02084808
sub_02084808: ; 0x02084808
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r0, #0
	ldr r1, _0208489C ; =0x000005A4
	mov r0, #1
	ldr r1, [r4, r1]
	add r1, #0x23
	ldrb r1, [r1]
	sub r1, #0xb
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207070C
	add r1, r0, #0
	beq _02084830
	ldr r0, _0208489C ; =0x000005A4
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x18]
	blx r1
	b _02084832
_02084830:
	mov r0, #1
_02084832:
	cmp r0, #4
	bhi _02084874
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02084842: ; jump table
	.short _0208484C - _02084842 - 2 ; case 0
	.short _02084866 - _02084842 - 2 ; case 1
	.short _0208486A - _02084842 - 2 ; case 2
	.short _0208486E - _02084842 - 2 ; case 3
	.short _02084872 - _02084842 - 2 ; case 4
_0208484C:
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _020848A0 ; =0x000006FC
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x20
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
_02084866:
	mov r5, #0x68
	b _02084874
_0208486A:
	mov r5, #0x4c
	b _02084874
_0208486E:
	mov r5, #0xc4
	b _02084874
_02084872:
	mov r5, #0x66
_02084874:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0208337C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_02082708
	ldr r0, _020848A4 ; =0x00000B26
	mov r1, #3
	strb r1, [r4, r0]
	mov r0, #0x18
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208489C: .word 0x000005A4
_020848A0: .word 0x000006FC
_020848A4: .word 0x00000B26
	thumb_func_end sub_02084808

	thumb_func_start sub_020848A8
sub_020848A8: ; 0x020848A8
	ldr r2, _020848B8 ; =0x000005A4
	mov r3, #0xb
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020848BC ; =sub_02084808
	bx r3
	nop
_020848B8: .word 0x000005A4
_020848BC: .word sub_02084808
	thumb_func_end sub_020848A8

	thumb_func_start sub_020848C0
sub_020848C0: ; 0x020848C0
	ldr r2, _020848D0 ; =0x000005A4
	mov r3, #0x10
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020848D4 ; =sub_02084808
	bx r3
	nop
_020848D0: .word 0x000005A4
_020848D4: .word sub_02084808
	thumb_func_end sub_020848C0

	thumb_func_start sub_020848D8
sub_020848D8: ; 0x020848D8
	ldr r2, _020848E8 ; =0x000005A4
	mov r3, #0xe
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020848EC ; =sub_02084808
	bx r3
	nop
_020848E8: .word 0x000005A4
_020848EC: .word sub_02084808
	thumb_func_end sub_020848D8

	thumb_func_start sub_020848F0
sub_020848F0: ; 0x020848F0
	ldr r2, _02084900 ; =0x000005A4
	mov r3, #0xd
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _02084904 ; =sub_02084808
	bx r3
	nop
_02084900: .word 0x000005A4
_02084904: .word sub_02084808
	thumb_func_end sub_020848F0

	thumb_func_start sub_02084908
sub_02084908: ; 0x02084908
	ldr r2, _02084918 ; =0x000005A4
	mov r3, #0xf
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _0208491C ; =sub_02084808
	bx r3
	nop
_02084918: .word 0x000005A4
_0208491C: .word sub_02084808
	thumb_func_end sub_02084908

	thumb_func_start sub_02084920
sub_02084920: ; 0x02084920
	ldr r2, _02084930 ; =0x000005A4
	mov r3, #0x12
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _02084934 ; =sub_02084808
	bx r3
	nop
_02084930: .word 0x000005A4
_02084934: .word sub_02084808
	thumb_func_end sub_02084920

	thumb_func_start sub_02084938
sub_02084938: ; 0x02084938
	ldr r2, _02084948 ; =0x000005A4
	mov r3, #0xc
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _0208494C ; =sub_02084808
	bx r3
	nop
_02084948: .word 0x000005A4
_0208494C: .word sub_02084808
	thumb_func_end sub_02084938

	thumb_func_start sub_02084950
sub_02084950: ; 0x02084950
	ldr r2, _02084960 ; =0x000005A4
	mov r3, #0x11
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _02084964 ; =sub_02084808
	bx r3
	nop
_02084960: .word 0x000005A4
_02084964: .word sub_02084808
	thumb_func_end sub_02084950

	thumb_func_start sub_02084968
sub_02084968: ; 0x02084968
	ldr r2, _02084978 ; =0x000005A4
	mov r3, #0x13
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _0208497C ; =sub_02084808
	bx r3
	nop
_02084978: .word 0x000005A4
_0208497C: .word sub_02084808
	thumb_func_end sub_02084968

	thumb_func_start sub_02084980
sub_02084980: ; 0x02084980
	ldr r2, _02084990 ; =0x000005A4
	mov r3, #0x14
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _02084994 ; =sub_02084808
	bx r3
	nop
_02084990: .word 0x000005A4
_02084994: .word sub_02084808
	thumb_func_end sub_02084980

	thumb_func_start sub_02084998
sub_02084998: ; 0x02084998
	ldr r2, _020849A8 ; =0x000005A4
	mov r3, #0x15
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020849AC ; =sub_02084808
	bx r3
	nop
_020849A8: .word 0x000005A4
_020849AC: .word sub_02084808
	thumb_func_end sub_02084998

	thumb_func_start sub_020849B0
sub_020849B0: ; 0x020849B0
	ldr r2, _020849C0 ; =0x000005A4
	mov r3, #0x16
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020849C4 ; =sub_02084808
	bx r3
	nop
_020849C0: .word 0x000005A4
_020849C4: .word sub_02084808
	thumb_func_end sub_020849B0

	thumb_func_start sub_020849C8
sub_020849C8: ; 0x020849C8
	ldr r2, _020849D8 ; =0x000005A4
	mov r3, #0x17
	ldr r2, [r0, r2]
	add r2, #0x23
	strb r3, [r2]
	ldr r3, _020849DC ; =sub_02084808
	bx r3
	nop
_020849D8: .word 0x000005A4
_020849DC: .word sub_02084808
	thumb_func_end sub_020849C8

	thumb_func_start sub_020849E0
sub_020849E0: ; 0x020849E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02084A18
	str r0, [r5, #0]
	cmp r0, #0x1e
	bne _020849F6
	ldr r0, _020849F8 ; =0x00000B32
	mov r1, #0xd
	strh r1, [r4, r0]
_020849F6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020849F8: .word 0x00000B32
	thumb_func_end sub_020849E0

	thumb_func_start sub_020849FC
sub_020849FC: ; 0x020849FC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02084A18
	str r0, [r5, #0]
	cmp r0, #0x1e
	bne _02084A12
	ldr r0, _02084A14 ; =0x00000B32
	mov r1, #0xe
	strh r1, [r4, r0]
_02084A12:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02084A14: .word 0x00000B32
	thumb_func_end sub_020849FC

	thumb_func_start sub_02084A18
sub_02084A18: ; 0x02084A18
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0208337C
	ldr r0, _02084B0C ; =0x00000B29
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02084B10 ; =0x0000070C
	ldrh r0, [r1, r0]
	mov r1, #5
	bl sub_020E1F6C
	ldr r1, _02084B14 ; =0x00000B2C
	strh r0, [r4, r1]
	sub r0, r1, #3
	ldrb r2, [r4, r0]
	mov r0, #0x2c
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02084B18 ; =0x0000070A
	ldrh r2, [r2, r0]
	ldrh r0, [r4, r1]
	cmp r2, r0
	bhi _02084A72
	add r0, r4, #0
	mov r1, #0x8a
	mov r2, #1
	bl sub_02082708
	ldr r0, _02084B1C ; =0x00000B26
	mov r1, #3
	strb r1, [r4, r0]
	add sp, #4
	mov r0, #0x18
	pop {r3, r4, pc}
_02084A72:
	sub r0, r1, #5
	ldrb r2, [r4, r0]
	mov r0, #0x40
	orr r2, r0
	sub r0, r1, #5
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	mov r2, #0x3f
	bic r0, r2
	sub r2, r1, #3
	ldrb r3, [r4, r2]
	mov r2, #0x3f
	and r2, r3
	orr r2, r0
	sub r0, r1, #5
	strb r2, [r4, r0]
	ldr r0, _02084B20 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _02084B20 ; =0x000005C8
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D50C
	ldr r0, _02084B24 ; =0x000005CC
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, _02084B28 ; =0x000005A4
	ldr r1, _02084B2C ; =0x00000B27
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	add r0, #0x21
	ldrb r0, [r0]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _02084B24 ; =0x000005CC
	add r1, r1, #2
	ldr r0, [r4, r0]
	bl sub_02021D6C
	ldr r0, _02084B24 ; =0x000005CC
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r1, _02084B2C ; =0x00000B27
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_0207F8F8
	add r0, r4, #0
	mov r1, #0x24
	mov r2, #1
	bl sub_020826E0
	ldr r0, _02084B30 ; =0x00000B2E
	mov r1, #0
	strh r1, [r4, r0]
	mov r0, #0x1e
	add sp, #4
	pop {r3, r4, pc}
	nop
_02084B0C: .word 0x00000B29
_02084B10: .word 0x0000070C
_02084B14: .word 0x00000B2C
_02084B18: .word 0x0000070A
_02084B1C: .word 0x00000B26
_02084B20: .word 0x000005C8
_02084B24: .word 0x000005CC
_02084B28: .word 0x000005A4
_02084B2C: .word 0x00000B27
_02084B30: .word 0x00000B2E
	thumb_func_end sub_02084A18

	thumb_func_start sub_02084B34
sub_02084B34: ; 0x02084B34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02084B68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r1, r0
	beq _02084B64
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _02084B6C ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	mov r0, #1
_02084B64:
	pop {r4, pc}
	nop
_02084B68: .word 0x021BF67C
_02084B6C: .word 0x000005C8
	thumb_func_end sub_02084B34

	.rodata


	.global Unk_020F2458
Unk_020F2458: ; 0x020F2458
	.incbin "incbin/arm9_rodata.bin", 0xD818, 0x80

