	.include "macros/function.inc"
	.include "include/ov37_022563D4.inc"

	

	.text


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
	bl ov25_02255090
	str r5, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
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
	bl ov25_02255958
	add r2, r5, #0
	ldr r0, [r5, #0x20]
	ldr r1, _0225646C ; =0x022565E8
	add r2, #0x28
	bl ov25_02255810
	str r0, [r5, #0x24]
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02256466
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl ov25_022558C4
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
	bl ov25_022558B0
	add r4, #0x28
	add r0, r4, #0
	bl ov25_022559B0
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
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022564A8: .word 0x02256614
	thumb_func_end ov37_02256488

	thumb_func_start ov37_022564AC
ov37_022564AC: ; 0x022564AC
	ldr r3, _022564B4 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022564B4: .word ov25_02255130
	thumb_func_end ov37_022564AC

	thumb_func_start ov37_022564B8
ov37_022564B8: ; 0x022564B8
	ldr r3, _022564C0 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022564C0: .word ov25_02255154
	thumb_func_end ov37_022564B8

	thumb_func_start ov37_022564C4
ov37_022564C4: ; 0x022564C4
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov37_022564C4

	thumb_func_start ov37_022564D8
ov37_022564D8: ; 0x022564D8
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
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
	bl ov25_022546B8
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
	bl ov25_0225523C
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
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r4, r0, #0
	ldr r0, _022565D0 ; =0x00000663
	bl ov25_02254424
	ldr r0, [r4, #0]
	cmp r0, #0
	ldr r0, [r5, #0x24]
	beq _022565BA
	mov r1, #0
	bl ov25_022558C4
	mov r0, #1
	add r1, r0, #0
	bl PM_SetBackLight
	b _022565C8
_022565BA:
	mov r1, #1
	bl ov25_022558C4
	mov r0, #1
	mov r1, #0
	bl PM_SetBackLight
_022565C8:
	add r0, r6, #0
	bl ov37_022564C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022565D0: .word 0x00000663
	thumb_func_end ov37_02256588

	.rodata


	.global Unk_ov37_022565E8
Unk_ov37_022565E8: ; 0x022565E8
	.incbin "incbin/overlay37_rodata.bin", 0x14, 0x24 - 0x14

	.global Unk_ov37_022565F8
Unk_ov37_022565F8: ; 0x022565F8
	.incbin "incbin/overlay37_rodata.bin", 0x24, 0x40 - 0x24

	.global Unk_ov37_02256614
Unk_ov37_02256614: ; 0x02256614
	.incbin "incbin/overlay37_rodata.bin", 0x40, 0x30

