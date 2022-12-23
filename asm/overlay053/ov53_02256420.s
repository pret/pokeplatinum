	.include "macros/function.inc"
	.include "overlay053/ov53_02256420.inc"

	

	.text


	thumb_func_start ov53_02256420
ov53_02256420: ; 0x02256420
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0xb0
	bl sub_02018144
	add r4, r0, #0
	beq _0225644E
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
_0225644E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov53_02256420

	thumb_func_start ov53_02256454
ov53_02256454: ; 0x02256454
	push {r3, lr}
	cmp r0, #0
	beq _0225645E
	bl sub_020181C4
_0225645E:
	pop {r3, pc}
	thumb_func_end ov53_02256454

	thumb_func_start ov53_02256460
ov53_02256460: ; 0x02256460
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256480 ; =0x02256914
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256480: .word 0x02256914
	thumb_func_end ov53_02256460

	thumb_func_start ov53_02256484
ov53_02256484: ; 0x02256484
	ldr r3, _0225648C ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_0225648C: .word ov25_02255130
	thumb_func_end ov53_02256484

	thumb_func_start ov53_02256490
ov53_02256490: ; 0x02256490
	ldr r3, _02256498 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256498: .word ov25_02255154
	thumb_func_end ov53_02256490

	thumb_func_start ov53_0225649C
ov53_0225649C: ; 0x0225649C
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov53_0225649C

	thumb_func_start ov53_022564B0
ov53_022564B0: ; 0x022564B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r6, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _0225653C ; =0x022568F8
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
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x7a
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x79
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	add r0, r4, #0
	add r1, r6, #0
	bl ov53_022566AC
	ldr r1, _02256540 ; =0x04001000
	ldr r0, _02256544 ; =0xFFFFE0FF
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
	add r0, r5, #0
	bl ov53_0225649C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0225653C: .word 0x022568F8
_02256540: .word 0x04001000
_02256544: .word 0xFFFFE0FF
	thumb_func_end ov53_022564B0

	thumb_func_start ov53_02256548
ov53_02256548: ; 0x02256548
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	bl ov53_02256840
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov53_0225649C
	pop {r3, r4, r5, pc}
	thumb_func_end ov53_02256548

	thumb_func_start ov53_02256568
