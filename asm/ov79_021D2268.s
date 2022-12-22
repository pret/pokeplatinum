	.include "macros/function.inc"
	.include "include/ov79_021D2268.inc"

	

	.text


	thumb_func_start ov79_021D2268
ov79_021D2268: ; 0x021D2268
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	add r4, r2, #0
	str r0, [r1, #8]
	add r7, r3, #0
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl FX_Div
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl FX_Div
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl FX_Div
	add r2, sp, #0
	str r0, [r5, #8]
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r6, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov79_021D2268

	thumb_func_start ov79_021D22AC
ov79_021D22AC: ; 0x021D22AC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x2e
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x6f
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x2e
	bl sub_0200681C
	mov r2, #0x6f
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x2e
	str r0, [r4, #0]
	str r5, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov79_021D22AC

	thumb_func_start ov79_021D22E4
ov79_021D22E4: ; 0x021D22E4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #2
	blt _021D2308
	cmp r0, #5
	bgt _021D2308
	add r0, r4, #0
	add r0, #0x40
	bl ov79_021D3820
	ldr r0, [r4, #0x5c]
	bl sub_02099160
_021D2308:
	ldr r0, [r5, #0]
	cmp r0, #7
	bls _021D2310
	b _021D2442
_021D2310:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D231C: ; jump table
	.short _021D232C - _021D231C - 2 ; case 0
	.short _021D2372 - _021D231C - 2 ; case 1
	.short _021D238C - _021D231C - 2 ; case 2
	.short _021D23B6 - _021D231C - 2 ; case 3
	.short _021D23C4 - _021D231C - 2 ; case 4
	.short _021D23EE - _021D231C - 2 ; case 5
	.short _021D23FC - _021D231C - 2 ; case 6
	.short _021D240C - _021D231C - 2 ; case 7
_021D232C:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D2454 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D2458 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	b _021D2448
_021D2372:
	add r0, r4, #0
	bl ov79_021D247C
	cmp r0, #0
	bne _021D2382
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D2382:
	ldr r0, _021D245C ; =ov79_021D252C
	add r1, r4, #0
	bl sub_02017798
	b _021D2448
_021D238C:
	ldr r1, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #4]
	cmp r1, #4
	bge _021D239C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D239C:
	mov r0, #0
	str r0, [r4, #4]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #0]
	add r3, r0, #0
	str r2, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	b _021D2448
_021D23B6:
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D2448
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D23C4:
	add r0, r4, #0
	bl ov79_021D2928
	cmp r0, #0
	bne _021D23D4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D23D4:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	b _021D2448
_021D23EE:
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D2448
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D23FC:
	add r0, r4, #0
	bl ov79_021D24D4
	cmp r0, #0
	bne _021D2448
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D240C:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D2454 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D2458 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	b _021D2448
_021D2442:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D2448:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D2454: .word 0xFFFFE0FF
_021D2458: .word 0x04001000
_021D245C: .word ov79_021D252C
	thumb_func_end ov79_021D22E4

	thumb_func_start ov79_021D2460
ov79_021D2460: ; 0x021D2460
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006830
	ldr r0, [r4, #0]
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov79_021D2460

	thumb_func_start ov79_021D247C
ov79_021D247C: ; 0x021D247C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021D2490
	cmp r1, #1
	beq _021D249C
	cmp r1, #2
	beq _021D24A8
	b _021D24C8
_021D2490:
	bl ov79_021D257C
	add r0, r4, #0
	bl ov79_021D2634
	b _021D24C8
_021D249C:
	bl ov79_021D2768
	add r0, r4, #0
	bl ov79_021D270C
	b _021D24C8
_021D24A8:
	bl ov79_021D27D8
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, #0x40
	add r1, #0x30
	bl ov79_021D3768
	add r0, r4, #0
	bl ov79_021D2864
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021D24C8:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D247C

	thumb_func_start ov79_021D24D4
ov79_021D24D4: ; 0x021D24D4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #3
	bhi _021D2520
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D24EA: ; jump table
	.short _021D24F2 - _021D24EA - 2 ; case 0
	.short _021D2506 - _021D24EA - 2 ; case 1
	.short _021D2512 - _021D24EA - 2 ; case 2
	.short _021D2518 - _021D24EA - 2 ; case 3
_021D24F2:
	bl ov79_021D2908
	add r0, r4, #0
	add r0, #0x40
	bl ov79_021D385C
	add r0, r4, #0
	bl ov79_021D2858
	b _021D2520
_021D2506:
	bl ov79_021D2754
	add r0, r4, #0
	bl ov79_021D27AC
	b _021D2520
_021D2512:
	bl ov79_021D260C
	b _021D2520
_021D2518:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021D2520:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D24D4

	thumb_func_start ov79_021D252C
ov79_021D252C: ; 0x021D252C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_0201C2B8
	ldr r0, [r4, #0x44]
	bl sub_02008A94
	bl sub_0200C800
	bl sub_0201DCAC
	ldr r3, _021D2554 ; =0x027E0000
	ldr r1, _021D2558 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D2554: .word 0x027E0000
_021D2558: .word 0x00003FF8
	thumb_func_end ov79_021D252C

	thumb_func_start ov79_021D255C
ov79_021D255C: ; 0x021D255C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D2578 ; =0x021D3C70
	add r3, sp, #0
	mov r2, #5
_021D2566:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2566
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D2578: .word 0x021D3C70
	thumb_func_end ov79_021D255C

	thumb_func_start ov79_021D257C
ov79_021D257C: ; 0x021D257C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r0, #0
	bl ov79_021D255C
	ldr r0, [r5, #0]
	bl sub_02018340
	add r3, sp, #8
	ldr r4, _021D2600 ; =0x021D3C2C
	str r0, [r5, #0x68]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r4, _021D2604 ; =0x021D3C98
	add r3, sp, #0x18
	mov r2, #0xa
_021D25A8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D25A8
	ldr r1, _021D2608 ; =0x021D3C20
	ldr r0, [r4, #0]
	ldrb r2, [r1]
	str r0, [r3, #0]
	add r0, sp, #4
	strb r2, [r0]
	ldrb r2, [r1, #1]
	ldrb r1, [r1, #2]
	add r4, sp, #4
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	mov r0, #0
	str r0, [sp]
	add r6, sp, #0x18
_021D25CC:
	ldrb r7, [r4]
	ldr r0, [r5, #0x68]
	add r2, r6, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #0x68]
	add r1, r7, #0
	bl sub_02019EBC
	ldr r3, [r5, #0]
	add r0, r7, #0
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #1
	add r6, #0x1c
	str r0, [sp]
	cmp r0, #3
	blt _021D25CC
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2600: .word 0x021D3C2C
_021D2604: .word 0x021D3C98
_021D2608: .word 0x021D3C20
	thumb_func_end ov79_021D257C

	thumb_func_start ov79_021D260C
ov79_021D260C: ; 0x021D260C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #1
_021D2612:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x68]
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	cmp r4, #3
	blt _021D2612
	ldr r0, [r5, #0x68]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r5, #0x68]
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov79_021D260C

	thumb_func_start ov79_021D2634
ov79_021D2634: ; 0x021D2634
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x57
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r0, #3
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r1, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xa0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [r5, #0x68]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r5, #0x68]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov79_021D2634

	thumb_func_start ov79_021D270C
ov79_021D270C: ; 0x021D270C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x68]
	ldr r2, _021D2750 ; =0x021D3C24
	add r1, #0x6c
	bl sub_0201A8D4
	add r0, r4, #0
	add r0, #0x6c
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0x10]
	mov r1, #1
	ldrb r0, [r0, #0xb]
	add r2, r1, #0
	mov r3, #0xe
	str r0, [sp]
	ldr r0, [r4, #0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x68]
	bl sub_0200DD0C
	mov r1, #0x1e
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #4
	bl sub_02002E98
	add sp, #8
	pop {r4, pc}
	nop
_021D2750: .word 0x021D3C24
	thumb_func_end ov79_021D270C

	thumb_func_start ov79_021D2754
ov79_021D2754: ; 0x021D2754
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x6c
	bl sub_0201ACF4
	add r4, #0x6c
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov79_021D2754

	thumb_func_start ov79_021D2768
ov79_021D2768: ; 0x021D2768
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r2, _021D27A8 ; =0x000001CE
	ldr r3, [r6, #0]
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [r6, #0x18]
	ldr r2, [r6, #0]
	mov r0, #1
	mov r1, #0x40
	bl sub_0200B368
	str r0, [r6, #0x1c]
	ldr r1, [r6, #0]
	mov r0, #0x40
	bl sub_02023790
	str r0, [r6, #0x20]
	mov r4, #0
	add r5, r6, #0
_021D2794:
	ldr r0, [r6, #0x18]
	add r1, r4, #0
	bl sub_0200B1EC
	str r0, [r5, #0x24]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D2794
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D27A8: .word 0x000001CE
	thumb_func_end ov79_021D2768

	thumb_func_start ov79_021D27AC
ov79_021D27AC: ; 0x021D27AC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021D27B4:
	ldr r0, [r5, #0x24]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D27B4
	ldr r0, [r6, #0x20]
	bl sub_020237BC
	ldr r0, [r6, #0x1c]
	bl sub_0200B3F0
	ldr r0, [r6, #0x18]
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov79_021D27AC

	thumb_func_start ov79_021D27D8
ov79_021D27D8: ; 0x021D27D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	ldr r0, [r0, #0]
	mov r2, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	bl sub_02074470
	strh r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	bl sub_02075D6C
	add r1, r4, #0
	add r1, #0x37
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	bl sub_02075BCC
	add r1, r4, #0
	add r1, #0x36
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	mov r1, #0x70
	ldr r0, [r0, #0]
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldrh r0, [r4, #0x34]
	mov r2, #0x1c
	bl sub_020759CC
	mov r1, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x38
	strb r1, [r0]
	ldr r1, [r4, #0]
	mov r0, #0xc
	bl sub_02023790
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x3c]
	ldr r0, [r0, #0]
	mov r1, #0x77
	bl sub_02074470
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x36
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	bl sub_02098EAC
	add r4, #0x39
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D27D8

	thumb_func_start ov79_021D2858
ov79_021D2858: ; 0x021D2858
	ldr r3, _021D2860 ; =sub_020237BC
	ldr r0, [r0, #0x3c]
	bx r3
	nop
_021D2860: .word sub_020237BC
	thumb_func_end ov79_021D2858

	thumb_func_start ov79_021D2864
ov79_021D2864: ; 0x021D2864
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #0x20
	bl sub_0201DBEC
	ldr r0, [r4, #0]
	bl sub_0200C6E4
	add r2, sp, #0x24
	ldr r5, _021D2900 ; =0x021D3C50
	str r0, [r4, #0x7c]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _021D2904 ; =0x021D3C3C
	stmia r2!, {r0, r1}
	add r5, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	ldr r0, [r4, #0x7c]
	mov r3, #0x20
	bl sub_0200C73C
	ldr r0, [r4, #0]
	bl sub_0200A93C
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #1
	bl sub_02098FFC
	str r0, [r4, #0x5c]
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x5c]
	ldrh r1, [r1, #8]
	mov r2, #0x64
	mov r3, #0x5a
	bl sub_0209916C
	str r0, [r4, #0x60]
	ldr r0, [r0, #4]
	mov r1, #0
	bl sub_0200D3F4
	bl sub_02035E38
	cmp r0, #0
	beq _021D28F4
	bl sub_02039734
_021D28F4:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D2900: .word 0x021D3C50
_021D2904: .word 0x021D3C3C
	thumb_func_end ov79_021D2864

	thumb_func_start ov79_021D2908
ov79_021D2908: ; 0x021D2908
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x60]
	bl sub_02099370
	ldr r0, [r4, #0x5c]
	bl sub_0209903C
	ldr r0, [r4, #0x7c]
	bl sub_0200C8D4
	bl sub_0201DC3C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D2908

	thumb_func_start ov79_021D2928
ov79_021D2928: ; 0x021D2928
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #8
	bhi _021D29A8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D293E: ; jump table
	.short _021D2950 - _021D293E - 2 ; case 0
	.short _021D295C - _021D293E - 2 ; case 1
	.short _021D2968 - _021D293E - 2 ; case 2
	.short _021D2974 - _021D293E - 2 ; case 3
	.short _021D2980 - _021D293E - 2 ; case 4
	.short _021D298C - _021D293E - 2 ; case 5
	.short _021D2998 - _021D293E - 2 ; case 6
	.short _021D29A0 - _021D293E - 2 ; case 7
	.short _021D29A8 - _021D293E - 2 ; case 8
_021D2950:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2A04
	str r0, [r4, #4]
	b _021D29B0
_021D295C:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2AE0
	str r0, [r4, #4]
	b _021D29B0
_021D2968:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2AF0
	str r0, [r4, #4]
	b _021D29B0
_021D2974:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2B3C
	str r0, [r4, #4]
	b _021D29B0
_021D2980:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2B54
	str r0, [r4, #4]
	b _021D29B0
_021D298C:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2B84
	str r0, [r4, #4]
	b _021D29B0
_021D2998:
	bl ov79_021D2B94
	str r0, [r4, #4]
	b _021D29B0
_021D29A0:
	bl ov79_021D2C08
	str r0, [r4, #4]
	b _021D29B0
_021D29A8:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021D29B0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D2928

	thumb_func_start ov79_021D29B4
ov79_021D29B4: ; 0x021D29B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r3, r5, #0
	add r0, r1, #0
	mov r2, #0x1c
	add r3, #0xcc
	mul r0, r2
	add r4, r3, r0
	add r0, r4, #0
	mov r1, #0
	bl MI_CpuFill8
	str r5, [r4, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #0x18]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov79_021D29B4

	thumb_func_start ov79_021D29E4
ov79_021D29E4: ; 0x021D29E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0200DA58
	ldr r1, [r4, #0x14]
	mov r2, #0x1c
	ldr r0, [r1, #4]
	sub r0, r0, #1
	str r0, [r1, #4]
	add r0, r4, #0
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D29E4

	thumb_func_start ov79_021D2A04
ov79_021D2A04: ; 0x021D2A04
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	mov r2, #0x4f
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	ldr r0, [r5, #0x60]
	mov r2, #0x18
	ldr r0, [r0, #4]
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r1, [r5, #0x58]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r5, #0x39
	ldrb r0, [r5]
	mov r1, #2
	lsl r1, r1, #0x12
	str r0, [r4, #8]
	str r2, [r4, #0]
	mov r0, #0xe
	str r1, [r4, #0xc]
	lsl r0, r0, #0x10
	str r0, [r4, #0x10]
	str r1, [r4, #0x18]
	lsl r0, r2, #0xe
	str r0, [r4, #0x1c]
	lsr r0, r1, #7
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	lsr r0, r1, #8
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	add r1, r4, #0
	str r2, [r4, #0x64]
	mov r0, #0
	str r0, [r4, #0x60]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, #0xc
	bl sub_02021C50
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc
	add r1, #0x18
	add r2, sp, #0xc
	bl VEC_Subtract
	add r1, r4, #0
	mov r3, #6
	add r0, sp, #0
	add r1, #0x48
	add r2, sp, #0xc
	lsl r3, r3, #0xe
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CF8
	add r0, r4, #0
	add r0, #0xc4
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r1, #0x30
	bl sub_02021C70
	ldr r2, _021D2AD0 ; =ov79_021D2C50
	add r0, r4, #0
	mov r1, #0
	bl ov79_021D29B4
	ldr r2, _021D2AD4 ; =ov79_021D2D7C
	add r0, r4, #0
	mov r1, #1
	bl ov79_021D29B4
	ldr r2, _021D2AD8 ; =ov79_021D2F4C
	add r0, r4, #0
	mov r1, #2
	bl ov79_021D29B4
	ldr r2, _021D2ADC ; =ov79_021D3094
	add r0, r4, #0
	mov r1, #3
	bl ov79_021D29B4
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D2AD0: .word ov79_021D2C50
_021D2AD4: .word ov79_021D2D7C
_021D2AD8: .word ov79_021D2F4C
_021D2ADC: .word ov79_021D3094
	thumb_func_end ov79_021D2A04

	thumb_func_start ov79_021D2AE0
ov79_021D2AE0: ; 0x021D2AE0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _021D2AEA
	mov r0, #1
	bx lr
_021D2AEA:
	mov r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end ov79_021D2AE0

	thumb_func_start ov79_021D2AF0
ov79_021D2AF0: ; 0x021D2AF0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x39
	ldrb r1, [r1]
	cmp r1, #1
	ldr r1, [r4, #0]
	bne _021D2B22
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r1, [r4, #0x34]
	mov r0, #0xb
	mov r2, #0
	mov r3, #0x7f
	bl sub_020059D0
	b _021D2B36
_021D2B22:
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0
	ldrh r1, [r4, #0x34]
	add r2, r0, #0
	mov r3, #0x7f
	bl sub_020059D0
_021D2B36:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov79_021D2AF0

	thumb_func_start ov79_021D2B3C
ov79_021D2B3C: ; 0x021D2B3C
	push {r3, lr}
	bl sub_0200598C
	cmp r0, #0
	beq _021D2B4A
	mov r0, #3
	pop {r3, pc}
_021D2B4A:
	mov r0, #0
	bl sub_0200592C
	mov r0, #4
	pop {r3, pc}
	thumb_func_end ov79_021D2B3C

	thumb_func_start ov79_021D2B54
ov79_021D2B54: ; 0x021D2B54
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	mov r2, #0x5c
	bl MI_CpuFill8
	ldr r2, _021D2B7C ; =ov79_021D3290
	add r0, r4, #0
	mov r1, #0
	bl ov79_021D29B4
	ldr r2, _021D2B80 ; =ov79_021D33DC
	add r0, r4, #0
	mov r1, #1
	bl ov79_021D29B4
	mov r0, #5
	pop {r4, pc}
	; .align 2, 0
_021D2B7C: .word ov79_021D3290
_021D2B80: .word ov79_021D33DC
	thumb_func_end ov79_021D2B54

	thumb_func_start ov79_021D2B84
ov79_021D2B84: ; 0x021D2B84
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _021D2B8E
	mov r0, #5
	bx lr
_021D2B8E:
	mov r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end ov79_021D2B84

	thumb_func_start ov79_021D2B94
ov79_021D2B94: ; 0x021D2B94
	push {r4, lr}
	sub sp, #0x10
	mov r1, #1
	add r4, r0, #0
	add r0, #0x6c
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	add r0, r4, #0
	add r0, #0x6c
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r0, [r4, #0x20]
	bl sub_020237E8
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x3c]
	mov r1, #0
	bl sub_0200B48C
	add r2, r4, #0
	add r2, #0x39
	ldrb r2, [r2]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x10]
	mov r1, #1
	ldrb r0, [r0, #0xa]
	str r0, [sp, #4]
	ldr r0, _021D2C04 ; =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x20]
	add r0, #0x6c
	bl sub_0201D78C
	strh r0, [r4, #0xc]
	mov r0, #0
	strh r0, [r4, #0xe]
	mov r0, #7
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D2C04: .word 0x0001020F
	thumb_func_end ov79_021D2B94

	thumb_func_start ov79_021D2C08
ov79_021D2C08: ; 0x021D2C08
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _021D2C1E
	mov r0, #7
	pop {r4, pc}
_021D2C1E:
	ldr r0, _021D2C4C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _021D2C36
	ldrh r1, [r4, #0xe]
	add r0, r1, #1
	strh r0, [r4, #0xe]
	cmp r1, #0x5a
	bhs _021D2C36
	mov r0, #7
	pop {r4, pc}
_021D2C36:
	add r0, r4, #0
	add r0, #0x6c
	mov r1, #1
	bl sub_0200E084
	add r4, #0x6c
	add r0, r4, #0
	bl sub_0201ACF4
	mov r0, #8
	pop {r4, pc}
	; .align 2, 0
_021D2C4C: .word 0x021BF67C
	thumb_func_end ov79_021D2C08

	thumb_func_start ov79_021D2C50
ov79_021D2C50: ; 0x021D2C50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	mov r0, #0x18
	add r5, r4, #0
	str r0, [r6, #4]
	mov r0, #1
	add r5, #0xc
	lsl r0, r0, #0xc
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	lsr r0, r0, #1
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x30
	add r2, sp, #0xc
	bl VEC_Subtract
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D2C96
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D2CA4
_021D2C96:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D2CA4:
	bl _f_ftoi
	add r1, r5, #0
	add r3, r0, #0
	add r0, sp, #0
	add r1, #0x3c
	add r2, sp, #0xc
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CAC
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CF8
	add r4, #0xc4
	add r5, #0x24
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02021C70
	ldr r1, _021D2CE8 ; =ov79_021D2CEC
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2CE8: .word ov79_021D2CEC
	thumb_func_end ov79_021D2C50

	thumb_func_start ov79_021D2CEC
ov79_021D2CEC: ; 0x021D2CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	add r4, r6, #0
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r4, #0xc
	ldr r0, [r4, #0x3c]
	ldr r2, [r5, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	add r3, r1, #0
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r7
	ldr r1, [r4, #0x24]
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	sub r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x40]
	ldr r2, [r5, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r3, #2
	ldr r2, [r4, #0x28]
	add r4, r7, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	sub r0, r2, r1
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #1
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D2D78
	add r6, #0xc4
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r5, #0
	bl ov79_021D29E4
_021D2D78:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov79_021D2CEC

	thumb_func_start ov79_021D2D7C
ov79_021D2D7C: ; 0x021D2D7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	add r7, r0, #0
	add r3, sp, #0xc
	mov r0, #0
	str r0, [r3, #0]
	str r0, [r3, #4]
	str r0, [r3, #8]
	mov r2, #0x18
	mov r1, #2
	add r4, r6, #0
	mov r0, #0xe
	str r2, [r5, #4]
	lsl r1, r1, #0x12
	add r4, #0xc
	str r1, [r6, #0xc]
	lsl r0, r0, #0x10
	str r0, [r4, #4]
	str r1, [r4, #0xc]
	lsl r0, r2, #0xe
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xc
	add r1, r4, #0
	add r2, r3, #0
	bl VEC_Subtract
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021D2DCE
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D2DDC
_021D2DCE:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D2DDC:
	bl _f_ftoi
	add r1, r4, #0
	add r3, r0, #0
	add r0, sp, #0
	add r1, #0x18
	add r2, sp, #0xc
	bl ov79_021D2268
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021D2E06
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D2E14
_021D2E06:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D2E14:
	bl _f_ftoi
	add r1, r0, #0
	mov r0, #0x2d
	lsl r0, r0, #0xe
	bl FX_Div
	str r0, [r4, #0x48]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021D2E3C
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D2E4A
_021D2E3C:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D2E4A:
	bl _f_ftoi
	add r1, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	bl FX_Div
	add r6, #0xc4
	str r0, [r4, #0x4c]
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_02021C50
	ldr r1, _021D2E70 ; =ov79_021D2E74
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2E70: .word ov79_021D2E74
	thumb_func_end ov79_021D2D7C

	thumb_func_start ov79_021D2E74
ov79_021D2E74: ; 0x021D2E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	ldr r2, [r5, #0xc]
	add r4, r6, #0
	add r4, #0xc
	ldr r0, [r4, #0x18]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	add r3, r1, #0
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r7
	ldr r1, [r6, #0xc]
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldr r2, [r5, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	add r3, r1, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r7
	ldr r1, [r4, #4]
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x48]
	ldr r2, [r5, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	add r3, r7, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, _021D2F48 ; =0xFFFC0000
	asr r1, r0, #0x1f
	asr r3, r2, #0x12
	bl _ull_mul
	add r3, r7, #0
	mov r7, #2
	add r2, r1, #0
	lsl r7, r7, #0xa
	add r0, r0, r7
	adc r2, r3
	lsl r2, r2, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	asr r4, r0, #0x1f
	lsr r2, r0, #0x14
	lsl r4, r4, #0xc
	orr r4, r2
	lsl r0, r0, #0xc
	add r2, r0, r7
	adc r4, r3
	ldr r1, [sp, #4]
	lsl r0, r4, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	add r0, r1, r2
	add r6, #0xc4
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r1, [r5, #0xc]
	lsl r0, r7, #1
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D2F44
	add r0, r5, #0
	bl ov79_021D29E4
_021D2F44:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2F48: .word 0xFFFC0000
	thumb_func_end ov79_021D2E74

	thumb_func_start ov79_021D2F4C
ov79_021D2F4C: ; 0x021D2F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	add r5, r4, #0
	mov r1, #0x18
	mov r0, #1
	add r5, #0x68
	str r1, [r6, #4]
	lsl r0, r0, #0xc
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	lsl r0, r1, #8
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x30
	add r1, #0x24
	add r2, sp, #0xc
	bl VEC_Subtract
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D2F92
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D2FA0
_021D2F92:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D2FA0:
	bl _f_ftoi
	add r5, #0x3c
	add r3, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	add r2, sp, #0xc
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc8
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r0, #0]
	add r2, #0xf4
	bl sub_02007DEC
	add r4, #0xc8
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r1, _021D2FDC ; =ov79_021D2FE0
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2FDC: .word ov79_021D2FE0
	thumb_func_end ov79_021D2F4C

	thumb_func_start ov79_021D2FE0
ov79_021D2FE0: ; 0x021D2FE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	ldr r0, [r5, #0xc]
	add r4, r6, #0
	add r4, #0x68
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	ldr r0, [r4, #0x40]
	ldr r2, [sp, #4]
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl _ull_mul
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021D3090 ; =0x00000000
	ldr r0, [r4, #0x28]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #4]
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl _ull_mul
	mov r2, #2
	add r3, r0, #0
	add r0, r6, #0
	add r7, r1, #0
	add r0, #0xc8
	lsl r2, r2, #0xa
	mov r1, #0xc
	add r3, r3, r2
	ldr r2, _021D3090 ; =0x00000000
	ldr r4, [r4, #0x24]
	adc r7, r2
	lsl r2, r7, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	add r2, r4, r3
	ldr r0, [r0, #0]
	asr r2, r2, #4
	bl sub_02007DEC
	add r0, r6, #0
	add r0, #0xc8
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #0xd
	asr r2, r2, #4
	bl sub_02007DEC
	mov r0, #1
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D308A
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #0x80
	bl sub_02007DEC
	add r6, #0xc8
	ldr r0, [r6, #0]
	mov r1, #1
	mov r2, #0x60
	bl sub_02007DEC
	add r0, r5, #0
	bl ov79_021D29E4
_021D308A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3090: .word 0x00000000
	thumb_func_end ov79_021D2FE0

	thumb_func_start ov79_021D3094
ov79_021D3094: ; 0x021D3094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	mov r0, #0x18
	mov r1, #2
	add r5, r4, #0
	str r0, [r6, #4]
	lsl r1, r1, #0x12
	add r5, #0x68
	str r1, [r4, #0x68]
	lsl r0, r0, #0xe
	str r0, [r5, #4]
	mov r0, #7
	str r1, [r5, #0xc]
	lsl r0, r0, #0x10
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r0, #0xc
	add r1, r5, #0
	add r2, sp, #0xc
	bl VEC_Subtract
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D30DC
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D30EA
_021D30DC:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D30EA:
	bl _f_ftoi
	add r1, r5, #0
	add r3, r0, #0
	add r0, sp, #0
	add r1, #0x18
	add r2, sp, #0xc
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc8
	ldr r2, [r5, #0]
	ldr r0, [r0, #0]
	mov r1, #0
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r4, #0xc8
	ldr r2, [r5, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r1, _021D3128 ; =ov79_021D312C
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3128: .word ov79_021D312C
	thumb_func_end ov79_021D3094

	thumb_func_start ov79_021D312C
ov79_021D312C: ; 0x021D312C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	ldr r5, [r6, #0x14]
	ldr r7, [r6, #0xc]
	add r4, r5, #0
	str r0, [sp]
	asr r0, r7, #0x1f
	str r0, [sp, #8]
	add r4, #0x68
	ldr r0, [r4, #0x1c]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r7, #0
	bl _ull_mul
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021D3260 ; =0x00000000
	ldr r0, [r4, #4]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r7, #0
	bl _ull_mul
	mov ip, r0
	ldr r2, [r5, #0x68]
	add r7, r1, #0
	str r2, [sp, #0xc]
	mov r2, #2
	add r0, r5, #0
	add r0, #0xc8
	mov r1, #0
	mov r3, ip
	lsl r2, r2, #0xa
	add r2, r3, r2
	adc r7, r1
	lsl r3, r7, #0x14
	lsr r2, r2, #0xc
	orr r2, r3
	ldr r3, [sp, #0xc]
	ldr r0, [r0, #0]
	add r2, r3, r2
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r0, r5, #0
	add r0, #0xc8
	ldr r2, [sp, #4]
	ldr r0, [r0, #0]
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	sub r0, r0, #4
	add r1, r0, #0
	mul r1, r0
	mov r0, #0x10
	sub r0, r0, r1
	neg r0, r0
	cmp r0, #0
	ble _021D31D2
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D31E0
_021D31D2:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D31E0:
	bl _f_ftoi
	ldr r2, _021D3264 ; =0x00001666
	asr r1, r0, #0x1f
	mov r3, #0
	bl _ull_mul
	add r3, r1, #0
	mov r1, #4
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc8
	lsl r2, r1, #9
	add r7, r7, r2
	ldr r2, _021D3260 ; =0x00000000
	ldr r0, [r0, #0]
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r3, r7, #0xc
	orr r3, r2
	asr r2, r3, #0xc
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x50
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, #8
	bls _021D322E
	add r0, r4, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
_021D322E:
	mov r0, #1
	ldr r1, [r6, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r6, #0xc]
	ldr r1, [r6, #4]
	sub r0, r1, #1
	str r0, [r6, #4]
	cmp r1, #0
	bne _021D325C
	add r5, #0xc8
	ldr r0, [r5, #0]
	mov r1, #4
	mov r2, #0
	bl sub_02007DEC
	mov r0, #0
	add r4, #0x50
	strh r0, [r4]
	ldr r0, [sp]
	ldr r1, _021D3268 ; =ov79_021D326C
	bl sub_0201CECC
_021D325C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3260: .word 0x00000000
_021D3264: .word 0x00001666
_021D3268: .word ov79_021D326C
	thumb_func_end ov79_021D312C

	thumb_func_start ov79_021D326C
ov79_021D326C: ; 0x021D326C
	push {r3, lr}
	ldr r3, [r1, #0x14]
	add r3, #0x68
	add r0, r3, #0
	add r0, #0x50
	ldrh r2, [r0]
	add r0, r3, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r3, #0x50
	add r0, r0, #1
	strh r0, [r3]
	cmp r2, #4
	blo _021D328E
	add r0, r1, #0
	bl ov79_021D29E4
_021D328E:
	pop {r3, pc}
	thumb_func_end ov79_021D326C

	thumb_func_start ov79_021D3290
ov79_021D3290: ; 0x021D3290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	add r5, r4, #0
	mov r1, #8
	mov r0, #6
	add r5, #0x68
	str r1, [r6, #4]
	lsl r0, r0, #0xa
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	lsl r0, r1, #9
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x30
	add r1, #0x24
	add r2, sp, #0xc
	bl VEC_Subtract
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D32D6
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D32E4
_021D32D6:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D32E4:
	bl _f_ftoi
	add r5, #0x3c
	add r3, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	add r2, sp, #0xc
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc8
	mov r1, #0xc
	ldr r0, [r0, #0]
	lsl r2, r1, #5
	bl sub_02007DEC
	add r4, #0xc8
	mov r2, #6
	ldr r0, [r4, #0]
	mov r1, #0xd
	lsl r2, r2, #6
	bl sub_02007DEC
	ldr r1, _021D3320 ; =ov79_021D3324
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3320: .word ov79_021D3324
	thumb_func_end ov79_021D3290

	thumb_func_start ov79_021D3324
ov79_021D3324: ; 0x021D3324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	ldr r0, [r5, #0xc]
	add r4, r6, #0
	add r4, #0x68
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	ldr r0, [r4, #0x40]
	ldr r2, [sp, #4]
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl _ull_mul
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021D33D8 ; =0x00000000
	ldr r0, [r4, #0x28]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #4]
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl _ull_mul
	mov r2, #2
	add r3, r0, #0
	add r0, r6, #0
	add r7, r1, #0
	add r0, #0xc8
	lsl r2, r2, #0xa
	mov r1, #0xc
	add r3, r3, r2
	ldr r2, _021D33D8 ; =0x00000000
	ldr r4, [r4, #0x24]
	adc r7, r2
	lsl r2, r7, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	add r2, r4, r3
	ldr r0, [r0, #0]
	asr r2, r2, #4
	bl sub_02007DEC
	add r0, r6, #0
	add r0, #0xc8
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #0xd
	asr r2, r2, #4
	bl sub_02007DEC
	mov r0, #1
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D33D2
	add r0, r6, #0
	add r0, #0xc8
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r0, #0]
	add r2, #0xf4
	bl sub_02007DEC
	add r6, #0xc8
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r6, #0]
	add r2, #0xf3
	bl sub_02007DEC
	add r0, r5, #0
	bl ov79_021D29E4
_021D33D2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D33D8: .word 0x00000000
	thumb_func_end ov79_021D3324

	thumb_func_start ov79_021D33DC
ov79_021D33DC: ; 0x021D33DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	mov r0, #8
	add r5, r4, #0
	str r0, [r6, #4]
	lsl r1, r0, #0x10
	mov r0, #7
	add r5, #0x68
	str r1, [r4, #0x68]
	lsl r0, r0, #0x10
	str r0, [r5, #4]
	mov r0, #6
	str r1, [r5, #0xc]
	lsl r0, r0, #0x10
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r0, #0xc
	add r1, r5, #0
	add r2, sp, #0xc
	bl VEC_Subtract
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D3424
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D3432
_021D3424:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D3432:
	bl _f_ftoi
	add r1, r5, #0
	add r3, r0, #0
	add r0, sp, #0
	add r1, #0x18
	add r2, sp, #0xc
	bl ov79_021D2268
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D345C
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D346A
_021D345C:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D346A:
	bl _f_ftoi
	add r1, r0, #0
	mov r0, #0x2d
	lsl r0, r0, #0xe
	bl FX_Div
	str r0, [r5, #0x48]
	add r0, r4, #0
	add r0, #0xc8
	ldr r2, [r5, #0]
	ldr r0, [r0, #0]
	mov r1, #0
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r4, #0xc8
	ldr r2, [r5, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r1, _021D34A4 ; =ov79_021D34A8
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D34A4: .word ov79_021D34A8
	thumb_func_end ov79_021D33DC

	thumb_func_start ov79_021D34A8
ov79_021D34A8: ; 0x021D34A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	ldr r5, [r6, #0x14]
	ldr r7, [r6, #0xc]
	add r4, r5, #0
	str r0, [sp]
	asr r0, r7, #0x1f
	str r0, [sp, #8]
	add r4, #0x68
	ldr r0, [r4, #0x1c]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r7, #0
	bl _ull_mul
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021D35A4 ; =0x00000000
	ldr r0, [r4, #4]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r7, #0
	bl _ull_mul
	mov ip, r0
	ldr r2, [r5, #0x68]
	add r7, r1, #0
	str r2, [sp, #0xc]
	mov r2, #2
	add r0, r5, #0
	add r0, #0xc8
	mov r1, #0
	mov r3, ip
	lsl r2, r2, #0xa
	add r2, r3, r2
	adc r7, r1
	lsl r3, r7, #0x14
	lsr r2, r2, #0xc
	orr r2, r3
	ldr r3, [sp, #0xc]
	ldr r0, [r0, #0]
	add r2, r3, r2
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r0, r5, #0
	add r0, #0xc8
	ldr r2, [sp, #4]
	ldr r0, [r0, #0]
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r0, [r4, #0x48]
	ldr r2, [r6, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, _021D35A8 ; =0xFFFFA000
	asr r1, r0, #0x1f
	asr r3, r2, #0xf
	bl _ull_mul
	add r4, r1, #0
	mov r1, #4
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0xc8
	mov r7, #0
	lsl r2, r1, #9
	add r2, r3, r2
	adc r4, r7
	lsl r3, r4, #0x14
	lsr r2, r2, #0xc
	orr r2, r3
	ldr r0, [r0, #0]
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r2, r6, #0
	add r2, #0xc
	mov r0, #1
	ldr r1, [r2, #0]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r2, #0]
	ldr r0, [r6, #4]
	sub r0, r0, #1
	str r0, [r6, #4]
	bne _021D359E
	add r5, #0xc8
	ldr r0, [r5, #0]
	mov r1, #4
	add r2, r7, #0
	bl sub_02007DEC
	ldr r0, [sp]
	ldr r1, _021D35AC ; =ov79_021D35B0
	bl sub_0201CECC
_021D359E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D35A4: .word 0x00000000
_021D35A8: .word 0xFFFFA000
_021D35AC: .word ov79_021D35B0
	thumb_func_end ov79_021D34A8

	thumb_func_start ov79_021D35B0
ov79_021D35B0: ; 0x021D35B0
	push {r3, lr}
	ldr r3, [r1, #4]
	add r2, r3, #1
	str r2, [r1, #4]
	cmp r3, #4
	blt _021D35E0
	ldr r2, [r1, #0x14]
	ldr r2, [r2, #8]
	cmp r2, #0
	beq _021D35CA
	cmp r2, #1
	beq _021D35D2
	b _021D35DA
_021D35CA:
	ldr r1, _021D35E4 ; =ov79_021D35EC
	bl sub_0201CECC
	pop {r3, pc}
_021D35D2:
	ldr r1, _021D35E8 ; =ov79_021D36CC
	bl sub_0201CECC
	pop {r3, pc}
_021D35DA:
	add r0, r1, #0
	bl ov79_021D29E4
_021D35E0:
	pop {r3, pc}
	nop
_021D35E4: .word ov79_021D35EC
_021D35E8: .word ov79_021D36CC
	thumb_func_end ov79_021D35B0

	thumb_func_start ov79_021D35EC
ov79_021D35EC: ; 0x021D35EC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, #0x68
	mov r2, #0x5c
	bl MI_CpuFill8
	mov r0, #3
	str r0, [r4, #4]
	ldr r1, _021D360C ; =ov79_021D3610
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D360C: .word ov79_021D3610
	thumb_func_end ov79_021D35EC

	thumb_func_start ov79_021D3610
ov79_021D3610: ; 0x021D3610
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r7, [r5, #0x14]
	add r4, r7, #0
	add r4, #0x68
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	sub r0, r0, #4
	add r1, r0, #0
	mul r1, r0
	mov r0, #0x10
	sub r0, r0, r1
	neg r0, r0
	cmp r0, #0
	ble _021D3642
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _021D3650
_021D3642:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_021D3650:
	bl _f_ftoi
	ldr r2, _021D36C4 ; =0x00001666
	asr r1, r0, #0x1f
	mov r3, #0
	bl _ull_mul
	add r6, r1, #0
	mov r1, #4
	add r3, r0, #0
	add r0, r7, #0
	add r0, #0xc8
	lsl r2, r1, #9
	add r3, r3, r2
	ldr r2, _021D36C8 ; =0x00000000
	ldr r0, [r0, #0]
	adc r6, r2
	lsl r2, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	asr r2, r3, #0xc
	bl sub_02007DEC
	add r1, r4, #0
	mov r0, #0
	add r1, #0x52
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	add r2, r1, #1
	add r1, r4, #0
	add r1, #0x50
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	cmp r1, #8
	bls _021D36A8
	add r4, #0x50
	strh r0, [r4]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
_021D36A8:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021D36C0
	add r7, #0xc8
	ldr r0, [r7, #0]
	mov r1, #4
	mov r2, #0
	bl sub_02007DEC
	add r0, r5, #0
	bl ov79_021D29E4
_021D36C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D36C4: .word 0x00001666
_021D36C8: .word 0x00000000
	thumb_func_end ov79_021D3610

	thumb_func_start ov79_021D36CC
ov79_021D36CC: ; 0x021D36CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, #0x68
	mov r2, #0x5c
	bl MI_CpuFill8
	mov r0, #0x20
	str r0, [r4, #4]
	ldr r1, _021D36EC ; =ov79_021D36F0
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D36EC: .word ov79_021D36F0
	thumb_func_end ov79_021D36CC

	thumb_func_start ov79_021D36F0
ov79_021D36F0: ; 0x021D36F0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	add r4, r6, #0
	add r4, #0x68
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	bl sub_0201D250
	asr r1, r0, #0x1f
	lsr r2, r0, #0x13
	lsl r1, r1, #0xd
	orr r1, r2
	mov r2, #2
	lsl r3, r0, #0xd
	mov r0, #0
	lsl r2, r2, #0xa
	add r2, r3, r2
	adc r1, r0
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r1, r4, #0
	add r1, #0x50
	ldrh r3, [r1]
	ldr r1, _021D3764 ; =0x00000167
	cmp r3, r1
	bls _021D372C
	b _021D3734
_021D372C:
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r0, #0x5a
_021D3734:
	add r4, #0x50
	strh r0, [r4]
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #3
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D3760
	add r6, #0xc8
	ldr r0, [r6, #0]
	mov r1, #3
	mov r2, #0
	bl sub_02007DEC
	add r0, r5, #0
	bl ov79_021D29E4
_021D3760:
	pop {r4, r5, r6, pc}
	nop
_021D3764: .word 0x00000167
	thumb_func_end ov79_021D36F0

	.rodata


	.global Unk_ov79_021D3C20
Unk_ov79_021D3C20: ; 0x021D3C20
	.incbin "incbin/overlay79_rodata.bin", 0x310, 0x314 - 0x310

	.global Unk_ov79_021D3C24
Unk_ov79_021D3C24: ; 0x021D3C24
	.incbin "incbin/overlay79_rodata.bin", 0x314, 0x31C - 0x314

	.global Unk_ov79_021D3C2C
Unk_ov79_021D3C2C: ; 0x021D3C2C
	.incbin "incbin/overlay79_rodata.bin", 0x31C, 0x32C - 0x31C

	.global Unk_ov79_021D3C3C
Unk_ov79_021D3C3C: ; 0x021D3C3C
	.incbin "incbin/overlay79_rodata.bin", 0x32C, 0x340 - 0x32C

	.global Unk_ov79_021D3C50
Unk_ov79_021D3C50: ; 0x021D3C50
	.incbin "incbin/overlay79_rodata.bin", 0x340, 0x360 - 0x340

	.global Unk_ov79_021D3C70
Unk_ov79_021D3C70: ; 0x021D3C70
	.incbin "incbin/overlay79_rodata.bin", 0x360, 0x388 - 0x360

	.global Unk_ov79_021D3C98
Unk_ov79_021D3C98: ; 0x021D3C98
	.incbin "incbin/overlay79_rodata.bin", 0x388, 0x54

