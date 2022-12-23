	.include "macros/function.inc"
	.include "overlay039/ov39_022563DC.inc"

	

	.text


	thumb_func_start ov39_022563DC
ov39_022563DC: ; 0x022563DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	beq _02256408
	add r0, #8
	mov r1, #4
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	cmp r0, #0
	beq _02256408
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256408:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov39_022563DC

	thumb_func_start ov39_0225640C
ov39_0225640C: ; 0x0225640C
	push {r3, lr}
	cmp r0, #0
	beq _02256416
	bl sub_020181C4
_02256416:
	pop {r3, pc}
	thumb_func_end ov39_0225640C

	thumb_func_start ov39_02256418
ov39_02256418: ; 0x02256418
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256438 ; =0x0225663C
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256438: .word 0x0225663C
	thumb_func_end ov39_02256418

	thumb_func_start ov39_0225643C
ov39_0225643C: ; 0x0225643C
	ldr r3, _02256444 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256444: .word ov25_02255130
	thumb_func_end ov39_0225643C

	thumb_func_start ov39_02256448
ov39_02256448: ; 0x02256448
	ldr r3, _02256450 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256450: .word ov25_02255154
	thumb_func_end ov39_02256448

	thumb_func_start ov39_02256454
ov39_02256454: ; 0x02256454
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov39_02256454

	thumb_func_start ov39_02256468
ov39_02256468: ; 0x02256468
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	add r0, r1, #0
	bl ov25_0225523C
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	bl ov25_02255240
	add r5, r0, #0
	ldr r0, [r6, #4]
	ldr r2, _0225650C ; =0x02256620
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
	ldr r2, [r6, #4]
	mov r0, #0xc
	mov r1, #0x3b
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r6, #4]
	mov r0, #0xc
	mov r1, #0x3a
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	mov r4, #0
	add r7, r4, #0
_022564CA:
	ldr r2, [r5, #4]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov39_0225659C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _022564CA
	ldr r0, [r6, #4]
	mov r1, #6
	bl sub_02019448
	ldr r0, _02256510 ; =0x04001000
	ldr r1, _02256514 ; =0xFFFFE0FF
	ldr r2, [r0, #0]
	ldr r4, [r0, #0]
	add r3, r2, #0
	and r3, r1
	lsl r1, r4, #0x13
	lsr r2, r1, #0x1b
	mov r1, #4
	orr r1, r2
	lsl r1, r1, #8
	orr r1, r3
	str r1, [r0, #0]
	ldr r0, [sp, #0x10]
	str r4, [sp, #0x14]
	bl ov39_02256454
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225650C: .word 0x02256620
_02256510: .word 0x04001000
_02256514: .word 0xFFFFE0FF
	thumb_func_end ov39_02256468

	thumb_func_start ov39_02256518
ov39_02256518: ; 0x02256518
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov39_02256454
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov39_02256518

	thumb_func_start ov39_02256534
ov39_02256534: ; 0x02256534
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r3, r0, #0
	ldrh r1, [r3, #0x1c]
	add r0, r4, #0
	lsl r2, r1, #2
	add r2, r3, r2
	ldr r2, [r2, #4]
	mov r3, #1
	bl ov39_0225659C
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov39_02256454
	pop {r3, r4, r5, pc}
	thumb_func_end ov39_02256534

	thumb_func_start ov39_02256568
ov39_02256568: ; 0x02256568
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r3, r0, #0
	ldrh r1, [r3, #0x1c]
	add r0, r4, #0
	lsl r2, r1, #2
	add r2, r3, r2
	ldr r2, [r2, #4]
	mov r3, #0
	bl ov39_0225659C
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov39_02256454
	pop {r3, r4, r5, pc}
	thumb_func_end ov39_02256568

	thumb_func_start ov39_0225659C
ov39_0225659C: ; 0x0225659C
	push {r4, r5, r6, lr}
	ldr r0, [r0, #4]
	add r5, r1, #0
	mov r1, #6
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02019FE4
	ldr r1, _022565EC ; =0x02256614
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	lsl r1, r1, #1
	add r2, r0, r1
	cmp r4, #0
	beq _022565C4
	add r1, r5, #1
	mov r0, #0x48
	add r5, r1, #0
	mul r5, r0
	b _022565C6
_022565C4:
	mov r5, #0
_022565C6:
	cmp r6, #0
	beq _022565CC
	add r5, #0x24
_022565CC:
	mov r3, #0
	add r0, r3, #0
_022565D0:
	add r1, r0, #0
	add r4, r2, #0
_022565D4:
	add r1, r1, #1
	strh r5, [r4]
	add r5, r5, #1
	add r4, r4, #2
	cmp r1, #6
	blt _022565D4
	add r3, r3, #1
	add r2, #0x40
	cmp r3, #6
	blt _022565D0
	pop {r4, r5, r6, pc}
	nop
_022565EC: .word 0x02256614
	thumb_func_end ov39_0225659C

	.rodata


	.global Unk_ov39_02256614
Unk_ov39_02256614: ; 0x02256614
	.incbin "incbin/overlay39_rodata.bin", 0x24, 0x30 - 0x24

	.global Unk_ov39_02256620
Unk_ov39_02256620: ; 0x02256620
	.incbin "incbin/overlay39_rodata.bin", 0x30, 0x4C - 0x30

	.global Unk_ov39_0225663C
Unk_ov39_0225663C: ; 0x0225663C
	.incbin "incbin/overlay39_rodata.bin", 0x4C, 0x3C

