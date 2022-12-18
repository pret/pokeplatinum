	.include "macros/function.inc"
	.include "include/ov48_022561C0.inc"

	

	.text


	thumb_func_start ov48_022561C0
ov48_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov48_022561D4
	ldr r1, _022561D0 ; =ov48_022562F0
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov48_022561D4
_022561D0: .word ov48_022562F0
	thumb_func_end ov48_022561C0

	thumb_func_start ov48_022561D4
ov48_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0xb0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov48_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov48_022562BC
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
_02256218: .word ov48_022562BC
	thumb_func_end ov48_022561D4

	thumb_func_start ov48_0225621C
ov48_0225621C: ; 0x0225621C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r1, r5, #0
	add r1, #0xac
	str r7, [r1, #0]
	str r2, [sp]
	bl ov48_02256408
	str r0, [r5, #0xc]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl ov25_0225453C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A72C
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #0
	beq _02256260
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #8]
	str r0, [r5, #4]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	b _02256266
_02256260:
	ldr r0, [r6, #8]
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
_02256266:
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	str r0, [r5, #4]
	ldr r1, [r5, #8]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	str r0, [r5, #8]
	add r0, r5, #0
	add r1, r7, #0
	bl ov48_022564E0
	add r0, r5, #0
	ldr r2, [sp]
	add r0, #0xa8
	add r1, r5, #4
	bl ov48_0225650C
	cmp r0, #0
	beq _022562A4
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022562A4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov48_0225621C

	thumb_func_start ov48_022562A8
ov48_022562A8: ; 0x022562A8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl ov48_0225654C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov48_022562A8

	thumb_func_start ov48_022562BC
ov48_022562BC: ; 0x022562BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhs _022562EA
	lsl r2, r1, #2
	ldr r1, _022562EC ; =0x02256A2C
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562EA
	add r0, r4, #0
	bl ov48_022562A8
	add r0, r5, #0
	bl sub_0200DA58
	add r4, #0xac
	ldr r0, [r4, #0]
	bl ov25_02254260
_022562EA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022562EC: .word 0x02256A2C
	thumb_func_end ov48_022562BC

	thumb_func_start ov48_022562F0
ov48_022562F0: ; 0x022562F0
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov48_022562F0

	thumb_func_start ov48_022562F8
ov48_022562F8: ; 0x022562F8
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256300
	b _02256302
_02256300:
	mov r1, #2
_02256302:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov48_022562F8

	thumb_func_start ov48_0225630C
ov48_0225630C: ; 0x0225630C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225631C
	cmp r0, #1
	beq _02256330
	b _02256352
_0225631C:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov48_02256558
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256352
_02256330:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov48_0225657C
	cmp r0, #0
	beq _02256352
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov48_022562F8
_02256352:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov48_0225630C

	thumb_func_start ov48_02256358
ov48_02256358: ; 0x02256358
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256370
	mov r1, #2
	bl ov48_022562F8
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02256370:
	bl ov48_02256478
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #2
	bl ov48_0225657C
	cmp r0, #0
	beq _022563C8
	add r0, sp, #4
	add r1, sp, #0
	bl ov25_022544BC
	cmp r0, #0
	beq _022563C8
	ldr r0, [sp, #4]
	sub r0, #0x10
	cmp r0, #0xc0
	bhs _022563A2
	mov r1, #1
	b _022563A4
_022563A2:
	mov r1, #0
_022563A4:
	ldr r0, [sp]
	sub r0, #0x10
	cmp r0, #0xc0
	bhs _022563B0
	mov r0, #1
	b _022563B2
_022563B0:
	mov r0, #0
_022563B2:
	tst r0, r1
	beq _022563C8
	add r0, r4, #0
	bl ov48_02256408
	str r0, [r4, #0xc]
	add r4, #0xa8
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov48_02256558
_022563C8:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov48_02256358

	thumb_func_start ov48_022563D0
ov48_022563D0: ; 0x022563D0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563E0
	cmp r0, #1
	beq _022563F4
	b _02256404
_022563E0:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov48_02256558
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256404
_022563F4:
	add r4, #0xa8
	ldr r0, [r4, #0]
	bl ov48_02256588
	cmp r0, #0
	beq _02256404
	mov r0, #1
	pop {r4, pc}
_02256404:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov48_022563D0

	thumb_func_start ov48_02256408
ov48_02256408: ; 0x02256408
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl ov25_02254544
	bl sub_02027854
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_0225641E:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027D84
	cmp r0, #1
	bne _0225646A
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027D04
	cmp r0, #5
	bne _0225646A
	ldr r1, _02256474 ; =0x02256A38
	lsl r0, r4, #1
	ldr r2, _02256474 ; =0x02256A38
	add r1, r1, r0
	ldrb r0, [r2, r0]
	strb r0, [r5, #0x10]
	ldrb r0, [r1, #1]
	strb r0, [r5, #0x11]
	b _0225644C
_02256448:
	add r1, r1, #2
	add r4, r4, #1
_0225644C:
	add r0, r4, #1
	cmp r0, #0x76
	bhs _02256462
	ldrb r2, [r5, #0x10]
	ldrb r0, [r1, #2]
	cmp r2, r0
	bne _02256462
	ldrb r2, [r5, #0x11]
	ldrb r0, [r1, #3]
	cmp r2, r0
	beq _02256448
_02256462:
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, #0x40
	bge _02256470
_0225646A:
	add r4, r4, #1
	cmp r4, #0x76
	blo _0225641E
_02256470:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256474: .word 0x02256A38
	thumb_func_end ov48_02256408

	thumb_func_start ov48_02256478
ov48_02256478: ; 0x02256478
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	mov r6, #0
	bl ov25_02254534
	cmp r0, #0
	beq _022564DC
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	bl ov25_0225453C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A72C
	add r7, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #0
	beq _022564B6
	ldr r1, [r4, #0x1c]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	b _022564BA
_022564B6:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
_022564BA:
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	asr r0, r2, #5
	asr r2, r1, #4
	lsr r2, r2, #0x1b
	add r2, r1, r2
	asr r1, r2, #5
	ldr r2, [r5, #4]
	cmp r0, r2
	bne _022564D6
	ldr r2, [r5, #8]
	cmp r1, r2
	beq _022564DC
_022564D6:
	str r0, [r5, #4]
	str r1, [r5, #8]
	mov r6, #1
_022564DC:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov48_02256478

	thumb_func_start ov48_022564E0
ov48_022564E0: ; 0x022564E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov25_02254544
	bl sub_020507E4
	add r6, r0, #0
	mov r4, #0
_022564F2:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0206B1F0
	add r1, r5, #0
	add r1, #0x98
	add r4, r4, #1
	add r5, r5, #4
	str r0, [r1, #0]
	cmp r4, #4
	blt _022564F2
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov48_022564E0

	.rodata


	.global Unk_ov48_02256A2C
Unk_ov48_02256A2C: ; 0x02256A2C
	.incbin "incbin/overlay48_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov48_02256A38
Unk_ov48_02256A38: ; 0x02256A38
	.incbin "incbin/overlay48_rodata.bin", 0xC, 0xEC

	.section .sinit, 4
	.word ov48_022561C0
