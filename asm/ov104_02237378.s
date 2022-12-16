	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov104_02237378
ov104_02237378: ; 0x02237378
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl ov104_0222FC00
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	str r0, [sp, #0x14]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	str r6, [sp]
	lsl r2, r4, #0x18
	ldr r1, [sp, #0x14]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsr r2, r2, #0x18
	bl ov104_02237DD8
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B980
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02237378

	thumb_func_start ov104_022373DC
ov104_022373DC: ; 0x022373DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r4, #0
	bl ov104_0223806C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022373DC

	thumb_func_start ov104_022373F8
ov104_022373F8: ; 0x022373F8
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_02238210
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022373F8

	thumb_func_start ov104_0223740C
ov104_0223740C: ; 0x0223740C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r7, r0, #0
	mov r0, #0xb
	mov r1, #0x48
	bl sub_02018144
	mov r1, #0
	mov r2, #0x48
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r6, #8]
	add r1, r7, #0
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov104_02237634
	ldr r0, _02237458 ; =ov104_0223770C
	ldr r1, _0223745C ; =0x0223FAD8
	str r0, [sp]
	ldr r0, [r5, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	mov r3, #0
	bl sub_0209B988
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02237458: .word ov104_0223770C
_0223745C: .word 0x0223FAD8
	thumb_func_end ov104_0223740C

	thumb_func_start ov104_02237460
ov104_02237460: ; 0x02237460
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r6, r0, #0
	ldr r1, [r6, #0xc]
	mov r4, #0x6d
	str r1, [sp, #8]
	ldr r2, [sp, #8]
	ldr r3, [sp, #8]
	lsl r4, r4, #2
	ldr r1, [r1, #4]
	ldr r2, [r2, #0xc]
	ldr r3, [r3, r4]
	bl ov104_02238538
	strb r0, [r6, #0x1d]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x14]
	bl sub_02052868
	str r0, [r6, #0x28]
	ldrb r0, [r6, #0x13]
	cmp r0, #0x1b
	bne _0223749C
	mov r1, #1
	mov r7, #3
	b _022374A0
_0223749C:
	mov r1, #0
	mov r7, #2
_022374A0:
	ldr r0, [sp, #8]
	lsl r5, r1, #2
	add r4, r0, #4
	mov r2, #0
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	add r3, r2, #0
	bl ov104_02239054
	mov r2, #1
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	add r3, r2, #0
	bl ov104_02239054
	ldrb r0, [r6, #0x10]
	bl ov104_0223BA14
	cmp r0, #0
	bne _022374D6
	mov r2, #2
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	add r3, r2, #0
	bl ov104_02239054
	b _022374F4
_022374D6:
	ldr r0, [sp, #8]
	lsl r5, r7, #2
	add r4, r0, #4
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	mov r2, #0
	mov r3, #2
	bl ov104_02239054
	ldr r0, [r4, r5]
	ldr r1, [r6, #0x70]
	mov r2, #1
	mov r3, #3
	bl ov104_02239054
_022374F4:
	ldrb r0, [r6, #0x13]
	cmp r0, #0x11
	bne _02237548
	ldrb r0, [r6, #0x10]
	mov r1, #1
	bl ov104_0223BD70
	mov r5, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02237548
_0223750A:
	ldr r0, [r6, #0x70]
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	sub r1, r7, #3
	bl sub_02075AD0
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0x10
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _0223750A
_02237548:
	ldr r0, [r6, #0x70]
	bl sub_0207A0F8
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _022375EA
	add r5, r6, #0
	add r7, sp, #0x14
_0223755E:
	ldr r0, [r6, #0x70]
	ldr r1, [sp]
	bl sub_0207A0FC
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r4, r0, #0
	str r1, [sp, #0x14]
	mov r1, #0xa4
	add r2, r7, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa3
	add r2, r7, #0
	bl sub_02074B30
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #0xa5
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02074B30
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	mov r1, #0xa6
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02074B30
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #0xa7
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02074B30
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	mov r1, #0xa8
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02074B30
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #0xa9
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_02074B30
	ldr r0, [sp]
	add r5, r5, #4
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp]
	cmp r1, r0
	blt _0223755E
_022375EA:
	ldr r0, [sp, #8]
	bl sub_020520A4
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02237460

	thumb_func_start ov104_022375F8
ov104_022375F8: ; 0x022375F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r6, #0
	add r4, r0, #0
	bl ov104_0223BDD8
	add r2, r0, #0
	str r2, [r4, #0xc]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5, #0]
	ldr r1, _02237630 ; =0x020EA358
	ldr r0, [r0, #0]
	bl sub_0209B988
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02237630: .word 0x020EA358
	thumb_func_end ov104_022375F8

	thumb_func_start ov104_02237634
ov104_02237634: ; 0x02237634
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	ldrb r0, [r7, #0x10]
	strb r0, [r4, #4]
	add r0, r7, #0
	bl ov104_0223C124
	strh r0, [r4, #0x1e]
	add r0, r7, #0
	add r0, #0x20
	str r0, [r4, #0x14]
	add r0, r7, #0
	add r0, #0x13
	str r0, [r4, #0x10]
	ldrb r0, [r7, #0x1d]
	mov r1, #0
	strb r0, [r4, #7]
	ldrh r0, [r7, #0x18]
	strh r0, [r4, #0x1c]
	ldr r0, _02237708 ; =0x00000A78
	ldrh r0, [r7, r0]
	strh r0, [r4, #0x18]
	add r0, r7, #0
	add r0, #0x1c
	str r0, [r4, #0xc]
	ldr r0, [r7, #0x70]
	str r0, [r4, #0x30]
	ldr r0, [r7, #0x74]
	str r0, [r4, #0x34]
	str r7, [r4, #0x3c]
	add r0, r7, #0
	str r1, [r7, #0x14]
	add r0, #0x14
	str r0, [r4, #8]
	ldrb r0, [r7, #0x12]
	add r4, #0x42
	strb r0, [r4]
	strb r1, [r7, #0x12]
	strb r1, [r7, #0x1f]
	ldr r0, [r7, #0x70]
	bl sub_0207A0F8
	mov r6, #0
	str r0, [sp]
	cmp r0, #0
	ble _02237706
	add r5, r7, #0
_02237694:
	ldr r0, [r7, #0x70]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0xa4
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1, #0]
	ldr r0, [sp]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02237694
_02237706:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02237708: .word 0x00000A78
	thumb_func_end ov104_02237634

	thumb_func_start ov104_0223770C
ov104_0223770C: ; 0x0223770C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	bl ov104_02238240
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov104_0223770C

	thumb_func_start ov104_02237720
ov104_02237720: ; 0x02237720
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_022384D4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02237720

	thumb_func_start ov104_02237734
ov104_02237734: ; 0x02237734
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_022384DC
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02237734

	thumb_func_start ov104_02237748
ov104_02237748: ; 0x02237748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r7, r0, #0
	ldr r2, [r7, #0x1c]
	add r1, r2, #1
	str r1, [r7, #0x1c]
	ldrb r1, [r2]
	str r1, [sp, #0x20]
	bl ov104_0222FC00
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r7, #0
	bl ov104_0222FC00
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl ov104_0222FBE4
	add r5, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	str r0, [sp, #0x24]
	ldr r0, [r7, #0]
	bl ov104_0222E924
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x28]
	cmp r1, #0x34
	bls _02237798
	b _02237C02
_02237798:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022377A4: ; jump table
	.short _02237C02 - _022377A4 - 2 ; case 0
	.short _02237C02 - _022377A4 - 2 ; case 1
	.short _0223780E - _022377A4 - 2 ; case 2
	.short _02237812 - _022377A4 - 2 ; case 3
	.short _0223781E - _022377A4 - 2 ; case 4
	.short _02237824 - _022377A4 - 2 ; case 5
	.short _022379A0 - _022377A4 - 2 ; case 6
	.short _02237832 - _022377A4 - 2 ; case 7
	.short _02237C02 - _022377A4 - 2 ; case 8
	.short _0223783A - _022377A4 - 2 ; case 9
	.short _02237844 - _022377A4 - 2 ; case 10
	.short _02237A52 - _022377A4 - 2 ; case 11
	.short _0223784E - _022377A4 - 2 ; case 12
	.short _02237C02 - _022377A4 - 2 ; case 13
	.short _0223785A - _022377A4 - 2 ; case 14
	.short _02237864 - _022377A4 - 2 ; case 15
	.short _02237886 - _022377A4 - 2 ; case 16
	.short _022379B2 - _022377A4 - 2 ; case 17
	.short _0223788C - _022377A4 - 2 ; case 18
	.short _022378BA - _022377A4 - 2 ; case 19
	.short _022378C4 - _022377A4 - 2 ; case 20
	.short _022378D0 - _022377A4 - 2 ; case 21
	.short _022378D8 - _022377A4 - 2 ; case 22
	.short _022378E0 - _022377A4 - 2 ; case 23
	.short _022378EA - _022377A4 - 2 ; case 24
	.short _022378F2 - _022377A4 - 2 ; case 25
	.short _02237C02 - _022377A4 - 2 ; case 26
	.short _02237C02 - _022377A4 - 2 ; case 27
	.short _022379A8 - _022377A4 - 2 ; case 28
	.short _022379B8 - _022377A4 - 2 ; case 29
	.short _022379BE - _022377A4 - 2 ; case 30
	.short _022379C4 - _022377A4 - 2 ; case 31
	.short _02237A22 - _022377A4 - 2 ; case 32
	.short _02237A2E - _022377A4 - 2 ; case 33
	.short _02237A34 - _022377A4 - 2 ; case 34
	.short _02237A3A - _022377A4 - 2 ; case 35
	.short _02237A46 - _022377A4 - 2 ; case 36
	.short _02237A5C - _022377A4 - 2 ; case 37
	.short _02237A72 - _022377A4 - 2 ; case 38
	.short _02237AC2 - _022377A4 - 2 ; case 39
	.short _02237AD4 - _022377A4 - 2 ; case 40
	.short _02237B06 - _022377A4 - 2 ; case 41
	.short _02237B14 - _022377A4 - 2 ; case 42
	.short _02237B22 - _022377A4 - 2 ; case 43
	.short _02237B40 - _022377A4 - 2 ; case 44
	.short _02237B82 - _022377A4 - 2 ; case 45
	.short _02237B8C - _022377A4 - 2 ; case 46
	.short _02237B96 - _022377A4 - 2 ; case 47
	.short _02237B9C - _022377A4 - 2 ; case 48
	.short _02237BBE - _022377A4 - 2 ; case 49
	.short _02237BEA - _022377A4 - 2 ; case 50
	.short _02237BF2 - _022377A4 - 2 ; case 51
	.short _02237BFC - _022377A4 - 2 ; case 52
_0223780E:
	strb r6, [r4, #0x10]
	b _02237C02
_02237812:
	lsl r0, r6, #1
	add r1, r4, r0
	ldr r0, _02237B2C ; =0x00000418
	ldrh r0, [r1, r0]
	strh r0, [r5]
	b _02237C02
_0223781E:
	ldrh r0, [r4, #0x18]
	strh r0, [r5]
	b _02237C02
_02237824:
	ldrh r1, [r4, #0x18]
	ldr r0, _02237B30 ; =0x0000270F
	cmp r1, r0
	bhs _022378B8
	add r0, r1, #1
	strh r0, [r4, #0x18]
	b _02237C02
_02237832:
	mov r0, #0
	bl sub_020C3EE4
	b _02237C02
_0223783A:
	ldr r0, [r4, #8]
	bl sub_020304B0
	strh r0, [r5]
	b _02237C02
_02237844:
	add r0, r4, #0
	mov r1, #2
	bl ov104_02238278
	b _02237C02
_0223784E:
	ldrb r1, [r4, #0x13]
	add r0, r4, #0
	bl ov104_0223C0BC
	strh r0, [r5]
	b _02237C02
_0223785A:
	add r0, r4, #0
	bl ov104_02238454
	strh r0, [r5]
	b _02237C02
_02237864:
	cmp r6, #0
	bne _02237872
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl sub_0207A0FC
	b _0223787A
_02237872:
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl sub_0207A0FC
_0223787A:
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r5]
	b _02237C02
_02237886:
	ldrb r0, [r4, #0x13]
	strh r0, [r5]
	b _02237C02
_0223788C:
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #8]
	bl sub_0207A268
	add r7, r0, #0
	ldr r0, _02237B34 ; =0x00000412
	mov r5, #0
	add r6, r4, r0
_0223789C:
	add r1, r4, r5
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r7, #0
	bl sub_0207A0FC
	mov r1, #6
	add r2, r6, #0
	bl sub_02074B30
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #3
	blt _0223789C
_022378B8:
	b _02237C02
_022378BA:
	add r0, r4, #0
	bl ov104_0223C124
	strh r0, [r5]
	b _02237C02
_022378C4:
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_02238464
	strh r0, [r5]
	b _02237C02
_022378D0:
	add r0, r4, #0
	bl ov104_022384A8
	b _02237C02
_022378D8:
	add r0, r4, #0
	bl ov104_022384B4
	b _02237C02
_022378E0:
	add r0, r4, #0
	bl ov104_02238460
	strh r0, [r5]
	b _02237C02
_022378EA:
	ldr r0, _02237B38 ; =0x00000A74
	ldrb r0, [r4, r0]
	strh r0, [r5]
	b _02237C02
_022378F2:
	ldrb r0, [r4, #0x13]
	cmp r0, #0x1b
	bne _0223799E
	ldrb r0, [r4, #0x10]
	mov r1, #1
	bl ov104_0223BD70
	str r0, [sp, #0x18]
	ldrb r0, [r4, #0x10]
	mov r1, #1
	bl ov104_0223BDA4
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0223799E
_02237914:
	ldr r0, [r4, #0x30]
	ldr r7, [r0, #0]
	add r0, r7, #0
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x38
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x40]
	ldr r5, [r0, #0]
	add r0, r5, #0
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0x2c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r7, #0
	bl sub_02021C50
	add r0, r5, #0
	add r1, sp, #0x38
	bl sub_02021C50
	ldr r0, [r4, #0x50]
	ldr r7, [r0, #0]
	add r0, r7, #0
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x38
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x60]
	ldr r5, [r0, #0]
	add r0, r5, #0
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0x2c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r7, #0
	bl sub_02021C50
	add r0, r5, #0
	add r1, sp, #0x38
	bl sub_02021C50
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02237914
_0223799E:
	b _02237C02
_022379A0:
	add r0, r4, #0
	bl sub_0209BA80
	b _02237C02
_022379A8:
	ldrb r0, [r4, #0x10]
	bl ov104_0223C000
	strh r0, [r5]
	b _02237C02
_022379B2:
	ldrb r0, [r4, #0x10]
	strh r0, [r5]
	b _02237C02
_022379B8:
	bl ov104_02232EC0
	b _02237C02
_022379BE:
	bl ov104_02232F28
	b _02237C02
_022379C4:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	add r2, r6, #0
	bl ov104_02238764
	ldrb r0, [r4, #0x10]
	mov r1, #1
	bl ov104_0223BD70
	str r0, [sp, #0x14]
	ldrb r0, [r4, #0x10]
	mov r1, #1
	bl ov104_0223BDA4
	add r7, r0, #0
	cmp r6, #0
	bne _02237A06
	ldr r0, [sp, #0x14]
	mov r5, #0
	cmp r0, #0
	ble _02237A04
	mov r6, #2
_022379F0:
	ldr r0, [r4, #0x30]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_02021E80
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _022379F0
_02237A04:
	b _02237C02
_02237A06:
	mov r5, #0
	cmp r7, #0
	ble _02237A20
	mov r6, #2
_02237A0E:
	ldr r0, [r4, #0x40]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_02021E80
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r7
	blt _02237A0E
_02237A20:
	b _02237C02
_02237A22:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	add r2, r6, #0
	bl ov104_02238814
	b _02237C02
_02237A2E:
	bl ov104_02232FEC
	b _02237C02
_02237A34:
	bl ov104_0223307C
	b _02237C02
_02237A3A:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	add r2, r6, #0
	bl ov104_022388DC
	b _02237C02
_02237A46:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	add r2, r6, #0
	bl ov104_022389A0
	b _02237C02
_02237A52:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov104_02238658
	b _02237C02
_02237A5C:
	ldrb r0, [r4, #0x10]
	bl ov104_0223C000
	cmp r0, #1
	beq _02237A68
	b _02237C02
_02237A68:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov104_02238728
	b _02237C02
_02237A72:
	ldrb r0, [r4, #0x13]
	bl ov104_0223C148
	cmp r0, #0
	bne _02237A9A
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl ov104_02238498
	add r2, r0, #0
	lsl r2, r2, #1
	add r2, r4, r2
	ldr r0, [r7, #0]
	add r2, #0x78
	ldrh r2, [r2]
	ldr r0, [r0, #0x44]
	add r1, r6, #0
	bl sub_0200BA40
	b _02237C02
_02237A9A:
	ldrb r0, [r4, #0x10]
	bl ov104_0223C000
	cmp r0, #0
	bne _02237AAE
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #8]
	bl sub_02025E38
	b _02237AB4
_02237AAE:
	ldr r0, [sp, #0x1c]
	bl sub_02032EE8
_02237AB4:
	add r2, r0, #0
	ldr r0, [r7, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x44]
	bl sub_0200B498
	b _02237C02
_02237AC2:
	ldr r1, _02237B3C ; =0x00000A7A
	ldr r0, [sp, #0x1c]
	add r2, r6, #0
	strb r0, [r4, r1]
	add r0, r7, #0
	add r1, r4, #0
	bl ov104_02237C0C
	b _02237C02
_02237AD4:
	ldrb r1, [r4, #0x11]
	add r0, r4, #0
	add r0, #0xf4
	lsl r1, r1, #1
	add r1, r4, r1
	add r1, #0x78
	ldrh r1, [r1]
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222E278
	ldrb r1, [r4, #0x11]
	mov r0, #0x81
	lsl r0, r0, #2
	add r1, r1, #7
	lsl r1, r1, #1
	add r1, r4, r1
	add r1, #0x78
	ldrh r1, [r1]
	add r0, r4, r0
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222E278
	b _02237C02
_02237B06:
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	add r2, r6, #0
	bl ov104_0223886C
	b _02237C02
_02237B14:
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	add r2, r6, #0
	bl ov104_022388A4
	b _02237C02
_02237B22:
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl ov104_02238AB4
	b _02237C02
	; .align 2, 0
_02237B2C: .word 0x00000418
_02237B30: .word 0x0000270F
_02237B34: .word 0x00000412
_02237B38: .word 0x00000A74
_02237B3C: .word 0x00000A7A
_02237B40:
	cmp r6, #0
	bne _02237B58
	str r6, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r1, #2
	add r3, r1, #0
	ldr r0, [r0, #4]
	add r3, #0xfe
	bl sub_020039B0
	b _02237C02
_02237B58:
	ldr r0, [r7, #0]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0]
	bl ov104_0223D5A8
	ldr r0, [r0, #4]
	bl ov63_0222D050
	add r2, r0, #0
	lsl r2, r2, #0x14
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, #2
	ldr r0, [r0, #4]
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_020039B0
	b _02237C02
_02237B82:
	add r0, r4, #0
	bl ov104_02239014
	strh r0, [r5]
	b _02237C02
_02237B8C:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	b _02237C02
_02237B96:
	ldrb r0, [r4, #0x1f]
	strh r0, [r5]
	b _02237C02
_02237B9C:
	mov r0, #0
	strh r0, [r5]
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _02237C02
	ldrh r0, [r4, #0x18]
	add r0, r0, #1
	cmp r0, #0x15
	bne _02237BB4
	mov r0, #1
	strh r0, [r5]
	b _02237C02
_02237BB4:
	cmp r0, #0x31
	bne _02237C02
	mov r0, #2
	strh r0, [r5]
	b _02237C02
_02237BBE:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	mov r3, #0x33
	lsl r3, r3, #4
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp, #0xc]
	add r0, r4, r3
	sub r1, #0x1c
	sub r2, #0x14
	sub r3, #0x10
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov104_0222E330
	b _02237C02
_02237BEA:
	add r0, r4, #0
	bl ov104_0223C04C
	b _02237C02
_02237BF2:
	ldrb r0, [r4, #0x1e]
	strh r0, [r5]
	mov r0, #1
	strb r0, [r4, #0x1e]
	b _02237C02
_02237BFC:
	ldr r0, _02237C08 ; =0x00000A7C
	mov r1, #0
	strb r1, [r4, r0]
_02237C02:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02237C08: .word 0x00000A7C
	thumb_func_end ov104_02237748

	thumb_func_start ov104_02237C0C
ov104_02237C0C: ; 0x02237C0C
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, r2, #0
	bl ov104_0222E924
	ldr r0, [r0, #0x10]
	mov r1, #0
	bl ov104_0223D6D0
	ldr r2, _02237C2C ; =ov104_02237C30
	add r1, r4, #0
	add r3, r5, #0
	bl sub_020146F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237C2C: .word ov104_02237C30
	thumb_func_end ov104_02237C0C

	thumb_func_start ov104_02237C30
ov104_02237C30: ; 0x02237C30
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl sub_02014764
	ldr r5, _02237CA4 ; =0x0223FACC
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #8
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r0, _02237CA8 ; =0x00000A7A
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _02237CA0
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02014798
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	sub r0, r0, #1
	mul r0, r2
	strh r0, [r1]
	add r0, r4, #0
	ldrh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	add r0, r4, #0
	ldrh r2, [r1, #2]
	add r0, #0x52
	strh r2, [r0]
	add r0, r4, #0
	ldrh r1, [r1, #4]
	add r0, #0x54
	strh r1, [r0]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x30]
_02237CA0:
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02237CA4: .word 0x0223FACC
_02237CA8: .word 0x00000A7A
	thumb_func_end ov104_02237C30

	thumb_func_start ov104_02237CAC
ov104_02237CAC: ; 0x02237CAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r0, [r0, #0x28]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02237CAC

	thumb_func_start ov104_02237CC8
ov104_02237CC8: ; 0x02237CC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r6, #0
	add r2, r7, #0
	bl ov104_02238B40
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02237CC8

	thumb_func_start ov104_02237CF8
ov104_02237CF8: ; 0x02237CF8
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA48
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _02237D14 ; =ov104_02237D18
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_02237D14: .word ov104_02237D18
	thumb_func_end ov104_02237CF8

	thumb_func_start ov104_02237D18
ov104_02237D18: ; 0x02237D18
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC8C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r1, _02237D44 ; =0x00000A7C
	ldrb r2, [r0, r1]
	cmp r2, #2
	blo _02237D3E
	mov r2, #0
	strb r2, [r0, r1]
	mov r0, #1
	pop {r4, pc}
_02237D3E:
	mov r0, #0
	pop {r4, pc}
	nop
_02237D44: .word 0x00000A7C
	thumb_func_end ov104_02237D18

	thumb_func_start ov104_02237D48
ov104_02237D48: ; 0x02237D48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r1, [r5, #0x1c]
	add r0, r1, #1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0]
	ldrb r4, [r1]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r2, r0, #0
	bne _02237D6C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02237D6C:
	mov r1, #0x43
	lsl r1, r1, #2
	add r2, r2, r1
	lsl r1, r4, #4
	add r1, r4, r1
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r2, r1
	bl ov104_022330FC
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02237D48

	thumb_func_start ov104_02237D84
ov104_02237D84: ; 0x02237D84
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldrb r1, [r0, #0x13]
	bl ov104_02238B88
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov104_02237D84

	thumb_func_start ov104_02237D98
ov104_02237D98: ; 0x02237D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov104_0222E924
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov104_0222FC00
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	str r4, [sp]
	bl ov104_022389F4
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02237D98

	.rodata


	.global Unk_ov104_0223FACC
Unk_ov104_0223FACC: ; 0x0223FACC
	.incbin "incbin/overlay104_rodata.bin", 0x83C, 0x848 - 0x83C

	.global Unk_ov104_0223FAD8
Unk_ov104_0223FAD8: ; 0x0223FAD8
	.incbin "incbin/overlay104_rodata.bin", 0x848, 0x10

