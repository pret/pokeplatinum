	.include "macros/function.inc"


	.text

	thumb_func_start ov42_022561C0
ov42_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =FUN_02254238
	ldr r0, _022561CC ; =ov42_022561D4
	ldr r1, _022561D0 ; =ov42_022562B4
	bx r3
	; .align 2, 0
_022561C8: .word FUN_02254238
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
	bl FUN_02254260
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
	bl FUN_0225424C
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
	bl FUN_022544BC
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

	thumb_func_start ov42_022563D4
ov42_022563D4: ; 0x022563D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x48
	bl sub_02018144
	add r4, r0, #0
	beq _02256414
	add r0, #8
	mov r1, #4
	bl FUN_02255090
	str r6, [r4, #0]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	add r0, r4, #0
	bl ov42_02256420
	ldr r1, _02256418 ; =0xFFFF5800
	ldr r0, _0225641C ; =0x02256720
	str r1, [r0, #0]
	mov r1, #0xb
	lsl r1, r1, #8
	str r1, [r0, #4]
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256414:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256418: .word 0xFFFF5800
_0225641C: .word 0x02256720
	thumb_func_end ov42_022563D4

	thumb_func_start ov42_02256420
ov42_02256420: ; 0x02256420
	push {r3, r4, lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r4, r0, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x39
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x28
	mov r1, #0xc
	mov r2, #0x37
	mov r3, #0x38
	bl FUN_02255958
	add r2, r4, #0
	ldr r0, [r4, #0x20]
	ldr r1, _02256470 ; =0x022566B4
	add r2, #0x28
	bl FUN_02255810
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225646A
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl FUN_022558C4
_0225646A:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02256470: .word 0x022566B4
	thumb_func_end ov42_02256420

	thumb_func_start ov42_02256474
ov42_02256474: ; 0x02256474
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
	thumb_func_end ov42_02256474

	thumb_func_start ov42_0225648C
ov42_0225648C: ; 0x0225648C
	push {r4, lr}
	add r4, r0, #0
	beq _0225649C
	bl ov42_02256474
	add r0, r4, #0
	bl sub_020181C4
_0225649C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov42_0225648C

	thumb_func_start ov42_022564A0
ov42_022564A0: ; 0x022564A0
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022564C0 ; =0x022566E0
	ldr r3, [r2, #0]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022564C0: .word 0x022566E0
	thumb_func_end ov42_022564A0

	thumb_func_start ov42_022564C4
ov42_022564C4: ; 0x022564C4
	ldr r3, _022564CC ; =FUN_02255130
	add r0, #8
	bx r3
	nop
_022564CC: .word FUN_02255130
	thumb_func_end ov42_022564C4

	thumb_func_start ov42_022564D0
ov42_022564D0: ; 0x022564D0
	ldr r3, _022564D8 ; =FUN_02255154
	add r0, #8
	bx r3
	nop
_022564D8: .word FUN_02255154
	thumb_func_end ov42_022564D0

	thumb_func_start ov42_022564DC
ov42_022564DC: ; 0x022564DC
	push {r4, lr}
	add r4, r0, #0
	bl FUN_0225523C
	add r0, #8
	add r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov42_022564DC

	thumb_func_start ov42_022564F0
ov42_022564F0: ; 0x022564F0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl FUN_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256574 ; =0x022566C4
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
	mov r1, #0x36
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
	mov r1, #0x35
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256578 ; =0x04001000
	ldr r0, _0225657C ; =0xFFFFE0FF
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
	bl ov42_022564DC
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02256574: .word 0x022566C4
_02256578: .word 0x04001000
_0225657C: .word 0xFFFFE0FF
	thumb_func_end ov42_022564F0

	thumb_func_start ov42_02256580
ov42_02256580: ; 0x02256580
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _0225659C
	cmp r0, #1
	beq _022565A6
	pop {r3, r4, r5, pc}
_0225659C:
	mov r0, #1
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl FUN_0225524C
_022565A6:
	add r0, r4, #0
	mov r1, #2
	bl ov42_022564C4
	cmp r0, #0
	beq _022565C0
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov42_022564DC
_022565C0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov42_02256580

	thumb_func_start ov42_022565C4
ov42_022565C4: ; 0x022565C4
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
	beq _022565EC
	cmp r0, #1
	beq _02256610
	cmp r0, #2
	beq _02256690
	pop {r4, r5, r6, pc}
_022565EC:
	ldr r0, _02256698 ; =0x00000675
	bl FUN_02254424
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl FUN_022558C4
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [r4, #0x3c]
	ldr r0, _0225669C ; =0x02256720
	ldr r0, [r0, #0]
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl FUN_0225524C
_02256610:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0225661E
	add r0, r5, #0
	bl ov42_022564DC
	pop {r4, r5, r6, pc}
_0225661E:
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x3c]
	ldr r0, _0225669C ; =0x02256720
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #4]
	add r1, r1, r0
	str r1, [r4, #0x40]
	cmp r1, #0
	ble _02256682
	mov r0, #9
	ldr r2, [r4, #0x3c]
	lsl r0, r0, #0x10
	cmp r2, r0
	blt _02256682
	mov r0, #0x38
	mul r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	neg r1, r0
	ldr r0, _022566A0 ; =0xFFFFE000
	str r1, [r4, #0x40]
	cmp r1, r0
	ldr r0, _022566A4 ; =0x00000676
	bge _02256660
	bl FUN_02254424
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [r4, #0x3c]
	b _02256682
_02256660:
	bl FUN_02254424
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0225666E
	mov r1, #1
	b _02256670
_0225666E:
	mov r1, #2
_02256670:
	ldr r0, [r4, #0x24]
	bl FUN_022558C4
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl FUN_0225524C
_02256682:
	mov r1, #7
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x3c]
	lsl r1, r1, #0x10
	bl FUN_02255900
	pop {r4, r5, r6, pc}
_02256690:
	add r0, r5, #0
	bl ov42_022564DC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256698: .word 0x00000675
_0225669C: .word 0x02256720
_022566A0: .word 0xFFFFE000
_022566A4: .word 0x00000676
	thumb_func_end ov42_022565C4
	; 0x022566A8

	.incbin "data/overlay42.bin"