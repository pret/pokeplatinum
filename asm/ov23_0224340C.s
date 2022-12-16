	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov23_0224340C
ov23_0224340C: ; 0x0224340C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022434AC ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298B0
	mov r4, #0
	ldr r7, _022434AC ; =0x02257760
	add r6, r0, #0
	add r5, r4, #0
	str r4, [sp]
_02243426:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029030
	ldr r1, [r7, #4]
	add r2, r1, r5
	mov r1, #0xaa
	lsl r1, r1, #2
	strb r0, [r2, r1]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202903C
	ldr r1, [r7, #4]
	add r2, r1, r5
	mov r1, #0xa9
	lsl r1, r1, #2
	strh r0, [r2, r1]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202905C
	ldr r1, [r7, #4]
	add r2, r1, r5
	ldr r1, _022434B0 ; =0x000002A6
	strh r0, [r2, r1]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202907C
	ldr r1, [r7, #4]
	add r2, r1, r5
	ldr r1, _022434B4 ; =0x000002A9
	strb r0, [r2, r1]
	ldr r1, [r7, #4]
	ldr r0, _022434B8 ; =0x00000B46
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224349A
	mov r0, #0xaa
	add r2, r1, r5
	lsl r0, r0, #2
	ldrb r3, [r2, r0]
	cmp r3, #0
	beq _0224349A
	ldr r1, _022434B0 ; =0x000002A6
	sub r0, r0, #4
	ldrh r0, [r2, r0]
	ldrh r1, [r2, r1]
	mov r2, #1
	bl ov23_02244E68
	ldr r2, [r7, #4]
	ldr r1, [sp]
	add r2, r2, r1
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r2, r1]
_0224349A:
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #4
	add r5, r5, #6
	str r0, [sp]
	cmp r4, #0x10
	blt _02243426
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022434AC: .word 0x02257760
_022434B0: .word 0x000002A6
_022434B4: .word 0x000002A9
_022434B8: .word 0x00000B46
	thumb_func_end ov23_0224340C

	thumb_func_start ov23_022434BC
ov23_022434BC: ; 0x022434BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02243514 ; =0x02257760
	ldr r2, [r1, #4]
	cmp r2, #0
	bne _02243510
	ldr r2, _02243518 ; =0x00000B48
	str r0, [r1, #4]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _02243514 ; =0x02257760
	ldr r0, [r0, #4]
	str r4, [r0, #0x40]
	add r0, r4, #0
	bl sub_0203D174
	bl sub_020298B0
	ldr r2, _02243514 ; =0x02257760
	mov r1, #0xa3
	ldr r3, [r2, #4]
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r3, r1]
	ldr r1, _0224351C ; =0x00000B04
	mov r5, #0xff
_022434F2:
	ldr r3, [r2, #4]
	add r3, r3, r0
	add r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, #8
	blt _022434F2
	ldr r0, [r4, #0x24]
	bl ov5_021EB0C8
	add r4, #0x8c
	str r0, [r4, #0]
	bl ov23_02243754
	bl ov23_0224340C
_02243510:
	pop {r3, r4, r5, pc}
	nop
_02243514: .word 0x02257760
_02243518: .word 0x00000B48
_0224351C: .word 0x00000B04
	thumb_func_end ov23_022434BC

	thumb_func_start ov23_02243520
ov23_02243520: ; 0x02243520
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022435A0 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	add r0, #0x8c
	bl ov5_021EB184
	bl ov23_0224382C
	bl ov23_02248BD0
	mov r5, #0
	mov r7, #0xc1
	lsl r7, r7, #2
	ldr r1, _022435A0 ; =0x02257760
	add r6, r5, #0
	add r2, r5, #0
	add r0, r7, #0
_02243544:
	ldr r3, [r1, #4]
	add r4, r3, r6
	ldr r3, [r4, r0]
	cmp r3, #0
	beq _02243550
	str r2, [r4, r7]
_02243550:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #0x10
	blt _02243544
	ldr r0, _022435A0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243576
	bl sub_0200DA58
	ldr r0, _022435A0 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	str r2, [r1, r0]
_02243576:
	ldr r0, _022435A0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243594
	bl sub_020181C4
	ldr r0, _022435A0 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r2, [r1, r0]
_02243594:
	ldr r0, _022435A0 ; =0x02257760
	mov r2, #1
	ldr r1, [r0, #4]
	ldr r0, _022435A4 ; =0x00000B46
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022435A0: .word 0x02257760
_022435A4: .word 0x00000B46
	thumb_func_end ov23_02243520

	thumb_func_start ov23_022435A8
ov23_022435A8: ; 0x022435A8
	push {r3, lr}
	ldr r0, _022435D4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x24]
	bl ov5_021EB0C8
	ldr r1, _022435D4 ; =0x02257760
	ldr r2, [r1, #4]
	ldr r2, [r2, #0x40]
	add r2, #0x8c
	str r0, [r2, #0]
	ldr r1, [r1, #4]
	ldr r0, _022435D8 ; =0x00000B46
	mov r2, #0
	strb r2, [r1, r0]
	bl ov23_0224340C
	bl ov23_02243754
	pop {r3, pc}
	nop
_022435D4: .word 0x02257760
_022435D8: .word 0x00000B46
	thumb_func_end ov23_022435A8

	thumb_func_start ov23_022435DC
ov23_022435DC: ; 0x022435DC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _02243668 ; =0x02257760
	add r5, r4, #0
	add r7, r4, #0
_022435E6:
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243602
	bl sub_0207136C
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0xc1
	lsl r0, r0, #2
	str r7, [r1, r0]
_02243602:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _022435E6
	bl ov23_02248BD0
	bl ov23_0224382C
	ldr r0, _02243668 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	add r0, #0x8c
	bl ov5_021EB184
	ldr r0, _02243668 ; =0x02257760
	ldr r1, _0224366C ; =0x00000B34
	ldr r3, [r0, #4]
	ldrh r2, [r3, r1]
	cmp r2, #0xa
	blo _02243634
	add r1, r1, #2
	ldrb r1, [r3, r1]
	ldr r0, [r3, #0x40]
	bl sub_0206DEEC
_02243634:
	ldr r0, _02243668 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243646
	bl sub_0200DA58
_02243646:
	ldr r0, _02243668 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243658
	bl sub_020181C4
_02243658:
	ldr r0, _02243668 ; =0x02257760
	ldr r0, [r0, #4]
	bl sub_020181C4
	ldr r0, _02243668 ; =0x02257760
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243668: .word 0x02257760
_0224366C: .word 0x00000B34
	thumb_func_end ov23_022435DC

	thumb_func_start ov23_02243670
ov23_02243670: ; 0x02243670
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _022436E4 ; =0x02257760
	add r5, r4, #0
	add r7, r4, #0
_0224367A:
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243696
	bl sub_0207136C
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0xc1
	lsl r0, r0, #2
	str r7, [r1, r0]
_02243696:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _0224367A
	bl ov23_02248BD0
	bl ov23_0224340C
	mov r4, #0
	ldr r2, _022436E4 ; =0x02257760
	ldr r0, _022436E8 ; =0x00000B3C
	add r1, r4, #0
_022436AE:
	ldr r3, [r2, #4]
	add r3, r3, r4
	add r4, r4, #1
	strb r1, [r3, r0]
	cmp r4, #8
	blt _022436AE
	ldr r0, _022436E4 ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r0, r2, r0
	mov r2, #0x12
	lsl r2, r2, #6
	bl sub_020C4CF4
	ldr r0, _022436E4 ; =0x02257760
	mov r2, #3
	ldr r1, [r0, #4]
	ldr r0, _022436EC ; =0x000007C4
	lsl r2, r2, #8
	add r0, r1, r0
	mov r1, #0
	bl sub_020C4CF4
	bl ov23_02243CE8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022436E4: .word 0x02257760
_022436E8: .word 0x00000B3C
_022436EC: .word 0x000007C4
	thumb_func_end ov23_02243670

	thumb_func_start ov23_022436F0
ov23_022436F0: ; 0x022436F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224374C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r2, r1, r0
	lsl r1, r4, #4
	mov r0, #6
	mul r0, r1
	add r1, r2, r0
	mov r2, #0
	add r0, r2, #0
_0224370A:
	add r2, r2, #1
	strb r0, [r1, #4]
	add r1, r1, #6
	cmp r2, #0x10
	blt _0224370A
	add r0, r4, #0
	bl ov23_02243970
	ldr r0, _0224374C ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _02243750 ; =0x00000B3C
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224374A
	add r0, r4, #0
	bl ov23_0224AD98
	ldr r1, _0224374C ; =0x02257760
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r2, r1, r4
	ldr r1, _02243750 ; =0x00000B3C
	ldrb r1, [r2, r1]
	bl ov23_02244844
	ldr r0, _0224374C ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _02243750 ; =0x00000B3C
	strb r2, [r1, r0]
_0224374A:
	pop {r4, pc}
	; .align 2, 0
_0224374C: .word 0x02257760
_02243750: .word 0x00000B3C
	thumb_func_end ov23_022436F0

	thumb_func_start ov23_02243754
ov23_02243754: ; 0x02243754
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	mov r7, #6
	ldr r6, _02243828 ; =0x02257760
	add r5, r4, #0
	lsl r7, r7, #6
_02243762:
	mov r0, #1
	add r1, r4, #0
	mov r2, #4
	bl sub_02009714
	ldr r1, [r6, #4]
	add r4, r4, #1
	add r1, r1, r5
	add r5, r5, #4
	str r0, [r1, r7]
	cmp r4, #4
	blt _02243762
	mov r0, #0x32
	mov r1, #4
	bl sub_02006C24
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02243828 ; =0x02257760
	mov r2, #0x11
	ldr r1, [r0, #4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02009A4C
	ldr r2, _02243828 ; =0x02257760
	mov r1, #0x1a
	ldr r3, [r2, #4]
	lsl r1, r1, #4
	str r0, [r3, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r2, #4]
	sub r1, #0x1c
	ldr r0, [r0, r1]
	add r1, r4, #0
	mov r2, #0x12
	bl sub_02009B04
	ldr r2, _02243828 ; =0x02257760
	mov r1, #0x69
	ldr r3, [r2, #4]
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r2, #4]
	sub r1, #0x1c
	ldr r0, [r0, r1]
	add r1, r4, #0
	mov r2, #0x10
	bl sub_02009BC4
	ldr r2, _02243828 ; =0x02257760
	mov r1, #0x6a
	ldr r3, [r2, #4]
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r2, #4]
	sub r1, #0x1c
	ldr r0, [r0, r1]
	add r1, r4, #0
	mov r2, #0xf
	bl sub_02009BC4
	ldr r1, _02243828 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243828: .word 0x02257760
	thumb_func_end ov23_02243754

	thumb_func_start ov23_0224382C
ov23_0224382C: ; 0x0224382C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #6
	ldr r6, _0224384C ; =0x02257760
	add r5, r4, #0
	lsl r7, r7, #6
_02243838:
	ldr r0, [r6, #4]
	add r0, r0, r5
	ldr r0, [r0, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02243838
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224384C: .word 0x02257760
	thumb_func_end ov23_0224382C

	thumb_func_start ov23_02243850
ov23_02243850: ; 0x02243850
	ldr r3, _02243854 ; =sub_02059514
	bx r3
	; .align 2, 0
_02243854: .word sub_02059514
	thumb_func_end ov23_02243850

	thumb_func_start ov23_02243858
ov23_02243858: ; 0x02243858
	ldr r0, _0224385C ; =0x00000B48
	bx lr
	; .align 2, 0
_0224385C: .word 0x00000B48
	thumb_func_end ov23_02243858

	thumb_func_start ov23_02243860
ov23_02243860: ; 0x02243860
	mov r0, #0x60
	bx lr
	thumb_func_end ov23_02243860

	thumb_func_start ov23_02243864
ov23_02243864: ; 0x02243864
	push {r3, r4}
	ldr r3, _02243890 ; =0x02257760
	lsl r1, r1, #2
	ldr r2, [r3, #4]
	add r4, r2, r1
	ldr r2, _02243894 ; =0x000007C4
	ldr r4, [r4, r2]
	cmp r4, #0
	bne _0224387C
	mov r0, #0
	pop {r3, r4}
	bx lr
_0224387C:
	ldrh r4, [r4]
	strh r4, [r0]
	ldr r3, [r3, #4]
	add r1, r3, r1
	ldr r1, [r1, r2]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	pop {r3, r4}
	bx lr
	nop
_02243890: .word 0x02257760
_02243894: .word 0x000007C4
	thumb_func_end ov23_02243864

	thumb_func_start ov23_02243898
ov23_02243898: ; 0x02243898
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	add r0, sp, #0
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldr r1, _02243900 ; =ov23_02243864
	mov r0, #0xc0
	bl ov23_022427DC
	add r0, sp, #0
	bl ov23_02242788
	cmp r0, #0xc0
	bge _022438FE
	ldr r1, _02243904 ; =0x02257760
	mov r3, #0
	ldr r5, [r1, #4]
	ldr r1, _02243908 ; =0x000007C4
_022438C0:
	ldr r2, [r5, r1]
	cmp r2, r4
	beq _022438FE
	add r3, r3, #1
	add r5, r5, #4
	cmp r3, #0xc0
	blt _022438C0
	mov r2, #0xbe
	cmp r0, #0xbe
	bgt _022438EC
	ldr r7, _02243904 ; =0x02257760
	ldr r6, _0224390C ; =0x000007C8
	lsl r3, r2, #2
_022438DA:
	ldr r1, [r7, #4]
	ldr r5, _02243908 ; =0x000007C4
	add r1, r1, r3
	ldr r5, [r1, r5]
	sub r2, r2, #1
	str r5, [r1, r6]
	sub r3, r3, #4
	cmp r2, r0
	bge _022438DA
_022438EC:
	ldr r1, _02243904 ; =0x02257760
	lsl r3, r0, #2
	ldr r0, [r1, #4]
	add r2, r0, r3
	ldr r0, _02243908 ; =0x000007C4
	str r4, [r2, r0]
	ldr r1, [r1, #4]
	add r1, r1, r3
	str r4, [r1, r0]
_022438FE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243900: .word ov23_02243864
_02243904: .word 0x02257760
_02243908: .word 0x000007C4
_0224390C: .word 0x000007C8
	thumb_func_end ov23_02243898

	thumb_func_start ov23_02243910
ov23_02243910: ; 0x02243910
	push {r3, r4, r5, r6}
	ldr r2, _02243964 ; =0x02257760
	mov r1, #0
	ldr r5, [r2, #4]
	ldr r2, _02243968 ; =0x000007C4
	mvn r1, r1
	mov r4, #0
_0224391E:
	ldr r3, [r5, r2]
	cmp r3, r0
	bne _02243928
	add r1, r4, #0
	b _02243930
_02243928:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc0
	blt _0224391E
_02243930:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02243960
	cmp r1, #0xbf
	bge _02243954
	ldr r0, _0224396C ; =0x000007C8
	ldr r3, _02243964 ; =0x02257760
	lsl r6, r1, #2
	sub r2, r0, #4
_02243944:
	ldr r4, [r3, #4]
	add r1, r1, #1
	add r5, r4, r6
	ldr r4, [r5, r0]
	add r6, r6, #4
	str r4, [r5, r2]
	cmp r1, #0xbf
	blt _02243944
_02243954:
	ldr r0, _02243964 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x2b
	lsl r0, r0, #6
	str r2, [r1, r0]
_02243960:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_02243964: .word 0x02257760
_02243968: .word 0x000007C4
_0224396C: .word 0x000007C8
	thumb_func_end ov23_02243910

	thumb_func_start ov23_02243970
ov23_02243970: ; 0x02243970
	push {r3, r4, r5, r6, r7, lr}
	lsl r5, r0, #4
	ldr r7, _022439CC ; =0x02257760
	mov r6, #0
	add r4, r5, #0
_0224397A:
	mov r0, #0xd1
	ldr r1, [r7, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #6
	mul r0, r4
	add r0, r1, r0
	bl ov23_02243910
	add r6, r6, #1
	add r4, r4, #1
	cmp r6, #0x10
	blt _0224397A
	mov r6, #0
	mov r0, #6
	add r7, r5, #0
	add r4, r6, #0
	mul r7, r0
_0224399E:
	ldr r0, _022439CC ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r7, r0
	add r2, r4, r1
	mov r1, #0xd2
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _022439C0
	mov r1, #0xd1
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #6
	mul r0, r5
	add r0, r1, r0
	bl ov23_02243898
_022439C0:
	add r6, r6, #1
	add r4, r4, #6
	add r5, r5, #1
	cmp r6, #0x10
	blt _0224399E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022439CC: .word 0x02257760
	thumb_func_end ov23_02243970

	thumb_func_start ov23_022439D0
ov23_022439D0: ; 0x022439D0
	mov r2, #0
_022439D2:
	ldrb r1, [r0, #4]
	cmp r1, #0
	beq _022439E2
	add r2, r2, #1
	add r0, r0, #6
	cmp r2, #0x10
	blt _022439D2
	mov r0, #0
_022439E2:
	bx lr
	thumb_func_end ov23_022439D0

	thumb_func_start ov23_022439E4
ov23_022439E4: ; 0x022439E4
	mov r2, #0
_022439E6:
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _022439F0
	add r0, r2, #0
	bx lr
_022439F0:
	add r2, r2, #1
	add r0, r0, #6
	cmp r2, #0x10
	blt _022439E6
	mov r0, #0
	mvn r0, r0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022439E4

	thumb_func_start ov23_02243A00
ov23_02243A00: ; 0x02243A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02243A78 ; =0x02257760
	ldr r6, [r1, #4]
	mov r1, #0xd1
	lsl r1, r1, #2
	add r1, r6, r1
	sub r0, r0, r1
	mov r1, #6
	bl sub_020E2178
	add r4, r0, #0
	lsr r0, r4, #4
	str r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #6
	add r5, r4, #0
	mul r5, r0
	mov r0, #0xd2
	mov r2, #0
	add r1, r6, r5
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldr r0, [sp]
	sub r6, r0, #1
	cmp r4, r6
	bhs _02243A5C
	ldr r7, _02243A78 ; =0x02257760
_02243A3C:
	mov r0, #0xd1
	ldr r1, [r7, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	add r2, r4, #1
	mov r0, #6
	mul r0, r2
	add r0, r1, r0
	add r1, r1, r5
	mov r2, #6
	bl sub_020C4DB0
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, r6
	blo _02243A3C
_02243A5C:
	ldr r1, _02243A78 ; =0x02257760
	mov r2, #6
	ldr r3, [r1, #4]
	ldr r1, [sp]
	mov r0, #0
	mul r2, r1
	ldr r1, _02243A7C ; =0x00000342
	add r2, r3, r2
	strb r0, [r2, r1]
	ldr r0, [sp, #4]
	bl ov23_02243970
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243A78: .word 0x02257760
_02243A7C: .word 0x00000342
	thumb_func_end ov23_02243A00

	thumb_func_start ov23_02243A80
ov23_02243A80: ; 0x02243A80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02243AD0 ; =0x02257760
	add r6, r1, #0
	ldr r0, [r0, #4]
	add r7, r2, #0
	ldr r0, [r0, #0x40]
	add r1, r5, #0
	add r2, r6, #0
	str r3, [sp]
	bl sub_02054F68
	cmp r0, #0
	beq _02243AA0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02243AA0:
	add r0, r7, #0
	bl ov23_022439D0
	add r4, r0, #0
	bne _02243ABE
	add r0, r7, #0
	bl ov23_02244EA0
	add r4, r0, #0
	bl ov23_02243A00
	add r0, r4, #0
	bl ov23_022439D0
	add r4, r0, #0
_02243ABE:
	strh r5, [r4]
	ldr r0, [sp]
	strh r6, [r4, #2]
	strb r0, [r4, #4]
	add r0, r4, #0
	bl ov23_02243898
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243AD0: .word 0x02257760
	thumb_func_end ov23_02243A80

	thumb_func_start ov23_02243AD4
ov23_02243AD4: ; 0x02243AD4
	push {r0, r1, r2, r3}
	push {r3, lr}
	mov r0, #0x20
	add r1, sp, #8
	bl sub_020360D0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov23_02243AD4

	thumb_func_start ov23_02243AE8
ov23_02243AE8: ; 0x02243AE8
	ldr r3, _02243AEC ; =ov23_022457FC
	bx r3
	; .align 2, 0
_02243AEC: .word ov23_022457FC
	thumb_func_end ov23_02243AE8

	thumb_func_start ov23_02243AF0
ov23_02243AF0: ; 0x02243AF0
	ldr r1, _02243B04 ; =0x02257760
	ldr r3, _02243B08 ; =sub_02035F58
	ldr r2, [r1, #4]
	mov r1, #0xa9
	lsl r1, r1, #2
	add r1, r2, r1
	mov r0, #0x23
	mov r2, #0x60
	bx r3
	nop
_02243B04: .word 0x02257760
_02243B08: .word sub_02035F58
	thumb_func_end ov23_02243AF0

	thumb_func_start ov23_02243B0C
ov23_02243B0C: ; 0x02243B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02243C30 ; =0x02257760
	add r5, r0, #0
	ldr r1, [r1, #4]
	add r7, r2, #0
	cmp r1, #0
	bne _02243B1E
	b _02243C2A
_02243B1E:
	add r1, sp, #0
	strb r5, [r1, #6]
	mov r2, #3
	strb r2, [r1, #7]
	bl sub_02058EE0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02058F18
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02058DF8
	ldr r1, _02243C34 ; =0x0000FFFF
	cmp r0, r1
	bne _02243B60
	add r0, r5, #0
	bl sub_02058E4C
	ldr r1, _02243C34 ; =0x0000FFFF
	cmp r0, r1
	bne _02243B60
	mov r1, #7
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243B60:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0205900C
	cmp r0, #0xff
	beq _02243B80
	mov r1, #5
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243B80:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02058108
	cmp r0, #0
	beq _02243BA0
	mov r1, #5
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243BA0:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _02243BC0
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243BC0:
	ldr r0, _02243C30 ; =0x02257760
	add r1, r6, #0
	ldr r0, [r0, #4]
	add r2, r4, #0
	ldr r0, [r0, #0x40]
	bl sub_02054F68
	cmp r0, #0
	beq _02243BE6
	mov r1, #6
	add r0, sp, #0
	strb r1, [r0, #7]
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02243BE6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224240C
	cmp r0, #0
	bne _02243C20
	ldr r2, _02243C30 ; =0x02257760
	add r1, r4, #0
	ldr r3, [r2, #4]
	mov r2, #0xd1
	lsl r2, r2, #2
	add r2, r3, r2
	lsl r4, r5, #4
	mov r3, #6
	mul r3, r4
	add r2, r2, r3
	ldrb r3, [r7]
	add r0, r6, #0
	bl ov23_02243A80
	cmp r0, #0
	beq _02243C20
	mov r2, #1
	add r1, sp, #0
	strb r2, [r1, #7]
	add r1, sp, #0
	mov r2, #6
	bl sub_020C4DB0
_02243C20:
	mov r0, #0x22
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
_02243C2A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243C30: .word 0x02257760
_02243C34: .word 0x0000FFFF
	thumb_func_end ov23_02243B0C

	thumb_func_start ov23_02243C38
ov23_02243C38: ; 0x02243C38
	mov r0, #8
	bx lr
	thumb_func_end ov23_02243C38

	thumb_func_start ov23_02243C3C
ov23_02243C3C: ; 0x02243C3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, _02243CE0 ; =0x02257760
	str r1, [sp, #8]
	ldr r0, [r0, #4]
	add r7, r2, #0
	ldr r0, [r0, #0x40]
	add r5, r3, #0
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	str r0, [sp, #0xc]
	cmp r5, #0x40
	blt _02243C60
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02243C60:
	ldr r0, _02243CE0 ; =0x02257760
	ldr r2, [r7, #4]
	ldr r1, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r4, r1, r0
	asr r0, r5, #3
	lsr r0, r0, #0x1c
	add r0, r5, r0
	asr r0, r0, #4
	add r0, #8
	lsl r1, r0, #4
	add r6, r1, #0
	mov r0, #6
	ldr r1, [r7, #0]
	mul r6, r0
	ldr r0, [r7, #8]
	mul r1, r2
	add r0, r0, r1
	str r0, [r7, #0]
	lsr r1, r0, #0x10
	mov r0, #0x1a
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _02243CE4 ; =0x02256788
	ldrb r7, [r0, r1]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov23_0224240C
	cmp r0, #0
	bne _02243CDA
	add r0, r4, r6
	bl ov23_022439D0
	cmp r0, #0
	beq _02243CDA
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r4, r6
	add r3, r7, #0
	bl ov23_02243A80
	cmp r0, #0
	beq _02243CDA
	strb r5, [r0, #5]
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02028EF8
	add sp, #0x10
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02243CDA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243CE0: .word 0x02257760
_02243CE4: .word 0x02256788
	thumb_func_end ov23_02243C3C

	thumb_func_start ov23_02243CE8
ov23_02243CE8: ; 0x02243CE8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02243D4C ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r5, r0, #0
	mov r4, #0
_02243CFA:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02028F40
	add r7, r0, #0
	beq _02243D44
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02028F5C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02028F88
	ldr r2, _02243D4C ; =0x02257760
	add r1, r0, #0
	ldr r3, [r2, #4]
	mov r2, #0xd1
	lsl r2, r2, #2
	add r2, r3, r2
	asr r3, r4, #3
	lsr r3, r3, #0x1c
	add r3, r4, r3
	asr r3, r3, #4
	add r3, #8
	add r0, r6, #0
	lsl r6, r3, #4
	mov r3, #6
	mul r3, r6
	add r2, r2, r3
	add r3, r7, #0
	bl ov23_02243A80
	cmp r0, #0
	beq _02243D44
	strb r4, [r0, #5]
_02243D44:
	add r4, r4, #1
	cmp r4, #0x40
	blt _02243CFA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02243D4C: .word 0x02257760
	thumb_func_end ov23_02243CE8

	thumb_func_start ov23_02243D50
ov23_02243D50: ; 0x02243D50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _02243D9C ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298B0
	mov r4, #0
	add r7, r0, #0
	add r5, r4, #0
_02243D68:
	ldr r0, _02243D9C ; =0x02257760
	mov r1, #0xaa
	ldr r0, [r0, #4]
	mov r3, #0xa9
	add r6, r0, r5
	ldr r0, _02243DA0 ; =0x000002A6
	lsl r1, r1, #2
	ldrh r0, [r6, r0]
	lsl r3, r3, #2
	add r2, r4, #0
	str r0, [sp]
	ldr r0, _02243DA4 ; =0x000002A9
	ldrb r0, [r6, r0]
	str r0, [sp, #4]
	ldrb r1, [r6, r1]
	ldrh r3, [r6, r3]
	add r0, r7, #0
	bl sub_02028FE0
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #0x10
	blt _02243D68
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243D9C: .word 0x02257760
_02243DA0: .word 0x000002A6
_02243DA4: .word 0x000002A9
	thumb_func_end ov23_02243D50

	thumb_func_start ov23_02243DA8
ov23_02243DA8: ; 0x02243DA8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02243E1C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov23_022439D0
	add r5, r0, #0
	bne _02243DE0
	ldr r0, _02243E1C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov23_02244EA0
	bl ov23_02243E20
	ldr r0, _02243E1C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov23_022439D0
	add r5, r0, #0
_02243DE0:
	ldr r0, _02243E1C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov23_022439E4
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #6
	bl sub_020C4DB0
	bl ov23_02243D50
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	ldrb r3, [r5, #4]
	mov r2, #1
	bl ov23_02244E68
	ldr r1, _02243E1C ; =0x02257760
	ldr r2, [r1, #4]
	lsl r1, r4, #2
	add r2, r2, r1
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
	nop
_02243E1C: .word 0x02257760
	thumb_func_end ov23_02243DA8

	thumb_func_start ov23_02243E20
ov23_02243E20: ; 0x02243E20
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _02243ECC ; =0x02257760
	mov r6, #0
	ldr r3, [r2, #4]
	mov r2, #0xa9
	lsl r2, r2, #2
	add r2, r3, r2
	ldrh r3, [r0]
	mvn r6, r6
	mov r1, #0
_02243E34:
	ldrh r4, [r2]
	cmp r3, r4
	bne _02243E46
	ldrh r5, [r0, #2]
	ldrh r4, [r2, #2]
	cmp r5, r4
	bne _02243E46
	add r6, r1, #0
	b _02243E4E
_02243E46:
	add r1, r1, #1
	add r2, r2, #6
	cmp r1, #0x10
	blt _02243E34
_02243E4E:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02243EC8
	add r5, r6, #0
	cmp r6, #0xf
	bge _02243E84
	mov r0, #6
	add r4, r6, #0
	ldr r7, _02243ECC ; =0x02257760
	mul r4, r0
_02243E64:
	mov r0, #0xa9
	ldr r1, [r7, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	add r2, r5, #1
	mov r0, #6
	mul r0, r2
	add r0, r1, r0
	add r1, r1, r4
	mov r2, #6
	bl sub_020C4DB0
	add r5, r5, #1
	add r4, r4, #6
	cmp r5, #0xf
	blt _02243E64
_02243E84:
	ldr r1, _02243ECC ; =0x02257760
	ldr r0, _02243ED0 ; =0x00000302
	ldr r2, [r1, #4]
	mov r3, #0
	strb r3, [r2, r0]
	ldr r1, [r1, #4]
	lsl r4, r6, #2
	add r1, r1, r4
	add r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243EA0
	bl sub_0207136C
_02243EA0:
	cmp r6, #0xf
	bge _02243EBC
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r2, _02243ECC ; =0x02257760
	sub r1, r0, #4
_02243EAC:
	ldr r3, [r2, #4]
	add r6, r6, #1
	add r5, r3, r4
	ldr r3, [r5, r0]
	add r4, r4, #4
	str r3, [r5, r1]
	cmp r6, #0xf
	blt _02243EAC
_02243EBC:
	ldr r0, _02243ECC ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xd
	lsl r0, r0, #6
	str r2, [r1, r0]
_02243EC8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243ECC: .word 0x02257760
_02243ED0: .word 0x00000302
	thumb_func_end ov23_02243E20

	thumb_func_start ov23_02243ED4
ov23_02243ED4: ; 0x02243ED4
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4, #6]
	cmp r1, r0
	bne _02243F6E
	bl sub_020594FC
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _02243F18
	add r0, r4, #0
	bl ov23_02243DA8
	ldrb r0, [r4, #4]
	bl ov23_0224FD68
	bl ov23_0224219C
	ldrb r1, [r4, #4]
	bl ov23_02254098
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x83
	mov r2, #1
	bl ov23_02253F40
	ldr r0, _02243F74 ; =0x00000623
	bl sub_02005748
	pop {r4, pc}
_02243F18:
	cmp r0, #4
	bne _02243F2C
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x49
	mov r2, #1
	bl ov23_02253F40
	pop {r4, pc}
_02243F2C:
	cmp r0, #5
	bne _02243F40
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x37
	mov r2, #1
	bl ov23_02253F40
	pop {r4, pc}
_02243F40:
	cmp r0, #6
	bne _02243F54
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x3c
	mov r2, #1
	bl ov23_02253F40
	pop {r4, pc}
_02243F54:
	cmp r0, #7
	bne _02243F60
	mov r0, #0
	bl ov23_02243850
	pop {r4, pc}
_02243F60:
	bl ov23_0224219C
	ldr r3, _02243F70 ; =ov23_02243850
	mov r1, #0x3b
	mov r2, #1
	bl ov23_02253F40
_02243F6E:
	pop {r4, pc}
	; .align 2, 0
_02243F70: .word ov23_02243850
_02243F74: .word 0x00000623
	thumb_func_end ov23_02243ED4

	thumb_func_start ov23_02243F78
ov23_02243F78: ; 0x02243F78
	ldr r0, _02243F90 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r3, r1, r0
	ldrh r1, [r2]
	mov r0, #6
	mul r0, r1
	add r0, r3, r0
	ldr r3, _02243F94 ; =ov23_02243A00
	bx r3
	nop
_02243F90: .word 0x02257760
_02243F94: .word ov23_02243A00
	thumb_func_end ov23_02243F78

	thumb_func_start ov23_02243F98
ov23_02243F98: ; 0x02243F98
	mov r0, #2
	bx lr
	thumb_func_end ov23_02243F98

	thumb_func_start ov23_02243F9C
ov23_02243F9C: ; 0x02243F9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	lsl r1, r0, #4
	str r0, [sp]
	mov r0, #6
	add r7, r1, #0
	mul r7, r0
	ldr r0, _02244018 ; =0x02257760
	add r5, r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r0, r1, r0
	add r6, r0, r7
	bl sub_0203608C
	cmp r0, #0
	bne _02244012
	cmp r4, #0x60
	beq _02243FCA
	bl sub_02022974
_02243FCA:
	mov r0, #0
	add r4, r0, #0
_02243FCE:
	add r0, r0, #1
	strb r4, [r6, #4]
	add r6, r6, #6
	cmp r0, #0x10
	blt _02243FCE
_02243FD8:
	ldrb r3, [r5, #4]
	cmp r3, #0
	beq _02243FF2
	ldr r2, _02244018 ; =0x02257760
	ldrh r0, [r5]
	ldr r6, [r2, #4]
	mov r2, #0xd1
	lsl r2, r2, #2
	add r2, r6, r2
	ldrh r1, [r5, #2]
	add r2, r2, r7
	bl ov23_02243A80
_02243FF2:
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #0x10
	blt _02243FD8
	ldr r0, [sp]
	add r1, sp, #4
	strb r0, [r1]
	mov r0, #1
	strb r0, [r1, #1]
	mov r0, #0x24
	add r1, sp, #4
	mov r2, #2
	bl sub_02035AC4
	bl ov23_02244638
_02244012:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244018: .word 0x02257760
	thumb_func_end ov23_02243F9C

	thumb_func_start ov23_0224401C
ov23_0224401C: ; 0x0224401C
	push {r4, lr}
	ldr r0, _02244040 ; =0x02257760
	add r4, r2, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224403C
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224403C
	ldr r0, _02244040 ; =0x02257760
	ldrb r2, [r4, #1]
	ldr r1, [r0, #4]
	ldr r0, _02244044 ; =0x00000B45
	strb r2, [r1, r0]
_0224403C:
	pop {r4, pc}
	nop
_02244040: .word 0x02257760
_02244044: .word 0x00000B45
	thumb_func_end ov23_0224401C

	thumb_func_start ov23_02244048
ov23_02244048: ; 0x02244048
	mov r0, #2
	bx lr
	thumb_func_end ov23_02244048

	thumb_func_start ov23_0224404C
ov23_0224404C: ; 0x0224404C
	ldr r0, _02244060 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02244064 ; =0x00000B45
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0224405C
	mov r0, #1
	bx lr
_0224405C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02244060: .word 0x02257760
_02244064: .word 0x00000B45
	thumb_func_end ov23_0224404C

	thumb_func_start ov23_02244068
ov23_02244068: ; 0x02244068
	ldr r0, _02244074 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _02244078 ; =0x00000B45
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02244074: .word 0x02257760
_02244078: .word 0x00000B45
	thumb_func_end ov23_02244068

	thumb_func_start ov23_0224407C
ov23_0224407C: ; 0x0224407C
	mov r0, #4
	bx lr
	thumb_func_end ov23_0224407C

	thumb_func_start ov23_02244080
ov23_02244080: ; 0x02244080
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02244138 ; =0x02257760
	add r6, r2, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298B0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02058EE0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02058F18
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_0224429C
	add r4, r0, #0
	beq _02244132
	add r0, r5, #0
	bl ov23_0224A6B8
	cmp r0, #0
	beq _022440C2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022440C2:
	add r3, sp, #0
	ldrb r2, [r3, #7]
	mov r0, #0xf
	bic r2, r0
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	and r0, r1
	orr r0, r2
	strb r0, [r3, #7]
	add r0, r4, #0
	bl ov23_0224426C
	add r1, sp, #0
	strb r0, [r1, #6]
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #6
	bl sub_020C4DB0
	mov r0, #0x10
	tst r0, r6
	add r1, sp, #0
	beq _022440FC
	ldrb r2, [r1, #7]
	mov r0, #0x40
	orr r0, r2
	strb r0, [r1, #7]
	b _0224410A
_022440FC:
	ldrb r2, [r1, #7]
	mov r0, #0x40
	bic r2, r0
	add r0, r4, #0
	strb r2, [r1, #7]
	bl ov23_02243A00
_0224410A:
	add r1, sp, #0
	ldrb r0, [r1, #6]
	cmp r0, #8
	blo _0224411A
	ldrb r1, [r1, #5]
	add r0, r7, #0
	bl sub_02028FB4
_0224411A:
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	mov r0, #0x33
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244132:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244138: .word 0x02257760
	thumb_func_end ov23_02244080

	thumb_func_start ov23_0224413C
ov23_0224413C: ; 0x0224413C
	mov r0, #8
	bx lr
	thumb_func_end ov23_0224413C

	thumb_func_start ov23_02244140
ov23_02244140: ; 0x02244140
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #8
	blo _02244152
	bl sub_02022974
_02244152:
	ldrb r3, [r4, #7]
	lsl r0, r3, #0x19
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0224417E
	bl sub_0203608C
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, r0
	bne _02244250
	bl ov23_0224219C
	ldr r3, _02244254 ; =ov23_02243850
	mov r1, #0x4e
	mov r2, #1
	bl ov23_02253F40
	bl sub_020594FC
	pop {r3, r4, r5, pc}
_0224417E:
	ldr r1, _02244258 ; =0x02257760
	mov r0, #1
	ldr r2, [r1, #4]
	lsl r1, r3, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _0224425C ; =0x00000B2C
	strb r0, [r2, r1]
	bl sub_0203608C
	ldrb r1, [r4, #6]
	cmp r1, r0
	bne _022441A2
	add r0, r4, #0
	bl ov23_02243E20
	bl ov23_02243D50
_022441A2:
	bl sub_0203608C
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, r0
	bne _02244250
	ldrb r0, [r4, #4]
	bl ov23_0224F730
	cmp r0, #0
	beq _0224423E
	bl sub_0203608C
	ldrb r1, [r4, #6]
	cmp r1, r0
	beq _022441E8
	ldr r0, _02244258 ; =0x02257760
	ldr r2, [r0, #4]
	ldr r0, _02244260 ; =0x00000B34
	ldrh r1, [r2, r0]
	cmp r1, #0
	bne _022441D6
	ldrb r1, [r4, #4]
	add r0, r0, #2
	strb r1, [r2, r0]
_022441D6:
	ldr r0, _02244258 ; =0x02257760
	ldr r1, _02244264 ; =0x0000FFFF
	ldr r3, [r0, #4]
	ldr r0, _02244260 ; =0x00000B34
	ldrh r2, [r3, r0]
	cmp r2, r1
	beq _022441E8
	add r1, r2, #1
	strh r1, [r3, r0]
_022441E8:
	ldr r0, _02244268 ; =0x000005E3
	bl sub_02005748
	bl ov23_0224219C
	add r5, r0, #0
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02254050
	bl ov23_0224219C
	ldrb r2, [r4, #4]
	mov r1, #2
	bl ov23_022541F0
	bl ov23_0224219C
	mov r1, #2
	bl ov23_02254204
	bl ov23_0224219C
	ldrb r1, [r4, #4]
	bl ov23_02254098
	bl ov23_0224219C
	ldr r3, _02244254 ; =ov23_02243850
	mov r1, #0x12
	mov r2, #1
	bl ov23_02253F40
	bl ov23_0224219C
	bl ov23_02253F98
	b _0224424C
_0224423E:
	bl ov23_0224219C
	ldr r3, _02244254 ; =ov23_02243850
	mov r1, #0x4e
	mov r2, #1
	bl ov23_02253F40
_0224424C:
	bl sub_020594FC
_02244250:
	pop {r3, r4, r5, pc}
	nop
_02244254: .word ov23_02243850
_02244258: .word 0x02257760
_0224425C: .word 0x00000B2C
_02244260: .word 0x00000B34
_02244264: .word 0x0000FFFF
_02244268: .word 0x000005E3
	thumb_func_end ov23_02244140

	thumb_func_start ov23_0224426C
ov23_0224426C: ; 0x0224426C
	push {r3, lr}
	ldr r1, _02244298 ; =0x02257760
	mov r3, #0
	ldr r2, [r1, #4]
	mov r1, #0xd1
	lsl r1, r1, #2
	add r1, r2, r1
_0224427A:
	cmp r1, r0
	bne _02244288
	asr r0, r3, #3
	lsr r0, r0, #0x1c
	add r0, r3, r0
	asr r0, r0, #4
	pop {r3, pc}
_02244288:
	add r3, r3, #1
	add r1, r1, #6
	cmp r3, #0xc0
	blt _0224427A
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02244298: .word 0x02257760
	thumb_func_end ov23_0224426C

	thumb_func_start ov23_0224429C
ov23_0224429C: ; 0x0224429C
	push {r3, lr}
	add r2, sp, #0
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r1, _022442CC ; =ov23_02243864
	mov r0, #0xc0
	bl ov23_022427DC
	add r0, sp, #0
	bl ov23_0224271C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022442BE
	mov r0, #0
	pop {r3, pc}
_022442BE:
	ldr r1, _022442D0 ; =0x02257760
	lsl r0, r0, #2
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _022442D4 ; =0x000007C4
	ldr r0, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_022442CC: .word ov23_02243864
_022442D0: .word 0x02257760
_022442D4: .word 0x000007C4
	thumb_func_end ov23_0224429C

	thumb_func_start ov23_022442D8
ov23_022442D8: ; 0x022442D8
	push {r3, lr}
	bl ov23_0224429C
	cmp r0, #0
	beq _022442E6
	mov r0, #1
	pop {r3, pc}
_022442E6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_022442D8

	thumb_func_start ov23_022442EC
ov23_022442EC: ; 0x022442EC
	mov r0, #8
	bx lr
	thumb_func_end ov23_022442EC

	thumb_func_start ov23_022442F0
ov23_022442F0: ; 0x022442F0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _022443C4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0xc]
	bl sub_020298B0
	add r6, r0, #0
	add r0, r4, #0
	bl ov23_0224162C
	cmp r0, #0
	beq _02244314
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02244314:
	add r0, r4, #0
	bl sub_02058DF8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02058E4C
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_0224429C
	add r5, r0, #0
	bne _02244334
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02244334:
	ldr r0, _022443C4 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _022443C8 ; =0x00000B3C
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02244358
	add r0, r4, #0
	bl ov23_0224AD98
	ldr r1, _022443C4 ; =0x02257760
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r2, r1, r4
	ldr r1, _022443C8 ; =0x00000B3C
	ldrb r1, [r2, r1]
	bl ov23_02244844
_02244358:
	ldrb r1, [r5, #4]
	add r0, r4, #0
	bl ov23_02244830
	add r0, sp, #0
	ldrb r2, [r0, #7]
	mov r1, #0x80
	bic r2, r1
	strb r2, [r0, #7]
	ldrb r1, [r0, #7]
	mov r2, #0xf
	bic r1, r2
	lsl r2, r4, #0x18
	lsr r3, r2, #0x18
	mov r2, #0xf
	and r2, r3
	orr r1, r2
	strb r1, [r0, #7]
	add r0, r5, #0
	bl ov23_0224426C
	add r1, sp, #0
	strb r0, [r1, #6]
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #6
	bl sub_020C4DB0
	add r1, sp, #0
	ldrb r0, [r1, #6]
	cmp r0, #8
	blo _022443A0
	ldrb r1, [r1, #5]
	add r0, r6, #0
	bl sub_02028FB4
_022443A0:
	mov r0, #0x25
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	ldr r0, _022443C4 ; =0x02257760
	ldrb r2, [r5, #4]
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _022443C8 ; =0x00000B3C
	strb r2, [r1, r0]
	add r0, r5, #0
	bl ov23_02243A00
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022443C4: .word 0x02257760
_022443C8: .word 0x00000B3C
	thumb_func_end ov23_022442F0

	thumb_func_start ov23_022443CC
ov23_022443CC: ; 0x022443CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, _02244444 ; =0x02257760
	add r5, r0, #0
	ldr r1, [r1, #4]
	add r4, r2, #0
	add r2, r1, r5
	ldr r1, _02244448 ; =0x00000B3C
	add r7, r3, #0
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _022443EA
	bl ov23_02244844
_022443EA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02244830
	add r1, sp, #0
	ldrb r3, [r1, #7]
	mov r0, #0xf
	bic r3, r0
	lsl r0, r5, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xf
	and r0, r2
	orr r0, r3
	strb r0, [r1, #7]
	strb r6, [r1, #6]
	ldrb r2, [r1, #7]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r1, #7]
	strb r4, [r1, #4]
	ldr r0, [sp, #0x20]
	strh r7, [r1]
	strh r0, [r1, #2]
	ldrb r0, [r1, #7]
	mov r2, #0x30
	bic r0, r2
	ldr r2, [sp, #0x24]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1a
	orr r0, r2
	strb r0, [r1, #7]
	mov r0, #0x25
	add r1, sp, #0
	mov r2, #8
	bl sub_02035AC4
	ldr r0, _02244444 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02244448 ; =0x00000B3C
	strb r4, [r1, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244444: .word 0x02257760
_02244448: .word 0x00000B3C
	thumb_func_end ov23_022443CC

	thumb_func_start ov23_0224444C
ov23_0224444C: ; 0x0224444C
	push {r4, lr}
	ldr r1, _0224446C ; =0x02257760
	add r4, r0, #0
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02244468
	bl sub_02059094
	cmp r0, #0
	beq _02244468
	add r0, r4, #0
	bl ov23_022442F0
	pop {r4, pc}
_02244468:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0224446C: .word 0x02257760
	thumb_func_end ov23_0224444C

	thumb_func_start ov23_02244470
ov23_02244470: ; 0x02244470
	ldr r1, _02244484 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _02244488 ; =0x00000ACB
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	nop
_02244484: .word 0x02257760
_02244488: .word 0x00000ACB
	thumb_func_end ov23_02244470

	thumb_func_start ov23_0224448C
ov23_0224448C: ; 0x0224448C
	push {r4, r5, r6, lr}
	ldr r0, _022445D4 ; =0x02257760
	add r4, r2, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224449A
	b _022445D2
_0224449A:
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298A0
	add r6, r0, #0
	ldr r0, _022445D8 ; =0x00000622
	bl sub_02005748
	ldr r1, _022445D4 ; =0x02257760
	add r0, r4, #0
	ldr r2, [r1, #4]
	ldr r1, _022445DC ; =0x00000AC4
	add r1, r2, r1
	ldrb r2, [r4, #7]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x19
	add r1, r1, r2
	mov r2, #8
	bl sub_020C4DB0
	ldrb r0, [r4, #4]
	sub r0, #0x18
	cmp r0, #3
	bhi _02244530
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022444D8: ; jump table
	.short _022444E0 - _022444D8 - 2 ; case 0
	.short _022444F4 - _022444D8 - 2 ; case 1
	.short _02244508 - _022444D8 - 2 ; case 2
	.short _0224451C - _022444D8 - 2 ; case 3
_022444E0:
	ldr r1, _022445D4 ; =0x02257760
	mov r0, #0x75
	ldr r2, [r1, #4]
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _022445E0 ; =0x00000B24
	strb r0, [r2, r1]
	b _02244546
_022444F4:
	ldr r1, _022445D4 ; =0x02257760
	mov r0, #0x76
	ldr r2, [r1, #4]
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _022445E0 ; =0x00000B24
	strb r0, [r2, r1]
	b _02244546
_02244508:
	ldr r1, _022445D4 ; =0x02257760
	mov r0, #0x77
	ldr r2, [r1, #4]
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _022445E0 ; =0x00000B24
	strb r0, [r2, r1]
	b _02244546
_0224451C:
	ldr r1, _022445D4 ; =0x02257760
	mov r0, #0x78
	ldr r2, [r1, #4]
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r2, r1
	ldr r1, _022445E0 ; =0x00000B24
	strb r0, [r2, r1]
	b _02244546
_02244530:
	ldr r0, _022445D4 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022445E4 ; =0x00000ACB
	add r0, r1, r0
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r3, r1, #0x19
	ldrb r2, [r0, r3]
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, r3]
_02244546:
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r5, r0, #0x1c
	bl sub_0203608C
	cmp r5, r0
	bne _02244568
	ldrb r3, [r4, #7]
	ldrb r1, [r4, #4]
	add r0, r5, #0
	lsl r2, r3, #0x18
	lsl r3, r3, #0x1a
	lsr r2, r2, #0x1f
	lsr r3, r3, #0x1e
	bl ov23_022448C4
	b _02244570
_02244568:
	ldrb r1, [r4, #4]
	add r0, r5, #0
	bl ov23_02248B3C
_02244570:
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl ov23_0224B00C
	bl sub_0203608C
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, r0
	bne _0224458E
	add r0, r6, #0
	bl sub_0202970C
_0224458E:
	ldrb r5, [r4, #6]
	bl sub_0203608C
	cmp r5, r0
	bne _022445D2
	ldrb r0, [r4, #7]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r5, r0
	beq _022445A8
	add r0, r6, #0
	bl sub_020296D4
_022445A8:
	ldr r0, _022445D4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r5, r0, #0
	bl sub_0206B42C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0206B43C
	add r0, r4, #0
	bl ov23_02243E20
	bl ov23_02243D50
_022445D2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022445D4: .word 0x02257760
_022445D8: .word 0x00000622
_022445DC: .word 0x00000AC4
_022445E0: .word 0x00000B24
_022445E4: .word 0x00000ACB
	thumb_func_end ov23_0224448C

	thumb_func_start ov23_022445E8
ov23_022445E8: ; 0x022445E8
	push {r4, lr}
	ldrb r2, [r2]
	ldr r1, _02244610 ; =0x02256558
	lsl r3, r2, #2
	ldr r1, [r1, r3]
	ldr r3, _02244614 ; =0x02257760
	ldr r3, [r3, #4]
	add r4, r3, r0
	ldr r3, _02244618 ; =0x00000B3C
	ldrb r3, [r4, r3]
	cmp r2, r3
	beq _02244608
	mov r0, #1
	bl sub_020389C4
	pop {r4, pc}
_02244608:
	cmp r1, #0
	beq _0224460E
	blx r1
_0224460E:
	pop {r4, pc}
	; .align 2, 0
_02244610: .word 0x02256558
_02244614: .word 0x02257760
_02244618: .word 0x00000B3C
	thumb_func_end ov23_022445E8

	thumb_func_start ov23_0224461C
ov23_0224461C: ; 0x0224461C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	ldrb r4, [r5]
	bl sub_0203608C
	cmp r4, r0
	beq _02244634
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	add r0, r4, #0
	bl sub_02058BA8
_02244634:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224461C

	thumb_func_start ov23_02244638
ov23_02244638: ; 0x02244638
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r0, #0
	add r3, sp, #0
	ldr r1, _02244674 ; =0x02257760
	strb r0, [r3]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0224466E
	ldr r2, _02244678 ; =0x00000B3C
	mov r4, #1
_0224464E:
	ldrb r5, [r1, r2]
	cmp r5, #0
	beq _0224465E
	add r5, r4, #0
	ldrb r6, [r3]
	lsl r5, r0
	orr r5, r6
	strb r5, [r3]
_0224465E:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #8
	blt _0224464E
	mov r0, #0x2d
	add r1, sp, #0
	bl sub_02035B48
_0224466E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02244674: .word 0x02257760
_02244678: .word 0x00000B3C
	thumb_func_end ov23_02244638

	thumb_func_start ov23_0224467C
ov23_0224467C: ; 0x0224467C
	push {r4, r5, r6, lr}
	ldr r0, _022446A8 ; =0x02257760
	ldrb r5, [r2]
	ldr r1, [r0, #4]
	ldr r0, _022446AC ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022446A4
	mov r4, #0
	mov r6, #1
_02244690:
	add r0, r6, #0
	lsl r0, r4
	tst r0, r5
	beq _0224469E
	add r0, r4, #0
	bl ov23_0224B00C
_0224469E:
	add r4, r4, #1
	cmp r4, #8
	blt _02244690
_022446A4:
	pop {r4, r5, r6, pc}
	nop
_022446A8: .word 0x02257760
_022446AC: .word 0x00000B3B
	thumb_func_end ov23_0224467C

	thumb_func_start ov23_022446B0
ov23_022446B0: ; 0x022446B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02244774 ; =0x02257760
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _022446C0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022446C0:
	mov r5, #0
	mov r0, #0x40
	add r6, r5, #0
	str r0, [sp]
_022446C8:
	ldr r0, _02244774 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02244778 ; =0x00000ACB
	add r0, r1, r0
	ldrb r2, [r0, r6]
	lsl r1, r2, #0x19
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _02244724
	ldr r1, [sp]
	bic r2, r1
	strb r2, [r0, r6]
	ldr r0, _02244774 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r6
	ldr r0, _0224477C ; =0x00000ACA
	ldrb r0, [r1, r0]
	cmp r0, #8
	blo _02244706
	add r0, r5, #0
	bl sub_02032EE8
	mov r1, #0
	mov r2, #0x63
	add r3, r7, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _02244724
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244706:
	bl sub_02032EE8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02032EE8
	add r1, r4, #0
	mov r2, #0x64
	add r3, r7, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _02244724
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244724:
	ldr r0, _02244774 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02244780 ; =0x00000B04
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _02244768
	add r0, r5, #0
	bl sub_02032EE8
	add r4, r0, #0
	ldr r0, _02244774 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02244780 ; =0x00000B04
	ldrb r0, [r1, r0]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, _02244774 ; =0x02257760
	mov r2, #0xff
	ldr r0, [r0, #4]
	add r3, r0, r5
	ldr r0, _02244780 ; =0x00000B04
	strb r2, [r3, r0]
	add r0, r4, #0
	mov r2, #0x74
	add r3, r7, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _02244768
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244768:
	add r5, r5, #1
	add r6, #8
	cmp r5, #8
	blt _022446C8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244774: .word 0x02257760
_02244778: .word 0x00000ACB
_0224477C: .word 0x00000ACA
_02244780: .word 0x00000B04
	thumb_func_end ov23_022446B0

	thumb_func_start ov23_02244784
ov23_02244784: ; 0x02244784
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02244820 ; =0x02257760
	add r5, r0, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _02244794
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02244794:
	mov r4, #0
_02244796:
	ldr r0, [r6, #4]
	ldr r1, _02244824 ; =0x00000B24
	add r0, r0, r4
	ldrb r7, [r0, r1]
	cmp r7, #0
	beq _022447BE
	mov r2, #0
	strb r2, [r0, r1]
	add r0, r4, #0
	bl sub_02032EE8
	mov r1, #0
	add r2, r7, #0
	add r3, r5, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _022447BE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022447BE:
	ldr r0, [r6, #4]
	ldr r1, _02244828 ; =0x00000B2C
	add r0, r0, r4
	ldrb r1, [r0, r1]
	cmp r1, #1
	bne _022447E8
	ldr r1, _02244828 ; =0x00000B2C
	mov r2, #0
	strb r2, [r0, r1]
	add r0, r4, #0
	bl sub_02032EE8
	mov r1, #0
	mov r2, #0x5a
	add r3, r5, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _022447E8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022447E8:
	ldr r0, [r6, #4]
	add r1, r0, r4
	ldr r0, _0224482C ; =0x00000B1C
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02244816
	add r0, r4, #0
	bl sub_02032EE8
	ldr r1, [r6, #4]
	mov r2, #0
	add r3, r1, r4
	ldr r1, _0224482C ; =0x00000B1C
	strb r2, [r3, r1]
	add r1, r2, #0
	mov r2, #0x62
	add r3, r5, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _02244816
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244816:
	add r4, r4, #1
	cmp r4, #8
	blt _02244796
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244820: .word 0x02257760
_02244824: .word 0x00000B24
_02244828: .word 0x00000B2C
_0224482C: .word 0x00000B1C
	thumb_func_end ov23_02244784

	thumb_func_start ov23_02244830
ov23_02244830: ; 0x02244830
	push {r3, lr}
	lsl r2, r1, #2
	ldr r1, _02244840 ; =0x022564CC
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _0224483E
	blx r1
_0224483E:
	pop {r3, pc}
	; .align 2, 0
_02244840: .word 0x022564CC
	thumb_func_end ov23_02244830

	thumb_func_start ov23_02244844
ov23_02244844: ; 0x02244844
	push {r3, lr}
	lsl r2, r1, #2
	ldr r1, _02244854 ; =0x022565E4
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _02244852
	blx r1
_02244852:
	pop {r3, pc}
	; .align 2, 0
_02244854: .word 0x022565E4
	thumb_func_end ov23_02244844

	thumb_func_start ov23_02244858
ov23_02244858: ; 0x02244858
	push {r4, lr}
	ldr r2, _022448B4 ; =0x02257760
	add r4, r0, #0
	ldr r3, [r2, #4]
	ldr r2, _022448B8 ; =0x00000B3B
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _022448B2
	lsl r3, r2, #2
	ldr r2, _022448BC ; =0x022566FC
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _02244874
	blx r2
_02244874:
	bl sub_0203608C
	cmp r0, #0
	beq _02244882
	add r0, r4, #0
	bl ov23_0224AD98
_02244882:
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _022448C0 ; =0x00000609
	bl sub_02005748
	ldr r0, _022448B4 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x2a
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	bl ov23_0224B040
	bl ov23_0224219C
	bl ov23_02254044
	ldr r0, _022448B4 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _022448B8 ; =0x00000B3B
	strb r2, [r1, r0]
_022448B2:
	pop {r4, pc}
	; .align 2, 0
_022448B4: .word 0x02257760
_022448B8: .word 0x00000B3B
_022448BC: .word 0x022566FC
_022448C0: .word 0x00000609
	thumb_func_end ov23_02244858

	thumb_func_start ov23_022448C4
ov23_022448C4: ; 0x022448C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov23_02244858
	ldr r0, _022448F0 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022448F4 ; =0x00000B3B
	strb r4, [r1, r0]
	ldr r0, _022448F8 ; =0x02256440
	lsl r1, r4, #2
	ldr r3, [r0, r1]
	cmp r3, #0
	beq _022448EE
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	blx r3
_022448EE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022448F0: .word 0x02257760
_022448F4: .word 0x00000B3B
_022448F8: .word 0x02256440
	thumb_func_end ov23_022448C4

	thumb_func_start ov23_022448FC
ov23_022448FC: ; 0x022448FC
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02059328
	add r6, r0, #0
	ldr r0, _02244950 ; =0x02257760
	add r1, r6, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA84
	bl sub_0203608C
	ldr r1, _02244950 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _02244954 ; =0x00000AC4
	ldrh r4, [r1, r0]
	bl sub_0203608C
	ldr r1, _02244950 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _02244958 ; =0x00000AC6
	ldrh r5, [r1, r0]
	add r0, r6, #0
	bl sub_0206419C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_020641A8
	add r2, r0, #0
	mov r0, #0
	add r1, r4, r7
	add r2, r5, r2
	bl sub_02057A94
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244950: .word 0x02257760
_02244954: .word 0x00000AC4
_02244958: .word 0x00000AC6
	thumb_func_end ov23_022448FC

	thumb_func_start ov23_0224495C
ov23_0224495C: ; 0x0224495C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _022449D4 ; =0x02257760
	add r6, r1, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	str r0, [sp]
	ldr r0, _022449D4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02059328
	str r0, [sp, #4]
	bl sub_0203608C
	ldr r1, _022449D4 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _022449D8 ; =0x00000AC4
	ldrh r4, [r1, r0]
	bl sub_0203608C
	ldr r1, _022449D4 ; =0x02257760
	lsl r0, r0, #3
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r0, _022449DC ; =0x00000AC6
	cmp r6, #0
	ldrh r5, [r1, r0]
	bne _022449BC
	ldr r0, [sp, #4]
	bl sub_0206419C
	add r4, r4, r0
	ldr r0, [sp, #4]
	bl sub_020641A8
	add r5, r5, r0
_022449BC:
	ldr r0, [sp]
	cmp r0, r4
	bne _022449CC
	cmp r7, r5
	bne _022449CC
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022449CC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022449D4: .word 0x02257760
_022449D8: .word 0x00000AC4
_022449DC: .word 0x00000AC6
	thumb_func_end ov23_0224495C

	thumb_func_start ov23_022449E0
ov23_022449E0: ; 0x022449E0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ov23_0224AD7C
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_02059354
	pop {r4, pc}
	thumb_func_end ov23_022449E0

	thumb_func_start ov23_022449F4
ov23_022449F4: ; 0x022449F4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ov23_0224AD7C
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_02059354
	pop {r4, pc}
	thumb_func_end ov23_022449F4

	thumb_func_start ov23_02244A08
ov23_02244A08: ; 0x02244A08
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov23_0224AD7C
	add r0, r4, #0
	bl sub_02059378
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244A08

	thumb_func_start ov23_02244A1C
ov23_02244A1C: ; 0x02244A1C
	ldr r3, _02244A24 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02244A24: .word ov23_0224AD7C
	thumb_func_end ov23_02244A1C

	thumb_func_start ov23_02244A28
ov23_02244A28: ; 0x02244A28
	ldr r3, _02244A30 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02244A30: .word ov23_0224AD7C
	thumb_func_end ov23_02244A28

	thumb_func_start ov23_02244A34
ov23_02244A34: ; 0x02244A34
	push {r4, lr}
	add r4, r0, #0
	mov r1, #3
	bl ov23_0224AD7C
	add r0, r4, #0
	bl sub_02058B94
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244A34

	thumb_func_start ov23_02244A48
ov23_02244A48: ; 0x02244A48
	ldr r3, _02244A50 ; =sub_02058B0C
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_02244A50: .word sub_02058B0C
	thumb_func_end ov23_02244A48

	thumb_func_start ov23_02244A54
ov23_02244A54: ; 0x02244A54
	ldr r3, _02244A5C ; =sub_02058B0C
	mov r1, #1
	mov r2, #0
	bx r3
	; .align 2, 0
_02244A5C: .word sub_02058B0C
	thumb_func_end ov23_02244A54

	thumb_func_start ov23_02244A60
ov23_02244A60: ; 0x02244A60
	ldr r3, _02244A68 ; =sub_02058B0C
	mov r1, #2
	mov r2, #0
	bx r3
	; .align 2, 0
_02244A68: .word sub_02058B0C
	thumb_func_end ov23_02244A60

	thumb_func_start ov23_02244A6C
ov23_02244A6C: ; 0x02244A6C
	ldr r3, _02244A74 ; =sub_02058B0C
	mov r1, #3
	mov r2, #0
	bx r3
	; .align 2, 0
_02244A74: .word sub_02058B0C
	thumb_func_end ov23_02244A6C

	thumb_func_start ov23_02244A78
ov23_02244A78: ; 0x02244A78
	ldr r3, _02244A80 ; =sub_02058B0C
	mov r1, #0
	mov r2, #1
	bx r3
	; .align 2, 0
_02244A80: .word sub_02058B0C
	thumb_func_end ov23_02244A78

	thumb_func_start ov23_02244A84
ov23_02244A84: ; 0x02244A84
	ldr r3, _02244A8C ; =sub_02058B0C
	mov r1, #1
	add r2, r1, #0
	bx r3
	; .align 2, 0
_02244A8C: .word sub_02058B0C
	thumb_func_end ov23_02244A84

	thumb_func_start ov23_02244A90
ov23_02244A90: ; 0x02244A90
	ldr r3, _02244A98 ; =sub_02058B0C
	mov r1, #2
	mov r2, #1
	bx r3
	; .align 2, 0
_02244A98: .word sub_02058B0C
	thumb_func_end ov23_02244A90

	thumb_func_start ov23_02244A9C
ov23_02244A9C: ; 0x02244A9C
	ldr r3, _02244AA4 ; =sub_02058B0C
	mov r1, #3
	mov r2, #1
	bx r3
	; .align 2, 0
_02244AA4: .word sub_02058B0C
	thumb_func_end ov23_02244A9C

	thumb_func_start ov23_02244AA8
ov23_02244AA8: ; 0x02244AA8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov23_0224AD7C
	add r0, r4, #0
	bl sub_02058B7C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244AA8

	thumb_func_start ov23_02244ABC
ov23_02244ABC: ; 0x02244ABC
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02244ABC

	thumb_func_start ov23_02244AC0
ov23_02244AC0: ; 0x02244AC0
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r4, r0
	bne _02244AD8
	mov r0, #1
	bl ov23_02245A58
_02244AD8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244AC0

	thumb_func_start ov23_02244ADC
ov23_02244ADC: ; 0x02244ADC
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r4, r0
	bne _02244AF4
	mov r0, #0
	bl ov23_02245A58
_02244AF4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_02244ADC

	thumb_func_start ov23_02244AF8
ov23_02244AF8: ; 0x02244AF8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02244B1C
	ldr r0, _02244B20 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244EA4
_02244B1C:
	pop {r4, r5, r6, pc}
	nop
_02244B20: .word 0x02257760
	thumb_func_end ov23_02244AF8

	thumb_func_start ov23_02244B24
ov23_02244B24: ; 0x02244B24
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02244B48
	ldr r0, _02244B4C ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	bl ov23_022462A8
_02244B48:
	pop {r4, r5, r6, pc}
	nop
_02244B4C: .word 0x02257760
	thumb_func_end ov23_02244B24

	thumb_func_start ov23_02244B50
ov23_02244B50: ; 0x02244B50
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244B64 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r3, r2, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244B64: .word 0x02257760
	thumb_func_end ov23_02244B50

	thumb_func_start ov23_02244B68
ov23_02244B68: ; 0x02244B68
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244B7C ; =0x02257760
	mov r2, #1
	ldr r0, [r0, #4]
	mov r3, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244B7C: .word 0x02257760
	thumb_func_end ov23_02244B68

	thumb_func_start ov23_02244B80
ov23_02244B80: ; 0x02244B80
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244B94 ; =0x02257760
	mov r2, #2
	ldr r0, [r0, #4]
	mov r3, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244B94: .word 0x02257760
	thumb_func_end ov23_02244B80

	thumb_func_start ov23_02244B98
ov23_02244B98: ; 0x02244B98
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244BAC ; =0x02257760
	mov r2, #3
	ldr r0, [r0, #4]
	mov r3, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244BAC: .word 0x02257760
	thumb_func_end ov23_02244B98

	thumb_func_start ov23_02244BB0
ov23_02244BB0: ; 0x02244BB0
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244BC4 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	mov r3, #1
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244BC4: .word 0x02257760
	thumb_func_end ov23_02244BB0

	thumb_func_start ov23_02244BC8
ov23_02244BC8: ; 0x02244BC8
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244BDC ; =0x02257760
	mov r2, #1
	ldr r0, [r0, #4]
	add r3, r2, #0
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244BDC: .word 0x02257760
	thumb_func_end ov23_02244BC8

	thumb_func_start ov23_02244BE0
ov23_02244BE0: ; 0x02244BE0
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244BF4 ; =0x02257760
	mov r2, #2
	ldr r0, [r0, #4]
	mov r3, #1
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244BF4: .word 0x02257760
	thumb_func_end ov23_02244BE0

	thumb_func_start ov23_02244BF8
ov23_02244BF8: ; 0x02244BF8
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02244C0C ; =0x02257760
	mov r2, #3
	ldr r0, [r0, #4]
	mov r3, #1
	ldr r0, [r0, #0x40]
	bl ov23_02244D80
	pop {r3, pc}
	; .align 2, 0
_02244C0C: .word 0x02257760
	thumb_func_end ov23_02244BF8

	thumb_func_start ov23_02244C10
ov23_02244C10: ; 0x02244C10
	push {r4, lr}
	ldr r0, _02244C68 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, _02244C68 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r3, r0, #0
	ldr r0, _02244C68 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	mov r2, #0
	ldr r0, [r0, #0x40]
	bl ov5_021F5634
	bl ov23_0224219C
	ldr r2, _02244C68 ; =0x02257760
	mov r1, #0
	ldr r3, [r2, #4]
	ldr r2, _02244C6C ; =0x00000B3B
	ldrb r2, [r3, r2]
	bl ov23_022541B4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x46
	add r3, r2, #0
	bl ov23_02253F60
	add r4, r0, #0
	mov r0, #0x10
	bl sub_02059464
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02244C68: .word 0x02257760
_02244C6C: .word 0x00000B3B
	thumb_func_end ov23_02244C10

	thumb_func_start ov23_02244C70
ov23_02244C70: ; 0x02244C70
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #7
	bhi _02244D70
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02244C8A: ; jump table
	.short _02244C9A - _02244C8A - 2 ; case 0
	.short _02244CAA - _02244C8A - 2 ; case 1
	.short _02244CC2 - _02244C8A - 2 ; case 2
	.short _02244CCA - _02244C8A - 2 ; case 3
	.short _02244CE2 - _02244C8A - 2 ; case 4
	.short _02244D3A - _02244C8A - 2 ; case 5
	.short _02244D70 - _02244C8A - 2 ; case 6
	.short _02244D42 - _02244C8A - 2 ; case 7
_02244C9A:
	bl ov23_02244C10
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244CAA:
	mov r0, #1
	str r0, [sp]
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244CC2:
	add r0, r0, #1
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244CCA:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244CE2:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x1c
	bne _02244D00
	ldr r0, _02244D74 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02244D78 ; =0x00000B3B
	ldrb r1, [r1, r0]
	add r0, sp, #4
	strb r1, [r0]
	mov r0, #0x26
	add r1, sp, #4
	bl sub_020360D0
_02244D00:
	ldr r0, [r4, #0x14]
	cmp r0, #0x1e
	ble _02244D70
	mov r0, #0x10
	bl sub_0205948C
	mov r0, #1
	str r0, [sp]
	sub r1, r0, #5
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	bl ov23_0224219C
	bl ov23_02254044
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x18]
	bl sub_02058BA8
	ldr r0, _02244D7C ; =0x0000065F
	bl sub_02005748
	mov r0, #5
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244D3A:
	mov r0, #6
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02244D42:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r2, _02244D74 ; =0x02257760
	mov r0, #0xa3
	ldr r3, [r2, #4]
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r3, r0]
	ldr r2, [r2, #4]
	add r0, #0x10
	str r1, [r2, r0]
	ldr r0, _02244D7C ; =0x0000065F
	bl sub_020057A4
_02244D70:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244D74: .word 0x02257760
_02244D78: .word 0x00000B3B
_02244D7C: .word 0x0000065F
	thumb_func_end ov23_02244C70

	thumb_func_start ov23_02244D80
ov23_02244D80: ; 0x02244D80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x1c
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02244DD8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02244DAE
	bl sub_02022974
_02244DAE:
	ldr r0, _02244DD8 ; =0x02257760
	mov r2, #0x64
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	str r5, [r4, #8]
	str r6, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x18]
	ldr r0, _02244DDC ; =ov23_02244C70
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02244DD8 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244DD8: .word 0x02257760
_02244DDC: .word ov23_02244C70
	thumb_func_end ov23_02244D80

	thumb_func_start ov23_02244DE0
ov23_02244DE0: ; 0x02244DE0
	push {r3, lr}
	bl sub_02058BE8
	ldr r2, _02244E08 ; =0x02257760
	mov r0, #0xa7
	ldr r1, [r2, #4]
	lsl r0, r0, #2
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _02244E04
	mov r1, #7
	str r1, [r3, #0]
	ldr r2, [r2, #4]
	mov r1, #0
	str r1, [r2, r0]
	ldr r0, _02244E0C ; =0x0000065F
	bl sub_020057A4
_02244E04:
	pop {r3, pc}
	nop
_02244E08: .word 0x02257760
_02244E0C: .word 0x0000065F
	thumb_func_end ov23_02244DE0

	thumb_func_start ov23_02244E10
ov23_02244E10: ; 0x02244E10
	push {r4, lr}
	bl sub_02058BE8
	ldr r0, _02244E5C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02244E5A
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, _02244E5C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r2, _02244E5C ; =0x02257760
	mov r0, #0xa3
	ldr r3, [r2, #4]
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r3, r0]
	ldr r2, [r2, #4]
	add r0, #0x10
	str r1, [r2, r0]
	ldr r0, _02244E60 ; =0x0000065F
	bl sub_020057A4
_02244E5A:
	pop {r4, pc}
	; .align 2, 0
_02244E5C: .word 0x02257760
_02244E60: .word 0x0000065F
	thumb_func_end ov23_02244E10

	thumb_func_start ov23_02244E64
ov23_02244E64: ; 0x02244E64
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02244E64

	thumb_func_start ov23_02244E68
ov23_02244E68: ; 0x02244E68
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, _02244E98 ; =0x02257760
	add r5, r1, #0
	ldr r0, [r0, #4]
	ldr r1, _02244E9C ; =0x00000B46
	add r4, r2, #0
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _02244E92
	sub r1, r3, #1
	str r1, [sp]
	ldr r0, [r0, #0x40]
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ov5_021F4EAC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02244E92:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02244E98: .word 0x02257760
_02244E9C: .word 0x00000B46
	thumb_func_end ov23_02244E68

	thumb_func_start ov23_02244EA0
ov23_02244EA0: ; 0x02244EA0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_02244EA0

	thumb_func_start ov23_02244EA4
ov23_02244EA4: ; 0x02244EA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x20
	add r7, r2, #0
	bl sub_02018184
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02244EF0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	add r0, r4, #0
	bl ov23_022451BC
	ldr r0, [r5, #8]
	add r1, r4, #0
	str r0, [r4, #0x10]
	str r5, [r4, #0x14]
	strb r6, [r4, #0x19]
	ldr r0, _02244EF4 ; =ov23_022451C8
	mov r2, #0x64
	strb r7, [r4, #0x18]
	bl sub_0200D9E8
	ldr r1, _02244EF0 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244EF0: .word 0x02257760
_02244EF4: .word ov23_022451C8
	thumb_func_end ov23_02244EA4

	thumb_func_start ov23_02244EF8
ov23_02244EF8: ; 0x02244EF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	str r3, [sp, #4]
	str r0, [sp, #0x38]
	add r0, r2, #0
	sub r0, r5, r0
	add r4, r1, #0
	str r2, [sp]
	bl sub_020D4070
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	sub r0, r0, r4
	bl sub_020D4070
	ldr r1, [sp]
	mov r7, #0
	cmp r5, r1
	bge _02244F28
	mov r1, #1
	str r1, [sp, #0x1c]
	b _02244F2C
_02244F28:
	sub r1, r7, #1
	str r1, [sp, #0x1c]
_02244F2C:
	ldr r1, [sp, #4]
	cmp r4, r1
	bge _02244F38
	mov r1, #1
	str r1, [sp, #0x18]
	b _02244F3E
_02244F38:
	mov r1, #0
	mvn r1, r1
	str r1, [sp, #0x18]
_02244F3E:
	ldr r1, [sp, #0x20]
	cmp r1, r0
	blt _02244F7C
	neg r6, r1
	ldr r1, [sp]
	cmp r5, r1
	beq _02244FB2
	lsl r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #1
	str r0, [sp, #8]
_02244F56:
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_022450D4
	add r7, r7, r0
	ldr r0, [sp, #0x1c]
	add r5, r5, r0
	ldr r0, [sp, #0xc]
	add r6, r6, r0
	bmi _02244F74
	ldr r0, [sp, #8]
	sub r6, r6, r0
	ldr r0, [sp, #0x18]
	add r4, r4, r0
_02244F74:
	ldr r0, [sp]
	cmp r5, r0
	bne _02244F56
	b _02244FB2
_02244F7C:
	ldr r1, [sp, #4]
	neg r6, r0
	cmp r4, r1
	beq _02244FB2
	ldr r1, [sp, #0x20]
	lsl r0, r0, #1
	lsl r1, r1, #1
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
_02244F8E:
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_022450D4
	add r7, r7, r0
	ldr r0, [sp, #0x18]
	add r4, r4, r0
	ldr r0, [sp, #0x14]
	add r6, r6, r0
	bmi _02244FAC
	ldr r0, [sp, #0x10]
	sub r6, r6, r0
	ldr r0, [sp, #0x1c]
	add r5, r5, r0
_02244FAC:
	ldr r0, [sp, #4]
	cmp r4, r0
	bne _02244F8E
_02244FB2:
	cmp r7, #0
	beq _02244FC6
	ldr r0, _02244FCC ; =0x00000629
	bl sub_020057D4
	cmp r0, #0
	bne _02244FC6
	ldr r0, _02244FCC ; =0x00000629
	bl sub_02005748
_02244FC6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02244FCC: .word 0x00000629
	thumb_func_end ov23_02244EF8

	thumb_func_start ov23_02244FD0
ov23_02244FD0: ; 0x02244FD0
	push {r4, lr}
	ldr r0, _0224505C ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	cmp r4, #0
	beq _02245058
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _02244FF0
	cmp r1, #0
	beq _02244FF0
	ldrb r0, [r4, #0x18]
	bl ov23_022448FC
_02244FF0:
	ldr r1, _02245060 ; =0x04000050
	mov r0, #0
	strh r0, [r1]
	mov r1, #1
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _0224505C ; =0x02257760
	mov r1, #2
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl sub_02019FE4
	mov r3, #0
	mov r1, #2
	add r2, r3, #0
	lsl r1, r1, #0xa
_02245014:
	strb r2, [r0, r3]
	add r3, r3, #2
	cmp r3, r1
	blt _02245014
	mov r0, #2
	mov r1, #3
	bl sub_02019060
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _0224505C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _0224505C ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245058:
	pop {r4, pc}
	nop
_0224505C: .word 0x02257760
_02245060: .word 0x04000050
	thumb_func_end ov23_02244FD0

	thumb_func_start ov23_02245064
ov23_02245064: ; 0x02245064
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #2
	add r6, r2, #0
	mov r4, #0
	bl sub_02019FE4
	add r5, r0, #0
	bne _02245082
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245082:
	ldrh r2, [r6, #8]
	ldr r0, _022450D0 ; =0x0000FFFF
	cmp r2, r0
	beq _022450A2
	ldrh r3, [r6, #0xa]
	cmp r3, r0
	beq _022450A2
	str r5, [sp]
	ldrh r0, [r7]
	ldrh r1, [r7, #2]
	bl ov23_02244EF8
	ldr r0, [sp, #4]
	mov r1, #2
	bl sub_02019448
_022450A2:
	ldrh r0, [r7]
	mov r2, #0
	strh r0, [r6, #8]
	ldrh r0, [r7, #2]
	strh r0, [r6, #0xa]
	mov r0, #2
	lsl r0, r0, #0xa
_022450B0:
	ldrb r1, [r5, r2]
	cmp r1, #0
	beq _022450B8
	add r4, r4, #1
_022450B8:
	add r2, r2, #2
	cmp r2, r0
	blt _022450B0
	cmp r4, #0xd
	bge _022450C8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022450C8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022450D0: .word 0x0000FFFF
	thumb_func_end ov23_02245064

	thumb_func_start ov23_022450D4
ov23_022450D4: ; 0x022450D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r2, #0
	asr r2, r0, #2
	lsr r2, r2, #0x1d
	add r2, r0, r2
	asr r0, r2, #3
	asr r2, r1, #2
	lsr r2, r2, #0x1d
	add r2, r1, r2
	asr r1, r2, #3
	lsl r1, r1, #5
	add r0, r0, r1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	ldr r4, _022451B8 ; =0x0225641C
	str r0, [sp, #4]
	add r3, sp, #0xc
	mov r2, #4
_022450FA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022450FA
	ldr r0, [r4, #0]
	mov r1, #2
	str r0, [r3, #0]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsl r1, r1, #0xa
	cmp r0, r1
	bls _0224511A
	ldr r0, [sp, #8]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0224511A:
	ldr r1, [sp, #4]
	lsr r0, r0, #0x1f
	lsl r2, r1, #0x1a
	sub r2, r2, r0
	mov r1, #0x1a
	ror r2, r1
	add r0, r0, r2
	ldr r6, [sp, #8]
	add r7, sp, #0xc
	str r0, [sp]
_0224512E:
	ldr r1, [r7, #0]
	ldr r0, [sp, #4]
	add r4, r0, r1
	ldr r0, [sp]
	cmp r0, #0x3e
	bne _02245146
	add r0, r6, #0
	mov r1, #3
	bl sub_020E1F6C
	cmp r1, #2
	beq _022451A8
_02245146:
	ldr r0, [sp]
	cmp r0, #0
	bne _02245158
	add r0, r6, #0
	mov r1, #3
	bl sub_020E1F6C
	cmp r1, #0
	beq _022451A8
_02245158:
	mov r0, #2
	lsl r0, r0, #0xa
	cmp r4, r0
	bge _022451A8
	cmp r4, #0
	blt _022451A8
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _022451A8
	mov r1, #1
	str r1, [sp, #8]
	cmp r6, #7
	bhi _0224519A
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224517E: ; jump table
	.short _0224519A - _0224517E - 2 ; case 0
	.short _02245194 - _0224517E - 2 ; case 1
	.short _0224519A - _0224517E - 2 ; case 2
	.short _02245194 - _0224517E - 2 ; case 3
	.short _0224518E - _0224517E - 2 ; case 4
	.short _02245194 - _0224517E - 2 ; case 5
	.short _0224519A - _0224517E - 2 ; case 6
	.short _02245194 - _0224517E - 2 ; case 7
_0224518E:
	add r0, r0, #3
	strb r0, [r5, r4]
	b _0224519E
_02245194:
	add r0, r0, #2
	strb r0, [r5, r4]
	b _0224519E
_0224519A:
	add r0, r0, #1
	strb r0, [r5, r4]
_0224519E:
	ldrb r0, [r5, r4]
	cmp r0, #5
	bls _022451A8
	mov r0, #0
	strb r0, [r5, r4]
_022451A8:
	add r6, r6, #1
	add r7, r7, #4
	cmp r6, #9
	blo _0224512E
	ldr r0, [sp, #8]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022451B8: .word 0x0225641C
	thumb_func_end ov23_022450D4

	thumb_func_start ov23_022451BC
ov23_022451BC: ; 0x022451BC
	ldr r1, _022451C4 ; =0x0000FFFF
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	; .align 2, 0
_022451C4: .word 0x0000FFFF
	thumb_func_end ov23_022451BC

	thumb_func_start ov23_022451C8
ov23_022451C8: ; 0x022451C8
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _022451D6
	b _022453F0
_022451D6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022451E2: ; jump table
	.short _022451FC - _022451E2 - 2 ; case 0
	.short _02245214 - _022451E2 - 2 ; case 1
	.short _02245248 - _022451E2 - 2 ; case 2
	.short _02245266 - _022451E2 - 2 ; case 3
	.short _0224530E - _022451E2 - 2 ; case 4
	.short _0224530E - _022451E2 - 2 ; case 5
	.short _0224530E - _022451E2 - 2 ; case 6
	.short _0224534E - _022451E2 - 2 ; case 7
	.short _022453A6 - _022451E2 - 2 ; case 8
	.short _022453B2 - _022451E2 - 2 ; case 9
	.short _022453F0 - _022451E2 - 2 ; case 10
	.short _022453C0 - _022451E2 - 2 ; case 11
	.short _022453DC - _022451E2 - 2 ; case 12
_022451FC:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	bl ov23_02244C10
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02245214:
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r1, #0
	mov r0, #0x12
	str r1, [sp]
	lsl r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, #0x32
	mov r1, #9
	mov r3, #2
	bl sub_02006E3C
	ldr r0, [r4, #0]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02245248:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x32
	mov r1, #0xa
	add r3, r2, #0
	bl sub_02006E84
	ldr r0, [r4, #0]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02245266:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _022453F4 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022453F8 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x13
	bne _0224529E
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, #0x32
	mov r1, #8
	mov r3, #2
	bl sub_02006E60
	b _022452E4
_0224529E:
	ldr r1, _022453FC ; =0x022563D0
	add r0, sp, #0x10
	ldrh r2, [r1, #0x10]
	strh r2, [r0, #4]
	ldrh r2, [r1, #0x12]
	strh r2, [r0, #6]
	ldrh r2, [r1, #0x14]
	ldrh r1, [r1, #0x16]
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r1, r0, #0x10
	mov r2, #0
	mov r0, #6
	str r2, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	lsr r2, r1, #0xf
	add r1, sp, #0x14
	ldrh r1, [r1, r2]
	ldr r2, [r4, #0x10]
	mov r0, #0x32
	mov r3, #2
	bl sub_02006E60
_022452E4:
	mov r0, #0
	mov r1, #3
	bl sub_02019060
	mov r0, #1
	mov r1, #2
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	ldr r0, [r4, #0]
	add sp, #0x1c
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_0224530E:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x1e
	ble _022453F0
	mov r0, #1
	sub r1, r0, #5
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #7
	str r0, [r4, #0]
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4d
	add r3, r2, #0
	bl ov23_02253F60
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, _02245400 ; =0x00000661
	bl sub_02005748
	add sp, #0x1c
	pop {r3, r4, pc}
_0224534E:
	ldr r1, _02245404 ; =0x021BF6BC
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	beq _02245386
	ldrh r2, [r1, #0x1c]
	add r0, sp, #0x10
	strh r2, [r0]
	ldrh r1, [r1, #0x1e]
	add r2, r4, #0
	strh r1, [r0, #2]
	ldr r1, [r4, #0x10]
	add r0, sp, #0x10
	bl ov23_02245064
	cmp r0, #0
	beq _0224538C
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _0224537A
	mov r0, #0xb
	str r0, [r4, #0]
	b _0224538C
_0224537A:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
	b _0224538C
_02245386:
	add r0, r4, #0
	bl ov23_022451BC
_0224538C:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x3c
	bge _022453F0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x3c
	bne _022453F0
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x1c
	pop {r3, r4, pc}
_022453A6:
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x1c
	pop {r3, r4, pc}
_022453B2:
	bl sub_0203608C
	ldrb r1, [r4, #0x19]
	bl ov23_02244FD0
	add sp, #0x1c
	pop {r3, r4, pc}
_022453C0:
	mov r0, #0
	strb r0, [r4, #0x19]
	mov r0, #0x10
	bl sub_0205948C
	ldrb r0, [r4, #0x18]
	bl ov23_022448FC
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0xc
	add sp, #0x1c
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022453DC:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #8
	ble _022453F0
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_022453F0:
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_022453F4: .word 0x02257760
_022453F8: .word 0x00000B3B
_022453FC: .word 0x022563D0
_02245400: .word 0x00000661
_02245404: .word 0x021BF6BC
	thumb_func_end ov23_022451C8

	thumb_func_start ov23_02245408
ov23_02245408: ; 0x02245408
	mov r0, #4
	bx lr
	thumb_func_end ov23_02245408

	thumb_func_start ov23_0224540C
ov23_0224540C: ; 0x0224540C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov23_0224ACC0
	cmp r0, #0
	beq _02245454
	add r0, r4, #0
	bl ov23_0224AD98
	ldr r1, _02245464 ; =0x02257760
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r2, r1, r4
	ldr r1, _02245468 ; =0x00000B3C
	ldrb r1, [r2, r1]
	bl ov23_02244844
	add r0, r4, #0
	bl ov23_0224D87C
	add r1, sp, #0
	strb r0, [r1, #3]
	ldr r0, _02245464 ; =0x02257760
	ldr r0, [r0, #4]
	add r2, r0, r4
	ldr r0, _02245468 ; =0x00000B3C
	ldrb r0, [r2, r0]
	strb r0, [r1]
	strb r4, [r1, #1]
	mov r0, #1
	strb r0, [r1, #2]
	mov r0, #0x2a
	add r1, sp, #0
	bl sub_02035B48
_02245454:
	ldr r0, _02245464 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _02245468 ; =0x00000B3C
	strb r2, [r1, r0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02245464: .word 0x02257760
_02245468: .word 0x00000B3C
	thumb_func_end ov23_0224540C

	thumb_func_start ov23_0224546C
ov23_0224546C: ; 0x0224546C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_0224AD98
	ldr r0, _022454AC ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r4
	ldr r0, _022454B0 ; =0x00000B3C
	ldrb r1, [r1, r0]
	cmp r1, #0
	beq _02245488
	add r0, r4, #0
	bl ov23_02244844
_02245488:
	ldr r1, _022454AC ; =0x02257760
	mov r3, #0
	ldr r0, [r1, #4]
	add r2, r0, r4
	ldr r0, _022454B0 ; =0x00000B3C
	strb r3, [r2, r0]
	ldr r1, [r1, #4]
	sub r0, #0x71
	add r3, r1, r0
	lsl r2, r4, #3
	ldrb r1, [r3, r2]
	mov r0, #0x80
	bic r1, r0
	add r0, r4, #0
	strb r1, [r3, r2]
	bl ov23_0224D87C
	pop {r4, pc}
	; .align 2, 0
_022454AC: .word 0x02257760
_022454B0: .word 0x00000B3C
	thumb_func_end ov23_0224546C

	thumb_func_start ov23_022454B4
ov23_022454B4: ; 0x022454B4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	ldrb r0, [r4, #2]
	ldrb r5, [r4]
	cmp r0, #0
	ldrb r0, [r4, #1]
	beq _022454C8
	bl ov23_0224B024
	b _022454CC
_022454C8:
	bl ov23_0224B040
_022454CC:
	ldrb r0, [r4, #1]
	bl ov23_02248B98
	ldrb r6, [r4, #1]
	bl sub_0203608C
	cmp r6, r0
	bne _022454F6
	ldr r0, _02245530 ; =0x02256670
	lsl r1, r5, #2
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _022454EC
	ldrb r1, [r4, #3]
	add r0, r6, #0
	blx r2
_022454EC:
	ldr r0, _02245534 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _02245538 ; =0x00000B3B
	strb r2, [r1, r0]
_022454F6:
	sub r5, #0x18
	cmp r5, #3
	bhi _02245510
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245508: ; jump table
	.short _0224551E - _02245508 - 2 ; case 0
	.short _0224551E - _02245508 - 2 ; case 1
	.short _0224551E - _02245508 - 2 ; case 2
	.short _0224551E - _02245508 - 2 ; case 3
_02245510:
	ldr r0, _02245534 ; =0x02257760
	mov r2, #1
	ldr r1, [r0, #4]
	ldrb r0, [r4, #1]
	add r1, r1, r0
	ldr r0, _0224553C ; =0x00000B1C
	strb r2, [r1, r0]
_0224551E:
	bl sub_0203608C
	cmp r0, #0
	beq _0224552C
	ldrb r0, [r4, #1]
	bl ov23_0224AD98
_0224552C:
	pop {r4, r5, r6, pc}
	nop
_02245530: .word 0x02256670
_02245534: .word 0x02257760
_02245538: .word 0x00000B3B
_0224553C: .word 0x00000B1C
	thumb_func_end ov23_022454B4

	thumb_func_start ov23_02245540
ov23_02245540: ; 0x02245540
	push {r3, lr}
	ldr r0, _02245558 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _0224555C ; =0x00000B3B
	ldrb r0, [r1, r0]
	sub r0, #0xb
	cmp r0, #1
	bhi _02245556
	ldrb r0, [r2]
	bl ov23_02245B78
_02245556:
	pop {r3, pc}
	; .align 2, 0
_02245558: .word 0x02257760
_0224555C: .word 0x00000B3B
	thumb_func_end ov23_02245540

	thumb_func_start ov23_02245560
ov23_02245560: ; 0x02245560
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov23_0224AD98
	ldr r1, _022455AC ; =0x02257760
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r2, r1, r4
	ldr r1, _022455B0 ; =0x00000B3C
	ldrb r1, [r2, r1]
	bl ov23_02244844
	add r1, sp, #0
	strb r4, [r1, #1]
	ldr r0, _022455AC ; =0x02257760
	strb r5, [r1]
	ldr r0, [r0, #4]
	add r2, r0, r4
	ldr r0, _022455B0 ; =0x00000B3C
	ldrb r0, [r2, r0]
	strb r0, [r1, #2]
	mov r0, #0x2c
	add r1, sp, #0
	bl sub_02035B48
	ldr r0, _022455AC ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, r0, r4
	ldr r0, _022455B0 ; =0x00000B3C
	strb r1, [r2, r0]
	add r0, r5, #0
	bl sub_02059058
	pop {r3, r4, r5, pc}
	nop
_022455AC: .word 0x02257760
_022455B0: .word 0x00000B3C
	thumb_func_end ov23_02245560

	thumb_func_start ov23_022455B4
ov23_022455B4: ; 0x022455B4
	push {r3, r4, r5, lr}
	ldr r0, _02245680 ; =0x02257760
	add r4, r2, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bl sub_0203D174
	bl sub_020298A0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	bl ov23_0224B024
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _02245616
	add r0, r5, #0
	bl sub_02029744
	ldr r0, _02245680 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x22
	bl sub_0202CFEC
	bl sub_020594FC
	bl ov23_0224219C
	add r5, r0, #0
	ldrb r0, [r4, #1]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02254068
	bl ov23_0224219C
	ldr r3, _02245684 ; =ov23_02243850
	mov r1, #0x47
	mov r2, #1
	bl ov23_02253F40
_02245616:
	ldrb r0, [r4, #1]
	bl ov23_02248B98
	ldrb r5, [r4, #1]
	bl sub_0203608C
	cmp r5, r0
	bne _02245662
	ldr r0, _02245680 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02245688 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02245662
	lsl r1, r0, #2
	ldr r0, _0224568C ; =0x022566FC
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _02245642
	add r0, r5, #0
	mov r1, #0
	blx r2
_02245642:
	ldr r1, _02245680 ; =0x02257760
	mov r0, #0x2a
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #4
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	ldr r0, _02245688 ; =0x00000B3B
	strb r3, [r1, r0]
	mov r0, #0x10
	bl sub_0205948C
	bl ov23_0224219C
	bl ov23_02254044
_02245662:
	bl sub_0203608C
	cmp r0, #0
	beq _02245670
	ldrb r0, [r4, #1]
	bl ov23_0224AD98
_02245670:
	ldr r0, _02245680 ; =0x02257760
	ldrb r2, [r4, #1]
	ldr r1, [r0, #4]
	ldrb r0, [r4]
	add r1, r1, r0
	ldr r0, _02245690 ; =0x00000B04
	strb r2, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245680: .word 0x02257760
_02245684: .word ov23_02243850
_02245688: .word 0x00000B3B
_0224568C: .word 0x022566FC
_02245690: .word 0x00000B04
	thumb_func_end ov23_022455B4

	thumb_func_start ov23_02245694
ov23_02245694: ; 0x02245694
	mov r0, #3
	bx lr
	thumb_func_end ov23_02245694

	thumb_func_start ov23_02245698
ov23_02245698: ; 0x02245698
	push {r4, lr}
	ldr r1, _022456C8 ; =0x02257760
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _022456C2
	mov r1, #0xa6
	lsl r1, r1, #2
	ldr r4, [r2, r1]
	cmp r4, #0
	beq _022456C2
	sub r1, #0xb6
	ldrh r1, [r4, r1]
	lsr r1, r1, #1
	add r0, r1, r0
	mov r1, #0x50
	bl sub_020E1F6C
	mov r0, #6
	mul r0, r1
	ldrh r0, [r4, r0]
	pop {r4, pc}
_022456C2:
	mov r0, #0
	pop {r4, pc}
	nop
_022456C8: .word 0x02257760
	thumb_func_end ov23_02245698

	thumb_func_start ov23_022456CC
ov23_022456CC: ; 0x022456CC
	push {r4, lr}
	ldr r1, _022456FC ; =0x02257760
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _022456F8
	mov r1, #0xa6
	lsl r1, r1, #2
	ldr r4, [r2, r1]
	cmp r4, #0
	beq _022456F8
	sub r1, #0xb6
	ldrh r1, [r4, r1]
	lsr r1, r1, #1
	add r0, r1, r0
	mov r1, #0x50
	bl sub_020E1F6C
	mov r0, #6
	mul r0, r1
	add r0, r4, r0
	ldrh r0, [r0, #2]
	pop {r4, pc}
_022456F8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022456FC: .word 0x02257760
	thumb_func_end ov23_022456CC

	thumb_func_start ov23_02245700
ov23_02245700: ; 0x02245700
	push {r4, lr}
	ldr r0, _02245720 ; =0x000001E2
	add r4, r1, #0
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0xa0
	bls _0224571E
	ldr r0, _02245724 ; =0x0000054A
	bl sub_02005748
	ldr r0, _02245720 ; =0x000001E2
	mov r1, #0
	strh r1, [r4, r0]
_0224571E:
	pop {r4, pc}
	; .align 2, 0
_02245720: .word 0x000001E2
_02245724: .word 0x0000054A
	thumb_func_end ov23_02245700

	thumb_func_start ov23_02245728
ov23_02245728: ; 0x02245728
	push {r4, lr}
	ldr r0, _0224577C ; =0x02257760
	mov r1, #0xa6
	ldr r2, [r0, #4]
	lsl r1, r1, #2
	ldr r0, [r2, r1]
	cmp r0, #0
	bne _02245778
	sub r0, r1, #4
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _02245778
	mov r0, #4
	sub r1, #0xb4
	bl sub_02018184
	mov r2, #0x79
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x2e
	bl sub_020360DC
	ldr r0, _0224577C ; =0x02257760
	mov r2, #0x64
	ldr r1, [r0, #4]
	mov r0, #0xa6
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02245780 ; =ov23_02245700
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _0224577C ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa5
	lsl r1, r1, #2
	str r0, [r2, r1]
_02245778:
	pop {r4, pc}
	nop
_0224577C: .word 0x02257760
_02245780: .word ov23_02245700
	thumb_func_end ov23_02245728

	thumb_func_start ov23_02245784
ov23_02245784: ; 0x02245784
	push {r3, lr}
	ldr r0, _022457DC ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022457D8
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _022457E0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	ldr r0, _022457DC ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r0, _022457DC ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _022457DC ; =0x02257760
	mov r0, #0xa5
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, r0, #4
	str r3, [r1, r0]
_022457D8:
	pop {r3, pc}
	nop
_022457DC: .word 0x02257760
_022457E0: .word 0x04000050
	thumb_func_end ov23_02245784

	thumb_func_start ov23_022457E4
ov23_022457E4: ; 0x022457E4
	ldr r1, _022457F4 ; =0x02257760
	lsl r0, r0, #1
	ldr r1, [r1, #4]
	mov r2, #1
	add r1, r1, r0
	ldr r0, _022457F8 ; =0x00000B0C
	strh r2, [r1, r0]
	bx lr
	; .align 2, 0
_022457F4: .word 0x02257760
_022457F8: .word 0x00000B0C
	thumb_func_end ov23_022457E4

	thumb_func_start ov23_022457FC
ov23_022457FC: ; 0x022457FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r5, #0
	str r5, [sp]
_02245804:
	ldr r0, _02245890 ; =0x02257760
	ldr r1, _02245894 ; =0x00000B0C
	ldr r0, [r0, #4]
	add r2, r0, r5
	ldrh r1, [r2, r1]
	sub r4, r1, #1
	cmp r1, #0
	beq _02245880
	lsl r7, r4, #2
_02245816:
	add r1, r0, r7
	ldr r0, _02245898 ; =0x000007C4
	ldr r6, [r1, r0]
	cmp r6, #0
	beq _0224585A
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0224585A
	add r0, r6, #0
	bl ov23_0224426C
	ldr r1, [sp]
	cmp r0, r1
	beq _02245836
	cmp r0, #8
	blt _0224585A
_02245836:
	ldrh r0, [r6]
	add r1, sp, #4
	strh r0, [r1]
	ldrh r0, [r6, #2]
	strh r0, [r1, #2]
	ldr r0, [sp]
	strb r0, [r1, #4]
	mov r0, #0x2f
	add r1, sp, #4
	bl sub_02035B48
	ldr r0, _02245890 ; =0x02257760
	add r2, r4, #2
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02245894 ; =0x00000B0C
	strh r2, [r1, r0]
	b _02245880
_0224585A:
	add r4, r4, #1
	add r7, r7, #4
	cmp r4, #0xc0
	blt _02245870
	ldr r0, _02245890 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r1, r0, r5
	ldr r0, _02245894 ; =0x00000B0C
	strh r2, [r1, r0]
	b _02245880
_02245870:
	ldr r0, _02245890 ; =0x02257760
	ldr r1, _02245894 ; =0x00000B0C
	ldr r0, [r0, #4]
	add r2, r5, r0
	ldrh r1, [r2, r1]
	sub r1, r1, #1
	cmp r4, r1
	bne _02245816
_02245880:
	ldr r0, [sp]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _02245804
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02245890: .word 0x02257760
_02245894: .word 0x00000B0C
_02245898: .word 0x000007C4
	thumb_func_end ov23_022457FC

	thumb_func_start ov23_0224589C
ov23_0224589C: ; 0x0224589C
	push {r3, r4, r5, lr}
	ldr r0, _02245904 ; =0x02257760
	add r4, r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02245900
	bl sub_0203608C
	ldrb r1, [r4, #4]
	cmp r1, r0
	bne _02245900
	ldr r0, _02245904 ; =0x02257760
	mov r1, #0xa6
	ldr r0, [r0, #4]
	lsl r1, r1, #2
	ldr r5, [r0, r1]
	sub r1, #0xb8
	ldrb r1, [r5, r1]
	mov r2, #6
	add r0, r4, #0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	bl sub_020C4DB0
	ldr r2, _02245904 ; =0x02257760
	mov r1, #0xa6
	ldr r0, [r2, #4]
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	add r0, r1, #0
	sub r0, #0xb8
	ldrb r0, [r4, r0]
	add r3, r0, #1
	add r0, r1, #0
	sub r0, #0xb8
	strb r3, [r4, r0]
	ldr r0, [r2, #4]
	ldr r2, [r0, r1]
	add r0, r1, #0
	sub r0, #0xb8
	ldrb r0, [r2, r0]
	cmp r0, #0x50
	blo _02245900
	mov r0, #0
	sub r1, #0xb8
	strb r0, [r2, r1]
_02245900:
	pop {r3, r4, r5, pc}
	nop
_02245904: .word 0x02257760
	thumb_func_end ov23_0224589C

	thumb_func_start ov23_02245908
ov23_02245908: ; 0x02245908
	mov r0, #6
	bx lr
	thumb_func_end ov23_02245908

	thumb_func_start ov23_0224590C
ov23_0224590C: ; 0x0224590C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r4, r0
	bne _02245930
	ldr r1, _02245934 ; =0x02257760
	mov r0, #0xa7
	ldr r2, [r1, #4]
	lsl r0, r0, #2
	ldr r3, [r2, r0]
	cmp r3, #0
	beq _02245930
	mov r2, #2
	str r2, [r3, #0]
	ldr r1, [r1, #4]
	mov r2, #0
	str r2, [r1, r0]
_02245930:
	pop {r4, pc}
	nop
_02245934: .word 0x02257760
	thumb_func_end ov23_0224590C

	thumb_func_start ov23_02245938
ov23_02245938: ; 0x02245938
	push {r3, lr}
	ldr r0, _02245994 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02245990
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02245998 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	bl sub_0203568C
	ldr r0, _02245994 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r0, _02245994 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _02245994 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245990:
	pop {r3, pc}
	nop
_02245994: .word 0x02257760
_02245998: .word 0x04000050
	thumb_func_end ov23_02245938

	thumb_func_start ov23_0224599C
ov23_0224599C: ; 0x0224599C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022459B2
	cmp r0, #1
	beq _02245A4C
	cmp r0, #2
	beq _02245A14
	pop {r3, r4, r5, pc}
_022459B2:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #1
	bne _022459C4
	bl ov23_02244C10
	str r0, [r4, #4]
	b _022459EA
_022459C4:
	cmp r0, #2
	bne _022459D8
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	b _022459EA
_022459D8:
	cmp r0, #4
	bne _022459EA
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
_022459EA:
	ldr r0, [r4, #0x10]
	cmp r0, #0x1e
	ble _02245A4C
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02245A08
	bl sub_02035678
	b _02245A0C
_02245A08:
	bl sub_02035664
_02245A0C:
	mov r0, #0x10
	bl sub_0205948C
	pop {r3, r4, r5, pc}
_02245A14:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02245A50 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	bl sub_0203568C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r1, _02245A54 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245A4C:
	pop {r3, r4, r5, pc}
	nop
_02245A50: .word 0x04000050
_02245A54: .word 0x02257760
	thumb_func_end ov23_0224599C

	thumb_func_start ov23_02245A58
ov23_02245A58: ; 0x02245A58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018184
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	str r5, [r4, #8]
	str r0, [r4, #0x10]
	ldr r0, _02245A9C ; =0x02257760
	mov r2, #0x64
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02245AA0 ; =ov23_0224599C
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02245A9C ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	mov r0, #0x10
	bl sub_02059464
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245A9C: .word 0x02257760
_02245AA0: .word ov23_0224599C
	thumb_func_end ov23_02245A58

	thumb_func_start ov23_02245AA4
ov23_02245AA4: ; 0x02245AA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r4, r0
	bne _02245AEE
	ldr r0, _02245AF0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02245AEE
	ldr r0, [r1, #0x40]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	ldr r0, _02245AF0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02245AF0 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245AEE:
	pop {r4, pc}
	; .align 2, 0
_02245AF0: .word 0x02257760
	thumb_func_end ov23_02245AA4

	thumb_func_start ov23_02245AF4
ov23_02245AF4: ; 0x02245AF4
	push {r3, r4, r5, lr}
	ldr r0, _02245B70 ; =0x02257760
	add r5, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02245B6E
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02245B14
	bl sub_0207136C
	mov r0, #0
	str r0, [r4, #0x14]
_02245B14:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _02245B24
	cmp r5, #0
	beq _02245B24
	ldrb r0, [r4, #0xc]
	bl ov23_022448FC
_02245B24:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02245B74 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	ldr r0, _02245B70 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	ldr r0, _02245B70 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02245B70 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02245B6E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245B70: .word 0x02257760
_02245B74: .word 0x04000050
	thumb_func_end ov23_02245AF4

	thumb_func_start ov23_02245B78
ov23_02245B78: ; 0x02245B78
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r4, r0
	bne _02245B9C
	ldr r0, _02245BA0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02245B9C
	mov r0, #0xe
	str r0, [r1, #0]
	ldr r0, _02245BA4 ; =0x0000060B
	bl sub_02005748
_02245B9C:
	pop {r4, pc}
	nop
_02245BA0: .word 0x02257760
_02245BA4: .word 0x0000060B
	thumb_func_end ov23_02245B78

	thumb_func_start ov23_02245BA8
ov23_02245BA8: ; 0x02245BA8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _02245DE4 ; =0x022563F4
	add r4, r1, #0
	add r5, r0, #0
	add r2, sp, #4
	mov r1, #0xf
_02245BB6:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02245BB6
	ldr r0, [r4, #0]
	cmp r0, #0xe
	bhi _02245C7A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245BD4: ; jump table
	.short _02245BF2 - _02245BD4 - 2 ; case 0
	.short _02245C06 - _02245BD4 - 2 ; case 1
	.short _02245C1E - _02245BD4 - 2 ; case 2
	.short _02245C26 - _02245BD4 - 2 ; case 3
	.short _02245C3E - _02245BD4 - 2 ; case 4
	.short _02245C70 - _02245BD4 - 2 ; case 5
	.short _02245C70 - _02245BD4 - 2 ; case 6
	.short _02245CFC - _02245BD4 - 2 ; case 7
	.short _02245DDE - _02245BD4 - 2 ; case 8
	.short _02245D20 - _02245BD4 - 2 ; case 9
	.short _02245DDE - _02245BD4 - 2 ; case 10
	.short _02245D50 - _02245BD4 - 2 ; case 11
	.short _02245D6C - _02245BD4 - 2 ; case 12
	.short _02245DDE - _02245BD4 - 2 ; case 13
	.short _02245D92 - _02245BD4 - 2 ; case 14
_02245BF2:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245C06:
	mov r0, #1
	str r0, [sp]
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245C1E:
	add r0, r0, #1
	add sp, #0x14
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245C26:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245C3E:
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x3c
	ble _02245C56
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, r5, pc}
_02245C56:
	ldrb r0, [r4, #0xc]
	mov r1, #1
	bl ov23_0224495C
	cmp r0, #0
	beq _02245C7A
	ldr r0, [r4, #0]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, r5, pc}
_02245C70:
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0x1e
	bgt _02245C7C
_02245C7A:
	b _02245DDE
_02245C7C:
	mov r0, #0x10
	bl sub_0205948C
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #7
	str r0, [r4, #0]
	ldr r0, _02245DE8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r5, r0, #0
	ldr r0, _02245DE8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02245CD6
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _02245DE8 ; =0x02257760
	add r1, r5, #0
	ldr r0, [r0, #4]
	mov r3, #2
	ldr r0, [r0, #0x40]
	bl ov5_021F4EAC
	str r0, [r4, #0x14]
	ldr r0, _02245DE8 ; =0x02257760
	ldr r1, _02245DEC ; =0xFFFFE000
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	add sp, #0x14
	pop {r4, r5, pc}
_02245CD6:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _02245DE8 ; =0x02257760
	add r1, r5, #0
	ldr r0, [r0, #4]
	mov r3, #3
	ldr r0, [r0, #0x40]
	bl ov5_021F4EAC
	str r0, [r4, #0x14]
	ldr r0, _02245DE8 ; =0x02257760
	ldr r1, _02245DF0 ; =0xFFFFD000
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	add sp, #0x14
	pop {r4, r5, pc}
_02245CFC:
	ldr r0, _02245DE8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, r5
	beq _02245D16
	ldr r0, _02245DF4 ; =0x000005EB
	bl sub_02005748
_02245D16:
	str r5, [r4, #0x18]
	mov r0, #0
	add sp, #0x14
	str r0, [r4, #0x10]
	pop {r4, r5, pc}
_02245D20:
	ldr r0, _02245DE8 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r1, _02245DE8 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
	add sp, #0x14
	pop {r4, r5, pc}
_02245D50:
	mov r0, #0
	strb r0, [r4, #0xd]
	mov r0, #0x10
	bl sub_0205948C
	ldrb r0, [r4, #0xc]
	bl ov23_022448FC
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #0xc
	add sp, #0x14
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245D6C:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #0xc]
	bl ov23_0224495C
	cmp r0, #0
	bne _02245D84
	ldr r0, [r4, #0x1c]
	cmp r0, #0x3c
	ble _02245DDE
_02245D84:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	add sp, #0x14
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245D92:
	ldr r1, [r4, #0x10]
	add r0, sp, #4
	ldrsb r1, [r0, r1]
	mov r0, #9
	mvn r0, r0
	cmp r1, r0
	beq _02245DDE
	ldr r0, _02245DE8 ; =0x02257760
	lsl r1, r1, #0xc
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205ED0C
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #5
	bne _02245DDE
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02245DC6
	bl sub_0207136C
	mov r0, #0
	str r0, [r4, #0x14]
_02245DC6:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _02245DD4
	mov r0, #0xb
	add sp, #0x14
	str r0, [r4, #0]
	pop {r4, r5, pc}
_02245DD4:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #9
	str r0, [r4, #0]
_02245DDE:
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02245DE4: .word 0x022563F4
_02245DE8: .word 0x02257760
_02245DEC: .word 0xFFFFE000
_02245DF0: .word 0xFFFFD000
_02245DF4: .word 0x000005EB
	thumb_func_end ov23_02245BA8

	thumb_func_start ov23_02245DF8
ov23_02245DF8: ; 0x02245DF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x24
	add r7, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	str r5, [r4, #8]
	str r0, [r4, #0x10]
	ldr r0, _02245E4C ; =0x02257760
	strb r6, [r4, #0xd]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	str r0, [r4, #0x18]
	ldr r0, _02245E4C ; =0x02257760
	strb r7, [r4, #0xc]
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02245E50 ; =ov23_02245BA8
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200D9E8
	ldr r1, _02245E4C ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02245E4C: .word 0x02257760
_02245E50: .word ov23_02245BA8
	thumb_func_end ov23_02245DF8

	thumb_func_start ov23_02245E54
ov23_02245E54: ; 0x02245E54
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #4
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02245E74
	mov r0, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov23_02245DF8
_02245E74:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02245E54

	thumb_func_start ov23_02245E78
ov23_02245E78: ; 0x02245E78
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #4
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02245E98
	mov r0, #1
	add r1, r4, #0
	add r2, r6, #0
	bl ov23_02245DF8
_02245E98:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_02245E78

	thumb_func_start ov23_02245E9C
ov23_02245E9C: ; 0x02245E9C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_0224AD98
	add r0, r4, #0
	bl sub_020593B4
	pop {r4, pc}
	thumb_func_end ov23_02245E9C

	thumb_func_start ov23_02245EAC
ov23_02245EAC: ; 0x02245EAC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl ov23_0224AD7C
	add r0, r4, #0
	mov r1, #0xa
	bl sub_02059390
	pop {r4, pc}
	thumb_func_end ov23_02245EAC

	thumb_func_start ov23_02245EC0
ov23_02245EC0: ; 0x02245EC0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl ov23_0224AD7C
	add r0, r4, #0
	mov r1, #0x14
	bl sub_02059390
	pop {r4, pc}
	thumb_func_end ov23_02245EC0

	thumb_func_start ov23_02245ED4
ov23_02245ED4: ; 0x02245ED4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	add r0, sp, #0xc
	bl sub_020361BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	ble _02245F8A
	mov r0, #0
	add r5, r7, #0
	add r6, r7, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
_02245EF8:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, r2
	str r0, [sp, #0xc]
	adc r1, r3
	ldr r0, [sp]
	str r1, [sp, #0x10]
	lsl r2, r0, #8
	lsr r1, r1, #0x18
	add r0, r5, #0
	orr r2, r1
	add r0, #0x48
	strh r2, [r0]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, r2
	adc r1, r3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r1, #0
	ldr r1, [sp, #4]
	mov r2, #0xc0
	mov r3, #0
	bl sub_020E1F1C
	add r0, r5, #0
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_020E1F1C
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, r2
	adc r1, r3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r1, #0
	ldr r1, [sp, #8]
	ldr r2, _02245F90 ; =0x0000FFFF
	mov r3, #0
	bl sub_020E1F1C
	mov r0, #0x45
	strh r1, [r6, #8]
	lsl r0, r0, #2
	ldrb r0, [r7, r0]
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #2
	cmp r4, r0
	blt _02245EF8
_02245F8A:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02245F90: .word 0x0000FFFF
	thumb_func_end ov23_02245ED4

	thumb_func_start ov23_02245F94
ov23_02245F94: ; 0x02245F94
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _02245FA2
	b _02246208
_02245FA2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245FAE: ; jump table
	.short _02245FC8 - _02245FAE - 2 ; case 0
	.short _02245FE2 - _02245FAE - 2 ; case 1
	.short _0224602E - _02245FAE - 2 ; case 2
	.short _02246070 - _02245FAE - 2 ; case 3
	.short _022460BC - _02245FAE - 2 ; case 4
	.short _022460FA - _02245FAE - 2 ; case 5
	.short _02246130 - _02245FAE - 2 ; case 6
	.short _0224616A - _02245FAE - 2 ; case 7
	.short _022461B2 - _02245FAE - 2 ; case 8
	.short _022461BE - _02245FAE - 2 ; case 9
	.short _02246208 - _02245FAE - 2 ; case 10
	.short _022461CE - _02245FAE - 2 ; case 11
	.short _022461F0 - _02245FAE - 2 ; case 12
_02245FC8:
	bl ov23_02244C10
	str r0, [r4, #4]
	ldr r0, _0224620C ; =0x00000111
	mov r1, #0
	strb r1, [r4, r0]
	bl ov23_02246324
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02245FE2:
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _02246210 ; =0x02257760
	ldr r1, _02246214 ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1d
	bne _02246000
	mov r2, #2
	b _02246002
_02246000:
	mov r2, #0x1c
_02246002:
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_0200985C
	ldr r1, _02246210 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0224602E:
	ldr r0, _02246210 ; =0x02257760
	ldr r1, _02246214 ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1d
	bne _0224603E
	mov r2, #3
	b _02246040
_0224603E:
	mov r2, #0x1d
_02246040:
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #7
	str r1, [sp, #8]
	mov r1, #4
	str r1, [sp, #0xc]
	mov r1, #0x5d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_020098B8
	ldr r1, _02246210 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246070:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _02246210 ; =0x02257760
	ldr r1, _02246214 ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1d
	bne _0224608E
	mov r2, #1
	b _02246090
_0224608E:
	mov r2, #0x1b
_02246090:
	mov r3, #0
	str r3, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02246210 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_022460BC:
	ldr r0, _02246210 ; =0x02257760
	ldr r1, _02246214 ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1d
	bne _022460CC
	mov r2, #0
	b _022460CE
_022460CC:
	mov r2, #0x1a
_022460CE:
	mov r3, #0
	str r3, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02246210 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_022460FA:
	ldr r0, _02246210 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02246210 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	bl ov23_0224644C
	add r0, r4, #0
	bl ov23_02245ED4
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246130:
	ldr r0, _0224620C ; =0x00000111
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x1e
	bls _02246208
	mov r0, #1
	sub r1, r0, #5
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4c
	add r3, r2, #0
	bl ov23_02253F60
	mov r0, #7
	str r0, [r4, #0]
	mov r0, #0x46
	mov r1, #0
	lsl r0, r0, #2
	add sp, #0x10
	str r1, [r4, r0]
	pop {r4, pc}
_0224616A:
	ldr r0, _02246210 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02246640
	cmp r0, #0
	beq _02246192
	ldr r0, _02246218 ; =0x00000113
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02246188
	mov r0, #0xb
	str r0, [r4, #0]
	b _02246192
_02246188:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02246192:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0x3c
	bge _02246208
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x3c
	bne _02246208
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_022461B2:
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_022461BE:
	bl sub_0203608C
	ldr r1, _02246218 ; =0x00000113
	ldrb r1, [r4, r1]
	bl ov23_02246220
	add sp, #0x10
	pop {r4, pc}
_022461CE:
	ldr r0, _02246218 ; =0x00000113
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _0224621C ; =0x00000112
	ldrb r0, [r4, r0]
	bl ov23_022448FC
	ldr r0, _0224620C ; =0x00000111
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0xc
	add sp, #0x10
	str r0, [r4, #0]
	pop {r4, pc}
_022461F0:
	ldr r0, _0224620C ; =0x00000111
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #8
	bls _02246208
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02246208:
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0224620C: .word 0x00000111
_02246210: .word 0x02257760
_02246214: .word 0x00000B3B
_02246218: .word 0x00000113
_0224621C: .word 0x00000112
	thumb_func_end ov23_02245F94

	thumb_func_start ov23_02246220
ov23_02246220: ; 0x02246220
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, _022462A0 ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	cmp r4, #0
	beq _0224629C
	ldr r0, _022462A4 ; =0x00000113
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _02246246
	cmp r1, #0
	beq _02246246
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	bl ov23_022448FC
_02246246:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	mov r0, #1
	mov r1, #0
	sub r2, r1, #4
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	bl ov23_02246370
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _022462A0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r0, _022462A0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _022462A0 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_0224629C:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022462A0: .word 0x02257760
_022462A4: .word 0x00000113
	thumb_func_end ov23_02246220

	thumb_func_start ov23_022462A8
ov23_022462A8: ; 0x022462A8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x12
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	add r7, r2, #0
	bl sub_02018144
	mov r2, #0x12
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02246310 ; =0x00000113
	add r1, r0, #0
	strb r6, [r4, r0]
	add r1, #9
	str r5, [r4, r1]
	ldr r1, _02246314 ; =0x02257760
	ldr r2, [r1, #4]
	ldr r1, _02246318 ; =0x00000B3B
	ldrb r1, [r2, r1]
	cmp r1, #0x1d
	bne _022462E4
	mov r1, #0x20
	add r0, r1, #0
	add r0, #0xf4
	b _022462E8
_022462E4:
	mov r1, #0x10
	add r0, r0, #1
_022462E8:
	strb r1, [r4, r0]
	ldr r0, _0224631C ; =0x00000112
	mov r2, #0x64
	strb r7, [r4, r0]
	ldr r0, _02246314 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02246320 ; =ov23_02245F94
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02246314 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246310: .word 0x00000113
_02246314: .word 0x02257760
_02246318: .word 0x00000B3B
_0224631C: .word 0x00000112
_02246320: .word ov23_02245F94
	thumb_func_end ov23_022462A8

	thumb_func_start ov23_02246324
ov23_02246324: ; 0x02246324
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224636C ; =0x02257760
	mov r0, #0x20
	ldr r1, [r1, #4]
	mov r2, #4
	add r1, #0x48
	bl sub_020095C4
	ldr r1, _0224636C ; =0x02257760
	ldr r2, [r1, #4]
	str r0, [r2, #0x44]
	ldr r0, [r1, #4]
	mov r2, #6
	add r0, #0x48
	mov r1, #0
	lsl r2, r2, #0x12
	bl sub_0200964C
	mov r4, #0
	mov r7, #0x17
	ldr r6, _0224636C ; =0x02257760
	add r5, r4, #0
	lsl r7, r7, #4
_02246352:
	mov r0, #2
	add r1, r4, #0
	mov r2, #4
	bl sub_02009714
	ldr r1, [r6, #4]
	add r4, r4, #1
	add r1, r1, r5
	add r5, r5, #4
	str r0, [r1, r7]
	cmp r4, #4
	blt _02246352
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224636C: .word 0x02257760
	thumb_func_end ov23_02246324

	thumb_func_start ov23_02246370
ov23_02246370: ; 0x02246370
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _022463A4
	ldr r7, _02246448 ; =0x02257760
	add r5, r4, #0
_0224637E:
	ldr r0, [r7, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224639C
	bl sub_02021BD4
	ldr r0, [r7, #4]
	mov r1, #0
	add r2, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	str r1, [r2, r0]
_0224639C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _0224637E
_022463A4:
	ldr r0, _02246448 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022463CC
	bl sub_02009E08
	bl sub_0201EAD8
	cmp r0, #0
	beq _022463CC
	ldr r0, _02246448 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A4E4
_022463CC:
	ldr r1, _02246448 ; =0x02257760
	mov r0, #0x19
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #4
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022463FC
	bl sub_02009E08
	bl sub_0201F9DC
	cmp r0, #0
	beq _022463FC
	ldr r0, _02246448 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A6DC
_022463FC:
	ldr r6, _02246448 ; =0x02257760
	mov r5, #0
	mov r0, #0x65
	ldr r1, [r6, #4]
	lsl r0, r0, #2
	str r5, [r1, r0]
	add r4, r5, #0
	add r7, r5, #0
_0224640C:
	ldr r0, [r6, #4]
	add r1, r0, r4
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224641E
	bl sub_02009754
_0224641E:
	ldr r0, [r6, #4]
	add r5, r5, #1
	add r1, r0, r4
	mov r0, #0x17
	lsl r0, r0, #4
	add r4, r4, #4
	str r7, [r1, r0]
	cmp r5, #4
	blt _0224640C
	ldr r0, _02246448 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _0224643E
	bl sub_02021964
_0224643E:
	ldr r0, _02246448 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x44]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246448: .word 0x02257760
	thumb_func_end ov23_02246370

	thumb_func_start ov23_0224644C
ov23_0224644C: ; 0x0224644C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r7, r0, #0
	ldr r0, _02246544 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	sub r2, r1, #1
	str r1, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #0x17
	str r1, [sp, #0x10]
	lsl r3, r3, #4
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r4, _02246544 ; =0x02257760
	mov r6, #0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x44]
	str r0, [sp, #0x2c]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x30]
	mov r1, #2
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	str r1, [sp, #0x34]
	str r6, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r6, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r6, [sp, #0x50]
	str r0, [sp, #0x58]
	cmp r7, #0
	ble _0224652E
	add r5, r6, #0
_022464CE:
	mov r0, #0x4b
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	ldr r1, [r4, #4]
	add r2, r1, r5
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021E80
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blt _022464CE
_0224652E:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02246544: .word 0x02257760
	thumb_func_end ov23_0224644C

	thumb_func_start ov23_02246548
ov23_02246548: ; 0x02246548
	push {r4, lr}
	lsl r4, r0, #2
	ldr r0, _02246570 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224656E
	bl sub_02021BD4
	ldr r0, _02246570 ; =0x02257760
	mov r2, #0
	ldr r0, [r0, #4]
	add r1, r0, r4
	mov r0, #0x7e
	lsl r0, r0, #2
	str r2, [r1, r0]
_0224656E:
	pop {r4, pc}
	; .align 2, 0
_02246570: .word 0x02257760
	thumb_func_end ov23_02246548

	thumb_func_start ov23_02246574
ov23_02246574: ; 0x02246574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r3, r0, #0
	add r0, r1, #0
	lsl r5, r3, #2
	add r1, r0, r5
	add r1, #0x48
	ldrh r1, [r1]
	str r1, [sp]
	add r1, r0, r5
	add r1, #0x4a
	ldrh r7, [r1]
	cmp r2, #0
	bne _022465A0
	add r6, r0, #0
	add r6, #8
	lsl r4, r3, #1
	mov r1, #1
	ldrh r2, [r6, r4]
	lsl r1, r1, #0xa
	add r1, r2, r1
	strh r1, [r6, r4]
_022465A0:
	lsl r1, r3, #1
	add r0, r0, r1
	ldrh r0, [r0, #8]
	mov r2, #0x12
	lsl r2, r2, #0xa
	asr r0, r0, #4
	lsl r6, r0, #1
	ldr r0, _0224661C ; =0x020F983C
	lsl r1, r6, #1
	ldrsh r0, [r0, r1]
	mov r3, #0
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	orr r4, r0
	add r0, r6, #1
	lsl r1, r0, #1
	ldr r0, _0224661C ; =0x020F983C
	mov r2, #0xa
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xa
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	bpl _022465F2
	neg r1, r1
_022465F2:
	ldr r0, _02246620 ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	add r0, r2, r0
	ldr r2, [r0, r5]
	cmp r2, #0
	beq _02246618
	ldr r2, [sp]
	lsl r2, r2, #0xc
	add r2, r4, r2
	str r2, [sp, #4]
	lsl r2, r7, #0xc
	add r1, r1, r2
	str r1, [sp, #8]
	ldr r0, [r0, r5]
	add r1, sp, #4
	bl sub_02021C50
_02246618:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224661C: .word 0x020F983C
_02246620: .word 0x02257760
	thumb_func_end ov23_02246574

	thumb_func_start ov23_02246624
ov23_02246624: ; 0x02246624
	cmp r0, #0
	bne _02246634
	ldr r1, _02246638 ; =0x02257760
	mov r0, #0
	ldrsb r2, [r1, r0]
	ldr r1, [r1, #4]
	ldr r0, _0224663C ; =0x00000B3A
	strb r2, [r1, r0]
_02246634:
	bx lr
	nop
_02246638: .word 0x02257760
_0224663C: .word 0x00000B3A
	thumb_func_end ov23_02246624

	thumb_func_start ov23_02246640
ov23_02246640: ; 0x02246640
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r1, _02246890 ; =0x02257760
	ldr r2, _02246894 ; =ov23_02246624
	mov r3, #0
	mov r0, #2
	bl sub_02004B70
	ldr r0, _02246898 ; =0x02257760
	ldr r2, [r0, #4]
	ldr r0, _0224689C ; =0x00000B3B
	ldrb r1, [r2, r0]
	cmp r1, #0x1d
	bne _0224666E
	sub r0, r0, #1
	ldrsb r0, [r2, r0]
	bl sub_020D4070
	mov r1, #0x21
	bl sub_020E1F6C
	b _0224667C
_0224666E:
	sub r0, r0, #1
	ldrsb r0, [r2, r0]
	bl sub_020D4070
	mov r1, #0x19
	bl sub_020E1F6C
_0224667C:
	mov r1, #0x11
	lsl r1, r1, #4
	ldrb r1, [r5, r1]
	mov r2, #0x7e
	lsl r2, r2, #2
	add r1, r5, r1
	add r1, #0xc8
	strb r0, [r1]
	ldr r0, _02246898 ; =0x02257760
	add r1, r2, #0
	mov r4, #0
	ldr r0, [r0, #4]
	sub r1, #0xe4
	b _022466A4
_02246698:
	lsl r3, r4, #2
	add r3, r0, r3
	ldr r3, [r3, r2]
	cmp r3, #0
	bne _022466AA
	add r4, r4, #1
_022466A4:
	ldrb r3, [r5, r1]
	cmp r4, r3
	blt _02246698
_022466AA:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r4, r0
	bne _022466BA
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022466BA:
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x4a
	add r7, r5, #0
	mov r4, #0
	str r0, [sp, #0x10]
	add r7, #0x48
	b _0224685E
_022466CA:
	lsl r2, r4, #2
	add r0, r5, r2
	add r0, #0x48
	ldrh r1, [r0]
	cmp r1, #0
	beq _022466EC
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bhs _022466EC
	add r0, r5, r2
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0
	beq _022466EC
	cmp r0, #0xc0
	blo _022466F4
_022466EC:
	add r0, r4, #0
	bl ov23_02246548
	b _0224685C
_022466F4:
	mov r0, #0x11
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	add r0, r5, r4
	add r0, #0xf0
	ldrb r0, [r0]
	sub r0, r1, r0
	bpl _02246706
	add r0, #0x28
_02246706:
	add r0, r5, r0
	add r0, #0xc8
	lsl r1, r4, #2
	ldrb r6, [r0]
	add r0, r5, r1
	add r0, #0x48
	add r1, r5, r1
	ldrh r0, [r0]
	add r1, #0x4a
	ldrh r1, [r1]
	sub r0, #0x80
	lsl r0, r0, #0xc
	sub r1, #0x60
	str r0, [sp, #4]
	lsl r0, r1, #0xc
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsr r0, r0, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #8]
	orr r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	ldr r0, [sp, #8]
	orr r2, r1
	add r0, r2, r0
	bl sub_020BCFF0
	str r0, [sp, #0xc]
	cmp r6, #0
	bne _0224679A
	mov r1, #0xa
	lsl r1, r1, #0x10
	bl sub_020BCFD0
	mov r2, #0x26
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0xc
	add r0, r5, r4
	add r0, #0xf0
	strb r1, [r0]
	b _02246852
_0224679A:
	lsl r2, r4, #2
	add r0, r5, r2
	add r0, #0x48
	ldrh r1, [r0]
	add r0, r5, r2
	add r0, #0x4a
	ldrh r0, [r0]
	sub r1, #0x80
	sub r0, #0x60
	bne _022467C0
	cmp r1, #0
	ldrh r0, [r7, r2]
	bge _022467BA
	sub r0, r0, r6
	strh r0, [r7, r2]
	b _02246852
_022467BA:
	add r0, r0, r6
	strh r0, [r7, r2]
	b _02246852
_022467C0:
	cmp r1, #0
	bne _022467E0
	cmp r0, #0
	bge _022467D4
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, r2]
	sub r1, r0, r6
	ldr r0, [sp, #0x10]
	strh r1, [r0, r2]
	b _02246852
_022467D4:
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, r2]
	add r1, r0, r6
	ldr r0, [sp, #0x10]
	strh r1, [r0, r2]
	b _02246852
_022467E0:
	bl sub_020BDA20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r1, r6, #0xc
	add r0, r0, r1
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _022468A4 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0xc
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r2, [sp]
	add r1, #0x60
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	asr r3, r2, #0x1f
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _022468A4 ; =0x020F983C
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _022468A0 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0xc
	lsl r0, r4, #2
	add r0, r5, r0
	add r1, #0x80
	add r0, #0x48
	strh r1, [r0]
_02246852:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov23_02246574
_0224685C:
	add r4, r4, #1
_0224685E:
	mov r0, #0x45
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0224686A
	b _022466CA
_0224686A:
	mov r0, #0x11
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	ldrb r1, [r5, r0]
	cmp r1, #0x28
	blo _0224687E
	mov r1, #0
	strb r1, [r5, r0]
_0224687E:
	ldr r0, _02246898 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246890: .word 0x02257760
_02246894: .word ov23_02246624
_02246898: .word 0x02257760
_0224689C: .word 0x00000B3B
_022468A0: .word 0x00000000
_022468A4: .word 0x020F983C
	thumb_func_end ov23_02246640

	thumb_func_start ov23_022468A8
ov23_022468A8: ; 0x022468A8
	push {r3, lr}
	ldr r1, _022468BC ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0x2a
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _022468BA
	blx r1
_022468BA:
	pop {r3, pc}
	; .align 2, 0
_022468BC: .word 0x02257760
	thumb_func_end ov23_022468A8

	thumb_func_start ov23_022468C0
ov23_022468C0: ; 0x022468C0
	ldr r0, _022468D4 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022468D8 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x17
	bne _022468D0
	mov r0, #0x14
	bx lr
_022468D0:
	mov r0, #7
	bx lr
	; .align 2, 0
_022468D4: .word 0x02257760
_022468D8: .word 0x00000B3B
	thumb_func_end ov23_022468C0

	thumb_func_start ov23_022468DC
ov23_022468DC: ; 0x022468DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x24
	bl sub_020361BC
	bl ov23_022468C0
	str r0, [sp, #4]
	ldr r0, _02246A70 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _02246A74 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x17
	bne _02246922
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	add r0, r2, r0
	adc r3, r1
	mov r1, #0
	str r0, [sp, #0x24]
	lsr r0, r3, #0x1f
	lsl r1, r1, #1
	orr r1, r0
	add r0, r1, #1
	str r3, [sp, #0x28]
	str r0, [sp, #0xc]
_02246922:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	add r0, r2, r0
	adc r3, r1
	str r0, [sp, #0x24]
	str r3, [sp, #0x28]
	add r0, r3, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_020E1F1C
	ldr r0, [sp, #0xc]
	mov r6, #0
	add r0, r0, r1
	add r0, r0, #5
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _02246958
	b _02246A6A
_02246958:
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
_02246962:
	ldr r0, [sp, #4]
	sub r0, r0, r6
	sub r4, r0, #1
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bge _02246976
	add r1, r5, r4
	mov r0, #0
	strb r0, [r1, #8]
	b _0224698A
_02246976:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _02246984
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #8]
	b _0224698A
_02246984:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #8]
_0224698A:
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	lsl r1, r0, #2
	ldr r0, _02246A78 ; =0x022563E8
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x30]
	str r0, [sp]
	lsl r7, r0, #1
	mov r0, #0xc0
	sub r0, r0, r7
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	bl sub_020E1F1C
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r1, r1, r2
	adc r0, r3
	str r1, [sp, #0x24]
	mov r1, #1
	lsl r1, r1, #8
	str r0, [sp, #0x28]
	sub r2, r1, r7
	beq _022469CA
	ldr r1, [sp, #0x14]
	mov r3, #0
	bl sub_020E1F1C
	add r0, r1, #0
_022469CA:
	lsl r1, r4, #3
	add r7, r5, r1
	ldr r1, [sp]
	add r0, r1, r0
	lsl r0, r0, #0xc
	str r0, [r7, #0x44]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	add r2, r0, #0
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x38]
	add r0, r0, r2
	str r0, [sp, #0x24]
	adc r3, r1
	ldr r0, [sp, #0x10]
	str r3, [sp, #0x28]
	cmp r0, #0
	beq _02246A04
	ldr r1, [sp, #0x18]
	add r0, r3, #0
	ldr r2, [sp, #0x10]
	mov r3, #0
	bl sub_020E1F1C
	add r3, r1, #0
_02246A04:
	ldr r0, [sp]
	add r0, r0, r3
	lsl r0, r0, #0xc
	str r0, [r7, #0x48]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	ldr r3, [sp, #0x34]
	ldr r2, [sp, #0x38]
	add r0, r3, r0
	adc r2, r1
	str r0, [sp, #0x24]
	lsl r0, r4, #1
	add r4, r5, r0
	str r2, [sp, #0x28]
	add r0, r2, #0
	ldr r1, [sp, #0x1c]
	ldr r2, _02246A7C ; =0x0000FFFF
	mov r3, #0
	bl sub_020E1F1C
	strh r1, [r4, #0x1c]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl sub_020E1F1C
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	add r0, r2, r0
	adc r3, r1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, _02246A7C ; =0x0000FFFF
	str r3, [sp, #0x28]
	add r0, r3, #0
	mov r3, #0
	bl sub_020E1F1C
	mov r0, #0x4d
	lsl r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	bge _02246A6A
	b _02246962
_02246A6A:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02246A70: .word 0x02257760
_02246A74: .word 0x00000B3B
_02246A78: .word 0x022563E8
_02246A7C: .word 0x0000FFFF
	thumb_func_end ov23_022468DC

	thumb_func_start ov23_02246A80
ov23_02246A80: ; 0x02246A80
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _02246A8E
	b _02246CD6
_02246A8E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02246A9A: ; jump table
	.short _02246AB4 - _02246A9A - 2 ; case 0
	.short _02246AD0 - _02246A9A - 2 ; case 1
	.short _02246B10 - _02246A9A - 2 ; case 2
	.short _02246B44 - _02246A9A - 2 ; case 3
	.short _02246B84 - _02246A9A - 2 ; case 4
	.short _02246BB4 - _02246A9A - 2 ; case 5
	.short _02246BCA - _02246A9A - 2 ; case 6
	.short _02246C0A - _02246A9A - 2 ; case 7
	.short _02246C6E - _02246A9A - 2 ; case 8
	.short _02246C84 - _02246A9A - 2 ; case 9
	.short _02246CD6 - _02246A9A - 2 ; case 10
	.short _02246C98 - _02246A9A - 2 ; case 11
	.short _02246CBC - _02246A9A - 2 ; case 12
_02246AB4:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	bl ov23_02246324
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246AD0:
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02246CDC ; =0x02257760
	mov r2, #6
	ldr r1, [r0, #4]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_0200985C
	ldr r1, _02246CDC ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #1
	str r0, [sp]
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246B10:
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r2, #7
	str r2, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _02246CDC ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_020098B8
	ldr r1, _02246CDC ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246B44:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02246CDC ; =0x02257760
	mov r2, #5
	ldr r1, [r0, #4]
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02246CDC ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246B84:
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r2, #4
	ldr r0, _02246CDC ; =0x02257760
	str r2, [sp, #8]
	ldr r1, [r0, #4]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02246CDC ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246BB4:
	add r0, r4, #0
	bl ov23_022468DC
	add r0, r4, #0
	bl ov23_02246D44
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02246BCA:
	mov r0, #0x57
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x1e
	bls _02246CD6
	mov r1, #3
	ldr r0, _02246CE0 ; =0x0400006C
	mvn r1, r1
	bl sub_020BDEC4
	mov r0, #7
	str r0, [r4, #0]
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4d
	add r3, r2, #0
	bl ov23_02253F60
	mov r0, #0x16
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x66
	lsl r0, r0, #4
	bl sub_02005748
	add sp, #0x10
	pop {r4, pc}
_02246C0A:
	mov r0, #7
	str r0, [sp]
	ldr r0, _02246CE4 ; =0x04000050
	mov r1, #0x10
	mov r2, #1
	mov r3, #0xe
	bl sub_020BF55C
	ldr r0, _02246CDC ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02246F20
	cmp r0, #0
	beq _02246C4E
	mov r0, #0x66
	lsl r0, r0, #4
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02246CE8 ; =0x0000015E
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02246C44
	mov r0, #0xb
	str r0, [r4, #0]
	b _02246C4E
_02246C44:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02246C4E:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0x3c
	bge _02246CD6
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x3c
	bne _02246CD6
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_02246C6E:
	mov r0, #0x66
	lsl r0, r0, #4
	mov r1, #0
	bl sub_020057A4
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_02246C84:
	mov r0, #0xa
	str r0, [r4, #0]
	bl sub_0203608C
	ldr r1, _02246CE8 ; =0x0000015E
	ldrb r1, [r4, r1]
	bl ov23_02247144
	add sp, #0x10
	pop {r4, pc}
_02246C98:
	ldr r0, _02246CE8 ; =0x0000015E
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _02246CEC ; =0x0000015D
	ldrb r0, [r4, r0]
	bl ov23_022448FC
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r0, #0xc
	add sp, #0x10
	str r0, [r4, #0]
	pop {r4, pc}
_02246CBC:
	mov r0, #0x57
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #8
	bls _02246CD6
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02246CD6:
	add sp, #0x10
	pop {r4, pc}
	nop
_02246CDC: .word 0x02257760
_02246CE0: .word 0x0400006C
_02246CE4: .word 0x04000050
_02246CE8: .word 0x0000015E
_02246CEC: .word 0x0000015D
	thumb_func_end ov23_02246A80

	thumb_func_start ov23_02246CF0
ov23_02246CF0: ; 0x02246CF0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x59
	mov r0, #4
	lsl r1, r1, #2
	add r6, r2, #0
	bl sub_02018184
	mov r2, #0x59
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02246D34 ; =0x0000015E
	mov r2, #0x64
	strb r5, [r4, r0]
	ldr r0, _02246D38 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02246D3C ; =ov23_02246A80
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02246D38 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, _02246D40 ; =0x0000015D
	strb r6, [r4, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02246D34: .word 0x0000015E
_02246D38: .word 0x02257760
_02246D3C: .word ov23_02246A80
_02246D40: .word 0x0000015D
	thumb_func_end ov23_02246CF0

	thumb_func_start ov23_02246D44
ov23_02246D44: ; 0x02246D44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r0, [sp, #0x2c]
	ldr r0, _02246E8C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02246E8C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	ldr r0, _02246E8C ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x17
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r3, r3, #4
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r0, _02246E8C ; =0x02257760
	mov r6, #0
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x44]
	str r0, [sp, #0x30]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x34]
	mov r1, #2
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x3c]
	lsr r0, r1, #5
	str r1, [sp, #0x38]
	str r6, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, sp, #0x30
	strh r6, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x58]
	mov r0, #4
	str r6, [sp, #0x54]
	str r0, [sp, #0x5c]
	bl ov23_022468C0
	cmp r0, #0
	ble _02246E78
	add r5, r6, #0
	ldr r4, _02246E8C ; =0x02257760
	add r7, r5, #0
_02246DEA:
	mov r0, #0x4b
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl sub_02021AA0
	ldr r1, [r4, #4]
	add r2, r1, r5
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CF8
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x2c]
	add r1, r1, r6
	ldrb r1, [r1, #8]
	lsl r1, r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	bl sub_02021E50
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021FE0
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021E80
	add r5, r5, #4
	add r7, r7, #4
	add r6, r6, #1
	bl ov23_022468C0
	cmp r6, r0
	blt _02246DEA
_02246E78:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02246E8C: .word 0x02257760
	thumb_func_end ov23_02246D44

	thumb_func_start ov23_02246E90
ov23_02246E90: ; 0x02246E90
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02246F18 ; =0x02257760
	add r4, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	add r1, r1, r0
	lsl r0, r5, #2
	ldr r2, [r1, r0]
	cmp r2, #0
	beq _02246F14
	lsl r2, r5, #3
	add r3, r4, r2
	ldr r2, [r3, #0x44]
	str r2, [sp]
	ldr r2, [r3, #0x48]
	str r2, [sp, #4]
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0x4d
	lsl r0, r0, #2
	add r2, r4, r0
	lsl r1, r5, #1
	mov r3, #0x64
	add r4, r5, #0
	mul r4, r3
	mov r3, #0x25
	lsl r3, r3, #4
	ldrh r0, [r2, r1]
	add r3, r4, r3
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r0, [r2, r1]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02246F1C ; =0x020F983C
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	lsl r0, r0, #0x10
	mov r1, #5
	asr r0, r0, #0x10
	lsl r1, r1, #0xe
	bl sub_020BCFD0
	mov r1, #1
	lsl r1, r1, #0xc
	sub r0, r1, r0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246F18 ; =0x02257760
	ldr r1, [r0, #4]
	lsl r0, r5, #2
	add r1, r1, r0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C70
_02246F14:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02246F18: .word 0x02257760
_02246F1C: .word 0x020F983C
	thumb_func_end ov23_02246E90

	thumb_func_start ov23_02246F20
ov23_02246F20: ; 0x02246F20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r6, #0
	str r1, [sp]
	add r4, r6, #0
	bl ov23_022468C0
	cmp r0, #0
	ble _02246F56
	ldr r5, [sp]
_02246F34:
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02246F48
	ldr r1, [sp]
	add r0, r4, #0
	bl ov23_02246E90
	b _02246F4A
_02246F48:
	add r6, r6, #1
_02246F4A:
	add r5, r5, #4
	add r4, r4, #1
	bl ov23_022468C0
	cmp r4, r0
	blt _02246F34
_02246F56:
	bl ov23_022468C0
	cmp r6, r0
	bne _02246F64
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02246F64:
	ldr r0, _022470F0 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02247034
	mov r5, #0
	bl ov23_022468C0
	cmp r0, #0
	ble _02247034
	ldr r6, [sp]
	add r4, r6, #0
_02246F7A:
	add r0, r6, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02247026
	ldr r0, _022470F0 ; =0x021BF6BC
	ldrh r0, [r0, #0x1e]
	lsl r1, r0, #0xc
	ldr r0, [r4, #0x48]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	asr r7, r0, #0x1f
	ldr r0, _022470F0 ; =0x021BF6BC
	ldrh r0, [r0, #0x1c]
	lsl r1, r0, #0xc
	ldr r0, [r4, #0x44]
	sub r0, r1, r0
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020E1F1C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl sub_020E1F1C
	add r7, r0, #0
	add r3, r1, #0
	mov r0, #2
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xa
	add r2, r1, r0
	ldr r1, [sp, #8]
	ldr r0, _022470F4 ; =0x00000000
	adc r1, r0
	str r1, [sp, #8]
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xa
	ldr r2, _022470F4 ; =0x00000000
	add r0, r7, r0
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	bl sub_020BCFF0
	ldr r1, [sp]
	add r1, r1, r5
	ldrb r1, [r1, #8]
	lsl r2, r1, #2
	ldr r1, _022470F8 ; =0x022563E8
	ldr r1, [r1, r2]
	lsl r1, r1, #0xc
	cmp r1, r0
	ble _02247026
	ldr r0, _022470FC ; =0x00000626
	bl sub_02005748
	ldr r0, _02247100 ; =0x02257760
	lsl r4, r5, #2
	ldr r0, [r0, #4]
	add r1, r0, r4
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp]
	add r1, r1, r5
	ldrb r1, [r1, #8]
	lsl r1, r1, #1
	add r1, r1, #1
	bl sub_02021D6C
	ldr r0, [sp]
	mov r1, #1
	add r0, r0, r4
	add r0, #0xe4
	str r1, [r0, #0]
	b _02247034
_02247026:
	add r6, r6, #4
	add r4, #8
	add r5, r5, #1
	bl ov23_022468C0
	cmp r5, r0
	blt _02246F7A
_02247034:
	mov r6, #0
	bl ov23_022468C0
	cmp r0, #0
	ble _022470E0
	ldr r7, [sp]
	add r4, r7, #0
	add r5, r7, #0
_02247044:
	add r0, r7, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022470D0
	ldrh r0, [r4, #0x1c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02247104 ; =0x020F983C
	ldrsh r1, [r0, r1]
	ldr r0, [r5, #0x48]
	sub r0, r0, r1
	str r0, [r5, #0x48]
	ldrh r1, [r4, #0x1c]
	ldr r0, [r5, #0x44]
	asr r1, r1, #4
	lsl r2, r1, #2
	ldr r1, _02247104 ; =0x020F983C
	add r2, r1, r2
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [sp]
	add r0, r0, r6
	ldrb r0, [r0, #8]
	lsl r1, r0, #2
	ldr r0, _022470F8 ; =0x022563E8
	ldr r1, [r0, r1]
	ldr r0, [r5, #0x48]
	lsl r3, r1, #0xc
	cmp r0, r3
	bge _02247090
	ldrh r2, [r4, #0x1c]
	ldr r0, _02247108 ; =0x0000FFFF
	sub r0, r0, r2
	strh r0, [r4, #0x1c]
	b _022470A2
_02247090:
	mov r2, #0xc0
	sub r2, r2, r1
	lsl r2, r2, #0xc
	cmp r0, r2
	blt _022470A2
	ldrh r2, [r4, #0x1c]
	ldr r0, _02247108 ; =0x0000FFFF
	sub r0, r0, r2
	strh r0, [r4, #0x1c]
_022470A2:
	ldr r0, [r5, #0x44]
	cmp r0, r3
	bge _022470B8
	ldrh r1, [r4, #0x1c]
	mov r0, #2
	lsl r0, r0, #0xe
	sub r1, r1, r0
	ldr r0, _02247108 ; =0x0000FFFF
	sub r0, r0, r1
	strh r0, [r4, #0x1c]
	b _022470D0
_022470B8:
	mov r2, #1
	lsl r2, r2, #8
	sub r1, r2, r1
	lsl r1, r1, #0xc
	cmp r0, r1
	blt _022470D0
	ldrh r1, [r4, #0x1c]
	lsl r0, r2, #7
	sub r1, r1, r0
	ldr r0, _02247108 ; =0x0000FFFF
	sub r0, r0, r1
	strh r0, [r4, #0x1c]
_022470D0:
	add r7, r7, #4
	add r4, r4, #2
	add r5, #8
	add r6, r6, #1
	bl ov23_022468C0
	cmp r6, r0
	blt _02247044
_022470E0:
	ldr r0, _02247100 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022470F0: .word 0x021BF6BC
_022470F4: .word 0x00000000
_022470F8: .word 0x022563E8
_022470FC: .word 0x00000626
_02247100: .word 0x02257760
_02247104: .word 0x020F983C
_02247108: .word 0x0000FFFF
	thumb_func_end ov23_02246F20

	thumb_func_start ov23_0224710C
ov23_0224710C: ; 0x0224710C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02247132
	ldr r0, _02247134 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02246CF0
_02247132:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247134: .word 0x02257760
	thumb_func_end ov23_0224710C

	thumb_func_start ov23_02247138
ov23_02247138: ; 0x02247138
	ldr r3, _02247140 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02247140: .word ov23_0224AD7C
	thumb_func_end ov23_02247138

	thumb_func_start ov23_02247144
ov23_02247144: ; 0x02247144
	push {r3, r4, r5, lr}
	ldr r0, _022471C8 ; =0x02257760
	add r5, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _022471C6
	mov r0, #0x66
	lsl r0, r0, #4
	mov r1, #0
	bl sub_020057A4
	ldr r0, _022471CC ; =0x0000015E
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02247174
	cmp r5, #0
	beq _02247174
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	bl ov23_022448FC
_02247174:
	ldr r1, _022471D0 ; =0x04000050
	mov r0, #0
	strh r0, [r1]
	mov r1, #1
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _022471D4 ; =0x0400006C
	mov r1, #0
	bl sub_020BDEC4
	bl ov23_022468C0
	bl ov23_02246370
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _022471C8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r0, _022471C8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, _022471C8 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_022471C6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022471C8: .word 0x02257760
_022471CC: .word 0x0000015E
_022471D0: .word 0x04000050
_022471D4: .word 0x0400006C
	thumb_func_end ov23_02247144

	thumb_func_start ov23_022471D8
ov23_022471D8: ; 0x022471D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r0, _02247308 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02247308 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	ldr r0, _02247308 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x17
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r3, r3, #4
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r4, _02247308 ; =0x02257760
	mov r6, #0
	ldr r1, [r4, #4]
	mov r7, #0x19
	ldr r0, [r1, #0x44]
	add r5, r6, #0
	str r0, [sp, #0x2c]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x30]
	mov r1, #2
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	str r1, [sp, #0x34]
	str r6, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r6, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r6, [sp, #0x50]
	str r0, [sp, #0x58]
	lsl r7, r7, #0xe
_02247274:
	add r0, sp, #0x2c
	str r7, [sp, #0x34]
	str r7, [sp, #0x38]
	bl sub_02021AA0
	ldr r1, [r4, #4]
	add r2, r1, r5
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0xf
	sub r1, r1, r6
	bl sub_02021F58
	ldr r0, [r4, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021E80
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0xf
	blt _02247274
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02247308: .word 0x02257760
	thumb_func_end ov23_022471D8

	thumb_func_start ov23_0224730C
ov23_0224730C: ; 0x0224730C
	push {r4, lr}
	lsl r1, r1, #2
	add r4, r0, r1
	str r2, [r4, #8]
	add r0, r4, #0
	ldr r2, [sp, #8]
	add r0, #0x80
	str r2, [r0, #0]
	str r3, [r4, #0x44]
	ldr r0, [sp, #0xc]
	add r4, #0xbc
	str r0, [r4, #0]
	ldr r0, _02247338 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r1
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	pop {r4, pc}
	; .align 2, 0
_02247338: .word 0x02257760
	thumb_func_end ov23_0224730C

	thumb_func_start ov23_0224733C
ov23_0224733C: ; 0x0224733C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	cmp r1, #4
	bhi _0224735C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02247352: ; jump table
	.short _022474B6 - _02247352 - 2 ; case 0
	.short _0224747E - _02247352 - 2 ; case 1
	.short _0224742E - _02247352 - 2 ; case 2
	.short _022473C6 - _02247352 - 2 ; case 3
	.short _0224735C - _02247352 - 2 ; case 4
_0224735C:
	mov r0, #2
	mov r2, #0x69
	str r0, [sp]
	sub r0, r0, #6
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xb7
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xb
	sub r3, r3, #5
	bl ov23_0224730C
	mov r0, #1
	mvn r0, r0
	mov r2, #0x8c
	str r0, [sp]
	sub r0, r0, #2
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x94
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xc
	sub r3, #0xf
	bl ov23_0224730C
	mov r0, #1
	mvn r0, r0
	mov r2, #0x87
	str r0, [sp]
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x99
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xd
	sub r3, #0x14
	bl ov23_0224730C
	mov r0, #2
	mov r2, #0x78
	str r0, [sp]
	mov r0, #0
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xa8
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xe
	sub r3, #0xb
	bl ov23_0224730C
_022473C6:
	mov r0, #3
	mov r2, #0x80
	str r0, [sp]
	sub r0, r0, #7
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xa0
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #7
	sub r3, r3, #5
	bl ov23_0224730C
	mov r0, #2
	mvn r0, r0
	mov r2, #0x84
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x9c
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #8
	sub r3, #0xf
	bl ov23_0224730C
	mov r0, #1
	mov r2, #0x70
	str r0, [sp]
	sub r0, r0, #3
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xb0
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #9
	bl ov23_0224730C
	mov r0, #1
	mov r2, #0x73
	str r0, [sp]
	sub r0, r0, #3
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xad
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0xa
	add r3, r3, #2
	bl ov23_0224730C
_0224742E:
	mov r0, #2
	mov r2, #0x8c
	str r0, [sp]
	sub r0, r0, #5
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x94
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #4
	sub r3, #0xa
	bl ov23_0224730C
	mov r0, #1
	mvn r0, r0
	mov r2, #0x8c
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0x94
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #5
	sub r3, #0x14
	bl ov23_0224730C
	mov r0, #0
	mvn r0, r0
	mov r2, #0x6e
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xb2
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #6
	bl ov23_0224730C
_0224747E:
	mov r0, #1
	mvn r0, r0
	mov r2, #0x78
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xa8
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #2
	sub r3, #0x1e
	bl ov23_0224730C
	mov r0, #1
	mvn r0, r0
	mov r2, #0x64
	str r0, [sp]
	sub r0, r0, #1
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xbc
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #3
	sub r3, #0xa
	bl ov23_0224730C
_022474B6:
	mov r0, #2
	mov r2, #0x80
	str r0, [sp]
	sub r0, r0, #5
	add r3, r2, #0
	str r0, [sp, #4]
	add r3, #0xa0
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #1
	sub r3, #0x1e
	bl ov23_0224730C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov23_0224733C

	thumb_func_start ov23_022474D4
ov23_022474D4: ; 0x022474D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r7, #0
	add r4, r6, #0
	add r5, r7, #0
_022474E0:
	add r0, r4, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02247556
	ldr r0, [r4, #8]
	add r0, r0, r1
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #0]
	add r0, r1, r0
	str r0, [r4, #0x44]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0, #0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r4, #0x44]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, _02247564 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C50
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	ldr r1, [r4, #0x44]
	add r0, #0x23
	cmp r1, r0
	ble _02247556
	ldr r0, _02247564 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	add r1, r4, #0
	add r1, #0x80
	mov r0, #0
	str r0, [r1, #0]
_02247556:
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #0xf
	blt _022474E0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02247564: .word 0x02257760
	thumb_func_end ov23_022474D4

	thumb_func_start ov23_02247568
ov23_02247568: ; 0x02247568
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r0, _022478A4 ; =0x00000125
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #6
	bhi _0224766E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247582: ; jump table
	.short _02247590 - _02247582 - 2 ; case 0
	.short _022475D8 - _02247582 - 2 ; case 1
	.short _02247608 - _02247582 - 2 ; case 2
	.short _02247692 - _02247582 - 2 ; case 3
	.short _022477A0 - _02247582 - 2 ; case 4
	.short _0224781A - _02247582 - 2 ; case 5
	.short _022479B4 - _02247582 - 2 ; case 6
_02247590:
	mov r1, #0
	sub r0, r0, #1
	strb r1, [r4, r0]
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	add r5, r0, #0
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _022478A8 ; =0x02257760
	add r1, r5, #0
	ldr r0, [r0, #4]
	mov r3, #5
	ldr r0, [r0, #0x40]
	bl ov5_021F4F18
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0x11
	strb r0, [r4, r1]
	ldr r0, _022478AC ; =0x0000065E
	bl sub_02005748
	b _022479DE
_022475D8:
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x14
	bls _0224766E
	mov r1, #2
	strb r1, [r4, r0]
	mov r1, #0
	sub r2, r0, #5
	str r1, [r4, r2]
	add r2, r0, #0
	mov r3, #5
	sub r2, #9
	str r3, [r4, r2]
	ldr r2, _022478A8 ; =0x02257760
	add r0, #0xd3
	ldr r2, [r2, #4]
	ldr r0, [r2, r0]
	bl sub_02021D6C
	b _022479DE
_02247608:
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [sp, #8]
	sub r1, r0, #5
	ldr r1, [r4, r1]
	add r0, #0xd3
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	ldr r1, _022478A8 ; =0x02257760
	ldr r1, [r1, #4]
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, _022478A8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #0x41
	ble _0224767E
	mov r2, #3
	add r0, r1, #5
	strb r2, [r4, r0]
	ldr r0, _022478B0 ; =0x0000065D
	bl sub_02005748
	ldr r0, _022478A8 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022478B4 ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x15
	bne _0224765C
	mov r1, #0
	mvn r1, r1
	b _0224765E
_0224765C:
	mov r1, #5
_0224765E:
	mov r0, #0x46
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02247670
_0224766E:
	b _022479DE
_02247670:
	bl sub_0207136C
	mov r0, #0x45
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _022479DE
_0224767E:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r0, r2, r0
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r2, r0, #3
	sub r0, r1, #4
	str r2, [r4, r0]
	b _022479DE
_02247692:
	ldr r1, _022478B8 ; =0x021BF6BC
	ldrh r2, [r1, #0x20]
	cmp r2, #0
	beq _02247742
	sub r0, r0, #5
	ldrh r2, [r1, #0x1e]
	ldr r0, [r4, r0]
	sub r0, r2, r0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	ldrh r0, [r1, #0x1c]
	sub r0, #0x80
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl sub_020E1F1C
	add r6, r0, #0
	ldr r0, [sp, #4]
	add r5, r1, #0
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r6, r2
	adc r5, r3
	lsl r5, r5, #0x14
	lsr r6, r6, #0xc
	orr r6, r5
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r6, r1
	bl sub_020BCFF0
	mov r1, #3
	lsl r1, r1, #0x10
	cmp r0, r1
	bge _02247742
	mov r0, #0x4b
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _022478BC ; =0x00000627
	bl sub_02005748
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r5, [r4, r0]
	mov r1, #3
	add r0, r5, #0
	bl sub_020E1F6C
	cmp r1, #2
	bne _02247742
	add r0, r5, #0
	mov r1, #3
	bl sub_020E1F6C
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	add r0, #0xf8
	add r1, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200A490
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r1, #4
	add r0, r0, #1
	strb r1, [r4, r0]
_02247742:
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0xf
	ble _02247760
	add r0, r1, #0
	mov r3, #0
	add r0, #0xc
	strb r3, [r4, r0]
	add r0, r1, #0
	mov r2, #5
	add r0, #0xd
	strb r2, [r4, r0]
	add r1, #0x14
	str r3, [r4, r1]
_02247760:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0224777A
	bge _02247770
	add r1, r1, #1
	str r1, [r4, r0]
_02247770:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	neg r1, r1
	str r1, [r4, r0]
_0224777A:
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, #0x80
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	add r1, #0xcc
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, r1]
	add r1, sp, #8
	bl sub_02021C50
	b _022479DE
_022477A0:
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _022477BA
	sub r0, #0xd
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_020E1F6C
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_0224733C
_022477BA:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov23_022474D4
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0x14
	bne _022477DA
	mov r1, #3
	add r0, r0, #1
	strb r1, [r4, r0]
_022477DA:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _022477F4
	bge _022477EA
	add r1, r1, #1
	str r1, [r4, r0]
_022477EA:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	neg r1, r1
	str r1, [r4, r0]
_022477F4:
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, #0x80
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	add r1, #0xcc
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, r1]
	add r1, sp, #8
	bl sub_02021C50
	b _022479DE
_0224781A:
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02247824
	b _02247944
_02247824:
	ldr r0, _022478C0 ; =0x0000062A
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x11
	add r0, #0xf8
	lsl r1, r1, #4
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	bl sub_0200A490
	mov r7, #1
	mov r5, #4
	mov r6, #0x52
_02247840:
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
	lsl r0, r6, #0xc
	str r0, [sp, #8]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	lsr r1, r7, #0x1f
	lsl r3, r7, #0x1f
	sub r3, r3, r1
	mov r0, #0x1f
	ror r3, r0
	add r2, #0x27
	add r0, r1, r3
	add r0, r2, r0
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, _022478A8 ; =0x02257760
	ldr r0, [r0, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	add r7, r7, #1
	add r5, r5, #4
	add r6, #0xc
	cmp r7, #9
	blt _02247840
	ldr r0, _022478A8 ; =0x02257760
	b _022478C4
	nop
_022478A4: .word 0x00000125
_022478A8: .word 0x02257760
_022478AC: .word 0x0000065E
_022478B0: .word 0x0000065D
_022478B4: .word 0x00000B3B
_022478B8: .word 0x021BF6BC
_022478BC: .word 0x00000627
_022478C0: .word 0x0000062A
_022478C4:
	ldr r1, [r0, #4]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0x19
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r0, #0x15
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
	mov r0, #0x7a
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
_02247944:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	add r1, #0x7b
	lsl r0, r1, #0xc
	str r0, [sp, #8]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, #0xd8
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	ldr r1, _022479F0 ; =0x02257760
	ldr r1, [r1, #4]
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_02021C50
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r2, #0x1d
	add r1, r1, #1
	str r1, [r4, r0]
	add r1, r0, #4
	ldrb r1, [r4, r1]
	lsr r5, r1, #0x1f
	lsl r3, r1, #0x1d
	sub r3, r3, r5
	ror r3, r2
	add r2, r5, r3
	beq _022479A2
	ldr r2, _022479F0 ; =0x02257760
	lsr r1, r1, #3
	ldr r2, [r2, #4]
	add r0, #0xd8
	ldr r0, [r2, r0]
	add r1, r1, #3
	bl sub_02021D6C
_022479A2:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0x4b
	bne _022479DE
	mov r1, #6
	add r0, r0, #1
	strb r1, [r4, r0]
	b _022479DE
_022479B4:
	sub r0, #0x11
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022479C8
	bl sub_0207136C
	mov r0, #0x45
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_022479C8:
	ldr r0, _022479F0 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022479DE:
	ldr r0, _022479F0 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022479F0: .word 0x02257760
	thumb_func_end ov23_02247568

	thumb_func_start ov23_022479F4
ov23_022479F4: ; 0x022479F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r3, _02247A58 ; =0x02256404
	add r2, sp, #0xc
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r1, #4
	sub r4, r0, #1
	mov r0, #0x32
	bl sub_02006C24
	add r6, r0, #0
	cmp r4, #6
	bge _02247A4E
	add r0, r4, #1
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02247A5C ; =0x02257760
	lsl r3, r4, #2
	ldr r1, [r0, #4]
	mov r0, #0x17
	lsl r0, r0, #4
	add r2, sp, #0xc
	ldr r0, [r1, r0]
	ldr r2, [r2, r3]
	add r1, r6, #0
	mov r3, #0
	bl sub_02009A4C
	add r1, r4, #1
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xf8
	str r0, [r1, #0]
_02247A4E:
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02247A58: .word 0x02256404
_02247A5C: .word 0x02257760
	thumb_func_end ov23_022479F4

	thumb_func_start ov23_02247A60
ov23_02247A60: ; 0x02247A60
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x17
	ldr r6, _02247A88 ; =0x02257760
	mov r4, #1
	add r5, r0, #4
	lsl r7, r7, #4
_02247A6C:
	add r0, r5, #0
	add r0, #0xf8
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02247A7E
	ldr r0, [r6, #4]
	ldr r0, [r0, r7]
	bl sub_02009D68
_02247A7E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blt _02247A6C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02247A88: .word 0x02257760
	thumb_func_end ov23_02247A60

	thumb_func_start ov23_02247A8C
ov23_02247A8C: ; 0x02247A8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _02247A9A
	b _02247D12
_02247A9A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02247AA6: ; jump table
	.short _02247AC0 - _02247AA6 - 2 ; case 0
	.short _02247B1C - _02247AA6 - 2 ; case 1
	.short _02247B66 - _02247AA6 - 2 ; case 2
	.short _02247B9C - _02247AA6 - 2 ; case 3
	.short _02247BDC - _02247AA6 - 2 ; case 4
	.short _02247C0E - _02247AA6 - 2 ; case 5
	.short _02247C1E - _02247AA6 - 2 ; case 6
	.short _02247C70 - _02247AA6 - 2 ; case 7
	.short _02247CB8 - _02247AA6 - 2 ; case 8
	.short _02247CC4 - _02247AA6 - 2 ; case 9
	.short _02247D12 - _02247AA6 - 2 ; case 10
	.short _02247CD4 - _02247AA6 - 2 ; case 11
	.short _02247CF8 - _02247AA6 - 2 ; case 12
_02247AC0:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	ldr r1, _02247D18 ; =0x02257760
	mov r0, #0x20
	ldr r1, [r1, #4]
	mov r2, #4
	add r1, #0x48
	bl sub_020095C4
	ldr r1, _02247D18 ; =0x02257760
	ldr r2, [r1, #4]
	str r0, [r2, #0x44]
	ldr r0, [r1, #4]
	mov r2, #6
	add r0, #0x48
	mov r1, #0
	lsl r2, r2, #0x12
	bl sub_0200964C
	mov r6, #0
	ldr r7, _02247D18 ; =0x02257760
	add r5, r6, #0
_02247AF6:
	mov r0, #8
	add r1, r6, #0
	mov r2, #4
	bl sub_02009714
	ldr r1, [r7, #4]
	add r6, r6, #1
	add r2, r1, r5
	mov r1, #0x17
	lsl r1, r1, #4
	add r5, r5, #4
	str r0, [r2, r1]
	cmp r6, #4
	blt _02247AF6
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247B1C:
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02247D18 ; =0x02257760
	mov r2, #0x20
	ldr r1, [r0, #4]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_0200985C
	ldr r2, _02247D18 ; =0x02257760
	mov r1, #0x19
	ldr r3, [r2, #4]
	lsl r1, r1, #4
	str r0, [r3, r1]
	ldr r0, [r2, #4]
	add sp, #0x10
	ldr r1, [r0, r1]
	add r0, r4, #0
	add r0, #0xf8
	str r1, [r0, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247B66:
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _02247D18 ; =0x02257760
	mov r2, #0x33
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_020098B8
	ldr r1, _02247D18 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247B9C:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02247D18 ; =0x02257760
	mov r2, #0x1f
	ldr r1, [r0, #4]
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02247D18 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247BDC:
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _02247D18 ; =0x02257760
	mov r2, #0x1e
	ldr r1, [r0, #4]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02247D18 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247C0E:
	add r0, r4, #0
	bl ov23_022471D8
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247C1E:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov23_022479F4
	mov r1, #0x49
	lsl r1, r1, #2
	ldrb r0, [r4, r1]
	cmp r0, #0x1e
	bls _02247D12
	ldr r0, _02247D18 ; =0x02257760
	ldr r2, [r0, #4]
	ldr r0, _02247D1C ; =0x00000B3B
	ldrb r0, [r2, r0]
	cmp r0, #0x14
	bne _02247C52
	add r0, r4, #0
	add r0, #0xf8
	sub r1, #0x24
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	bl sub_0200A490
_02247C52:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4d
	add r3, r2, #0
	bl ov23_02253F60
	mov r0, #0x4a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #7
	add sp, #0x10
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247C70:
	ldr r0, _02247D18 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02247568
	cmp r0, #0
	beq _02247C98
	ldr r0, _02247D20 ; =0x00000127
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02247C8E
	mov r0, #0xb
	str r0, [r4, #0]
	b _02247C98
_02247C8E:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02247C98:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0x3c
	bge _02247D12
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x3c
	bne _02247D12
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02247CB8:
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02247CC4:
	bl sub_0203608C
	ldr r1, _02247D20 ; =0x00000127
	ldrb r1, [r4, r1]
	bl ov23_02247DB0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02247CD4:
	ldr r0, _02247D20 ; =0x00000127
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _02247D24 ; =0x00000126
	ldrb r0, [r4, r0]
	bl ov23_022448FC
	mov r0, #0x49
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r0, #0xc
	add sp, #0x10
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02247CF8:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #8
	bls _02247D12
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02247D12:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247D18: .word 0x02257760
_02247D1C: .word 0x00000B3B
_02247D20: .word 0x00000127
_02247D24: .word 0x00000126
	thumb_func_end ov23_02247A8C

	thumb_func_start ov23_02247D28
ov23_02247D28: ; 0x02247D28
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x13
	mov r0, #4
	lsl r1, r1, #4
	add r6, r2, #0
	bl sub_02018184
	mov r2, #0x13
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02247D6C ; =0x00000127
	mov r2, #0x64
	strb r5, [r4, r0]
	sub r0, r0, #1
	strb r6, [r4, r0]
	ldr r0, _02247D70 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02247D74 ; =ov23_02247A8C
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _02247D70 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247D6C: .word 0x00000127
_02247D70: .word 0x02257760
_02247D74: .word ov23_02247A8C
	thumb_func_end ov23_02247D28

	thumb_func_start ov23_02247D78
ov23_02247D78: ; 0x02247D78
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02247D9E
	ldr r0, _02247DA0 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02247D28
_02247D9E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02247DA0: .word 0x02257760
	thumb_func_end ov23_02247D78

	thumb_func_start ov23_02247DA4
ov23_02247DA4: ; 0x02247DA4
	ldr r3, _02247DAC ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02247DAC: .word ov23_0224AD7C
	thumb_func_end ov23_02247DA4

	thumb_func_start ov23_02247DB0
ov23_02247DB0: ; 0x02247DB0
	push {r3, r4, r5, lr}
	ldr r0, _02247E30 ; =0x02257760
	add r5, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	cmp r4, #0
	beq _02247E2E
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02247DD8
	bl sub_0207136C
	mov r0, #0x45
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02247DD8:
	ldr r0, _02247E34 ; =0x00000127
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02247DEC
	cmp r5, #0
	beq _02247DEC
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	bl ov23_022448FC
_02247DEC:
	add r0, r4, #0
	bl ov23_02247A60
	mov r0, #0xf
	bl ov23_02246370
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _02247E30 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02247E30 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_02247E2E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02247E30: .word 0x02257760
_02247E34: .word 0x00000127
	thumb_func_end ov23_02247DB0

	thumb_func_start ov23_02247E38
ov23_02247E38: ; 0x02247E38
	push {lr}
	sub sp, #0x5c
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	ldr r0, _02247F48 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x17
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r3, r3, #4
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x64
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r0, _02247F48 ; =0x02257760
	mov r2, #2
	ldr r1, [r0, #4]
	lsl r2, r2, #0x10
	ldr r0, [r1, #0x44]
	str r0, [sp, #0x2c]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x30]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r2, #5
	mov r1, #0
	str r2, [sp, #0x34]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r0, [sp, #0x58]
	lsl r0, r0, #0x11
	str r0, [sp, #0x34]
	mov r0, #0x15
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r1, [sp, #0x50]
	bl sub_02021AA0
	ldr r2, _02247F48 ; =0x02257760
	mov r1, #0x7e
	ldr r3, [r2, #4]
	lsl r1, r1, #2
	str r0, [r3, r1]
	ldr r0, [r2, #4]
	ldr r0, [r0, r1]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	ldr r0, _02247F48 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021E80
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {pc}
	nop
_02247F48: .word 0x02257760
	thumb_func_end ov23_02247E38

	thumb_func_start ov23_02247F4C
ov23_02247F4C: ; 0x02247F4C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	beq _02247F66
	cmp r0, #1
	beq _02247F86
	cmp r0, #2
	b _02248096
_02247F66:
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022480AC ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x1f
	bne _02247F76
	mov r0, #4
	b _02247F78
_02247F76:
	mov r0, #2
_02247F78:
	str r0, [r5, #0x20]
	mov r0, #0
	str r0, [r5, #0x24]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x28
	strb r1, [r0]
_02247F86:
	ldr r1, _022480B0 ; =0x02257760
	ldr r2, _022480B4 ; =ov23_02246624
	mov r0, #2
	mov r3, #0
	bl sub_02004B70
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022480B8 ; =0x00000B3A
	ldrsb r0, [r1, r0]
	bl sub_020D4070
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0xa
	bl sub_020E1F6C
	add r0, r5, r1
	strb r6, [r0, #8]
	mov r1, #0
	b _02247FBE
_02247FB6:
	add r0, r5, r1
	ldrb r0, [r0, #8]
	add r1, r1, #1
	add r4, r4, r0
_02247FBE:
	cmp r1, #0xa
	blt _02247FB6
	mov r0, #0x7d
	lsl r0, r0, #2
	cmp r4, r0
	ble _02247FD8
	ldr r0, [r5, #0x24]
	add r0, r0, #1
	str r0, [r5, #0x24]
	ldr r0, _022480BC ; =0x00000628
	bl sub_02005748
	b _02247FE0
_02247FD8:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
_02247FE0:
	ldr r0, [r5, #0x24]
	mov r1, #0xa
	bl sub_020E1F6C
	cmp r1, #9
	bne _02247FF2
	ldr r0, [r5, #0x20]
	sub r0, r0, #1
	str r0, [r5, #0x20]
_02247FF2:
	ldr r2, [r5, #0x20]
	cmp r2, #0
	bne _02248004
	mov r0, #2
	add r5, #0x28
	strb r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02248004:
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, _022480AC ; =0x00000B3B
	ldrb r0, [r1, r0]
	cmp r0, #0x1f
	bne _02248034
	cmp r2, #2
	beq _02248028
	cmp r2, #3
	beq _02248022
	cmp r2, #4
	bne _0224802E
	mov r4, #1
	lsl r4, r4, #0x1e
	b _02248042
_02248022:
	mov r4, #0xff
	lsl r4, r4, #0x16
	b _02248042
_02248028:
	mov r4, #0xfe
	lsl r4, r4, #0x16
	b _02248042
_0224802E:
	mov r4, #0x3f
	lsl r4, r4, #0x18
	b _02248042
_02248034:
	cmp r2, #2
	bne _0224803E
	mov r4, #1
	lsl r4, r4, #0x1e
	b _02248042
_0224803E:
	mov r4, #0xff
	lsl r4, r4, #0x16
_02248042:
	ldr r0, [r5, #0x24]
	mov r6, #0
	cmp r0, #0
	beq _0224804C
	add r6, r6, #1
_0224804C:
	ldr r0, _022480C0 ; =0x45800000
	add r1, r4, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [sp]
	ldr r0, _022480C0 ; =0x45800000
	add r1, r4, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [sp, #4]
	ldr r0, _022480C0 ; =0x45800000
	add r1, r4, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [sp, #8]
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_02021C70
	ldr r0, _022480A8 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_02021DCC
_02248096:
	ldr r0, _022480A8 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_022480A8: .word 0x02257760
_022480AC: .word 0x00000B3B
_022480B0: .word 0x02257760
_022480B4: .word ov23_02246624
_022480B8: .word 0x00000B3A
_022480BC: .word 0x00000628
_022480C0: .word 0x45800000
	thumb_func_end ov23_02247F4C

	thumb_func_start ov23_022480C4
ov23_022480C4: ; 0x022480C4
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0]
	cmp r0, #0xc
	bls _022480D2
	b _02248304
_022480D2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022480DE: ; jump table
	.short _022480F8 - _022480DE - 2 ; case 0
	.short _02248110 - _022480DE - 2 ; case 1
	.short _0224815C - _022480DE - 2 ; case 2
	.short _02248192 - _022480DE - 2 ; case 3
	.short _022481DE - _022480DE - 2 ; case 4
	.short _0224821C - _022480DE - 2 ; case 5
	.short _0224822C - _022480DE - 2 ; case 6
	.short _0224825A - _022480DE - 2 ; case 7
	.short _022482B0 - _022480DE - 2 ; case 8
	.short _022482BC - _022480DE - 2 ; case 9
	.short _02248304 - _022480DE - 2 ; case 10
	.short _022482CC - _022480DE - 2 ; case 11
	.short _022482F0 - _022480DE - 2 ; case 12
_022480F8:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x24]
	bl ov23_02246324
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02248110:
	mov r0, #1
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _02248308 ; =0x02257760
	ldr r1, _0224830C ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1f
	bne _0224812E
	mov r2, #0x16
	b _02248130
_0224812E:
	mov r2, #0x19
_02248130:
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_0200985C
	ldr r1, _02248308 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0224815C:
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _02248308 ; =0x02257760
	mov r2, #0x13
	ldr r1, [r0, #4]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x32
	bl sub_020098B8
	ldr r1, _02248308 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02248192:
	mov r0, #1
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	str r0, [sp]
	bl sub_0200AAE0
	ldr r0, _02248308 ; =0x02257760
	ldr r1, _0224830C ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1f
	bne _022481B0
	mov r2, #0x15
	b _022481B2
_022481B0:
	mov r2, #0x18
_022481B2:
	mov r3, #0
	str r3, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02248308 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_022481DE:
	ldr r0, _02248308 ; =0x02257760
	ldr r1, _0224830C ; =0x00000B3B
	ldr r0, [r0, #4]
	ldrb r1, [r0, r1]
	cmp r1, #0x1f
	bne _022481EE
	mov r2, #0x14
	b _022481F0
_022481EE:
	mov r2, #0x17
_022481F0:
	mov r3, #0
	str r3, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x32
	bl sub_02009918
	ldr r1, _02248308 ; =0x02257760
	add sp, #0x10
	ldr r2, [r1, #4]
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0224821C:
	add r0, r4, #0
	bl ov23_02247E38
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_0224822C:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
	cmp r0, #0x1e
	ble _02248304
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x4c
	add r3, r2, #0
	bl ov23_02253F60
	mov r1, #3
	ldr r0, _02248310 ; =0x0400006C
	mvn r1, r1
	bl sub_020BDEC4
	mov r0, #7
	str r0, [r4, #0]
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0224825A:
	mov r0, #7
	str r0, [sp]
	ldr r0, _02248314 ; =0x04000050
	mov r1, #0x10
	mov r2, #1
	mov r3, #0xe
	bl sub_020BF55C
	ldr r0, _02248308 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02247F4C
	cmp r0, #0
	beq _02248296
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224828C
	mov r0, #0xb
	str r0, [r4, #0]
	b _02248296
_0224828C:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02248296:
	ldr r0, [r4, #0x2c]
	cmp r0, #0x3c
	bge _02248304
	add r0, r0, #1
	str r0, [r4, #0x2c]
	cmp r0, #0x3c
	bne _02248304
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_022482B0:
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x10
	pop {r4, pc}
_022482BC:
	bl sub_0203608C
	add r4, #0x2a
	ldrb r1, [r4]
	bl ov23_0224839C
	add sp, #0x10
	pop {r4, pc}
_022482CC:
	mov r0, #0x10
	bl sub_0205948C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2a
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	bl ov23_022448FC
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #0xc
	add sp, #0x10
	str r0, [r4, #0]
	pop {r4, pc}
_022482F0:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
	cmp r0, #8
	ble _02248304
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02248304:
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02248308: .word 0x02257760
_0224830C: .word 0x00000B3B
_02248310: .word 0x0400006C
_02248314: .word 0x04000050
	thumb_func_end ov23_022480C4

	thumb_func_start ov23_02248318
ov23_02248318: ; 0x02248318
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x30
	add r6, r2, #0
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x30
	bl sub_020C4CF4
	add r0, r4, #0
	add r0, #0x2a
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0x29
	strb r6, [r0]
	ldr r0, _0224835C ; =0x02257760
	mov r2, #0x64
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _02248360 ; =ov23_022480C4
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r1, _0224835C ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224835C: .word 0x02257760
_02248360: .word ov23_022480C4
	thumb_func_end ov23_02248318

	thumb_func_start ov23_02248364
ov23_02248364: ; 0x02248364
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _0224838A
	ldr r0, _0224838C ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02248318
_0224838A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224838C: .word 0x02257760
	thumb_func_end ov23_02248364

	thumb_func_start ov23_02248390
ov23_02248390: ; 0x02248390
	ldr r3, _02248398 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_02248398: .word ov23_0224AD7C
	thumb_func_end ov23_02248390

	thumb_func_start ov23_0224839C
ov23_0224839C: ; 0x0224839C
	push {r4, lr}
	ldr r0, _02248410 ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	cmp r4, #0
	beq _0224840C
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _022483C4
	cmp r1, #0
	beq _022483C4
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	bl ov23_022448FC
_022483C4:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02248414 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	mov r0, #1
	bl ov23_02246370
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _02248410 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _02248410 ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_0224840C:
	pop {r4, pc}
	nop
_02248410: .word 0x02257760
_02248414: .word 0x04000050
	thumb_func_end ov23_0224839C

	thumb_func_start ov23_02248418
ov23_02248418: ; 0x02248418
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #0xc
	bhi _02248524
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248430: ; jump table
	.short _0224844A - _02248430 - 2 ; case 0
	.short _0224845E - _02248430 - 2 ; case 1
	.short _02248476 - _02248430 - 2 ; case 2
	.short _0224847E - _02248430 - 2 ; case 3
	.short _02248496 - _02248430 - 2 ; case 4
	.short _0224849E - _02248430 - 2 ; case 5
	.short _022484A6 - _02248430 - 2 ; case 6
	.short _022484CA - _02248430 - 2 ; case 7
	.short _02248524 - _02248430 - 2 ; case 8
	.short _022484E6 - _02248430 - 2 ; case 9
	.short _02248524 - _02248430 - 2 ; case 10
	.short _022484F4 - _02248430 - 2 ; case 11
	.short _02248510 - _02248430 - 2 ; case 12
_0224844A:
	bl ov23_02244C10
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_0224845E:
	mov r0, #1
	str r0, [sp]
	mov r1, #0xa
	mov r2, #0
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02248476:
	add r0, r1, #1
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_0224847E:
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	mov r2, #0xa
	add r3, r0, #0
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02248496:
	add r0, r1, #1
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_0224849E:
	add r0, r1, #1
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022484A6:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x1e
	ble _02248524
	bl ov23_0224219C
	bl ov23_02254044
	mov r1, #3
	ldr r0, _02248528 ; =0x0400006C
	mvn r1, r1
	bl sub_020BDEC4
	mov r0, #7
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022484CA:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _022484D8
	mov r0, #0xb
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022484D8:
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_022484E6:
	bl sub_0203608C
	ldrb r1, [r4, #0x11]
	bl ov23_022485A8
	add sp, #4
	pop {r3, r4, pc}
_022484F4:
	mov r0, #0x10
	bl sub_0205948C
	mov r0, #0
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x10]
	bl ov23_022448FC
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #0xc
	add sp, #4
	str r0, [r4, #0]
	pop {r3, r4, pc}
_02248510:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #8
	ble _02248524
	mov r0, #0x29
	bl sub_020360DC
	mov r0, #8
	str r0, [r4, #0]
_02248524:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02248528: .word 0x0400006C
	thumb_func_end ov23_02248418

	thumb_func_start ov23_0224852C
ov23_0224852C: ; 0x0224852C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	add r6, r2, #0
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	strb r5, [r4, #0x11]
	ldr r0, _02248568 ; =0x02257760
	strb r6, [r4, #0x10]
	ldr r1, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	str r4, [r1, r0]
	ldr r0, _0224856C ; =ov23_02248418
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200D9E8
	ldr r1, _02248568 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02248568: .word 0x02257760
_0224856C: .word ov23_02248418
	thumb_func_end ov23_0224852C

	thumb_func_start ov23_02248570
ov23_02248570: ; 0x02248570
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r6, r2, #0
	bl ov23_0224AD7C
	bl sub_0203608C
	cmp r5, r0
	bne _02248596
	ldr r0, _02248598 ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_0224852C
_02248596:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02248598: .word 0x02257760
	thumb_func_end ov23_02248570

	thumb_func_start ov23_0224859C
ov23_0224859C: ; 0x0224859C
	ldr r3, _022485A4 ; =ov23_0224AD7C
	mov r1, #2
	bx r3
	nop
_022485A4: .word ov23_0224AD7C
	thumb_func_end ov23_0224859C

	thumb_func_start ov23_022485A8
ov23_022485A8: ; 0x022485A8
	push {r4, lr}
	ldr r0, _0224860C ; =0x02257760
	ldr r2, [r0, #4]
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	cmp r4, #0
	beq _0224860A
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _022485C8
	cmp r1, #0
	beq _022485C8
	ldrb r0, [r4, #0x10]
	bl ov23_022448FC
_022485C8:
	mov r1, #1
	mov r0, #0
	add r2, r1, #0
	bl sub_0200AB4C
	ldr r0, _02248610 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, #0x1c
	bl sub_020BDEC4
	mov r0, #0x10
	bl sub_0205948C
	ldr r0, _0224860C ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	ldr r1, _0224860C ; =0x02257760
	mov r0, #0xa3
	ldr r2, [r1, #4]
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x10
	str r3, [r1, r0]
_0224860A:
	pop {r4, pc}
	; .align 2, 0
_0224860C: .word 0x02257760
_02248610: .word 0x04000050
	thumb_func_end ov23_022485A8

	thumb_func_start ov23_02248614
ov23_02248614: ; 0x02248614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, [r1, #0x28]
	str r1, [sp, #0x10]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	add r0, r1, #0
	ldr r0, [r0, #0x2c]
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, _02248740 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	ldr r0, [sp, #0x10]
	mov r1, #0xa
	ldr r0, [r0, #0x30]
	lsl r0, r0, #0xc
	bl sub_020E1F6C
	str r0, [sp, #0x1c]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	ldr r0, _02248740 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x1c
	bl sub_02021C70
	ldr r0, _02248740 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021FE0
	mov r1, #0x10
	ldr r3, [sp, #0x10]
	str r1, [sp]
	ldr r4, [r3, #0x30]
	ldr r0, _02248744 ; =0x04000050
	lsr r3, r4, #0x1f
	add r3, r4, r3
	asr r3, r3, #1
	mov r2, #1
	sub r3, r1, r3
	bl sub_020BF55C
	mov r0, #0
	ldr r7, [sp, #0x10]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
_0224868A:
	ldr r0, [r7, #0x14]
	mov r4, #0
	cmp r0, #0
	ble _0224870A
	ldr r0, [sp, #8]
	add r5, r4, #0
	lsl r0, r0, #2
	str r0, [sp, #4]
_0224869A:
	ldr r0, [r7, #8]
	ldrb r6, [r0, r4]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x20]
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1c
	sub r3, r0, #6
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	add r0, r3, r0
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	add r2, sp, #0x14
	ldr r0, [r0, #0x24]
	sub r1, r0, #6
	lsr r0, r6, #4
	add r0, r1, r0
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x24]
	add r0, sp, #0x1c
	add r1, sp, #0x18
	bl sub_020B2B2C
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, _02248740 ; =0x02257760
	ldr r1, [r0, #4]
	ldr r0, [sp, #4]
	add r0, r0, r1
	add r1, r5, r0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x1c
	bl sub_02021C50
	ldr r0, [r7, #0x14]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0224869A
_0224870A:
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r0, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _0224868A
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x30]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	cmp r1, #0x14
	str r1, [r0, #0x30]
	ble _02248730
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248730:
	ldr r0, _02248740 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_020219F8
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248740: .word 0x02257760
_02248744: .word 0x04000050
	thumb_func_end ov23_02248614

	thumb_func_start ov23_02248748
ov23_02248748: ; 0x02248748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r0, _02248880 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A450
	ldr r0, _02248880 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	ldr r0, _02248880 ; =0x02257760
	mov r1, #0
	ldr r0, [r0, #4]
	mov r3, #6
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r3, r3, #6
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	ldr r6, _02248880 ; =0x02257760
	mov r4, #0
	ldr r1, [r6, #4]
	mov r7, #0x4b
	ldr r0, [r1, #0x44]
	add r5, r4, #0
	str r0, [sp, #0x2c]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x30]
	mov r1, #2
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	str r1, [sp, #0x34]
	str r4, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r4, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #4
	str r4, [sp, #0x50]
	str r0, [sp, #0x58]
	lsl r7, r7, #0xe
_022487E4:
	add r0, sp, #0x2c
	str r7, [sp, #0x34]
	str r7, [sp, #0x38]
	bl sub_02021AA0
	ldr r1, [r6, #4]
	add r2, r1, r5
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r2, r1]
	cmp r4, #0
	bne _0224881E
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02021CF8
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021D6C
	b _02248842
_0224881E:
	cmp r4, #9
	ldr r0, [r6, #4]
	bge _02248834
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021D6C
	b _02248842
_02248834:
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02021D6C
_02248842:
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021E50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x19
	blt _022487E4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02248880: .word 0x02257760
	thumb_func_end ov23_02248748

	thumb_func_start ov23_02248884
ov23_02248884: ; 0x02248884
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	cmp r0, #9
	bls _02248894
	b _022489E0
_02248894:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022488A0: ; jump table
	.short _022488B4 - _022488A0 - 2 ; case 0
	.short _022489E0 - _022488A0 - 2 ; case 1
	.short _022489E0 - _022488A0 - 2 ; case 2
	.short _022489E0 - _022488A0 - 2 ; case 3
	.short _022489E0 - _022488A0 - 2 ; case 4
	.short _02248930 - _022488A0 - 2 ; case 5
	.short _022489E0 - _022488A0 - 2 ; case 6
	.short _0224893E - _022488A0 - 2 ; case 7
	.short _022489E0 - _022488A0 - 2 ; case 8
	.short _02248956 - _022488A0 - 2 ; case 9
_022488B4:
	mov r0, #7
	str r0, [sp]
	ldr r0, _022489E4 ; =0x04000050
	mov r1, #0x10
	mov r2, #1
	mov r3, #0xe
	bl sub_020BF55C
	mov r1, #0xef
	ldr r0, _022489E8 ; =0x04000040
	lsl r1, r1, #8
	strh r1, [r0]
	mov r1, #0x10
	add r3, r0, #0
	strh r1, [r0, #4]
	add r3, #8
	ldrh r4, [r3]
	mov r1, #0x3f
	mov r2, #0x1f
	bic r4, r1
	orr r4, r2
	add r0, #0xa
	strh r4, [r3]
	ldrh r3, [r0]
	bic r3, r1
	orr r2, r3
	mov r1, #0x20
	orr r2, r1
	strh r2, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3, #0]
	ldr r0, _022489EC ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #8
	orr r0, r2
	str r0, [r3, #0]
	bl sub_020594FC
	ldr r0, _022489F0 ; =0x0000054A
	bl sub_02005748
	ldr r1, _022489F4 ; =0x02257760
	mov r0, #0x20
	ldr r1, [r1, #4]
	mov r2, #4
	add r1, #0x48
	bl sub_020095C4
	ldr r1, _022489F4 ; =0x02257760
	ldr r2, [r1, #4]
	str r0, [r2, #0x44]
	ldr r0, [r1, #4]
	mov r2, #6
	add r0, #0x48
	mov r1, #0
	lsl r2, r2, #0x12
	bl sub_0200964C
	mov r0, #5
	add sp, #8
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02248930:
	add r0, r7, #0
	bl ov23_02248748
	mov r0, #7
	add sp, #8
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0224893E:
	ldr r0, _022489F4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #8]
	bl ov23_02248614
	cmp r0, #0
	beq _022489E0
	mov r0, #9
	add sp, #8
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02248956:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _022489EC ; =0xFFFF1FFF
	and r1, r2
	add r2, r0, #0
	str r1, [r0, #0]
	mov r1, #0
	add r2, #0x50
	add r0, #0x6c
	strh r1, [r2]
	bl sub_020BDEC4
	ldr r0, _022489F4 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0200A4E4
	ldr r0, _022489F4 ; =0x02257760
	ldr r1, [r0, #4]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A6DC
	mov r4, #0
	ldr r6, _022489F4 ; =0x02257760
	add r5, r4, #0
_02248992:
	ldr r0, [r6, #4]
	add r1, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022489A4
	bl sub_02021BD4
_022489A4:
	ldr r0, [r6, #4]
	mov r1, #0
	add r2, r0, r5
	mov r0, #0x7e
	lsl r0, r0, #2
	add r4, r4, #1
	add r5, r5, #4
	str r1, [r2, r0]
	cmp r4, #0x19
	blt _02248992
	ldr r0, _022489F4 ; =0x02257760
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	bl sub_02021964
	ldr r0, [sp, #4]
	bl sub_0200DA58
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, _022489F4 ; =0x02257760
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x29
	lsl r0, r0, #4
	str r2, [r1, r0]
	mov r0, #0x80
	bl sub_0205948C
_022489E0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022489E4: .word 0x04000050
_022489E8: .word 0x04000040
_022489EC: .word 0xFFFF1FFF
_022489F0: .word 0x0000054A
_022489F4: .word 0x02257760
	thumb_func_end ov23_02248884

	thumb_func_start ov23_022489F8
ov23_022489F8: ; 0x022489F8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02248A64 ; =0x02257760
	add r5, r1, #0
	ldr r1, [r0, #4]
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _02248A62
	mov r0, #4
	mov r1, #0x34
	bl sub_02018184
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0x30]
	str r5, [r4, #0x20]
	str r6, [r4, #0x24]
	ldr r0, [sp, #0x18]
	str r7, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	str r0, [r4, #8]
	ldr r0, [sp, #0x24]
	mov r2, #0x64
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x28]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x30]
	str r0, [r4, #0x1c]
	ldr r0, _02248A68 ; =ov23_02248884
	bl sub_0200D9E8
	ldr r1, _02248A64 ; =0x02257760
	ldr r2, [r1, #4]
	mov r1, #0x29
	lsl r1, r1, #4
	str r0, [r2, r1]
	mov r0, #0x80
	bl sub_02059464
_02248A62:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248A64: .word 0x02257760
_02248A68: .word ov23_02248884
	thumb_func_end ov23_022489F8

	thumb_func_start ov23_02248A6C
ov23_02248A6C: ; 0x02248A6C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02248B38 ; =0x02257760
	add r6, r0, #0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02248A86
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_02248A86:
	ldr r5, [r4, #8]
	add r0, r5, #0
	bl sub_02059444
	add r1, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	beq _02248A9E
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02248AC2
_02248A9E:
	ldr r2, _02248B38 ; =0x02257760
	lsl r1, r5, #2
	ldr r3, [r2, #4]
	mov r0, #0
	str r0, [r3, r1]
	ldr r2, [r2, #4]
	add r1, r2, r1
	str r0, [r1, #0x20]
	add r0, r6, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02058BE8
	pop {r4, r5, r6, pc}
_02248AC2:
	ldr r0, [r4, #0xc]
	cmp r0, #0xe
	bhi _02248AF4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248AD4: ; jump table
	.short _02248AF4 - _02248AD4 - 2 ; case 0
	.short _02248AF2 - _02248AD4 - 2 ; case 1
	.short _02248AF2 - _02248AD4 - 2 ; case 2
	.short _02248AF2 - _02248AD4 - 2 ; case 3
	.short _02248AF2 - _02248AD4 - 2 ; case 4
	.short _02248AF2 - _02248AD4 - 2 ; case 5
	.short _02248AF2 - _02248AD4 - 2 ; case 6
	.short _02248AF2 - _02248AD4 - 2 ; case 7
	.short _02248AF2 - _02248AD4 - 2 ; case 8
	.short _02248AF4 - _02248AD4 - 2 ; case 9
	.short _02248AF4 - _02248AD4 - 2 ; case 10
	.short _02248AF4 - _02248AD4 - 2 ; case 11
	.short _02248AF4 - _02248AD4 - 2 ; case 12
	.short _02248AF2 - _02248AD4 - 2 ; case 13
	.short _02248AF2 - _02248AD4 - 2 ; case 14
_02248AF2:
	pop {r4, r5, r6, pc}
_02248AF4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	str r0, [r4, #4]
	sub r2, r2, r3
	mov r0, #0x1d
	ror r2, r0
	add r0, r3, r2
	bne _02248B34
	cmp r1, #3
	bhi _02248B2E
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248B18: ; jump table
	.short _02248B20 - _02248B18 - 2 ; case 0
	.short _02248B24 - _02248B18 - 2 ; case 1
	.short _02248B28 - _02248B18 - 2 ; case 2
	.short _02248B2C - _02248B18 - 2 ; case 3
_02248B20:
	mov r1, #3
	b _02248B2E
_02248B24:
	mov r1, #2
	b _02248B2E
_02248B28:
	mov r1, #0
	b _02248B2E
_02248B2C:
	mov r1, #1
_02248B2E:
	add r0, r5, #0
	bl sub_02059424
_02248B34:
	pop {r4, r5, r6, pc}
	nop
_02248B38: .word 0x02257760
	thumb_func_end ov23_02248A6C

	thumb_func_start ov23_02248B3C
ov23_02248B3C: ; 0x02248B3C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02248B8C ; =0x02257760
	add r7, r1, #0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02248B88
	ldr r0, _02248B90 ; =0x00000B46
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02248B88
	lsl r5, r6, #2
	ldr r4, [r1, r5]
	cmp r4, #0
	bne _02248B84
	mov r0, #4
	mov r1, #0x10
	bl sub_02018184
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02248B8C ; =0x02257760
	add r1, r4, #0
	ldr r0, [r0, #4]
	mov r2, #0x64
	str r4, [r0, r5]
	ldr r0, _02248B94 ; =ov23_02248A6C
	bl sub_0200D9E8
	ldr r1, _02248B8C ; =0x02257760
	ldr r1, [r1, #4]
	add r1, r1, r5
	str r0, [r1, #0x20]
_02248B84:
	str r6, [r4, #8]
	str r7, [r4, #0xc]
_02248B88:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248B8C: .word 0x02257760
_02248B90: .word 0x00000B46
_02248B94: .word ov23_02248A6C
	thumb_func_end ov23_02248B3C

	thumb_func_start ov23_02248B98
ov23_02248B98: ; 0x02248B98
	push {r3, r4, r5, lr}
	ldr r1, _02248BCC ; =0x02257760
	add r5, r0, #0
	ldr r1, [r1, #4]
	lsl r4, r5, #2
	ldr r1, [r1, r4]
	cmp r1, #0
	beq _02248BC8
	bl ov23_0224B040
	ldr r0, _02248BCC ; =0x02257760
	mov r2, #1
	ldr r1, [r0, #4]
	ldr r1, [r1, r4]
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	mov r2, #0
	str r2, [r1, r4]
	ldr r0, [r0, #4]
	add r0, r0, r4
	str r2, [r0, #0x20]
	add r0, r5, #0
	bl sub_02058BE8
_02248BC8:
	pop {r3, r4, r5, pc}
	nop
_02248BCC: .word 0x02257760
	thumb_func_end ov23_02248B98

	thumb_func_start ov23_02248BD0
ov23_02248BD0: ; 0x02248BD0
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r4, _02248C04 ; =0x02257760
	add r5, r6, #0
	add r7, r6, #0
_02248BDA:
	ldr r0, [r4, #4]
	add r0, r0, r5
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02248BFA
	bl sub_0200DA58
	ldr r0, [r4, #4]
	ldr r0, [r0, r5]
	bl sub_020181C4
	ldr r0, [r4, #4]
	add r0, r0, r5
	str r7, [r0, #0x20]
	ldr r0, [r4, #4]
	str r7, [r0, r5]
_02248BFA:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #8
	blt _02248BDA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248C04: .word 0x02257760
	thumb_func_end ov23_02248BD0

	.rodata


	.global Unk_ov23_022563D0
Unk_ov23_022563D0: ; 0x022563D0
	.incbin "incbin/overlay23_rodata.bin", 0xC4, 0xC8 - 0xC4

	.global Unk_ov23_022563D4
Unk_ov23_022563D4: ; 0x022563D4
	.incbin "incbin/overlay23_rodata.bin", 0xC8, 0xCC - 0xC8

	.global Unk_ov23_022563D8
Unk_ov23_022563D8: ; 0x022563D8
	.incbin "incbin/overlay23_rodata.bin", 0xCC, 0xD0 - 0xCC

	.global Unk_ov23_022563DC
Unk_ov23_022563DC: ; 0x022563DC
	.incbin "incbin/overlay23_rodata.bin", 0xD0, 0xD4 - 0xD0

	.global Unk_ov23_022563E0
Unk_ov23_022563E0: ; 0x022563E0
	.incbin "incbin/overlay23_rodata.bin", 0xD4, 0xDC - 0xD4

	.global Unk_ov23_022563E8
Unk_ov23_022563E8: ; 0x022563E8
	.incbin "incbin/overlay23_rodata.bin", 0xDC, 0xE8 - 0xDC

	.global Unk_ov23_022563F4
Unk_ov23_022563F4: ; 0x022563F4
	.incbin "incbin/overlay23_rodata.bin", 0xE8, 0xF8 - 0xE8

	.global Unk_ov23_02256404
Unk_ov23_02256404: ; 0x02256404
	.incbin "incbin/overlay23_rodata.bin", 0xF8, 0x110 - 0xF8

	.global Unk_ov23_0225641C
Unk_ov23_0225641C: ; 0x0225641C
	.incbin "incbin/overlay23_rodata.bin", 0x110, 0x134 - 0x110

	.global Unk_ov23_02256440
Unk_ov23_02256440: ; 0x02256440
	.incbin "incbin/overlay23_rodata.bin", 0x134, 0x1C0 - 0x134

	.global Unk_ov23_022564CC
Unk_ov23_022564CC: ; 0x022564CC
	.incbin "incbin/overlay23_rodata.bin", 0x1C0, 0x24C - 0x1C0

	.global Unk_ov23_02256558
Unk_ov23_02256558: ; 0x02256558
	.incbin "incbin/overlay23_rodata.bin", 0x24C, 0x2D8 - 0x24C

	.global Unk_ov23_022565E4
Unk_ov23_022565E4: ; 0x022565E4
	.incbin "incbin/overlay23_rodata.bin", 0x2D8, 0x364 - 0x2D8

	.global Unk_ov23_02256670
Unk_ov23_02256670: ; 0x02256670
	.incbin "incbin/overlay23_rodata.bin", 0x364, 0x3F0 - 0x364

	.global Unk_ov23_022566FC
Unk_ov23_022566FC: ; 0x022566FC
	.incbin "incbin/overlay23_rodata.bin", 0x3F0, 0x47C - 0x3F0

	.global Unk_ov23_02256788
Unk_ov23_02256788: ; 0x02256788
	.incbin "incbin/overlay23_rodata.bin", 0x47C, 0x1A


	.bss


	.global Unk_ov23_02257760
Unk_ov23_02257760: ; 0x02257760
	.space 0x1

	.global Unk_ov23_02257764
Unk_ov23_02257764: ; 0x02257764
	.space 0x4

