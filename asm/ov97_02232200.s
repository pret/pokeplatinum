	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov97_02232200
ov97_02232200: ; 0x02232200
	push {r3, lr}
	mov r0, #4
	bl ov97_02233424
	bl ov97_02233AD8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232200

	thumb_func_start ov97_02232210
ov97_02232210: ; 0x02232210
	push {r3, lr}
	bl ov97_022335A8
	str r0, [sp]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232210

	thumb_func_start ov97_0223221C
ov97_0223221C: ; 0x0223221C
	push {r3, lr}
	bl ov97_022335C8
	add r1, sp, #0
	strh r0, [r1]
	mov r0, #0
	ldrsh r0, [r1, r0]
	pop {r3, pc}
	thumb_func_end ov97_0223221C

	thumb_func_start ov97_0223222C
ov97_0223222C: ; 0x0223222C
	push {r4, lr}
	bl ov97_02233430
	cmp r0, #0xc
	bne _0223224E
	bl ov97_02233410
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0223224A
	bl ov97_02233AD8
	mov r0, #1
	str r0, [r4, #0x1c]
_0223224A:
	mov r0, #1
	pop {r4, pc}
_0223224E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0223222C

	thumb_func_start ov97_02232254
ov97_02232254: ; 0x02232254
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233510
	mov r3, #0
	add r1, r3, #0
_02232260:
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02232270
	ldrh r2, [r0, #6]
	cmp r4, r2
	bne _02232270
	strb r1, [r0, #8]
	strb r1, [r0, #0xa]
_02232270:
	add r3, r3, #1
	add r0, #0xc
	cmp r3, #8
	blt _02232260
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02232254

	thumb_func_start ov97_0223227C
ov97_0223227C: ; 0x0223227C
	push {r3, lr}
	bl ov97_02233510
	add r1, r0, #0
	add r1, #0x62
	ldrh r3, [r1]
	mov r2, #1
	add r1, r3, #0
	tst r1, r2
	beq _022322A2
	add r1, r0, #0
	add r1, #0x62
	ldrh r3, [r1]
	mov r1, #1
	add r0, #0x62
	bic r3, r1
	strh r3, [r0]
	add r0, r2, #0
	pop {r3, pc}
_022322A2:
	mov r1, #0x40
	add r2, r3, #0
	tst r2, r1
	beq _022322BC
	add r1, r0, #0
	add r1, #0x62
	ldrh r2, [r1]
	mov r1, #0x40
	add r0, #0x62
	bic r2, r1
	strh r2, [r0]
	mov r0, #7
	pop {r3, pc}
_022322BC:
	lsl r1, r1, #6
	tst r1, r3
	beq _022322D4
	add r1, r0, #0
	add r1, #0x62
	ldrh r2, [r1]
	ldr r1, _022322D8 ; =0xFFFFEFFF
	add r0, #0x62
	and r1, r2
	strh r1, [r0]
	mov r0, #0xd
	pop {r3, pc}
_022322D4:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022322D8: .word 0xFFFFEFFF
	thumb_func_end ov97_0223227C

	thumb_func_start ov97_022322DC
ov97_022322DC: ; 0x022322DC
	push {r4, lr}
	bl ov97_02233510
	add r4, r0, #0
	mov r1, #1
	add r0, #0x60
	strb r1, [r0]
	bl sub_020CE7F4
	add r1, r4, #0
	add r1, #0x62
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x62
	ldrh r1, [r0]
	cmp r1, #0
	beq _02232306
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _0223230A
_02232306:
	mov r0, #0
	pop {r4, pc}
_0223230A:
	add r0, r4, #0
	mov r1, #0x66
	add r0, #0x61
	strb r1, [r0]
	mov r0, #0
	add r4, #0x64
	strb r0, [r4]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov97_022322DC

	thumb_func_start ov97_0223231C
ov97_0223231C: ; 0x0223231C
	push {r4, lr}
	bl ov97_02233408
	add r4, r0, #0
	bl sub_020CE8A4
	strh r0, [r4, #0x18]
	bl sub_020CEB20
	strh r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0223231C

	thumb_func_start ov97_02232334
ov97_02232334: ; 0x02232334
	push {r4, lr}
	bl ov97_02233478
	add r4, r0, #0
	bl ov97_022334B4
	str r0, [r4, #0]
	bl ov97_02233408
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #4]
	bl sub_020CE934
	strh r0, [r4, #6]
	mov r0, #0xff
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	pop {r4, pc}
	thumb_func_end ov97_02232334

	thumb_func_start ov97_02232360
ov97_02232360: ; 0x02232360
	push {r3, r4, r5, r6, r7, lr}
	bl ov97_02233478
	add r7, r0, #0
	bl sub_020CE7F4
	add r3, r0, #0
	beq _022323AC
	ldrh r2, [r7, #4]
	mov r1, #0
	mov r0, #1
	mov ip, r2
	mov r4, #0x1c
_0223237A:
	lsr r6, r2, #0x1f
	lsl r5, r2, #0x1c
	sub r5, r5, r6
	ror r5, r4
	add r5, r6, r5
	add r6, r0, #0
	lsl r6, r5
	add r5, r3, #0
	tst r5, r6
	beq _022323A4
	mov r0, ip
	add r0, r0, r1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	add r0, r0, #1
	strh r0, [r7, #4]
	pop {r3, r4, r5, r6, r7, pc}
_022323A4:
	add r1, r1, #1
	add r2, r2, #1
	cmp r1, #0x10
	blt _0223237A
_022323AC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_02232360

	thumb_func_start ov97_022323B0
ov97_022323B0: ; 0x022323B0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #8
	bne _022323C8
	bl ov97_022337FC
	bl ov97_02232200
_022323C8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022323B0

	thumb_func_start ov97_022323CC
ov97_022323CC: ; 0x022323CC
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022323E0
	bl ov97_022337FC
_022323E0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022323CC

	thumb_func_start ov97_022323E4
ov97_022323E4: ; 0x022323E4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0223241A
	mov r0, #2
	bl ov97_02233424
	bl ov97_02233430
	cmp r0, #0xc
	bne _02232406
	bl ov97_02233870
	mov r0, #2
	bl ov97_02233424
	pop {r3, pc}
_02232406:
	bl ov97_02233A9C
	cmp r0, #0
	bne _02232422
	bl ov97_02233870
	mov r0, #2
	bl ov97_02233424
	pop {r3, pc}
_0223241A:
	bl ov97_022337FC
	bl ov97_02233870
_02232422:
	pop {r3, pc}
	thumb_func_end ov97_022323E4

	thumb_func_start ov97_02232424
ov97_02232424: ; 0x02232424
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0223244E
	bl ov97_02233430
	cmp r0, #0xc
	bne _02232446
	bl sub_020CDD28
	mov r0, #0xc
	bl ov97_02233424
	mov r0, #1
	bl ov97_022334F0
	pop {r3, pc}
_02232446:
	mov r0, #1
	bl ov97_02233424
	pop {r3, pc}
_0223244E:
	bl ov97_022337FC
	mov r0, #4
	bl ov97_02233424
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232424

	thumb_func_start ov97_0223245C
ov97_0223245C: ; 0x0223245C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _022324BA
	bl ov97_02233510
	add r4, r0, #0
	add r0, #0x61
	ldrh r1, [r5, #0xa]
	ldrb r0, [r0]
	cmp r0, r1
	ble _02232484
	add r0, r4, #0
	add r0, #0x61
	strb r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #8]
	add r0, #0x64
	strb r1, [r0]
_02232484:
	bl ov97_0223227C
	cmp r0, #0
	beq _0223249A
	bl ov97_02233890
	cmp r0, #0
	bne _022324C2
	bl ov97_02232200
	pop {r3, r4, r5, pc}
_0223249A:
	add r4, #0x61
	ldrb r0, [r4]
	cmp r0, #0x66
	bhs _022324B4
	bl ov97_0223231C
	bl ov97_022338BC
	cmp r0, #0
	bne _022324C2
	bl ov97_02232200
	pop {r3, r4, r5, pc}
_022324B4:
	bl ov97_02232200
	pop {r3, r4, r5, pc}
_022324BA:
	bl ov97_022337FC
	bl ov97_02232200
_022324C2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0223245C

	thumb_func_start ov97_022324C4
ov97_022324C4: ; 0x022324C4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _022324E2
	bl ov97_0223222C
	cmp r0, #0
	bne _022324EA
	bl ov97_022338F8
	cmp r0, #0
	bne _022324EA
	bl ov97_02232200
	pop {r3, pc}
_022324E2:
	bl ov97_022337FC
	bl ov97_02232200
_022324EA:
	pop {r3, pc}
	thumb_func_end ov97_022324C4

	thumb_func_start ov97_022324EC
ov97_022324EC: ; 0x022324EC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5, #8]
	bl ov97_02233800
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _02232500
	b _02232612
_02232500:
	bl ov97_02233510
	add r4, r0, #0
	mov r0, #8
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	beq _02232516
	b _0223261A
_02232516:
	add r0, r4, #0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #1
	bne _02232528
	add r0, r4, #0
	mov r1, #2
	add r0, #0x60
	strb r1, [r0]
_02232528:
	ldrh r0, [r5, #8]
	cmp r0, #7
	bgt _02232540
	bge _02232562
	cmp r0, #2
	bgt _0223261A
	cmp r0, #0
	blt _0223261A
	beq _02232548
	add sp, #0xc
	cmp r0, #2
	pop {r4, r5, pc}
_02232540:
	cmp r0, #9
	beq _02232608
	add sp, #0xc
	pop {r4, r5, pc}
_02232548:
	bl ov97_02233A24
	cmp r0, #0
	bne _02232558
	bl ov97_02232200
	add sp, #0xc
	pop {r4, r5, pc}
_02232558:
	mov r0, #0
	bl ov97_022334C0
	add sp, #0xc
	pop {r4, r5, pc}
_02232562:
	bl ov97_02233510
	bl ov97_0223380C
	add r4, #0x60
	ldrb r0, [r4]
	cmp r0, #2
	bne _0223261A
	add r4, r5, #0
	add r4, #0x14
	bl ov97_02233560
	ldr r1, [r5, #0x14]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _0223261A
	bl ov97_02233570
	ldr r1, [r4, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _0223261A
	bl ov97_02233580
	ldr r1, [r4, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _0223261A
	bl ov97_02233510
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xa
	bl ov97_02232210
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xa
	bl ov97_0223221C
	add r1, sp, #0
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r2, [sp, #8]
	add r3, r4, #0
	strh r0, [r1, #2]
	mov r0, #0
_022325C6:
	ldr r1, [r3, #0]
	cmp r1, r2
	bne _022325DE
	mov r1, #0xc
	mul r1, r0
	ldrh r0, [r5, #0x10]
	add r1, r4, r1
	add sp, #0xc
	strh r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xa]
	pop {r4, r5, pc}
_022325DE:
	cmp r1, #0
	bne _022325FC
	mov r1, #0xc
	mul r1, r0
	str r2, [r4, r1]
	add r0, sp, #0
	ldrh r0, [r0, #2]
	add r1, r4, r1
	add sp, #0xc
	strh r0, [r1, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xa]
	pop {r4, r5, pc}
_022325FC:
	add r0, r0, #1
	add r3, #0xc
	cmp r0, #8
	blt _022325C6
	add sp, #0xc
	pop {r4, r5, pc}
_02232608:
	ldrh r0, [r5, #0x10]
	bl ov97_02232254
	add sp, #0xc
	pop {r4, r5, pc}
_02232612:
	bl ov97_022337FC
	bl ov97_02232200
_0223261A:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov97_022324EC

	thumb_func_start ov97_02232620
ov97_02232620: ; 0x02232620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r0, [sp]
	bl ov97_02233508
	add r7, r0, #0
	add r0, r4, #4
	bl ov97_02232210
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #4
	bl ov97_0223221C
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r6, [sp, #0xc]
	add r1, r7, #0
	strh r0, [r2, #2]
	ldrh r3, [r2, #2]
	mov r0, #0
_0223264E:
	ldr r2, [r1, #0]
	add r5, r1, #0
	add r5, #0x34
	cmp r2, r6
	bne _02232664
	ldrh r5, [r5]
	cmp r5, r3
	bne _02232664
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02232664:
	cmp r2, #0
	bne _022326B0
	mov r1, #0x38
	mul r1, r0
	ldr r0, [sp, #0xc]
	add r5, r4, #0
	str r0, [r7, r1]
	add r0, r7, r1
	add r5, #0x58
	add r3, r0, #4
	mov r2, #0xc
_0223267A:
	ldrh r0, [r5]
	add r5, r5, #2
	strh r0, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0223267A
	add r3, r7, r1
	add r4, #0x70
	add r3, #0x1c
	mov r2, #0xc
_0223268E:
	ldrh r0, [r4]
	add r4, r4, #2
	strh r0, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0223268E
	add r0, sp, #4
	ldrh r0, [r0, #2]
	add r1, r7, r1
	strh r0, [r1, #0x34]
	ldr r0, [sp]
	add r1, #0x36
	ldrh r0, [r0, #0x12]
	add sp, #0x10
	strb r0, [r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022326B0:
	add r0, r0, #1
	add r1, #0x38
	cmp r0, #8
	blt _0223264E
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_02232620

	thumb_func_start ov97_022326C0
ov97_022326C0: ; 0x022326C0
	push {r3, lr}
	bl ov97_02232360
	bl ov97_02233914
	cmp r0, #0
	bne _022326D2
	bl ov97_02232200
_022326D2:
	pop {r3, pc}
	thumb_func_end ov97_022326C0

	thumb_func_start ov97_022326D4
ov97_022326D4: ; 0x022326D4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov97_022334B4
	add r4, r0, #0
	bl ov97_02233508
	add r5, r0, #0
	bl ov97_0223222C
	cmp r0, #0
	beq _022326F0
	mov r0, #1
	pop {r4, r5, r6, pc}
_022326F0:
	mov r1, #0
	add r2, r1, #0
	add r3, r5, #0
_022326F6:
	ldr r0, [r3, #0]
	cmp r0, #0
	beq _02232700
	mov r1, #1
	b _02232708
_02232700:
	add r2, r2, #1
	add r3, #0x38
	cmp r2, #8
	blt _022326F6
_02232708:
	cmp r1, #0
	beq _02232726
	mov r0, #7
	lsl r0, r0, #6
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02232726
	bl ov97_022339D0
	cmp r0, #0
	bne _02232722
	bl ov97_02232200
_02232722:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02232726:
	add r0, r4, #0
	mov r1, #0xc0
	bl sub_020C2C1C
	bl ov97_02233508
	bl ov97_02233808
	ldrh r0, [r6, #0x36]
	cmp r0, #8
	blo _022327B0
	bl ov97_02233554
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _022327B0
	add r5, r4, #0
	add r5, #0x50
	bl ov97_02233560
	ldr r1, [r4, #0x50]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _022327B0
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _022327B0
	bl ov97_02233580
	ldr r1, [r5, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _022327B0
	add r0, r6, #0
	add r1, r4, #0
	bl ov97_02232620
	cmp r0, #0
	beq _022327A0
	bl ov97_02233508
	ldr r1, _022327B4 ; =0x000001C2
	ldrb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0x1c
	bls _022327B0
	bl ov97_022339D0
	cmp r0, #0
	bne _022327B0
	bl ov97_02232200
	mov r0, #1
	pop {r4, r5, r6, pc}
_022327A0:
	bl ov97_022339D0
	cmp r0, #0
	bne _022327AC
	bl ov97_02232200
_022327AC:
	mov r0, #1
	pop {r4, r5, r6, pc}
_022327B0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022327B4: .word 0x000001C2
	thumb_func_end ov97_022326D4

	thumb_func_start ov97_022327B8
ov97_022327B8: ; 0x022327B8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0223281E
	bl ov97_022334B4
	bl ov97_02233804
	mov r0, #6
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _02232826
	bl ov97_02233448
	cmp r0, #1
	bne _022327F8
	bl ov97_02233508
	ldr r2, _02232828 ; =0x000001C3
	mov r1, #0xf0
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r0, r2]
_022327F8:
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _0223280C
	cmp r0, #5
	bne _02232812
	add r0, r4, #0
	bl ov97_022326D4
	cmp r0, #0
	bne _02232826
_0223280C:
	bl ov97_022326C0
	pop {r4, pc}
_02232812:
	ldrh r0, [r4, #2]
	bl ov97_022337FC
	bl ov97_02232200
	pop {r4, pc}
_0223281E:
	bl ov97_022337FC
	bl ov97_02232200
_02232826:
	pop {r4, pc}
	; .align 2, 0
_02232828: .word 0x000001C3
	thumb_func_end ov97_022327B8

	thumb_func_start ov97_0223282C
ov97_0223282C: ; 0x0223282C
	push {r4, r5, r6, lr}
	sub sp, #8
	bl ov97_022334B4
	add r4, r0, #0
	bl ov97_02233508
	add r6, r0, #0
	bl ov97_02233408
	bl ov97_0223222C
	cmp r0, #0
	beq _0223284E
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223284E:
	add r0, r4, #0
	mov r1, #0xc0
	bl sub_020C2C1C
	bl ov97_02233508
	bl ov97_02233808
	ldrh r0, [r4, #0x3c]
	cmp r0, #8
	blo _022328C8
	bl ov97_02233554
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _022328C8
	add r5, r4, #0
	add r5, #0x50
	bl ov97_02233560
	ldr r1, [r4, #0x50]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _022328C8
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _022328C8
	bl ov97_02233580
	ldr r1, [r5, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _022328C8
	add r0, r4, #4
	bl ov97_02232210
	ldr r1, _022328D0 ; =0x000001C3
	str r0, [sp]
	ldrb r1, [r6, r1]
	str r0, [sp, #4]
	lsl r1, r1, #0x1c
	lsr r2, r1, #0x1c
	mov r1, #0x38
	mul r1, r2
	ldr r1, [r6, r1]
	cmp r1, r0
	bne _022328C8
	bl ov97_022339D0
	cmp r0, #0
	bne _022328C2
	bl ov97_02232200
_022328C2:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022328C8:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022328D0: .word 0x000001C3
	thumb_func_end ov97_0223282C

	thumb_func_start ov97_022328D4
ov97_022328D4: ; 0x022328D4
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232934
	bl ov97_02233508
	ldr r2, _02232940 ; =0x000001C3
	mov r1, #0xf0
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x20
	orr r1, r3
	strb r1, [r0, r2]
	mov r0, #6
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _0223293C
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _02232916
	cmp r0, #5
	bne _02232928
	bl ov97_0223282C
	cmp r0, #0
	bne _0223293C
_02232916:
	bl ov97_02232360
	bl ov97_02233938
	cmp r0, #0
	bne _0223293C
	bl ov97_02232200
	pop {r4, pc}
_02232928:
	ldrh r0, [r4, #2]
	bl ov97_022337FC
	bl ov97_02232200
	pop {r4, pc}
_02232934:
	bl ov97_022337FC
	bl ov97_02232200
_0223293C:
	pop {r4, pc}
	nop
_02232940: .word 0x000001C3
	thumb_func_end ov97_022328D4

	thumb_func_start ov97_02232944
ov97_02232944: ; 0x02232944
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232988
	mov r0, #7
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _02232990
	bl ov97_02233448
	cmp r0, #1
	bne _02232990
	bl ov97_02233508
	ldr r1, _02232994 ; =0x000001C3
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #2
	bne _02232990
	bl ov97_022339EC
	cmp r0, #0
	bne _02232980
	bl ov97_02232200
	pop {r3, pc}
_02232980:
	mov r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232988:
	bl ov97_022337FC
	bl ov97_02232200
_02232990:
	pop {r3, pc}
	nop
_02232994: .word 0x000001C3
	thumb_func_end ov97_02232944

	thumb_func_start ov97_02232998
ov97_02232998: ; 0x02232998
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232A1E
	mov r0, #9
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _02232A26
	ldrh r0, [r4, #8]
	cmp r0, #9
	bhi _02232A12
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022329C8: ; jump table
	.short _02232A12 - _022329C8 - 2 ; case 0
	.short _02232A12 - _022329C8 - 2 ; case 1
	.short _02232A12 - _022329C8 - 2 ; case 2
	.short _02232A12 - _022329C8 - 2 ; case 3
	.short _02232A12 - _022329C8 - 2 ; case 4
	.short _02232A12 - _022329C8 - 2 ; case 5
	.short _02232A26 - _022329C8 - 2 ; case 6
	.short _022329DC - _022329C8 - 2 ; case 7
	.short _02232A26 - _022329C8 - 2 ; case 8
	.short _022329FC - _022329C8 - 2 ; case 9
_022329DC:
	ldrh r0, [r4, #0xa]
	bl ov97_022334C0
	mov r0, #1
	bl ov97_022334D8
	mov r0, #0
	bl ov97_022334E4
	bl ov97_02233A24
	cmp r0, #0
	bne _02232A26
	bl ov97_02232200
	pop {r4, pc}
_022329FC:
	bl ov97_022334CC
	cmp r0, #0
	beq _02232A0A
	mov r0, #1
	bl ov97_022334E4
_02232A0A:
	mov r0, #0
	bl ov97_022334D8
	pop {r4, pc}
_02232A12:
	ldrh r0, [r4, #2]
	bl ov97_022337FC
	bl ov97_02232200
	pop {r4, pc}
_02232A1E:
	bl ov97_022337FC
	bl ov97_02232200
_02232A26:
	pop {r4, pc}
	thumb_func_end ov97_02232998

	thumb_func_start ov97_02232A28
ov97_02232A28: ; 0x02232A28
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _02232A62
	cmp r0, #2
	bne _02232A7A
	bl ov97_022322DC
	cmp r0, #0
	beq _02232A5C
	bl ov97_0223227C
	bl ov97_02233890
	cmp r0, #0
	beq _02232A5C
	bl ov97_02233510
	mov r1, #1
	add r0, #0x60
	strb r1, [r0]
	mov r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232A5C:
	bl ov97_02232200
	pop {r3, pc}
_02232A62:
	bl ov97_02232334
	bl ov97_02233914
	cmp r0, #0
	bne _02232A74
	bl ov97_02232200
	pop {r3, pc}
_02232A74:
	mov r0, #3
	bl ov97_02233424
_02232A7A:
	pop {r3, pc}
	thumb_func_end ov97_02232A28

	thumb_func_start ov97_02232A7C
ov97_02232A7C: ; 0x02232A7C
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232AB6
	ldrh r0, [r4]
	cmp r0, #0xe
	bne _02232A9A
	bl ov97_0223222C
	cmp r0, #0
	bne _02232AC6
_02232A9A:
	bl ov97_02233448
	cmp r0, #1
	beq _02232AAE
	cmp r0, #2
	bne _02232AC6
	mov r0, #0xa
	bl ov97_02233424
	pop {r4, pc}
_02232AAE:
	mov r0, #0xb
	bl ov97_02233424
	pop {r4, pc}
_02232AB6:
	cmp r0, #9
	beq _02232AC6
	cmp r0, #0xd
	beq _02232AC6
	cmp r0, #0xf
	beq _02232AC6
	bl ov97_02232200
_02232AC6:
	pop {r4, pc}
	thumb_func_end ov97_02232A7C

	thumb_func_start ov97_02232AC8
ov97_02232AC8: ; 0x02232AC8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov97_02233538
	add r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02232B3E
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl sub_020C2C54
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl sub_020C4DB0
	bl ov97_02233560
	ldr r1, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02232B3E
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02232B3E
	ldr r0, [r4, #0xc]
	bl ov97_022337A4
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, #0x1c]
	cmp r1, r0
	bne _02232B3E
	ldr r0, [r4, #0xc]
	bl ov97_02233810
	ldr r0, [r4, #0xc]
	bl ov97_022337D8
	cmp r0, #0
	beq _02232B3A
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	cmp r0, #1
	beq _02232B3A
	mov r0, #2
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, pc}
_02232B3A:
	mov r0, #0
	strb r0, [r4, #0x19]
_02232B3E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_02232AC8

	thumb_func_start ov97_02232B40
ov97_02232B40: ; 0x02232B40
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov97_02233538
	add r4, r0, #0
	bl ov97_02233448
	cmp r0, #2
	bne _02232BC8
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	beq _02232BC8
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl sub_020C2C54
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl sub_020C4DB0
	bl ov97_02233560
	ldr r1, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02232BC8
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02232BC8
	ldr r0, [r4, #0xc]
	bl ov97_022337A4
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xfd
	bne _02232BC8
	bl ov97_02233510
	ldrh r5, [r6, #0x12]
	mov r2, #0
	add r3, r0, #0
_02232BA2:
	ldrh r1, [r3, #6]
	cmp r5, r1
	bne _02232BC0
	mov r1, #0xc
	mul r1, r2
	add r1, r0, r1
	mov r2, #1
	strb r2, [r1, #8]
	mov r0, #3
	strb r0, [r1, #9]
	mov r0, #0xb4
	strb r0, [r4, #0x1a]
	mov r0, #0
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, pc}
_02232BC0:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #8
	blt _02232BA2
_02232BC8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02232B40

	thumb_func_start ov97_02232BCC
ov97_02232BCC: ; 0x02232BCC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov97_02233538
	add r4, r0, #0
	ldrb r0, [r4, #0x1c]
	cmp r0, #0xfd
	bne _02232BE4
	add r0, r6, #0
	bl ov97_02232B40
	pop {r4, r5, r6, pc}
_02232BE4:
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	beq _02232BF0
	ldrb r0, [r4, #0x19]
	cmp r0, #3
	bne _02232C8C
_02232BF0:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	bne _02232C8C
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl sub_020C2C54
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl sub_020C4DB0
	bl ov97_02233560
	ldr r1, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02232C8C
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02232C8C
	ldr r0, [r4, #0xc]
	bl ov97_022337A4
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, #0x1c]
	cmp r1, r0
	bne _02232C8C
	ldr r0, [r4, #0xc]
	bl ov97_02233810
	mov r0, #0
	strb r0, [r4, #0x19]
	ldr r0, [r4, #0xc]
	bl ov97_022337D8
	cmp r0, #0
	beq _02232C7E
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xfd
	bne _02232C5E
	add r0, r6, #0
	bl ov97_02232B40
	b _02232C70
_02232C5E:
	ldr r2, [r5, #0xc]
	ldr r1, [r4, #0xc]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	add r0, r1, r0
	ldr r1, [r4, #4]
	lsr r2, r2, #8
	bl sub_020C4DB0
_02232C70:
	ldr r1, [r5, #8]
	ldr r0, _02232C90 ; =0xFFFF00FF
	and r0, r1
	str r0, [r5, #8]
	mov r0, #4
	strb r0, [r4, #0x1b]
	pop {r4, r5, r6, pc}
_02232C7E:
	ldr r1, [r5, #8]
	ldr r0, _02232C90 ; =0xFFFF00FF
	and r1, r0
	mov r0, #1
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r5, #8]
_02232C8C:
	pop {r4, r5, r6, pc}
	nop
_02232C90: .word 0xFFFF00FF
	thumb_func_end ov97_02232BCC

	thumb_func_start ov97_02232C94
ov97_02232C94: ; 0x02232C94
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232D16
	ldrh r0, [r4, #4]
	cmp r0, #7
	beq _02232CDE
	cmp r0, #9
	beq _02232CEC
	cmp r0, #0x15
	bne _02232D16
	bl ov97_02233418
	cmp r0, #0xa
	beq _02232CBE
	cmp r0, #0xb
	bne _02232D16
_02232CBE:
	bl ov97_02233538
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	beq _02232CCE
	cmp r0, #2
	beq _02232CD6
	pop {r4, pc}
_02232CCE:
	add r0, r4, #0
	bl ov97_02232AC8
	pop {r4, pc}
_02232CD6:
	add r0, r4, #0
	bl ov97_02232BCC
	pop {r4, pc}
_02232CDE:
	mov r0, #1
	bl ov97_022334D8
	mov r0, #0
	bl ov97_022334E4
	pop {r4, pc}
_02232CEC:
	bl ov97_022334CC
	cmp r0, #0
	beq _02232CFA
	mov r0, #1
	bl ov97_022334E4
_02232CFA:
	bl ov97_02233418
	cmp r0, #0xa
	beq _02232D08
	cmp r0, #0xb
	beq _02232D10
	pop {r4, pc}
_02232D08:
	ldrh r0, [r4, #0x12]
	bl ov97_02232254
	pop {r4, pc}
_02232D10:
	mov r0, #0
	bl ov97_022334D8
_02232D16:
	pop {r4, pc}
	thumb_func_end ov97_02232C94

	thumb_func_start ov97_02232D18
ov97_02232D18: ; 0x02232D18
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232D2E
	bl ov97_0223222C
	cmp r0, #0
	bne _02232D38
	bl ov97_02232A28
	pop {r3, pc}
_02232D2E:
	bl ov97_022337FC
	mov r0, #4
	bl ov97_02233424
_02232D38:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232D18

	thumb_func_start ov97_02232D3C
ov97_02232D3C: ; 0x02232D3C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232D54
	bl ov97_02233870
	cmp r0, #0
	beq _02232D5C
	mov r0, #2
	bl ov97_02233424
	pop {r3, pc}
_02232D54:
	bl ov97_022337FC
	bl ov97_02232200
_02232D5C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232D3C

	thumb_func_start ov97_02232D60
ov97_02232D60: ; 0x02232D60
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232D96
	mov r0, #0
	bl ov97_022334C0
	bl ov97_02233430
	cmp r0, #0xc
	bne _02232D86
	bl ov97_02233AF8
	cmp r0, #0
	beq _02232DA0
	mov r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232D86:
	bl ov97_02233AB8
	cmp r0, #0
	beq _02232DA0
	mov r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232D96:
	bl ov97_022337FC
	mov r0, #4
	bl ov97_02233424
_02232DA0:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232D60

	thumb_func_start ov97_02232DA4
ov97_02232DA4: ; 0x02232DA4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232DBA
	mov r0, #0xc
	bl ov97_02233424
	mov r0, #1
	bl ov97_022334F0
	pop {r3, pc}
_02232DBA:
	bl ov97_022337FC
	mov r0, #4
	bl ov97_02233424
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232DA4