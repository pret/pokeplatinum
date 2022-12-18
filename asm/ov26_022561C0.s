	.include "macros/function.inc"
	.include "include/ov26_022561C0.inc"

	

	.text


	thumb_func_start ov26_022561C0
ov26_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov26_022561D4
	ldr r1, _022561D0 ; =ov26_022562F8
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov26_022561D4
_022561D0: .word ov26_022562F8
	thumb_func_end ov26_022561C0

	thumb_func_start ov26_022561D4
ov26_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x2c
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov26_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov26_022562BC
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
_02256218: .word ov26_022562BC
	thumb_func_end ov26_022561D4

	thumb_func_start ov26_0225621C
ov26_0225621C: ; 0x0225621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x14
	bl ov26_02256404
	cmp r0, #0
	beq _02256298
	mov r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	strb r1, [r5, #2]
	mov r0, #1
	strb r0, [r5, #3]
	strb r1, [r5, #7]
	add r0, r5, #0
	str r1, [r5, #0x20]
	add r0, #0x14
	bl sub_02013880
	ldr r0, [r5, #0x14]
	cmp r0, #0x18
	blo _02256256
	mov r1, #0x18
	bl sub_020E2178
	str r1, [r5, #0x14]
_02256256:
	ldr r0, [r5, #0x18]
	cmp r0, #0x3c
	blo _02256270
	ldr r0, [r5, #0x14]
	mov r1, #0x3c
	bl sub_020E2178
	str r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	mov r1, #0x3c
	bl sub_020E2178
	str r1, [r5, #0x18]
_02256270:
	ldr r0, [r5, #0x18]
	ldr r2, _0225629C ; =ov26_02256300
	strb r0, [r5, #6]
	ldr r0, [r5, #0x14]
	mov r1, #1
	strb r0, [r5, #5]
	mov r0, #8
	str r0, [sp]
	ldr r0, _022562A0 ; =0x02256718
	add r3, r5, #0
	bl ov25_02255ACC
	str r0, [r5, #0x10]
	cmp r0, #0
	bne _02256292
	mov r0, #0
	pop {r3, r4, r5, pc}
_02256292:
	str r4, [r5, #0x28]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256298:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225629C: .word ov26_02256300
_022562A0: .word 0x02256718
	thumb_func_end ov26_0225621C

	thumb_func_start ov26_022562A4
ov26_022562A4: ; 0x022562A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl ov26_0225649C
	ldr r0, [r4, #0x10]
	bl ov25_02255B34
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov26_022562A4

	thumb_func_start ov26_022562BC
ov26_022562BC: ; 0x022562BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562F2
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562F4 ; =0x0225671C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562F2
	add r0, r4, #0
	bl ov26_022562A4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x28]
	bl ov25_02254260
_022562F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022562F4: .word 0x0225671C
	thumb_func_end ov26_022562BC

	thumb_func_start ov26_022562F8
ov26_022562F8: ; 0x022562F8
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov26_022562F8

	thumb_func_start ov26_02256300
ov26_02256300: ; 0x02256300
	cmp r2, #0
	beq _02256310
	cmp r2, #1
	bne _02256318
	mov r0, #1
	str r0, [r3, #0x20]
	strb r0, [r3, #7]
	bx lr
_02256310:
	mov r0, #0
	str r0, [r3, #0x20]
	mov r0, #1
	strb r0, [r3, #7]
_02256318:
	bx lr
	; .align 2, 0
	thumb_func_end ov26_02256300

	thumb_func_start ov26_0225631C
ov26_0225631C: ; 0x0225631C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256324
	b _02256326
_02256324:
	mov r1, #2
_02256326:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov26_0225631C

	thumb_func_start ov26_02256330
ov26_02256330: ; 0x02256330
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256340
	cmp r0, #1
	beq _02256350
	b _0225636A
_02256340:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov26_022564A8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225636A
_02256350:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov26_022564CC
	cmp r0, #0
	beq _0225636A
	ldr r0, [r4, #0x28]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov26_0225631C
_0225636A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov26_02256330

	thumb_func_start ov26_02256370
ov26_02256370: ; 0x02256370
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256384
	mov r1, #2
	bl ov26_0225631C
	mov r0, #0
	pop {r4, pc}
_02256384:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _02256396
	mov r0, #0
	strb r0, [r4, #7]
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl ov26_022564A8
_02256396:
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ov26_022564CC
	cmp r0, #0
	beq _022563CA
	ldr r0, [r4, #0x18]
	strb r0, [r4, #6]
	ldr r0, [r4, #0x14]
	strb r0, [r4, #5]
	add r0, r4, #0
	add r0, #0x14
	bl sub_02013880
	ldrb r1, [r4, #6]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bne _022563C2
	ldrb r1, [r4, #5]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	beq _022563CA
_022563C2:
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ov26_022564A8
_022563CA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov26_02256370

	thumb_func_start ov26_022563D0
ov26_022563D0: ; 0x022563D0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563E0
	cmp r0, #1
	beq _022563F0
	b _022563FE
_022563E0:
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl ov26_022564A8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563FE
_022563F0:
	ldr r0, [r4, #0x24]
	bl ov26_022564D8
	cmp r0, #0
	beq _022563FE
	mov r0, #1
	pop {r4, pc}
_022563FE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov26_022563D0

	.rodata


	.global Unk_ov26_02256718
Unk_ov26_02256718: ; 0x02256718
	.incbin "incbin/overlay26_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov26_0225671C
Unk_ov26_0225671C: ; 0x0225671C
	.incbin "incbin/overlay26_rodata.bin", 0x4, 0xC

	.section .sinit, 4
	.word ov26_022561C0
