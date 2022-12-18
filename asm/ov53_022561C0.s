	.include "macros/function.inc"
	.include "include/ov53_022561C0.inc"

	

	.text


	thumb_func_start ov53_022561C0
ov53_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov53_022561D4
	ldr r1, _022561D0 ; =ov53_0225630C
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov53_022561D4
_022561D0: .word ov53_0225630C
	thumb_func_end ov53_022561C0

	thumb_func_start ov53_022561D4
ov53_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x40
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov53_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov53_022562D0
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
_02256218: .word ov53_022562D0
	thumb_func_end ov53_022561D4

	thumb_func_start ov53_0225621C
ov53_0225621C: ; 0x0225621C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r0, r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl ov25_0225453C
	add r6, r0, #0
	bl ov6_02243140
	str r0, [r7, #8]
	cmp r0, #0
	beq _02256240
	add r0, r6, #0
	bl ov6_02243148
	b _02256242
_02256240:
	mov r0, #0
_02256242:
	str r0, [r7, #4]
	mov r4, #0
	add r5, r7, #0
_02256248:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov6_02243114
	lsl r1, r4, #0x18
	str r0, [r5, #0x18]
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov6_022430E8
	str r0, [r5, #0xc]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _02256248
	add r0, r6, #0
	bl ov6_022430C4
	str r0, [r7, #0x24]
	add r0, r7, #0
	ldr r2, [sp, #8]
	add r0, #0x2c
	add r1, r7, #4
	bl ov53_02256420
	cmp r0, #0
	beq _022562AA
	mov r0, #0
	strb r0, [r7]
	strb r0, [r7, #1]
	strb r0, [r7, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _022562B0 ; =0x022568E0
	ldr r2, _022562B4 ; =ov53_02256314
	mov r1, #3
	add r3, r7, #0
	bl ov25_02255ACC
	str r0, [r7, #0x34]
	mov r0, #0
	str r0, [r7, #0x38]
	str r0, [r7, #0x3c]
	ldr r0, [sp, #4]
	add sp, #0xc
	str r0, [r7, #0x30]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022562AA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022562B0: .word 0x022568E0
_022562B4: .word ov53_02256314
	thumb_func_end ov53_0225621C

	thumb_func_start ov53_022562B8
ov53_022562B8: ; 0x022562B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ov25_02255B34
	ldr r0, [r4, #0x2c]
	bl ov53_02256454
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov53_022562B8

	thumb_func_start ov53_022562D0
ov53_022562D0: ; 0x022562D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _02256306
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02256308 ; =0x022568EC
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256306
	add r0, r4, #0
	bl ov53_022562B8
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x30]
	bl ov25_02254260
_02256306:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256308: .word 0x022568EC
	thumb_func_end ov53_022562D0

	thumb_func_start ov53_0225630C
ov53_0225630C: ; 0x0225630C
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov53_0225630C

	thumb_func_start ov53_02256314
ov53_02256314: ; 0x02256314
	str r0, [r3, #0x3c]
	str r1, [r3, #0x38]
	bx lr
	; .align 2, 0
	thumb_func_end ov53_02256314

	thumb_func_start ov53_0225631C
ov53_0225631C: ; 0x0225631C
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
	thumb_func_end ov53_0225631C

	thumb_func_start ov53_02256330
ov53_02256330: ; 0x02256330
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256340
	cmp r0, #1
	beq _02256350
	b _0225636A
_02256340:
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl ov53_02256460
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225636A
_02256350:
	ldr r0, [r4, #0x2c]
	mov r1, #0
	bl ov53_02256484
	cmp r0, #0
	beq _0225636A
	ldr r0, [r4, #0x30]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov53_0225631C
_0225636A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov53_02256330

	thumb_func_start ov53_02256370
ov53_02256370: ; 0x02256370
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256384
	mov r1, #2
	bl ov53_0225631C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02256384:
	ldr r0, [r4, #0x30]
	bl ov25_0225453C
	add r5, r0, #0
	bl ov6_02243140
	str r0, [r4, #8]
	cmp r0, #0
	bne _0225639A
	mov r0, #0
	b _022563A0
_0225639A:
	add r0, r5, #0
	bl ov6_02243148
_022563A0:
	ldr r1, [r4, #4]
	cmp r0, r1
	beq _022563B4
	str r0, [r4, #4]
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl ov53_02256460
	mov r0, #0
	pop {r3, r4, r5, pc}
_022563B4:
	ldr r0, [r4, #0x2c]
	mov r1, #3
	bl ov53_02256484
	cmp r0, #0
	beq _022563E6
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _022563E6
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	bhs _022563E2
	lsl r0, r1, #2
	add r0, r4, r0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _022563E2
	str r1, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	mov r1, #3
	bl ov53_02256460
_022563E2:
	mov r0, #0
	str r0, [r4, #0x38]
_022563E6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov53_02256370

	thumb_func_start ov53_022563EC
ov53_022563EC: ; 0x022563EC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563FC
	cmp r0, #1
	beq _0225640C
	b _0225641A
_022563FC:
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl ov53_02256460
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225641A
_0225640C:
	ldr r0, [r4, #0x2c]
	bl ov53_02256490
	cmp r0, #0
	beq _0225641A
	mov r0, #1
	pop {r4, pc}
_0225641A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov53_022563EC

	.rodata


	.global Unk_ov53_022568E0
Unk_ov53_022568E0: ; 0x022568E0
	.incbin "incbin/overlay53_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov53_022568EC
Unk_ov53_022568EC: ; 0x022568EC
	.incbin "incbin/overlay53_rodata.bin", 0xC, 0xC

	.section .sinit, 4
	.word ov53_022561C0
