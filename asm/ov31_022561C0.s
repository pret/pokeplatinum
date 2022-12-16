	.include "macros/function.inc"
	.include "global.inc"

	

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

	.rodata


	.global Unk_ov31_02256764
Unk_ov31_02256764: ; 0x02256764
	.incbin "incbin/overlay31_rodata.bin", 0x0, 0xC - 0x0

	.global Unk_ov31_02256770
Unk_ov31_02256770: ; 0x02256770
	.incbin "incbin/overlay31_rodata.bin", 0xC, 0x1E0

	.section .sinit, 4
	.word ov31_022561C0
