	.include "macros/function.inc"
	.include "include/unk_0207E0B8.inc"

	

	.text


	thumb_func_start sub_0207E0B8
sub_0207E0B8: ; 0x0207E0B8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0207E290 ; =0xFFFFE0FF
	ldr r3, _0207E294 ; =0x04001000
	and r2, r1
	str r2, [r0, #0]
	ldr r2, [r3, #0]
	add r0, #0x50
	and r1, r2
	str r1, [r3, #0]
	mov r1, #0
	strh r1, [r0]
	add r3, #0x50
	strh r1, [r3]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r1, #0xc
	mov r0, #3
	lsl r2, r1, #0xe
	bl sub_02017FC8
	mov r0, #0x14
	mov r1, #0xc
	bl sub_02006C24
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0207ECC0
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	add r0, r5, #0
	bl sub_0207EDC0
	bl sub_0207E8C0
	ldr r0, [r5, #0]
	bl sub_0207E918
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EB6C
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r1, #0
	mov r0, #0x39
	add r2, r1, #0
	bl sub_02004550
	add r0, r5, #0
	bl sub_02081A24
	add r0, r5, #0
	bl sub_02082C2C
	add r0, r5, #0
	bl sub_02082E58
	add r0, r5, #0
	bl sub_0207EE14
	add r0, r5, #0
	bl sub_0207F308
	ldr r1, _0207E298 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	bl sub_02080500
	ldr r1, _0207E29C ; =0x000005A4
	ldr r3, [r5, r1]
	add r0, r3, #0
	add r0, #0x20
	ldrb r2, [r0]
	cmp r2, #5
	beq _0207E192
	cmp r2, #0x10
	bne _0207E1A8
_0207E192:
	ldrh r0, [r3, #0x24]
	bl sub_020857A8
	cmp r0, #0
	bne _0207E25A
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E1A8:
	cmp r2, #6
	bne _0207E1B8
	add r0, r5, #0
	mov r1, #0x21
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E1B8:
	cmp r2, #9
	beq _0207E1C0
	cmp r2, #0xe
	bne _0207E1CC
_0207E1C0:
	add r0, r5, #0
	mov r1, #0x1f
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E1CC:
	cmp r2, #7
	beq _0207E1E0
	cmp r2, #8
	beq _0207E1E0
	add r0, r2, #0
	add r0, #0xf5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207E1EC
_0207E1E0:
	ldr r0, _0207E2A0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D414
	b _0207E25A
_0207E1EC:
	cmp r2, #2
	beq _0207E1F4
	cmp r2, #0x11
	bne _0207E200
_0207E1F4:
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E200:
	cmp r2, #0xf
	bne _0207E210
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E210:
	cmp r2, #0x16
	bne _0207E220
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E220:
	cmp r2, #0x17
	bne _0207E230
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E230:
	cmp r2, #0x15
	bne _0207E240
	add r0, r5, #0
	mov r1, #0xc5
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E240:
	cmp r2, #0xa
	beq _0207E250
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	b _0207E25A
_0207E250:
	add r1, #0x24
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_0200D414
_0207E25A:
	add r0, r5, #0
	bl sub_02081BC0
	add r0, r5, #0
	bl sub_0207F9A0
	add r0, r5, #0
	bl sub_020818F8
	cmp r0, #0
	bne _0207E278
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
_0207E278:
	ldr r0, _0207E2A4 ; =sub_0207E898
	add r1, r5, #0
	bl sub_02017798
	bl sub_020397E4
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0207E290: .word 0xFFFFE0FF
_0207E294: .word 0x04001000
_0207E298: .word 0x00000B29
_0207E29C: .word 0x000005A4
_0207E2A0: .word 0x000005C8
_0207E2A4: .word sub_0207E898
	thumb_func_end sub_0207E0B8

	thumb_func_start sub_0207E2A8
sub_0207E2A8: ; 0x0207E2A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0x21
	bhi _0207E322
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207E2C4: ; jump table
	.short _0207E308 - _0207E2C4 - 2 ; case 0
	.short _0207E310 - _0207E2C4 - 2 ; case 1
	.short _0207E318 - _0207E2C4 - 2 ; case 2
	.short _0207E32A - _0207E2C4 - 2 ; case 3
	.short _0207E332 - _0207E2C4 - 2 ; case 4
	.short _0207E33A - _0207E2C4 - 2 ; case 5
	.short _0207E344 - _0207E2C4 - 2 ; case 6
	.short _0207E34C - _0207E2C4 - 2 ; case 7
	.short _0207E354 - _0207E2C4 - 2 ; case 8
	.short _0207E35C - _0207E2C4 - 2 ; case 9
	.short _0207E364 - _0207E2C4 - 2 ; case 10
	.short _0207E36C - _0207E2C4 - 2 ; case 11
	.short _0207E374 - _0207E2C4 - 2 ; case 12
	.short _0207E37C - _0207E2C4 - 2 ; case 13
	.short _0207E384 - _0207E2C4 - 2 ; case 14
	.short _0207E38C - _0207E2C4 - 2 ; case 15
	.short _0207E394 - _0207E2C4 - 2 ; case 16
	.short _0207E39C - _0207E2C4 - 2 ; case 17
	.short _0207E3A4 - _0207E2C4 - 2 ; case 18
	.short _0207E3AC - _0207E2C4 - 2 ; case 19
	.short _0207E3B4 - _0207E2C4 - 2 ; case 20
	.short _0207E3BC - _0207E2C4 - 2 ; case 21
	.short _0207E3C4 - _0207E2C4 - 2 ; case 22
	.short _0207E3CC - _0207E2C4 - 2 ; case 23
	.short _0207E3D4 - _0207E2C4 - 2 ; case 24
	.short _0207E3DC - _0207E2C4 - 2 ; case 25
	.short _0207E3E4 - _0207E2C4 - 2 ; case 26
	.short _0207E3EC - _0207E2C4 - 2 ; case 27
	.short _0207E3F4 - _0207E2C4 - 2 ; case 28
	.short _0207E40C - _0207E2C4 - 2 ; case 29
	.short _0207E41A - _0207E2C4 - 2 ; case 30
	.short _0207E422 - _0207E2C4 - 2 ; case 31
	.short _0207E43C - _0207E2C4 - 2 ; case 32
	.short _0207E44A - _0207E2C4 - 2 ; case 33
_0207E308:
	bl sub_0207E490
	str r0, [r4, #0]
	b _0207E462
_0207E310:
	bl sub_0207E518
	str r0, [r4, #0]
	b _0207E462
_0207E318:
	add r1, r4, #0
	bl sub_02080B34
	cmp r0, #1
	beq _0207E324
_0207E322:
	b _0207E462
_0207E324:
	mov r0, #1
	str r0, [r4, #0]
	b _0207E462
_0207E32A:
	bl sub_02084B34
	str r0, [r4, #0]
	b _0207E462
_0207E332:
	bl sub_0207E5B4
	str r0, [r4, #0]
	b _0207E462
_0207E33A:
	ldr r1, _0207E480 ; =0x00000B18
	ldr r1, [r5, r1]
	blx r1
	str r0, [r4, #0]
	b _0207E462
_0207E344:
	bl sub_02086774
	str r0, [r4, #0]
	b _0207E462
_0207E34C:
	bl sub_02085804
	str r0, [r4, #0]
	b _0207E462
_0207E354:
	bl sub_0207E5F4
	str r0, [r4, #0]
	b _0207E462
_0207E35C:
	bl sub_02081594
	str r0, [r4, #0]
	b _0207E462
_0207E364:
	bl sub_020815B8
	str r0, [r4, #0]
	b _0207E462
_0207E36C:
	bl sub_0208150C
	str r0, [r4, #0]
	b _0207E462
_0207E374:
	bl sub_0208153C
	str r0, [r4, #0]
	b _0207E462
_0207E37C:
	bl sub_02081578
	str r0, [r4, #0]
	b _0207E462
_0207E384:
	bl sub_02081760
	str r0, [r4, #0]
	b _0207E462
_0207E38C:
	bl sub_0207E634
	str r0, [r4, #0]
	b _0207E462
_0207E394:
	bl sub_02081224
	str r0, [r4, #0]
	b _0207E462
_0207E39C:
	bl sub_02083658
	str r0, [r4, #0]
	b _0207E462
_0207E3A4:
	bl sub_020836A8
	str r0, [r4, #0]
	b _0207E462
_0207E3AC:
	bl sub_020836E4
	str r0, [r4, #0]
	b _0207E462
_0207E3B4:
	bl sub_020839BC
	str r0, [r4, #0]
	b _0207E462
_0207E3BC:
	bl sub_0207E750
	str r0, [r4, #0]
	b _0207E462
_0207E3C4:
	bl sub_020863A0
	str r0, [r4, #0]
	b _0207E462
_0207E3CC:
	bl sub_020845A8
	str r0, [r4, #0]
	b _0207E462
_0207E3D4:
	bl sub_0207E6C0
	str r0, [r4, #0]
	b _0207E462
_0207E3DC:
	bl sub_0207E6E4
	str r0, [r4, #0]
	b _0207E462
_0207E3E4:
	bl sub_0207E708
	str r0, [r4, #0]
	b _0207E462
_0207E3EC:
	bl sub_0207E714
	str r0, [r4, #0]
	b _0207E462
_0207E3F4:
	bl sub_020805E4
	cmp r0, #0
	bne _0207E402
	mov r0, #0x1d
	str r0, [r4, #0]
	b _0207E462
_0207E402:
	cmp r0, #3
	bne _0207E462
	mov r0, #1
	str r0, [r4, #0]
	b _0207E462
_0207E40C:
	bl sub_02083D1C
	cmp r0, #1
	bne _0207E462
	mov r0, #1
	str r0, [r4, #0]
	b _0207E462
_0207E41A:
	bl sub_02080BF4
	str r0, [r4, #0]
	b _0207E462
_0207E422:
	bl ov118_021D0DBC
	cmp r0, #1
	bne _0207E436
	add r0, r5, #0
	bl sub_020819CC
	mov r0, #0x19
	str r0, [r4, #0]
	b _0207E462
_0207E436:
	mov r0, #0x1f
	str r0, [r4, #0]
	b _0207E462
_0207E43C:
	mov r0, #1
	mov r1, #0xc
	bl sub_0208C120
	mov r0, #0x21
	str r0, [r4, #0]
	b _0207E462
_0207E44A:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0207E462
	ldr r0, _0207E484 ; =0x00000B29
	ldrb r1, [r5, r0]
	ldr r0, _0207E488 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x22
	strb r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0207E462:
	add r0, r5, #0
	bl sub_020831B4
	add r0, r5, #0
	bl sub_02083334
	add r0, r5, #0
	bl sub_0207FE1C
	ldr r0, _0207E48C ; =0x000005AC
	ldr r0, [r5, r0]
	bl sub_0200C7EC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0207E480: .word 0x00000B18
_0207E484: .word 0x00000B29
_0207E488: .word 0x000005A4
_0207E48C: .word 0x000005AC
	thumb_func_end sub_0207E2A8

	thumb_func_start sub_0207E490
sub_0207E490: ; 0x0207E490
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #1
	bne _0207E50A
	ldr r0, _0207E510 ; =0x000005A4
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x20
	ldrb r1, [r0]
	cmp r1, #5
	beq _0207E4AE
	cmp r1, #0x10
	bne _0207E4C6
_0207E4AE:
	ldrh r0, [r2, #0x24]
	bl sub_020857A8
	cmp r0, #1
	bne _0207E4C2
	ldr r0, _0207E514 ; =0x00000B26
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #7
	pop {r4, pc}
_0207E4C2:
	mov r0, #4
	pop {r4, pc}
_0207E4C6:
	cmp r1, #6
	bne _0207E4CE
	mov r0, #0x15
	pop {r4, pc}
_0207E4CE:
	cmp r1, #7
	bne _0207E4DA
	add r0, r4, #0
	bl sub_020862F8
	pop {r4, pc}
_0207E4DA:
	cmp r1, #8
	bne _0207E4E6
	add r0, r4, #0
	bl sub_02085EF4
	pop {r4, pc}
_0207E4E6:
	add r0, r1, #0
	add r0, #0xf5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207E4F6
	mov r0, #0xe
	pop {r4, pc}
_0207E4F6:
	cmp r1, #9
	bne _0207E4FE
	mov r0, #8
	pop {r4, pc}
_0207E4FE:
	cmp r1, #0xa
	bne _0207E506
	mov r0, #0x10
	pop {r4, pc}
_0207E506:
	mov r0, #1
	pop {r4, pc}
_0207E50A:
	mov r0, #0
	pop {r4, pc}
	nop
_0207E510: .word 0x000005A4
_0207E514: .word 0x00000B26
	thumb_func_end sub_0207E490

	thumb_func_start sub_0207E518
sub_0207E518: ; 0x0207E518
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207FE98
	cmp r0, #0
	bne _0207E55E
	ldr r0, _0207E5B0 ; =0x000005A4
	ldr r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	beq _0207E536
	cmp r0, #0x14
	bne _0207E540
_0207E536:
	mov r0, #0
	add r1, #0x23
	strb r0, [r1]
	mov r0, #0x20
	pop {r4, pc}
_0207E540:
	cmp r0, #0xe
	bne _0207E54E
	add r0, r4, #0
	bl sub_020868B0
	mov r0, #0x18
	pop {r4, pc}
_0207E54E:
	cmp r0, #0x13
	bne _0207E55A
	add r0, r4, #0
	bl sub_0208188C
	pop {r4, pc}
_0207E55A:
	mov r0, #2
	pop {r4, pc}
_0207E55E:
	cmp r0, #4
	bne _0207E56A
	add r0, r4, #0
	bl sub_02080670
	pop {r4, pc}
_0207E56A:
	cmp r0, #3
	bne _0207E57C
	ldr r0, _0207E5B0 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_0207E57C:
	cmp r0, #2
	bne _0207E5AA
	ldr r0, _0207E5B0 ; =0x000005A4
	ldr r2, [r4, r0]
	add r1, r2, #0
	add r1, #0x20
	ldrb r1, [r1]
	cmp r1, #0xf
	beq _0207E598
	mov r0, #1
	add r2, #0x23
	strb r0, [r2]
	mov r0, #0x20
	pop {r4, pc}
_0207E598:
	add r0, #0x24
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D414
	add r0, r4, #0
	bl sub_02084780
	pop {r4, pc}
_0207E5AA:
	mov r0, #1
	pop {r4, pc}
	nop
_0207E5B0: .word 0x000005A4
	thumb_func_end sub_0207E518

	thumb_func_start sub_0207E5B4
sub_0207E5B4: ; 0x0207E5B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02080FD0
	cmp r0, #0
	beq _0207E5C4
	cmp r0, #2
	bne _0207E5D6
_0207E5C4:
	ldr r0, _0207E5EC ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	bl sub_0208107C
	pop {r4, pc}
_0207E5D6:
	cmp r0, #3
	bne _0207E5E8
	ldr r0, _0207E5F0 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_0207E5E8:
	mov r0, #4
	pop {r4, pc}
	; .align 2, 0
_0207E5EC: .word 0x000005C8
_0207E5F0: .word 0x000005A4
	thumb_func_end sub_0207E5B4

	thumb_func_start sub_0207E5F4
sub_0207E5F4: ; 0x0207E5F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02080FD0
	cmp r0, #0
	beq _0207E604
	cmp r0, #2
	bne _0207E616
_0207E604:
	ldr r0, _0207E62C ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	bl sub_02081224
	pop {r4, pc}
_0207E616:
	cmp r0, #3
	bne _0207E628
	ldr r0, _0207E630 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_0207E628:
	mov r0, #8
	pop {r4, pc}
	; .align 2, 0
_0207E62C: .word 0x000005C8
_0207E630: .word 0x000005A4
	thumb_func_end sub_0207E5F4

	thumb_func_start sub_0207E634
sub_0207E634: ; 0x0207E634
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_02001BE0
	add r2, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r2, r0
	beq _0207E656
	add r0, r0, #1
	cmp r2, r0
	beq _0207E6B2
	b _0207E6A6
_0207E656:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #0x8d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _0207E6B8 ; =0x000006FC
	ldr r0, [r4, r0]
	bl sub_02013A3C
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _0207E6BC ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_0207E6A6:
	add r0, r4, #0
	add r1, sp, #0
	blx r2
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, pc}
_0207E6B2:
	mov r0, #0xf
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0207E6B8: .word 0x000006FC
_0207E6BC: .word 0x000005C8
	thumb_func_end sub_0207E634

	thumb_func_start sub_0207E6C0
sub_0207E6C0: ; 0x0207E6C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0207E6DC ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0207E6D6
	ldr r0, _0207E6E0 ; =0x00000B26
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0207E6D6:
	mov r0, #0x18
	pop {r4, pc}
	nop
_0207E6DC: .word 0x00000B28
_0207E6E0: .word 0x00000B26
	thumb_func_end sub_0207E6C0

	thumb_func_start sub_0207E6E4
sub_0207E6E4: ; 0x0207E6E4
	push {r3, lr}
	ldr r0, _0207E700 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0207E6FA
	ldr r0, _0207E704 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x20
	pop {r3, pc}
_0207E6FA:
	mov r0, #0x19
	pop {r3, pc}
	nop
_0207E700: .word 0x021BF67C
_0207E704: .word 0x000005DC
	thumb_func_end sub_0207E6E4

	thumb_func_start sub_0207E708
sub_0207E708: ; 0x0207E708
	push {r3, lr}
	bl sub_020827EC
	mov r0, #0x1b
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207E708

	thumb_func_start sub_0207E714
sub_0207E714: ; 0x0207E714
	push {r4, lr}
	add r4, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl sub_02002114
	cmp r0, #0
	beq _0207E732
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0207E73C
	b _0207E748
_0207E732:
	ldr r1, _0207E74C ; =0x00000B1C
	add r0, r4, #0
	ldr r1, [r4, r1]
	blx r1
	pop {r4, pc}
_0207E73C:
	mov r1, #0xb2
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
	pop {r4, pc}
_0207E748:
	mov r0, #0x1b
	pop {r4, pc}
	; .align 2, 0
_0207E74C: .word 0x00000B1C
	thumb_func_end sub_0207E714

	thumb_func_start sub_0207E750
sub_0207E750: ; 0x0207E750
	push {r4, lr}
	add r4, r0, #0
	bl sub_02080FD0
	cmp r0, #0
	beq _0207E760
	cmp r0, #2
	bne _0207E7B2
_0207E760:
	ldr r0, _0207E7C8 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _0207E7CC ; =0x00000B29
	mov r1, #0x2c
	ldrb r0, [r4, r0]
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0207E7D0 ; =0x00000714
	add r2, r4, r2
	ldrb r0, [r2, r0]
	cmp r0, #1
	beq _0207E786
	add r0, r4, #0
	bl sub_0208615C
	pop {r4, pc}
_0207E786:
	add r0, r4, #0
	sub r1, #0x2d
	mov r2, #1
	bl sub_02082708
	ldr r1, _0207E7D4 ; =0x000005A4
	mov r2, #0
	ldr r0, [r4, r1]
	add r1, #0xf8
	add r0, #0x23
	strb r2, [r0]
	ldr r0, _0207E7D8 ; =0x00000B26
	mov r2, #0x19
	strb r2, [r4, r0]
	ldr r2, _0207E7DC ; =0x000006A4
	ldr r0, [r4, r1]
	ldr r2, [r4, r2]
	mov r1, #0x69
	bl sub_0200B1B8
	mov r0, #0x18
	pop {r4, pc}
_0207E7B2:
	cmp r0, #3
	bne _0207E7C4
	ldr r0, _0207E7D4 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_0207E7C4:
	mov r0, #0x15
	pop {r4, pc}
	; .align 2, 0
_0207E7C8: .word 0x000005C8
_0207E7CC: .word 0x00000B29
_0207E7D0: .word 0x00000714
_0207E7D4: .word 0x000005A4
_0207E7D8: .word 0x00000B26
_0207E7DC: .word 0x000006A4
	thumb_func_end sub_0207E750

	thumb_func_start sub_0207E7E0
sub_0207E7E0: ; 0x0207E7E0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r6, #0
	bl sub_02082FF4
	add r0, r6, #0
	bl sub_02081B90
	ldr r0, [r6, #0]
	bl sub_0207EA24
	bl sub_0201E530
	bl sub_0201DC3C
	ldr r7, _0207E87C ; =0x00000704
	mov r4, #0
	add r5, r6, #0
_0207E812:
	ldr r0, [r5, r7]
	bl sub_020237BC
	add r4, r4, #1
	add r5, #0x2c
	cmp r4, #6
	blo _0207E812
	ldr r0, _0207E880 ; =0x000006A4
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0207E884 ; =0x000006A8
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r7, _0207E888 ; =0x000006AC
	mov r5, #0
	add r4, r6, #0
_0207E836:
	ldr r0, [r4, r7]
	bl sub_020237BC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x14
	blo _0207E836
	ldr r0, _0207E88C ; =0x0000069C
	ldr r0, [r6, r0]
	bl sub_0200B190
	ldr r0, _0207E890 ; =0x00000698
	ldr r0, [r6, r0]
	bl sub_0200C560
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200B3F0
	ldr r0, _0207E894 ; =0x00000B38
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0207E86A
	bl sub_0207A2C0
_0207E86A:
	ldr r0, [sp]
	bl sub_02006830
	mov r0, #0xc
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207E87C: .word 0x00000704
_0207E880: .word 0x000006A4
_0207E884: .word 0x000006A8
_0207E888: .word 0x000006AC
_0207E88C: .word 0x0000069C
_0207E890: .word 0x00000698
_0207E894: .word 0x00000B38
	thumb_func_end sub_0207E7E0

	thumb_func_start sub_0207E898
sub_0207E898: ; 0x0207E898
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r3, _0207E8B8 ; =0x027E0000
	ldr r1, _0207E8BC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_0207E8B8: .word 0x027E0000
_0207E8BC: .word 0x00003FF8
	thumb_func_end sub_0207E898

	thumb_func_start sub_0207E8C0
sub_0207E8C0: ; 0x0207E8C0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0207E8DC ; =0x020F1CD0
	add r3, sp, #0
	mov r2, #5
_0207E8CA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0207E8CA
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0207E8DC: .word 0x020F1CD0
	thumb_func_end sub_0207E8C0

	thumb_func_start sub_0207E8E0
sub_0207E8E0: ; 0x0207E8E0
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, _0207E914 ; =0x020F1C40
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0207E914: .word 0x020F1C40
	thumb_func_end sub_0207E8E0

	thumb_func_start sub_0207E918
sub_0207E918: ; 0x0207E918
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0207EA0C ; =0x020F1BC4
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	add r0, r4, #0
	bl sub_0207E8E0
	ldr r5, _0207EA10 ; =0x020F1BEC
	add r3, sp, #0x70
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
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _0207EA14 ; =0x020F1C08
	add r3, sp, #0x54
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
	ldr r5, _0207EA18 ; =0x020F1C24
	add r3, sp, #0x38
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
	ldr r5, _0207EA1C ; =0x020F1C78
	add r3, sp, #0x1c
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
	ldr r5, _0207EA20 ; =0x020F1C5C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0xc
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xc
	bl sub_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	; .align 2, 0
_0207EA0C: .word 0x020F1BC4
_0207EA10: .word 0x020F1BEC
_0207EA14: .word 0x020F1C08
_0207EA18: .word 0x020F1C24
_0207EA1C: .word 0x020F1C78
_0207EA20: .word 0x020F1C5C
	thumb_func_end sub_0207E918

	thumb_func_start sub_0207EA24
sub_0207EA24: ; 0x0207EA24
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x13
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
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
	mov r1, #0
	bl sub_02019044
	mov r0, #0xc
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207EA24

	thumb_func_start sub_0207EA74
sub_0207EA74: ; 0x0207EA74
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _0207EAA4
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02019044
	mov r0, #1
	mov r1, #0
	add r2, r0, #0
	bl GX_SetGraphicsMode
	mov r0, #0xc
	bl sub_0207EAD4
	mov r1, #0x2d
	lsl r1, r1, #6
	str r0, [r4, r1]
	pop {r4, pc}
_0207EAA4:
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x2d
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0207EB64
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	bl GX_SetGraphicsMode
	ldr r0, [r4, #0]
	bl sub_0207E8E0
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0xc
	bl sub_02019690
	pop {r4, pc}
	thumb_func_end sub_0207EA74

	thumb_func_start sub_0207EAD4
sub_0207EAD4: ; 0x0207EAD4
	push {r3, lr}
	sub sp, #8
	mov r1, #2
	str r1, [sp]
	ldr r1, _0207EAF0 ; =sub_0207EAF4
	mov r2, #1
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	nop
_0207EAF0: .word sub_0207EAF4
	thumb_func_end sub_0207EAD4

	thumb_func_start sub_0207EAF4
sub_0207EAF4: ; 0x0207EAF4
	push {r3, lr}
	ldr r0, _0207EB4C ; =0x04000060
	ldr r1, _0207EB50 ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0207EB54 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _0207EB58 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _0207EB5C ; =0xBFFF0000
	ldr r0, _0207EB60 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_0207EB4C: .word 0x04000060
_0207EB50: .word 0xFFFFCFFD
_0207EB54: .word 0x0000CFFB
_0207EB58: .word 0x00007FFF
_0207EB5C: .word 0xBFFF0000
_0207EB60: .word 0x04000580
	thumb_func_end sub_0207EAF4

	thumb_func_start sub_0207EB64
sub_0207EB64: ; 0x0207EB64
	ldr r3, _0207EB68 ; =sub_020242C4
	bx r3
	; .align 2, 0
_0207EB68: .word sub_020242C4
	thumb_func_end sub_0207EB64

	thumb_func_start sub_0207EB6C
sub_0207EB6C: ; 0x0207EB6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	add r4, r1, #0
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x11
	mov r3, #3
	bl sub_0200710C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0xc
	bl sub_02006CB8
	add r1, sp, #0x10
	add r6, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	ldr r2, [sp, #0x10]
	mov r0, #3
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0201972C
	ldr r1, [sp, #0x10]
	ldr r0, _0207ECB8 ; =0x000004A4
	ldr r1, [r1, #0xc]
	mov r2, #1
	add r0, r5, r0
	add r1, #0x60
	lsl r2, r2, #8
	bl memcpy
	mov r0, #0xc
	add r1, r6, #0
	bl sub_02018238
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0xc
	bl sub_02002E98
	mov r1, #0
	str r1, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r2, #1
	mov r3, #0xe
	bl sub_0200DAA4
	ldr r0, _0207ECBC ; =0x000005A4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0xc]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #0
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #3
	mov r3, #4
	bl sub_020070E8
	mov r3, #0x20
	mov r1, #4
	str r3, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0xc
	str r1, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #5
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r2, #0x99
	lsl r2, r2, #2
	mov r3, #0xf9
	add r1, r5, r2
	add r2, #0xc0
	lsl r3, r3, #2
	mov r0, #0xc
	add r2, r5, r2
	add r3, r5, r3
	bl sub_02081940
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0207ECB8: .word 0x000004A4
_0207ECBC: .word 0x000005A4
	thumb_func_end sub_0207EB6C

	thumb_func_start sub_0207ECC0
sub_0207ECC0: ; 0x0207ECC0
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0207ED9C ; =0x00000B44
	mov r2, #0xc
	add r4, r0, #0
	bl sub_0200681C
	ldr r2, _0207ED9C ; =0x00000B44
	mov r1, #0
	add r6, r0, #0
	bl memset
	add r0, r4, #0
	bl sub_02006840
	ldr r1, _0207EDA0 ; =0x000005A4
	str r0, [r6, r1]
	mov r0, #0xc
	bl sub_02018340
	str r0, [r6, #0]
	ldr r0, _0207EDA0 ; =0x000005A4
	ldr r1, [r6, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	bne _0207ED08
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0207ED08
	mov r0, #0xc
	bl sub_0207A2A8
	ldr r1, _0207EDA4 ; =0x00000B38
	str r0, [r6, r1]
	b _0207ED0E
_0207ED08:
	ldr r0, _0207EDA4 ; =0x00000B38
	mov r1, #0
	str r1, [r6, r0]
_0207ED0E:
	ldr r2, _0207EDA8 ; =0x000001C5
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xc
	bl sub_0200B144
	ldr r1, _0207EDAC ; =0x0000069C
	mov r2, #0
	str r0, [r6, r1]
	mov r0, #0xf
	mov r1, #0xe
	mov r3, #0xc
	bl sub_0200C440
	ldr r1, _0207EDB0 ; =0x00000698
	str r0, [r6, r1]
	mov r0, #0xc
	bl sub_0200B358
	mov r1, #0x6a
	lsl r1, r1, #4
	add r7, r1, #0
	str r0, [r6, r1]
	mov r4, #0
	add r5, r6, #0
	add r7, #0x64
_0207ED42:
	mov r0, #0xb
	mov r1, #0xc
	bl sub_02023790
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, #0x2c
	cmp r4, #6
	blo _0207ED42
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xc
	bl sub_02023790
	ldr r1, _0207EDB4 ; =0x000006A4
	str r0, [r6, r1]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xc
	bl sub_02023790
	ldr r1, _0207EDB8 ; =0x000006A8
	mov r5, #0
	str r0, [r6, r1]
	add r4, r6, #0
	add r7, r1, #4
_0207ED76:
	mov r0, #0x20
	mov r1, #0xc
	bl sub_02023790
	str r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x14
	blo _0207ED76
	ldr r0, _0207EDA0 ; =0x000005A4
	ldr r0, [r6, r0]
	add r0, #0x22
	ldrb r1, [r0]
	ldr r0, _0207EDBC ; =0x00000B29
	strb r1, [r6, r0]
	add r0, r0, #1
	strb r1, [r6, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207ED9C: .word 0x00000B44
_0207EDA0: .word 0x000005A4
_0207EDA4: .word 0x00000B38
_0207EDA8: .word 0x000001C5
_0207EDAC: .word 0x0000069C
_0207EDB0: .word 0x00000698
_0207EDB4: .word 0x000006A4
_0207EDB8: .word 0x000006A8
_0207EDBC: .word 0x00000B29
	thumb_func_end sub_0207ECC0

	thumb_func_start sub_0207EDC0
sub_0207EDC0: ; 0x0207EDC0
	push {r3, r4}
	ldr r2, _0207EE0C ; =0x000005A4
	mov r3, #0x80
	ldr r1, [r0, r2]
	add r1, #0x20
	ldrb r4, [r1]
	add r1, r4, #0
	tst r1, r3
	beq _0207EDEC
	ldr r1, _0207EE10 ; =0x00000B27
	ldrb r4, [r0, r1]
	orr r4, r3
	strb r4, [r0, r1]
	ldr r1, [r0, r2]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, #0x20
	eor r0, r3
	strb r0, [r1]
	pop {r3, r4}
	bx lr
_0207EDEC:
	cmp r4, #0x15
	bne _0207EDFC
	ldr r1, _0207EE10 ; =0x00000B27
	ldrb r2, [r0, r1]
	orr r2, r3
	strb r2, [r0, r1]
	pop {r3, r4}
	bx lr
_0207EDFC:
	ldr r2, _0207EE10 ; =0x00000B27
	mov r1, #0x80
	ldrb r3, [r0, r2]
	bic r3, r1
	strb r3, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_0207EE0C: .word 0x000005A4
_0207EE10: .word 0x00000B27
	thumb_func_end sub_0207EDC0

	thumb_func_start sub_0207EE14
sub_0207EE14: ; 0x0207EE14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0207EEE8 ; =0x000005A4
	mov r4, #3
	ldr r1, [r5, r0]
	add r0, r1, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	bne _0207EE30
	ldr r1, _0207EEEC ; =0x020F1CF8
	ldr r0, _0207EEF0 ; =0x0000080C
	str r1, [r5, r0]
	b _0207EE60
_0207EE30:
	add r1, #0x20
	ldrb r1, [r1]
	cmp r1, #2
	beq _0207EE48
	cmp r1, #0x11
	beq _0207EE48
	add r0, r1, #0
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207EE50
_0207EE48:
	ldr r1, _0207EEF4 ; =0x020F1D38
	ldr r0, _0207EEF0 ; =0x0000080C
	str r1, [r5, r0]
	b _0207EE60
_0207EE50:
	cmp r1, #0x15
	ldr r0, _0207EEF0 ; =0x0000080C
	bne _0207EE5C
	ldr r1, _0207EEF8 ; =0x020F1D78
	str r1, [r5, r0]
	b _0207EE60
_0207EE5C:
	ldr r1, _0207EEFC ; =0x020F1DB8
	str r1, [r5, r0]
_0207EE60:
	ldr r0, _0207EEE8 ; =0x000005A4
	ldr r1, [r5, r0]
	add r1, #0x20
	ldrb r1, [r1]
	cmp r1, #2
	beq _0207EEBA
	cmp r1, #0x11
	beq _0207EEBA
	cmp r1, #0x17
	beq _0207EEBA
	cmp r1, #0x16
	beq _0207EEBA
	add r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0207EF00 ; =0x000005D4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _0207EF00 ; =0x000005D4
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D50C
	ldr r0, _0207EF00 ; =0x000005D4
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	sub r2, #8
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl sub_0200D494
	mov r0, #1
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0207EEBA:
	ldr r0, _0207EEE8 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #4
	beq _0207EECA
	cmp r0, #0x15
	bne _0207EEDC
_0207EECA:
	ldr r0, _0207EF00 ; =0x000005D4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	mov r0, #2
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0207EEDC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020825B4
	pop {r3, r4, r5, pc}
	nop
_0207EEE8: .word 0x000005A4
_0207EEEC: .word 0x020F1CF8
_0207EEF0: .word 0x0000080C
_0207EEF4: .word 0x020F1D38
_0207EEF8: .word 0x020F1D78
_0207EEFC: .word 0x020F1DB8
_0207EF00: .word 0x000005D4
	thumb_func_end sub_0207EE14

	thumb_func_start sub_0207EF04
sub_0207EF04: ; 0x0207EF04
	mov r2, #0x2c
	mul r2, r1
	add r1, r0, r2
	ldr r0, _0207EF10 ; =0x0000072D
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_0207EF10: .word 0x0000072D
	thumb_func_end sub_0207EF04

	thumb_func_start sub_0207EF14
sub_0207EF14: ; 0x0207EF14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #0x2c
	add r4, r0, #0
	ldr r0, _0207F060 ; =0x0000072D
	mul r4, r1
	add r0, r5, r0
	mov r1, #0
	str r0, [sp, #8]
	strb r1, [r0, r4]
	ldr r0, _0207F064 ; =0x000005A4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	ldr r1, [sp]
	cmp r0, r1
	bgt _0207EF44
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207EF44:
	ldr r0, _0207F064 ; =0x000005A4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	bne _0207EF66
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207EF66:
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02081ED8
	ldr r0, [sp]
	mov r1, #0x2c
	add r6, r0, #0
	mul r6, r1
	ldr r1, _0207F068 ; =0x00000708
	ldr r0, [sp, #4]
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F06C ; =0x0000070A
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F070 ; =0x0000070C
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F074 ; =0x0000070E
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	mov r1, #0x71
	add r2, r5, r6
	lsl r1, r1, #4
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xa2
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F078 ; =0x00000716
	add r2, r5, r6
	strh r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F07C ; =0x00000714
	add r2, r5, r6
	strb r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	ldr r1, _0207F080 ; =0x00000715
	add r2, r5, r6
	strb r0, [r2, r1]
	add r0, r7, #0
	mov r1, #0xb0
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	ldr r0, _0207F084 ; =0x00000712
	bne _0207F00C
	add r2, r5, r0
	ldrh r1, [r2, r4]
	ldr r0, _0207F088 ; =0xFFFFEFFF
	and r0, r1
	b _0207F016
_0207F00C:
	add r2, r5, r0
	ldrh r1, [r2, r4]
	mov r0, #1
	lsl r0, r0, #0xc
	orr r0, r1
_0207F016:
	strh r0, [r2, r4]
	ldr r0, _0207F084 ; =0x00000712
	add r6, r5, r0
	add r0, r7, #0
	bl sub_02075D6C
	lsl r0, r0, #0x1e
	ldrh r2, [r6, r4]
	ldr r1, _0207F08C ; =0xFFFF9FFF
	lsr r0, r0, #0x11
	and r1, r2
	orr r0, r1
	strh r0, [r6, r4]
	ldr r0, [sp, #8]
	mov r1, #1
	strb r1, [r0, r4]
	add r0, r7, #0
	bl sub_0208E9F0
	lsl r0, r0, #0x18
	ldrh r1, [r6, r4]
	ldr r2, _0207F090 ; =0xFFFFF000
	lsr r0, r0, #0x18
	and r1, r2
	lsr r2, r2, #0x14
	and r0, r2
	orr r0, r1
	strh r0, [r6, r4]
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0207F094
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F060: .word 0x0000072D
_0207F064: .word 0x000005A4
_0207F068: .word 0x00000708
_0207F06C: .word 0x0000070A
_0207F070: .word 0x0000070C
_0207F074: .word 0x0000070E
_0207F078: .word 0x00000716
_0207F07C: .word 0x00000714
_0207F080: .word 0x00000715
_0207F084: .word 0x00000712
_0207F088: .word 0xFFFFEFFF
_0207F08C: .word 0xFFFF9FFF
_0207F090: .word 0xFFFFF000
	thumb_func_end sub_0207EF14

	thumb_func_start sub_0207F094
sub_0207F094: ; 0x0207F094
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0207F124 ; =0x000005A4
	add r5, r1, #0
	ldr r1, [r7, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0207F120
	mov r0, #0x2c
	add r6, r2, #0
	mul r6, r0
	ldr r0, _0207F128 ; =0x00000714
	add r3, r7, r6
	ldrb r2, [r3, r0]
	cmp r2, #1
	beq _0207F0C0
	sub r0, #0xa
	ldrh r0, [r3, r0]
	cmp r0, #0
	bne _0207F0CE
_0207F0C0:
	ldr r0, _0207F12C ; =0x00000712
	add r2, r7, r0
	ldrh r1, [r2, r6]
	ldr r0, _0207F130 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0207F0CE:
	add r1, #0x2a
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_0207F134
	str r0, [sp]
	mov r4, #0
_0207F0DC:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207F0F2
	add r4, r4, #1
	cmp r4, #4
	blo _0207F0DC
_0207F0F2:
	ldr r0, _0207F124 ; =0x000005A4
	ldr r0, [r7, r0]
	add r0, #0x2b
	ldrb r1, [r0]
	ldr r0, [sp]
	cmp r1, r0
	bhi _0207F114
	cmp r4, #2
	blo _0207F114
	ldr r0, _0207F12C ; =0x00000712
	add r2, r7, r0
	ldrh r1, [r2, r6]
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r2, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0207F114:
	ldr r0, _0207F12C ; =0x00000712
	add r2, r7, r0
	ldrh r1, [r2, r6]
	ldr r0, _0207F130 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2, r6]
_0207F120:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207F124: .word 0x000005A4
_0207F128: .word 0x00000714
_0207F12C: .word 0x00000712
_0207F130: .word 0xFFFF7FFF
	thumb_func_end sub_0207F094

	thumb_func_start sub_0207F134
sub_0207F134: ; 0x0207F134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #4
	bls _0207F13E
	b _0207F242
_0207F13E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207F14A: ; jump table
	.short _0207F154 - _0207F14A - 2 ; case 0
	.short _0207F184 - _0207F14A - 2 ; case 1
	.short _0207F1B4 - _0207F14A - 2 ; case 2
	.short _0207F1E4 - _0207F14A - 2 ; case 3
	.short _0207F214 - _0207F14A - 2 ; case 4
_0207F154:
	mov r1, #0x7b
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x7c
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x7d
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x7e
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	b _0207F242
_0207F184:
	mov r1, #0x7f
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x80
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x82
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	b _0207F242
_0207F1B4:
	mov r1, #0x83
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x84
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x85
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x86
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	b _0207F242
_0207F1E4:
	mov r1, #0x87
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x88
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x89
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x8a
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	b _0207F242
_0207F214:
	mov r1, #0x8b
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8c
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x8d
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
	add r0, r5, #0
	mov r1, #0x8e
	mov r2, #0
	bl sub_02074470
	add r4, r4, r0
_0207F242:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207F134

	thumb_func_start sub_0207F248
sub_0207F248: ; 0x0207F248
	mov r1, #0x39
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0207F248

	thumb_func_start sub_0207F250
sub_0207F250: ; 0x0207F250
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	beq _0207F270
	ldr r0, _0207F300 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0207F278
	cmp r4, #1
	bne _0207F278
_0207F270:
	mov r0, #0x99
	lsl r0, r0, #2
	add r0, r5, r0
	b _0207F27E
_0207F278:
	mov r0, #0xc9
	lsl r0, r0, #2
	add r0, r5, r0
_0207F27E:
	mov r1, #0x2c
	mul r1, r4
	ldr r2, _0207F304 ; =0x00000718
	add r1, r5, r1
	strb r6, [r1, r2]
	add r2, r2, #1
	strb r7, [r1, r2]
	mov r2, #0x10
	str r2, [sp]
	mov r1, #6
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0]
	mov r1, #2
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020198E8
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _0207F2D8
	add r0, r7, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x10
	add r3, r6, #6
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	mov r2, #0x17
	lsr r3, r3, #0x18
	bl sub_02019CB8
_0207F2D8:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r1, #2
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02019E2C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F8F8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0207F300: .word 0x000005A4
_0207F304: .word 0x00000718
	thumb_func_end sub_0207F250

	thumb_func_start sub_0207F308
sub_0207F308: ; 0x0207F308
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0207F37C ; =0x000005A4
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	bne _0207F31E
	ldr r1, _0207F380 ; =0x020F1E40
	b _0207F320
_0207F31E:
	ldr r1, _0207F384 ; =0x020F1DF8
_0207F320:
	add r2, #0x20
	ldrb r0, [r2]
	cmp r0, #0x10
	bne _0207F330
	add r0, r4, #0
	bl sub_0207F4AC
	b _0207F368
_0207F330:
	cmp r0, #6
	bne _0207F33C
	add r0, r4, #0
	bl sub_0207F5A0
	b _0207F368
_0207F33C:
	cmp r0, #0xd
	bne _0207F348
	add r0, r4, #0
	bl sub_0207F694
	b _0207F368
_0207F348:
	cmp r0, #2
	beq _0207F35A
	cmp r0, #0x11
	beq _0207F35A
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207F362
_0207F35A:
	add r0, r4, #0
	bl sub_0207F788
	b _0207F368
_0207F362:
	add r0, r4, #0
	bl sub_0207F388
_0207F368:
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_0201C3C0
	pop {r4, pc}
	nop
_0207F37C: .word 0x000005A4
_0207F380: .word 0x020F1E40
_0207F384: .word 0x020F1DF8
	thumb_func_end sub_0207F308

	thumb_func_start sub_0207F388
sub_0207F388: ; 0x0207F388
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F39C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F47A
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0207F4A4 ; =0x00000714
	str r1, [sp, #4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0207F3DA
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	mov r0, #0
	str r0, [sp]
	add r3, r6, r2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	b _0207F3FA
_0207F3DA:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	mov r0, #1
	str r0, [sp]
	add r3, r6, r2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
_0207F3FA:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020821F8
	mov r0, #0xc
	mul r0, r4
	add r7, r6, r0
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r7, #4]
	ldrh r3, [r7, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r7, #8]
	ldrh r3, [r7, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	ldr r3, [sp, #4]
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r7, r2]
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldr r2, _0207F4A8 ; =0x00000712
	add r0, r5, #0
	ldrh r2, [r3, r2]
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F490
_0207F47A:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	add r7, r6, r2
	mov r3, #2
	ldrsh r2, [r6, r2]
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F490:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F39C
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0207F4A4: .word 0x00000714
_0207F4A8: .word 0x00000712
	thumb_func_end sub_0207F388

	thumb_func_start sub_0207F4AC
sub_0207F4AC: ; 0x0207F4AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F4C0:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F56C
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r6, r0, r2
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r3, r2]
	ldrh r3, [r6, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0208232C
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r6, #4]
	ldrh r3, [r6, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r6, #8]
	ldrh r3, [r6, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r3, r5, r7
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	ldr r2, _0207F59C ; =0x00000712
	add r3, r5, r7
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F586
_0207F56C:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	add r3, r0, r2
	ldrsh r2, [r6, r2]
	mov r6, #2
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F586:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F4C0
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F59C: .word 0x00000712
	thumb_func_end sub_0207F4AC

	thumb_func_start sub_0207F5A0
sub_0207F5A0: ; 0x0207F5A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F5B4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F660
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r6, r0, r2
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r3, r2]
	ldrh r3, [r6, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020823C4
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r6, #4]
	ldrh r3, [r6, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r6, #8]
	ldrh r3, [r6, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r3, r5, r7
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	ldr r2, _0207F690 ; =0x00000712
	add r3, r5, r7
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F67A
_0207F660:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	add r3, r0, r2
	ldrsh r2, [r6, r2]
	mov r6, #2
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F67A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F5B4
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F690: .word 0x00000712
	thumb_func_end sub_0207F5A0

	thumb_func_start sub_0207F694
sub_0207F694: ; 0x0207F694
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F6A8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F754
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r6, r0, r2
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r3, r2]
	ldrh r3, [r6, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0208245C
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r6, #4]
	ldrh r3, [r6, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r6, #8]
	ldrh r3, [r6, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r3, r5, r7
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	ldr r2, _0207F784 ; =0x00000712
	add r3, r5, r7
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F76E
_0207F754:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	add r3, r0, r2
	ldrsh r2, [r6, r2]
	mov r6, #2
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F76E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F6A8
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F784: .word 0x00000712
	thumb_func_end sub_0207F694

	thumb_func_start sub_0207F788
sub_0207F788: ; 0x0207F788
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0x13
	mov r1, #0xc
	bl sub_02006C24
	str r0, [sp, #8]
	mov r4, #0
_0207F79C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF14
	cmp r0, #1
	bne _0207F850
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r6, r0, r2
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r3, r2]
	ldrh r3, [r6, #2]
	add r0, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0207F250
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020824C0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082508
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [sp]
	ldrh r2, [r6, #4]
	ldrh r3, [r6, #6]
	add r0, r5, #0
	bl sub_02082CEC
	ldrh r2, [r6, #8]
	ldrh r3, [r6, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082FAC
	mov r2, #0x71
	mov r0, #0x2c
	add r7, r4, #0
	mul r7, r0
	add r3, r5, r7
	lsl r2, r2, #4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083040
	mov r2, #4
	mov r3, #6
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02083104
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020830D4
	ldr r2, _0207F880 ; =0x00000712
	add r3, r5, r7
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	b _0207F86A
_0207F850:
	mov r0, #0xc
	add r2, r4, #0
	mul r2, r0
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	add r3, r0, r2
	ldrsh r2, [r6, r2]
	mov r6, #2
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F884
_0207F86A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0207F79C
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207F880: .word 0x00000712
	thumb_func_end sub_0207F788

	thumb_func_start sub_0207F884
sub_0207F884: ; 0x0207F884
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	add r4, r2, #0
	mov r1, #0x10
	mov r2, #0xf9
	add r5, r0, #0
	lsl r2, r2, #2
	add r6, r3, #0
	lsl r3, r6, #0x18
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r2, r5, r2
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	lsl r2, r4, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #7
	bl sub_02083014
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02083040
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02083104
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207F884

	thumb_func_start sub_0207F8F8
sub_0207F8F8: ; 0x0207F8F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0207F974 ; =0x000005A4
	add r6, r1, #0
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r1, _0207F978 ; =0x00000B27
	ldrb r2, [r5, r1]
	lsl r3, r2, #0x19
	lsr r3, r3, #0x1f
	cmp r3, #1
	bne _0207F928
	add r1, r1, #2
	ldrb r1, [r5, r1]
	cmp r6, r1
	beq _0207F924
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1a
	cmp r6, r1
	bne _0207F928
_0207F924:
	mov r4, #7
	b _0207F95C
_0207F928:
	ldr r1, _0207F97C ; =0x00000B29
	ldrb r1, [r5, r1]
	cmp r6, r1
	bne _0207F934
	mov r4, #4
	b _0207F936
_0207F934:
	mov r4, #0
_0207F936:
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0207F94A
	add r0, r4, #2
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _0207F95C
_0207F94A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207F984
	cmp r0, #1
	bne _0207F95C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0207F95C:
	ldr r1, _0207F980 ; =0x000004A4
	add r3, r6, #3
	add r2, r5, r1
	lsl r1, r4, #5
	lsl r3, r3, #0x15
	add r1, r2, r1
	mov r0, #2
	mov r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0201972C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207F974: .word 0x000005A4
_0207F978: .word 0x00000B27
_0207F97C: .word 0x00000B29
_0207F980: .word 0x000004A4
	thumb_func_end sub_0207F8F8

	thumb_func_start sub_0207F984
sub_0207F984: ; 0x0207F984
	ldr r2, _0207F99C ; =0x000005A4
	ldr r0, [r0, r2]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	bne _0207F996
	mov r0, #1
	tst r1, r0
	bne _0207F998
_0207F996:
	mov r0, #0
_0207F998:
	bx lr
	nop
_0207F99C: .word 0x000005A4
	thumb_func_end sub_0207F984

	thumb_func_start sub_0207F9A0
sub_0207F9A0: ; 0x0207F9A0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r3, #0
	ldr r0, _0207F9F0 ; =0x00000B29
	str r3, [sp]
	ldrb r0, [r4, r0]
	add r1, sp, #0xc
	add r1, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207F9F4 ; =0x0000080C
	add r2, sp, #0xc
	ldr r0, [r4, r0]
	bl sub_0201E028
	ldr r0, _0207F9F8 ; =0x000005A4
	ldr r1, _0207F9F0 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _0207F9FC ; =0x000005C8
	ldr r0, [r4, r0]
	bl sub_02021D6C
	ldr r0, _0207F9FC ; =0x000005C8
	add r2, sp, #0xc
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r4, r0]
	bl sub_0200D494
	add sp, #0x10
	pop {r4, pc}
	nop
_0207F9F0: .word 0x00000B29
_0207F9F4: .word 0x0000080C
_0207F9F8: .word 0x000005A4
_0207F9FC: .word 0x000005C8
	thumb_func_end sub_0207F9A0

	thumb_func_start sub_0207FA00
sub_0207FA00: ; 0x0207FA00
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207FA24
	cmp r0, #1
	bne _0207FA10
	mov r0, #1
	pop {r4, pc}
_0207FA10:
	add r0, r4, #0
	bl sub_0207FC94
	cmp r0, #1
	bne _0207FA1E
	mov r0, #2
	pop {r4, pc}
_0207FA1E:
	mov r0, #5
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207FA00

	thumb_func_start sub_0207FA24
sub_0207FA24: ; 0x0207FA24
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _0207FBC4 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	mov r3, #4
	tst r1, r0
	beq _0207FA3A
	mov r3, #0
	b _0207FA56
_0207FA3A:
	mov r1, #0x80
	tst r1, r0
	beq _0207FA44
	mov r3, #1
	b _0207FA56
_0207FA44:
	mov r1, #0x20
	tst r1, r0
	beq _0207FA4E
	mov r3, #2
	b _0207FA56
_0207FA4E:
	mov r1, #0x10
	tst r0, r1
	beq _0207FA56
	mov r3, #3
_0207FA56:
	cmp r3, #4
	bne _0207FA60
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0207FA60:
	ldr r4, _0207FBC8 ; =0x00000B29
	ldrb r0, [r5, r4]
	cmp r0, #6
	bne _0207FA9C
	cmp r3, #0
	add r1, sp, #0
	bne _0207FA8E
	add r4, r4, #1
	ldrb r6, [r5, r4]
	mov r4, #1
	ldr r3, _0207FBCC ; =0x020F1BD4
	and r4, r6
	add r6, r4, #2
	mov r4, #6
	mul r4, r6
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	add r3, r3, r4
	bl sub_0207FC30
	add r6, r0, #0
	b _0207FB1E
_0207FA8E:
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	bl sub_0207FBE0
	add r6, r0, #0
	b _0207FB1E
_0207FA9C:
	cmp r0, #7
	bne _0207FB10
	ldr r0, _0207FBD0 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	beq _0207FADE
	cmp r0, #0x11
	beq _0207FADE
	cmp r0, #0x17
	beq _0207FADE
	cmp r0, #0x16
	beq _0207FADE
	cmp r3, #0
	bne _0207FADE
	add r4, r4, #1
	ldrb r6, [r5, r4]
	mov r4, #1
	add r1, sp, #0
	and r4, r6
	add r6, r4, #2
	mov r4, #6
	ldr r3, _0207FBCC ; =0x020F1BD4
	mul r4, r6
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	add r3, r3, r4
	bl sub_0207FC30
	add r6, r0, #0
	b _0207FB1E
_0207FADE:
	cmp r3, #1
	add r1, sp, #0
	bne _0207FB02
	ldr r4, _0207FBD4 ; =0x00000B2A
	ldr r3, _0207FBCC ; =0x020F1BD4
	ldrb r6, [r5, r4]
	mov r4, #1
	add r0, r5, #0
	and r6, r4
	mov r4, #6
	mul r4, r6
	add r1, #1
	add r2, sp, #0
	add r3, r3, r4
	bl sub_0207FC30
	add r6, r0, #0
	b _0207FB1E
_0207FB02:
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	bl sub_0207FBE0
	add r6, r0, #0
	b _0207FB1E
_0207FB10:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #1
	add r2, sp, #0
	bl sub_0207FBE0
	add r6, r0, #0
_0207FB1E:
	ldr r0, _0207FBC8 ; =0x00000B29
	ldrb r0, [r5, r0]
	cmp r6, r0
	beq _0207FBBC
	cmp r6, #0xff
	beq _0207FBBC
	add r0, r6, #0
	add r0, #0xfa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207FB42
	ldr r0, _0207FBD8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	b _0207FB72
_0207FB42:
	ldr r0, _0207FBD0 ; =0x000005A4
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _0207FBD8 ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _0207FBD8 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0207FBD8 ; =0x000005C8
	add r2, sp, #0
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
_0207FB72:
	ldr r0, _0207FBC8 ; =0x00000B29
	mov r2, #0
	ldrb r4, [r5, r0]
	strb r6, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080500
	ldr r1, _0207FBC8 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	bl sub_02080500
	ldr r0, _0207FBDC ; =0x000005DC
	bl sub_02005748
	cmp r4, #6
	bhs _0207FBAA
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
_0207FBAA:
	cmp r4, #6
	beq _0207FBB6
	cmp r4, #7
	beq _0207FBB6
	ldr r0, _0207FBD4 ; =0x00000B2A
	strb r4, [r5, r0]
_0207FBB6:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0207FBBC:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0207FBC4: .word 0x021BF67C
_0207FBC8: .word 0x00000B29
_0207FBCC: .word 0x020F1BD4
_0207FBD0: .word 0x000005A4
_0207FBD4: .word 0x00000B2A
_0207FBD8: .word 0x000005C8
_0207FBDC: .word 0x000005DC
	thumb_func_end sub_0207FA24

	thumb_func_start sub_0207FBE0
sub_0207FBE0: ; 0x0207FBE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0207FC28 ; =0x00000B29
	add r7, r1, #0
	ldrb r4, [r5, r0]
	str r2, [sp, #0xc]
	add r6, r3, #0
_0207FBF0:
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, _0207FC2C ; =0x0000080C
	str r6, [sp, #8]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	mov r3, #0
	bl sub_0201E028
	add r4, r0, #0
	cmp r4, #6
	beq _0207FC20
	cmp r4, #7
	beq _0207FC20
	cmp r4, #0xff
	beq _0207FC20
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207EF04
	cmp r0, #0
	beq _0207FBF0
_0207FC20:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207FC28: .word 0x00000B29
_0207FC2C: .word 0x0000080C
	thumb_func_end sub_0207FBE0

	thumb_func_start sub_0207FC30
sub_0207FC30: ; 0x0207FC30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #0xc]
	add r5, r3, #0
	mov r4, #0
_0207FC3E:
	cmp r4, #6
	beq _0207FC74
	ldrb r1, [r5, r4]
	add r0, r6, #0
	bl sub_0207EF04
	cmp r0, #0
	beq _0207FC6C
	mov r3, #0
	str r3, [sp]
	ldrb r0, [r5, r4]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207FC90 ; =0x0000080C
	ldr r0, [r6, r0]
	bl sub_0201E028
	add sp, #0x10
	ldrb r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0207FC6C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _0207FC3E
_0207FC74:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207FC90 ; =0x0000080C
	ldr r2, [sp, #0xc]
	ldr r0, [r6, r0]
	add r1, r7, #0
	bl sub_0201E028
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0207FC90: .word 0x0000080C
	thumb_func_end sub_0207FC30

	thumb_func_start sub_0207FC94
sub_0207FC94: ; 0x0207FC94
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02080AD8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0207FD44
	ldr r1, _0207FD4C ; =0x00000B29
	mov r2, #0
	ldrb r4, [r5, r1]
	strb r0, [r5, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080500
	ldr r1, _0207FD4C ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	bl sub_02080500
	cmp r4, #6
	bhs _0207FCD0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
_0207FCD0:
	mov r3, #0
	ldr r0, _0207FD4C ; =0x00000B29
	str r3, [sp]
	ldrb r0, [r5, r0]
	add r1, sp, #0xc
	add r1, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207FD50 ; =0x0000080C
	add r2, sp, #0xc
	ldr r0, [r5, r0]
	bl sub_0201E028
	ldr r0, _0207FD54 ; =0x000005A4
	ldr r1, _0207FD4C ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _0207FD58 ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _0207FD58 ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0207FD58 ; =0x000005C8
	add r2, sp, #0xc
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
	ldr r0, _0207FD5C ; =0x00000B24
	mov r1, #1
	strb r1, [r5, r0]
	add r1, r0, #5
	ldrb r1, [r5, r1]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r0, _0207FD60 ; =0x000005E4
	bl sub_02005748
	cmp r4, #6
	beq _0207FD3E
	cmp r4, #7
	beq _0207FD3E
	ldr r0, _0207FD64 ; =0x00000B2A
	strb r4, [r5, r0]
_0207FD3E:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0207FD44:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0207FD4C: .word 0x00000B29
_0207FD50: .word 0x0000080C
_0207FD54: .word 0x000005A4
_0207FD58: .word 0x000005C8
_0207FD5C: .word 0x00000B24
_0207FD60: .word 0x000005E4
_0207FD64: .word 0x00000B2A
	thumb_func_end sub_0207FC94

	thumb_func_start sub_0207FD68
sub_0207FD68: ; 0x0207FD68
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0xfa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0207FD88
	ldr r0, _0207FE0C ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	b _0207FDD4
_0207FD88:
	mov r3, #0
	ldr r0, _0207FE10 ; =0x00000B29
	str r3, [sp]
	ldrb r0, [r5, r0]
	add r1, sp, #0xc
	add r1, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _0207FE14 ; =0x0000080C
	add r2, sp, #0xc
	ldr r0, [r5, r0]
	bl sub_0201E028
	ldr r0, _0207FE18 ; =0x000005A4
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	bl sub_020805D0
	add r1, r0, #0
	ldr r0, _0207FE0C ; =0x000005C8
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _0207FE0C ; =0x000005C8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0207FE0C ; =0x000005C8
	add r2, sp, #0xc
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl sub_0200D494
_0207FDD4:
	ldr r0, _0207FE10 ; =0x00000B29
	mov r2, #0
	ldrb r4, [r5, r0]
	strb r6, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080500
	ldr r1, _0207FE10 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	mov r2, #1
	bl sub_02080500
	cmp r4, #6
	bhs _0207FE06
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02080A50
	ldr r0, [r5, #0]
	mov r1, #4
	bl sub_0201C3C0
_0207FE06:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0207FE0C: .word 0x000005C8
_0207FE10: .word 0x00000B29
_0207FE14: .word 0x0000080C
_0207FE18: .word 0x000005A4
	thumb_func_end sub_0207FD68

	thumb_func_start sub_0207FE1C
sub_0207FE1C: ; 0x0207FE1C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0207FE90 ; =0x00000B24
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0207FE8C
	cmp r2, #1
	beq _0207FE36
	cmp r2, #2
	beq _0207FE74
	add sp, #4
	pop {r3, r4, pc}
_0207FE36:
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_02080AB8
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	bl sub_020832E4
	ldr r1, _0207FE94 ; =0x00000B25
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #2
	bl sub_02080A50
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, _0207FE90 ; =0x00000B24
	add sp, #4
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, pc}
_0207FE74:
	add r1, r1, #1
	ldrb r1, [r4, r1]
	mov r2, #1
	bl sub_02080A50
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, _0207FE90 ; =0x00000B24
	mov r1, #0
	strb r1, [r4, r0]
_0207FE8C:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0207FE90: .word 0x00000B24
_0207FE94: .word 0x00000B25
	thumb_func_end sub_0207FE1C

	thumb_func_start sub_0207FE98
sub_0207FE98: ; 0x0207FE98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0207FFAC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0207FF4A
	ldr r0, _0207FFB0 ; =0x00000B29
	ldrb r1, [r4, r0]
	cmp r1, #6
	bne _0207FEB2
	mov r0, #4
	pop {r4, pc}
_0207FEB2:
	cmp r1, #7
	bne _0207FECA
	ldr r0, _0207FFB4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0207FFB8 ; =0x00000B27
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _0207FF4A
	mov r0, #3
	pop {r4, pc}
_0207FECA:
	ldr r0, _0207FFBC ; =0x000005A4
	ldr r2, [r4, r0]
	add r2, #0x20
	ldrb r2, [r2]
	cmp r2, #3
	beq _0207FEDA
	cmp r2, #0x13
	bne _0207FEE4
_0207FEDA:
	ldr r0, _0207FFB4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	pop {r4, pc}
_0207FEE4:
	cmp r2, #0x14
	beq _0207FEEC
	cmp r2, #0xe
	bne _0207FF0E
_0207FEEC:
	mov r0, #0x2c
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0207FFC0 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0207FF04
	ldr r0, _0207FFB4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	pop {r4, pc}
_0207FF04:
	ldr r0, _0207FFC4 ; =0x000005F2
	bl sub_02005748
	mov r0, #5
	pop {r4, pc}
_0207FF0E:
	cmp r2, #0xf
	bne _0207FF3A
	mov r2, #0x2c
	mul r2, r1
	ldr r1, _0207FFC0 ; =0x00000714
	add r2, r4, r2
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _0207FF30
	add r0, #0x38
	bl sub_02005748
	add r0, r4, #0
	bl sub_0207FFC8
	mov r0, #0
	pop {r4, pc}
_0207FF30:
	add r0, #0x4e
	bl sub_02005748
	mov r0, #5
	pop {r4, pc}
_0207FF3A:
	add r0, #0x38
	bl sub_02005748
	add r0, r4, #0
	bl sub_0207FFC8
	mov r0, #0
	pop {r4, pc}
_0207FF4A:
	ldr r0, _0207FFAC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0207FF6E
	ldr r0, _0207FFB8 ; =0x00000B27
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _0207FF6E
	ldr r0, _0207FFB4 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0207FFB0 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
_0207FF6E:
	add r0, r4, #0
	bl sub_0207FA00
	cmp r0, #2
	bne _0207FFA8
	ldr r1, _0207FFBC ; =0x000005A4
	ldr r1, [r4, r1]
	add r1, #0x20
	ldrb r1, [r1]
	cmp r1, #0x14
	beq _0207FF8E
	add r1, #0xf2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	bhi _0207FFA8
_0207FF8E:
	ldr r1, _0207FFB0 ; =0x00000B29
	ldrb r2, [r4, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r4, r1
	ldr r1, _0207FFC0 ; =0x00000714
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0207FFA8
	ldr r0, _0207FFC4 ; =0x000005F2
	bl sub_02005748
	mov r0, #5
_0207FFA8:
	pop {r4, pc}
	nop
_0207FFAC: .word 0x021BF67C
_0207FFB0: .word 0x00000B29
_0207FFB4: .word 0x000005DC
_0207FFB8: .word 0x00000B27
_0207FFBC: .word 0x000005A4
_0207FFC0: .word 0x00000714
_0207FFC4: .word 0x000005F2
	thumb_func_end sub_0207FE98

	thumb_func_start sub_0207FFC8
sub_0207FFC8: ; 0x0207FFC8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0xc
	mov r1, #8
	bl sub_02018144
	add r5, r0, #0
	ldr r0, _020800AC ; =0x000005A4
	ldr r0, [r4, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xf
	bgt _02080000
	bge _02080038
	cmp r0, #2
	bgt _02080074
	cmp r0, #0
	blt _02080074
	beq _02080020
	cmp r0, #2
	beq _0208002C
	b _02080074
_02080000:
	sub r0, #0x11
	cmp r0, #6
	bhi _02080074
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02080012: ; jump table
	.short _0208002C - _02080012 - 2 ; case 0
	.short _02080044 - _02080012 - 2 ; case 1
	.short _02080074 - _02080012 - 2 ; case 2
	.short _02080074 - _02080012 - 2 ; case 3
	.short _02080050 - _02080012 - 2 ; case 4
	.short _0208005C - _02080012 - 2 ; case 5
	.short _02080068 - _02080012 - 2 ; case 6
_02080020:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020800B4
	add r2, r0, #0
	b _0208007E
_0208002C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208022C
	add r2, r0, #0
	b _0208007E
_02080038:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020801AC
	add r2, r0, #0
	b _0208007E
_02080044:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020801B8
	add r2, r0, #0
	b _0208007E
_02080050:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208031C
	add r2, r0, #0
	b _0208007E
_0208005C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208027C
	add r2, r0, #0
	b _0208007E
_02080068:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020802CC
	add r2, r0, #0
	b _0208007E
_02080074:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020801F0
	add r2, r0, #0
_0208007E:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02081CF4
	mov r0, #0xc
	add r1, r5, #0
	bl sub_02018238
	add r0, r4, #0
	bl sub_02081E08
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_020826F4
	ldr r0, _020800B0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020800AC: .word 0x000005A4
_020800B0: .word 0x000005C8
	thumb_func_end sub_0207FFC8

	thumb_func_start sub_020800B4
sub_020800B4: ; 0x020800B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	ldr r1, _020801A0 ; =0x000005A4
	str r0, [sp]
	ldr r0, [r0, r1]
	ldr r2, _020801A4 ; =0x00000B29
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldrb r1, [r1, r2]
	bl sub_0207A0FC
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0]
	mov r4, #0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r1, _020801A0 ; =0x000005A4
	ldr r0, [sp]
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x1c]
	bl sub_0206C0D0
	cmp r0, #0
	bne _02080190
	ldr r1, _020801A4 ; =0x00000B29
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	ldr r0, _020801A8 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02080184
	add r6, r4, #0
_02080106:
	add r1, r6, #0
	ldr r0, [sp, #8]
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	beq _02080146
	add r0, r7, #0
	bl sub_02080BCC
	cmp r0, #0xff
	beq _0208013C
	ldr r1, [sp, #4]
	add r2, r4, #0
	strb r0, [r1, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02081CAC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0208013C:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _02080106
_02080146:
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r1, _020801A4 ; =0x00000B29
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	mov r0, #0x71
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	bl sub_0207D2D0
	cmp r0, #1
	bne _02080176
	mov r1, #5
	ldr r0, [sp, #4]
	b _0208017A
_02080176:
	ldr r0, [sp, #4]
	mov r1, #2
_0208017A:
	strb r1, [r0, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _02080190
_02080184:
	ldr r0, [sp, #4]
	add r1, r4, #0
	strb r1, [r0, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02080190:
	ldr r0, [sp, #4]
	mov r1, #9
	strb r1, [r0, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020801A0: .word 0x000005A4
_020801A4: .word 0x00000B29
_020801A8: .word 0x00000714
	thumb_func_end sub_020800B4

	thumb_func_start sub_020801AC
sub_020801AC: ; 0x020801AC
	mov r0, #0xe
	strb r0, [r1]
	mov r0, #9
	strb r0, [r1, #1]
	mov r0, #2
	bx lr
	thumb_func_end sub_020801AC

	thumb_func_start sub_020801B8
sub_020801B8: ; 0x020801B8
	ldr r2, _020801E8 ; =0x00000B29
	ldrb r3, [r0, r2]
	mov r2, #0x2c
	mul r2, r3
	add r2, r0, r2
	ldr r0, _020801EC ; =0x00000714
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _020801DA
	mov r0, #8
	strb r0, [r1]
	mov r0, #1
	strb r0, [r1, #1]
	mov r0, #9
	strb r0, [r1, #2]
	mov r0, #3
	bx lr
_020801DA:
	mov r0, #1
	strb r0, [r1]
	mov r0, #9
	strb r0, [r1, #1]
	mov r0, #2
	bx lr
	nop
_020801E8: .word 0x00000B29
_020801EC: .word 0x00000714
	thumb_func_end sub_020801B8

	thumb_func_start sub_020801F0
sub_020801F0: ; 0x020801F0
	ldr r2, _02080224 ; =0x00000B29
	ldrb r3, [r0, r2]
	mov r2, #0x2c
	mul r2, r3
	add r2, r0, r2
	ldr r0, _02080228 ; =0x00000712
	ldrh r0, [r2, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02080216
	mov r0, #0xd
	strb r0, [r1]
	mov r0, #1
	strb r0, [r1, #1]
	mov r0, #9
	strb r0, [r1, #2]
	mov r0, #3
	bx lr
_02080216:
	mov r0, #1
	strb r0, [r1]
	mov r0, #9
	strb r0, [r1, #1]
	mov r0, #2
	bx lr
	nop
_02080224: .word 0x00000B29
_02080228: .word 0x00000712
	thumb_func_end sub_020801F0

	thumb_func_start sub_0208022C
sub_0208022C: ; 0x0208022C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02080278 ; =0x00000B29
	ldrb r1, [r0, r1]
	bl sub_02080354
	cmp r0, #0
	beq _02080246
	cmp r0, #1
	beq _02080252
	cmp r0, #2
	beq _02080262
	b _02080272
_02080246:
	mov r0, #1
	strb r0, [r4]
	mov r0, #9
	strb r0, [r4, #1]
	mov r0, #2
	pop {r4, pc}
_02080252:
	mov r0, #0xb
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_02080262:
	mov r0, #0xc
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_02080272:
	mov r0, #0
	pop {r4, pc}
	nop
_02080278: .word 0x00000B29
	thumb_func_end sub_0208022C

	thumb_func_start sub_0208027C
sub_0208027C: ; 0x0208027C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _020802C8 ; =0x00000B29
	ldrb r1, [r0, r1]
	bl sub_02080404
	cmp r0, #0
	beq _02080296
	cmp r0, #1
	beq _020802A2
	cmp r0, #2
	beq _020802B2
	b _020802C2
_02080296:
	mov r0, #1
	strb r0, [r4]
	mov r0, #9
	strb r0, [r4, #1]
	mov r0, #2
	pop {r4, pc}
_020802A2:
	mov r0, #0xb
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_020802B2:
	mov r0, #0xc
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_020802C2:
	mov r0, #0
	pop {r4, pc}
	nop
_020802C8: .word 0x00000B29
	thumb_func_end sub_0208027C

	thumb_func_start sub_020802CC
sub_020802CC: ; 0x020802CC
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02080318 ; =0x00000B29
	ldrb r1, [r0, r1]
	bl sub_02080488
	cmp r0, #0
	beq _020802E6
	cmp r0, #1
	beq _020802F2
	cmp r0, #2
	beq _02080302
	b _02080312
_020802E6:
	mov r0, #1
	strb r0, [r4]
	mov r0, #9
	strb r0, [r4, #1]
	mov r0, #2
	pop {r4, pc}
_020802F2:
	mov r0, #0xb
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_02080302:
	mov r0, #0xc
	strb r0, [r4]
	mov r0, #1
	strb r0, [r4, #1]
	mov r0, #9
	strb r0, [r4, #2]
	mov r0, #3
	pop {r4, pc}
_02080312:
	mov r0, #0
	pop {r4, pc}
	nop
_02080318: .word 0x00000B29
	thumb_func_end sub_020802CC

	thumb_func_start sub_0208031C
sub_0208031C: ; 0x0208031C
	ldr r2, _0208034C ; =0x00000B29
	ldrb r3, [r0, r2]
	mov r2, #0x2c
	mul r2, r3
	add r2, r0, r2
	ldr r0, _02080350 ; =0x00000714
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0208033E
	mov r0, #1
	strb r0, [r1]
	mov r0, #0xf
	strb r0, [r1, #1]
	mov r0, #9
	strb r0, [r1, #2]
	mov r0, #3
	bx lr
_0208033E:
	mov r0, #1
	strb r0, [r1]
	mov r0, #9
	strb r0, [r1, #1]
	mov r0, #2
	bx lr
	nop
_0208034C: .word 0x00000B29
_02080350: .word 0x00000714
	thumb_func_end sub_0208031C

	thumb_func_start sub_02080354
sub_02080354: ; 0x02080354
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020803F4 ; =0x000005A4
	add r4, r1, #0
	ldr r2, [r5, r0]
	ldr r0, [r2, #0x14]
	cmp r0, #0
	beq _02080382
	ldr r0, [r2, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, _020803F4 ; =0x000005A4
	ldr r2, _020803F8 ; =0x00000B38
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r0, [r0, #0x14]
	bl sub_0207A2D0
	cmp r0, #0
	bne _02080382
	mov r0, #0
	pop {r4, r5, r6, pc}
_02080382:
	ldr r0, _020803F4 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _020803A4
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _020803FC ; =0x00000708
	ldrh r0, [r1, r0]
	bl sub_02078804
	cmp r0, #1
	bne _020803A4
	mov r0, #0
	pop {r4, r5, r6, pc}
_020803A4:
	ldr r1, _020803F4 ; =0x000005A4
	mov r0, #0
	ldr r2, [r5, r1]
	add r1, r2, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r3, r1, #0x1c
	beq _020803D0
	add r1, r4, #1
_020803B8:
	add r6, r2, r0
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r1, r6
	bne _020803C6
	mov r0, #2
	pop {r4, r5, r6, pc}
_020803C6:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r3
	blo _020803B8
_020803D0:
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r0, _02080400 ; =0x00000714
	ldrb r1, [r3, r0]
	cmp r1, #1
	beq _020803EA
	sub r0, r0, #6
	add r2, #0x33
	ldrh r1, [r3, r0]
	ldrb r0, [r2]
	cmp r1, r0
	ble _020803EE
_020803EA:
	mov r0, #0
	pop {r4, r5, r6, pc}
_020803EE:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_020803F4: .word 0x000005A4
_020803F8: .word 0x00000B38
_020803FC: .word 0x00000708
_02080400: .word 0x00000714
	thumb_func_end sub_02080354

	thumb_func_start sub_02080404
sub_02080404: ; 0x02080404
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0208047C ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0208042C
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02080480 ; =0x00000708
	ldrh r0, [r1, r0]
	bl sub_02078804
	cmp r0, #1
	bne _0208042C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0208042C:
	ldr r1, _0208047C ; =0x000005A4
	mov r0, #0
	ldr r2, [r5, r1]
	add r1, r2, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r3, r1, #0x1c
	beq _02080458
	add r1, r4, #1
_02080440:
	add r6, r2, r0
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r1, r6
	bne _0208044E
	mov r0, #2
	pop {r4, r5, r6, pc}
_0208044E:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r3
	blo _02080440
_02080458:
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r0, _02080484 ; =0x00000714
	ldrb r1, [r3, r0]
	cmp r1, #1
	beq _02080472
	sub r0, r0, #6
	add r2, #0x33
	ldrh r1, [r3, r0]
	ldrb r0, [r2]
	cmp r1, r0
	bge _02080476
_02080472:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02080476:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0208047C: .word 0x000005A4
_02080480: .word 0x00000708
_02080484: .word 0x00000714
	thumb_func_end sub_02080404

	thumb_func_start sub_02080488
sub_02080488: ; 0x02080488
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020804F4 ; =0x000005A4
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _020804B0
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _020804F8 ; =0x00000708
	ldrh r0, [r1, r0]
	bl sub_02078804
	cmp r0, #1
	bne _020804B0
	mov r0, #0
	pop {r4, r5, r6, pc}
_020804B0:
	ldr r1, _020804F4 ; =0x000005A4
	mov r0, #0
	ldr r2, [r5, r1]
	add r1, r2, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r3, r1, #0x1c
	beq _020804DC
	add r1, r4, #1
_020804C4:
	add r6, r2, r0
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r1, r6
	bne _020804D2
	mov r0, #2
	pop {r4, r5, r6, pc}
_020804D2:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r3
	blo _020804C4
_020804DC:
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _020804FC ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _020804EE
	mov r0, #0
	pop {r4, r5, r6, pc}
_020804EE:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_020804F4: .word 0x000005A4
_020804F8: .word 0x00000708
_020804FC: .word 0x00000714
	thumb_func_end sub_02080488

	thumb_func_start sub_02080500
sub_02080500: ; 0x02080500
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	bne _0208053A
	mov r0, #0x5d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021E24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r6, #0
	bne _02080524
	mov r0, #2
	and r0, r1
	b _0208052A
_02080524:
	mov r0, #2
	and r0, r1
	add r0, r0, #1
_0208052A:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x5d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02021D6C
	pop {r4, r5, r6, pc}
_0208053A:
	cmp r4, #7
	bne _02080568
	ldr r0, _020805C8 ; =0x000005D4
	ldr r0, [r5, r0]
	bl sub_02021E24
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r6, #0
	bne _02080554
	mov r0, #2
	and r0, r1
	b _0208055A
_02080554:
	mov r0, #2
	and r0, r1
	add r0, r0, #1
_0208055A:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _020805C8 ; =0x000005D4
	ldr r0, [r5, r0]
	bl sub_02021D6C
	pop {r4, r5, r6, pc}
_02080568:
	cmp r6, #0
	ldr r1, _020805CC ; =0x0000071A
	bne _02080596
	mov r0, #0x2c
	add r3, r5, r1
	mul r0, r4
	ldrsh r2, [r3, r0]
	add r1, r1, #2
	sub r2, r2, #2
	strh r2, [r3, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r0]
	sub r1, r1, #2
	strh r1, [r2, r0]
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	b _020805BC
_02080596:
	mov r0, #0x2c
	add r3, r5, r1
	mul r0, r4
	ldrsh r2, [r3, r0]
	add r1, r1, #2
	add r2, r2, #2
	strh r2, [r3, r0]
	add r2, r5, r1
	ldrsh r1, [r2, r0]
	add r1, r1, #2
	strh r1, [r2, r0]
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x5b
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
_020805BC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207F8F8
	pop {r4, r5, r6, pc}
	nop
_020805C8: .word 0x000005D4
_020805CC: .word 0x0000071A
	thumb_func_end sub_02080500

	thumb_func_start sub_020805D0
sub_020805D0: ; 0x020805D0
	cmp r1, #0
	beq _020805DC
	cmp r0, #0
	beq _020805E0
	cmp r1, #1
	bne _020805E0
_020805DC:
	mov r0, #1
	bx lr
_020805E0:
	mov r0, #0
	bx lr
	thumb_func_end sub_020805D0

	thumb_func_start sub_020805E4
sub_020805E4: ; 0x020805E4
	push {r4, lr}
	ldr r1, _02080664 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _02080620
	ldr r0, _02080668 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0208066C ; =0x00000B29
	ldrb r1, [r4, r0]
	cmp r1, #6
	bhs _0208060C
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r1, r0
	bne _02080616
_0208060C:
	add r0, r4, #0
	bl sub_02083B88
	mov r0, #3
	pop {r4, pc}
_02080616:
	add r0, r4, #0
	bl sub_02083BD4
	mov r0, #0
	pop {r4, pc}
_02080620:
	mov r1, #2
	tst r1, r2
	beq _02080636
	ldr r0, _02080668 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02083B88
	mov r0, #3
	pop {r4, pc}
_02080636:
	bl sub_0207FA00
	cmp r0, #2
	bne _02080660
	ldr r0, _0208066C ; =0x00000B29
	ldrb r1, [r4, r0]
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r1, r0
	bne _02080658
	add r0, r4, #0
	bl sub_02083B88
	mov r0, #3
	pop {r4, pc}
_02080658:
	add r0, r4, #0
	bl sub_02083BD4
	mov r0, #0
_02080660:
	pop {r4, pc}
	nop
_02080664: .word 0x021BF67C
_02080668: .word 0x000005DC
_0208066C: .word 0x00000B29
	thumb_func_end sub_020805E4

	thumb_func_start sub_02080670
sub_02080670: ; 0x02080670
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _020808B8 ; =0x000005A4
	add r4, r0, #0
	ldr r3, [r4, r1]
	mov r0, #0
	add r1, r3, #0
	add r1, #0x32
	ldrb r1, [r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	beq _0208071A
_02080688:
	add r2, r3, r0
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r2, #0
	bne _02080710
	add r3, #0x32
	ldrb r0, [r3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #6
	bhi _020806F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020806AA: ; jump table
	.short _020806F4 - _020806AA - 2 ; case 0
	.short _020806F4 - _020806AA - 2 ; case 1
	.short _020806B8 - _020806AA - 2 ; case 2
	.short _020806C4 - _020806AA - 2 ; case 3
	.short _020806D0 - _020806AA - 2 ; case 4
	.short _020806DC - _020806AA - 2 ; case 5
	.short _020806E8 - _020806AA - 2 ; case 6
_020806B8:
	add r0, r4, #0
	mov r1, #0x6b
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806C4:
	add r0, r4, #0
	mov r1, #0x77
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806D0:
	add r0, r4, #0
	mov r1, #0x78
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806DC:
	add r0, r4, #0
	mov r1, #0x79
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806E8:
	add r0, r4, #0
	mov r1, #0x7a
	mov r2, #1
	bl sub_02082708
	b _020806FE
_020806F4:
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_02082708
_020806FE:
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02080710:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r1
	blo _02080688
_0208071A:
	ldr r0, [r3, #0x14]
	cmp r0, #0
	beq _020807DE
	ldr r2, _020808C4 ; =0x00000B38
	ldr r1, [r3, #0]
	ldr r2, [r4, r2]
	add r3, #0x2c
	bl sub_0207A3AC
	cmp r0, #3
	bhi _020807DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208073C: ; jump table
	.short _020807DE - _0208073C - 2 ; case 0
	.short _02080744 - _0208073C - 2 ; case 1
	.short _020807A6 - _0208073C - 2 ; case 2
	.short _020807C2 - _0208073C - 2 ; case 3
_02080744:
	ldr r0, _020808C8 ; =0x0000069C
	mov r1, #0xb8
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, _020808B8 ; =0x000005A4
	mov r1, #3
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x14]
	bl sub_02026074
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_020807A6:
	add r0, r4, #0
	mov r1, #0xb6
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_020807C2:
	add r0, r4, #0
	mov r1, #0xb7
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_020807DE:
	ldr r0, _020808B8 ; =0x000005A4
	ldr r0, [r4, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x11
	bne _02080836
	add r0, r4, #0
	bl sub_020808CC
	cmp r0, #0
	beq _02080836
	cmp r0, #1
	beq _020807FE
	cmp r0, #2
	beq _0208081A
	b _02080836
_020807FE:
	add r0, r4, #0
	mov r1, #0xb6
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0208081A:
	add r0, r4, #0
	mov r1, #0xb7
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02080836:
	ldr r0, _020808B8 ; =0x000005A4
	ldr r0, [r4, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0208086C
	add r0, r4, #0
	bl sub_02080968
	cmp r0, #0
	beq _0208086C
	cmp r0, #1
	bne _0208086C
	add r0, r4, #0
	mov r1, #0xc9
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0208086C:
	ldr r0, _020808B8 ; =0x000005A4
	ldr r0, [r4, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0x17
	bne _020808A2
	add r0, r4, #0
	bl sub_020809DC
	cmp r0, #0
	beq _020808A2
	cmp r0, #1
	bne _020808A2
	add r0, r4, #0
	mov r1, #0xb6
	mov r2, #1
	bl sub_02082708
	ldr r0, _020808BC ; =0x00000B26
	mov r1, #0x17
	strb r1, [r4, r0]
	ldr r0, _020808C0 ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_020808A2:
	ldr r0, _020808B8 ; =0x000005A4
	mov r2, #0
	ldr r1, [r4, r0]
	add r0, #0x38
	add r1, #0x23
	strb r2, [r1]
	bl sub_02005748
	mov r0, #0x20
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020808B8: .word 0x000005A4
_020808BC: .word 0x00000B26
_020808C0: .word 0x000005F2
_020808C4: .word 0x00000B38
_020808C8: .word 0x0000069C
	thumb_func_end sub_02080670

	thumb_func_start sub_020808CC
sub_020808CC: ; 0x020808CC
	push {r4, r5, r6, r7}
	add r5, r0, #0
	mov r0, #0
	mov ip, r0
	ldr r0, _0208095C ; =0x000005A4
	ldr r4, [r5, r0]
_020808D8:
	mov r0, ip
	add r0, r4, r0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02080956
	mov r0, ip
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #6
	bhs _02080948
	mov r0, ip
	add r7, r4, r0
_020808F4:
	add r0, r4, r3
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02080948
	add r0, r4, r3
	add r0, #0x2c
	ldrb r1, [r0]
	mov r0, #0x2c
	ldr r6, _02080960 ; =0x000006DC
	mul r0, r1
	add r2, r5, r0
	add r0, r7, #0
	add r0, #0x2c
	ldrb r1, [r0]
	mov r0, #0x2c
	ldrh r6, [r2, r6]
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02080960 ; =0x000006DC
	ldrh r0, [r1, r0]
	cmp r0, r6
	bne _02080928
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_02080928:
	ldr r0, _02080964 ; =0x000006E4
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0208093E
	ldr r1, _02080964 ; =0x000006E4
	ldrh r1, [r2, r1]
	cmp r0, r1
	bne _0208093E
	mov r0, #2
	pop {r4, r5, r6, r7}
	bx lr
_0208093E:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #6
	blo _020808F4
_02080948:
	mov r0, ip
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	cmp r0, #5
	blo _020808D8
_02080956:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0208095C: .word 0x000005A4
_02080960: .word 0x000006DC
_02080964: .word 0x000006E4
	thumb_func_end sub_020808CC

	thumb_func_start sub_02080968
sub_02080968: ; 0x02080968
	push {r4, r5, r6, r7}
	ldr r1, _020809D4 ; =0x000005A4
	mov r3, #0
	ldr r5, [r0, r1]
_02080970:
	add r1, r5, r3
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _020809CE
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #6
	bhs _020809C4
	add r2, r5, r3
_02080986:
	add r1, r5, r4
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _020809C4
	add r1, r2, #0
	add r1, #0x2c
	ldrb r6, [r1]
	mov r1, #0x2c
	mul r1, r6
	add r6, r0, r1
	ldr r1, _020809D8 ; =0x000006DC
	ldrh r1, [r6, r1]
	add r6, r5, r4
	add r6, #0x2c
	ldrb r7, [r6]
	mov r6, #0x2c
	mul r6, r7
	add r7, r0, r6
	ldr r6, _020809D8 ; =0x000006DC
	ldrh r6, [r7, r6]
	cmp r1, r6
	beq _020809BA
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_020809BA:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #6
	blo _02080986
_020809C4:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #5
	blo _02080970
_020809CE:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_020809D4: .word 0x000005A4
_020809D8: .word 0x000006DC
	thumb_func_end sub_02080968

	thumb_func_start sub_020809DC
sub_020809DC: ; 0x020809DC
	push {r4, r5, r6, r7}
	ldr r1, _02080A48 ; =0x000005A4
	mov r3, #0
	ldr r5, [r0, r1]
_020809E4:
	add r1, r5, r3
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _02080A42
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #6
	bhs _02080A38
	add r2, r5, r3
_020809FA:
	add r1, r5, r4
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _02080A38
	add r1, r2, #0
	add r1, #0x2c
	ldrb r6, [r1]
	mov r1, #0x2c
	mul r1, r6
	add r6, r0, r1
	ldr r1, _02080A4C ; =0x000006DC
	ldrh r1, [r6, r1]
	add r6, r5, r4
	add r6, #0x2c
	ldrb r7, [r6]
	mov r6, #0x2c
	mul r6, r7
	add r7, r0, r6
	ldr r6, _02080A4C ; =0x000006DC
	ldrh r6, [r7, r6]
	cmp r1, r6
	bne _02080A2E
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_02080A2E:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #6
	blo _020809FA
_02080A38:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #5
	blo _020809E4
_02080A42:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_02080A48: .word 0x000005A4
_02080A4C: .word 0x000006DC
	thumb_func_end sub_020809DC

	thumb_func_start sub_02080A50
sub_02080A50: ; 0x02080A50
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #4
	bl sub_02019FE4
	lsl r1, r5, #1
	mov r3, #0x19
	add r5, r4, #0
	mul r5, r3
	ldr r3, _02080AAC ; =0x00001005
	mov r2, #0
	add r3, r5, r3
	lsl r3, r3, #0x10
	lsr r4, r3, #0x10
	ldr r3, _02080AB0 ; =0x020F1BB8
	ldrb r3, [r3, r1]
	lsl r3, r3, #1
	add r0, r0, r3
	mov ip, r0
	ldr r0, _02080AB4 ; =0x020F1BB9
	ldrb r7, [r0, r1]
_02080A7E:
	lsl r0, r2, #2
	add r5, r2, r0
	add r0, r7, r2
	lsl r1, r0, #6
	mov r0, ip
	mov r3, #0
	add r6, r0, r1
_02080A8C:
	add r0, r3, r5
	add r1, r4, r0
	lsl r0, r3, #1
	strh r1, [r6, r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #5
	blo _02080A8C
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #5
	blo _02080A7E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02080AAC: .word 0x00001005
_02080AB0: .word 0x020F1BB8
_02080AB4: .word 0x020F1BB9
	thumb_func_end sub_02080A50

	thumb_func_start sub_02080AB8
sub_02080AB8: ; 0x02080AB8
	lsl r3, r0, #1
	ldr r0, _02080AD0 ; =0x020F1BB8
	ldrb r0, [r0, r3]
	lsl r0, r0, #3
	add r0, #0x14
	strh r0, [r1]
	ldr r0, _02080AD4 ; =0x020F1BB9
	ldrb r0, [r0, r3]
	lsl r0, r0, #3
	add r0, #0x14
	strh r0, [r2]
	bx lr
	; .align 2, 0
_02080AD0: .word 0x020F1BB8
_02080AD4: .word 0x020F1BB9
	thumb_func_end sub_02080AB8

	thumb_func_start sub_02080AD8
sub_02080AD8: ; 0x02080AD8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_020818F8
	cmp r0, #0
	bne _02080AEE
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02080AEE:
	ldr r0, _02080B28 ; =0x020F1C94
	bl sub_02022664
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02080B22
	ldr r1, _02080B2C ; =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _02080B30 ; =0x021BF6BC
	ldr r0, [r5, #0]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #4
	bl sub_0201C784
	cmp r0, #0
	bne _02080B22
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02080B22:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02080B28: .word 0x020F1C94
_02080B2C: .word 0x0000FFFE
_02080B30: .word 0x021BF6BC
	thumb_func_end sub_02080AD8

	thumb_func_start sub_02080B34
sub_02080B34: ; 0x02080B34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02001BE0
	add r2, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r2, r0
	beq _02080B56
	add r0, r0, #1
	cmp r2, r0
	beq _02080BBE
	b _02080BB8
_02080B56:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	bl sub_0208337C
	ldr r0, _02080BC4 ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r1, [r0]
	cmp r1, #2
	beq _02080B84
	cmp r1, #0x11
	beq _02080B84
	add r0, r1, #0
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02080B90
_02080B84:
	add r0, r5, #0
	mov r1, #0x22
	mov r2, #1
	bl sub_020826E0
	b _02080BAA
_02080B90:
	cmp r1, #0x15
	bne _02080BA0
	add r0, r5, #0
	mov r1, #0xc5
	mov r2, #1
	bl sub_020826E0
	b _02080BAA
_02080BA0:
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
_02080BAA:
	ldr r0, _02080BC8 ; =0x000005C8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D414
	mov r0, #1
	pop {r3, r4, r5, pc}
_02080BB8:
	add r0, r5, #0
	add r1, r4, #0
	blx r2
_02080BBE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02080BC4: .word 0x000005A4
_02080BC8: .word 0x000005C8
	thumb_func_end sub_02080B34

	thumb_func_start sub_02080BCC
sub_02080BCC: ; 0x02080BCC
	ldr r2, _02080BF0 ; =0x020F1CB0
	mov r3, #0
_02080BD0:
	lsl r1, r3, #1
	ldrh r1, [r2, r1]
	cmp r0, r1
	bne _02080BE0
	add r3, #0x10
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	bx lr
_02080BE0:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #0xf
	blo _02080BD0
	mov r0, #0xff
	bx lr
	nop
_02080BF0: .word 0x020F1CB0
	thumb_func_end sub_02080BCC

	thumb_func_start sub_02080BF4
sub_02080BF4: ; 0x02080BF4
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _02080EA0 ; =0x00000B2E
	add r4, r0, #0
	ldrh r2, [r4, r1]
	cmp r2, #4
	bhi _02080CFE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02080C0E: ; jump table
	.short _02080C18 - _02080C0E - 2 ; case 0
	.short _02080D56 - _02080C0E - 2 ; case 1
	.short _02080D90 - _02080C0E - 2 ; case 2
	.short _02080DB8 - _02080C0E - 2 ; case 3
	.short _02080E66 - _02080C0E - 2 ; case 4
_02080C18:
	ldr r2, _02080EA4 ; =0x021BF67C
	ldr r3, [r2, #0x48]
	mov r2, #1
	tst r2, r3
	beq _02080CAA
	sub r1, r1, #5
	ldrb r1, [r4, r1]
	cmp r1, #6
	blo _02080C3C
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02083B88
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02080C3C:
	bl sub_02080ECC
	cmp r0, #0
	beq _02080C4E
	cmp r0, #1
	beq _02080C8C
	cmp r0, #2
	beq _02080C9E
	b _02080CAA
_02080C4E:
	ldr r0, _02080EAC ; =0x000005EC
	bl sub_02005748
	ldr r0, _02080EB0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _02080EB4 ; =0x00000B29
	mov r1, #0x2c
	ldrb r2, [r4, r0]
	mul r1, r2
	add r3, r4, r1
	ldr r1, _02080EB8 ; =0x0000070C
	ldrh r2, [r3, r1]
	sub r1, r1, #2
	ldrh r1, [r3, r1]
	sub r2, r2, r1
	add r1, r0, #3
	ldrh r1, [r4, r1]
	cmp r2, r1
	bge _02080C7E
	add r0, r0, #3
	strh r2, [r4, r0]
_02080C7E:
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #2
	strh r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	b _02080CAA
_02080C8C:
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #1
	strh r1, [r4, r0]
	add sp, #8
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_02080C9E:
	ldr r0, _02080EBC ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x1e
	pop {r4, r5, r6, pc}
_02080CAA:
	ldr r0, _02080EA4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _02080CC6
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02083B88
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02080CC6:
	add r0, r4, #0
	bl sub_0207FA00
	cmp r0, #2
	bne _02080CFE
	ldr r0, _02080EB4 ; =0x00000B29
	ldrb r1, [r4, r0]
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r1, r0
	bne _02080CEC
	add r0, r4, #0
	bl sub_02083B88
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02080CEC:
	add r0, r4, #0
	bl sub_02080ECC
	cmp r0, #0
	beq _02080D00
	cmp r0, #1
	beq _02080D3E
	cmp r0, #2
	beq _02080D4A
_02080CFE:
	b _02080E98
_02080D00:
	ldr r0, _02080EAC ; =0x000005EC
	bl sub_02005748
	ldr r0, _02080EB0 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _02080EB4 ; =0x00000B29
	mov r1, #0x2c
	ldrb r2, [r4, r0]
	mul r1, r2
	add r3, r4, r1
	ldr r1, _02080EB8 ; =0x0000070C
	ldrh r2, [r3, r1]
	sub r1, r1, #2
	ldrh r1, [r3, r1]
	sub r2, r2, r1
	add r1, r0, #3
	ldrh r1, [r4, r1]
	cmp r2, r1
	bge _02080D30
	add r0, r0, #3
	strh r2, [r4, r0]
_02080D30:
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #2
	strh r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	b _02080E98
_02080D3E:
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #1
	strh r1, [r4, r0]
	add sp, #8
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_02080D4A:
	ldr r0, _02080EBC ; =0x000005F2
	bl sub_02005748
	add sp, #8
	mov r0, #0x1e
	pop {r4, r5, r6, pc}
_02080D56:
	ldr r0, _02080EA4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02080D62
	b _02080E98
_02080D62:
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _02080EB0 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	mov r1, #0x24
	mov r2, #1
	bl sub_020826E0
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #0
	strh r1, [r4, r0]
	b _02080E98
_02080D90:
	sub r1, r1, #7
	ldrb r1, [r4, r1]
	mov r2, #0
	mvn r2, r2
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl sub_02080F3C
	cmp r0, #1
	bne _02080E98
	ldr r0, _02080EAC ; =0x000005EC
	bl sub_02005748
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #3
	strh r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	b _02080E98
_02080DB8:
	sub r1, r1, #5
	ldrb r1, [r4, r1]
	mov r2, #1
	bl sub_02080F3C
	cmp r0, #1
	bne _02080E98
	ldr r0, _02080EC0 ; =0x000005A4
	ldr r1, _02080EB4 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r6, r0, #0
	ldr r0, _02080EC4 ; =0x0000069C
	mov r1, #0x40
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r2, #0xb3
	mov r0, #0x6a
	str r1, [sp, #4]
	lsl r2, r2, #4
	lsl r0, r0, #4
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02080EC8 ; =0x00000B32
	mov r1, #0
	ldrh r0, [r4, r0]
	mov r2, #0xc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0202BE00
	add r1, r0, #0
	ldr r0, _02080EC0 ; =0x000005A4
	mov r2, #1
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x1c]
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0202B758
	ldr r0, _02080EA0 ; =0x00000B2E
	mov r1, #4
	strh r1, [r4, r0]
	mov r1, #0x1e
	sub r0, #8
	strb r1, [r4, r0]
	add sp, #8
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_02080E66:
	ldr r0, _02080EA4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02080E98
	ldr r0, _02080EA8 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _02080EB0 ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	bl sub_02083B88
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02080E98:
	mov r0, #0x1e
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02080EA0: .word 0x00000B2E
_02080EA4: .word 0x021BF67C
_02080EA8: .word 0x000005DC
_02080EAC: .word 0x000005EC
_02080EB0: .word 0x000005C8
_02080EB4: .word 0x00000B29
_02080EB8: .word 0x0000070C
_02080EBC: .word 0x000005F2
_02080EC0: .word 0x000005A4
_02080EC4: .word 0x0000069C
_02080EC8: .word 0x00000B32
	thumb_func_end sub_02080BF4

	thumb_func_start sub_02080ECC
sub_02080ECC: ; 0x02080ECC
	push {r3, r4, r5, lr}
	ldr r2, _02080F2C ; =0x00000B29
	add r4, r0, #0
	ldrb r1, [r4, r2]
	mov r0, #0x2c
	ldr r3, _02080F30 ; =0x00000714
	mul r0, r1
	add r0, r4, r0
	ldrb r5, [r0, r3]
	cmp r5, #0
	beq _02080EE6
	mov r0, #2
	pop {r3, r4, r5, pc}
_02080EE6:
	sub r2, r2, #2
	ldrb r2, [r4, r2]
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1a
	cmp r1, r2
	beq _02080F04
	add r1, r3, #0
	sub r1, #0xa
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02080F04
	sub r3, #8
	ldrh r0, [r0, r3]
	cmp r1, r0
	bne _02080F26
_02080F04:
	ldr r0, _02080F34 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	mov r1, #0x83
	mov r2, #1
	bl sub_02082708
	ldr r1, _02080F38 ; =0x00000B2E
	mov r0, #1
	strh r0, [r4, r1]
	mov r2, #0x1e
	sub r1, #8
	strb r2, [r4, r1]
	pop {r3, r4, r5, pc}
_02080F26:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02080F2C: .word 0x00000B29
_02080F30: .word 0x00000714
_02080F34: .word 0x000005C8
_02080F38: .word 0x00000B2E
	thumb_func_end sub_02080ECC

	thumb_func_start sub_02080F3C
sub_02080F3C: ; 0x02080F3C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r3, #0x2c
	add r4, r6, #0
	mul r4, r3
	ldr r3, _02080FC0 ; =0x0000070A
	add r5, r0, #0
	add r7, r5, r3
	lsl r2, r2, #0x10
	ldrh r3, [r7, r4]
	lsr r2, r2, #0x10
	add r2, r3, r2
	mov r3, #0xb3
	lsl r3, r3, #4
	strh r2, [r7, r4]
	ldrh r2, [r5, r3]
	add r2, r2, #1
	strh r2, [r5, r3]
	bl sub_02082098
	lsl r1, r6, #2
	add r1, r6, r1
	add r1, r1, #3
	add r0, r5, #4
	lsl r1, r1, #4
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02082058
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02082104
	ldr r1, _02080FC4 ; =0x00000B2C
	ldrh r0, [r5, r1]
	add r1, r1, #4
	ldrh r1, [r5, r1]
	cmp r0, r1
	beq _02080F9E
	ldr r1, _02080FC8 ; =0x0000070C
	add r2, r5, r4
	ldrh r0, [r7, r4]
	ldrh r1, [r2, r1]
	cmp r0, r1
	bne _02080FBA
_02080F9E:
	ldr r0, _02080FCC ; =0x000005A4
	add r1, r6, #0
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldrh r1, [r7, r4]
	add r2, sp, #0
	str r1, [sp]
	mov r1, #0xa3
	bl sub_02074B30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02080FBA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02080FC0: .word 0x0000070A
_02080FC4: .word 0x00000B2C
_02080FC8: .word 0x0000070C
_02080FCC: .word 0x000005A4
	thumb_func_end sub_02080F3C

	thumb_func_start sub_02080FD0
sub_02080FD0: ; 0x02080FD0
	push {r4, lr}
	ldr r1, _02081064 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _0208101C
	ldr r0, _02081068 ; =0x00000B29
	ldrb r1, [r4, r0]
	cmp r1, #7
	bne _02080FFA
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _02081018
	ldr r0, _0208106C ; =0x000005DC
	bl sub_02005748
	mov r0, #3
	pop {r4, pc}
_02080FFA:
	mov r0, #0x2c
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02081070 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02081012
	ldr r0, _0208106C ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	pop {r4, pc}
_02081012:
	ldr r0, _02081074 ; =0x000005F2
	bl sub_02005748
_02081018:
	mov r0, #5
	pop {r4, pc}
_0208101C:
	mov r1, #2
	tst r1, r2
	beq _02081040
	ldr r0, _02081078 ; =0x00000B27
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _0208103C
	ldr r0, _0208106C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02081068 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
_0208103C:
	mov r0, #5
	pop {r4, pc}
_02081040:
	bl sub_0207FA00
	cmp r0, #2
	bne _02081062
	ldr r1, _02081068 ; =0x00000B29
	ldrb r2, [r4, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02081070 ; =0x00000714
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02081062
	ldr r0, _02081074 ; =0x000005F2
	bl sub_02005748
	mov r0, #5
_02081062:
	pop {r4, pc}
	; .align 2, 0
_02081064: .word 0x021BF67C
_02081068: .word 0x00000B29
_0208106C: .word 0x000005DC
_02081070: .word 0x00000714
_02081074: .word 0x000005F2
_02081078: .word 0x00000B27
	thumb_func_end sub_02080FD0

	thumb_func_start sub_0208107C
sub_0208107C: ; 0x0208107C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #0xc
	ldrh r0, [r0, #0x24]
	bl sub_0207CF48
	add r4, r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	ldr r2, [r5, r0]
	ldr r0, _020811E8 ; =0x000001D2
	ldrh r1, [r2, #0x24]
	cmp r1, r0
	bne _020810C6
	ldr r1, _020811EC ; =0x00000B29
	ldr r0, [r2, #0]
	ldrb r1, [r5, r1]
	bl sub_0207A0FC
	bl sub_02077B14
	cmp r0, #1
	bne _020810C6
	ldr r0, _020811E4 ; =0x000005A4
	mov r1, #1
	ldr r0, [r5, r0]
	strh r1, [r0, #0x38]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020819B4
	mov r0, #0x1f
	pop {r3, r4, r5, pc}
_020810C6:
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0207D014
	cmp r0, #0
	bne _020810DE
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0207D014
	cmp r0, #0
	beq _020810F0
_020810DE:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0
	bl sub_020866A0
	mov r0, #6
	pop {r3, r4, r5, pc}
_020810F0:
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	beq _0208111A
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	bne _0208111A
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #1
	bl sub_020866A0
	mov r0, #6
	pop {r3, r4, r5, pc}
_0208111A:
	ldr r0, _020811E4 ; =0x000005A4
	ldr r2, _020811EC ; =0x00000B29
	ldr r1, [r5, r0]
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0x24]
	ldrb r2, [r5, r2]
	mov r3, #0
	bl sub_0209693C
	cmp r0, #1
	bne _020811C2
	ldr r0, _020811E4 ; =0x000005A4
	mov r2, #1
	ldr r1, [r5, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0207D014
	cmp r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	beq _0208118C
	ldr r1, _020811EC ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	mov r2, #3
	ldr r3, [r5, r0]
	add r0, r3, #0
	add r0, #0x3c
	str r0, [sp]
	ldrh r3, [r3, #0x24]
	mov r0, #0
	bl sub_02076B94
	ldr r1, _020811E4 ; =0x000005A4
	ldr r2, [r5, r1]
	strh r0, [r2, #0x38]
	ldr r0, [r5, r1]
	mov r2, #8
	add r0, #0x23
	strb r2, [r0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x20
	pop {r3, r4, r5, pc}
_0208118C:
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x24]
	bl sub_0207D36C
	cmp r0, #1
	bne _020811BA
	ldr r0, _020811E4 ; =0x000005A4
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _020811BA
	ldr r0, [r1, #0]
	ldr r1, _020811EC ; =0x00000B29
	ldrb r1, [r5, r1]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, _020811E4 ; =0x000005A4
	ldr r2, [r5, r0]
	ldr r0, [r2, #0x10]
	ldrh r2, [r2, #0x24]
	bl sub_0206D90C
_020811BA:
	add r0, r5, #0
	bl sub_020852B8
	b _020811D8
_020811C2:
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #1
	bl sub_02082708
	ldr r0, _020811EC ; =0x00000B29
	mov r1, #7
	strb r1, [r5, r0]
	ldr r1, _020811F0 ; =sub_02085348
	sub r0, #0x11
	str r1, [r5, r0]
_020811D8:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #5
	pop {r3, r4, r5, pc}
	nop
_020811E4: .word 0x000005A4
_020811E8: .word 0x000001D2
_020811EC: .word 0x00000B29
_020811F0: .word sub_02085348
	thumb_func_end sub_0208107C

	thumb_func_start sub_020811F4
sub_020811F4: ; 0x020811F4
	push {r3, lr}
	ldr r1, _02081220 ; =0x00000B29
	ldrb r2, [r0, r1]
	mov r1, #0x2c
	mul r1, r2
	add r1, r0, r1
	mov r0, #0x71
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _0208120E
	mov r0, #0
	pop {r3, pc}
_0208120E:
	bl sub_0207D2D0
	cmp r0, #1
	bne _0208121A
	mov r0, #2
	pop {r3, pc}
_0208121A:
	mov r0, #1
	pop {r3, pc}
	nop
_02081220: .word 0x00000B29
	thumb_func_end sub_020811F4

	thumb_func_start sub_02081224
sub_02081224: ; 0x02081224
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _020813F8 ; =0x000005A4
	ldr r1, _020813FC ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	mov r4, #0
	ldr r0, [r0, #0]
	mvn r4, r4
	bl sub_0207A0FC
	ldr r1, _020813F8 ; =0x000005A4
	add r7, r0, #0
	ldr r1, [r5, r1]
	ldr r6, [r1, #0x1c]
	ldrh r1, [r1, #0x24]
	cmp r1, #0x70
	bne _020812E2
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	ldr r1, _02081400 ; =0x000001E7
	cmp r0, r1
	beq _020812A0
	ldr r2, _02081404 ; =0x0000069C
	mov r1, #0xcb
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
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #1
	ldrh r2, [r2, #0x24]
	bl sub_0200B744
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r4, #0xb
	b _020812E2
_020812A0:
	cmp r6, #0
	beq _020812E2
	ldr r0, [r6, #0x1c]
	sub r1, #0x15
	ldr r0, [r0, #0]
	cmp r0, r1
	bne _020812E2
	ldr r2, _02081404 ; =0x0000069C
	mov r1, #0xcc
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #0
	ldrh r2, [r2, #0x24]
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r4, #0xb
_020812E2:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _020813D0
	add r0, r5, #0
	bl sub_020811F4
	cmp r0, #0
	beq _020812FE
	cmp r0, #1
	beq _0208136E
	cmp r0, #2
	beq _020813C0
	b _020813D0
_020812FE:
	ldr r0, _020813F8 ; =0x000005A4
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x24]
	bl sub_0207D2D0
	cmp r0, #1
	bne _0208131A
	ldr r0, _020813F8 ; =0x000005A4
	mov r1, #6
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0208131A:
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl sub_02081408
	ldr r2, _02081404 ; =0x0000069C
	add r4, r0, #0
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r1, #0x76
	bl sub_0200B1B8
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #1
	ldrh r2, [r2, #0x24]
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	b _020813D0
_0208136E:
	ldr r2, _02081404 ; =0x0000069C
	mov r1, #0x4e
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
	ldr r2, _020813FC ; =0x00000B29
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
	bl sub_0200B744
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	mov r4, #9
	b _020813D0
_020813C0:
	ldr r2, _02081404 ; =0x0000069C
	mov r1, #0x4d
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r4, #0xb
_020813D0:
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
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020813F8: .word 0x000005A4
_020813FC: .word 0x00000B29
_02081400: .word 0x000001E7
_02081404: .word 0x0000069C
	thumb_func_end sub_02081224

	thumb_func_start sub_02081408
sub_02081408: ; 0x02081408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0208149C ; =0x000005A4
	add r7, r1, #0
	ldr r1, [r5, r0]
	add r4, r2, #0
	ldrh r1, [r1, #0x24]
	mov r2, #1
	mov r3, #0xc
	str r1, [sp]
	ldr r1, [r5, r0]
	ldr r6, [r1, #0x1c]
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
	add r0, r7, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r7, #0
	bl sub_02077928
	cmp r6, #0
	beq _0208144C
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #0]
	ldr r0, _020814A0 ; =0x0000023D
	cmp r1, r0
	blt _0208144C
	add r0, #0xa
	cmp r1, r0
	ble _02081456
_0208144C:
	add r0, r7, #0
	bl sub_02077A00
	str r0, [r4, #0]
	b _0208145C
_02081456:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
_0208145C:
	ldr r1, _020814A4 ; =0x00000B29
	ldr r0, _0208149C ; =0x000005A4
	ldrb r3, [r5, r1]
	ldr r0, [r5, r0]
	mov r2, #0x2c
	add r6, r3, #0
	mul r6, r2
	mov r3, #0x71
	ldrh r0, [r0, #0x24]
	add r6, r5, r6
	lsl r3, r3, #4
	strh r0, [r6, r3]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	mul r2, r1
	add r2, r5, r2
	ldrh r2, [r2, r3]
	bl sub_02083040
	ldr r0, [sp]
	cmp r0, #0x70
	bne _02081496
	mov r0, #0
	ldr r1, [r4, #0]
	mvn r0, r0
	cmp r1, r0
	beq _02081496
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_02081496:
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208149C: .word 0x000005A4
_020814A0: .word 0x0000023D
_020814A4: .word 0x00000B29
	thumb_func_end sub_02081408

	thumb_func_start sub_020814A8
sub_020814A8: ; 0x020814A8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02081504 ; =0x000005A4
	add r5, r1, #0
	ldr r0, [r4, r0]
	lsl r1, r2, #0x10
	ldr r0, [r0, #4]
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D570
	add r0, r5, #0
	mov r1, #6
	add r2, sp, #0x1c
	bl sub_02074B30
	add r0, r5, #0
	bl sub_02077928
	add r0, r5, #0
	bl sub_02077A00
	ldr r1, _02081508 ; =0x00000B29
	mov r2, #0x2c
	ldrb r3, [r4, r1]
	ldr r0, [sp, #0x1c]
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
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02081504: .word 0x000005A4
_02081508: .word 0x00000B29
	thumb_func_end sub_020814A8

	thumb_func_start sub_0208150C
sub_0208150C: ; 0x0208150C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02081534 ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0208152E
	ldr r0, _02081538 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208152E
	add r0, r4, #0
	bl sub_0208170C
	pop {r4, pc}
_0208152E:
	mov r0, #0xb
	pop {r4, pc}
	nop
_02081534: .word 0x00000B28
_02081538: .word 0x021BF67C
	thumb_func_end sub_0208150C

	thumb_func_start sub_0208153C
sub_0208153C: ; 0x0208153C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02081570 ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _0208156C
	ldr r0, _02081574 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0208156C
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_020819B4
	mov r0, #0xd
	pop {r4, pc}
_0208156C:
	mov r0, #0xc
	pop {r4, pc}
	; .align 2, 0
_02081570: .word 0x00000B28
_02081574: .word 0x021BF67C
	thumb_func_end sub_0208153C

	thumb_func_start sub_02081578
sub_02081578: ; 0x02081578
	push {r4, lr}
	add r4, r0, #0
	bl ov118_021D0DBC
	cmp r0, #1
	bne _0208158E
	add r0, r4, #0
	bl sub_020819CC
	mov r0, #0xb
	pop {r4, pc}
_0208158E:
	mov r0, #0xd
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02081578

	thumb_func_start sub_02081594
sub_02081594: ; 0x02081594
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020815B4 ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _020815AE
	add r0, r4, #0
	bl sub_020827EC
	mov r0, #0xa
	pop {r4, pc}
_020815AE:
	mov r0, #9
	pop {r4, pc}
	nop
_020815B4: .word 0x00000B28
	thumb_func_end sub_02081594

	thumb_func_start sub_020815B8
sub_020815B8: ; 0x020815B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0xc
	bl sub_02002114
	cmp r0, #0
	beq _020815DA
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020815D8
	b _020816EE
_020815D8:
	b _020816F8
_020815DA:
	ldr r0, _02081700 ; =0x000005A4
	ldr r1, _02081704 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	str r0, [sp]
	ldr r0, _02081700 ; =0x000005A4
	add r2, sp, #4
	ldr r0, [r5, r0]
	ldrh r6, [r0, #0x24]
	ldr r0, _02081704 ; =0x00000B29
	ldrb r1, [r5, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x71
	lsl r0, r0, #4
	ldrh r4, [r1, r0]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02081408
	add r7, r0, #0
	ldr r0, _02081700 ; =0x000005A4
	add r1, r4, #0
	ldr r0, [r5, r0]
	mov r2, #1
	ldr r0, [r0, #4]
	mov r3, #0xc
	bl sub_0207D570
	cmp r0, #0
	bne _0208163E
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_020814A8
	ldr r2, _02081708 ; =0x0000069C
	mov r1, #0x53
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r7, #0xb
	b _020816D6
_0208163E:
	ldr r0, _02081700 ; =0x000005A4
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x24]
	bl sub_0207D2D0
	cmp r0, #1
	bne _0208167A
	ldr r0, _02081700 ; =0x000005A4
	lsl r1, r4, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	ldr r0, [r0, #4]
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D60C
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_020814A8
	ldr r0, _02081700 ; =0x000005A4
	mov r1, #6
	ldr r0, [r5, r0]
	add sp, #8
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0208167A:
	ldr r2, _02081708 ; =0x0000069C
	mov r1, #0x54
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl sub_0200B70C
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	add r2, r6, #0
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	cmp r6, #0x70
	beq _020816CC
	cmp r4, #0x70
	bne _020816CC
	mov r0, #0
	ldr r1, [sp, #4]
	mvn r0, r0
	cmp r1, r0
	beq _020816CC
	mov r7, #0xc
	b _020816D6
_020816CC:
	cmp r6, #0x70
	bne _020816D6
	cmp r4, #0x70
	bne _020816D6
	mov r7, #0xb
_020816D6:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0208274C
	add sp, #8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_020816EE:
	add r0, r5, #0
	bl sub_0208170C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020816F8:
	mov r0, #0xa
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02081700: .word 0x000005A4
_02081704: .word 0x00000B29
_02081708: .word 0x0000069C
	thumb_func_end sub_020815B8

	thumb_func_start sub_0208170C
sub_0208170C: ; 0x0208170C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02081758 ; =0x000005A4
	ldr r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0208174C
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl sub_020826E0
	ldr r0, _0208175C ; =0x000005C8
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D414
	ldr r0, _02081758 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x20
	strb r1, [r0]
	mov r0, #1
	pop {r4, pc}
_0208174C:
	mov r0, #0xa
	add r1, #0x23
	strb r0, [r1]
	mov r0, #0x20
	pop {r4, pc}
	nop
_02081758: .word 0x000005A4
_0208175C: .word 0x000005C8
	thumb_func_end sub_0208170C

	thumb_func_start sub_02081760
sub_02081760: ; 0x02081760
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02081880 ; =0x000005A4
	ldr r1, _02081884 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r7, r0, #0
	ldr r0, _02081880 ; =0x000005A4
	add r2, sp, #4
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x24]
	str r0, [sp]
	ldr r0, _02081884 ; =0x00000B29
	ldrb r1, [r5, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x71
	lsl r0, r0, #4
	ldrh r4, [r1, r0]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02081408
	add r6, r0, #0
	cmp r4, #0x70
	bne _020817AA
	cmp r6, #0xb
	bne _020817AA
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020817AA
	mov r6, #0xc
_020817AA:
	cmp r4, #0
	bne _020817F6
	ldr r2, _02081888 ; =0x0000069C
	mov r1, #0x76
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
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #1
	ldrh r2, [r2, #0x24]
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
	b _02081844
_020817F6:
	ldr r0, _02081880 ; =0x000005A4
	lsl r1, r4, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	ldr r0, [r0, #4]
	mov r2, #1
	mov r3, #0xc
	bl sub_0207D570
	ldr r2, _02081888 ; =0x0000069C
	mov r1, #0x54
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl sub_0200B70C
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [sp]
	mov r1, #2
	bl sub_0200B70C
	mov r2, #0x6a
	lsl r2, r2, #4
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_0200C388
_02081844:
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
	ldr r0, _02081880 ; =0x000005A4
	ldr r1, [r5, r0]
	add r0, r1, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0208187A
	mov r0, #0xa
	add r1, #0x20
	strb r0, [r1]
_0208187A:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02081880: .word 0x000005A4
_02081884: .word 0x00000B29
_02081888: .word 0x0000069C
	thumb_func_end sub_02081760

	thumb_func_start sub_0208188C
sub_0208188C: ; 0x0208188C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020818DC ; =0x00000B29
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r4, r0
	ldr r0, _020818E0 ; =0x00000716
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _020818B0
	ldr r0, _020818E4 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_020818B0:
	ldr r0, _020818E8 ; =0x000005C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D414
	add r0, r4, #0
	mov r1, #0xc3
	mov r2, #1
	bl sub_02082708
	ldr r0, _020818EC ; =sub_02083A78
	ldr r1, _020818F0 ; =0x00000B1C
	ldr r2, _020818F4 ; =sub_02083AA4
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	mov r0, #0x18
	pop {r4, pc}
	nop
_020818DC: .word 0x00000B29
_020818E0: .word 0x00000716
_020818E4: .word 0x000005A4
_020818E8: .word 0x000005C8
_020818EC: .word sub_02083A78
_020818F0: .word 0x00000B1C
_020818F4: .word sub_02083AA4
	thumb_func_end sub_0208188C

	thumb_func_start sub_020818F8
sub_020818F8: ; 0x020818F8
	ldr r1, _0208192C ; =0x000005A4
	ldr r0, [r0, r1]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #5
	beq _02081924
	cmp r0, #6
	beq _02081924
	cmp r0, #7
	beq _02081924
	cmp r0, #8
	beq _02081924
	cmp r0, #9
	beq _02081924
	cmp r0, #0xb
	beq _02081924
	cmp r0, #0xe
	beq _02081924
	cmp r0, #0x10
	beq _02081924
	cmp r0, #0x14
	bne _02081928
_02081924:
	mov r0, #0
	bx lr
_02081928:
	mov r0, #1
	bx lr
	; .align 2, 0
_0208192C: .word 0x000005A4
	thumb_func_end sub_020818F8

	thumb_func_start sub_02081930
sub_02081930: ; 0x02081930
	mov r0, #0x14
	bx lr
	thumb_func_end sub_02081930

	thumb_func_start sub_02081934
sub_02081934: ; 0x02081934
	mov r0, #0x15
	bx lr
	thumb_func_end sub_02081934

	thumb_func_start sub_02081938
sub_02081938: ; 0x02081938
	mov r0, #0x13
	bx lr
	thumb_func_end sub_02081938

	thumb_func_start sub_0208193C
sub_0208193C: ; 0x0208193C
	mov r0, #0x12
	bx lr
	thumb_func_end sub_0208193C

	thumb_func_start sub_02081940
sub_02081940: ; 0x02081940
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	mov r0, #0x14
	mov r1, #0x16
	add r2, r4, #0
	add r7, r3, #0
	bl sub_02006AC0
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedScreenData
	ldr r0, [sp, #0xc]
	mov r4, #0
	str r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	str r0, [sp]
_0208196A:
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0x20
	bl memcpy
	add r1, r4, #6
	lsl r2, r1, #6
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r1, r1, r2
	mov r2, #0x20
	bl memcpy
	add r1, r4, #0
	add r1, #0xc
	lsl r2, r1, #6
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r1, r1, r2
	mov r2, #0x20
	bl memcpy
	ldr r0, [sp]
	add r4, r4, #1
	add r0, #0x40
	str r0, [sp]
	add r5, #0x20
	add r6, #0x20
	add r7, #0x20
	cmp r4, #6
	blo _0208196A
	ldr r0, [sp, #8]
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02081940

	thumb_func_start sub_020819B4
sub_020819B4: ; 0x020819B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020819C8 ; =0x00000076
	mov r1, #2
	bl sub_02006590
	add r0, r4, #0
	bl ov118_021D0D80
	pop {r4, pc}
	; .align 2, 0
_020819C8: .word 0x00000076
	thumb_func_end sub_020819B4

	thumb_func_start sub_020819CC
sub_020819CC: ; 0x020819CC
	ldr r3, _020819D4 ; =sub_02006514
	ldr r0, _020819D8 ; =0x00000076
	bx r3
	nop
_020819D4: .word sub_02006514
_020819D8: .word 0x00000076
	thumb_func_end sub_020819CC

	.rodata


	.global Unk_020F1BB8
Unk_020F1BB8: ; 0x020F1BB8
	.incbin "incbin/arm9_rodata.bin", 0xCF78, 0xCF84 - 0xCF78

	.global Unk_020F1BC4
Unk_020F1BC4: ; 0x020F1BC4
	.incbin "incbin/arm9_rodata.bin", 0xCF84, 0xCF94 - 0xCF84

	.global Unk_020F1BD4
Unk_020F1BD4: ; 0x020F1BD4
	.incbin "incbin/arm9_rodata.bin", 0xCF94, 0xCFAC - 0xCF94

	.global Unk_020F1BEC
Unk_020F1BEC: ; 0x020F1BEC
	.incbin "incbin/arm9_rodata.bin", 0xCFAC, 0xCFC8 - 0xCFAC

	.global Unk_020F1C08
Unk_020F1C08: ; 0x020F1C08
	.incbin "incbin/arm9_rodata.bin", 0xCFC8, 0xCFE4 - 0xCFC8

	.global Unk_020F1C24
Unk_020F1C24: ; 0x020F1C24
	.incbin "incbin/arm9_rodata.bin", 0xCFE4, 0xD000 - 0xCFE4

	.global Unk_020F1C40
Unk_020F1C40: ; 0x020F1C40
	.incbin "incbin/arm9_rodata.bin", 0xD000, 0xD01C - 0xD000

	.global Unk_020F1C5C
Unk_020F1C5C: ; 0x020F1C5C
	.incbin "incbin/arm9_rodata.bin", 0xD01C, 0xD038 - 0xD01C

	.global Unk_020F1C78
Unk_020F1C78: ; 0x020F1C78
	.incbin "incbin/arm9_rodata.bin", 0xD038, 0xD054 - 0xD038

	.global Unk_020F1C94
Unk_020F1C94: ; 0x020F1C94
	.incbin "incbin/arm9_rodata.bin", 0xD054, 0xD070 - 0xD054

	.global Unk_020F1CB0
Unk_020F1CB0: ; 0x020F1CB0
	.incbin "incbin/arm9_rodata.bin", 0xD070, 0xD090 - 0xD070

	.global Unk_020F1CD0
Unk_020F1CD0: ; 0x020F1CD0
	.incbin "incbin/arm9_rodata.bin", 0xD090, 0xD0B8 - 0xD090

	.global Unk_020F1CF8
Unk_020F1CF8: ; 0x020F1CF8
	.incbin "incbin/arm9_rodata.bin", 0xD0B8, 0xD0F8 - 0xD0B8

	.global Unk_020F1D38
Unk_020F1D38: ; 0x020F1D38
	.incbin "incbin/arm9_rodata.bin", 0xD0F8, 0xD138 - 0xD0F8

	.global Unk_020F1D78
Unk_020F1D78: ; 0x020F1D78
	.incbin "incbin/arm9_rodata.bin", 0xD138, 0xD178 - 0xD138

	.global Unk_020F1DB8
Unk_020F1DB8: ; 0x020F1DB8
	.incbin "incbin/arm9_rodata.bin", 0xD178, 0xD1B8 - 0xD178

	.global Unk_020F1DF8
Unk_020F1DF8: ; 0x020F1DF8
	.incbin "incbin/arm9_rodata.bin", 0xD1B8, 0xD248 - 0xD1B8

	.global Unk_020F1E88
Unk_020F1E88: ; 0x020F1E88
	.incbin "incbin/arm9_rodata.bin", 0xD248, 0x10

