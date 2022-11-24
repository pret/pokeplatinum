	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov47_022561C0
ov47_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov47_022561D4
	ldr r1, _022561D0 ; =ov47_022563B8
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov47_022561D4
_022561D0: .word ov47_022563B8
	thumb_func_end ov47_022561C0

	thumb_func_start ov47_022561D4
ov47_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x9c
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov47_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov47_02256384
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
_02256218: .word ov47_02256384
	thumb_func_end ov47_022561D4

	thumb_func_start ov47_0225621C
ov47_0225621C: ; 0x0225621C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp]
	str r2, [sp, #4]
	bl ov25_02254540
	str r0, [r5, #0x78]
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x11
	add r7, r5, #0
	mov r6, #0
	add r4, r5, #0
	str r0, [sp, #8]
	add r7, #0x10
_0225623E:
	mov r0, #1
	strb r0, [r4, #0x13]
	strb r6, [r4, #0x12]
	ldr r0, [r5, #0x78]
	ldr r3, [sp, #8]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020569E8
	ldrb r0, [r4, #0x10]
	add r7, r7, #4
	add r0, #0x10
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x11]
	add r0, #0x10
	strb r0, [r4, #0x11]
	mov r0, #0
	strb r0, [r4, #0x13]
	add r0, r5, r6
	add r0, #0x94
	strb r6, [r0]
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #4
	add r4, r4, #4
	str r0, [sp, #8]
	cmp r6, #6
	blt _0225623E
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0xc]
	ldr r0, [sp]
	bl ov25_02254544
	bl sub_020507E4
	add r7, r0, #0
	mov r4, #0
	add r6, r5, #0
_0225628E:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0206B1F0
	str r0, [r6, #0x30]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _0225628E
	ldr r0, [sp]
	bl ov25_02254544
	bl sub_0202D834
	str r0, [sp, #0xc]
	mov r4, #0
	add r7, r5, #0
	add r6, r5, #0
_022562B2:
	lsl r1, r4, #0x18
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x18
	bl sub_0202D924
	mov r1, #8
	str r0, [r7, #0x7c]
	bl sub_0202D93C
	str r0, [r6, #0x40]
	add r1, r5, #0
	add r1, #0x9a
	mov r0, #0
	add r4, r4, #1
	strb r0, [r1]
	add r7, r7, #4
	add r6, #8
	cmp r4, #6
	blt _022562B2
	ldr r0, [sp]
	bl ov25_0225453C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A72C
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #0
	beq _02256304
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #8]
	str r0, [r5, #4]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	b _0225630A
_02256304:
	ldr r0, [r6, #8]
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
_0225630A:
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	ldr r2, [sp, #4]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	str r0, [r5, #4]
	ldr r1, [r5, #8]
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	str r0, [r5, #8]
	add r0, r5, #0
	add r0, #0x70
	add r1, r5, #4
	bl ov47_02256634
	cmp r0, #0
	beq _02256346
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	ldr r0, [sp]
	add sp, #0x10
	str r0, [r5, #0x74]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256346:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov47_0225621C

	thumb_func_start ov47_0225634C
ov47_0225634C: ; 0x0225634C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02256354:
	ldrb r2, [r5, #0x10]
	ldrb r3, [r5, #0x11]
	ldr r0, [r6, #0x78]
	sub r2, #0x10
	sub r3, #0x10
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020569C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02256354
	ldr r0, [r6, #0x70]
	bl ov47_02256670
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov47_0225634C

	thumb_func_start ov47_02256384
ov47_02256384: ; 0x02256384
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #4
	bhs _022563B0
	lsl r2, r1, #2
	ldr r1, _022563B4 ; =0x02256A4C
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022563B0
	add r0, r4, #0
	bl ov47_0225634C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x74]
	bl ov25_02254260
_022563B0:
	pop {r3, r4, r5, pc}
	nop
_022563B4: .word 0x02256A4C
	thumb_func_end ov47_02256384

	thumb_func_start ov47_022563B8
ov47_022563B8: ; 0x022563B8
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov47_022563B8

	thumb_func_start ov47_022563C0
ov47_022563C0: ; 0x022563C0
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022563C8
	b _022563CA
_022563C8:
	mov r1, #3
_022563CA:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov47_022563C0

	thumb_func_start ov47_022563D4
ov47_022563D4: ; 0x022563D4
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563E4
	cmp r0, #1
	beq _022563F4
	b _0225640E
_022563E4:
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl ov47_0225686C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225640E
_022563F4:
	ldr r0, [r4, #0x70]
	mov r1, #0
	bl ov47_02256890
	cmp r0, #0
	beq _0225640E
	ldr r0, [r4, #0x74]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov47_022563C0
_0225640E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov47_022563D4

	thumb_func_start ov47_02256414
ov47_02256414: ; 0x02256414
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0225642C
	mov r1, #3
	bl ov47_022563C0
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0225642C:
	bl ov47_02256584
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x2c]
	add r0, sp, #8
	add r1, sp, #4
	bl ov25_022544BC
	cmp r0, #0
	beq _022564A0
	ldr r5, [sp, #8]
	ldr r6, [sp, #4]
	mov r3, #0
_02256448:
	add r0, r4, r3
	add r0, #0x94
	ldrb r7, [r0]
	lsl r0, r7, #2
	add r2, r4, r0
	str r0, [sp]
	ldrb r0, [r2, #0x10]
	sub r1, r0, r5
	mov r0, #7
	mvn r0, r0
	cmp r1, r0
	blt _0225649A
	cmp r1, #8
	bgt _0225649A
	ldrb r0, [r2, #0x11]
	sub r1, r0, r6
	mov r0, #7
	mvn r0, r0
	cmp r1, r0
	blt _0225649A
	cmp r1, #8
	bgt _0225649A
	add r0, r4, #0
	add r1, r7, #0
	bl ov47_02256534
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r4, r0
	strb r2, [r1, #0x10]
	ldr r0, [sp, #4]
	strb r0, [r1, #0x11]
	mov r0, #1
	strb r0, [r1, #0x13]
	str r7, [r4, #0x28]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #2
	bl ov47_022563C0
	b _022564A0
_0225649A:
	add r3, r3, #1
	cmp r3, #6
	blt _02256448
_022564A0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov47_02256414

	thumb_func_start ov47_022564A8
ov47_022564A8: ; 0x022564A8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022564C0
	mov r1, #3
	bl ov47_022563C0
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_022564C0:
	bl ov47_02256584
	str r0, [r4, #0xc]
	add r0, sp, #4
	add r1, sp, #0
	bl ov25_0225446C
	cmp r0, #0
	beq _022564E8
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #4]
	lsl r0, r0, #2
	add r0, r4, r0
	strb r1, [r0, #0x10]
	ldr r0, [r4, #0x28]
	ldr r1, [sp]
	lsl r0, r0, #2
	add r0, r4, r0
	strb r1, [r0, #0x11]
	b _022564FA
_022564E8:
	ldr r0, [r4, #0x28]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	strb r1, [r0, #0x13]
	add r0, r4, #0
	mov r1, #1
	bl ov47_022563C0
_022564FA:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov47_022564A8

	thumb_func_start ov47_02256500
ov47_02256500: ; 0x02256500
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256510
	cmp r0, #1
	beq _02256520
	b _0225652E
_02256510:
	ldr r0, [r4, #0x70]
	mov r1, #1
	bl ov47_0225686C
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225652E
_02256520:
	ldr r0, [r4, #0x70]
	bl ov47_0225689C
	cmp r0, #0
	beq _0225652E
	mov r0, #1
	pop {r4, pc}
_0225652E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov47_02256500

	thumb_func_start ov47_02256534
ov47_02256534: ; 0x02256534
	push {r3, r4}
	add r2, r0, #0
	add r2, #0x94
	ldrb r2, [r2]
	cmp r2, r1
	beq _02256580
	mov r4, #0
_02256542:
	add r2, r0, r4
	add r2, #0x94
	ldrb r2, [r2]
	cmp r1, r2
	beq _02256552
	add r4, r4, #1
	cmp r4, #6
	blt _02256542
_02256552:
	cmp r4, #0
	beq _02256566
_02256556:
	add r2, r0, r4
	add r2, #0x93
	ldrb r3, [r2]
	add r2, r0, r4
	add r2, #0x94
	strb r3, [r2]
	sub r4, r4, #1
	bne _02256556
_02256566:
	add r2, r0, #0
	add r2, #0x94
	strb r1, [r2]
	mov r2, #0
_0225656E:
	add r1, r0, r2
	add r1, #0x94
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	strb r2, [r1, #0x12]
	add r2, r2, #1
	cmp r2, #6
	blt _0225656E
_02256580:
	pop {r3, r4}
	bx lr
	thumb_func_end ov47_02256534

	thumb_func_start ov47_02256584
ov47_02256584: ; 0x02256584
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x74]
	mov r7, #0
	bl ov25_02254534
	cmp r0, #0
	beq _0225662E
	ldr r0, [r5, #0x74]
	bl ov25_0225453C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A72C
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A24C
	cmp r0, #0
	beq _022565BC
	ldr r1, [r4, #0x1c]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	b _022565C0
_022565BC:
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
_022565C0:
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	asr r0, r2, #5
	asr r2, r1, #4
	lsr r2, r2, #0x1b
	add r2, r1, r2
	asr r1, r2, #5
	ldr r2, [r5, #4]
	cmp r0, r2
	bne _022565DC
	ldr r2, [r5, #8]
	cmp r1, r2
	beq _022565E2
_022565DC:
	str r0, [r5, #4]
	str r1, [r5, #8]
	mov r7, #1
_022565E2:
	add r0, r5, #0
	add r0, #0x9a
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x9a
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x9a
	ldrb r0, [r0]
	cmp r0, #5
	blo _0225662E
	mov r6, #0
	add r4, r5, #0
_022565FE:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _02256614
	ldr r0, [r4, #0x7c]
	mov r1, #8
	bl sub_0202D93C
	str r0, [r5, #0x40]
	cmp r0, #0
	beq _02256614
	mov r7, #1
_02256614:
	cmp r0, #0
	beq _02256624
	ldr r0, [r4, #0x7c]
	mov r1, #1
	bl sub_0202D93C
	str r0, [r5, #0x44]
	mov r7, #1
_02256624:
	add r6, r6, #1
	add r5, #8
	add r4, r4, #4
	cmp r6, #6
	blt _022565FE
_0225662E:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov47_02256584

	thumb_func_start ov47_02256634
ov47_02256634: ; 0x02256634
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x80
	bl sub_02018144
	add r4, r0, #0
	beq _0225666A
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
	bl ov47_02256684
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225666A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov47_02256634

	thumb_func_start ov47_02256670
ov47_02256670: ; 0x02256670
	push {r4, lr}
	add r4, r0, #0
	beq _02256680
	bl ov47_022567FC
	add r0, r4, #0
	bl sub_020181C4
_02256680:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov47_02256670

	thumb_func_start ov47_02256684
ov47_02256684: ; 0x02256684
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x78
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x68
	mov r1, #0xc
	mov r2, #0x76
	mov r3, #0x77
	bl ov25_02255958
	mov r2, #0
	add r0, sp, #0x24
	strb r2, [r0, #0x12]
	mov r1, #2
	strb r1, [r0, #0x13]
	strb r2, [r0, #0x15]
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl ov25_02255DBC
	ldr r0, [sp, #0x28]
	add r2, r5, #0
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	mov r1, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	strb r1, [r0, #0x14]
	mov r1, #0
	strh r1, [r0, #0x10]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x2c
	add r2, #0x68
	bl ov25_02255810
	str r0, [r5, #0x64]
	mov r1, #1
	add r0, sp, #0x24
	strb r1, [r0, #0x15]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x68
	mov r6, #0
	add r4, r7, #0
	str r5, [sp, #0xc]
	str r0, [sp, #0x14]
_02256702:
	ldrb r0, [r4, #0xc]
	ldr r2, [sp, #0x14]
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	ldrb r0, [r4, #0xe]
	add r1, r0, #2
	add r0, sp, #0x24
	strb r1, [r0, #0x14]
	add r1, r6, #1
	strh r1, [r0, #0x10]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x2c
	bl ov25_02255810
	ldr r1, [sp, #0xc]
	add r6, r6, #1
	str r0, [r1, #0x24]
	add r0, r1, #0
	add r0, r0, #4
	add r4, r4, #4
	str r0, [sp, #0xc]
	cmp r6, #6
	blt _02256702
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x68
	mov r6, #0
	add r4, r5, #0
	str r7, [sp, #0x10]
	str r0, [sp, #0x18]
_02256744:
	add r0, r6, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov25_02255DFC
	ldr r0, [sp, #0x28]
	mov r1, #9
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	strb r1, [r0, #0x14]
	add r1, r6, #0
	add r1, #0xe
	strh r1, [r0, #0x10]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x2c
	bl ov25_02255810
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _02256782
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl ov25_02255914
_02256782:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #4
	add r4, r4, #4
	str r0, [sp, #0x10]
	cmp r6, #4
	blt _02256744
	add r0, r5, #0
	str r0, [sp, #0x20]
	add r0, #0x68
	mov r6, #0
	add r4, r5, #0
	str r0, [sp, #0x20]
_0225679C:
	ldr r0, [r7, #0x40]
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov25_02255E24
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	mov r1, #8
	lsl r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	strb r1, [r0, #0x14]
	mov r1, #0x12
	strh r1, [r0, #0x10]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x2c
	bl ov25_02255810
	str r0, [r4, #0x4c]
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	beq _022567D6
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _022567DE
_022567D6:
	ldr r0, [r4, #0x4c]
	mov r1, #1
	bl ov25_02255914
_022567DE:
	add r6, r6, #1
	add r7, #8
	add r4, r4, #4
	cmp r6, #6
	blt _0225679C
	ldr r0, _022567F8 ; =ov47_02256968
	add r1, r5, #0
	mov r2, #3
	bl sub_0200D9E8
	str r0, [r5, #0x7c]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022567F8: .word ov47_02256968
	thumb_func_end ov47_02256684

	thumb_func_start ov47_022567FC
ov47_022567FC: ; 0x022567FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x7c]
	bl sub_0200DA58
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_0225680C:
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _0225681A
	ldr r0, [r5, #0x20]
	bl ov25_022558B0
	str r7, [r4, #0x24]
_0225681A:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _0225680C
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02256828:
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _02256836
	ldr r0, [r5, #0x20]
	bl ov25_022558B0
	str r7, [r4, #0x3c]
_02256836:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02256828
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02256844:
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	beq _02256852
	ldr r0, [r5, #0x20]
	bl ov25_022558B0
	str r7, [r4, #0x4c]
_02256852:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _02256844
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x64]
	bl ov25_022558B0
	add r5, #0x68
	add r0, r5, #0
	bl ov25_022559B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov47_022567FC

	thumb_func_start ov47_0225686C
ov47_0225686C: ; 0x0225686C
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _0225688C ; =0x02256A78
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225688C: .word 0x02256A78
	thumb_func_end ov47_0225686C

	thumb_func_start ov47_02256890
ov47_02256890: ; 0x02256890
	ldr r3, _02256898 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256898: .word ov25_02255130
	thumb_func_end ov47_02256890

	thumb_func_start ov47_0225689C
ov47_0225689C: ; 0x0225689C
	ldr r3, _022568A4 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_022568A4: .word ov25_02255154
	thumb_func_end ov47_0225689C

	thumb_func_start ov47_022568A8
ov47_022568A8: ; 0x022568A8
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov47_022568A8

	thumb_func_start ov47_022568BC
ov47_022568BC: ; 0x022568BC
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256940 ; =0x02256A5C
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
	mov r1, #0x75
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
	mov r1, #0x73
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256944 ; =0x04001000
	ldr r0, _02256948 ; =0xFFFFE0FF
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
	bl ov47_022568A8
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02256940: .word 0x02256A5C
_02256944: .word 0x04001000
_02256948: .word 0xFFFFE0FF
	thumb_func_end ov47_022568BC

	thumb_func_start ov47_0225694C
ov47_0225694C: ; 0x0225694C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov47_022568A8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov47_0225694C

	thumb_func_start ov47_02256968
ov47_02256968: ; 0x02256968
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _022569DE
	ldr r7, [r4, #0x24]
	lsl r6, r7, #2
	add r2, r4, r6
	ldrb r0, [r2, #0xf]
	cmp r0, #0
	beq _022569A8
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x24
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [r5, #0x20]
	ldr r1, [r1, r6]
	mov r2, #0
	bl ov25_0225591C
	ldr r0, [sp, #4]
	add r7, #8
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl ov25_022558C4
	b _022569CC
_022569A8:
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	ldrb r2, [r2, #0xe]
	add r0, r0, r6
	str r0, [sp]
	ldr r0, [r5, #0x20]
	ldr r1, [r1, r6]
	add r2, r2, #2
	bl ov25_0225591C
	ldr r0, [sp, #8]
	add r1, r7, #1
	ldr r0, [r0, r6]
	bl ov25_022558C4
_022569CC:
	add r2, r4, r6
	ldrb r1, [r2, #0xc]
	ldr r0, [sp]
	ldrb r2, [r2, #0xd]
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
_022569DE:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02256A48
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl ov25_02255DBC
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r0, [r5, #0x64]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	mov r6, #0
	add r7, sp, #0x10
_02256A02:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _02256A36
	ldr r0, [r4, #0x40]
	add r1, r7, #0
	add r2, sp, #0xc
	bl ov25_02255E24
	cmp r0, #0
	ldr r0, [r5, #0x4c]
	beq _02256A2E
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	ldr r0, [r5, #0x4c]
	mov r1, #0
	bl ov25_02255914
	b _02256A3E
_02256A2E:
	mov r1, #1
	bl ov25_02255914
	b _02256A3E
_02256A36:
	ldr r0, [r5, #0x4c]
	mov r1, #1
	bl ov25_02255914
_02256A3E:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blo _02256A02
_02256A48:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov47_02256968
	; 0x02256A4C


	.rodata
	.incbin "incbin/overlay47_rodata.bin"
