	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov49_022563D4
ov49_022563D4: ; 0x022563D4
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
	bl ov49_02256410
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225640A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov49_022563D4

	thumb_func_start ov49_02256410
ov49_02256410: ; 0x02256410
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
	mov r1, #0x45
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0xc
	mov r2, #0x43
	mov r3, #0x44
	bl ov25_02255958
	add r2, r5, #0
	ldr r0, [r5, #0x20]
	ldr r1, _02256460 ; =0x022565E0
	add r2, #0x28
	bl ov25_02255810
	str r0, [r5, #0x24]
	ldr r1, [r4, #0]
	mov r2, #0x25
	lsl r1, r1, #4
	add r1, #0x38
	lsl r1, r1, #0xc
	lsl r2, r2, #0xe
	bl ov25_02255900
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02256460: .word 0x022565E0
	thumb_func_end ov49_02256410

	thumb_func_start ov49_02256464
ov49_02256464: ; 0x02256464
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _02256474
	ldr r0, [r4, #0x20]
	bl ov25_022558B0
_02256474:
	add r4, #0x28
	add r0, r4, #0
	bl ov25_022559B0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov49_02256464

	thumb_func_start ov49_02256480
ov49_02256480: ; 0x02256480
	push {r4, lr}
	add r4, r0, #0
	beq _02256490
	bl ov49_02256464
	add r0, r4, #0
	bl sub_020181C4
_02256490:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov49_02256480

	thumb_func_start ov49_02256494
ov49_02256494: ; 0x02256494
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022564B4 ; =0x0225660C
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022564B4: .word 0x0225660C
	thumb_func_end ov49_02256494

	thumb_func_start ov49_022564B8
ov49_022564B8: ; 0x022564B8
	ldr r3, _022564C0 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022564C0: .word ov25_02255130
	thumb_func_end ov49_022564B8

	thumb_func_start ov49_022564C4
ov49_022564C4: ; 0x022564C4
	ldr r3, _022564CC ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022564CC: .word ov25_02255154
	thumb_func_end ov49_022564C4

	thumb_func_start ov49_022564D0
ov49_022564D0: ; 0x022564D0
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov49_022564D0

	thumb_func_start ov49_022564E4
ov49_022564E4: ; 0x022564E4
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r4, #0
	bl ov25_02255240
	ldr r0, [r5, #4]
	ldr r2, _0225656C ; =0x022565F0
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
	mov r1, #0x42
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
	mov r1, #0x41
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256570 ; =0x04001000
	ldr r0, _02256574 ; =0xFFFFE0FF
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
	bl ov49_022564D0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_0225656C: .word 0x022565F0
_02256570: .word 0x04001000
_02256574: .word 0xFFFFE0FF
	thumb_func_end ov49_022564E4

	thumb_func_start ov49_02256578
ov49_02256578: ; 0x02256578
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov49_022564D0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov49_02256578

	thumb_func_start ov49_02256594
ov49_02256594: ; 0x02256594
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
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r1, [r4, #0]
	mov r2, #0x25
	lsl r1, r1, #4
	add r1, #0x38
	ldr r0, [r5, #0x24]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xe
	bl ov25_02255900
	add r0, r6, #0
	bl ov49_022564D0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022565D0: .word 0x00000663
	thumb_func_end ov49_02256594

	.rodata


	.global Unk_ov49_022565E0
Unk_ov49_022565E0: ; 0x022565E0
	.incbin "incbin/overlay49_rodata.bin", 0xC, 0x1C - 0xC

	.global Unk_ov49_022565F0
Unk_ov49_022565F0: ; 0x022565F0
	.incbin "incbin/overlay49_rodata.bin", 0x1C, 0x38 - 0x1C

	.global Unk_ov49_0225660C
Unk_ov49_0225660C: ; 0x0225660C
	.incbin "incbin/overlay49_rodata.bin", 0x38, 0x30

