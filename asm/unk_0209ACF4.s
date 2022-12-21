	.include "macros/function.inc"
	.include "include/unk_0209ACF4.inc"

	

	.text


	thumb_func_start sub_0209ACF4
sub_0209ACF4: ; 0x0209ACF4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0x6c
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x19
	str r5, [r4, #0]
	lsl r0, r0, #4
	mov r1, #0x20
	bl sub_02023790
	str r0, [r4, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	mov r1, #0x20
	bl sub_02023790
	str r0, [r4, #8]
	mov r0, #0x20
	bl sub_0200B358
	mov r2, #0x69
	str r0, [r4, #0xc]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x20
	bl sub_0200B144
	str r0, [r4, #0x10]
	mov r0, #0x20
	bl sub_020149F0
	str r0, [r4, #0x14]
	ldr r2, [r4, #0]
	mov r0, #2
	ldr r2, [r2, #0xc]
	mov r1, #0
	mov r3, #0x20
	bl sub_0209747C
	str r0, [r4, #0x50]
	bl sub_02097520
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A7A0
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A7A0
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201A7A0
	mov r0, #0
	str r0, [r4, #0x54]
	ldr r1, _0209AD80 ; =sub_0209AE14
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_0209AD80: .word sub_0209AE14
	thumb_func_end sub_0209ACF4

	thumb_func_start sub_0209AD84
sub_0209AD84: ; 0x0209AD84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_020974EC
	ldr r0, [r4, #0x14]
	bl sub_02014A20
	ldr r0, [r4, #4]
	bl sub_020237BC
	ldr r0, [r4, #8]
	bl sub_020237BC
	ldr r0, [r4, #0xc]
	bl sub_0200B3F0
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_0209ADBC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209AD84

	thumb_func_start sub_0209ADBC
sub_0209ADBC: ; 0x0209ADBC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x18
	bl sub_0201A7CC
	cmp r0, #0
	beq _0209ADDA
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A7A0
_0209ADDA:
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A7CC
	cmp r0, #0
	beq _0209ADF6
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A7A0
_0209ADF6:
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201A7CC
	cmp r0, #0
	beq _0209AE12
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201A8FC
	add r4, #0x38
	add r0, r4, #0
	bl sub_0201A7A0
_0209AE12:
	pop {r4, pc}
	thumb_func_end sub_0209ADBC

	thumb_func_start sub_0209AE14
sub_0209AE14: ; 0x0209AE14
	push {r3, r4, r5, lr}
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #0x54]
	cmp r1, #0xd
	bhi _0209AE60
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209AE2E: ; jump table
	.short _0209AE4A - _0209AE2E - 2 ; case 0
	.short _0209AE58 - _0209AE2E - 2 ; case 1
	.short _0209AE6E - _0209AE2E - 2 ; case 2
	.short _0209AF0C - _0209AE2E - 2 ; case 3
	.short _0209AF1C - _0209AE2E - 2 ; case 4
	.short _0209AF30 - _0209AE2E - 2 ; case 5
	.short _0209AF5C - _0209AE2E - 2 ; case 6
	.short _0209AF74 - _0209AE2E - 2 ; case 7
	.short _0209AF8A - _0209AE2E - 2 ; case 8
	.short _0209AFCA - _0209AE2E - 2 ; case 9
	.short _0209AFDE - _0209AE2E - 2 ; case 10
	.short _0209B044 - _0209AE2E - 2 ; case 11
	.short _0209B052 - _0209AE2E - 2 ; case 12
	.short _0209B070 - _0209AE2E - 2 ; case 13
_0209AE4A:
	mov r1, #0
	add r2, r1, #0
	bl sub_0209B084
	mov r0, #1
	str r0, [r4, #0x54]
	b _0209B078
_0209AE58:
	bl sub_0209B100
	cmp r0, #0
	bne _0209AE62
_0209AE60:
	b _0209B078
_0209AE62:
	add r0, r4, #0
	bl sub_0209B12C
	mov r0, #2
	str r0, [r4, #0x54]
	b _0209B078
_0209AE6E:
	bl sub_0209B288
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0x64]
	cmp r0, r1
	beq _0209AF66
	add r0, r4, #0
	bl sub_0209B1CC
	ldr r0, [r4, #0x64]
	cmp r0, #4
	bhi _0209AF66
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0209AE94: ; jump table
	.short _0209AE9E - _0209AE94 - 2 ; case 0
	.short _0209AEB8 - _0209AE94 - 2 ; case 1
	.short _0209AED2 - _0209AE94 - 2 ; case 2
	.short _0209AEEC - _0209AE94 - 2 ; case 3
	.short _0209AF06 - _0209AE94 - 2 ; case 4
_0209AE9E:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl sub_0202D498
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl sub_02014CC0
	mov r0, #3
	str r0, [r4, #0x54]
	b _0209B078
_0209AEB8:
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl sub_0202D498
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl sub_02014CC0
	mov r0, #3
	str r0, [r4, #0x54]
	b _0209B078
_0209AED2:
	ldr r0, [r4, #0]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl sub_0202D498
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl sub_02014CC0
	mov r0, #3
	str r0, [r4, #0x54]
	b _0209B078
_0209AEEC:
	ldr r0, [r4, #0]
	mov r1, #3
	ldr r0, [r0, #0xc]
	bl sub_0202D498
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x48
	bl sub_02014CC0
	mov r0, #3
	str r0, [r4, #0x54]
	b _0209B078
_0209AF06:
	mov r0, #0xb
	str r0, [r4, #0x54]
	b _0209B078
_0209AF0C:
	ldr r1, [r4, #0x64]
	mov r2, #0
	add r1, r1, #1
	bl sub_0209B084
	mov r0, #4
	str r0, [r4, #0x54]
	b _0209B078
_0209AF1C:
	bl sub_0209B100
	cmp r0, #0
	beq _0209AF66
	mov r0, #0
	bl ov5_021D1744
	mov r0, #5
	str r0, [r4, #0x54]
	b _0209B078
_0209AF30:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0209AF66
	add r1, r4, #0
	ldr r0, [r4, #0x50]
	add r1, #0x48
	bl sub_02097500
	ldr r0, [r4, #0x50]
	bl sub_02097514
	add r0, r4, #0
	bl sub_0209ADBC
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x50]
	bl sub_0203D874
	mov r0, #6
	str r0, [r4, #0x54]
	b _0209B078
_0209AF5C:
	ldr r0, [r4, #0]
	bl sub_020509B4
	cmp r0, #0
	beq _0209AF68
_0209AF66:
	b _0209B078
_0209AF68:
	ldr r0, [r4, #0]
	bl sub_020509D4
	mov r0, #7
	str r0, [r4, #0x54]
	b _0209B078
_0209AF74:
	ldr r0, [r4, #0]
	bl sub_020509DC
	cmp r0, #0
	beq _0209B078
	mov r0, #1
	bl ov5_021D1744
	mov r0, #8
	str r0, [r4, #0x54]
	b _0209B078
_0209AF8A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0209B078
	ldr r0, [r4, #0x50]
	bl sub_02097528
	cmp r0, #0
	beq _0209AFA2
	mov r0, #0xb
	str r0, [r4, #0x54]
	b _0209B078
_0209AFA2:
	add r1, r4, #0
	ldr r0, [r4, #0x50]
	add r1, #0x48
	bl sub_02097540
	ldr r0, [r4, #0]
	add r2, r4, #0
	ldr r0, [r0, #0xc]
	ldr r1, [r4, #0x64]
	add r2, #0x48
	bl sub_0202D478
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0209B084
	mov r0, #9
	str r0, [r4, #0x54]
	b _0209B078
_0209AFCA:
	bl sub_0209B100
	cmp r0, #0
	beq _0209B078
	add r0, r4, #0
	bl sub_0209B1D8
	mov r0, #0xa
	str r0, [r4, #0x54]
	b _0209B078
_0209AFDE:
	bl sub_0209B288
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0x64]
	cmp r0, r1
	beq _0209B078
	cmp r0, #0
	beq _0209AFF4
	cmp r0, #1
	b _0209B006
_0209AFF4:
	add r0, r4, #0
	bl sub_0209B27C
	add r0, r4, #0
	bl sub_0209B12C
	mov r0, #2
	str r0, [r4, #0x54]
	b _0209B078
_0209B006:
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl sub_02014C78
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0209B27C
	ldr r0, _0209B07C ; =0x0000FFFF
	cmp r5, r0
	beq _0209B034
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r2, r5, #0
	bl sub_0200BE48
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl sub_0209B084
	b _0209B03E
_0209B034:
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0209B084
_0209B03E:
	mov r0, #0xc
	str r0, [r4, #0x54]
	b _0209B078
_0209B044:
	mov r1, #5
	mov r2, #0
	bl sub_0209B084
	mov r0, #0xc
	str r0, [r4, #0x54]
	b _0209B078
_0209B052:
	bl sub_0209B100
	cmp r0, #0
	beq _0209B078
	ldr r0, _0209B080 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xf3
	tst r0, r1
	beq _0209B078
	add r0, r4, #0
	bl sub_0209B110
	mov r0, #0xd
	str r0, [r4, #0x54]
	b _0209B078
_0209B070:
	bl sub_0209AD84
	mov r0, #1
	pop {r3, r4, r5, pc}
_0209B078:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209B07C: .word 0x0000FFFF
_0209B080: .word 0x021BF67C
	thumb_func_end sub_0209AE14

	thumb_func_start sub_0209B084
sub_0209B084: ; 0x0209B084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x18
	cmp r2, #0
	ldr r0, [r5, #0x10]
	beq _0209B0A4
	ldr r2, [r5, #4]
	bl sub_0200B1B8
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #8]
	ldr r2, [r5, #4]
	bl sub_0200C388
	b _0209B0AA
_0209B0A4:
	ldr r2, [r5, #8]
	bl sub_0200B1B8
_0209B0AA:
	add r0, r4, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0209B0D2
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205D944
	b _0209B0E4
_0209B0D2:
	add r0, r4, #0
	bl sub_0205D988
	ldr r2, _0209B0FC ; =0x000003E2
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xa
	bl sub_0200E060
_0209B0E4:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	ldr r1, [r5, #8]
	add r0, r4, #0
	mov r3, #1
	bl sub_0205D994
	str r0, [r5, #0x58]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209B0FC: .word 0x000003E2
	thumb_func_end sub_0209B084

	thumb_func_start sub_0209B100
sub_0209B100: ; 0x0209B100
	ldr r0, [r0, #0x58]
	ldr r3, _0209B10C ; =sub_0205DA04
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx r3
	nop
_0209B10C: .word sub_0205DA04
	thumb_func_end sub_0209B100

	thumb_func_start sub_0209B110
sub_0209B110: ; 0x0209B110
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0209B128
	add r0, r4, #0
	mov r1, #0
	bl sub_0200E084
_0209B128:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209B110

	thumb_func_start sub_0209B12C
sub_0209B12C: ; 0x0209B12C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r5, #0
	add r7, #0x28
	add r0, r7, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0209B1B4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r2, #0x9b
	mov r3, #0xb
	bl sub_0200DAA4
	mov r3, #1
	str r3, [sp]
	mov r1, #0xd
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r6, #0
	add r4, r6, #0
_0209B17E:
	add r1, r6, #0
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #8]
	add r1, #9
	bl sub_0200B1B8
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_0201D738
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #5
	blt _0209B17E
	mov r2, #0
	ldr r0, [r5, #0x14]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02014A58
_0209B1B4:
	str r7, [r5, #0x68]
	mov r1, #0
	str r1, [r5, #0x5c]
	mov r0, #5
	str r0, [r5, #0x60]
	add r0, r7, #0
	mov r2, #0x9b
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0209B12C

	thumb_func_start sub_0209B1CC
sub_0209B1CC: ; 0x0209B1CC
	ldr r3, _0209B1D4 ; =sub_0200DC9C
	add r0, #0x28
	mov r1, #1
	bx r3
	; .align 2, 0
_0209B1D4: .word sub_0200DC9C
	thumb_func_end sub_0209B1CC

	thumb_func_start sub_0209B1D8
sub_0209B1D8: ; 0x0209B1D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r5, #0
	add r7, #0x38
	add r0, r7, #0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0209B264
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #3
	ldr r0, [r0, #8]
	mov r2, #0x9b
	mov r3, #0xb
	bl sub_0200DAA4
	mov r1, #0xd
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x83
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x19
	bl sub_0201A7E8
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r6, #0
	add r4, r6, #0
_0209B22E:
	add r1, r6, #0
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #8]
	add r1, #0xe
	bl sub_0200B1B8
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_0201D738
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #2
	blt _0209B22E
	mov r2, #0
	ldr r0, [r5, #0x14]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02014A58
_0209B264:
	str r7, [r5, #0x68]
	mov r1, #0
	str r1, [r5, #0x5c]
	mov r0, #2
	str r0, [r5, #0x60]
	add r0, r7, #0
	mov r2, #0x9b
	mov r3, #0xb
	bl sub_0200DC48
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0209B1D8

	thumb_func_start sub_0209B27C
sub_0209B27C: ; 0x0209B27C
	ldr r3, _0209B284 ; =sub_0200DC9C
	add r0, #0x38
	mov r1, #1
	bx r3
	; .align 2, 0
_0209B284: .word sub_0200DC9C
	thumb_func_end sub_0209B27C

	thumb_func_start sub_0209B288
sub_0209B288: ; 0x0209B288
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0209B33C ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0209B2B2
	ldr r0, [r4, #0x5c]
	sub r0, r0, #1
	str r0, [r4, #0x5c]
	bpl _0209B300
	ldr r0, [r4, #0x60]
	cmp r0, #2
	ble _0209B2AC
	sub r0, r0, #1
	str r0, [r4, #0x5c]
	b _0209B300
_0209B2AC:
	mov r0, #0
	str r0, [r4, #0x5c]
	b _0209B300
_0209B2B2:
	mov r1, #0x80
	tst r1, r0
	beq _0209B2D4
	ldr r0, [r4, #0x5c]
	add r1, r0, #1
	str r1, [r4, #0x5c]
	ldr r0, [r4, #0x60]
	cmp r1, r0
	blt _0209B300
	cmp r0, #2
	ble _0209B2CE
	mov r0, #0
	str r0, [r4, #0x5c]
	b _0209B300
_0209B2CE:
	sub r0, r0, #1
	str r0, [r4, #0x5c]
	b _0209B300
_0209B2D4:
	mov r1, #1
	tst r1, r0
	beq _0209B2E6
	ldr r0, _0209B340 ; =0x000005DC
	bl sub_02005748
	add sp, #8
	ldr r0, [r4, #0x5c]
	pop {r4, pc}
_0209B2E6:
	mov r1, #2
	tst r0, r1
	beq _0209B2FA
	ldr r0, _0209B340 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x60]
	add sp, #8
	sub r0, r0, #1
	pop {r4, pc}
_0209B2FA:
	add sp, #8
	sub r0, r1, #3
	pop {r4, pc}
_0209B300:
	ldr r0, [r4, #0x68]
	mov r1, #0xc
	str r1, [sp]
	ldrb r1, [r0, #8]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r1, #0x13
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, #0xf
	bl sub_0201AE78
	ldr r3, [r4, #0x5c]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x68]
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02014A58
	ldr r0, [r4, #0x68]
	bl sub_0201ACCC
	ldr r0, _0209B340 ; =0x000005DC
	bl sub_02005748
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r4, pc}
	nop
_0209B33C: .word 0x021BF67C
_0209B340: .word 0x000005DC
	thumb_func_end sub_0209B288