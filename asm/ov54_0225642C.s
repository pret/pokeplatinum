	.include "macros/function.inc"
	.include "include/ov54_0225642C.inc"

	

	.text


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
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
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
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225648C: .word 0x0225672C
	thumb_func_end ov54_0225646C

	thumb_func_start ov54_02256490
ov54_02256490: ; 0x02256490
	ldr r3, _02256498 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256498: .word ov25_02255130
	thumb_func_end ov54_02256490

	thumb_func_start ov54_0225649C
ov54_0225649C: ; 0x0225649C
	ldr r3, _022564A4 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022564A4: .word ov25_02255154
	thumb_func_end ov54_0225649C

	thumb_func_start ov54_022564A8
ov54_022564A8: ; 0x022564A8
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov54_022564A8

	thumb_func_start ov54_022564BC
ov54_022564BC: ; 0x022564BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r1, #0
	add r0, r7, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r7, #0
	bl ov25_02255240
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
	bl ov25_022546B8
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
	bl ov25_0225523C
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
	bl ov25_02255360
	mov r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0xc
	add r0, #0x54
	mov r2, #5
	mov r3, #6
	bl ov25_02255958
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
	bl ov25_02255810
	ldr r1, [sp, #0xc]
	str r0, [r5, #0x24]
	bl ov25_02255940
	ldr r0, [r6, #0]
	ldr r1, [r6, #8]
	mov r2, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl ov25_02255938
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
	bl ov25_022553A0
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
	bl ov25_022558B0
	str r7, [r5, #0x24]
_022566C0:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _022566B2
	add r6, #0x54
	add r0, r6, #0
	bl ov25_022559B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov54_022566A8

	.rodata


	.global Unk_ov54_02256710
Unk_ov54_02256710: ; 0x02256710
	.incbin "incbin/overlay54_rodata.bin", 0x3C, 0x58 - 0x3C

	.global Unk_ov54_0225672C
Unk_ov54_0225672C: ; 0x0225672C
	.incbin "incbin/overlay54_rodata.bin", 0x58, 0x7C - 0x58

	.global Unk_ov54_02256750
Unk_ov54_02256750: ; 0x02256750
	.incbin "incbin/overlay54_rodata.bin", 0x7C, 0xC0

