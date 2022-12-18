	.include "macros/function.inc"
	.include "include/ov44_022561C0.inc"

	

	.text


	thumb_func_start ov44_022561C0
ov44_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov44_022561D4
	ldr r1, _022561D0 ; =ov44_02256374
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
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
	bl ov25_02254544
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
	bl ov25_02255ACC
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
	bl ov25_02255B34
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
	bl ov25_02254518
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
	bl ov25_02254260
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
	bl ov25_0225424C
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
	bl ov25_02254424
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
	bl ov5_021E7790
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

	.rodata


	.global Unk_ov44_02256CB4
Unk_ov44_02256CB4: ; 0x02256CB4
	.incbin "incbin/overlay44_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov44_02256CC0
Unk_ov44_02256CC0: ; 0x02256CC0
	.incbin "incbin/overlay44_rodata.bin", 0xC, 0xC

	.section .sinit, 4
	.word ov44_022561C0
