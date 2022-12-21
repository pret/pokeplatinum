	.include "macros/function.inc"
	.include "include/unk_020041CC.inc"

	

	.text


	thumb_func_start sub_020041CC
sub_020041CC: ; 0x020041CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020041CC

	thumb_func_start sub_020041DC
sub_020041DC: ; 0x020041DC
	push {r3, lr}
	mov r0, #5
	bl sub_02003D5C
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_020041DC

	thumb_func_start sub_020041E8
sub_020041E8: ; 0x020041E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	bl sub_02003D5C
	strh r4, [r0]
	mov r0, #0
	bl sub_02004208
	pop {r4, pc}
	thumb_func_end sub_020041E8

	thumb_func_start sub_020041FC
sub_020041FC: ; 0x020041FC
	push {r3, lr}
	mov r0, #0xa
	bl sub_02003D5C
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_020041FC

	thumb_func_start sub_02004208
sub_02004208: ; 0x02004208
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	bl sub_02003D5C
	strh r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004208

	thumb_func_start sub_02004218
sub_02004218: ; 0x02004218
	push {r3, lr}
	mov r0, #0xb
	bl sub_02003D5C
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02004218

	thumb_func_start sub_02004224
sub_02004224: ; 0x02004224
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x20
	bl sub_02003D5C
	strh r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004224

	thumb_func_start sub_02004234
sub_02004234: ; 0x02004234
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x15
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x16
	bl sub_02003D5C
	cmp r5, #0x33
	bhs _02004252
	strb r5, [r4]
	mov r1, #0
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_02004252:
	strb r5, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004234

	thumb_func_start sub_02004258
sub_02004258: ; 0x02004258
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x15
	bl sub_02003D5C
	mov r0, #0x16
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_02004258

	thumb_func_start sub_0200426C
sub_0200426C: ; 0x0200426C
	push {r4, lr}
	cmp r0, #0x44
	bls _02004274
	b _020044F6
_02004274:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02004280: ; jump table
	.short _020044F6 - _02004280 - 2 ; case 0
	.short _0200430A - _02004280 - 2 ; case 1
	.short _020043B2 - _02004280 - 2 ; case 2
	.short _020043D6 - _02004280 - 2 ; case 3
	.short _020043E0 - _02004280 - 2 ; case 4
	.short _020043EA - _02004280 - 2 ; case 5
	.short _020043FE - _02004280 - 2 ; case 6
	.short _02004454 - _02004280 - 2 ; case 7
	.short _02004408 - _02004280 - 2 ; case 8
	.short _0200430A - _02004280 - 2 ; case 9
	.short _0200430A - _02004280 - 2 ; case 10
	.short _020043F4 - _02004280 - 2 ; case 11
	.short _02004412 - _02004280 - 2 ; case 12
	.short _020043B2 - _02004280 - 2 ; case 13
	.short _020043A8 - _02004280 - 2 ; case 14
	.short _0200442C - _02004280 - 2 ; case 15
	.short _0200441C - _02004280 - 2 ; case 16
	.short _0200430A - _02004280 - 2 ; case 17
	.short _020043BC - _02004280 - 2 ; case 18
	.short _02004314 - _02004280 - 2 ; case 19
	.short _0200430A - _02004280 - 2 ; case 20
	.short _020043C6 - _02004280 - 2 ; case 21
	.short _020043E0 - _02004280 - 2 ; case 22
	.short _0200430A - _02004280 - 2 ; case 23
	.short _020044F6 - _02004280 - 2 ; case 24
	.short _020044F6 - _02004280 - 2 ; case 25
	.short _020044F6 - _02004280 - 2 ; case 26
	.short _020044F6 - _02004280 - 2 ; case 27
	.short _020044F6 - _02004280 - 2 ; case 28
	.short _020044F6 - _02004280 - 2 ; case 29
	.short _020044F6 - _02004280 - 2 ; case 30
	.short _020044F6 - _02004280 - 2 ; case 31
	.short _020044F6 - _02004280 - 2 ; case 32
	.short _020044F6 - _02004280 - 2 ; case 33
	.short _020044F6 - _02004280 - 2 ; case 34
	.short _020044F6 - _02004280 - 2 ; case 35
	.short _020044F6 - _02004280 - 2 ; case 36
	.short _020044F6 - _02004280 - 2 ; case 37
	.short _020044F6 - _02004280 - 2 ; case 38
	.short _020044F6 - _02004280 - 2 ; case 39
	.short _020044F6 - _02004280 - 2 ; case 40
	.short _020044F6 - _02004280 - 2 ; case 41
	.short _020044F6 - _02004280 - 2 ; case 42
	.short _020044F6 - _02004280 - 2 ; case 43
	.short _020044F6 - _02004280 - 2 ; case 44
	.short _020044F6 - _02004280 - 2 ; case 45
	.short _020044F6 - _02004280 - 2 ; case 46
	.short _020044F6 - _02004280 - 2 ; case 47
	.short _020044F6 - _02004280 - 2 ; case 48
	.short _020044F6 - _02004280 - 2 ; case 49
	.short _020044F6 - _02004280 - 2 ; case 50
	.short _02004436 - _02004280 - 2 ; case 51
	.short _0200444A - _02004280 - 2 ; case 52
	.short _02004454 - _02004280 - 2 ; case 53
	.short _0200445E - _02004280 - 2 ; case 54
	.short _02004468 - _02004280 - 2 ; case 55
	.short _02004478 - _02004280 - 2 ; case 56
	.short _02004482 - _02004280 - 2 ; case 57
	.short _0200448C - _02004280 - 2 ; case 58
	.short _02004496 - _02004280 - 2 ; case 59
	.short _020044A0 - _02004280 - 2 ; case 60
	.short _020044AA - _02004280 - 2 ; case 61
	.short _020044B4 - _02004280 - 2 ; case 62
	.short _020044BE - _02004280 - 2 ; case 63
	.short _020044C8 - _02004280 - 2 ; case 64
	.short _020044D8 - _02004280 - 2 ; case 65
	.short _02004440 - _02004280 - 2 ; case 66
	.short _02004468 - _02004280 - 2 ; case 67
	.short _020044E8 - _02004280 - 2 ; case 68
_0200430A:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004314:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	ldr r0, _020044FC ; =0x00000577
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004500 ; =0x00000579
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004504 ; =0x0000057B
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004508 ; =0x00000576
	mov r1, #1
	bl sub_02004080
	ldr r0, _0200450C ; =0x0000057C
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004510 ; =0x0000057E
	mov r1, #1
	bl sub_02004080
	mov r0, #0x65
	lsl r0, r0, #4
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004514 ; =0x0000056A
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004518 ; =0x00000722
	mov r1, #1
	bl sub_02004080
	ldr r0, _0200451C ; =0x0000056B
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004520 ; =0x0000056C
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004524 ; =0x0000056D
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004528 ; =0x0000056F
	mov r1, #1
	bl sub_02004080
	ldr r0, _0200452C ; =0x0000063E
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004530 ; =0x00000643
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004534 ; =0x00000572
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004538 ; =0x00000569
	mov r1, #1
	bl sub_02004080
	b _020044F6
