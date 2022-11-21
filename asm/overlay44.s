	.include "macros/function.inc"


	.text

	thumb_func_start ov44_022561C0
ov44_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =FUN_02254238
	ldr r0, _022561CC ; =ov44_022561D4
	ldr r1, _022561D0 ; =ov44_02256374
	bx r3
	; .align 2, 0
_022561C8: .word FUN_02254238
_022561CC: .word ov44_022561D4
_022561D0: .word ov44_02256374
	thumb_func_end ov44_022561C0

	thumb_func_start ov44_022561D4
ov44_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x68
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov44_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov44_02256338
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	cmp r0, #0
	beq _0225620C
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620C:
	add r0, r4, #0
	bl sub_020181C4
_02256212:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256218: .word ov44_02256338
	thumb_func_end ov44_022561D4

	thumb_func_start ov44_0225621C
ov44_0225621C: ; 0x0225621C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	add r0, r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	bl FUN_02254544
	bl sub_0207A268
	mov r1, #0
	str r0, [sp, #0x14]
	str r1, [sp, #0x10]
	bl sub_0207A0F8
	ldr r1, [sp, #4]
	mov r7, #0
	add r1, #0x34
	strb r0, [r1]
	ldr r0, [sp, #4]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	ble _0225629E
	ldr r6, [sp, #4]
	add r5, r6, #0
_02256250:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _02256292
	add r0, r4, #0
	bl sub_02079D40
	str r0, [r6, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x1c]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x28]
	ldr r0, [sp, #0x10]
	str r4, [r6, #0x48]
	add r0, r0, #1
	add r6, r6, #4
	add r5, r5, #2
	str r0, [sp, #0x10]
_02256292:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r0, #0x34
	ldrb r0, [r0]
	cmp r7, r0
	blt _02256250
_0225629E:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, #0x34
	strb r0, [r1]
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, #0x36
	strb r1, [r0]
	ldr r0, [sp, #4]
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bls _022562BA
	mov r1, #1
_022562BA:
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, #0x37
	strb r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, #0x38
	add r1, r1, #4
	bl ov44_022565BC
	cmp r0, #0
	beq _02256304
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _0225630C ; =0x02256CB4
	ldr r2, _02256310 ; =ov44_0225632C
	ldr r3, [sp, #4]
	mov r1, #3
	bl FUN_02255ACC
	ldr r1, [sp, #4]
	str r0, [r1, #0x40]
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, #0x46
	strh r1, [r0]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x3c]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256304:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225630C: .word 0x02256CB4
_02256310: .word ov44_0225632C
	thumb_func_end ov44_0225621C

	thumb_func_start ov44_02256314
ov44_02256314: ; 0x02256314
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl FUN_02255B34
	ldr r0, [r4, #0x38]
	bl ov44_022565F8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov44_02256314

	thumb_func_start ov44_0225632C
ov44_0225632C: ; 0x0225632C
	add r2, r3, #0
	add r2, #0x44
	strh r0, [r2]
	add r3, #0x46
	strh r1, [r3]
	bx lr
	thumb_func_end ov44_0225632C

	thumb_func_start ov44_02256338
ov44_02256338: ; 0x02256338
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _0225636E
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	bl FUN_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02256370 ; =0x02256CC0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225636E
	add r0, r4, #0
	bl ov44_02256314
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x3c]
	bl FUN_02254260
_0225636E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256370: .word 0x02256CC0
	thumb_func_end ov44_02256338

	thumb_func_start ov44_02256374
ov44_02256374: ; 0x02256374
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov44_02256374

	thumb_func_start ov44_0225637C
ov44_0225637C: ; 0x0225637C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256384
	b _02256386
_02256384:
	mov r1, #2
_02256386:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov44_0225637C

	thumb_func_start ov44_02256390
ov44_02256390: ; 0x02256390
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563A0
	cmp r0, #1
	beq _022563B0
	b _022563CA
_022563A0:
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl ov44_02256744
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563CA
_022563B0:
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl ov44_02256768
	cmp r0, #0
	beq _022563CA
	ldr r0, [r4, #0x3c]
	bl FUN_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov44_0225637C
_022563CA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov44_02256390

	thumb_func_start ov44_022563D0
ov44_022563D0: ; 0x022563D0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022563E4
	mov r1, #2
	bl ov44_0225637C
	mov r0, #0
	pop {r4, pc}
_022563E4:
	ldrb r1, [r4, #1]
	cmp r1, #3
	bhi _022564E8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022563F6: ; jump table
	.short _022563FE - _022563F6 - 2 ; case 0
	.short _0225646C - _022563F6 - 2 ; case 1
	.short _0225647C - _022563F6 - 2 ; case 2
	.short _022564D8 - _022563F6 - 2 ; case 3
_022563FE:
	add r1, r4, #0
	add r1, #0x46
	ldrh r1, [r1]
	cmp r1, #1
	bne _022564E8
	add r1, r4, #0
	add r1, #0x44
	ldrh r1, [r1]
	cmp r1, #0
	beq _02256448
	cmp r1, #1
	beq _0225641C
	cmp r1, #2
	beq _02256432
	b _02256464
_0225641C:
	bl ov44_022564F0
	cmp r0, #0
	beq _02256464
	ldr r0, [r4, #0x38]
	mov r1, #4
	bl ov44_02256744
	mov r0, #1
	strb r0, [r4, #1]
	b _02256464
_02256432:
	bl ov44_0225653C
	cmp r0, #0
	beq _02256464
	ldr r0, [r4, #0x38]
	mov r1, #5
	bl ov44_02256744
	mov r0, #1
	strb r0, [r4, #1]
	b _02256464
_02256448:
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #1
	bls _0225645E
	ldr r0, [r4, #0x38]
	mov r1, #2
	bl ov44_02256744
	mov r0, #2
	strb r0, [r4, #1]
	b _02256464
_0225645E:
	ldr r0, _022564EC ; =0x0000066E
	bl FUN_02254424
_02256464:
	mov r0, #0
	add r4, #0x46
	strh r0, [r4]
	b _022564E8
_0225646C:
	ldr r0, [r4, #0x38]
	bl ov44_02256774
	cmp r0, #0
	beq _022564E8
	mov r0, #0
	strb r0, [r4, #1]
	b _022564E8
_0225647C:
	add r0, #0x46
	ldrh r0, [r0]
	cmp r0, #2
	bne _02256492
	ldr r0, [r4, #0x38]
	mov r1, #3
	bl ov44_02256744
	mov r0, #0
	strb r0, [r4, #1]
	b _022564E8
_02256492:
	cmp r0, #3
	bne _022564E8
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x48]
	str r0, [r4, #0x60]
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x48]
	str r0, [r4, #0x64]
	add r0, r4, #0
	add r0, #0x60
	bl FUN_021E7790
	add r1, r4, #0
	add r1, #0x35
	strb r0, [r1]
	ldr r0, [r4, #0x38]
	mov r1, #3
	bl ov44_02256744
	ldr r0, [r4, #0x38]
	mov r1, #6
	bl ov44_02256744
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022564E8
_022564D8:
	ldr r0, [r4, #0x38]
	mov r1, #6
	bl ov44_02256768
	cmp r0, #0
	beq _022564E8
	mov r0, #0
	strb r0, [r4, #1]
_022564E8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022564EC: .word 0x0000066E
	thumb_func_end ov44_022563D0

	thumb_func_start ov44_022564F0
ov44_022564F0: ; 0x022564F0
	push {r3, r4}
	add r1, r0, #0
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #2
	bls _02256534
	add r2, r0, #0
	mov r1, #0
	add r2, #0x36
_02256502:
	ldrb r3, [r2]
	add r3, r3, #1
	strb r3, [r2]
	add r3, r0, #0
	add r3, #0x36
	ldrb r4, [r3]
	add r3, r0, #0
	add r3, #0x34
	ldrb r3, [r3]
	cmp r4, r3
	blo _0225651E
	add r3, r0, #0
	add r3, #0x36
	strb r1, [r3]
_0225651E:
	add r3, r0, #0
	add r3, #0x36
	ldrb r4, [r3]
	add r3, r0, #0
	add r3, #0x37
	ldrb r3, [r3]
	cmp r4, r3
	beq _02256502
	mov r0, #1
	pop {r3, r4}
	bx lr
_02256534:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov44_022564F0

	thumb_func_start ov44_0225653C
ov44_0225653C: ; 0x0225653C
	push {r3, r4}
	add r1, r0, #0
	add r1, #0x34
	ldrb r1, [r1]
	cmp r1, #2
	bls _02256580
	add r2, r0, #0
	mov r1, #0
	add r2, #0x37
_0225654E:
	ldrb r3, [r2]
	add r3, r3, #1
	strb r3, [r2]
	add r3, r0, #0
	add r3, #0x37
	ldrb r4, [r3]
	add r3, r0, #0
	add r3, #0x34
	ldrb r3, [r3]
	cmp r4, r3
	blo _0225656A
	add r3, r0, #0
	add r3, #0x37
	strb r1, [r3]
_0225656A:
	add r3, r0, #0
	add r3, #0x37
	ldrb r4, [r3]
	add r3, r0, #0
	add r3, #0x36
	ldrb r3, [r3]
	cmp r4, r3
	beq _0225654E
	mov r0, #1
	pop {r3, r4}
	bx lr
_02256580:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov44_0225653C

	thumb_func_start ov44_02256588
ov44_02256588: ; 0x02256588
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256598
	cmp r0, #1
	beq _022565A8
	b _022565B6
_02256598:
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov44_02256744
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022565B6
_022565A8:
	ldr r0, [r4, #0x38]
	bl ov44_02256774
	cmp r0, #0
	beq _022565B6
	mov r0, #1
	pop {r4, pc}
_022565B6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov44_02256588

	thumb_func_start ov44_022565BC
ov44_022565BC: ; 0x022565BC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x88
	bl sub_02018144
	add r4, r0, #0
	beq _022565F2
	add r0, #8
	mov r1, #4
	bl FUN_02255090
	str r5, [r4, #0]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	bl ov44_0225660C
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_022565F2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov44_022565BC

	thumb_func_start ov44_022565F8
ov44_022565F8: ; 0x022565F8
	push {r4, lr}
	add r4, r0, #0
	beq _02256608
	bl ov44_02256718
	add r0, r4, #0
	bl sub_020181C4
_02256608:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov44_022565F8

	thumb_func_start ov44_0225660C
ov44_0225660C: ; 0x0225660C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #1
	str r1, [sp, #0xc]
	bl FUN_02255360
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x4a
	bl sub_02006EC0
	mov r1, #0x14
	bl sub_020E2178
	ldr r1, [sp, #0xc]
	str r0, [r5, #0x64]
	add r2, r1, #0
	add r2, #0x30
	ldrb r2, [r2]
	mov r3, #0
	bl FUN_022553A0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x3c
	mov r1, #0xc
	mov r2, #0x48
	mov r3, #0x49
	bl FUN_02255958
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x50
	mov r1, #0xc
	mov r2, #5
	mov r3, #6
	bl FUN_02255958
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x3c
	ldr r7, _02256714 ; =0x02256DBC
	mov r4, #0
	add r6, r5, #0
	str r0, [sp, #0x10]
_02256676:
	ldr r0, [r5, #0x20]
	ldr r2, [sp, #0x10]
	add r1, r7, #0
	bl FUN_02255810
	str r0, [r6, #0x24]
	add r4, r4, #1
	add r7, #0x10
	add r6, r6, #4
	cmp r4, #4
	blt _02256676
	cmp r4, #6
	bge _022566B8
	ldr r1, _02256714 ; =0x02256DBC
	lsl r0, r4, #4
	add r7, r1, r0
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x50
	str r0, [sp, #0x14]
_022566A2:
	ldr r0, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl FUN_02255810
	str r0, [r6, #0x24]
	add r4, r4, #1
	add r7, #0x10
	add r6, r6, #4
	cmp r4, #6
	blt _022566A2
_022566B8:
	ldr r0, [sp, #0xc]
	add r0, #0x32
	ldrb r2, [r0]
	ldr r0, [sp, #0xc]
	lsl r1, r2, #1
	add r3, r0, r1
	ldrh r0, [r3, #0x24]
	mov r1, #4
	str r0, [sp]
	ldrh r3, [r3, #0x18]
	add r0, r5, #0
	bl ov44_02256954
	ldr r0, [sp, #0xc]
	add r0, #0x33
	ldrb r2, [r0]
	ldr r0, [sp, #0xc]
	lsl r1, r2, #1
	add r3, r0, r1
	ldrh r0, [r3, #0x24]
	mov r1, #5
	str r0, [sp]
	ldrh r3, [r3, #0x18]
	add r0, r5, #0
	bl ov44_02256954
	ldr r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
	ldrb r0, [r0]
	cmp r0, #1
	bhi _02256710
	ldr r0, [r5, #0x38]
	mov r1, #1
	bl FUN_02255914
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl FUN_02255914
	ldr r0, [r5, #0x24]
	mov r1, #0xa
	bl FUN_022558C4
_02256710:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256714: .word 0x02256DBC
	thumb_func_end ov44_0225660C

	thumb_func_start ov44_02256718
ov44_02256718: ; 0x02256718
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x50
	bl FUN_022559B0
	add r0, r6, #0
	add r0, #0x3c
	bl FUN_022559B0
	mov r4, #0
	add r5, r6, #0
_0225672E:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _0225673A
	ldr r0, [r6, #0x20]
	bl FUN_022558B0
_0225673A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0225672E
	pop {r4, r5, r6, pc}
	thumb_func_end ov44_02256718

	thumb_func_start ov44_02256744
ov44_02256744: ; 0x02256744
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256764 ; =0x02256D5C
	ldr r3, [r2, #0]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256764: .word 0x02256D5C
	thumb_func_end ov44_02256744

	thumb_func_start ov44_02256768
ov44_02256768: ; 0x02256768
	ldr r3, _02256770 ; =FUN_02255130
	add r0, #8
	bx r3
	nop
_02256770: .word FUN_02255130
	thumb_func_end ov44_02256768

	thumb_func_start ov44_02256774
ov44_02256774: ; 0x02256774
	ldr r3, _0225677C ; =FUN_02255154
	add r0, #8
	bx r3
	nop
_0225677C: .word FUN_02255154
	thumb_func_end ov44_02256774

	thumb_func_start ov44_02256780
ov44_02256780: ; 0x02256780
	push {r4, lr}
	add r4, r0, #0
	bl FUN_0225523C
	add r0, #8
	add r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov44_02256780

	thumb_func_start ov44_02256794
ov44_02256794: ; 0x02256794
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl FUN_0225523C
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_02255240
	ldr r0, [r5, #4]
	ldr r2, _0225681C ; =0x02256CE4
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x47
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x46
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256820 ; =0x04001000
	ldr r0, _02256824 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov44_02256780
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_0225681C: .word 0x02256CE4
_02256820: .word 0x04001000
_02256824: .word 0xFFFFE0FF
	thumb_func_end ov44_02256794

	thumb_func_start ov44_02256828
ov44_02256828: ; 0x02256828
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256844
	cmp r0, #1
	beq _02256850
	pop {r3, r4, r5, pc}
_02256844:
	mov r0, #1
	str r0, [r4, #0x68]
	add r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256850:
	add r0, r4, #0
	mov r1, #6
	bl ov44_02256768
	cmp r0, #0
	beq _0225686A
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov44_02256780
_0225686A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov44_02256828

	thumb_func_start ov44_0225686C
ov44_0225686C: ; 0x0225686C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	ldr r0, _02256894 ; =0x00000669
	bl FUN_02254424
	ldr r0, [r4, #0x24]
	mov r1, #0xa
	bl FUN_022558C4
	add r0, r5, #0
	bl ov44_02256780
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256894: .word 0x00000669
	thumb_func_end ov44_0225686C

	thumb_func_start ov44_02256898
ov44_02256898: ; 0x02256898
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	ldr r0, [r4, #0x24]
	mov r1, #9
	bl FUN_022558C4
	add r0, r5, #0
	bl ov44_02256780
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov44_02256898

	thumb_func_start ov44_022568BC
ov44_022568BC: ; 0x022568BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	add r0, r1, #0
	bl FUN_0225523C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl FUN_02255240
	add r1, r0, #0
	add r1, #0x32
	ldrb r7, [r1]
	add r4, r0, #0
	add r6, r0, #0
	lsl r5, r7, #1
	add r4, #0x24
	add r6, #0x18
	ldrh r0, [r6, r5]
	ldrh r1, [r4, r5]
	bl FUN_02254444
	ldrh r0, [r4, r5]
	mov r1, #4
	add r2, r7, #0
	str r0, [sp]
	ldrh r3, [r6, r5]
	ldr r0, [sp, #8]
	bl ov44_02256954
	ldr r0, [sp, #8]
	bl ov44_022569AC
	ldr r0, [sp, #4]
	bl ov44_02256780
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov44_022568BC

	thumb_func_start ov44_02256908
ov44_02256908: ; 0x02256908
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	add r0, r1, #0
	bl FUN_0225523C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl FUN_02255240
	add r1, r0, #0
	add r1, #0x33
	ldrb r7, [r1]
	add r4, r0, #0
	add r6, r0, #0
	lsl r5, r7, #1
	add r4, #0x24
	add r6, #0x18
	ldrh r0, [r6, r5]
	ldrh r1, [r4, r5]
	bl FUN_02254444
	ldrh r0, [r4, r5]
	mov r1, #5
	add r2, r7, #0
	str r0, [sp]
	ldrh r3, [r6, r5]
	ldr r0, [sp, #8]
	bl ov44_02256954
	ldr r0, [sp, #8]
	bl ov44_022569AC
	ldr r0, [sp, #4]
	bl ov44_02256780
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov44_02256908

	thumb_func_start ov44_02256954
ov44_02256954: ; 0x02256954
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [r0, #0x24]
	cmp r1, #5
	bne _0225696A
	mov r1, #4
	b _02256980
_0225696A:
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	add r0, r7, #0
	mov r2, #0x1c
	bl sub_020759CC
	cmp r0, #0
	beq _0225697E
	mov r1, #4
	b _02256980
_0225697E:
	mov r1, #5
_02256980:
	add r0, r4, #0
	bl FUN_022558C4
	ldr r2, [r5, #0x64]
	lsl r1, r6, #4
	add r0, r4, #0
	add r1, r2, r1
	bl FUN_02255940
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	add r0, r7, #0
	mov r2, #0
	bl sub_02079EDC
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #1
	bl FUN_02255938
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov44_02256954

	thumb_func_start ov44_022569AC
ov44_022569AC: ; 0x022569AC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #3
	mov r2, #0x16
	ldr r0, [r4, #0x2c]
	lsl r1, r1, #0x10
	lsl r2, r2, #0xe
	bl FUN_02255900
	mov r1, #0xb
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x30]
	lsr r2, r1, #1
	bl FUN_02255900
	ldr r0, [r4, #0x2c]
	mov r1, #5
	bl FUN_022558C4
	ldr r0, [r4, #0x30]
	mov r1, #6
	bl FUN_022558C4
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl FUN_022558C4
	pop {r4, pc}
	thumb_func_end ov44_022569AC

	thumb_func_start ov44_022569E4
ov44_022569E4: ; 0x022569E4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r6, r0, #0
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256A10
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _02256A10
	add r0, r5, #0
	bl ov44_02256780
	pop {r4, r5, r6, pc}
_02256A10:
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256A20
	cmp r0, #1
	beq _02256A3A
	pop {r4, r5, r6, pc}
_02256A20:
	mov r0, #0
	str r0, [r4, #0x68]
	add r0, r4, #0
	bl ov44_022569AC
	add r0, r4, #0
	add r1, r6, #0
	bl ov44_02256A50
	add r0, r5, #0
	bl FUN_0225524C
	pop {r4, r5, r6, pc}
_02256A3A:
	add r0, r4, #0
	add r1, r6, #0
	bl ov44_02256AC8
	cmp r0, #0
	beq _02256A4C
	add r0, r5, #0
	bl ov44_02256780
_02256A4C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov44_022569E4

	thumb_func_start ov44_02256A50
ov44_02256A50: ; 0x02256A50
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r1, #0
	str r1, [r4, #0x70]
	str r1, [r4, #0x74]
	str r1, [r4, #0x78]
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #3
	bhi _02256AAE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02256A78: ; jump table
	.short _02256AA2 - _02256A78 - 2 ; case 0
	.short _02256A94 - _02256A78 - 2 ; case 1
	.short _02256A86 - _02256A78 - 2 ; case 2
	.short _02256A80 - _02256A78 - 2 ; case 3
_02256A80:
	ldr r0, _02256AB8 ; =0x02256D2C
	str r0, [r4, #0x6c]
	b _02256AAE
_02256A86:
	ldr r0, _02256ABC ; =0x02256CCC
	mov r1, #1
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x28]
	bl FUN_022558C4
	b _02256AAE
_02256A94:
	ldr r0, _02256AC0 ; =0x02256D00
	mov r1, #2
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x28]
	bl FUN_022558C4
	b _02256AAE
_02256AA2:
	ldr r0, _02256AC4 ; =0x02256E1C
	mov r1, #3
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x28]
	bl FUN_022558C4
_02256AAE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov44_02256AC8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256AB8: .word 0x02256D2C
_02256ABC: .word 0x02256CCC
_02256AC0: .word 0x02256D00
_02256AC4: .word 0x02256E1C
	thumb_func_end ov44_02256A50

	thumb_func_start ov44_02256AC8
ov44_02256AC8: ; 0x02256AC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r4, #0
	add r6, r4, #0
	mov r7, #0x16
	add r5, #0x84
	add r6, #0x78
	lsl r7, r7, #0xe
_02256AD8:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _02256AEC
	cmp r0, #1
	bne _02256AE4
	b _02256C34
_02256AE4:
	cmp r0, #2
	bne _02256AEA
	b _02256C90
_02256AEA:
	b _02256CAE
_02256AEC:
	beq _02256AF0
	b _02256CAE
_02256AF0:
	add r6, r4, #0
	add r5, r4, #0
	add r6, #0x7c
	mov r7, #1
	add r5, #0x74
_02256AFA:
	ldr r0, [r5, #0]
	ldr r1, [r4, #0x74]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0x6c]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r0, r0, #7
	cmp r0, #6
	bls _02256B10
	b _02256C2A
_02256B10:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02256B1C: ; jump table
	.short _02256C06 - _02256B1C - 2 ; case 0
	.short _02256BF4 - _02256B1C - 2 ; case 1
	.short _02256BE0 - _02256B1C - 2 ; case 2
	.short _02256BC6 - _02256B1C - 2 ; case 3
	.short _02256B76 - _02256B1C - 2 ; case 4
	.short _02256B2E - _02256B1C - 2 ; case 5
	.short _02256B2A - _02256B1C - 2 ; case 6
_02256B2A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256B2E:
	ldr r0, [r5, #0]
	ldr r1, [r4, #0x74]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0x6c]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0, #0]
	ldr r0, [r5, #0]
	ldr r1, [r4, #0x74]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0x6c]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	str r0, [r4, #0x7c]
	ldr r0, [r6, #0]
	lsl r0, r0, #0xc
	str r0, [r6, #0]
	ldr r1, [r4, #0x78]
	ldr r0, [r4, #0x7c]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0x84
	ldr r0, [r6, #0]
	ldr r1, [r1, #0]
	bl sub_020E2178
	str r0, [r6, #0]
	str r7, [r4, #0x70]
	b _02256C2A
_02256B76:
	ldr r0, [r5, #0]
	ldr r1, [r4, #0x74]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0x6c]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0, #0]
	ldr r0, [r5, #0]
	ldr r1, [r4, #0x74]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0x6c]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	str r0, [r4, #0x7c]
	ldr r0, [r6, #0]
	mvn r1, r1
	lsl r0, r0, #0xc
	mul r1, r0
	str r1, [r6, #0]
	ldr r1, [r4, #0x78]
	ldr r0, [r4, #0x7c]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0x84
	ldr r0, [r6, #0]
	ldr r1, [r1, #0]
	bl sub_020E2178
	str r0, [r6, #0]
	mov r0, #1
	str r0, [r4, #0x70]
	b _02256C2A
_02256BC6:
	ldr r0, [r5, #0]
	ldr r1, [r4, #0x74]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0x6c]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0, #0]
	mov r0, #2
	str r0, [r4, #0x70]
	b _02256C2A
_02256BE0:
	ldr r0, [r5, #0]
	ldr r1, [r4, #0x74]
	add r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0x6c]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_02254424
	b _02256C2A
_02256BF4:
	ldr r0, [r4, #0x2c]
	mov r1, #6
	bl FUN_022558C4
	ldr r0, [r4, #0x30]
	mov r1, #5
	bl FUN_022558C4
	b _02256C2A
_02256C06:
	ldr r1, [r5, #0]
	ldr r0, [r4, #0x74]
	add r1, r1, #1
	str r1, [r5, #0]
	ldr r2, [r4, #0x6c]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r2, [r4, #0x74]
	add r1, r1, #1
	str r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r1, [r4, #0x6c]
	lsl r2, r2, #2
	ldr r0, [r0, #0x24]
	ldr r1, [r1, r2]
	bl FUN_022558C4
_02256C2A:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	bne _02256C32
	b _02256AFA
_02256C32:
	b _02256CAE
_02256C34:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256C80
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256C58
	ldr r1, [r6, #0]
	ldr r0, [r4, #0x7c]
	add r0, r1, r0
	str r0, [r6, #0]
	b _02256C60
_02256C58:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #0x78]
_02256C60:
	mov r1, #3
	ldr r2, [r4, #0x78]
	lsl r1, r1, #0x10
	add r1, r2, r1
	ldr r0, [r4, #0x2c]
	add r2, r7, #0
	bl FUN_02255900
	mov r1, #0xb
	ldr r2, [r4, #0x78]
	lsl r1, r1, #0x10
	sub r1, r1, r2
	ldr r0, [r4, #0x30]
	add r2, r7, #0
	bl FUN_02255900
_02256C80:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02256CAE
	mov r0, #0
	str r0, [r4, #0x70]
	b _02256AD8
_02256C90:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256CA8
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r4, #0x84
	sub r0, r0, #1
	str r0, [r4, #0]
	b _02256CAE
_02256CA8:
	mov r0, #0
	str r0, [r4, #0x70]
	b _02256AD8
_02256CAE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov44_02256AC8
	; 0x02256CB4

	.incbin "data/overlay44.bin"