	.include "macros/function.inc"
	.include "include/ov42_022561C0.inc"

	

	.text


	thumb_func_start ov42_022561C0
ov42_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov42_022561D4
	ldr r1, _022561D0 ; =ov42_022562B4
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov42_022561D4
_022561D0: .word ov42_022562B4
	thumb_func_end ov42_022561C0

	thumb_func_start ov42_022561D4
ov42_022561D4: ; 0x022561D4
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
	bl ov42_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov42_02256280
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
_02256218: .word ov42_02256280
	thumb_func_end ov42_022561D4

	thumb_func_start ov42_0225621C
ov42_0225621C: ; 0x0225621C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r6, r2, #0
	add r0, r3, #0
	add r1, #8
	mov r2, #4
	str r3, [r5, #4]
	bl sub_02099D7C
	cmp r0, #0
	bne _0225623A
	mov r0, #1
	str r0, [r5, #8]
_0225623A:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xc
	add r1, #8
	add r2, r6, #0
	bl ov42_022563D4
	cmp r0, #0
	beq _0225625A
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r4, [r5, #0x10]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225625A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov42_0225621C

	thumb_func_start ov42_02256260
ov42_02256260: ; 0x02256260
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #8
	mov r2, #4
	bl sub_02099D54
	ldr r0, [r4, #0xc]
	bl ov42_0225648C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov42_02256260

	thumb_func_start ov42_02256280
ov42_02256280: ; 0x02256280
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhs _022562AC
	lsl r2, r1, #2
	ldr r1, _022562B0 ; =0x022566A8
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562AC
	add r0, r4, #0
	bl ov42_02256260
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x10]
	bl ov25_02254260
_022562AC:
	pop {r3, r4, r5, pc}
	nop
_022562B0: .word 0x022566A8
	thumb_func_end ov42_02256280

	thumb_func_start ov42_022562B4
ov42_022562B4: ; 0x022562B4
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov42_022562B4

	thumb_func_start ov42_022562BC
ov42_022562BC: ; 0x022562BC
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562C4
	b _022562C6
_022562C4:
	mov r1, #2
_022562C6:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov42_022562BC

	thumb_func_start ov42_022562D0
ov42_022562D0: ; 0x022562D0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562E0
	cmp r0, #1
	beq _022562F0
	b _0225630A
_022562E0:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov42_022564A0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225630A
_022562F0:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov42_022564C4
	cmp r0, #0
	beq _0225630A
	ldr r0, [r4, #0x10]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov42_022562BC
_0225630A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov42_022562D0

	thumb_func_start ov42_02256310
ov42_02256310: ; 0x02256310
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256320
	mov r1, #2
	bl ov42_022562BC
_02256320:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225632C
	cmp r0, #1
	beq _0225634E
	b _0225635E
_0225632C:
	bl ov42_02256398
	cmp r0, #0
	beq _0225635E
	bl sub_0201D35C
	mov r1, #1
	and r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ov42_022564A0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225635E
_0225634E:
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ov42_022564C4
	cmp r0, #0
	beq _0225635E
	mov r0, #0
	strb r0, [r4, #1]
_0225635E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov42_02256310

	thumb_func_start ov42_02256364
ov42_02256364: ; 0x02256364
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256374
	cmp r0, #1
	beq _02256384
	b _02256392
_02256374:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov42_022564A0
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256392
_02256384:
	ldr r0, [r4, #0xc]
	bl ov42_022564D0
	cmp r0, #0
	beq _02256392
	mov r0, #1
	pop {r4, pc}
_02256392:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov42_02256364

	thumb_func_start ov42_02256398
ov42_02256398: ; 0x02256398
	push {r3, lr}
	sub sp, #8
	add r0, sp, #4
	add r1, sp, #0
	bl ov25_022544BC
	cmp r0, #0
	beq _022563CE
	ldr r1, [sp, #4]
	mov r0, #0x70
	sub r0, r0, r1
	add r3, r0, #0
	mul r3, r0
	ldr r1, [sp]
	mov r0, #0x90
	sub r2, r0, r1
	add r1, r2, #0
	mul r1, r2
	str r1, [sp]
	add r1, r3, r1
	lsl r0, r0, #2
	str r3, [sp, #4]
	cmp r1, r0
	bhs _022563CE
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_022563CE:
	mov r0, #0
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov42_02256398

	.rodata


	.global Unk_ov42_022566A8
Unk_ov42_022566A8: ; 0x022566A8
	.incbin "incbin/overlay42_rodata.bin", 0x0, 0xC

	.section .sinit, 4
	.word ov42_022561C0
