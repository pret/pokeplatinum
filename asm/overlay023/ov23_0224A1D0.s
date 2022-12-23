	.include "macros/function.inc"
	.include "overlay023/ov23_0224A1D0.inc"

	

	.text


	thumb_func_start ov23_0224A1D0
ov23_0224A1D0: ; 0x0224A1D0
	push {r4, r5, r6, lr}
	bl sub_02057518
	add r6, r0, #0
	beq _0224A1FC
	mov r5, #0
	add r4, r5, #0
_0224A1DE:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	add r2, r4, #0
	bl sub_02057DB8
	add r0, r5, #0
	bl sub_020593B4
	add r5, r5, #1
	cmp r5, #8
	blt _0224A1DE
	ldr r0, _0224A200 ; =0x000002BD
	mov r1, #1
	strb r1, [r6, r0]
_0224A1FC:
	pop {r4, r5, r6, pc}
	nop
_0224A200: .word 0x000002BD
	thumb_func_end ov23_0224A1D0

	thumb_func_start ov23_0224A204
ov23_0224A204: ; 0x0224A204
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	bl sub_0203608C
	cmp r5, r0
	bne _0224A28A
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224A290
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x1c
	bl sub_0202CFEC
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224A240
	bl sub_020181C4
_0224A240:
	mov r0, #0x9e
	add r6, r4, #0
	lsl r0, r0, #2
	mov r3, #4
	add r6, #0x10
	add r1, r0, #4