_020043A8:
	mov r0, #0xe
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043B2:
	mov r0, #2
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043BC:
	mov r0, #2
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043C6:
	ldr r0, _0200453C ; =0x00000302
	bl sub_020040B4
	ldr r0, _0200453C ; =0x00000302
	bl sub_0200409C
	add r4, r0, #0
	b _020044F6
_020043D6:
	mov r0, #0xd
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043E0:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043EA:
	mov r0, #2
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043F4:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043FE:
	mov r0, #0xb
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004408:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004412:
	mov r0, #0xe
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200441C:
	mov r0, #1
	bl sub_02004050
	mov r0, #8
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200442C:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004436:
	mov r0, #3
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004440:
	mov r0, #6
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200444A:
	mov r0, #5
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004454:
	mov r0, #9
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200445E:
	mov r0, #0xa
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004468:
	ldr r0, _02004540 ; =0x000002F7
	bl sub_020040B4
	ldr r0, _02004540 ; =0x000002F7
	bl sub_0200409C
	add r4, r0, #0
	b _020044F6
_02004478:
	mov r0, #0xc
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004482:
	mov r0, #7
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200448C:
	mov r0, #8
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004496:
	mov r0, #0xf
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044A0:
	mov r0, #3
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044AA:
	mov r0, #5
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044B4:
	mov r0, #0xf
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044BE:
	mov r0, #4
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044C8:
	ldr r0, _02004544 ; =0x000002FF
	bl sub_020040B4
	ldr r0, _02004544 ; =0x000002FF
	bl sub_0200409C
	add r4, r0, #0
	b _020044F6
_020044D8:
	ldr r0, _02004548 ; =0x000002FE
	bl sub_020040B4
	ldr r0, _02004548 ; =0x000002FE
	bl sub_0200409C
	add r4, r0, #0
	b _020044F6
_020044E8:
	ldr r0, _0200454C ; =0x00000301
	bl sub_020040B4
	ldr r0, _0200454C ; =0x00000301
	bl sub_0200409C
	add r4, r0, #0
_020044F6:
	add r0, r4, #0
	pop {r4, pc}
	nop
_020044FC: .word 0x00000577
_02004500: .word 0x00000579
_02004504: .word 0x0000057B
_02004508: .word 0x00000576
_0200450C: .word 0x0000057C
_02004510: .word 0x0000057E
_02004514: .word 0x0000056A
_02004518: .word 0x00000722
_0200451C: .word 0x0000056B
_02004520: .word 0x0000056C
_02004524: .word 0x0000056D
_02004528: .word 0x0000056F
_0200452C: .word 0x0000063E
_02004530: .word 0x00000643
_02004534: .word 0x00000572
_02004538: .word 0x00000569
_0200453C: .word 0x00000302
_02004540: .word 0x000002F7
_02004544: .word 0x000002FF
_02004548: .word 0x000002FE
_0200454C: .word 0x00000301
	thumb_func_end sub_0200426C

	thumb_func_start sub_02004550
