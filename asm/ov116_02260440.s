	.include "macros/function.inc"
	.include "include/ov116_02260440.inc"

	

	.text


	thumb_func_start ov116_02260440
ov116_02260440: ; 0x02260440
	push {r4, lr}
	ldr r1, [r2, #0]
	ldr r0, [r2, #4]
	add r4, r3, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	bl sub_0201D2DC
	add r0, r4, #0
	bl ov116_022617D4
	pop {r4, pc}
	thumb_func_end ov116_02260440

	thumb_func_start ov116_02260458
ov116_02260458: ; 0x02260458
	add r0, r3, #0
	ldr r3, _02260460 ; =ov116_022617DC
	bx r3
	nop
_02260460: .word ov116_022617DC
	thumb_func_end ov116_02260458

	thumb_func_start ov116_02260464
ov116_02260464: ; 0x02260464
	ldr r1, [r3, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r2, [r2, #0]
	ldr r0, _02260474 ; =0x00002B9C
	str r2, [r1, r0]
	bx lr
	nop
_02260474: .word 0x00002B9C
	thumb_func_end ov116_02260464

	thumb_func_start ov116_02260478
ov116_02260478: ; 0x02260478
	lsl r0, r0, #3
	ldr r1, [r2, #0]
	add r0, r3, r0
	str r1, [r0, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02260478

	thumb_func_start ov116_02260484
ov116_02260484: ; 0x02260484
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02260484

	thumb_func_start ov116_02260488
ov116_02260488: ; 0x02260488
	mov r0, #0
	bx lr
	thumb_func_end ov116_02260488

	thumb_func_start ov116_0226048C
ov116_0226048C: ; 0x0226048C
	mov r0, #8
	bx lr
	thumb_func_end ov116_0226048C

	thumb_func_start ov116_02260490
ov116_02260490: ; 0x02260490
	mov r0, #4
	bx lr
	thumb_func_end ov116_02260490

	thumb_func_start ov116_02260494
ov116_02260494: ; 0x02260494
	mov r0, #8
	bx lr
	thumb_func_end ov116_02260494

	thumb_func_start ov116_02260498
ov116_02260498: ; 0x02260498
	mov r0, #0x20
	bx lr
	thumb_func_end ov116_02260498

	thumb_func_start ov116_0226049C
ov116_0226049C: ; 0x0226049C
	ldr r0, _022604A0 ; =0x02267740
	bx lr
	; .align 2, 0
_022604A0: .word 0x02267740
	thumb_func_end ov116_0226049C

	thumb_func_start ov116_022604A4
ov116_022604A4: ; 0x022604A4
	mov r0, #5
	bx lr
	thumb_func_end ov116_022604A4

	thumb_func_start ov116_022604A8
ov116_022604A8: ; 0x022604A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov116_0226049C
	add r4, r0, #0
	bl ov116_022604A4
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02032798
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_022604A8

	.rodata


	.global Unk_ov116_02267740
Unk_ov116_02267740: ; 0x02267740
	.incbin "incbin/overlay116_rodata.bin", 0x0, 0x3C

