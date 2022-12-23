	.include "macros/function.inc"
	.include "overlay030/ov30_022563EC.inc"

	

	.text


	thumb_func_start ov30_022563EC
ov30_022563EC: ; 0x022563EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x54
	bl sub_02018144
	add r4, r0, #0
	beq _0225643A
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x48]
	add r0, r4, #0
	bl ov30_022565F4
	cmp r0, #0
	bne _02256428
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_02256428:
	ldr r0, _02256440 ; =ov30_02256460
	add r1, r4, #0
	mov r2, #3
	bl sub_0200D9E8
	str r0, [r4, #0x30]
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225643A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02256440: .word ov30_02256460
	thumb_func_end ov30_022563EC

	thumb_func_start ov30_02256444
ov30_02256444: ; 0x02256444
	push {r4, lr}
	add r4, r0, #0
	beq _0225645E
	bl ov30_02256658
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02256458
	bl sub_0200DA58
_02256458:
	add r0, r4, #0
	bl sub_020181C4
_0225645E:
	pop {r4, pc}
	thumb_func_end ov30_02256444

	thumb_func_start ov30_02256460
ov30_02256460: ; 0x02256460
	bx lr
	; .align 2, 0
	thumb_func_end ov30_02256460

	thumb_func_start ov30_02256464
ov30_02256464: ; 0x02256464
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256484 ; =0x022566C4
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256484: .word 0x022566C4
	thumb_func_end ov30_02256464

	thumb_func_start ov30_02256488
ov30_02256488: ; 0x02256488
	ldr r3, _02256490 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256490: .word ov25_02255130
	thumb_func_end ov30_02256488

	thumb_func_start ov30_02256494
ov30_02256494: ; 0x02256494
	ldr r3, _0225649C ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_0225649C: .word ov25_02255154
	thumb_func_end ov30_02256494

	thumb_func_start ov30_022564A0
ov30_022564A0: ; 0x022564A0
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov30_022564A0

	thumb_func_start ov30_022564B4
ov30_022564B4: ; 0x022564B4
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _0225653C ; =0x02256688
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
	mov r1, #0x17
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
	mov r1, #0x1a
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	add r0, r5, #0
	bl ov30_022565B0
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256540 ; =0x04001000
	ldr r0, _02256544 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #0x14
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov30_022564A0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_0225653C: .word 0x02256688
_02256540: .word 0x04001000
_02256544: .word 0xFFFFE0FF
	thumb_func_end ov30_022564B4

	thumb_func_start ov30_02256548
ov30_02256548: ; 0x02256548
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	bl ov30_022565B0
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov30_022564A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov30_02256548

	thumb_func_start ov30_02256568
ov30_02256568: ; 0x02256568
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02256584
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546F0
	b _0225658C
_02256584:
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
_0225658C:
	add r0, r4, #0
	bl ov30_022564A0
	pop {r4, pc}
	thumb_func_end ov30_02256568

	thumb_func_start ov30_02256594
ov30_02256594: ; 0x02256594
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov30_022564A0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov30_02256594

	thumb_func_start ov30_022565B0
ov30_022565B0: ; 0x022565B0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _022565F0 ; =0x04000280
	ldr r0, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	str r0, [r1, #0x10]
	mov r0, #0xa
	add r1, #0x18
	str r0, [r1, #0]
	str r2, [r1, #4]
	ldr r5, [r4, #0]
	mov r1, #0xc
	ldr r0, [r5, #0]
	bl _u32_div_f
	ldr r2, [r5, #4]
	ldr r0, [r4, #0x4c]
	lsr r3, r2, #1
	mov r2, #0x1e
	mul r2, r1
	add r2, #0x3c
	add r1, r3, r2
	bl ov25_022558C4
	ldr r1, [r4, #0]
	ldr r0, [r4, #0x50]
	ldr r1, [r1, #4]
	bl ov25_022558C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022565F0: .word 0x04000280
	thumb_func_end ov30_022565B0

	thumb_func_start ov30_022565F4
ov30_022565F4: ; 0x022565F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r7, r0, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x1d
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x34
	mov r1, #0xc
	mov r2, #0x1b
	mov r3, #0x1c
	bl ov25_02255958
	cmp r0, #0
	beq _0225664E
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0x34
	ldr r4, _02256654 ; =0x022566A4
	mov r6, #0
	add r5, r7, #0
	str r0, [sp, #0xc]
_02256632:
	ldr r0, [r7, #0x48]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl ov25_02255810
	str r0, [r5, #0x4c]
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #2
	blt _02256632
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225664E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256654: .word 0x022566A4
	thumb_func_end ov30_022565F4

	thumb_func_start ov30_02256658
ov30_02256658: ; 0x02256658
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x34
	bl ov25_022559B0
	mov r4, #0
	add r5, r6, #0
_02256666:
	ldr r0, [r6, #0x48]
	ldr r1, [r5, #0x4c]
	bl ov25_022558B0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02256666
	pop {r4, r5, r6, pc}
	thumb_func_end ov30_02256658

	.rodata


	.global Unk_ov30_02256688
Unk_ov30_02256688: ; 0x02256688
	.incbin "incbin/overlay30_rodata.bin", 0x10, 0x2C - 0x10

	.global Unk_ov30_022566A4
Unk_ov30_022566A4: ; 0x022566A4
	.incbin "incbin/overlay30_rodata.bin", 0x2C, 0x4C - 0x2C

	.global Unk_ov30_022566C4
Unk_ov30_022566C4: ; 0x022566C4
	.incbin "incbin/overlay30_rodata.bin", 0x4C, 0x3C