sub_02004550: ; 0x02004550
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x15
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02003D5C
	str r0, [sp]
	mov r0, #0x16
	bl sub_02003D5C
	str r0, [sp, #4]
	mov r0, #0xe
	bl sub_02003D5C
	add r7, r0, #0
	cmp r4, #0x33
	bhs _02004584
	ldr r0, [sp]
	ldrb r0, [r0]
	cmp r0, r4
	bne _02004592
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004584:
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, r4
	bne _02004592
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004592:
	add r0, r4, #0
	bl sub_02004234
	cmp r4, #0x44
	bls _0200459E
	b _020046C4
_0200459E:
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020045AA: ; jump table
	.short _020046C4 - _020045AA - 2 ; case 0
	.short _02004678 - _020045AA - 2 ; case 1
	.short _0200469C - _020045AA - 2 ; case 2
	.short _020046AE - _020045AA - 2 ; case 3
	.short _02004634 - _020045AA - 2 ; case 4
	.short _02004648 - _020045AA - 2 ; case 5
	.short _0200465C - _020045AA - 2 ; case 6
	.short _02004666 - _020045AA - 2 ; case 7
	.short _020046AE - _020045AA - 2 ; case 8
	.short _020046AE - _020045AA - 2 ; case 9
	.short _020046AE - _020045AA - 2 ; case 10
	.short _02004652 - _020045AA - 2 ; case 11
	.short _020046AE - _020045AA - 2 ; case 12
	.short _020046AE - _020045AA - 2 ; case 13
	.short _0200468A - _020045AA - 2 ; case 14
	.short _020046AE - _020045AA - 2 ; case 15
	.short _020046AE - _020045AA - 2 ; case 16
	.short _020046AE - _020045AA - 2 ; case 17
	.short _020046AE - _020045AA - 2 ; case 18
	.short _020046AE - _020045AA - 2 ; case 19
	.short _020046AE - _020045AA - 2 ; case 20
	.short _020046AE - _020045AA - 2 ; case 21
	.short _020046BA - _020045AA - 2 ; case 22
	.short _020046AE - _020045AA - 2 ; case 23
	.short _020046C4 - _020045AA - 2 ; case 24
	.short _020046C4 - _020045AA - 2 ; case 25
	.short _020046C4 - _020045AA - 2 ; case 26
	.short _020046C4 - _020045AA - 2 ; case 27
	.short _020046C4 - _020045AA - 2 ; case 28
	.short _020046C4 - _020045AA - 2 ; case 29
	.short _020046C4 - _020045AA - 2 ; case 30
	.short _020046C4 - _020045AA - 2 ; case 31
	.short _020046C4 - _020045AA - 2 ; case 32
	.short _020046C4 - _020045AA - 2 ; case 33
	.short _020046C4 - _020045AA - 2 ; case 34
	.short _020046C4 - _020045AA - 2 ; case 35
	.short _020046C4 - _020045AA - 2 ; case 36
	.short _020046C4 - _020045AA - 2 ; case 37
	.short _020046C4 - _020045AA - 2 ; case 38
	.short _020046C4 - _020045AA - 2 ; case 39
	.short _020046C4 - _020045AA - 2 ; case 40
	.short _020046C4 - _020045AA - 2 ; case 41
	.short _020046C4 - _020045AA - 2 ; case 42
	.short _020046C4 - _020045AA - 2 ; case 43
	.short _020046C4 - _020045AA - 2 ; case 44
	.short _020046C4 - _020045AA - 2 ; case 45
	.short _020046C4 - _020045AA - 2 ; case 46
	.short _020046C4 - _020045AA - 2 ; case 47
	.short _020046C4 - _020045AA - 2 ; case 48
	.short _020046C4 - _020045AA - 2 ; case 49
	.short _020046C4 - _020045AA - 2 ; case 50
	.short _02004670 - _020045AA - 2 ; case 51
	.short _02004670 - _020045AA - 2 ; case 52
	.short _02004670 - _020045AA - 2 ; case 53
	.short _02004670 - _020045AA - 2 ; case 54
	.short _02004670 - _020045AA - 2 ; case 55
	.short _02004670 - _020045AA - 2 ; case 56
	.short _02004670 - _020045AA - 2 ; case 57
	.short _02004670 - _020045AA - 2 ; case 58
	.short _02004670 - _020045AA - 2 ; case 59
	.short _02004670 - _020045AA - 2 ; case 60
	.short _02004670 - _020045AA - 2 ; case 61
	.short _02004670 - _020045AA - 2 ; case 62
	.short _02004670 - _020045AA - 2 ; case 63
	.short _02004670 - _020045AA - 2 ; case 64
	.short _02004670 - _020045AA - 2 ; case 65
	.short _02004670 - _020045AA - 2 ; case 66
	.short _02004670 - _020045AA - 2 ; case 67
	.short _02004670 - _020045AA - 2 ; case 68
_02004634:
	mov r0, #0
	bl sub_020053CC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020046F8
	mov r0, #0
	strh r0, [r7]
	b _020046C4
_02004648:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02004874
	b _020046C4
_02004652:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020048AC
	b _020046C4
_0200465C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020048CC
	b _020046C4
_02004666:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020048F0
	b _020046C4
_02004670:
	add r0, r4, #0
	bl sub_02004914
	b _020046C4
_02004678:
	mov r0, #1
	bl sub_020053CC
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
	b _020046C4
_0200468A:
	mov r0, #2
	bl sub_020053CC
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
	b _020046C4
_0200469C:
	mov r0, #0
	bl sub_020053CC
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
	b _020046C4
_020046AE:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
	b _020046C4
_020046BA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
_020046C4:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02004550

	thumb_func_start sub_020046CC
sub_020046CC: ; 0x020046CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	ldr r0, [r0, #0]
	bl sub_0200403C
	mov r0, #0x19
	bl sub_02003D5C
	bl sub_02004014
	add r0, r4, #0
	bl sub_0200426C
	mov r0, #0x1a
	bl sub_02003D5C
	bl sub_02004014
	pop {r4, pc}
	thumb_func_end sub_020046CC

	thumb_func_start sub_020046F8
sub_020046F8: ; 0x020046F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xc
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	mov r0, #0x20
	bl sub_02003D5C
	mov r0, #0
	bl sub_020040CC
	bl sub_02004B34
	add r4, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _02004732
	cmp r4, r5
	bne _02004732
	bl sub_02004218
	mov r1, #0x12
	lsl r1, r1, #6
	cmp r0, r1
	bne _0200478A
_02004732:
	mov r0, #1
	bl sub_0200501C
	bl sub_020056D4
	cmp r4, r5
	beq _0200474C
	mov r0, #1
	mov r1, #0
	bl sub_020049F4
	bl sub_0200569C
_0200474C:
	ldrb r0, [r6]
	cmp r0, #1
	bne _02004784
	mov r0, #2
	bl sub_02004974
	bl sub_0200403C
	mov r0, #4
	bl sub_0200426C
	mov r0, #0x1a
	bl sub_02003D5C
	bl sub_02004014
	cmp r4, r5
	beq _02004778
	mov r0, #1
	mov r1, #0
	bl sub_020049F4
_02004778:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0200478C
	pop {r4, r5, r6, pc}
_02004784:
	add r0, r5, #0
	bl sub_0200549C
_0200478A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020046F8

	thumb_func_start sub_0200478C
sub_0200478C: ; 0x0200478C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x20
	bl sub_02003D5C
	add r4, r0, #0
	ldrh r0, [r4]
	bl sub_02004B48
	ldr r1, _020047E4 ; =0x000002BD
	cmp r0, r1
	beq _020047B8
	add r1, r1, #2
	cmp r0, r1
	beq _020047B8
	add r0, r5, #0
	mov r1, #4
	bl sub_02004080
	bl sub_02022974
	b _020047C0
_020047B8:
	ldrh r0, [r4]
	mov r1, #6
	bl sub_02004080
_020047C0:
	mov r0, #0x1b
	bl sub_02003D5C
	bl sub_02004014
	mov r0, #1
	mov r1, #0
	bl sub_020049F4
	mov r0, #0x7f
	mov r1, #0x28
	mov r2, #0
	bl sub_0200560C
	mov r0, #0
	bl sub_0200501C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020047E4: .word 0x000002BD
	thumb_func_end sub_0200478C

	thumb_func_start sub_020047E8
sub_020047E8: ; 0x020047E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x13
	add r5, r1, #0
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x20
	bl sub_02003D5C
	add r4, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _02004808
	cmp r5, #0
	bne _0200486C
_02004808:
	mov r0, #1
	bl sub_02004974
	bl sub_0200403C
	mov r0, #0
	bl sub_02004258
	ldrh r0, [r4]
	mov r1, #2
	bl sub_02004080
	mov r0, #0x19
	bl sub_02003D5C
	bl sub_02004014
	mov r0, #4
	bl sub_0200426C
	mov r0, #0x1a
	bl sub_02003D5C
	bl sub_02004014
	ldrh r0, [r4]
	bl sub_02004B48
	ldr r1, _02004870 ; =0x000002BD
	cmp r0, r1
	beq _0200485A
	add r1, r1, #2
	cmp r0, r1
	beq _0200485A
	add r0, r7, #0
	mov r1, #4
	bl sub_02004080
	bl sub_02022974
	b _02004862
_0200485A:
	ldrh r0, [r4]
	mov r1, #4
	bl sub_02004080
_02004862:
	mov r0, #0x1b
	bl sub_02003D5C
	bl sub_02004014
_0200486C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02004870: .word 0x000002BD
	thumb_func_end sub_020047E8

	thumb_func_start sub_02004874
sub_02004874: ; 0x02004874
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	bl sub_0200540C
	mov r0, #2
	bl sub_02004974
	bl sub_0200403C
	mov r0, #5
	bl sub_0200426C
	mov r0, #0x1a
	bl sub_02003D5C
	bl sub_02004014
	mov r0, #1
	bl sub_0200501C
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004874

	thumb_func_start sub_020048AC
sub_020048AC: ; 0x020048AC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	bl sub_0200569C
	bl sub_02004A3C
	mov r0, #4
	bl sub_020046CC
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	thumb_func_end sub_020048AC

	thumb_func_start sub_020048CC
sub_020048CC: ; 0x020048CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	bl sub_0200569C
	mov r0, #6
	bl sub_020046CC
	mov r0, #1
	bl sub_0200501C
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020048CC

	thumb_func_start sub_020048F0
sub_020048F0: ; 0x020048F0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	bl sub_0200569C
	mov r0, #7
	bl sub_020046CC
	mov r0, #1
	bl sub_0200501C
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020048F0

	thumb_func_start sub_02004914
sub_02004914: ; 0x02004914
	push {r4, lr}
	add r4, r0, #0
	bl sub_02004964
	add r0, r4, #0
	bl sub_0200426C
	mov r0, #0x1c
	bl sub_02003D5C
	bl sub_02004014
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004914

	thumb_func_start sub_02004930
sub_02004930: ; 0x02004930
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x18
	add r4, r1, #0
	bl sub_02003D5C
	bl sub_0200569C
	add r0, r5, #0
	bl sub_020046CC
	add r0, r4, #0
	bl sub_0200549C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004930

	thumb_func_start sub_02004950
sub_02004950: ; 0x02004950
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	bl sub_0200540C
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	thumb_func_end sub_02004950

	thumb_func_start sub_02004964
sub_02004964: ; 0x02004964
	push {r3, lr}
	mov r0, #4
	bl sub_02004974
	bl sub_0200403C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004964

	thumb_func_start sub_02004974
sub_02004974: ; 0x02004974
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02003D54
	cmp r4, #7
	blt _0200498E
	bl sub_02022974
	mov r0, #0x1b
	bl sub_02003D5C
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
_0200498E:
	cmp r4, #6
	bhi _020049F0
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200499E: ; jump table
	.short _020049AC - _0200499E - 2 ; case 0
	.short _020049B6 - _0200499E - 2 ; case 1
	.short _020049C0 - _0200499E - 2 ; case 2
	.short _020049CA - _0200499E - 2 ; case 3
	.short _020049D4 - _0200499E - 2 ; case 4
	.short _020049DE - _0200499E - 2 ; case 5
	.short _020049E8 - _0200499E - 2 ; case 6
_020049AC:
	mov r0, #0x17
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049B6:
	mov r0, #0x18
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049C0:
	mov r0, #0x19
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049CA:
	mov r0, #0x1a
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049D4:
	mov r0, #0x1b
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049DE:
	mov r0, #0x1c
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049E8:
	mov r0, #0x1d
	bl sub_02003D5C
	add r5, r0, #0
_020049F0:
	ldr r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004974

	thumb_func_start sub_020049F4
sub_020049F4: ; 0x020049F4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	cmp r0, #1
	bne _02004A08
	mov r0, #0xc
	bl sub_02003D5C
	add r6, r0, #0
	mov r4, #0
	b _02004A16
_02004A08:
	cmp r0, #7
	bne _02004A3A
	mov r0, #0xd
	bl sub_02003D5C
	add r6, r0, #0
	mov r4, #7
_02004A16:
	cmp r5, #0
	bne _02004A2C
	add r0, r4, #0
	bl sub_020040CC
	bl sub_02004B34
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020041E8
_02004A2C:
	add r0, r4, #0
	bl sub_020040CC
	add r1, r5, #0
	bl sub_020B80CC
	strb r5, [r6]
_02004A3A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020049F4

	thumb_func_start sub_02004A3C
sub_02004A3C: ; 0x02004A3C
	push {r4, lr}
	mov r0, #0xc
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0xd
	bl sub_02003D5C
	mov r1, #0
	strb r1, [r4]
	strb r1, [r0]
	pop {r4, pc}
	thumb_func_end sub_02004A3C

	thumb_func_start sub_02004A54
sub_02004A54: ; 0x02004A54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020040CC
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020B8148
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004A54

	thumb_func_start sub_02004A68
sub_02004A68: ; 0x02004A68
	push {r4, lr}
	add r4, r1, #0
	bpl _02004A70
	mov r4, #0
_02004A70:
	cmp r4, #0x7f
	ble _02004A76
	mov r4, #0x7f
_02004A76:
	bl sub_020040CC
	add r1, r4, #0
	bl sub_020B8134
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004A68

	thumb_func_start sub_02004A84
sub_02004A84: ; 0x02004A84
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02004B18
	bl sub_020040F0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02004AA0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004A84

	thumb_func_start sub_02004AA0
sub_02004AA0: ; 0x02004AA0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_020B9B0C
	cmp r5, #1
	beq _02004AB0
	cmp r5, #8
	bne _02004AB4
_02004AB0:
	mov r4, #0x7f
	b _02004ABA
_02004AB4:
	cmp r0, #0
	beq _02004AD2
	ldrb r4, [r0, #2]
_02004ABA:
	bl sub_02036314
	cmp r0, #1
	bne _02004AD2
	add r0, r4, #0
	mov r1, #5
	bl sub_020E1F6C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02004A68
_02004AD2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004AA0

	thumb_func_start sub_02004AD4
sub_02004AD4: ; 0x02004AD4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02004B18
	bl sub_020040F0
	add r1, r4, #0
	bl sub_02004A68
	pop {r4, pc}
	thumb_func_end sub_02004AD4

	thumb_func_start sub_02004AE8
sub_02004AE8: ; 0x02004AE8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020040CC
	mov r2, #0
	mvn r2, r2
	add r1, r5, #0
	add r3, r2, #0
	str r4, [sp]
	bl sub_020BADC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004AE8

	thumb_func_start sub_02004B04
sub_02004B04: ; 0x02004B04
	push {r4, lr}
	add r4, r0, #0
	bpl _02004B0E
	bl sub_02022974
_02004B0E:
	add r0, r4, #0
	bl sub_020B8108
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004B04

	thumb_func_start sub_02004B18
sub_02004B18: ; 0x02004B18
	push {r3, lr}
	cmp r0, #0
	bne _02004B22
	mov r0, #0xff
	pop {r3, pc}
_02004B22:
	bl sub_020B9B0C
	cmp r0, #0
	bne _02004B2E
	mov r0, #0xff
	pop {r3, pc}
_02004B2E:
	ldrb r0, [r0, #5]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004B18

	thumb_func_start sub_02004B34
sub_02004B34: ; 0x02004B34
	ldr r3, _02004B38 ; =sub_020B8244
	bx r3
	; .align 2, 0
_02004B38: .word sub_020B8244
	thumb_func_end sub_02004B34

	thumb_func_start sub_02004B3C
sub_02004B3C: ; 0x02004B3C
	push {r3, lr}
	bl sub_02004B48
	bl sub_020B9BEC
	pop {r3, pc}
	thumb_func_end sub_02004B3C

	thumb_func_start sub_02004B48
sub_02004B48: ; 0x02004B48
	push {r3, lr}
	bl sub_020B9B0C
	cmp r0, #0
	bne _02004B56
	mov r0, #0
	pop {r3, pc}
_02004B56:
	ldrh r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004B48

	thumb_func_start sub_02004B5C
sub_02004B5C: ; 0x02004B5C
	ldr r3, _02004B60 ; =sub_020CA88C
	bx r3
	; .align 2, 0
_02004B60: .word sub_020CA88C
	thumb_func_end sub_02004B5C

	thumb_func_start sub_02004B64
sub_02004B64: ; 0x02004B64
	push {r3, lr}
	bl sub_02003D54
	bl sub_020CA920
	pop {r3, pc}
	thumb_func_end sub_02004B64

	thumb_func_start sub_02004B70
sub_02004B70: ; 0x02004B70
	push {r3, lr}
	bl sub_020CA6A8
	pop {r3, pc}
	thumb_func_end sub_02004B70

	thumb_func_start sub_02004B78
sub_02004B78: ; 0x02004B78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02003D54
	mov r0, #0x10
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	cmp r5, #0xe
	beq _02004B9C
	cmp r5, #0xf
	beq _02004B9C
	bl sub_02022974
_02004B9C:
	cmp r5, #0xe
	bne _02004BAA
	ldrb r0, [r6]
	cmp r0, #0
	bne _02004BAA
	bl sub_02022974
_02004BAA:
	cmp r5, #0xf
	bne _02004BB8
	ldrb r0, [r4]
	cmp r0, #0
	bne _02004BB8
	bl sub_02022974
_02004BB8:
	cmp r5, #0xe
	bne _02004BC4
	mov r0, #0
	bl sub_02003D5C
	pop {r4, r5, r6, pc}
_02004BC4:
	mov r0, #1
	bl sub_02003D5C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02004B78

	thumb_func_start sub_02004BCC
sub_02004BCC: ; 0x02004BCC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02003D54
	mov r0, #0x10
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	cmp r5, #0xe
	beq _02004BF0
	cmp r5, #0xf
	beq _02004BF0
	bl sub_02022974
_02004BF0:
	cmp r5, #0xe
	bne _02004C1E
	ldrb r0, [r6]
	cmp r0, #0
	bne _02004C18
	mov r0, #0
	bl sub_02003D5C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020B7C00
	str r0, [r4, #0]
	cmp r0, #0
	bne _02004C12
	mov r0, #0
	pop {r4, r5, r6, pc}
_02004C12:
	mov r0, #1
	strb r0, [r6]
	b _02004C46
_02004C18:
	bl sub_02022974
	b _02004C46
_02004C1E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _02004C42
	mov r0, #1
	bl sub_02003D5C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020B7C00
	str r0, [r6, #0]
	cmp r0, #0
	bne _02004C3C
	mov r0, #0
	pop {r4, r5, r6, pc}
_02004C3C:
	mov r0, #1
	strb r0, [r4]
	b _02004C46
_02004C42:
	bl sub_02022974
_02004C46:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02004BCC

	thumb_func_start sub_02004C4C
sub_02004C4C: ; 0x02004C4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02003D54
	mov r0, #0x10
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	cmp r5, #0xe
	beq _02004C72
	cmp r5, #0xf
	beq _02004C72
	bl sub_02022974
	pop {r4, r5, r6, pc}
_02004C72:
	cmp r5, #0xe
	bne _02004C94
	ldrb r0, [r6]
	cmp r0, #1
	bne _02004C8E
	add r0, r5, #0
	bl sub_02004B78
	ldr r0, [r0, #0]
	bl sub_020B7C44
	mov r0, #0
	strb r0, [r6]
	pop {r4, r5, r6, pc}
_02004C8E:
	bl sub_02022974
	pop {r4, r5, r6, pc}
_02004C94:
	ldrb r0, [r4]
	cmp r0, #1
	bne _02004CAC
	add r0, r5, #0
	bl sub_02004B78
	ldr r0, [r0, #0]
	bl sub_020B7C44
	mov r0, #0
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02004CAC:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02004C4C

	thumb_func_start sub_02004CB4
sub_02004CB4: ; 0x02004CB4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r3, r0, #0
	ldr r0, [r3, #0x10]
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r3, #0x14]
	str r0, [sp, #4]
	ldr r0, [r3, #0x18]
	str r0, [sp, #8]
	ldr r0, [r3, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r0, [r0, #0]
	ldr r3, [r3, #0xc]
	bl sub_020B7C5C
	add r5, r0, #0
	bne _02004CEC
	add r0, r4, #0
	bl sub_02004C4C
_02004CEC:
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004CB4

	thumb_func_start sub_02004CF4
sub_02004CF4: ; 0x02004CF4
	push {r3, lr}
	bl sub_02004B78
	ldr r0, [r0, #0]
	bl sub_020B7D7C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004CF4

	thumb_func_start sub_02004D04
sub_02004D04: ; 0x02004D04
	push {r3, lr}
	bl sub_02004B78
	ldr r0, [r0, #0]
	bl sub_020B7E88
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004D04

	thumb_func_start sub_02004D14
sub_02004D14: ; 0x02004D14
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0x7f
	bls _02004D1E
	mov r4, #0x7f
_02004D1E:
	bl sub_02004B78
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_020B7E64
	pop {r4, pc}
	thumb_func_end sub_02004D14

	thumb_func_start sub_02004D2C
sub_02004D2C: ; 0x02004D2C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02004B78
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_020B7DE0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004D2C

	thumb_func_start sub_02004D40
sub_02004D40: ; 0x02004D40
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02036314
	cmp r0, #1
	bne _02004D68
	add r0, r4, #0
	bl sub_02004B78
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_020B7DB8
	pop {r3, r4, r5, pc}
_02004D68:
	add r0, r4, #0
	bl sub_02004B78
	ldr r0, [r0, #0]
	add r1, r5, #0
	bl sub_020B7DB8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004D40

	thumb_func_start sub_02004D78
sub_02004D78: ; 0x02004D78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r5, r3, #0
	bl sub_02003D54
	mov r0, #0x22
	bl sub_02003D5C
	add r4, r0, #0
	cmp r5, #0xe
	beq _02004D9C
	cmp r5, #0xf
	beq _02004D9C
	bl sub_02022974
_02004D9C:
	add r0, r6, #0
	bl sub_020B9C50
	add r7, r0, #0
	bne _02004DB0
	bl sub_02022974
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004DB0:
	ldr r0, [r7, #0]
	lsl r0, r0, #8
	lsr r0, r0, #8
	bl sub_020B9D7C
	add r6, r0, #0
	bne _02004DC8
	bl sub_02022974
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004DC8:
	cmp r5, #0xe
	bne _02004E16
	ldr r0, [sp, #0x48]
	add r1, r6, #0
	bl sub_02018144
	str r0, [r4, #0]
	cmp r0, #0
	bne _02004DE4
	bl sub_02022974
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004DE4:
	mov r1, #0
	add r2, r6, #0
	bl sub_020D5124
	ldr r0, [r7, #0]
	ldr r1, [r4, #0]
	lsl r0, r0, #8
	lsr r0, r0, #8
	add r2, r6, #0
	mov r3, #0
	bl sub_020B9DA4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02004E0E
	bl sub_02022974
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004E0E:
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl sub_02004E64
_02004E16:
	add r0, r5, #0
	bl sub_02004B78
	mov r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	str r0, [sp, #0x10]
	ldr r0, _02004E60 ; =0x00003443
	str r1, [sp, #0x14]
	str r0, [sp, #0x20]
	ldr r0, [sp]
	str r1, [sp, #0x18]
	str r0, [sp, #0x24]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #4]
	add r1, r5, #0
	str r0, [sp, #0x2c]
	add r0, sp, #8
	str r6, [sp, #0x1c]
	bl sub_02004CB4
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02004D40
	mov r0, #0xf
	bl sub_02003D5C
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02004E60: .word 0x00003443
	thumb_func_end sub_02004D78

	thumb_func_start sub_02004E64
sub_02004E64: ; 0x02004E64
	push {r3, r4, r5, r6}
	mov r5, #0
	lsr r6, r1, #1
	beq _02004E7E
	sub r2, r1, #1
_02004E6E:
	sub r3, r2, r5
	ldrb r4, [r0, r5]
	ldrb r1, [r0, r3]
	strb r1, [r0, r5]
	add r5, r5, #1
	strb r4, [r0, r3]
	cmp r5, r6
	blo _02004E6E
_02004E7E:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02004E64

	thumb_func_start sub_02004E84
sub_02004E84: ; 0x02004E84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02003D54
	mov r0, #0xf
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x22
	bl sub_02003D5C
	add r6, r0, #0
	cmp r5, #0xe
	beq _02004EA8
	cmp r5, #0xf
	beq _02004EA8
	bl sub_02022974
_02004EA8:
	add r0, r5, #0
	bl sub_02004CF4
	ldrb r0, [r4]
	cmp r0, #1
	bne _02004EBE
	mov r0, #0
	strb r0, [r4]
	ldr r0, [r6, #0]
	bl sub_020181C4
_02004EBE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02004E84

	thumb_func_start sub_02004EC0
sub_02004EC0: ; 0x02004EC0
	ldr r3, _02004EC4 ; =sub_020B90EC
	bx r3
	; .align 2, 0
_02004EC4: .word sub_020B90EC
	thumb_func_end sub_02004EC0

	thumb_func_start sub_02004EC8
sub_02004EC8: ; 0x02004EC8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_02003D54
	mov r0, #3
	bl sub_02003D5C
	mov r1, #1
	mov r3, #0xfa
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #6
	str r4, [sp]
	bl sub_020B8ED0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02004EC8

	thumb_func_start sub_02004EEC
sub_02004EEC: ; 0x02004EEC
	ldr r3, _02004EF0 ; =sub_020B8FBC
	bx r3
	; .align 2, 0
_02004EF0: .word sub_020B8FBC
	thumb_func_end sub_02004EEC

	thumb_func_start sub_02004EF4
sub_02004EF4: ; 0x02004EF4
	ldr r3, _02004EF8 ; =sub_020B8F78
	bx r3
	; .align 2, 0
_02004EF8: .word sub_020B8F78
	thumb_func_end sub_02004EF4

	thumb_func_start sub_02004EFC
sub_02004EFC: ; 0x02004EFC
	push {r3, r4, lr}
	sub sp, #0xc
	bl sub_02003D54
	mov r0, #4
	bl sub_02003D5C
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	mov r0, #3
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #4
	bl sub_02003D5C
	mov r2, #2
	ldr r1, _02004F3C ; =sub_020052C8
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	lsl r1, r2, #0xb
	ldr r3, _02004F40 ; =0x000055F0
	add r0, r4, #0
	mov r2, #0
	bl sub_020B9014
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02004F3C: .word sub_020052C8
_02004F40: .word 0x000055F0
	thumb_func_end sub_02004EFC

	thumb_func_start sub_02004F44
sub_02004F44: ; 0x02004F44
	ldr r3, _02004F48 ; =sub_020B90C0
	bx r3
	; .align 2, 0
_02004F48: .word sub_020B90C0
	thumb_func_end sub_02004F44

	thumb_func_start sub_02004F4C
sub_02004F4C: ; 0x02004F4C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x14
	bl sub_02003D5C
	cmp r4, #8
	ble _02004F5E
	mov r4, #8
	b _02004F64
_02004F5E:
	cmp r4, #0
	bge _02004F64
	mov r4, #0
_02004F64:
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_02004F4C

	thumb_func_start sub_02004F68
sub_02004F68: ; 0x02004F68
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020040CC
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020B8194
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004F68

	thumb_func_start sub_02004F7C
sub_02004F7C: ; 0x02004F7C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02004B18
	bl sub_020040F0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02004F68
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004F7C

	thumb_func_start sub_02004F94
sub_02004F94: ; 0x02004F94
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020040CC
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020B81B4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004F94

	thumb_func_start sub_02004FA8
sub_02004FA8: ; 0x02004FA8
	push {r4, lr}
	add r4, r1, #0
	bl sub_020040CC
	add r1, r4, #0
	bl sub_020B81D4
	pop {r4, pc}
	thumb_func_end sub_02004FA8

	thumb_func_start sub_02004FB8
sub_02004FB8: ; 0x02004FB8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020B7A60
	ldr r0, _02004FC8 ; =0x021BEB80
	str r4, [r0, #0]
	pop {r4, pc}
	nop
_02004FC8: .word 0x021BEB80
	thumb_func_end sub_02004FB8

	thumb_func_start sub_02004FCC
sub_02004FCC: ; 0x02004FCC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #7
	bl sub_02003D5C
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004FCC

	thumb_func_start sub_02004FDC
sub_02004FDC: ; 0x02004FDC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl sub_02003D5C
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004FDC

	thumb_func_start sub_02004FEC
sub_02004FEC: ; 0x02004FEC
	push {r3, lr}
	mov r0, #8
	bl sub_02003D5C
	ldrh r1, [r0]
	cmp r1, #0
	bne _02005002
	mov r1, #0
	strh r1, [r0]
	add r0, r1, #0
	pop {r3, pc}
_02005002:
	sub r1, r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004FEC

	thumb_func_start sub_0200500C
sub_0200500C: ; 0x0200500C
	ldr r3, _02005010 ; =sub_020B7A54
	bx r3
	; .align 2, 0
_02005010: .word sub_020B7A54
	thumb_func_end sub_0200500C

	thumb_func_start sub_02005014
sub_02005014: ; 0x02005014
	ldr r0, _02005018 ; =0x021BEBA0
	bx lr
	; .align 2, 0
_02005018: .word 0x021BEBA0
	thumb_func_end sub_02005014

	thumb_func_start sub_0200501C
sub_0200501C: ; 0x0200501C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200501C

	thumb_func_start sub_0200502C
sub_0200502C: ; 0x0200502C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x16
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02003D5C
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r3, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020050A4
	mov r0, #0
	strb r0, [r4]
	mov r0, #5
	bl sub_02003D0C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200502C

	thumb_func_start sub_02005068
sub_02005068: ; 0x02005068
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #9
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02003D5C
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	ldr r3, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020050A4
	ldr r0, [sp, #0x20]
	str r0, [r4, #0]
	mov r0, #6
	bl sub_02003D0C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02005068

	thumb_func_start sub_020050A4
sub_020050A4: ; 0x020050A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	mov r0, #2
	add r5, r1, #0
	add r7, r3, #0
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0
	add r1, r6, #0
	bl sub_0200564C
	mov r0, #0
	bl sub_020041E8
	add r0, r5, #0
	bl sub_02004208
	add r0, r7, #0
	bl sub_02004FDC
	add r0, r5, #0
	bl sub_02004B3C
	str r0, [r4, #0]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	bl sub_0200501C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020050A4

	thumb_func_start sub_020050E0
sub_020050E0: ; 0x020050E0
	cmp r0, #0
	bne _020050E8
	mov r0, #0
	bx lr
_020050E8:
	add r0, #0xc
	bx lr
	thumb_func_end sub_020050E0

	thumb_func_start sub_020050EC
sub_020050EC: ; 0x020050EC
	cmp r0, #0
	bne _020050F4
	mov r0, #0
	bx lr
_020050F4:
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_020050EC

	thumb_func_start sub_020050F8
sub_020050F8: ; 0x020050F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #5
	bl sub_02004974
	bl sub_0200403C
	lsl r0, r5, #0x10
	lsr r4, r0, #0x10
	ldr r0, _0200512C ; =0x000001B9
	cmp r4, r0
	beq _0200511C
	add r0, #0x36
	cmp r5, r0
	bgt _0200511A
	cmp r5, #0
	bne _0200511C
_0200511A:
	mov r4, #1
_0200511C:
	add r0, r4, #0
	bl sub_0200409C
	add r0, r4, #0
	bl sub_02005130
	pop {r3, r4, r5, pc}
	nop
_0200512C: .word 0x000001B9
	thumb_func_end sub_020050F8

	thumb_func_start sub_02005130
sub_02005130: ; 0x02005130
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x21
	bl sub_02003D5C
	add r4, r0, #0
	lsl r0, r5, #0x10
	ldr r1, _02005184 ; =0x000001B9
	lsr r0, r0, #0x10
	cmp r0, r1
	beq _02005152
	add r1, #0x36
	cmp r5, r1
	bgt _02005150
	cmp r5, #0
	bne _02005152
_02005150:
	mov r0, #1
_02005152:
	bl sub_020B9C50
	cmp r0, #0
	bne _02005162
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005162:
	ldr r0, [r0, #0]
	lsl r0, r0, #8
	lsr r0, r0, #8
	bl sub_020B9E6C
	cmp r0, #0
	bne _02005178
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005178:
	mov r1, #0
	bl sub_020C6314
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_02005184: .word 0x000001B9
	thumb_func_end sub_02005130

	thumb_func_start sub_02005188
sub_02005188: ; 0x02005188
	push {r4, r5, r6, lr}
	mov r0, #1
	add r5, r1, #0
	add r6, r2, #0
	bl sub_020051C4
	mov r1, #3
	add r4, r0, #0
	add r0, r6, #0
	lsl r1, r1, #8
	ldr r5, [r5, #8]
	bl sub_020E1F6C
	lsl r1, r0, #1
	bpl _020051B0
	mov r0, #0x20
	bl sub_020E1F6C
	neg r0, r0
	b _020051BA
_020051B0:
	cmp r1, #0
	bne _020051B8
	mov r0, #0x20
	b _020051BA
_020051B8:
	lsl r0, r1, #5
_020051BA:
	mul r0, r4
	cmp r0, r5
	blo _020051C2
	mov r0, #0
_020051C2:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02005188

	thumb_func_start sub_020051C4
sub_020051C4: ; 0x020051C4
	push {r3, lr}
	bl sub_020040CC
	bl sub_020B826C
	pop {r3, pc}
	thumb_func_end sub_020051C4

	thumb_func_start sub_020051D0
sub_020051D0: ; 0x020051D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r4, r1, #0
	add r6, r2, #0
	ldr r1, [sp]
	mov r0, #1
	add r2, r3, #0
	bl sub_02005188
	add r1, r0, #0
	mov ip, r0
	sub r1, #0x64
	bpl _020051EE
	mov r1, #0
_020051EE:
	ldr r0, [sp]
	mov r3, #0
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	add r7, r3, #0
	cmp r0, #0x80
	bhs _02005200
	mov r0, #1
	b _02005202
_02005200:
	sub r0, r3, #1
_02005202:
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	mov r0, ip
	cmp r1, r0
	bhs _02005282
_0200520C:
	mov r0, #0
	cmp r5, #0
	ble _02005226
	ldr r2, [sp]
	add r2, r2, r1
	str r2, [sp, #4]
	ldrb r2, [r2, #0xc]
	cmp r2, #0x80
	bls _02005222
	mov r0, #1
	b _02005238
_02005222:
	add r3, r3, #1
	b _02005238
_02005226:
	ldr r2, [sp]
	add r2, r2, r1
	str r2, [sp, #4]
	ldrb r2, [r2, #0xc]
	cmp r2, #0x80
	bhs _02005236
	mov r0, #1
	b _02005238
_02005236:
	add r3, r3, #1
_02005238:
	cmp r0, #1
	bne _0200527A
	ldr r5, _020052C4 ; =0x020E4D0C
	mov r2, #0
_02005240:
	ldrb r0, [r5]
	cmp r3, r0
	bge _0200524A
	add r7, r2, #0
	b _02005252
_0200524A:
	add r2, r2, #1
	add r5, r5, #1
	cmp r2, #9
	blt _02005240
_02005252:
	cmp r7, r6
	blt _02005258
	sub r7, r6, #1
_02005258:
	cmp r3, #0
	beq _02005266
	sub r0, r6, #1
	sub r0, r0, r7
	ldrb r2, [r4, r0]
	add r2, r2, #1
	strb r2, [r4, r0]
_02005266:
	ldr r0, [sp, #4]
	mov r3, #0
	ldrb r0, [r0, #0xc]
	cmp r0, #0x80
	bhs _02005274
	mov r0, #1
	b _02005276
_02005274:
	sub r0, r3, #1
_02005276:
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
_0200527A:
	add r1, r1, #2
	mov r0, ip
	cmp r1, r0
	blo _0200520C
_02005282:
	mov r2, #0
	cmp r6, #0
	ble _02005298
	mov r0, #9
_0200528A:
	ldrb r1, [r4, r2]
	cmp r1, #0xa
	blo _02005292
	strb r0, [r4, r2]
_02005292:
	add r2, r2, #1
	cmp r2, r6
	blt _0200528A
_02005298:
	sub r2, r6, #1
	mov r3, #0
	cmp r2, #0
	ble _020052C0
_020052A0:
	ldrb r0, [r4, r3]
	add r1, r4, r3
	cmp r0, #0
	bne _020052BA
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _020052BA
	add r0, r3, #1
	ldrb r0, [r4, r0]
	add sp, #8
	lsr r0, r0, #1
	strb r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_020052BA:
	add r3, r3, #1
	cmp r3, r2
	blt _020052A0
_020052C0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020052C4: .word 0x020E4D0C
	thumb_func_end sub_020051D0

	thumb_func_start sub_020052C8
sub_020052C8: ; 0x020052C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [sp, #0x48]
	add r6, r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x14
	str r2, [sp]
	add r4, r3, #0
	bl sub_02003D5C
	add r7, r0, #0
	cmp r4, #1
	beq _020052EA
	ldr r0, [sp]
	lsr r0, r0, #1
	str r0, [sp]
_020052EA:
	ldrb r2, [r7]
	cmp r2, #0
	beq _020053BA
	mov r0, #0
	cmp r2, #0
	ble _0200531C
	add r1, sp, #0x10
_020052F8:
	ldr r3, [sp]
	sub r2, r3, r2
	add r2, r0, r2
	lsl r2, r2, #1
	ldrsh r2, [r5, r2]
	strh r2, [r1]
	ldrb r3, [r7]
	ldr r2, [sp]
	sub r2, r2, r3
	add r2, r0, r2
	lsl r2, r2, #1
	ldrsh r2, [r6, r2]
	add r0, r0, #1
	strh r2, [r1, #2]
	ldrb r2, [r7]
	add r1, r1, #4
	cmp r0, r2
	blt _020052F8
_0200531C:
	ldr r0, [sp]
	sub r4, r0, #1
	sub r0, r2, #1
	cmp r4, r0
	blt _02005386
	lsl r1, r4, #1
	add r0, r5, r1
	str r0, [sp, #8]
	add r0, r6, r1
	str r0, [sp, #4]
_02005330:
	mov r0, #0
	add r1, r0, #0
	cmp r2, #0
	ble _02005346
_02005338:
	sub r3, r4, r1
	lsl r3, r3, #1
	ldrsh r3, [r5, r3]
	add r1, r1, #1
	add r0, r0, r3
	cmp r1, r2
	blt _02005338
_02005346:
	add r1, r2, #0
	bl sub_020E1F6C
	ldr r1, [sp, #8]
	strh r0, [r1]
	mov r0, #0
	ldrb r1, [r7]
	add r2, r0, #0
	cmp r1, #0
	ble _02005368
_0200535A:
	sub r3, r4, r2
	lsl r3, r3, #1
	ldrsh r3, [r6, r3]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, r1
	blt _0200535A
_02005368:
	bl sub_020E1F6C
	ldr r1, [sp, #4]
	sub r4, r4, #1
	strh r0, [r1]
	ldr r0, [sp, #8]
	ldrb r2, [r7]
	sub r0, r0, #2
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, r0, #2
	str r0, [sp, #4]
	sub r0, r2, #1
	cmp r4, r0
	bge _02005330
_02005386:
	mov r1, #0
	cmp r2, #0
	ble _020053AA
	add r0, sp, #0x10
	mov r4, #2
_02005390:
	mov r2, #0
	ldrsh r3, [r0, r2]
	ldr r2, [sp, #0xc]
	add r1, r1, #1
	strh r3, [r2]
	ldrsh r3, [r0, r4]
	add r0, r0, #4
	strh r3, [r2, #2]
	add r2, r2, #4
	str r2, [sp, #0xc]
	ldrb r2, [r7]
	cmp r1, r2
	blt _02005390
_020053AA:
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_020C2C54
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_020C2C54
_020053BA:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020052C8

	thumb_func_start sub_020053C0
sub_020053C0: ; 0x020053C0
	ldr r3, _020053C8 ; =sub_020B7F1C
	add r1, r0, #0
	mov r0, #7
	bx r3
	; .align 2, 0
_020053C8: .word sub_020B7F1C
	thumb_func_end sub_020053C0

	thumb_func_start sub_020053CC
sub_020053CC: ; 0x020053CC
	push {r3, lr}
	cmp r0, #0
	bne _020053E0
	ldr r0, _02005404 ; =0x000007FF
	bl sub_020053C0
	mov r0, #0
	bl sub_02004EEC
	b _020053FC
_020053E0:
	cmp r0, #1
	ldr r0, _02005408 ; =0x00007FFF
	bne _020053F2
	bl sub_020053C0
	mov r0, #0x1e
	bl sub_02004EC8
	b _020053FC
_020053F2:
	bl sub_020053C0
	mov r0, #0xf
	bl sub_02004EC8
_020053FC:
	bl sub_02004EC0
	pop {r3, pc}
	nop
_02005404: .word 0x000007FF
_02005408: .word 0x00007FFF
	thumb_func_end sub_020053CC

	thumb_func_start sub_0200540C
sub_0200540C: ; 0x0200540C
	push {r3, lr}
	bl sub_02005684
	cmp r0, #0
	bne _02005440
	mov r0, #0
	bl sub_020040CC
	bl sub_02004B34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02005440
	bl sub_020041FC
	ldr r1, _02005448 ; =0x0000047E
	cmp r0, r1
	beq _02005440
	bl sub_020056D4
	mov r0, #1
	add r1, r0, #0
	bl sub_020049F4
	pop {r3, pc}
_02005440:
	bl sub_0200569C
	pop {r3, pc}
	nop
_02005448: .word 0x0000047E
	thumb_func_end sub_0200540C

	thumb_func_start sub_0200544C
sub_0200544C: ; 0x0200544C
	ldr r3, _02005450 ; =sub_020B7EE4
	bx r3
	; .align 2, 0
_02005450: .word sub_020B7EE4
	thumb_func_end sub_0200544C

	thumb_func_start sub_02005454
sub_02005454: ; 0x02005454
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x35
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02005454

	thumb_func_start sub_02005464
sub_02005464: ; 0x02005464
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x36
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02005464

	.rodata


	.global Unk_020E4D0C
Unk_020E4D0C: ; 0x020E4D0C
	.incbin "incbin/arm9_rodata.bin", 0xCC, 0x9



	.bss


	.global Unk_021BEB80
Unk_021BEB80: ; 0x021BEB80
	.space 0x20

	.global Unk_021BEBA0
Unk_021BEBA0: ; 0x021BEBA0
	.space 0x7D0

