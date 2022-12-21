	.include "macros/function.inc"
	.include "include/unk_020933F8.inc"

	

	.text


	thumb_func_start sub_020933F8
sub_020933F8: ; 0x020933F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018184
	mov r1, #0
	mov r2, #8
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _0209343C ; =0x00000121
	str r6, [r4, #0]
	ldrb r0, [r6, r0]
	cmp r0, #0
	beq _02093422
	cmp r0, #1
	beq _02093422
	cmp r0, #2
	bne _0209342E
_02093422:
	ldr r1, _02093440 ; =sub_02093448
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
_0209342E:
	ldr r1, _02093444 ; =sub_020935EC
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_0209343C: .word 0x00000121
_02093440: .word sub_02093448
_02093444: .word sub_020935EC
	thumb_func_end sub_020933F8

	thumb_func_start sub_02093448
sub_02093448: ; 0x02093448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0xd
	bls _02093460
	b _020935BA
_02093460:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209346C: ; jump table
	.short _02093488 - _0209346C - 2 ; case 0
	.short _02093496 - _0209346C - 2 ; case 1
	.short _020934B2 - _0209346C - 2 ; case 2
	.short _020934CA - _0209346C - 2 ; case 3
	.short _020934EC - _0209346C - 2 ; case 4
	.short _02093508 - _0209346C - 2 ; case 5
	.short _0209352A - _0209346C - 2 ; case 6
	.short _02093544 - _0209346C - 2 ; case 7
	.short _02093556 - _0209346C - 2 ; case 8
	.short _02093576 - _0209346C - 2 ; case 9
	.short _02093594 - _0209346C - 2 ; case 10
	.short _020935A6 - _0209346C - 2 ; case 11
	.short _020935AC - _0209346C - 2 ; case 12
	.short _020935BE - _0209346C - 2 ; case 13
_02093488:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093496:
	ldr r0, [r4, #0]
	ldr r1, _020935CC ; =0x00000171
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _020934AA
	bl sub_020944D4
	cmp r0, #1
	beq _020934AA
	b _020935C8
_020934AA:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020934B2:
	ldr r1, [r4, #0]
	ldr r0, _020935CC ; =0x00000171
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _020934C2
	mov r0, #0
	bl sub_020364F0
_020934C2:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020934CA:
	ldr r2, [r4, #0]
	ldr r1, _020935CC ; =0x00000171
	ldrb r1, [r2, r1]
	cmp r1, #1
	bne _020934E6
	mov r0, #0
	bl sub_02036540
	cmp r0, #1
	bne _020935C8
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020934E6:
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020934EC:
	ldr r0, [r4, #0]
	bl sub_02093BBC
	ldr r3, [r4, #0]
	ldr r2, _020935D0 ; =0x000019B8
	ldr r1, _020935D4 ; =0x020F55FC
	ldr r2, [r3, r2]
	add r0, r5, #0
	bl sub_02050A38
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093508:
	ldr r0, [r4, #0]
	bl sub_02093C54
	ldr r0, [r4, #0]
	ldr r1, _020935CC ; =0x00000171
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _02093524
	bl sub_020944E8
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093524:
	mov r0, #6
	str r0, [r4, #4]
	b _020935C8
_0209352A:
	ldr r0, [r4, #0]
	ldr r1, _020935CC ; =0x00000171
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _0209353C
	bl sub_020944D4
	cmp r0, #1
	bne _020935C8
_0209353C:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093544:
	ldr r1, _020935D8 ; =0x020F55EC
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl sub_02050A38
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093556:
	ldr r2, [r4, #0]
	ldr r0, _020935DC ; =0x00000121
	ldrb r0, [r2, r0]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0209356E
	ldr r1, _020935E0 ; =0x020F561C
	add r0, r5, #0
	bl sub_02050A38
_0209356E:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093576:
	ldr r2, [r4, #0]
	ldr r0, _020935DC ; =0x00000121
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _02093584
	cmp r0, #2
	bne _0209358C
_02093584:
	ldr r1, _020935E4 ; =0x020F560C
	add r0, r5, #0
	bl sub_02050A38
_0209358C:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_02093594:
	ldr r1, _020935E8 ; =0x020F55DC
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl sub_02050A38
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020935A6:
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020935AC:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020935C8
_020935BA:
	bl sub_02022974
_020935BE:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_020935C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020935CC: .word 0x00000171
_020935D0: .word 0x000019B8
_020935D4: .word 0x020F55FC
_020935D8: .word 0x020F55EC
_020935DC: .word 0x00000121
_020935E0: .word 0x020F561C
_020935E4: .word 0x020F560C
_020935E8: .word 0x020F55DC
	thumb_func_end sub_02093448

	thumb_func_start sub_020935EC
sub_020935EC: ; 0x020935EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02050A60
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #9
	bls _02093606
	b _02093790
_02093606:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02093612: ; jump table
	.short _02093626 - _02093612 - 2 ; case 0
	.short _02093634 - _02093612 - 2 ; case 1
	.short _0209365C - _02093612 - 2 ; case 2
	.short _02093676 - _02093612 - 2 ; case 3
	.short _0209367C - _02093612 - 2 ; case 4
	.short _0209369A - _02093612 - 2 ; case 5
	.short _020936BE - _02093612 - 2 ; case 6
	.short _020936DC - _02093612 - 2 ; case 7
	.short _02093782 - _02093612 - 2 ; case 8
	.short _02093794 - _02093612 - 2 ; case 9
_02093626:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_02093634:
	ldr r0, [r4, #0]
	ldr r1, _020937A8 ; =0x00000121
	ldrb r1, [r0, r1]
	cmp r1, #3
	beq _02093642
	cmp r1, #4
	bne _02093654
_02093642:
	bl sub_02093BBC
	ldr r3, [r4, #0]
	ldr r2, _020937AC ; =0x000019B8
	ldr r1, _020937B0 ; =0x020F55FC
	ldr r2, [r3, r2]
	add r0, r5, #0
	bl sub_02050A38
_02093654:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_0209365C:
	ldr r0, [r4, #0]
	ldr r1, _020937A8 ; =0x00000121
	ldrb r1, [r0, r1]
	cmp r1, #3
	beq _0209366A
	cmp r1, #4
	bne _0209366E
_0209366A:
	bl sub_02093C54
_0209366E:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_02093676:
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_0209367C:
	ldr r2, [r4, #0]
	ldr r0, _020937A8 ; =0x00000121
	ldrb r0, [r2, r0]
	cmp r0, #3
	beq _0209368A
	cmp r0, #4
	bne _02093692
_0209368A:
	ldr r1, _020937B4 ; =0x020F55EC
	add r0, r5, #0
	bl sub_02050A38
_02093692:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_0209369A:
	ldr r0, [r4, #0]
	ldr r1, _020937A8 ; =0x00000121
	ldrb r1, [r0, r1]
	cmp r1, #5
	beq _020936A8
	cmp r1, #6
	bne _020936B6
_020936A8:
	bl sub_02095338
	ldr r1, _020937B8 ; =0x020F561C
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl sub_02050A38
_020936B6:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_020936BE:
	ldr r2, [r4, #0]
	ldr r0, _020937A8 ; =0x00000121
	ldrb r0, [r2, r0]
	cmp r0, #7
	beq _020936CC
	cmp r0, #8
	bne _020936D4
_020936CC:
	ldr r1, _020937BC ; =0x020F560C
	add r0, r5, #0
	bl sub_02050A38
_020936D4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_020936DC:
	ldr r1, [r4, #0]
	ldr r0, _020937A8 ; =0x00000121
	ldrb r0, [r1, r0]
	cmp r0, #8
	bhi _0209375A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020936F2: ; jump table
	.short _0209375A - _020936F2 - 2 ; case 0
	.short _0209375A - _020936F2 - 2 ; case 1
	.short _0209375A - _020936F2 - 2 ; case 2
	.short _02093704 - _020936F2 - 2 ; case 3
	.short _02093704 - _020936F2 - 2 ; case 4
	.short _02093726 - _020936F2 - 2 ; case 5
	.short _02093726 - _020936F2 - 2 ; case 6
	.short _02093742 - _020936F2 - 2 ; case 7
	.short _02093742 - _020936F2 - 2 ; case 8
_02093704:
	mov r5, #0
	add r6, sp, #0
_02093708:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02095928
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0209598C
	add r0, r7, r0
	add r5, r5, #1
	stmia r6!, {r0}
	cmp r5, #4
	blt _02093708
	b _0209375A
_02093726:
	mov r2, #0
	mov r3, #0x4b
	add r0, r2, #0
	add r1, sp, #0
	lsl r3, r3, #2
_02093730:
	ldr r5, [r4, #0]
	add r2, r2, #1
	add r5, r5, r0
	ldrsh r5, [r5, r3]
	add r0, #0xc
	cmp r2, #4
	stmia r1!, {r5}
	blt _02093730
	b _0209375A
_02093742:
	mov r2, #0
	ldr r3, _020937C0 ; =0x0000012E
	add r0, r2, #0
	add r1, sp, #0
_0209374A:
	ldr r5, [r4, #0]
	add r2, r2, #1
	add r5, r5, r0
	ldrsh r5, [r5, r3]
	add r0, #0xc
	cmp r2, #4
	stmia r1!, {r5}
	blt _0209374A
_0209375A:
	ldr r1, [sp]
	mov r2, #0
	mov r5, #1
	add r3, sp, #4
_02093762:
	ldr r0, [r3, #0]
	cmp r1, r0
	bge _0209376A
	add r2, r2, #1
_0209376A:
	add r5, r5, #1
	add r3, r3, #4
	cmp r5, #4
	blt _02093762
	mov r0, #0x13
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	strb r2, [r1, r0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_02093782:
	add r0, r5, #0
	bl sub_02055868
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _020937A0
_02093790:
	bl sub_02022974
_02093794:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020937A0:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020937A8: .word 0x00000121
_020937AC: .word 0x000019B8
_020937B0: .word 0x020F55FC
_020937B4: .word 0x020F55EC
_020937B8: .word 0x020F561C
_020937BC: .word 0x020F560C
_020937C0: .word 0x0000012E
	thumb_func_end sub_020935EC

	thumb_func_start sub_020937C4
sub_020937C4: ; 0x020937C4
	push {r4, lr}
	ldr r1, _020937F0 ; =0x000019C4
	mov r0, #0x14
	bl sub_02018144
	ldr r2, _020937F0 ; =0x000019C4
	mov r1, #0
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _020937F4 ; =0x00000123
	mov r1, #0
	strb r1, [r4, r0]
	add r1, r0, #4
	mov r2, #1
	strb r2, [r4, r1]
	mov r1, #3
	add r0, r0, #3
	strb r1, [r4, r0]
	add r0, r4, #0
	pop {r4, pc}
	nop
_020937F0: .word 0x000019C4
_020937F4: .word 0x00000123
	thumb_func_end sub_020937C4

	thumb_func_start sub_020937F8
sub_020937F8: ; 0x020937F8
	ldr r3, _020937FC ; =sub_020181C4
	bx r3
	; .align 2, 0
_020937FC: .word sub_020181C4
	thumb_func_end sub_020937F8

	thumb_func_start sub_02093800
sub_02093800: ; 0x02093800
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #1
	add r6, r0, #0
	mov r0, #0xb
	mov r1, #0x14
	lsl r2, r2, #0xe
	bl sub_02017FC8
	bl sub_020937C4
	add r4, r0, #0
	bl sub_0201D2D0
	mov r1, #0x67
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_02094E7C
	ldrb r1, [r6]
	ldr r0, _020939D0 ; =0x0000011F
	strb r1, [r4, r0]
	add r1, r0, #1
	ldrb r2, [r6, #1]
	add r0, r0, #2
	strb r2, [r4, r1]
	ldrb r1, [r6, #2]
	strb r1, [r4, r0]
	ldrb r0, [r6, #1]
	mov r1, #0
	bl sub_02095A74
	ldr r1, _020939D4 ; =0x00000122
	mov r7, #0
	strb r0, [r4, r1]
	add r0, r1, #1
	ldrb r2, [r4, r0]
	sub r0, r1, #6
	add r5, r4, #0
	strb r2, [r4, r0]
	mov r0, #0x6e
	add r1, r0, #0
	add r1, #0xb7
	strb r0, [r4, r1]
	add r1, r0, #0
	add r1, #0xb7
	ldrb r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xaf
	strb r2, [r4, r1]
	mov r1, #1
	add r0, #0xb0
	strb r1, [r4, r0]
	ldr r1, [r6, #0x14]
	ldr r0, _020939D8 ; =0x0000199C
	str r1, [r4, r0]
	add r1, r0, #0
	ldr r2, [r6, #0x18]
	sub r1, #0x14
	str r2, [r4, r1]
	add r1, r0, #0
	ldr r2, [r6, #0x1c]
	sub r1, #0x10
	str r2, [r4, r1]
	add r1, r0, #0
	ldr r2, [r6, #8]
	sub r1, #0xc
	str r2, [r4, r1]
	ldrb r2, [r6, #5]
	sub r1, r0, #4
	strb r2, [r4, r1]
	add r1, r0, #0
	ldr r2, [r6, #0x10]
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #3
	ldrb r2, [r6, #3]
	sub r0, r0, #2
	strb r2, [r4, r1]
	ldrb r1, [r6, #4]
	strb r1, [r4, r0]
_020938A2:
	mov r0, #0x14
	bl sub_02029C88
	add r1, r5, #0
	add r1, #0xf8
	add r7, r7, #1
	add r5, r5, #4
	str r0, [r1, #0]
	cmp r7, #4
	blt _020938A2
	mov r3, #0x12
	lsl r3, r3, #4
	ldrb r0, [r4, r3]
	sub r2, r3, #2
	sub r3, r3, #1
	str r0, [sp]
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xb
	bl sub_020954F0
	mov r0, #0x14
	bl sub_02079FF4
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r7, #0
	add r5, r4, #0
_020938DE:
	mov r0, #0x14
	bl sub_02073C74
	add r7, r7, #1
	stmia r5!, {r0}
	cmp r7, #4
	blt _020938DE
	mov r7, #0
	add r5, r4, #0
_020938F0:
	mov r0, #0x14
	bl sub_0202CC84
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _020938F0
	add r0, r1, #0
	ldr r0, [r4, r0]
	ldr r1, [r6, #0x20]
	bl sub_0202CD3C
	ldr r0, [r6, #8]
	ldr r1, [r4, #0]
	bl sub_020775EC
	mov r0, #8
	mov r1, #0x14
	bl sub_02023790
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r1, [r6, #0xc]
	bl sub_02023810
	ldr r0, [r6, #0x10]
	bl sub_02025F30
	mov r1, #0x42
	lsl r1, r1, #2
	strb r0, [r4, r1]
	add r0, r1, #4
	mov r2, #0
	strb r2, [r4, r0]
	add r1, #0x17
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0]
	bl sub_02093B2C
	mov r1, #0x11
	lsl r1, r1, #4
	strb r0, [r4, r1]
	add r0, r4, #0
	bl sub_0209590C
	cmp r0, #0
	ldr r0, [r6, #0x10]
	bne _0209397A
	bl sub_02025F30
	cmp r0, #0
	bne _02093970
	mov r1, #0xba
	add r0, r1, #0
	add r0, #0x5a
	strh r1, [r4, r0]
	b _02093994
_02093970:
	mov r1, #0xbb
	add r0, r1, #0
	add r0, #0x59
	strh r1, [r4, r0]
	b _02093994
_0209397A:
	bl sub_02025F30
	cmp r0, #0
	bne _0209398C
	mov r0, #0x45
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	b _02093994
_0209398C:
	mov r1, #0x61
	add r0, r1, #0
	add r0, #0xb3
	strh r1, [r4, r0]
_02093994:
	ldrb r1, [r6, #3]
	ldrb r2, [r6, #4]
	add r0, r4, #0
	bl sub_020939E0
	add r0, r4, #0
	bl sub_0209590C
	cmp r0, #1
	bne _020939BC
	ldr r1, _020939DC ; =0x00000172
	mov r5, #0
	mov r0, #3
_020939AE:
	sub r3, r0, r5
	add r2, r4, r5
	add r5, r5, #1
	strb r3, [r2, r1]
	cmp r5, #4
	blt _020939AE
	b _020939CA
_020939BC:
	ldr r0, _020939DC ; =0x00000172
	mov r2, #0
_020939C0:
	add r1, r4, r2
	strb r2, [r1, r0]
	add r2, r2, #1
	cmp r2, #4
	blt _020939C0
_020939CA:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020939D0: .word 0x0000011F
_020939D4: .word 0x00000122
_020939D8: .word 0x0000199C
_020939DC: .word 0x00000172
	thumb_func_end sub_02093800

	thumb_func_start sub_020939E0
sub_020939E0: ; 0x020939E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0x12
	add r5, r0, #0
	lsl r3, r3, #4
	ldrb r4, [r5, r3]
	str r4, [sp]
	add r4, r3, #1
	ldrb r4, [r5, r4]
	sub r3, r3, #1
	str r4, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldrb r3, [r5, r3]
	mov r1, #0xb
	mov r2, #3
	bl sub_02094F04
	add r4, r5, #0
	add r4, #0x10
	mov r7, #1
	add r6, r5, #4
	add r4, #0x30
_02093A0E:
	ldr r1, [r6, #0]
	add r0, r4, #0
	mov r2, #0x14
	bl sub_02095380
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x30
	cmp r7, #4
	blt _02093A0E
	mov r6, #1
	add r4, r5, #4
	mov r7, #8
_02093A28:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02093A40
	add r0, r7, #0
	mov r1, #0x14
	bl sub_02023790
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
_02093A40:
	add r2, r4, #0
	add r2, #0xe8
	ldr r0, [r4, #0]
	ldr r2, [r2, #0]
	mov r1, #0x91
	bl sub_02074470
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02093A28
	add r0, r5, #0
	add r0, #0x30
	mov r2, #0x42
	mov r1, #1
	add r0, #0x30
	lsl r2, r2, #2
_02093A62:
	ldrh r3, [r0]
	add r0, #0x30
	lsl r3, r3, #0x12
	lsr r4, r3, #0x1e
	add r3, r5, r1
	add r1, r1, #1
	strb r4, [r3, r2]
	cmp r1, #4
	blt _02093A62
	add r0, r5, #0
	add r0, #0x30
	mov r2, #0x43
	mov r1, #1
	add r0, #0x30
	lsl r2, r2, #2
_02093A80:
	ldrh r3, [r0]
	add r0, #0x30
	lsl r3, r3, #0x10
	lsr r4, r3, #0x1e
	add r3, r5, r1
	add r1, r1, #1
	strb r4, [r3, r2]
	cmp r1, #4
	blt _02093A80
	add r3, r5, #0
	mov r1, #0x11
	mov r4, #1
	add r3, #0x30
	lsl r1, r1, #4
_02093A9C:
	add r0, r3, #0
	add r0, #0x3e
	ldrb r2, [r0]
	add r0, r5, r4
	add r4, r4, #1
	add r3, #0x30
	strb r2, [r0, r1]
	cmp r4, #4
	blt _02093A9C
	add r2, r5, #0
	mov r0, #0x45
	mov r4, #1
	add r2, #0x30
	add r3, r5, #2
	lsl r0, r0, #2
_02093ABA:
	ldrh r1, [r2, #0x18]
	add r4, r4, #1
	add r2, #0x30
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r4, #4
	blt _02093ABA
	add r0, r5, #0
	mov r1, #0xb
	bl sub_020951B0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020939E0

	thumb_func_start sub_02093AD4
sub_02093AD4: ; 0x02093AD4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_020181C4
	mov r6, #0x57
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_02093AEA:
	ldr r0, [r5, #0]
	bl sub_020181C4
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r5, r6]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02093AEA
	mov r0, #0x67
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	bl sub_0201D2DC
	add r0, r7, #0
	bl sub_020937F8
	mov r0, #0x14
	bl sub_0201807C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02093AD4

	thumb_func_start sub_02093B2C
sub_02093B2C: ; 0x02093B2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	str r0, [sp]
	mov r4, #0
_02093B38:
	cmp r7, #4
	bhi _02093BA2
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02093B48: ; jump table
	.short _02093B52 - _02093B48 - 2 ; case 0
	.short _02093B62 - _02093B48 - 2 ; case 1
	.short _02093B72 - _02093B48 - 2 ; case 2
	.short _02093B82 - _02093B48 - 2 ; case 3
	.short _02093B92 - _02093B48 - 2 ; case 4
_02093B52:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x7b
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093B62:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x7f
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093B72:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x83
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093B82:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x87
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093B92:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x8b
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	b _02093BA6
_02093BA2:
	bl sub_02022974
_02093BA6:
	cmp r6, #0
	beq _02093BB6
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #1
	str r0, [sp]
	cmp r4, #3
	ble _02093B38
_02093BB6:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02093B2C

	thumb_func_start sub_02093BBC
sub_02093BBC: ; 0x02093BBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02093C44 ; =0x00000123
	ldrb r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_0202A25C
	mov r0, #0x14
	mov r1, #0x28
	bl sub_02018144
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02093C44 ; =0x00000123
	ldrb r1, [r5, r0]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	str r1, [r4, #0]
	ldrb r1, [r5, r0]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	str r1, [r4, #4]
	sub r1, r0, #1
	ldrb r1, [r5, r1]
	str r1, [r4, #8]
	add r1, r0, #0
	add r1, #0x4e
	ldrb r1, [r5, r1]
	cmp r1, #1
	bne _02093C0C
	mov r0, #4
	b _02093C10
_02093C0C:
	sub r0, r0, #3
	ldrb r0, [r5, r0]
_02093C10:
	str r0, [r4, #0xc]
	ldr r0, _02093C48 ; =0x00000121
	ldrb r1, [r5, r0]
	sub r0, r0, #2
	str r1, [r4, #0x10]
	ldrb r0, [r5, r0]
	str r0, [r4, #0x14]
	ldr r0, _02093C4C ; =0x0000199C
	ldr r0, [r5, r0]
	bl sub_02029D04
	ldr r1, _02093C50 ; =0x000019A0
	str r0, [r4, #0x18]
	add r0, r5, r1
	str r0, [r4, #0x1c]
	add r0, r1, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	str r0, [r4, #0x20]
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	add r1, #0x18
	str r0, [r4, #0x24]
	str r4, [r5, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02093C44: .word 0x00000123
_02093C48: .word 0x00000121
_02093C4C: .word 0x0000199C
_02093C50: .word 0x000019A0
	thumb_func_end sub_02093BBC

	thumb_func_start sub_02093C54
sub_02093C54: ; 0x02093C54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02093C68 ; =0x000019B8
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _02093C68 ; =0x000019B8
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02093C68: .word 0x000019B8
	thumb_func_end sub_02093C54

	thumb_func_start sub_02093C6C
sub_02093C6C: ; 0x02093C6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _02093FB0 ; =0x00000176
	add r4, r1, #0
	str r0, [sp]
	ldrb r0, [r4, r2]
	cmp r0, #0x2f
	bls _02093C7E
	b _02094322
_02093C7E:
	add r3, r0, r0
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02093C8A: ; jump table
	.short _02093CEA - _02093C8A - 2 ; case 0
	.short _02093D02 - _02093C8A - 2 ; case 1
	.short _02093D18 - _02093C8A - 2 ; case 2
	.short _02093D2E - _02093C8A - 2 ; case 3
	.short _02093D4A - _02093C8A - 2 ; case 4
	.short _02093D62 - _02093C8A - 2 ; case 5
	.short _02093D78 - _02093C8A - 2 ; case 6
	.short _02093D94 - _02093C8A - 2 ; case 7
	.short _02093DB0 - _02093C8A - 2 ; case 8
	.short _02093DC8 - _02093C8A - 2 ; case 9
	.short _02093DDE - _02093C8A - 2 ; case 10
	.short _02093E0E - _02093C8A - 2 ; case 11
	.short _02093E24 - _02093C8A - 2 ; case 12
	.short _02093E3C - _02093C8A - 2 ; case 13
	.short _02093E52 - _02093C8A - 2 ; case 14
	.short _02093E70 - _02093C8A - 2 ; case 15
	.short _02093E8C - _02093C8A - 2 ; case 16
	.short _02093EA4 - _02093C8A - 2 ; case 17
	.short _02093EBA - _02093C8A - 2 ; case 18
	.short _02093EF6 - _02093C8A - 2 ; case 19
	.short _02093F2C - _02093C8A - 2 ; case 20
	.short _02093F44 - _02093C8A - 2 ; case 21
	.short _02093F5A - _02093C8A - 2 ; case 22
	.short _02093F7A - _02093C8A - 2 ; case 23
	.short _02093FD8 - _02093C8A - 2 ; case 24
	.short _02093FF0 - _02093C8A - 2 ; case 25
	.short _02094006 - _02093C8A - 2 ; case 26
	.short _02094040 - _02093C8A - 2 ; case 27
	.short _02094076 - _02093C8A - 2 ; case 28
	.short _020940A2 - _02093C8A - 2 ; case 29
	.short _020940B8 - _02093C8A - 2 ; case 30
	.short _020940D4 - _02093C8A - 2 ; case 31
	.short _020940F0 - _02093C8A - 2 ; case 32
	.short _02094108 - _02093C8A - 2 ; case 33
	.short _0209411E - _02093C8A - 2 ; case 34
	.short _02094158 - _02093C8A - 2 ; case 35
	.short _0209418E - _02093C8A - 2 ; case 36
	.short _020941A6 - _02093C8A - 2 ; case 37
	.short _020941BC - _02093C8A - 2 ; case 38
	.short _020941E6 - _02093C8A - 2 ; case 39
	.short _02094202 - _02093C8A - 2 ; case 40
	.short _0209421A - _02093C8A - 2 ; case 41
	.short _02094230 - _02093C8A - 2 ; case 42
	.short _02094272 - _02093C8A - 2 ; case 43
	.short _020942A8 - _02093C8A - 2 ; case 44
	.short _020942C0 - _02093C8A - 2 ; case 45
	.short _020942D6 - _02093C8A - 2 ; case 46
	.short _020942F4 - _02093C8A - 2 ; case 47
_02093CEA:
	mov r0, #5
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D02:
	mov r0, #5
	bl sub_02036540
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D18:
	add r0, r4, #0
	bl ov6_02248A64
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D2E:
	ldr r0, _02093FB4 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _02093DF8
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093D4A:
	mov r0, #6
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D62:
	mov r0, #6
	bl sub_02036540
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D78:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	ldr r2, [r4, #0]
	add r0, r4, #0
	bl ov6_02248AF0
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093D94:
	ldr r0, _02093FB4 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _02093DF8
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093DB0:
	mov r0, #7
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093DC8:
	mov r0, #7
	bl sub_02036540
	cmp r0, #1
	bne _02093DF8
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093DDE:
	add r3, r2, #0
	sub r3, #0x53
	ldrb r5, [r4, r3]
	add r3, r2, #0
	sub r3, #0x5a
	ldrb r3, [r4, r3]
	cmp r5, r3
	bne _02093E06
	add r0, r4, #0
	bl ov6_02248B70
	cmp r0, #1
	beq _02093DFA
_02093DF8:
	b _020943A4
_02093DFA:
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093E06:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093E0E:
	ldr r0, _02093FB4 ; =0x00000584
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02093EFE
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093E24:
	mov r0, #8
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093E3C:
	mov r0, #8
	bl sub_02036540
	cmp r0, #1
	bne _02093EFE
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093E52:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x10
	bl ov6_02248BE8
	cmp r0, #1
	bne _02093EFE
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093E70:
	ldr r0, _02093FB4 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _02093EFE
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093E8C:
	mov r0, #9
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093EA4:
	mov r0, #9
	bl sub_02036540
	cmp r0, #1
	bne _02093EFE
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093EBA:
	add r1, r2, #0
	sub r1, #0x53
	ldrb r3, [r4, r1]
	add r1, r2, #0
	sub r1, #0x5a
	ldrb r1, [r4, r1]
	cmp r3, r1
	bne _02093EEE
	add r0, r2, #2
	ldr r1, [r4, r0]
	add r3, r4, #0
	mov r2, #0x30
	add r3, #0x10
	mul r2, r1
	add r0, r4, #0
	add r2, r3, r2
	bl ov6_02248BE8
	cmp r0, #1
	bne _02093EFE
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093EEE:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093EF6:
	ldr r1, _02093FB4 ; =0x00000584
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _02093F00
_02093EFE:
	b _020943A4
_02093F00:
	mov r0, #0
	strb r0, [r4, r1]
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #2
	str r3, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #4
	bge _02093F1E
	ldrb r0, [r4, r2]
	add sp, #0x10
	sub r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093F1E:
	add r1, r2, #2
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02093F2C:
	mov r0, #0xa
	bl sub_020364F0
	ldr r0, _02093FB4 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093F44:
	mov r0, #0xa
	bl sub_02036540
	cmp r0, #1
	bne _02094048
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093F5A:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	add r2, r4, #0
	add r2, #0xe8
	ldr r2, [r2, #0]
	add r0, r4, #0
	bl ov6_02248CE8
	cmp r0, #1
	bne _02094048
	ldr r0, _02093FB0 ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093F7A:
	ldr r0, _02093FB4 ; =0x00000584
	sub r2, #0x4f
	ldrb r1, [r4, r2]
	ldrb r0, [r4, r0]
	cmp r0, r1
	blo _02094048
	mov r5, #0
	cmp r1, #0
	ble _02093FC6
	add r6, r4, #0
_02093F8E:
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_020237E8
	add r1, r6, #0
	add r1, #0xe8
	ldr r1, [r1, #0]
	add r0, r7, #0
	bl sub_02025EF4
	ldr r0, _02093FB8 ; =0x00000127
	b _02093FBC
	; .align 2, 0
_02093FB0: .word 0x00000176
_02093FB4: .word 0x00000584
_02093FB8: .word 0x00000127
_02093FBC:
	add r5, r5, #1
	ldrb r0, [r4, r0]
	add r6, r6, #4
	cmp r5, r0
	blt _02093F8E
_02093FC6:
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093FD8:
	mov r0, #0xb
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02093FF0:
	mov r0, #0xb
	bl sub_02036540
	cmp r0, #1
	bne _02094048
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094006:
	add r1, r2, #0
	sub r1, #0x53
	ldrb r3, [r4, r1]
	add r1, r2, #0
	sub r1, #0x5a
	ldrb r1, [r4, r1]
	cmp r3, r1
	bne _02094038
	add r0, r2, #2
	ldr r1, [r4, r0]
	add r0, r4, #0
	lsl r2, r1, #2
	add r2, r4, r2
	add r2, #0xe8
	ldr r2, [r2, #0]
	bl ov6_02248CE8
	cmp r0, #1
	bne _02094048
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094038:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094040:
	ldr r1, _020942F8 ; =0x00000584
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0209404A
_02094048:
	b _020943A4
_0209404A:
	mov r0, #0
	strb r0, [r4, r1]
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #2
	str r3, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #4
	bge _02094068
	ldrb r0, [r4, r2]
	add sp, #0x10
	sub r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094068:
	add r1, r2, #2
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094076:
	bl sub_0202CC64
	add r2, r0, #0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, _02094300 ; =0x00000585
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl sub_020C4DB0
	mov r0, #0xc
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020940A2:
	mov r0, #0xc
	bl sub_02036540
	cmp r0, #1
	bne _02094160
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020940B8:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	add r0, r4, #0
	mov r2, #0
	bl ov6_02248D64
	cmp r0, #1
	bne _02094160
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020940D4:
	ldr r0, _020942F8 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _02094160
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_020940F0:
	mov r0, #0xd
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094108:
	mov r0, #0xd
	bl sub_02036540
	cmp r0, #1
	bne _02094160
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0209411E:
	add r1, r2, #0
	sub r1, #0x53
	ldrb r3, [r4, r1]
	add r1, r2, #0
	sub r1, #0x5a
	ldrb r1, [r4, r1]
	cmp r3, r1
	bne _02094150
	add r0, r2, #2
	ldr r1, [r4, r0]
	sub r2, #0x1a
	lsl r3, r1, #2
	add r3, r4, r3
	ldr r2, [r3, r2]
	add r0, r4, #0
	bl ov6_02248D64
	cmp r0, #1
	bne _02094160
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094150:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094158:
	ldr r1, _020942F8 ; =0x00000584
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _02094162
_02094160:
	b _020943A4
_02094162:
	mov r0, #0
	strb r0, [r4, r1]
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #2
	str r3, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #4
	bge _02094180
	ldrb r0, [r4, r2]
	add sp, #0x10
	sub r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094180:
	add r1, r2, #2
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_0209418E:
	mov r0, #0xe
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020941A6:
	mov r0, #0xe
	bl sub_02036540
	cmp r0, #1
	bne _0209427A
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020941BC:
	add r2, sp, #8
	add r0, r4, #0
	mov r1, #0
	add r2, #2
	bl sub_02094EB4
	ldr r1, _02094304 ; =0x00000123
	add r2, sp, #8
	ldrb r1, [r4, r1]
	add r0, r4, #0
	add r2, #2
	bl ov6_02248DD8
	cmp r0, #1
	bne _0209427A
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020941E6:
	ldr r0, _020942F8 ; =0x00000584
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _0209427A
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094202:
	mov r0, #0xf
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0209421A:
	mov r0, #0xf
	bl sub_02036540
	cmp r0, #1
	bne _0209427A
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02094230:
	add r1, r2, #0
	sub r1, #0x53
	ldrb r3, [r4, r1]
	add r1, r2, #0
	sub r1, #0x5a
	ldrb r1, [r4, r1]
	cmp r3, r1
	bne _0209426A
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, sp, #4
	bl sub_02094EB4
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, sp, #4
	bl ov6_02248DD8
	cmp r0, #1
	bne _0209427A
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0209426A:
	add r0, r0, #1
	add sp, #0x10
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094272:
	ldr r1, _020942F8 ; =0x00000584
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0209427C
_0209427A:
	b _020943A4
_0209427C:
	mov r0, #0
	strb r0, [r4, r1]
	add r1, r2, #2
	ldr r1, [r4, r1]
	add r3, r1, #1
	add r1, r2, #2
	str r3, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #4
	bge _0209429A
	ldrb r0, [r4, r2]
	add sp, #0x10
	sub r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_0209429A:
	add r1, r2, #2
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_020942A8:
	mov r0, #0x10
	bl sub_020364F0
	ldr r0, _020942F8 ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020942C0:
	mov r0, #0x10
	bl sub_02036540
	cmp r0, #1
	bne _020943A4
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020942D6:
	sub r2, #0x53
	ldrb r1, [r4, r2]
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0xd0
	bl ov6_02248C68
	cmp r0, #1
	bne _020943A4
	ldr r0, _020942FC ; =0x00000176
	add sp, #0x10
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_020942F4:
	ldr r0, _020942F8 ; =0x00000584
	b _02094308
	; .align 2, 0
_020942F8: .word 0x00000584
_020942FC: .word 0x00000176
_02094300: .word 0x00000585
_02094304: .word 0x00000123
_02094308:
	add r1, r2, #0
	sub r1, #0x4f
	ldrb r3, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r3, r1
	blo _020943A4
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r0, [r4, r2]
	add sp, #0x10
	add r0, r0, #1
	strb r0, [r4, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02094322:
	ldr r0, _020943A8 ; =0x00000127
	mov r5, #0
	ldrb r0, [r4, r0]
	cmp r0, #0
	ble _0209434A
	mov r7, #0x42
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0x1f
_02094334:
	add r0, r5, #0
	bl sub_02032EE8
	bl sub_02025F30
	add r1, r4, r5
	strb r0, [r1, r7]
	ldrb r0, [r4, r6]
	add r5, r5, #1
	cmp r5, r0
	blt _02094334
_0209434A:
	cmp r5, #4
	bge _0209436E
	add r1, r4, #0
	mov r0, #0x30
	add r1, #0x30
	mul r0, r5
	add r0, r1, r0
	mov r1, #0x42
	lsl r1, r1, #2
_0209435C:
	ldrh r2, [r0]
	add r0, #0x30
	lsl r2, r2, #0x12
	lsr r3, r2, #0x1e
	add r2, r4, r5
	add r5, r5, #1
	strb r3, [r2, r1]
	cmp r5, #4
	blt _0209435C
_0209436E:
	mov r0, #0x47
	lsl r0, r0, #2
	ldrb r2, [r4, r0]
	ldr r1, _020943AC ; =0x000019B4
	strb r2, [r4, r1]
	add r2, r0, #0
	add r2, #8
	ldrb r3, [r4, r2]
	add r2, r1, #1
	strb r3, [r4, r2]
	add r2, r1, #2
	mov r3, #1
	strb r3, [r4, r2]
	add r2, r0, #0
	add r2, #0xb
	ldrb r2, [r4, r2]
	add r1, r1, #3
	strb r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x64
	str r2, [r4, r1]
	add r0, #0x5a
	strb r2, [r4, r0]
	ldr r0, [sp]
	bl sub_0200DA58
_020943A4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020943A8: .word 0x00000127
_020943AC: .word 0x000019B4
	thumb_func_end sub_02093C6C

	thumb_func_start sub_020943B0
sub_020943B0: ; 0x020943B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02035E38
	cmp r0, #0
	bne _020943C0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020943C0:
	ldr r0, _020944B4 ; =0x00000171
	mov r1, #1
	strb r1, [r5, r0]
	bl sub_02035E18
	add r4, r0, #0
	bl sub_0203608C
	mov r6, #0
	str r0, [sp]
	cmp r4, #0
	ble _020943F6
_020943D8:
	add r0, r6, #0
	bl sub_02032EE8
	add r7, r0, #0
	bne _020943E6
	bl sub_02022974
_020943E6:
	add r0, r7, #0
	bl sub_02025FF0
	cmp r0, #0
	beq _020943F6
	add r6, r6, #1
	cmp r6, r4
	blt _020943D8
_020943F6:
	cmp r6, r4
	beq _020943FE
	mov r1, #0
	b _02094400
_020943FE:
	mov r1, #1
_02094400:
	ldr r0, _020944B8 ; =0x00001999
	mov r6, #0
	strb r1, [r5, r0]
	cmp r4, #0
	ble _02094428
_0209440A:
	add r0, r6, #0
	bl sub_02032EE8
	add r7, r0, #0
	bne _02094418
	bl sub_02022974
_02094418:
	add r0, r7, #0
	bl sub_02026004
	cmp r0, #0
	beq _02094428
	add r6, r6, #1
	cmp r6, r4
	blt _0209440A
_02094428:
	cmp r6, r4
	beq _02094430
	mov r1, #0
	b _02094432
_02094430:
	mov r1, #1
_02094432:
	ldr r0, _020944BC ; =0x0000199A
	ldr r2, _020944B8 ; =0x00001999
	strb r1, [r5, r0]
	ldrb r1, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r0, r5, #0
	bl sub_020939E0
	mov r6, #0
	cmp r4, #0
	ble _02094466
	ldr r7, _020944C0 ; =0x00000177
_0209444C:
	add r0, r6, #0
	bl sub_02032EE8
	bl sub_02025FCC
	cmp r0, #0
	bne _02094460
	ldrb r0, [r5, r7]
	add r0, r0, #1
	strb r0, [r5, r7]
_02094460:
	add r6, r6, #1
	cmp r6, r4
	blt _0209444C
_02094466:
	ldr r0, [sp]
	mov r1, #0x49
	lsl r0, r0, #0x18
	mov r2, #4
	lsr r0, r0, #0x18
	lsl r1, r1, #2
	sub r3, r2, r4
	strb r0, [r5, r1]
	add r2, r1, #2
	strb r3, [r5, r2]
	add r2, r1, #3
	strb r4, [r5, r2]
	sub r1, r1, #1
	strb r0, [r5, r1]
	mov r1, #0x6e
	add r0, r1, #0
	add r0, #0xb7
	strb r1, [r5, r0]
	add r1, #0xb2
	ldrb r0, [r5, r1]
	mov r1, #1
	bl sub_02095A74
	ldr r1, _020944C4 ; =0x00000122
	strb r0, [r5, r1]
	add r0, r5, #0
	bl sub_02095AF0
	ldr r0, _020944C8 ; =sub_02093C6C
	add r1, r5, #0
	mov r2, #0xa
	bl sub_0200D9E8
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020944B4: .word 0x00000171
_020944B8: .word 0x00001999
_020944BC: .word 0x0000199A
_020944C0: .word 0x00000177
_020944C4: .word 0x00000122
_020944C8: .word sub_02093C6C
	thumb_func_end sub_020943B0

	thumb_func_start sub_020944CC
sub_020944CC: ; 0x020944CC
	ldr r3, _020944D0 ; =sub_020944D4
	bx r3
	; .align 2, 0
_020944D0: .word sub_020944D4
	thumb_func_end sub_020944CC

	thumb_func_start sub_020944D4
sub_020944D4: ; 0x020944D4
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _020944E2
	mov r0, #1
	bx lr
_020944E2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020944D4

	thumb_func_start sub_020944E8
sub_020944E8: ; 0x020944E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _020944FA
	bl sub_02022974
_020944FA:
	ldr r0, _02094514 ; =0x00000176
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02094518 ; =sub_0209451C
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200D9E8
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02094514: .word 0x00000176
_02094518: .word sub_0209451C
	thumb_func_end sub_020944E8

	thumb_func_start sub_0209451C
sub_0209451C: ; 0x0209451C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02094628 ; =0x00000176
	ldrb r2, [r4, r1]
	cmp r2, #7
	bhi _02094614
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02094534: ; jump table
	.short _02094544 - _02094534 - 2 ; case 0
	.short _0209455A - _02094534 - 2 ; case 1
	.short _0209456E - _02094534 - 2 ; case 2
	.short _0209458E - _02094534 - 2 ; case 3
	.short _020945A8 - _02094534 - 2 ; case 4
	.short _020945BE - _02094534 - 2 ; case 5
	.short _020945D2 - _02094534 - 2 ; case 6
	.short _02094600 - _02094534 - 2 ; case 7
_02094544:
	mov r0, #0x11
	bl sub_020364F0
	ldr r0, _0209462C ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0209455A:
	mov r0, #0x11
	bl sub_02036540
	cmp r0, #1
	bne _02094624
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0209456E:
	sub r1, #0x53
	ldrb r1, [r4, r1]
	add r0, r4, #0
	lsl r2, r1, #2
	add r2, r4, r2
	add r2, #0xf8
	ldr r2, [r2, #0]
	bl sub_02095B5C
	cmp r0, #1
	bne _02094624
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0209458E:
	ldr r0, _0209462C ; =0x00000584
	add r2, r1, #0
	sub r2, #0x4f
	ldrb r3, [r4, r0]
	ldrb r2, [r4, r2]
	cmp r3, r2
	blo _02094624
	mov r2, #0
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	pop {r4, pc}
_020945A8:
	mov r0, #0x12
	bl sub_020364F0
	ldr r0, _0209462C ; =0x00000584
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_020945BE:
	mov r0, #0x12
	bl sub_02036540
	cmp r0, #1
	bne _02094624
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_020945D2:
	add r0, r1, #0
	sub r0, #0x53
	ldrb r3, [r4, r0]
	add r0, r1, #0
	sub r0, #0x5a
	ldrb r0, [r4, r0]
	cmp r3, r0
	bne _020945FA
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xf8
	bl sub_02095BEC
	cmp r0, #1
	bne _02094624
	ldr r0, _02094628 ; =0x00000176
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_020945FA:
	add r0, r2, #1
	strb r0, [r4, r1]
	pop {r4, pc}
_02094600:
	ldr r0, _0209462C ; =0x00000584
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _02094624
	mov r2, #0
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	pop {r4, pc}
_02094614:
	mov r1, #6
	mov r2, #0
	lsl r1, r1, #6
	str r2, [r4, r1]
	sub r1, #0xa
	strb r2, [r4, r1]
	bl sub_0200DA58
_02094624:
	pop {r4, pc}
	nop
_02094628: .word 0x00000176
_0209462C: .word 0x00000584
	thumb_func_end sub_0209451C

	thumb_func_start sub_02094630
sub_02094630: ; 0x02094630
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r2, #0
	lsl r2, r4, #3
	add r2, r5, r2
	add r2, #0xd0
	ldrh r2, [r2]
	add r1, r3, #0
	bl sub_0200BB74
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02094630

	thumb_func_start sub_02094648
sub_02094648: ; 0x02094648
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02095904
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r2, r3, #2
	add r4, r5, r3
	mov r3, #0x42
	add r2, r5, r2
	lsl r3, r3, #2
	add r2, #0xe8
	ldrb r3, [r4, r3]
	ldr r2, [r2, #0]
	add r1, r6, #0
	bl sub_0200B48C
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02094648

	thumb_func_start sub_02094680
sub_02094680: ; 0x02094680
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02095904
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200B5CC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02094680

	thumb_func_start sub_020946A4
sub_020946A4: ; 0x020946A4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #0x12
	add r3, r0, #0
	lsl r2, r2, #4
	add r5, r1, #0
	add r1, r2, #1
	ldrb r0, [r3, r2]
	add r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200BBA8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020946A4

	thumb_func_start sub_020946CC
sub_020946CC: ; 0x020946CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _020946EC ; =0x0000011F
	add r3, r0, #0
	ldrb r0, [r3, r1]
	add r1, r1, #2
	ldrb r1, [r3, r1]
	add r4, r2, #0
	bl sub_020958C4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200BBDC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020946EC: .word 0x0000011F
	thumb_func_end sub_020946CC

	thumb_func_start sub_020946F0
sub_020946F0: ; 0x020946F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0x13
	add r6, r2, #0
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #4
_02094700:
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _0209470E
	add r0, r0, #1
	add r3, #0xc
	cmp r0, #4
	blt _02094700
_0209470E:
	bl sub_020958FC
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02094648
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020946F0

	thumb_func_start sub_02094720
sub_02094720: ; 0x02094720
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0x13
	add r6, r2, #0
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #4
_02094730:
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _0209473E
	add r0, r0, #1
	add r3, #0xc
	cmp r0, #4
	blt _02094730
_0209473E:
	bl sub_020958FC
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_02094680
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02094720

	thumb_func_start sub_02094750
sub_02094750: ; 0x02094750
	mov r0, #1
	bx lr
	thumb_func_end sub_02094750

	thumb_func_start sub_02094754
sub_02094754: ; 0x02094754
	push {r3, lr}
	ldr r2, _02094768 ; =0x00000171
	ldrb r0, [r0, r2]
	cmp r0, #0
	beq _02094764
	add r0, r1, #0
	bl sub_020364F0
_02094764:
	pop {r3, pc}
	nop
_02094768: .word 0x00000171
	thumb_func_end sub_02094754

	thumb_func_start sub_0209476C
sub_0209476C: ; 0x0209476C
	push {r3, lr}
	ldr r2, _0209478C ; =0x00000171
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _0209477A
	mov r0, #1
	pop {r3, pc}
_0209477A:
	add r0, r1, #0
	bl sub_02036540
	cmp r0, #1
	bne _02094788
	mov r0, #1
	pop {r3, pc}
_02094788:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0209478C: .word 0x00000171
	thumb_func_end sub_0209476C

	thumb_func_start sub_02094790
sub_02094790: ; 0x02094790
	ldr r2, _020947A0 ; =0x00000123
	mov r1, #0xc
	ldrb r3, [r0, r2]
	add r2, #0xd
	mul r1, r3
	add r0, r0, r1
	ldrb r0, [r0, r2]
	bx lr
	; .align 2, 0
_020947A0: .word 0x00000123
	thumb_func_end sub_02094790

	thumb_func_start sub_020947A4
sub_020947A4: ; 0x020947A4
	push {r3, lr}
	mov r1, #0x13
	mov r3, #0
	lsl r1, r1, #4
_020947AC:
	ldrb r2, [r0, r1]
	cmp r2, #0
	bne _020947BA
	add r0, r3, #0
	bl sub_020958FC
	pop {r3, pc}
_020947BA:
	add r3, r3, #1
	add r0, #0xc
	cmp r3, #4
	blt _020947AC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020947A4

	thumb_func_start sub_020947C8
sub_020947C8: ; 0x020947C8
	ldr r1, _020947D0 ; =0x00000123
	ldr r3, _020947D4 ; =sub_020958FC
	ldrb r0, [r0, r1]
	bx r3
	; .align 2, 0
_020947D0: .word 0x00000123
_020947D4: .word sub_020958FC
	thumb_func_end sub_020947C8

	thumb_func_start sub_020947D8
sub_020947D8: ; 0x020947D8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02095904
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0x45
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020947D8

	thumb_func_start sub_020947F0
sub_020947F0: ; 0x020947F0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02095904
	add r1, r4, r0
	mov r0, #0x11
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	pop {r4, pc}
	thumb_func_end sub_020947F0

	thumb_func_start sub_02094804
sub_02094804: ; 0x02094804
	push {r3, lr}
	ldr r1, _02094824 ; =0x00000171
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _02094812
	mov r0, #1
	pop {r3, pc}
_02094812:
	bl sub_0209590C
	cmp r0, #1
	bne _0209481E
	mov r0, #2
	pop {r3, pc}
_0209481E:
	mov r0, #0
	pop {r3, pc}
	nop
_02094824: .word 0x00000171
	thumb_func_end sub_02094804

	thumb_func_start sub_02094828
sub_02094828: ; 0x02094828
	push {r4, r5}
	mov r4, #0x12
	lsl r4, r4, #4
	ldrb r5, [r0, r4]
	strh r5, [r1]
	sub r1, r4, #1
	ldrb r1, [r0, r1]
	strh r1, [r2]
	add r1, r4, #1
	ldrb r1, [r0, r1]
	strh r1, [r3]
	ldr r1, _0209484C ; =0x00001998
	ldrb r1, [r0, r1]
	ldr r0, [sp, #8]
	strh r1, [r0]
	pop {r4, r5}
	bx lr
	nop
_0209484C: .word 0x00001998
	thumb_func_end sub_02094828

	thumb_func_start sub_02094850
sub_02094850: ; 0x02094850
	ldr r1, _02094858 ; =0x00000171
	ldr r3, _0209485C ; =sub_020959F4
	ldrb r0, [r0, r1]
	bx r3
	; .align 2, 0
_02094858: .word 0x00000171
_0209485C: .word sub_020959F4
	thumb_func_end sub_02094850

	thumb_func_start sub_02094860
sub_02094860: ; 0x02094860
	ldr r3, _02094864 ; =sub_02095A24
	bx r3
	; .align 2, 0
_02094864: .word sub_02095A24
	thumb_func_end sub_02094860

	thumb_func_start sub_02094868
sub_02094868: ; 0x02094868
	push {r4, lr}
	mov r1, #0x12
	add r4, r0, #0
	lsl r1, r1, #4
	ldrb r0, [r4, r1]
	sub r1, r1, #1
	ldrb r1, [r4, r1]
	bl sub_02095A3C
	add r1, r0, #0
	ldr r0, _02094894 ; =0x00001990
	mov r2, #0
	ldr r0, [r4, r0]
	bl sub_02074470
	cmp r0, #0
	beq _0209488E
	mov r0, #1
	pop {r4, pc}
_0209488E:
	mov r0, #0
	pop {r4, pc}
	nop
_02094894: .word 0x00001990
	thumb_func_end sub_02094868

	thumb_func_start sub_02094898
sub_02094898: ; 0x02094898
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02094900 ; =0x0000011F
	add r5, r2, #0
	ldrb r2, [r0, r1]
	cmp r2, #4
	bhi _020948E4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020948B2: ; jump table
	.short _020948BC - _020948B2 - 2 ; case 0
	.short _020948C4 - _020948B2 - 2 ; case 1
	.short _020948CC - _020948B2 - 2 ; case 2
	.short _020948D4 - _020948B2 - 2 ; case 3
	.short _020948DC - _020948B2 - 2 ; case 4
_020948BC:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x21
	b _020948EA
_020948C4:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x25
	b _020948EA
_020948CC:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x29
	b _020948EA
_020948D4:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x2d
	b _020948EA
_020948DC:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, #0x31
	b _020948EA
_020948E4:
	bl sub_02022974
	pop {r3, r4, r5, pc}
_020948EA:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #3
	bl sub_020923C0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200B668
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02094900: .word 0x0000011F
	thumb_func_end sub_02094898

	thumb_func_start sub_02094904
sub_02094904: ; 0x02094904
	push {r3, r4, r5, lr}
	mov r4, #0x64
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xbf
	ldrb r1, [r5, r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0xcc
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02094924
	ldr r0, _02094A50 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_02094924:
	add r0, r4, #0
	add r0, #0xbb
	ldrb r0, [r5, r0]
	cmp r0, #4
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0209493A: ; jump table
	.short _02094944 - _0209493A - 2 ; case 0
	.short _02094972 - _0209493A - 2 ; case 1
	.short _020949A0 - _0209493A - 2 ; case 2
	.short _020949CE - _0209493A - 2 ; case 3
	.short _020949FC - _0209493A - 2 ; case 4
_02094944:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0209495A: ; jump table
	.short _02094962 - _0209495A - 2 ; case 0
	.short _02094966 - _0209495A - 2 ; case 1
	.short _0209496A - _0209495A - 2 ; case 2
	.short _0209496E - _0209495A - 2 ; case 3
_02094962:
	mov r4, #0x49
	b _02094A28
_02094966:
	mov r4, #0x4e
	b _02094A28
_0209496A:
	mov r4, #0x53
	b _02094A28
_0209496E:
	mov r4, #0x58
	b _02094A28
_02094972:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094988: ; jump table
	.short _02094990 - _02094988 - 2 ; case 0
	.short _02094994 - _02094988 - 2 ; case 1
	.short _02094998 - _02094988 - 2 ; case 2
	.short _0209499C - _02094988 - 2 ; case 3
_02094990:
	mov r4, #0x4a
	b _02094A28
_02094994:
	mov r4, #0x4f
	b _02094A28
_02094998:
	mov r4, #0x54
	b _02094A28
_0209499C:
	mov r4, #0x59
	b _02094A28
_020949A0:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020949B6: ; jump table
	.short _020949BE - _020949B6 - 2 ; case 0
	.short _020949C2 - _020949B6 - 2 ; case 1
	.short _020949C6 - _020949B6 - 2 ; case 2
	.short _020949CA - _020949B6 - 2 ; case 3
_020949BE:
	mov r4, #0x48
	b _02094A28
_020949C2:
	mov r4, #0x4d
	b _02094A28
_020949C6:
	mov r4, #0x52
	b _02094A28
_020949CA:
	mov r4, #0x57
	b _02094A28
_020949CE:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020949E4: ; jump table
	.short _020949EC - _020949E4 - 2 ; case 0
	.short _020949F0 - _020949E4 - 2 ; case 1
	.short _020949F4 - _020949E4 - 2 ; case 2
	.short _020949F8 - _020949E4 - 2 ; case 3
_020949EC:
	mov r4, #0x4c
	b _02094A28
_020949F0:
	mov r4, #0x51
	b _02094A28
_020949F4:
	mov r4, #0x56
	b _02094A28
_020949F8:
	mov r4, #0x5b
	b _02094A28
_020949FC:
	add r0, r4, #0
	add r0, #0xbc
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhi _02094A28
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094A12: ; jump table
	.short _02094A1A - _02094A12 - 2 ; case 0
	.short _02094A1E - _02094A12 - 2 ; case 1
	.short _02094A22 - _02094A12 - 2 ; case 2
	.short _02094A26 - _02094A12 - 2 ; case 3
_02094A1A:
	mov r4, #0x4b
	b _02094A28
_02094A1E:
	mov r4, #0x50
	b _02094A28
_02094A22:
	mov r4, #0x55
	b _02094A28
_02094A26:
	mov r4, #0x5a
_02094A28:
	cmp r4, #0x64
	bne _02094A30
	bl sub_02022974
_02094A30:
	ldr r0, _02094A54 ; =0x0000198C
	ldr r0, [r5, r0]
	bl sub_0202A750
	bl sub_02029D04
	add r1, r4, #0
	mov r2, #1
	bl sub_02029D50
	cmp r0, #0
	bne _02094A4C
	ldr r0, _02094A50 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_02094A4C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02094A50: .word 0x0000FFFF
_02094A54: .word 0x0000198C
	thumb_func_end sub_02094904

	thumb_func_start sub_02094A58
sub_02094A58: ; 0x02094A58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02094B04 ; =0x000019BC
	add r6, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02094A6A
	bl sub_02022974
_02094A6A:
	mov r0, #4
	mov r1, #0x10
	bl sub_02018184
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r6, #0
	bl sub_02095904
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	mov r1, #0x43
	lsl r1, r1, #2
	add r0, r5, r0
	ldrb r2, [r0, r1]
	mov r0, #1
	and r0, r2
	add r2, r1, #0
	add r2, #0x65
	ldrb r2, [r5, r2]
	cmp r2, #1
	bne _02094AA8
	mov r1, #6
	ldr r2, _02094B08 ; =0x020F55D0
	mul r1, r0
	add r0, r2, r1
	str r0, [r4, #4]
	b _02094AF0
_02094AA8:
	add r1, #0x14
	ldrb r1, [r5, r1]
	cmp r1, #3
	bhi _02094AE6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02094ABC: ; jump table
	.short _02094AC4 - _02094ABC - 2 ; case 0
	.short _02094AD0 - _02094ABC - 2 ; case 1
	.short _02094ADA - _02094ABC - 2 ; case 2
	.short _02094AE6 - _02094ABC - 2 ; case 3
_02094AC4:
	lsl r1, r0, #1
	ldr r2, _02094B0C ; =0x020F55B4
	add r0, r0, r1
	add r0, r2, r0
	str r0, [r4, #4]
	b _02094AF0
_02094AD0:
	ldr r1, _02094B10 ; =0x020F55BC
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #4]
	b _02094AF0
_02094ADA:
	lsl r1, r0, #2
	ldr r2, _02094B14 ; =0x020F55C4
	add r0, r0, r1
	add r0, r2, r0
	str r0, [r4, #4]
	b _02094AF0
_02094AE6:
	mov r1, #6
	ldr r2, _02094B08 ; =0x020F55D0
	mul r1, r0
	add r0, r2, r1
	str r0, [r4, #4]
_02094AF0:
	ldr r0, _02094B18 ; =sub_02094B30
	add r1, r5, #0
	mov r2, #0x64
	bl sub_0200D9E8
	str r0, [r4, #0]
	ldr r0, _02094B04 ; =0x000019BC
	str r4, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_02094B04: .word 0x000019BC
_02094B08: .word 0x020F55D0
_02094B0C: .word 0x020F55B4
_02094B10: .word 0x020F55BC
_02094B14: .word 0x020F55C4
_02094B18: .word sub_02094B30
	thumb_func_end sub_02094A58

	thumb_func_start sub_02094B1C
sub_02094B1C: ; 0x02094B1C
	ldr r1, _02094B2C ; =0x000019BC
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02094B28
	mov r0, #1
	bx lr
_02094B28:
	mov r0, #0
	bx lr
	; .align 2, 0
_02094B2C: .word 0x000019BC
	thumb_func_end sub_02094B1C

	thumb_func_start sub_02094B30
sub_02094B30: ; 0x02094B30
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, _02094BAC ; =0x000019BC
	add r5, r1, #0
	ldr r4, [r5, r0]
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02094BA8
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _02094B94
	mov r0, #8
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #8]
	ldrsh r2, [r4, r0]
	ldrb r0, [r4, #0xa]
	ldr r1, [r4, #4]
	ldrb r0, [r1, r0]
	cmp r2, r0
	ble _02094BA8
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	mov r1, #0
	mov r2, #4
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, _02094BB0 ; =0x000005F8
	bl sub_02005748
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	mov r0, #0
	strh r0, [r4, #8]
	ldrb r0, [r4, #0xa]
	ldr r1, [r4, #4]
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	bne _02094BA8
	ldrb r0, [r4, #0xb]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4, #0xb]
	pop {r3, r4, r5, r6, pc}
_02094B94:
	ldr r0, _02094BAC ; =0x000019BC
	ldr r0, [r5, r0]
	bl sub_020181C4
	ldr r0, _02094BAC ; =0x000019BC
	mov r1, #0
	str r1, [r5, r0]
	add r0, r6, #0
	bl sub_0200DA58
_02094BA8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02094BAC: .word 0x000019BC
_02094BB0: .word 0x000005F8
	thumb_func_end sub_02094B30

	thumb_func_start sub_02094BB4
sub_02094BB4: ; 0x02094BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x13
	str r2, [sp, #4]
	ldr r6, [sp, #0x20]
	ldr r7, [sp, #0x24]
	str r1, [sp]
	str r3, [sp, #8]
	mov r4, #0
	add r2, r5, #0
	lsl r0, r0, #4
_02094BCC:
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02094BDA
	add r4, r4, #1
	add r2, #0xc
	cmp r4, #4
	blt _02094BCC
_02094BDA:
	add r0, r4, #0
	bl sub_020958FC
	ldr r1, [sp]
	str r0, [r1, #0]
	ldr r1, _02094C3C ; =0x00000171
	ldr r0, [sp, #4]
	ldrb r2, [r5, r1]
	sub r1, #0x4a
	str r2, [r0, #0]
	ldrb r0, [r5, r1]
	cmp r4, r0
	blt _02094BFA
	mov r1, #1
	ldr r0, [sp, #8]
	b _02094BFE
_02094BFA:
	ldr r0, [sp, #8]
	mov r1, #0
_02094BFE:
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r6, #0]
	str r0, [r7, #0]
	ldr r0, _02094C40 ; =0x00000121
	ldrb r0, [r5, r0]
	cmp r0, #8
	bhi _02094C38
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094C1A: ; jump table
	.short _02094C38 - _02094C1A - 2 ; case 0
	.short _02094C38 - _02094C1A - 2 ; case 1
	.short _02094C38 - _02094C1A - 2 ; case 2
	.short _02094C2C - _02094C1A - 2 ; case 3
	.short _02094C34 - _02094C1A - 2 ; case 4
	.short _02094C2C - _02094C1A - 2 ; case 5
	.short _02094C34 - _02094C1A - 2 ; case 6
	.short _02094C2C - _02094C1A - 2 ; case 7
	.short _02094C34 - _02094C1A - 2 ; case 8
_02094C2C:
	mov r0, #1
	add sp, #0xc
	str r0, [r6, #0]
	pop {r4, r5, r6, r7, pc}
_02094C34:
	mov r0, #1
	str r0, [r7, #0]
_02094C38:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02094C3C: .word 0x00000171
_02094C40: .word 0x00000121
	thumb_func_end sub_02094BB4

	thumb_func_start sub_02094C44
sub_02094C44: ; 0x02094C44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _02094E60 ; =0x00000121
	str r2, [sp, #4]
	ldrb r0, [r4, r0]
	add r6, r3, #0
	mov r5, #0
	cmp r0, #8
	bhi _02094C7A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02094C64: ; jump table
	.short _02094C7A - _02094C64 - 2 ; case 0
	.short _02094C7A - _02094C64 - 2 ; case 1
	.short _02094C7A - _02094C64 - 2 ; case 2
	.short _02094C76 - _02094C64 - 2 ; case 3
	.short _02094C76 - _02094C64 - 2 ; case 4
	.short _02094C76 - _02094C64 - 2 ; case 5
	.short _02094C76 - _02094C64 - 2 ; case 6
	.short _02094C76 - _02094C64 - 2 ; case 7
	.short _02094C76 - _02094C64 - 2 ; case 8
_02094C76:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02094C7A:
	ldr r2, _02094E64 ; =0x00000171
	ldrb r0, [r4, r2]
	cmp r0, #0
	ldr r0, _02094E68 ; =0x0000198C
	beq _02094C86
	b _02094D96
_02094C86:
	ldr r0, [r4, r0]
	bl sub_020507E4
	add r6, r0, #0
	ldr r0, _02094E60 ; =0x00000121
	ldrb r1, [r4, r0]
	cmp r1, #2
	bne _02094CC0
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #3
	blo _02094CC0
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094CC0
	ldr r1, _02094E6C ; =0x0000011F
	add r0, r6, #0
	ldrb r1, [r4, r1]
	bl sub_0206AAA8
	cmp r0, #0
	bne _02094CC0
	ldr r1, _02094E6C ; =0x0000011F
	add r0, r6, #0
	ldrb r1, [r4, r1]
	bl sub_0206AA50
_02094CC0:
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094D0C
	mov r1, #1
	add r0, sp, #8
	strb r1, [r0]
	mov r1, #0x12
	lsl r1, r1, #4
	ldrb r0, [r4, r1]
	sub r1, r1, #1
	ldrb r1, [r4, r1]
	bl sub_02095A3C
	add r6, r0, #0
	ldr r0, _02094E70 ; =0x00001990
	add r1, r6, #0
	ldr r0, [r4, r0]
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02094CF2
	mov r5, #1
_02094CF2:
	ldr r0, _02094E70 ; =0x00001990
	add r1, r6, #0
	ldr r0, [r4, r0]
	add r2, sp, #8
	bl sub_02074B30
	ldr r1, _02094E68 ; =0x0000198C
	add r2, r6, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0206DDB8
_02094D0C:
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202440C
	ldr r3, _02094E74 ; =0x00000123
	mov r1, #0xc
	ldrb r2, [r4, r3]
	mul r1, r2
	add r2, r4, r1
	add r1, r3, #0
	add r1, #0xd
	ldrb r1, [r2, r1]
	sub r2, r3, #4
	sub r3, r3, #3
	add r1, r1, #1
	str r1, [sp]
	ldr r1, _02094E70 ; =0x00001990
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	ldr r1, [r4, r1]
	bl sub_0206CF14
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202CD88
	mov r1, #0x5a
	add r6, r0, #0
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094D62
	add r0, r6, #0
	mov r1, #0x5c
	bl sub_0202CF28
	add r0, r6, #0
	mov r1, #0xd
	bl sub_0202CFEC
_02094D62:
	cmp r5, #1
	bne _02094D6E
	add r0, r6, #0
	mov r1, #0x5e
	bl sub_0202CF28
_02094D6E:
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_02027560
	add r7, r0, #0
	ldr r0, _02094E78 ; =0x00000127
	ldrb r6, [r4, r0]
	cmp r6, #4
	bge _02094E0A
	lsl r0, r6, #2
	add r5, r4, r0
_02094D84:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_020272A4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02094D84
	b _02094E0A
_02094D96:
	add r3, r2, #0
	sub r3, #0x4e
	ldrb r5, [r4, r3]
	add r1, r2, #0
	mov r3, #0xc
	mul r3, r5
	sub r1, #0x52
	add r3, r4, r3
	sub r2, #0x41
	ldrb r1, [r4, r1]
	ldrb r2, [r3, r2]
	ldr r0, [r4, r0]
	bl sub_0202F134
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202CD88
	mov r1, #0x5b
	add r5, r0, #0
	bl sub_0202CF28
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094DDC
	add r0, r5, #0
	mov r1, #0x5d
	bl sub_0202CF28
	add r0, r5, #0
	mov r1, #0x13
	bl sub_0202CFEC
_02094DDC:
	ldr r1, _02094E74 ; =0x00000123
	mov r0, #0xc
	ldrb r2, [r4, r1]
	add r1, #0xd
	mul r0, r2
	add r0, r4, r0
	ldrb r0, [r0, r1]
	mov r1, #0xb
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0202C1C0
	add r5, r0, #0
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202B628
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #4
	bl sub_0202B758
_02094E0A:
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094E42
	ldr r0, _02094E68 ; =0x0000198C
	ldr r0, [r4, r0]
	bl sub_0202A750
	ldr r1, _02094E6C ; =0x0000011F
	ldrb r1, [r4, r1]
	bl sub_02029CD0
	add r5, r0, #0
	bl sub_0202A25C
	ldr r1, _02094E74 ; =0x00000123
	add r0, r5, #0
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl sub_0202A390
	add r0, r5, #0
	bl sub_0202A240
_02094E42:
	add r0, r4, #0
	bl sub_02094790
	cmp r0, #0
	bne _02094E5C
	ldr r0, _02094E70 ; =0x00001990
	ldr r2, [sp, #4]
	ldr r0, [r4, r0]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_02075C74
_02094E5C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02094E60: .word 0x00000121
_02094E64: .word 0x00000171
_02094E68: .word 0x0000198C
_02094E6C: .word 0x0000011F
_02094E70: .word 0x00001990
_02094E74: .word 0x00000123
_02094E78: .word 0x00000127
	thumb_func_end sub_02094C44

	thumb_func_start sub_02094E7C
sub_02094E7C: ; 0x02094E7C
	push {r4, lr}
	bl sub_020138C8
	add r4, r0, #0
	bl sub_0201D2D0
	add r0, #0xa
	mul r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D2DC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02094E7C

	thumb_func_start sub_02094E98
sub_02094E98: ; 0x02094E98
	ldr r3, _02094E9C ; =sub_0201D2E8
	bx r3
	; .align 2, 0
_02094E9C: .word sub_0201D2E8
	thumb_func_end sub_02094E98

	thumb_func_start sub_02094EA0
sub_02094EA0: ; 0x02094EA0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0201D30C
	str r0, [r4, #0]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02094EA0

	thumb_func_start sub_02094EB4
sub_02094EB4: ; 0x02094EB4
	push {r4, r5}
	mov r5, #0x42
	add r3, r0, r1
	lsl r5, r5, #2
	ldrb r4, [r3, r5]
	lsl r1, r1, #1
	add r0, r0, r1
	strb r4, [r2]
	add r4, r5, #4
	ldrb r4, [r3, r4]
	strb r4, [r2, #1]
	add r4, r5, #0
	add r4, #8
	ldrb r3, [r3, r4]
	add r5, #0xc
	strb r3, [r2, #2]
	ldrh r0, [r0, r5]
	strh r0, [r2, #4]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02094EB4

	.rodata


	.global Unk_020F55B4
Unk_020F55B4: ; 0x020F55B4
	.incbin "incbin/arm9_rodata.bin", 0x10974, 0x1097C - 0x10974

	.global Unk_020F55BC
Unk_020F55BC: ; 0x020F55BC
	.incbin "incbin/arm9_rodata.bin", 0x1097C, 0x10984 - 0x1097C

	.global Unk_020F55C4
Unk_020F55C4: ; 0x020F55C4
	.incbin "incbin/arm9_rodata.bin", 0x10984, 0x10990 - 0x10984

	.global Unk_020F55D0
Unk_020F55D0: ; 0x020F55D0
	.incbin "incbin/arm9_rodata.bin", 0x10990, 0x1099C - 0x10990

	.global Unk_020F55DC
Unk_020F55DC: ; 0x020F55DC
	.incbin "incbin/arm9_rodata.bin", 0x1099C, 0x109AC - 0x1099C

	.global Unk_020F55EC
Unk_020F55EC: ; 0x020F55EC
	.incbin "incbin/arm9_rodata.bin", 0x109AC, 0x109BC - 0x109AC

	.global Unk_020F55FC
Unk_020F55FC: ; 0x020F55FC
	.incbin "incbin/arm9_rodata.bin", 0x109BC, 0x109CC - 0x109BC

	.global Unk_020F560C
Unk_020F560C: ; 0x020F560C
	.incbin "incbin/arm9_rodata.bin", 0x109CC, 0x109DC - 0x109CC

	.global Unk_020F561C
Unk_020F561C: ; 0x020F561C
	.incbin "incbin/arm9_rodata.bin", 0x109DC, 0x10

