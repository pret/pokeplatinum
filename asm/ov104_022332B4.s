	.include "macros/function.inc"
	.include "include/ov104_022332B4.inc"

	

	.text


	thumb_func_start ov104_022332B4
ov104_022332B4: ; 0x022332B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	ldr r0, [r0, #8]
	add r1, r7, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov104_022339B4
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B980
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022332B4

	thumb_func_start ov104_022332F4
ov104_022332F4: ; 0x022332F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r4, #0
	bl ov104_02233B98
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_022332F4

	thumb_func_start ov104_02233310
ov104_02233310: ; 0x02233310
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_022340D0
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02233310

	thumb_func_start ov104_02233324
ov104_02233324: ; 0x02233324
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r7, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x24
	bl sub_02018144
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r7, #8]
	mov r3, #0
	str r0, [r4, #0]
	ldrb r0, [r5, #4]
	add r2, r4, #0
	strb r0, [r4, #4]
	ldrb r0, [r5, #5]
	strb r0, [r4, #5]
	ldr r0, _02233380 ; =0x000004D4
	strb r3, [r4, #6]
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [r4, #8]
	ldr r0, [r5, r0]
	ldr r1, _02233384 ; =0x0223FA14
	str r0, [r4, #0xc]
	ldr r0, _02233388 ; =ov104_02233478
	str r5, [r4, #0x1c]
	str r0, [sp]
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0209B988
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233380: .word 0x000004D4
_02233384: .word 0x0223FA14
_02233388: .word ov104_02233478
	thumb_func_end ov104_02233324

	thumb_func_start ov104_0223338C
ov104_0223338C: ; 0x0223338C
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	ldr r0, _022333B0 ; =0x000004FC
	ldr r5, [r4, r0]
	ldr r0, [r5, #0x14]
	bl sub_02052868
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_020520A4
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022333B0: .word 0x000004FC
	thumb_func_end ov104_0223338C

	thumb_func_start ov104_022333B4
ov104_022333B4: ; 0x022333B4
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
	bl ov104_0223ABA0
	add r2, r0, #0
	ldr r0, _022333F0 ; =0x000004FC
	mov r3, #0
	str r2, [r4, r0]
	str r3, [sp]
	ldr r0, [r5, #0]
	ldr r1, _022333F4 ; =0x020EA358
	ldr r0, [r0, #0]
	bl sub_0209B988
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022333F0: .word 0x000004FC
_022333F4: .word 0x020EA358
	thumb_func_end ov104_022333B4

	thumb_func_start ov104_022333F8
ov104_022333F8: ; 0x022333F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r7, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r5, r0, #0
	mov r2, #0
	ldr r0, _02233468 ; =0x000004DC
	add r3, r5, #0
	add r1, r2, #0
_02233418:
	add r2, r2, #1
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r2, #6
	blt _02233418
	mov r0, #0xb
	mov r1, #0x24
	bl sub_02018144
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r7, #8]
	add r2, r4, #0
	str r0, [r4, #0]
	ldrb r0, [r5, #4]
	mov r3, #0
	strb r0, [r4, #4]
	ldrb r0, [r5, #5]
	strb r0, [r4, #5]
	mov r0, #1
	strb r0, [r4, #6]
	ldr r0, _0223346C ; =0x000004D4
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [r4, #8]
	ldr r0, [r5, r0]
	ldr r1, _02233470 ; =0x0223FA24
	str r0, [r4, #0xc]
	ldr r0, _02233474 ; =ov104_02233478
	str r5, [r4, #0x1c]
	str r0, [sp]
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0209B988
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233468: .word 0x000004DC
_0223346C: .word 0x000004D4
_02233470: .word 0x0223FA24
_02233474: .word ov104_02233478
	thumb_func_end ov104_022333F8

	thumb_func_start ov104_02233478
ov104_02233478: ; 0x02233478
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, r4, #0
	bl ov104_0223410C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov104_02233478

	thumb_func_start ov104_0223348C
ov104_0223348C: ; 0x0223348C
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_0223449C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223348C

	thumb_func_start ov104_022334A0
ov104_022334A0: ; 0x022334A0
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_02234570
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022334A0

	thumb_func_start ov104_022334B4
ov104_022334B4: ; 0x022334B4
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_022346A4
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022334B4

	thumb_func_start ov104_022334C8
ov104_022334C8: ; 0x022334C8
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_0223470C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_022334C8

	thumb_func_start ov104_022334DC
ov104_022334DC: ; 0x022334DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r6, r0, #0
	ldr r2, [r6, #0x1c]
	add r1, r2, #1
	str r1, [r6, #0x1c]
	ldrb r7, [r2]
	add r2, r1, #1
	str r2, [r6, #0x1c]
	ldrb r5, [r1]
	add r1, r2, #1
	str r1, [r6, #0x1c]
	ldrb r1, [r2]
	str r1, [sp, #0x1c]
	bl ov104_0222FBE4
	str r0, [sp, #0x18]
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	ldr r0, [r6, #0]
	bl ov104_0222E924
	str r0, [sp, #0x20]
	cmp r7, #0x29
	bhi _0223359E
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233520: ; jump table
	.short _02233574 - _02233520 - 2 ; case 0
	.short _02233578 - _02233520 - 2 ; case 1
	.short _0223357C - _02233520 - 2 ; case 2
	.short _02233580 - _02233520 - 2 ; case 3
	.short _0223358E - _02233520 - 2 ; case 4
	.short _02233596 - _02233520 - 2 ; case 5
	.short _02233892 - _02233520 - 2 ; case 6
	.short _022335A6 - _02233520 - 2 ; case 7
	.short _02233892 - _02233520 - 2 ; case 8
	.short _022335AE - _02233520 - 2 ; case 9
	.short _022335BC - _02233520 - 2 ; case 10
	.short _02233892 - _02233520 - 2 ; case 11
	.short _02233892 - _02233520 - 2 ; case 12
	.short _02233892 - _02233520 - 2 ; case 13
	.short _022335C6 - _02233520 - 2 ; case 14
	.short _022335D2 - _02233520 - 2 ; case 15
	.short _022335E8 - _02233520 - 2 ; case 16
	.short _02233600 - _02233520 - 2 ; case 17
	.short _02233638 - _02233520 - 2 ; case 18
	.short _022336F8 - _02233520 - 2 ; case 19
	.short _02233704 - _02233520 - 2 ; case 20
	.short _02233712 - _02233520 - 2 ; case 21
	.short _0223371A - _02233520 - 2 ; case 22
	.short _02233722 - _02233520 - 2 ; case 23
	.short _0223372E - _02233520 - 2 ; case 24
	.short _02233892 - _02233520 - 2 ; case 25
	.short _02233738 - _02233520 - 2 ; case 26
	.short _02233742 - _02233520 - 2 ; case 27
	.short _0223374A - _02233520 - 2 ; case 28
	.short _02233756 - _02233520 - 2 ; case 29
	.short _0223375E - _02233520 - 2 ; case 30
	.short _02233782 - _02233520 - 2 ; case 31
	.short _0223379A - _02233520 - 2 ; case 32
	.short _022337B2 - _02233520 - 2 ; case 33
	.short _022337E0 - _02233520 - 2 ; case 34
	.short _02233810 - _02233520 - 2 ; case 35
	.short _0223381C - _02233520 - 2 ; case 36
	.short _02233824 - _02233520 - 2 ; case 37
	.short _0223384C - _02233520 - 2 ; case 38
	.short _02233854 - _02233520 - 2 ; case 39
	.short _02233880 - _02233520 - 2 ; case 40
	.short _02233888 - _02233520 - 2 ; case 41
_02233574:
	strb r5, [r4, #7]
	b _02233892
_02233578:
	strb r5, [r4, #5]
	b _02233892
_0223357C:
	strb r5, [r4, #4]
	b _02233892
_02233580:
	lsl r0, r5, #1
	add r1, r4, r0
	ldr r0, _02233898 ; =0x000004DC
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_0223358E:
	ldrh r1, [r4, #0xc]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_02233596:
	ldrh r1, [r4, #0xc]
	ldr r0, _0223389C ; =0x0000270F
	cmp r1, r0
	blo _022335A0
_0223359E:
	b _02233892
_022335A0:
	add r0, r1, #1
	strh r0, [r4, #0xc]
	b _02233892
_022335A6:
	mov r0, #0
	bl sub_020C3EE4
	b _02233892
_022335AE:
	ldr r0, _022338A0 ; =0x000004F4
	ldr r0, [r4, r0]
	bl sub_0202FF68
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_022335BC:
	add r0, r4, #0
	mov r1, #2
	bl ov104_02234148
	b _02233892
_022335C6:
	add r0, r4, #0
	bl ov104_02234430
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_022335D2:
	mov r0, #0x38
	mul r0, r5
	add r1, r4, r0
	mov r0, #0x3f
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	lsl r0, r0, #0x15
	lsr r1, r0, #0x15
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_022335E8:
	mov r0, #0x38
	mul r0, r5
	add r1, r4, r0
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #1
	add r1, r1, r0
	mov r0, #0xfd
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_02233600:
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	add r0, r4, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #4
	add r1, r4, r0
	mov r0, #0x38
	mul r0, r5
	add r0, r1, r0
	add r1, r6, #0
	bl ov104_0222DF40
	add r0, r6, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	add r0, r6, #0
	bl sub_020181C4
	b _02233892
_02233638:
	ldrb r0, [r4, #4]
	mov r1, #1
	bl ov104_0223AA74
	mov r1, #0
	str r0, [sp, #0x14]
	add r2, sp, #0x24
	add r0, r1, #0
_02233648:
	add r1, r1, #1
	stmia r2!, {r0}
	cmp r1, #0x12
	blt _02233648
	mov r0, #0xb
	bl sub_02073C74
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _022336BE
	mov r0, #0x3f
	lsl r0, r0, #4
	add r6, r4, r0
_02233668:
	add r0, r4, #0
	bl ov104_0223ADA0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov104_0222DF40
	add r0, r5, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	bne _02233694
	mov r0, #0xff
_02233694:
	lsl r1, r7, #2
	add r2, sp, #0x24
	ldr r2, [r2, r1]
	add r3, r2, #1
	add r2, sp, #0x24
	str r3, [r2, r1]
	cmp r0, #0xff
	beq _022336B0
	lsl r0, r0, #2
	add r1, r2, #0
	ldr r1, [r1, r0]
	add r2, r1, #1
	add r1, sp, #0x24
	str r2, [r1, r0]
_022336B0:
	ldr r0, [sp, #0x10]
	add r6, #0x38
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02233668
_022336BE:
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	add r4, sp, #0x24
	add r5, r0, #0
	add r3, r4, #0
_022336CC:
	lsl r1, r0, #2
	ldr r2, [r3, r1]
	ldr r1, [r4, #0]
	cmp r2, r1
	bge _022336D8
	add r0, r5, #0
_022336D8:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x12
	blt _022336CC
	lsl r2, r0, #2
	add r1, sp, #0x24
	ldr r1, [r1, r2]
	cmp r1, #1
	bgt _022336F2
	ldr r0, [sp, #0x18]
	mov r1, #0xff
	strh r1, [r0]
	b _02233892
_022336F2:
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_022336F8:
	add r0, r4, #0
	bl ov104_0223AF34
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_02233704:
	add r0, r4, #0
	add r1, r5, #0
	bl ov104_02234440
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_02233712:
	add r0, r4, #0
	bl ov104_02234474
	b _02233892
_0223371A:
	add r0, r4, #0
	bl ov104_02234480
	b _02233892
_02233722:
	add r0, r4, #0
	bl ov104_0223443C
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_0223372E:
	ldr r0, _022338A4 ; =0x0000057C
	ldrb r1, [r4, r0]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_02233738:
	ldr r0, _022338A8 ; =0x0000057D
	ldrb r1, [r4, r0]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_02233742:
	add r0, r4, #0
	bl sub_0209BA80
	b _02233892
_0223374A:
	ldrb r0, [r4, #4]
	bl ov104_0223AED4
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_02233756:
	ldrb r1, [r4, #4]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	b _02233892
_0223375E:
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r1, #3
	ldr r0, [sp, #0x20]
	str r5, [sp, #8]
	ldr r0, [r0, #0]
	add r2, r1, #0
	mov r3, #0xa
	bl sub_02019E2C
	ldr r0, [sp, #0x20]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	b _02233892
_02233782:
	ldr r0, [r6, #0]
	bl ov104_0222E924
	add r1, r0, #0
	ldr r0, _022338AC ; =ov104_022338B4
	mov r2, #5
	bl sub_0200D9E8
	mov r1, #5
	lsl r1, r1, #8
	str r0, [r4, r1]
	b _02233892
_0223379A:
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02233892
	bl sub_0200DA58
	mov r0, #5
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r4, r0]
	b _02233892
_022337B2:
	ldrb r1, [r4, #6]
	add r0, r4, #0
	add r0, #0x34
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, #0x18]
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222E278
	ldrb r1, [r4, #6]
	mov r0, #0x51
	lsl r0, r0, #2
	add r1, r1, #7
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, #0x18]
	add r0, r4, r0
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222E278
	b _02233892
_022337E0:
	ldrb r0, [r4, #4]
	bl ov104_0223AA50
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _02233892
_022337EE:
	ldr r0, _022338B0 ; =0x000004D4
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [r6, #0]
	add r1, r5, #0
	ldr r0, [r0, #0x44]
	bl sub_0200B538
	add r5, r5, #1
	cmp r5, r7
	blt _022337EE
	b _02233892
_02233810:
	add r0, r4, #0
	bl ov104_022347F8
	ldr r1, [sp, #0x18]
	strh r0, [r1]
	b _02233892
_0223381C:
	add r0, r4, #0
	bl ov104_02234790
	b _02233892
_02233824:
	ldr r0, [sp, #0x18]
	mov r1, #0
	strh r1, [r0]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02233892
	ldrh r0, [r4, #0xc]
	add r0, r0, #1
	cmp r0, #0x15
	bne _02233840
	ldr r0, [sp, #0x18]
	mov r1, #1
	strh r1, [r0]
	b _02233892
_02233840:
	cmp r0, #0x31
	bne _02233892
	ldr r0, [sp, #0x18]
	mov r1, #2
	strh r1, [r0]
	b _02233892
_0223384C:
	add r0, r4, #0
	bl ov104_0223AE30
	b _02233892
_02233854:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	mov r3, #0x3f
	lsl r3, r3, #4
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp, #0xc]
	add r0, r4, r3
	sub r1, #0x1e
	sub r2, #0x16
	sub r3, #0x10
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov104_0222E330
	b _02233892
_02233880:
	add r0, r4, #0
	bl ov104_0223ADB0
	b _02233892
_02233888:
	ldrb r1, [r4, #0xb]
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	mov r0, #1
	strb r0, [r4, #0xb]
_02233892:
	mov r0, #0
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02233898: .word 0x000004DC
_0223389C: .word 0x0000270F
_022338A0: .word 0x000004F4
_022338A4: .word 0x0000057C
_022338A8: .word 0x0000057D
_022338AC: .word ov104_022338B4
_022338B0: .word 0x000004D4
	thumb_func_end ov104_022334DC

	thumb_func_start ov104_022338B4
ov104_022338B4: ; 0x022338B4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_020192F8
	cmp r0, #0xff
	ldr r0, [r4, #0]
	blt _022338D2
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	pop {r4, pc}
_022338D2:
	mov r1, #2
	mov r2, #4
	mov r3, #1
	bl sub_0201C63C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_022338B4

	thumb_func_start ov104_022338E0
ov104_022338E0: ; 0x022338E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r0, [r0, #0x14]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_022338E0

	thumb_func_start ov104_022338FC
ov104_022338FC: ; 0x022338FC
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
	bl ov104_022347A4
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022338FC

	thumb_func_start ov104_0223392C
ov104_0223392C: ; 0x0223392C
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA48
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _02233948 ; =ov104_0223394C
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_02233948: .word ov104_0223394C
	thumb_func_end ov104_0223392C

	thumb_func_start ov104_0223394C
ov104_0223394C: ; 0x0223394C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x78
	ldrh r1, [r1]
	bl ov104_0222FC8C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r1, _02233978 ; =0x00000702
	ldrb r2, [r0, r1]
	cmp r2, #2
	blo _02233972
	mov r2, #0
	strb r2, [r0, r1]
	mov r0, #1
	pop {r4, pc}
_02233972:
	mov r0, #0
	pop {r4, pc}
	nop
_02233978: .word 0x00000702
	thumb_func_end ov104_0223394C

	thumb_func_start ov104_0223397C
ov104_0223397C: ; 0x0223397C
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
	bne _022339A0
	mov r0, #0
	pop {r3, r4, r5, pc}
_022339A0:
	lsl r1, r4, #4
	add r1, r4, r1
	add r2, #0x4c
	lsl r1, r1, #4
	add r0, r5, #0
	add r1, r2, r1
	bl ov104_022330FC
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223397C

	.rodata


	.global Unk_ov104_0223FA14
Unk_ov104_0223FA14: ; 0x0223FA14
	.incbin "incbin/overlay104_rodata.bin", 0x784, 0x794 - 0x784

	.global Unk_ov104_0223FA24
Unk_ov104_0223FA24: ; 0x0223FA24
	.incbin "incbin/overlay104_rodata.bin", 0x794, 0x10

