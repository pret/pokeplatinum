	.include "macros/function.inc"
	.include "include/unk_020393C8.inc"

	

	.text


	thumb_func_start sub_020393C8
sub_020393C8: ; 0x020393C8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r2, #7
	add r6, r3, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	lsl r2, r2, #6
	add r3, r4, #0
	bl sub_020394D0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	bl sub_02039530
	add r0, r4, #0
	mov r1, #0x20
	bl sub_02018184
	add r4, r0, #0
	ldr r0, _02039424 ; =sub_02039428
	add r1, r4, #0
	mov r2, #5
	bl sub_0200DA3C
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	strh r6, [r4, #0xe]
	mov r1, #0
	str r1, [r4, #0]
	mov r0, #3
	str r0, [r4, #4]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x10]
	str r1, [r4, #8]
	strb r0, [r4, #0x10]
	strb r1, [r4, #0x12]
	mov r0, #7
	strb r1, [r4, #0x11]
	lsl r0, r0, #0x18
	str r0, [r4, #0x1c]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02039424: .word sub_02039428
	thumb_func_end sub_020393C8

	thumb_func_start sub_02039428
sub_02039428: ; 0x02039428
	ldr r3, _02039430 ; =sub_02039614
	add r0, r1, #0
	bx r3
	nop
_02039430: .word sub_02039614
	thumb_func_end sub_02039428

	thumb_func_start sub_02039434
sub_02039434: ; 0x02039434
	cmp r1, #4
	bge _0203943E
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
_0203943E:
	bx lr
	thumb_func_end sub_02039434

	thumb_func_start sub_02039440
sub_02039440: ; 0x02039440
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0200DA58
	mov r0, #7
	ldr r2, _0203946C ; =0x40000200
	lsl r0, r0, #0x18
	str r2, [r0, #0]
	mov r1, #0
	strh r1, [r0, #4]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _02039462
	ldr r0, _02039470 ; =0x07000400
	str r2, [r0, #0]
	strh r1, [r0, #4]
_02039462:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	nop
_0203946C: .word 0x40000200
_02039470: .word 0x07000400
	thumb_func_end sub_02039440

	thumb_func_start sub_02039474
sub_02039474: ; 0x02039474
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r2, #7
	ldrb r1, [r5, #0x10]
	mov r0, #2
	lsl r2, r2, #6
	add r3, r6, #0
	bl sub_020394D0
	ldrb r1, [r5, #0x10]
	mov r0, #2
	add r2, r6, #0
	bl sub_02039530
	cmp r4, #0
	beq _0203949C
	mov r0, #1
	b _0203949E
_0203949C:
	mov r0, #2
_0203949E:
	strb r0, [r5, #0x11]
	mov r0, #1
	strb r0, [r5, #0x12]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02039474

	thumb_func_start sub_020394A8
sub_020394A8: ; 0x020394A8
	push {r3, lr}
	mov r1, #0x96
	lsl r1, r1, #2
	bl sub_02018184
	str r0, [sp]
	ldr r0, _020394CC ; =0x02100A4C
	add r1, sp, #0
	bl sub_02017A94
	mov r1, #0x96
	ldr r0, [sp]
	lsl r1, r1, #2
	bl DC_FlushRange
	ldr r0, [sp]
	pop {r3, pc}
	nop
_020394CC: .word 0x02100A4C
	thumb_func_end sub_020394A8

	thumb_func_start sub_020394D0
sub_020394D0: ; 0x020394D0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x96
	add r5, r0, #0
	add r0, r3, #0
	lsl r1, r1, #2
	add r4, r2, #0
	bl sub_02018184
	str r0, [sp, #4]
	cmp r0, #0
	beq _02039526
	ldr r0, _0203952C ; =0x02100A4C
	add r1, sp, #4
	bl sub_02017A94
	mov r1, #0x96
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	bl DC_FlushRange
	ldr r0, [sp, #4]
	add r1, sp, #0
	bl NNS_G2dGetUnpackedPaletteData
	cmp r5, #1
	bne _02039514
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadOBJPltt
	b _02039520
_02039514:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_02039520:
	ldr r0, [sp, #4]
	bl sub_020181C4
_02039526:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0203952C: .word 0x02100A4C
	thumb_func_end sub_020394D0

	thumb_func_start sub_02039530
sub_02039530: ; 0x02039530
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x96
	add r5, r0, #0
	add r0, r2, #0
	lsl r1, r1, #2
	bl sub_02018184
	str r0, [sp, #4]
	cmp r0, #0
	beq _020395F4
	cmp r4, #0
	add r1, sp, #4
	beq _02039556
	ldr r0, _020395F8 ; =0x02100A5C
	bl sub_02017A94
	b _0203955C
_02039556:
	ldr r0, _020395FC ; =0x02100A70
	bl sub_02017A94
_0203955C:
	mov r1, #0x96
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	bl DC_FlushRange
	ldr r0, [sp, #4]
	add r1, sp, #0
	bl NNS_G2dGetUnpackedBGCharacterData
	cmp r5, #1
	bne _02039584
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r0, _02039600 ; =0x00300010
	add r4, r1, #0
	and r4, r0
	bl GX_GetBankForOBJ
	b _02039592
_02039584:
	ldr r0, _02039604 ; =0x04001000
	ldr r1, [r0, #0]
	ldr r0, _02039600 ; =0x00300010
	add r4, r1, #0
	and r4, r0
	bl GX_GetBankForSubOBJ
_02039592:
	cmp r4, #0x10
	beq _0203959E
	ldr r1, _02039608 ; =0x00200010
	cmp r4, r1
	beq _020395B2
	b _020395CC
_0203959E:
	cmp r0, #0x40
	beq _020395A6
	cmp r0, #0x20
	bne _020395AC
_020395A6:
	mov r1, #0x3e
	lsl r1, r1, #8
	b _020395D0
_020395AC:
	mov r1, #0x7e
	lsl r1, r1, #8
	b _020395D0
_020395B2:
	cmp r0, #0x30
	beq _020395BA
	cmp r0, #0x50
	bne _020395BE
_020395BA:
	ldr r1, _0203960C ; =0x00013E00
	b _020395D0
_020395BE:
	cmp r0, #0x10
	bne _020395C8
	mov r1, #0xfe
	lsl r1, r1, #8
	b _020395D0
_020395C8:
	ldr r1, _02039610 ; =0x0001FE00
	b _020395D0
_020395CC:
	mov r1, #0xfe
	lsl r1, r1, #8
_020395D0:
	cmp r5, #1
	bne _020395E2
	ldr r0, [sp]
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r2, r2, #8
	bl GX_LoadOBJ
	b _020395EE
_020395E2:
	ldr r0, [sp]
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r2, r2, #8
	bl GXS_LoadOBJ
_020395EE:
	ldr r0, [sp, #4]
	bl sub_020181C4
_020395F4:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020395F8: .word 0x02100A5C
_020395FC: .word 0x02100A70
_02039600: .word 0x00300010
_02039604: .word 0x04001000
_02039608: .word 0x00200010
_0203960C: .word 0x00013E00
_02039610: .word 0x0001FE00
	thumb_func_end sub_02039530

	thumb_func_start sub_02039614
sub_02039614: ; 0x02039614
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x11]
	cmp r0, #1
	beq _02039624
	cmp r0, #2
	beq _0203963A
	b _02039650
_02039624:
	ldr r0, _02039708 ; =0x04000304
	ldrh r1, [r0]
	lsr r0, r0, #0xb
	and r0, r1
	asr r0, r0, #0xf
	cmp r0, #1
	bne _02039636
	mov r6, #1
	b _02039652
_02039636:
	mov r6, #2
	b _02039652
_0203963A:
	ldr r0, _02039708 ; =0x04000304
	ldrh r1, [r0]
	lsr r0, r0, #0xb
	and r0, r1
	asr r0, r0, #0xf
	cmp r0, #1
	bne _0203964C
	mov r6, #2
	b _02039652
_0203964C:
	mov r6, #1
	b _02039652
_02039650:
	mov r6, #1
_02039652:
	ldr r4, [r5, #4]
	cmp r6, #1
	bne _0203966A
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r0, _0203970C ; =0x00300010
	add r7, r1, #0
	and r7, r0
	bl GX_GetBankForOBJ
	b _02039678
_0203966A:
	ldr r0, _02039710 ; =0x04001000
	ldr r1, [r0, #0]
	ldr r0, _0203970C ; =0x00300010
	add r7, r1, #0
	and r7, r0
	bl GX_GetBankForSubOBJ
_02039678:
	cmp r7, #0x10
	beq _02039684
	ldr r1, _02039714 ; =0x00200010
	cmp r7, r1
	beq _020396A0
	b _020396C4
_02039684:
	cmp r0, #0x40
	beq _0203968C
	cmp r0, #0x20
	bne _02039696
_0203968C:
	mov r0, #0x1f
	lsl r1, r4, #2
	lsl r0, r0, #4
	add r1, r1, r0
	b _020396CC
_02039696:
	mov r0, #0x3f
	lsl r1, r4, #2
	lsl r0, r0, #4
	add r1, r1, r0
	b _020396CC
_020396A0:
	cmp r0, #0x30
	beq _020396A8
	cmp r0, #0x50
	bne _020396B0
_020396A8:
	mov r0, #0x9f
	lsl r0, r0, #2
	add r1, r4, r0
	b _020396CC
_020396B0:
	cmp r0, #0x10
	bne _020396BC
	mov r0, #0x7f
	lsl r0, r0, #2
	add r1, r4, r0
	b _020396CC
_020396BC:
	mov r0, #0xff
	lsl r0, r0, #2
	add r1, r4, r0
	b _020396CC
_020396C4:
	mov r0, #0xfe
	lsl r1, r4, #1
	lsl r0, r0, #2
	add r1, r1, r0
_020396CC:
	cmp r6, #1
	bne _020396D6
	mov r2, #7
	lsl r2, r2, #0x18
	b _020396D8
_020396D6:
	ldr r2, _02039718 ; =0x07000400
_020396D8:
	ldrh r3, [r5, #0xe]
	ldrh r0, [r5, #0xc]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	mov r3, #1
	lsl r0, r0, #0x17
	lsl r3, r3, #0x1e
	lsr r0, r0, #7
	orr r3, r4
	orr r0, r3
	str r0, [r2, #0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	orr r0, r1
	strh r0, [r2, #4]
	ldr r1, [r5, #0x1c]
	cmp r2, r1
	beq _02039706
	ldr r0, _0203971C ; =0x40000200
	str r0, [r1, #0]
	mov r0, #0
	strh r0, [r1, #4]
	str r2, [r5, #0x1c]
_02039706:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02039708: .word 0x04000304
_0203970C: .word 0x00300010
_02039710: .word 0x04001000
_02039714: .word 0x00200010
_02039718: .word 0x07000400
_0203971C: .word 0x40000200
	thumb_func_end sub_02039614

	thumb_func_start sub_02039720
sub_02039720: ; 0x02039720
	push {r3, lr}
	ldr r0, _02039730 ; =0x021C07D8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203972E
	bl sub_02039614
_0203972E:
	pop {r3, pc}
	; .align 2, 0
_02039730: .word 0x021C07D8
	thumb_func_end sub_02039720

	thumb_func_start sub_02039734
sub_02039734: ; 0x02039734
	push {r4, lr}
	mov r4, #0
	bl sub_020389B8
	cmp r0, #0
	beq _02039742
	mov r4, #1
_02039742:
	mov r0, #0xf0
	mov r1, #0
	add r2, r4, #0
	mov r3, #1
	bl sub_02039750
	pop {r4, pc}
	thumb_func_end sub_02039734

	thumb_func_start sub_02039750
sub_02039750: ; 0x02039750
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_020334B8
	cmp r0, #0
	beq _02039788
	ldr r0, _0203978C ; =0x021C07D8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02039770
	bl sub_02039794
_02039770:
	ldr r0, _02039790 ; =0x02100A38
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0x5b
	add r2, r6, #0
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_020393C8
	ldr r1, _0203978C ; =0x021C07D8
	str r0, [r1, #0]
_02039788:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203978C: .word 0x021C07D8
_02039790: .word 0x02100A38
	thumb_func_end sub_02039750

	thumb_func_start sub_02039794
sub_02039794: ; 0x02039794
	push {r3, lr}
	ldr r0, _020397AC ; =0x021C07D8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020397A8
	bl sub_02039440
	ldr r0, _020397AC ; =0x021C07D8
	mov r1, #0
	str r1, [r0, #0]
_020397A8:
	pop {r3, pc}
	nop
_020397AC: .word 0x021C07D8
	thumb_func_end sub_02039794

	thumb_func_start sub_020397B0
sub_020397B0: ; 0x020397B0
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _020397C4 ; =0x021C07D8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020397C0
	bl sub_02039434
_020397C0:
	pop {r3, pc}
	nop
_020397C4: .word 0x021C07D8
	thumb_func_end sub_020397B0

	thumb_func_start sub_020397C8
sub_020397C8: ; 0x020397C8
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _020397E0 ; =0x021C07D8
	add r2, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020397DC
	add r1, r3, #0
	bl sub_02039474
_020397DC:
	pop {r3, pc}
	nop
_020397E0: .word 0x021C07D8
	thumb_func_end sub_020397C8

	thumb_func_start sub_020397E4
sub_020397E4: ; 0x020397E4
	push {r3, lr}
	bl sub_02035E38
	cmp r0, #0
	beq _02039804
	bl sub_02035E18
	cmp r0, #1
	bgt _020397FE
	bl sub_020389B8
	cmp r0, #0
	beq _02039810
_020397FE:
	bl sub_02039734
	pop {r3, pc}
_02039804:
	bl sub_020389B8
	cmp r0, #0
	beq _02039810
	bl sub_02039734
_02039810:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020397E4

	.rodata


	.global Unk_020E5E94
Unk_020E5E94: ; 0x020E5E94
	.incbin "incbin/arm9_rodata.bin", 0x1254, 0x125C - 0x1254

	.global Unk_020E5E9C
Unk_020E5E9C: ; 0x020E5E9C
	.incbin "incbin/arm9_rodata.bin", 0x125C, 0x1264 - 0x125C

	.global Unk_020E5EA4
Unk_020E5EA4: ; 0x020E5EA4
	.incbin "incbin/arm9_rodata.bin", 0x1264, 0x126C - 0x1264

	.global Unk_020E5EAC
Unk_020E5EAC: ; 0x020E5EAC
	.incbin "incbin/arm9_rodata.bin", 0x126C, 0x1274 - 0x126C

	.global Unk_020E5EB4
Unk_020E5EB4: ; 0x020E5EB4
	.incbin "incbin/arm9_rodata.bin", 0x1274, 0x14



	.data


	.global Unk_02100A38
Unk_02100A38: ; 0x02100A38
	.incbin "incbin/arm9_data.bin", 0x1D58, 0x1D6C - 0x1D58

	.global Unk_02100A4C
Unk_02100A4C: ; 0x02100A4C
	.incbin "incbin/arm9_data.bin", 0x1D6C, 0x1D7C - 0x1D6C

	.global Unk_02100A5C
Unk_02100A5C: ; 0x02100A5C
	.incbin "incbin/arm9_data.bin", 0x1D7C, 0x1D90 - 0x1D7C

	.global Unk_02100A70
Unk_02100A70: ; 0x02100A70
	.incbin "incbin/arm9_data.bin", 0x1D90, 0x10



	.bss


	.global Unk_021C07D8
Unk_021C07D8: ; 0x021C07D8
	.space 0x4

