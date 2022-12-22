	.include "macros/function.inc"
	.include "include/ov13_02224500.inc"

	

	.text


	thumb_func_start ov13_02224500
ov13_02224500: ; 0x02224500
	push {r4, lr}
	add r4, r0, #0
	bl ov13_0222453C
	add r0, r4, #0
	bl ov13_02224588
	add r0, r4, #0
	bl ov13_02224670
	add r0, r4, #0
	bl ov13_02224720
	add r0, r4, #0
	bl ov13_02224798
	add r0, r4, #0
	bl ov13_02224848
	add r0, r4, #0
	bl ov13_02224948
	add r0, r4, #0
	bl ov13_0222554C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r4, pc}
	thumb_func_end ov13_02224500

	thumb_func_start ov13_0222453C
ov13_0222453C: ; 0x0222453C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02224580 ; =0x022292EC
	add r2, sp, #0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	add r4, r0, #0
	bl sub_0200C704
	ldr r1, _02224584 ; =0x00001FB4
	mov r2, #0x2b
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl sub_0200C7C0
	ldr r1, _02224584 ; =0x00001FB4
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r2, sp, #0
	bl sub_0200CB30
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02224580: .word 0x022292EC
_02224584: .word 0x00001FB4
	thumb_func_end ov13_0222453C

	thumb_func_start ov13_02224588