_0224A24C:
	ldr r2, [r6, r0]
	sub r3, r3, #1
	str r2, [r6, r1]
	sub r6, r6, #4
	cmp r3, #1
	bge _0224A24C
	mov r0, #0x29
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r7, r5, #2
	ldr r1, [r6, r7]
	sub r0, #0x14
	str r1, [r4, r0]
	ldr r0, [r4, #0x54]
	bl sub_0203D174
	bl sub_020298B0
	ldr r1, [r6, r7]
	bl sub_02028830
	mov r0, #0
	str r0, [r6, r7]
	mov r0, #0x22
	mul r0, r5
	mov r2, #0xff
	add r1, r4, r0
	add r0, r2, #0
	add r0, #0x6b
	strh r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224A28A:
	add r0, r5, #0
	bl ov23_0224AE60
_0224A290:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A204

	thumb_func_start ov23_0224A294
ov23_0224A294: ; 0x0224A294
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02057518
	mov r7, #0x29
	add r2, r0, #0
	lsl r1, r5, #2
	add r0, r2, r1
	lsl r7, r7, #4
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _0224A2F6
	lsl r0, r4, #2
	add r0, r2, r0
	ldr r3, [r0, r7]
	cmp r3, #0
	beq _0224A2F6
	add r6, r2, r7
	str r3, [r6, r1]
	mov r3, #0
	str r3, [r0, r7]
	add r0, r2, r5
	mov r3, #1
	add r0, #0xfa
	strb r3, [r0]
	add r3, r2, r4
	add r3, #0xfa
	mov r0, #0
	strb r0, [r3]
	mov r0, #0x22
	add r3, r5, #0
	mul r3, r0
	ldr r7, _0224A2FC ; =0x0000016A
	add r0, r2, r3
	strh r5, [r0, r7]
	mov r0, #0x22
	mul r0, r4
	mov r5, #0xff
	add r0, r2, r0
	strh r5, [r0, r7]
	add r5, #0x4b
	ldr r0, [r6, r1]
	add r1, r2, r5
	add r1, r1, r3
	bl sub_02025E80
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224A2F6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A2FC: .word 0x0000016A
	thumb_func_end ov23_0224A294

	thumb_func_start ov23_0224A300
ov23_0224A300: ; 0x0224A300
	ldr r3, _0224A304 ; =sub_02059514
	bx r3
	; .align 2, 0
_0224A304: .word sub_02059514
	thumb_func_end ov23_0224A300

	thumb_func_start ov23_0224A308
ov23_0224A308: ; 0x0224A308
	ldr r3, _0224A30C ; =sub_02059514
	bx r3
	; .align 2, 0
_0224A30C: .word sub_02059514
	thumb_func_end ov23_0224A308

	thumb_func_start ov23_0224A310
ov23_0224A310: ; 0x0224A310
	ldr r3, _0224A318 ; =sub_0205948C
	mov r0, #2
	bx r3
	nop
_0224A318: .word sub_0205948C
	thumb_func_end ov23_0224A310

	thumb_func_start ov23_0224A31C
ov23_0224A31C: ; 0x0224A31C
	ldr r3, _0224A324 ; =sub_0205948C
	mov r0, #0x20
	bx r3
	nop
_0224A324: .word sub_0205948C
	thumb_func_end ov23_0224A31C

	thumb_func_start ov23_0224A328
ov23_0224A328: ; 0x0224A328
	ldr r3, _0224A330 ; =sub_0205948C
	mov r0, #1
	bx r3
	nop
_0224A330: .word sub_0205948C
	thumb_func_end ov23_0224A328

	thumb_func_start ov23_0224A334
ov23_0224A334: ; 0x0224A334
	push {r3, lr}
	bl sub_02057518
	cmp r0, #0
	beq _0224A346
	mov r1, #0xae
	mov r2, #0
	lsl r1, r1, #2
	strb r2, [r0, r1]
_0224A346:
	pop {r3, pc}
	thumb_func_end ov23_0224A334

	thumb_func_start ov23_0224A348
ov23_0224A348: ; 0x0224A348
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_02057518
	add r0, r0, r4
	mov r2, #2
	add r1, sp, #0
	strb r2, [r1]
	strb r4, [r1, #1]
	add r0, #0xe2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224A384
	add r0, r4, #0
	bl ov23_0224ACC0
	cmp r0, #0
	bne _0224A384
	add r0, r4, #0
	bl ov23_0224AEA4
	cmp r0, #0
	add r0, sp, #0
	beq _0224A380
	mov r1, #3
	strb r1, [r0]
	b _0224A384
_0224A380:
	mov r1, #1
	strb r1, [r0]
_0224A384:
	mov r0, #0x1d
	add r1, sp, #0
	mov r2, #2
	bl sub_02035AC4
	cmp r0, #0
	beq _0224A3A2
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #2
	beq _0224A3A2
	add r0, r4, #0
	mov r1, #0
	bl sub_02059058
_0224A3A2:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A348

	thumb_func_start ov23_0224A3A8
ov23_0224A3A8: ; 0x0224A3A8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_02057518
	add r4, r0, #0
	bl sub_02035EE0
	cmp r0, #0
	beq _0224A408
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A3E2
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A3E2
	mov r0, #0xae
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0224A408
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, _0224A40C ; =ov23_0224A334
	ldr r1, [r4, #0x54]
	bl ov23_0224F758
	pop {r3, r4, r5, pc}
_0224A3E2:
	ldrb r0, [r5]
	cmp r0, #3
	bne _0224A408
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A408
	mov r0, #0xae
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0224A408
	mov r1, #1
	strb r1, [r4, r0]
	ldr r0, _0224A40C ; =ov23_0224A334
	ldr r1, [r4, #0x54]
	bl ov23_02250A50
_0224A408:
	pop {r3, r4, r5, pc}
	nop
_0224A40C: .word ov23_0224A334
	thumb_func_end ov23_0224A3A8

	thumb_func_start ov23_0224A410
ov23_0224A410: ; 0x0224A410
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	bl sub_02057518
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #8
	blo _0224A42E
	bl GF_AssertFail
_0224A42E:
	ldrb r0, [r5]
	cmp r0, #4
	bne _0224A450
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A450
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224A564 ; =ov23_0224A300
	mov r1, #0x48
	mov r2, #1
	bl ov23_02253F40
_0224A450:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A45E
	ldrb r0, [r5, #1]
	ldrb r1, [r5, #2]
	bl sub_02058FE4
_0224A45E:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A518
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A518
	ldrb r0, [r5, #2]
	ldr r1, _0224A568 ; =ov23_0224A334
	ldr r2, [r4, #0x54]
	bl ov23_0224DCB8
	add r0, r4, #0
	add r0, #0x58
	ldrb r0, [r0]
	mov r1, #0xf
	ldrb r2, [r5, #1]
	bic r0, r1
	mov r1, #0xf
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x58
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x58
	ldrb r0, [r0]
	mov r1, #0xf0
	bic r0, r1
	ldrb r1, [r5, #2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r1, r0
	add r0, r4, #0
	add r0, #0x58
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x59
	ldrb r1, [r0]
	mov r0, #1
	bic r1, r0
	add r0, r4, #0
	add r0, #0x59
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x59
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
	add r0, r4, #0
	add r0, #0x59
	strb r1, [r0]
	ldrb r7, [r5, #2]
	add r0, r4, r7
	add r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224A518
	ldr r0, [r4, #0x54]
	bl sub_0203D174
	bl sub_020298A0
	add r1, r7, #0
	bl sub_020294F4
	add r0, r6, #0
	bl sub_0206B354
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0206B364
	add r0, r6, #0
	bl sub_0206B374
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0206B384
	add r2, r4, #0
	ldrb r1, [r5, #2]
	add r2, #0x5a
	ldrb r0, [r2, r1]
	add r0, r0, #1
	strb r0, [r2, r1]
_0224A518:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A532
	ldrb r6, [r5, #2]
	bl sub_0203608C
	cmp r6, r0
	bne _0224A532
	ldrb r1, [r5, #1]
	ldr r2, [r4, #0x54]
	add r0, r6, #0
	bl ov23_0224F07C
_0224A532:
	ldrb r0, [r5]
	cmp r0, #2
	bne _0224A554
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A554
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224A564 ; =ov23_0224A300
	mov r1, #2
	mov r2, #1
	bl ov23_02253F40
_0224A554:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0224A562
	ldrb r0, [r5, #1]
	ldrb r1, [r5, #2]
	bl ov23_0224300C
_0224A562:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A564: .word ov23_0224A300
_0224A568: .word ov23_0224A334
	thumb_func_end ov23_0224A410

	thumb_func_start ov23_0224A56C
ov23_0224A56C: ; 0x0224A56C
	mov r0, #3
	bx lr
	thumb_func_end ov23_0224A56C

	thumb_func_start ov23_0224A570
ov23_0224A570: ; 0x0224A570
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, sp, #0
	strb r4, [r0, #1]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0224A588
	cmp r1, #3
	beq _0224A598
	add sp, #4
	pop {r3, r4, pc}
_0224A588:
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x55
	add r1, sp, #0
	bl sub_02035B48
	add sp, #4
	pop {r3, r4, pc}
_0224A598:
	mov r1, #3
	strb r1, [r0]
	mov r0, #0x55
	add r1, sp, #0
	bl sub_02035B48
	add r0, r4, #0
	mov r1, #0
	bl sub_02059058
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov23_0224A570

	thumb_func_start ov23_0224A5B0
ov23_0224A5B0: ; 0x0224A5B0
	push {r3, lr}
	bl sub_0203608C
	bl ov23_0224B040
	bl ov23_022421AC
	bl ov23_02254044
	mov r0, #4
	bl sub_0205948C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A5B0

	thumb_func_start ov23_0224A5CC
ov23_0224A5CC: ; 0x0224A5CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	bl sub_02057518
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r7, #0
	bl sub_02035D78
	cmp r0, #0
	bne _0224A5F8
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
_0224A5F8:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r0, #0x3c
	ble _0224A604
	mov r4, #1
_0224A604:
	cmp r4, #0
	beq _0224A61E
	ldr r0, [sp]
	mov r1, #1
	add r0, r0, r7
	add r0, #0xea
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0224A61E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224A5CC

	thumb_func_start ov23_0224A620
ov23_0224A620: ; 0x0224A620
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	str r2, [r1, #0]
	add r0, r4, r5
	str r5, [r1, #4]
	add r0, #0xea
	strb r2, [r0]
	ldr r0, _0224A654 ; =ov23_0224A5CC
	mov r2, #0x64
	bl sub_0200D9E8
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	pop {r3, r4, r5, pc}
	nop
_0224A654: .word ov23_0224A5CC
	thumb_func_end ov23_0224A620

	thumb_func_start ov23_0224A658
ov23_0224A658: ; 0x0224A658
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	tst r1, r2
	beq _0224A66C
	mov r1, #0xb
	add r0, sp, #0
	strb r1, [r0]
	b _0224A69E
_0224A66C:
	bl ov23_0224AEA4
	cmp r0, #0
	beq _0224A67C
	mov r1, #0xb
	add r0, sp, #0
	strb r1, [r0]
	b _0224A69E
_0224A67C:
	cmp r4, #0xff
	bne _0224A684
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224A684:
	add r0, r4, #0
	bl ov23_0224AEA4
	cmp r0, #0
	bne _0224A692
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224A692:
	mov r1, #5
	add r0, sp, #0
	strb r1, [r0]
	add r0, r4, #0
	bl ov23_0224A620
_0224A69E:
	add r0, sp, #0
	strb r5, [r0, #1]
	strb r4, [r0, #2]
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	mov r0, #0x55
	add r1, sp, #0
	bl sub_02035B48
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224A658

	thumb_func_start ov23_0224A6B8
ov23_0224A6B8: ; 0x0224A6B8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov23_0224AEA4
	cmp r0, #0
	beq _0224A6CE
	mov r1, #0xc
	add r0, sp, #0
	strb r1, [r0]
	b _0224A6D4
_0224A6CE:
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0224A6D4:
	strb r4, [r0, #1]
	mov r0, #0x55
	add r1, sp, #0
	bl sub_02035B48
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov23_0224A6B8

	thumb_func_start ov23_0224A6E4
ov23_0224A6E4: ; 0x0224A6E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02057518
	add r6, r0, #0
	bl ov23_0224321C
	mov r0, #0
	bl sub_02057FC4
	mov r0, #4
	bl sub_02059464
	bl ov23_022421AC
	add r7, r0, #0
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r7, #0
	bl ov23_02254068
	cmp r4, #0
	beq _0224A746
	bl sub_0203608C
	add r0, r6, r0
	mov r1, #0
	add r0, #0xfa
	strb r1, [r0]
	bl sub_0203608C
	bl ov23_0224B040
	bl sub_0203608C
	bl ov23_0224B00C
	bl ov23_022421AC
	ldr r3, _0224A770 ; =ov23_0224A5B0
	mov r1, #0xa
	mov r2, #1
	bl ov23_02253F40
	b _0224A754
_0224A746:
	bl ov23_022421AC
	ldr r3, _0224A770 ; =ov23_0224A5B0
	mov r1, #0xb
	mov r2, #1
	bl ov23_02253F40
_0224A754:
	mov r0, #0xff
	str r0, [sp]
	mov r3, #0
	ldr r1, _0224A774 ; =0x00000424
	mov r0, #4
	mov r2, #0x3c
	str r3, [sp, #4]
	bl sub_0200502C
	ldr r0, _0224A778 ; =0x000005F6
	bl sub_02005748
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A770: .word ov23_0224A5B0
_0224A774: .word 0x00000424
_0224A778: .word 0x000005F6
	thumb_func_end ov23_0224A6E4

	thumb_func_start ov23_0224A77C
ov23_0224A77C: ; 0x0224A77C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r2, #0
	bl sub_02057518
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_0203D174
	bl sub_020298A0
	add r6, r0, #0
	ldrb r0, [r5]
	cmp r0, #5
	bgt _0224A7AE
	cmp r0, #0
	blt _0224A7E8
	beq _0224A7C4
	cmp r0, #3
	bne _0224A7A6
	b _0224A96A
_0224A7A6:
	cmp r0, #5
	beq _0224A812
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A7AE:
	cmp r0, #0xc
	bgt _0224A7E8
	cmp r0, #0xb
	blt _0224A7E8
	bne _0224A7BA
	b _0224A924
_0224A7BA:
	cmp r0, #0xc
	bne _0224A7C0
	b _0224A948
_0224A7C0:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A7C4:
	ldrb r0, [r5, #1]
	lsl r1, r0, #2
	add r2, r4, r1
	mov r1, #0x29
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _0224A7E8
	bl ov23_0224AE60
	ldrb r0, [r5, #1]
	bl ov23_0224B040
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _0224A7EA
_0224A7E8:
	b _0224AA52
_0224A7EA:
	bl sub_020594FC
	bl ov23_022421AC
	ldr r3, _0224AA58 ; =ov23_0224A308
	mov r1, #2
	mov r2, #1
	bl ov23_02253F40
	mov r0, #0xff
	str r0, [sp]
	mov r3, #0
	ldr r1, _0224AA5C ; =0x00000424
	mov r0, #4
	mov r2, #0x3c
	str r3, [sp, #4]
	bl sub_0200502C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A812:
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	cmp r0, #0
	ldrb r0, [r5, #2]
	bne _0224A826
	bl ov23_0224AE60
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A826:
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224A848
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _0224A840
	b _0224AA52
_0224A840:
	bl sub_02059514
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A848:
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	add r1, r0, #0
	ldrb r0, [r5, #2]
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl sub_0202600C
	cmp r0, #1
	bne _0224A8B2
	ldrb r0, [r5, #2]
	bl ov23_0224AE60
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A894
	add r0, r6, #0
	bl sub_020297EC
	bl sub_020594FC
	bl ov23_022421AC
	ldr r3, _0224AA60 ; =ov23_0224A300
	mov r1, #0xd
	mov r2, #1
	bl ov23_02253F40
	ldr r0, _0224AA64 ; =0x00000625
	bl sub_02005748
	b _0224A8A8
_0224A894:
	bl sub_0203608C
	ldrb r1, [r5, #2]
	cmp r1, r0
	bne _0224A8A8
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl ov23_0224A6E4
_0224A8A8:
	ldrb r0, [r5, #1]
	bl ov23_0224D530
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A8B2:
	ldrb r0, [r5, #1]
	ldrb r1, [r5, #2]
	bl ov23_0224A294
	cmp r0, #0
	beq _0224A92E
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224A904
	add r0, r6, #0
	bl sub_0202955C
	mov r0, #1
	bl sub_02059464
	bl ov23_022421AC
	add r4, r0, #0
	ldrb r0, [r5, #2]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02254068
	bl ov23_022421AC
	ldr r3, _0224AA68 ; =ov23_0224A328
	mov r1, #0xc
	mov r2, #1
	bl ov23_02253F40
	ldr r0, _0224AA6C ; =0x00000425
	bl sub_0200549C
	ldr r0, _0224AA64 ; =0x00000625
	bl sub_02005748
	b _0224A918
_0224A904:
	bl sub_0203608C
	ldrb r1, [r5, #2]
	cmp r1, r0
	bne _0224A918
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl ov23_0224A6E4
_0224A918:
	ldrb r0, [r5, #1]
	ldrb r1, [r5, #2]
	bl ov23_0224D518
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A924:
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _0224A930
_0224A92E:
	b _0224AA52
_0224A930:
	mov r0, #2
	bl sub_02059464
	bl ov23_022421AC
	ldr r3, _0224AA70 ; =ov23_0224A310
	mov r1, #6
	mov r2, #1
	bl ov23_02253F40
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A948:
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224AA52
	mov r0, #0x20
	bl sub_02059464
	bl ov23_022421AC
	ldr r3, _0224AA74 ; =ov23_0224A31C
	mov r1, #5
	mov r2, #1
	bl ov23_02253F40
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0224A96A:
	ldrb r0, [r5, #1]
	mov r1, #0
	add r0, r4, r0
	add r0, #0xfa
	strb r1, [r0]
	ldrb r0, [r5, #1]
	bl ov23_0224B040
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224AA10
	ldr r0, [r4, #0x54]
	bl sub_0203D174
	bl sub_020298A0
	add r6, r0, #0
	bl sub_0202958C
	add r1, sp, #8
	strb r0, [r1]
	add r0, r6, #0
	bl sub_020295C0
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AA40
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _0224A9CE
	ldr r0, [r4, #0x54]
	bl sub_0206DAB8
	ldr r0, _0224AA78 ; =0x000002B2
	ldr r1, _0224AA7C ; =0x0000FFFF
	ldrh r2, [r4, r0]
	cmp r2, r1
	beq _0224A9CE
	add r1, r2, #1
	strh r1, [r4, r0]
_0224A9CE:
	bl sub_020594FC
	ldr r0, _0224AA80 ; =0x0000062B
	bl sub_02005748
	add r0, r6, #0
	bl sub_0202958C
	add r1, sp, #8
	ldrb r1, [r1]
	cmp r1, r0
	bne _0224A9F6
	bl ov23_022421AC
	ldr r3, _0224AA60 ; =ov23_0224A300
	mov r1, #7
	mov r2, #1
	bl ov23_02253F40
	b _0224A9FE
_0224A9F6:
	mov r0, #0x60
	add r1, sp, #8
	bl sub_020360D0
_0224A9FE:
	mov r0, #0xff
	str r0, [sp]
	mov r3, #0
	ldr r1, _0224AA5C ; =0x00000424
	mov r0, #4
	mov r2, #0x3c
	str r3, [sp, #4]
	bl sub_0200502C
_0224AA10:
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224AA4C
	bl sub_0203608C
	bl sub_02032EE8
	add r1, r0, #0
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl sub_0202600C
	cmp r0, #1
	bne _0224AA4C
	ldrb r0, [r5, #1]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_0206DAD4
_0224AA4C:
	ldrb r0, [r5, #1]
	bl ov23_0224A204
_0224AA52:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224AA58: .word ov23_0224A308
_0224AA5C: .word 0x00000424
_0224AA60: .word ov23_0224A300
_0224AA64: .word 0x00000625
_0224AA68: .word ov23_0224A328
_0224AA6C: .word 0x00000425
_0224AA70: .word ov23_0224A310
_0224AA74: .word ov23_0224A31C
_0224AA78: .word 0x000002B2
_0224AA7C: .word 0x0000FFFF
_0224AA80: .word 0x0000062B
	thumb_func_end ov23_0224A77C

	thumb_func_start ov23_0224AA84
ov23_0224AA84: ; 0x0224AA84
	push {r3, lr}
	bl sub_02057518
	mov r2, #0xff
	add r1, r2, #0
	mov r3, #0
	add r1, #0x6b
_0224AA92:
	add r3, r3, #1
	strh r2, [r0, r1]
	add r0, #0x22
	cmp r3, #8
	blt _0224AA92
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224AA84

	thumb_func_start ov23_0224AAA0
ov23_0224AAA0: ; 0x0224AAA0
	push {r3, lr}
	bl sub_02057518
	ldr r1, _0224AAAC ; =0x0000025A
	add r0, r0, r1
	pop {r3, pc}
	; .align 2, 0
_0224AAAC: .word 0x0000025A
	thumb_func_end ov23_0224AAA0

	thumb_func_start ov23_0224AAB0
ov23_0224AAB0: ; 0x0224AAB0
	push {r3, r4, r5, lr}
	bl sub_02057518
	add r4, r0, #0
	ldr r0, _0224AB28 ; =0x000002B9
	mov r1, #0
	strb r1, [r4, r0]
	bl sub_0203608C
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224AAE8
	bl sub_0203608C
	add r1, r0, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x29
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	mov r0, #0x5b
	bl sub_020360D0
	pop {r3, r4, r5, pc}
_0224AAE8:
	mov r0, #0xf
	bl sub_02025E6C
	add r4, r0, #0
	mov r0, #0x14
	mov r1, #0xf
	bl sub_02023790
	add r5, r0, #0
	cmp r4, #0
	bne _0224AB02
	bl GF_AssertFail
_0224AB02:
	cmp r5, #0
	bne _0224AB0A
	bl GF_AssertFail
_0224AB0A:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02025EE0
	mov r0, #0x5b
	add r1, r4, #0
	bl sub_020360D0
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AB28: .word 0x000002B9
	thumb_func_end ov23_0224AAB0

	thumb_func_start ov23_0224AB2C
ov23_0224AB2C: ; 0x0224AB2C
	mov r0, #0x20
	bx lr
	thumb_func_end ov23_0224AB2C

	thumb_func_start ov23_0224AB30
ov23_0224AB30: ; 0x0224AB30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r2, #0
	bl sub_02057518
	add r7, r0, #0
	add r0, sp, #4
	strb r4, [r0]
	beq _0224ABB0
	ldr r1, _0224ABB8 ; =0x0000014A
	mov r0, #0x22
	add r5, r4, #0
	mul r5, r0
	add r1, r7, r1
	add r0, r6, #0
	add r1, r1, r5
	bl sub_02025E80
	add r0, r6, #0
	mov r1, #0xf
	bl sub_02025F04
	str r0, [sp]
	bl sub_02023C3C
	cmp r0, #0
	beq _0224AB6E
	ldr r0, _0224ABBC ; =0x0000016A
	add r1, r7, r5
	strh r4, [r1, r0]
_0224AB6E:
	ldr r0, _0224ABB8 ; =0x0000014A
	mov r4, #0
	add r5, r7, #0
	add r6, r7, r0
_0224AB76:
	ldr r0, _0224ABBC ; =0x0000016A
	ldrh r0, [r5, r0]
	cmp r0, #0xff
	beq _0224AB8C
	ldr r0, _0224ABBC ; =0x0000016A
	add r1, r6, #0
	strh r4, [r5, r0]
	mov r0, #0x5c
	mov r2, #0x22
	bl sub_02035A3C
_0224AB8C:
	add r4, r4, #1
	add r5, #0x22
	add r6, #0x22
	cmp r4, #8
	blt _0224AB76
	mov r0, #0x5d
	add r1, sp, #4
	mov r2, #1
	bl sub_02035AC4
	ldr r0, [sp]
	bl sub_020237BC
	ldr r0, _0224ABC0 ; =0x000002C2
	mov r1, #1
	add sp, #8
	strb r1, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224ABB0:
	bl GF_AssertFail
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224ABB8: .word 0x0000014A
_0224ABBC: .word 0x0000016A
_0224ABC0: .word 0x000002C2
	thumb_func_end ov23_0224AB30

	thumb_func_start ov23_0224ABC4
ov23_0224ABC4: ; 0x0224ABC4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	bl sub_02057518
	add r4, r0, #0
	beq _0224AC08
	ldrh r5, [r7, #0x20]
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224ABE4
	bl sub_020181C4
_0224ABE4:
	mov r0, #0x29
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r0, r5, #2
	str r0, [sp]
	mov r0, #0xf
	bl sub_02025E6C
	ldr r1, [sp]
	str r0, [r6, r1]
	ldr r1, [r6, r1]
	add r0, r7, #0
	bl sub_02025E80
	add r0, r4, r5
	mov r1, #1
	add r0, #0xfa
	strb r1, [r0]
_0224AC08:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224ABC4

	thumb_func_start ov23_0224AC0C
ov23_0224AC0C: ; 0x0224AC0C
	mov r0, #0x22
	bx lr
	thumb_func_end ov23_0224AC0C

	thumb_func_start ov23_0224AC10
ov23_0224AC10: ; 0x0224AC10
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_02057518
	add r4, r0, #0
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _0224AC2A
	ldr r0, _0224AC34 ; =0x000002B9
	mov r1, #1
	strb r1, [r4, r0]
_0224AC2A:
	ldr r0, _0224AC38 ; =0x000002C2
	mov r1, #0
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0224AC34: .word 0x000002B9
_0224AC38: .word 0x000002C2
	thumb_func_end ov23_0224AC10

	thumb_func_start ov23_0224AC3C
ov23_0224AC3C: ; 0x0224AC3C
	push {r3, lr}
	bl sub_02057518
	ldr r1, _0224AC48 ; =0x000002B9
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0224AC48: .word 0x000002B9
	thumb_func_end ov23_0224AC3C

	thumb_func_start ov23_0224AC4C
ov23_0224AC4C: ; 0x0224AC4C
	push {r4, r5, r6, lr}
	mov r6, #0
	bl sub_0203608C
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	lsl r0, r5, #2
	add r2, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _0224AC84
	add r6, r1, #0
	mov r1, #0
	str r1, [r2, r0]
	add r0, r4, r5
	add r0, #0xfa
	strb r1, [r0]
	mov r1, #0x22
	mul r1, r5
	mov r0, #0xff
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x6b
	strh r0, [r2, r1]
_0224AC84:
	mov r5, #0
_0224AC86:
	add r0, r5, #0
	bl ov23_0224AE60
	add r5, r5, #1
	cmp r5, #8
	blt _0224AC86
	cmp r6, #0
	beq _0224ACB4
	mov r0, #0x29
	lsl r0, r0, #4
	str r6, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfa
	strb r1, [r0]
	ldr r1, _0224ACB8 ; =0x0000014A
	add r0, r6, #0
	add r1, r4, r1
	bl sub_02025E80
	ldr r0, _0224ACBC ; =0x0000016A
	mov r1, #0
	strh r1, [r4, r0]
_0224ACB4:
	pop {r4, r5, r6, pc}
	nop
_0224ACB8: .word 0x0000014A
_0224ACBC: .word 0x0000016A
	thumb_func_end ov23_0224AC4C

	thumb_func_start ov23_0224ACC0
ov23_0224ACC0: ; 0x0224ACC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224ACE4
	add r1, r4, #0
	bl ov23_0224993C
	bl ov23_0224999C
	cmp r0, #0
	bne _0224ACE0
	mov r0, #1
	pop {r4, pc}
_0224ACE0:
	mov r0, #0
	pop {r4, pc}
_0224ACE4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov23_0224ACC0

	thumb_func_start ov23_0224ACE8
ov23_0224ACE8: ; 0x0224ACE8
	push {r3, lr}
	add r1, sp, #0
	strb r0, [r1]
	mov r0, #0x1a
	add r1, sp, #0
	bl sub_02035B48
	pop {r3, pc}
	thumb_func_end ov23_0224ACE8

	thumb_func_start ov23_0224ACF8
ov23_0224ACF8: ; 0x0224ACF8
	ldr r3, _0224AD00 ; =ov23_02243020
	ldrb r0, [r2]
	bx r3
	nop
_0224AD00: .word ov23_02243020
	thumb_func_end ov23_0224ACF8

	thumb_func_start ov23_0224AD04
ov23_0224AD04: ; 0x0224AD04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	bne _0224AD14
	ldr r0, _0224AD3C ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_0224AD14:
	bl sub_0203608C
	cmp r5, r0
	bne _0224AD26
	lsl r0, r5, #3
	add r0, r4, r0
	add r0, #0xa2
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0224AD26:
	bl sub_02058C40
	cmp r0, #0
	beq _0224AD38
	lsl r0, r5, #3
	add r0, r4, r0
	add r0, #0xa2
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0224AD38:
	ldr r0, _0224AD3C ; =0x0000FFFF
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AD3C: .word 0x0000FFFF
	thumb_func_end ov23_0224AD04

	thumb_func_start ov23_0224AD40
ov23_0224AD40: ; 0x0224AD40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	bne _0224AD50
	ldr r0, _0224AD78 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
_0224AD50:
	bl sub_0203608C
	cmp r5, r0
	bne _0224AD62
	lsl r0, r5, #3
	add r0, r4, r0
	add r0, #0xa4
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0224AD62:
	bl sub_02058C40
	cmp r0, #0
	beq _0224AD74
	lsl r0, r5, #3
	add r0, r4, r0
	add r0, #0xa4
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0224AD74:
	ldr r0, _0224AD78 ; =0x0000FFFF
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224AD78: .word 0x0000FFFF
	thumb_func_end ov23_0224AD40

	thumb_func_start ov23_0224AD7C
ov23_0224AD7C: ; 0x0224AD7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02057518
	ldr r0, [r0, #4]
	add r1, r5, #0
	bl ov23_0224993C
	add r1, r4, #0
	bl ov23_02249994
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224AD7C

	thumb_func_start ov23_0224AD98
ov23_0224AD98: ; 0x0224AD98
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	ldr r0, [r0, #4]
	add r1, r4, #0
	bl ov23_0224993C
	mov r1, #0
	bl ov23_02249994
	pop {r4, pc}
	thumb_func_end ov23_0224AD98

	thumb_func_start ov23_0224ADB0
ov23_0224ADB0: ; 0x0224ADB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r6, r3, #0
	bl sub_02057518
	add r4, r0, #0
	add r4, #0x62
	lsl r7, r5, #3
	add r0, r6, #0
	add r5, r4, r7
	bl sub_0206419C
	ldr r1, [sp]
	add r0, r1, r0
	strh r0, [r4, r7]
	add r0, r6, #0
	bl sub_020641A8
	ldr r1, [sp, #4]
	add r0, r1, r0
	strh r0, [r5, #2]
	strb r6, [r5, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224ADB0

	thumb_func_start ov23_0224ADE8
ov23_0224ADE8: ; 0x0224ADE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02057518
	add r4, r0, #0
	beq _0224AE58
	add r1, r4, #0
	add r1, #0xa2
	lsl r0, r6, #3
	add r5, r1, r0
	ldr r0, _0224AE5C ; =0x000002BD
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224AE18
	ldrh r1, [r5]
	ldrh r3, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r2, #0
	bl ov5_021F5634
_0224AE18:
	ldr r0, [sp]
	strh r7, [r5]
	strh r0, [r5, #2]
	ldr r0, [sp, #4]
	strb r0, [r5, #4]
	lsl r0, r6, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0224AE36
	ldr r2, [sp]
	ldr r3, [sp, #4]
	add r1, r7, #0
	bl sub_0205ECE0
_0224AE36:
	ldr r0, _0224AE5C ; =0x000002BD
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224AE4A
	ldrh r1, [r5]
	ldrh r3, [r5, #2]
	ldr r0, [r4, #0x54]
	mov r2, #0
	bl ov5_021F5634
_0224AE4A:
	ldr r0, _0224AE5C ; =0x000002BD
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224AE58
	add r0, r6, #0
	bl ov23_0224B040
_0224AE58:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224AE5C: .word 0x000002BD
	thumb_func_end ov23_0224ADE8

	thumb_func_start ov23_0224AE60
ov23_0224AE60: ; 0x0224AE60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02057518
	add r4, r0, #0
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224AEA0
	bl sub_020181C4
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, r5
	add r0, #0xfa
	strb r2, [r0]
	mov r0, #0x22
	mul r0, r5
	mov r2, #0xff
	add r1, r4, r0
	add r0, r2, #0
	add r0, #0x6b
	strh r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224AEA0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224AE60

	thumb_func_start ov23_0224AEA4
ov23_0224AEA4: ; 0x0224AEA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	lsl r1, r4, #2
	add r1, r0, r1
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224AEBE
	mov r0, #1
	pop {r4, pc}
_0224AEBE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224AEA4

	thumb_func_start ov23_0224AEC4
ov23_0224AEC4: ; 0x0224AEC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	bl sub_02057518
	add r4, r0, #0
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224AF42
	add r0, r7, #0
	bl sub_02032EE8
	str r0, [sp]
	cmp r0, #0
	beq _0224AF42
	mov r0, #0x29
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r0, r5, #2
	str r0, [sp, #4]
	mov r0, #0xf
	bl sub_02025E6C
	ldr r1, [sp, #4]
	str r0, [r6, r1]
	ldr r0, [sp]
	ldr r1, [r6, r1]
	bl sub_02025E80
	add r0, r4, r5
	mov r1, #1
	add r0, #0xfa
	strb r1, [r0]
	mov r0, #0x22
	add r1, r5, #0
	mul r1, r0
	ldr r2, _0224AF48 ; =0x0000016A
	add r0, r4, r1
	strh r5, [r0, r2]
	sub r2, #0x20
	add r2, r4, r2
	ldr r0, [sp]
	add r1, r2, r1
	bl sub_02025E80
	bl sub_0203608C
	cmp r7, r0
	bne _0224AF3C
	ldr r0, [r4, #0x54]
	ldr r0, [r0, #0xc]
	bl sub_020298A0
	bl sub_020297B4
_0224AF3C:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224AF42:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224AF48: .word 0x0000016A
	thumb_func_end ov23_0224AEC4

	thumb_func_start ov23_0224AF4C
ov23_0224AF4C: ; 0x0224AF4C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02057518
	add r5, r0, #0
	add r5, #0x28
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0224AF78
	bl sub_020714F0
	cmp r0, #0
	beq _0224AF70
	ldr r0, [r5, r4]
	bl sub_0207136C
	b _0224AF74
_0224AF70:
	bl GF_AssertFail
_0224AF74:
	mov r0, #0
	str r0, [r5, r4]
_0224AF78:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224AF4C

	thumb_func_start ov23_0224AF7C
ov23_0224AF7C: ; 0x0224AF7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02057518
	ldr r1, _0224B008 ; =0x000002BD
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _0224B006
	lsl r4, r5, #2
	add r1, r0, r4
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0224B006
	add r7, r0, #0
	add r7, #0xfa
	ldrb r2, [r7, r5]
	cmp r2, #3
	bhi _0224B006
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224AFAC: ; jump table
	.short _0224B000 - _0224AFAC - 2 ; case 0
	.short _0224AFE8 - _0224AFAC - 2 ; case 1
	.short _0224AFD0 - _0224AFAC - 2 ; case 2
	.short _0224AFB4 - _0224AFAC - 2 ; case 3
_0224AFB4:
	add r6, r0, #0
	add r6, #0x28
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0224AFCA
	add r0, r1, #0
	bl sub_0205EB3C
	bl ov5_021F5488
	str r0, [r6, r4]
_0224AFCA:
	mov r0, #0
	strb r0, [r7, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224AFD0:
	add r5, r0, #0
	add r5, #0x28
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0224B006
	add r0, r1, #0
	bl sub_0205EB3C
	bl ov5_021F52E4
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0224AFE8:
	add r5, r0, #0
	add r5, #0x28
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0224B006
	add r0, r1, #0
	bl sub_0205EB3C
	bl ov5_021F511C
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0224B000:
	add r0, r5, #0
	bl ov23_0224AF4C
_0224B006:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B008: .word 0x000002BD
	thumb_func_end ov23_0224AF7C

	thumb_func_start ov23_0224B00C
ov23_0224B00C: ; 0x0224B00C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	add r0, #0xfa
	ldrb r1, [r0, r4]
	cmp r1, #1
	beq _0224B020
	mov r1, #2
	strb r1, [r0, r4]
_0224B020:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224B00C

	thumb_func_start ov23_0224B024
ov23_0224B024: ; 0x0224B024
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	add r0, #0xfa
	ldrb r1, [r0, r4]
	cmp r1, #1
	beq _0224B038
	mov r1, #3
	strb r1, [r0, r4]
_0224B038:
	add r0, r4, #0
	bl ov23_0224AF4C
	pop {r4, pc}
	thumb_func_end ov23_0224B024

	thumb_func_start ov23_0224B040
ov23_0224B040: ; 0x0224B040
	push {r4, lr}
	add r4, r0, #0
	bl sub_02057518
	add r0, #0xfa
	ldrb r1, [r0, r4]
	cmp r1, #1
	beq _0224B054
	mov r1, #0
	strb r1, [r0, r4]
_0224B054:
	add r0, r4, #0
	bl ov23_0224AF4C
	pop {r4, pc}
	thumb_func_end ov23_0224B040