ov53_02256568: ; 0x02256568
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r0, r7, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r7, #0
	bl ov25_02255240
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022565BC
	mov r1, #0
	add r2, r1, #0
	bl sub_02079D8C
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xac
	mov r2, #1
	ldr r0, [r0, #0]
	add r1, sp, #0
	add r3, r2, #0
	bl ov25_022553A0
	mov r1, #0
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	add r1, r1, #1
	bl ov25_02255938
	add r5, #0x34
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov53_02256874
	b _022565D8
_022565BC:
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl ov25_02255914
	mov r4, #0
	mov r6, #1
_022565C8:
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl ov25_02255914
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _022565C8
_022565D8:
	add r0, r7, #0
	bl ov53_0225649C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov53_02256568

	thumb_func_start ov53_022565E0
ov53_022565E0: ; 0x022565E0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r0, r7, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r7, #0
	bl ov25_02255240
	add r6, r0, #0
	add r0, r7, #0
	bl ov25_02255248
	add r5, r0, #0
	beq _02256604
	cmp r5, #0x10
	beq _02256682
	b _02256648
_02256604:
	ldr r0, [r6, #0x24]
	add r2, r4, #0
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r1, [r0, #0x24]
	add r0, r4, #0
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x9c
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r1, #0xa4
	add r2, #0xa0
	bl ov25_02255908
	ldr r0, [r6, #0x24]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r0, [r0, #8]
	bl ov25_02254444
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, #6
	bl ov25_022558C4
	add r0, r7, #0
	bl ov25_0225524C
	add r5, r5, #1
_02256648:
	mov r0, #0x2d
	lsl r0, r0, #0xa
	add r1, r5, #0
	mul r1, r0
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r1, r0
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bl sub_0201D15C
	add r2, r0, #0
	mov r1, #0x18
	mul r2, r1
	add r0, r4, #0
	add r1, r4, #0
	add r4, #0xa0
	add r0, #0x9c
	add r1, #0xa4
	ldr r3, [r4, #0]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	sub r2, r3, r2
	bl ov25_02255900
	add r0, r7, #0
	bl ov25_0225524C
	pop {r3, r4, r5, r6, r7, pc}
_02256682:
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0x9c
	add r1, #0xa4
	add r2, #0xa0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov25_02255900
	add r4, #0x9c
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov25_022558C4
	add r0, r7, #0
	bl ov53_0225649C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov53_022565E0

	thumb_func_start ov53_022566AC
ov53_022566AC: ; 0x022566AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r0, #0
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	str r1, [sp, #0xc]
	add r0, #0x78
	mov r1, #0xc
	mov r2, #5
	mov r3, #6
	bl ov25_02255958
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0xc
	mov r2, #0x7b
	mov r3, #0x7c
	bl ov25_02255958
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x7d
	bl sub_02006EC0
	add r1, r4, #0
	lsr r0, r0, #5
	add r1, #0xac
	str r0, [r1, #0]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [sp, #0x30]
	add r3, sp, #0x30
_02256702:
	ldr r0, [r2, #8]
	add r1, r1, #1
	str r0, [r3, #4]
	add r2, r2, #4
	add r3, r3, #4
	cmp r1, #3
	blt _02256702
	mov r7, #0
	add r5, sp, #0x30
	add r6, r4, #0
_02256716:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _0225671E
	mov r0, #1
_0225671E:
	mov r1, #0
	add r2, r1, #0
	bl sub_02079D8C
	add r1, r6, #0
	add r1, #0x8c
	add r7, r7, #1
	str r0, [r1, #0]
	add r5, r5, #4
	add r6, r6, #4
	cmp r7, #4
	blt _02256716
	add r1, r4, #0
	ldr r0, [sp, #0x28]
	add r1, #0x8c
	mov r2, #4
	mov r3, #1
	bl ov25_022553A0
	mov r0, #1
	bl ov25_02255360
	mov r2, #0
	add r0, r2, #0
	add r1, r4, #0
	str r0, [sp, #0x10]
_02256752:
	ldr r0, [sp, #0x10]
	add r2, r2, #1
	str r0, [r1, #0x24]
	add r1, r1, #4
	cmp r2, #0x10
	blt _02256752
	ldr r0, _0225683C ; =0x02256950
	str r4, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	mov r6, #4
	str r0, [sp, #0x1c]
	add r0, sp, #0x30
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x14]
_02256772:
	add r2, r4, #0
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x24]
	add r2, #0x78
	bl ov25_02255810
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x28]
	str r0, [r1, #0x24]
	ldr r1, [sp, #0x1c]
	add r1, r2, r1
	bl ov25_02255940
	add r0, r4, #0
	str r0, [sp, #0x2c]
	add r0, #0x64
	mov r5, #0
	str r0, [sp, #0x2c]
_02256796:
	add r7, r5, r6
	ldr r1, _0225683C ; =0x02256950
	lsl r2, r7, #4
	add r1, r1, r2
	ldr r0, [r4, #0x20]
	ldr r2, [sp, #0x2c]
	bl ov25_02255810
	lsl r1, r7, #2
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, #0x24]
	cmp r5, #3
	blt _02256796
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022567DE
	ldr r0, [sp, #0x20]
	mov r1, #1
	ldr r0, [r0, #0x24]
	bl ov25_02255914
	mov r5, #0
	mov r7, #1
_022567C8:
	add r0, r5, r6
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r1, r7, #0
	bl ov25_02255914
	add r5, r5, #1
	cmp r5, #3
	blt _022567C8
	b _0225680E
_022567DE:
	mov r1, #0
	add r2, r1, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	add r1, r1, #1
	ldr r0, [r0, #0x24]
	bl ov25_02255938
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _022567FE
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #4]
	b _02256802
_022567FE:
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #0x10]
_02256802:
	add r2, r4, #0
	add r2, #0x24
	lsl r0, r6, #2
	add r0, r2, r0
	bl ov53_02256874
_0225680E:
	ldr r0, [sp, #0x24]
	add r6, r6, #3
	add r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _02256772
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225683C: .word 0x02256950
	thumb_func_end ov53_022566AC

	thumb_func_start ov53_02256840
ov53_02256840: ; 0x02256840
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_0225684A:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _02256858
	ldr r0, [r6, #0x20]
	bl ov25_022558B0
	str r7, [r5, #0x24]
_02256858:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _0225684A
	add r0, r6, #0
	add r0, #0x78
	bl ov25_022559B0
	add r6, #0x64
	add r0, r6, #0
	bl ov25_022559B0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov53_02256840

	thumb_func_start ov53_02256874
ov53_02256874: ; 0x02256874
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, _022568DC ; =0x000003E7
	ldr r0, [sp]
	cmp r0, r1
	bls _0225688A
	str r1, [sp]
_0225688A:
	mov r4, #0
	mov r6, #0x64
_0225688E:
	ldr r0, [sp]
	add r1, r6, #0
	bl _u32_div_f
	add r7, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _022568A6
	cmp r7, #0
	bne _022568A6
	cmp r4, #2
	bne _022568B4
_022568A6:
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl ov25_022558C4
	mov r0, #1
	str r0, [sp, #4]
	b _022568BC
_022568B4:
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov25_02255914
_022568BC:
	add r1, r7, #0
	ldr r0, [sp]
	mul r1, r6
	sub r0, r0, r1
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0xa
	add r5, r5, #4
	add r4, r4, #1
	bl _s32_div_f
	add r6, r0, #0
	cmp r4, #3
	blt _0225688E
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022568DC: .word 0x000003E7
	thumb_func_end ov53_02256874

	.rodata


	.global Unk_ov53_022568F8
Unk_ov53_022568F8: ; 0x022568F8
	.incbin "incbin/overlay53_rodata.bin", 0x18, 0x34 - 0x18

	.global Unk_ov53_02256914
Unk_ov53_02256914: ; 0x02256914
	.incbin "incbin/overlay53_rodata.bin", 0x34, 0x70 - 0x34

	.global Unk_ov53_02256950
Unk_ov53_02256950: ; 0x02256950
	.incbin "incbin/overlay53_rodata.bin", 0x70, 0x100

