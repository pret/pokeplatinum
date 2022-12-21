	.include "macros/function.inc"
	.include "include/unk_020711EC.inc"

	

	.text


	thumb_func_start sub_020711EC
sub_020711EC: ; 0x020711EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0207142C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207145C
	str r0, [r4, #0xc]
	str r6, [r4, #0]
	str r5, [r4, #8]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020711EC

	thumb_func_start sub_0207120C
sub_0207120C: ; 0x0207120C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071480
	add r0, r4, #0
	bl sub_02071450
	pop {r4, pc}
	thumb_func_end sub_0207120C

	thumb_func_start sub_0207121C
sub_0207121C: ; 0x0207121C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020713A4
	add r0, r4, #0
	bl sub_0207120C
	pop {r4, pc}
	thumb_func_end sub_0207121C

	thumb_func_start sub_0207122C
sub_0207122C: ; 0x0207122C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r7, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r4, #0
	bl sub_020714E8
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_020714EC
	add r5, r0, #0
_02071248:
	add r0, r5, #0
	bl sub_020714F0
	cmp r0, #0
	beq _0207125A
	add r4, r4, #1
	add r5, #0xe8
	cmp r4, r6
	blt _02071248
_0207125A:
	cmp r4, r6
	blt _02071264
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02071264:
	add r0, r5, #0
	bl sub_020714FC
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl sub_020715B0
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	bl sub_020715B8
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_020715D0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02071292
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_020715D4
	b _020712A2
_02071292:
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	bl sub_020715D4
_020712A2:
	ldr r1, [r7, #0]
	add r0, r5, #0
	bl sub_0207159C
	ldr r1, [r7, #4]
	add r0, r5, #0
	bl sub_02071518
	ldr r1, [r7, #8]
	add r0, r5, #0
	bl sub_0207156C
	ldr r1, [r7, #0xc]
	add r0, r5, #0
	bl sub_02071534
	ldr r1, [r7, #0x10]
	add r0, r5, #0
	bl sub_02071550
	ldr r1, [r7, #0x14]
	add r0, r5, #0
	bl sub_02071588
	ldr r1, [r7, #0x18]
	add r0, r5, #0
	bl sub_02071590
	ldr r1, [sp, #0x34]
	add r0, r5, #0
	bl sub_02071400
	add r4, r0, #0
	bne _020712F2
	add r0, r5, #0
	bl sub_02071490
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020712F2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020715C8
	add r0, r5, #0
	bl sub_02071520
	cmp r0, #0
	bne _02071316
	add r0, r4, #0
	bl sub_0200DA58
	add r0, r5, #0
	bl sub_02071490
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02071316:
	add r0, r5, #0
	mov r1, #2
	bl sub_02071508
	ldr r0, [sp]
	ldr r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #4]
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207122C

	thumb_func_start sub_02071330
sub_02071330: ; 0x02071330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r6, r0, #0
	add r4, sp, #8
	ldmia r5!, {r0, r1}
	add r7, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r7, #0
	str r0, [r4, #0]
	ldr r0, _02071364 ; =sub_02071604
	str r0, [sp, #0x1c]
	ldr r0, _02071368 ; =sub_02071608
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0207122C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02071364: .word sub_02071604
_02071368: .word sub_02071608
	thumb_func_end sub_02071330

	thumb_func_start sub_0207136C
sub_0207136C: ; 0x0207136C
	push {r4, lr}
	add r4, r0, #0
	bne _02071376
	bl sub_02022974
_02071376:
	add r0, r4, #0
	bl sub_020714F0
	cmp r0, #0
	beq _020713A2
	add r0, r4, #0
	bl sub_02071574
	ldr r1, [r4, #0x14]
	ldr r0, [r1, #4]
	sub r0, r0, #1
	str r0, [r1, #4]
	add r0, r4, #0
	bl sub_020715CC
	cmp r0, #0
	beq _0207139C
	bl sub_0200DA58
_0207139C:
	add r0, r4, #0
	bl sub_02071490
_020713A2:
	pop {r4, pc}
	thumb_func_end sub_0207136C

	thumb_func_start sub_020713A4
sub_020713A4: ; 0x020713A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020714E8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020714EC
	add r5, r0, #0
_020713B6:
	add r0, r5, #0
	bl sub_020714F0
	cmp r0, #1
	bne _020713C6
	add r0, r5, #0
	bl sub_0207136C
_020713C6:
	add r5, #0xe8
	sub r4, r4, #1
	bne _020713B6
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020713A4

	thumb_func_start sub_020713D0
sub_020713D0: ; 0x020713D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_020714E8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020714EC
	add r5, r0, #0
	mov r6, #3
_020713E4:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02071510
	cmp r0, #3
	bne _020713F6
	add r0, r5, #0
	bl sub_02071558
_020713F6:
	add r5, #0xe8
	sub r4, r4, #1
	bne _020713E4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020713D0

	thumb_func_start sub_02071400
sub_02071400: ; 0x02071400
	push {r4, lr}
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, _0207141C ; =sub_02071420
	add r1, r3, #0
	bl sub_0200D9E8
	add r4, r0, #0
	bne _02071416
	bl sub_02022974
_02071416:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0207141C: .word sub_02071420
	thumb_func_end sub_02071400

	thumb_func_start sub_02071420
sub_02071420: ; 0x02071420
	ldr r3, _02071428 ; =sub_0207153C
	add r0, r1, #0
	bx r3
	nop
_02071428: .word sub_0207153C
	thumb_func_end sub_02071420

	thumb_func_start sub_0207142C
sub_0207142C: ; 0x0207142C
	push {r4, lr}
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	bne _0207143C
	bl sub_02022974
_0207143C:
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_02071442:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02071442
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207142C

	thumb_func_start sub_02071450
sub_02071450: ; 0x02071450
	ldr r3, _02071458 ; =sub_02018238
	add r1, r0, #0
	ldr r0, [r1, #8]
	bx r3
	; .align 2, 0
_02071458: .word sub_02018238
	thumb_func_end sub_02071450

	thumb_func_start sub_0207145C
sub_0207145C: ; 0x0207145C
	push {r3, r4, r5, lr}
	mov r2, #0xe8
	add r5, r1, #0
	mul r5, r2
	add r1, r5, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02071472
	bl sub_02022974
_02071472:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207145C

	thumb_func_start sub_02071480
sub_02071480: ; 0x02071480
	ldr r3, _0207148C ; =sub_02018238
	add r1, r0, #0
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	bx r3
	nop
_0207148C: .word sub_02018238
	thumb_func_end sub_02071480

	thumb_func_start sub_02071490
sub_02071490: ; 0x02071490
	push {r4, lr}
	mov r1, #0
	mov r2, #0xe8
	add r4, r0, #0
	bl sub_020D5124
	ldr r1, _020714D0 ; =sub_020715F4
	add r0, r4, #0
	bl sub_02071518
	ldr r1, _020714D4 ; =sub_02071600
	add r0, r4, #0
	bl sub_0207156C
	ldr r1, _020714D8 ; =sub_020715F8
	add r0, r4, #0
	bl sub_02071534
	ldr r1, _020714DC ; =sub_020715FC
	add r0, r4, #0
	bl sub_02071550
	ldr r1, _020714E0 ; =sub_02071604
	add r0, r4, #0
	bl sub_02071588
	ldr r1, _020714E4 ; =sub_02071608
	add r0, r4, #0
	bl sub_02071590
	pop {r4, pc}
	nop
_020714D0: .word sub_020715F4
_020714D4: .word sub_02071600
_020714D8: .word sub_020715F8
_020714DC: .word sub_020715FC
_020714E0: .word sub_02071604
_020714E4: .word sub_02071608
	thumb_func_end sub_02071490

	thumb_func_start sub_020714E8
sub_020714E8: ; 0x020714E8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_020714E8

	thumb_func_start sub_020714EC
sub_020714EC: ; 0x020714EC
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_020714EC

	thumb_func_start sub_020714F0
sub_020714F0: ; 0x020714F0
	ldr r1, [r0, #0]
	mov r0, #1
	tst r1, r0
	bne _020714FA
	mov r0, #0
_020714FA:
	bx lr
	thumb_func_end sub_020714F0

	thumb_func_start sub_020714FC
sub_020714FC: ; 0x020714FC
	ldr r2, [r0, #0]
	mov r1, #1
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020714FC

	thumb_func_start sub_02071508
sub_02071508: ; 0x02071508
	ldr r2, [r0, #0]
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02071508

	thumb_func_start sub_02071510
sub_02071510: ; 0x02071510
	ldr r0, [r0, #0]
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071510

	thumb_func_start sub_02071518
sub_02071518: ; 0x02071518
	add r0, #0xd0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071518

	thumb_func_start sub_02071520
sub_02071520: ; 0x02071520
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071598
	add r1, r0, #0
	add r0, r4, #0
	add r4, #0xd0
	ldr r2, [r4, #0]
	blx r2
	pop {r4, pc}
	thumb_func_end sub_02071520

	thumb_func_start sub_02071534
sub_02071534: ; 0x02071534
	add r0, #0xd4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071534

	thumb_func_start sub_0207153C
sub_0207153C: ; 0x0207153C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071598
	add r1, r0, #0
	add r0, r4, #0
	add r4, #0xd4
	ldr r2, [r4, #0]
	blx r2
	pop {r4, pc}
	thumb_func_end sub_0207153C

	thumb_func_start sub_02071550
sub_02071550: ; 0x02071550
	add r0, #0xd8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071550

	thumb_func_start sub_02071558
sub_02071558: ; 0x02071558
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071598
	add r1, r0, #0
	add r0, r4, #0
	add r4, #0xd8
	ldr r2, [r4, #0]
	blx r2
	pop {r4, pc}
	thumb_func_end sub_02071558

	thumb_func_start sub_0207156C
sub_0207156C: ; 0x0207156C
	add r0, #0xdc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207156C

	thumb_func_start sub_02071574
sub_02071574: ; 0x02071574
	push {r4, lr}
	add r4, r0, #0
	bl sub_02071598
	add r1, r0, #0
	add r0, r4, #0
	add r4, #0xdc
	ldr r2, [r4, #0]
	blx r2
	pop {r4, pc}
	thumb_func_end sub_02071574

	thumb_func_start sub_02071588
sub_02071588: ; 0x02071588
	add r0, #0xe0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071588

	thumb_func_start sub_02071590
sub_02071590: ; 0x02071590
	add r0, #0xe4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071590

	thumb_func_start sub_02071598
sub_02071598: ; 0x02071598
	add r0, #0x30
	bx lr
	thumb_func_end sub_02071598

	thumb_func_start sub_0207159C
sub_0207159C: ; 0x0207159C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	mov r1, #0
	add r2, r4, #0
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207159C

	thumb_func_start sub_020715B0
sub_020715B0: ; 0x020715B0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_020715B0

	thumb_func_start sub_020715B4
sub_020715B4: ; 0x020715B4
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_020715B4

	thumb_func_start sub_020715B8
sub_020715B8: ; 0x020715B8
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_020715B8

	thumb_func_start sub_020715BC
sub_020715BC: ; 0x020715BC
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_020715BC

	thumb_func_start sub_020715C0
sub_020715C0: ; 0x020715C0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_020715C0

	thumb_func_start sub_020715C4
sub_020715C4: ; 0x020715C4
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_020715C4

	thumb_func_start sub_020715C8
sub_020715C8: ; 0x020715C8
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_020715C8

	thumb_func_start sub_020715CC
sub_020715CC: ; 0x020715CC
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_020715CC

	thumb_func_start sub_020715D0
sub_020715D0: ; 0x020715D0
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_020715D0

	thumb_func_start sub_020715D4
sub_020715D4: ; 0x020715D4
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_020715D4

	thumb_func_start sub_020715E4
sub_020715E4: ; 0x020715E4
	add r2, r0, #0
	add r2, #0x24
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_020715E4

	thumb_func_start sub_020715F4
sub_020715F4: ; 0x020715F4
	mov r0, #1
	bx lr
	thumb_func_end sub_020715F4

	thumb_func_start sub_020715F8
sub_020715F8: ; 0x020715F8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020715F8

	thumb_func_start sub_020715FC
sub_020715FC: ; 0x020715FC
	bx lr
	; .align 2, 0
	thumb_func_end sub_020715FC

	thumb_func_start sub_02071600
sub_02071600: ; 0x02071600
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071600

	thumb_func_start sub_02071604
sub_02071604: ; 0x02071604
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071604

	thumb_func_start sub_02071608
sub_02071608: ; 0x02071608
	bx lr
	; .align 2, 0
	thumb_func_end sub_02071608