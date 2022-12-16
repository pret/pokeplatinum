	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov21_021D85B0
ov21_021D85B0: ; 0x021D85B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021D86E8
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021D8724
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021D874C
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021D87C8
	str r0, [r5, #0x24]
	ldr r0, _021D85F8 ; =ov21_021D87CC
	str r0, [r5, #8]
	ldr r0, _021D85FC ; =ov21_021D8804
	str r0, [r5, #0xc]
	ldr r0, _021D8600 ; =ov21_021D8928
	str r0, [r5, #0x10]
	ldr r0, _021D8604 ; =ov21_021D893C
	str r0, [r5, #0x14]
	ldr r0, _021D8608 ; =ov21_021D89B8
	str r0, [r5, #0x18]
	ldr r0, _021D860C ; =ov21_021D89F4
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D85F8: .word ov21_021D87CC
_021D85FC: .word ov21_021D8804
_021D8600: .word ov21_021D8928
_021D8604: .word ov21_021D893C
_021D8608: .word ov21_021D89B8
_021D860C: .word ov21_021D89F4
	thumb_func_end ov21_021D85B0

	thumb_func_start ov21_021D8610
ov21_021D8610: ; 0x021D8610
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021D8788
	ldr r0, [r4, #4]
	bl ov21_021D879C
	ldr r0, [r4, #0x20]
	bl ov21_021D87B0
	pop {r4, pc}
	thumb_func_end ov21_021D8610

	thumb_func_start ov21_021D8628
ov21_021D8628: ; 0x021D8628
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #0]
	cmp r5, #4
	blt _021D8636
	bl sub_02022974
_021D8636:
	str r5, [r4, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8628

	thumb_func_start ov21_021D863C
ov21_021D863C: ; 0x021D863C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D863C

	thumb_func_start ov21_021D8644
ov21_021D8644: ; 0x021D8644
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #0]
	cmp r5, #6
	blt _021D8652
	bl sub_02022974
_021D8652:
	str r5, [r4, #0x10]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8644

	thumb_func_start ov21_021D8658
ov21_021D8658: ; 0x021D8658
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D8658

	thumb_func_start ov21_021D8660
ov21_021D8660: ; 0x021D8660
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #0]
	cmp r5, #0xa
	blt _021D866E
	bl sub_02022974
_021D866E:
	str r5, [r4, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8660

	thumb_func_start ov21_021D8674
ov21_021D8674: ; 0x021D8674
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D8674

	thumb_func_start ov21_021D867C
ov21_021D867C: ; 0x021D867C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	ldr r4, [r0, #0]
	cmp r5, #0x12
	blt _021D868C
	bl sub_02022974
_021D868C:
	cmp r6, #0
	bne _021D8694
	str r5, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021D8694:
	str r5, [r4, #0x1c]
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D867C

	thumb_func_start ov21_021D8698
ov21_021D8698: ; 0x021D8698
	ldr r0, [r0, #0]
	cmp r1, #0
	bne _021D86A2
	ldr r0, [r0, #0x18]
	bx lr
_021D86A2:
	ldr r0, [r0, #0x1c]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D8698

	thumb_func_start ov21_021D86A8
ov21_021D86A8: ; 0x021D86A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #0]
	cmp r5, #0xf
	blt _021D86B6
	bl sub_02022974
_021D86B6:
	str r5, [r4, #0x20]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D86A8

	thumb_func_start ov21_021D86BC
ov21_021D86BC: ; 0x021D86BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D86BC

	thumb_func_start ov21_021D86C4
ov21_021D86C4: ; 0x021D86C4
	ldr r2, [r0, #0]
	mov r0, #1
	str r0, [r2, #0x24]
	str r1, [r2, #0x28]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D86C4

	thumb_func_start ov21_021D86D0
ov21_021D86D0: ; 0x021D86D0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D86D0

	thumb_func_start ov21_021D86D8
ov21_021D86D8: ; 0x021D86D8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D86D8

	thumb_func_start ov21_021D86E0
ov21_021D86E0: ; 0x021D86E0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x34]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D86E0

	thumb_func_start ov21_021D86E8
ov21_021D86E8: ; 0x021D86E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x38
	bl sub_02018144
	add r4, r0, #0
	bne _021D86FA
	bl sub_02022974
_021D86FA:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x38
	bl sub_020D5124
	add r0, r5, #0
	bl ov21_021D138C
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov21_021D1410
	ldr r0, [r0, #0]
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D86E8

	thumb_func_start ov21_021D8724
ov21_021D8724: ; 0x021D8724
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021D8736
	bl sub_02022974
_021D8736:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D8724

	thumb_func_start ov21_021D874C
ov21_021D874C: ; 0x021D874C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov21_021D87C8
	add r7, r0, #0
	mov r1, #0x14
	mul r7, r1
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021D876C
	bl sub_02022974
_021D876C:
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_020D5124
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #2
	bl ov21_021D47F0
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D874C

	thumb_func_start ov21_021D8788
ov21_021D8788: ; 0x021D8788
	push {r4, lr}
	add r4, r0, #0
	bne _021D8792
	bl sub_02022974
_021D8792:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8788

	thumb_func_start ov21_021D879C
ov21_021D879C: ; 0x021D879C
	push {r4, lr}
	add r4, r0, #0
	bne _021D87A6
	bl sub_02022974
_021D87A6:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D879C

	thumb_func_start ov21_021D87B0
ov21_021D87B0: ; 0x021D87B0
	push {r4, lr}
	add r4, r0, #0
	bne _021D87BA
	bl sub_02022974
_021D87BA:
	add r0, r4, #0
	bl ov21_021D4660
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021D87B0

	thumb_func_start ov21_021D87C8
ov21_021D87C8: ; 0x021D87C8
	mov r0, #1
	bx lr
	thumb_func_end ov21_021D87C8

	thumb_func_start ov21_021D87CC
ov21_021D87CC: ; 0x021D87CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #4
	bl sub_02018144
	add r6, r0, #0
	bne _021D87E2
	bl sub_02022974
_021D87E2:
	mov r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	str r6, [r5, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D87CC

	thumb_func_start ov21_021D8804
ov21_021D8804: ; 0x021D8804
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #1
	bne _021D8818
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, pc}
_021D8818:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021D8824
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, pc}
_021D8824:
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _021D891A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D8836: ; jump table
	.short _021D8840 - _021D8836 - 2 ; case 0
	.short _021D8876 - _021D8836 - 2 ; case 1
	.short _021D8894 - _021D8836 - 2 ; case 2
	.short _021D88A4 - _021D8836 - 2 ; case 3
	.short _021D8908 - _021D8836 - 2 ; case 4
_021D8840:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021D884A
	mov r0, #0
	str r0, [r4, #0x2c]
_021D884A:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _021D891E
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021D8866
	ldr r2, [r4, #0]
	mov r0, #2
	ldr r1, [r2, #0]
	orr r0, r1
	str r0, [r2, #0]
	mov r0, #4
	str r0, [r4, #0x30]
	b _021D891E
_021D8866:
	mov r0, #1
	str r0, [r4, #0x30]
	mov r0, #4
	str r0, [r4, #0x34]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D891E
_021D8876:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bpl _021D891E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #2
	str r0, [r4, #0x30]
	mov r0, #0x20
	str r0, [r4, #0x34]
	ldr r0, _021D8924 ; =0x000005FF
	bl sub_02005748
	b _021D891E
_021D8894:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bpl _021D891E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D891E
_021D88A4:
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	ldr r1, [r4, #0x1c]
	str r1, [sp]
	ldr r1, [r4, #0x20]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl ov21_021D3464
	cmp r0, #1
	bne _021D88EE
	ldr r2, [r4, #0]
	mov r0, #2
	ldr r1, [r2, #0]
	orr r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov21_021D3810
	mov r0, #0x5d
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #6
	str r2, [r1, r0]
	ldr r0, [r4, #8]
	str r2, [r0, #0x18]
	b _021D891E
_021D88EE:
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #3
	str r0, [r4, #0x30]
	mov r0, #4
	str r0, [r4, #0x34]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D891E
_021D8908:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bpl _021D891E
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r5, #0]
	b _021D891E
_021D891A:
	bl sub_02022974
_021D891E:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D8924: .word 0x000005FF
	thumb_func_end ov21_021D8804

	thumb_func_start ov21_021D8928
ov21_021D8928: ; 0x021D8928
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8928

	thumb_func_start ov21_021D893C
ov21_021D893C: ; 0x021D893C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	ldr r3, [r3, #8]
	ldr r0, [r4, #8]
	cmp r1, #3
	bhi _021D89B2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D8958: ; jump table
	.short _021D8960 - _021D8958 - 2 ; case 0
	.short _021D897A - _021D8958 - 2 ; case 1
	.short _021D899C - _021D8958 - 2 ; case 2
	.short _021D89AE - _021D8958 - 2 ; case 3
_021D8960:
	ldr r0, [r4, #4]
	mov r1, #0x64
	bl sub_02018144
	str r0, [r4, #8]
	mov r1, #0
	mov r2, #0x64
	bl sub_020D5124
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D89B2
_021D897A:
	ldr r1, [r4, #4]
	str r1, [sp]
	add r1, r5, #0
	bl ov21_021D8A7C
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	sub r2, #0x10
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D89B2
_021D899C:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _021D89B2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D89B2
_021D89AE:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D89B2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D893C

	thumb_func_start ov21_021D89B8
ov21_021D89B8: ; 0x021D89B8
	push {r4, lr}
	add r3, r1, #0
	ldr r1, [r2, #0x30]
	add r4, r0, #0
	ldr r0, [r3, #8]
	cmp r1, #0
	bne _021D89D0
	ldr r3, [r3, #4]
	add r1, r4, #0
	bl ov21_021D8ED4
	b _021D89EE
_021D89D0:
	cmp r1, #1
	beq _021D89D8
	cmp r1, #3
	bne _021D89E2
_021D89D8:
	ldr r3, [r3, #4]
	add r1, r4, #0
	bl ov21_021D9320
	b _021D89EE
_021D89E2:
	cmp r1, #4
	beq _021D89EE
	ldr r3, [r3, #4]
	add r1, r4, #0
	bl ov21_021D9390
_021D89EE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D89B8

	thumb_func_start ov21_021D89F4
ov21_021D89F4: ; 0x021D89F4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021D8A76
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D8A10: ; jump table
	.short _021D8A1A - _021D8A10 - 2 ; case 0
	.short _021D8A40 - _021D8A10 - 2 ; case 1
	.short _021D8A52 - _021D8A10 - 2 ; case 2
	.short _021D8A60 - _021D8A10 - 2 ; case 3
	.short _021D8A70 - _021D8A10 - 2 ; case 4
_021D8A1A:
	ldr r0, [r2, #0x28]
	cmp r0, #0
	bne _021D8A3A
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	add r1, r0, #0
	sub r1, #0x16
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D8A76
_021D8A3A:
	mov r0, #2
	str r0, [r4, #0]
	b _021D8A76
_021D8A40:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _021D8A76
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D8A76
_021D8A52:
	add r1, r3, #0
	bl ov21_021D8B40
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D8A76
_021D8A60:
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D8A76
_021D8A70:
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021D8A76:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D89F4

	thumb_func_start ov21_021D8A7C
ov21_021D8A7C: ; 0x021D8A7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0]
	mov r1, #2
	ldr r0, [r0, #0]
	add r4, r2, #0
	ldr r6, [sp, #0x18]
	bl sub_02019EBC
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	ldr r0, [r5, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	ldr r0, [r5, #0]
	mov r1, #7
	add r0, r0, #4
	bl sub_0201C2B4
	add r0, r5, #0
	bl ov21_021D8C00
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021D8B8C
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov21_021D8BC4
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov21_021D8C1C
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov21_021D8D0C
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D8DD4
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D8F98
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D9054
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D90B4
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D9234
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D9240
	ldr r1, [r4, #0x20]
	add r0, r7, #0
	bl ov21_021D924C
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8A7C

	thumb_func_start ov21_021D8B40
ov21_021D8B40: ; 0x021D8B40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021D8DC0
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D8CC8
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D8BEC
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201C2B4
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019060
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8B40

	thumb_func_start ov21_021D8B8C
ov21_021D8B8C: ; 0x021D8B8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r4, r2, #0
	str r4, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x1c
	mov r3, #3
	bl ov21_021D2724
	mov r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	mov r2, #0
	ldr r0, [r5, #0]
	mov r1, #5
	add r3, r2, #0
	bl ov21_021D276C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8B8C

	thumb_func_start ov21_021D8BC4
ov21_021D8BC4: ; 0x021D8BC4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _021D8BD4
	mov r2, #0x2a
	b _021D8BD6
_021D8BD4:
	mov r2, #0x28
_021D8BD6:
	str r3, [sp]
	ldr r0, [r1, #0]
	add r3, r4, #0
	add r1, r2, #0
	mov r2, #1
	add r3, #0x60
	bl ov21_021D27B8
	str r0, [r4, #0x5c]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D8BC4

	thumb_func_start ov21_021D8BEC
ov21_021D8BEC: ; 0x021D8BEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8BEC

	thumb_func_start ov21_021D8C00
ov21_021D8C00: ; 0x021D8C00
	push {r4, lr}
	ldr r0, [r0, #0]
	bl ov21_021D2170
	add r4, r0, #0
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_02008780
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8C00

	thumb_func_start ov21_021D8C1C
ov21_021D8C1C: ; 0x021D8C1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021D8CB8 ; =0x00003AE9
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x51
	bl sub_02009A4C
	str r0, [r5, #0x24]
	bl sub_0200A3DC
	ldr r0, [r5, #0x24]
	bl sub_02009D4C
	ldr r0, _021D8CBC ; =0x00003A9B
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #0x28]
	bl sub_0200A640
	ldr r0, [r5, #0x28]
	bl sub_02009D4C
	ldr r0, _021D8CC0 ; =0x00003AE7
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x4f
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x2c]
	ldr r0, _021D8CC4 ; =0x00003AE8
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x50
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0x30]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D8CB8: .word 0x00003AE9
_021D8CBC: .word 0x00003A9B
_021D8CC0: .word 0x00003AE7
_021D8CC4: .word 0x00003AE8
	thumb_func_end ov21_021D8C1C

	thumb_func_start ov21_021D8CC8
ov21_021D8CC8: ; 0x021D8CC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	ldr r4, [r1, #0]
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
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D8CC8

	thumb_func_start ov21_021D8D0C
ov21_021D8D0C: ; 0x021D8D0C
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r6, r3, #0
	ldr r4, [r1, #0]
	ldr r3, _021D8DBC ; =0x00003AE8
	add r5, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	ldr r2, [r4, r0]
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
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x4c
	sub r2, #0x4d
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x1f
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	lsl r0, r0, #0x13
	str r0, [sp, #0x34]
	mov r0, #0x29
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl sub_02021B90
	mov r1, #3
	str r0, [r5, #0x20]
	bl sub_02021D6C
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x34]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021B90
	str r0, [r5, #0x58]
	mov r1, #0x11
	bl sub_02021D6C
	ldr r0, [r5, #0x58]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #0x58]
	mov r1, #1
	bl sub_02021CF8
	ldr r0, [r5, #0x58]
	mov r1, #0
	bl sub_02021E80
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D8DBC: .word 0x00003AE8
	thumb_func_end ov21_021D8D0C

	thumb_func_start ov21_021D8DC0
ov21_021D8DC0: ; 0x021D8DC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02021BD4
	ldr r0, [r4, #0x58]
	bl sub_02021BD4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D8DC0

	thumb_func_start ov21_021D8DD4
ov21_021D8DD4: ; 0x021D8DD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, [r0, #0]
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x20
	add r6, r1, #0
	add r7, r2, #0
	str r0, [sp, #4]
	add r0, r5, #4
	mov r1, #0
	mov r2, #0x18
	mov r3, #8
	bl sub_0201AE78
	cmp r6, #3
	bhi _021D8E18
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D8E02: ; jump table
	.short _021D8E0A - _021D8E02 - 2 ; case 0
	.short _021D8E0E - _021D8E02 - 2 ; case 1
	.short _021D8E12 - _021D8E02 - 2 ; case 2
	.short _021D8E16 - _021D8E02 - 2 ; case 3
_021D8E0A:
	mov r4, #0x5a
	b _021D8E18
_021D8E0E:
	mov r4, #0x57
	b _021D8E18
_021D8E12:
	mov r4, #0x58
	b _021D8E18
_021D8E16:
	mov r4, #0x59
_021D8E18:
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021D1CE0
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #0xd0
	sub r0, r1, r0
	lsr r4, r0, #1
	add r0, r6, #0
	add r4, #0x18
	bl sub_02023C5C
	lsl r1, r0, #4
	mov r0, #0x20
	sub r0, r0, r1
	lsr r0, r0, #1
	add r0, #8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D8E64 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r6, #0
	add r3, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D8E64: .word 0x00020100
	thumb_func_end ov21_021D8DD4

	thumb_func_start ov21_021D8E68
ov21_021D8E68: ; 0x021D8E68
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r4, [r0, #0]
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x20
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, r4, #4
	mov r1, #0
	mov r2, #0x18
	mov r3, #8
	bl sub_0201AE78
	mov r0, #0x5d
	add r1, r5, #0
	bl ov21_021D1CE0
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #0xd0
	sub r0, r1, r0
	lsr r5, r0, #1
	add r0, r6, #0
	add r5, #0x18
	bl sub_02023C5C
	lsl r1, r0, #4
	mov r0, #0x20
	sub r0, r0, r1
	lsr r0, r0, #1
	add r0, #8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D8ED0 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #4
	add r2, r6, #0
	add r3, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D8ED0: .word 0x00020100
	thumb_func_end ov21_021D8E68

	thumb_func_start ov21_021D8ED4
ov21_021D8ED4: ; 0x021D8ED4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	ldr r1, [r4, #0x2c]
	ldr r0, [r5, #0x18]
	add r7, r3, #0
	cmp r1, r0
	beq _021D8EF8
	str r1, [r5, #0x18]
	cmp r1, #1
	bne _021D8EF8
	mov r0, #0x40
	str r0, [r5, #0x1c]
	add r0, r6, #0
	add r1, r7, #0
	bl ov21_021D8E68
_021D8EF8:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	ble _021D8F04
	sub r0, r0, #1
	str r0, [r5, #0x1c]
	b _021D8F16
_021D8F04:
	bne _021D8F16
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	bl ov21_021D8DD4
	ldr r0, [r5, #0x1c]
	sub r0, r0, #1
	str r0, [r5, #0x1c]
_021D8F16:
	ldr r1, [r4, #0xc]
	ldr r0, [r5, #0]
	cmp r0, r1
	beq _021D8F34
	add r0, r6, #0
	add r2, r7, #0
	bl ov21_021D8F98
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	bl ov21_021D8DD4
	ldr r0, [r4, #0xc]
	str r0, [r5, #0]
_021D8F34:
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #4]
	cmp r0, r1
	beq _021D8F48
	add r0, r6, #0
	add r2, r7, #0
	bl ov21_021D9054
	ldr r0, [r4, #0x10]
	str r0, [r5, #4]
_021D8F48:
	ldr r1, [r4, #0x14]
	ldr r0, [r5, #8]
	cmp r0, r1
	beq _021D8F5C
	add r0, r6, #0
	add r2, r7, #0
	bl ov21_021D90B4
	ldr r0, [r4, #0x14]
	str r0, [r5, #8]
_021D8F5C:
	ldr r1, [r4, #0x18]
	ldr r0, [r5, #0xc]
	cmp r0, r1
	beq _021D8F70
	add r0, r6, #0
	add r2, r7, #0
	bl ov21_021D9234
	ldr r0, [r4, #0x18]
	str r0, [r5, #0xc]
_021D8F70:
	ldr r1, [r4, #0x1c]
	ldr r0, [r5, #0x10]
	cmp r0, r1
	beq _021D8F84
	add r0, r6, #0
	add r2, r7, #0
	bl ov21_021D9240
	ldr r0, [r4, #0x1c]
	str r0, [r5, #0x10]
_021D8F84:
	ldr r1, [r4, #0x20]
	ldr r0, [r5, #0x14]
	cmp r0, r1
	beq _021D8F96
	add r0, r5, #0
	bl ov21_021D924C
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x14]
_021D8F96:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D8ED4

	thumb_func_start ov21_021D8F98
ov21_021D8F98: ; 0x021D8F98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	str r2, [sp]
	add r7, r1, #0
	str r2, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #0x2b
	mov r2, #1
	add r3, sp, #0x14
	bl ov21_021D27B8
	ldr r2, [sp, #0x14]
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #0x10]
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
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	cmp r7, #3
	bhi _021D9008
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D8FEA: ; jump table
	.short _021D8FF2 - _021D8FEA - 2 ; case 0
	.short _021D8FF8 - _021D8FEA - 2 ; case 1
	.short _021D8FFE - _021D8FEA - 2 ; case 2
	.short _021D9004 - _021D8FEA - 2 ; case 3
_021D8FF2:
	mov r5, #6
	mov r6, #0x2c
	b _021D9008
_021D8FF8:
	mov r5, #9
	mov r6, #0x2d
	b _021D9008
_021D8FFE:
	mov r5, #0xc
	mov r6, #0x2e
	b _021D9008
_021D9004:
	mov r5, #0x11
	mov r6, #0x2f
_021D9008:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r2, #1
	add r3, sp, #0x14
	bl ov21_021D27B8
	add r6, r0, #0
	lsl r0, r5, #0x18
	ldr r2, [sp, #0x14]
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #6
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
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D8F98

	thumb_func_start ov21_021D9054
ov21_021D9054: ; 0x021D9054
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r4, [r0, #0]
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0x10
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	add r0, r4, #4
	mov r1, #0
	mov r2, #0x58
	mov r3, #0x34
	bl sub_0201AE78
	add r5, #0x51
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021D1CE0
	add r5, r0, #0
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	mov r3, #0x50
	bl sub_02002EEC
	add r3, r0, #0
	mov r0, #0x34
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D90B0 ; =0x00040300
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r3, #0x58
	add r0, r4, #4
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D90B0: .word 0x00040300
	thumb_func_end ov21_021D9054

	thumb_func_start ov21_021D90B4
ov21_021D90B4: ; 0x021D90B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, [r0, #0]
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0x10
	add r6, r1, #0
	add r7, r2, #0
	str r0, [sp, #4]
	add r0, r5, #4
	mov r1, #0
	mov r2, #0x58
	mov r3, #0x4d
	bl sub_0201AE78
	cmp r6, #9
	bhi _021D911C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D90E2: ; jump table
	.short _021D90F6 - _021D90E2 - 2 ; case 0
	.short _021D90FA - _021D90E2 - 2 ; case 1
	.short _021D90FE - _021D90E2 - 2 ; case 2
	.short _021D9102 - _021D90E2 - 2 ; case 3
	.short _021D9106 - _021D90E2 - 2 ; case 4
	.short _021D910A - _021D90E2 - 2 ; case 5
	.short _021D910E - _021D90E2 - 2 ; case 6
	.short _021D9112 - _021D90E2 - 2 ; case 7
	.short _021D9116 - _021D90E2 - 2 ; case 8
	.short _021D911A - _021D90E2 - 2 ; case 9
_021D90F6:
	mov r4, #0x7e
	b _021D911C
_021D90FA:
	mov r4, #0x36
	b _021D911C
_021D90FE:
	mov r4, #0x37
	b _021D911C
_021D9102:
	mov r4, #0x38
	b _021D911C
_021D9106:
	mov r4, #0x39
	b _021D911C
_021D910A:
	mov r4, #0x3a
	b _021D911C
_021D910E:
	mov r4, #0x3b
	b _021D911C
_021D9112:
	mov r4, #0x3c
	b _021D911C
_021D9116:
	mov r4, #0x3d
	b _021D911C
_021D911A:
	mov r4, #0x3e
_021D911C:
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021D1CE0
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	mov r3, #0x50
	bl sub_02002EEC
	add r3, r0, #0
	mov r0, #0x4d
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D9158 ; =0x00040300
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r3, #0x58
	add r0, r5, #4
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D9158: .word 0x00040300
	thumb_func_end ov21_021D90B4

	thumb_func_start ov21_021D915C
ov21_021D915C: ; 0x021D915C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r5, [r0, #0]
	add r7, r3, #0
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0x10
	lsl r3, r7, #0x10
	add r6, r1, #0
	str r2, [sp, #0x10]
	str r0, [sp, #4]
	add r0, r5, #4
	mov r1, #0
	mov r2, #0x58
	lsr r3, r3, #0x10
	bl sub_0201AE78
	cmp r6, #0x11
	bhi _021D91F8
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D918E: ; jump table
	.short _021D91B2 - _021D918E - 2 ; case 0
	.short _021D91B6 - _021D918E - 2 ; case 1
	.short _021D91BA - _021D918E - 2 ; case 2
	.short _021D91BE - _021D918E - 2 ; case 3
	.short _021D91C2 - _021D918E - 2 ; case 4
	.short _021D91C6 - _021D918E - 2 ; case 5
	.short _021D91CA - _021D918E - 2 ; case 6
	.short _021D91CE - _021D918E - 2 ; case 7
	.short _021D91D2 - _021D918E - 2 ; case 8
	.short _021D91D6 - _021D918E - 2 ; case 9
	.short _021D91DA - _021D918E - 2 ; case 10
	.short _021D91DE - _021D918E - 2 ; case 11
	.short _021D91E2 - _021D918E - 2 ; case 12
	.short _021D91E6 - _021D918E - 2 ; case 13
	.short _021D91EA - _021D918E - 2 ; case 14
	.short _021D91EE - _021D918E - 2 ; case 15
	.short _021D91F2 - _021D918E - 2 ; case 16
	.short _021D91F6 - _021D918E - 2 ; case 17
_021D91B2:
	mov r4, #0x35
	b _021D91F8
_021D91B6:
	mov r4, #0x40
	b _021D91F8
_021D91BA:
	mov r4, #0x46
	b _021D91F8
_021D91BE:
	mov r4, #0x49
	b _021D91F8
_021D91C2:
	mov r4, #0x47
	b _021D91F8
_021D91C6:
	mov r4, #0x48
	b _021D91F8
_021D91CA:
	mov r4, #0x4c
	b _021D91F8
_021D91CE:
	mov r4, #0x4b
	b _021D91F8
_021D91D2:
	mov r4, #0x4d
	b _021D91F8
_021D91D6:
	mov r4, #0x50
	b _021D91F8
_021D91DA:
	mov r4, #0x41
	b _021D91F8
_021D91DE:
	mov r4, #0x42
	b _021D91F8
_021D91E2:
	mov r4, #0x44
	b _021D91F8
_021D91E6:
	mov r4, #0x43
	b _021D91F8
_021D91EA:
	mov r4, #0x4a
	b _021D91F8
_021D91EE:
	mov r4, #0x45
	b _021D91F8
_021D91F2:
	mov r4, #0x4e
	b _021D91F8
_021D91F6:
	mov r4, #0x4f
_021D91F8:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl ov21_021D1CE0
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	mov r3, #0x50
	bl sub_02002EEC
	add r3, r0, #0
	str r7, [sp]
	mov r1, #0
	ldr r0, _021D9230 ; =0x00040300
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r3, #0x58
	add r0, r5, #4
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D9230: .word 0x00040300
	thumb_func_end ov21_021D915C

	thumb_func_start ov21_021D9234
ov21_021D9234: ; 0x021D9234
	push {r3, lr}
	mov r3, #0x66
	bl ov21_021D915C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9234

	thumb_func_start ov21_021D9240
ov21_021D9240: ; 0x021D9240
	push {r3, lr}
	mov r3, #0x78
	bl ov21_021D915C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9240

	thumb_func_start ov21_021D924C
ov21_021D924C: ; 0x021D924C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	ldr r0, [r4, #0x20]
	bne _021D925E
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
_021D925E:
	mov r1, #1
	bl sub_02021CAC
	cmp r5, #0xe
	bhi _021D931C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D9274: ; jump table
	.short _021D931C - _021D9274 - 2 ; case 0
	.short _021D9292 - _021D9274 - 2 ; case 1
	.short _021D929C - _021D9274 - 2 ; case 2
	.short _021D92A6 - _021D9274 - 2 ; case 3
	.short _021D92B0 - _021D9274 - 2 ; case 4
	.short _021D92BA - _021D9274 - 2 ; case 5
	.short _021D92C4 - _021D9274 - 2 ; case 6
	.short _021D92CE - _021D9274 - 2 ; case 7
	.short _021D92D8 - _021D9274 - 2 ; case 8
	.short _021D92E2 - _021D9274 - 2 ; case 9
	.short _021D92EC - _021D9274 - 2 ; case 10
	.short _021D92F6 - _021D9274 - 2 ; case 11
	.short _021D9300 - _021D9274 - 2 ; case 12
	.short _021D930A - _021D9274 - 2 ; case 13
	.short _021D9314 - _021D9274 - 2 ; case 14
_021D9292:
	ldr r0, [r4, #0x20]
	mov r1, #3
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D929C:
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D92A6:
	ldr r0, [r4, #0x20]
	mov r1, #5
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D92B0:
	ldr r0, [r4, #0x20]
	mov r1, #6
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D92BA:
	ldr r0, [r4, #0x20]
	mov r1, #7
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D92C4:
	ldr r0, [r4, #0x20]
	mov r1, #8
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D92CE:
	ldr r0, [r4, #0x20]
	mov r1, #9
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D92D8:
	ldr r0, [r4, #0x20]
	mov r1, #0xa
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D92E2:
	ldr r0, [r4, #0x20]
	mov r1, #0xb
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D92EC:
	ldr r0, [r4, #0x20]
	mov r1, #0xc
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D92F6:
	ldr r0, [r4, #0x20]
	mov r1, #0xd
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D9300:
	ldr r0, [r4, #0x20]
	mov r1, #0xe
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D930A:
	ldr r0, [r4, #0x20]
	mov r1, #0xf
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D9314:
	ldr r0, [r4, #0x20]
	mov r1, #0x10
	bl sub_02021D6C
_021D931C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D924C

	thumb_func_start ov21_021D9320
ov21_021D9320: ; 0x021D9320
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r2, #0x34]
	add r4, r1, #0
	cmp r0, #4
	bne _021D9384
	ldr r0, [r2, #0x30]
	cmp r0, #1
	bne _021D9358
	mov r1, #0
	str r1, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x14
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldr r1, [r4, #0]
	add r0, r5, #0
	ldr r1, [r1, #0]
	ldr r3, [r5, #0x60]
	add r0, #0x34
	mov r2, #2
	bl ov21_021D1558
	b _021D9384
_021D9358:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r3, #0
	bl ov21_021D9454
	mov r0, #0xc
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldr r1, [r4, #0]
	add r0, r5, #0
	ldr r1, [r1, #0]
	ldr r3, [r5, #0x60]
	add r0, #0x34
	mov r2, #2
	bl ov21_021D1558
_021D9384:
	add r5, #0x34
	add r0, r5, #0
	bl ov21_021D157C
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov21_021D9320

	thumb_func_start ov21_021D9390
ov21_021D9390: ; 0x021D9390
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	ldr r0, [r6, #0x34]
	add r4, r1, #0
	add r7, r3, #0
	cmp r0, #0x20
	bne _021D93B2
	ldr r0, [r5, #0x58]
	mov r1, #1
	bl sub_02021CAC
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021D93F4
	b _021D93D0
_021D93B2:
	cmp r0, #0
	bne _021D93D0
	ldr r0, [r5, #0x58]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	add r0, r0, #4
	bl sub_0201A9A4
_021D93D0:
	ldr r2, [r6, #0x34]
	mov r1, #4
	sub r2, r1, r2
	ldr r1, _021D93F0 ; =0x00007FFF
	add r3, r2, #0
	mul r3, r1
	asr r1, r3, #1
	lsr r1, r1, #0x1e
	add r1, r3, r1
	lsl r1, r1, #0xe
	ldr r0, [r5, #0x58]
	lsr r1, r1, #0x10
	bl sub_02021C94
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D93F0: .word 0x00007FFF
	thumb_func_end ov21_021D9390

	thumb_func_start ov21_021D93F4
ov21_021D93F4: ; 0x021D93F4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, [r0, #0]
	add r4, r1, #0
	add r0, r5, #4
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x5e
	add r1, r4, #0
	bl ov21_021D1CE0
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002EB4
	mov r1, #1
	lsl r1, r1, #8
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #0x80
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D9450 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #4
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	mov r1, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019060
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D9450: .word 0x00020100
	thumb_func_end ov21_021D93F4

	thumb_func_start ov21_021D9454
ov21_021D9454: ; 0x021D9454
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	add r1, r0, #0
	add r6, r2, #0
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	ldr r0, [r5, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	ldr r1, [r4, #0]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D8F98
	ldr r1, [r4, #0]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D8DD4
	ldr r1, [r4, #4]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D9054
	ldr r1, [r4, #8]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D90B4
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D9234
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D9240
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	bl ov21_021D924C
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D9454