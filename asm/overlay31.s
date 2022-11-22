	.include "macros/function.inc"


	.text

	thumb_func_start ov31_022561C0
ov31_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov31_022561D4
	ldr r1, _022561D0 ; =ov31_02256404
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov31_022561D4
_022561D0: .word ov31_02256404
	thumb_func_end ov31_022561C0

	thumb_func_start ov31_022561D4
ov31_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x9b
	add r5, r0, #0
	mov r0, #8
	lsl r1, r1, #2
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _0225621C
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov31_02256228
	cmp r0, #0
	beq _02256216
	ldr r0, _02256220 ; =ov31_022563CC
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	cmp r0, #0
	beq _02256216
	ldr r0, _02256224 ; =ov31_022563B0
	add r1, r4, #0
	str r4, [r5, #0]
	bl ov25_02254274
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256216:
	add r0, r4, #0
	bl sub_020181C4
_0225621C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256220: .word ov31_022563CC
_02256224: .word ov31_022563B0
	thumb_func_end ov31_022561D4

	thumb_func_start ov31_02256228
ov31_02256228: ; 0x02256228
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #0x1f
	add r5, r0, #0
	lsl r2, r2, #4
	str r1, [r5, r2]
	add r1, r5, #0
	add r1, #0xc
	bl ov31_02256268
	mov r0, #0x7b
	lsl r0, r0, #2
	add r1, r5, #0
	add r0, r5, r0
	add r1, #0xc
	add r2, r4, #0
	bl ov31_02256554
	cmp r0, #0
	beq _02256264
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #0x19
	str r0, [r5, #4]
	mov r0, #0x15
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02256264:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov31_02256228

	thumb_func_start ov31_02256268
ov31_02256268: ; 0x02256268
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl ov25_02254540
	add r6, r0, #0
	bl sub_02056A10
	cmp r0, #0
	beq _0225628E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov31_02256298
	pop {r4, r5, r6, pc}
_0225628E:
	add r0, r4, #0
	bl ov31_0225635C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov31_02256268

	thumb_func_start ov31_02256298
ov31_02256298: ; 0x02256298
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x7d
	add r5, r0, #0
	lsl r1, r1, #2
	add r0, r2, #0
	add r1, r5, r1
	bl sub_02056A18
	mov r3, #0
	mov r7, #0x7d
	mov ip, r3
	lsl r7, r7, #2
	mov r0, #3
_022562B4:
	mov r2, #0
_022562B6:
	asr r1, r3, #1
	lsr r1, r1, #0x1e
	add r1, r3, r1
	asr r1, r1, #2
	add r1, r5, r1
	add r6, r3, #0
	lsl r6, r6, #0x1e
	ldrb r1, [r1, r7]
	lsr r6, r6, #0x1d
	add r3, r3, #1
	asr r1, r6
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r1, r1, #1
	strb r1, [r4, r2]
	add r2, r2, #1
	cmp r2, #0x18
	blt _022562B6
	mov r1, ip
	add r1, r1, #1
	add r4, #0x18
	mov ip, r1
	cmp r1, #0x14
	blt _022562B4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov31_02256298

	thumb_func_start ov31_022562EC
ov31_022562EC: ; 0x022562EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0x7d
	str r2, [sp]
	lsl r1, r1, #2
	str r0, [sp, #4]
	add r0, r0, r1
	mov r1, #0
	mov r2, #0x78
	bl sub_020C4CF4
	mov r5, #0
	mov ip, r5
_02256308:
	mov r4, #0
_0225630A:
	asr r0, r5, #1
	lsr r0, r0, #0x1e
	add r0, r5, r0
	asr r1, r0, #2
	ldr r0, [sp, #4]
	add r6, r5, #0
	add r3, r0, r1
	mov r0, #0x7d
	lsl r0, r0, #2
	ldrb r2, [r3, r0]
	ldrb r0, [r7, r4]
	add r4, r4, #1
	add r5, r5, #1
	sub r1, r0, #1
	mov r0, #3
	and r0, r1
	lsl r1, r6, #0x1e
	lsr r1, r1, #0x1d
	lsl r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0x7d
	lsl r0, r0, #2
	strb r1, [r3, r0]
	cmp r4, #0x18
	blt _0225630A
	mov r0, ip
	add r0, r0, #1
	add r7, #0x18
	mov ip, r0
	cmp r0, #0x14
	blt _02256308
	mov r2, #0x7d
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	ldr r0, [sp]
	add r1, r1, r2
	bl sub_02056A2C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov31_022562EC

	thumb_func_start ov31_0225635C
ov31_0225635C: ; 0x0225635C
	push {r4, r5}
	mov r4, #0
	ldr r5, _02256380 ; =0x02256770
	add r2, r4, #0
_02256364:
	add r3, r2, #0
_02256366:
	ldrb r1, [r5, r3]
	strb r1, [r0, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _02256366
	add r4, r4, #1
	add r5, #0x18
	add r0, #0x18
	cmp r4, #0x14
	blt _02256364
	pop {r4, r5}
	bx lr
	nop
_02256380: .word 0x02256770
	thumb_func_end ov31_0225635C

	thumb_func_start ov31_02256384
ov31_02256384: ; 0x02256384
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov25_02254540
	add r1, r4, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0xc
	bl ov31_022562EC
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov31_02256584
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov31_02256384

	thumb_func_start ov31_022563B0
ov31_022563B0: ; 0x022563B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov25_02254540
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0xc
	add r1, r4, #0
	bl ov31_022562EC
	pop {r4, pc}
	thumb_func_end ov31_022563B0

	thumb_func_start ov31_022563CC
ov31_022563CC: ; 0x022563CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhs _022563FC
	lsl r2, r1, #2
	ldr r1, _02256400 ; =0x02256764
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022563FC
	add r0, r4, #0
	bl ov31_02256384
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov25_02254260
_022563FC:
	pop {r3, r4, r5, pc}
	nop
_02256400: .word 0x02256764
	thumb_func_end ov31_022563CC

	thumb_func_start ov31_02256404
ov31_02256404: ; 0x02256404
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov31_02256404

	thumb_func_start ov31_0225640C
ov31_0225640C: ; 0x0225640C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256414
	b _02256416
_02256414:
	mov r1, #2
_02256416:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov31_0225640C

	thumb_func_start ov31_02256420
ov31_02256420: ; 0x02256420
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256430
	cmp r0, #1
	beq _02256444
	b _02256466
_02256430:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov31_02256590
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256466
_02256444:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov31_022565B4
	cmp r0, #0
	beq _02256466
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov31_0225640C
_02256466:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov31_02256420

	thumb_func_start ov31_0225646C
ov31_0225646C: ; 0x0225646C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256484
	mov r1, #2
	bl ov31_0225640C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02256484:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov31_022565B4
	cmp r0, #0
	beq _02256510
	add r0, sp, #4
	add r1, sp, #0
	bl ov25_0225446C
	cmp r0, #0
	beq _02256510
	ldr r1, [sp, #4]
	cmp r1, #0x10
	blo _02256510
	ldr r0, [sp]
	cmp r0, #0x10
	blo _02256510
	sub r1, #0x10
	lsr r2, r1, #3
	sub r0, #0x10
	lsr r1, r0, #3
	str r2, [sp, #4]
	str r1, [sp]
	cmp r2, #0x18
	bhs _02256510
	cmp r1, #0x14
	bhs _02256510
	ldr r0, [r4, #4]
	cmp r0, r2
	bne _022564D4
	ldr r0, [r4, #8]
	cmp r0, r1
	bne _022564D4
	bl sub_02022798
	cmp r0, #1
	bne _02256510
_022564D4:
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0x18
	add r3, r2, #0
	add r0, #0xc
	mul r3, r1
	add r5, r0, r3
	ldr r3, [sp, #4]
	ldrb r2, [r5, r3]
	add r2, r2, #1
	strb r2, [r5, r3]
	ldr r2, [sp]
	mul r1, r2
	add r2, r0, r1
	ldr r1, [sp, #4]
	ldrb r0, [r2, r1]
	cmp r0, #4
	bls _022564FC
	mov r0, #1
	strb r0, [r2, r1]
_022564FC:
	ldr r0, [sp, #4]
	mov r1, #1
	str r0, [r4, #4]
	ldr r0, [sp]
	str r0, [r4, #8]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov31_02256590
_02256510:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov31_0225646C

	thumb_func_start ov31_02256518
ov31_02256518: ; 0x02256518
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256528
	cmp r0, #1
	beq _0225653C
	b _0225654E
_02256528:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov31_02256590
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225654E
_0225653C:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov31_022565C0
	cmp r0, #0
	beq _0225654E
	mov r0, #1
	pop {r4, pc}
_0225654E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov31_02256518

	thumb_func_start ov31_02256554
ov31_02256554: ; 0x02256554
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	beq _02256580
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	cmp r0, #0
	beq _02256580
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256580:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov31_02256554

	thumb_func_start ov31_02256584
ov31_02256584: ; 0x02256584
	push {r3, lr}
	cmp r0, #0
	beq _0225658E
	bl sub_020181C4
_0225658E:
	pop {r3, pc}
	thumb_func_end ov31_02256584

	thumb_func_start ov31_02256590
ov31_02256590: ; 0x02256590
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022565B0 ; =0x02256970
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022565B0: .word 0x02256970
	thumb_func_end ov31_02256590

	thumb_func_start ov31_022565B4
ov31_022565B4: ; 0x022565B4
	ldr r3, _022565BC ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022565BC: .word ov25_02255130
	thumb_func_end ov31_022565B4

	thumb_func_start ov31_022565C0
ov31_022565C0: ; 0x022565C0
	ldr r3, _022565C8 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022565C8: .word ov25_02255154
	thumb_func_end ov31_022565C0

	thumb_func_start ov31_022565CC
ov31_022565CC: ; 0x022565CC
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov31_022565CC

	thumb_func_start ov31_022565E0
ov31_022565E0: ; 0x022565E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256638 ; =0x02256954
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	bl ov31_02256644
	ldr r0, [r5, #4]
	ldr r1, [r5, #0]
	bl ov31_0225672C
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _0225663C ; =0x04001000
	ldr r0, _02256640 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov31_022565CC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256638: .word 0x02256954
_0225663C: .word 0x04001000
_02256640: .word 0xFFFFE0FF
	thumb_func_end ov31_022565E0

	thumb_func_start ov31_02256644
ov31_02256644: ; 0x02256644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	mov r0, #8
	lsl r1, r0, #6
	bl sub_02018144
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _022566E8
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	add r7, r0, #0
	add r6, r0, #0
	add r4, r0, #0
	add r5, r0, #0
_0225666C:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	orr r1, r0
	ldr r0, [sp, #8]
	orr r0, r1
	orr r0, r7
	orr r0, r6
	orr r0, r4
	add r1, r5, #0
	orr r1, r0
	ldr r0, [sp, #0x18]
	orr r0, r1
	ldr r1, [sp, #0x14]
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4BB8
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x14]
	mov r0, #1
	lsl r0, r0, #0x18
	add r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x1c
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0x14
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #0x10
	add r7, r7, r0
	lsr r0, r0, #4
	add r6, r6, r0
	mov r0, #1
	lsl r0, r0, #8
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r5, #0x10
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x10
	blt _0225666C
	mov r0, #0
	str r0, [sp]
	mov r3, #2
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	mov r1, #6
	lsl r3, r3, #8
	bl sub_0201958C
	ldr r0, [sp, #0x1c]
	bl sub_020181C4
_022566E8:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov31_02256644

	thumb_func_start ov31_022566EC
ov31_022566EC: ; 0x022566EC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0]
	bl ov31_0225672C
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov31_022565CC
	pop {r3, r4, r5, pc}
	thumb_func_end ov31_022566EC

	thumb_func_start ov31_02256710
ov31_02256710: ; 0x02256710
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov31_022565CC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov31_02256710

	thumb_func_start ov31_0225672C
ov31_0225672C: ; 0x0225672C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #6
	bl sub_02019FE4
	mov r5, #0
	ldr r1, _02256760 ; =0x02256950
	add r0, #0x84
	add r2, r5, #0
_0225673E:
	add r3, r2, #0
	add r6, r0, #0
_02256742:
	ldrb r7, [r4, r3]
	add r3, r3, #1
	add r7, r1, r7
	sub r7, r7, #1
	ldrb r7, [r7]
	strh r7, [r6]
	add r6, r6, #2
	cmp r3, #0x18
	blt _02256742
	add r5, r5, #1
	add r0, #0x40
	add r4, #0x18
	cmp r5, #0x14
	blt _0225673E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256760: .word 0x02256950
	thumb_func_end ov31_0225672C
	; 0x02256764

	.incbin "data/overlay31.bin"
