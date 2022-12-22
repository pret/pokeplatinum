	.include "macros/function.inc"
	.include "include/unk_0205B33C.inc"

	

	.text


	thumb_func_start sub_0205B33C
sub_0205B33C: ; 0x0205B33C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _0205B346
	bl GF_AssertFail
_0205B346:
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0205B350
	mov r0, #0
	pop {r3, r4, r5, pc}
_0205B350:
	mov r2, #0x2a
	mov r0, #3
	mov r1, #0x1f
	lsl r2, r2, #6
	bl sub_02017FD4
	add r0, r4, #0
	bl sub_0205B3A0
	add r5, r0, #0
	bne _0205B368
	ldr r5, [r4, #0x7c]
_0205B368:
	add r0, r4, #0
	bl sub_02099514
	mov r0, #2
	bl sub_02037B58
	ldr r1, _0205B384 ; =sub_0205B408
	add r0, r5, #0
	mov r2, #0x28
	bl sub_0205B5B4
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0205B384: .word sub_0205B408
	thumb_func_end sub_0205B33C

	thumb_func_start sub_0205B388
sub_0205B388: ; 0x0205B388
	push {r3, lr}
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	beq _0205B398
	ldr r1, _0205B39C ; =sub_0205B5FC
	mov r2, #5
	bl sub_0205B5B4
_0205B398:
	pop {r3, pc}
	nop
_0205B39C: .word sub_0205B5FC
	thumb_func_end sub_0205B388

	thumb_func_start sub_0205B3A0
sub_0205B3A0: ; 0x0205B3A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x7c]
	cmp r1, #0
	beq _0205B3AE
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205B3AE:
	bl sub_0203D174
	add r6, r0, #0
	bl sub_020369EC
	mov r1, #0x19
	mov r0, #0x1f
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x19
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #0x28
	str r0, [r4, #0x14]
	ldr r0, _0205B404 ; =sub_0205B5BC
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200D9E8
	str r0, [r4, #0xc]
	str r5, [r4, #0]
	str r6, [r4, #4]
	add r0, r6, #0
	bl sub_02025E38
	str r0, [r4, #8]
	add r0, r4, #0
	bl sub_0205C160
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_020361BC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0205B404: .word sub_0205B5BC
	thumb_func_end sub_0205B3A0

	thumb_func_start sub_0205B408
sub_0205B408: ; 0x0205B408
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02033E1C
	cmp r0, #0
	beq _0205B434
	add r0, sp, #0
	bl sub_02014AB4
	add r0, sp, #0
	bl sub_0205C12C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0205C010
	ldr r1, _0205B438 ; =sub_0205B43C
	add r0, r4, #0
	mov r2, #0x28
	bl sub_0205B5B4
_0205B434:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0205B438: .word sub_0205B43C
	thumb_func_end sub_0205B408

	thumb_func_start sub_0205B43C
sub_0205B43C: ; 0x0205B43C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036AA0
	cmp r0, #0
	beq _0205B458
	ldr r0, _0205B4A4 ; =0x021C0850
	mov r2, #0
	str r2, [r0, #0]
	ldr r1, _0205B4A8 ; =sub_0205B4F8
	add r0, r4, #0
	bl sub_0205B5B4
	pop {r4, pc}
_0205B458:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0205B4A2
	mov r0, #2
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0205B488
	ldr r0, [r4, #0x30]
	cmp r0, #5
	bne _0205B476
	ldr r0, [r4, #0x18]
	bl sub_02037888
	b _0205B498
_0205B476:
	cmp r0, #6
	ldr r0, [r4, #0x18]
	bne _0205B482
	bl sub_020378C8
	b _0205B498
_0205B482:
	bl sub_02036A38
	b _0205B498
_0205B488:
	cmp r0, #2
	bne _0205B498
	mov r0, #0
	bl sub_02095E98
	ldr r0, [r4, #0x18]
	bl sub_02037854
_0205B498:
	ldr r1, _0205B4AC ; =sub_0205B634
	add r0, r4, #0
	mov r2, #0xc
	bl sub_0205B5B4
_0205B4A2:
	pop {r4, pc}
	; .align 2, 0
_0205B4A4: .word 0x021C0850
_0205B4A8: .word sub_0205B4F8
_0205B4AC: .word sub_0205B634
	thumb_func_end sub_0205B43C

	thumb_func_start sub_0205B4B0
sub_0205B4B0: ; 0x0205B4B0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036B44
	cmp r0, #1
	bne _0205B4CC
	ldr r0, [r4, #0]
	bl sub_02099514
	ldr r1, _0205B4D0 ; =sub_0205B43C
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B4CC:
	pop {r4, pc}
	nop
_0205B4D0: .word sub_0205B43C
	thumb_func_end sub_0205B4B0

	thumb_func_start sub_0205B4D4
sub_0205B4D4: ; 0x0205B4D4
	push {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #1
_0205B4DA:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _0205B4E6
	add r5, r5, #1
_0205B4E6:
	add r4, r4, #1
	cmp r4, #5
	blt _0205B4DA
	cmp r5, #1
	blt _0205B4F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0205B4F4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205B4D4

	thumb_func_start sub_0205B4F8
sub_0205B4F8: ; 0x0205B4F8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _0205B508
	sub r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
_0205B508:
	ldr r0, _0205B56C ; =0x021C0850
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bl sub_020340E8
	add r5, r0, #0
	bl sub_020360E8
	cmp r0, #0
	beq _0205B548
	bl sub_0205B4D4
	cmp r0, #1
	bne _0205B548
	ldrb r0, [r5, #0x1c]
	cmp r0, #4
	beq _0205B548
	bl sub_02032AC0
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #0xb
	bl sub_0205BEA8
	ldr r1, _0205B570 ; =sub_0205B578
	add r0, r4, #0
	mov r2, #0
	bl sub_0205B5B4
_0205B548:
	bl sub_02036AA0
	cmp r0, #0
	bne _0205B56A
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	mov r0, #0
	bl sub_0205BEA8
	ldr r1, _0205B574 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B56A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205B56C: .word 0x021C0850
_0205B570: .word sub_0205B578
_0205B574: .word sub_0205B4B0
	thumb_func_end sub_0205B4F8

	thumb_func_start sub_0205B578
sub_0205B578: ; 0x0205B578
	push {r4, lr}
	add r4, r0, #0
	bl sub_02038938
	cmp r0, #0
	beq _0205B58C
	bl sub_020360E8
	cmp r0, #0
	beq _0205B5AE
_0205B58C:
	bl sub_020360E8
	cmp r0, #0
	bne _0205B5AE
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	mov r0, #0
	bl sub_0205BEA8
	ldr r1, _0205B5B0 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B5AE:
	pop {r4, pc}
	; .align 2, 0
_0205B5B0: .word sub_0205B4B0
	thumb_func_end sub_0205B578

	thumb_func_start sub_0205B5B4
sub_0205B5B4: ; 0x0205B5B4
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205B5B4

	thumb_func_start sub_0205B5BC
sub_0205B5BC: ; 0x0205B5BC
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	cmp r1, #0
	bne _0205B5CA
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
_0205B5CA:
	mov r7, #0x11
	ldr r5, _0205B5F8 ; =0x021C085C
	mov r6, #0
	add r4, r1, #0
	lsl r7, r7, #4
_0205B5D4:
	add r0, r6, #0
	bl sub_02033F3C
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	stmia r5!, {r0}
	cmp r6, #0x10
	blt _0205B5D4
	ldr r0, [sp]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0205B5F6
	blx r1
_0205B5F6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0205B5F8: .word 0x021C085C
	thumb_func_end sub_0205B5BC

	thumb_func_start sub_0205B5FC
sub_0205B5FC: ; 0x0205B5FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0205B60C
	sub r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_0205B60C:
	bl sub_02036B68
	ldr r1, _0205B61C ; =sub_0205B620
	add r0, r4, #0
	mov r2, #0
	bl sub_0205B5B4
	pop {r4, pc}
	; .align 2, 0
_0205B61C: .word sub_0205B620
	thumb_func_end sub_0205B5FC

	thumb_func_start sub_0205B620
sub_0205B620: ; 0x0205B620
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E38
	cmp r0, #0
	bne _0205B632
	add r0, r4, #0
	bl sub_0205B754
_0205B632:
	pop {r4, pc}
	thumb_func_end sub_0205B620

	thumb_func_start sub_0205B634
sub_0205B634: ; 0x0205B634
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036A68
	cmp r0, #1
	bne _0205B650
	bl sub_02032AC0
	ldr r1, _0205B688 ; =sub_0205B6C4
	add r0, r4, #0
	mov r2, #3
	bl sub_0205B5B4
	pop {r4, pc}
_0205B650:
	bl sub_020360E8
	cmp r0, #0
	beq _0205B668
	mov r2, #0
	str r2, [r4, #0x20]
	mov r0, #3
	str r0, [r4, #0x1c]
	ldr r1, _0205B68C ; =sub_0205B4F8
	add r0, r4, #0
	bl sub_0205B5B4
_0205B668:
	bl sub_02036A68
	cmp r0, #0
	beq _0205B686
	ldr r1, _0205B690 ; =sub_0205B694
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
	mov r1, #0
	str r1, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x44]
_0205B686:
	pop {r4, pc}
	; .align 2, 0
_0205B688: .word sub_0205B6C4
_0205B68C: .word sub_0205B4F8
_0205B690: .word sub_0205B694
	thumb_func_end sub_0205B634

	thumb_func_start sub_0205B694
sub_0205B694: ; 0x0205B694
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020509A4
	cmp r0, #0
	bne _0205B6BC
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	mov r0, #0
	bl sub_0205BEA8
	ldr r1, _0205B6C0 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B6BC:
	pop {r4, pc}
	nop
_0205B6C0: .word sub_0205B4B0
	thumb_func_end sub_0205B694

	thumb_func_start sub_0205B6C4
sub_0205B6C4: ; 0x0205B6C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036A68
	cmp r0, #1
	bne _0205B6F8
	bl sub_0203608C
	bl sub_02032EE8
	cmp r0, #0
	beq _0205B720
	mov r1, #0
	str r1, [r4, #0x20]
	mov r0, #1
	str r0, [r4, #0x1c]
	str r1, [r4, #0x44]
	add r1, r0, #0
	bl sub_020388F4
	ldr r1, _0205B724 ; =sub_0205B72C
	add r0, r4, #0
	mov r2, #3
	bl sub_0205B5B4
	pop {r4, pc}
_0205B6F8:
	bl sub_02036A68
	cmp r0, #0
	bne _0205B720
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	ldr r1, _0205B728 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
	mov r1, #0
	str r1, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x44]
_0205B720:
	pop {r4, pc}
	nop
_0205B724: .word sub_0205B72C
_0205B728: .word sub_0205B4B0
	thumb_func_end sub_0205B6C4

	thumb_func_start sub_0205B72C
sub_0205B72C: ; 0x0205B72C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036A68
	cmp r0, #0
	bne _0205B74C
	bl sub_02036AC4
	add r0, r4, #0
	bl sub_0205C160
	ldr r1, _0205B750 ; =sub_0205B4B0
	add r0, r4, #0
	mov r2, #2
	bl sub_0205B5B4
_0205B74C:
	pop {r4, pc}
	nop
_0205B750: .word sub_0205B4B0
	thumb_func_end sub_0205B72C

	thumb_func_start sub_0205B754
sub_0205B754: ; 0x0205B754
	push {r4, lr}
	add r4, r0, #0
	beq _0205B76C
	ldr r0, [r4, #0xc]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1f
	bl sub_0201807C
_0205B76C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205B754

	thumb_func_start sub_0205B770
sub_0205B770: ; 0x0205B770
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0205B770

	thumb_func_start sub_0205B774
sub_0205B774: ; 0x0205B774
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end sub_0205B774

	thumb_func_start sub_0205B780
sub_0205B780: ; 0x0205B780
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	sub r0, r5, #1
	bl sub_02033FB0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205C154
	cmp r6, #0
	bne _0205B79C
	mov r0, #5
	pop {r4, r5, r6, pc}
_0205B79C:
	sub r0, r5, #1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	cmp r1, #0
	bne _0205B7B0
	mov r0, #5
	pop {r4, r5, r6, pc}
_0205B7B0:
	add r1, #0x50
	ldr r0, _0205B800 ; =0x021C0850
	add r1, #0x30
	str r1, [r0, #4]
	ldrb r0, [r1, #0x1c]
	cmp r0, #0xd
	bhi _0205B7FA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205B7CA: ; jump table
	.short _0205B7E6 - _0205B7CA - 2 ; case 0
	.short _0205B7EA - _0205B7CA - 2 ; case 1
	.short _0205B7EE - _0205B7CA - 2 ; case 2
	.short _0205B7F2 - _0205B7CA - 2 ; case 3
	.short _0205B7F6 - _0205B7CA - 2 ; case 4
	.short _0205B7F6 - _0205B7CA - 2 ; case 5
	.short _0205B7F6 - _0205B7CA - 2 ; case 6
	.short _0205B7F6 - _0205B7CA - 2 ; case 7
	.short _0205B7F6 - _0205B7CA - 2 ; case 8
	.short _0205B7FA - _0205B7CA - 2 ; case 9
	.short _0205B7FA - _0205B7CA - 2 ; case 10
	.short _0205B7F6 - _0205B7CA - 2 ; case 11
	.short _0205B7FA - _0205B7CA - 2 ; case 12
	.short _0205B7F2 - _0205B7CA - 2 ; case 13
_0205B7E6:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205B7EA:
	mov r0, #2
	pop {r4, r5, r6, pc}
_0205B7EE:
	mov r0, #3
	pop {r4, r5, r6, pc}
_0205B7F2:
	mov r0, #4
	pop {r4, r5, r6, pc}
_0205B7F6:
	mov r0, #5
	pop {r4, r5, r6, pc}
_0205B7FA:
	mov r0, #5
	pop {r4, r5, r6, pc}
	nop
_0205B800: .word 0x021C0850
	thumb_func_end sub_0205B780

	thumb_func_start sub_0205B804
sub_0205B804: ; 0x0205B804
	push {r3, r4}
	sub r1, r1, #1
	lsl r3, r1, #2
	add r4, r0, r3
	mov r3, #0x11
	lsl r3, r3, #4
	ldr r4, [r4, r3]
	cmp r4, #0
	bne _0205B81C
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B81C:
	add r4, #0x50
	ldr r3, _0205B8D4 ; =0x021C0850
	add r4, #0x30
	str r4, [r3, #4]
	ldrb r3, [r4, #0x1c]
	cmp r3, #0xd
	bhi _0205B8CE
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0205B836: ; jump table
	.short _0205B872 - _0205B836 - 2 ; case 0
	.short _0205B88E - _0205B836 - 2 ; case 1
	.short _0205B852 - _0205B836 - 2 ; case 2
	.short _0205B8AA - _0205B836 - 2 ; case 3
	.short _0205B8C8 - _0205B836 - 2 ; case 4
	.short _0205B8C8 - _0205B836 - 2 ; case 5
	.short _0205B8C8 - _0205B836 - 2 ; case 6
	.short _0205B8C8 - _0205B836 - 2 ; case 7
	.short _0205B8C8 - _0205B836 - 2 ; case 8
	.short _0205B8CE - _0205B836 - 2 ; case 9
	.short _0205B8CE - _0205B836 - 2 ; case 10
	.short _0205B8C8 - _0205B836 - 2 ; case 11
	.short _0205B8CE - _0205B836 - 2 ; case 12
	.short _0205B8AA - _0205B836 - 2 ; case 13
_0205B852:
	cmp r2, #3
	beq _0205B85C
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B85C:
	mov r2, #5
	str r2, [r0, #0x30]
	str r1, [r0, #0x18]
	mov r2, #1
	str r2, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x1c]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
_0205B872:
	cmp r2, #1
	beq _0205B87C
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B87C:
	str r1, [r0, #0x18]
	mov r2, #1
	str r2, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x1c]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
_0205B88E:
	cmp r2, #2
	beq _0205B898
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B898:
	str r1, [r0, #0x18]
	mov r1, #2
	str r1, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x1c]
	mov r0, #1
	pop {r3, r4}
	bx lr
_0205B8AA:
	cmp r2, #4
	beq _0205B8B4
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B8B4:
	mov r2, #6
	str r2, [r0, #0x30]
	str r1, [r0, #0x18]
	mov r2, #1
	str r2, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x1c]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
_0205B8C8:
	mov r0, #5
	pop {r3, r4}
	bx lr
_0205B8CE:
	mov r0, #5
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0205B8D4: .word 0x021C0850
	thumb_func_end sub_0205B804

	thumb_func_start sub_0205B8D8
sub_0205B8D8: ; 0x0205B8D8
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0205B8D8

	thumb_func_start sub_0205B8DC
sub_0205B8DC: ; 0x0205B8DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0205B8EA
	mov r0, #7
	pop {r4, pc}
_0205B8EA:
	bl sub_02035E18
	cmp r0, #2
	bge _0205B8F6
	mov r0, #7
	pop {r4, pc}
_0205B8F6:
	bl sub_0203608C
	cmp r0, #0
	bne _0205B90A
	bl sub_02036AA0
	cmp r0, #1
	bne _0205B916
	ldr r0, [r4, #0x40]
	pop {r4, pc}
_0205B90A:
	bl sub_02036A68
	cmp r0, #1
	bne _0205B916
	ldr r0, [r4, #0x40]
	pop {r4, pc}
_0205B916:
	mov r0, #7
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205B8DC

	thumb_func_start sub_0205B91C
sub_0205B91C: ; 0x0205B91C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02036AA0
	cmp r0, #1
	bne _0205B92C
	ldr r0, [r4, #0x30]
	pop {r4, pc}
_0205B92C:
	mov r0, #7
	pop {r4, pc}
	thumb_func_end sub_0205B91C

	thumb_func_start sub_0205B930
sub_0205B930: ; 0x0205B930
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r0, sp, #0
	strb r4, [r0, #2]
	cmp r1, #0
	beq _0205B944
	cmp r1, #1
	beq _0205B95C
	pop {r3, r4, r5, pc}
_0205B944:
	ldr r1, [r5, #0x44]
	cmp r1, #0
	bne _0205B984
	ldrb r0, [r0, #2]
	add r1, sp, #0
	add r1, #2
	str r0, [r5, #0x34]
	mov r0, #0x63
	mov r2, #1
	bl sub_020359DC
	pop {r3, r4, r5, pc}
_0205B95C:
	cmp r4, #0
	bne _0205B974
	ldr r1, [r5, #0x30]
	mov r2, #1
	strb r1, [r0, #1]
	add r1, sp, #0
	mov r0, #0x67
	add r1, #1
	bl sub_02035AC4
	str r4, [r5, #0x3c]
	pop {r3, r4, r5, pc}
_0205B974:
	mov r1, #7
	strb r1, [r0]
	mov r0, #0x67
	add r1, sp, #0
	mov r2, #1
	bl sub_02035AC4
	str r4, [r5, #0x3c]
_0205B984:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205B930

	thumb_func_start sub_0205B988
sub_0205B988: ; 0x0205B988
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205B988

	thumb_func_start sub_0205B98C
sub_0205B98C: ; 0x0205B98C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205B98C

	thumb_func_start sub_0205B990
sub_0205B990: ; 0x0205B990
	push {r4, lr}
	add r4, r3, #0
	ldr r0, [r4, #0x7c]
	ldr r1, _0205B9A8 ; =sub_0205B43C
	mov r2, #2
	bl sub_0205B5B4
	ldr r0, [r4, #0x7c]
	bl sub_0205C160
	pop {r4, pc}
	nop
_0205B9A8: .word sub_0205B43C
	thumb_func_end sub_0205B990

	thumb_func_start sub_0205B9AC
sub_0205B9AC: ; 0x0205B9AC
	ldr r1, [r3, #0x7c]
	ldr r0, [r1, #0x44]
	cmp r0, #0
	bne _0205B9BE
	ldrb r0, [r2]
	str r0, [r1, #0x30]
	ldrb r1, [r2]
	ldr r0, _0205B9C0 ; =0x021C0850
	str r1, [r0, #8]
_0205B9BE:
	bx lr
	; .align 2, 0
_0205B9C0: .word 0x021C0850
	thumb_func_end sub_0205B9AC

	thumb_func_start sub_0205B9C4
sub_0205B9C4: ; 0x0205B9C4
	push {r3, lr}
	ldr r0, [r3, #0x7c]
	mov r1, #1
	str r1, [r0, #0x2c]
	ldrb r1, [r2]
	ldr r0, [r3, #0x7c]
	str r1, [r0, #0x40]
	ldrb r0, [r2]
	cmp r0, #4
	bne _0205B9DC
	bl sub_0203781C
_0205B9DC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205B9C4

	thumb_func_start sub_0205B9E0
sub_0205B9E0: ; 0x0205B9E0
	ldr r0, [r3, #0x7c]
	mov r1, #1
	str r1, [r0, #0x44]
	bx lr
	thumb_func_end sub_0205B9E0

	thumb_func_start sub_0205B9E8
sub_0205B9E8: ; 0x0205B9E8
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end sub_0205B9E8

	thumb_func_start sub_0205B9EC
sub_0205B9EC: ; 0x0205B9EC
	push {r4, lr}
	ldr r0, [r0, #0x30]
	add r4, r1, #0
	cmp r0, #0
	bne _0205BA04
	mov r1, #0
	mov r0, #0x68
	add r2, r1, #0
	bl sub_020359DC
	add r0, r4, #0
	pop {r4, pc}
_0205BA04:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0205B9EC

	thumb_func_start sub_0205BA08
sub_0205BA08: ; 0x0205BA08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r7, r0, #0
	ldr r0, _0205BA58 ; =0x0000066A
	mov r1, #1
	strh r1, [r6, r0]
	bl sub_0203608C
	cmp r5, r0
	beq _0205BA54
	add r0, r7, #0
	bl sub_02025EF0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02025F30
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0x1f
	bl sub_0202C0EC
	add r4, #0x9c
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #4
	bl sub_0202B758
_0205BA54:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205BA58: .word 0x0000066A
	thumb_func_end sub_0205BA08

	thumb_func_start sub_0205BA5C
sub_0205BA5C: ; 0x0205BA5C
	ldr r1, [r1, #0x7c]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205BA5C

	thumb_func_start sub_0205BA6C
sub_0205BA6C: ; 0x0205BA6C
	ldr r1, [r3, #0x7c]
	ldrb r2, [r2]
	add r1, r1, r0
	ldr r0, _0205BA78 ; =0x00000176
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_0205BA78: .word 0x00000176
	thumb_func_end sub_0205BA6C

	thumb_func_start sub_0205BA7C
sub_0205BA7C: ; 0x0205BA7C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	ldr r2, _0205BAA8 ; =0x00000176
	add r1, r4, r0
	ldrb r1, [r1, r2]
	cmp r1, #2
	bne _0205BA92
	mov r0, #1
	pop {r4, pc}
_0205BA92:
	mov r1, #1
	eor r0, r1
	add r0, r4, r0
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _0205BAA2
	mov r0, #2
	pop {r4, pc}
_0205BAA2:
	mov r0, #0
	pop {r4, pc}
	nop
_0205BAA8: .word 0x00000176
	thumb_func_end sub_0205BA7C

	thumb_func_start sub_0205BAAC
sub_0205BAAC: ; 0x0205BAAC
	push {r3, lr}
	add r1, sp, #0
	strb r0, [r1]
	mov r0, #0x65
	add r1, sp, #0
	mov r2, #1
	bl sub_020359DC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0205BAAC

	thumb_func_start sub_0205BAC0
sub_0205BAC0: ; 0x0205BAC0
	ldr r3, _0205BAE4 ; =0x020ED570
	mov r2, #0
_0205BAC4:
	ldrh r1, [r3]
	cmp r1, r0
	bgt _0205BAD4
	add r1, r1, #4
	cmp r1, r0
	ble _0205BAD4
	add r0, r2, #0
	bx lr
_0205BAD4:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0xa
	blt _0205BAC4
	mov r0, #0
	mvn r0, r0
	bx lr
	nop
_0205BAE4: .word 0x020ED570
	thumb_func_end sub_0205BAC0

	thumb_func_start sub_0205BAE8
sub_0205BAE8: ; 0x0205BAE8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	cmp r4, #9
	ble _0205BB08
	add r0, r4, #0
	bl sub_0205BAC0
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0205BB0A
	bl GF_AssertFail
	b _0205BB0A
_0205BB08:
	add r5, r4, #0
_0205BB0A:
	mov r0, #0x11
	lsl r0, r0, #4
	add r6, r6, r0
	lsl r7, r5, #2
	ldr r0, [r6, r7]
	cmp r0, #0
	bne _0205BB1C
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0205BB1C:
	add r0, r5, #0
	bl sub_02033FB0
	ldr r5, [r6, r7]
	add r5, #0x50
	add r5, #0x30
	cmp r0, #0
	bne _0205BB30
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0205BB30:
	cmp r4, #9
	ble _0205BB4A
	sub r4, #0xa
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	add r0, r5, r0
	ldrb r0, [r0, #0x18]
	asr r4, r0, #7
	b _0205BB50
_0205BB4A:
	bl sub_02025F30
	add r4, r0, #0
_0205BB50:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0xd
	bhi _0205BC2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205BB62: ; jump table
	.short _0205BC2E - _0205BB62 - 2 ; case 0
	.short _0205BBDA - _0205BB62 - 2 ; case 1
	.short _0205BBF6 - _0205BB62 - 2 ; case 2
	.short _0205BC12 - _0205BB62 - 2 ; case 3
	.short _0205BB7E - _0205BB62 - 2 ; case 4
	.short _0205BB86 - _0205BB62 - 2 ; case 5
	.short _0205BBA2 - _0205BB62 - 2 ; case 6
	.short _0205BBBE - _0205BB62 - 2 ; case 7
	.short _0205BBDA - _0205BB62 - 2 ; case 8
	.short _0205BBF6 - _0205BB62 - 2 ; case 9
	.short _0205BC12 - _0205BB62 - 2 ; case 10
	.short _0205BB7E - _0205BB62 - 2 ; case 11
	.short _0205BC12 - _0205BB62 - 2 ; case 12
	.short _0205BC12 - _0205BB62 - 2 ; case 13
_0205BB7E:
	ldr r0, _0205BC34 ; =0x020ED548
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0205BB86:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC38 ; =0x020ED560
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BBA2:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC3C ; =0x020ED620
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BBBE:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC40 ; =0x020ED550
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BBDA:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC44 ; =0x020ED600
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BBF6:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC48 ; =0x020ED640
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BC12:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205BC4C ; =0x020ED660
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205BC2E:
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205BC34: .word 0x020ED548
_0205BC38: .word 0x020ED560
_0205BC3C: .word 0x020ED620
_0205BC40: .word 0x020ED550
_0205BC44: .word 0x020ED600
_0205BC48: .word 0x020ED640
_0205BC4C: .word 0x020ED660
	thumb_func_end sub_0205BAE8

	thumb_func_start sub_0205BC50
sub_0205BC50: ; 0x0205BC50
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0203608C
	bl sub_02032F78
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032F78
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	bl sub_0203608C
	bl sub_02032F9C
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032F9C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r4, #0
	bne _0205BC94
	mov r0, #0xf
	pop {r3, r4, r5, r6, r7, pc}
_0205BC94:
	beq _0205BCB0
	ldr r0, [sp]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200BDD0
	cmp r5, #0
	beq _0205BCB0
	ldr r0, [sp]
	mov r1, #4
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0200BE08
_0205BCB0:
	cmp r7, r4
	beq _0205BCC8
	cmp r5, #0
	bne _0205BCBC
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_0205BCBC:
	cmp r6, r5
	bne _0205BCC4
	mov r0, #0xd
	pop {r3, r4, r5, r6, r7, pc}
_0205BCC4:
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_0205BCC8:
	cmp r6, r5
	beq _0205BCD0
	mov r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_0205BCD0:
	mov r0, #0xf
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205BC50

	thumb_func_start sub_0205BCD4
sub_0205BCD4: ; 0x0205BCD4
	push {r3, lr}
	cmp r0, #0
	beq _0205BCE6
	lsl r2, r0, #3
	ldr r0, _0205BCF0 ; =0x020ED6E8
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, pc}
_0205BCE6:
	add r0, r2, #0
	bl sub_0205BC50
	pop {r3, pc}
	nop
_0205BCF0: .word 0x020ED6E8
	thumb_func_end sub_0205BCD4

	thumb_func_start sub_0205BCF4
sub_0205BCF4: ; 0x0205BCF4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	cmp r4, #0
	bne _0205BD08
	sub r1, r1, #1
	bl sub_0205BAE8
	pop {r4, r5, r6, pc}
_0205BD08:
	sub r0, r1, #1
	bl sub_02033FB0
	cmp r0, #0
	bne _0205BD24
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02038AE0
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205BD24:
	bl sub_02025F30
	add r1, r0, #0
	cmp r4, #0x1a
	bhi _0205BE04
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205BD3A: ; jump table
	.short _0205BE04 - _0205BD3A - 2 ; case 0
	.short _0205BD70 - _0205BD3A - 2 ; case 1
	.short _0205BD7C - _0205BD3A - 2 ; case 2
	.short _0205BDA8 - _0205BD3A - 2 ; case 3
	.short _0205BDA8 - _0205BD3A - 2 ; case 4
	.short _0205BDA8 - _0205BD3A - 2 ; case 5
	.short _0205BDA8 - _0205BD3A - 2 ; case 6
	.short _0205BDA8 - _0205BD3A - 2 ; case 7
	.short _0205BDA8 - _0205BD3A - 2 ; case 8
	.short _0205BD84 - _0205BD3A - 2 ; case 9
	.short _0205BDB6 - _0205BD3A - 2 ; case 10
	.short _0205BDB6 - _0205BD3A - 2 ; case 11
	.short _0205BDB6 - _0205BD3A - 2 ; case 12
	.short _0205BDC4 - _0205BD3A - 2 ; case 13
	.short _0205BDC4 - _0205BD3A - 2 ; case 14
	.short _0205BDC4 - _0205BD3A - 2 ; case 15
	.short _0205BDD2 - _0205BD3A - 2 ; case 16
	.short _0205BDD2 - _0205BD3A - 2 ; case 17
	.short _0205BDD2 - _0205BD3A - 2 ; case 18
	.short _0205BD9A - _0205BD3A - 2 ; case 19
	.short _0205BD9A - _0205BD3A - 2 ; case 20
	.short _0205BD9A - _0205BD3A - 2 ; case 21
	.short _0205BDE0 - _0205BD3A - 2 ; case 22
	.short _0205BDE8 - _0205BD3A - 2 ; case 23
	.short _0205BDF0 - _0205BD3A - 2 ; case 24
	.short _0205BDF8 - _0205BD3A - 2 ; case 25
	.short _0205BDFC - _0205BD3A - 2 ; case 26
_0205BD70:
	ldr r0, [r5, #0x34]
	add r2, r6, #0
	sub r0, r0, #1
	bl sub_0205BCD4
	pop {r4, r5, r6, pc}
_0205BD7C:
	ldr r0, _0205BE0C ; =0x020ED520
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BD84:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _0205BD8E
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205BD8E:
	lsl r2, r0, #3
	ldr r0, _0205BE10 ; =0x020ED6A8
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BD9A:
	sub r4, #0x13
	ldr r0, _0205BE14 ; =0x020ED5CC
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDA8:
	sub r0, r4, #3
	lsl r2, r0, #3
	ldr r0, _0205BE18 ; =0x020ED680
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDB6:
	sub r4, #0xa
	ldr r0, _0205BE1C ; =0x020ED584
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDC4:
	sub r4, #0xd
	ldr r0, _0205BE20 ; =0x020ED59C
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDD2:
	sub r4, #0x10
	ldr r0, _0205BE24 ; =0x020ED5B4
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205BDE0:
	ldr r0, _0205BE28 ; =0x020ED530
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BDE8:
	ldr r0, _0205BE2C ; =0x020ED528
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BDF0:
	ldr r0, _0205BE30 ; =0x020ED538
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BDF8:
	mov r0, #0xda
	pop {r4, r5, r6, pc}
_0205BDFC:
	ldr r0, _0205BE34 ; =0x020ED540
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205BE04:
	bl GF_AssertFail
	mov r0, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0205BE0C: .word 0x020ED520
_0205BE10: .word 0x020ED6A8
_0205BE14: .word 0x020ED5CC
_0205BE18: .word 0x020ED680
_0205BE1C: .word 0x020ED584
_0205BE20: .word 0x020ED59C
_0205BE24: .word 0x020ED5B4
_0205BE28: .word 0x020ED530
_0205BE2C: .word 0x020ED528
_0205BE30: .word 0x020ED538
_0205BE34: .word 0x020ED540
	thumb_func_end sub_0205BCF4

	thumb_func_start sub_0205BE38
sub_0205BE38: ; 0x0205BE38
	push {r4, lr}
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r4, r0, #0
	bne _0205BE4E
	bl GF_AssertFail
_0205BE4E:
	add r0, r4, #0
	bl sub_02025FCC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205BE38

	thumb_func_start sub_0205BE58
sub_0205BE58: ; 0x0205BE58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #1
_0205BE5E:
	add r0, r7, #0
	sub r4, r7, #1
	bl sub_02032EE8
	add r6, r0, #0
	beq _0205BE96
	bl sub_0203608C
	cmp r0, #0
	bne _0205BEA0
	add r0, r6, #0
	bl sub_02025F20
	lsl r1, r4, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_02025F8C
	str r0, [sp]
	add r0, r6, #0
	bl sub_02025F30
	lsl r1, r0, #7
	ldr r0, [sp]
	orr r1, r0
	add r0, r5, r4
	strb r1, [r0, #0x18]
	b _0205BEA0
_0205BE96:
	lsl r1, r4, #2
	mov r0, #0
	str r0, [r5, r1]
	add r1, r5, r4
	strb r0, [r1, #0x18]
_0205BEA0:
	add r7, r7, #1
	cmp r7, #5
	blt _0205BE5E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205BE58

	thumb_func_start sub_0205BEA8
sub_0205BEA8: ; 0x0205BEA8
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	cmp r4, #0xd
	bhi _0205BF32
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205BEC8: ; jump table
	.short _0205BF32 - _0205BEC8 - 2 ; case 0
	.short _0205BF02 - _0205BEC8 - 2 ; case 1
	.short _0205BF16 - _0205BEC8 - 2 ; case 2
	.short _0205BF2A - _0205BEC8 - 2 ; case 3
	.short _0205BF32 - _0205BEC8 - 2 ; case 4
	.short _0205BEEE - _0205BEC8 - 2 ; case 5
	.short _0205BEEE - _0205BEC8 - 2 ; case 6
	.short _0205BEEE - _0205BEC8 - 2 ; case 7
	.short _0205BEF8 - _0205BEC8 - 2 ; case 8
	.short _0205BF0C - _0205BEC8 - 2 ; case 9
	.short _0205BF20 - _0205BEC8 - 2 ; case 10
	.short _0205BEE4 - _0205BEC8 - 2 ; case 11
	.short _0205BF20 - _0205BEC8 - 2 ; case 12
	.short _0205BF2A - _0205BEC8 - 2 ; case 13
_0205BEE4:
	add r0, sp, #0
	mov r1, #2
	bl sub_0205BE58
	b _0205BF32
_0205BEEE:
	add r0, sp, #0
	mov r1, #2
	bl sub_0205BE58
	b _0205BF32
_0205BEF8:
	add r0, sp, #0
	mov r1, #5
	bl sub_0205BE58
	b _0205BF32
_0205BF02:
	add r0, sp, #0
	mov r1, #4
	bl sub_0205BE58
	b _0205BF32
_0205BF0C:
	add r0, sp, #0
	mov r1, #5
	bl sub_0205BE58
	b _0205BF32
_0205BF16:
	add r0, sp, #0
	mov r1, #4
	bl sub_0205BE58
	b _0205BF32
_0205BF20:
	add r0, sp, #0
	mov r1, #5
	bl sub_0205BE58
	b _0205BF32
_0205BF2A:
	add r0, sp, #0
	mov r1, #4
	bl sub_0205BE58
_0205BF32:
	add r0, sp, #0
	strb r4, [r0, #0x1c]
	add r0, sp, #0
	bl sub_020340C4
	bl sub_020340FC
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end sub_0205BEA8

	thumb_func_start sub_0205BF44
sub_0205BF44: ; 0x0205BF44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r3, #0
	mov r0, #0x11
	add r6, r1, #0
	add r2, r3, #0
	add r4, r5, #0
	lsl r0, r0, #4
_0205BF54:
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0205BF5C
	add r3, r3, #1
_0205BF5C:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, #0xa
	blt _0205BF54
	cmp r3, #0
	beq _0205BF6C
	mov r0, #0xa6
	pop {r4, r5, r6, pc}
_0205BF6C:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_02014BBC
	cmp r0, #0
	bne _0205BF7E
	mov r0, #0xa7
	pop {r4, r5, r6, pc}
_0205BF7E:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_02014C80
	cmp r0, #4
	beq _0205BFB0
	ldr r0, [r5, #8]
	bl sub_02025F8C
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_02025F30
	add r1, r4, #0
	mov r2, #2
	bl sub_0205CA14
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200B960
	mov r0, #0xa8
	pop {r4, r5, r6, pc}
_0205BFB0:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_02014C84
	add r4, r0, #0
	cmp r4, #0x14
	blt _0205BFC2
	mov r4, #0
_0205BFC2:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02014C78
	add r2, r0, #0
	ldr r0, _0205BFE8 ; =0x0000FFFF
	cmp r2, r0
	beq _0205BFDE
	add r0, r6, #0
	mov r1, #0
	bl sub_0200BE48
_0205BFDE:
	ldr r0, _0205BFEC ; =0x020ED720
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
	nop
_0205BFE8: .word 0x0000FFFF
_0205BFEC: .word 0x020ED720
	thumb_func_end sub_0205BF44

	thumb_func_start sub_0205BFF0
sub_0205BFF0: ; 0x0205BFF0
	push {r3, r4}
	mov r3, #0
	strb r3, [r0, #0x1c]
	add r4, r0, #0
	add r2, r3, #0
_0205BFFA:
	stmia r4!, {r2}
	add r1, r0, r3
	strb r2, [r1, #0x18]
	strb r2, [r1, #0x10]
	add r3, r3, #1
	strb r2, [r1, #0x14]
	cmp r3, #4
	blt _0205BFFA
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205BFF0

	thumb_func_start sub_0205C010
sub_0205C010: ; 0x0205C010
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_02014CC0
	mov r0, #6
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end sub_0205C010

	thumb_func_start sub_0205C028
sub_0205C028: ; 0x0205C028
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r0, r1]
	cmp r2, #0
	bne _0205C036
	mov r0, #0
	bx lr
_0205C036:
	mov r2, #0
	str r2, [r0, r1]
	sub r1, #8
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0205C028

	thumb_func_start sub_0205C040
sub_0205C040: ; 0x0205C040
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp, #8]
	ldr r2, _0205C124 ; =0x0000027B
	mov r0, #1
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	cmp r4, #0
	bne _0205C066
	sub r0, r7, #1
	bl sub_02033FB0
	b _0205C072
_0205C066:
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
_0205C072:
	add r4, r0, #0
	cmp r4, #0
	bne _0205C082
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0205C082:
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B498
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B498
	add r0, r4, #0
	bl sub_02025FD8
	add r4, r0, #0
	cmp r4, #1
	blt _0205C0C0
	cmp r4, #7
	bgt _0205C0C0
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #7
	bhs _0205C0C0
	lsl r1, r0, #2
	ldr r0, _0205C128 ; =0x020ED5E4
	ldr r1, [r0, r1]
	cmp r1, #0
	blt _0205C0C0
	ldr r0, [sp, #0x20]
	bl sub_02014F98
_0205C0C0:
	cmp r4, #7
	bhi _0205C0F8
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205C0D0: ; jump table
	.short _0205C0F8 - _0205C0D0 - 2 ; case 0
	.short _0205C0E0 - _0205C0D0 - 2 ; case 1
	.short _0205C0E4 - _0205C0D0 - 2 ; case 2
	.short _0205C0E8 - _0205C0D0 - 2 ; case 3
	.short _0205C0EC - _0205C0D0 - 2 ; case 4
	.short _0205C0F0 - _0205C0D0 - 2 ; case 5
	.short _0205C0F8 - _0205C0D0 - 2 ; case 6
	.short _0205C0F4 - _0205C0D0 - 2 ; case 7
_0205C0E0:
	mov r1, #0xd3
	b _0205C0FA
_0205C0E4:
	mov r1, #0xd4
	b _0205C0FA
_0205C0E8:
	mov r1, #0xd5
	b _0205C0FA
_0205C0EC:
	mov r1, #0xd6
	b _0205C0FA
_0205C0F0:
	mov r1, #0xd7
	b _0205C0FA
_0205C0F4:
	mov r1, #0xd8
	b _0205C0FA
_0205C0F8:
	mov r1, #0xd9
_0205C0FA:
	add r0, r6, #0
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	mov r3, #0
	str r4, [sp, #4]
	bl sub_0200B48C
	add r0, r7, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0205C124: .word 0x0000027B
_0205C128: .word 0x020ED5E4
	thumb_func_end sub_0205C040

	thumb_func_start sub_0205C12C
sub_0205C12C: ; 0x0205C12C
	push {r4, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0205BFF0
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #0x1c]
	add r0, r4, #0
	bl sub_020340A8
	add r0, sp, #0
	bl sub_020340C4
	bl sub_020340FC
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205C12C

	thumb_func_start sub_0205C154
sub_0205C154: ; 0x0205C154
	mov r1, #0
	str r1, [r0, #0x30]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205C154

	thumb_func_start sub_0205C160
sub_0205C160: ; 0x0205C160
	mov r2, #0
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	str r2, [r0, #0x2c]
	str r2, [r0, #0x30]
	mov r1, #0x5d
	str r2, [r0, #0x40]
	lsl r1, r1, #2
	strh r2, [r0, r1]
	add r1, #0xc
	str r2, [r0, r1]
	str r2, [r0, #0x44]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0205C160

	thumb_func_start sub_0205C17C
sub_0205C17C: ; 0x0205C17C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	bl sub_02071F04
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	bl sub_02071F04
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	bl sub_02071F04
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #8]
	bl sub_02025F30
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl sub_02025F8C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl sub_0205CA14
	add r3, r0, #0
	ldr r0, [r4, #0]
	lsl r3, r3, #0x18
	str r0, [sp]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsr r3, r3, #0x18
	str r0, [sp, #4]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02071D40
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205C17C

	thumb_func_start sub_0205C1F0
sub_0205C1F0: ; 0x0205C1F0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0205C1F0

	thumb_func_start sub_0205C214
sub_0205C214: ; 0x0205C214
	mov r1, #0x61
	add r2, r0, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r3, _0205C224 ; =sub_0203597C
	mov r0, #0x69
	ldr r2, _0205C228 ; =0x0000066C
	bx r3
	; .align 2, 0
_0205C224: .word sub_0203597C
_0205C228: .word 0x0000066C
	thumb_func_end sub_0205C214

	.rodata


	.global Unk_020ED520
Unk_020ED520: ; 0x020ED520
	.incbin "incbin/arm9_rodata.bin", 0x88E0, 0x88E8 - 0x88E0

	.global Unk_020ED528
Unk_020ED528: ; 0x020ED528
	.incbin "incbin/arm9_rodata.bin", 0x88E8, 0x88F0 - 0x88E8

	.global Unk_020ED530
Unk_020ED530: ; 0x020ED530
	.incbin "incbin/arm9_rodata.bin", 0x88F0, 0x88F8 - 0x88F0

	.global Unk_020ED538
Unk_020ED538: ; 0x020ED538
	.incbin "incbin/arm9_rodata.bin", 0x88F8, 0x8900 - 0x88F8

	.global Unk_020ED540
Unk_020ED540: ; 0x020ED540
	.incbin "incbin/arm9_rodata.bin", 0x8900, 0x8908 - 0x8900

	.global Unk_020ED548
Unk_020ED548: ; 0x020ED548
	.incbin "incbin/arm9_rodata.bin", 0x8908, 0x8910 - 0x8908

	.global Unk_020ED550
Unk_020ED550: ; 0x020ED550
	.incbin "incbin/arm9_rodata.bin", 0x8910, 0x8920 - 0x8910

	.global Unk_020ED560
Unk_020ED560: ; 0x020ED560
	.incbin "incbin/arm9_rodata.bin", 0x8920, 0x8930 - 0x8920

	.global Unk_020ED570
Unk_020ED570: ; 0x020ED570
	.incbin "incbin/arm9_rodata.bin", 0x8930, 0x8944 - 0x8930

	.global Unk_020ED584
Unk_020ED584: ; 0x020ED584
	.incbin "incbin/arm9_rodata.bin", 0x8944, 0x895C - 0x8944

	.global Unk_020ED59C
Unk_020ED59C: ; 0x020ED59C
	.incbin "incbin/arm9_rodata.bin", 0x895C, 0x8974 - 0x895C

	.global Unk_020ED5B4
Unk_020ED5B4: ; 0x020ED5B4
	.incbin "incbin/arm9_rodata.bin", 0x8974, 0x898C - 0x8974

	.global Unk_020ED5CC
Unk_020ED5CC: ; 0x020ED5CC
	.incbin "incbin/arm9_rodata.bin", 0x898C, 0x89A4 - 0x898C

	.global Unk_020ED5E4
Unk_020ED5E4: ; 0x020ED5E4
	.incbin "incbin/arm9_rodata.bin", 0x89A4, 0x89C0 - 0x89A4

	.global Unk_020ED600
Unk_020ED600: ; 0x020ED600
	.incbin "incbin/arm9_rodata.bin", 0x89C0, 0x89E0 - 0x89C0

	.global Unk_020ED620
Unk_020ED620: ; 0x020ED620
	.incbin "incbin/arm9_rodata.bin", 0x89E0, 0x8A00 - 0x89E0

	.global Unk_020ED640
Unk_020ED640: ; 0x020ED640
	.incbin "incbin/arm9_rodata.bin", 0x8A00, 0x8A20 - 0x8A00

	.global Unk_020ED660
Unk_020ED660: ; 0x020ED660
	.incbin "incbin/arm9_rodata.bin", 0x8A20, 0x8A40 - 0x8A20

	.global Unk_020ED680
Unk_020ED680: ; 0x020ED680
	.incbin "incbin/arm9_rodata.bin", 0x8A40, 0x8A70 - 0x8A40

	.global Unk_020ED6B0
Unk_020ED6B0: ; 0x020ED6B0
	.incbin "incbin/arm9_rodata.bin", 0x8A70, 0x8AA8 - 0x8A70

	.global Unk_020ED6E8
Unk_020ED6E8: ; 0x020ED6E8
	.incbin "incbin/arm9_rodata.bin", 0x8AA8, 0x8AE0 - 0x8AA8

	.global Unk_020ED720
Unk_020ED720: ; 0x020ED720
	.incbin "incbin/arm9_rodata.bin", 0x8AE0, 0x50



	.bss


	.global Unk_021C0850
Unk_021C0850: ; 0x021C0850
	.space 0x4

	.global Unk_021C0854
Unk_021C0854: ; 0x021C0854
	.space 0x4

	.global Unk_021C0858
Unk_021C0858: ; 0x021C0858
	.space 0x4

	.global Unk_021C085C
Unk_021C085C: ; 0x021C085C
	.space 0x40

