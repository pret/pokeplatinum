	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov50_022561C0
ov50_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov50_022561D4
	ldr r1, _022561D0 ; =ov50_022563B0
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov50_022561D4
_022561D0: .word ov50_022563B0
	thumb_func_end ov50_022561C0

	thumb_func_start ov50_022561D4
ov50_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0xb0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov50_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov50_0225636C
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
_02256218: .word ov50_0225636C
	thumb_func_end ov50_022561D4

	thumb_func_start ov50_0225621C
ov50_0225621C: ; 0x0225621C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #4
	add r6, r2, #0
	bl sub_020138A4
	add r0, r4, #0
	bl ov25_02254540
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1, #0]
	add r0, r5, #4
	add r1, r5, #0
	add r2, sp, #4
	bl ov50_022562AC
	add r0, r5, #0
	ldrb r1, [r5, #0x12]
	add r0, #0xa8
	add r2, r6, #0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r1, [r0, #0]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x90
	add r1, r5, #4
	bl ov50_02256510
	cmp r0, #0
	beq _0225629C
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _022562A4 ; =0x02256998
	ldr r2, _022562A8 ; =ov50_02256360
	mov r1, #0x25
	add r3, r5, #0
	bl ov25_02255ACC
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa0
	str r1, [r0, #0]
	add r5, #0x94
	add sp, #0x14
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0225629C:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_022562A4: .word 0x02256998
_022562A8: .word ov50_02256360
	thumb_func_end ov50_0225621C

	thumb_func_start ov50_022562AC
ov50_022562AC: ; 0x022562AC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r4, #4]
	str r1, [sp]
	str r0, [r6, #0]
	ldr r0, [r4, #8]
	str r0, [r6, #8]
	ldr r1, [r6, #0]
	ldr r0, _0225633C ; =0x02256A2B
	ldrb r0, [r0, r1]
	str r0, [r6, #4]
	ldr r0, [r6, #0]
	cmp r0, #2
	bne _022562F0
	ldr r5, [r4, #0]
	mov r1, #0x19
	add r0, r5, #0
	lsl r1, r1, #4
	bl sub_020E2178
	cmp r1, #0
	beq _022562EC
	add r0, r5, #0
	mov r1, #0x64
	bl sub_020E2178
	cmp r1, #0
	beq _022562F0
	mov r0, #3
	tst r0, r5
	bne _022562F0
_022562EC:
	mov r0, #0x1d
	str r0, [r6, #4]
_022562F0:
	ldr r0, [r4, #8]
	mov r1, #7
	sub r0, r0, #1
	bl sub_020E2178
	mov r2, #7
	ldr r3, [r4, #0xc]
	sub r0, r2, r1
	add r7, r3, r0
	cmp r7, #7
	blo _02256310
	add r0, r7, #0
	add r1, r2, #0
	bl sub_020E2178
	add r7, r1, #0
_02256310:
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	bls _0225633A
	add r5, r6, #0
_0225631A:
	ldr r0, [sp]
	add r2, r4, #1
	strh r2, [r5, #0xc]
	add r0, #0x98
	ldr r0, [r0, #0]
	ldr r1, [r6, #0]
	bl sub_020569A8
	strb r0, [r5, #0xf]
	add r0, r7, r4
	strb r0, [r5, #0xe]
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _0225631A
_0225633A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225633C: .word 0x02256A2B
	thumb_func_end ov50_022562AC

	thumb_func_start ov50_02256340
ov50_02256340: ; 0x02256340
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov25_02255B34
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl ov50_0225654C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov50_02256340

	thumb_func_start ov50_02256360
ov50_02256360: ; 0x02256360
	add r2, r3, #0
	add r2, #0xa4
	str r0, [r2, #0]
	add r3, #0xa0
	str r1, [r3, #0]
	bx lr
	thumb_func_end ov50_02256360

	thumb_func_start ov50_0225636C
ov50_0225636C: ; 0x0225636C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022563AA
	add r0, r4, #0
	add r0, #0x94
	add r1, #0x9c
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _022563AC ; =0x0225698C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022563AA
	add r0, r4, #0
	bl ov50_02256340
	add r0, r5, #0
	bl sub_0200DA58
	add r4, #0x94
	ldr r0, [r4, #0]
	bl ov25_02254260
_022563AA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022563AC: .word 0x0225698C
	thumb_func_end ov50_0225636C

	thumb_func_start ov50_022563B0
ov50_022563B0: ; 0x022563B0
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov50_022563B0

	thumb_func_start ov50_022563B8
ov50_022563B8: ; 0x022563B8
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022563C0
	b _022563C2
_022563C0:
	mov r1, #2
_022563C2:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov50_022563B8

	thumb_func_start ov50_022563CC
ov50_022563CC: ; 0x022563CC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563DC
	cmp r0, #1
	beq _022563F0
	b _02256412
_022563DC:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov50_022565FC
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256412
_022563F0:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov50_02256620
	cmp r0, #0
	beq _02256412
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov50_022563B8
_02256412:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov50_022563CC

	thumb_func_start ov50_02256418
ov50_02256418: ; 0x02256418
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r1, [r5, #2]
	cmp r1, #0
	beq _0225642C
	mov r1, #2
	bl ov50_022563B8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225642C:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _02256438
	cmp r0, #1
	beq _022564BE
	b _022564D2
_02256438:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _022564D2
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r2, [r0, #0]
	add r0, r5, #0
	add r0, #0xa4
	ldr r1, [r0, #0]
	cmp r1, r2
	blo _022564D2
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r1, r0
	bhi _022564D2
	add r0, r5, #0
	add r0, #0x98
	sub r4, r1, r2
	ldr r0, [r0, #0]
	ldr r1, [r5, #4]
	add r2, r4, #1
	bl sub_020569A8
	cmp r0, #0
	beq _02256488
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	ldr r1, [r5, #4]
	add r2, r4, #1
	bl sub_02056970
	b _02256496
_02256488:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	ldr r1, [r5, #4]
	add r2, r4, #1
	bl sub_02056934
_02256496:
	add r3, r5, #0
	add r3, #0x13
	lsl r2, r4, #2
	ldrb r1, [r3, r2]
	mov r0, #1
	eor r0, r1
	strb r0, [r3, r2]
	add r0, r5, #0
	add r0, #0x8c
	str r4, [r0, #0]
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	mov r1, #2
	bl ov50_022565FC
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	b _022564D2
_022564BE:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	mov r1, #2
	bl ov50_02256620
	cmp r0, #0
	beq _022564D2
	mov r0, #0
	strb r0, [r5, #1]
_022564D2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov50_02256418

	thumb_func_start ov50_022564D8
ov50_022564D8: ; 0x022564D8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022564E8
	cmp r0, #1
	beq _022564FC
	b _0225650C
_022564E8:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov50_022565FC
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225650C
_022564FC:
	add r4, #0x90
	ldr r0, [r4, #0]
	bl ov50_0225662C
	cmp r0, #0
	beq _0225650C
	mov r0, #1
	pop {r4, pc}
_0225650C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov50_022564D8

	thumb_func_start ov50_02256510
ov50_02256510: ; 0x02256510
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x3c
	bl sub_02018144
	add r4, r0, #0
	beq _02256546
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
	bl ov50_02256560
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256546:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov50_02256510

	thumb_func_start ov50_0225654C
ov50_0225654C: ; 0x0225654C
	push {r4, lr}
	add r4, r0, #0
	beq _0225655C
	bl ov50_022565E4
	add r0, r4, #0
	bl sub_020181C4
_0225655C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov50_0225654C

	thumb_func_start ov50_02256560
ov50_02256560: ; 0x02256560
	push {r4, r5, lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x72
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0xc
	mov r2, #0x70
	mov r3, #0x71
	bl ov25_02255958
	add r2, r5, #0
	ldr r0, [r5, #0x20]
	ldr r1, _022565AC ; =0x02256A38
	add r2, #0x28
	bl ov25_02255810
	str r0, [r5, #0x24]
	ldr r1, [r4, #8]
	lsl r1, r1, #2
	add r1, r4, r1
	ldrb r1, [r1, #0xa]
	bl ov50_022565B0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_022565AC: .word 0x02256A38
	thumb_func_end ov50_02256560

	thumb_func_start ov50_022565B0
ov50_022565B0: ; 0x022565B0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #7
	bl sub_020E2178
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #7
	bl sub_020E2178
	add r2, r0, #0
	lsl r1, r4, #1
	lsl r3, r2, #1
	add r1, r4, r1
	add r2, r2, r3
	add r1, r1, #5
	add r2, r2, #6
	add r0, r5, #0
	lsl r1, r1, #0xf
	lsl r2, r2, #0xf
	bl ov25_02255900
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov50_022565B0

	thumb_func_start ov50_022565E4
ov50_022565E4: ; 0x022565E4
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
	thumb_func_end ov50_022565E4

	thumb_func_start ov50_022565FC
ov50_022565FC: ; 0x022565FC
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _0225661C ; =0x02256AC0
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225661C: .word 0x02256AC0
	thumb_func_end ov50_022565FC

	thumb_func_start ov50_02256620
ov50_02256620: ; 0x02256620
	ldr r3, _02256628 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256628: .word ov25_02255130
	thumb_func_end ov50_02256620

	thumb_func_start ov50_0225662C
ov50_0225662C: ; 0x0225662C
	ldr r3, _02256634 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256634: .word ov25_02255154
	thumb_func_end ov50_0225662C

	thumb_func_start ov50_02256638
ov50_02256638: ; 0x02256638
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov50_02256638

	thumb_func_start ov50_0225664C
ov50_0225664C: ; 0x0225664C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022566E0 ; =0x02256A7C
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	ldr r2, _022566E4 ; =0x02256A60
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov50_0225675C
	add r0, r5, #0
	add r1, r4, #0
	bl ov50_022567F4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x6f
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r0, [r5, #4]
	mov r1, #7
	bl sub_02019448
	ldr r1, _022566E8 ; =0x04001000
	ldr r0, _022566EC ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #0xc
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r6, #0
	bl ov50_02256638
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022566E0: .word 0x02256A7C
_022566E4: .word 0x02256A60
_022566E8: .word 0x04001000
_022566EC: .word 0xFFFFE0FF
	thumb_func_end ov50_0225664C

	thumb_func_start ov50_022566F0
ov50_022566F0: ; 0x022566F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #7
	bl sub_02019044
	add r0, r5, #0
	bl ov50_02256638
	pop {r3, r4, r5, pc}
	thumb_func_end ov50_022566F0

	thumb_func_start ov50_02256714
ov50_02256714: ; 0x02256714
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r4, #0
	bl ov25_02255240
	add r2, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	lsl r3, r0, #2
	add r0, r2, r3
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _0225673A
	mov r1, #0x8f
	b _0225673C
_0225673A:
	mov r1, #0x83
_0225673C:
	add r2, r2, r3
	ldrb r2, [r2, #0xe]
	lsl r1, r1, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	bl ov50_022567A8
	ldr r0, [r5, #4]
	mov r1, #7
	bl sub_02019448
	add r0, r4, #0
	bl ov50_02256638
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov50_02256714

	thumb_func_start ov50_0225675C
ov50_0225675C: ; 0x0225675C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r6, r1, #0
	ldr r2, [r7, #4]
	mov r0, #0xc
	mov r1, #0x6e
	mov r3, #7
	bl sub_02006E60
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	bls _022567A2
	add r5, r6, #0
_02256788:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _02256798
	ldrb r2, [r5, #0xe]
	ldr r0, [r7, #4]
	mov r1, #0x8f
	bl ov50_022567A8
_02256798:
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _02256788
_022567A2:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov50_0225675C

	thumb_func_start ov50_022567A8
ov50_022567A8: ; 0x022567A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #7
	bl sub_020E2178
	add r4, r1, #0
	add r0, r7, #0
	mov r1, #7
	bl sub_020E2178
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r0, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r3, r4, #1
	str r0, [sp]
	mov r0, #2
	add r3, r4, r3
	str r0, [sp, #4]
	add r3, r3, #4
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #7
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov50_022567A8

	thumb_func_start ov50_022567F4
ov50_022567F4: ; 0x022567F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r3, #0
	add r7, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r6, r1, #0
	ldr r0, [r7, #4]
	mov r1, #6
	mov r2, #0x82
	bl sub_02019CB8
	ldr r0, [r7, #4]
	ldr r1, [r6, #0]
	bl ov50_0225683C
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	bls _02256838
	add r5, r6, #0
_02256824:
	ldrb r2, [r5, #0xe]
	ldr r0, [r7, #4]
	add r1, r4, #1
	bl ov50_02256894
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _02256824
_02256838:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov50_022567F4

	thumb_func_start ov50_0225683C
ov50_0225683C: ; 0x0225683C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, _02256890 ; =0x02256A46
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	mov r0, #0
	str r0, [sp, #0x10]
_0225684C:
	ldr r0, [sp, #0x10]
	mov r5, #0
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02256856:
	add r3, r5, #0
	add r2, r4, r5
	add r3, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #6
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r5, r5, #1
	cmp r5, #4
	blt _02256856
	ldr r0, [sp, #0x10]
	add r4, #0xc
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #2
	blt _0225684C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02256890: .word 0x02256A46
	thumb_func_end ov50_0225683C

	thumb_func_start ov50_02256894
ov50_02256894: ; 0x02256894
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r2, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r5, #0
	mov r1, #7
	bl sub_020E2178
	add r6, r1, #0
	lsl r0, r6, #1
	add r0, r6, r0
	add r4, r0, #4
	add r0, r5, #0
	mov r1, #7
	bl sub_020E2178
	lsl r1, r0, #1
	add r0, r0, r1
	add r5, r0, #5
	cmp r6, #0
	bne _022568C4
	mov r6, #1
	b _022568C6
_022568C4:
	mov r6, #0
_022568C6:
	ldr r0, [sp, #0x14]
	mov r1, #0xa
	bl sub_020E2178
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0xa
	bl sub_020E2178
	str r1, [sp, #0x18]
	cmp r7, #0
	beq _0225692E
	mov r0, #0x14
	add r2, r6, #0
	mul r2, r0
	ldr r0, _02256988 ; =0x02256A98
	lsl r1, r7, #1
	add r0, r0, r2
	ldrh r7, [r1, r0]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r3, r4, #0x18
	ldr r0, [sp, #0x10]
	mov r1, #6
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r7, #0xc
	str r0, [sp, #0xc]
	lsl r2, r7, #0x10
	lsl r3, r4, #0x18
	ldr r0, [sp, #0x10]
	mov r1, #6
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
_0225692E:
	mov r0, #0x14
	add r3, r6, #0
	mul r3, r0
	ldr r0, [sp, #0x18]
	ldr r2, _02256988 ; =0x02256A98
	lsl r1, r0, #1
	add r0, r2, r3
	ldrh r6, [r1, r0]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r3, r4, #1
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	mov r1, #6
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r6, #0xc
	add r3, r4, #1
	str r0, [sp, #0xc]
	lsl r2, r6, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	mov r1, #6
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02256988: .word 0x02256A98
	thumb_func_end ov50_02256894
	; 0x0225698C


	.rodata
	.incbin "incbin/overlay50_rodata.bin"


	.bss
	.space 0x0
