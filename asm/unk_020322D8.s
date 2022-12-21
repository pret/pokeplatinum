	.include "macros/function.inc"
	.include "include/unk_020322D8.inc"

	

	.text


	thumb_func_start sub_020322D8
sub_020322D8: ; 0x020322D8
	ldr r3, [r0, #0x1c]
	mov r2, #0
	ldr r1, [r0, #0x18]
	cmp r3, #0
	ble _020322F4
_020322E2:
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne _020322EC
	add r0, r1, #0
	bx lr
_020322EC:
	add r2, r2, #1
	add r1, #0x10
	cmp r2, r3
	blt _020322E2
_020322F4:
	mov r0, #0
	bx lr
	thumb_func_end sub_020322D8

	thumb_func_start sub_020322F8
sub_020322F8: ; 0x020322F8
	ldr r3, [r0, #0x1c]
	mov r2, #0
	ldr r1, [r0, #0x18]
	cmp r3, #0
	ble _02032314
_02032302:
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _0203230C
	mov r0, #0
	bx lr
_0203230C:
	add r2, r2, #1
	add r1, #0x10
	cmp r2, r3
	blt _02032302
_02032314:
	mov r0, #1
	bx lr
	thumb_func_end sub_020322F8

	thumb_func_start sub_02032318
sub_02032318: ; 0x02032318
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02032336
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0203232C
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r1, #4]
	b _02032332
_0203232C:
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
_02032332:
	mov r0, #1
	bx lr
_02032336:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02032318

	thumb_func_start sub_0203233C
sub_0203233C: ; 0x0203233C
	ldr r2, [r0, #0]
	strb r1, [r2]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
	bne _02032352
	mov r0, #1
	bx lr
_02032352:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203233C

	thumb_func_start sub_02032358
sub_02032358: ; 0x02032358
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xe]
	add r4, r1, #0
	bl sub_02032868
	add r6, r0, #0
	ldr r0, _020323CC ; =0x0000FFFF
	cmp r6, r0
	ldr r0, [r4, #4]
	bne _0203237E
	cmp r0, #3
	bge _0203238E
	ldrb r1, [r5, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r5, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203237E:
	cmp r0, #1
	bge _0203238E
	ldrb r1, [r5, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r5, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203238E:
	ldrb r1, [r5, #0xe]
	add r0, r4, #0
	bl sub_0203233C
	ldr r0, _020323CC ; =0x0000FFFF
	cmp r6, r0
	bne _020323B8
	ldrh r1, [r5, #0xc]
	add r0, r4, #0
	asr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203233C
	ldrh r1, [r5, #0xc]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203233C
	b _020323BA
_020323B8:
	strh r6, [r5, #0xc]
_020323BA:
	ldrb r1, [r5, #0xf]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r5, #0xf]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020323CC: .word 0x0000FFFF
	thumb_func_end sub_02032358

	thumb_func_start sub_020323D0
sub_020323D0: ; 0x020323D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xe]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02032868
	ldr r1, _02032494 ; =0x0000FFFF
	cmp r0, r1
	bne _020323EA
	mov r2, #3
	b _020323EC
_020323EA:
	mov r2, #1
_020323EC:
	ldrh r0, [r5, #0xc]
	ldr r1, [r4, #4]
	add r0, r0, r2
	cmp r1, r0
	bge _020323FE
	cmp r7, #0
	bne _020323FE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020323FE:
	ldrb r0, [r5, #0xf]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _02032418
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02032358
	cmp r0, #0
	beq _02032418
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032418:
	ldrh r3, [r5, #0xc]
	ldr r2, [r4, #4]
	cmp r2, r3
	ldrb r0, [r5, #0xf]
	bge _02032462
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02032432
	ldr r1, [r4, #0]
	add r0, r6, #0
	bl sub_020321F4
	b _02032448
_02032432:
	mov r3, #0
	cmp r2, #0
	ble _02032448
_02032438:
	ldr r0, [r5, #0]
	ldrb r1, [r0, r3]
	ldr r0, [r4, #0]
	strb r1, [r0, r3]
	ldr r0, [r4, #4]
	add r3, r3, #1
	cmp r3, r0
	blt _02032438
_02032448:
	ldr r1, [r5, #0]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r5, #0]
	ldrh r1, [r5, #0xc]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	strh r0, [r5, #0xc]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02032462:
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02032474
	ldr r1, [r4, #0]
	add r0, r6, #0
	add r2, r3, #0
	bl sub_020321F4
	b _0203247E
_02032474:
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	add r2, r3, #0
	bl sub_020C4DB0
_0203247E:
	ldrh r0, [r5, #0xc]
	ldr r1, [r4, #0]
	add r0, r1, r0
	str r0, [r4, #0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r4, #4]
	sub r0, r1, r0
	str r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02032494: .word 0x0000FFFF
	thumb_func_end sub_020323D0

	thumb_func_start sub_02032498
sub_02032498: ; 0x02032498
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r3, #0
	bl sub_020322D8
	add r4, r0, #0
	bne _020324B2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020324B2:
	ldr r0, _02032524 ; =0x0000FFFE
	cmp r7, r0
	blt _020324BC
	bl sub_02022974
_020324BC:
	ldr r0, [sp]
	bl sub_02032868
	add r6, r0, #0
	ldr r0, _02032528 ; =0x0000FFFF
	cmp r6, r0
	bne _020324CC
	add r6, r7, #0
_020324CC:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _020324FE
	ldr r0, [r5, #0x14]
	bl sub_0203228C
	add r1, r6, #3
	cmp r1, r0
	blt _020324E4
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020324E4:
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #4]
	ldr r3, _0203252C ; =0x00000109
	add r2, r6, #0
	bl sub_02032198
	ldr r0, [r5, #0x14]
	bl sub_020322D0
	ldrb r1, [r4, #0xf]
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #0xf]
_020324FE:
	ldr r0, [sp]
	strh r6, [r4, #0xc]
	strb r0, [r4, #0xe]
	ldr r0, [sp, #4]
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02032514
	str r4, [r5, #4]
	str r4, [r5, #0]
	b _0203251C
_02032514:
	str r4, [r0, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	str r4, [r5, #4]
_0203251C:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02032524: .word 0x0000FFFE
_02032528: .word 0x0000FFFF
_0203252C: .word 0x00000109
	thumb_func_end sub_02032498

	thumb_func_start sub_02032530
sub_02032530: ; 0x02032530
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0203253A
	add r0, r1, #0
	bx lr
_0203253A:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02032544
	add r0, r1, #0
	bx lr
_02032544:
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0203254C
	mov r0, #0
_0203254C:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02032530

	thumb_func_start sub_02032550
sub_02032550: ; 0x02032550
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02032560
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
_02032560:
	bl sub_02032318
	cmp r0, #0
	bne _02032570
	add r4, #8
	add r0, r4, #0
	bl sub_02032318
_02032570:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02032550

	thumb_func_start sub_02032574
sub_02032574: ; 0x02032574
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r7, #1
	str r2, [sp]
	cmp r0, #0
	ble _020325CA
_02032584:
	add r0, r5, #0
	bl sub_02032530
	add r6, r0, #0
	beq _020325CA
	add r0, r5, #0
	bl sub_02032550
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r7, #0
	bl sub_020323D0
	cmp r0, #0
	bne _020325A8
	str r6, [r5, #0x10]
	b _020325CA
_020325A8:
	mov r0, #0
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	bne _020325B8
	str r6, [r5, #0x10]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020325B8:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	ldr r0, [r4, #4]
	ldr r7, [sp]
	cmp r0, #0
	bgt _02032584
_020325CA:
	ldr r0, [r4, #4]
	mov r2, #0
	cmp r0, #0
	ble _020325E6
	mov r1, #0xee
_020325D4:
	ldr r0, [r4, #0]
	add r2, r2, #1
	strb r1, [r0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	cmp r2, r0
	blt _020325D4
_020325E6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02032574

	thumb_func_start sub_020325EC
sub_020325EC: ; 0x020325EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	bl sub_020C4CF4
	lsl r7, r4, #4
	mov r0, #0xf
	add r1, r7, #0
	bl sub_02018144
	mov r1, #0
	add r2, r7, #0
	str r0, [r5, #0x18]
	bl sub_020C4CF4
	str r4, [r5, #0x1c]
	str r6, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020325EC

	thumb_func_start sub_02032618
sub_02032618: ; 0x02032618
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02032618

	thumb_func_start sub_02032638
sub_02032638: ; 0x02032638
	ldr r3, _02032640 ; =sub_020181C4
	ldr r0, [r0, #0x18]
	bx r3
	nop
_02032640: .word sub_020181C4
	thumb_func_end sub_02032638

	thumb_func_start sub_02032644
sub_02032644: ; 0x02032644
	push {r3, r4}
	ldr r4, [r0, #0x1c]
	mov r2, #0
	ldr r3, [r0, #0x18]
	cmp r4, #0
	ble _02032664
_02032650:
	ldrb r0, [r3, #0xe]
	cmp r0, r1
	bne _0203265C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0203265C:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, r4
	blt _02032650
_02032664:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02032644