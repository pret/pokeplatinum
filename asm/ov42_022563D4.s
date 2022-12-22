	.include "macros/function.inc"
	.include "include/ov42_022563D4.inc"

	

	.text


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
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
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
	bl ov25_02255958
	add r2, r4, #0
	ldr r0, [r4, #0x20]
	ldr r1, _02256470 ; =0x022566B4
	add r2, #0x28
	bl ov25_02255810
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225646A
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl ov25_022558C4
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
	bl ov25_022558B0
	add r4, #0x28
	add r0, r4, #0
	bl ov25_022559B0
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
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022564C0: .word 0x022566E0
	thumb_func_end ov42_022564A0

	thumb_func_start ov42_022564C4
ov42_022564C4: ; 0x022564C4
	ldr r3, _022564CC ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022564CC: .word ov25_02255130
	thumb_func_end ov42_022564C4

	thumb_func_start ov42_022564D0
ov42_022564D0: ; 0x022564D0
	ldr r3, _022564D8 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022564D8: .word ov25_02255154
	thumb_func_end ov42_022564D0

	thumb_func_start ov42_022564DC
ov42_022564DC: ; 0x022564DC
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov42_022564DC

	thumb_func_start ov42_022564F0
ov42_022564F0: ; 0x022564F0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
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
	bl ov25_022546B8
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
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _0225659C
	cmp r0, #1
	beq _022565A6
	pop {r3, r4, r5, pc}
_0225659C:
	mov r0, #1
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl ov25_0225524C
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
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r6, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _022565EC
	cmp r0, #1
	beq _02256610
	cmp r0, #2
	beq _02256690
	pop {r4, r5, r6, pc}
_022565EC:
	ldr r0, _02256698 ; =0x00000675
	bl ov25_02254424
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov25_022558C4
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [r4, #0x3c]
	ldr r0, _0225669C ; =0x02256720
	ldr r0, [r0, #0]
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x44]
	add r0, r5, #0
	bl ov25_0225524C
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
	bl _s32_div_f
	neg r1, r0
	ldr r0, _022566A0 ; =0xFFFFE000
	str r1, [r4, #0x40]
	cmp r1, r0
	ldr r0, _022566A4 ; =0x00000676
	bge _02256660
	bl ov25_02254424
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [r4, #0x3c]
	b _02256682
_02256660:
	bl ov25_02254424
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0225666E
	mov r1, #1
	b _02256670
_0225666E:
	mov r1, #2
_02256670:
	ldr r0, [r4, #0x24]
	bl ov25_022558C4
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov25_0225524C
_02256682:
	mov r1, #7
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x3c]
	lsl r1, r1, #0x10
	bl ov25_02255900
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

	.rodata


	.global Unk_ov42_022566B4
Unk_ov42_022566B4: ; 0x022566B4
	.incbin "incbin/overlay42_rodata.bin", 0xC, 0x1C - 0xC

	.global Unk_ov42_022566C4
Unk_ov42_022566C4: ; 0x022566C4
	.incbin "incbin/overlay42_rodata.bin", 0x1C, 0x38 - 0x1C

	.global Unk_ov42_022566E0
Unk_ov42_022566E0: ; 0x022566E0
	.incbin "incbin/overlay42_rodata.bin", 0x38, 0x30


	.bss


	.global Unk_ov42_02256720
Unk_ov42_02256720: ; 0x02256720
	.space 0x4

	.global Unk_ov42_02256724
Unk_ov42_02256724: ; 0x02256724
	.space 0x4

