	.include "macros/function.inc"


	.text

	thumb_func_start ov54_022561C0
ov54_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =FUN_02254238
	ldr r0, _022561CC ; =ov54_022561D4
	ldr r1, _022561D0 ; =ov54_02256338
	bx r3
	; .align 2, 0
_022561C8: .word FUN_02254238
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
	bl FUN_02254540
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
	bl FUN_02255ACC
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
	bl FUN_02255B34
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
	bl FUN_02254518
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
	bl FUN_02254260
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
	bl FUN_0225424C
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
	bl FUN_02254444
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

	thumb_func_start ov54_0225642C
ov54_0225642C: ; 0x0225642C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x98
	bl sub_02018144
	add r4, r0, #0
	beq _0225645A
	add r0, #8
	mov r1, #4
	bl FUN_02255090
	str r6, [r4, #0]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225645A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov54_0225642C

	thumb_func_start ov54_02256460
ov54_02256460: ; 0x02256460
	push {r3, lr}
	cmp r0, #0
	beq _0225646A
	bl sub_020181C4
_0225646A:
	pop {r3, pc}
	thumb_func_end ov54_02256460

	thumb_func_start ov54_0225646C
ov54_0225646C: ; 0x0225646C
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _0225648C ; =0x0225672C
	ldr r3, [r2, #0]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225648C: .word 0x0225672C
	thumb_func_end ov54_0225646C

	thumb_func_start ov54_02256490
ov54_02256490: ; 0x02256490
	ldr r3, _02256498 ; =FUN_02255130
	add r0, #8
	bx r3
	nop
_02256498: .word FUN_02255130
	thumb_func_end ov54_02256490

	thumb_func_start ov54_0225649C
ov54_0225649C: ; 0x0225649C
	ldr r3, _022564A4 ; =FUN_02255154
	add r0, #8
	bx r3
	nop
_022564A4: .word FUN_02255154
	thumb_func_end ov54_0225649C

	thumb_func_start ov54_022564A8
ov54_022564A8: ; 0x022564A8
	push {r4, lr}
	add r4, r0, #0
	bl FUN_0225523C
	add r0, #8
	add r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov54_022564A8

	thumb_func_start ov54_022564BC
ov54_022564BC: ; 0x022564BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r1, #0
	add r0, r7, #0
	bl FUN_0225523C
	add r5, r0, #0
	add r0, r7, #0
	bl FUN_02255240
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	ldr r2, _022565B8 ; =0x02256710
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #6
	mov r2, #4
	mov r3, #1
	bl sub_020196C0
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5, #4]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #0
	add r1, r0, #0
	bl FUN_022546B8
	mov r3, #2
	str r3, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	add r1, sp, #0x1c
	mov r2, #6
	bl sub_0201A7E8
	add r0, sp, #0x1c
	mov r1, #4
	bl sub_0201ADA4
	add r0, sp, #0x1c
	bl sub_0201A9F4
	ldr r1, _022565BC ; =0x000001CA
	mov r0, #0x1a
	mov r2, #0
	mov r3, #8
	bl sub_0200B010
	add r4, r0, #0
	beq _0225657C
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0
	add r6, r0, #0
	mov r3, #0xc0
	sub r3, r3, r6
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022565C0 ; =0x00010804
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, sp, #0x1c
	lsr r3, r3, #1
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, sp, #0x1c
	bl sub_0201ACCC
	add r0, r4, #0
	bl sub_020237BC
_0225657C:
	add r0, sp, #0x1c
	bl sub_0201A8FC
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov54_022565EC
	ldr r1, _022565C4 ; =0x04001000
	ldr r0, _022565C8 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x18]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r7, #0
	bl ov54_022564A8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_022565B8: .word 0x02256710
_022565BC: .word 0x000001CA
_022565C0: .word 0x00010804
_022565C4: .word 0x04001000
_022565C8: .word 0xFFFFE0FF
	thumb_func_end ov54_022564BC

	thumb_func_start ov54_022565CC
ov54_022565CC: ; 0x022565CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	bl ov54_022566A8
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov54_022564A8
	pop {r3, r4, r5, pc}
	thumb_func_end ov54_022565CC

	thumb_func_start ov54_022565EC
ov54_022565EC: ; 0x022565EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r1, [sp, #8]
	bl FUN_02255360
	mov r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0xc
	add r0, #0x54
	mov r2, #5
	mov r3, #6
	bl FUN_02255958
	ldr r0, [sp, #8]
	mov r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _02256672
	ldr r5, [sp, #4]
	ldr r6, [sp, #8]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x54
	ldr r7, _022566A4 ; =0x02256750
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
_02256628:
	ldr r0, [r6, #0]
	ldr r2, [r6, #8]
	mov r1, #0
	bl sub_02079D8C
	str r0, [r5, #0x68]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r0, [r0, #0x20]
	add r1, r7, #0
	bl FUN_02255810
	ldr r1, [sp, #0xc]
	str r0, [r5, #0x24]
	bl FUN_02255940
	ldr r0, [r6, #0]
	ldr r1, [r6, #8]
	mov r2, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl FUN_02255938
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r6, #0xc
	add r0, #0x90
	ldr r0, [r0, #0]
	add r5, r5, #4
	add r7, #0x10
	cmp r4, r0
	blo _02256628
_02256672:
	cmp r4, #0xc
	bge _02256688
	ldr r0, [sp, #4]
	lsl r1, r4, #2
	add r1, r0, r1
	mov r0, #0
_0225667E:
	add r4, r4, #1
	str r0, [r1, #0x24]
	add r1, r1, #4
	cmp r4, #0xc
	blt _0225667E
_02256688:
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	add r2, #0x90
	mov r0, #0
	str r2, [sp, #8]
	add r1, #0x68
	ldr r2, [r2, #0]
	add r3, r0, #0
	str r1, [sp, #4]
	bl FUN_022553A0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022566A4: .word 0x02256750
	thumb_func_end ov54_022565EC

	thumb_func_start ov54_022566A8
ov54_022566A8: ; 0x022566A8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_022566B2:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _022566C0
	ldr r0, [r6, #0x20]
	bl FUN_022558B0
	str r7, [r5, #0x24]
_022566C0:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _022566B2
	add r6, #0x54
	add r0, r6, #0
	bl FUN_022559B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov54_022566A8
	; 0x022566D4
