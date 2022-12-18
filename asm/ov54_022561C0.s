	.include "macros/function.inc"
	.include "include/ov54_022561C0.inc"

	

	.text


	thumb_func_start ov54_022561C0
ov54_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov54_022561D4
	ldr r1, _022561D0 ; =ov54_02256338
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov54_022561D4
_022561D0: .word ov54_02256338
	thumb_func_end ov54_022561C0

	thumb_func_start ov54_022561D4
ov54_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0xac
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov54_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov54_022562F4
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
_02256218: .word ov54_022562F4
	thumb_func_end ov54_022561D4

	thumb_func_start ov54_0225621C
ov54_0225621C: ; 0x0225621C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	add r0, r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	bl ov25_02254540
	str r0, [sp, #0x10]
	bl sub_02056AAC
	ldr r1, [sp, #4]
	mov r4, #0
	add r1, #0x94
	str r0, [r1, #0]
	ldr r0, [sp, #4]
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _02256276
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	add r7, r0, #4
	add r6, #0xc
	add r5, r0, #0
_0225624E:
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_02056AC8
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl sub_02056AFC
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, #0x94
	ldr r0, [r0, #0]
	add r6, #0xc
	add r7, #0xc
	add r5, #0xc
	cmp r4, r0
	blo _0225624E
_02256276:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, #0x98
	add r1, r1, #4
	bl ov54_0225642C
	cmp r0, #0
	beq _022562C6
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _022562CC ; =0x022566E0
	ldr r2, _022562D0 ; =ov54_02256340
	ldr r3, [sp, #4]
	mov r1, #0xc
	bl ov25_02255ACC
	ldr r1, [sp, #4]
	add r1, #0xa0
	str r0, [r1, #0]
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, #0xa4
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	add r0, #0xa8
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r0, #0x9c
	str r0, [sp, #4]
	str r1, [r0, #0]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022562C6:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022562CC: .word 0x022566E0
_022562D0: .word ov54_02256340
	thumb_func_end ov54_0225621C

	thumb_func_start ov54_022562D4
ov54_022562D4: ; 0x022562D4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	bl ov25_02255B34
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl ov54_02256460
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov54_022562D4

	thumb_func_start ov54_022562F4
ov54_022562F4: ; 0x022562F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _02256332
	add r0, r4, #0
	add r0, #0x9c
	add r1, #0xa0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02256334 ; =0x022566D4
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256332
	add r0, r4, #0
	bl ov54_022562D4
	add r0, r5, #0
	bl sub_0200DA58
	add r4, #0x9c
	ldr r0, [r4, #0]
	bl ov25_02254260
_02256332:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256334: .word 0x022566D4
	thumb_func_end ov54_022562F4

	thumb_func_start ov54_02256338
ov54_02256338: ; 0x02256338
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov54_02256338

	thumb_func_start ov54_02256340
ov54_02256340: ; 0x02256340
	add r2, r3, #0
	add r2, #0xa8
	str r0, [r2, #0]
	add r3, #0xa4
	str r1, [r3, #0]
	bx lr
	thumb_func_end ov54_02256340

	thumb_func_start ov54_0225634C
ov54_0225634C: ; 0x0225634C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256354
	b _02256356
_02256354:
	mov r1, #2
_02256356:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov54_0225634C

	thumb_func_start ov54_02256360
ov54_02256360: ; 0x02256360
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256370
	cmp r0, #1
	beq _02256384
	b _022563A6
_02256370:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov54_0225646C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563A6
_02256384:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov54_02256490
	cmp r0, #0
	beq _022563A6
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov54_0225634C
_022563A6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov54_02256360

	thumb_func_start ov54_022563AC
ov54_022563AC: ; 0x022563AC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022563C0
	mov r1, #2
	bl ov54_0225634C
	mov r0, #0
	pop {r4, pc}
_022563C0:
	add r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _022563F0
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0, #0]
	mov r0, #0xb
	sub r1, r0, r1
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r1, r0
	bhs _022563EA
	mov r0, #0xc
	mul r0, r1
	add r1, r4, r0
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	bl ov25_02254444
_022563EA:
	mov r0, #0
	add r4, #0xa4
	str r0, [r4, #0]
_022563F0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov54_022563AC

	thumb_func_start ov54_022563F4
ov54_022563F4: ; 0x022563F4
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256404
	cmp r0, #1
	beq _02256418
	b _02256428
_02256404:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov54_0225646C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256428
_02256418:
	add r4, #0x98
	ldr r0, [r4, #0]
	bl ov54_0225649C
	cmp r0, #0
	beq _02256428
	mov r0, #1
	pop {r4, pc}
_02256428:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov54_022563F4

	.rodata


	.global Unk_ov54_022566D4
Unk_ov54_022566D4: ; 0x022566D4
	.incbin "incbin/overlay54_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov54_022566E0
Unk_ov54_022566E0: ; 0x022566E0
	.incbin "incbin/overlay54_rodata.bin", 0xC, 0x30

	.section .sinit, 4
	.word ov54_022561C0
