	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov49_022561C0
ov49_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov49_022561D4
	ldr r1, _022561D0 ; =ov49_022562A0
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov49_022561D4
_022561D0: .word ov49_022562A0
	thumb_func_end ov49_022561C0

	thumb_func_start ov49_022561D4
ov49_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x14
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov49_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov49_0225626C
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
_02256218: .word ov49_0225626C
	thumb_func_end ov49_022561D4

	thumb_func_start ov49_0225621C
ov49_0225621C: ; 0x0225621C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl ov25_02254540
	str r0, [r5, #0x10]
	bl sub_02056888
	str r0, [r5, #4]
	strb r0, [r5, #3]
	add r0, r5, #0
	add r0, #8
	add r1, r5, #4
	add r2, r6, #0
	bl ov49_022563D4
	cmp r0, #0
	beq _02256252
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r4, [r5, #0xc]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256252:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov49_0225621C

	thumb_func_start ov49_02256258
ov49_02256258: ; 0x02256258
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ov49_02256480
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov49_02256258

	thumb_func_start ov49_0225626C
ov49_0225626C: ; 0x0225626C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhs _02256298
	lsl r2, r1, #2
	ldr r1, _0225629C ; =0x022565D4
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256298
	add r0, r4, #0
	bl ov49_02256258
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0xc]
	bl ov25_02254260
_02256298:
	pop {r3, r4, r5, pc}
	nop
_0225629C: .word 0x022565D4
	thumb_func_end ov49_0225626C

	thumb_func_start ov49_022562A0
ov49_022562A0: ; 0x022562A0
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov49_022562A0

	thumb_func_start ov49_022562A8
ov49_022562A8: ; 0x022562A8
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562B0
	b _022562B2
_022562B0:
	mov r1, #2
_022562B2:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov49_022562A8

	thumb_func_start ov49_022562BC
ov49_022562BC: ; 0x022562BC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562CC
	cmp r0, #1
	beq _022562DC
	b _022562F6
_022562CC:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov49_02256494
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022562F6
_022562DC:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov49_022564B8
	cmp r0, #0
	beq _022562F6
	ldr r0, [r4, #0xc]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov49_022562A8
_022562F6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov49_022562BC

	thumb_func_start ov49_022562FC
ov49_022562FC: ; 0x022562FC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256310
	mov r1, #2
	bl ov49_022562A8
	mov r0, #0
	pop {r4, pc}
_02256310:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _0225631C
	cmp r1, #1
	beq _02256334
	b _02256344
_0225631C:
	bl ov49_02256348
	cmp r0, #0
	beq _02256344
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov49_02256494
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256344
_02256334:
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov49_022564B8
	cmp r0, #0
	beq _02256344
	mov r0, #0
	strb r0, [r4, #1]
_02256344:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov49_022562FC

	thumb_func_start ov49_02256348
ov49_02256348: ; 0x02256348
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov25_0225450C
	cmp r0, #0
	bne _02256398
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020227A4
	cmp r0, #0
	beq _02256398
	ldr r0, [sp]
	cmp r0, #0x88
	blo _02256398
	cmp r0, #0xa0
	bhs _02256398
	ldr r0, [sp, #4]
	cmp r0, #0x30
	blo _02256398
	cmp r0, #0xb8
	bhs _02256398
	sub r0, #0x30
	lsr r1, r0, #4
	cmp r1, #8
	blo _02256382
	mov r1, #7
_02256382:
	ldrb r0, [r4, #3]
	cmp r1, r0
	beq _02256398
	str r1, [r4, #4]
	strb r1, [r4, #3]
	ldr r0, [r4, #0x10]
	bl sub_0205689C
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_02256398:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov49_02256348

	thumb_func_start ov49_022563A0
ov49_022563A0: ; 0x022563A0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563B0
	cmp r0, #1
	beq _022563C0
	b _022563CE
_022563B0:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov49_02256494
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563CE
_022563C0:
	ldr r0, [r4, #8]
	bl ov49_022564C4
	cmp r0, #0
	beq _022563CE
	mov r0, #1
	pop {r4, pc}
_022563CE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov49_022563A0

	.rodata


	.global Unk_ov49_022565D4
Unk_ov49_022565D4: ; 0x022565D4
	.incbin "incbin/overlay49_rodata.bin", 0x0, 0xC

	.section .sinit, 4
	.word ov49_022561C0
