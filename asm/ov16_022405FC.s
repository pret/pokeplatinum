	.include "macros/function.inc"
	.include "include/ov16_022405FC.inc"

	

	.text


	thumb_func_start ov16_022405FC
ov16_022405FC: ; 0x022405FC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02240644 ; =0x0226E72C
	add r5, r0, #0
	add r4, r1, #0
_02240604:
	add r2, r4, #0
	add r2, #0xb4
	ldr r2, [r2, #0]
	add r0, r5, #0
	lsl r2, r2, #2
	add r3, r4, r2
	mov r2, #0x27
	lsl r2, r2, #8
	ldr r2, [r3, r2]
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r7, r2]
	blx r2
	add r6, r0, #0
	ldr r0, _02240648 ; =0x00003154
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02240636
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	beq _02240604
_02240636:
	ldr r1, _02240648 ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	str r2, [r4, r1]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240644: .word 0x0226E72C
_02240648: .word 0x00003154
	thumb_func_end ov16_022405FC

	thumb_func_start ov16_0224064C
ov16_0224064C: ; 0x0224064C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	mov r1, #0
	bl ov16_02264A8C
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov16_0224064C

	thumb_func_start ov16_02240664
ov16_02240664: ; 0x02240664
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	cmp r0, #0
	beq _0224068A
	cmp r0, #3
	beq _022406D6
	cmp r0, #4
	beq _022406A8
_0224068A:
	mov r5, #0
	cmp r6, #0
	ble _022406D6
_02240690:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02264AB4
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223F938
	add r5, r5, #1
	cmp r5, r6
	blt _02240690
	b _022406D6
_022406A8:
	mov r5, #0
	cmp r6, #0
	ble _022406D6
	mov r7, #1
_022406B0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _022406DC ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _022406D0
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02264AB4
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223F938
_022406D0:
	add r5, r5, #1
	cmp r5, r6
	blt _022406B0
_022406D6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022406DC: .word 0x00000195
	thumb_func_end ov16_02240664

	thumb_func_start ov16_022406E0
ov16_022406E0: ; 0x022406E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	cmp r0, #6
	bhi _02240718
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224070A: ; jump table
	.short _02240718 - _0224070A - 2 ; case 0
	.short _022407BC - _0224070A - 2 ; case 1
	.short _02240806 - _0224070A - 2 ; case 2
	.short _02240736 - _0224070A - 2 ; case 3
	.short _0224077A - _0224070A - 2 ; case 4
	.short _02240718 - _0224070A - 2 ; case 5
	.short _02240850 - _0224070A - 2 ; case 6
_02240718:
	mov r5, #0
	cmp r7, #0
	ble _02240734
_0224071E:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02264BB4
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223F938
	add r5, r5, #1
	cmp r5, r7
	blt _0224071E
_02240734:
	b _02240898
_02240736:
	mov r5, #0
	cmp r7, #0
	ble _02240764
_0224073C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _0224089C ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0224075E
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02264BB4
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223F938
_0224075E:
	add r5, r5, #1
	cmp r5, r7
	blt _0224073C
_02240764:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl ov16_022535F0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov16_022535F0
	b _02240898
_0224077A:
	mov r5, #0
	cmp r7, #0
	ble _022407BA
_02240780:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _0224089C ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _022407B4
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_022535E0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov16_022535F0
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02264BB4
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223F938
_022407B4:
	add r5, r5, #1
	cmp r5, r7
	blt _02240780
_022407BA:
	b _02240898
_022407BC:
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov16_0223DF14
	ldr r1, _0224089C ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _022407E2
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov16_022535F0
	b _022407F4
_022407E2:
	ldr r1, [r6, #0x64]
	add r0, r6, #0
	bl ov16_022535E0
	ldr r2, [r6, #0x64]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
_022407F4:
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov16_0223F938
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov16_02264BB4
	b _02240898
_02240806:
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov16_0223DF14
	ldr r1, _0224089C ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _0224082C
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov16_022535F0
	b _0224083E
_0224082C:
	ldr r1, [r6, #0x6c]
	add r0, r6, #0
	bl ov16_022535E0
	ldr r2, [r6, #0x6c]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
_0224083E:
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov16_0223F938
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov16_02264BB4
	b _02240898
_02240850:
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov16_0223DF14
	ldr r1, _0224089C ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _02240876
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov16_022535F0
	b _02240888
_02240876:
	ldr r1, [r6, #0x78]
	add r0, r6, #0
	bl ov16_022535E0
	ldr r2, [r6, #0x78]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
_02240888:
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov16_0223F938
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov16_02264BB4
_02240898:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224089C: .word 0x00000195
	thumb_func_end ov16_022406E0

	thumb_func_start ov16_022408A0
ov16_022408A0: ; 0x022408A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	cmp r0, #6
	bhi _022408D8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022408CA: ; jump table
	.short _022408D8 - _022408CA - 2 ; case 0
	.short _0224098A - _022408CA - 2 ; case 1
	.short _022409D8 - _022408CA - 2 ; case 2
	.short _022408FC - _022408CA - 2 ; case 3
	.short _02240944 - _022408CA - 2 ; case 4
	.short _022408D8 - _022408CA - 2 ; case 5
	.short _02240A26 - _022408CA - 2 ; case 6
_022408D8:
	mov r5, #0
	cmp r7, #0
	ble _022408FA
	add r6, r5, #0
_022408E0:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r6, #0
	bl ov16_02264CE8
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223F938
	add r5, r5, #1
	cmp r5, r7
	blt _022408E0
_022408FA:
	b _02240A72
_022408FC:
	mov r5, #0
	cmp r7, #0
	ble _0224092E
_02240902:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02240A78 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _02240928
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #0
	add r3, r2, #0
	bl ov16_02264CE8
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223F938
_02240928:
	add r5, r5, #1
	cmp r5, r7
	blt _02240902
_0224092E:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl ov16_022535F0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov16_022535F0
	b _02240A72
_02240944:
	mov r5, #0
	cmp r7, #0
	ble _02240988
_0224094A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02240A78 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _02240982
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_022535E0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov16_022535F0
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #0
	add r3, r2, #0
	bl ov16_02264CE8
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223F938
_02240982:
	add r5, r5, #1
	cmp r5, r7
	blt _0224094A
_02240988:
	b _02240A72
_0224098A:
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov16_0223DF14
	ldr r1, _02240A78 ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _022409B0
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov16_022535F0
	b _022409C2
_022409B0:
	ldr r1, [r6, #0x64]
	add r0, r6, #0
	bl ov16_022535E0
	ldr r2, [r6, #0x64]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
_022409C2:
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov16_0223F938
	mov r2, #0
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	add r3, r2, #0
	bl ov16_02264CE8
	b _02240A72
_022409D8:
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov16_0223DF14
	ldr r1, _02240A78 ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _022409FE
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov16_022535F0
	b _02240A10
_022409FE:
	ldr r1, [r6, #0x6c]
	add r0, r6, #0
	bl ov16_022535E0
	ldr r2, [r6, #0x6c]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
_02240A10:
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov16_0223F938
	mov r2, #0
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	add r3, r2, #0
	bl ov16_02264CE8
	b _02240A72
_02240A26:
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov16_0223DF14
	ldr r1, _02240A78 ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _02240A4C
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov16_022535F0
	b _02240A5E
_02240A4C:
	ldr r1, [r6, #0x78]
	add r0, r6, #0
	bl ov16_022535E0
	ldr r2, [r6, #0x78]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_022535F0
_02240A5E:
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov16_0223F938
	mov r2, #0
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	add r3, r2, #0
	bl ov16_02264CE8
_02240A72:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240A78: .word 0x00000195
	thumb_func_end ov16_022408A0

	thumb_func_start ov16_02240A7C
ov16_02240A7C: ; 0x02240A7C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	add r2, r0, #0
	beq _02240AA4
	cmp r2, #3
	beq _02240ABC
	cmp r2, #4
	beq _02240AE6
	b _02240B1E
_02240AA4:
	mov r4, #0
	cmp r7, #0
	ble _02240B30
_02240AAA:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov16_02264EF8
	add r4, r4, #1
	cmp r4, r7
	blt _02240AAA
	b _02240B30
_02240ABC:
	mov r4, #0
	cmp r7, #0
	ble _02240B30
_02240AC2:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223DF14
	ldr r1, _02240B34 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _02240ADE
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov16_02264EF8
_02240ADE:
	add r4, r4, #1
	cmp r4, r7
	blt _02240AC2
	b _02240B30
_02240AE6:
	mov r4, #0
	cmp r7, #0
	ble _02240B30
_02240AEC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223DF14
	ldr r1, _02240B34 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _02240B16
	add r0, r4, #0
	bl sub_020787CC
	ldr r1, _02240B38 ; =0x00003108
	ldrb r1, [r6, r1]
	tst r0, r1
	bne _02240B16
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov16_02264EF8
_02240B16:
	add r4, r4, #1
	cmp r4, r7
	blt _02240AEC
	b _02240B30
_02240B1E:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02264EF8
_02240B30:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240B34: .word 0x00000195
_02240B38: .word 0x00003108
	thumb_func_end ov16_02240A7C

	thumb_func_start ov16_02240B3C
ov16_02240B3C: ; 0x02240B3C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	bl ov16_02265108
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02240B3C

	thumb_func_start ov16_02240B68
ov16_02240B68: ; 0x02240B68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	cmp r0, #0
	beq _02240B8E
	cmp r0, #3
	beq _02240BF2
	cmp r0, #4
	beq _02240C32
_02240B8E:
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	beq _02240BC0
	mov r5, #0
	cmp r6, #0
	ble _02240C7C
	ldr r7, _02240C80 ; =0x00000195
_02240BA2:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldrb r0, [r0, r7]
	cmp r0, #4
	beq _02240BB8
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02265124
_02240BB8:
	add r5, r5, #1
	cmp r5, r6
	blt _02240BA2
	b _02240C7C
_02240BC0:
	mov r5, #0
	cmp r6, #0
	ble _02240C7C
	mov r7, #8
_02240BC8:
	add r0, r4, #0
	bl ov16_0223DF0C
	tst r0, r7
	bne _02240BE2
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02240BE2
	cmp r5, #1
	bgt _02240C7C
_02240BE2:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02265124
	add r5, r5, #1
	cmp r5, r6
	blt _02240BC8
	b _02240C7C
_02240BF2:
	mov r5, #0
	cmp r6, #0
	ble _02240C7C
	mov r7, #1
_02240BFA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02240C80 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _02240C2A
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02265124
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _02240C2A
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02240C7C
_02240C2A:
	add r5, r5, #1
	cmp r5, r6
	blt _02240BFA
	b _02240C7C
_02240C32:
	mov r5, #0
	cmp r6, #0
	ble _02240C7C
	mov r7, #1
_02240C3A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02240C80 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _02240C76
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02265124
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _02240C76
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	bne _02240C76
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02240C7C
_02240C76:
	add r5, r5, #1
	cmp r5, r6
	blt _02240C3A
_02240C7C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240C80: .word 0x00000195
	thumb_func_end ov16_02240B68

	thumb_func_start ov16_02240C84
ov16_02240C84: ; 0x02240C84
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r4, r0, #0
	bl ov16_0223DF1C
	add r6, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, [sp]
	bl ov16_02248AD0
	add r5, r0, #0
	ldr r0, [sp]
	bl ov16_02248AD0
	add r7, r0, #0
	cmp r5, #0
	beq _02240CB4
	cmp r5, #3
	beq _02240CE8
	cmp r5, #4
	beq _02240D2A
_02240CB4:
	mov r5, #0
	cmp r6, #0
	ble _02240D76
_02240CBA:
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _02240CD6
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02240CD6
	cmp r5, #1
	bgt _02240D76
_02240CD6:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_02265154
	add r5, r5, #1
	cmp r5, r6
	blt _02240CBA
	b _02240D76
_02240CE8:
	mov r5, #0
	cmp r6, #0
	ble _02240D76
_02240CEE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02240D8C ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _02240D22
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_02265154
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _02240D22
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02240D76
_02240D22:
	add r5, r5, #1
	cmp r5, r6
	blt _02240CEE
	b _02240D76
_02240D2A:
	mov r5, #0
	cmp r6, #0
	ble _02240D76
_02240D30:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02240D8C ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _02240D70
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_02265154
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _02240D70
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	bne _02240D70
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02240D76
_02240D70:
	add r5, r5, #1
	cmp r5, r6
	blt _02240D30
_02240D76:
	ldr r1, _02240D90 ; =0x00003154
	ldr r0, [sp]
	ldr r2, [r0, r1]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	orr r2, r0
	ldr r0, [sp]
	str r2, [r0, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240D8C: .word 0x00000195
_02240D90: .word 0x00003154
	thumb_func_end ov16_02240C84

	thumb_func_start ov16_02240D94
ov16_02240D94: ; 0x02240D94
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	cmp r0, #0xc
	bhi _02240DD8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02240DBE: ; jump table
	.short _02240DD8 - _02240DBE - 2 ; case 0
	.short _02240DD8 - _02240DBE - 2 ; case 1
	.short _02240DD8 - _02240DBE - 2 ; case 2
	.short _02240E0A - _02240DBE - 2 ; case 3
	.short _02240E4A - _02240DBE - 2 ; case 4
	.short _02240DD8 - _02240DBE - 2 ; case 5
	.short _02240DD8 - _02240DBE - 2 ; case 6
	.short _02240DD8 - _02240DBE - 2 ; case 7
	.short _02240DD8 - _02240DBE - 2 ; case 8
	.short _02240E96 - _02240DBE - 2 ; case 9
	.short _02240EC2 - _02240DBE - 2 ; case 10
	.short _02240EEE - _02240DBE - 2 ; case 11
	.short _02240F16 - _02240DBE - 2 ; case 12
_02240DD8:
	mov r6, #0
	cmp r5, #0
	ble _02240E08
	mov r7, #8
_02240DE0:
	add r0, r4, #0
	bl ov16_0223DF0C
	tst r0, r7
	bne _02240DFA
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02240DFA
	cmp r6, #1
	bgt _02240E08
_02240DFA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0226518C
	add r6, r6, #1
	cmp r6, r5
	blt _02240DE0
_02240E08:
	b _02240F3C
_02240E0A:
	mov r6, #0
	cmp r5, #0
	ble _02240E48
	mov r7, #1
_02240E12:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _02240F40 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _02240E42
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0226518C
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _02240E42
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02240F3C
_02240E42:
	add r6, r6, #1
	cmp r6, r5
	blt _02240E12
_02240E48:
	b _02240F3C
_02240E4A:
	mov r6, #0
	cmp r5, #0
	ble _02240F3C
	mov r7, #1
_02240E52:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _02240F40 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _02240E8E
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0226518C
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _02240E8E
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	bne _02240E8E
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02240F3C
_02240E8E:
	add r6, r6, #1
	cmp r6, r5
	blt _02240E52
	b _02240F3C
_02240E96:
	mov r6, #0
	cmp r5, #0
	ble _02240F3C
	ldr r7, _02240F40 ; =0x00000195
_02240E9E:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldrb r0, [r0, r7]
	cmp r0, #0
	beq _02240EB0
	cmp r0, #2
	bne _02240EBA
_02240EB0:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0226518C
	b _02240F3C
_02240EBA:
	add r6, r6, #1
	cmp r6, r5
	blt _02240E9E
	b _02240F3C
_02240EC2:
	mov r6, #0
	cmp r5, #0
	ble _02240F3C
	ldr r7, _02240F40 ; =0x00000195
_02240ECA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldrb r0, [r0, r7]
	cmp r0, #1
	beq _02240EDC
	cmp r0, #3
	bne _02240EE6
_02240EDC:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0226518C
	b _02240F3C
_02240EE6:
	add r6, r6, #1
	cmp r6, r5
	blt _02240ECA
	b _02240F3C
_02240EEE:
	mov r6, #0
	cmp r5, #0
	ble _02240F3C
	ldr r7, _02240F40 ; =0x00000195
_02240EF6:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldrb r0, [r0, r7]
	cmp r0, #4
	bne _02240F0E
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0226518C
	b _02240F3C
_02240F0E:
	add r6, r6, #1
	cmp r6, r5
	blt _02240EF6
	b _02240F3C
_02240F16:
	mov r6, #0
	cmp r5, #0
	ble _02240F3C
	ldr r7, _02240F40 ; =0x00000195
_02240F1E:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldrb r0, [r0, r7]
	cmp r0, #5
	bne _02240F36
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0226518C
	b _02240F3C
_02240F36:
	add r6, r6, #1
	cmp r6, r5
	blt _02240F1E
_02240F3C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02240F40: .word 0x00000195
	thumb_func_end ov16_02240D94

	thumb_func_start ov16_02240F44
ov16_02240F44: ; 0x02240F44
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r7, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r7, #0
	bl ov16_02248AD0
	add r7, r0, #0
	cmp r6, #0xc
	bhi _02240F92
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02240F78: ; jump table
	.short _02240F92 - _02240F78 - 2 ; case 0
	.short _02240F92 - _02240F78 - 2 ; case 1
	.short _02240F92 - _02240F78 - 2 ; case 2
	.short _02240FBA - _02240F78 - 2 ; case 3
	.short _02240FF0 - _02240F78 - 2 ; case 4
	.short _02240F92 - _02240F78 - 2 ; case 5
	.short _02240F92 - _02240F78 - 2 ; case 6
	.short _02240F92 - _02240F78 - 2 ; case 7
	.short _02240F92 - _02240F78 - 2 ; case 8
	.short _02241026 - _02240F78 - 2 ; case 9
	.short _02241054 - _02240F78 - 2 ; case 10
	.short _02241082 - _02240F78 - 2 ; case 11
	.short _022410AC - _02240F78 - 2 ; case 12
_02240F92:
	mov r6, #0
	cmp r5, #0
	ble _02240FB8
_02240F98:
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02240FA8
	cmp r6, #1
	bgt _02240FB8
_02240FA8:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_022651A8
	add r6, r6, #1
	cmp r6, r5
	blt _02240F98
_02240FB8:
	b _022410D4
_02240FBA:
	mov r6, #0
	cmp r5, #0
	ble _02240FEE
_02240FC0:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _022410D8 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _02240FE8
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_022651A8
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _022410D4
_02240FE8:
	add r6, r6, #1
	cmp r6, r5
	blt _02240FC0
_02240FEE:
	b _022410D4
_02240FF0:
	mov r6, #0
	cmp r5, #0
	ble _022410D4
_02240FF6:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _022410D8 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _0224101E
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_022651A8
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _022410D4
_0224101E:
	add r6, r6, #1
	cmp r6, r5
	blt _02240FF6
	b _022410D4
_02241026:
	mov r6, #0
	cmp r5, #0
	ble _022410D4
_0224102C:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _022410D8 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _02241040
	cmp r0, #2
	bne _0224104C
_02241040:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_022651A8
	b _022410D4
_0224104C:
	add r6, r6, #1
	cmp r6, r5
	blt _0224102C
	b _022410D4
_02241054:
	mov r6, #0
	cmp r5, #0
	ble _022410D4
_0224105A:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _022410D8 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224106E
	cmp r0, #3
	bne _0224107A
_0224106E:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_022651A8
	b _022410D4
_0224107A:
	add r6, r6, #1
	cmp r6, r5
	blt _0224105A
	b _022410D4
_02241082:
	mov r6, #0
	cmp r5, #0
	ble _022410D4
_02241088:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _022410D8 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, #4
	bne _022410A4
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_022651A8
	b _022410D4
_022410A4:
	add r6, r6, #1
	cmp r6, r5
	blt _02241088
	b _022410D4
_022410AC:
	mov r6, #0
	cmp r5, #0
	ble _022410D4
_022410B2:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _022410D8 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, #5
	bne _022410CE
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_022651A8
	b _022410D4
_022410CE:
	add r6, r6, #1
	cmp r6, r5
	blt _022410B2
_022410D4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022410D8: .word 0x00000195
	thumb_func_end ov16_02240F44

	thumb_func_start ov16_022410DC
ov16_022410DC: ; 0x022410DC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	bl ov16_0223DF1C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r4, #0
	cmp r5, #0
	ble _02241104
_022410F6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_02266460
	add r4, r4, #1
	cmp r4, r5
	blt _022410F6
_02241104:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_022410DC

	thumb_func_start ov16_02241108
ov16_02241108: ; 0x02241108
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r7, #0
	bl ov16_02248AD0
	add r2, r0, #0
	beq _02241130
	cmp r2, #3
	beq _0224114A
	cmp r2, #4
	beq _02241176
	b _022411A2
_02241130:
	mov r5, #0
	cmp r6, #0
	ble _022411B6
_02241136:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #0
	bl ov16_022651DC
	add r5, r5, #1
	cmp r5, r6
	blt _02241136
	b _022411B6
_0224114A:
	mov r5, #0
	cmp r6, #0
	ble _022411B6
_02241150:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _022411BC ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0224116E
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #0
	bl ov16_022651DC
_0224116E:
	add r5, r5, #1
	cmp r5, r6
	blt _02241150
	b _022411B6
_02241176:
	mov r5, #0
	cmp r6, #0
	ble _022411B6
_0224117C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _022411BC ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _0224119A
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #0
	bl ov16_022651DC
_0224119A:
	add r5, r5, #1
	cmp r5, r6
	blt _0224117C
	b _022411B6
_022411A2:
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0
	bl ov16_022651DC
_022411B6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022411BC: .word 0x00000195
	thumb_func_end ov16_02241108

	thumb_func_start ov16_022411C0
ov16_022411C0: ; 0x022411C0
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r5, r0, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, [sp]
	bl ov16_02248AD0
	add r2, r0, #0
	ldr r4, _02241280 ; =0x00000000
	beq _022411EA
	cmp r2, #3
	beq _02241204
	cmp r2, #4
	beq _02241236
	b _02241268
_022411EA:
	cmp r7, #0
	ble _0224127C
	add r6, r4, #0
_022411F0:
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov16_022651DC
	add r4, r4, #1
	cmp r4, r7
	blt _022411F0
	b _0224127C
_02241204:
	add r6, r4, #0
	cmp r7, #0
	ble _0224127C
_0224120A:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _02241284 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0224122E
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov16_022651DC
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0224122E:
	add r6, r6, #1
	cmp r6, r7
	blt _0224120A
	b _0224127C
_02241236:
	add r6, r4, #0
	cmp r7, #0
	ble _0224127C
_0224123C:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0223DF14
	ldr r1, _02241284 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _02241260
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov16_022651DC
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02241260:
	add r6, r6, #1
	cmp r6, r7
	blt _0224123C
	b _0224127C
_02241268:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_0224A984
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r3, r4, #0
	bl ov16_022651DC
_0224127C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241280: .word 0x00000000
_02241284: .word 0x00000195
	thumb_func_end ov16_022411C0

	thumb_func_start ov16_02241288
ov16_02241288: ; 0x02241288
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r7, #0
	bl ov16_02248AD0
	add r2, r0, #0
	beq _022412B0
	cmp r2, #3
	beq _022412C6
	cmp r2, #4
	beq _022412FC
	b _02241324
_022412B0:
	mov r5, #0
	cmp r6, #0
	ble _02241334
_022412B6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02265314
	add r5, r5, #1
	cmp r5, r6
	blt _022412B6
	b _02241334
_022412C6:
	mov r5, #0
	cmp r6, #0
	ble _02241334
_022412CC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02241338 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _022412F4
	add r0, r5, #0
	bl sub_020787CC
	ldr r1, _0224133C ; =0x00003108
	ldrb r1, [r7, r1]
	tst r0, r1
	bne _022412F4
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02265314
_022412F4:
	add r5, r5, #1
	cmp r5, r6
	blt _022412CC
	b _02241334
_022412FC:
	mov r5, #0
	cmp r6, #0
	ble _02241334
	mov r7, #1
_02241304:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02241338 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _0224131C
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02265314
_0224131C:
	add r5, r5, #1
	cmp r5, r6
	blt _02241304
	b _02241334
_02241324:
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_02265314
_02241334:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241338: .word 0x00000195
_0224133C: .word 0x00003108
	thumb_func_end ov16_02241288

	thumb_func_start ov16_02241340
ov16_02241340: ; 0x02241340
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov16_02251FC8
	cmp r0, #0
	beq _02241358
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	b _0224135E
_02241358:
	add r0, r4, #0
	bl ov16_0225201C
_0224135E:
	ldr r1, _02241370 ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02241370: .word 0x00003154
	thumb_func_end ov16_02241340

	thumb_func_start ov16_02241374
ov16_02241374: ; 0x02241374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	ldr r1, [r5, #0x64]
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x60
	bne _0224138C
	mov r4, #0
	b _022413A0
_0224138C:
	ldr r0, _022414C0 ; =0x00002160
	ldr r4, [r5, r0]
	cmp r4, #0
	bne _022413A0
	ldr r0, _022414C4 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022414C8 ; =0x000003E2
	ldrb r4, [r1, r0]
_022413A0:
	ldr r0, [r5, #0x6c]
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl ov16_0223E208
	mov r3, #6
	lsl r3, r3, #6
	add r6, r0, #0
	ldr r0, [r5, r3]
	ldr r1, _022414CC ; =0x00002154
	str r0, [sp]
	ldr r0, [r5, r1]
	ldr r2, _022414C4 ; =0x00003044
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x64]
	lsl r4, r6, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r4, r5, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	add r3, #0x3c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r2, [r5, r2]
	ldr r3, [r4, r3]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0225A280
	ldr r1, _022414D0 ; =0x00002144
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	ldr r2, [r5, r1]
	ldr r0, [r5, r0]
	mul r0, r2
	str r0, [r5, r1]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02258AB8
	cmp r0, #0x62
	bne _0224142C
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0
	bl ov16_02258ACC
	ldr r1, _022414D0 ; =0x00002144
	add r0, #0x64
	ldr r1, [r5, r1]
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, _022414D0 ; =0x00002144
	str r0, [r5, r1]
_0224142C:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02258AB8
	cmp r0, #0x69
	bne _0224145A
	ldr r0, _022414D0 ; =0x00002144
	ldr r2, [r5, #0x64]
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r2
	add r2, r5, r0
	ldr r0, _022414D4 ; =0x00002DCC
	ldr r0, [r2, r0]
	lsl r0, r0, #5
	lsr r0, r0, #0x1c
	add r0, #0xa
	mul r0, r1
	mov r1, #0xa
	bl _u32_div_f
	ldr r1, _022414D0 ; =0x00002144
	str r0, [r5, r1]
_0224145A:
	ldr r2, [r5, #0x64]
	mov r1, #0xc0
	add r0, r2, #0
	mul r0, r1
	ldr r2, _022414D4 ; =0x00002DCC
	add r3, r5, r0
	ldr r3, [r3, r2]
	lsl r3, r3, #1
	lsr r3, r3, #0x1f
	beq _022414BA
	add r2, #0x10
	add r3, r5, r2
	add r1, #0xb4
	ldr r2, [r5, r1]
	ldr r1, [r3, r0]
	cmp r2, r1
	bne _02241480
	sub r1, r1, #1
	str r1, [r3, r0]
_02241480:
	ldr r2, [r5, #0x64]
	mov r1, #0xc0
	add r0, r2, #0
	mul r0, r1
	add r1, #0xb4
	ldr r3, [r5, r1]
	ldr r1, _022414D8 ; =0x00002DDC
	add r2, r5, r0
	ldr r2, [r2, r1]
	sub r2, r3, r2
	cmp r2, #2
	bge _022414AE
	ldr r0, _022414D0 ; =0x00002144
	ldr r1, [r5, r0]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, _022414D0 ; =0x00002144
	add sp, #0x1c
	str r0, [r5, r1]
	pop {r4, r5, r6, r7, pc}
_022414AE:
	sub r1, #0x10
	add r3, r5, r1
	ldr r2, [r3, r0]
	ldr r1, _022414DC ; =0xBFFFFFFF
	and r1, r2
	str r1, [r3, r0]
_022414BA:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022414C0: .word 0x00002160
_022414C4: .word 0x00003044
_022414C8: .word 0x000003E2
_022414CC: .word 0x00002154
_022414D0: .word 0x00002144
_022414D4: .word 0x00002DCC
_022414D8: .word 0x00002DDC
_022414DC: .word 0xBFFFFFFF
	thumb_func_end ov16_02241374

	thumb_func_start ov16_022414E0
ov16_022414E0: ; 0x022414E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02241374
	ldr r2, _02241514 ; =0x00002144
	add r0, r5, #0
	ldr r2, [r4, r2]
	add r1, r4, #0
	bl ov16_0225AEB8
	ldr r1, _02241514 ; =0x00002144
	str r0, [r4, r1]
	mov r0, #0
	ldr r2, [r4, r1]
	mvn r0, r0
	mul r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02241514: .word 0x00002144
	thumb_func_end ov16_022414E0

	thumb_func_start ov16_02241518
ov16_02241518: ; 0x02241518
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02241374
	ldr r1, _02241540 ; =0x00002144
	mov r0, #0
	ldr r2, [r4, r1]
	mvn r0, r0
	mul r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02241540: .word 0x00002144
	thumb_func_end ov16_02241518

	thumb_func_start ov16_02241544
ov16_02241544: ; 0x02241544
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, _02241580 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	bne _02241564
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02265B68
_02241564:
	ldr r1, _02241580 ; =0x0000213C
	mov r0, #1
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r2, [r4, r0]
	mov r0, #4
	orr r2, r0
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02241580: .word 0x0000213C
	thumb_func_end ov16_02241544

	thumb_func_start ov16_02241584
ov16_02241584: ; 0x02241584
	push {r4, r5, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	add r1, sp, #0x24
	bl ov16_0224ABEC
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x24
	add r3, sp, #0
	bl ov16_0224ACB8
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov16_02265BA0
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, pc}
	thumb_func_end ov16_02241584

	thumb_func_start ov16_022415B8
ov16_022415B8: ; 0x022415B8
	push {r4, r5, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	add r1, sp, #0x24
	bl ov16_0224ABEC
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x24
	add r3, sp, #0
	bl ov16_0224ACB8
	add r1, sp, #0
	ldrb r2, [r1, #1]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r1, #1]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov16_02265BA0
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022415B8

	thumb_func_start ov16_022415F8
ov16_022415F8: ; 0x022415F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r1, r4, #0
	add r4, #0xf4
	add r0, r5, #0
	add r2, r4, #0
	bl ov16_02265BA0
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022415F8

	thumb_func_start ov16_02241618
ov16_02241618: ; 0x02241618
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	add r1, sp, #0
	bl ov16_0224ABEC
	add r1, r4, #0
	add r4, #0xf4
	add r0, r5, #0
	add r2, sp, #0
	add r3, r4, #0
	bl ov16_0224ACB8
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02241618

	thumb_func_start ov16_02241644
ov16_02241644: ; 0x02241644
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0x24
	bl ov16_0224ABEC
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x24
	add r3, sp, #0
	bl ov16_0224ACB8
	add r1, sp, #0
	ldrb r2, [r1, #1]
	mov r0, #0x40
	orr r0, r2
	strb r0, [r1, #1]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov16_02265BA0
	mov r0, #0
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02241644

	thumb_func_start ov16_02241698
ov16_02241698: ; 0x02241698
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	cmp r0, #0xff
	bne _022416B6
	mov r0, #0x49
	lsl r0, r0, #2
	b _022416B8
_022416B6:
	ldr r0, _02241708 ; =0x00003044
_022416B8:
	ldr r0, [r5, r0]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _0224170C ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xe
	tst r0, r1
	bne _022416D4
	add r0, r6, #0
	bl ov16_0223EDAC
	cmp r0, #1
	beq _022416D8
_022416D4:
	cmp r4, #0x90
	bne _022416EE
_022416D8:
	ldr r1, _0224170C ; =0x0000213C
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_02265BBC
_022416EE:
	add r0, r6, #0
	bl ov16_0223EDAC
	cmp r0, #0
	bne _02241702
	ldr r2, _02241710 ; =0x00000123
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248B08
_02241702:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02241708: .word 0x00003044
_0224170C: .word 0x0000213C
_02241710: .word 0x00000123
	thumb_func_end ov16_02241698

	thumb_func_start ov16_02241714
ov16_02241714: ; 0x02241714
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	cmp r6, #0xff
	bne _02241746
	mov r0, #0x49
	lsl r0, r0, #2
	b _02241748
_02241746:
	ldr r0, _022417B4 ; =0x00003044
_02241748:
	ldr r0, [r4, r0]
	add r1, r4, #0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	add r2, r7, #0
	bl ov16_0224A984
	str r0, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r7, r0, #0
	ldr r0, _022417B8 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0xe
	tst r0, r1
	bne _0224177C
	add r0, r5, #0
	bl ov16_0223EDAC
	cmp r0, #1
	beq _02241780
_0224177C:
	cmp r6, #0x90
	bne _0224179A
_02241780:
	ldr r1, _022417B8 ; =0x0000213C
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	str r0, [r4, r1]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	str r7, [sp]
	bl ov16_02265BEC
_0224179A:
	add r0, r5, #0
	bl ov16_0223EDAC
	cmp r0, #0
	bne _022417AE
	ldr r2, _022417BC ; =0x00000123
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248B08
_022417AE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022417B4: .word 0x00003044
_022417B8: .word 0x0000213C
_022417BC: .word 0x00000123
	thumb_func_end ov16_02241714

	thumb_func_start ov16_022417C0
ov16_022417C0: ; 0x022417C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	ldr r2, _022417F0 ; =0x0000216C
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r5, #0
	bl ov16_02265C1C
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022417F0: .word 0x0000216C
	thumb_func_end ov16_022417C0

	thumb_func_start ov16_022417F4
ov16_022417F4: ; 0x022417F4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	ldr r0, _02241888 ; =0x00002D8C
	add r7, r2, #0
	add r5, r4, r0
	mov r0, #0xc0
	mul r7, r0
	ldr r0, _0224188C ; =0x0000215C
	ldr r6, [r5, r7]
	ldr r3, [r4, r0]
	add r1, r3, r6
	cmp r1, #0
	bgt _02241832
	neg r1, r6
	sub r0, #0x14
	str r1, [r4, r0]
	b _02241836
_02241832:
	sub r0, #0x14
	str r3, [r4, r0]
_02241836:
	ldr r0, _02241890 ; =0x00002148
	ldr r6, [r4, r0]
	cmp r6, #0
	bge _0224184C
	mov r0, #0x59
	lsl r0, r0, #2
	add r3, r4, r0
	lsl r1, r2, #2
	ldr r0, [r3, r1]
	sub r0, r0, r6
	str r0, [r3, r1]
_0224184C:
	mov r0, #0xc0
	add r3, r2, #0
	mul r3, r0
	ldr r0, _02241888 ; =0x00002D8C
	ldr r6, _0224188C ; =0x0000215C
	add r1, r4, r0
	ldr r0, [r1, r3]
	ldr r6, [r4, r6]
	add r0, r0, r6
	str r0, [r1, r3]
	ldr r1, [r1, r3]
	cmp r1, #0
	bge _0224186C
	mov r0, #0
	str r0, [r5, r7]
	b _0224187A
_0224186C:
	add r0, r4, r3
	ldr r3, _02241888 ; =0x00002D8C
	add r3, r3, #4
	ldr r0, [r0, r3]
	cmp r1, r0
	bls _0224187A
	str r0, [r5, r7]
_0224187A:
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_02253EC0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241888: .word 0x00002D8C
_0224188C: .word 0x0000215C
_02241890: .word 0x00002148
	thumb_func_end ov16_022417F4

	thumb_func_start ov16_02241894
ov16_02241894: ; 0x02241894
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02265C38
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02241894

	thumb_func_start ov16_022418C0
ov16_022418C0: ; 0x022418C0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0224A984
	add r4, r0, #0
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	ldr r1, _0224191C ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _02241916
	str r4, [r5, #0x74]
	bl sub_020787CC
	ldr r1, _02241920 ; =0x0000213C
	lsl r0, r0, #0x18
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0x55
	lsl r0, r0, #2
	add r2, r5, r0
	lsl r1, r4, #2
	ldr r0, [r2, r1]
	add r0, r0, #1
	str r0, [r2, r1]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0224B850
_02241916:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224191C: .word 0x00002D8C
_02241920: .word 0x0000213C
	thumb_func_end ov16_022418C0

	thumb_func_start ov16_02241924
ov16_02241924: ; 0x02241924
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r2, [r4, #0x74]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02265D98
	ldr r0, [r4, #0x74]
	bl sub_020787CC
	ldr r2, _02241980 ; =0x0000213C
	lsl r3, r0, #0x18
	mov r0, #0
	mvn r0, r0
	ldr r1, [r4, r2]
	eor r0, r3
	and r0, r1
	str r0, [r4, r2]
	ldr r0, [r4, #0x74]
	bl sub_020787CC
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	lsl r0, r0, #0x1c
	orr r0, r2
	str r0, [r4, r1]
	ldr r0, [r4, #0x74]
	mov r2, #0x27
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, #0x68
	str r2, [r0, r1]
	ldr r2, [r4, #0x74]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02254744
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02241980: .word 0x0000213C
	thumb_func_end ov16_02241924

	thumb_func_start ov16_02241984
ov16_02241984: ; 0x02241984
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	bne _022419BE
	ldr r0, _02241A10 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	ldr r0, _02241A14 ; =0x00000C03
	tst r0, r1
	bne _022419B8
	bl sub_02022798
	cmp r0, #0
	beq _022419BE
_022419B8:
	add r0, r5, #0
	add r0, #0xf0
	str r6, [r0, #0]
_022419BE:
	ldr r1, [r4, #0x2c]
	mov r0, #4
	tst r0, r1
	beq _022419D4
	ldr r0, _02241A18 ; =0x0000240C
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _022419D4
	mov r4, #2
	b _022419D6
_022419D4:
	mov r4, #1
_022419D6:
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	cmp r6, r0
	ble _022419F4
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl ov16_02248AF0
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, r4
	b _022419F6
_022419F4:
	mov r1, #0
_022419F6:
	add r0, r5, #0
	add r0, #0xf0
	str r1, [r0, #0]
	ldr r1, _02241A1C ; =0x00003154
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02241A10: .word 0x021BF67C
_02241A14: .word 0x00000C03
_02241A18: .word 0x0000240C
_02241A1C: .word 0x00003154
	thumb_func_end ov16_02241984

	thumb_func_start ov16_02241A20
ov16_02241A20: ; 0x02241A20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_02265EAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02241A20

	thumb_func_start ov16_02241A58
ov16_02241A58: ; 0x02241A58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r6, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r6, #0
	bl ov16_02248AD0
	add r5, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r6, #0
	bl ov16_02248B10
	cmp r7, #6
	bhi _02241AF6
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241AA2: ; jump table
	.short _02241AB0 - _02241AA2 - 2 ; case 0
	.short _02241ABA - _02241AA2 - 2 ; case 1
	.short _02241AC4 - _02241AA2 - 2 ; case 2
	.short _02241ACE - _02241AA2 - 2 ; case 3
	.short _02241AD8 - _02241AA2 - 2 ; case 4
	.short _02241AE2 - _02241AA2 - 2 ; case 5
	.short _02241AEC - _02241AA2 - 2 ; case 6
_02241AB0:
	ldr r0, [r0, #0]
	cmp r0, r4
	beq _02241AF6
	mov r5, #0
	b _02241AF6
_02241ABA:
	ldr r0, [r0, #0]
	cmp r0, r4
	bne _02241AF6
	mov r5, #0
	b _02241AF6
_02241AC4:
	ldr r0, [r0, #0]
	cmp r0, r4
	bgt _02241AF6
	mov r5, #0
	b _02241AF6
_02241ACE:
	ldr r0, [r0, #0]
	cmp r0, r4
	ble _02241AF6
	mov r5, #0
	b _02241AF6
_02241AD8:
	ldr r0, [r0, #0]
	tst r0, r4
	bne _02241AF6
	mov r5, #0
	b _02241AF6
_02241AE2:
	ldr r0, [r0, #0]
	tst r0, r4
	beq _02241AF6
	mov r5, #0
	b _02241AF6
_02241AEC:
	ldr r0, [r0, #0]
	and r0, r4
	cmp r4, r0
	beq _02241AF6
	mov r5, #0
_02241AF6:
	cmp r5, #0
	beq _02241B02
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_02248AF0
_02241B02:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02241A58

	thumb_func_start ov16_02241B08
ov16_02241B08: ; 0x02241B08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r6, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r6, #0
	bl ov16_02248AD0
	add r5, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r6, #0
	bl ov16_0224A984
	add r1, r0, #0
	ldr r2, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl ov16_02252060
	cmp r7, #6
	bhi _02241BAC
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02241B66: ; jump table
	.short _02241B74 - _02241B66 - 2 ; case 0
	.short _02241B7C - _02241B66 - 2 ; case 1
	.short _02241B84 - _02241B66 - 2 ; case 2
	.short _02241B8C - _02241B66 - 2 ; case 3
	.short _02241B94 - _02241B66 - 2 ; case 4
	.short _02241B9C - _02241B66 - 2 ; case 5
	.short _02241BA4 - _02241B66 - 2 ; case 6
_02241B74:
	cmp r0, r4
	beq _02241BAC
	mov r5, #0
	b _02241BAC
_02241B7C:
	cmp r0, r4
	bne _02241BAC
	mov r5, #0
	b _02241BAC
_02241B84:
	cmp r0, r4
	bgt _02241BAC
	mov r5, #0
	b _02241BAC
_02241B8C:
	cmp r0, r4
	ble _02241BAC
	mov r5, #0
	b _02241BAC
_02241B94:
	tst r0, r4
	bne _02241BAC
	mov r5, #0
	b _02241BAC
_02241B9C:
	tst r0, r4
	beq _02241BAC
	mov r5, #0
	b _02241BAC
_02241BA4:
	and r0, r4
	cmp r4, r0
	beq _02241BAC
	mov r5, #0
_02241BAC:
	cmp r5, #0
	beq _02241BB8
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_02248AF0
_02241BB8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02241B08

	thumb_func_start ov16_02241BC0
ov16_02241BC0: ; 0x02241BC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02265ECC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02241BC0

	thumb_func_start ov16_02241BDC
ov16_02241BDC: ; 0x02241BDC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248B00
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov16_02241BDC

	thumb_func_start ov16_02241BFC
ov16_02241BFC: ; 0x02241BFC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r2, _02241C20 ; =0x00003044
	add r0, r4, #0
	ldr r2, [r4, r2]
	mov r1, #0x1e
	lsl r2, r2, #4
	add r3, r4, r2
	ldr r2, _02241C24 ; =0x000003DE
	ldrh r2, [r3, r2]
	bl ov16_02248B00
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02241C20: .word 0x00003044
_02241C24: .word 0x000003DE
	thumb_func_end ov16_02241BFC

	thumb_func_start ov16_02241C28
ov16_02241C28: ; 0x02241C28
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	ldr r2, _02241CC0 ; =0x0000213C
	mov r1, #1
	ldr r3, [r4, r2]
	bic r3, r1
	str r3, [r4, r2]
	ldr r3, [r4, r2]
	ldr r1, _02241CC4 ; =0xFFFFBFFF
	and r1, r3
	mov r3, #0x49
	lsl r3, r3, #2
	str r1, [r4, r2]
	ldr r2, [r4, r3]
	ldr r1, _02241CC8 ; =0x00003044
	cmp r0, #0
	str r2, [r4, r1]
	bne _02241C98
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [r4, r3]
	ldr r2, [r4, #0x64]
	lsl r3, r3, #0x10
	add r0, r5, #0
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov16_02253954
	str r0, [r4, #0x6c]
	mov r3, #0x49
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r2, [r4, #0x64]
	lsl r3, r3, #0x10
	add r0, r5, #0
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov16_02253C98
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02241CCC ; =0x000021AC
	str r2, [r1, r0]
_02241C98:
	ldr r0, [r4, #0x6c]
	cmp r0, #0xff
	bne _02241CAE
	mov r2, #0x26
	str r2, [r4, #0xc]
	add r0, r4, #0
	mov r1, #1
	add r2, #0xf3
	bl ov16_02248B00
	b _02241CBA
_02241CAE:
	ldr r2, _02241CC8 ; =0x00003044
	add r0, r4, #0
	ldr r2, [r4, r2]
	mov r1, #0
	bl ov16_02248B00
_02241CBA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02241CC0: .word 0x0000213C
_02241CC4: .word 0xFFFFBFFF
_02241CC8: .word 0x00003044
_02241CCC: .word 0x000021AC
	thumb_func_end ov16_02241C28

	thumb_func_start ov16_02241CD0
ov16_02241CD0: ; 0x02241CD0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	bne _02241CFA
	add r0, r5, #0
	bl ov16_0223EBEC
	mov r1, #1
	tst r0, r1
	beq _02241D02
_02241CFA:
	ldr r0, _02241D2C ; =0x00002150
	mov r1, #1
	str r1, [r4, r0]
	b _02241D26
_02241D02:
	ldr r3, [r4, #0x6c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov16_0225B45C
	ldr r1, _02241D30 ; =0x0000214C
	ldr r1, [r4, r1]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x6c]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225AEE4
	ldr r1, _02241D2C ; =0x00002150
	str r0, [r4, r1]
_02241D26:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02241D2C: .word 0x00002150
_02241D30: .word 0x0000214C
	thumb_func_end ov16_02241CD0

	thumb_func_start ov16_02241D34
ov16_02241D34: ; 0x02241D34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r0, #0
	bl ov16_0223DF0C
	add r4, r0, #0
	ldr r1, [r5, #0x74]
	add r0, r7, #0
	bl ov16_0223DF14
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r1, r0, #0
	ldr r0, _02241EA8 ; =0x00000195
	ldrb r2, [r6, r0]
	mov r0, #1
	tst r0, r2
	beq _02241D6E
	mov r0, #0xa9
	lsl r0, r0, #2
	tst r0, r4
	beq _02241D70
_02241D6E:
	b _02241E9C
_02241D70:
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r4, r0, #0
	add r0, r7, #0
	bl ov16_0223DF20
	bl sub_0207A0F8
	cmp r0, #0
	ble _02241DFE
_02241D88:
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	bl ov16_0223DFAC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02241DEC
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02241DEC
	add r0, r4, #0
	bl sub_020787CC
	ldr r1, [r5, #0x74]
	asr r1, r1, #1
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	add r1, r5, r1
	add r1, #0xa4
	ldr r1, [r1, #0]
	tst r0, r1
	beq _02241DCC
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02241DCC:
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r5, #0
	mov r2, #1
	bl ov16_0225B0FC
	cmp r0, #0x33
	bne _02241DEC
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
_02241DEC:
	add r0, r7, #0
	mov r1, #0
	add r4, r4, #1
	bl ov16_0223DF20
	bl sub_0207A0F8
	cmp r4, r0
	blt _02241D88
_02241DFE:
	ldr r1, [r5, #0x74]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	mov r1, #9
	bl sub_020759F0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r2, [r5, #0x74]
	mov r0, #0xc0
	mul r0, r2
	add r2, r5, r0
	ldr r0, _02241EAC ; =0x00002D74
	ldrb r0, [r2, r0]
	mul r0, r1
	mov r1, #7
	bl _s32_div_f
	lsl r0, r0, #0x10
	ldr r1, [sp]
	lsr r0, r0, #0x10
	cmp r1, #0
	beq _02241E76
	lsr r4, r0, #1
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl _s32_div_f
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02241E56
	add r0, r5, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0, #0]
_02241E56:
	ldr r1, [sp]
	add r0, r4, #0
	bl _s32_div_f
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02241EA2
	mov r0, #1
	add r5, #0xa0
	str r0, [r5, #0]
	b _02241EA2
_02241E76:
	ldr r1, [sp, #4]
	bl _s32_div_f
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02241E94
	add r0, r5, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0, #0]
_02241E94:
	mov r0, #0
	add r5, #0xa0
	str r0, [r5, #0]
	b _02241EA2
_02241E9C:
	add r0, r5, #0
	bl ov16_02248AF0
_02241EA2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241EA8: .word 0x00000195
_02241EAC: .word 0x00002D74
	thumb_func_end ov16_02241D34

	thumb_func_start ov16_02241EB0
ov16_02241EB0: ; 0x02241EB0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r0, #5
	mov r1, #0x58
	bl sub_02018144
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r2, #0
	str r5, [r0, #0]
	ldr r0, [r4, r1]
	str r4, [r0, #4]
	ldr r0, [r4, r1]
	str r2, [r0, #0x28]
	ldr r0, [r4, r1]
	str r2, [r0, #0x48]
	ldr r0, _02241EEC ; =ov16_02248E74
	ldr r1, [r4, r1]
	bl sub_0200D9E8
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02241EEC: .word ov16_02248E74
	thumb_func_end ov16_02241EB0

	thumb_func_start ov16_02241EF0
ov16_02241EF0: ; 0x02241EF0
	push {r4, lr}
	mov r0, #0x5e
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02241F06
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
_02241F06:
	ldr r1, _02241F18 ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02241F18: .word 0x00003154
	thumb_func_end ov16_02241EF0

	thumb_func_start ov16_02241F1C
ov16_02241F1C: ; 0x02241F1C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02241F1C

	thumb_func_start ov16_02241F34
ov16_02241F34: ; 0x02241F34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #8]
	add r6, r0, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	ldr r0, [sp, #8]
	mov r1, #1
	bl ov16_02248AF0
	mov r4, #0
	add r5, r4, #0
	cmp r7, #0
	ble _02241F8C
	ldr r0, [sp, #8]
	str r0, [sp, #0xc]
_02241F56:
	mov r0, #0x4f
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _02241F80
	add r0, r5, #0
	bl sub_020787CC
	orr r4, r0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #1
	bl ov16_02265A8C
_02241F80:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, r0, #4
	str r0, [sp, #0xc]
	cmp r5, r7
	blt _02241F56
_02241F8C:
	mov r5, #0
	cmp r7, #0
	ble _02241FE4
_02241F92:
	add r0, r6, #0
	bl ov16_0223DF0C
	cmp r0, #7
	bne _02241FCC
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0223E258
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_020787CC
	tst r0, r4
	bne _02241FDE
	ldr r0, [sp, #0x10]
	bl sub_020787CC
	tst r0, r4
	bne _02241FDE
	add r0, r5, #0
	bl sub_020787CC
	orr r4, r0
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_022666E0
	b _02241FDE
_02241FCC:
	add r0, r5, #0
	bl sub_020787CC
	tst r0, r4
	bne _02241FDE
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_022666E0
_02241FDE:
	add r5, r5, #1
	cmp r5, r7
	blt _02241F92
_02241FE4:
	mov r0, #0
	cmp r7, #0
	ble _02242006
	mov r1, #0x4f
	ldr r4, [sp, #8]
	lsl r1, r1, #2
	mov r2, #1
_02241FF2:
	ldr r3, [r4, r1]
	tst r3, r2
	beq _02241FFE
	ldr r1, [sp, #8]
	str r0, [r1, #0x78]
	b _02242006
_02241FFE:
	add r0, r0, #1
	add r4, r4, #4
	cmp r0, r7
	blt _02241FF2
_02242006:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_02241F34

	thumb_func_start ov16_0224200C
ov16_0224200C: ; 0x0224200C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r5, r1, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	mov r6, #0
	add r0, r6, #0
	cmp r7, #0
	ble _0224203A
	mov r4, #0x4f
	add r1, r5, #0
	lsl r4, r4, #2
	mov r2, #1
_0224202A:
	ldr r3, [r1, r4]
	tst r3, r2
	beq _02242032
	add r6, r6, #1
_02242032:
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, r7
	blt _0224202A
_0224203A:
	mov r4, #0
	cmp r7, #0
	ble _022420B6
	str r5, [sp, #8]
	str r5, [sp, #4]
_02242044:
	mov r0, #0x4f
	ldr r1, [sp, #8]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _022420A0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _022420A0
	mov r0, #0x23
	ldr r1, [sp, #4]
	lsl r0, r0, #8
	ldrb r0, [r1, r0]
	add r1, r5, r4
	sub r6, r6, #1
	sub r2, r0, #1
	ldr r0, _02242128 ; =0x000021A0
	strb r2, [r1, r0]
	add r0, r4, #0
	bl sub_020787CC
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	lsl r0, r0, #0x18
	tst r0, r1
	bne _022420A0
	add r0, r4, #0
	bl sub_020787CC
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	lsl r0, r0, #0x18
	orr r1, r0
	mov r0, #0x85
	lsl r0, r0, #6
	str r1, [r5, r0]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_022666E0
_022420A0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	add r4, r4, #1
	str r0, [sp, #4]
	cmp r4, r7
	blt _02242044
_022420B6:
	cmp r6, #0
	bne _02242112
	mov r4, #0
	cmp r7, #0
	ble _022420FE
	str r5, [sp, #0xc]
	add r6, r5, #0
_022420C4:
	mov r0, #0x4f
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _022420EC
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _022420EC
	mov r2, #0x23
	lsl r2, r2, #8
	ldrb r2, [r6, r2]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223F500
_022420EC:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	lsl r0, r0, #8
	add r6, r6, r0
	cmp r4, r7
	blt _022420C4
_022420FE:
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	ldr r0, _0224212C ; =0xF0FFFFFF
	and r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
_02242112:
	ldr r1, _02242130 ; =0x00003154
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242128: .word 0x000021A0
_0224212C: .word 0xF0FFFFFF
_02242130: .word 0x00003154
	thumb_func_end ov16_0224200C

	thumb_func_start ov16_02242134
ov16_02242134: ; 0x02242134
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	cmp r0, #1
	beq _02242156
	cmp r0, #6
	beq _0224215A
	cmp r0, #0x12
	beq _0224215E
	b _02242160
_02242156:
	ldr r4, [r5, #0x64]
	b _02242160
_0224215A:
	ldr r4, [r5, #0x78]
	b _02242160
_0224215E:
	ldr r4, [r5, #0x6c]
_02242160:
	mov r0, #0x4f
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r4, #2
	ldr r1, [r3, r2]
	mov r0, #1
	bic r1, r0
	add r0, r4, #0
	str r1, [r3, r2]
	bl sub_020787CC
	ldr r3, _022421C4 ; =0x00003108
	mov r2, #0
	mvn r2, r2
	eor r0, r2
	ldrb r1, [r5, r3]
	add r2, r4, #0
	and r0, r1
	ldr r1, _022421C8 ; =0x000021A0
	strb r0, [r5, r3]
	add r0, r5, r1
	sub r1, r1, #4
	add r6, r5, r1
	ldrb r1, [r0, r4]
	strb r1, [r6, r4]
	mov r1, #6
	strb r1, [r0, r4]
	ldrb r3, [r6, r4]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0225177C
	ldrb r3, [r6, r4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0225A200
	ldr r0, _022421CC ; =0x00002E4C
	add r2, r4, #0
	ldr r1, [r5, r0]
	ldr r0, _022421D0 ; =0x00003122
	strh r1, [r5, r0]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0225433C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022421C4: .word 0x00003108
_022421C8: .word 0x000021A0
_022421CC: .word 0x00002E4C
_022421D0: .word 0x00003122
	thumb_func_end ov16_02242134

	thumb_func_start ov16_022421D4
ov16_022421D4: ; 0x022421D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl ov16_0223DF1C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	mov r0, #0
	cmp r4, #0
	ble _02242216
	mov r2, #0x4f
	add r1, r5, #0
	lsl r2, r2, #2
	mov r3, #1
_022421FC:
	ldr r6, [r1, r2]
	tst r6, r3
	beq _0224220E
	str r0, [r5, #0x78]
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
	b _02242216
_0224220E:
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, r4
	blt _022421FC
_02242216:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_022421D4

	thumb_func_start ov16_0224221C
ov16_0224221C: ; 0x0224221C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	mov r0, #5
	mov r1, #0x58
	bl sub_02018144
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r2, #0
	str r5, [r0, #0]
	ldr r0, [r4, r1]
	str r4, [r0, #4]
	ldr r0, [r4, r1]
	str r2, [r0, #0x28]
	ldr r0, [r4, r1]
	str r6, [r0, #0x24]
	add r0, r1, #0
	sub r0, #0x50
	ldr r3, [r4, r0]
	ldr r0, [r4, r1]
	str r3, [r0, #0x2c]
	ldr r0, _02242268 ; =ov16_02249B80
	ldr r1, [r4, r1]
	bl sub_0200D9E8
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02242268: .word ov16_02249B80
	thumb_func_end ov16_0224221C

	thumb_func_start ov16_0224226C
ov16_0224226C: ; 0x0224226C
	push {r4, lr}
	mov r0, #0x5e
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02242282
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
_02242282:
	ldr r1, _02242294 ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02242294: .word 0x00003154
	thumb_func_end ov16_0224226C

	thumb_func_start ov16_02242298
ov16_02242298: ; 0x02242298
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	ldr r0, _02242304 ; =0x0000217D
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _02242300
	cmp r4, #0
	bne _022422F0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x5c
	bne _022422D2
	mov r4, #5
	b _022422F0
_022422D2:
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #3
	and r0, r1
	cmp r0, #2
	bge _022422E4
	add r4, r0, #2
	b _022422F0
_022422E4:
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #3
	and r0, r1
	add r4, r0, #2
_022422F0:
	lsl r0, r4, #0x18
	ldr r1, _02242308 ; =0x0000217C
	lsr r2, r0, #0x18
	strb r2, [r5, r1]
	add r0, r1, #1
	strb r2, [r5, r0]
	add r1, #0xc
	str r7, [r5, r1]
_02242300:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242304: .word 0x0000217D
_02242308: .word 0x0000217C
	thumb_func_end ov16_02242298

	thumb_func_start ov16_0224230C
ov16_0224230C: ; 0x0224230C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r4, #0
	bl ov16_02248AD0
	add r5, r0, #0
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_02248B10
	add r4, r0, #0
	cmp r6, #0x14
	bhi _022423F6
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224234E: ; jump table
	.short _022423F6 - _0224234E - 2 ; case 0
	.short _022423F6 - _0224234E - 2 ; case 1
	.short _022423F6 - _0224234E - 2 ; case 2
	.short _022423F6 - _0224234E - 2 ; case 3
	.short _022423F6 - _0224234E - 2 ; case 4
	.short _022423F6 - _0224234E - 2 ; case 5
	.short _022423F6 - _0224234E - 2 ; case 6
	.short _02242378 - _0224234E - 2 ; case 7
	.short _0224237C - _0224234E - 2 ; case 8
	.short _02242384 - _0224234E - 2 ; case 9
	.short _0224238C - _0224234E - 2 ; case 10
	.short _02242394 - _0224234E - 2 ; case 11
	.short _022423A2 - _0224234E - 2 ; case 12
	.short _022423AC - _0224234E - 2 ; case 13
	.short _022423B8 - _0224234E - 2 ; case 14
	.short _022423C0 - _0224234E - 2 ; case 15
	.short _022423C8 - _0224234E - 2 ; case 16
	.short _022423D2 - _0224234E - 2 ; case 17
	.short _022423D8 - _0224234E - 2 ; case 18
	.short _022423E6 - _0224234E - 2 ; case 19
	.short _022423EE - _0224234E - 2 ; case 20
_02242378:
	str r5, [r4, #0]
	b _022423FA
_0224237C:
	ldr r0, [r4, #0]
	add r0, r0, r5
	str r0, [r4, #0]
	b _022423FA
_02242384:
	ldr r0, [r4, #0]
	sub r0, r0, r5
	str r0, [r4, #0]
	b _022423FA
_0224238C:
	ldr r0, [r4, #0]
	orr r0, r5
	str r0, [r4, #0]
	b _022423FA
_02242394:
	mov r0, #0
	mvn r0, r0
	ldr r1, [r4, #0]
	eor r0, r5
	and r0, r1
	str r0, [r4, #0]
	b _022423FA
_022423A2:
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r5
	str r1, [r4, #0]
	b _022423FA
_022423AC:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl _s32_div_f
	str r0, [r4, #0]
	b _022423FA
_022423B8:
	ldr r0, [r4, #0]
	lsl r0, r5
	str r0, [r4, #0]
	b _022423FA
_022423C0:
	ldr r0, [r4, #0]
	lsr r0, r5
	str r0, [r4, #0]
	b _022423FA
_022423C8:
	add r0, r5, #0
	bl sub_020787CC
	str r0, [r4, #0]
	b _022423FA
_022423D2:
	bl sub_02022974
	b _022423FA
_022423D8:
	ldr r0, [r4, #0]
	sub r0, r0, r5
	str r0, [r4, #0]
	bpl _022423FA
	mov r0, #0
	str r0, [r4, #0]
	b _022423FA
_022423E6:
	ldr r0, [r4, #0]
	eor r0, r5
	str r0, [r4, #0]
	b _022423FA
_022423EE:
	ldr r0, [r4, #0]
	and r0, r5
	str r0, [r4, #0]
	b _022423FA
_022423F6:
	bl sub_02022974
_022423FA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0224230C

	thumb_func_start ov16_02242400
ov16_02242400: ; 0x02242400
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #0xb5
	add r5, r1, #0
	lsl r0, r0, #6
	add r2, r5, r0
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r6, r2, r0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov16_02248AD0
	ldr r1, _02242764 ; =0x0000213C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, r1]
	ldr r0, _02242768 ; =0xFFFDFFFF
	and r2, r0
	str r2, [r5, r1]
	add r1, r5, #0
	add r1, #0x8c
	ldr r4, [r1, #0]
	cmp r4, #0x2e
	blt _02242460
	asr r7, r0, #0x11
	mov r0, #0x4e
	mov r1, #0xd
	lsl r0, r0, #2
	sub r4, #0x2e
	str r1, [r5, r0]
	b _02242490
_02242460:
	cmp r4, #0x27
	blt _02242472
	mov r0, #0x4e
	mov r1, #0xc
	lsl r0, r0, #2
	sub r4, #0x27
	mov r7, #2
	str r1, [r5, r0]
	b _02242490
_02242472:
	cmp r4, #0x16
	blt _02242484
	asr r7, r0, #0x12
	mov r0, #0x4e
	mov r1, #0xd
	lsl r0, r0, #2
	sub r4, #0x16
	str r1, [r5, r0]
	b _02242490
_02242484:
	mov r0, #0x4e
	mov r1, #0xc
	lsl r0, r0, #2
	sub r4, #0xf
	mov r7, #1
	str r1, [r5, r0]
_02242490:
	cmp r7, #0
	bgt _02242496
	b _022425CE
_02242496:
	add r1, r4, #1
	add r6, #0x18
	add r0, r6, r1
	str r0, [sp, #4]
	ldrsb r0, [r6, r1]
	cmp r0, #0xc
	bne _022424FA
	ldr r1, _02242764 ; =0x0000213C
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0x10
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	sub r0, r0, #2
	cmp r0, #1
	bhi _022424C6
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov16_02248AF0
	b _022429F4
_022424C6:
	add r0, r5, #0
	mov r1, #0x8e
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r4, #1
	add r0, #0xfc
	str r1, [r0, #0]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov16_02248AF0
	b _022429F4
_022424FA:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #3
	bne _02242546
	add r0, r5, #0
	ldr r1, _0224276C ; =0x0000026E
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x27
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02242770 ; =0x00002D67
	add r2, r5, r2
	ldrb r2, [r2, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r2, [r0, #0]
	add r0, r4, #1
	add r1, #0x40
	str r0, [r5, r1]
	b _022425B2
_02242546:
	cmp r0, #5
	bne _02242582
	mov r1, #0xbd
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x2d
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	add r0, r5, #0
	add r0, #0xfc
	str r2, [r0, #0]
	add r0, r4, #1
	sub r1, #0x28
	str r0, [r5, r1]
	b _022425B2
_02242582:
	cmp r7, #1
	bne _0224258A
	ldr r1, _02242774 ; =0x000002EE
	b _0224258C
_0224258A:
	ldr r1, _02242778 ; =0x000002F1
_0224258C:
	add r0, r5, #0
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r4, #1
	add r5, #0xfc
	str r0, [r5, #0]
_022425B2:
	ldr r0, [sp, #4]
	mov r1, #0
	ldrsb r0, [r0, r1]
	add r2, r0, r7
	ldr r0, [sp, #4]
	strb r2, [r0]
	ldrsb r0, [r0, r1]
	cmp r0, #0xc
	bgt _022425C6
	b _022429F4
_022425C6:
	ldr r0, [sp, #4]
	mov r1, #0xc
	strb r1, [r0]
	b _022429F4
_022425CE:
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0, #0]
	mov r0, #2
	lsl r0, r0, #0x1a
	tst r1, r0
	beq _022425DE
	b _02242958
_022425DE:
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	ldr r2, [r5, #0x64]
	cmp r2, r1
	bne _022425EC
	b _022428A0
_022425EC:
	ldr r0, [sp]
	bl ov16_0223E208
	lsl r0, r0, #3
	mov r1, #0x71
	add r0, r5, r0
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1d
	beq _0224262A
	add r0, r5, #0
	sub r1, #0xb3
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #2
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	mov r0, #1
	str r0, [sp, #8]
	b _02242908
_0224262A:
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2, #0]
	add r0, r5, #0
	mov r3, #0x1d
	bl ov16_02255AB4
	cmp r0, #1
	beq _02242652
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2, #0]
	add r0, r5, #0
	mov r3, #0x49
	bl ov16_02255AB4
	cmp r0, #1
	bne _022426F4
_02242652:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #3
	bne _022426B6
	add r0, r5, #0
	ldr r1, _0224277C ; =0x000002D7
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x35
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02242770 ; =0x00002D67
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0, #0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255560
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r5, r1]
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02242770 ; =0x00002D67
	add r2, r5, r2
	ldrb r0, [r2, r0]
	add r1, #0x44
	str r0, [r5, r1]
	b _022426EE
_022426B6:
	add r0, r5, #0
	ldr r1, _02242780 ; =0x0000029D
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xb
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02242770 ; =0x00002D67
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0, #0]
_022426EE:
	mov r0, #1
	str r0, [sp, #8]
	b _02242908
_022426F4:
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2, #0]
	add r0, r5, #0
	mov r3, #0x33
	bl ov16_02255AB4
	cmp r0, #1
	bne _0224270E
	add r0, r4, #1
	cmp r0, #6
	beq _02242726
_0224270E:
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2, #0]
	add r0, r5, #0
	mov r3, #0x34
	bl ov16_02255AB4
	cmp r0, #1
	bne _022427F4
	cmp r4, #0
	bne _022427F4
_02242726:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #3
	bne _022427AC
	add r0, r5, #0
	ldr r1, _0224277C ; =0x000002D7
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x35
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02242770 ; =0x00002D67
	b _02242784
	nop
_02242764: .word 0x0000213C
_02242768: .word 0xFFFDFFFF
_0224276C: .word 0x0000026E
_02242770: .word 0x00002D67
_02242774: .word 0x000002EE
_02242778: .word 0x000002F1
_0224277C: .word 0x000002D7
_02242780: .word 0x0000029D
_02242784:
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0, #0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255560
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r5, r1]
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _022429FC ; =0x00002D67
	add r2, r5, r2
	ldrb r0, [r2, r0]
	add r1, #0x44
	b _022427EC
_022427AC:
	mov r1, #0xb
	add r0, r5, #0
	lsl r1, r1, #6
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x27
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _022429FC ; =0x00002D67
	add r2, r5, r2
	ldrb r2, [r2, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r2, [r0, #0]
	add r0, r4, #1
	add r1, #0x40
_022427EC:
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp, #8]
	b _02242908
_022427F4:
	add r0, r4, #1
	add r1, r6, r0
	mov r0, #0x18
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0224285E
	ldr r1, _02242A00 ; =0x0000213C
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0x10
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	sub r0, r0, #2
	cmp r0, #1
	bhi _02242826
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov16_02248AF0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242826:
	add r0, r5, #0
	mov r1, #0x91
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r4, #1
	add r0, #0xfc
	str r1, [r0, #0]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov16_02248AF0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224285E:
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2, #0]
	add r0, r5, #0
	mov r3, #0x13
	bl ov16_02255AB4
	cmp r0, #1
	bne _02242882
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _02242882
	mov r0, #1
	str r0, [sp, #8]
	b _02242908
_02242882:
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02242A04 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r1
	beq _02242908
	mov r0, #2
	str r0, [sp, #8]
	b _02242908
_022428A0:
	add r1, r4, #1
	add r2, r6, r1
	mov r1, #0x18
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bne _02242908
	ldr r1, _02242A00 ; =0x0000213C
	lsr r0, r0, #0xa
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	sub r0, r0, #2
	cmp r0, #1
	bhi _022428D0
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov16_02248AF0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022428D0:
	add r0, r5, #0
	mov r1, #0x91
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r4, #1
	add r0, #0xfc
	str r1, [r0, #0]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov16_02248AF0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242908:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _02242926
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02242926
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov16_02248AF0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242926:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02242944
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _02242944
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov16_02248AF0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242944:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02242958
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov16_02248AF0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242958:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #3
	bne _022429AC
	add r0, r5, #0
	ldr r1, _02242A08 ; =0x00000296
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x36
	add r0, #0xf5
	strb r1, [r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022429FC ; =0x00002D67
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0, #0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r5, r1]
	add r2, r4, #1
	add r0, r1, #4
	str r2, [r5, r0]
	b _022429E0
_022429AC:
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _022429B8
	ldr r1, _02242A0C ; =0x000002FA
	b _022429BA
_022429B8:
	ldr r1, _02242A10 ; =0x000002FD
_022429BA:
	add r0, r5, #0
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r4, #1
	add r5, #0xfc
	str r0, [r5, #0]
_022429E0:
	add r6, #0x18
	add r1, r4, #1
	ldrsb r0, [r6, r1]
	add r0, r0, r7
	strb r0, [r6, r1]
	ldrsb r0, [r6, r1]
	cmp r0, #0
	bge _022429F4
	mov r0, #0
	strb r0, [r6, r1]
_022429F4:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022429FC: .word 0x00002D67
_02242A00: .word 0x0000213C
_02242A04: .word 0x00002DB0
_02242A08: .word 0x00000296
_02242A0C: .word 0x000002FA
_02242A10: .word 0x000002FD
	thumb_func_end ov16_02242400

	thumb_func_start ov16_02242A14
ov16_02242A14: ; 0x02242A14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r5, #0
	bl ov16_0224A984
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0xc]
	cmp r7, #0x14
	bhi _02242B00
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242A6E: ; jump table
	.short _02242B00 - _02242A6E - 2 ; case 0
	.short _02242B00 - _02242A6E - 2 ; case 1
	.short _02242B00 - _02242A6E - 2 ; case 2
	.short _02242B00 - _02242A6E - 2 ; case 3
	.short _02242B00 - _02242A6E - 2 ; case 4
	.short _02242B00 - _02242A6E - 2 ; case 5
	.short _02242B00 - _02242A6E - 2 ; case 6
	.short _02242A98 - _02242A6E - 2 ; case 7
	.short _02242A9C - _02242A6E - 2 ; case 8
	.short _02242AA2 - _02242A6E - 2 ; case 9
	.short _02242AA8 - _02242A6E - 2 ; case 10
	.short _02242AAE - _02242A6E - 2 ; case 11
	.short _02242ABA - _02242A6E - 2 ; case 12
	.short _02242AC2 - _02242A6E - 2 ; case 13
	.short _02242ACC - _02242A6E - 2 ; case 14
	.short _02242AD2 - _02242A6E - 2 ; case 15
	.short _02242AD8 - _02242A6E - 2 ; case 16
	.short _02242AE2 - _02242A6E - 2 ; case 17
	.short _02242AE8 - _02242A6E - 2 ; case 18
	.short _02242AF4 - _02242A6E - 2 ; case 19
	.short _02242AFA - _02242A6E - 2 ; case 20
_02242A98:
	str r4, [sp, #0xc]
	b _02242B04
_02242A9C:
	add r0, r0, r4
	str r0, [sp, #0xc]
	b _02242B04
_02242AA2:
	sub r0, r0, r4
	str r0, [sp, #0xc]
	b _02242B04
_02242AA8:
	orr r0, r4
	str r0, [sp, #0xc]
	b _02242B04
_02242AAE:
	mov r1, #0
	mvn r1, r1
	eor r1, r4
	and r0, r1
	str r0, [sp, #0xc]
	b _02242B04
_02242ABA:
	add r1, r0, #0
	mul r1, r4
	str r1, [sp, #0xc]
	b _02242B04
_02242AC2:
	add r1, r4, #0
	bl _s32_div_f
	str r0, [sp, #0xc]
	b _02242B04
_02242ACC:
	lsl r0, r4
	str r0, [sp, #0xc]
	b _02242B04
_02242AD2:
	lsr r0, r4
	str r0, [sp, #0xc]
	b _02242B04
_02242AD8:
	add r0, r4, #0
	bl sub_020787CC
	str r0, [sp, #0xc]
	b _02242B04
_02242AE2:
	bl sub_02022974
	b _02242B04
_02242AE8:
	sub r0, r0, r4
	str r0, [sp, #0xc]
	bpl _02242B04
	mov r0, #0
	str r0, [sp, #0xc]
	b _02242B04
_02242AF4:
	eor r0, r4
	str r0, [sp, #0xc]
	b _02242B04
_02242AFA:
	and r0, r4
	str r0, [sp, #0xc]
	b _02242B04
_02242B00:
	bl sub_02022974
_02242B04:
	cmp r6, #0x1a
	bne _02242B1A
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov16_0224B928
_02242B1A:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	add r3, sp, #0xc
	bl ov16_022523E8
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	bl ov16_02253EC0
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02242A14

	thumb_func_start ov16_02242B38
ov16_02242B38: ; 0x02242B38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_0224A984
	ldr r1, _02242B70 ; =0x0000218C
	add r2, r5, r1
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	orr r0, r4
	str r0, [r2, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02242B70: .word 0x0000218C
	thumb_func_end ov16_02242B38

	thumb_func_start ov16_02242B74
ov16_02242B74: ; 0x02242B74
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov16_02265EE8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02242B74

	thumb_func_start ov16_02242BAC
ov16_02242BAC: ; 0x02242BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	cmp r4, #0
	bne _02242C22
	ldr r0, [sp]
	bl ov16_0223DF1C
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02242C64
_02242BEE:
	cmp r7, #0
	bne _02242C0C
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _02242C18
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AF0
	add r5, #0x80
	str r4, [r5, #0]
	b _02242C64
_02242C0C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r6, r0
	beq _02242C64
_02242C18:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02242BEE
	b _02242C64
_02242C22:
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0224A984
	add r4, r0, #0
	cmp r7, #0
	bne _02242C4C
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r6, r0
	bne _02242C64
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AF0
	add r5, #0x80
	str r4, [r5, #0]
	b _02242C64
_02242C4C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r6, r0
	beq _02242C64
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AF0
	add r5, #0x80
	str r4, [r5, #0]
_02242C64:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02242BAC

	thumb_func_start ov16_02242C6C
ov16_02242C6C: ; 0x02242C6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r7, #0
	bl ov16_0223F4BC
	add r1, r4, #1
	bl _s32_div_f
	mov r0, #0x4d
	add r1, r6, r1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02242C6C

	thumb_func_start ov16_02242CA4
ov16_02242CA4: ; 0x02242CA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_02248B10
	add r4, r0, #0
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_02248B10
	add r1, r0, #0
	cmp r6, #0x14
	bhi _02242DB2
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242CF2: ; jump table
	.short _02242DB2 - _02242CF2 - 2 ; case 0
	.short _02242DB2 - _02242CF2 - 2 ; case 1
	.short _02242DB2 - _02242CF2 - 2 ; case 2
	.short _02242DB2 - _02242CF2 - 2 ; case 3
	.short _02242DB2 - _02242CF2 - 2 ; case 4
	.short _02242DB2 - _02242CF2 - 2 ; case 5
	.short _02242DB2 - _02242CF2 - 2 ; case 6
	.short _02242D1C - _02242CF2 - 2 ; case 7
	.short _02242D22 - _02242CF2 - 2 ; case 8
	.short _02242D2C - _02242CF2 - 2 ; case 9
	.short _02242D36 - _02242CF2 - 2 ; case 10
	.short _02242D40 - _02242CF2 - 2 ; case 11
	.short _02242D50 - _02242CF2 - 2 ; case 12
	.short _02242D5A - _02242CF2 - 2 ; case 13
	.short _02242D66 - _02242CF2 - 2 ; case 14
	.short _02242D72 - _02242CF2 - 2 ; case 15
	.short _02242D7E - _02242CF2 - 2 ; case 16
	.short _02242D88 - _02242CF2 - 2 ; case 17
	.short _02242D8E - _02242CF2 - 2 ; case 18
	.short _02242D9E - _02242CF2 - 2 ; case 19
	.short _02242DA8 - _02242CF2 - 2 ; case 20
_02242D1C:
	ldr r0, [r1, #0]
	str r0, [r4, #0]
	b _02242DB6
_02242D22:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	add r0, r2, r0
	str r0, [r4, #0]
	b _02242DB6
_02242D2C:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	sub r0, r2, r0
	str r0, [r4, #0]
	b _02242DB6
_02242D36:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	orr r0, r2
	str r0, [r4, #0]
	b _02242DB6
_02242D40:
	mov r0, #0
	ldr r1, [r1, #0]
	mvn r0, r0
	ldr r2, [r4, #0]
	eor r0, r1
	and r0, r2
	str r0, [r4, #0]
	b _02242DB6
_02242D50:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	mul r0, r2
	str r0, [r4, #0]
	b _02242DB6
_02242D5A:
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl _s32_div_f
	str r0, [r4, #0]
	b _02242DB6
_02242D66:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	add r1, r2, #0
	lsl r1, r0
	str r1, [r4, #0]
	b _02242DB6
_02242D72:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	add r1, r2, #0
	lsr r1, r0
	str r1, [r4, #0]
	b _02242DB6
_02242D7E:
	ldr r0, [r1, #0]
	bl sub_020787CC
	str r0, [r4, #0]
	b _02242DB6
_02242D88:
	ldr r0, [r4, #0]
	str r0, [r1, #0]
	b _02242DB6
_02242D8E:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	sub r0, r2, r0
	str r0, [r4, #0]
	bpl _02242DB6
	mov r0, #0
	str r0, [r4, #0]
	b _02242DB6
_02242D9E:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	eor r0, r2
	str r0, [r4, #0]
	b _02242DB6
_02242DA8:
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	and r0, r2
	str r0, [r4, #0]
	b _02242DB6
_02242DB2:
	bl sub_02022974
_02242DB6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02242CA4

	thumb_func_start ov16_02242DBC
ov16_02242DBC: ; 0x02242DBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r5, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0224A984
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_02248B10
	add r1, r0, #0
	cmp r5, #0x14
	bhi _02242EE2
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242E22: ; jump table
	.short _02242EE2 - _02242E22 - 2 ; case 0
	.short _02242EE2 - _02242E22 - 2 ; case 1
	.short _02242EE2 - _02242E22 - 2 ; case 2
	.short _02242EE2 - _02242E22 - 2 ; case 3
	.short _02242EE2 - _02242E22 - 2 ; case 4
	.short _02242EE2 - _02242E22 - 2 ; case 5
	.short _02242EE2 - _02242E22 - 2 ; case 6
	.short _02242E4C - _02242E22 - 2 ; case 7
	.short _02242E52 - _02242E22 - 2 ; case 8
	.short _02242E5C - _02242E22 - 2 ; case 9
	.short _02242E66 - _02242E22 - 2 ; case 10
	.short _02242E70 - _02242E22 - 2 ; case 11
	.short _02242E80 - _02242E22 - 2 ; case 12
	.short _02242E8A - _02242E22 - 2 ; case 13
	.short _02242E96 - _02242E22 - 2 ; case 14
	.short _02242EA2 - _02242E22 - 2 ; case 15
	.short _02242EAE - _02242E22 - 2 ; case 16
	.short _02242EB8 - _02242E22 - 2 ; case 17
	.short _02242EBE - _02242E22 - 2 ; case 18
	.short _02242ECE - _02242E22 - 2 ; case 19
	.short _02242ED8 - _02242E22 - 2 ; case 20
_02242E4C:
	ldr r0, [r1, #0]
	str r0, [sp, #0xc]
	b _02242EE6
_02242E52:
	ldr r2, [sp, #0xc]
	ldr r0, [r1, #0]
	add r0, r2, r0
	str r0, [sp, #0xc]
	b _02242EE6
_02242E5C:
	ldr r2, [sp, #0xc]
	ldr r0, [r1, #0]
	sub r0, r2, r0
	str r0, [sp, #0xc]
	b _02242EE6
_02242E66:
	ldr r2, [sp, #0xc]
	ldr r0, [r1, #0]
	orr r0, r2
	str r0, [sp, #0xc]
	b _02242EE6
_02242E70:
	ldr r2, [r1, #0]
	mov r1, #0
	mvn r1, r1
	ldr r0, [sp, #0xc]
	eor r1, r2
	and r0, r1
	str r0, [sp, #0xc]
	b _02242EE6
_02242E80:
	ldr r2, [sp, #0xc]
	ldr r0, [r1, #0]
	mul r0, r2
	str r0, [sp, #0xc]
	b _02242EE6
_02242E8A:
	ldr r0, [sp, #0xc]
	ldr r1, [r1, #0]
	bl _s32_div_f
	str r0, [sp, #0xc]
	b _02242EE6
_02242E96:
	ldr r2, [sp, #0xc]
	ldr r0, [r1, #0]
	add r1, r2, #0
	lsl r1, r0
	str r1, [sp, #0xc]
	b _02242EE6
_02242EA2:
	ldr r2, [sp, #0xc]
	ldr r0, [r1, #0]
	add r1, r2, #0
	lsr r1, r0
	str r1, [sp, #0xc]
	b _02242EE6
_02242EAE:
	ldr r0, [r1, #0]
	bl sub_020787CC
	str r0, [sp, #0xc]
	b _02242EE6
_02242EB8:
	ldr r0, [sp, #0xc]
	str r0, [r1, #0]
	b _02242EE6
_02242EBE:
	ldr r2, [sp, #0xc]
	ldr r0, [r1, #0]
	sub r0, r2, r0
	str r0, [sp, #0xc]
	bpl _02242EE6
	mov r0, #0
	str r0, [sp, #0xc]
	b _02242EE6
_02242ECE:
	ldr r2, [sp, #0xc]
	ldr r0, [r1, #0]
	eor r0, r2
	str r0, [sp, #0xc]
	b _02242EE6
_02242ED8:
	ldr r2, [sp, #0xc]
	ldr r0, [r1, #0]
	and r0, r2
	str r0, [sp, #0xc]
	b _02242EE6
_02242EE2:
	bl sub_02022974
_02242EE6:
	cmp r5, #0x11
	beq _02242F16
	cmp r6, #0x1a
	bne _02242F00
	ldr r1, [sp]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov16_0224B928
_02242F00:
	ldr r1, [sp]
	add r0, r4, #0
	add r2, r6, #0
	add r3, sp, #0xc
	bl ov16_022523E8
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_02253EC0
_02242F16:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02242DBC

	thumb_func_start ov16_02242F1C
ov16_02242F1C: ; 0x02242F1C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_02248AF0
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02242F1C

	thumb_func_start ov16_02242F3C
ov16_02242F3C: ; 0x02242F3C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248B08
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov16_02242F3C

	thumb_func_start ov16_02242F5C
ov16_02242F5C: ; 0x02242F5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248B10
	add r2, r0, #0
	ldr r2, [r2, #0]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248B08
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02242F5C

	thumb_func_start ov16_02242F8C
ov16_02242F8C: ; 0x02242F8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	mov r4, #0
	bl ov16_0223DF0C
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r5, #0x64]
	lsl r0, r1, #1
	add r2, r5, r0
	ldr r0, _0224308C ; =0x00003084
	ldrh r2, [r2, r0]
	cmp r2, #0
	beq _02242FB6
	add r4, r2, #0
	b _02243002
_02242FB6:
	mov r2, #2
	tst r2, r7
	beq _02243002
	lsl r1, r1, #3
	add r4, r5, r1
	add r1, r0, #0
	add r1, #0xe
	ldrh r3, [r4, r1]
	add r1, r0, #0
	add r1, #0xc
	ldrh r2, [r4, r1]
	add r1, r0, #0
	add r1, #8
	add r0, #0xa
	ldrh r1, [r4, r1]
	ldrh r0, [r4, r0]
	add r0, r1, r0
	add r0, r2, r0
	add r4, r3, r0
	beq _02243002
	ldr r7, _02243090 ; =0x0000308C
_02242FE0:
	add r0, r6, #0
	bl ov16_0223F4BC
	ldr r1, [r5, #0x64]
	lsl r3, r0, #0x1e
	lsl r2, r1, #3
	lsr r1, r0, #0x1f
	sub r3, r3, r1
	mov r0, #0x1e
	ror r3, r0
	add r0, r1, r3
	lsl r1, r0, #1
	add r0, r5, r2
	add r0, r1, r0
	ldrh r4, [r0, r7]
	cmp r4, #0
	beq _02242FE0
_02243002:
	cmp r4, #0
	beq _0224306C
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov16_0225B084
	cmp r0, #1
	bne _0224306C
	ldr r1, _02243094 ; =0x0000213C
	lsl r3, r4, #0x10
	ldr r2, [r5, r1]
	mov r0, #1
	bic r2, r0
	str r2, [r5, r1]
	ldr r2, [r5, r1]
	ldr r0, _02243098 ; =0xFFFFBFFF
	lsr r3, r3, #0x10
	and r0, r2
	str r0, [r5, r1]
	ldr r0, _0224309C ; =0x00003044
	add r1, r5, #0
	str r4, [r5, r0]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x64]
	add r0, r6, #0
	bl ov16_02253954
	str r0, [r5, #0x6c]
	cmp r0, #0xff
	bne _02243056
	mov r2, #0x26
	str r2, [r5, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, #0xf3
	bl ov16_02248B00
	b _02243086
_02243056:
	ldr r1, [r5, #0x64]
	lsl r1, r1, #4
	add r2, r5, r1
	ldr r1, _022430A0 ; =0x000021AC
	str r0, [r2, r1]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov16_02248B00
	b _02243086
_0224306C:
	ldr r2, [r5, #0x64]
	mov r0, #0xb5
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r2, #0
	mul r3, r1
	add r0, r5, r0
	ldr r2, [r0, r3]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	str r1, [r0, r3]
_02243086:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224308C: .word 0x00003084
_02243090: .word 0x0000308C
_02243094: .word 0x0000213C
_02243098: .word 0xFFFFBFFF
_0224309C: .word 0x00003044
_022430A0: .word 0x000021AC
	thumb_func_end ov16_02242F8C

	thumb_func_start ov16_022430A4
ov16_022430A4: ; 0x022430A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_0223DF1C
	mov r2, #0
	cmp r0, #0
	ble _022430E4
	ldr r6, _022430E8 ; =0x00002D58
	mov r1, #6
	add r5, r6, #0
	add r5, #0x58
_022430C6:
	mov r7, #0
_022430C8:
	add r3, r4, r7
	add r7, r7, #1
	strb r1, [r3, r6]
	cmp r7, #8
	blt _022430C8
	ldr r3, _022430EC ; =0x00002DB0
	add r2, r2, #1
	ldr r7, [r4, r3]
	ldr r3, _022430F0 ; =0xFFEFFFFF
	and r3, r7
	str r3, [r4, r5]
	add r4, #0xc0
	cmp r2, r0
	blt _022430C6
_022430E4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022430E8: .word 0x00002D58
_022430EC: .word 0x00002DB0
_022430F0: .word 0xFFEFFFFF
	thumb_func_end ov16_022430A4

	thumb_func_start ov16_022430F4
ov16_022430F4: ; 0x022430F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02253EF0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_022430F4

	thumb_func_start ov16_02243120
ov16_02243120: ; 0x02243120
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02253F20
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02243120

	thumb_func_start ov16_0224314C
ov16_0224314C: ; 0x0224314C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov16_02265FB8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0224314C

	thumb_func_start ov16_02243184
ov16_02243184: ; 0x02243184
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov16_02265FD8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02243184

	thumb_func_start ov16_022431BC
ov16_022431BC: ; 0x022431BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp]
	mov r0, #5
	mov r1, #0x6c
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp]
	add r6, r7, #0
	lsl r0, r0, #1
	add r6, #0xa0
	str r0, [sp, #4]
	ldrh r0, [r6, r0]
	add r1, sp, #8
	bl sub_0207938C
	ldr r0, [sp, #4]
	add r1, r4, #0
	ldrh r0, [r6, r0]
	bl sub_0207939C
	add r0, sp, #8
	ldrb r1, [r0]
	cmp r1, #3
	bhi _02243208
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243200: ; jump table
	.short _02243208 - _02243200 - 2 ; case 0
	.short _0224321A - _02243200 - 2 ; case 1
	.short _0224322A - _02243200 - 2 ; case 2
	.short _0224323C - _02243200 - 2 ; case 3
_02243208:
	add r0, sp, #8
	ldrb r0, [r0, #3]
	sub r0, r0, #1
	lsl r0, r0, #3
	add r0, r4, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	b _0224324C
_0224321A:
	ldrb r0, [r0, #3]
	sub r0, r0, #1
	lsl r0, r0, #4
	add r0, r4, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	b _0224324C
_0224322A:
	ldrb r0, [r0, #3]
	sub r1, r0, #1
	mov r0, #0xa
	mul r0, r1
	add r0, r4, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	b _0224324C
_0224323C:
	ldrb r0, [r0, #3]
	sub r1, r0, #1
	mov r0, #0x12
	mul r0, r1
	add r0, r4, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_0224324C:
	ldr r2, [r7, #0x2c]
	mov r0, #0x10
	tst r0, r2
	bne _02243258
	cmp r2, #0x4b
	bne _0224326E
_02243258:
	add r0, sp, #8
	ldrb r2, [r0, #1]
	ldr r0, _022432AC ; =0x02270B20
	lsl r1, r1, #2
	ldrb r0, [r0, r2]
	ldr r2, _022432B0 ; =0x00002168
	ldr r2, [r5, r2]
	add r5, r0, #0
	mul r1, r2
	mul r5, r1
	b _0224329E
_0224326E:
	mov r0, #2
	tst r0, r2
	add r0, sp, #8
	beq _0224328C
	ldrb r2, [r0, #1]
	ldr r0, _022432AC ; =0x02270B20
	lsl r1, r1, #2
	ldrb r0, [r0, r2]
	ldr r2, _022432B0 ; =0x00002168
	ldr r2, [r5, r2]
	add r5, r0, #0
	mul r1, r2
	lsl r1, r1, #1
	mul r5, r1
	b _0224329E
_0224328C:
	ldrb r2, [r0, #1]
	ldr r0, _022432AC ; =0x02270B20
	lsl r1, r1, #2
	ldrb r0, [r0, r2]
	ldr r2, _022432B0 ; =0x00002168
	ldr r2, [r5, r2]
	add r5, r0, #0
	mul r1, r2
	mul r5, r1
_0224329E:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_022432AC: .word 0x02270B20
_022432B0: .word 0x00002168
	thumb_func_end ov16_022431BC

	thumb_func_start ov16_022432B4
ov16_022432B4: ; 0x022432B4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, _02243330 ; =0x00002420
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _022432FE
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov16_022431BC
	add r4, r0, #0
	ldr r1, [r5, #0x2c]
	mov r0, #0x10
	tst r0, r1
	bne _022432E2
	cmp r1, #0x4b
	bne _022432EE
_022432E2:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #3
	bl ov16_022431BC
	add r4, r4, r0
_022432EE:
	add r0, r5, #0
	mov r1, #0
	bl ov16_0223E16C
	add r1, r4, #0
	bl sub_02025F94
	b _02243316
_022432FE:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x48]
	bl ov16_0223F904
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov16_0223E16C
	add r1, r4, #0
	bl sub_02025FB8
_02243316:
	cmp r4, #0
	beq _02243322
	mov r0, #0x13
	lsl r0, r0, #4
	str r4, [r6, r0]
	b _0224332A
_02243322:
	mov r0, #0x13
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
_0224332A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02243330: .word 0x00002420
	thumb_func_end ov16_022432B4

	thumb_func_start ov16_02243334
ov16_02243334: ; 0x02243334
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r6, #0
	bl ov16_0223EDAC
	cmp r0, #1
	beq _0224336C
	cmp r4, #0xf
	beq _0224336C
	cmp r4, #0x10
	beq _0224336C
	add r0, r4, #0
	sub r0, #0x19
	cmp r0, #1
	bhi _02243392
_0224336C:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_0224A984
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov16_0225B1DC
	cmp r0, #1
	bne _02243392
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov16_02265FF8
_02243392:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02243334

	thumb_func_start ov16_02243398
ov16_02243398: ; 0x02243398
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r6, #0
	bl ov16_0223EDAC
	cmp r0, #1
	beq _022433DA
	cmp r4, #0xf
	beq _022433DA
	cmp r4, #0x10
	beq _022433DA
	add r0, r4, #0
	sub r0, #0x19
	cmp r0, #1
	bhi _0224341C
_022433DA:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_0224A984
	add r7, r0, #0
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0224A984
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov16_0225B1DC
	cmp r0, #1
	bne _0224341C
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	bl ov16_0225B1DC
	cmp r0, #1
	bne _0224341C
	ldr r3, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	str r4, [sp]
	bl ov16_02266028
_0224341C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02243398

	thumb_func_start ov16_02243424
ov16_02243424: ; 0x02243424
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0224A984
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov16_02248B10
	add r4, r0, #0
	add r0, r7, #0
	bl ov16_0223EDAC
	cmp r0, #1
	beq _02243474
	cmp r6, #0xf
	beq _02243474
	cmp r6, #0x10
	beq _02243474
	ldr r0, [r4, #0]
	sub r0, #0x19
	cmp r0, #1
	bhi _0224348E
_02243474:
	ldr r1, [sp]
	ldr r2, [r4, #0]
	add r0, r5, #0
	bl ov16_0225B1DC
	cmp r0, #1
	bne _0224348E
	ldr r2, [sp]
	ldr r3, [r4, #0]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_02265FF8
_0224348E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02243424

	thumb_func_start ov16_02243494
ov16_02243494: ; 0x02243494
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r1, r4, #0
	ldr r3, _022434C8 ; =0x0000219C
	add r4, r4, r2
	ldrb r3, [r4, r3]
	add r0, r5, #0
	bl ov16_02266058
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022434C8: .word 0x0000219C
	thumb_func_end ov16_02243494

	thumb_func_start ov16_022434CC
ov16_022434CC: ; 0x022434CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r1, r4, #0
	ldr r3, _02243500 ; =0x0000219C
	add r4, r4, r2
	ldrb r3, [r4, r3]
	add r0, r5, #0
	bl ov16_0226609C
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02243500: .word 0x0000219C
	thumb_func_end ov16_022434CC

	thumb_func_start ov16_02243504
ov16_02243504: ; 0x02243504
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_022660E8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02243504

	thumb_func_start ov16_02243530
ov16_02243530: ; 0x02243530
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02266100
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02243530

	thumb_func_start ov16_0224355C
ov16_0224355C: ; 0x0224355C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	mov r2, #0x13
	lsl r2, r2, #4
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r5, #0
	bl ov16_02265FD8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0224355C

	thumb_func_start ov16_0224358C
ov16_0224358C: ; 0x0224358C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x79
	bne _022435BE
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02248AF0
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022435BE:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _022436FC ; =0x00002D4C
	mov r6, #0
_022435CA:
	ldrh r1, [r2, r0]
	cmp r1, #0
	beq _022435D8
	add r6, r6, #1
	add r2, r2, #2
	cmp r6, #4
	blt _022435CA
_022435D8:
	mov r0, #0
	str r0, [sp, #8]
	cmp r6, #0
	ble _02243650
	add r7, r0, #0
_022435E2:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r0, r4, r0
	add r2, r7, r0
	ldr r0, _022436FC ; =0x00002D4C
	ldrh r0, [r2, r0]
	cmp r0, #0xa0
	beq _02243644
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r0, _02243700 ; =0x000003E2
	ldrb r5, [r2, r0]
	cmp r5, #9
	bne _02243624
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r0, #7
	beq _0224361E
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r0, #7
	bne _02243622
_0224361E:
	mov r5, #7
	b _02243624
_02243622:
	mov r5, #0
_02243624:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r5, r0
	beq _02243644
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r5, r0
	bne _02243650
_02243644:
	ldr r0, [sp, #8]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r6
	blt _022435E2
_02243650:
	ldr r0, [sp, #8]
	cmp r0, r6
	bne _02243660
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02248AF0
	b _022436F4
_02243660:
	ldr r7, _022436FC ; =0x00002D4C
_02243662:
	ldr r0, [sp]
	bl ov16_0223F4BC
	add r1, r6, #0
	bl _s32_div_f
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	lsl r1, r1, #1
	add r0, r4, r0
	add r0, r1, r0
	ldrh r0, [r0, r7]
	cmp r0, #0xa0
	beq _02243662
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02243700 ; =0x000003E2
	ldrb r5, [r1, r0]
	cmp r5, #9
	bne _022436B2
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r0, #7
	beq _022436AC
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r0, #7
	bne _022436B0
_022436AC:
	mov r5, #7
	b _022436B2
_022436B0:
	mov r5, #0
_022436B2:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r5, r0
	beq _02243662
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r5, r0
	beq _02243662
	ldr r1, [r4, #0x64]
	lsl r0, r5, #0x18
	add r3, r1, #0
	mov r2, #0xc0
	mul r3, r2
	ldr r1, _02243704 ; =0x00002D64
	lsr r0, r0, #0x18
	add r3, r4, r3
	strb r0, [r3, r1]
	ldr r3, [r4, #0x64]
	add r1, r1, #1
	add r6, r3, #0
	mul r6, r2
	add r3, r4, r6
	strb r0, [r3, r1]
	add r2, #0x70
	str r5, [r4, r2]
_022436F4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022436FC: .word 0x00002D4C
_02243700: .word 0x000003E2
_02243704: .word 0x00002D64
	thumb_func_end ov16_0224358C

	thumb_func_start ov16_02243708
ov16_02243708: ; 0x02243708
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r6, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r6, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov16_02248AD0
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r4, #0
	bl ov16_02248B10
	add r4, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r6, #0
	bl ov16_02248B10
	cmp r7, #6
	bhi _022437C0
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224375E: ; jump table
	.short _0224376C - _0224375E - 2 ; case 0
	.short _02243778 - _0224375E - 2 ; case 1
	.short _02243784 - _0224375E - 2 ; case 2
	.short _02243790 - _0224375E - 2 ; case 3
	.short _0224379C - _0224375E - 2 ; case 4
	.short _022437A8 - _0224375E - 2 ; case 5
	.short _022437B4 - _0224375E - 2 ; case 6
_0224376C:
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	beq _022437C0
	mov r5, #0
	b _022437C0
_02243778:
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bne _022437C0
	mov r5, #0
	b _022437C0
_02243784:
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bhi _022437C0
	mov r5, #0
	b _022437C0
_02243790:
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bls _022437C0
	mov r5, #0
	b _022437C0
_0224379C:
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	tst r0, r1
	bne _022437C0
	mov r5, #0
	b _022437C0
_022437A8:
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	tst r0, r1
	beq _022437C0
	mov r5, #0
	b _022437C0
_022437B4:
	ldr r1, [r0, #0]
	ldr r0, [r4, #0]
	and r0, r1
	cmp r1, r0
	beq _022437C0
	mov r5, #0
_022437C0:
	cmp r5, #0
	beq _022437CC
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_02248AF0
_022437CC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02243708

	thumb_func_start ov16_022437D4
ov16_022437D4: ; 0x022437D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r6, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r6, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov16_02248AD0
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl ov16_02252060
	add r4, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl ov16_02248B10
	cmp r7, #6
	bhi _02243894
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224383E: ; jump table
	.short _0224384C - _0224383E - 2 ; case 0
	.short _02243856 - _0224383E - 2 ; case 1
	.short _02243860 - _0224383E - 2 ; case 2
	.short _0224386A - _0224383E - 2 ; case 3
	.short _02243874 - _0224383E - 2 ; case 4
	.short _0224387E - _0224383E - 2 ; case 5
	.short _02243888 - _0224383E - 2 ; case 6
_0224384C:
	ldr r0, [r0, #0]
	cmp r4, r0
	beq _02243894
	mov r5, #0
	b _02243894
_02243856:
	ldr r0, [r0, #0]
	cmp r4, r0
	bne _02243894
	mov r5, #0
	b _02243894
_02243860:
	ldr r0, [r0, #0]
	cmp r4, r0
	bhi _02243894
	mov r5, #0
	b _02243894
_0224386A:
	ldr r0, [r0, #0]
	cmp r4, r0
	bls _02243894
	mov r5, #0
	b _02243894
_02243874:
	ldr r0, [r0, #0]
	tst r0, r4
	bne _02243894
	mov r5, #0
	b _02243894
_0224387E:
	ldr r0, [r0, #0]
	tst r0, r4
	beq _02243894
	mov r5, #0
	b _02243894
_02243888:
	ldr r1, [r0, #0]
	add r0, r1, #0
	and r0, r4
	cmp r1, r0
	beq _02243894
	mov r5, #0
_02243894:
	cmp r5, #0
	beq _022438A0
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_02248AF0
_022438A0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_022437D4

	thumb_func_start ov16_022438A8
ov16_022438A8: ; 0x022438A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, _022438F0 ; =0x00002168
	ldr r2, [r4, r0]
	ldr r1, [r4, r1]
	add r3, r2, #0
	mul r3, r1
	add r1, r0, #0
	sub r1, #0x1c
	str r3, [r4, r1]
	add r1, r0, #0
	sub r1, #0x1c
	ldr r2, [r4, r1]
	ldr r1, _022438F4 ; =0x0000FFFF
	cmp r2, r1
	ble _022438DA
	sub r0, #0x1c
	str r1, [r4, r0]
_022438DA:
	add r0, r5, #0
	mov r1, #0
	bl ov16_0223E16C
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02025F94
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022438F0: .word 0x00002168
_022438F4: .word 0x0000FFFF
	thumb_func_end ov16_022438A8

	thumb_func_start ov16_022438F8
ov16_022438F8: ; 0x022438F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp]
	ldr r1, [r5, #0x64]
	add r0, r7, #0
	bl ov16_0223E208
	add r6, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r6, #2
	ldr r1, [r3, r2]
	mov r4, #2
	tst r4, r1
	beq _0224393C
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_02248AF0
	ldr r1, _022439CC ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	b _022439C8
_0224393C:
	mov r4, #2
	orr r1, r4
	str r1, [r3, r2]
	add r1, r0, #0
	add r1, #8
	add r4, r5, r1
	lsl r6, r6, #3
	ldr r2, [r4, r6]
	ldr r1, _022439D0 ; =0xFFFFFC7F
	add r0, #0xc4
	and r1, r2
	orr r0, r1
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	mov r1, #0x60
	bic r0, r1
	ldr r1, [r5, #0x64]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, r6]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02258AB8
	cmp r0, #0x61
	bne _02243990
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0
	bl ov16_02258ACC
	ldr r1, [r4, r6]
	ldr r2, _022439D0 ; =0xFFFFFC7F
	and r2, r1
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1d
	add r0, r1, r0
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x16
	orr r0, r2
	str r0, [r4, r6]
_02243990:
	add r0, r5, #0
	mov r1, #0x14
	add r0, #0xf5
	strb r1, [r0]
	ldr r0, _022439D4 ; =0x00003044
	mov r2, #1
	ldr r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0xfc
	str r1, [r0, #0]
	ldr r3, [r5, #0x64]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_022554E0
	cmp r0, #2
	bne _022439C2
	mov r0, #0xc0
	add r5, #0xf6
	strh r0, [r5]
	b _022439C8
_022439C2:
	mov r0, #0xbe
	add r5, #0xf6
	strh r0, [r5]
_022439C8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022439CC: .word 0x0000216C
_022439D0: .word 0xFFFFFC7F
_022439D4: .word 0x00003044
	thumb_func_end ov16_022438F8

	thumb_func_start ov16_022439D8
ov16_022439D8: ; 0x022439D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp]
	ldr r1, [r5, #0x64]
	add r0, r7, #0
	bl ov16_0223E208
	add r6, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r6, #2
	ldr r1, [r3, r2]
	mov r4, #1
	tst r4, r1
	beq _02243A1C
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_02248AF0
	ldr r1, _02243AB0 ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	b _02243AAA
_02243A1C:
	mov r4, #1
	orr r1, r4
	add r0, #8
	add r4, r5, r0
	lsl r6, r6, #3
	str r1, [r3, r2]
	ldr r1, [r4, r6]
	mov r0, #0x1c
	bic r1, r0
	mov r0, #0x14
	orr r0, r1
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	mov r1, #3
	bic r0, r1
	ldr r2, [r5, #0x64]
	mov r1, #3
	and r1, r2
	orr r0, r1
	str r0, [r4, r6]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02258AB8
	cmp r0, #0x61
	bne _02243A72
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0
	bl ov16_02258ACC
	ldr r1, [r4, r6]
	add r3, r0, #0
	mov r0, #0x1c
	add r2, r1, #0
	bic r2, r0
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x1d
	add r0, r0, r3
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1b
	orr r0, r2
	str r0, [r4, r6]
_02243A72:
	add r0, r5, #0
	mov r1, #0x14
	add r0, #0xf5
	strb r1, [r0]
	ldr r0, _02243AB4 ; =0x00003044
	mov r2, #1
	ldr r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xf8
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0xfc
	str r1, [r0, #0]
	ldr r3, [r5, #0x64]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_022554E0
	cmp r0, #2
	bne _02243AA4
	mov r0, #0xc4
	add r5, #0xf6
	strh r0, [r5]
	b _02243AAA
_02243AA4:
	mov r0, #0xc2
	add r5, #0xf6
	strh r0, [r5]
_02243AAA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243AB0: .word 0x0000216C
_02243AB4: .word 0x00003044
	thumb_func_end ov16_022439D8

	thumb_func_start ov16_02243AB8
ov16_02243AB8: ; 0x02243AB8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223E208
	mov r5, #0x6f
	add r2, r0, #0
	lsl r5, r5, #2
	add r1, r4, r5
	lsl r0, r2, #2
	ldr r6, [r1, r0]
	mov r3, #0x40
	tst r3, r6
	beq _02243AFC
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_02248AF0
	ldr r1, _02243B2C ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	b _02243B26
_02243AFC:
	mov r3, #0x40
	orr r3, r6
	str r3, [r1, r0]
	add r5, #8
	lsl r0, r2, #3
	add r1, r4, r5
	ldr r3, [r1, r0]
	ldr r2, _02243B30 ; =0xFFFF8FFF
	and r3, r2
	mov r2, #5
	lsl r2, r2, #0xc
	orr r2, r3
	str r2, [r1, r0]
	ldr r3, [r1, r0]
	ldr r2, _02243B34 ; =0xFFFFF3FF
	and r3, r2
	ldr r2, [r4, #0x64]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x14
	orr r2, r3
	str r2, [r1, r0]
_02243B26:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243B2C: .word 0x0000216C
_02243B30: .word 0xFFFF8FFF
_02243B34: .word 0xFFFFF3FF
	thumb_func_end ov16_02243AB8

	thumb_func_start ov16_02243B38
ov16_02243B38: ; 0x02243B38
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, _02243D0C ; =0x0000213C
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xa
	orr r0, r2
	str r0, [r4, r1]
	ldr r1, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	add r0, r4, #0
	mov r3, #5
	bl ov16_02255AB4
	cmp r0, #1
	bne _02243B70
	ldr r1, _02243D10 ; =0x0000216C
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0x12
	orr r0, r2
	str r0, [r4, r1]
	b _02243D08
_02243B70:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	mov r0, #0x18
	tst r0, r1
	bne _02243BF8
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x63
	beq _02243BF8
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x63
	beq _02243BF8
	ldr r0, _02243D14 ; =0x00003044
	mov r2, #0xc0
	ldr r0, [r4, r0]
	ldr r5, [r4, #0x6c]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02243D18 ; =0x000003E3
	ldrb r1, [r1, r0]
	ldr r0, [r4, #0x64]
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	ldr r3, _02243D1C ; =0x00002D74
	mul r2, r5
	add r2, r4, r2
	ldrb r0, [r0, r3]
	ldrb r2, [r2, r3]
	sub r0, r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r5
	bge _02243BF4
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _02243D1C ; =0x00002D74
	add r2, r4, r2
	ldrb r3, [r2, r1]
	ldr r2, [r4, #0x6c]
	mul r0, r2
	add r0, r4, r0
	ldrb r0, [r0, r1]
	cmp r3, r0
	blo _02243BF4
	mov r3, #1
	b _02243CB2
_02243BF4:
	mov r3, #0
	b _02243CB2
_02243BF8:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r3, r4, r0
	ldr r0, _02243D20 ; =0x00002DCC
	ldr r1, [r4, #0x64]
	ldr r2, [r3, r0]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	cmp r1, r2
	bne _02243C18
	sub r0, #0xc
	ldr r2, [r3, r0]
	mov r0, #0x18
	tst r0, r2
	bne _02243C2E
_02243C18:
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x63
	beq _02243C2E
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x63
	bne _02243C4C
_02243C2E:
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r3, [r4, #0x6c]
	add r0, r4, r2
	ldr r2, _02243D1C ; =0x00002D74
	mul r1, r3
	add r1, r4, r1
	ldrb r0, [r0, r2]
	ldrb r1, [r1, r2]
	cmp r0, r1
	blo _02243C4C
	mov r3, #1
	b _02243CA6
_02243C4C:
	ldr r0, _02243D14 ; =0x00003044
	mov r2, #0xc0
	ldr r0, [r4, r0]
	ldr r5, [r4, #0x6c]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02243D18 ; =0x000003E3
	ldrb r1, [r1, r0]
	ldr r0, [r4, #0x64]
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	ldr r3, _02243D1C ; =0x00002D74
	mul r2, r5
	add r2, r4, r2
	ldrb r0, [r0, r3]
	ldrb r2, [r2, r3]
	sub r0, r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r5
	bge _02243CA4
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _02243D1C ; =0x00002D74
	add r2, r4, r2
	ldrb r3, [r2, r1]
	ldr r2, [r4, #0x6c]
	mul r0, r2
	add r0, r4, r0
	ldrb r0, [r0, r1]
	cmp r3, r0
	blo _02243CA4
	mov r3, #1
	b _02243CA6
_02243CA4:
	mov r3, #0
_02243CA6:
	ldr r1, _02243D10 ; =0x0000216C
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xa
	orr r0, r2
	str r0, [r4, r1]
_02243CB2:
	cmp r3, #0
	beq _02243CD8
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02243D24 ; =0x00002D8C
	ldr r0, [r1, r0]
	ldr r1, _02243D28 ; =0x00002144
	neg r0, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x28
	ldr r2, [r4, r0]
	mov r0, #0x20
	orr r0, r2
	add r1, #0x28
	str r0, [r4, r1]
	b _02243D08
_02243CD8:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _02243D1C ; =0x00002D74
	add r2, r4, r2
	ldrb r3, [r2, r1]
	ldr r2, [r4, #0x6c]
	mul r0, r2
	add r0, r4, r0
	ldrb r0, [r0, r1]
	cmp r3, r0
	ldr r1, _02243D10 ; =0x0000216C
	blo _02243CFE
	ldr r2, [r4, r1]
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	b _02243D08
_02243CFE:
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xc
	orr r0, r2
	str r0, [r4, r1]
_02243D08:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02243D0C: .word 0x0000213C
_02243D10: .word 0x0000216C
_02243D14: .word 0x00003044
_02243D18: .word 0x000003E3
_02243D1C: .word 0x00002D74
_02243D20: .word 0x00002DCC
_02243D24: .word 0x00002D8C
_02243D28: .word 0x00002144
	thumb_func_end ov16_02243B38

	thumb_func_start ov16_02243D2C
ov16_02243D2C: ; 0x02243D2C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_02248B10
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_022563F8
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02243D2C

	thumb_func_start ov16_02243D64
ov16_02243D64: ; 0x02243D64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_02248B10
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_02248B10
	add r1, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bge _02243DA6
	mov r5, #0
	mvn r5, r5
	b _02243DA8
_02243DA6:
	mov r5, #1
_02243DA8:
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	bl _s32_div_f
	str r0, [r4, #0]
	cmp r0, #0
	bne _02243DB8
	str r5, [r4, #0]
_02243DB8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02243D64

	thumb_func_start ov16_02243DBC
ov16_02243DBC: ; 0x02243DBC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	str r0, [sp]
	ldr r0, [r6, #0x6c]
	lsl r0, r0, #1
	add r1, r6, r0
	ldr r0, _02243EE0 ; =0x0000307C
	ldrh r0, [r1, r0]
	bl ov16_0225AFF4
	cmp r0, #0
	beq _02243E16
	ldr r0, [r6, #0x64]
	mov r2, #2
	mov r3, #0xc0
	add r1, r0, #0
	mul r1, r3
	add r0, r6, r1
	ldr r1, _02243EE4 ; =0x00002DB0
	mov ip, r0
	ldr r0, [r0, r1]
	lsl r2, r2, #0x14
	tst r0, r2
	bne _02243E16
	ldr r0, [r6, #0x6c]
	add r4, r0, #0
	mul r4, r3
	add r4, r6, r4
	ldr r4, [r4, r1]
	lsl r1, r2, #3
	tst r1, r4
	bne _02243E16
	lsl r0, r0, #1
	add r1, r6, r0
	ldr r0, _02243EE0 ; =0x0000307C
	ldrh r7, [r1, r0]
	cmp r7, #0
	bne _02243E20
_02243E16:
	ldr r1, [sp]
	add r0, r6, #0
	bl ov16_02248AF0
	b _02243EDC
_02243E20:
	mov r2, #0
	sub r3, #0xc1
	mov r4, ip
	add r5, r2, #0
_02243E28:
	ldr r0, _02243EE8 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r7, r0
	beq _02243E50
	mov r0, ip
	add r1, r0, r5
	ldr r0, _02243EE8 ; =0x00002D4C
	ldrh r0, [r1, r0]
	cmp r0, #0x66
	bne _02243E46
	mov r0, #0
	mvn r0, r0
	cmp r3, r0
	bne _02243E46
	add r3, r2, #0
_02243E46:
	add r2, r2, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r2, #4
	blt _02243E28
_02243E50:
	cmp r2, #4
	bne _02243ED4
	mov r4, #0x49
	lsl r4, r4, #2
	str r7, [r6, r4]
	ldr r2, [r6, #0x64]
	mov r1, #0xc0
	add r5, r2, #0
	mul r5, r1
	add r5, r6, r5
	lsl r2, r3, #1
	add r5, r5, r2
	ldr r0, [r6, r4]
	ldr r2, _02243EE8 ; =0x00002D4C
	strh r0, [r5, r2]
	ldr r0, [r6, r4]
	lsl r0, r0, #4
	add r4, r6, r0
	mov r0, #0xf9
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #5
	bhs _02243E80
	b _02243E82
_02243E80:
	mov r0, #5
_02243E82:
	ldr r4, [r6, #0x64]
	add r2, #0x20
	mul r1, r4
	add r1, r6, r1
	add r1, r1, r3
	strb r0, [r1, r2]
	add r0, r3, #0
	bl sub_020787CC
	ldr r1, _02243EEC ; =0x00002DCC
	mov r4, #0xc0
	add r3, r6, r1
	ldr r1, [r6, #0x64]
	mov r5, #0x3c
	add r2, r1, #0
	mul r2, r4
	ldr r7, [r3, r2]
	add r1, r7, #0
	bic r1, r5
	lsl r5, r7, #0x1a
	lsr r5, r5, #0x1c
	orr r0, r5
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	str r0, [r3, r2]
	add r0, r4, #0
	add r0, #0x64
	ldr r1, [r6, r0]
	add r0, r4, #0
	add r0, #0xc3
	cmp r1, r0
	bne _02243EDC
	ldr r0, [r6, #0x64]
	add r2, r0, #0
	mul r2, r4
	ldr r1, [r3, r2]
	ldr r0, _02243EF0 ; =0xFFFFE3FF
	and r0, r1
	str r0, [r3, r2]
	b _02243EDC
_02243ED4:
	ldr r1, [sp]
	add r0, r6, #0
	bl ov16_02248AF0
_02243EDC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243EE0: .word 0x0000307C
_02243EE4: .word 0x00002DB0
_02243EE8: .word 0x00002D4C
_02243EEC: .word 0x00002DCC
_02243EF0: .word 0xFFFFE3FF
	thumb_func_end ov16_02243DBC

	thumb_func_start ov16_02243EF4
ov16_02243EF4: ; 0x02243EF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r4, _02243F4C ; =0x00002D4C
_02243F04:
	add r0, r7, #0
	bl ov16_0223F4BC
	ldr r1, _02243F50 ; =0x000001D3
	bl _s32_div_f
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r3, [r6, #0x64]
	mov r0, #0xc0
	mul r0, r3
	mov r1, #0
	add r2, r6, r0
_02243F20:
	ldrh r0, [r2, r4]
	cmp r5, r0
	beq _02243F2E
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #4
	blt _02243F20
_02243F2E:
	cmp r1, #4
	bne _02243F04
	add r2, r3, #0
	add r0, r7, #0
	add r1, r6, #0
	add r3, r5, #0
	bl ov16_0225B02C
	cmp r0, #0
	beq _02243F04
	mov r0, #0x49
	lsl r0, r0, #2
	str r5, [r6, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243F4C: .word 0x00002D4C
_02243F50: .word 0x000001D3
	thumb_func_end ov16_02243EF4

	thumb_func_start ov16_02243F54
ov16_02243F54: ; 0x02243F54
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	mov r0, #0xb5
	lsl r0, r0, #6
	add r2, r4, r0
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	lsl r1, r1, #1
	add r0, r2, r0
	add r2, r4, r1
	ldr r1, _02244008 ; =0x0000307C
	ldrh r1, [r2, r1]
	bl ov16_02254EE0
	add r3, r0, #0
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	ldr r7, _0224400C ; =0x00002DE8
	add r1, r4, r0
	ldrh r0, [r1, r7]
	cmp r0, #0
	bne _02243FFA
	cmp r3, #4
	beq _02243FFA
	add r0, r7, #0
	add r1, r1, r3
	sub r0, #0x7c
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02243FFA
	lsl r0, r2, #1
	add r1, r4, r0
	ldr r0, _02244008 ; =0x0000307C
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _02243FFA
	mov r0, #0xc0
	add r0, #0x64
	str r1, [r4, r0]
	mov r0, #0xc0
	add r0, #0x64
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	ldr r0, [r4, r0]
	add r1, r4, r1
	strh r0, [r1, r7]
	add r0, r5, #0
	bl ov16_0223F4BC
	add r1, r7, #0
	sub r1, #0x20
	add r3, r4, r1
	ldr r4, [r4, #0x6c]
	mov r1, #0xc0
	add r2, r4, #0
	mul r2, r1
	ldr r1, [r3, r2]
	mov r4, #7
	bic r1, r4
	lsr r5, r0, #0x1f
	lsl r4, r0, #0x1e
	sub r4, r4, r5
	mov r0, #0x1e
	ror r4, r0
	add r0, r5, r4
	add r4, r0, #3
	mov r0, #7
	and r0, r4
	orr r0, r1
	str r0, [r3, r2]
	b _02244002
_02243FFA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02244002:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244008: .word 0x0000307C
_0224400C: .word 0x00002DE8
	thumb_func_end ov16_02243F54

	thumb_func_start ov16_02244010
ov16_02244010: ; 0x02244010
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r5, #0x64]
	lsl r0, r1, #6
	add r2, r5, r0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	ldr r0, [sp]
	bl ov16_0223E208
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223E208
	ldr r6, [r5, #0x64]
	add r3, r0, #0
	lsl r0, r6, #6
	add r1, r5, r0
	lsl r0, r4, #2
	add r0, r1, r0
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r7, [r0, r1]
	cmp r7, #0
	beq _022440D6
	ldr r0, [sp, #4]
	cmp r0, r3
	beq _022440D6
	mov r0, #0xc0
	mul r0, r4
	add r2, r5, r0
	ldr r0, _02244100 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022440D6
	ldr r0, _02244104 ; =0x00002144
	lsl r2, r7, #1
	sub r1, #0x14
	str r2, [r5, r0]
	add r1, r5, r1
	lsl r0, r3, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02244090
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _02244100 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02244090
	str r0, [r5, #0x6c]
	b _02244092
_02244090:
	str r4, [r5, #0x6c]
_02244092:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02244100 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022440CA
	ldr r0, [sp]
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	bl ov16_02257028
	mov r1, #0xc0
	mul r1, r0
	str r0, [r5, #0x6c]
	ldr r0, _02244100 ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022440CA
	mov r2, #0x26
	str r2, [r5, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, #0xf3
	bl ov16_02248B00
_022440CA:
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_0225B408
	b _022440F8
_022440D6:
	mov r0, #0xb5
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r6, #0
	mul r3, r1
	add r0, r5, r0
	ldr r2, [r0, r3]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	str r1, [r0, r3]
	ldr r1, _02244108 ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
_022440F8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244100: .word 0x00002D8C
_02244104: .word 0x00002144
_02244108: .word 0x0000216C
	thumb_func_end ov16_02244010

	thumb_func_start ov16_0224410C
ov16_0224410C: ; 0x0224410C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r5, #0x64]
	lsl r0, r1, #6
	add r2, r5, r0
	mov r0, #2
	lsl r0, r0, #8
	ldr r4, [r2, r0]
	ldr r0, [sp]
	bl ov16_0223E208
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223E208
	ldr r6, [r5, #0x64]
	add r3, r0, #0
	lsl r0, r6, #6
	add r1, r5, r0
	lsl r0, r4, #2
	add r0, r1, r0
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r7, [r0, r1]
	cmp r7, #0
	beq _022441D2
	ldr r0, [sp, #4]
	cmp r0, r3
	beq _022441D2
	mov r0, #0xc0
	mul r0, r4
	add r2, r5, r0
	ldr r0, _022441FC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022441D2
	ldr r0, _02244200 ; =0x00002144
	lsl r2, r7, #1
	sub r1, #0x2c
	str r2, [r5, r0]
	add r1, r5, r1
	lsl r0, r3, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _0224418C
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _022441FC ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _0224418C
	str r0, [r5, #0x6c]
	b _0224418E
_0224418C:
	str r4, [r5, #0x6c]
_0224418E:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022441FC ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022441C6
	ldr r0, [sp]
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	bl ov16_02257028
	mov r1, #0xc0
	mul r1, r0
	str r0, [r5, #0x6c]
	ldr r0, _022441FC ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022441C6
	mov r2, #0x26
	str r2, [r5, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, #0xf3
	bl ov16_02248B00
_022441C6:
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_0225B408
	b _022441F4
_022441D2:
	mov r0, #0xb5
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r6, #0
	mul r3, r1
	add r0, r5, r0
	ldr r2, [r0, r3]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	str r1, [r0, r3]
	ldr r1, _02244204 ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
_022441F4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022441FC: .word 0x00002D8C
_02244200: .word 0x00002144
_02244204: .word 0x0000216C
	thumb_func_end ov16_0224410C

	thumb_func_start ov16_02244208
ov16_02244208: ; 0x02244208
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	mov r0, #0xb5
	lsl r0, r0, #6
	add r2, r5, r0
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	lsl r1, r1, #1
	add r0, r2, r0
	add r2, r5, r1
	ldr r1, _022442E0 ; =0x0000307C
	ldrh r1, [r2, r1]
	bl ov16_02254EE0
	ldr r1, [r5, #0x6c]
	add r4, r0, #0
	lsl r1, r1, #1
	add r2, r5, r1
	ldr r1, _022442E0 ; =0x0000307C
	add r0, r5, #0
	ldrh r1, [r2, r1]
	bl ov16_0225B084
	cmp r0, #0
	bne _02244250
	mov r4, #4
_02244250:
	ldr r0, [r5, #0x6c]
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	ldr r3, _022442E4 ; =0x00002DEC
	add r6, r5, r1
	ldrh r1, [r6, r3]
	cmp r1, #0
	bne _022442CA
	cmp r4, #4
	beq _022442CA
	add r1, r3, #0
	add r6, r6, r4
	sub r1, #0x80
	ldrb r1, [r6, r1]
	cmp r1, #0
	beq _022442CA
	lsl r0, r0, #1
	add r1, r5, r0
	ldr r0, _022442E0 ; =0x0000307C
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _022442CA
	add r0, r2, #0
	add r0, #0x64
	str r1, [r5, r0]
	ldr r1, [r5, #0x6c]
	add r0, r2, #0
	add r0, #0x64
	add r6, r1, #0
	mul r6, r2
	ldr r0, [r5, r0]
	add r1, r5, r6
	strh r0, [r1, r3]
	ldr r0, [r5, #0x6c]
	add r1, r0, #0
	mul r1, r2
	add r1, r5, r1
	add r0, r3, #2
	strh r4, [r1, r0]
	ldr r0, [sp]
	bl ov16_0223F4BC
	ldr r1, _022442E8 ; =0x00002DC8
	ldr r2, [r5, #0x6c]
	add r4, r5, r1
	mov r1, #0xc0
	add r5, r2, #0
	mul r5, r1
	mov r1, #5
	bl _s32_div_f
	ldr r2, [r4, r5]
	mov r0, #0x38
	bic r2, r0
	add r0, r1, #3
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r2
	str r0, [r4, r5]
	b _022442DC
_022442CA:
	ldr r1, _022442EC ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
_022442DC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022442E0: .word 0x0000307C
_022442E4: .word 0x00002DEC
_022442E8: .word 0x00002DC8
_022442EC: .word 0x0000216C
	thumb_func_end ov16_02244208

	thumb_func_start ov16_022442F0
ov16_022442F0: ; 0x022442F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x79
	bne _02244322
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AF0
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02244322:
	ldr r0, [r5, #0x64]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _02244498 ; =0x000030C4
	ldrh r1, [r2, r0]
	cmp r1, #0
	beq _02244338
	add r0, #8
	ldrh r0, [r2, r0]
	cmp r0, #0xff
	bne _0224433A
_02244338:
	b _02244488
_0224433A:
	add r0, r5, #0
	bl ov16_0225582C
	cmp r0, #0
	beq _0224436E
	ldr r0, [r5, #0x64]
	lsl r0, r0, #1
	add r1, r5, r0
	ldr r0, _0224449C ; =0x000030CC
	ldrh r1, [r1, r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022444A0 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0224436E
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AF0
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224436E:
	ldr r0, [r5, #0x64]
	mov r6, #0
	lsl r0, r0, #1
	add r1, r5, r0
	ldr r0, _022444A4 ; =0x000030D4
	ldrh r7, [r1, r0]
_0224437A:
	add r0, sp, #0xc
	str r0, [sp]
	add r2, sp, #0xc
	add r3, sp, #0xc
	ldr r0, [sp, #4]
	ldr r1, _022444A8 ; =0x0000FFFF
	add r2, #2
	add r3, #1
	bl ov16_0225588C
	add r0, sp, #0xc
	ldrb r0, [r0, #2]
	cmp r0, r7
	bne _022443EC
	add r0, sp, #0xc
	ldrb r0, [r0]
	cmp r0, #5
	bhi _022443EC
	add r0, sp, #0xc
	ldrb r4, [r0, #1]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r4, r0
	beq _022443EC
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r4, r0
	beq _022443EC
	ldr r0, [r5, #0x64]
	add r3, sp, #0xc
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	add r0, r5, r1
	ldr r1, _022444AC ; =0x00002D64
	add sp, #0x10
	strb r4, [r0, r1]
	ldr r4, [r5, #0x64]
	ldrb r0, [r3, #1]
	add r6, r4, #0
	mul r6, r2
	add r4, r5, r6
	add r1, r1, #1
	strb r0, [r4, r1]
	ldrb r0, [r3, #1]
	add r2, #0x70
	str r0, [r5, r2]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022443EC:
	mov r0, #0xfa
	add r6, r6, #1
	lsl r0, r0, #2
	cmp r6, r0
	blt _0224437A
	add r0, sp, #0xc
	mov r6, #0
	str r0, [sp]
	add r2, sp, #0xc
	add r3, sp, #0xc
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, #2
	add r3, #1
	bl ov16_0225588C
	cmp r0, #1
	bne _02244488
_02244410:
	add r0, sp, #0xc
	ldrb r0, [r0, #2]
	cmp r0, r7
	bne _0224446E
	add r0, sp, #0xc
	ldrb r0, [r0]
	cmp r0, #5
	bhi _0224446E
	add r0, sp, #0xc
	ldrb r4, [r0, #1]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r4, r0
	beq _0224446E
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r4, r0
	beq _0224446E
	ldr r0, [r5, #0x64]
	add r3, sp, #0xc
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	add r0, r5, r1
	ldr r1, _022444AC ; =0x00002D64
	add sp, #0x10
	strb r4, [r0, r1]
	ldr r4, [r5, #0x64]
	ldrb r0, [r3, #1]
	add r6, r4, #0
	mul r6, r2
	add r4, r5, r6
	add r1, r1, #1
	strb r0, [r4, r1]
	ldrb r0, [r3, #1]
	add r2, #0x70
	str r0, [r5, r2]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224446E:
	add r0, sp, #0xc
	add r6, r6, #1
	str r0, [sp]
	add r2, sp, #0xc
	add r3, sp, #0xc
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, #2
	add r3, #1
	bl ov16_0225588C
	cmp r0, #1
	beq _02244410
_02244488:
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AF0
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244498: .word 0x000030C4
_0224449C: .word 0x000030CC
_022444A0: .word 0x00002DB0
_022444A4: .word 0x000030D4
_022444A8: .word 0x0000FFFF
_022444AC: .word 0x00002D64
	thumb_func_end ov16_022442F0

	thumb_func_start ov16_022444B0
ov16_022444B0: ; 0x022444B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	add r6, r1, #0
	mvn r0, r0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	mov ip, r0
	ldr r1, [r6, #0x64]
	mov r0, #0xc0
	mul r0, r1
	str r0, [sp, #4]
	add r3, r6, r0
	ldr r0, _022445C0 ; =0x00002DB0
	ldr r1, [r3, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02244502
	ldr r0, [r6, #0x6c]
	lsl r0, r0, #1
	add r1, r6, r0
	ldr r0, _022445C4 ; =0x000030AC
	ldrh r7, [r1, r0]
	cmp r7, #0xa5
	beq _02244502
	cmp r7, #0xa6
	beq _02244502
	mov r0, #7
	lsl r0, r0, #6
	cmp r7, r0
	beq _02244502
	cmp r7, #0
	bne _0224450C
_02244502:
	add r0, r6, #0
	mov r1, ip
	bl ov16_02248AF0
	b _022445BA
_0224450C:
	mov r0, #0
	add r1, r3, #0
	add r2, r0, #0
_02244512:
	ldr r4, _022445C8 ; =0x00002D4C
	ldrh r4, [r1, r4]
	cmp r4, #0xa6
	beq _02244524
	ldr r4, _022445C8 ; =0x00002D4C
	add r5, r3, r2
	ldrh r4, [r5, r4]
	cmp r7, r4
	beq _02244544
_02244524:
	ldr r4, _022445C8 ; =0x00002D4C
	add r5, r3, r2
	ldrh r4, [r5, r4]
	cmp r4, #0xa6
	bne _0224453A
	mov r5, #0
	ldr r4, [sp, #8]
	mvn r5, r5
	cmp r4, r5
	bne _0224453A
	str r0, [sp, #8]
_0224453A:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _02244512
_02244544:
	cmp r0, #4
	bne _022445B2
	ldr r0, [sp, #4]
	add r1, r6, r0
	ldr r0, [sp, #8]
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _022445C8 ; =0x00002D4C
	strh r7, [r1, r0]
	ldr r1, [r6, #0x6c]
	ldr r3, [r6, #0x64]
	lsl r1, r1, #1
	add r2, r6, r1
	ldr r1, _022445C4 ; =0x000030AC
	add r0, #0x20
	ldrh r1, [r2, r1]
	lsl r1, r1, #4
	add r2, r6, r1
	mov r1, #0xf9
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	mov r2, #0xc0
	mul r2, r3
	add r3, r6, r2
	ldr r2, [sp, #8]
	add r2, r3, r2
	strb r1, [r2, r0]
	ldr r0, [sp]
	ldr r2, [r6, #0x64]
	add r1, r6, #0
	bl ov16_022662FC
	ldr r0, [r6, #0x6c]
	lsl r0, r0, #1
	add r1, r6, r0
	ldr r0, _022445C4 ; =0x000030AC
	ldrh r1, [r1, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldr r1, [r6, r0]
	add r0, #0x5f
	cmp r1, r0
	bne _022445BA
	ldr r0, _022445CC ; =0x00002DCC
	ldr r1, [r6, #0x64]
	add r3, r6, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	ldr r0, _022445D0 ; =0xFFFFE3FF
	and r0, r1
	str r0, [r3, r2]
	b _022445BA
_022445B2:
	add r0, r6, #0
	mov r1, ip
	bl ov16_02248AF0
_022445BA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022445C0: .word 0x00002DB0
_022445C4: .word 0x000030AC
_022445C8: .word 0x00002D4C
_022445CC: .word 0x00002DCC
_022445D0: .word 0xFFFFE3FF
	thumb_func_end ov16_022444B0

	thumb_func_start ov16_022445D4
ov16_022445D4: ; 0x022445D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	mov r7, #0
	str r0, [sp, #8]
	add r6, r7, #0
	add r4, r7, #0
_022445F2:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r0, r5, r0
	add r1, r4, r0
	ldr r0, _0224469C ; =0x00002D4C
	ldrh r0, [r1, r0]
	bl ov16_02255918
	cmp r0, #0
	bne _02244632
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r0, r5, r0
	add r1, r4, r0
	ldr r0, _0224469C ; =0x00002D4C
	ldrh r1, [r1, r0]
	mov r0, #0x42
	lsl r0, r0, #2
	cmp r1, r0
	beq _02244632
	cmp r1, #0xfd
	beq _02244632
	add r0, #0xb8
	cmp r1, r0
	beq _02244632
	add r0, r5, #0
	bl ov16_0225582C
	cmp r0, #0
	beq _0224463A
_02244632:
	add r0, r6, #0
	bl sub_020787CC
	orr r7, r0
_0224463A:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #4
	blt _022445F2
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	add r3, r7, #0
	bl ov16_02254A6C
	add r4, r0, #0
	cmp r4, #0xf
	bne _02244664
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AF0
	b _02244696
_02244664:
	mov r7, #0x1e
_02244666:
	ldr r0, [sp, #4]
	bl ov16_0223F4BC
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1e
	sub r0, r0, r1
	ror r0, r7
	add r6, r1, r0
	add r0, r6, #0
	bl sub_020787CC
	tst r0, r4
	bne _02244666
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r2, r5, r2
	lsl r0, r6, #1
	add r2, r2, r0
	ldr r0, _0224469C ; =0x00002D4C
	add r1, #0x64
	ldrh r0, [r2, r0]
	str r0, [r5, r1]
_02244696:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224469C: .word 0x00002D4C
	thumb_func_end ov16_022445D4

	thumb_func_start ov16_022446A0
ov16_022446A0: ; 0x022446A0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _022446E4 ; =0x00002D8C
	add r2, r4, r0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	mov r2, #0x40
	bl sub_0208C0BC
	ldr r3, _022446E8 ; =0x0226E584
	mov r2, #0
_022446C6:
	ldrb r1, [r3]
	cmp r0, r1
	ble _022446D4
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _022446C6
_022446D4:
	ldr r0, _022446EC ; =0x0226E585
	lsl r1, r2, #1
	ldrb r1, [r0, r1]
	ldr r0, _022446F0 ; =0x00002154
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	nop
_022446E4: .word 0x00002D8C
_022446E8: .word 0x0226E584
_022446EC: .word 0x0226E585
_022446F0: .word 0x00002154
	thumb_func_end ov16_022446A0

	thumb_func_start ov16_022446F4
ov16_022446F4: ; 0x022446F4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	ldr r2, [r5, #0x6c]
	add r4, r0, #0
	lsl r0, r2, #1
	add r1, r5, r0
	ldr r0, _02244790 ; =0x0000307C
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _02244782
	mov r0, #0xb5
	lsl r0, r0, #6
	mov r3, #0xc0
	add r0, r5, r0
	mul r3, r2
	add r0, r0, r3
	bl ov16_02254EE0
	add r2, r0, #0
	cmp r2, #4
	beq _02244740
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	mul r1, r0
	add r1, r5, r1
	add r3, r1, r2
	ldr r1, _02244794 ; =0x00002D6C
	ldrb r3, [r3, r1]
	cmp r3, #0
	bne _0224474A
_02244740:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
	b _0224478A
_0224474A:
	mov r1, #4
	cmp r3, #4
	bge _02244752
	add r1, r3, #0
_02244752:
	lsl r0, r0, #1
	add r3, r5, r0
	ldr r0, _02244790 ; =0x0000307C
	ldrh r3, [r3, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r3, [r5, r0]
	add r0, #0xc
	str r1, [r5, r0]
	ldr r0, _02244794 ; =0x00002D6C
	ldr r4, [r5, #0x6c]
	mov r3, #0xc0
	add r0, r5, r0
	mul r3, r4
	add r3, r0, r3
	ldrb r0, [r3, r2]
	sub r0, r0, r1
	strb r0, [r3, r2]
	ldr r2, [r5, #0x6c]
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_02253EC0
	b _0224478A
_02244782:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
_0224478A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02244790: .word 0x0000307C
_02244794: .word 0x00002D6C
	thumb_func_end ov16_022446F4

	thumb_func_start ov16_02244798
ov16_02244798: ; 0x02244798
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl ov16_0223DF0C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r1, #0x4d
	mov r0, #0
	lsl r1, r1, #2
	ldr r2, _022448D8 ; =0x00003044
	str r0, [r5, r1]
	ldr r2, [r5, r2]
	cmp r2, #0xd7
	bne _02244866
	sub r1, #0x10
	str r2, [r5, r1]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x2b
	beq _022447EE
	ldr r2, [r5, #0x64]
	mov r0, #0xc0
	add r3, r2, #0
	mul r3, r0
	ldr r2, _022448DC ; =0x00002DAC
	mov r1, #0
	add r3, r5, r3
	str r1, [r3, r2]
	add r1, r2, #4
	ldr r2, [r5, #0x64]
	add r1, r5, r1
	mul r0, r2
	ldr r3, [r1, r0]
	ldr r2, _022448E0 ; =0xF7FFFFFF
	and r2, r3
	str r2, [r1, r0]
	b _022447FA
_022447EE:
	mov r1, #0x4d
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #5
	orr r0, r2
	str r0, [r5, r1]
_022447FA:
	mov r0, #2
	tst r0, r4
	beq _02244858
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x10
	bl ov16_0224A984
	add r4, r0, #0
	bl sub_020787CC
	ldr r1, _022448E4 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _022448C6
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x2b
	bl ov16_02255AB4
	cmp r0, #0
	bne _02244842
	mov r0, #0xc0
	mul r0, r4
	ldr r1, _022448DC ; =0x00002DAC
	mov r3, #0
	add r2, r5, r0
	str r3, [r2, r1]
	add r1, r1, #4
	add r3, r5, r1
	ldr r2, [r3, r0]
	ldr r1, _022448E0 ; =0xF7FFFFFF
	and r1, r2
	str r1, [r3, r0]
	b _022448C6
_02244842:
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r1, #0
	str r4, [r5, r1]
	add r0, #0x1c
	ldr r2, [r5, r0]
	mov r0, #0xa
	orr r0, r2
	add r1, #0x1c
	str r0, [r5, r1]
	b _022448C6
_02244858:
	mov r1, #0x4d
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r5, r1]
	b _022448C6
_02244866:
	ldr r3, [r5, #0x64]
	mov r2, #0xc0
	mul r2, r3
	add r3, r5, r2
	ldr r2, _022448DC ; =0x00002DAC
	str r0, [r3, r2]
	add r0, r2, #4
	add r6, r5, r0
	ldr r0, [r5, #0x64]
	mov r2, #0xc0
	add r3, r0, #0
	mul r3, r2
	ldr r2, [r6, r3]
	ldr r0, _022448E0 ; =0xF7FFFFFF
	and r0, r2
	str r0, [r6, r3]
	mov r0, #2
	tst r0, r4
	beq _022448BE
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x10
	bl ov16_0224A984
	add r4, r0, #0
	bl sub_020787CC
	ldr r1, _022448E4 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _022448C6
	mov r0, #0xc0
	mul r0, r4
	ldr r1, _022448DC ; =0x00002DAC
	mov r3, #0
	add r2, r5, r0
	str r3, [r2, r1]
	add r1, r1, #4
	add r3, r5, r1
	ldr r2, [r3, r0]
	ldr r1, _022448E0 ; =0xF7FFFFFF
	and r1, r2
	str r1, [r3, r0]
	b _022448C6
_022448BE:
	ldr r2, [r5, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r5, r1]
_022448C6:
	ldr r3, _022448D8 ; =0x00003044
	ldr r2, [r5, #0x64]
	ldr r3, [r5, r3]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_02266498
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022448D8: .word 0x00003044
_022448DC: .word 0x00002DAC
_022448E0: .word 0xF7FFFFFF
_022448E4: .word 0x00003108
	thumb_func_end ov16_02244798

	thumb_func_start ov16_022448E8
ov16_022448E8: ; 0x022448E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r6, #0
	bl ov16_0223DF0C
	str r0, [sp, #4]
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov16_0223E208
	add r7, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov16_0223E208
	cmp r0, #0
	beq _02244938
	ldr r0, [sp, #4]
	mov r1, #0x84
	tst r0, r1
	bne _02244938
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
	b _022449FC
_02244938:
	ldr r0, [r5, #0x64]
	add r1, r5, r0
	ldr r0, _02244A04 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020787CC
	lsl r1, r7, #3
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	beq _02244960
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
	b _022449FC
_02244960:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x79
	beq _02244978
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x79
	bne _02244982
_02244978:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
	b _022449FC
_02244982:
	ldr r2, [r5, #0x6c]
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r3, _02244A08 ; =0x00002DB8
	add r0, r5, r1
	ldrh r0, [r0, r3]
	cmp r0, #0x70
	bne _0224499E
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
	b _022449FC
_0224499E:
	add r3, #0x14
	add r3, r5, r3
	ldr r1, [r3, r1]
	lsl r3, r1, #3
	lsr r3, r3, #0x1f
	bne _022449B0
	lsl r1, r1, #2
	lsr r1, r1, #0x1f
	beq _022449BA
_022449B0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
	b _022449FC
_022449BA:
	cmp r0, #0
	beq _022449D6
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r3, #0x3c
	bl ov16_02255AB4
	cmp r0, #1
	bne _022449D6
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_02248AF0
	b _022449FC
_022449D6:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02244A08 ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _022449F4
	ldr r2, [r5, #0x6c]
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_02255980
	cmp r0, #0
	bne _022449FC
_022449F4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
_022449FC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244A04: .word 0x0000219C
_02244A08: .word 0x00002DB8
	thumb_func_end ov16_022448E8

	thumb_func_start ov16_02244A0C
ov16_02244A0C: ; 0x02244A0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	ldr r1, [r5, #0x64]
	str r0, [sp, #8]
	lsl r0, r1, #1
	add r2, r5, r0
	ldr r0, _02244B2C ; =0x0000305C
	ldrh r0, [r2, r0]
	cmp r0, #0xb6
	beq _02244A4C
	cmp r0, #0xc5
	beq _02244A4C
	cmp r0, #0xcb
	beq _02244A4C
	ldr r0, _02244B30 ; =0x00002DC8
	add r3, r1, #0
	mov r2, #0xc0
	add r0, r5, r0
	mul r3, r2
	ldr r2, [r0, r3]
	ldr r1, _02244B34 ; =0xFFFFE7FF
	and r1, r2
	str r1, [r0, r3]
_02244A4C:
	ldr r0, _02244B38 ; =0x00003150
	ldr r0, [r5, r0]
	cmp r0, #1
	beq _02244A5A
	mov r0, #1
	str r0, [sp, #4]
	b _02244A5E
_02244A5A:
	mov r0, #0
	str r0, [sp, #4]
_02244A5E:
	ldr r6, [r5, #0x64]
	ldr r0, _02244B30 ; =0x00002DC8
	add r7, r6, #0
	add r4, r5, r0
	mov r0, #0xc0
	mul r7, r0
	ldr r0, [sp]
	bl ov16_0223F4BC
	ldr r1, [r4, r7]
	lsl r1, r1, #0x13
	lsr r1, r1, #0x1e
	lsl r2, r1, #1
	ldr r1, _02244B3C ; =0x0226E57C
	ldrh r1, [r1, r2]
	cmp r1, r0
	blo _02244B16
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02244B16
	ldr r0, _02244B40 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02244B44 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x6f
	bne _02244AAE
	mov r2, #0x75
	lsl r2, r2, #2
	add r0, r5, r2
	lsl r4, r6, #6
	ldr r3, [r0, r4]
	mov r1, #4
	orr r1, r3
	str r1, [r0, r4]
	add r0, r5, #0
	sub r2, #0xba
	add r0, #0xf6
	strh r2, [r0]
_02244AAE:
	ldr r0, _02244B40 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02244B44 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x74
	bne _02244ADA
	mov r2, #0x75
	ldr r1, [r5, #0x64]
	lsl r2, r2, #2
	lsl r4, r1, #6
	add r0, r5, r2
	add r1, r2, #0
	ldr r3, [r0, r4]
	add r1, #0x2c
	orr r1, r3
	str r1, [r0, r4]
	add r0, r5, #0
	sub r2, #0x1a
	add r0, #0xf6
	strh r2, [r0]
_02244ADA:
	add r0, r5, #0
	mov r1, #2
	add r0, #0xf5
	strb r1, [r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	ldr r2, [r5, #0x64]
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r0, _02244B30 ; =0x00002DC8
	add r0, r5, r0
	ldr r3, [r0, r1]
	lsl r2, r3, #0x13
	lsr r4, r2, #0x1e
	cmp r4, #3
	bhs _02244B26
	ldr r2, _02244B34 ; =0xFFFFE7FF
	and r3, r2
	add r2, r4, #1
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x13
	orr r2, r3
	str r2, [r0, r1]
	b _02244B26
_02244B16:
	ldr r1, [r4, r7]
	ldr r0, _02244B34 ; =0xFFFFE7FF
	and r0, r1
	str r0, [r4, r7]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AF0
_02244B26:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02244B2C: .word 0x0000305C
_02244B30: .word 0x00002DC8
_02244B34: .word 0xFFFFE7FF
_02244B38: .word 0x00003150
_02244B3C: .word 0x0226E57C
_02244B40: .word 0x00003044
_02244B44: .word 0x000003DE
	thumb_func_end ov16_02244A0C

	thumb_func_start ov16_02244B48
ov16_02244B48: ; 0x02244B48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02244BB4 ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov16_022563F8
	ldr r1, [r5, #0x64]
	mov r2, #0xc0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	ldr r3, _02244BB8 ; =0x00002D8C
	ldr r1, [r1, r3]
	cmp r1, r0
	bgt _02244B8A
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
	b _02244BAE
_02244B8A:
	ldr r1, _02244BBC ; =0x0000215C
	neg r4, r0
	str r4, [r5, r1]
	ldr r1, [r5, #0x64]
	add r4, r1, #0
	add r1, r3, #0
	mul r4, r2
	add r3, #0x24
	add r4, r5, r4
	add r1, #0x54
	str r0, [r4, r1]
	ldr r0, [r5, #0x64]
	add r3, r5, r3
	mul r2, r0
	ldr r1, [r3, r2]
	ldr r0, _02244BC0 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r3, r2]
_02244BAE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02244BB4: .word 0x00002D90
_02244BB8: .word 0x00002D8C
_02244BBC: .word 0x0000215C
_02244BC0: .word 0xFFFF1FFF
	thumb_func_end ov16_02244B48

	thumb_func_start ov16_02244BC4
ov16_02244BC4: ; 0x02244BC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, [sp, #4]
	bl ov16_02248AD0
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	bl ov16_0223DF0C
	add r4, r0, #0
	mov r0, #1
	tst r0, r4
	bne _02244BEC
	b _02244D3E
_02244BEC:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r1, #0x6c]
	mov r7, #0
	bl ov16_0223DF20
	ldr r1, [sp, #4]
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r1, [r1, #0x6c]
	bl ov16_0223DF60
	add r6, r0, #0
	mov r0, #8
	tst r0, r4
	bne _02244C20
	mov r0, #0x10
	tst r0, r4
	beq _02244C38
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r1, #0x6c]
	bl ov16_0223E208
	cmp r0, #0
	beq _02244C38
_02244C20:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x6c]
	add r1, r0, r1
	ldr r0, _02244D58 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	b _02244C78
_02244C38:
	mov r0, #2
	str r0, [sp, #0x14]
	tst r0, r4
	beq _02244C62
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x6c]
	add r2, r0, r1
	ldr r0, _02244D58 ; =0x0000219C
	ldrb r0, [r2, r0]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov16_0223E258
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r0, _02244D58 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #8]
	b _02244C78
_02244C62:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x6c]
	add r1, r0, r1
	ldr r0, _02244D58 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
_02244C78:
	ldr r5, [sp, #0x10]
	add r0, r5, #0
	cmp r0, r6
	bge _02244CBA
_02244C80:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02244CB4
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02244CB4
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02244CB4
	add r7, r7, #1
_02244CB4:
	add r5, r5, #1
	cmp r5, r6
	blt _02244C80
_02244CBA:
	ldr r0, [sp, #0x14]
	cmp r7, r0
	bgt _02244CCA
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	bl ov16_02248AF0
	b _02244D52
_02244CCA:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov16_022559FC
	cmp r0, #0
	beq _02244D34
	mov r7, #5
_02244CD8:
	ldr r0, [sp]
	bl ov16_0223F4BC
	add r1, r6, #0
	bl _s32_div_f
	ldr r0, [sp, #0x10]
	add r5, r1, #0
	add r5, r5, r0
	ldr r0, [sp, #0xc]
	cmp r5, r0
	beq _02244CD8
	ldr r0, [sp, #8]
	cmp r5, r0
	beq _02244CD8
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_0207A0FC
	add r1, r7, #0
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02244CD8
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	beq _02244CD8
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02244CD8
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x6c]
	add r1, r0, r1
	ldr r0, _02244D5C ; =0x000021A0
	strb r5, [r1, r0]
	b _02244D52
_02244D34:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	bl ov16_02248AF0
	b _02244D52
_02244D3E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov16_022559FC
	cmp r0, #0
	bne _02244D52
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	bl ov16_02248AF0
_02244D52:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244D58: .word 0x0000219C
_02244D5C: .word 0x000021A0
	thumb_func_end ov16_02244BC4

	thumb_func_start ov16_02244D60
ov16_02244D60: ; 0x02244D60
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r5, [r4, #0x64]
	ldr r1, _02244F30 ; =0x00002DB0
	add r0, r5, #0
	mov r2, #0xc0
	mov r5, #2
	add r3, r4, r1
	mul r0, r2
	ldr r6, [r3, r0]
	lsl r5, r5, #0x14
	orr r5, r6
	str r5, [r3, r0]
	ldr r3, [r4, #0x64]
	mov r0, #0
	add r5, r3, #0
	mul r5, r2
	add r3, r1, #0
	add r5, r4, r5
	add r3, #0x38
	strh r0, [r5, r3]
	add r3, r1, #0
	add r3, #0x18
	ldr r6, [r4, #0x64]
	add r5, r4, r3
	add r3, r6, #0
	mul r3, r2
	ldr r7, [r5, r3]
	mov r6, #7
	bic r7, r6
	str r7, [r5, r3]
	ldr r3, [r4, #0x6c]
	add r5, r3, #0
	mul r5, r2
	add r3, r1, #0
	add r5, r4, r5
	sub r3, #8
	ldr r3, [r5, r3]
	ldr r5, [r4, #0x64]
	add r6, r5, #0
	mul r6, r2
	add r5, r1, #0
	add r6, r4, r6
	add r5, #0x34
	str r3, [r6, r5]
	ldr r3, [r4, #0x6c]
	add r5, r3, #0
	mul r5, r2
	add r3, r1, #0
	add r5, r4, r5
	add r3, #0xe
	ldrb r3, [r5, r3]
	ldr r5, [r4, #0x64]
	add r6, r5, #0
	lsl r3, r3, #0x1c
	mul r6, r2
	add r5, r1, #0
	lsr r3, r3, #0x1c
	add r6, r4, r6
	add r5, #0x4a
	strh r3, [r6, r5]
	add r3, r1, #0
	add r3, #0x1c
	ldr r6, [r4, #0x64]
	add r5, r4, r3
	add r3, r6, #0
	mul r3, r2
	ldr r7, [r5, r3]
	mov r6, #0x3c
	bic r7, r6
	str r7, [r5, r3]
	ldr r6, [r4, #0x64]
	sub r1, #0x70
	add r3, r6, #0
	mul r3, r2
	ldr r7, [r5, r3]
	ldr r6, _02244F34 ; =0xFFFFE3FF
	and r6, r7
	str r6, [r5, r3]
	add r5, r4, r1
	ldr r1, [r4, #0x64]
	add r3, r1, #0
	mul r3, r2
	ldr r1, [r4, #0x6c]
	add r3, r5, r3
	mul r2, r1
	add r2, r5, r2
_02244E16:
	ldrb r1, [r2, r0]
	strb r1, [r3, r0]
	add r0, r0, #1
	cmp r0, #0x28
	blo _02244E16
	ldr r3, [r4, #0x64]
	ldr r1, _02244F38 ; =0x00002D68
	add r6, r3, #0
	mov r2, #0xc0
	add r0, r4, r1
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #1
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #2
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #4
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #8
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #0x10
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #0x20
	bic r5, r3
	str r5, [r0, r6]
	ldr r5, [r4, #0x64]
	add r3, r5, #0
	mul r3, r2
	ldr r6, [r0, r3]
	ldr r5, _02244F3C ; =0xFFFFFEFF
	and r5, r6
	str r5, [r0, r3]
	ldr r5, [r4, #0x64]
	add r3, r5, #0
	mul r3, r2
	ldr r6, [r0, r3]
	ldr r5, _02244F40 ; =0xFFFFFDFF
	and r5, r6
	str r5, [r0, r3]
	ldr r5, [r4, #0x64]
	add r3, r5, #0
	mul r3, r2
	ldr r6, [r0, r3]
	ldr r5, _02244F44 ; =0xFFFFFBFF
	and r5, r6
	str r5, [r0, r3]
	add r3, r1, #0
	add r3, #0x60
	add r6, r4, r3
	ldr r3, [r4, #0x64]
	add r1, #0x70
	add r5, r3, #0
	mul r5, r2
	ldr r7, [r6, r5]
	ldr r3, _02244F48 ; =0xBFFFFFFF
	and r3, r7
	add r7, r2, #0
	add r7, #0x90
	ldr r7, [r4, r7]
	lsl r7, r7, #0x1f
	lsr r7, r7, #1
	orr r3, r7
	str r3, [r6, r5]
	add r3, r2, #0
	add r3, #0x90
	ldr r3, [r4, r3]
	add r6, r3, #1
	ldr r3, [r4, #0x64]
	add r5, r3, #0
	mul r5, r2
	add r3, r4, r5
	str r6, [r3, r1]
	ldr r1, [r4, #0x64]
	add r5, r1, #0
	mul r5, r2
	ldr r3, [r0, r5]
	mov r1, #0x40
	bic r3, r1
	str r3, [r0, r5]
	ldr r1, [r4, #0x64]
	mov r6, #0
	add r3, r1, #0
	mul r3, r2
	ldr r2, [r0, r3]
	mov r1, #0x80
	bic r2, r1
	str r2, [r0, r3]
	mov r0, #0xf9
	add r5, r6, #0
	mov r1, #5
	lsl r0, r0, #2
_02244EFE:
	ldr r3, [r4, #0x64]
	mov r2, #0xc0
	mul r2, r3
	add r3, r4, r2
	ldr r2, _02244F4C ; =0x00002D4C
	add r7, r3, r5
	ldrh r2, [r7, r2]
	lsl r2, r2, #4
	add r2, r4, r2
	ldrb r2, [r2, r0]
	cmp r2, #5
	bhs _02244F1E
	add r7, r3, r6
	ldr r3, _02244F50 ; =0x00002D6C
	strb r2, [r7, r3]
	b _02244F24
_02244F1E:
	ldr r2, _02244F50 ; =0x00002D6C
	add r3, r3, r6
	strb r1, [r3, r2]
_02244F24:
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #4
	blt _02244EFE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244F30: .word 0x00002DB0
_02244F34: .word 0xFFFFE3FF
_02244F38: .word 0x00002D68
_02244F3C: .word 0xFFFFFEFF
_02244F40: .word 0xFFFFFDFF
_02244F44: .word 0xFFFFFBFF
_02244F48: .word 0xBFFFFFFF
_02244F4C: .word 0x00002D4C
_02244F50: .word 0x00002D6C
	thumb_func_end ov16_02244D60

	thumb_func_start ov16_02244F54
ov16_02244F54: ; 0x02244F54
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223E208
	mov r2, #0x72
	mov r1, #1
	add r3, r0, #0
	eor r3, r1
	lsl r0, r3, #3
	add r5, r4, r0
	lsl r2, r2, #2
	ldr r5, [r5, r2]
	lsl r5, r5, #0x1e
	lsr r5, r5, #0x1e
	cmp r5, #3
	bne _02244FAA
	mov r0, #0xb5
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r3, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r3
	ldr r5, [r2, r0]
	mov r3, #1
	bic r5, r3
	orr r1, r5
	str r1, [r2, r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
	b _02244FD2
_02244FAA:
	add r1, r2, #0
	sub r1, #0xc
	lsl r6, r3, #2
	add r1, r4, r1
	ldr r5, [r1, r6]
	mov r3, #4
	orr r3, r5
	str r3, [r1, r6]
	add r2, r4, r2
	ldr r4, [r2, r0]
	mov r3, #3
	add r1, r4, #0
	bic r1, r3
	lsl r3, r4, #0x1e
	lsr r3, r3, #0x1e
	add r4, r3, #1
	mov r3, #3
	and r3, r4
	orr r1, r3
	str r1, [r2, r0]
_02244FD2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02244F54

	thumb_func_start ov16_02244FD8
ov16_02244FD8: ; 0x02244FD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0224A984
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_0223E208
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1e
	lsr r1, r0, #0x1e
	beq _02245046
	mov r0, #0xc0
	mul r0, r4
	ldr r4, _02245054 ; =0x00002D8C
	add r0, r5, r0
	ldr r2, [r0, r4]
	cmp r2, #0
	beq _02245046
	mov r2, #5
	sub r1, r2, r1
	ldr r3, _02245058 ; =0x0000215C
	lsl r1, r1, #1
	str r1, [r5, r3]
	add r1, r4, #4
	ldr r1, [r0, r1]
	sub r0, r2, #6
	mul r0, r1
	ldr r1, [r5, r3]
	bl ov16_022563F8
	ldr r1, _02245058 ; =0x0000215C
	str r0, [r5, r1]
	b _0224504E
_02245046:
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
_0224504E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245054: .word 0x00002D8C
_02245058: .word 0x0000215C
	thumb_func_end ov16_02244FD8

	thumb_func_start ov16_0224505C
ov16_0224505C: ; 0x0224505C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, [sp]
	bl ov16_02248AD0
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov16_0223DF1C
	mov r2, #0x4d
	mov r7, #0
	str r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp]
	lsl r2, r2, #2
	str r1, [r0, r2]
	ldr r0, [sp, #4]
	add r6, r7, #0
	cmp r0, #0
	ble _022450EC
	ldr r4, [sp]
	ldr r1, _02245100 ; =0x00002DC8
	add r0, r4, #0
	add r5, r0, r1
_02245098:
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x20
	tst r0, r1
	bne _022450BE
	ldr r0, _02245104 ; =0x00002D8C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022450BE
	ldr r0, [sp]
	add r2, r6, #0
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	mov r3, #0x2b
	bl ov16_02255AB4
	cmp r0, #1
	bne _022450C2
_022450BE:
	add r7, r7, #1
	b _022450E0
_022450C2:
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x20
	orr r1, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	str r1, [r4, r0]
	ldr r1, [r5, #0]
	ldr r0, _02245108 ; =0xFFFF9FFF
	and r1, r0
	mov r0, #6
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r5, #0]
_022450E0:
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r4, #0xc0
	add r5, #0xc0
	cmp r6, r0
	blt _02245098
_022450EC:
	ldr r0, [sp, #4]
	cmp r7, r0
	bne _022450FA
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov16_02248AF0
_022450FA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02245100: .word 0x00002DC8
_02245104: .word 0x00002D8C
_02245108: .word 0xFFFF9FFF
	thumb_func_end ov16_0224505C

	thumb_func_start ov16_0224510C
ov16_0224510C: ; 0x0224510C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248B10
	ldr r1, _0224513C ; =0x00003104
	ldr r1, [r4, r1]
	add r2, r4, r1
	ldr r1, _02245140 ; =0x000021EC
	ldrb r1, [r2, r1]
	str r1, [r0, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224513C: .word 0x00003104
_02245140: .word 0x000021EC
	thumb_func_end ov16_0224510C

	thumb_func_start ov16_02245144
ov16_02245144: ; 0x02245144
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_02248B10
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_0223DF1C
	ldr r1, [r6, #0]
	cmp r1, r0
	bhs _02245182
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_02248AF0
_02245182:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02245144

	thumb_func_start ov16_02245188
ov16_02245188: ; 0x02245188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0224A984
	add r4, r0, #0
	mov r0, #0x4e
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r5, r0]
	ldr r0, _02245430 ; =0x0000215C
	add r1, r4, #0
	str r3, [r5, r0]
	add r0, r5, #0
	mov r2, #0x1b
	bl ov16_02252060
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	add r7, r0, #0
	mov r0, #0xd
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _022451F8
	mov r0, #0x4c
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	beq _022451FA
_022451F8:
	b _02245428
_022451FA:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0xc
	tst r0, r1
	beq _02245264
	ldr r0, [sp, #4]
	cmp r0, #5
	beq _02245264
	cmp r7, #5
	beq _02245264
	cmp r0, #8
	beq _02245264
	cmp r7, #8
	beq _02245264
	cmp r0, #4
	beq _02245264
	cmp r7, #4
	beq _02245264
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r0, _02245434 ; =0x00002D8C
	add r1, r5, r6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02245264
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #8
	beq _02245264
	mov r3, #0xb7
	add r1, r5, r6
	lsl r3, r3, #6
	ldr r2, [r1, r3]
	ldr r0, _02245438 ; =0x00040080
	tst r0, r2
	bne _02245264
	mov r0, #0xc9
	add r2, r0, #0
	add r2, #0x5b
	str r0, [r5, r2]
	sub r3, #0x30
	ldr r1, [r1, r3]
	sub r0, #0xca
	mul r0, r1
	mov r1, #0x10
	bl ov16_022563F8
	ldr r1, _02245430 ; =0x0000215C
	str r0, [r5, r1]
_02245264:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _022452CC
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r0, _02245434 ; =0x00002D8C
	add r2, r5, r6
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _022452CC
	add r0, #0x34
	ldr r1, [r2, r0]
	ldr r0, _02245438 ; =0x00040080
	tst r0, r1
	bne _022452CC
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x57
	beq _022452A2
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x5e
	bne _022452B8
_022452A2:
	ldr r0, _0224543C ; =0x00002D90
	add r1, r5, r6
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	mov r1, #8
	bl ov16_022563F8
	ldr r1, _02245430 ; =0x0000215C
	str r0, [r5, r1]
_022452B8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x5e
	bne _022452CC
	mov r0, #0x4e
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
_022452CC:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0xc0
	tst r1, r0
	beq _0224534E
	ldr r1, _02245434 ; =0x00002D8C
	add r6, r4, #0
	mul r6, r0
	add r0, r5, r1
	str r0, [sp, #8]
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _0224534E
	add r0, r5, r6
	add r1, #0x34
	ldr r1, [r0, r1]
	ldr r0, _02245438 ; =0x00040080
	tst r0, r1
	bne _0224534E
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x73
	bne _0224531A
	ldr r0, _0224543C ; =0x00002D90
	add r1, r5, r6
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	ldr r1, [r1, r6]
	cmp r1, r0
	bhs _0224534E
	mov r1, #0x10
	bl ov16_022563F8
	ldr r1, _02245430 ; =0x0000215C
	str r0, [r5, r1]
	b _0224534E
_0224531A:
	ldr r0, [sp, #4]
	cmp r0, #0xf
	beq _0224534E
	cmp r7, #0xf
	beq _0224534E
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x51
	beq _0224534E
	ldr r1, _02245440 ; =0x00000102
	add r0, r1, #0
	add r0, #0x22
	str r1, [r5, r0]
	ldr r0, _0224543C ; =0x00002D90
	add r1, r5, r6
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	mov r1, #0x10
	bl ov16_022563F8
	ldr r1, _02245430 ; =0x0000215C
	str r0, [r5, r1]
_0224534E:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	beq _02245428
	ldr r1, _02245434 ; =0x00002D8C
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	add r7, r5, r1
	ldr r0, [r7, r6]
	cmp r0, #0
	beq _02245390
	add r1, r1, #4
	add r1, r5, r1
	str r1, [sp, #0xc]
	ldr r1, [r1, r6]
	cmp r0, r1
	bhs _02245390
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x2c
	bne _02245390
	ldr r0, [sp, #0xc]
	mov r1, #0x10
	ldr r0, [r0, r6]
	bl ov16_022563F8
	ldr r1, _02245430 ; =0x0000215C
	str r0, [r5, r1]
_02245390:
	ldr r0, [r7, r6]
	cmp r0, #0
	beq _022453BC
	ldr r1, _0224543C ; =0x00002D90
	add r1, r5, r1
	str r1, [sp, #0x10]
	ldr r1, [r1, r6]
	cmp r0, r1
	bhs _022453BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x57
	bne _022453BC
	ldr r0, [sp, #0x10]
	mov r1, #8
	ldr r0, [r0, r6]
	bl ov16_022563F8
	ldr r1, _02245430 ; =0x0000215C
	str r0, [r5, r1]
_022453BC:
	ldr r0, [r7, r6]
	cmp r0, #0
	beq _02245428
	ldr r0, _02245444 ; =0x00002DAC
	add r7, r5, r0
	ldr r0, [r7, r6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _02245428
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x5d
	bne _02245428
	ldr r0, [r7, r6]
	mov r1, #7
	tst r1, r0
	beq _022453EC
	mov r0, #0x13
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _02245420
_022453EC:
	ldr r1, _02245448 ; =0x00000F88
	tst r1, r0
	beq _022453FC
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _02245420
_022453FC:
	mov r1, #0x10
	tst r1, r0
	beq _0224540C
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _02245420
_0224540C:
	mov r1, #0x40
	tst r0, r1
	beq _0224541A
	mov r0, #3
	add r1, #0xf0
	str r0, [r5, r1]
	b _02245420
_0224541A:
	mov r0, #4
	add r1, #0xf0
	str r0, [r5, r1]
_02245420:
	mov r0, #0x4e
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
_02245428:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02245430: .word 0x0000215C
_02245434: .word 0x00002D8C
_02245438: .word 0x00040080
_0224543C: .word 0x00002D90
_02245440: .word 0x00000102
_02245444: .word 0x00002DAC
_02245448: .word 0x00000F88
	thumb_func_end ov16_02245188

	thumb_func_start ov16_0224544C
ov16_0224544C: ; 0x0224544C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r6, [r4, #0x64]
	mov r0, #0xb5
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x1c
	add r1, r6, #0
	mul r1, r0
	ldr r3, [r2, r1]
	ldr r0, _0224554C ; =0xFFFFFE3F
	mov r7, #0xc0
	and r0, r3
	add r3, r6, #0
	mul r3, r7
	add r6, r4, r3
	ldr r3, _02245550 ; =0x00002DC8
	ldr r6, [r6, r3]
	sub r3, #0x18
	lsl r6, r6, #0xe
	lsr r6, r6, #0x1d
	lsl r6, r6, #0x1d
	lsr r6, r6, #0x17
	orr r0, r6
	str r0, [r2, r1]
	ldr r2, [r4, #0x64]
	add r0, r2, #0
	mul r0, r7
	add r0, r4, r0
	ldr r1, [r0, r3]
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r1
	bne _022454BA
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02253EF0
	ldr r0, _02245550 ; =0x00002DC8
	ldr r2, [r4, #0x64]
	add r1, r4, r0
	add r0, r7, #0
	mul r0, r2
	ldr r3, [r1, r0]
	ldr r2, _02245554 ; =0xFFFC7FFF
	and r3, r2
	mov r2, #0xa
	lsl r2, r2, #0xe
	orr r2, r3
	str r2, [r1, r0]
_022454BA:
	ldr r1, [r4, #0x64]
	ldr r0, _02245550 ; =0x00002DC8
	mov r7, #0xc0
	add r3, r1, #0
	add r6, r4, r0
	mul r3, r7
	ldr r1, [r6, r3]
	ldr r2, _02245554 ; =0xFFFC7FFF
	and r2, r1
	lsl r1, r1, #0xe
	lsr r1, r1, #0x1d
	sub r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xe
	orr r1, r2
	str r1, [r6, r3]
	ldr r2, [r4, #0x64]
	add r1, r2, #0
	mul r1, r7
	add r1, r4, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #0xe
	lsr r0, r0, #0x1d
	bne _022454F2
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02253F20
_022454F2:
	ldr r0, _02245558 ; =0x00003044
	mov r2, #1
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224555C ; =0x000003E1
	ldrb r1, [r1, r0]
	ldr r0, _02245560 ; =0x00002154
	str r1, [r4, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02245550 ; =0x00002DC8
	ldr r0, [r1, r0]
	lsl r0, r0, #0xe
	lsr r1, r0, #0x1d
	mov r0, #5
	sub r3, r0, r1
	cmp r3, #1
	ble _0224552A
	ldr r0, _02245560 ; =0x00002154
_0224551E:
	ldr r1, [r4, r0]
	add r2, r2, #1
	lsl r1, r1, #1
	str r1, [r4, r0]
	cmp r2, r3
	blt _0224551E
_0224552A:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02245564 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _02245546
	ldr r0, _02245560 ; =0x00002154
	ldr r1, [r4, r0]
	lsl r1, r1, #1
	str r1, [r4, r0]
_02245546:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224554C: .word 0xFFFFFE3F
_02245550: .word 0x00002DC8
_02245554: .word 0xFFFC7FFF
_02245558: .word 0x00003044
_0224555C: .word 0x000003E1
_02245560: .word 0x00002154
_02245564: .word 0x00002DB0
	thumb_func_end ov16_0224544C

	thumb_func_start ov16_02245568
ov16_02245568: ; 0x02245568
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r0, _022455E4 ; =0x00002DC8
	add r0, r4, r0
	ldr r3, [r0, r1]
	lsl r2, r3, #0xb
	lsr r5, r2, #0x1d
	cmp r5, #5
	bhs _02245598
	ldr r2, _022455E8 ; =0xFFE3FFFF
	and r3, r2
	add r2, r5, #1
	lsl r2, r2, #0x1d
	lsr r2, r2, #0xb
	orr r2, r3
	str r2, [r0, r1]
_02245598:
	ldr r0, _022455EC ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _022455F0 ; =0x000003E1
	ldrb r1, [r1, r0]
	ldr r0, _022455F4 ; =0x00002154
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022455E4 ; =0x00002DC8
	mov r0, #1
	ldr r1, [r2, r1]
	lsl r1, r1, #0xb
	lsr r1, r1, #0x1d
	cmp r1, #1
	bls _022455DE
	ldr r3, _022455F4 ; =0x00002154
	ldr r2, _022455E4 ; =0x00002DC8
	mov r1, #0xc0
_022455C4:
	ldr r5, [r4, r3]
	add r0, r0, #1
	lsl r5, r5, #1
	str r5, [r4, r3]
	ldr r5, [r4, #0x64]
	add r6, r5, #0
	mul r6, r1
	add r5, r4, r6
	ldr r5, [r5, r2]
	lsl r5, r5, #0xb
	lsr r5, r5, #0x1d
	cmp r0, r5
	blo _022455C4
_022455DE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_022455E4: .word 0x00002DC8
_022455E8: .word 0xFFE3FFFF
_022455EC: .word 0x00003044
_022455F0: .word 0x000003E1
_022455F4: .word 0x00002154
	thumb_func_end ov16_02245568

	thumb_func_start ov16_022455F8
ov16_022455F8: ; 0x022455F8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r3, r0, #0
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r5, #0xc0
	add r1, r0, #0
	mul r1, r5
	ldr r6, _02245674 ; =0x00002DBE
	add r1, r4, r1
	ldrb r0, [r1, r6]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1c
	add r0, r5, #0
	add r0, #0x58
	ldr r0, [r4, r0]
	mul r5, r0
	add r5, r4, r5
	ldrb r5, [r5, r6]
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x1c
	cmp r5, r2
	beq _0224564A
	sub r6, #0xe
	ldr r6, [r1, r6]
	mov r1, #0xf
	lsl r1, r1, #0x10
	tst r1, r6
	bne _0224564A
	cmp r5, #2
	beq _0224564A
	cmp r2, #2
	bne _02245654
_0224564A:
	add r0, r4, #0
	add r1, r3, #0
	bl ov16_02248AF0
	b _0224566E
_02245654:
	bl sub_020787CC
	ldr r1, _02245678 ; =0x00002DB0
	mov r2, #0xc0
	add r1, r4, r1
	add r4, #0x94
	ldr r3, [r4, #0]
	lsl r0, r0, #0x10
	add r4, r3, #0
	mul r4, r2
	ldr r2, [r1, r4]
	orr r0, r2
	str r0, [r1, r4]
_0224566E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02245674: .word 0x00002DBE
_02245678: .word 0x00002DB0
	thumb_func_end ov16_022455F8

	thumb_func_start ov16_0224567C
ov16_0224567C: ; 0x0224567C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223E208
	mov r5, #0x6f
	add r2, r0, #0
	lsl r5, r5, #2
	add r1, r4, r5
	lsl r0, r2, #2
	ldr r6, [r1, r0]
	mov r3, #8
	tst r3, r6
	beq _022456C0
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_02248AF0
	ldr r1, _02245704 ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	b _02245700
_022456C0:
	mov r3, #8
	orr r3, r6
	str r3, [r1, r0]
	add r5, #8
	lsl r0, r2, #3
	add r1, r4, r5
	ldr r3, [r1, r0]
	ldr r2, _02245708 ; =0xFFF1FFFF
	and r3, r2
	mov r2, #0xa
	lsl r2, r2, #0x10
	orr r2, r3
	str r2, [r1, r0]
	ldr r3, [r1, r0]
	ldr r2, _0224570C ; =0xFFFE7FFF
	and r3, r2
	ldr r2, [r4, #0x64]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0xf
	orr r2, r3
	str r2, [r1, r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r4, #0x64]
	add r0, #0xf8
	str r1, [r0, #0]
	mov r0, #0xc6
	add r4, #0xf6
	strh r0, [r4]
_02245700:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245704: .word 0x0000216C
_02245708: .word 0xFFF1FFFF
_0224570C: .word 0xFFFE7FFF
	thumb_func_end ov16_0224567C

	thumb_func_start ov16_02245710
ov16_02245710: ; 0x02245710
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_0223F4BC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x66
	bge _0224573C
	ldr r0, _02245778 ; =0x00002154
	mov r1, #0x28
	str r1, [r4, r0]
	b _02245772
_0224573C:
	cmp r0, #0xb2
	bge _02245748
	ldr r0, _02245778 ; =0x00002154
	mov r1, #0x50
	str r1, [r4, r0]
	b _02245772
_02245748:
	cmp r0, #0xcc
	bge _02245754
	ldr r0, _02245778 ; =0x00002154
	mov r1, #0x78
	str r1, [r4, r0]
	b _02245772
_02245754:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224577C ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov16_022563F8
	ldr r1, _02245780 ; =0x0000215C
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02245772:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02245778: .word 0x00002154
_0224577C: .word 0x00002D90
_02245780: .word 0x0000215C
	thumb_func_end ov16_02245710

	thumb_func_start ov16_02245784
ov16_02245784: ; 0x02245784
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, _02245824 ; =0x00003120
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02245814
	add r0, r5, #0
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	ldr r0, _02245824 ; =0x00003120
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, #5
	bhs _022457BC
	ldr r1, _02245828 ; =0x00002154
	mov r2, #0xa
	str r2, [r4, r1]
	mov r1, #4
	strb r1, [r4, r0]
	b _02245814
_022457BC:
	cmp r1, #0xf
	bhs _022457CC
	ldr r1, _02245828 ; =0x00002154
	mov r2, #0x1e
	str r2, [r4, r1]
	mov r1, #5
	strb r1, [r4, r0]
	b _02245814
_022457CC:
	cmp r1, #0x23
	bhs _022457DC
	ldr r1, _02245828 ; =0x00002154
	mov r2, #0x32
	str r2, [r4, r1]
	mov r1, #6
	strb r1, [r4, r0]
	b _02245814
_022457DC:
	cmp r1, #0x41
	bhs _022457EC
	ldr r1, _02245828 ; =0x00002154
	mov r2, #0x46
	str r2, [r4, r1]
	mov r1, #7
	strb r1, [r4, r0]
	b _02245814
_022457EC:
	cmp r1, #0x55
	bhs _022457FC
	ldr r1, _02245828 ; =0x00002154
	mov r2, #0x5a
	str r2, [r4, r1]
	mov r1, #8
	strb r1, [r4, r0]
	b _02245814
_022457FC:
	cmp r1, #0x5f
	ldr r1, _02245828 ; =0x00002154
	bhs _0224580C
	mov r2, #0x6e
	str r2, [r4, r1]
	mov r1, #9
	strb r1, [r4, r0]
	b _02245814
_0224580C:
	mov r2, #0x96
	str r2, [r4, r1]
	mov r1, #0xa
	strb r1, [r4, r0]
_02245814:
	ldr r0, _02245824 ; =0x00003120
	ldrb r1, [r4, r0]
	mov r0, #0x13
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02245824: .word 0x00003120
_02245828: .word 0x00002154
	thumb_func_end ov16_02245784

	thumb_func_start ov16_0224582C
ov16_0224582C: ; 0x0224582C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0224A984
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_02255B10
	cmp r0, #0
	bne _02245876
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_02248AF0
	b _0224588A
_02245876:
	cmp r7, #1
	bne _0224588A
	mov r0, #0x4f
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r4, #2
	ldr r1, [r3, r2]
	mov r0, #1
	orr r0, r1
	str r0, [r3, r2]
_0224588A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0224582C

	thumb_func_start ov16_02245890
ov16_02245890: ; 0x02245890
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x64]
	bl ov16_0223E208
	ldr r1, [r4, #0x64]
	mov r6, #0xe
	ldr r5, _022459CC ; =0x00002DB0
	add r2, r1, #0
	mov r3, #0xc0
	mul r2, r3
	add r1, r4, r5
	ldr r7, [r1, r2]
	lsl r6, r6, #0xc
	tst r6, r7
	beq _022458EC
	ldr r0, _022459D0 ; =0xFFFF1FFF
	and r0, r7
	str r0, [r1, r2]
	ldr r0, [r4, #0x64]
	mov r2, #0x74
	add r1, r0, #0
	add r0, r5, #0
	mul r1, r3
	add r1, r4, r1
	add r0, #0x1c
	ldr r0, [r1, r0]
	add r5, #0x3a
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1e
	add r0, r3, #0
	add r0, #0x58
	str r1, [r4, r0]
	ldr r0, [r4, #0x64]
	add r1, r0, #0
	mul r1, r3
	add r0, r4, r1
	ldrh r0, [r0, r5]
	add r3, #0x64
	mov r1, #1
	str r0, [r4, r3]
	add r0, r4, #0
	bl ov16_02248B08
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022458EC:
	add r5, #0x10
	add r5, r4, r5
	ldr r1, [r5, r2]
	mov r6, #4
	tst r6, r1
	beq _02245922
	mov r0, #4
	bic r1, r0
	str r1, [r5, r2]
	ldr r0, [r4, #0x64]
	add r2, r0, #0
	mul r2, r3
	ldr r1, [r5, r2]
	mov r0, #3
	bic r1, r0
	str r1, [r5, r2]
	mov r1, #0x49
	add r0, r1, #0
	add r0, #0xdb
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x75
	bl ov16_02248B08
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245922:
	mov r1, #0x72
	lsl r1, r1, #2
	add r6, r4, r1
	lsl r5, r0, #3
	ldr r2, [r6, r5]
	lsl r3, r2, #0x1e
	lsr r3, r3, #0x1e
	beq _0224595E
	sub r1, #0xc
	lsl r3, r0, #2
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #4
	bic r2, r0
	str r2, [r1, r3]
	ldr r1, [r6, r5]
	mov r0, #3
	bic r1, r0
	str r1, [r6, r5]
	mov r1, #0xbf
	add r0, r1, #0
	add r0, #0x65
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x75
	bl ov16_02248B08
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224595E:
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1e
	beq _02245992
	add r2, r1, #0
	sub r2, #0xc
	lsl r7, r0, #2
	add r3, r4, r2
	ldr r2, [r3, r7]
	ldr r0, _022459D4 ; =0xFFFFFBFF
	and r0, r2
	str r0, [r3, r7]
	ldr r2, [r6, r5]
	mov r0, #0xc
	bic r2, r0
	add r0, r1, #0
	str r2, [r6, r5]
	sub r0, #0x42
	sub r1, #0xa4
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x75
	bl ov16_02248B08
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245992:
	add r2, r1, #0
	sub r2, #0xc
	add r2, r4, r2
	lsl r0, r0, #2
	ldr r6, [r2, r0]
	mov r5, #0x80
	add r3, r6, #0
	tst r3, r5
	beq _022459BE
	mov r3, #0x80
	bic r6, r3
	str r6, [r2, r0]
	sub r1, #0xa
	add r5, #0xa4
	str r1, [r4, r5]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x75
	bl ov16_02248B08
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022459BE:
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022459CC: .word 0x00002DB0
_022459D0: .word 0xFFFF1FFF
_022459D4: .word 0xFFFFFBFF
	thumb_func_end ov16_02245890

	thumb_func_start ov16_022459D8
ov16_022459D8: ; 0x022459D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, _02245A70 ; =0x000080FF
	tst r0, r1
	beq _02245A1A
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02245A1A
	mov r0, #0x4c
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	beq _02245A2E
_02245A1A:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02245A74 ; =0x00002D90
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	ldr r0, _02245A78 ; =0x0000215C
	str r1, [r4, r0]
	b _02245A6A
_02245A2E:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x30
	tst r0, r1
	ldr r1, [r4, #0x64]
	beq _02245A56
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02245A74 ; =0x00002D90
	ldr r1, [r1, r0]
	mov r0, #0x14
	mul r0, r1
	mov r1, #0x1e
	bl ov16_022563F8
	ldr r1, _02245A78 ; =0x0000215C
	str r0, [r4, r1]
	b _02245A6A
_02245A56:
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02245A74 ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov16_022563F8
	ldr r1, _02245A78 ; =0x0000215C
	str r0, [r4, r1]
_02245A6A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02245A70: .word 0x000080FF
_02245A74: .word 0x00002D90
_02245A78: .word 0x0000215C
	thumb_func_end ov16_022459D8

	thumb_func_start ov16_02245A7C
ov16_02245A7C: ; 0x02245A7C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, _02245B5C ; =0x00002D54
	ldr r1, [r4, #0x64]
	add r3, r4, r0
	mov r0, #0xc0
	mul r0, r1
	ldr r1, [r3, r0]
	mov r5, #2
	lsl r0, r1, #2
	lsr r0, r0, #0x1b
	and r0, r5
	lsl r2, r0, #4
	lsl r0, r1, #7
	lsr r0, r0, #0x1b
	and r0, r5
	lsl r7, r0, #3
	lsl r0, r1, #0xc
	lsr r0, r0, #0x1b
	and r0, r5
	lsl r0, r0, #2
	mov ip, r0
	lsl r0, r1, #0x11
	lsr r0, r0, #0x1b
	and r0, r5
	lsl r6, r0, #1
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x1b
	lsl r1, r1, #0x16
	and r0, r5
	lsr r1, r1, #0x1b
	lsr r0, r0, #1
	and r1, r5
	orr r0, r1
	add r1, r6, #0
	orr r1, r0
	mov r0, ip
	orr r0, r1
	orr r0, r7
	add r1, r2, #0
	orr r1, r0
	ldr r0, _02245B60 ; =0x00002154
	str r1, [r4, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r5, [r3, r0]
	lsl r0, r5, #2
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r6, r0, #0x1a
	lsl r0, r5, #7
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r3, r0, #0x1b
	lsl r0, r5, #0xc
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1c
	lsl r0, r5, #0x11
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r7, r0, #0x1d
	lsl r0, r5, #0x1b
	lsr r1, r0, #0x1b
	mov r0, #1
	and r0, r1
	lsl r1, r5, #0x16
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1e
	orr r0, r1
	orr r0, r7
	orr r0, r2
	orr r0, r3
	add r1, r6, #0
	orr r1, r0
	ldr r0, _02245B60 ; =0x00002154
	add r0, #0xc
	str r1, [r4, r0]
	ldr r0, _02245B60 ; =0x00002154
	ldr r1, [r4, r0]
	mov r0, #0x28
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	ldr r1, _02245B60 ; =0x00002154
	add r0, #0x1e
	str r0, [r4, r1]
	add r1, #0xc
	ldr r1, [r4, r1]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r1, r0, #1
	ldr r0, _02245B64 ; =0x00002160
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #9
	blt _02245B56
	add r1, r1, #1
	str r1, [r4, r0]
_02245B56:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245B5C: .word 0x00002D54
_02245B60: .word 0x00002154
_02245B64: .word 0x00002160
	thumb_func_end ov16_02245A7C

	thumb_func_start ov16_02245B68
ov16_02245B68: ; 0x02245B68
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r2, _02245BC0 ; =0x00002D58
	mov r1, #0
	mov r3, #0xc0
	add r5, r2, #0
_02245B7C:
	ldr r6, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r6
	ldr r6, [r4, #0x64]
	add r0, r4, r0
	add r0, r1, r0
	add r7, r6, #0
	mul r7, r3
	add r6, r4, r7
	add r6, r1, r6
	ldrsb r0, [r0, r2]
	add r1, r1, #1
	cmp r1, #8
	strb r0, [r6, r5]
	blt _02245B7C
	ldr r0, [r4, #0x64]
	ldr r6, [r4, #0x6c]
	mov r3, #0xc0
	add r1, r0, #0
	ldr r5, _02245BC4 ; =0x00002DB0
	mul r1, r3
	mul r3, r6
	add r2, r4, r5
	add r3, r4, r3
	ldr r4, [r3, r5]
	mov r3, #1
	lsl r3, r3, #0x14
	ldr r0, [r2, r1]
	and r3, r4
	orr r0, r3
	str r0, [r2, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245BC0: .word 0x00002D58
_02245BC4: .word 0x00002DB0
	thumb_func_end ov16_02245B68

	thumb_func_start ov16_02245BC8
ov16_02245BC8: ; 0x02245BC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	ldr r1, [r4, #0x6c]
	add r2, r0, #0
	mov r0, #0x62
	add r3, r4, r1
	lsl r0, r0, #2
	ldrb r0, [r3, r0]
	cmp r0, #0
	bne _02245CA0
	add r0, r7, #0
	bl ov16_0223E208
	mov r1, #0x6f
	lsl r1, r1, #2
	lsl r3, r0, #2
	add r5, r4, r1
	ldr r2, [r5, r3]
	mov r0, #0x10
	orr r0, r2
	str r0, [r5, r3]
	ldr r0, [r4, #0x6c]
	add r2, r1, #0
	add r6, r4, r0
	sub r2, #0x34
	mov r0, #3
	strb r0, [r6, r2]
	ldr r0, _02245CB0 ; =0x00003044
	ldr r6, [r4, r0]
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #1
	add r2, r4, r0
	add r0, r1, #0
	sub r0, #0x2c
	strh r6, [r2, r0]
	ldr r2, [r4, #0x6c]
	ldr r0, [r4, #0x64]
	lsl r2, r2, #2
	add r2, r4, r2
	sub r1, #0x24
	str r0, [r2, r1]
	mov r0, #3
	lsl r0, r0, #7
	ldr r0, [r4, r0]
	ldr r2, _02245CB0 ; =0x00003044
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x64]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r2, [r4, r2]
	ldr r3, [r5, r3]
	add r0, r7, #0
	bl ov16_0225A280
	mov r1, #0
	add r2, r0, #0
	mvn r1, r1
	mul r2, r1
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0225AEB8
	ldr r1, [r4, #0x6c]
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0x64]
	lsl r0, r0, #6
	add r2, r4, r0
	add r0, r1, #0
	add r0, #0x2c
	ldr r0, [r2, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02245CA8
	ldr r0, [r4, #0x6c]
	add r5, r4, r1
	lsl r4, r0, #2
	ldr r1, [r5, r4]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	str r0, [r5, r4]
	b _02245CA8
_02245CA0:
	add r0, r4, #0
	add r1, r2, #0
	bl ov16_02248AF0
_02245CA8:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245CB0: .word 0x00003044
	thumb_func_end ov16_02245BC8

	thumb_func_start ov16_02245CB4
ov16_02245CB4: ; 0x02245CB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_0224A984
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_0224B3E8
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl ov16_0224B9F4
	ldr r0, _02245D2C ; =0x0000216C
	ldr r1, [r4, r0]
	ldr r0, _02245D30 ; =0x001FD849
	tst r0, r1
	beq _02245D24
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov16_02248AF0
_02245D24:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245D2C: .word 0x0000216C
_02245D30: .word 0x001FD849
	thumb_func_end ov16_02245CB4

	thumb_func_start ov16_02245D34
ov16_02245D34: ; 0x02245D34
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ov16_02255C00
	cmp r0, #0
	beq _02245D62
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02245D62:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02245D34

	thumb_func_start ov16_02245D68
ov16_02245D68: ; 0x02245D68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r5, #0x64]
	add r0, r7, #0
	bl ov16_0223DF60
	ldr r1, _02245FA0 ; =0x0000217D
	str r0, [sp]
	ldrb r0, [r5, r1]
	cmp r0, #0
	bne _02245DFC
	mov r0, #2
	strb r0, [r5, r1]
	add r0, r1, #0
	mov r2, #0xfd
	add r0, #0xb
	str r2, [r5, r0]
	mov r2, #0
	add r0, r1, #2
	strb r2, [r5, r0]
	add r6, r1, #2
_02245D9E:
	ldr r2, _02245FA4 ; =0x0000217F
	ldr r1, [r5, #0x64]
	ldrb r2, [r5, r2]
	add r0, r7, #0
	bl ov16_0223DFAC
	ldr r1, _02245FA4 ; =0x0000217F
	add r4, r0, #0
	ldrb r3, [r5, r1]
	ldr r1, [r5, #0x64]
	add r2, r5, r1
	ldr r1, _02245FA8 ; =0x0000219C
	ldrb r1, [r2, r1]
	cmp r3, r1
	beq _02245DFC
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02245DF4
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02245DF4
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02245FAC ; =0x000001EE
	cmp r0, r1
	beq _02245DF4
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02245DFC
_02245DF4:
	ldrb r0, [r5, r6]
	add r0, r0, #1
	strb r0, [r5, r6]
	b _02245D9E
_02245DFC:
	ldr r2, _02245FA4 ; =0x0000217F
	ldr r1, [r5, #0x64]
	ldrb r2, [r5, r2]
	add r0, r7, #0
	bl ov16_0223DFAC
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r6, #0
	mov r2, #1
	bl sub_020759CC
	ldr r1, _02245FB0 ; =0x00002144
	ldr r2, _02245FB4 ; =0x00003044
	str r0, [r5, r1]
	ldr r2, [r5, r2]
	ldr r0, [r5, r1]
	lsl r2, r2, #4
	add r3, r5, r2
	ldr r2, _02245FB8 ; =0x000003E1
	ldrb r2, [r3, r2]
	mul r2, r0
	str r2, [r5, r1]
	lsl r0, r4, #1
	mov r1, #5
	bl _s32_div_f
	ldr r1, _02245FB0 ; =0x00002144
	add r0, r0, #2
	ldr r2, [r5, r1]
	mul r0, r2
	str r0, [r5, r1]
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	mov r1, #0xb5
	add r2, r5, r0
	lsl r1, r1, #6
	ldrh r0, [r2, r1]
	add r1, #0x26
	ldrb r1, [r2, r1]
	mov r2, #2
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	bl sub_020759CC
	add r1, r0, #0
	ldr r0, _02245FB0 ; =0x00002144
	ldr r0, [r5, r0]
	bl _u32_div_f
	ldr r1, _02245FB0 ; =0x00002144
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0x32
	bl _s32_div_f
	ldr r1, _02245FB0 ; =0x00002144
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	add r0, r0, #2
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	ldr r2, [r5, r1]
	ldr r0, [r5, r0]
	mul r0, r2
	str r0, [r5, r1]
	ldr r0, [r5, #0x64]
	lsl r0, r0, #6
	add r2, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02245EC8
	ldr r1, [r5, r1]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, _02245FB0 ; =0x00002144
	str r0, [r5, r1]
_02245EC8:
	ldr r2, _02245FB0 ; =0x00002144
	add r0, r7, #0
	ldr r2, [r5, r2]
	add r1, r5, #0
	bl ov16_0225AEB8
	ldr r1, _02245FB0 ; =0x00002144
	str r0, [r5, r1]
	mov r0, #0
	ldr r2, [r5, r1]
	mvn r0, r0
	mul r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r3, r1, #0
	ldr r2, _02245FBC ; =0x000001E1
	add r0, #0xf6
	strh r2, [r0]
	add r0, r5, #0
	mov r2, #2
	add r0, #0xf5
	strb r2, [r0]
	add r3, #0x3b
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0x64]
	add r6, r1, #0
	lsl r3, r3, #8
	orr r3, r0
	add r0, r5, #0
	add r0, #0xf8
	str r3, [r0, #0]
	add r0, r1, #0
	add r0, #0x3b
	ldrb r0, [r5, r0]
	add r6, #0x3b
	add r3, r0, #1
	add r0, r1, #0
	add r0, #0x3b
	strb r3, [r5, r0]
	add r0, r1, #0
	add r0, #0x38
	strb r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x3b
	ldrb r2, [r5, r0]
	ldr r0, [sp]
	cmp r2, r0
	bge _02245F92
_02245F28:
	ldr r1, [r5, #0x64]
	add r0, r7, #0
	bl ov16_0223DFAC
	ldr r1, _02245FA4 ; =0x0000217F
	add r4, r0, #0
	ldrb r3, [r5, r1]
	ldr r1, [r5, #0x64]
	add r2, r5, r1
	ldr r1, _02245FA8 ; =0x0000219C
	ldrb r1, [r2, r1]
	cmp r3, r1
	beq _02245F98
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02245F7A
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02245F7A
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02245FAC ; =0x000001EE
	cmp r0, r1
	beq _02245F7A
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02245F98
_02245F7A:
	ldrb r0, [r5, r6]
	add r0, r0, #1
	strb r0, [r5, r6]
	ldr r0, _02245FA4 ; =0x0000217F
	ldrb r2, [r5, r0]
	ldr r0, [sp]
	cmp r2, r0
	blt _02245F28
	ldr r0, _02245FC0 ; =0x0000217C
	mov r1, #1
	strb r1, [r5, r0]
	b _02245F98
_02245F92:
	mov r0, #1
	add r1, #0x38
	strb r0, [r5, r1]
_02245F98:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245FA0: .word 0x0000217D
_02245FA4: .word 0x0000217F
_02245FA8: .word 0x0000219C
_02245FAC: .word 0x000001EE
_02245FB0: .word 0x00002144
_02245FB4: .word 0x00003044
_02245FB8: .word 0x000003E1
_02245FBC: .word 0x000001E1
_02245FC0: .word 0x0000217C
	thumb_func_end ov16_02245D68

	thumb_func_start ov16_02245FC4
ov16_02245FC4: ; 0x02245FC4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223E208
	mov r1, #0x71
	lsl r1, r1, #2
	mov r2, #1
	add r1, r4, r1
	lsl r0, r0, #3
	ldr r3, [r1, r0]
	lsl r2, r2, #0x14
	orr r2, r3
	str r2, [r1, r0]
	ldr r3, [r1, r0]
	ldr r2, _02246000 ; =0xFF9FFFFF
	and r3, r2
	ldr r2, [r4, #0x64]
	lsl r2, r2, #0x1e
	lsr r2, r2, #9
	orr r2, r3
	str r2, [r1, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02246000: .word 0xFF9FFFFF
	thumb_func_end ov16_02245FC4

	thumb_func_start ov16_02246004
ov16_02246004: ; 0x02246004
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _0224608E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x10
	bl ov16_0224A984
	add r4, r0, #0
	bl sub_020787CC
	ldr r1, _0224609C ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _02246084
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, _022460A0 ; =0x000021A8
	ldr r0, [r1, r0]
	cmp r0, #0x27
	beq _02246084
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _022460A4 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02246084
	ldr r0, [r5, #0x64]
	mov r2, #0x75
	lsl r0, r0, #6
	add r0, r5, r0
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _02246084
	add r1, r5, r2
	lsl r0, r4, #6
	ldr r3, [r1, r0]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1f
	bne _02246084
	sub r2, #0xbc
	str r4, [r5, r2]
	ldr r3, [r1, r0]
	mov r2, #8
	orr r2, r3
	str r2, [r1, r0]
	b _02246096
_02246084:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02248AF0
	b _02246096
_0224608E:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02246096:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224609C: .word 0x00003108
_022460A0: .word 0x000021A8
_022460A4: .word 0x00002D8C
	thumb_func_end ov16_02246004

	thumb_func_start ov16_022460A8
ov16_022460A8: ; 0x022460A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov16_0223DF0C
	str r0, [sp, #8]
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223E208
	str r0, [sp]
	ldr r1, [r4, #0x6c]
	add r0, r5, #0
	bl ov16_0223E208
	add r7, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223E208
	cmp r0, #0
	beq _02246102
	ldr r0, [sp, #8]
	mov r1, #0x84
	tst r0, r1
	bne _02246102
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
	b _022461A0
_02246102:
	ldr r0, [r4, #0x64]
	add r1, r4, r0
	ldr r0, _022461A8 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020787CC
	ldr r1, [sp]
	lsl r1, r1, #3
	add r2, r4, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	bne _02246140
	ldr r0, [r4, #0x6c]
	add r1, r4, r0
	ldr r0, _022461A8 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020787CC
	lsl r1, r7, #3
	add r2, r4, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	beq _0224614A
_02246140:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
	b _022461A0
_0224614A:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	add r3, r4, r2
	ldr r2, _022461AC ; =0x00002DB8
	ldrh r3, [r3, r2]
	cmp r3, #0
	bne _02246168
	ldr r3, [r4, #0x6c]
	mul r0, r3
	add r0, r4, r0
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _0224617E
_02246168:
	add r0, r4, #0
	bl ov16_022559DC
	cmp r0, #0
	beq _0224617E
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov16_022559DC
	cmp r0, #0
	bne _02246188
_0224617E:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
	b _022461A0
_02246188:
	ldr r1, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	add r0, r4, #0
	mov r3, #0x3c
	bl ov16_02255AB4
	cmp r0, #1
	bne _022461A0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02248AF0
_022461A0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022461A8: .word 0x0000219C
_022461AC: .word 0x00002DB8
	thumb_func_end ov16_022460A8

	thumb_func_start ov16_022461B0
ov16_022461B0: ; 0x022461B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	mov r2, #0x63
	lsl r2, r2, #2
	ldr r3, [r4, #0x64]
	add r5, r4, r2
	add r1, r0, #0
	ldrb r0, [r5, r3]
	cmp r0, #0
	beq _022461DA
	add r0, r4, #0
	bl ov16_02248AF0
	b _022461EA
_022461DA:
	mov r0, #2
	strb r0, [r5, r3]
	ldr r0, [r4, #0x64]
	add r2, #0x2c
	add r1, r4, r0
	ldr r0, _022461F0 ; =0x0000219C
	ldrb r0, [r1, r0]
	strb r0, [r1, r2]
_022461EA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022461F0: .word 0x0000219C
	thumb_func_end ov16_022461B0

	thumb_func_start ov16_022461F4
ov16_022461F4: ; 0x022461F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, [sp, #4]
	bl ov16_02248AD0
	ldr r1, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [r1, #0x64]
	mov r7, #0
	bl ov16_0223DF60
	str r0, [sp, #0xc]
	add r0, r7, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _022462A2
	add r5, sp, #0x18
_02246226:
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x64]
	add r2, r0, r1
	ldr r0, _022462D0 ; =0x0000219C
	ldrb r2, [r2, r0]
	ldr r0, [sp, #0x10]
	cmp r0, r2
	beq _02246296
	ldr r0, [sp]
	ldr r2, [sp, #0x10]
	bl ov16_0223DFAC
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02074470
	cmp r0, #0
	beq _02246296
	ldr r0, [sp, #8]
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _022462D4 ; =0x000001EE
	cmp r0, r1
	beq _02246296
	mov r4, #0
_0224625E:
	add r1, r4, #0
	ldr r0, [sp, #8]
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	bl ov16_02255918
	cmp r0, #0
	bne _02246290
	ldr r1, [sp, #4]
	ldr r0, [sp]
	add r2, r1, #0
	ldr r2, [r2, #0x64]
	add r3, r6, #0
	bl ov16_0225B02C
	cmp r0, #1
	bne _02246290
	strh r6, [r5]
	add r5, r5, #2
	add r7, r7, #1
_02246290:
	add r4, r4, #1
	cmp r4, #4
	blt _0224625E
_02246296:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02246226
_022462A2:
	cmp r7, #0
	beq _022462C2
	ldr r0, [sp]
	bl ov16_0223F4BC
	add r1, r7, #0
	bl _s32_div_f
	lsl r1, r1, #1
	add r0, sp, #0x18
	ldrh r2, [r0, r1]
	mov r1, #0x49
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	str r2, [r0, r1]
	b _022462CA
_022462C2:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	bl ov16_02248AF0
_022462CA:
	mov r0, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022462D0: .word 0x0000219C
_022462D4: .word 0x000001EE
	thumb_func_end ov16_022461F4

	thumb_func_start ov16_022462D8
ov16_022462D8: ; 0x022462D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	mov r4, #0
	bl ov16_0223DF1C
	cmp r0, #0
	ble _02246306
_022462FA:
	add r0, r5, #0
	add r4, r4, #1
	bl ov16_0223DF1C
	cmp r4, r0
	blt _022462FA
_02246306:
	ldr r0, _02246330 ; =0x00003150
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _02246318
	add r0, r6, #0
	add r1, r7, #0
	bl ov16_02248AF0
	b _0224632A
_02246318:
	mov r0, #0x75
	lsl r0, r0, #2
	add r3, r6, r0
	ldr r0, [r6, #0x64]
	lsl r2, r0, #6
	ldr r1, [r3, r2]
	mov r0, #0x10
	orr r0, r1
	str r0, [r3, r2]
_0224632A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246330: .word 0x00003150
	thumb_func_end ov16_022462D8

	thumb_func_start ov16_02246334
ov16_02246334: ; 0x02246334
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov16_0223E208
	add r1, r5, #0
	ldr r4, [r5, #0x64]
	add r1, #0x84
	str r4, [r1, #0]
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #3
	str r1, [r5, #0x64]
	mov r1, #0x71
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _0224637E
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _022463DC ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _0224637E
	str r0, [r5, #0x6c]
	b _022463CA
_0224637E:
	ldr r0, _022463E0 ; =0x00003044
	ldr r3, [r5, r0]
	lsl r0, r3, #4
	add r1, r5, r0
	ldr r0, _022463E4 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #4
	beq _02246392
	cmp r0, #8
	bne _02246396
_02246392:
	str r4, [r5, #0x6c]
	b _022463CA
_02246396:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r3, r3, #0x10
	ldr r2, [r5, #0x64]
	add r0, r6, #0
	add r1, r5, #0
	lsr r3, r3, #0x10
	bl ov16_02253954
	mov r1, #0xb5
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x1c
	mul r1, r0
	ldr r1, [r2, r1]
	lsl r2, r1, #0x1e
	lsr r2, r2, #0x1f
	bne _022463C4
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _022463C8
_022463C4:
	str r0, [r5, #0x6c]
	b _022463CA
_022463C8:
	str r4, [r5, #0x6c]
_022463CA:
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022463DC: .word 0x00002D8C
_022463E0: .word 0x00003044
_022463E4: .word 0x000003E6
	thumb_func_end ov16_02246334

	thumb_func_start ov16_022463E8
ov16_022463E8: ; 0x022463E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r5, #0x64]
	ldr r0, [r5, #0x6c]
	lsl r4, r1, #6
	add r2, r5, r4
	lsl r1, r0, #2
	add r2, r2, r1
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _0224641A
	bl sub_020787CC
	mov r1, #0x7b
	add r2, r5, r4
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	tst r0, r1
	bne _02246440
_0224641A:
	ldr r0, [r5, #0x6c]
	add r2, r5, r4
	lsl r1, r0, #2
	add r2, r2, r1
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02246448
	bl sub_020787CC
	ldr r1, [r5, #0x64]
	lsl r1, r1, #6
	add r2, r5, r1
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	tst r0, r1
	beq _02246448
_02246440:
	ldr r0, _02246454 ; =0x00002158
	mov r1, #0x14
	str r1, [r5, r0]
	b _0224644E
_02246448:
	ldr r0, _02246454 ; =0x00002158
	mov r1, #0xa
	str r1, [r5, r0]
_0224644E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02246454: .word 0x00002158
	thumb_func_end ov16_022463E8

	thumb_func_start ov16_02246458
ov16_02246458: ; 0x02246458
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r1, [r4, #0x6c]
	add r0, r5, #0
	bl ov16_0223E208
	lsl r1, r0, #2
	add r2, r4, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r2, [r2, r1]
	mov r1, #1
	tst r1, r2
	bne _0224648C
	mov r1, #2
	tst r1, r2
	beq _022464BC
_0224648C:
	mov r5, #0x6f
	lsl r5, r5, #2
	add r2, r4, r5
	lsl r1, r0, #2
	ldr r6, [r2, r1]
	mov r3, #1
	bic r6, r3
	str r6, [r2, r1]
	ldr r6, [r2, r1]
	mov r3, #2
	bic r6, r3
	add r5, #8
	str r6, [r2, r1]
	lsl r2, r0, #3
	add r3, r4, r5
	ldr r1, [r3, r2]
	mov r0, #0x1c
	bic r1, r0
	str r1, [r3, r2]
	ldr r1, [r3, r2]
	ldr r0, _022464C8 ; =0xFFFFFC7F
	and r0, r1
	str r0, [r3, r2]
	b _022464C4
_022464BC:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_022464C4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022464C8: .word 0xFFFFFC7F
	thumb_func_end ov16_02246458

	thumb_func_start ov16_022464CC
ov16_022464CC: ; 0x022464CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r1, r0, #0
	mov r0, #0xb7
	lsl r0, r0, #6
	add r3, r4, r0
	ldr r0, [r4, #0x6c]
	mov r5, #0xc0
	add r2, r0, #0
	mul r2, r5
	ldr r0, [r3, r2]
	lsl r5, r5, #5
	tst r5, r0
	beq _022464FE
	add r0, r4, #0
	bl ov16_02248AF0
	b _02246506
_022464FE:
	mov r1, #1
	lsl r1, r1, #0xc
	orr r0, r1
	str r0, [r3, r2]
_02246506:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022464CC

	thumb_func_start ov16_0224650C
ov16_0224650C: ; 0x0224650C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r1, [r5, #0x6c]
	add r0, r4, #0
	bl ov16_0223E208
	add r4, r0, #0
	ldr r2, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r1, r5, r0
	ldr r0, _02246618 ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02246586
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r3, #0x3c
	bl ov16_02255AB4
	cmp r0, #1
	bne _02246586
	add r0, r5, #0
	ldr r1, _0224661C ; =0x000002CA
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x25
	add r0, #0xf5
	strb r1, [r0]
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02246620 ; =0x00002D67
	add r2, r5, r2
	ldrb r2, [r2, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r2, [r0, #0]
	ldr r0, _02246624 ; =0x00003044
	add r1, #0x40
	ldr r0, [r5, r0]
	str r0, [r5, r1]
	b _02246614
_02246586:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02246618 ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0224660C
	mov r1, #0x8a
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x21
	add r0, #0xf5
	strb r1, [r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_02255560
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1, #0]
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r5, r2
	ldr r2, _02246618 ; =0x00002DB8
	ldrh r3, [r0, r2]
	add r0, r1, #0
	add r0, #0x40
	str r3, [r5, r0]
	ldr r3, [r5, #0x6c]
	mov r0, #0
	mul r1, r3
	add r1, r5, r1
	strh r0, [r1, r2]
	ldr r0, [r5, #0x6c]
	add r1, r5, r0
	ldr r0, _02246628 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020787CC
	mov r1, #0x71
	lsl r1, r1, #2
	add r3, r5, r1
	lsl r2, r4, #3
	ldr r4, [r3, r2]
	ldr r1, _0224662C ; =0xE07FFFFF
	and r1, r4
	lsl r4, r4, #3
	lsr r4, r4, #0x1a
	orr r0, r4
	lsl r0, r0, #0x1a
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r3, r2]
	b _02246614
_0224660C:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02246614:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246618: .word 0x00002DB8
_0224661C: .word 0x000002CA
_02246620: .word 0x00002D67
_02246624: .word 0x00003044
_02246628: .word 0x0000219C
_0224662C: .word 0xE07FFFFF
	thumb_func_end ov16_0224650C

	thumb_func_start ov16_02246630
ov16_02246630: ; 0x02246630
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, _02246678 ; =0x00002154
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02246674
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _0224667C ; =0x00003044
	ldr r1, [r4, r1]
	lsl r1, r1, #4
	add r2, r4, r1
	ldr r1, _02246680 ; =0x000003E1
	ldrb r3, [r2, r1]
	ldr r1, _02246684 ; =0x00002D8C
	add r2, r4, r0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	mul r0, r3
	bl _u32_div_f
	ldr r1, _02246678 ; =0x00002154
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _02246674
	mov r0, #1
	str r0, [r4, r1]
_02246674:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02246678: .word 0x00002154
_0224667C: .word 0x00003044
_02246680: .word 0x000003E1
_02246684: .word 0x00002D8C
	thumb_func_end ov16_02246630

	thumb_func_start ov16_02246688
ov16_02246688: ; 0x02246688
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r7, #0
	bl ov16_02248AD0
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [r7, #0x64]
	mov r2, #0
	bl ov16_0223E2A4
	add r4, r0, #0
	ldr r0, [sp]
	ldr r1, [r7, #0x64]
	mov r2, #2
	bl ov16_0223E2A4
	mov r6, #0xb7
	add r3, r0, #0
	lsl r6, r6, #6
	add r1, r4, #0
	mov r0, #0xc0
	mov r4, #1
	add r2, r7, r6
	mul r1, r0
	ldr r5, [r2, r1]
	lsl r4, r4, #0x1e
	orr r5, r4
	str r5, [r2, r1]
	add r1, r3, #0
	mul r1, r0
	ldr r3, [r2, r1]
	orr r3, r4
	str r3, [r2, r1]
	ldr r1, [r7, #0x64]
	mul r0, r1
	add r0, r7, r0
	ldr r2, [r0, r6]
	lsr r0, r4, #0x11
	tst r0, r2
	beq _022466F0
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov16_02248AF0
	b _02246794
_022466F0:
	ldr r0, [sp]
	bl ov16_0223E208
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov16_0223DF1C
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _0224676A
	str r7, [sp, #4]
_0224670C:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl ov16_0223E208
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _02246758
	mov r2, #0
	ldr r0, _0224679C ; =0x00002D4C
	add r4, r2, #0
_02246720:
	ldr r1, [r7, #0x64]
	mov r6, #0xc0
	mul r6, r1
	add r1, r7, r6
	add r6, r1, r4
	ldr r1, _0224679C ; =0x00002D4C
	ldr r5, [sp, #4]
	ldrh r6, [r6, r1]
	mov r3, #0
_02246732:
	ldrh r1, [r5, r0]
	cmp r6, r1
	bne _02246740
	cmp r6, #0
	beq _02246740
	cmp r1, #0
	bne _02246748
_02246740:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #4
	blt _02246732
_02246748:
	cmp r3, #4
	bne _02246754
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #4
	blt _02246720
_02246754:
	cmp r3, #4
	bne _0224676A
_02246758:
	ldr r0, [sp, #4]
	add r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0224670C
_0224676A:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _0224677C
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov16_02248AF0
	b _02246794
_0224677C:
	mov r0, #0xb7
	ldr r1, [r7, #0x64]
	lsl r0, r0, #6
	add r3, r7, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	mov r0, #2
	ldr r1, [r3, r2]
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r3, r2]
_02246794:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224679C: .word 0x00002D4C
	thumb_func_end ov16_02246688

	thumb_func_start ov16_022467A0
ov16_022467A0: ; 0x022467A0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp]
	ldr r1, [r4, #0x6c]
	add r0, r7, #0
	bl ov16_0223E208
	ldr r5, [r4, #0x74]
	mov r0, #0xc0
	mul r0, r5
	add r1, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0xe
	tst r0, r1
	beq _02246838
	ldr r1, [r4, #0x64]
	add r0, r7, #0
	bl ov16_0223E208
	add r6, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0223E208
	cmp r6, r0
	beq _02246838
	ldr r6, [r4, #0x64]
	mov r1, #0xc0
	add r0, r6, #0
	mul r0, r1
	ldr r2, _02246844 ; =0x00002D8C
	add r5, r4, r0
	ldr r0, [r5, r2]
	cmp r0, #0
	beq _02246838
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r3, [r4, r0]
	cmp r3, #0xa5
	beq _02246838
	lsl r3, r6, #1
	add r3, r4, r3
	add r0, #0x7c
	ldrh r0, [r3, r0]
	add r3, r2, #0
	mov r6, #0
	add r5, r5, r0
	sub r3, #0x20
	strb r6, [r5, r3]
	ldr r3, [r4, #0x64]
	lsl r0, r0, #1
	add r5, r3, #0
	mul r5, r1
	add r3, r4, r5
	add r0, r3, r0
	sub r2, #0x40
	ldrh r0, [r0, r2]
	add r1, #0x64
	str r0, [r4, r1]
	ldr r2, [r4, #0x64]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_02253EC0
	b _02246840
_02246838:
	ldr r1, [sp]
	add r0, r4, #0
	bl ov16_02248AF0
_02246840:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246844: .word 0x00002D8C
	thumb_func_end ov16_022467A0

	thumb_func_start ov16_02246848
ov16_02246848: ; 0x02246848
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	mov r4, #0
	bl ov16_0223DF1C
	cmp r0, #0
	ble _02246876
_0224686A:
	add r0, r5, #0
	add r4, r4, #1
	bl ov16_0223DF1C
	cmp r4, r0
	blt _0224686A
_02246876:
	ldr r0, _022468A0 ; =0x00003150
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _02246888
	add r0, r6, #0
	add r1, r7, #0
	bl ov16_02248AF0
	b _0224689A
_02246888:
	mov r0, #0x75
	lsl r0, r0, #2
	add r3, r6, r0
	ldr r0, [r6, #0x64]
	lsl r2, r0, #6
	ldr r1, [r3, r2]
	mov r0, #0x20
	orr r0, r1
	str r0, [r3, r2]
_0224689A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022468A0: .word 0x00003150
	thumb_func_end ov16_02246848

	thumb_func_start ov16_022468A4
ov16_022468A4: ; 0x022468A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022468F0 ; =0x00002D60
	ldr r5, _022468F4 ; =0x0226E5F0
	ldr r3, [r2, r1]
	ldr r1, _022468F8 ; =0x0000FFFF
	mov r0, #0
_022468C2:
	ldrh r2, [r5]
	cmp r2, r3
	bge _022468D2
	add r5, r5, #4
	ldrh r2, [r5]
	add r0, r0, #1
	cmp r2, r1
	bne _022468C2
_022468D2:
	lsl r2, r0, #2
	ldr r0, _022468F4 ; =0x0226E5F0
	ldrh r1, [r0, r2]
	ldr r0, _022468F8 ; =0x0000FFFF
	cmp r1, r0
	beq _022468E4
	ldr r0, _022468FC ; =0x0226E5F2
	ldrh r1, [r0, r2]
	b _022468E6
_022468E4:
	mov r1, #0x78
_022468E6:
	ldr r0, _02246900 ; =0x00002154
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022468F0: .word 0x00002D60
_022468F4: .word 0x0226E5F0
_022468F8: .word 0x0000FFFF
_022468FC: .word 0x0226E5F2
_02246900: .word 0x00002154
	thumb_func_end ov16_022468A4

	thumb_func_start ov16_02246904
ov16_02246904: ; 0x02246904
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _022469AC
	mov r0, #0x4c
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _022469AC
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	ldr r0, _022469B0 ; =0x000080FF
	tst r0, r2
	ldr r0, _022469B4 ; =0x00003044
	beq _0224699E
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r0, _022469B8 ; =0x000003E1
	ldrb r0, [r2, r0]
	lsl r2, r0, #1
	ldr r0, _022469BC ; =0x00002154
	str r2, [r4, r0]
	ldr r2, [r4, r1]
	mov r1, #3
	tst r1, r2
	beq _02246966
	mov r1, #0xb
	add r0, #0xc
	str r1, [r4, r0]
_02246966:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0xc
	tst r0, r1
	beq _02246978
	ldr r0, _022469C0 ; =0x00002160
	mov r1, #5
	str r1, [r4, r0]
_02246978:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0224698A
	ldr r0, _022469C0 ; =0x00002160
	mov r1, #0xa
	str r1, [r4, r0]
_0224698A:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0xc0
	tst r0, r1
	beq _022469AC
	ldr r0, _022469C0 ; =0x00002160
	mov r1, #0xf
	str r1, [r4, r0]
	b _022469AC
_0224699E:
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _022469B8 ; =0x000003E1
	ldrb r1, [r1, r0]
	ldr r0, _022469BC ; =0x00002154
	str r1, [r4, r0]
_022469AC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022469B0: .word 0x000080FF
_022469B4: .word 0x00003044
_022469B8: .word 0x000003E1
_022469BC: .word 0x00002154
_022469C0: .word 0x00002160
	thumb_func_end ov16_02246904

	thumb_func_start ov16_022469C4
ov16_022469C4: ; 0x022469C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov16_0223DF1C
	mov r7, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	bgt _022469EC
	b _02246AFE
_022469EC:
	mov r0, #0xb5
	lsl r0, r0, #6
	add r0, r5, r0
	str r5, [sp, #8]
	add r4, r5, #0
	str r0, [sp, #4]
_022469F8:
	ldr r1, [sp, #8]
	ldr r0, _02246B40 ; =0x000021A8
	ldr r0, [r1, r0]
	cmp r0, #0x27
	beq _02246AE6
	ldr r0, _02246B44 ; =0x00002D8C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02246AE6
	ldr r0, _02246B48 ; =0x00002DAC
	ldr r1, [r4, r0]
	mov r0, #0x27
	tst r0, r1
	bne _02246AE6
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255EC0
	cmp r0, #0
	bne _02246AE6
	ldr r0, [sp]
	add r1, r7, #0
	bl ov16_0223E208
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [r5, #0x78]
	bl ov16_0223E208
	ldr r1, [sp, #0x14]
	cmp r1, r0
	beq _02246AE6
	ldr r0, _02246B4C ; =0x00002DEC
	ldrh r6, [r4, r0]
	cmp r6, #0
	beq _02246A50
	add r0, r0, #2
	ldrh r0, [r4, r0]
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _02246B50 ; =0x00002D4C
	ldrh r0, [r1, r0]
	cmp r6, r0
	beq _02246A5A
_02246A50:
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02255570
	add r6, r0, #0
_02246A5A:
	cmp r6, #0
	beq _02246AE6
	lsl r1, r6, #0x10
	ldr r0, [sp, #4]
	lsr r1, r1, #0x10
	bl ov16_02254EE0
	str r0, [sp, #0x18]
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02246B54 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x80
	bne _02246AE6
	ldr r0, [sp, #0x18]
	add r1, r4, r0
	ldr r0, _02246B58 ; =0x00002D6C
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02246AE6
	ldr r0, _02246B58 ; =0x00002D6C
	add r1, r5, r0
	mov r0, #0xc0
	mul r0, r7
	add r4, r1, r0
	ldr r0, [sp, #0x18]
	ldrb r0, [r4, r0]
	sub r1, r0, #1
	ldr r0, [sp, #0x18]
	strb r1, [r4, r0]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x2e
	bne _02246AB0
	ldr r0, [sp, #0x18]
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02246AB0
	sub r1, r0, #1
	ldr r0, [sp, #0x18]
	strb r1, [r4, r0]
_02246AB0:
	ldr r0, [sp]
	add r1, r5, #0
	bl ov16_02255F94
	str r7, [r5, #0x64]
	ldr r0, [r5, #0x78]
	lsl r2, r7, #1
	str r0, [r5, #0x6c]
	ldr r1, _02246B5C ; =0x00002158
	mov r0, #0x14
	str r0, [r5, r1]
	ldr r0, _02246B60 ; =0x00003044
	add r2, r5, r2
	str r6, [r5, r0]
	add r0, #0x38
	strh r6, [r2, r0]
	lsl r0, r7, #4
	mov r2, #0x27
	add r0, r5, r0
	add r1, #0x50
	str r2, [r0, r1]
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r7, #0
	bl ov16_02253EC0
	b _02246AFE
_02246AE6:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, #0xc0
	add r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bge _02246AFE
	b _022469F8
_02246AFE:
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bne _02246B0E
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov16_02248AF0
	b _02246B3A
_02246B0E:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02258AB8
	add r4, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0
	bl ov16_02258ACC
	cmp r4, #0x37
	beq _02246B2E
	cmp r4, #0x73
	beq _02246B2E
	cmp r4, #0x7d
	bne _02246B3A
_02246B2E:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02246B64 ; =0x00002DF8
	strh r6, [r1, r0]
_02246B3A:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02246B40: .word 0x000021A8
_02246B44: .word 0x00002D8C
_02246B48: .word 0x00002DAC
_02246B4C: .word 0x00002DEC
_02246B50: .word 0x00002D4C
_02246B54: .word 0x000003DE
_02246B58: .word 0x00002D6C
_02246B5C: .word 0x00002158
_02246B60: .word 0x00003044
_02246B64: .word 0x00002DF8
	thumb_func_end ov16_022469C4

	thumb_func_start ov16_02246B68
ov16_02246B68: ; 0x02246B68
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, [r4, #0x64]
	ldr r3, _02246BA8 ; =0x00002144
	str r0, [sp]
	ldr r0, [r4, #0x6c]
	ldr r2, _02246BAC ; =0x00003044
	str r0, [sp, #4]
	ldr r0, [r4, r3]
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, #0x28
	add r0, r4, r0
	str r0, [sp, #0xc]
	add r3, #0x1c
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl ov16_02254FA8
	ldr r1, _02246BA8 ; =0x00002144
	str r0, [r4, r1]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02246BA8: .word 0x00002144
_02246BAC: .word 0x00003044
	thumb_func_end ov16_02246B68

	thumb_func_start ov16_02246BB0
ov16_02246BB0: ; 0x02246BB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r6, #0
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r5, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl ov16_0224A984
	cmp r7, #6
	bhi _02246CA2
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246BFC: ; jump table
	.short _02246C0A - _02246BFC - 2 ; case 0
	.short _02246C20 - _02246BFC - 2 ; case 1
	.short _02246C36 - _02246BFC - 2 ; case 2
	.short _02246C4C - _02246BFC - 2 ; case 3
	.short _02246C62 - _02246BFC - 2 ; case 4
	.short _02246C78 - _02246BFC - 2 ; case 5
	.short _02246C8E - _02246BFC - 2 ; case 6
_02246C0A:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _02246CA2
	mov r6, #1
	b _02246CA2
_02246C20:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _02246CA2
	mov r6, #1
	b _02246CA2
_02246C36:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _02246CA2
	mov r6, #1
	b _02246CA2
_02246C4C:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _02246CA2
	mov r6, #1
	b _02246CA2
_02246C62:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _02246CA2
	mov r6, #1
	b _02246CA2
_02246C78:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _02246CA2
	mov r6, #1
	b _02246CA2
_02246C8E:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _02246CA2
	mov r6, #1
_02246CA2:
	cmp r6, #0
	beq _02246CAE
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_02248AF0
_02246CAE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_02246BB0

	thumb_func_start ov16_02246CB4
ov16_02246CB4: ; 0x02246CB4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r5, r0, #0
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0224A984
	cmp r6, #6
	bhi _02246DA8
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246CF4: ; jump table
	.short _02246D02 - _02246CF4 - 2 ; case 0
	.short _02246D1A - _02246CF4 - 2 ; case 1
	.short _02246D32 - _02246CF4 - 2 ; case 2
	.short _02246D4A - _02246CF4 - 2 ; case 3
	.short _02246D62 - _02246CF4 - 2 ; case 4
	.short _02246D7A - _02246CF4 - 2 ; case 5
	.short _02246D92 - _02246CF4 - 2 ; case 6
_02246D02:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	and r0, r5
	orr r0, r2
	str r0, [r1, r3]
	b _02246DA8
_02246D1A:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #2
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1e
	orr r0, r2
	str r0, [r1, r3]
	b _02246DA8
_02246D32:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #4
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1d
	orr r0, r2
	str r0, [r1, r3]
	b _02246DA8
_02246D4A:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #8
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1c
	orr r0, r2
	str r0, [r1, r3]
	b _02246DA8
_02246D62:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #0x10
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r2
	str r0, [r1, r3]
	b _02246DA8
_02246D7A:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #0x20
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1a
	orr r0, r2
	str r0, [r1, r3]
	b _02246DA8
_02246D92:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #0x40
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x19
	orr r0, r2
	str r0, [r1, r3]
_02246DA8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02246CB4

	thumb_func_start ov16_02246DAC
ov16_02246DAC: ; 0x02246DAC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, [r4, #0x6c]
	ldr r1, _02246DE8 ; =0x000021F0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, r1]
	mov r0, #0x19
	mul r0, r2
	ldr r2, [r4, #0x64]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r1, [r2, r1]
	bl _u32_div_f
	add r1, r0, #1
	ldr r0, _02246DEC ; =0x00002154
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x96
	ble _02246DE2
	mov r1, #0x96
	str r1, [r4, r0]
_02246DE2:
	mov r0, #0
	pop {r4, pc}
	nop
_02246DE8: .word 0x000021F0
_02246DEC: .word 0x00002154
	thumb_func_end ov16_02246DAC

	thumb_func_start ov16_02246DF0
ov16_02246DF0: ; 0x02246DF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp]
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov16_0223E208
	ldr r1, [r5, #0x64]
	add r7, r0, #0
	lsl r1, r1, #6
	add r2, r5, r1
	mov r1, #0x83
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r6, #0
	bl ov16_0223E208
	add r4, r0, #0
	ldr r0, [r5, #0x64]
	mov r2, #0x82
	lsl r0, r0, #6
	add r0, r5, r0
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02246ED0
	cmp r7, r4
	beq _02246ED0
	add r2, r2, #4
	ldr r2, [r0, r2]
	mov r0, #0xc0
	mul r0, r2
	add r2, r5, r0
	ldr r0, _02246EDC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02246ED0
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, _02246EE0 ; =0x00002144
	str r0, [r5, r1]
	mov r0, #0x71
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r4, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02246E7E
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _02246EDC ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02246E7E
	str r0, [r5, #0x6c]
	b _02246E8C
_02246E7E:
	ldr r0, [r5, #0x64]
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r5, #0x6c]
_02246E8C:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02246EDC ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02246EC4
	ldr r2, [r5, #0x64]
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_02257028
	mov r1, #0xc0
	mul r1, r0
	str r0, [r5, #0x6c]
	ldr r0, _02246EDC ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02246EC4
	mov r2, #0x26
	str r2, [r5, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, #0xf3
	bl ov16_02248B00
_02246EC4:
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	add r0, r5, #0
	bl ov16_0225B408
	b _02246ED8
_02246ED0:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_02248AF0
_02246ED8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246EDC: .word 0x00002D8C
_02246EE0: .word 0x00002144
	thumb_func_end ov16_02246DF0

	thumb_func_start ov16_02246EE4
ov16_02246EE4: ; 0x02246EE4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r0, [r4, #0x6c]
	ldr r1, _02246F20 ; =0x000021A8
	lsl r0, r0, #4
	add r0, r4, r0
	ldr r0, [r0, r1]
	cmp r0, #0x27
	ldr r0, _02246F24 ; =0x00003044
	bne _02246F0E
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r0, _02246F28 ; =0x000003E1
	ldrb r0, [r2, r0]
	lsl r0, r0, #1
	b _02246F18
_02246F0E:
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r0, _02246F28 ; =0x000003E1
	ldrb r0, [r2, r0]
_02246F18:
	sub r1, #0x54
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02246F20: .word 0x000021A8
_02246F24: .word 0x00003044
_02246F28: .word 0x000003E1
	thumb_func_end ov16_02246EE4

	thumb_func_start ov16_02246F2C
ov16_02246F2C: ; 0x02246F2C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	lsl r0, r1, #1
	add r1, r4, r0
	ldr r0, _02246F60 ; =0x000030BC
	ldrh r0, [r1, r0]
	add r1, r2, r0
	ldr r0, _02246F64 ; =0x00002D6C
	ldrb r1, [r1, r0]
	cmp r1, #4
	bls _02246F54
	mov r1, #4
_02246F54:
	ldr r0, _02246F68 ; =0x0226E574
	ldrb r1, [r0, r1]
	ldr r0, _02246F6C ; =0x00002154
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02246F60: .word 0x000030BC
_02246F64: .word 0x00002D6C
_02246F68: .word 0x0226E574
_02246F6C: .word 0x00002154
	thumb_func_end ov16_02246F2C

	thumb_func_start ov16_02246F70
ov16_02246F70: ; 0x02246F70
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r3, r4, r0
	ldr r1, _02246FA0 ; =0x00002D8C
	mov r0, #0x78
	ldr r2, [r3, r1]
	add r1, r1, #4
	ldr r1, [r3, r1]
	mul r0, r2
	bl _u32_div_f
	add r1, r0, #1
	ldr r0, _02246FA4 ; =0x00002154
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	nop
_02246FA0: .word 0x00002D8C
_02246FA4: .word 0x00002154
	thumb_func_end ov16_02246F70

	thumb_func_start ov16_02246FA8
ov16_02246FA8: ; 0x02246FA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _02247054 ; =0x00002DEC
	add r0, r5, r0
	ldrh r4, [r0, r3]
	cmp r4, #0
	beq _02246FDC
	add r2, r3, #2
	ldrh r2, [r0, r2]
	sub r3, #0xa0
	lsl r2, r2, #1
	add r0, r0, r2
	ldrh r0, [r0, r3]
	cmp r4, r0
	beq _02246FE4
_02246FDC:
	add r0, r5, #0
	bl ov16_02255570
	add r4, r0, #0
_02246FE4:
	ldr r0, [r5, #0x6c]
	lsl r1, r0, #4
	add r2, r5, r1
	ldr r1, _02247058 ; =0x000021A8
	ldr r1, [r2, r1]
	cmp r1, #0x27
	beq _02247048
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02247048
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0225B0C0
	cmp r0, #1
	bne _02247048
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, _0224705C ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02247048
	ldr r2, [r5, #0x64]
	ldr r3, _02247060 ; =0x00002DCC
	add r0, r2, #0
	mov r6, #0xc0
	add r1, r5, r3
	mul r0, r6
	mov r2, #1
	ldr r7, [r1, r0]
	lsl r2, r2, #0x1e
	orr r2, r7
	str r2, [r1, r0]
	add r0, r6, #0
	add r0, #0xb4
	ldr r2, [r5, r0]
	ldr r0, [r5, #0x64]
	add r3, #0x10
	add r1, r0, #0
	mul r1, r6
	add r0, r5, r1
	str r2, [r0, r3]
	add r6, #0x64
	str r4, [r5, r6]
	b _02247050
_02247048:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02247050:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247054: .word 0x00002DEC
_02247058: .word 0x000021A8
_0224705C: .word 0x000003E1
_02247060: .word 0x00002DCC
	thumb_func_end ov16_02246FA8

	thumb_func_start ov16_02247064
ov16_02247064: ; 0x02247064
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r0, _022470BC ; =0x00003048
	ldr r0, [r4, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov16_02255918
	cmp r0, #0
	bne _022470B0
	ldr r0, _022470BC ; =0x00003048
	ldr r3, [r4, r0]
	cmp r3, #0
	beq _022470B0
	lsl r3, r3, #0x10
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov16_0225B02C
	cmp r0, #1
	bne _022470B0
	ldr r0, _022470BC ; =0x00003048
	ldr r1, [r4, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _022470B8
_022470B0:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_022470B8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022470BC: .word 0x00003048
	thumb_func_end ov16_02247064

	thumb_func_start ov16_022470C0
ov16_022470C0: ; 0x022470C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	ldr r5, _02247110 ; =0x00002D58
	mov r1, #0
	ldr r3, [r4, #0x6c]
	mov r2, #0xc0
	mul r2, r3
	add r3, r4, r2
	add r0, r1, #0
	add r2, r3, #0
	add r6, r5, #0
_022470DE:
	ldrsb r7, [r2, r6]
	cmp r7, #6
	ble _022470EC
	add r7, r3, r0
	ldrsb r7, [r7, r5]
	sub r7, r7, #6
	add r1, r1, r7
_022470EC:
	add r0, r0, #1
	add r2, r2, #1
	cmp r0, #8
	blt _022470DE
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02247114 ; =0x00002154
	add r2, #0x3c
	str r2, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0xc8
	ble _0224710A
	mov r1, #0xc8
	str r1, [r4, r0]
_0224710A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247110: .word 0x00002D58
_02247114: .word 0x00002154
	thumb_func_end ov16_022470C0

	thumb_func_start ov16_02247118
ov16_02247118: ; 0x02247118
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	ldr r6, _02247188 ; =0x00002DEC
	add r2, r5, r0
	ldrh r0, [r2, r6]
	cmp r0, #0
	beq _0224714C
	add r3, r6, #2
	ldrh r3, [r2, r3]
	sub r6, #0xa0
	lsl r3, r3, #1
	add r2, r2, r3
	ldrh r2, [r2, r6]
	cmp r0, r2
	beq _02247152
_0224714C:
	add r0, r5, #0
	bl ov16_02255570
_02247152:
	ldr r1, [r5, #0x6c]
	lsl r2, r1, #4
	add r3, r5, r2
	ldr r2, _0224718C ; =0x000021A8
	ldr r2, [r3, r2]
	cmp r2, #0x27
	beq _0224717C
	lsl r0, r0, #4
	add r2, r5, r0
	ldr r0, _02247190 ; =0x000003E1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _02247184
	lsl r0, r1, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02247184
_0224717C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248AF0
_02247184:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247188: .word 0x00002DEC
_0224718C: .word 0x000021A8
_02247190: .word 0x000003E1
	thumb_func_end ov16_02247118

	thumb_func_start ov16_02247194
ov16_02247194: ; 0x02247194
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r7, #0
	bl ov16_0223E208
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _022471E6
	cmp r1, #1
	beq _022471E6
	cmp r1, #2
	beq _02247264
	b _0224733E
_022471E6:
	cmp r6, #5
	bls _022471EC
	b _0224733E
_022471EC:
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022471F8: ; jump table
	.short _02247204 - _022471F8 - 2 ; case 0
	.short _02247214 - _022471F8 - 2 ; case 1
	.short _02247224 - _022471F8 - 2 ; case 2
	.short _02247234 - _022471F8 - 2 ; case 3
	.short _02247244 - _022471F8 - 2 ; case 4
	.short _02247254 - _022471F8 - 2 ; case 5
_02247204:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r5, r0, #0x1d
	b _0224733E
_02247214:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x16
	lsr r5, r0, #0x1d
	b _0224733E
_02247224:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r5, r0, #0x1d
	b _0224733E
_02247234:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0xc
	lsr r5, r0, #0x1d
	b _0224733E
_02247244:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1e
	lsr r5, r0, #0x1e
	b _0224733E
_02247254:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r5, r0, #0x1e
	b _0224733E
_02247264:
	cmp r6, #5
	bhi _0224733E
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247274: ; jump table
	.short _02247280 - _02247274 - 2 ; case 0
	.short _022472A0 - _02247274 - 2 ; case 1
	.short _022472C0 - _02247274 - 2 ; case 2
	.short _022472E0 - _02247274 - 2 ; case 3
	.short _02247300 - _02247274 - 2 ; case 4
	.short _02247320 - _02247274 - 2 ; case 5
_02247280:
	mov r2, #0x71
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r3, r0, #3
	ldr r7, [r6, r3]
	mov r1, #0x1c
	bic r7, r1
	sub r2, #8
	str r7, [r6, r3]
	add r3, r4, r2
	lsl r2, r0, #2
	ldr r1, [r3, r2]
	mov r0, #1
	bic r1, r0
	str r1, [r3, r2]
	b _0224733E
_022472A0:
	mov r2, #0x71
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r7, r0, #3
	ldr r3, [r6, r7]
	ldr r1, _02247368 ; =0xFFFFFC7F
	sub r2, #8
	and r1, r3
	add r3, r4, r2
	lsl r2, r0, #2
	str r1, [r6, r7]
	ldr r1, [r3, r2]
	mov r0, #2
	bic r1, r0
	str r1, [r3, r2]
	b _0224733E
_022472C0:
	mov r2, #0x71
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r7, r0, #3
	ldr r3, [r6, r7]
	ldr r1, _0224736C ; =0xFFFF8FFF
	sub r2, #8
	and r1, r3
	add r3, r4, r2
	lsl r2, r0, #2
	str r1, [r6, r7]
	ldr r1, [r3, r2]
	mov r0, #0x40
	bic r1, r0
	str r1, [r3, r2]
	b _0224733E
_022472E0:
	mov r2, #0x71
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r7, r0, #3
	ldr r3, [r6, r7]
	ldr r1, _02247370 ; =0xFFF1FFFF
	sub r2, #8
	and r1, r3
	add r3, r4, r2
	lsl r2, r0, #2
	str r1, [r6, r7]
	ldr r1, [r3, r2]
	mov r0, #8
	bic r1, r0
	str r1, [r3, r2]
	b _0224733E
_02247300:
	mov r2, #0x72
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r3, r0, #3
	ldr r7, [r6, r3]
	mov r1, #3
	bic r7, r1
	sub r2, #0xc
	str r7, [r6, r3]
	add r3, r4, r2
	lsl r2, r0, #2
	ldr r1, [r3, r2]
	mov r0, #4
	bic r1, r0
	str r1, [r3, r2]
	b _0224733E
_02247320:
	mov r2, #0x72
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r3, r0, #3
	ldr r7, [r6, r3]
	mov r1, #0xc
	bic r7, r1
	sub r2, #0xc
	str r7, [r6, r3]
	lsl r3, r0, #2
	add r1, r4, r2
	ldr r2, [r1, r3]
	ldr r0, _02247374 ; =0xFFFFFBFF
	and r0, r2
	str r0, [r1, r3]
_0224733E:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02247350
	cmp r5, #0
	bne _02247350
	ldr r1, [sp]
	add r0, r4, #0
	bl ov16_02248AF0
_02247350:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02247362
	cmp r5, #0
	beq _02247362
	ldr r1, [sp]
	add r0, r4, #0
	bl ov16_02248AF0
_02247362:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02247368: .word 0xFFFFFC7F
_0224736C: .word 0xFFFF8FFF
_02247370: .word 0xFFF1FFFF
_02247374: .word 0xFFFFFBFF
	thumb_func_end ov16_02247194

	thumb_func_start ov16_02247378
ov16_02247378: ; 0x02247378
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r1, r0, #0
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #6
	add r2, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _022473A4
	add r0, r4, #0
	bl ov16_02248AF0
_022473A4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov16_02247378

	thumb_func_start ov16_022473A8
ov16_022473A8: ; 0x022473A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r1, r0, #0
	ldr r0, [r4, #0x6c]
	mov r2, #0xc0
	add r3, r0, #0
	mul r3, r2
	add r5, r4, r3
	ldr r3, _022473F0 ; =0x00002DAC
	ldr r0, [r5, r3]
	cmp r0, #0
	bne _022473E6
	add r0, r3, #4
	ldr r5, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r5
	bne _022473E6
	ldr r0, [r4, #0x64]
	mul r2, r0
	add r0, r4, r2
	ldr r0, [r0, r3]
	cmp r0, #0
	bne _022473EC
_022473E6:
	add r0, r4, #0
	bl ov16_02248AF0
_022473EC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022473F0: .word 0x00002DAC
	thumb_func_end ov16_022473A8

	thumb_func_start ov16_022473F4
ov16_022473F4: ; 0x022473F4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02256128
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _0224743C ; =0x00002DCC
	ldr r1, [r2, r1]
	lsl r1, r1, #0x13
	lsr r2, r1, #0x1d
	sub r1, r0, #1
	cmp r2, r1
	blo _0224742E
	cmp r0, #2
	bge _02247436
_0224742E:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02247436:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224743C: .word 0x00002DCC
	thumb_func_end ov16_022473F4

	thumb_func_start ov16_02247440
ov16_02247440: ; 0x02247440
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov16_0223E208
	mov r2, #0x72
	mov r1, #1
	add r3, r0, #0
	eor r3, r1
	lsl r0, r3, #3
	add r5, r4, r0
	lsl r2, r2, #2
	ldr r5, [r5, r2]
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x1e
	cmp r5, #2
	bne _02247496
	mov r0, #0xb5
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r3, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r3
	ldr r5, [r2, r0]
	mov r3, #1
	bic r5, r3
	orr r1, r5
	str r1, [r2, r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
	b _022474BE
_02247496:
	add r5, r2, #0
	sub r5, #0xc
	add r5, r4, r5
	lsl r3, r3, #2
	ldr r6, [r5, r3]
	lsl r1, r1, #0xa
	orr r1, r6
	str r1, [r5, r3]
	add r2, r4, r2
	ldr r4, [r2, r0]
	mov r3, #0xc
	add r1, r4, #0
	bic r1, r3
	lsl r3, r4, #0x1c
	lsr r3, r3, #0x1e
	add r3, r3, #1
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x1c
	orr r1, r3
	str r1, [r2, r0]
_022474BE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02247440

	thumb_func_start ov16_022474C4
ov16_022474C4: ; 0x022474C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_0223E208
	mov r1, #0x72
	lsl r1, r1, #2
	add r4, r5, r1
	lsl r6, r0, #3
	str r0, [sp]
	ldr r0, [r4, r6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	beq _0224755E
	sub r1, #0x94
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #6
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x94
	str r7, [r0, #0]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r0, #3
	beq _0224753C
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r0, #3
	bne _02247566
_0224753C:
	mov r0, #0x6f
	ldr r1, [sp]
	lsl r0, r0, #2
	add r2, r5, r0
	lsl r1, r1, #2
	ldr r7, [r2, r1]
	ldr r3, _0224756C ; =0xFFFFFBFF
	sub r0, #0x88
	and r3, r7
	str r3, [r2, r1]
	ldr r2, [r4, r6]
	mov r1, #0xc
	bic r2, r1
	str r2, [r4, r6]
	mov r1, #0
	str r1, [r5, r0]
	b _02247566
_0224755E:
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov16_02248AF0
_02247566:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224756C: .word 0xFFFFFBFF
	thumb_func_end ov16_022474C4

	thumb_func_start ov16_02247570
ov16_02247570: ; 0x02247570
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	cmp r4, #0
	bne _02247620
	add r0, r6, #0
	bl ov16_0223DF1C
	mov r6, #0
	str r0, [sp]
	cmp r0, #0
	ble _02247688
_022475B2:
	ldr r0, _02247690 ; =0x000021EC
	add r1, r5, r6
	ldrb r4, [r1, r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _022475EA
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov16_02255AB4
	cmp r0, #1
	bne _02247616
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02247694 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02247616
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov16_02248AF0
	add r5, #0x80
	str r4, [r5, #0]
	b _02247688
_022475EA:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov16_02255AB4
	cmp r0, #0
	beq _02247608
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02247694 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02247616
_02247608:
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov16_02248AF0
	add r5, #0x80
	str r4, [r5, #0]
	b _02247688
_02247616:
	ldr r0, [sp]
	add r6, r6, #1
	cmp r6, r0
	blt _022475B2
	b _02247688
_02247620:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0224A984
	add r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0224765E
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov16_02255AB4
	cmp r0, #1
	bne _02247688
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02247694 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02247688
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov16_02248AF0
	add r5, #0x80
	str r4, [r5, #0]
	b _02247688
_0224765E:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov16_02255AB4
	cmp r0, #0
	beq _0224767C
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02247694 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02247688
_0224767C:
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov16_02248AF0
	add r5, #0x80
	str r4, [r5, #0]
_02247688:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02247690: .word 0x000021EC
_02247694: .word 0x00002D8C
	thumb_func_end ov16_02247570

	thumb_func_start ov16_02247698
ov16_02247698: ; 0x02247698
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_0224A984
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0223E208
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_0223E208
	cmp r6, r0
	bne _022476F4
	ldr r1, [sp]
	add r0, r4, #0
	bl ov16_02248AF0
_022476F4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02247698

	thumb_func_start ov16_022476F8
ov16_022476F8: ; 0x022476F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r7, #0
	bl ov16_0223DF60
	cmp r0, #0
	bgt _02247718
	b _02247862
_02247718:
	ldr r2, [sp, #8]
	add r0, r7, #0
	mov r1, #0
	bl ov16_0223DFAC
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0x35
	bne _022477E6
	cmp r6, #0
	beq _022477E6
	ldr r0, _02247868 ; =0x000001EE
	cmp r6, r0
	beq _022477E6
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _022477E6
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #0
	bne _022477E6
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	sub r0, r0, #1
	mov r1, #0xa
	bl _u32_div_f
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0xa
	blo _0224779E
	mov r3, #9
_0224779E:
	mov r1, #0
	ldr r2, _0224786C ; =0x0226EAA8
	str r1, [sp, #0xc]
_022477A4:
	ldrb r0, [r2]
	cmp r0, r5
	ble _022477BE
	ldr r2, [sp, #0xc]
	ldr r5, _02247870 ; =0x0226E66C
	add r2, r3, r2
	lsl r2, r2, #1
	add r0, r4, #0
	mov r1, #6
	add r2, r5, r2
	bl sub_02074B30
	b _022477E6
_022477BE:
	cmp r5, #0x62
	blt _022477DC
	cmp r5, #0x63
	bgt _022477DC
	mov r2, #0x63
	sub r2, r2, r5
	add r2, r3, r2
	lsl r3, r2, #1
	ldr r2, _02247874 ; =0x0226E590
	add r0, r4, #0
	mov r1, #6
	add r2, r2, r3
	bl sub_02074B30
	b _022477E6
_022477DC:
	add r1, r1, #1
	add r2, r2, #1
	str r1, [sp, #0xc]
	cmp r1, #9
	blt _022477A4
_022477E6:
	ldr r0, [sp]
	cmp r0, #0x76
	bne _0224784C
	cmp r6, #0
	beq _0224784C
	ldr r0, _02247868 ; =0x000001EE
	cmp r6, r0
	beq _0224784C
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224784C
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xa1
	str r2, [sp, #0xc]
	mov r5, #0xa
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #0xa
	ble _0224781E
	ldr r0, [sp, #0xc]
_02247814:
	add r5, #0xa
	add r0, r0, #1
	cmp r5, r1
	blt _02247814
	str r0, [sp, #0xc]
_0224781E:
	ldr r0, [sp, #0xc]
	cmp r0, #0xa
	blt _02247828
	bl sub_02022974
_02247828:
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	ldr r2, [sp, #0xc]
	ldr r0, _02247878 ; =0x0226EAB4
	ldrb r0, [r0, r2]
	cmp r1, r0
	bge _0224784C
	mov r0, #0x5e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0xc
	bl sub_02074B30
_0224784C:
	ldr r0, [sp, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov16_0223DF60
	ldr r1, [sp, #8]
	cmp r1, r0
	bge _02247862
	b _02247718
_02247862:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247868: .word 0x000001EE
_0224786C: .word 0x0226EAA8
_02247870: .word 0x0226E66C
_02247874: .word 0x0226E590
_02247878: .word 0x0226EAB4
	thumb_func_end ov16_022476F8

	thumb_func_start ov16_0224787C
ov16_0224787C: ; 0x0224787C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r0, #0xb5
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	add r3, r4, r0
	mov r0, #0x1c
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #0x10
	orr r0, r1
	str r0, [r3, r2]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0224787C

	thumb_func_start ov16_022478A4
ov16_022478A4: ; 0x022478A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_022588A4
	cmp r0, #1
	bne _022478E0
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_02248AF0
_022478E0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_022478A4

	thumb_func_start ov16_022478E4
ov16_022478E4: ; 0x022478E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	bl ov16_0224A984
	add r1, r0, #0
	cmp r6, #0
	bne _02247938
	add r0, r5, #0
	bl ov16_02258AB8
	cmp r4, r0
	bne _0224794A
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
	b _0224794A
_02247938:
	add r0, r5, #0
	bl ov16_02258AB8
	cmp r4, r0
	beq _0224794A
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
_0224794A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_022478E4

	thumb_func_start ov16_02247950
ov16_02247950: ; 0x02247950
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248B10
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_02258874
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov16_0225B0FC
	str r0, [r6, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02247950

	thumb_func_start ov16_0224799C
ov16_0224799C: ; 0x0224799C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02248B10
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_02258874
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B0FC
	str r0, [r6, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0224799C

	thumb_func_start ov16_022479E8
ov16_022479E8: ; 0x022479E8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x79
	bne _02247A16
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02248AF0
	mov r0, #0
	pop {r4, r5, r6, pc}
_02247A16:
	add r0, r4, #0
	bl ov16_0223E22C
	cmp r0, #0xc
	ble _02247A22
	mov r0, #0xc
_02247A22:
	ldr r1, _02247A78 ; =0x0226EAC0
	mov r2, #0x1b
	ldrb r4, [r1, r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r3, #0
	bl ov16_02252060
	cmp r4, r0
	beq _02247A6A
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r4, r0
	beq _02247A6A
	ldr r1, [r5, #0x64]
	lsl r0, r4, #0x18
	add r3, r1, #0
	mov r2, #0xc0
	mul r3, r2
	ldr r1, _02247A7C ; =0x00002D64
	lsr r0, r0, #0x18
	add r3, r5, r3
	strb r0, [r3, r1]
	ldr r3, [r5, #0x64]
	add r1, r1, #1
	add r6, r3, #0
	mul r6, r2
	add r3, r5, r6
	strb r0, [r3, r1]
	add r2, #0x70
	str r4, [r5, r2]
	b _02247A72
_02247A6A:
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02247A72:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02247A78: .word 0x0226EAC0
_02247A7C: .word 0x00002D64
	thumb_func_end ov16_022479E8

	thumb_func_start ov16_02247A80
ov16_02247A80: ; 0x02247A80
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_0223E22C
	cmp r0, #0xc
	ble _02247A9A
	mov r0, #0xc
_02247A9A:
	lsl r1, r0, #1
	ldr r0, _02247AAC ; =0x0226E652
	ldrh r1, [r0, r1]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02247AAC: .word 0x0226E652
	thumb_func_end ov16_02247A80

	thumb_func_start ov16_02247AB0
ov16_02247AB0: ; 0x02247AB0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_0223E22C
	cmp r0, #0xc
	ble _02247ACA
	mov r0, #0xc
_02247ACA:
	lsl r1, r0, #2
	ldr r0, _02247AD8 ; =0x0226E690
	ldr r1, [r0, r1]
	ldr r0, _02247ADC ; =0x00002174
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247AD8: .word 0x0226E690
_02247ADC: .word 0x00002174
	thumb_func_end ov16_02247AB0

	thumb_func_start ov16_02247AE0
ov16_02247AE0: ; 0x02247AE0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r5, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02258B18
	cmp r0, #0
	beq _02247B12
	ldr r1, _02247B20 ; =0x00002154
	str r0, [r4, r1]
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov16_02258B2C
	ldr r1, _02247B24 ; =0x00002160
	str r0, [r4, r1]
	b _02247B1A
_02247B12:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02248AF0
_02247B1A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02247B20: .word 0x00002154
_02247B24: .word 0x00002160
	thumb_func_end ov16_02247AE0

	thumb_func_start ov16_02247B28
ov16_02247B28: ; 0x02247B28
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _02247BA0 ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02247B6E
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r3, #0x3c
	bl ov16_02255AB4
	cmp r0, #1
	bne _02247B6E
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_02248AF0
	b _02247B9C
_02247B6E:
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r3, r4, r0
	ldr r0, _02247BA0 ; =0x00002DB8
	ldrh r1, [r3, r0]
	cmp r1, #0
	beq _02247B88
	add r0, #0x14
	ldr r0, [r3, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _02247B94
_02247B88:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02258CB4
	cmp r0, #1
	beq _02247B9C
_02247B94:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02247B9C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247BA0: .word 0x00002DB8
	thumb_func_end ov16_02247B28

	thumb_func_start ov16_02247BA4
ov16_02247BA4: ; 0x02247BA4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02259204
	cmp r0, #1
	beq _02247BD0
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02247BD0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02247BA4

	thumb_func_start ov16_02247BD4
ov16_02247BD4: ; 0x02247BD4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov16_02265B2C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02247BD4

	thumb_func_start ov16_02247C04
ov16_02247C04: ; 0x02247C04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov16_02259AB4
	add r4, r0, #0
	beq _02247C4C
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r1, r0, #0
	cmp r4, #0xff
	bne _02247C3A
	add r0, r5, #0
	bl ov16_02248AF0
	b _02247C42
_02247C3A:
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
_02247C42:
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl ov16_0223F500
_02247C4C:
	ldr r1, _02247C60 ; =0x00003154
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247C60: .word 0x00003154
	thumb_func_end ov16_02247C04

	thumb_func_start ov16_02247C64
ov16_02247C64: ; 0x02247C64
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	bl ov16_0223DF1C
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	mov r2, #0
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov16_02265A8C
	mov r0, #0
	str r0, [r4, #0x78]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02247C64

	thumb_func_start ov16_02247C94
ov16_02247C94: ; 0x02247C94
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #0
	bl ov16_02259AB4
	add r5, r0, #0
	beq _02247CC6
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r1, r0, #0
	cmp r5, #0xff
	bne _02247CC0
	add r0, r4, #0
	bl ov16_02248AF0
	b _02247CC6
_02247CC0:
	ldr r0, _02247CD8 ; =0x000021A0
	sub r1, r5, #1
	strb r1, [r4, r0]
_02247CC6:
	ldr r1, _02247CDC ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247CD8: .word 0x000021A0
_02247CDC: .word 0x00003154
	thumb_func_end ov16_02247C94

	thumb_func_start ov16_02247CE0
ov16_02247CE0: ; 0x02247CE0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	beq _02247CFE
	add r0, r4, #0
	bl ov16_02266A38
_02247CFE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02247CE0

	thumb_func_start ov16_02247D04
ov16_02247D04: ; 0x02247D04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0224A984
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_0223E208
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	add r2, r0, #0
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #0x80
	tst r0, r1
	beq _02247DF8
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r0, _02247E04 ; =0x00002D8C
	add r1, r5, r6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02247DF8
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	mov r0, #5
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov16_022558CC
	cmp r0, #0x14
	bgt _02247D96
	bge _02247DBE
	cmp r0, #0
	bgt _02247D90
	beq _02247DCE
	b _02247DDA
_02247D90:
	cmp r0, #0xa
	beq _02247DC6
	b _02247DDA
_02247D96:
	cmp r0, #0x50
	bgt _02247DA2
	bge _02247DAE
	cmp r0, #0x28
	beq _02247DB6
	b _02247DDA
_02247DA2:
	cmp r0, #0xa0
	bne _02247DDA
	ldr r0, _02247E08 ; =0x0000215C
	mov r1, #2
	str r1, [r5, r0]
	b _02247DDE
_02247DAE:
	ldr r0, _02247E08 ; =0x0000215C
	mov r1, #4
	str r1, [r5, r0]
	b _02247DDE
_02247DB6:
	ldr r0, _02247E08 ; =0x0000215C
	mov r1, #8
	str r1, [r5, r0]
	b _02247DDE
_02247DBE:
	ldr r0, _02247E08 ; =0x0000215C
	mov r1, #0x10
	str r1, [r5, r0]
	b _02247DDE
_02247DC6:
	ldr r0, _02247E08 ; =0x0000215C
	mov r1, #0x20
	str r1, [r5, r0]
	b _02247DDE
_02247DCE:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_02248AF0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02247DDA:
	bl sub_02022974
_02247DDE:
	ldr r0, _02247E0C ; =0x00002D90
	add r1, r5, r6
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	ldr r1, _02247E08 ; =0x0000215C
	ldr r1, [r5, r1]
	bl ov16_022563F8
	ldr r1, _02247E08 ; =0x0000215C
	str r0, [r5, r1]
	b _02247E00
_02247DF8:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_02248AF0
_02247E00:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247E04: .word 0x00002D8C
_02247E08: .word 0x0000215C
_02247E0C: .word 0x00002D90
	thumb_func_end ov16_02247D04

	thumb_func_start ov16_02247E10
ov16_02247E10: ; 0x02247E10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov16_02255A4C
	cmp r0, #0x20
	ldr r0, _02247E8C ; =0x00003044
	bne _02247E44
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02247E90 ; =0x000003E5
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r4, r0, #0x10
	b _02247E4E
_02247E44:
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02247E90 ; =0x000003E5
	ldrb r4, [r1, r0]
_02247E4E:
	cmp r4, #0
	bne _02247E56
	bl sub_02022974
_02247E56:
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r4
	bge _02247E7E
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0, #0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02247E94 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02247E7E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02247E7E:
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247E8C: .word 0x00003044
_02247E90: .word 0x000003E5
_02247E94: .word 0x00002D8C
	thumb_func_end ov16_02247E10

	thumb_func_start ov16_02247E98
ov16_02247E98: ; 0x02247E98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	ldr r0, [r5, #0x64]
	mov r4, #0xc0
	add r1, r0, #0
	mul r1, r4
	mov r0, #0xb5
	add r3, r5, r1
	lsl r0, r0, #6
	add r1, r4, #0
	ldrh r2, [r3, r0]
	add r1, #0xf9
	cmp r2, r1
	bne _02247F36
	ldr r1, [r5, #0x6c]
	add r2, r1, #0
	mul r2, r4
	add r1, r0, #0
	add r2, r5, r2
	add r1, #0x4c
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02247F36
	add r0, #0x70
	ldr r1, [r3, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02247F36
	add r0, r6, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	bne _02247EFE
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov16_0223EE30
	bl sub_02006494
	b _02247F06
_02247EFE:
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov16_0223F810
_02247F06:
	cmp r0, #0
	beq _02247F12
	cmp r0, #1
	beq _02247F16
	cmp r0, #2
	beq _02247F1A
_02247F12:
	mov r4, #0
	b _02247F1C
_02247F16:
	mov r4, #0xa
	b _02247F1C
_02247F1A:
	mov r4, #0x1e
_02247F1C:
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r4
	ble _02247F3E
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
	b _02247F3E
_02247F36:
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
_02247F3E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02247E98

	thumb_func_start ov16_02247F44
ov16_02247F44: ; 0x02247F44
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r1, r0, #0
	ldr r0, _02247F74 ; =0x000003DE
	add r2, r4, r0
	ldr r0, _02247F78 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r0, r2, r0
	bl sub_02079104
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	nop
_02247F74: .word 0x000003DE
_02247F78: .word 0x00003044
	thumb_func_end ov16_02247F44

	thumb_func_start ov16_02247F7C
ov16_02247F7C: ; 0x02247F7C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r1, r0, #0
	ldr r3, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl ov16_022664F8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02247F7C

	thumb_func_start ov16_02247FBC
ov16_02247FBC: ; 0x02247FBC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	bl ov16_0226651C
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02247FBC

	thumb_func_start ov16_02247FE8
ov16_02247FE8: ; 0x02247FE8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	mov r1, #0
	bl ov16_022665AC
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov16_02247FE8

	thumb_func_start ov16_02248000
ov16_02248000: ; 0x02248000
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, _0224803C ; =0x0000219C
	str r0, [sp]
	add r3, r4, r1
	ldrb r2, [r3, r2]
	add r0, r5, #0
	mov r3, #0
	bl ov16_0223E30C
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224803C: .word 0x0000219C
	thumb_func_end ov16_02248000

	thumb_func_start ov16_02248040
ov16_02248040: ; 0x02248040
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255DE8
	cmp r0, #0
	beq _0224807E
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_02248AF0
_0224807E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02248040

	thumb_func_start ov16_02248084
ov16_02248084: ; 0x02248084
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	bl ov16_022665E4
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02248084

	thumb_func_start ov16_022480B0
ov16_022480B0: ; 0x022480B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	bl ov16_0226660C
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022480B0

	thumb_func_start ov16_022480DC
ov16_022480DC: ; 0x022480DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	bl ov16_02266634
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022480DC

	thumb_func_start ov16_02248108
ov16_02248108: ; 0x02248108
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	bl ov16_0226665C
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02248108

	thumb_func_start ov16_02248134
ov16_02248134: ; 0x02248134
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02266684
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02248134

	thumb_func_start ov16_0224814C
ov16_0224814C: ; 0x0224814C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_022666A0
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0224814C

	thumb_func_start ov16_02248164
ov16_02248164: ; 0x02248164
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r1, r0, #0
	ldr r3, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl ov16_022666BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_02248164

	thumb_func_start ov16_022481A4
ov16_022481A4: ; 0x022481A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0226673C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_022481A4

	thumb_func_start ov16_022481D0
ov16_022481D0: ; 0x022481D0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	mov r2, #0x4e
	lsl r2, r2, #2
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r2
	bl ov16_0225708C
	cmp r0, #0
	bne _02248200
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02248200:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_022481D0

	thumb_func_start ov16_02248204
ov16_02248204: ; 0x02248204
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r2, r0, #0
	cmp r2, #3
	beq _0224822A
	cmp r2, #4
	beq _02248252
	b _0224827A
_0224822A:
	mov r5, #0
	cmp r6, #0
	ble _0224828A
	mov r7, #1
_02248232:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02248290 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _0224824A
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_022667E8
_0224824A:
	add r5, r5, #1
	cmp r5, r6
	blt _02248232
	b _0224828A
_02248252:
	mov r5, #0
	cmp r6, #0
	ble _0224828A
	mov r7, #1
_0224825A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02248290 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _02248272
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_022667E8
_02248272:
	add r5, r5, #1
	cmp r5, r6
	blt _0224825A
	b _0224828A
_0224827A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_022667E8
_0224828A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248290: .word 0x00000195
	thumb_func_end ov16_02248204

	thumb_func_start ov16_02248294
ov16_02248294: ; 0x02248294
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ov16_0223DF1C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r2, r0, #0
	cmp r2, #3
	beq _022482BA
	cmp r2, #4
	beq _022482E2
	b _0224830A
_022482BA:
	mov r5, #0
	cmp r6, #0
	ble _0224831A
	mov r7, #1
_022482C2:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02248320 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _022482DA
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02266804
_022482DA:
	add r5, r5, #1
	cmp r5, r6
	blt _022482C2
	b _0224831A
_022482E2:
	mov r5, #0
	cmp r6, #0
	ble _0224831A
	mov r7, #1
_022482EA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _02248320 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _02248302
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_02266804
_02248302:
	add r5, r5, #1
	cmp r5, r6
	blt _022482EA
	b _0224831A
_0224830A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_02266804
_0224831A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248320: .word 0x00000195
	thumb_func_end ov16_02248294

	thumb_func_start ov16_02248324
ov16_02248324: ; 0x02248324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #1
	mov r5, #0
	bl ov16_02248AF0
	ldr r0, [sp, #4]
	bl ov16_02248AD0
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov16_02248AD0
	str r0, [sp, #0x14]
	ldr r0, [sp]
	bl ov16_0223DF0C
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl ov16_0224A984
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mov r1, #8
	tst r0, r1
	bne _02248376
	ldr r0, [sp, #0xc]
	mov r1, #0x10
	tst r0, r1
	beq _0224845E
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov16_0223E208
	cmp r0, #0
	beq _0224845E
_02248376:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov16_0223DF20
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov16_0223E258
	add r1, r0, #0
	ldr r0, [sp]
	bl ov16_0223DF20
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov16_0223DF14
	add r0, r7, #0
	mov r4, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _022483E4
_022483A6:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _022483D8
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _022484CC ; =0x000001EE
	cmp r0, r1
	beq _022483D8
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r5, r5, r0
_022483D8:
	add r0, r7, #0
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _022483A6
_022483E4:
	ldr r0, [sp, #0xc]
	sub r0, #0x4a
	str r0, [sp, #0xc]
	cmp r0, #1
	bhi _02248406
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov16_0223E208
	cmp r0, #0
	bne _02248406
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov16_0223E1F8
	cmp r0, #2
	beq _02248450
_02248406:
	ldr r0, [sp, #8]
	mov r4, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02248450
	ldr r7, _022484CC ; =0x000001EE
_02248414:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02248444
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, r7
	beq _02248444
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r5, r5, r0
_02248444:
	ldr r0, [sp, #8]
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _02248414
_02248450:
	cmp r5, #0
	bne _022484C6
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	bl ov16_02248AF0
	b _022484C6
_0224845E:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov16_0223DF20
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov16_0223DF14
	add r0, r7, #0
	mov r4, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _022484BA
_0224847C:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _022484AE
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _022484CC ; =0x000001EE
	cmp r0, r1
	beq _022484AE
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r5, r5, r0
_022484AE:
	add r0, r7, #0
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _0224847C
_022484BA:
	cmp r5, #0
	bne _022484C6
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	bl ov16_02248AF0
_022484C6:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022484CC: .word 0x000001EE
	thumb_func_end ov16_02248324

	thumb_func_start ov16_022484D0
ov16_022484D0: ; 0x022484D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r6, #0
	bl ov16_02248AD0
	mov ip, r0
	ldr r1, [r6, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r0, r6, r0
	add r5, r0, #1
	ldr r7, _02248548 ; =0x00002D58
	mov r4, #0
	mov r3, #1
	add r0, sp, #4
_022484FA:
	ldrsb r1, [r5, r7]
	cmp r1, #0xc
	bge _02248508
	lsl r1, r4, #2
	sub r2, r3, #1
	add r4, r4, #1
	str r2, [r0, r1]
_02248508:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #8
	blt _022484FA
	cmp r4, #0
	beq _02248538
	ldr r0, [sp]
	bl ov16_0223F4BC
	add r1, r4, #0
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	ldr r1, _0224854C ; =0x00002170
	add r0, #0x27
	str r0, [r6, r1]
	mov r0, #2
	ldr r2, [r6, r1]
	lsl r0, r0, #0x1e
	orr r0, r2
	str r0, [r6, r1]
	b _02248540
_02248538:
	add r0, r6, #0
	mov r1, ip
	bl ov16_02248AF0
_02248540:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02248548: .word 0x00002D58
_0224854C: .word 0x00002170
	thumb_func_end ov16_022484D0

	thumb_func_start ov16_02248550
ov16_02248550: ; 0x02248550
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	ldr r0, _02248594 ; =0x00002DB8
	add r5, r2, #0
	add r6, r4, r0
	mov r0, #0xc0
	mul r5, r0
	lsl r0, r2, #1
	add r1, r4, r0
	ldrh r3, [r6, r5]
	ldr r0, _02248598 ; =0x00003124
	strh r3, [r1, r0]
	mov r0, #0
	strh r0, [r6, r5]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_02253EC0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248594: .word 0x00002DB8
_02248598: .word 0x00003124
	thumb_func_end ov16_02248550

	thumb_func_start ov16_0224859C
ov16_0224859C: ; 0x0224859C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r1, r0, #0
	ldr r0, [r4, #0x64]
	ldr r2, _022485DC ; =0x00003124
	lsl r0, r0, #1
	add r0, r4, r0
	ldrh r3, [r0, r2]
	cmp r3, #0
	beq _022485D0
	mov r0, #0x4a
	lsl r0, r0, #2
	str r3, [r4, r0]
	ldr r0, [r4, #0x64]
	mov r1, #0
	lsl r0, r0, #1
	add r0, r4, r0
	strh r1, [r0, r2]
	b _022485D6
_022485D0:
	add r0, r4, #0
	bl ov16_02248AF0
_022485D6:
	mov r0, #0
	pop {r4, pc}
	nop
_022485DC: .word 0x00003124
	thumb_func_end ov16_0224859C

	thumb_func_start ov16_022485E0
ov16_022485E0: ; 0x022485E0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	mov r2, #0x4e
	lsl r2, r2, #2
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r2
	bl ov16_022588BC
	cmp r0, #0
	bne _02248610
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02248610:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_022485E0

	thumb_func_start ov16_02248614
ov16_02248614: ; 0x02248614
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02266820
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02248614

	thumb_func_start ov16_0224862C
ov16_0224862C: ; 0x0224862C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0226683C
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0224862C

	thumb_func_start ov16_02248648
ov16_02248648: ; 0x02248648
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_022668D0
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02248648

	thumb_func_start ov16_02248660
ov16_02248660: ; 0x02248660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r4, #0
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r5, #0
	bl ov16_0224A984
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02258AB8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov16_02258ACC
	str r0, [sp, #4]
	cmp r6, #0x41
	bne _022486B2
	ldr r0, [sp]
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	ldr r0, [sp, #4]
	cmp r1, r0
	bge _022486B2
	mov r4, #1
_022486B2:
	cmp r6, #0x67
	bne _022486CA
	mov r0, #0xc0
	mul r0, r7
	add r2, r5, r0
	ldr r0, _02248700 ; =0x00002D8C
	ldr r1, [r2, r0]
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r1, r0
	bne _022486CA
	mov r4, #1
_022486CA:
	cmp r4, #0
	beq _022486F8
	mov r1, #0xc0
	add r0, r7, #0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _02248700 ; =0x00002D8C
	ldr r3, [r2, r0]
	ldr r2, _02248704 ; =0x0000215C
	ldr r0, [r5, r2]
	add r0, r0, r3
	cmp r0, #0
	bgt _022486F8
	sub r0, r3, #1
	neg r0, r0
	str r0, [r5, r2]
	add r0, r2, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	add r1, #0x40
	orr r0, r1
	add r2, #0x10
	str r0, [r5, r2]
_022486F8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248700: .word 0x00002D8C
_02248704: .word 0x0000215C
	thumb_func_end ov16_02248660

	thumb_func_start ov16_02248708
ov16_02248708: ; 0x02248708
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov16_0224A984
	add r1, r0, #0
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r0, _02248798 ; =0x00002D8C
	add r2, r5, r4
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0224878A
	ldr r0, _0224879C ; =0x0000219C
	add r2, r5, r1
	ldrb r2, [r2, r0]
	cmp r2, #6
	beq _0224878A
	add r0, r6, #0
	bl ov16_0223DFAC
	add r6, r0, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, _022487A0 ; =0x00002D67
	add r1, r5, r4
	ldrb r0, [r1, r0]
	cmp r0, #0x1e
	beq _02248792
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_022577A4
	cmp r0, #0
	bne _02248792
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
	b _02248792
_0224878A:
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_02248AF0
_02248792:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248798: .word 0x00002D8C
_0224879C: .word 0x0000219C
_022487A0: .word 0x00002D67
	thumb_func_end ov16_02248708

	thumb_func_start ov16_022487A4
ov16_022487A4: ; 0x022487A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_0224A984
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _022487FC ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	bne _022487F0
	mov r1, #0x1c
	mul r1, r0
	mov r0, #0xba
	add r1, r4, r1
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #8
	tst r0, r1
	beq _022487F8
_022487F0:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_022487F8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022487FC: .word 0x00002DB0
	thumb_func_end ov16_022487A4

	thumb_func_start ov16_02248800
ov16_02248800: ; 0x02248800
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02248840
	mov r0, #0x4c
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	beq _02248848
_02248840:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02248848:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02248800

	thumb_func_start ov16_02248850
ov16_02248850: ; 0x02248850
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02257028
	str r0, [r4, #0x6c]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02248850

	thumb_func_start ov16_02248880
ov16_02248880: ; 0x02248880
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	mov r2, #0x4e
	lsl r2, r2, #2
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r2
	bl ov16_0225B228
	cmp r0, #0
	bne _022488B0
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_022488B0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02248880

	thumb_func_start ov16_022488B4
ov16_022488B4: ; 0x022488B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0226692C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_022488B4

	thumb_func_start ov16_022488E0
ov16_022488E0: ; 0x022488E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_022669D8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_022488E0

	thumb_func_start ov16_0224890C
ov16_0224890C: ; 0x0224890C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224A984
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov16_02266A18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0224890C

	thumb_func_start ov16_02248944
ov16_02248944: ; 0x02248944
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov16_0223DF60
	cmp r0, #6
	bne _02248970
	ldr r0, [r5, #0x64]
	bl sub_020799A0
	cmp r0, #0x12
	beq _02248980
_02248970:
	ldr r0, _02248984 ; =0x00002414
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02248980
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02248AF0
_02248980:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02248984: .word 0x00002414
	thumb_func_end ov16_02248944

	thumb_func_start ov16_02248988
ov16_02248988: ; 0x02248988
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	ldr r2, [r4, #0x2c]
	mov r1, #4
	tst r1, r2
	beq _022489B2
	ldr r1, _022489EC ; =0x0000240C
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _022489B2
	mov r4, #2
	b _022489B4
_022489B2:
	mov r4, #1
_022489B4:
	add r1, r5, #0
	add r1, #0xf0
	ldr r1, [r1, #0]
	cmp r0, r1
	ble _022489D2
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl ov16_02248AF0
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	add r1, r0, r4
	b _022489D4
_022489D2:
	mov r1, #0
_022489D4:
	add r0, r5, #0
	add r0, #0xf0
	str r1, [r0, #0]
	ldr r1, _022489F0 ; =0x00003154
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022489EC: .word 0x0000240C
_022489F0: .word 0x00003154
	thumb_func_end ov16_02248988

	thumb_func_start ov16_022489F4
ov16_022489F4: ; 0x022489F4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r5, #0
	bl ov16_02248AD0
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_02248AD0
	add r1, r0, #0
	ldr r0, _02248A2C ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r2, r5, r0
	ldr r0, _02248A30 ; =0x000003E2
	ldrb r0, [r2, r0]
	cmp r4, r0
	bne _02248A26
	add r0, r5, #0
	bl ov16_02248AF0
_02248A26:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02248A2C: .word 0x00003044
_02248A30: .word 0x000003E2
	thumb_func_end ov16_022489F4

	thumb_func_start ov16_02248A34
ov16_02248A34: ; 0x02248A34
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	add r7, r0, #0
	add r0, r4, #0
	bl ov16_02248AD0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_02248B10
	add r1, r0, #0
	ldr r1, [r1, #0]
	ldr r2, [sp]
	add r0, r6, #0
	bl sub_020759CC
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02248A34

	thumb_func_start ov16_02248A7C
ov16_02248A7C: ; 0x02248A7C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov16_02248AF0
	add r0, r4, #0
	bl ov16_02248AD0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0224A984
	add r2, r0, #0
	add r1, r4, #0
	ldr r3, _02248AB0 ; =0x0000219C
	add r4, r4, r2
	ldrb r3, [r4, r3]
	add r0, r5, #0
	bl ov16_02251C94
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02248AB0: .word 0x0000219C
	thumb_func_end ov16_02248A7C

	thumb_func_start ov16_02248AB4
ov16_02248AB4: ; 0x02248AB4
	ldr r2, _02248AC8 ; =0x00003154
	mov r0, #1
	ldr r3, [r1, r2]
	bic r3, r0
	mov r0, #1
	orr r0, r3
	str r0, [r1, r2]
	ldr r3, _02248ACC ; =ov16_02251EF4
	add r0, r1, #0
	bx r3
	; .align 2, 0
_02248AC8: .word 0x00003154
_02248ACC: .word ov16_02251EF4
	thumb_func_end ov16_02248AB4

	thumb_func_start ov16_02248AD0
ov16_02248AD0: ; 0x02248AD0
	add r1, r0, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	lsl r1, r1, #2
	add r2, r0, r1
	mov r1, #0x27
	lsl r1, r1, #8
	ldr r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	add r0, #0xb4
	add r1, r1, #1
	str r1, [r0, #0]
	add r0, r2, #0
	bx lr
	thumb_func_end ov16_02248AD0

	thumb_func_start ov16_02248AF0
ov16_02248AF0: ; 0x02248AF0
	add r2, r0, #0
	add r2, #0xb4
	ldr r2, [r2, #0]
	add r0, #0xb4
	add r1, r2, r1
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov16_02248AF0

	thumb_func_start ov16_02248B00
ov16_02248B00: ; 0x02248B00
	ldr r3, _02248B04 ; =ov16_02251E1C
	bx r3
	; .align 2, 0
_02248B04: .word ov16_02251E1C
	thumb_func_end ov16_02248B00

	thumb_func_start ov16_02248B08
ov16_02248B08: ; 0x02248B08
	ldr r3, _02248B0C ; =ov16_02251E5C
	bx r3
	; .align 2, 0
_02248B0C: .word ov16_02251E5C
	thumb_func_end ov16_02248B08

	thumb_func_start ov16_02248B10
ov16_02248B10: ; 0x02248B10
	push {r4, lr}
	add r4, r1, #0
	cmp r2, #0x45
	bls _02248B1A
	b _02248E0C
_02248B1A:
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02248B26: ; jump table
	.short _02248BB2 - _02248B26 - 2 ; case 0
	.short _02248BB6 - _02248B26 - 2 ; case 1
	.short _02248BBC - _02248B26 - 2 ; case 2
	.short _02248BC2 - _02248B26 - 2 ; case 3
	.short _02248BC8 - _02248B26 - 2 ; case 4
	.short _02248BCE - _02248B26 - 2 ; case 5
	.short _02248BD4 - _02248B26 - 2 ; case 6
	.short _02248BDA - _02248B26 - 2 ; case 7
	.short _02248BE2 - _02248B26 - 2 ; case 8
	.short _02248BE8 - _02248B26 - 2 ; case 9
	.short _02248BF0 - _02248B26 - 2 ; case 10
	.short _02248BF6 - _02248B26 - 2 ; case 11
	.short _02248C08 - _02248B26 - 2 ; case 12
	.short _02248C1A - _02248B26 - 2 ; case 13
	.short _02248C30 - _02248B26 - 2 ; case 14
	.short _02248C36 - _02248B26 - 2 ; case 15
	.short _02248C3C - _02248B26 - 2 ; case 16
	.short _02248C42 - _02248B26 - 2 ; case 17
	.short _02248C48 - _02248B26 - 2 ; case 18
	.short _02248C4E - _02248B26 - 2 ; case 19
	.short _02248C54 - _02248B26 - 2 ; case 20
	.short _02248C5C - _02248B26 - 2 ; case 21
	.short _02248C68 - _02248B26 - 2 ; case 22
	.short _02248C70 - _02248B26 - 2 ; case 23
	.short _02248C78 - _02248B26 - 2 ; case 24
	.short _02248C7E - _02248B26 - 2 ; case 25
	.short _02248C86 - _02248B26 - 2 ; case 26
	.short _02248C8E - _02248B26 - 2 ; case 27
	.short _02248C96 - _02248B26 - 2 ; case 28
	.short _02248C9E - _02248B26 - 2 ; case 29
	.short _02248CA4 - _02248B26 - 2 ; case 30
	.short _02248CAA - _02248B26 - 2 ; case 31
	.short _02248CB0 - _02248B26 - 2 ; case 32
	.short _02248CB6 - _02248B26 - 2 ; case 33
	.short _02248CBC - _02248B26 - 2 ; case 34
	.short _02248CC2 - _02248B26 - 2 ; case 35
	.short _02248CCA - _02248B26 - 2 ; case 36
	.short _02248CD2 - _02248B26 - 2 ; case 37
	.short _02248CDA - _02248B26 - 2 ; case 38
	.short _02248CE2 - _02248B26 - 2 ; case 39
	.short _02248CE8 - _02248B26 - 2 ; case 40
	.short _02248CF0 - _02248B26 - 2 ; case 41
	.short _02248CFE - _02248B26 - 2 ; case 42
	.short _02248D0C - _02248B26 - 2 ; case 43
	.short _02248D14 - _02248B26 - 2 ; case 44
	.short _02248D1A - _02248B26 - 2 ; case 45
	.short _02248D28 - _02248B26 - 2 ; case 46
	.short _02248D36 - _02248B26 - 2 ; case 47
	.short _02248D46 - _02248B26 - 2 ; case 48
	.short _02248D56 - _02248B26 - 2 ; case 49
	.short _02248D68 - _02248B26 - 2 ; case 50
	.short _02248D6E - _02248B26 - 2 ; case 51
	.short _02248D74 - _02248B26 - 2 ; case 52
	.short _02248D7A - _02248B26 - 2 ; case 53
	.short _02248D86 - _02248B26 - 2 ; case 54
	.short _02248D8C - _02248B26 - 2 ; case 55
	.short _02248D92 - _02248B26 - 2 ; case 56
	.short _02248D98 - _02248B26 - 2 ; case 57
	.short _02248D9E - _02248B26 - 2 ; case 58
	.short _02248DA4 - _02248B26 - 2 ; case 59
	.short _02248DAA - _02248B26 - 2 ; case 60
	.short _02248DB2 - _02248B26 - 2 ; case 61
	.short _02248DB8 - _02248B26 - 2 ; case 62
	.short _02248DBC - _02248B26 - 2 ; case 63
	.short _02248DC2 - _02248B26 - 2 ; case 64
	.short _02248DC8 - _02248B26 - 2 ; case 65
	.short _02248DD8 - _02248B26 - 2 ; case 66
	.short _02248DE8 - _02248B26 - 2 ; case 67
	.short _02248DF6 - _02248B26 - 2 ; case 68
	.short _02248E06 - _02248B26 - 2 ; case 69
_02248BB2:
	add r0, #0x2c
	pop {r4, pc}
_02248BB6:
	ldr r0, _02248E10 ; =0x0000214C
	add r0, r4, r0
	pop {r4, pc}
_02248BBC:
	ldr r0, _02248E14 ; =0x00002170
	add r0, r4, r0
	pop {r4, pc}
_02248BC2:
	ldr r0, _02248E18 ; =0x00002174
	add r0, r4, r0
	pop {r4, pc}
_02248BC8:
	ldr r0, _02248E1C ; =0x00002178
	add r0, r4, r0
	pop {r4, pc}
_02248BCE:
	add r4, #0x88
	add r0, r4, #0
	pop {r4, pc}
_02248BD4:
	ldr r0, _02248E20 ; =0x0000213C
	add r0, r4, r0
	pop {r4, pc}
_02248BDA:
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	pop {r4, pc}
_02248BE2:
	ldr r0, _02248E24 ; =0x00002158
	add r0, r4, r0
	pop {r4, pc}
_02248BE8:
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02248BF0:
	ldr r0, _02248E28 ; =0x0000216C
	add r0, r4, r0
	pop {r4, pc}
_02248BF6:
	ldr r1, [r4, #0x64]
	bl ov16_0223E208
	mov r1, #0x6f
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_02248C08:
	ldr r1, [r4, #0x6c]
	bl ov16_0223E208
	mov r1, #0x6f
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_02248C1A:
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	bl ov16_0223E208
	mov r1, #0x6f
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_02248C30:
	ldr r0, _02248E2C ; =0x00002144
	add r0, r4, r0
	pop {r4, pc}
_02248C36:
	add r4, #0x64
	add r0, r4, #0
	pop {r4, pc}
_02248C3C:
	add r4, #0x6c
	add r0, r4, #0
	pop {r4, pc}
_02248C42:
	add r4, #0x94
	add r0, r4, #0
	pop {r4, pc}
_02248C48:
	add r4, #0x74
	add r0, r4, #0
	pop {r4, pc}
_02248C4E:
	add r4, #0x78
	add r0, r4, #0
	pop {r4, pc}
_02248C54:
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02248C5C:
	ldr r0, _02248E30 ; =0x000030E4
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_02248C68:
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	pop {r4, pc}
_02248C70:
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02248C78:
	ldr r0, _02248E34 ; =0x00003044
	add r0, r4, r0
	pop {r4, pc}
_02248C7E:
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	pop {r4, pc}
_02248C86:
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02248C8E:
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r4, r0
	pop {r4, pc}
_02248C96:
	mov r0, #0xc1
	lsl r0, r0, #6
	add r0, r4, r0
	pop {r4, pc}
_02248C9E:
	add r4, #0x98
	add r0, r4, #0
	pop {r4, pc}
_02248CA4:
	ldr r0, _02248E38 ; =0x00002154
	add r0, r4, r0
	pop {r4, pc}
_02248CAA:
	add r4, #0x38
	add r0, r4, #0
	pop {r4, pc}
_02248CB0:
	ldr r0, _02248E3C ; =0x0000215C
	add r0, r4, r0
	pop {r4, pc}
_02248CB6:
	ldr r1, _02248E40 ; =0x00002420
	add r0, r0, r1
	pop {r4, pc}
_02248CBC:
	add r4, #0x8c
	add r0, r4, #0
	pop {r4, pc}
_02248CC2:
	mov r0, #0x49
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02248CCA:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02248CD2:
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02248CDA:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02248CE2:
	ldr r0, _02248E44 ; =0x00003104
	add r0, r4, r0
	pop {r4, pc}
_02248CE8:
	mov r0, #0x86
	lsl r0, r0, #6
	add r0, r4, r0
	pop {r4, pc}
_02248CF0:
	mov r0, #0x7b
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02248CFE:
	mov r0, #0x81
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02248D0C:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02248D14:
	ldr r0, _02248E48 ; =0x00002150
	add r0, r4, r0
	pop {r4, pc}
_02248D1A:
	mov r0, #0x82
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02248D28:
	mov r0, #0x82
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02248D36:
	mov r0, #0xba
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r1, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02248D46:
	mov r0, #0xba
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r1, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02248D56:
	mov r0, #0xba
	lsl r0, r0, #2
	add r2, r4, r0
	add r4, #0x94
	ldr r1, [r4, #0]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02248D68:
	ldr r0, _02248E4C ; =0x00003114
	add r0, r4, r0
	pop {r4, pc}
_02248D6E:
	ldr r0, _02248E50 ; =0x00003118
	add r0, r4, r0
	pop {r4, pc}
_02248D74:
	ldr r1, _02248E54 ; =0x0000240C
	add r0, r0, r1
	pop {r4, pc}
_02248D7A:
	ldr r0, _02248E58 ; =0x0000304C
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_02248D86:
	ldr r0, _02248E5C ; =0x00002148
	add r0, r4, r0
	pop {r4, pc}
_02248D8C:
	ldr r1, _02248E60 ; =0x00002414
	add r0, r0, r1
	pop {r4, pc}
_02248D92:
	add r4, #0x7c
	add r0, r4, #0
	pop {r4, pc}
_02248D98:
	ldr r0, _02248E64 ; =0x00002160
	add r0, r4, r0
	pop {r4, pc}
_02248D9E:
	ldr r0, _02248E68 ; =0x00002164
	add r0, r4, r0
	pop {r4, pc}
_02248DA4:
	ldr r1, _02248E6C ; =0x0000241C
	add r0, r0, r1
	pop {r4, pc}
_02248DAA:
	mov r0, #0x85
	lsl r0, r0, #6
	add r0, r4, r0
	pop {r4, pc}
_02248DB2:
	add r4, #0xec
	add r0, r4, #0
	pop {r4, pc}
_02248DB8:
	add r0, #0x44
	pop {r4, pc}
_02248DBC:
	add r4, #0x68
	add r0, r4, #0
	pop {r4, pc}
_02248DC2:
	add r4, #0x70
	add r0, r4, #0
	pop {r4, pc}
_02248DC8:
	mov r0, #0xb6
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r1, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02248DD8:
	mov r0, #0x21
	lsl r0, r0, #4
	add r1, r4, r0
	sub r0, #0xf8
	ldr r0, [r4, r0]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02248DE8:
	mov r0, #0x21
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02248DF6:
	mov r0, #0xbb
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r1, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02248E06:
	ldr r0, _02248E70 ; =0x00003150
	add r0, r4, r0
	pop {r4, pc}
_02248E0C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02248E10: .word 0x0000214C
_02248E14: .word 0x00002170
_02248E18: .word 0x00002174
_02248E1C: .word 0x00002178
_02248E20: .word 0x0000213C
_02248E24: .word 0x00002158
_02248E28: .word 0x0000216C
_02248E2C: .word 0x00002144
_02248E30: .word 0x000030E4
_02248E34: .word 0x00003044
_02248E38: .word 0x00002154
_02248E3C: .word 0x0000215C
_02248E40: .word 0x00002420
_02248E44: .word 0x00003104
_02248E48: .word 0x00002150
_02248E4C: .word 0x00003114
_02248E50: .word 0x00003118
_02248E54: .word 0x0000240C
_02248E58: .word 0x0000304C
_02248E5C: .word 0x00002148
_02248E60: .word 0x00002414
_02248E64: .word 0x00002160
_02248E68: .word 0x00002164
_02248E6C: .word 0x0000241C
_02248E70: .word 0x00003150
	thumb_func_end ov16_02248B10

	thumb_func_start ov16_02248E74
ov16_02248E74: ; 0x02248E74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd8
	add r4, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	bl ov16_0223E05C
	str r0, [sp, #0x40]
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	str r0, [sp, #0x3c]
	ldr r0, [r4, #4]
	mov r7, #0
	ldr r0, [r0, #0x74]
	ldr r5, [r4, #0x48]
	asr r1, r0, #1
	mov r0, #1
	and r0, r1
	str r0, [sp, #0x44]
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_0223DF60
	cmp r5, r0
	bge _02248EF6
	ldr r0, [sp, #0x44]
	lsl r0, r0, #2
	str r0, [sp, #0x28]
_02248EAE:
	ldr r0, [r4, #0]
	mov r1, #0
	add r2, r5, #0
	bl ov16_0223DFAC
	mov r1, #6
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0x33
	beq _02248EF6
	add r0, r5, #0
	bl sub_020787CC
	add r2, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x28]
	add r0, r0, r1
	add r0, #0xa4
	ldr r0, [r0, #0]
	tst r0, r2
	bne _02248EF6
	ldr r0, [r4, #0]
	mov r1, #0
	add r5, r5, #1
	bl ov16_0223DF60
	cmp r5, r0
	blt _02248EAE
_02248EF6:
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223DF60
	cmp r5, r0
	bne _02248F08
	mov r0, #0x26
	str r0, [r4, #0x28]
	b _02248F24
_02248F08:
	ldr r0, [sp, #0x3c]
	mov r2, #2
	tst r0, r2
	beq _02248F24
	ldr r0, [sp, #0x3c]
	mov r1, #0x40
	tst r0, r1
	bne _02248F24
	ldr r1, [r4, #4]
	ldr r0, _0224920C ; =0x0000219E
	ldrb r0, [r1, r0]
	cmp r0, r5
	bne _02248F24
	add r7, r2, #0
_02248F24:
	ldr r0, [r4, #0x28]
	cmp r0, #0x26
	bls _02248F2E
	bl _0224998E
_02248F2E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248F3A: ; jump table
	.short _02248F88 - _02248F3A - 2 ; case 0
	.short _0224915A - _02248F3A - 2 ; case 1
	.short _02249172 - _02248F3A - 2 ; case 2
	.short _02249184 - _02248F3A - 2 ; case 3
	.short _022491B0 - _02248F3A - 2 ; case 4
	.short _022491C4 - _02248F3A - 2 ; case 5
	.short _022491FC - _02248F3A - 2 ; case 6
	.short _022492FC - _02248F3A - 2 ; case 7
	.short _02249318 - _02248F3A - 2 ; case 8
	.short _02249336 - _02248F3A - 2 ; case 9
	.short _022493DE - _02248F3A - 2 ; case 10
	.short _02249522 - _02248F3A - 2 ; case 11
	.short _022494A0 - _02248F3A - 2 ; case 12
	.short _02249522 - _02248F3A - 2 ; case 13
	.short _02249544 - _02248F3A - 2 ; case 14
	.short _022495A6 - _02248F3A - 2 ; case 15
	.short _0224965A - _02248F3A - 2 ; case 16
	.short _022496BA - _02248F3A - 2 ; case 17
	.short _0224968C - _02248F3A - 2 ; case 18
	.short _022496BA - _02248F3A - 2 ; case 19
	.short _022496D2 - _02248F3A - 2 ; case 20
	.short _022496F2 - _02248F3A - 2 ; case 21
	.short _0224973A - _02248F3A - 2 ; case 22
	.short _0224975E - _02248F3A - 2 ; case 23
	.short _0224984A - _02248F3A - 2 ; case 24
	.short _022496BA - _02248F3A - 2 ; case 25
	.short _02249872 - _02248F3A - 2 ; case 26
	.short _022496BA - _02248F3A - 2 ; case 27
	.short _022498AE - _02248F3A - 2 ; case 28
	.short _022496BA - _02248F3A - 2 ; case 29
	.short _022498D6 - _02248F3A - 2 ; case 30
	.short _02249796 - _02248F3A - 2 ; case 31
	.short _022496BA - _02248F3A - 2 ; case 32
	.short _022497C0 - _02248F3A - 2 ; case 33
	.short _022497E2 - _02248F3A - 2 ; case 34
	.short _02249832 - _02248F3A - 2 ; case 35
	.short _0224993C - _02248F3A - 2 ; case 36
	.short _02249952 - _02248F3A - 2 ; case 37
	.short _02249978 - _02248F3A - 2 ; case 38
_02248F88:
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #5
	bl sub_0207CFF0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x20]
	bne _02248FE6
	ldr r1, [r4, #4]
	ldr r0, _02249210 ; =0x00002E4C
	ldr r2, _02249214 ; =0x00002FCC
	ldr r0, [r1, r0]
	ldr r1, [r1, r2]
	add r0, r0, r1
	bne _02248FE6
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02248FE6
	ldr r1, [r4, #4]
	ldr r0, _02249218 ; =0x00003144
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02248FE6
	ldr r0, _0224921C ; =0x00000467
	bl sub_0200549C
	ldr r1, [r4, #4]
	ldr r0, _02249218 ; =0x00003144
	mov r2, #1
	str r2, [r1, r0]
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov16_0223F460
_02248FE6:
	mov r0, #0
	str r0, [sp, #0x38]
	mov r1, #1
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	mov r1, #0xa3
	bl sub_02074470
	cmp r0, #0
	beq _0224900C
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x64
	bne _0224900E
_0224900C:
	b _0224911A
_0224900E:
	ldr r0, [r4, #4]
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl sub_020787CC
	ldr r1, [sp, #0x44]
	lsl r2, r1, #2
	ldr r1, [sp, #0x24]
	add r1, r1, r2
	add r1, #0xa4
	ldr r1, [r1, #0]
	tst r0, r1
	beq _02249030
	ldr r0, [sp, #0x24]
	add r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [sp, #0x38]
_02249030:
	ldr r0, [sp, #0x18]
	cmp r0, #0x33
	bne _02249044
	ldr r0, [sp, #0x24]
	add r0, #0xa0
	str r0, [sp, #0x24]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	str r0, [sp, #0x38]
_02249044:
	ldr r0, [sp, #0x18]
	cmp r0, #0x42
	bne _02249058
	ldr r1, [sp, #0x38]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _u32_div_f
	str r0, [sp, #0x38]
_02249058:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0224906C
	ldr r1, [sp, #0x38]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _u32_div_f
	str r0, [sp, #0x38]
_0224906C:
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov16_02259B38
	cmp r0, #0
	bne _022490AE
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074470
	ldr r1, _02249220 ; =0x020E4C44
	ldrb r1, [r1]
	cmp r1, r0
	beq _0224909A
	ldr r1, [sp, #0x38]
	mov r0, #0xaa
	mul r0, r1
	mov r1, #0x64
	bl _u32_div_f
	str r0, [sp, #0x38]
	b _022490A8
_0224909A:
	ldr r1, [sp, #0x38]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _u32_div_f
	str r0, [sp, #0x38]
_022490A8:
	mov r1, #2
	add r0, sp, #0xb4
	strh r1, [r0, #2]
_022490AE:
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x4c]
	add r0, r6, #0
	bl sub_02075AAC
	ldr r1, [sp, #0x4c]
	sub r0, r1, r0
	str r0, [r4, #0x3c]
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x38]
	add r2, r1, r0
	str r2, [sp, #0x4c]
	ldr r3, [r4, #4]
	ldr r0, _02249224 ; =0x0000219C
	add r1, r3, r7
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _022490E4
	mov r0, #0xc0
	mul r0, r7
	add r1, r3, r0
	ldr r0, _02249228 ; =0x00002DA4
	str r2, [r1, r0]
_022490E4:
	add r0, r6, #0
	mov r1, #8
	add r2, sp, #0x4c
	bl sub_02074B30
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x74]
	str r0, [sp, #0x1c]
	add r6, r1, #0
	mov r0, #0xc0
	mul r6, r0
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_0223DF20
	ldr r2, [sp, #0x1c]
	mov r3, #0xb5
	add r6, r2, r6
	lsl r3, r3, #6
	ldrh r2, [r6, r3]
	add r3, #0x26
	ldrb r3, [r6, r3]
	add r1, r5, #0
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1b
	bl ov16_022499C0
_0224911A:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _02249152
	mov r1, #0x11
	add r0, sp, #0xb4
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #7
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249152:
	mov r0, #0x25
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224915A:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02249206
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249172:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02249206
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249184:
	ldr r1, [r4, #4]
	ldr r0, _02249224 ; =0x0000219C
	add r2, r1, r7
	ldrb r0, [r2, r0]
	cmp r5, r0
	bne _022491A8
	ldr r0, [r4, #0]
	ldr r3, [r4, #0x3c]
	add r2, r7, #0
	bl ov16_02265D14
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022491A8:
	mov r0, #5
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022491B0:
	ldr r0, [r4, #4]
	bl ov16_02251FC8
	cmp r0, #0
	beq _02249206
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022491C4:
	add r0, r6, #0
	bl sub_02076B14
	cmp r0, #0
	beq _022491F4
	ldr r1, [r4, #4]
	ldr r0, _02249224 ; =0x0000219C
	add r2, r1, r7
	ldrb r0, [r2, r0]
	cmp r5, r0
	bne _022491EC
	ldr r0, [r4, #0]
	add r2, r7, #0
	mov r3, #8
	bl ov16_02265FF8
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_0226614C
_022491EC:
	mov r0, #6
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022491F4:
	mov r0, #0x25
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022491FC:
	ldr r0, [r4, #4]
	bl ov16_02251FC8
	cmp r0, #0
	bne _02249208
_02249206:
	b _0224998E
_02249208:
	ldr r2, _0224922C ; =0x0226E608
	b _02249230
	; .align 2, 0
_0224920C: .word 0x0000219E
_02249210: .word 0x00002E4C
_02249214: .word 0x00002FCC
_02249218: .word 0x00003144
_0224921C: .word 0x00000467
_02249220: .word 0x020E4C44
_02249224: .word 0x0000219C
_02249228: .word 0x00002DA4
_0224922C: .word 0x0226E608
_02249230:
	add r3, sp, #0x9c
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x34]
	mov r0, #5
	mov r1, #0x18
	bl sub_02018144
	mov r1, #0x5f
	ldr r2, [r4, #4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #4]
	ldr r0, [r0, r1]
	mov r1, #0
	str r0, [sp, #0x30]
	str r1, [sp, #0x50]
_02249264:
	lsl r2, r1, #2
	add r1, sp, #0x9c
	ldr r1, [r1, r2]
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x50]
	lsl r2, r1, #2
	ldr r1, [sp, #0x30]
	str r0, [r1, r2]
	ldr r0, [sp, #0x50]
	add r1, r0, #1
	str r1, [sp, #0x50]
	cmp r1, #6
	blt _02249264
	ldr r0, [r4, #0]
	bl ov16_0223E24C
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_02075C74
	add r0, r6, #0
	bl sub_020741B8
	ldr r1, [r4, #4]
	ldr r0, _022495E8 ; =0x0000219C
	add r2, r1, r7
	ldrb r3, [r2, r0]
	cmp r5, r3
	bne _022492B2
	ldr r0, [r4, #0]
	add r2, r7, #0
	bl ov16_02251C94
_022492B2:
	add r0, r5, #0
	bl sub_020787CC
	ldr r1, [r4, #4]
	ldr r2, _022495EC ; =0x00003109
	ldrb r3, [r1, r2]
	orr r0, r3
	strb r0, [r1, r2]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r7, #0
	bl ov16_022661CC
	mov r1, #3
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0x11
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #7
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022492FC:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _0224930C
	b _0224998E
_0224930C:
	mov r0, #8
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #0xd8
	str r0, [r4, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
_02249318:
	ldr r0, [r4, #4]
	add r1, r0, r7
	ldr r0, _022495E8 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _0224932E
	ldr r0, [r4, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl ov16_0224B520
_0224932E:
	mov r0, #9
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249336:
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	add r6, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov16_0223DF04
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E064
	add r7, r0, #0
	ldr r0, _022495F0 ; =0x04000008
	mov r2, #3
	ldrh r1, [r0]
	bic r1, r2
	mov r2, #2
	orr r1, r2
	strh r1, [r0]
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov16_0223F8DC
	mov r0, #5
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl sub_0200DA60
	bl sub_0200DAA0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0x26
	mov r3, #5
	bl sub_02003050
	mov r0, #7
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #0x11
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0xff
	bl sub_0201ADA4
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #8
	bl sub_0200DC48
	mov r0, #0xa
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022493DE:
	ldr r3, _022495F4 ; =0x0226E620
	add r2, sp, #0x84
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _022495F8 ; =0x0226E5A8
	add r2, sp, #0x6c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov16_0223DF04
	add r7, r0, #0
	mov r0, #0x5f
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x50]
_02249416:
	ldr r2, _022495FC ; =0x000003B3
	add r1, sp, #0xb4
	strh r2, [r1, #2]
	mov r2, #4
	strb r2, [r1, #1]
	lsl r2, r0, #2
	add r1, sp, #0x84
	ldr r1, [r1, r2]
	lsl r0, r0, #4
	str r1, [sp, #0xb8]
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r1, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r2, [sp, #0x40]
	add r1, r7, #0
	add r3, sp, #0xb4
	bl ov16_0223FB78
	mov r1, #0xed
	ldr r5, [sp, #0x50]
	lsl r1, r1, #2
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #7
	strb r1, [r0, #1]
	lsl r2, r5, #2
	add r1, sp, #0x6c
	ldr r1, [r1, r2]
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x2c]
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x40]
	sub r0, r0, r1
	str r0, [sp, #0xb8]
	mov r0, #2
	str r0, [sp, #0xd0]
	mov r0, #0x50
	str r0, [sp]
	lsl r0, r5, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x1c
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r7, #0
	add r3, sp, #0xb4
	bl ov16_0223FB78
	ldr r0, [sp, #0x50]
	add r0, r0, #1
	str r0, [sp, #0x50]
	cmp r0, #6
	blt _02249416
	mov r0, #0xb
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022494A0:
	ldr r3, _02249600 ; =0x0226E5D8
	add r2, sp, #0x54
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov16_0223DF04
	mov r1, #0x24
	str r1, [sp]
	mov r1, #0x60
	str r1, [sp, #4]
	mov r1, #0xf
	mov r2, #0x50
	mov r3, #0
	add r7, r0, #0
	bl sub_0201AE78
	mov r1, #0
	str r1, [sp, #0x50]
	add r5, sp, #0xb4
_022494D2:
	ldr r0, _02249604 ; =0x000003B5
	lsl r2, r1, #2
	add r1, sp, #0x54
	strh r0, [r5, #2]
	mov r0, #7
	ldr r1, [r1, r2]
	strb r0, [r5, #1]
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xb8]
	mov r0, #3
	str r0, [sp, #0xd0]
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [sp, #0x50]
	ldr r2, [sp, #0x40]
	lsl r0, r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x24
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r7, #0
	add r3, r5, #0
	bl ov16_0223FB78
	ldr r0, [sp, #0x50]
	add r1, r0, #1
	str r1, [sp, #0x50]
	cmp r1, #6
	blt _022494D2
	mov r0, #0xd
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249522:
	ldr r0, _02249608 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	ldr r0, _0224960C ; =0x00000C03
	tst r0, r1
	bne _02249534
	bl sub_02022798
	cmp r0, #0
	beq _022495C2
_02249534:
	ldr r0, _02249610 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249544:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov16_0223DF04
	add r6, r0, #0
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	bl sub_0201A8FC
	ldr r1, _022495F0 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019060
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223F8DC
	ldr r0, [r4, #4]
	add r1, r0, r7
	ldr r0, _022495E8 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _02249592
	ldr r0, [r4, #0]
	add r1, r4, #0
	bl ov16_0224B7CC
_02249592:
	mov r0, #0x5f
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	mov r0, #0xf
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022495A6:
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x38
	add r2, sp, #0x48
	bl sub_0207727C
	cmp r0, #0
	beq _022495CC
	ldr r1, _02249614 ; =0x0000FFFE
	cmp r0, r1
	bne _022495C4
_022495C2:
	b _0224998E
_022495C4:
	add r1, r1, #1
	cmp r0, r1
	beq _022495D4
	b _022495E2
_022495CC:
	mov r0, #3
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022495D4:
	add r0, sp, #0x48
	ldrh r0, [r0]
	add sp, #0xd8
	str r0, [r4, #0x40]
	mov r0, #0x10
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022495E2:
	ldr r1, [r4, #4]
	ldr r0, _022495E8 ; =0x0000219C
	b _02249618
	; .align 2, 0
_022495E8: .word 0x0000219C
_022495EC: .word 0x00003109
_022495F0: .word 0x04000008
_022495F4: .word 0x0226E620
_022495F8: .word 0x0226E5A8
_022495FC: .word 0x000003B3
_02249600: .word 0x0226E5D8
_02249604: .word 0x000003B5
_02249608: .word 0x021BF67C
_0224960C: .word 0x00000C03
_02249610: .word 0x000005DC
_02249614: .word 0x0000FFFE
_02249618:
	add r2, r1, r7
	ldrb r3, [r2, r0]
	cmp r5, r3
	bne _02249628
	ldr r0, [r4, #0]
	add r2, r7, #0
	bl ov16_02251C94
_02249628:
	mov r1, #4
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	add r0, sp, #0x48
	ldrh r0, [r0]
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0x24
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224965A:
	ldr r1, _02249994 ; =0x0000049A
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [r4, #0x40]
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224968C:
	ldr r1, _02249998 ; =0x0000049B
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #2
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022496BA:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022496FE
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022496D2:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r3, _0224999C ; =0x0000049C
	add r2, r7, #0
	bl ov16_02265B2C
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022496F2:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov16_02259AB4
	cmp r0, #0
	bne _02249700
_022496FE:
	b _0224998E
_02249700:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	bne _02249714
	mov r0, #0x1f
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249714:
	ldr r1, _022499A0 ; =0x0000049F
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0x16
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224973A:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02249840
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x40]
	add r1, r7, #0
	add r3, r5, #0
	bl ov16_022664C4
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224975E:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	bne _02249772
	mov r0, #0x1f
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249772:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _02249840
	ldr r1, [r4, #4]
	lsl r0, r7, #8
	add r1, r1, r0
	mov r0, #0x23
	lsl r0, r0, #8
	ldrb r0, [r1, r0]
	add sp, #0xd8
	sub r0, r0, #1
	str r0, [r4, #0x44]
	mov r0, #0x18
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249796:
	mov r1, #0x4a
	lsl r1, r1, #4
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022497C0:
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #0x40]
	ldr r3, _022499A4 ; =0x000004A1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r7, #0
	bl ov16_02265B2C
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022497E2:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _02249840
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	bne _02249802
	mov r0, #0x10
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249802:
	ldr r1, _022499A8 ; =0x000004A4
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [r4, #0x40]
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0x23
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249832:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _02249842
_02249840:
	b _0224998E
_02249842:
	mov r0, #0xf
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224984A:
	ldr r1, _022499AC ; =0x000004A5
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249872:
	ldr r1, _022499B0 ; =0x000004A6
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r1, [r4, #0x44]
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022498AE:
	ldr r1, _022499B4 ; =0x000004A7
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022498D6:
	ldr r1, _022499B8 ; =0x000004A8
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [r4, #0x40]
	str r0, [sp, #0xbc]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0
	str r0, [sp, #0x50]
	ldr r1, [r4, #0x44]
	add r0, r6, #0
	add r1, #0x3e
	add r2, sp, #0x50
	bl sub_02074B30
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl sub_02077230
	ldr r1, [r4, #4]
	ldr r0, _022499BC ; =0x0000219C
	add r2, r1, r7
	ldrb r3, [r2, r0]
	cmp r5, r3
	bne _02249934
	ldr r0, [r4, #0]
	add r2, r7, #0
	bl ov16_02251C94
_02249934:
	mov r0, #0x24
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224993C:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0224998E
	mov r0, #0xf
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249952:
	add r0, r5, #0
	bl sub_020787CC
	ldr r1, [sp, #0x44]
	ldr r2, [r4, #4]
	mov r3, #0
	mvn r3, r3
	add r2, #0xa4
	lsl r1, r1, #2
	ldr r6, [r2, r1]
	eor r0, r3
	and r0, r6
	str r0, [r2, r1]
	add r0, r5, #1
	str r0, [r4, #0x48]
	mov r0, #0
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249978:
	mov r0, #0x5e
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	bl sub_0200DA58
_0224998E:
	add sp, #0xd8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249994: .word 0x0000049A
_02249998: .word 0x0000049B
_0224999C: .word 0x0000049C
_022499A0: .word 0x0000049F
_022499A4: .word 0x000004A1
_022499A8: .word 0x000004A4
_022499AC: .word 0x000004A5
_022499B0: .word 0x000004A6
_022499B4: .word 0x000004A7
_022499B8: .word 0x000004A8
_022499BC: .word 0x0000219C
	thumb_func_end ov16_02248E74

	thumb_func_start ov16_022499C0
ov16_022499C0: ; 0x022499C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #5
	mov r4, #0
	bl sub_02075874
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0207A0FC
	mov r1, #6
	add r2, r4, #0
	str r0, [sp, #0x14]
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	mov r1, #1
	mov r2, #5
	bl sub_0207CFF0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #5
	bl sub_0207CFF0
	add r6, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, sp, #0x20
	str r0, [sp, #0xc]
_02249A0E:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	add r1, #0xd
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	add r0, r1, #0
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #6
	blt _02249A0E
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x20
	str r0, [sp, #0x10]
_02249A44:
	ldr r1, [sp, #0x18]
	ldr r0, _02249B7C ; =0x000001FE
	cmp r1, r0
	blo _02249A4E
	b _02249B72
_02249A4E:
	ldr r0, [sp, #8]
	cmp r0, #5
	bhi _02249AFA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02249A60: ; jump table
	.short _02249A6C - _02249A60 - 2 ; case 0
	.short _02249A84 - _02249A60 - 2 ; case 1
	.short _02249A9C - _02249A60 - 2 ; case 2
	.short _02249AB4 - _02249A60 - 2 ; case 3
	.short _02249ACC - _02249A60 - 2 ; case 4
	.short _02249AE4 - _02249A60 - 2 ; case 5
_02249A6C:
	add r0, r7, #0
	mov r1, #0xa
	bl sub_020758B0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x7a
	bne _02249AFA
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02249AFA
_02249A84:
	add r0, r7, #0
	mov r1, #0xb
	bl sub_020758B0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x75
	bne _02249AFA
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02249AFA
_02249A9C:
	add r0, r7, #0
	mov r1, #0xc
	bl sub_020758B0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x76
	bne _02249AFA
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02249AFA
_02249AB4:
	add r0, r7, #0
	mov r1, #0xd
	bl sub_020758B0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x79
	bne _02249AFA
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02249AFA
_02249ACC:
	add r0, r7, #0
	mov r1, #0xe
	bl sub_020758B0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x77
	bne _02249AFA
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02249AFA
_02249AE4:
	add r0, r7, #0
	mov r1, #0xf
	bl sub_020758B0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x78
	bne _02249AFA
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_02249AFA:
	ldr r0, [sp, #4]
	bl sub_020787CC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl sub_02077758
	cmp r0, #0
	beq _02249B14
	lsl r0, r4, #0x11
	asr r4, r0, #0x10
_02249B14:
	cmp r5, #0x32
	bne _02249B1C
	lsl r0, r4, #0x11
	asr r4, r0, #0x10
_02249B1C:
	ldr r0, [sp, #0x18]
	ldr r1, _02249B7C ; =0x000001FE
	add r0, r0, r4
	cmp r0, r1
	ble _02249B2E
	sub r0, r0, r1
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_02249B2E:
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	add r0, r0, r4
	cmp r0, #0xff
	ble _02249B40
	sub r0, #0xff
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_02249B40:
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x10]
	ldrb r0, [r0]
	add r1, r0, r4
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #8]
	add r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r1, #0xd
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #6
	bge _02249B72
	b _02249A44
_02249B72:
	add r0, r7, #0
	bl sub_020759B8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249B7C: .word 0x000001FE
	thumb_func_end ov16_022499C0

	thumb_func_start ov16_02249B80
ov16_02249B80: ; 0x02249B80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x158
	add r4, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	bl ov16_0223E05C
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	bl ov16_0223E064
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E000
	mov r7, #1
	str r0, [sp, #0x24]
	add r0, r7, #0
	ldr r6, [r4, #4]
	bl sub_020787CC
	ldr r1, _02249ED4 ; =0x00003108
	ldrb r1, [r6, r1]
	tst r0, r1
	beq _02249BB4
	mov r7, #3
_02249BB4:
	ldr r0, [r4, #0x28]
	cmp r0, #0x20
	bls _02249BBE
	bl _0224A716
_02249BBE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02249BCA: ; jump table
	.short _02249C0C - _02249BCA - 2 ; case 0
	.short _02249CCC - _02249BCA - 2 ; case 1
	.short _02249D18 - _02249BCA - 2 ; case 2
	.short _02249D46 - _02249BCA - 2 ; case 3
	.short _02249D70 - _02249BCA - 2 ; case 4
	.short _02249D84 - _02249BCA - 2 ; case 5
	.short _02249DB8 - _02249BCA - 2 ; case 6
	.short _02249DDA - _02249BCA - 2 ; case 7
	.short _02249DFA - _02249BCA - 2 ; case 8
	.short _02249E40 - _02249BCA - 2 ; case 9
	.short _02249E5E - _02249BCA - 2 ; case 10
	.short _02249FA0 - _02249BCA - 2 ; case 11
	.short _02249FEE - _02249BCA - 2 ; case 12
	.short _0224A082 - _02249BCA - 2 ; case 13
	.short _0224A0D6 - _02249BCA - 2 ; case 14
	.short _0224A104 - _02249BCA - 2 ; case 15
	.short _0224A134 - _02249BCA - 2 ; case 16
	.short _0224A1C4 - _02249BCA - 2 ; case 17
	.short _0224A1EA - _02249BCA - 2 ; case 18
	.short _0224A212 - _02249BCA - 2 ; case 19
	.short _0224A26A - _02249BCA - 2 ; case 20
	.short _0224A364 - _02249BCA - 2 ; case 21
	.short _0224A3B2 - _02249BCA - 2 ; case 22
	.short _0224A3B2 - _02249BCA - 2 ; case 23
	.short _0224A522 - _02249BCA - 2 ; case 24
	.short _0224A570 - _02249BCA - 2 ; case 25
	.short _0224A5C8 - _02249BCA - 2 ; case 26
	.short _0224A60E - _02249BCA - 2 ; case 27
	.short _0224A63E - _02249BCA - 2 ; case 28
	.short _0224A656 - _02249BCA - 2 ; case 29
	.short _0224A66C - _02249BCA - 2 ; case 30
	.short _0224A6A4 - _02249BCA - 2 ; case 31
	.short _0224A6D4 - _02249BCA - 2 ; case 32
_02249C0C:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02249C88
	mov r0, #3
	str r0, [sp, #0x138]
	mov r0, #5
	str r0, [sp, #0x134]
	ldr r0, _02249ED8 ; =0x00004E20
	add r0, r7, r0
	str r0, [sp, #0x13c]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0x140]
	ldr r0, [r4, #0]
	bl ov16_0223E010
	str r0, [sp, #0x14c]
	ldr r0, [r4, #0]
	bl ov16_0223E064
	str r0, [sp, #0x150]
	mov r0, #1
	str r0, [sp, #0x144]
	mov r0, #0
	str r0, [sp, #0x148]
	ldr r0, [r4, #0]
	str r0, [sp, #0x154]
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02249C5C
	cmp r7, #1
	bne _02249C56
	mov r0, #0x10
	str r0, [sp, #0x130]
	b _02249C60
_02249C56:
	mov r0, #0x11
	str r0, [sp, #0x130]
	b _02249C60
_02249C5C:
	mov r0, #0xf
	str r0, [sp, #0x130]
_02249C60:
	add r0, sp, #0x130
	bl ov12_02237728
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0x28]
	ldr r0, _02249EDC ; =0x0000070A
	bl sub_02005748
	ldr r2, [r4, #0]
	ldr r0, _02249EE0 ; =0x00002422
	ldrh r1, [r2, r0]
	add r1, r1, #1
	strh r1, [r2, r0]
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov12_022368C8
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02249C88:
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223DF14
	add r5, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237890
	cmp r0, #4
	beq _02249D5C
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	add r5, #0x88
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r4, #0x28]
	ldr r0, _02249EDC ; =0x0000070A
	bl sub_02005748
	ldr r2, [r4, #0]
	ldr r0, _02249EE0 ; =0x00002422
	ldrh r1, [r2, r0]
	add r1, r1, #1
	strh r1, [r2, r0]
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov12_022368C8
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02249CCC:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov12_022368D0
	cmp r0, #0
	bne _02249D5C
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #1
	tst r0, r1
	beq _02249CFC
	ldr r0, _02249EE4 ; =0x000005E6
	mov r1, #0x75
	bl sub_02005728
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov12_022368C8
	mov r0, #0x19
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249CFC:
	ldr r0, _02249EE8 ; =0x00000708
	mov r1, #0x75
	bl sub_02005728
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov12_022368C8
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0x17
	add sp, #0x158
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_02249D18:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02249D5C
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x2c]
	add r1, r7, #0
	bl ov16_02265050
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov16_0224A724
	str r0, [r4, #0x38]
	cmp r0, #4
	bge _02249D3A
	b _02249D3C
_02249D3A:
	mov r0, #3
_02249D3C:
	str r0, [r4, #0x3c]
	mov r0, #3
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249D46:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov12_022368D0
	cmp r0, #0
	bne _02249D5C
	ldr r0, [r4, #4]
	bl ov16_02251FC8
	cmp r0, #0
	bne _02249D60
_02249D5C:
	bl _0224A716
_02249D60:
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov12_022368C8
	mov r0, #4
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249D70:
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov12_022368D0
	cmp r0, #0
	bne _02249E72
	mov r0, #5
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249D84:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _02249DA4
	ldr r0, [r4, #0x38]
	cmp r0, #4
	bne _02249D9C
	mov r0, #7
	str r0, [r4, #0x28]
	mov r0, #0xc
	add sp, #0x158
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_02249D9C:
	mov r0, #0x1c
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249DA4:
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov12_022368C8
	mov r0, #6
	str r0, [r4, #0x28]
	mov r0, #0xc
	add sp, #0x158
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_02249DB8:
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov12_022368D0
	cmp r0, #0
	bne _02249E72
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02249E72
	ldr r0, [r4, #0x3c]
	add sp, #0x158
	sub r0, r0, #1
	str r0, [r4, #0x3c]
	mov r0, #5
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249DDA:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02249E72
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov12_022368C8
	ldr r0, _02249EEC ; =0x00000709
	mov r1, #0x75
	bl sub_02005728
	mov r0, #8
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249DFA:
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov12_022368D0
	cmp r0, #0
	bne _02249E72
	ldr r1, _02249EF0 ; =0x00000363
	add r0, sp, #0x10c
	strh r1, [r0, #2]
	mov r1, #0x82
	strb r1, [r0, #1]
	str r7, [sp, #0x110]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x10c
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #9
	str r0, [r4, #0x28]
	ldr r0, _02249EF4 ; =0x00000467
	bl sub_0200549C
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov16_0223F460
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02249E40:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02249E72
	mov r0, #0xa
	str r0, [r4, #0x28]
	ldr r0, [r4, #8]
	mov r1, #7
	bl ov12_022368C8
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02249E5E:
	ldr r0, [r4, #8]
	mov r1, #7
	bl ov12_022368D0
	cmp r0, #0
	bne _02249E72
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	beq _02249E76
_02249E72:
	bl _0224A716
_02249E76:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_0223F4B0
	ldr r2, [r4, #4]
	ldr r0, [r4, #0]
	add r3, r2, r7
	ldr r2, _02249EF8 ; =0x0000219C
	add r1, r7, #0
	ldrb r2, [r3, r2]
	bl ov16_0223DFAC
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #6
	lsl r1, r1, #8
	tst r0, r1
	beq _02249F20
	ldr r2, [r4, #4]
	ldr r0, [r4, #0]
	add r3, r2, r7
	ldr r2, _02249EF8 ; =0x0000219C
	add r1, r7, #0
	ldrb r2, [r3, r2]
	bl ov16_0223DFAC
	add r2, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl ov16_02259A5C
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #1
	bl sub_02015738
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02249EFC ; =0x0000FFFF
	b _02249F00
	nop
_02249ED4: .word 0x00003108
_02249ED8: .word 0x00004E20
_02249EDC: .word 0x0000070A
_02249EE0: .word 0x00002422
_02249EE4: .word 0x000005E6
_02249EE8: .word 0x00000708
_02249EEC: .word 0x00000709
_02249EF0: .word 0x00000363
_02249EF4: .word 0x00000467
_02249EF8: .word 0x0000219C
_02249EFC: .word 0x0000FFFF
_02249F00:
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_0200872C
	mov r0, #0x20
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249F20:
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F9E0
	cmp r0, #0
	beq _02249F6E
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #1
	bl sub_02015738
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _0224A290 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_0200872C
	mov r0, #0x10
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02249F6E:
	ldr r1, _0224A294 ; =0x00000367
	add r0, sp, #0xe8
	strh r1, [r0, #2]
	mov r1, #0x82
	strb r1, [r0, #1]
	str r7, [sp, #0xec]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x20]
	add r2, sp, #0xe8
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0xb
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	bl ov16_0223F268
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02249FA0:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02249FF8
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02249FF8
	mov r0, #0xc
	str r0, [r4, #0x28]
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _0224A290 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_0200872C
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #1
	bl sub_02015738
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02249FEE:
	add r0, r5, #0
	bl sub_0200384C
	cmp r0, #0
	beq _02249FFA
_02249FF8:
	b _0224A716
_02249FFA:
	ldr r0, [r4, #8]
	bl ov12_0223783C
	ldr r0, [sp, #0x24]
	bl sub_02007DD4
	ldr r0, [r4, #0]
	bl ov16_0223B53C
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223E020
	mov r1, #0
	bl ov16_022686BC
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov16_0223E020
	mov r1, #0
	bl ov16_022686BC
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223DF14
	mov r1, #0
	bl ov16_02263B20
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	str r0, [sp, #0xd0]
	ldr r0, [r4, #0]
	bl ov16_0223E064
	str r0, [sp, #0xd4]
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	str r0, [sp, #0xd8]
	mov r0, #5
	str r0, [sp, #0xdc]
	ldr r2, [r4, #4]
	ldr r0, [r4, #0]
	add r3, r2, r7
	ldr r2, _0224A298 ; =0x0000219C
	ldrb r2, [r3, r2]
	bl ov16_0223DFAC
	str r0, [sp, #0xe0]
	ldr r0, [r4, #0]
	bl ov16_0223E068
	bl sub_0207A280
	str r0, [sp, #0xe4]
	bl sub_0201EE9C
	str r0, [r4, #0x54]
	add r0, sp, #0xd0
	bl ov21_021E8D48
	str r0, [r4, #0x50]
	mov r0, #0xd
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A082:
	ldr r0, [r4, #0x50]
	bl ov21_021E8DEC
	cmp r0, #0
	beq _0224A13E
	ldr r0, _0224A29C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224A09C
	mov r0, #0xe
	str r0, [r4, #0x28]
	b _0224A0AE
_0224A09C:
	bl sub_02022798
	cmp r0, #0
	beq _0224A0AE
	ldr r0, _0224A2A0 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xe
	str r0, [r4, #0x28]
_0224A0AE:
	ldr r0, [r4, #0x28]
	cmp r0, #0xe
	bne _0224A13E
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _0224A290 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003178
	ldr r0, [r4, #0x50]
	mov r1, #0
	bl ov21_021E8E04
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_0224A0D6:
	ldr r0, [r4, #0x50]
	bl ov21_021E8E00
	add r5, r0, #0
	mov r1, #0
	mov r2, #4
	bl sub_02008274
	add r0, r5, #0
	mov r1, #0
	bl sub_020080C0
	cmp r0, #0x80
	blt _0224A13E
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_02007DEC
	mov r0, #0xf
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A104:
	ldr r0, [r4, #0x50]
	bl ov21_021E8DD0
	ldr r0, [r4, #0x54]
	bl sub_0201EEB8
	ldr r0, [r4, #0]
	bl ov16_0223B578
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _0224A290 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003178
	mov r0, #0x11
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A134:
	add r0, r5, #0
	bl sub_0200384C
	cmp r0, #0
	beq _0224A140
_0224A13E:
	b _0224A716
_0224A140:
	ldr r2, [r4, #4]
	ldr r0, [r4, #0]
	add r3, r2, r7
	ldr r2, _0224A298 ; =0x0000219C
	add r1, r7, #0
	ldrb r2, [r3, r2]
	bl ov16_0223DFAC
	add r6, r0, #0
	ldr r0, [r4, #8]
	bl ov12_0223783C
	ldr r0, [sp, #0x24]
	bl sub_02007DD4
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223DF14
	mov r1, #0
	bl ov16_02263B20
	ldr r0, [r4, #0]
	bl ov16_0223B53C
	ldr r0, [r4, #0]
	bl ov16_0223B578
	add r0, sp, #0xc0
	add r1, r6, #0
	mov r2, #2
	bl sub_02075EF4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	add r1, sp, #0xc0
	mov r2, #0x80
	mov r3, #0x48
	bl sub_02007C34
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _0224A290 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003178
	mov r2, #0
	ldr r0, [sp, #0x24]
	mov r1, #0x10
	add r3, r2, #0
	str r2, [sp]
	bl sub_0200872C
	mov r0, #0x11
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A1C4:
	add r0, r5, #0
	bl sub_0200384C
	cmp r0, #0
	bne _0224A274
	mov r0, #0x12
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #0
	bl sub_02015738
	add r0, r5, #0
	mov r1, #1
	bl sub_02003858
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_0224A1EA:
	ldr r1, [r4, #4]
	mov r0, #5
	str r0, [sp]
	mov r2, #0
	ldr r0, _0224A298 ; =0x0000219C
	str r2, [sp, #4]
	add r3, r1, r7
	ldrb r0, [r3, r0]
	mov r3, #0xd9
	lsl r3, r3, #2
	orr r0, r7
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	bl ov16_02265B2C
	ldr r0, [r4, #0x28]
	add sp, #0x158
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A212:
	add r0, r6, #0
	mov r1, #0
	bl ov16_02259AB4
	cmp r0, #0
	beq _0224A274
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov16_02259AB4
	cmp r0, #0xff
	bne _0224A232
	mov r0, #0x16
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A232:
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #1
	bl sub_02015738
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _0224A290 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_0200872C
	mov r0, #0x14
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A26A:
	add r0, r5, #0
	bl sub_0200384C
	cmp r0, #0
	beq _0224A276
_0224A274:
	b _0224A716
_0224A276:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r2, [r4, #4]
	ldr r0, [r4, #0]
	add r3, r2, r7
	ldr r2, _0224A298 ; =0x0000219C
	b _0224A2A4
	; .align 2, 0
_0224A290: .word 0x0000FFFF
_0224A294: .word 0x00000367
_0224A298: .word 0x0000219C
_0224A29C: .word 0x021BF67C
_0224A2A0: .word 0x000005DC
_0224A2A4:
	add r1, r7, #0
	ldrb r2, [r3, r2]
	bl ov16_0223DFAC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223EDA4
	str r0, [sp]
	mov r0, #5
	mov r1, #1
	add r2, r5, #0
	mov r3, #0xa
	bl sub_0208712C
	add r5, r0, #0
	str r5, [r4, #0x54]
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223DF60
	cmp r0, #6
	bge _0224A2E0
	mov r0, #0
	b _0224A2EA
_0224A2E0:
	ldr r0, [r4, #0]
	bl ov16_0223F240
	ldr r1, _0224A588 ; =0x00000496
	add r0, r0, r1
_0224A2EA:
	str r0, [r5, #0x44]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #8]
	ldr r0, [r4, #0]
	bl ov16_0223E228
	str r0, [r5, #0x48]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #0x10]
	ldr r0, _0224A58C ; =0x020F2DAC
	add r1, r5, #0
	mov r2, #5
	bl sub_020067E8
	str r0, [r4, #0x50]
	mov r0, #0x15
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	bl ov16_0223F414
	ldr r0, [r4, #0]
	mov r5, #0
	bl ov16_0223DF1C
	cmp r0, #0
	ble _0224A352
	add r7, r5, #0
_0224A330:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov16_0223DF14
	add r6, r0, #0
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _0224A346
	bl sub_0200D0F4
	str r7, [r6, #0x18]
_0224A346:
	ldr r0, [r4, #0]
	add r5, r5, #1
	bl ov16_0223DF1C
	cmp r5, r0
	blt _0224A330
_0224A352:
	ldr r0, [r4, #0]
	bl ov16_0223B3E4
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov16_0223F314
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_0224A364:
	ldr r0, [r4, #0x50]
	bl sub_02006844
	cmp r0, #0
	beq _0224A3BC
	ldr r2, [r4, #4]
	ldr r5, [r4, #0x54]
	add r3, r2, r7
	ldr r2, _0224A590 ; =0x0000219C
	ldr r0, [r4, #0]
	ldrb r2, [r3, r2]
	add r1, r7, #0
	bl ov16_0223DFAC
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _0224A396
	ldr r2, [r5, #0x18]
	mov r1, #0x78
	bl sub_02074B30
	ldr r0, [r4, #0]
	mov r1, #0x31
	bl ov16_0223F24C
_0224A396:
	add r0, r5, #0
	bl sub_0208716C
	ldr r0, [r4, #0x50]
	bl sub_02006814
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov16_0223F314
	mov r0, #0x17
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A3B2:
	add r0, r5, #0
	bl sub_0200384C
	cmp r0, #0
	beq _0224A3BE
_0224A3BC:
	b _0224A716
_0224A3BE:
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223DF20
	ldr r2, [r4, #4]
	str r0, [sp, #0x28]
	add r3, r2, r7
	ldr r2, _0224A590 ; =0x0000219C
	ldr r0, [r4, #0]
	ldrb r2, [r3, r2]
	add r1, r7, #0
	bl ov16_0223DFAC
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_0223F9A0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r6, #0
	bl ov16_02259A5C
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov16_0223EF48
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov16_0223EF68
	mov r1, #0
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #9
	bl ov16_022666BC
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	bl sub_0207A048
	cmp r0, #1
	bne _0224A452
	ldr r0, [r4, #0x28]
	cmp r0, #0x16
	bne _0224A44A
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #1
	bl sub_02015738
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _0224A594 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_0200872C
_0224A44A:
	mov r0, #0x20
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A452:
	ldr r0, [r4, #0]
	bl ov16_0223E228
	str r0, [sp, #0x1c]
	bl sub_0207999C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	bl sub_020799A0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x14]
	bl sub_02079A94
	mov r5, #0
_0224A472:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x42
	mov r2, #0
	bl sub_02074470
	add r1, r5, #0
	str r0, [sp, #0x2c]
	add r0, r6, #0
	add r1, #0x3a
	add r2, sp, #0x2c
	bl sub_02074B30
	add r5, r5, #1
	cmp r5, #4
	blt _0224A472
	add r0, r6, #0
	bl sub_02077A00
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224A4A8
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_0223F9A0
_0224A4A8:
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x14]
	bl sub_020798A0
	ldr r0, [r4, #0x28]
	cmp r0, #0x16
	bne _0224A51A
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	ldr r0, [r4, #0]
	bne _0224A4E0
	bl ov16_0223F240
	ldr r1, _0224A588 ; =0x00000496
	add r1, r0, r1
	add r0, sp, #0x9c
	strh r1, [r0, #2]
	mov r1, #0x93
	strb r1, [r0, #1]
	ldr r0, [sp, #0x18]
	str r7, [sp, #0xa0]
	str r0, [sp, #0xa4]
	b _0224A4FA
_0224A4E0:
	bl ov16_0223F240
	ldr r1, _0224A598 ; =0x00000498
	add r1, r0, r1
	add r0, sp, #0x9c
	strh r1, [r0, #2]
	mov r1, #0xaf
	strb r1, [r0, #1]
	ldr r0, [sp, #0x18]
	str r7, [sp, #0xa0]
	str r0, [sp, #0xa4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xa8]
_0224A4FA:
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x9c
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0x18
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A51A:
	mov r0, #0x20
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A522:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0224A5DE
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _0224A5DE
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #1
	bl sub_02015738
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _0224A594 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_0200872C
	mov r0, #0x20
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A570:
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov12_022368D0
	cmp r0, #0
	bne _0224A5DE
	ldr r0, [r4, #8]
	bl ov12_0223783C
	ldr r1, _0224A59C ; =0x0000035B
	b _0224A5A0
	nop
_0224A588: .word 0x00000496
_0224A58C: .word 0x020F2DAC
_0224A590: .word 0x0000219C
_0224A594: .word 0x0000FFFF
_0224A598: .word 0x00000498
_0224A59C: .word 0x0000035B
_0224A5A0:
	add r0, sp, #0x78
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x78
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0x1a
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A5C8:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0224A5DE
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	beq _0224A5E0
_0224A5DE:
	b _0224A716
_0224A5E0:
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, sp, #0x2c
	strh r1, [r0, #0x2a]
	mov r1, #0
	add r0, sp, #0x54
	strb r1, [r0, #1]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x54
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0x1b
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A60E:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0224A716
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _0224A716
	mov r0, #0x5e
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x10]
	bl sub_0200DA58
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_0224A63E:
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x2c]
	add r1, r7, #0
	mov r3, #1
	bl ov16_02264CE8
	mov r0, #0x1d
	str r0, [r4, #0x28]
	mov r0, #2
	add sp, #0x158
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0224A656:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _0224A716
	ldr r0, [r4, #8]
	bl ov12_0223783C
	mov r0, #0x1e
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A66C:
	add r0, r6, #0
	bl ov16_02251FC8
	cmp r0, #0
	beq _0224A716
	ldr r1, [r4, #0x38]
	ldr r0, _0224A71C ; =0x0000035F
	add r1, r1, r0
	add r0, sp, #0x2c
	strh r1, [r0, #6]
	mov r1, #0
	strb r1, [r0, #5]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x30
	bl ov16_0223FB24
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0x1f
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224A6A4:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0224A716
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _0224A716
	mov r0, #0x5e
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x10]
	bl sub_0200DA58
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_0224A6D4:
	add r0, r5, #0
	bl sub_0200384C
	cmp r0, #0
	bne _0224A716
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #6
	lsl r1, r1, #8
	tst r0, r1
	beq _0224A6F8
	ldr r0, [r4, #8]
	bl ov12_0223783C
	ldr r0, [sp, #0x24]
	bl sub_02007DD4
_0224A6F8:
	ldr r1, [r4, #0]
	ldr r0, _0224A720 ; =0x00002420
	mov r2, #4
	strb r2, [r1, r0]
	mov r0, #0x5e
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x10]
	bl sub_0200DA58
_0224A716:
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A71C: .word 0x0000035F
_0224A720: .word 0x00002420
	thumb_func_end ov16_02249B80

	thumb_func_start ov16_0224A724
ov16_0224A724: ; 0x0224A724
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r4, r1, #0
	bl ov16_0223DF0C
	mov r1, #6
	lsl r1, r1, #8
	tst r0, r1
	beq _0224A73E
	add sp, #8
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0224A73E:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, #0x6c]
	cmp r0, #5
	bne _0224A776
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	mov r1, #8
	bl sub_020759F0
	ldr r1, _0224A954 ; =0x0000311C
	ldr r2, _0224A958 ; =0x0226E638
	ldrb r1, [r4, r1]
	lsl r1, r1, #1
	ldrb r2, [r2, r1]
	mul r2, r0
	add r0, r2, #0
	ldr r2, _0224A95C ; =0x0226E639
	ldrb r1, [r2, r1]
	bl _u32_div_f
	str r0, [sp]
	b _0224A78A
_0224A776:
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	mov r1, #8
	bl sub_020759F0
	str r0, [sp]
_0224A78A:
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	mov r5, #0xa
	bl ov16_02252060
	add r7, r0, #0
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	add r1, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	cmp r2, #5
	ble _0224A878
	cmp r2, #0xf
	bhi _0224A87E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224A7C2: ; jump table
	.short _0224A87E - _0224A7C2 - 2 ; case 0
	.short _0224A87E - _0224A7C2 - 2 ; case 1
	.short _0224A87E - _0224A7C2 - 2 ; case 2
	.short _0224A87E - _0224A7C2 - 2 ; case 3
	.short _0224A87E - _0224A7C2 - 2 ; case 4
	.short _0224A87E - _0224A7C2 - 2 ; case 5
	.short _0224A7E2 - _0224A7C2 - 2 ; case 6
	.short _0224A7F6 - _0224A7C2 - 2 ; case 7
	.short _0224A804 - _0224A7C2 - 2 ; case 8
	.short _0224A820 - _0224A7C2 - 2 ; case 9
	.short _0224A83C - _0224A7C2 - 2 ; case 10
	.short _0224A87E - _0224A7C2 - 2 ; case 11
	.short _0224A87E - _0224A7C2 - 2 ; case 12
	.short _0224A84A - _0224A7C2 - 2 ; case 13
	.short _0224A87E - _0224A7C2 - 2 ; case 14
	.short _0224A86C - _0224A7C2 - 2 ; case 15
_0224A7E2:
	cmp r7, #0xb
	beq _0224A7F2
	cmp r1, #0xb
	beq _0224A7F2
	cmp r7, #6
	beq _0224A7F2
	cmp r1, #6
	bne _0224A87E
_0224A7F2:
	mov r5, #0x1e
	b _0224A87E
_0224A7F6:
	add r0, r6, #0
	bl ov16_0223E22C
	cmp r0, #7
	bne _0224A87E
	mov r5, #0x23
	b _0224A87E
_0224A804:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224A960 ; =0x00002D74
	ldrb r1, [r1, r0]
	cmp r1, #0x28
	bhs _0224A87E
	mov r0, #0x28
	sub r5, r0, r1
	cmp r5, #0xa
	bhs _0224A87E
	mov r5, #0xa
	b _0224A87E
_0224A820:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r1, [r2, r1]
	add r0, r6, #0
	bl ov16_0223F9E0
	cmp r0, #1
	bne _0224A87E
	mov r5, #0x1e
	b _0224A87E
_0224A83C:
	add r0, #0x28
	ldr r5, [r4, r0]
	add r5, #0xa
	cmp r5, #0x28
	bls _0224A87E
	mov r5, #0x28
	b _0224A87E
_0224A84A:
	add r0, r6, #0
	bl ov16_0223EBF8
	cmp r0, #3
	beq _0224A868
	add r0, r6, #0
	bl ov16_0223EBF8
	cmp r0, #4
	beq _0224A868
	add r0, r6, #0
	bl ov16_0223E22C
	cmp r0, #5
	bne _0224A87E
_0224A868:
	mov r5, #0x23
	b _0224A87E
_0224A86C:
	add r0, #0x28
	ldr r0, [r4, r0]
	cmp r0, #1
	bge _0224A87E
	mov r5, #0x28
	b _0224A87E
_0224A878:
	ldr r0, _0224A964 ; =0x0226E570
	sub r1, r2, #2
	ldrb r5, [r0, r1]
_0224A87E:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	add r7, r1, #0
	mul r7, r0
	ldr r0, _0224A968 ; =0x00002D90
	add r1, r4, r7
	ldr r1, [r1, r0]
	lsl r0, r1, #1
	add r0, r1, r0
	ldr r1, [sp]
	str r0, [sp, #4]
	add r0, r1, #0
	mul r0, r5
	mov r1, #0xa
	bl _u32_div_f
	ldr r1, _0224A96C ; =0x00002D8C
	add r2, r4, r7
	ldr r1, [r2, r1]
	lsl r2, r1, #1
	ldr r1, [sp, #4]
	sub r1, r1, r2
	mul r1, r0
	add r0, r1, #0
	ldr r1, [sp, #4]
	bl _u32_div_f
	add r1, r0, #0
	ldr r0, _0224A970 ; =0x00002DAC
	add r2, r4, r7
	ldr r2, [r2, r0]
	mov r0, #0x27
	tst r0, r2
	beq _0224A8C4
	lsl r1, r1, #1
_0224A8C4:
	mov r0, #0xd8
	tst r0, r2
	beq _0224A8D6
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _u32_div_f
	add r1, r0, #0
_0224A8D6:
	cmp r1, #0xff
	blo _0224A8DE
	mov r5, #4
	b _0224A94E
_0224A8DE:
	ldr r0, _0224A974 ; =0x040002B0
	mov r2, #0
	strh r2, [r0]
	mov r0, #0xff
	lsl r0, r0, #0x10
	bl _u32_div_f
	ldr r1, _0224A978 ; =0x040002B8
	add r2, r1, #0
	str r0, [r1, #0]
	sub r2, #8
	lsr r0, r1, #0xb
_0224A8F6:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224A8F6
	ldr r0, _0224A974 ; =0x040002B0
	lsr r1, r0, #0xb
_0224A900:
	ldrh r2, [r0]
	tst r2, r1
	bne _0224A900
	ldr r3, _0224A97C ; =0x040002B4
	mov r1, #0
	ldr r2, [r3, #0]
	strh r1, [r0]
	str r2, [r3, #4]
	sub r2, r3, #4
	lsr r0, r3, #0xb
_0224A914:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224A914
	ldr r2, _0224A974 ; =0x040002B0
	lsr r0, r2, #0xb
_0224A91E:
	ldrh r1, [r2]
	tst r1, r0
	bne _0224A91E
	ldr r1, _0224A97C ; =0x040002B4
	ldr r0, _0224A980 ; =0x000FFFF0
	ldr r1, [r1, #0]
	bl _u32_div_f
	add r7, r0, #0
	mov r5, #0
_0224A932:
	add r0, r6, #0
	bl ov16_0223F4BC
	cmp r0, r7
	bhs _0224A942
	add r5, r5, #1
	cmp r5, #4
	blt _0224A932
_0224A942:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0224A94E
	mov r5, #4
_0224A94E:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A954: .word 0x0000311C
_0224A958: .word 0x0226E638
_0224A95C: .word 0x0226E639
_0224A960: .word 0x00002D74
_0224A964: .word 0x0226E570
_0224A968: .word 0x00002D90
_0224A96C: .word 0x00002D8C
_0224A970: .word 0x00002DAC
_0224A974: .word 0x040002B0
_0224A978: .word 0x040002B8
_0224A97C: .word 0x040002B4
_0224A980: .word 0x000FFFF0
	thumb_func_end ov16_0224A724

	thumb_func_start ov16_0224A984
ov16_0224A984: ; 0x0224A984
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r1, #0
	cmp r2, #0x16
	bgt _0224A9CE
	cmp r2, #0
	blt _0224A9D4
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224A9A0: ; jump table
	.short _0224A9D4 - _0224A9A0 - 2 ; case 0
	.short _0224A9D4 - _0224A9A0 - 2 ; case 1
	.short _0224A9D8 - _0224A9A0 - 2 ; case 2
	.short _0224AA74 - _0224A9A0 - 2 ; case 3
	.short _0224A9F0 - _0224A9A0 - 2 ; case 4
	.short _0224A9DC - _0224A9A0 - 2 ; case 5
	.short _0224A9E0 - _0224A9A0 - 2 ; case 6
	.short _0224A9E4 - _0224A9A0 - 2 ; case 7
	.short _0224A9EA - _0224A9A0 - 2 ; case 8
	.short _0224AA9A - _0224A9A0 - 2 ; case 9
	.short _0224AA16 - _0224A9A0 - 2 ; case 10
	.short _0224AAC2 - _0224A9A0 - 2 ; case 11
	.short _0224AA3E - _0224A9A0 - 2 ; case 12
	.short _0224A9D4 - _0224A9A0 - 2 ; case 13
	.short _0224AAF8 - _0224A9A0 - 2 ; case 14
	.short _0224AB00 - _0224A9A0 - 2 ; case 15
	.short _0224AB08 - _0224A9A0 - 2 ; case 16
	.short _0224AB44 - _0224A9A0 - 2 ; case 17
	.short _0224A9D4 - _0224A9A0 - 2 ; case 18
	.short _0224AB80 - _0224A9A0 - 2 ; case 19
	.short _0224ABAA - _0224A9A0 - 2 ; case 20
	.short _0224ABD4 - _0224A9A0 - 2 ; case 21
	.short _0224A9E0 - _0224A9A0 - 2 ; case 22
_0224A9CE:
	cmp r2, #0xff
	bne _0224A9D4
	b _0224ABD4
_0224A9D4:
	ldr r5, [r6, #0x64]
	b _0224ABDA
_0224A9D8:
	ldr r5, [r6, #0x6c]
	b _0224ABDA
_0224A9DC:
	ldr r5, [r6, #0x74]
	b _0224ABDA
_0224A9E0:
	ldr r5, [r6, #0x78]
	b _0224ABDA
_0224A9E4:
	add r6, #0x94
	ldr r5, [r6, #0]
	b _0224ABDA
_0224A9EA:
	add r6, #0x80
	ldr r5, [r6, #0]
	b _0224ABDA
_0224A9F0:
	bl ov16_0223DF1C
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _0224AA14
	mov r7, #1
_0224A9FE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _0224ABE8 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _0224AA14
	add r5, r5, #1
	cmp r5, r6
	blt _0224A9FE
_0224AA14:
	b _0224ABDA
_0224AA16:
	bl ov16_0223DF1C
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _0224AA3C
	ldr r7, _0224ABE8 ; =0x00000195
_0224AA24:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldrb r0, [r0, r7]
	cmp r0, #3
	beq _0224AA3C
	cmp r0, #1
	beq _0224AA3C
	add r5, r5, #1
	cmp r5, r6
	blt _0224AA24
_0224AA3C:
	b _0224ABDA
_0224AA3E:
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _0224AA4C
	mov r6, #5
	b _0224AA4E
_0224AA4C:
	mov r6, #1
_0224AA4E:
	add r0, r4, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _0224AA72
_0224AA5C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _0224ABE8 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, r6
	beq _0224AA72
	add r5, r5, #1
	cmp r5, r7
	blt _0224AA5C
_0224AA72:
	b _0224ABDA
_0224AA74:
	bl ov16_0223DF1C
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _0224AA98
	mov r7, #1
_0224AA82:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _0224ABE8 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _0224AA98
	add r5, r5, #1
	cmp r5, r6
	blt _0224AA82
_0224AA98:
	b _0224ABDA
_0224AA9A:
	bl ov16_0223DF1C
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _0224AAC0
	ldr r7, _0224ABE8 ; =0x00000195
_0224AAA8:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldrb r0, [r0, r7]
	cmp r0, #2
	beq _0224AAC0
	cmp r0, #0
	beq _0224AAC0
	add r5, r5, #1
	cmp r5, r6
	blt _0224AAA8
_0224AAC0:
	b _0224ABDA
_0224AAC2:
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _0224AAD0
	mov r6, #4
	b _0224AAD2
_0224AAD0:
	mov r6, #0
_0224AAD2:
	add r0, r4, #0
	bl ov16_0223DF1C
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _0224ABDA
_0224AAE0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223DF14
	ldr r1, _0224ABE8 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, r6
	beq _0224ABDA
	add r5, r5, #1
	cmp r5, r7
	blt _0224AAE0
	b _0224ABDA
_0224AAF8:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r5, [r6, r0]
	b _0224ABDA
_0224AB00:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r5, [r6, r0]
	b _0224ABDA
_0224AB08:
	bl ov16_0223DF1C
	mov r5, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _0224AB3A
_0224AB14:
	ldr r7, [r6, #0x64]
	cmp r5, r7
	beq _0224AB32
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223E208
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_0223E208
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _0224AB3A
_0224AB32:
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _0224AB14
_0224AB3A:
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _0224ABDA
	mov r5, #0
	b _0224ABDA
_0224AB44:
	bl ov16_0223DF1C
	mov r5, #0
	str r0, [sp]
	cmp r0, #0
	ble _0224AB76
_0224AB50:
	ldr r7, [r6, #0x6c]
	cmp r5, r7
	beq _0224AB6E
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223E208
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_0223E208
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _0224AB76
_0224AB6E:
	ldr r0, [sp]
	add r5, r5, #1
	cmp r5, r0
	blt _0224AB50
_0224AB76:
	ldr r0, [sp]
	cmp r5, r0
	bne _0224ABDA
	mov r5, #0
	b _0224ABDA
_0224AB80:
	bl ov16_0223DF1C
	add r7, r0, #0
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov16_0223E208
	add r6, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _0224ABDA
_0224AB96:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223E208
	cmp r6, r0
	bne _0224ABDA
	add r5, r5, #1
	cmp r5, r7
	blt _0224AB96
	b _0224ABDA
_0224ABAA:
	bl ov16_0223DF1C
	add r7, r0, #0
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov16_0223E208
	add r6, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _0224ABDA
_0224ABC0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223E208
	cmp r6, r0
	bne _0224ABDA
	add r5, r5, #1
	cmp r5, r7
	blt _0224ABC0
	b _0224ABDA
_0224ABD4:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r5, [r6, r0]
_0224ABDA:
	cmp r5, #0xff
	bne _0224ABE2
	bl sub_02022974
_0224ABE2:
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224ABE8: .word 0x00000195
	thumb_func_end ov16_0224A984

	thumb_func_start ov16_0224ABEC
ov16_0224ABEC: ; 0x0224ABEC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	mov r6, #0
	bl ov16_02248AD0
	str r0, [r4, #0]
	add r0, r7, #0
	bl ov16_02248AD0
	str r0, [r4, #4]
	cmp r0, #0x3c
	bhi _0224ACA0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224AC12: ; jump table
	.short _0224AC8C - _0224AC12 - 2 ; case 0
	.short _0224AC8E - _0224AC12 - 2 ; case 1
	.short _0224AC8E - _0224AC12 - 2 ; case 2
	.short _0224AC8E - _0224AC12 - 2 ; case 3
	.short _0224AC8E - _0224AC12 - 2 ; case 4
	.short _0224AC8E - _0224AC12 - 2 ; case 5
	.short _0224AC8E - _0224AC12 - 2 ; case 6
	.short _0224AC8E - _0224AC12 - 2 ; case 7
	.short _0224AC8E - _0224AC12 - 2 ; case 8
	.short _0224AC92 - _0224AC12 - 2 ; case 9
	.short _0224AC92 - _0224AC12 - 2 ; case 10
	.short _0224AC92 - _0224AC12 - 2 ; case 11
	.short _0224AC92 - _0224AC12 - 2 ; case 12
	.short _0224AC92 - _0224AC12 - 2 ; case 13
	.short _0224AC92 - _0224AC12 - 2 ; case 14
	.short _0224AC92 - _0224AC12 - 2 ; case 15
	.short _0224AC92 - _0224AC12 - 2 ; case 16
	.short _0224AC92 - _0224AC12 - 2 ; case 17
	.short _0224AC92 - _0224AC12 - 2 ; case 18
	.short _0224AC92 - _0224AC12 - 2 ; case 19
	.short _0224AC92 - _0224AC12 - 2 ; case 20
	.short _0224AC92 - _0224AC12 - 2 ; case 21
	.short _0224AC92 - _0224AC12 - 2 ; case 22
	.short _0224AC92 - _0224AC12 - 2 ; case 23
	.short _0224AC92 - _0224AC12 - 2 ; case 24
	.short _0224AC92 - _0224AC12 - 2 ; case 25
	.short _0224AC92 - _0224AC12 - 2 ; case 26
	.short _0224AC92 - _0224AC12 - 2 ; case 27
	.short _0224AC92 - _0224AC12 - 2 ; case 28
	.short _0224AC92 - _0224AC12 - 2 ; case 29
	.short _0224AC92 - _0224AC12 - 2 ; case 30
	.short _0224AC96 - _0224AC12 - 2 ; case 31
	.short _0224AC96 - _0224AC12 - 2 ; case 32
	.short _0224AC96 - _0224AC12 - 2 ; case 33
	.short _0224AC96 - _0224AC12 - 2 ; case 34
	.short _0224AC96 - _0224AC12 - 2 ; case 35
	.short _0224AC96 - _0224AC12 - 2 ; case 36
	.short _0224AC96 - _0224AC12 - 2 ; case 37
	.short _0224AC96 - _0224AC12 - 2 ; case 38
	.short _0224AC96 - _0224AC12 - 2 ; case 39
	.short _0224AC96 - _0224AC12 - 2 ; case 40
	.short _0224AC96 - _0224AC12 - 2 ; case 41
	.short _0224AC96 - _0224AC12 - 2 ; case 42
	.short _0224AC96 - _0224AC12 - 2 ; case 43
	.short _0224AC96 - _0224AC12 - 2 ; case 44
	.short _0224AC96 - _0224AC12 - 2 ; case 45
	.short _0224AC96 - _0224AC12 - 2 ; case 46
	.short _0224AC96 - _0224AC12 - 2 ; case 47
	.short _0224AC96 - _0224AC12 - 2 ; case 48
	.short _0224AC96 - _0224AC12 - 2 ; case 49
	.short _0224AC96 - _0224AC12 - 2 ; case 50
	.short _0224AC96 - _0224AC12 - 2 ; case 51
	.short _0224AC9A - _0224AC12 - 2 ; case 52
	.short _0224AC9A - _0224AC12 - 2 ; case 53
	.short _0224AC9A - _0224AC12 - 2 ; case 54
	.short _0224AC9A - _0224AC12 - 2 ; case 55
	.short _0224AC9A - _0224AC12 - 2 ; case 56
	.short _0224AC9A - _0224AC12 - 2 ; case 57
	.short _0224AC9A - _0224AC12 - 2 ; case 58
	.short _0224AC9A - _0224AC12 - 2 ; case 59
	.short _0224AC9E - _0224AC12 - 2 ; case 60
_0224AC8C:
	b _0224ACA0
_0224AC8E:
	mov r6, #1
	b _0224ACA0
_0224AC92:
	mov r6, #2
	b _0224ACA0
_0224AC96:
	mov r6, #3
	b _0224ACA0
_0224AC9A:
	mov r6, #4
	b _0224ACA0
_0224AC9E:
	mov r6, #6
_0224ACA0:
	mov r5, #0
	cmp r6, #0
	ble _0224ACB6
_0224ACA6:
	add r0, r7, #0
	bl ov16_02248AD0
	str r0, [r4, #8]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _0224ACA6
_0224ACB6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0224ABEC

	thumb_func_start ov16_0224ACB8
ov16_0224ACB8: ; 0x0224ACB8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	ldr r2, [r4, #0]
	add r5, r3, #0
	strh r2, [r5, #2]
	ldr r2, [r4, #4]
	add r7, r0, #0
	strb r2, [r5, #1]
	ldrb r2, [r5, #1]
	add r6, r1, #0
	cmp r2, #0x3c
	bls _0224ACD2
	b _0224B3B4
_0224ACD2:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224ACDE: ; jump table
	.short _0224B3B4 - _0224ACDE - 2 ; case 0
	.short _0224AD58 - _0224ACDE - 2 ; case 1
	.short _0224AD62 - _0224ACDE - 2 ; case 2
	.short _0224AD6C - _0224ACDE - 2 ; case 3
	.short _0224AD78 - _0224ACDE - 2 ; case 4
	.short _0224AD84 - _0224ACDE - 2 ; case 5
	.short _0224AD90 - _0224ACDE - 2 ; case 6
	.short _0224AD90 - _0224ACDE - 2 ; case 7
	.short _0224AD9C - _0224ACDE - 2 ; case 8
	.short _0224ADA6 - _0224ACDE - 2 ; case 9
	.short _0224ADBC - _0224ACDE - 2 ; case 10
	.short _0224ADD0 - _0224ACDE - 2 ; case 11
	.short _0224ADE6 - _0224ACDE - 2 ; case 12
	.short _0224ADFA - _0224ACDE - 2 ; case 13
	.short _0224AE0E - _0224ACDE - 2 ; case 14
	.short _0224AE24 - _0224ACDE - 2 ; case 15
	.short _0224AE38 - _0224ACDE - 2 ; case 16
	.short _0224AE4C - _0224ACDE - 2 ; case 17
	.short _0224AE60 - _0224ACDE - 2 ; case 18
	.short _0224AE76 - _0224ACDE - 2 ; case 19
	.short _0224AE84 - _0224ACDE - 2 ; case 20
	.short _0224AE9C - _0224ACDE - 2 ; case 21
	.short _0224AEB4 - _0224ACDE - 2 ; case 22
	.short _0224AECA - _0224ACDE - 2 ; case 23
	.short _0224AEE0 - _0224ACDE - 2 ; case 24
	.short _0224AEF6 - _0224ACDE - 2 ; case 25
	.short _0224AF0C - _0224ACDE - 2 ; case 26
	.short _0224AF22 - _0224ACDE - 2 ; case 27
	.short _0224AF38 - _0224ACDE - 2 ; case 28
	.short _0224AF4C - _0224ACDE - 2 ; case 29
	.short _0224AF60 - _0224ACDE - 2 ; case 30
	.short _0224AF76 - _0224ACDE - 2 ; case 31
	.short _0224AF96 - _0224ACDE - 2 ; case 32
	.short _0224AFB8 - _0224ACDE - 2 ; case 33
	.short _0224AFD8 - _0224ACDE - 2 ; case 34
	.short _0224AFF6 - _0224ACDE - 2 ; case 35
	.short _0224B014 - _0224ACDE - 2 ; case 36
	.short _0224B036 - _0224ACDE - 2 ; case 37
	.short _0224B056 - _0224ACDE - 2 ; case 38
	.short _0224B076 - _0224ACDE - 2 ; case 39
	.short _0224B096 - _0224ACDE - 2 ; case 40
	.short _0224B0B6 - _0224ACDE - 2 ; case 41
	.short _0224B0D6 - _0224ACDE - 2 ; case 42
	.short _0224B0F6 - _0224ACDE - 2 ; case 43
	.short _0224B116 - _0224ACDE - 2 ; case 44
	.short _0224B134 - _0224ACDE - 2 ; case 45
	.short _0224B152 - _0224ACDE - 2 ; case 46
	.short _0224B170 - _0224ACDE - 2 ; case 47
	.short _0224B182 - _0224ACDE - 2 ; case 48
	.short _0224B1A4 - _0224ACDE - 2 ; case 49
	.short _0224B1C6 - _0224ACDE - 2 ; case 50
	.short _0224B1E8 - _0224ACDE - 2 ; case 51
	.short _0224B208 - _0224ACDE - 2 ; case 52
	.short _0224B234 - _0224ACDE - 2 ; case 53
	.short _0224B262 - _0224ACDE - 2 ; case 54
	.short _0224B28E - _0224ACDE - 2 ; case 55
	.short _0224B2B8 - _0224ACDE - 2 ; case 56
	.short _0224B2E6 - _0224ACDE - 2 ; case 57
	.short _0224B314 - _0224ACDE - 2 ; case 58
	.short _0224B342 - _0224ACDE - 2 ; case 59
	.short _0224B370 - _0224ACDE - 2 ; case 60
_0224AD58:
	ldr r2, [r4, #8]
	bl ov16_0224A984
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0224AD62:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0224AD6C:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0224AD78:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B4C8
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0224AD84:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0224AD90:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B47C
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0224AD9C:
	ldr r2, [r4, #8]
	bl ov16_0224B518
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0224ADA6:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224ADBC:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224ADD0:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224ADE6:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B4C8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224ADFA:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B488
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AE0E:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B4E0
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AE24:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AE38:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B4F8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AE4C:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B47C
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AE60:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AE76:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AE84:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224A984
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AE9C:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AEB4:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AECA:
	ldr r2, [r4, #8]
	bl ov16_0224B494
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AEE0:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AEF6:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B47C
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B47C
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AF0C:
	ldr r2, [r4, #8]
	bl ov16_0224B518
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AF22:
	ldr r2, [r4, #8]
	bl ov16_0224B518
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AF38:
	ldr r2, [r4, #8]
	bl ov16_0224B518
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AF4C:
	ldr r2, [r4, #8]
	bl ov16_0224B518
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B47C
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AF60:
	ldr r2, [r4, #8]
	bl ov16_0224B510
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224AF76:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224AF96:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224AFB8:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224AFD8:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224AFF6:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B47C
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B014:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B036:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B056:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B076:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B4C8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B096:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B488
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B0B6:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B4D4
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B0D6:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B47C
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B0F6:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B116:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B134:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B4C8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B152:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B4D4
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B170:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	str r0, [r5, #8]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B182:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B504
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B1A4:
	ldr r2, [r4, #8]
	bl ov16_0224B518
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B1C6:
	ldr r2, [r4, #8]
	bl ov16_0224B510
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B1E8:
	ldr r2, [r4, #8]
	bl ov16_0224B510
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224B208:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl ov16_0224B3E8
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224B234:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224B262:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B494
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl ov16_0224B4C8
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224B28E:
	ldr r2, [r4, #8]
	bl ov16_0224B3B8
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl ov16_0224B404
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224B2B8:
	ldr r2, [r4, #8]
	bl ov16_0224B518
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224B2E6:
	ldr r2, [r4, #8]
	bl ov16_0224B510
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224B314:
	ldr r2, [r4, #8]
	bl ov16_0224B510
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224B342:
	ldr r2, [r4, #8]
	bl ov16_0224B510
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B510
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224B370:
	ldr r2, [r4, #8]
	bl ov16_0224B510
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B510
	str r0, [r5, #0x10]
	ldr r2, [r4, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B518
	str r0, [r5, #0x14]
	ldr r2, [r4, #0x1c]
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0224B3B8
	str r0, [r5, #0x18]
_0224B3B4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0224ACB8

	thumb_func_start ov16_0224B3B8
ov16_0224B3B8: ; 0x0224B3B8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov16_0224A984
	cmp r4, #0x16
	bne _0224B3D2
	ldr r1, _0224B3E0 ; =0x000021A0
	add r2, r5, r0
	ldrb r1, [r2, r1]
	lsl r1, r1, #8
	orr r0, r1
	pop {r3, r4, r5, pc}
_0224B3D2:
	ldr r1, _0224B3E4 ; =0x0000219C
	add r2, r5, r0
	ldrb r1, [r2, r1]
	lsl r1, r1, #8
	orr r0, r1
	pop {r3, r4, r5, pc}
	nop
_0224B3E0: .word 0x000021A0
_0224B3E4: .word 0x0000219C
	thumb_func_end ov16_0224B3B8

	thumb_func_start ov16_0224B3E8
ov16_0224B3E8: ; 0x0224B3E8
	cmp r1, #1
	beq _0224B3F2
	cmp r1, #0xff
	beq _0224B3F8
	bx lr
_0224B3F2:
	ldr r1, _0224B400 ; =0x00003044
	ldr r0, [r0, r1]
	bx lr
_0224B3F8:
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_0224B400: .word 0x00003044
	thumb_func_end ov16_0224B3E8

	thumb_func_start ov16_0224B404
ov16_0224B404: ; 0x0224B404
	push {r4, lr}
	cmp r1, #0x15
	bgt _0224B41C
	bge _0224B452
	cmp r1, #2
	bgt _0224B474
	cmp r1, #1
	blt _0224B474
	beq _0224B422
	cmp r1, #2
	beq _0224B43A
	b _0224B474
_0224B41C:
	cmp r1, #0xff
	beq _0224B46E
	b _0224B474
_0224B422:
	ldr r3, [r0, #0x64]
	mov r1, #0xc0
	mul r1, r3
	add r2, r0, r1
	ldr r1, _0224B478 ; =0x00002DB8
	ldrh r4, [r2, r1]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl ov16_0224B934
	b _0224B474
_0224B43A:
	ldr r3, [r0, #0x6c]
	mov r1, #0xc0
	mul r1, r3
	add r2, r0, r1
	ldr r1, _0224B478 ; =0x00002DB8
	ldrh r4, [r2, r1]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl ov16_0224B934
	b _0224B474
_0224B452:
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	mov r1, #0xc0
	mul r1, r3
	add r2, r0, r1
	ldr r1, _0224B478 ; =0x00002DB8
	ldrh r4, [r2, r1]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl ov16_0224B934
	b _0224B474
_0224B46E:
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r4, [r0, r1]
_0224B474:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0224B478: .word 0x00002DB8
	thumb_func_end ov16_0224B404

	thumb_func_start ov16_0224B47C
ov16_0224B47C: ; 0x0224B47C
	cmp r1, #0xff
	bne _0224B486
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_0224B486:
	bx lr
	thumb_func_end ov16_0224B47C

	thumb_func_start ov16_0224B488
ov16_0224B488: ; 0x0224B488
	cmp r1, #0xff
	bne _0224B492
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_0224B492:
	bx lr
	thumb_func_end ov16_0224B488

	thumb_func_start ov16_0224B494
ov16_0224B494: ; 0x0224B494
	push {r3, r4, r5, lr}
	add r5, r1, #0
	cmp r2, #0xff
	bne _0224B4A4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	b _0224B4C0
_0224B4A4:
	bl ov16_0224A984
	add r1, r0, #0
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _0224B4C4 ; =0x00002D67
	lsl r1, r1, #0x18
	ldrb r4, [r2, r0]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl ov16_0224B928
_0224B4C0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B4C4: .word 0x00002D67
	thumb_func_end ov16_0224B494

	thumb_func_start ov16_0224B4C8
ov16_0224B4C8: ; 0x0224B4C8
	cmp r1, #0xff
	bne _0224B4D2
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_0224B4D2:
	bx lr
	thumb_func_end ov16_0224B4C8

	thumb_func_start ov16_0224B4D4
ov16_0224B4D4: ; 0x0224B4D4
	cmp r1, #0xff
	bne _0224B4DE
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_0224B4DE:
	bx lr
	thumb_func_end ov16_0224B4D4

	thumb_func_start ov16_0224B4E0
ov16_0224B4E0: ; 0x0224B4E0
	push {r4, lr}
	add r4, r1, #0
	bl ov16_0224A984
	ldr r1, _0224B4F4 ; =0x0000219C
	add r2, r4, r0
	ldrb r1, [r2, r1]
	lsl r1, r1, #8
	orr r0, r1
	pop {r4, pc}
	; .align 2, 0
_0224B4F4: .word 0x0000219C
	thumb_func_end ov16_0224B4E0

	thumb_func_start ov16_0224B4F8
ov16_0224B4F8: ; 0x0224B4F8
	cmp r1, #0xff
	bne _0224B502
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_0224B502:
	bx lr
	thumb_func_end ov16_0224B4F8

	thumb_func_start ov16_0224B504
ov16_0224B504: ; 0x0224B504
	cmp r1, #0xff
	bne _0224B50E
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_0224B50E:
	bx lr
	thumb_func_end ov16_0224B504

	thumb_func_start ov16_0224B510
ov16_0224B510: ; 0x0224B510
	ldr r3, _0224B514 ; =ov16_0224A984
	bx r3
	; .align 2, 0
_0224B514: .word ov16_0224A984
	thumb_func_end ov16_0224B510

	thumb_func_start ov16_0224B518
ov16_0224B518: ; 0x0224B518
	ldr r3, _0224B51C ; =ov16_0224A984
	bx r3
	; .align 2, 0
_0224B51C: .word ov16_0224A984
	thumb_func_end ov16_0224B518

	thumb_func_start ov16_0224B520
ov16_0224B520: ; 0x0224B520
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp, #0x18]
	bl ov16_0223E05C
	str r0, [sp, #0x28]
	add r0, r7, #0
	bl ov16_0223E0D4
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl ov16_0223E0D0
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl ov16_0223DF00
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl ov16_0223E010
	add r6, r0, #0
	add r0, r7, #0
	bl ov16_0223E018
	add r4, r0, #0
	add r0, r7, #0
	bl ov16_0223E064
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224B7A0 ; =0x00004E35
	mov r3, #0x1b
	str r0, [sp, #8]
	add r2, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0xe5
	bl sub_0200CBDC
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x52
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0224B7A4 ; =0x00004E30
	add r2, r6, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r3, r4, #0
	bl sub_0200CD7C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224B7A8 ; =0x00004E2D
	mov r3, #0x1b
	str r0, [sp, #4]
	add r2, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0xe6
	bl sub_0200CE0C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0224B7A8 ; =0x00004E2D
	mov r3, #0x1b
	str r0, [sp, #4]
	add r2, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0xe7
	bl sub_0200CE3C
	ldr r2, _0224B7AC ; =0x0226E6C4
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200CE6C
	str r0, [r5, #0xc]
	bl sub_0200D330
	ldr r0, [sp, #0x18]
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0224B7B0 ; =0x00004E36
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0x13
	bl sub_0200D888
	bl sub_02079FD0
	mov r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0224B7B4 ; =0x00004E31
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0200CD7C
	bl sub_02079FDC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224B7B8 ; =0x00004E2E
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x13
	bl sub_0200CE0C
	bl sub_02079FE8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224B7B8 ; =0x00004E2E
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x13
	bl sub_0200CE3C
	ldr r2, _0224B7BC ; =0x0226E6F8
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200CE6C
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_02079FC4
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0]
	bl sub_02021F24
	ldr r0, [r5, #0x10]
	bl sub_0200D330
	mov r0, #1
	mov r1, #5
	bl sub_02012744
	str r0, [r5, #0x50]
	ldr r0, [sp, #0x18]
	mov r1, #0xb0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0224B688
	mov r0, #2
	b _0224B692
_0224B688:
	ldr r0, [sp, #0x18]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
_0224B692:
	cmp r0, #0
	bne _0224B6A4
	mov r1, #0x3b
	ldr r0, [sp, #0x28]
	lsl r1, r1, #4
	bl sub_0200B1EC
	add r6, r0, #0
	b _0224B6BE
_0224B6A4:
	cmp r0, #1
	bne _0224B6B4
	ldr r0, [sp, #0x28]
	ldr r1, _0224B7C0 ; =0x000003B1
	bl sub_0200B1EC
	add r6, r0, #0
	b _0224B6BE
_0224B6B4:
	ldr r0, [sp, #0x28]
	ldr r1, _0224B7C4 ; =0x000003B2
	bl sub_0200B1EC
	add r6, r0, #0
_0224B6BE:
	ldr r0, [sp, #0x18]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [sp, #0x24]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, [sp, #0x18]
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r0, [sp, #0x24]
	mov r3, #3
	str r1, [sp, #4]
	bl sub_0200B60C
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, sp, #0x68
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x68
	mov r2, #0xc
	mov r3, #4
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224B7C8 ; =0x00010200
	ldr r2, [sp, #0x20]
	str r0, [sp, #8]
	add r0, sp, #0x68
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, sp, #0x68
	mov r1, #1
	mov r2, #5
	bl sub_02012898
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x5c
	bl sub_0201ED94
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x2c]
	add r0, sp, #0x68
	str r0, [sp, #0x30]
	add r0, r4, #0
	bl sub_0200D9B0
	str r0, [sp, #0x34]
	ldr r1, _0224B7A4 ; =0x00004E30
	add r0, r4, #0
	bl sub_0200D04C
	mov r1, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	mov r0, #0xb0
	str r0, [sp, #0x44]
	mov r0, #8
	str r0, [sp, #0x48]
	mov r0, #0x64
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x2c
	str r1, [sp, #0x4c]
	bl sub_020127E8
	add r2, r5, #0
	add r3, sp, #0x5c
	str r0, [r5, #0x14]
	ldmia r3!, {r0, r1}
	add r2, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #1
	str r0, [r2, #0]
	ldr r0, [r5, #0x14]
	bl sub_02012AC0
	add r0, sp, #0x68
	bl sub_0201A8FC
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B7A0: .word 0x00004E35
_0224B7A4: .word 0x00004E30
_0224B7A8: .word 0x00004E2D
_0224B7AC: .word 0x0226E6C4
_0224B7B0: .word 0x00004E36
_0224B7B4: .word 0x00004E31
_0224B7B8: .word 0x00004E2E
_0224B7BC: .word 0x0226E6F8
_0224B7C0: .word 0x000003B1
_0224B7C4: .word 0x000003B2
_0224B7C8: .word 0x00010200
	thumb_func_end ov16_0224B520

	thumb_func_start ov16_0224B7CC
ov16_0224B7CC: ; 0x0224B7CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ov16_0223E018
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0200D0F4
	ldr r0, [r5, #0x10]
	bl sub_0200D0F4
	ldr r0, [r5, #0x14]
	bl sub_02012870
	add r0, r5, #0
	add r0, #0x18
	bl sub_0201EE28
	ldr r1, _0224B838 ; =0x00004E35
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0224B83C ; =0x00004E30
	add r0, r4, #0
	bl sub_0200D080
	ldr r1, _0224B840 ; =0x00004E2D
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224B840 ; =0x00004E2D
	add r0, r4, #0
	bl sub_0200D0A0
	ldr r1, _0224B844 ; =0x00004E36
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0224B848 ; =0x00004E31
	add r0, r4, #0
	bl sub_0200D080
	ldr r1, _0224B84C ; =0x00004E2E
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0224B84C ; =0x00004E2E
	add r0, r4, #0
	bl sub_0200D0A0
	ldr r0, [r5, #0x50]
	bl sub_020127BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B838: .word 0x00004E35
_0224B83C: .word 0x00004E30
_0224B840: .word 0x00004E2D
_0224B844: .word 0x00004E36
_0224B848: .word 0x00004E31
_0224B84C: .word 0x00004E2E
	thumb_func_end ov16_0224B7CC

	thumb_func_start ov16_0224B850
ov16_0224B850: ; 0x0224B850
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	str r2, [sp]
	bl ov16_0223E208
	cmp r0, #0
	bne _0224B91C
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _0224B8A0
	add r0, r5, #0
	mov r1, #3
	bl ov16_0223E1C4
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	mov r1, #5
	bl ov16_0223E1C4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r2, #0xc0
	add r0, r1, #0
	mul r0, r2
	mul r2, r6
	ldr r3, _0224B920 ; =0x00002D74
	add r0, r4, r0
	add r2, r4, r2
	ldrb r0, [r0, r3]
	ldrb r2, [r2, r3]
	cmp r0, r2
	bls _0224B8AC
	add r6, r1, #0
	b _0224B8AC
_0224B8A0:
	add r0, r5, #0
	mov r1, #1
	bl ov16_0223E1C4
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_0224B8AC:
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r4, r2
	ldr r2, _0224B924 ; =0x0000219C
	ldrb r2, [r3, r2]
	bl ov16_0223DFAC
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r4, r2
	ldr r2, _0224B920 ; =0x00002D74
	mul r1, r6
	add r1, r4, r1
	ldrb r0, [r0, r2]
	ldrb r1, [r1, r2]
	cmp r1, r0
	bls _0224B908
	sub r0, r1, r0
	cmp r0, #0x1e
	blt _0224B8F2
	add r0, r5, #0
	bl ov16_0223E24C
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r7, #0
	mov r1, #8
	lsr r2, r2, #0x10
	bl sub_02075C74
	pop {r3, r4, r5, r6, r7, pc}
_0224B8F2:
	add r0, r5, #0
	bl ov16_0223E24C
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r7, #0
	mov r1, #6
	lsr r2, r2, #0x10
	bl sub_02075C74
	pop {r3, r4, r5, r6, r7, pc}
_0224B908:
	add r0, r5, #0
	bl ov16_0223E24C
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r7, #0
	mov r1, #6
	lsr r2, r2, #0x10
	bl sub_02075C74
_0224B91C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B920: .word 0x00002D74
_0224B924: .word 0x0000219C
	thumb_func_end ov16_0224B850

	thumb_func_start ov16_0224B928
ov16_0224B928: ; 0x0224B928
	add r1, r0, r1
	mov r0, #0x39
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0224B928

	thumb_func_start ov16_0224B934
ov16_0224B934: ; 0x0224B934
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0xe5
	lsl r0, r0, #2
	strh r2, [r1, r0]
	bx lr
	thumb_func_end ov16_0224B934

	.rodata


	.global Unk_ov16_0226E570
Unk_ov16_0226E570: ; 0x0226E570
	.incbin "incbin/overlay16_rodata.bin", 0x314, 0x318 - 0x314

	.global Unk_ov16_0226E574
Unk_ov16_0226E574: ; 0x0226E574
	.incbin "incbin/overlay16_rodata.bin", 0x318, 0x320 - 0x318

	.global Unk_ov16_0226E57C
Unk_ov16_0226E57C: ; 0x0226E57C
	.incbin "incbin/overlay16_rodata.bin", 0x320, 0x328 - 0x320

	.global Unk_ov16_0226E584
Unk_ov16_0226E584: ; 0x0226E584
	.incbin "incbin/overlay16_rodata.bin", 0x328, 0x334 - 0x328

	.global Unk_ov16_0226E590
Unk_ov16_0226E590: ; 0x0226E590
	.incbin "incbin/overlay16_rodata.bin", 0x334, 0x34C - 0x334

	.global Unk_ov16_0226E5A8
Unk_ov16_0226E5A8: ; 0x0226E5A8
	.incbin "incbin/overlay16_rodata.bin", 0x34C, 0x364 - 0x34C

	.global Unk_ov16_0226E5C0
Unk_ov16_0226E5C0: ; 0x0226E5C0
	.incbin "incbin/overlay16_rodata.bin", 0x364, 0x37C - 0x364

	.global Unk_ov16_0226E5D8
Unk_ov16_0226E5D8: ; 0x0226E5D8
	.incbin "incbin/overlay16_rodata.bin", 0x37C, 0x394 - 0x37C

	.global Unk_ov16_0226E5F0
Unk_ov16_0226E5F0: ; 0x0226E5F0
	.incbin "incbin/overlay16_rodata.bin", 0x394, 0x3AC - 0x394

	.global Unk_ov16_0226E608
Unk_ov16_0226E608: ; 0x0226E608
	.incbin "incbin/overlay16_rodata.bin", 0x3AC, 0x3C4 - 0x3AC

	.global Unk_ov16_0226E620
Unk_ov16_0226E620: ; 0x0226E620
	.incbin "incbin/overlay16_rodata.bin", 0x3C4, 0x3DC - 0x3C4

	.global Unk_ov16_0226E638
Unk_ov16_0226E638: ; 0x0226E638
	.incbin "incbin/overlay16_rodata.bin", 0x3DC, 0x3F6 - 0x3DC

	.global Unk_ov16_0226E652
Unk_ov16_0226E652: ; 0x0226E652
	.incbin "incbin/overlay16_rodata.bin", 0x3F6, 0x410 - 0x3F6

	.global Unk_ov16_0226E66C
Unk_ov16_0226E66C: ; 0x0226E66C
	.incbin "incbin/overlay16_rodata.bin", 0x410, 0x434 - 0x410

	.global Unk_ov16_0226E690
Unk_ov16_0226E690: ; 0x0226E690
	.incbin "incbin/overlay16_rodata.bin", 0x434, 0x468 - 0x434

	.global Unk_ov16_0226E6C4
Unk_ov16_0226E6C4: ; 0x0226E6C4
	.incbin "incbin/overlay16_rodata.bin", 0x468, 0x49C - 0x468

	.global Unk_ov16_0226E6F8
Unk_ov16_0226E6F8: ; 0x0226E6F8
	.incbin "incbin/overlay16_rodata.bin", 0x49C, 0x4D0 - 0x49C

	.global Unk_ov16_0226E72C
Unk_ov16_0226E72C: ; 0x0226E72C
	.incbin "incbin/overlay16_rodata.bin", 0x4D0, 0x84C - 0x4D0

	.global Unk_ov16_0226EAA8
Unk_ov16_0226EAA8: ; 0x0226EAA8
	.incbin "incbin/overlay16_rodata.bin", 0x84C, 0x858 - 0x84C

	.global Unk_ov16_0226EAB4
Unk_ov16_0226EAB4: ; 0x0226EAB4
	.incbin "incbin/overlay16_rodata.bin", 0x858, 0x864 - 0x858

	.global Unk_ov16_0226EAC0
Unk_ov16_0226EAC0: ; 0x0226EAC0
	.incbin "incbin/overlay16_rodata.bin", 0x864, 0xD


	.data


	.global Unk_ov16_02270B20
Unk_ov16_02270B20: ; 0x02270B20
	.incbin "incbin/overlay16_data.bin", 0x0, 0x69

