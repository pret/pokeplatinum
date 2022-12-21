	.include "macros/function.inc"
	.include "include/unk_020363E8.inc"

	

	.text


	thumb_func_start sub_020363E8
sub_020363E8: ; 0x020363E8
	push {r4, lr}
	ldr r1, _02036430 ; =0x021C07D0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02036404
	ldr r1, _02036434 ; =0x00000263
	bl sub_02018144
	ldr r1, _02036430 ; =0x021C07D0
	ldr r2, _02036434 ; =0x00000263
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
_02036404:
	ldr r1, _02036430 ; =0x021C07D0
	mov r3, #0
	mov r0, #0xff
_0203640A:
	ldr r2, [r1, #0]
	add r2, r2, r3
	add r3, r3, #1
	strb r0, [r2, #0x10]
	cmp r3, #8
	blt _0203640A
	ldr r3, _02036430 ; =0x021C07D0
	mov r1, #0x26
	ldr r2, [r3, #0]
	lsl r1, r1, #4
	strb r0, [r2, r1]
	ldr r4, [r3, #0]
	add r2, r1, #1
	strb r0, [r4, r2]
	ldr r2, [r3, #0]
	mov r4, #0
	add r0, r1, #2
	strb r4, [r2, r0]
	pop {r4, pc}
	; .align 2, 0
_02036430: .word 0x021C07D0
_02036434: .word 0x00000263
	thumb_func_end sub_020363E8

	thumb_func_start sub_02036438
sub_02036438: ; 0x02036438
	push {r3, lr}
	ldr r0, _0203644C ; =0x021C07D0
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0203644C ; =0x021C07D0
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_0203644C: .word 0x021C07D0
	thumb_func_end sub_02036438

	thumb_func_start sub_02036450
sub_02036450: ; 0x02036450
	ldr r0, _02036460 ; =0x021C07D0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203645C
	mov r0, #1
	bx lr
_0203645C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02036460: .word 0x021C07D0
	thumb_func_end sub_02036450

	thumb_func_start sub_02036464
sub_02036464: ; 0x02036464
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldrb r1, [r2]
	add r5, r0, #0
	add r0, sp, #0
	strb r1, [r0]
	bl sub_0203608C
	cmp r0, #0
	bne _020364BE
	add r0, sp, #0
	strb r5, [r0, #1]
	ldrb r1, [r0]
	strb r1, [r0, #2]
	add r1, sp, #0
	mov r0, #0x12
	add r1, #1
	bl sub_02035B48
	ldr r6, _020364C4 ; =0x021C07D0
	add r4, sp, #0
	ldr r0, [r6, #0]
	ldrb r1, [r4]
	add r0, r0, r5
	mov r5, #0
	strb r1, [r0, #0x10]
_02036498:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _020364B0
	ldr r0, [r6, #0]
	ldrb r1, [r4]
	add r0, r0, r5
	ldrb r0, [r0, #0x10]
	cmp r1, r0
	bne _020364BE
_020364B0:
	add r5, r5, #1
	cmp r5, #8
	blt _02036498
	mov r0, #0x11
	add r1, sp, #0
	bl sub_02035B48
_020364BE:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020364C4: .word 0x021C07D0
	thumb_func_end sub_02036464

	thumb_func_start sub_020364C8
sub_020364C8: ; 0x020364C8
	ldr r0, _020364D8 ; =0x021C07D0
	ldrb r3, [r2, #1]
	ldr r1, [r0, #0]
	ldrb r0, [r2]
	add r0, r1, r0
	strb r3, [r0, #0x10]
	bx lr
	nop
_020364D8: .word 0x021C07D0
	thumb_func_end sub_020364C8

	thumb_func_start sub_020364DC
sub_020364DC: ; 0x020364DC
	ldr r0, _020364EC ; =0x021C07D0
	ldrb r2, [r2]
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	nop
_020364EC: .word 0x021C07D0
	thumb_func_end sub_020364DC

	thumb_func_start sub_020364F0
sub_020364F0: ; 0x020364F0
	ldr r2, _02036504 ; =0x021C07D0
	ldr r1, _02036508 ; =0x00000261
	ldr r3, [r2, #0]
	strb r0, [r3, r1]
	ldr r2, [r2, #0]
	mov r3, #1
	add r0, r1, #1
	strb r3, [r2, r0]
	bx lr
	nop
_02036504: .word 0x021C07D0
_02036508: .word 0x00000261
	thumb_func_end sub_020364F0

	thumb_func_start sub_0203650C
sub_0203650C: ; 0x0203650C
	push {r3, lr}
	ldr r0, _02036538 ; =0x021C07D0
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02036536
	ldr r1, _0203653C ; =0x00000262
	ldrb r0, [r2, r1]
	cmp r0, #0
	beq _02036536
	sub r1, r1, #1
	mov r0, #0x10
	add r1, r2, r1
	bl sub_020360D0
	cmp r0, #0
	beq _02036536
	ldr r0, _02036538 ; =0x021C07D0
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0203653C ; =0x00000262
	strb r2, [r1, r0]
_02036536:
	pop {r3, pc}
	; .align 2, 0
_02036538: .word 0x021C07D0
_0203653C: .word 0x00000262
	thumb_func_end sub_0203650C

	thumb_func_start sub_02036540
sub_02036540: ; 0x02036540
	ldr r1, _02036560 ; =0x021C07D0
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _0203654C
	mov r0, #1
	bx lr
_0203654C:
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	cmp r1, r0
	bne _0203655A
	mov r0, #1
	bx lr
_0203655A:
	mov r0, #0
	bx lr
	nop
_02036560: .word 0x021C07D0
	thumb_func_end sub_02036540

	thumb_func_start sub_02036564
sub_02036564: ; 0x02036564
	ldr r1, _02036570 ; =0x021C07D0
	ldr r1, [r1, #0]
	add r0, r1, r0
	ldrb r0, [r0, #0x10]
	bx lr
	nop
_02036570: .word 0x021C07D0
	thumb_func_end sub_02036564

	thumb_func_start sub_02036574
sub_02036574: ; 0x02036574
	push {r3, r4}
	lsl r4, r0, #1
	ldr r0, _0203658C ; =0x021C07D0
	ldrb r3, [r2]
	ldr r1, [r0, #0]
	strb r3, [r1, r4]
	ldr r0, [r0, #0]
	ldrb r1, [r2, #1]
	add r0, r0, r4
	strb r1, [r0, #1]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0203658C: .word 0x021C07D0
	thumb_func_end sub_02036574

	thumb_func_start sub_02036590
sub_02036590: ; 0x02036590
	mov r0, #2
	bx lr
	thumb_func_end sub_02036590

	thumb_func_start sub_02036594
sub_02036594: ; 0x02036594
	push {r3, lr}
	add r2, sp, #0
	strb r0, [r2]
	strb r1, [r2, #1]
	mov r0, #0x13
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02036594

	thumb_func_start sub_020365A8
sub_020365A8: ; 0x020365A8
	ldr r2, _020365CC ; =0x021C07D0
	ldr r3, [r2, #0]
	cmp r3, #0
	bne _020365B6
	mov r0, #0
	mvn r0, r0
	bx lr
_020365B6:
	lsl r2, r0, #1
	ldrb r0, [r3, r2]
	cmp r1, r0
	bne _020365C4
	add r0, r3, r2
	ldrb r0, [r0, #1]
	bx lr
_020365C4:
	mov r0, #0
	mvn r0, r0
	bx lr
	nop
_020365CC: .word 0x021C07D0
	thumb_func_end sub_020365A8

	thumb_func_start sub_020365D0
sub_020365D0: ; 0x020365D0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _020365F0 ; =0x021C07D0
	add r5, r4, #0
	add r7, r4, #0
_020365DA:
	ldr r0, [r6, #0]
	add r1, r7, #0
	add r0, r0, r5
	mov r2, #2
	bl sub_020C4CF4
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #8
	blt _020365DA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020365F0: .word 0x021C07D0
	thumb_func_end sub_020365D0

	thumb_func_start sub_020365F4
sub_020365F4: ; 0x020365F4
	push {r3, r4}
	mov r4, #0
	mov r0, #0x96
	ldr r1, _02036610 ; =0x021C07D0
	add r3, r4, #0
	lsl r0, r0, #2
_02036600:
	ldr r2, [r1, #0]
	add r2, r2, r4
	add r4, r4, #1
	strb r3, [r2, r0]
	cmp r4, #8
	blt _02036600
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02036610: .word 0x021C07D0
	thumb_func_end sub_020365F4

	thumb_func_start sub_02036614
sub_02036614: ; 0x02036614
	push {r4, lr}
	ldr r2, _02036648 ; =0x021C07D0
	ldr r3, [r2, #0]
	cmp r3, #0
	beq _02036642
	add r4, r0, #0
	mov r2, #0x48
	mul r4, r2
	add r3, #0x18
	add r0, r1, #0
	add r1, r3, r4
	mov r2, #0x46
	bl sub_020C4DB0
	ldr r1, _02036648 ; =0x021C07D0
	mov r0, #0x14
	ldr r1, [r1, #0]
	add r1, #0x18
	add r1, r1, r4
	bl sub_020360D0
	mov r0, #1
	pop {r4, pc}
_02036642:
	mov r0, #0
	pop {r4, pc}
	nop
_02036648: .word 0x021C07D0
	thumb_func_end sub_02036614

	thumb_func_start sub_0203664C
sub_0203664C: ; 0x0203664C
	ldr r1, _0203666C ; =0x021C07D0
	ldr r3, [r1, #0]
	mov r1, #0x96
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02036666
	mov r1, #0x48
	add r3, #0x18
	mul r1, r0
	add r0, r3, r1
	bx lr
_02036666:
	mov r0, #0
	bx lr
	nop
_0203666C: .word 0x021C07D0
	thumb_func_end sub_0203664C

	thumb_func_start sub_02036670
sub_02036670: ; 0x02036670
	push {r3, r4, r5, lr}
	ldr r3, _02036698 ; =0x021C07D0
	add r1, r0, #0
	ldr r0, [r3, #0]
	mov r5, #1
	add r4, r0, r1
	mov r0, #0x96
	lsl r0, r0, #2
	strb r5, [r4, r0]
	ldr r3, [r3, #0]
	add r0, r2, #0
	mov r2, #0x48
	add r3, #0x18
	mul r2, r1
	add r1, r3, r2
	mov r2, #0x46
	bl sub_020C4DB0
	pop {r3, r4, r5, pc}
	nop
_02036698: .word 0x021C07D0
	thumb_func_end sub_02036670

	thumb_func_start sub_0203669C
sub_0203669C: ; 0x0203669C
	mov r0, #0x46
	bx lr
	thumb_func_end sub_0203669C

	.bss


	.global Unk_021C07D0
Unk_021C07D0: ; 0x021C07D0
	.space 0x4

