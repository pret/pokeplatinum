	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov30_022561C0
ov30_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov30_022561D4
	ldr r1, _022561D0 ; =ov30_022562EC
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov30_022561D4
_022561D0: .word ov30_022562EC
	thumb_func_end ov30_022561C0

	thumb_func_start ov30_022561D4
ov30_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x2c
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov30_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov30_022562B0
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	cmp r0, #0
	beq _0225620C
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620C:
	add r0, r4, #0
	bl sub_020181C4
_02256212:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256218: .word ov30_022562B0
	thumb_func_end ov30_022561D4

	thumb_func_start ov30_0225621C
ov30_0225621C: ; 0x0225621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x14
	bl ov30_022563EC
	cmp r0, #0
	beq _0225628A
	mov r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	strb r1, [r5, #2]
	mov r0, #1
	strb r0, [r5, #3]
	strb r1, [r5, #6]
	add r0, r5, #0
	str r1, [r5, #0x20]
	add r0, #0x14
	bl sub_02013880
	ldr r0, [r5, #0x14]
	cmp r0, #0x18
	blo _02256256
	mov r1, #0x18
	bl sub_020E2178
	str r1, [r5, #0x14]
_02256256:
	ldr r0, [r5, #0x18]
	cmp r0, #0x3c
	blo _02256266
	ldr r0, [r5, #0x14]
	mov r1, #0x3c
	bl sub_020E2178
	str r1, [r5, #0x14]
_02256266:
	ldr r0, [r5, #0x18]
	ldr r2, _02256290 ; =ov30_022562F4
	strb r0, [r5, #5]
	mov r0, #8
	str r0, [sp]
	ldr r0, _02256294 ; =0x02256678
	mov r1, #1
	add r3, r5, #0
	bl ov25_02255ACC
	str r0, [r5, #0x10]
	cmp r0, #0
	bne _02256284
	mov r0, #0
	pop {r3, r4, r5, pc}
_02256284:
	str r4, [r5, #0x28]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225628A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02256290: .word ov30_022562F4
_02256294: .word 0x02256678
	thumb_func_end ov30_0225621C

	thumb_func_start ov30_02256298
ov30_02256298: ; 0x02256298
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl ov30_02256444
	ldr r0, [r4, #0x10]
	bl ov25_02255B34
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov30_02256298

	thumb_func_start ov30_022562B0
ov30_022562B0: ; 0x022562B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562E6
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022562E8 ; =0x0225667C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562E6
	add r0, r4, #0
	bl ov30_02256298
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x28]
	bl ov25_02254260
_022562E6:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022562E8: .word 0x0225667C
	thumb_func_end ov30_022562B0

	thumb_func_start ov30_022562EC
ov30_022562EC: ; 0x022562EC
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov30_022562EC

	thumb_func_start ov30_022562F4
ov30_022562F4: ; 0x022562F4
	cmp r2, #0
	beq _02256304
	cmp r2, #1
	bne _0225630C
	mov r0, #1
	str r0, [r3, #0x20]
	strb r0, [r3, #6]
	bx lr
_02256304:
	mov r0, #0
	str r0, [r3, #0x20]
	mov r0, #1
	strb r0, [r3, #6]
_0225630C:
	bx lr
	; .align 2, 0
	thumb_func_end ov30_022562F4

	thumb_func_start ov30_02256310
ov30_02256310: ; 0x02256310
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256318
	b _0225631A
_02256318:
	mov r1, #2
_0225631A:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov30_02256310

	thumb_func_start ov30_02256324
ov30_02256324: ; 0x02256324
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256334
	cmp r0, #1
	beq _02256344
	b _0225635E
_02256334:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov30_02256464
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225635E
_02256344:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov30_02256488
	cmp r0, #0
	beq _0225635E
	ldr r0, [r4, #0x28]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov30_02256310
_0225635E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov30_02256324

	thumb_func_start ov30_02256364
ov30_02256364: ; 0x02256364
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256378
	mov r1, #2
	bl ov30_02256310
	mov r0, #0
	pop {r4, pc}
_02256378:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0225638A
	mov r0, #0
	strb r0, [r4, #6]
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl ov30_02256464
_0225638A:
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ov30_02256488
	cmp r0, #0
	beq _022563B2
	ldr r0, [r4, #0x18]
	strb r0, [r4, #5]
	add r0, r4, #0
	add r0, #0x14
	bl sub_02013880
	ldrb r1, [r4, #5]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	beq _022563B2
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ov30_02256464
_022563B2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov30_02256364

	thumb_func_start ov30_022563B8
ov30_022563B8: ; 0x022563B8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563C8
	cmp r0, #1
	beq _022563D8
	b _022563E6
_022563C8:
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl ov30_02256464
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563E6
_022563D8:
	ldr r0, [r4, #0x24]
	bl ov30_02256494
	cmp r0, #0
	beq _022563E6
	mov r0, #1
	pop {r4, pc}
_022563E6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov30_022563B8

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
	bl sub_020E2178
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
	; 0x02256678


	.rodata
	.incbin "incbin/overlay30_rodata.bin"

	.section .sinit, 4
	.word ov30_022561C0

	.bss
	.space 0x0
