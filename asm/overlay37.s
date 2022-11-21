	.include "macros/function.inc"


	.text

	thumb_func_start ov37_022561C0
ov37_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =FUN_02254238
	ldr r0, _022561CC ; =ov37_022561D4
	ldr r1, _022561D0 ; =ov37_022562DC
	bx r3
	; .align 2, 0
_022561C8: .word FUN_02254238
_022561CC: .word ov37_022561D4
_022561D0: .word ov37_022562DC
	thumb_func_end ov37_022561C0

	thumb_func_start ov37_022561D4
ov37_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x1c
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov37_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov37_022562A0
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
_02256218: .word ov37_022562A0
	thumb_func_end ov37_022561D4

	thumb_func_start ov37_0225621C
ov37_0225621C: ; 0x0225621C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r1, sp, #4
	add r6, r2, #0
	bl sub_020CB29C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02256238
	mov r0, #1
	b _0225623A
_02256238:
	mov r0, #0
_0225623A:
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #8
	add r1, r5, #4
	add r2, r6, #0
	bl ov37_022563D4
	cmp r0, #0
	beq _02256272
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _02256278 ; =0x022565D4
	ldr r2, _0225627C ; =ov37_02256298
	mov r1, #2
	add r3, r5, #0
	bl FUN_02255ACC
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	add sp, #8
	str r4, [r5, #0xc]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256272:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256278: .word 0x022565D4
_0225627C: .word ov37_02256298
	thumb_func_end ov37_0225621C

	thumb_func_start ov37_02256280
ov37_02256280: ; 0x02256280
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_02255B34
	ldr r0, [r4, #8]
	bl ov37_02256410
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov37_02256280

	thumb_func_start ov37_02256298
ov37_02256298: ; 0x02256298
	str r0, [r3, #0x18]
	str r1, [r3, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov37_02256298

	thumb_func_start ov37_022562A0
ov37_022562A0: ; 0x022562A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562D6
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl FUN_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562D8 ; =0x022565DC
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562D6
	add r0, r4, #0
	bl ov37_02256280
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0xc]
	bl FUN_02254260
_022562D6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022562D8: .word 0x022565DC
	thumb_func_end ov37_022562A0

	thumb_func_start ov37_022562DC
ov37_022562DC: ; 0x022562DC
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov37_022562DC

	thumb_func_start ov37_022562E4
ov37_022562E4: ; 0x022562E4
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562EC
	b _022562EE
_022562EC:
	mov r1, #2
_022562EE:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov37_022562E4

	thumb_func_start ov37_022562F8
ov37_022562F8: ; 0x022562F8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256308
	cmp r0, #1
	beq _02256318
	b _02256332
_02256308:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov37_02256488
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256332
_02256318:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov37_022564AC
	cmp r0, #0
	beq _02256332
	ldr r0, [r4, #0xc]
	bl FUN_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov37_022562E4
_02256332:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov37_022562F8

	thumb_func_start ov37_02256338
ov37_02256338: ; 0x02256338
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0225634C
	mov r1, #2
	bl ov37_022562E4
	mov r0, #0
	pop {r4, pc}
_0225634C:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256358
	cmp r0, #1
	beq _0225638C
	b _0225639C
_02256358:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _0225639C
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bne _0225636A
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02256374
_0225636A:
	cmp r1, #1
	bne _02256384
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02256384
_02256374:
	ldr r1, [r4, #4]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov37_02256488
_02256384:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225639C
_0225638C:
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov37_022564AC
	cmp r0, #0
	beq _0225639C
	mov r0, #0
	strb r0, [r4, #1]
_0225639C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov37_02256338

	thumb_func_start ov37_022563A0
ov37_022563A0: ; 0x022563A0
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
	bl ov37_02256488
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563CE
_022563C0:
	ldr r0, [r4, #8]
	bl ov37_022564B8
	cmp r0, #0
	beq _022563CE
	mov r0, #1
	pop {r4, pc}
_022563CE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov37_022563A0

	thumb_func_start ov37_022563D4
ov37_022563D4: ; 0x022563D4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x3c
	bl sub_02018144
	add r4, r0, #0
	beq _0225640A
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
	bl ov37_0225641C
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225640A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov37_022563D4

	thumb_func_start ov37_02256410
ov37_02256410: ; 0x02256410
	push {r3, lr}
	cmp r0, #0
	beq _0225641A
	bl sub_020181C4
_0225641A:
	pop {r3, pc}
	thumb_func_end ov37_02256410

	thumb_func_start ov37_0225641C
ov37_0225641C: ; 0x0225641C
	push {r4, r5, lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x68
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0xc
	mov r2, #0x66
	mov r3, #0x67
	bl FUN_02255958
	add r2, r5, #0
	ldr r0, [r5, #0x20]
	ldr r1, _0225646C ; =0x022565E8
	add r2, #0x28
	bl FUN_02255810
	str r0, [r5, #0x24]
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02256466
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl FUN_022558C4
_02256466:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0225646C: .word 0x022565E8
	thumb_func_end ov37_0225641C

	thumb_func_start ov37_02256470
ov37_02256470: ; 0x02256470
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	bl FUN_022558B0
	add r4, #0x28
	add r0, r4, #0
	bl FUN_022559B0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov37_02256470

	thumb_func_start ov37_02256488
ov37_02256488: ; 0x02256488
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022564A8 ; =0x02256614
	ldr r3, [r2, #0]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022564A8: .word 0x02256614
	thumb_func_end ov37_02256488

	thumb_func_start ov37_022564AC
ov37_022564AC: ; 0x022564AC
	ldr r3, _022564B4 ; =FUN_02255130
	add r0, #8
	bx r3
	nop
_022564B4: .word FUN_02255130
	thumb_func_end ov37_022564AC

	thumb_func_start ov37_022564B8
ov37_022564B8: ; 0x022564B8
	ldr r3, _022564C0 ; =FUN_02255154
	add r0, #8
	bx r3
	nop
_022564C0: .word FUN_02255154
	thumb_func_end ov37_022564B8

	thumb_func_start ov37_022564C4
ov37_022564C4: ; 0x022564C4
	push {r4, lr}
	add r4, r0, #0
	bl FUN_0225523C
	add r0, #8
	add r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov37_022564C4

	thumb_func_start ov37_022564D8
ov37_022564D8: ; 0x022564D8
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl FUN_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _0225655C ; =0x022565F8
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
	mov r1, #0x65
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
	mov r1, #0x64
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256560 ; =0x04001000
	ldr r0, _02256564 ; =0xFFFFE0FF
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
	bl ov37_022564C4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0225655C: .word 0x022565F8
_02256560: .word 0x04001000
_02256564: .word 0xFFFFE0FF
	thumb_func_end ov37_022564D8

	thumb_func_start ov37_02256568
ov37_02256568: ; 0x02256568
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	bl ov37_02256470
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov37_022564C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov37_02256568

	thumb_func_start ov37_02256588
ov37_02256588: ; 0x02256588
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl FUN_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl FUN_02255240
	add r4, r0, #0
	ldr r0, _022565D0 ; =0x00000663
	bl FUN_02254424
	ldr r0, [r4, #0]
	cmp r0, #0
	ldr r0, [r5, #0x24]
	beq _022565BA
	mov r1, #0
	bl FUN_022558C4
	mov r0, #1
	add r1, r0, #0
	bl sub_020CB144
	b _022565C8
_022565BA:
	mov r1, #1
	bl FUN_022558C4
	mov r0, #1
	mov r1, #0
	bl sub_020CB144
_022565C8:
	add r0, r6, #0
	bl ov37_022564C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022565D0: .word 0x00000663
	thumb_func_end ov37_02256588
	; 0x022565D4
