	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F134C
ov5_021F134C: ; 0x021F134C
	push {r3, r4, r5, lr}
	mov r1, #0x16
	mov r2, #0
	lsl r1, r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0x20]
	bl ov5_021F14FC
	add r0, r4, #0
	bl ov5_021F1388
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F134C

	thumb_func_start ov5_021F1370
ov5_021F1370: ; 0x021F1370
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F13AC
	add r0, r4, #0
	bl ov5_021F153C
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F1370

	thumb_func_start ov5_021F1388
ov5_021F1388: ; 0x021F1388
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov5_021DF574
	ldr r0, [r0, #0x38]
	bl sub_02062858
	sub r2, r0, #1
	ldr r0, _021F13A8 ; =ov5_021F1424
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x24]
	pop {r4, pc}
	nop
_021F13A8: .word ov5_021F1424
	thumb_func_end ov5_021F1388

	thumb_func_start ov5_021F13AC
ov5_021F13AC: ; 0x021F13AC
	ldr r3, _021F13B4 ; =sub_0200DA58
	ldr r0, [r0, #0x24]
	bx r3
	nop
_021F13B4: .word sub_0200DA58
	thumb_func_end ov5_021F13AC

	thumb_func_start ov5_021F13B8
ov5_021F13B8: ; 0x021F13B8
	add r2, r0, #0
	add r2, #0x14
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end ov5_021F13B8

	thumb_func_start ov5_021F13C8
ov5_021F13C8: ; 0x021F13C8
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F13C8

	thumb_func_start ov5_021F13D4
ov5_021F13D4: ; 0x021F13D4
	ldr r1, [r0, #4]
	lsl r2, r1, #2
	ldr r1, _021F13F8 ; =0x02200284
	ldr r1, [r1, r2]
	str r1, [r0, #0x10]
	ldr r2, [r0, #4]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021F13FC ; =0x022002E4
	add r2, r0, #0
	add r3, r1, r3
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
_021F13F8: .word 0x02200284
_021F13FC: .word 0x022002E4
	thumb_func_end ov5_021F13D4

	thumb_func_start ov5_021F1400
ov5_021F1400: ; 0x021F1400
	ldr r3, [r0, #0]
	cmp r3, r1
	bge _021F1412
	add r2, r3, r2
	str r2, [r0, #0]
	cmp r2, r1
	ble _021F1420
	str r1, [r0, #0]
	bx lr
_021F1412:
	cmp r3, r1
	ble _021F1420
	sub r2, r3, r2
	str r2, [r0, #0]
	cmp r2, r1
	bge _021F1420
	str r1, [r0, #0]
_021F1420:
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F1400

	thumb_func_start ov5_021F1424
ov5_021F1424: ; 0x021F1424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl sub_02013960
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _021F1442
	cmp r1, #1
	beq _021F1464
	cmp r1, #2
	beq _021F146E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021F1442:
	str r4, [r5, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021F13D4
	ldr r0, [r5, #0x10]
	bl ov5_021F13C8
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021F1554
	ldr r0, [r5, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021F1464:
	ldr r0, [r5, #4]
	cmp r0, r4
	beq _021F14F0
	add r0, r1, #1
	str r0, [r5, #0]
_021F146E:
	ldr r0, _021F14F4 ; =0x02200284
	lsl r1, r4, #2
	ldr r6, [r0, r1]
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021F14F8 ; =0x022002E4
	add r2, sp, #4
	add r3, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	ldr r1, [sp, #4]
	add r0, #0x14
	mov r2, #0x10
	bl ov5_021F1400
	ldr r0, [sp, #8]
	mov r2, #0x10
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x18
	bl ov5_021F1400
	ldr r7, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x1c
	add r1, r7, #0
	mov r2, #0x10
	bl ov5_021F1400
	add r0, r5, #0
	mov r2, #2
	add r0, #0x10
	add r1, r6, #0
	lsl r2, r2, #8
	bl ov5_021F1400
	ldr r0, [r5, #0x10]
	bl ov5_021F13C8
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021F1554
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	bne _021F14F0
	ldr r1, [r5, #0x18]
	ldr r0, [sp]
	cmp r0, r1
	bne _021F14F0
	ldr r0, [r5, #0x1c]
	cmp r7, r0
	bne _021F14F0
	ldr r0, [r5, #0x10]
	cmp r6, r0
	bne _021F14F0
	str r4, [r5, #4]
	mov r0, #1
	str r0, [r5, #0]
_021F14F0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F14F4: .word 0x02200284
_021F14F8: .word 0x022002E4
	thumb_func_end ov5_021F1424

	thumb_func_start ov5_021F14FC
ov5_021F14FC: ; 0x021F14FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r0, #0
	ldr r6, _021F1538 ; =0x02200278
	str r0, [sp, #4]
	mov r7, #0
	add r4, #0x28
	add r5, #0x64
_021F150E:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r6, #0]
	ldr r0, [r0, #0x20]
	add r1, r4, #0
	mov r2, #0
	bl ov5_021DFB00
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02073B70
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x14
	add r5, #0x54
	cmp r7, #3
	blt _021F150E
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F1538: .word 0x02200278
	thumb_func_end ov5_021F14FC

	thumb_func_start ov5_021F153C
ov5_021F153C: ; 0x021F153C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x28
_021F1544:
	add r0, r5, #0
	bl sub_0207395C
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #3
	blt _021F1544
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F153C

	thumb_func_start ov5_021F1554
ov5_021F1554: ; 0x021F1554
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0x1f
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	mov r1, #1
	lsl r2, r2, #0x10
	bl sub_020B2D8C
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl sub_020B3764
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F1554

	thumb_func_start ov5_021F1570
ov5_021F1570: ; 0x021F1570
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov5_021DF578
	add r4, r0, #0
	mov r1, #0
	str r4, [sp, #0x14]
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl sub_02063050
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F15B0 ; =0x022002AC
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021F15B0: .word 0x022002AC
	thumb_func_end ov5_021F1570

	thumb_func_start ov5_021F15B4
ov5_021F15B4: ; 0x021F15B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_020715B4
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	bl sub_02062920
	str r0, [r4, #0]
	ldr r0, [r4, #0x1c]
	bl sub_02062910
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_02062E94
	cmp r0, #1
	ldr r0, [r4, #0x1c]
	bne _021F15F6
	bl sub_02062C18
	b _021F15FA
_021F15F6:
	bl sub_02062918
_021F15FA:
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F15B4

	thumb_func_start ov5_021F1600
ov5_021F1600: ; 0x021F1600
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F1600

	thumb_func_start ov5_021F1604
ov5_021F1604: ; 0x021F1604
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x1c]
	ldr r1, [r4, #0]
	add r5, r0, #0
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl sub_020627B4
	cmp r0, #0
	bne _021F1628
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021F1628:
	add r0, r6, #0
	mov r1, #8
	bl sub_02062CBC
	cmp r0, #0
	beq _021F163E
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021F163E:
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r1, _021F166C ; =0x00100200
	add r0, r6, #0
	bl sub_020628D8
	cmp r0, #1
	bne _021F1656
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, pc}
_021F1656:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021F166C: .word 0x00100200
	thumb_func_end ov5_021F1604

	thumb_func_start ov5_021F1670
ov5_021F1670: ; 0x021F1670
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _021F16CA
	ldr r6, _021F16D0 ; =0x022002C0
	add r5, sp, #0
	mov r3, #4
_021F1684:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021F1684
	ldr r0, [r6, #0]
	add r1, sp, #0x24
	str r0, [r5, #0]
	ldr r5, [r2, #0x18]
	add r0, r5, #0
	bl ov5_021F13B8
	add r0, r4, #0
	add r1, sp, #0x30
	bl sub_020715E4
	mov r0, #2
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp, #0x30]
	lsl r1, r0, #3
	ldr r2, [sp, #0x34]
	lsl r0, r0, #1
	sub r1, r2, r1
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x38]
	add r5, #0x64
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r1, sp, #0x30
	add r2, sp, #0x24
	add r3, sp, #0
	bl sub_02073BA4
_021F16CA:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021F16D0: .word 0x022002C0
	thumb_func_end ov5_021F1670

	thumb_func_start ov5_021F16D4
ov5_021F16D4: ; 0x021F16D4
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021DF578
	add r6, r0, #0
	mov r1, #0
	str r6, [sp, #0x14]
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl sub_02063050
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F1714 ; =0x02200298
	add r0, r6, #0
	add r2, sp, #8
	add r3, r4, #0
	bl ov5_021DF72C
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F1714: .word 0x02200298
	thumb_func_end ov5_021F16D4

	thumb_func_start ov5_021F1718
ov5_021F1718: ; 0x021F1718
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x1c]
	ldr r1, [r4, #0]
	add r5, r0, #0
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl sub_020627B4
	cmp r0, #0
	bne _021F173C
	add r0, r5, #0
	bl ov5_021DF74C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021F173C:
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r1, _021F1768 ; =0x00100200
	add r0, r6, #0
	bl sub_020628D8
	cmp r0, #1
	bne _021F1754
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, pc}
_021F1754:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02063050
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021F1768: .word 0x00100200
	thumb_func_end ov5_021F1718

	thumb_func_start ov5_021F176C
ov5_021F176C: ; 0x021F176C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	add r6, r0, #0
	cmp r1, #1
	beq _021F17B2
	bl sub_020715B4
	ldr r5, [r4, #0x18]
	add r4, r0, #0
	mov r1, #0x54
	mul r4, r1
	add r0, r6, #0
	add r1, sp, #0
	add r5, #0x64
	bl sub_020715E4
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp]
	lsl r1, r0, #3
	ldr r2, [sp, #4]
	lsl r0, r0, #1
	sub r1, r2, r1
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, r4
	add r1, sp, #0
	bl sub_02073BB4
_021F17B2:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F176C

	.rodata


	.global Unk_ov5_02200278
Unk_ov5_02200278: ; 0x02200278
	.incbin "incbin/overlay5_rodata.bin", 0x7964, 0x7970 - 0x7964

	.global Unk_ov5_02200284
Unk_ov5_02200284: ; 0x02200284
	.incbin "incbin/overlay5_rodata.bin", 0x7970, 0x7984 - 0x7970

	.global Unk_ov5_02200298
Unk_ov5_02200298: ; 0x02200298
	.incbin "incbin/overlay5_rodata.bin", 0x7984, 0x7998 - 0x7984

	.global Unk_ov5_022002AC
Unk_ov5_022002AC: ; 0x022002AC
	.incbin "incbin/overlay5_rodata.bin", 0x7998, 0x79AC - 0x7998

	.global Unk_ov5_022002C0
Unk_ov5_022002C0: ; 0x022002C0
	.incbin "incbin/overlay5_rodata.bin", 0x79AC, 0x79D0 - 0x79AC

	.global Unk_ov5_022002E4
Unk_ov5_022002E4: ; 0x022002E4
	.incbin "incbin/overlay5_rodata.bin", 0x79D0, 0x3C