ov13_02224588: ; 0x02224588
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r1, [r6, #0]
	mov r0, #0x13
	ldr r1, [r1, #0xc]
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	str r0, [sp, #0x18]
	bl sub_02079FD0
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _02224668 ; =0x0000B007
	ldr r3, _0222466C ; =0x00001FB4
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x18]
	ldr r3, [r6, r3]
	bl sub_0200CDC4
	bl sub_02079FD8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02224668 ; =0x0000B007
	ldr r1, _0222466C ; =0x00001FB4
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CE24
	bl sub_02079FE4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02224668 ; =0x0000B007
	ldr r1, _0222466C ; =0x00001FB4
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CE54
	mov r4, #0
	add r5, r6, #0
_02224604:
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0222462E
	ldr r0, [r5, #4]
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02224668 ; =0x0000B007
	ldr r1, _0222466C ; =0x00001FB4
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CC3C
	b _02224654
_0222462E:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02079D8C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02224668 ; =0x0000B007
	ldr r1, _0222466C ; =0x00001FB4
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl sub_0200CC3C
_02224654:
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #6
	blo _02224604
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02224668: .word 0x0000B007
_0222466C: .word 0x00001FB4
	thumb_func_end ov13_02224588

	thumb_func_start ov13_02224670
ov13_02224670: ; 0x02224670
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	ldr r1, [r5, #0]
	add r4, r0, #0
	ldr r1, [r1, #0xc]
	mov r0, #0x27
	bl sub_02006C24
	add r6, r0, #0
	bl sub_0208E9E4
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _02224714 ; =0x0000B008
	ldr r3, _02224718 ; =0x00001FB4
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200CDC4
	bl sub_0208E9E8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02224714 ; =0x0000B008
	ldr r1, _02224718 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200CE24
	bl sub_0208E9EC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02224714 ; =0x0000B008
	ldr r1, _02224718 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200CE54
	bl sub_0208E9E0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0222471C ; =0x0000B00D
	ldr r1, _02224718 ; =0x00001FB4
	str r0, [sp, #8]
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200CC3C
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02224714: .word 0x0000B008
_02224718: .word 0x00001FB4
_0222471C: .word 0x0000B00D
	thumb_func_end ov13_02224670

	thumb_func_start ov13_02224720
ov13_02224720: ; 0x02224720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	ldr r0, _02224788 ; =0x0000B009
	ldr r3, _0222478C ; =0x00001FB4
	str r0, [sp, #4]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	mov r1, #3
	add r2, r6, #0
	bl sub_0207C9B0
	ldr r1, _0222478C ; =0x00001FB4
	ldr r2, _02224788 ; =0x0000B009
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0207C9EC
	ldr r4, _02224790 ; =0x0000B00E
	add r7, r4, #6
_0222475C:
	ldr r1, _0222478C ; =0x00001FB4
	str r4, [sp]
	ldr r1, [r5, r1]
	add r0, r6, #0
	mov r2, #2
	mov r3, #0
	bl sub_0207C948
	add r4, r4, #1
	cmp r4, r7
	bls _0222475C
	ldr r0, _02224794 ; =0x0000B015
	ldr r1, _0222478C ; =0x00001FB4
	str r0, [sp]
	ldr r1, [r5, r1]
	add r0, r6, #0
	mov r2, #2
	mov r3, #0
	bl sub_0207CAC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02224788: .word 0x0000B009
_0222478C: .word 0x00001FB4
_02224790: .word 0x0000B00E
_02224794: .word 0x0000B015
	thumb_func_end ov13_02224720

	thumb_func_start ov13_02224798
ov13_02224798: ; 0x02224798
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x14
	ldr r1, [r1, #0xc]
	bl sub_02006C24
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	add r6, r0, #0
	bl sub_02081934
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0222483C ; =0x0000B00A
	ldr r3, _02224840 ; =0x00001FB4
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	mov r1, #3
	add r2, r6, #0
	bl sub_0200CDC4
	bl sub_02081938
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222483C ; =0x0000B00A
	ldr r1, _02224840 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE24
	bl sub_0208193C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222483C ; =0x0000B00A
	ldr r1, _02224840 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CE54
	bl sub_02081930
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02224844 ; =0x0000B016
	ldr r1, _02224840 ; =0x00001FB4
	str r0, [sp, #8]
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0200CC3C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0222483C: .word 0x0000B00A
_02224840: .word 0x00001FB4
_02224844: .word 0x0000B016
	thumb_func_end ov13_02224798

	thumb_func_start ov13_02224848
ov13_02224848: ; 0x02224848
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	add r4, r0, #0
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022248CC ; =0x0000B00B
	ldr r3, _022248D0 ; =0x00001FB4
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200CD7C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022248CC ; =0x0000B00B
	ldr r1, _022248D0 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0x48
	mov r3, #0x19
	bl sub_0200CE0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022248CC ; =0x0000B00B
	ldr r1, _022248D0 ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0x48
	mov r3, #0x18
	bl sub_0200CE3C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _022248D4 ; =0x0000B017
	ldr r1, _022248D0 ; =0x00001FB4
	str r0, [sp, #8]
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0x48
	mov r3, #0x1a
	bl sub_0200CBDC
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022248CC: .word 0x0000B00B
_022248D0: .word 0x00001FB4
_022248D4: .word 0x0000B017
	thumb_func_end ov13_02224848

	thumb_func_start ov13_022248D8
ov13_022248D8: ; 0x022248D8
	push {r4, r5, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	ldr r0, [r0, #8]
	bl ov16_0223E010
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r1, #6]
	mov r1, #0x14
	ldr r3, _02224930 ; =0x02229524
	mul r1, r4
	ldr r3, [r3, r1]
	str r2, [sp, #0xc]
	str r3, [sp, #8]
	mov r3, #2
	str r3, [sp, #0x10]
	ldr r3, _02224934 ; =0x02229514
	str r2, [sp, #0x30]
	ldr r3, [r3, r1]
	add r2, sp, #0
	str r3, [sp, #0x14]
	ldr r3, _02224938 ; =0x02229518
	ldr r3, [r3, r1]
	str r3, [sp, #0x18]
	ldr r3, _0222493C ; =0x0222951C
	ldr r3, [r3, r1]
	str r3, [sp, #0x1c]
	ldr r3, _02224940 ; =0x02229520
	ldr r1, [r3, r1]
	str r1, [sp, #0x20]
	mov r1, #1
	str r1, [sp, #0x2c]
	ldr r1, _02224944 ; =0x00001FB4
	ldr r1, [r5, r1]
	bl sub_0200CE6C
	add sp, #0x34
	pop {r4, r5, pc}
	; .align 2, 0
_02224930: .word 0x02229524
_02224934: .word 0x02229514
_02224938: .word 0x02229518
_0222493C: .word 0x0222951C
_02224940: .word 0x02229520
_02224944: .word 0x00001FB4
	thumb_func_end ov13_022248D8

	thumb_func_start ov13_02224948
ov13_02224948: ; 0x02224948
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _0222496C ; =0x00001FB8
	mov r4, #0
	add r5, r6, #0
_02224952:
	add r0, r6, #0
	add r1, r4, #0
	bl ov13_022248D8
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x26
	blo _02224952
	add r0, r6, #0
	bl ov13_022249CC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222496C: .word 0x00001FB8
	thumb_func_end ov13_02224948

	thumb_func_start ov13_02224970
ov13_02224970: ; 0x02224970
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	ldr r6, _022249A4 ; =0x00001FB8
	str r0, [sp]
	mov r4, #0
	add r5, r7, #0
_02224984:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x26
	blo _02224984
	add r0, r7, #0
	bl ov13_022255B8
	ldr r1, _022249A8 ; =0x00001FB4
	ldr r0, [sp]
	ldr r1, [r7, r1]
	bl sub_0200D0B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022249A4: .word 0x00001FB8
_022249A8: .word 0x00001FB4
	thumb_func_end ov13_02224970

	thumb_func_start ov13_022249AC
ov13_022249AC: ; 0x022249AC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #1
	add r6, r0, #0
	bl sub_0200D3F4
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r0, r6, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov13_022249AC

	thumb_func_start ov13_022249CC
ov13_022249CC: ; 0x022249CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	mov r7, #0
	add r4, #0x1b
	add r6, r5, #0
_022249D8:
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _022249F8
	add r1, r5, #0
	ldrb r2, [r4]
	add r1, #0x32
	ldrb r1, [r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, _02224A08 ; =0x00001FD4
	ldr r0, [r6, r0]
	bl sub_0200D41C
_022249F8:
	add r7, r7, #1
	add r5, #0x50
	add r4, #0x50
	add r6, r6, #4
	cmp r7, #6
	blt _022249D8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224A08: .word 0x00001FD4
	thumb_func_end ov13_022249CC

	thumb_func_start ov13_02224A0C
ov13_02224A0C: ; 0x02224A0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r3, #0
	ldr r0, [r0, #8]
	add r7, r1, #0
	add r4, r2, #0
	bl ov16_0223E010
	str r0, [sp, #8]
	bl sub_0207C944
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0207C908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r1, _02224A58 ; =0x00001FB4
	str r4, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0xc]
	bl sub_0200D948
	add r0, r6, #0
	bl sub_0207C92C
	add r1, r0, #0
	add r0, r7, #0
	add r1, r1, #4
	bl sub_0200D41C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224A58: .word 0x00001FB4
	thumb_func_end ov13_02224A0C

	thumb_func_start ov13_02224A5C
ov13_02224A5C: ; 0x02224A5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	ldr r0, [r0, #8]
	add r6, r1, #0
	bl ov16_0223E010
	add r7, r0, #0
	bl sub_0207CAC0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0207CA90
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _02224AA8 ; =0x0000B015
	ldr r1, _02224AAC ; =0x00001FB4
	str r0, [sp, #4]
	ldr r1, [r5, r1]
	ldr r2, [sp, #8]
	add r0, r7, #0
	bl sub_0200D948
	add r0, r4, #0
	bl sub_0207CAA8
	add r1, r0, #0
	add r0, r6, #0
	add r1, r1, #4
	bl sub_0200D41C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02224AA8: .word 0x0000B015
_02224AAC: .word 0x00001FB4
	thumb_func_end ov13_02224A5C

	thumb_func_start ov13_02224AB0
ov13_02224AB0: ; 0x02224AB0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r6, #7
	beq _02224AD0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200D364
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov13_022249AC
_02224AD0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02224AB0

	thumb_func_start ov13_02224AD4
ov13_02224AD4: ; 0x02224AD4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02224B18 ; =0x00002004
	add r5, r0, #0
	add r6, r2, #0
	ldrb r3, [r4, #0x14]
	ldr r1, [r5, r1]
	ldr r2, _02224B1C ; =0x0000B00E
	bl ov13_02224A0C
	ldr r0, _02224B18 ; =0x00002004
	ldr r1, [r6, #0]
	ldr r0, [r5, r0]
	ldr r2, [r6, #4]
	bl ov13_022249AC
	ldrb r3, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	cmp r0, r3
	beq _02224B14
	ldr r1, _02224B20 ; =0x00002008
	ldr r2, _02224B24 ; =0x0000B00F
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov13_02224A0C
	ldr r0, _02224B20 ; =0x00002008
	ldr r1, [r6, #8]
	ldr r0, [r5, r0]
	ldr r2, [r6, #0xc]
	bl ov13_022249AC
_02224B14:
	pop {r4, r5, r6, pc}
	nop
_02224B18: .word 0x00002004
_02224B1C: .word 0x0000B00E
_02224B20: .word 0x00002008
_02224B24: .word 0x0000B00F
	thumb_func_end ov13_02224AD4

	thumb_func_start ov13_02224B28
ov13_02224B28: ; 0x02224B28
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02224B58
	bl sub_0207D2D0
	cmp r0, #1
	bne _02224B46
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D364
	b _02224B4E
_02224B46:
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D364
_02224B4E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov13_022249AC
_02224B58:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov13_02224B28

	thumb_func_start ov13_02224B5C
ov13_02224B5C: ; 0x02224B5C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02224B7A
	add r0, r5, #0
	mov r1, #2
	bl sub_0200D364
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov13_022249AC
_02224B7A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov13_02224B5C

	thumb_func_start ov13_02224B7C
ov13_02224B7C: ; 0x02224B7C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _02224C10 ; =0x00001FB8
	str r1, [sp]
	mov r5, #0
	add r4, r6, #0
_02224B88:
	ldr r0, [r4, r7]
	mov r1, #0
	bl sub_0200D3F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x26
	blo _02224B88
	ldr r0, [sp]
	cmp r0, #9
	bhi _02224C0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224BAA: ; jump table
	.short _02224BBE - _02224BAA - 2 ; case 0
	.short _02224BC6 - _02224BAA - 2 ; case 1
	.short _02224BCE - _02224BAA - 2 ; case 2
	.short _02224BD6 - _02224BAA - 2 ; case 3
	.short _02224BDE - _02224BAA - 2 ; case 4
	.short _02224BE6 - _02224BAA - 2 ; case 5
	.short _02224BEE - _02224BAA - 2 ; case 6
	.short _02224BF6 - _02224BAA - 2 ; case 7
	.short _02224BFE - _02224BAA - 2 ; case 8
	.short _02224C06 - _02224BAA - 2 ; case 9
_02224BBE:
	add r0, r6, #0
	bl ov13_02224C14
	pop {r3, r4, r5, r6, r7, pc}
_02224BC6:
	add r0, r6, #0
	bl ov13_02224CB0
	pop {r3, r4, r5, r6, r7, pc}
_02224BCE:
	add r0, r6, #0
	bl ov13_02224D08
	pop {r3, r4, r5, r6, r7, pc}
_02224BD6:
	add r0, r6, #0
	bl ov13_02224DA0
	pop {r3, r4, r5, r6, r7, pc}
_02224BDE:
	add r0, r6, #0
	bl ov13_02224E78
	pop {r3, r4, r5, r6, r7, pc}
_02224BE6:
	add r0, r6, #0
	bl ov13_0222506C
	pop {r3, r4, r5, r6, r7, pc}
_02224BEE:
	add r0, r6, #0
	bl ov13_02224F3C
	pop {r3, r4, r5, r6, r7, pc}
_02224BF6:
	add r0, r6, #0
	bl ov13_02224FA8
	pop {r3, r4, r5, r6, r7, pc}
_02224BFE:
	add r0, r6, #0
	bl ov13_02225150
	pop {r3, r4, r5, r6, r7, pc}
_02224C06:
	add r0, r6, #0
	bl ov13_022250D8
_02224C0C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224C10: .word 0x00001FB8
	thumb_func_end ov13_02224B7C

	thumb_func_start ov13_02224C14
ov13_02224C14: ; 0x02224C14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x1b
	ldr r4, _02224C98 ; =0x02229404
	ldr r7, _02224C9C ; =0x02229434
	add r5, r6, #0
	str r0, [sp]
_02224C2C:
	ldrh r0, [r6, #8]
	cmp r0, #0
	beq _02224C7A
	ldr r0, _02224CA0 ; =0x00001FD4
	ldr r1, [r4, #0]
	ldr r0, [r5, r0]
	ldr r2, [r4, #4]
	bl ov13_022249AC
	ldr r0, [sp]
	ldr r1, _02224CA4 ; =0x00001FEC
	ldrb r0, [r0]
	ldr r1, [r5, r1]
	ldr r2, [r7, #0]
	lsl r0, r0, #0x19
	ldr r3, [r7, #4]
	lsr r0, r0, #0x1c
	bl ov13_02224AB0
	ldr r1, _02224CA8 ; =0x00001FB8
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldrh r0, [r6, #0x1e]
	ldr r1, [r5, r1]
	add r2, #8
	add r3, #8
	bl ov13_02224B28
	add r0, r6, #0
	add r0, #0x31
	ldr r1, _02224CAC ; =0x00002038
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldrb r0, [r0]
	ldr r1, [r5, r1]
	add r2, #0x10
	add r3, #8
	bl ov13_02224B5C
_02224C7A:
	ldr r0, [sp]
	add r6, #0x50
	add r0, #0x50
	str r0, [sp]
	ldr r0, [sp, #4]
	add r4, #8
	add r0, r0, #1
	add r5, r5, #4
	add r7, #8
	str r0, [sp, #4]
	cmp r0, #6
	blt _02224C2C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224C98: .word 0x02229404
_02224C9C: .word 0x02229434
_02224CA0: .word 0x00001FD4
_02224CA4: .word 0x00001FEC
_02224CA8: .word 0x00001FB8
_02224CAC: .word 0x00002038
	thumb_func_end ov13_02224C14

	thumb_func_start ov13_02224CB0
ov13_02224CB0: ; 0x02224CB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224D04 ; =0x00001FB8
	mov r2, #0x48
	ldr r0, [r1, r0]
	mov r1, #0x80
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x50
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D04 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x88
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x50
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D04 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x90
	bl ov13_02224B5C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02224D04: .word 0x00001FB8
	thumb_func_end ov13_02224CB0

	thumb_func_start ov13_02224D08
ov13_02224D08: ; 0x02224D08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224D94 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrb r0, [r4, #0x17]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r0, r0, #0x19
	add r1, #0xd
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D94 ; =0x00001FB8
	lsr r0, r0, #0x1c
	ldr r1, [r2, r1]
	mov r2, #0xc6
	bl ov13_02224AB0
	ldr r2, _02224D98 ; =0x022292C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D94 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	add r0, #0x2d
	ldrb r0, [r0]
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224D94 ; =0x00001FB8
	mov r3, #0x14
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	ldr r1, _02224D9C ; =0x00001FD0
	ldrh r0, [r4, #0x1a]
	ldr r1, [r5, r1]
	mov r2, #0x14
	mov r3, #0x84
	bl ov13_02224B28
	pop {r3, r4, r5, pc}
	nop
_02224D94: .word 0x00001FB8
_02224D98: .word 0x022292C4
_02224D9C: .word 0x00001FD0
	thumb_func_end ov13_02224D08

	thumb_func_start ov13_02224DA0
ov13_02224DA0: ; 0x02224DA0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [r0, #0]
	ldrb r2, [r0, #0x11]
	ldr r0, [sp]
	add r1, r0, #4
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r1, r0, #2
	ldr r0, [sp]
	mov r2, #0xc
	add r1, r0, r1
	ldr r0, _02224E64 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r1, [sp]
	ldrb r0, [r4, #0x17]
	ldr r1, [r1, #0]
	mov r3, #0x14
	ldrb r1, [r1, #0x11]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1c
	add r1, #0xd
	lsl r2, r1, #2
	ldr r1, [sp]
	add r2, r1, r2
	ldr r1, _02224E64 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0xc6
	bl ov13_02224AB0
	ldr r0, [sp]
	ldr r2, _02224E68 ; =0x022292A4
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r1, [sp]
	ldrh r0, [r4, #0x1a]
	ldr r1, [r1, #0]
	mov r3, #0x14
	ldrb r1, [r1, #0x11]
	lsl r2, r1, #2
	ldr r1, [sp]
	add r2, r1, r2
	ldr r1, _02224E64 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [sp]
	add r0, r4, #0
	ldr r1, [r1, #0]
	add r0, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r0]
	mov r3, #0x14
	add r1, #0x20
	lsl r2, r1, #2
	ldr r1, [sp]
	add r2, r1, r2
	ldr r1, _02224E64 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	ldr r5, [sp]
	ldr r6, _02224E6C ; =0x02229324
	mov r7, #0
_02224E30:
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _02224E56
	add r3, r4, #0
	ldr r1, _02224E70 ; =0x0000200C
	add r3, #0x34
	ldr r2, _02224E74 ; =0x0000B010
	ldrb r3, [r3]
	ldr r0, [sp]
	ldr r1, [r5, r1]
	add r2, r7, r2
	bl ov13_02224A0C
	ldr r0, _02224E70 ; =0x0000200C
	ldr r1, [r6, #0]
	ldr r0, [r5, r0]
	ldr r2, [r6, #4]
	bl ov13_022249AC
_02224E56:
	add r7, r7, #1
	add r4, #8
	add r5, r5, #4
	add r6, #8
	cmp r7, #4
	blo _02224E30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02224E64: .word 0x00001FB8
_02224E68: .word 0x022292A4
_02224E6C: .word 0x02229324
_02224E70: .word 0x0000200C
_02224E74: .word 0x0000B010
	thumb_func_end ov13_02224DA0

	thumb_func_start ov13_02224E78
ov13_02224E78: ; 0x02224E78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224F30 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrb r0, [r4, #0x17]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r0, r0, #0x19
	add r1, #0xd
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224F30 ; =0x00001FB8
	lsr r0, r0, #0x1c
	ldr r1, [r2, r1]
	mov r2, #0xc6
	bl ov13_02224AB0
	ldr r2, _02224F34 ; =0x022292B4
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r0, [r5, #0]
	mov r2, #0x30
	add r0, #0x34
	ldrb r0, [r0]
	add r0, #0x15
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224F30 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0x88
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224F30 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	add r0, #0x2d
	ldrb r0, [r0]
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224F30 ; =0x00001FB8
	mov r3, #0x14
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	ldr r2, [r5, #0]
	ldr r1, _02224F38 ; =0x00002020
	add r2, #0x34
	ldrb r2, [r2]
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r2, r2, #3
	add r2, r4, r2
	add r2, #0x35
	ldrb r2, [r2]
	bl ov13_02224A5C
	ldr r0, _02224F38 ; =0x00002020
	mov r1, #0x18
	ldr r0, [r5, r0]
	mov r2, #0x58
	bl ov13_022249AC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02224F30: .word 0x00001FB8
_02224F34: .word 0x022292B4
_02224F38: .word 0x00002020
	thumb_func_end ov13_02224E78

	thumb_func_start ov13_02224F3C
ov13_02224F3C: ; 0x02224F3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02224FA0 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r2, _02224FA4 ; =0x02229294
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224FA0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x14
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02224FA0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	add r0, r5, #0
	bl ov13_022252E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02224FA0: .word 0x00001FB8
_02224FA4: .word 0x02229294
	thumb_func_end ov13_02224F3C

	thumb_func_start ov13_02224FA8
ov13_02224FA8: ; 0x02224FA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02225060 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r2, _02225064 ; =0x02229284
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r0, [r5, #0]
	mov r2, #0x30
	add r0, #0x34
	ldrb r0, [r0]
	add r0, #0x15
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02225060 ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0x88
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02225060 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r0, r4, #0
	ldrb r1, [r1, #0x11]
	add r0, #0x2d
	ldrb r0, [r0]
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _02225060 ; =0x00001FB8
	mov r3, #0x14
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	ldr r1, [r5, #0]
	add r0, r1, #0
	add r0, #0x34
	ldrb r2, [r0]
	cmp r2, #4
	bhs _0222503E
	lsl r2, r2, #3
	add r2, r4, r2
	ldr r1, _02225068 ; =0x00002020
	add r2, #0x35
	ldrb r2, [r2]
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov13_02224A5C
	b _02225052
_0222503E:
	ldrh r0, [r1, #0x24]
	mov r1, #1
	bl sub_020790C4
	ldr r1, _02225068 ; =0x00002020
	add r2, r0, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov13_02224A5C
_02225052:
	ldr r0, _02225068 ; =0x00002020
	mov r1, #0x18
	ldr r0, [r5, r0]
	mov r2, #0x58
	bl ov13_022249AC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02225060: .word 0x00001FB8
_02225064: .word 0x02229284
_02225068: .word 0x00002020
	thumb_func_end ov13_02224FA8

	thumb_func_start ov13_0222506C
ov13_0222506C: ; 0x0222506C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _022250D0 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r2, _022250D4 ; =0x02229294
	add r0, r5, #0
	add r1, r4, #0
	bl ov13_02224AD4
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _022250D0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x14
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _022250D0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	add r0, r5, #0
	bl ov13_022252E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022250D0: .word 0x00001FB8
_022250D4: .word 0x02229294
	thumb_func_end ov13_0222506C

	thumb_func_start ov13_022250D8
ov13_022250D8: ; 0x022250D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0222514C ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r0, [r5, #0]
	mov r2, #0x48
	add r0, #0x34
	ldrb r0, [r0]
	add r0, #0x15
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0222514C ; =0x00001FB8
	ldr r0, [r1, r0]
	mov r1, #0x88
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _0222514C ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x14
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _0222514C ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	add r0, r5, #0
	bl ov13_02225420
	pop {r3, r4, r5, pc}
	nop
_0222514C: .word 0x00001FB8
	thumb_func_end ov13_022250D8

	thumb_func_start ov13_02225150
ov13_02225150: ; 0x02225150
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r1, r5, #4
	ldrb r2, [r0, #0x11]
	mov r0, #0x50
	mul r0, r2
	add r4, r1, r0
	add r0, r2, #7
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _022251B0 ; =0x00001FB8
	mov r2, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x18
	bl ov13_022249AC
	ldr r1, [r5, #0]
	ldrh r0, [r4, #0x1a]
	ldrb r1, [r1, #0x11]
	mov r3, #0x14
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _022251B0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x20
	bl ov13_02224B28
	ldr r1, [r5, #0]
	add r4, #0x2d
	ldrb r1, [r1, #0x11]
	ldrb r0, [r4]
	mov r3, #0x14
	add r1, #0x20
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, _022251B0 ; =0x00001FB8
	ldr r1, [r2, r1]
	mov r2, #0x28
	bl ov13_02224B5C
	add r0, r5, #0
	bl ov13_022252E8
	add r0, r5, #0
	bl ov13_02225420
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022251B0: .word 0x00001FB8
	thumb_func_end ov13_02225150

	thumb_func_start ov13_022251B4
ov13_022251B4: ; 0x022251B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	add r2, r6, #4
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mov r4, #0
	mul r0, r1
	add r0, r2, r0
	str r0, [sp]
_022251C8:
	ldr r0, [sp]
	lsl r5, r4, #3
	add r3, r0, r5
	ldrh r0, [r3, #0x30]
	cmp r0, #0
	beq _022251FC
	lsl r0, r4, #2
	add r3, #0x34
	add r7, r6, r0
	ldr r1, _02225234 ; =0x0000200C
	ldr r2, _02225238 ; =0x0000B010
	ldrb r3, [r3]
	ldr r1, [r7, r1]
	add r0, r6, #0
	add r2, r4, r2
	bl ov13_02224A0C
	ldr r0, _0222523C ; =0x022293DC
	ldr r1, _0222523C ; =0x022293DC
	add r2, r0, r5
	ldr r0, _02225234 ; =0x0000200C
	ldr r1, [r1, r5]
	ldr r0, [r7, r0]
	ldr r2, [r2, #4]
	bl ov13_022249AC
_022251FC:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _022251C8
	ldr r0, [r6, #0]
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _02225232
	mov r1, #3
	bl sub_020790C4
	add r3, r0, #0
	ldr r1, _02225240 ; =0x0000201C
	lsl r3, r3, #0x18
	ldr r1, [r6, r1]
	ldr r2, _02225244 ; =0x0000B014
	add r0, r6, #0
	lsr r3, r3, #0x18
	bl ov13_02224A0C
	ldr r0, _02225240 ; =0x0000201C
	mov r1, #0x58
	ldr r0, [r6, r0]
	mov r2, #0xb0
	bl ov13_022249AC
_02225232:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225234: .word 0x0000200C
_02225238: .word 0x0000B010
_0222523C: .word 0x022293DC
_02225240: .word 0x0000201C
_02225244: .word 0x0000B014
	thumb_func_end ov13_022251B4

	thumb_func_start ov13_02225248
ov13_02225248: ; 0x02225248
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	add r2, r7, #4
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	mov r4, #0
	mul r0, r1
	add r0, r2, r0
	str r0, [sp]
_0222525C:
	ldr r0, [sp]
	lsl r5, r4, #3
	add r0, r0, r5
	ldrh r0, [r0, #0x30]
	cmp r0, #0
	beq _0222529A
	lsl r1, r4, #2
	add r6, r7, r1
	mov r1, #0xb
	bl sub_020790C4
	add r3, r0, #0
	ldr r1, _022252D4 ; =0x0000200C
	ldr r2, _022252D8 ; =0x0000B010
	add r3, #0x12
	lsl r3, r3, #0x18
	ldr r1, [r6, r1]
	add r0, r7, #0
	add r2, r4, r2
	lsr r3, r3, #0x18
	bl ov13_02224A0C
	ldr r0, _022252DC ; =0x022293DC
	ldr r1, _022252DC ; =0x022293DC
	add r2, r0, r5
	ldr r0, _022252D4 ; =0x0000200C
	ldr r1, [r1, r5]
	ldr r0, [r6, r0]
	ldr r2, [r2, #4]
	bl ov13_022249AC
_0222529A:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0222525C
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _022252D2
	mov r1, #0xb
	bl sub_020790C4
	add r3, r0, #0
	ldr r1, _022252E0 ; =0x0000201C
	add r3, #0x12
	lsl r3, r3, #0x18
	ldr r1, [r7, r1]
	ldr r2, _022252E4 ; =0x0000B014
	add r0, r7, #0
	lsr r3, r3, #0x18
	bl ov13_02224A0C
	ldr r0, _022252E0 ; =0x0000201C
	mov r1, #0x58
	ldr r0, [r7, r0]
	mov r2, #0xb0
	bl ov13_022249AC
_022252D2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022252D4: .word 0x0000200C
_022252D8: .word 0x0000B010
_022252DC: .word 0x022293DC
_022252E0: .word 0x0000201C
_022252E4: .word 0x0000B014
	thumb_func_end ov13_02225248

	thumb_func_start ov13_022252E8
ov13_022252E8: ; 0x022252E8
	push {r3, lr}
	ldr r1, _02225300 ; =0x00002077
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bne _022252FA
	bl ov13_022251B4
	pop {r3, pc}
_022252FA:
	bl ov13_02225248
	pop {r3, pc}
	; .align 2, 0
_02225300: .word 0x00002077
	thumb_func_end ov13_022252E8

	thumb_func_start ov13_02225304
ov13_02225304: ; 0x02225304
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200D37C
	cmp r4, r0
	beq _02225322
	add r0, r5, #0
	mov r1, #0
	bl sub_0200D3CC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D364
_02225322:
	pop {r3, r4, r5, pc}
	thumb_func_end ov13_02225304

	thumb_func_start ov13_02225324
ov13_02225324: ; 0x02225324
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	bne _02225332
	mov r0, #0
	pop {r3, pc}
_02225332:
	ldrb r1, [r2, #0x17]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	cmp r1, #7
	beq _02225344
	cmp r1, #6
	beq _02225344
	mov r0, #5
	pop {r3, pc}
_02225344:
	ldrh r1, [r2, #0x12]
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _02225376
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222535C: ; jump table
	.short _02225376 - _0222535C - 2 ; case 0
	.short _02225372 - _0222535C - 2 ; case 1
	.short _0222536E - _0222535C - 2 ; case 2
	.short _0222536A - _0222535C - 2 ; case 3
	.short _02225366 - _0222535C - 2 ; case 4
_02225366:
	mov r0, #1
	pop {r3, pc}
_0222536A:
	mov r0, #2
	pop {r3, pc}
_0222536E:
	mov r0, #3
	pop {r3, pc}
_02225372:
	mov r0, #4
	pop {r3, pc}
_02225376:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_02225324

	thumb_func_start ov13_0222537C
ov13_0222537C: ; 0x0222537C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r4, #0
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	cmp r0, #0
	ble _022253D4
	add r7, r5, #4
_02225390:
	mov r0, #0x50
	add r1, r4, #0
	mul r1, r0
	add r0, r5, r1
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _022253C2
	add r0, r7, r1
	bl ov13_02225324
	add r1, r0, #0
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _022253D8 ; =0x00001FD4
	lsl r1, r1, #0x18
	ldr r0, [r6, r0]
	lsr r1, r1, #0x18
	bl ov13_02225304
	ldr r0, _022253D8 ; =0x00001FD4
	mov r1, #1
	ldr r0, [r6, r0]
	lsl r1, r1, #0xc
	bl sub_0200D34C
_022253C2:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0207A0F8
	cmp r4, r0
	blt _02225390
_022253D4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022253D8: .word 0x00001FD4
	thumb_func_end ov13_0222537C

	thumb_func_start ov13_022253DC
ov13_022253DC: ; 0x022253DC
	push {r4, lr}
	add r4, r2, #0
	cmp r4, r1
	ble _02225402
	add r0, #0x2c
	sub r1, r4, r1
	mul r1, r0
	lsl r0, r1, #0x10
	mov r1, #0x4b
	lsl r1, r1, #2
	bl _u32_div_f
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, pc}
_02225402:
	add r0, #0x2c
	sub r1, r1, r4
	mul r1, r0
	lsl r0, r1, #0x10
	mov r1, #0x4b
	lsl r1, r1, #2
	bl _u32_div_f
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, pc}
	thumb_func_end ov13_022253DC

	thumb_func_start ov13_02225420
ov13_02225420: ; 0x02225420
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	add r5, r6, #4
	ldrb r1, [r0, #0x11]
	mov r0, #0x50
	add r4, r1, #0
	mul r4, r0
	ldr r0, _02225538 ; =0x00002024
	mov r1, #0
	ldr r0, [r6, r0]
	bl ov13_02225304
	ldr r0, _0222553C ; =0x00002028
	mov r1, #1
	ldr r0, [r6, r0]
	bl ov13_02225304
	ldr r0, _02225540 ; =0x0000202C
	mov r1, #3
	ldr r0, [r6, r0]
	bl ov13_02225304
	ldr r0, _02225544 ; =0x00002030
	mov r1, #4
	ldr r0, [r6, r0]
	bl ov13_02225304
	ldr r0, _02225548 ; =0x00002034
	mov r1, #2
	ldr r0, [r6, r0]
	bl ov13_02225304
	add r0, r5, r4
	add r0, #0x28
	mov r1, #0x90
	ldrb r0, [r0]
	add r2, r1, #0
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x28
	ldrb r0, [r0]
	mov r1, #2
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _02225538 ; =0x00002024
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	add r0, r5, r4
	add r0, #0x29
	ldrb r0, [r0]
	mov r1, #0xa4
	mov r2, #0x90
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x29
	ldrb r0, [r0]
	mov r1, #0x10
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _0222553C ; =0x00002028
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	add r0, r5, r4
	add r0, #0x2a
	ldrb r0, [r0]
	mov r1, #0x9c
	mov r2, #0x90
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x2a
	ldrb r0, [r0]
	mov r1, #0x29
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _02225540 ; =0x0000202C
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	add r0, r5, r4
	add r0, #0x2b
	ldrb r0, [r0]
	mov r1, #0x83
	mov r2, #0x8f
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x2b
	ldrb r0, [r0]
	mov r1, #0x29
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _02225544 ; =0x00002030
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	add r0, r5, r4
	add r0, #0x2c
	ldrb r0, [r0]
	mov r1, #0x7b
	mov r2, #0x8f
	bl ov13_022253DC
	add r7, r0, #0
	add r0, r5, r4
	add r0, #0x2c
	ldrb r0, [r0]
	mov r1, #0x10
	mov r2, #0x18
	bl ov13_022253DC
	add r2, r0, #0
	ldr r0, _02225548 ; =0x00002034
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl ov13_022249AC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02225538: .word 0x00002024
_0222553C: .word 0x00002028
_02225540: .word 0x0000202C
_02225544: .word 0x00002030
_02225548: .word 0x00002034
	thumb_func_end ov13_02225420

	thumb_func_start ov13_0222554C
ov13_0222554C: ; 0x0222554C
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl ov16_0223E010
	ldr r1, _022255A8 ; =0x0000B018
	mov r2, #0x7a
	str r1, [sp]
	sub r1, #0xc
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, _022255AC ; =0x00001FB4
	ldr r3, [r5, #0]
	lsl r2, r2, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r3, #0xc]
	add r4, r0, #0
	bl ov16_0226DB7C
	ldr r3, _022255B0 ; =0x0000B00C
	mov r0, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r1, _022255AC ; =0x00001FB4
	ldr r2, [r5, #0]
	ldr r1, [r5, r1]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	add r3, #0xc
	bl ov16_0226DC24
	add r1, r0, #0
	ldr r0, _022255B4 ; =0x00002088
	ldr r0, [r5, r0]
	bl ov13_02228A64
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_022255A8: .word 0x0000B018
_022255AC: .word 0x00001FB4
_022255B0: .word 0x0000B00C
_022255B4: .word 0x00002088
	thumb_func_end ov13_0222554C

	thumb_func_start ov13_022255B8
ov13_022255B8: ; 0x022255B8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _022255E0 ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228A58
	bl ov16_0226DCA8
	ldr r2, _022255E4 ; =0x0000B00C
	ldr r0, _022255E8 ; =0x00001FB4
	str r2, [sp]
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r1, #0xc
	add r3, r2, #0
	bl ov16_0226DBFC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022255E0: .word 0x00002088
_022255E4: .word 0x0000B00C
_022255E8: .word 0x00001FB4
	thumb_func_end ov13_022255B8

	thumb_func_start ov13_022255EC
ov13_022255EC: ; 0x022255EC
	push {r3, lr}
	ldr r1, _02225610 ; =0x00002077
	ldrb r2, [r0, r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	bne _02225604
	add r1, #0x11
	ldr r0, [r0, r1]
	mov r1, #0x5f
	bl ov13_02228AC8
	pop {r3, pc}
_02225604:
	add r1, #0x11
	ldr r0, [r0, r1]
	mov r1, #0x7f
	bl ov13_02228AC8
	pop {r3, pc}
	; .align 2, 0
_02225610: .word 0x00002077
	thumb_func_end ov13_022255EC

	thumb_func_start ov13_02225614
ov13_02225614: ; 0x02225614
	push {r3, lr}
	ldr r1, _02225638 ; =0x00002077
	ldrb r2, [r0, r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	bne _0222562C
	add r1, #0x11
	ldr r0, [r0, r1]
	mov r1, #5
	bl ov13_02228AC8
	pop {r3, pc}
_0222562C:
	add r1, #0x11
	ldr r0, [r0, r1]
	mov r1, #7
	bl ov13_02228AC8
	pop {r3, pc}
	; .align 2, 0
_02225638: .word 0x00002077
	thumb_func_end ov13_02225614

	thumb_func_start ov13_0222563C
ov13_0222563C: ; 0x0222563C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, _022256DC ; =0x00002088
	ldr r1, _022256E0 ; =0x0222938C
	lsl r2, r5, #2
	ldr r0, [r4, r0]
	ldr r1, [r1, r2]
	bl ov13_02228A9C
	cmp r5, #9
	bhi _022256DA
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02225660: ; jump table
	.short _02225674 - _02225660 - 2 ; case 0
	.short _0222568E - _02225660 - 2 ; case 1
	.short _022256DA - _02225660 - 2 ; case 2
	.short _022256A4 - _02225660 - 2 ; case 3
	.short _022256A4 - _02225660 - 2 ; case 4
	.short _022256DA - _02225660 - 2 ; case 5
	.short _022256B4 - _02225660 - 2 ; case 6
	.short _022256C8 - _02225660 - 2 ; case 7
	.short _022256B4 - _02225660 - 2 ; case 8
	.short _022256C8 - _02225660 - 2 ; case 9
_02225674:
	ldr r1, [r4, #0]
	ldr r0, _022256DC ; =0x00002088
	ldrb r1, [r1, #0x11]
	ldr r0, [r4, r0]
	bl ov13_02228A68
	ldr r0, _022256E4 ; =0x0000208C
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, [r4, #0]
	add r0, #0x34
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_0222568E:
	ldr r1, _022256DC ; =0x00002088
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldrb r1, [r4, r1]
	bl ov13_02228A68
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, #0x34
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_022256A4:
	ldr r1, [r4, #0]
	ldr r0, _022256DC ; =0x00002088
	add r1, #0x34
	ldrb r1, [r1]
	ldr r0, [r4, r0]
	bl ov13_02228A68
	pop {r3, r4, r5, pc}
_022256B4:
	add r0, r4, #0
	bl ov13_022255EC
	ldr r1, _022256DC ; =0x00002088
	ldr r0, [r4, r1]
	add r1, r1, #5
	ldrb r1, [r4, r1]
	bl ov13_02228A68
	pop {r3, r4, r5, pc}
_022256C8:
	add r0, r4, #0
	bl ov13_02225614
	ldr r1, _022256DC ; =0x00002088
	ldr r0, [r4, r1]
	add r1, r1, #6
	ldrb r1, [r4, r1]
	bl ov13_02228A68
_022256DA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022256DC: .word 0x00002088
_022256E0: .word 0x0222938C
_022256E4: .word 0x0000208C
	thumb_func_end ov13_0222563C

	thumb_func_start ov13_022256E8
ov13_022256E8: ; 0x022256E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222570C ; =0x00002088
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov13_02228A60
	ldr r0, _0222570C ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228A90
	ldr r0, _0222570C ; =0x00002088
	ldr r0, [r4, r0]
	bl ov13_02228A58
	bl ov16_0226DDE8
	pop {r4, pc}
	; .align 2, 0
_0222570C: .word 0x00002088
	thumb_func_end ov13_022256E8

	.rodata


	.global Unk_ov13_02229214
Unk_ov13_02229214: ; 0x02229214
	.incbin "incbin/overlay13_rodata.bin", 0x518, 0x520 - 0x518

	.global Unk_ov13_0222921C
Unk_ov13_0222921C: ; 0x0222921C
	.incbin "incbin/overlay13_rodata.bin", 0x520, 0x528 - 0x520

	.global Unk_ov13_02229224
Unk_ov13_02229224: ; 0x02229224
	.incbin "incbin/overlay13_rodata.bin", 0x528, 0x530 - 0x528

	.global Unk_ov13_0222922C
Unk_ov13_0222922C: ; 0x0222922C
	.incbin "incbin/overlay13_rodata.bin", 0x530, 0x538 - 0x530

	.global Unk_ov13_02229234
Unk_ov13_02229234: ; 0x02229234
	.incbin "incbin/overlay13_rodata.bin", 0x538, 0x540 - 0x538

	.global Unk_ov13_0222923C
Unk_ov13_0222923C: ; 0x0222923C
	.incbin "incbin/overlay13_rodata.bin", 0x540, 0x548 - 0x540

	.global Unk_ov13_02229244
Unk_ov13_02229244: ; 0x02229244
	.incbin "incbin/overlay13_rodata.bin", 0x548, 0x550 - 0x548

	.global Unk_ov13_0222924C
Unk_ov13_0222924C: ; 0x0222924C
	.incbin "incbin/overlay13_rodata.bin", 0x550, 0x558 - 0x550

	.global Unk_ov13_02229254
Unk_ov13_02229254: ; 0x02229254
	.incbin "incbin/overlay13_rodata.bin", 0x558, 0x560 - 0x558

	.global Unk_ov13_0222925C
Unk_ov13_0222925C: ; 0x0222925C
	.incbin "incbin/overlay13_rodata.bin", 0x560, 0x568 - 0x560

	.global Unk_ov13_02229264
Unk_ov13_02229264: ; 0x02229264
	.incbin "incbin/overlay13_rodata.bin", 0x568, 0x570 - 0x568

	.global Unk_ov13_0222926C
Unk_ov13_0222926C: ; 0x0222926C
	.incbin "incbin/overlay13_rodata.bin", 0x570, 0x578 - 0x570

	.global Unk_ov13_02229274
Unk_ov13_02229274: ; 0x02229274
	.incbin "incbin/overlay13_rodata.bin", 0x578, 0x580 - 0x578

	.global Unk_ov13_0222927C
Unk_ov13_0222927C: ; 0x0222927C
	.incbin "incbin/overlay13_rodata.bin", 0x580, 0x588 - 0x580

	.global Unk_ov13_02229284
Unk_ov13_02229284: ; 0x02229284
	.incbin "incbin/overlay13_rodata.bin", 0x588, 0x598 - 0x588

	.global Unk_ov13_02229294
Unk_ov13_02229294: ; 0x02229294
	.incbin "incbin/overlay13_rodata.bin", 0x598, 0x5A8 - 0x598

	.global Unk_ov13_022292A4
Unk_ov13_022292A4: ; 0x022292A4
	.incbin "incbin/overlay13_rodata.bin", 0x5A8, 0x5B8 - 0x5A8

	.global Unk_ov13_022292B4
Unk_ov13_022292B4: ; 0x022292B4
	.incbin "incbin/overlay13_rodata.bin", 0x5B8, 0x5C8 - 0x5B8

	.global Unk_ov13_022292C4
Unk_ov13_022292C4: ; 0x022292C4
	.incbin "incbin/overlay13_rodata.bin", 0x5C8, 0x5D8 - 0x5C8

	.global Unk_ov13_022292D4
Unk_ov13_022292D4: ; 0x022292D4
	.incbin "incbin/overlay13_rodata.bin", 0x5D8, 0x5F0 - 0x5D8

	.global Unk_ov13_022292EC
Unk_ov13_022292EC: ; 0x022292EC
	.incbin "incbin/overlay13_rodata.bin", 0x5F0, 0x608 - 0x5F0

	.global Unk_ov13_02229304
Unk_ov13_02229304: ; 0x02229304
	.incbin "incbin/overlay13_rodata.bin", 0x608, 0x628 - 0x608

	.global Unk_ov13_02229324
Unk_ov13_02229324: ; 0x02229324
	.incbin "incbin/overlay13_rodata.bin", 0x628, 0x648 - 0x628

	.global Unk_ov13_02229344
Unk_ov13_02229344: ; 0x02229344
	.incbin "incbin/overlay13_rodata.bin", 0x648, 0x668 - 0x648

	.global Unk_ov13_02229364
Unk_ov13_02229364: ; 0x02229364
	.incbin "incbin/overlay13_rodata.bin", 0x668, 0x690 - 0x668

	.global Unk_ov13_0222938C
Unk_ov13_0222938C: ; 0x0222938C
	.incbin "incbin/overlay13_rodata.bin", 0x690, 0x6B8 - 0x690

	.global Unk_ov13_022293B4
Unk_ov13_022293B4: ; 0x022293B4
	.incbin "incbin/overlay13_rodata.bin", 0x6B8, 0x6E0 - 0x6B8

	.global Unk_ov13_022293DC
Unk_ov13_022293DC: ; 0x022293DC
	.incbin "incbin/overlay13_rodata.bin", 0x6E0, 0x708 - 0x6E0

	.global Unk_ov13_02229404
Unk_ov13_02229404: ; 0x02229404
	.incbin "incbin/overlay13_rodata.bin", 0x708, 0x738 - 0x708

	.global Unk_ov13_02229434
Unk_ov13_02229434: ; 0x02229434
	.incbin "incbin/overlay13_rodata.bin", 0x738, 0x768 - 0x738

	.global Unk_ov13_02229464
Unk_ov13_02229464: ; 0x02229464
	.incbin "incbin/overlay13_rodata.bin", 0x768, 0x7A0 - 0x768

	.global Unk_ov13_0222949C
Unk_ov13_0222949C: ; 0x0222949C
	.incbin "incbin/overlay13_rodata.bin", 0x7A0, 0x7D8 - 0x7A0

	.global Unk_ov13_022294D4
Unk_ov13_022294D4: ; 0x022294D4
	.incbin "incbin/overlay13_rodata.bin", 0x7D8, 0x818 - 0x7D8

	.global Unk_ov13_02229514
Unk_ov13_02229514: ; 0x02229514
	.incbin "incbin/overlay13_rodata.bin", 0x818, 0x30C

