	.include "macros/function.inc"
	.include "include/ov21_021E737C.inc"

	

	.text


	thumb_func_start ov21_021E737C
ov21_021E737C: ; 0x021E737C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	bl ov21_021E73E8
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021E7424
	str r4, [r5, #0]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x20]
	bl ov21_021E749C
	str r0, [r5, #0x24]
	ldr r0, _021E73BC ; =ov21_021E74A0
	str r0, [r5, #8]
	ldr r0, _021E73C0 ; =ov21_021E750C
	str r0, [r5, #0xc]
	ldr r0, _021E73C4 ; =ov21_021E751C
	str r0, [r5, #0x10]
	ldr r0, _021E73C8 ; =ov21_021E7530
	str r0, [r5, #0x14]
	ldr r0, _021E73CC ; =ov21_021E75D4
	str r0, [r5, #0x18]
	ldr r0, _021E73D0 ; =ov21_021E7694
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E73BC: .word ov21_021E74A0
_021E73C0: .word ov21_021E750C
_021E73C4: .word ov21_021E751C
_021E73C8: .word ov21_021E7530
_021E73CC: .word ov21_021E75D4
_021E73D0: .word ov21_021E7694
	thumb_func_end ov21_021E737C

	thumb_func_start ov21_021E73D4
ov21_021E73D4: ; 0x021E73D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E7468
	ldr r0, [r4, #4]
	bl ov21_021E747C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E73D4

	thumb_func_start ov21_021E73E8
ov21_021E73E8: ; 0x021E73E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	bne _021E73FA
	bl sub_02022974
_021E73FA:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1410
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E73E8

	thumb_func_start ov21_021E7424
ov21_021E7424: ; 0x021E7424
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x20
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021E7438
	bl sub_02022974
_021E7438:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl memset
	add r0, r6, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E7EC0
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021E7F40
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02015240
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021E7424

	thumb_func_start ov21_021E7468
ov21_021E7468: ; 0x021E7468
	push {r4, lr}
	add r4, r0, #0
	bne _021E7472
	bl sub_02022974
_021E7472:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E7468

	thumb_func_start ov21_021E747C
ov21_021E747C: ; 0x021E747C
	push {r4, lr}
	add r4, r0, #0
	bne _021E7486
	bl sub_02022974
_021E7486:
	add r0, r4, #0
	bl ov21_021E7F20
	add r0, r4, #0
	bl ov21_021E7F7C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E747C

	thumb_func_start ov21_021E749C
ov21_021E749C: ; 0x021E749C
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E749C

	thumb_func_start ov21_021E74A0
ov21_021E74A0: ; 0x021E74A0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r5, r1, #0
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	bne _021E74B6
	bl sub_02022974
_021E74B6:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	str r4, [r6, #8]
	ldr r0, [r5, #0]
	bl ov21_021D37BC
	add r1, r0, #0
	ldr r2, [r5, #0]
	ldr r0, _021E7508 ; =0x00001748
	ldr r0, [r2, r0]
	bl sub_02098828
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov21_021D3920
	cmp r0, #0
	bne _021E74EC
	mov r0, #0x5f
	b _021E74EE
_021E74EC:
	mov r0, #0x55
_021E74EE:
	lsl r0, r0, #2
	cmp r6, r0
	blt _021E74FC
	sub r0, r6, r0
	str r0, [r4, #0]
	mov r0, #1
	b _021E7502
_021E74FC:
	sub r0, r0, r6
	str r0, [r4, #0]
	mov r0, #0
_021E7502:
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021E7508: .word 0x00001748
	thumb_func_end ov21_021E74A0

	thumb_func_start ov21_021E750C
ov21_021E750C: ; 0x021E750C
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021E7516
	mov r0, #1
	bx lr
_021E7516:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E750C

	thumb_func_start ov21_021E751C
ov21_021E751C: ; 0x021E751C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E751C

	thumb_func_start ov21_021E7530
ov21_021E7530: ; 0x021E7530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0]
	str r2, [sp, #4]
	ldr r6, [r3, #8]
	ldr r5, [r4, #8]
	cmp r0, #3
	bhi _021E75C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7550: ; jump table
	.short _021E7558 - _021E7550 - 2 ; case 0
	.short _021E757A - _021E7550 - 2 ; case 1
	.short _021E759C - _021E7550 - 2 ; case 2
	.short _021E75B2 - _021E7550 - 2 ; case 3
_021E7558:
	ldr r0, [r4, #4]
	mov r1, #0xc4
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0xc4
	bl memset
	ldr r0, [r4, #8]
	mov r1, #1
	add r0, #0xb8
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E75C8
_021E757A:
	ldr r0, [r4, #4]
	add r1, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl ov21_021E7800
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #1
	bl ov21_021E771C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E75C8
_021E759C:
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #1
	bl ov21_021E77A4
	cmp r0, #0
	beq _021E75C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E75C8
_021E75B2:
	ldr r0, _021E75D0 ; =0x021E9DB0
	ldr r2, [r6, #0]
	mov r1, #0x11
	bl ov21_021E83D8
	str r0, [r5, #0x34]
	ldr r0, [r6, #4]
	add sp, #8
	str r0, [r5, #0x38]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E75C8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E75D0: .word 0x021E9DB0
	thumb_func_end ov21_021E7530

	thumb_func_start ov21_021E75D4
ov21_021E75D4: ; 0x021E75D4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #7
	bhi _021E768C
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021E75F0: ; jump table
	.short _021E7600 - _021E75F0 - 2 ; case 0
	.short _021E761A - _021E75F0 - 2 ; case 1
	.short _021E762A - _021E75F0 - 2 ; case 2
	.short _021E7638 - _021E75F0 - 2 ; case 3
	.short _021E7650 - _021E75F0 - 2 ; case 4
	.short _021E765E - _021E75F0 - 2 ; case 5
	.short _021E7680 - _021E75F0 - 2 ; case 6
	.short _021E768C - _021E75F0 - 2 ; case 7
_021E7600:
	add r1, r0, #0
	mov r2, #1
	add r1, #0xb8
	str r2, [r1, #0]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E7614
	str r2, [r4, #0]
	b _021E768C
_021E7614:
	mov r0, #3
	str r0, [r4, #0]
	b _021E768C
_021E761A:
	add r1, r2, #0
	ldr r2, [r0, #0x38]
	bl ov21_021E7F88
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E768C
_021E762A:
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021E768C
	add r0, r1, #1
	str r0, [r4, #0]
	b _021E768C
_021E7638:
	ldr r3, [r0, #0x34]
	ldr r1, [r0, #0x38]
	str r1, [sp]
	add r1, r2, #0
	ldrh r2, [r3, #8]
	ldrh r3, [r3, #0xa]
	bl ov21_021E8188
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E768C
_021E7650:
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021E768C
	add r0, r1, #1
	str r0, [r4, #0]
	b _021E768C
_021E765E:
	ldr r2, [r0, #0x34]
	ldr r1, [r2, #0xc]
	cmp r1, #0
	beq _021E767A
	ldr r1, [r2, #0x10]
	ldr r2, [r0, #0x38]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ov21_021E8258
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E768C
_021E767A:
	mov r0, #7
	str r0, [r4, #0]
	b _021E768C
_021E7680:
	add r0, #0xb8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021E768C
	add r0, r1, #1
	str r0, [r4, #0]
_021E768C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E75D4

	thumb_func_start ov21_021E7694
ov21_021E7694: ; 0x021E7694
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E7710
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E76AE: ; jump table
	.short _021E76B8 - _021E76AE - 2 ; case 0
	.short _021E76C8 - _021E76AE - 2 ; case 1
	.short _021E76DC - _021E76AE - 2 ; case 2
	.short _021E76EA - _021E76AE - 2 ; case 3
	.short _021E770C - _021E76AE - 2 ; case 4
_021E76B8:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E771C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E7710
_021E76C8:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E77A4
	cmp r0, #0
	beq _021E7710
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E7710
_021E76DC:
	add r1, r3, #0
	bl ov21_021E785C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E7710
_021E76EA:
	add r1, r0, #0
	add r1, #0xb8
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _021E76FA
	ldr r0, [r0, #0x3c]
	bl sub_0200DA58
_021E76FA:
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E7710
_021E770C:
	mov r0, #1
	pop {r4, pc}
_021E7710:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021E7694

	thumb_func_start ov21_021E7714
ov21_021E7714: ; 0x021E7714
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E7714

	thumb_func_start ov21_021E7718
ov21_021E7718: ; 0x021E7718
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E7718

	thumb_func_start ov21_021E771C
ov21_021E771C: ; 0x021E771C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r7, r0, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E7714
	ldr r0, [r4, #4]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E779E
	cmp r6, #0
	beq _021E777C
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2b
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24B8
	add r1, r0, #0
	neg r1, r1
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov21_021E8400
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E777C:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2b
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021E779E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E771C

	thumb_func_start ov21_021E77A4
ov21_021E77A4: ; 0x021E77A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	add r4, r1, #0
	add r6, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4, #0]
	beq _021E77C4
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	b _021E77CE
_021E77C4:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
_021E77CE:
	cmp r0, #0
	beq _021E77E0
	cmp r6, #0
	beq _021E77DC
	add r0, r5, #0
	bl ov21_021E7718
_021E77DC:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E77E0:
	mov r0, #0x5b
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24B8
	add r1, r0, #0
	neg r1, r1
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov21_021E8400
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E77A4

	thumb_func_start ov21_021E7800
ov21_021E7800: ; 0x021E7800
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov21_021E789C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E7CF8
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov21_021E7DA8
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021E7904
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021E7B34
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021E7CF0
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_020152BC
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl sub_02015240
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E7800

	thumb_func_start ov21_021E785C
ov21_021E785C: ; 0x021E785C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021E7CF4
	add r0, r5, #0
	bl ov21_021E7CCC
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E7AA0
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02015240
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_020152BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E785C

	thumb_func_start ov21_021E789C
ov21_021E789C: ; 0x021E789C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r5, r2, #0
	str r5, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x21
	mov r3, #3
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x49
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E789C

	thumb_func_start ov21_021E7904
ov21_021E7904: ; 0x021E7904
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, r2, #0
	add r7, r1, #0
	ldr r0, [r0, #0]
	str r2, [sp, #0x10]
	add r4, r3, #0
	ldr r6, [r7, #0]
	bl ov21_021D37BC
	str r0, [sp, #0x20]
	ldr r0, [r7, #0]
	bl ov21_021D26E0
	str r0, [sp, #0x14]
	mov r0, #0x13
	add r1, r4, #0
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	bl ov21_021D33D4
	add r2, r0, #0
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl sub_02079D8C
	str r0, [sp, #0x24]
	bl sub_02079FD0
	str r0, [sp, #0x28]
	bl sub_02079FD4
	str r0, [sp, #0x1c]
	bl sub_02079FE0
	str r0, [sp, #0x18]
	mov r0, #0x7d
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x24]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009A4C
	str r0, [r5, #0x14]
	bl sub_0200A450
	ldr r0, [r5, #0x14]
	bl sub_02009D4C
	mov r0, #0x7d
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x28]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x18]
	bl sub_0200A640
	cmp r0, #0
	bne _021E79AC
	bl sub_02022974
_021E79AC:
	add r0, r4, #0
	mov r1, #0x60
	bl sub_02018144
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1, #0]
	mov r0, #0x7d
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x1c]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0x1c]
	mov r0, #0x7d
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0x20]
	ldr r0, _021E7A90 ; =0x00001BB5
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x14]
	mov r2, #0x5d
	bl sub_02009A4C
	str r0, [r5, #0x24]
	bl sub_0200A3DC
	ldr r0, [r5, #0x24]
	bl sub_02009D4C
	ldr r0, _021E7A94 ; =0x00001B66
	ldr r1, [sp, #0x14]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0xe
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x28]
	bl sub_0200A640
	add r0, r4, #0
	mov r1, #0xa0
	bl sub_02018144
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1, #0]
	ldr r0, _021E7A98 ; =0x00001BB3
	ldr r1, [sp, #0x14]
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x5b
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x2c]
	ldr r0, _021E7A9C ; =0x00001BB4
	ldr r1, [sp, #0x14]
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x5c
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x30]
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021E7A90: .word 0x00001BB5
_021E7A94: .word 0x00001B66
_021E7A98: .word 0x00001BB3
_021E7A9C: .word 0x00001BB4
	thumb_func_end ov21_021E7904

	thumb_func_start ov21_021E7AA0
ov21_021E7AA0: ; 0x021E7AA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #0x18]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x20]
	bl sub_02009D68
	ldr r0, [r5, #0x24]
	bl sub_0200A4E4
	ldr r0, [r5, #0x28]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x24]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x28]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x2c]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x30]
	bl sub_02009D68
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r5, #0xc0
	ldr r0, [r5, #0]
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E7AA0

	thumb_func_start ov21_021E7B34
ov21_021E7B34: ; 0x021E7B34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	add r6, r2, #0
	add r5, r0, #0
	ldr r0, [r6, #0]
	add r7, r3, #0
	ldr r4, [r1, #0]
	bl ov21_021D37BC
	str r0, [sp, #0x2c]
	ldr r0, [r6, #0]
	ldr r1, [sp, #0x2c]
	bl ov21_021D33D4
	ldr r3, _021E7CC8 ; =0x00001BB4
	str r0, [sp, #0x30]
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	add r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	add r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r2, r3, #0
	add r0, sp, #0x5c
	sub r2, #0x4e
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	str r0, [sp, #0x3c]
	add r0, sp, #0x5c
	str r0, [sp, #0x40]
	mov r0, #0x1f
	str r0, [sp, #0x50]
	mov r0, #0x2e
	lsl r0, r0, #0xe
	str r0, [sp, #0x44]
	lsl r0, r1, #0x12
	str r0, [sp, #0x48]
	str r1, [sp, #0x54]
	str r7, [sp, #0x58]
	add r0, sp, #0x3c
	bl sub_02021B90
	str r0, [r5, #0]
	ldr r0, [r6, #0]
	bl ov21_021D3920
	cmp r0, #0
	ldr r0, [r5, #0]
	bne _021E7BD0
	mov r1, #3
	bl sub_02021D6C
	b _021E7BD6
_021E7BD0:
	mov r1, #4
	bl sub_02021D6C
_021E7BD6:
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x44]
	mov r0, #0x6a
	lsl r0, r0, #0xc
	str r0, [sp, #0x48]
	add r0, sp, #0x3c
	bl sub_02021B90
	str r0, [r5, #8]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_02021E80
	mov r0, #0x2e
	lsl r0, r0, #0xe
	str r0, [sp, #0x44]
	mov r0, #0x16
	lsl r0, r0, #0xe
	str r0, [sp, #0x48]
	add r0, sp, #0x3c
	bl sub_02021B90
	mov r1, #0
	str r0, [r5, #0xc]
	bl sub_02021D6C
	mov r0, #0x12
	lsl r0, r0, #0xe
	str r0, [sp, #0x44]
	mov r0, #0x16
	lsl r0, r0, #0xe
	str r0, [sp, #0x48]
	add r0, sp, #0x3c
	bl sub_02021B90
	str r0, [r5, #0x10]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x14]
	bl sub_02009E08
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	bl sub_02009E08
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x1c]
	bl sub_02009E08
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x20]
	bl sub_02009E08
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	ldr r2, [r4, r0]
	ldr r3, [sp, #0x38]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x34]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, sp, #0x5c
	add r1, r6, #0
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x3c]
	add r0, sp, #0x5c
	str r0, [sp, #0x40]
	mov r0, #0x1f
	str r0, [sp, #0x50]
	mov r0, #0x12
	mov r1, #1
	lsl r0, r0, #0xe
	str r0, [sp, #0x44]
	lsl r0, r1, #0x12
	str r0, [sp, #0x48]
	str r1, [sp, #0x54]
	str r7, [sp, #0x58]
	add r0, sp, #0x3c
	bl sub_02021B90
	str r0, [r5, #4]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	mov r2, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_02021EC4
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7CC8: .word 0x00001BB4
	thumb_func_end ov21_021E7B34

	thumb_func_start ov21_021E7CCC
ov21_021E7CCC: ; 0x021E7CCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021BD4
	ldr r0, [r4, #4]
	bl sub_02021BD4
	ldr r0, [r4, #8]
	bl sub_02021BD4
	ldr r0, [r4, #0xc]
	bl sub_02021BD4
	ldr r0, [r4, #0x10]
	bl sub_02021BD4
	pop {r4, pc}
	thumb_func_end ov21_021E7CCC

	thumb_func_start ov21_021E7CF0
ov21_021E7CF0: ; 0x021E7CF0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E7CF0

	thumb_func_start ov21_021E7CF4
ov21_021E7CF4: ; 0x021E7CF4
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E7CF4

	thumb_func_start ov21_021E7CF8
ov21_021E7CF8: ; 0x021E7CF8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x20
	add r6, r1, #0
	bl sub_02023790
	add r4, r0, #0
	ldr r2, _021E7DA0 ; =0x000002B9
	mov r0, #0
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	mov r1, #0x2c
	add r2, r4, #0
	add r6, r0, #0
	bl sub_0200B1B8
	mov r0, #0
	mov r3, #1
	add r1, r4, #0
	add r2, r0, #0
	lsl r3, r3, #8
	bl sub_02002EEC
	add r3, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E7DA4 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	bl sub_0201D78C
	add r0, r6, #0
	mov r1, #0xa
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0xa8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E7DA4 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	mov r3, #0x20
	bl sub_0201D78C
	add r0, r6, #0
	mov r1, #0xa
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0xa8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E7DA4 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	mov r3, #0x98
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E7DA0: .word 0x000002B9
_021E7DA4: .word 0x00020100
	thumb_func_end ov21_021E7CF8

	thumb_func_start ov21_021E7DA8
ov21_021E7DA8: ; 0x021E7DA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x20
	add r1, r7, #0
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r6, #0]
	bl ov21_021D37BC
	add r1, r7, #0
	str r0, [sp, #0x10]
	bl sub_0200B32C
	str r0, [sp, #0x14]
	bl sub_020989C4
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	str r0, [sp, #0x18]
	mov r0, #0x98
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E7EB8 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x14]
	add r0, r0, #4
	mov r3, #0x1a
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x6e
	sub r3, r1, r0
	mov r0, #0xa8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E7EB8 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	ldr r2, _021E7EBC ; =0x000002B9
	mov r0, #0
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [r6, #0]
	bl ov21_021D3914
	add r2, r0, #0
	mov r0, #0x98
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E7EB8 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r3, #0x92
	add r0, r0, #4
	bl sub_0201D78C
	ldr r0, [r6, #0]
	bl ov21_021D3920
	cmp r0, #0
	bne _021E7E78
	add r0, r7, #0
	mov r1, #0x61
	add r2, r4, #0
	bl sub_0200B1B8
	b _021E7E82
_021E7E78:
	add r0, r7, #0
	mov r1, #0x62
	add r2, r4, #0
	bl sub_0200B1B8
_021E7E82:
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe6
	sub r3, r1, r0
	mov r0, #0xa8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E7EB8 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E7EB8: .word 0x00020100
_021E7EBC: .word 0x000002B9
	thumb_func_end ov21_021E7DA8

	thumb_func_start ov21_021E7EC0
ov21_021E7EC0: ; 0x021E7EC0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r4, r0, #0
	str r5, [sp]
	add r3, r4, #0
	ldr r0, [r4, #0]
	mov r1, #0x24
	mov r2, #1
	add r3, #0x18
	bl ov21_021D2808
	str r0, [r4, #0x10]
	add r2, r4, #0
	ldr r0, [r4, #0]
	mov r1, #6
	add r2, #0x1c
	add r3, r5, #0
	bl ov21_021D27E0
	str r0, [r4, #0x14]
	mov r0, #0x5a
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	str r0, [sp, #8]
	add r0, sp, #4
	bl sub_02015128
	str r0, [r4, #4]
	mov r0, #0x5a
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	add r0, sp, #0xc
	bl sub_020151A4
	str r0, [r4, #8]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E7EC0

	thumb_func_start ov21_021E7F20
ov21_021E7F20: ; 0x021E7F20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015164
	ldr r0, [r4, #8]
	bl sub_020151D4
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E7F20

	thumb_func_start ov21_021E7F40
ov21_021E7F40: ; 0x021E7F40
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	mov r0, #0x5a
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x40
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	add r0, sp, #0
	strh r1, [r0, #0xc]
	mov r1, #0x58
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	mov r1, #0x1f
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	strh r2, [r0, #0x1c]
	add r0, sp, #0
	bl sub_02015214
	str r0, [r4, #0xc]
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E7F40

	thumb_func_start ov21_021E7F7C
ov21_021E7F7C: ; 0x021E7F7C
	ldr r3, _021E7F84 ; =sub_02015238
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021E7F84: .word sub_02015238
	thumb_func_end ov21_021E7F7C

	thumb_func_start ov21_021E7F88
ov21_021E7F88: ; 0x021E7F88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x48]
	ldr r0, [r4, #0]
	str r0, [r4, #0x4c]
	ldr r0, [r4, #4]
	str r0, [r4, #0x50]
	add r0, r4, #0
	str r1, [r4, #0x6c]
	add r0, #0xb8
	str r0, [r4, #0x70]
	add r0, r4, #0
	add r0, #0xb8
	str r1, [r0, #0]
	cmp r2, #0
	bne _021E7FB8
	sub r0, r1, #1
	b _021E7FBA
_021E7FB8:
	mov r0, #1
_021E7FBA:
	str r0, [r4, #0x54]
	add r1, r4, #0
	ldr r0, _021E7FCC ; =ov21_021E7FD0
	add r1, #0x40
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #0x3c]
	pop {r4, pc}
	; .align 2, 0
_021E7FCC: .word ov21_021E7FD0
	thumb_func_end ov21_021E7F88

	thumb_func_start ov21_021E7FD0
ov21_021E7FD0: ; 0x021E7FD0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x2c]
	cmp r1, #5
	bhi _021E8078
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E7FE6: ; jump table
	.short _021E7FF2 - _021E7FE6 - 2 ; case 0
	.short _021E7FFA - _021E7FE6 - 2 ; case 1
	.short _021E8002 - _021E7FE6 - 2 ; case 2
	.short _021E8024 - _021E7FE6 - 2 ; case 3
	.short _021E8044 - _021E7FE6 - 2 ; case 4
	.short _021E806E - _021E7FE6 - 2 ; case 5
_021E7FF2:
	mov r0, #2
	str r0, [r4, #0x18]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_021E7FFA:
	add r0, r4, #0
	bl ov21_021E8084
	pop {r4, pc}
_021E8002:
	ldr r1, [r4, #0x14]
	ldr r0, _021E807C ; =0xFFFFFDDE
	mul r0, r1
	str r0, [r4, #0x24]
	mov r0, #0xb5
	ldr r1, [r4, #0x14]
	mvn r0, r0
	mul r0, r1
	str r0, [r4, #0x20]
	mov r0, #3
	str r0, [r4, #0x28]
	mov r0, #1
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov21_021E8084
	pop {r4, pc}
_021E8024:
	ldr r1, [r4, #0x14]
	ldr r0, _021E8080 ; =0x00000222
	mul r0, r1
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x14]
	mov r0, #0xb6
	mul r0, r1
	str r0, [r4, #0x20]
	mov r0, #4
	str r0, [r4, #0x28]
	mov r0, #1
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov21_021E8084
	pop {r4, pc}
_021E8044:
	mov r1, #0
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x14]
	sub r1, #0xb6
	mul r1, r0
	str r1, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	ble _021E8062
	mov r0, #2
	b _021E8064
_021E8062:
	mov r0, #5
_021E8064:
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl ov21_021E8084
	pop {r4, pc}
_021E806E:
	bl sub_0200DA58
	ldr r0, [r4, #0x30]
	mov r1, #1
	str r1, [r0, #0]
_021E8078:
	pop {r4, pc}
	nop
_021E807C: .word 0xFFFFFDDE
_021E8080: .word 0x00000222
	thumb_func_end ov21_021E7FD0

	thumb_func_start ov21_021E8084
ov21_021E8084: ; 0x021E8084
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	ldr r2, [r3, #0x20]
	ldr r1, [r3, #0x24]
	cmp r2, #0
	bge _021E80A6
	ldr r0, [r3, #0x1c]
	add r0, r0, r2
	cmp r0, r1
	blt _021E809E
	str r0, [r3, #0x1c]
	b _021E80B8
_021E809E:
	str r1, [r3, #0x1c]
	ldr r0, [r3, #0x28]
	str r0, [r3, #0x2c]
	b _021E80B8
_021E80A6:
	ldr r0, [r3, #0x1c]
	add r0, r0, r2
	cmp r0, r1
	bgt _021E80B2
	str r0, [r3, #0x1c]
	b _021E80B8
_021E80B2:
	str r1, [r3, #0x1c]
	ldr r0, [r3, #0x28]
	str r0, [r3, #0x2c]
_021E80B8:
	ldr r0, [r3, #0x10]
	str r0, [sp]
	ldr r0, [r3, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl ov21_021E80D4
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov21_021E8084

	thumb_func_start ov21_021E80D4
ov21_021E80D4: ; 0x021E80D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r1, sp, #0x18
	ldrh r1, [r1, #0x14]
	add r7, r2, #0
	str r3, [sp]
	bl sub_020152BC
	add r0, sp, #0x18
	ldrh r0, [r0, #0x14]
	mov r2, #0xe
	lsl r2, r2, #0xe
	asr r0, r0, #4
	lsl r4, r0, #1
	add r0, r4, #1
	lsl r1, r0, #1
	ldr r0, _021E8184 ; =0x020F983C
	mov r3, #0
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r5, r2, #0xc
	orr r5, r0
	mov r2, #0xe
	ldr r0, _021E8184 ; =0x020F983C
	lsl r1, r4, #1
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xe
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	mov r3, #0
	add r0, r0, r2
	adc r1, r3
	lsr r4, r0, #0xc
	lsl r0, r2, #8
	lsl r1, r1, #0x14
	add r0, r5, r0
	orr r4, r1
	str r0, [sp, #4]
	lsl r0, r2, #7
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp]
	add r1, sp, #4
	bl sub_02021C50
	mov r0, #6
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, sp, #4
	bl sub_02021C50
	mov r0, #2
	lsl r0, r0, #0x12
	sub r1, r0, r5
	lsr r0, r0, #1
	sub r0, r0, r4
	str r0, [sp, #8]
	str r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, sp, #4
	bl sub_02021C50
	mov r0, #6
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, sp, #4
	bl sub_02021C50
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E8184: .word 0x020F983C
	thumb_func_end ov21_021E80D4

	thumb_func_start ov21_021E8188
ov21_021E8188: ; 0x021E8188
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	add r5, r4, #0
	str r0, [r4, #0x74]
	ldr r0, [r4, #0xc]
	add r5, #0xb8
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x7c]
	add r0, r4, #0
	ldr r1, [r4, #0]
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, [r4, #4]
	add r0, #0x84
	str r1, [r0, #0]
	add r1, r4, #0
	mov r0, #0
	add r1, #0x88
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0x94
	str r5, [r1, #0]
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021E81D4
	add r0, r4, #0
	add r0, #0x8c
	str r2, [r0, #0]
	add r0, r4, #0
	add r0, #0x90
	str r3, [r0, #0]
	b _021E81E4
_021E81D4:
	add r0, r4, #0
	neg r1, r2
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r4, #0
	neg r1, r3
	add r0, #0x90
	str r1, [r0, #0]
_021E81E4:
	add r1, r4, #0
	ldr r0, _021E81F4 ; =ov21_021E81F8
	add r1, #0x74
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #0x3c]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021E81F4: .word ov21_021E81F8
	thumb_func_end ov21_021E8188

	thumb_func_start ov21_021E81F8
ov21_021E81F8: ; 0x021E81F8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	ldr r2, [r5, #0x1c]
	bge _021E821C
	ldr r1, [r5, #0x14]
	add r0, r1, r0
	cmp r0, r2
	blt _021E8216
	str r0, [r5, #0x14]
	b _021E822C
_021E8216:
	str r2, [r5, #0x14]
	mov r4, #1
	b _021E822C
_021E821C:
	ldr r1, [r5, #0x14]
	add r0, r1, r0
	cmp r0, r2
	bgt _021E8228
	str r0, [r5, #0x14]
	b _021E822C
_021E8228:
	str r2, [r5, #0x14]
	mov r4, #1
_021E822C:
	ldr r0, [r5, #0x10]
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	bl ov21_021E80D4
	cmp r4, #1
	bne _021E8254
	add r0, r6, #0
	bl sub_0200DA58
	ldr r0, [r5, #0x20]
	mov r1, #1
	str r1, [r0, #0]
_021E8254:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E81F8

	thumb_func_start ov21_021E8258
ov21_021E8258: ; 0x021E8258
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	bne _021E8266
	ldr r1, [r5, #4]
	b _021E8268
_021E8266:
	ldr r1, [r5, #0]
_021E8268:
	add r0, #0x98
	str r1, [r0, #0]
	neg r0, r4
	lsl r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_02021D28
	add r1, r5, #0
	ldr r2, [r0, #0]
	add r1, #0x9c
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	add r0, r5, #0
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #0
	add r0, #0xac
	str r2, [r0, #0]
	add r0, r5, #0
	add r0, #0xa4
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0xb0
	str r2, [r0, #0]
	add r0, r5, #0
	add r1, #0xb8
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xb8
	str r2, [r0, #0]
	add r1, r5, #0
	ldr r0, _021E82C4 ; =ov21_021E82C8
	add r1, #0x98
	bl sub_0200D9E8
	str r0, [r5, #0x3c]
	pop {r3, r4, r5, pc}
	nop
_021E82C4: .word ov21_021E82C8
	thumb_func_end ov21_021E8258

	thumb_func_start ov21_021E82C8
ov21_021E82C8: ; 0x021E82C8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #3
	bhi _021E83D2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E82E2: ; jump table
	.short _021E82EA - _021E82E2 - 2 ; case 0
	.short _021E833C - _021E82E2 - 2 ; case 1
	.short _021E8370 - _021E82E2 - 2 ; case 2
	.short _021E83B6 - _021E82E2 - 2 ; case 3
_021E82EA:
	ldr r0, [r4, #0x14]
	add r3, r0, #1
	str r3, [r4, #0x14]
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	add r1, r3, #0
	mul r1, r3
	add r2, r0, #0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	mul r2, r3
	asr r0, r0, #1
	add r2, r2, r0
	ldr r0, [r4, #4]
	str r0, [sp]
	ldr r1, [r4, #8]
	lsl r0, r2, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _021E83D2
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add sp, #0xc
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021E833C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021E8358
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #8]
	add r1, sp, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	bl sub_02021C50
_021E8358:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #1
	ble _021E83D2
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021E8370:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021E838C
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #8]
	add r1, sp, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	bl sub_02021C50
_021E838C:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #1
	ble _021E83D2
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	ble _021E83AC
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021E83AC:
	ldr r0, [r4, #0x18]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021E83B6:
	ldr r0, [r4, #4]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	bl sub_02021C50
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x1c]
	mov r1, #1
	str r1, [r0, #0]
_021E83D2:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E82C8

	thumb_func_start ov21_021E83D8
ov21_021E83D8: ; 0x021E83D8
	push {r4, r5}
	mov r4, #0
	cmp r1, #0
	ble _021E83FA
	add r5, r0, #0
_021E83E2:
	ldr r3, [r5, #0]
	cmp r3, r2
	blt _021E83F2
	mov r1, #0x14
	mul r1, r4
	add r0, r0, r1
	pop {r4, r5}
	bx lr
_021E83F2:
	add r4, r4, #1
	add r5, #0x14
	cmp r4, r1
	blt _021E83E2
_021E83FA:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov21_021E83D8

	thumb_func_start ov21_021E8400
ov21_021E8400: ; 0x021E8400
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r7, r1, #0
	add r4, r2, #0
	bl sub_02009E34
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #0
	bl sub_0200A72C
	add r1, r5, #0
	str r4, [sp]
	add r1, #0xbc
	str r0, [sp, #4]
	ldr r0, [r6, #0xc]
	ldr r1, [r1, #0]
	mov r2, #0x30
	add r3, r7, #0
	bl sub_0200393C
	ldr r0, [sp, #4]
	mov r1, #1
	bl NNS_G2dGetImagePaletteLocation
	add r2, r5, #0
	add r2, #0xbc
	add r1, r0, #0
	ldr r2, [r2, #0]
	mov r0, #0xe
	mov r3, #0x60
	bl sub_0201DC68
	ldr r0, [r5, #0x28]
	bl sub_02009E34
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl sub_0200A72C
	add r1, r5, #0
	str r4, [sp]
	add r1, #0xc0
	str r0, [sp, #8]
	ldr r0, [r6, #0xc]
	ldr r1, [r1, #0]
	mov r2, #0x50
	add r3, r7, #0
	bl sub_0200393C
	ldr r0, [sp, #8]
	mov r1, #1
	bl NNS_G2dGetImagePaletteLocation
	add r5, #0xc0
	add r1, r0, #0
	ldr r2, [r5, #0]
	mov r0, #0xe
	mov r3, #0xa0
	bl sub_0201DC68
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E8400

	.rodata


	.global Unk_ov21_021E9DB0
Unk_ov21_021E9DB0: ; 0x021E9DB0
	.incbin "incbin/overlay21_rodata.bin", 0x28C, 0x154

