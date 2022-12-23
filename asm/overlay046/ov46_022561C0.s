	.include "macros/function.inc"
	.include "overlay046/ov46_022561C0.inc"

	

	.text


	thumb_func_start ov46_022561C0
ov46_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov46_022561D4
	ldr r1, _022561D0 ; =ov46_02256458
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov46_022561D4
_022561D0: .word ov46_02256458
	thumb_func_end ov46_022561C0

	thumb_func_start ov46_022561D4
ov46_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x90
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov46_02256310
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov46_02256408
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
_02256218: .word ov46_02256408
	thumb_func_end ov46_022561D4

	thumb_func_start ov46_0225621C
ov46_0225621C: ; 0x0225621C
	push {r4, r5}
	mov r4, #0
	add r5, r0, #0
	mov r3, #1
	add r2, r4, #0
_02256226:
	add r1, r0, r4
	str r3, [r5, #0x5c]
	add r1, #0x4c
	add r4, r4, #1
	add r5, r5, #4
	strb r2, [r1]
	cmp r4, #3
	blt _02256226
	str r3, [r0, #0x44]
	pop {r4, r5}
	bx lr
	thumb_func_end ov46_0225621C

	thumb_func_start ov46_0225623C
ov46_0225623C: ; 0x0225623C
	lsl r3, r1, #2
	add r3, r0, r3
	str r2, [r3, #0x5c]
	cmp r2, #0
	beq _0225624A
	mov r2, #0
	b _0225624C
_0225624A:
	mov r2, #1
_0225624C:
	add r1, r0, r1
	add r1, #0x4c
	strb r2, [r1]
	mov r1, #1
	str r1, [r0, #0x44]
	bx lr
	thumb_func_end ov46_0225623C

	thumb_func_start ov46_02256258
ov46_02256258: ; 0x02256258
	lsl r3, r1, #2
	add r3, r0, r3
	ldr r3, [r3, #0x5c]
	cmp r3, #0
	beq _0225626C
	add r1, r0, r1
	add r1, #0x4c
	strb r2, [r1]
	mov r1, #1
	str r1, [r0, #0x44]
_0225626C:
	bx lr
	; .align 2, 0
	thumb_func_end ov46_02256258

	thumb_func_start ov46_02256270
ov46_02256270: ; 0x02256270
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	bl ov46_0225710C
	str r0, [r4, #0x10]
	ldr r0, [r5, #4]
	add r1, r4, #0
	mov r2, #0x48
	bl sub_02099D54
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02256270

	thumb_func_start ov46_0225628C
ov46_0225628C: ; 0x0225628C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #0x48
	bl sub_02099D7C
	cmp r0, #0
	beq _022562CC
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _022562D2
	add r0, r4, #0
	bl ov46_02256A88
	add r0, r4, #0
	bl ov46_02256A78
	cmp r0, #0
	beq _022562D2
	add r0, r4, #0
	mov r1, #4
	add r0, #0x8c
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r4, #0x50]
	mov r0, #2
	str r0, [r4, #0x54]
	pop {r4, pc}
_022562CC:
	add r0, r4, #0
	bl ov46_022562D4
_022562D2:
	pop {r4, pc}
	thumb_func_end ov46_0225628C

	thumb_func_start ov46_022562D4
ov46_022562D4: ; 0x022562D4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r3, r4, #0
	mov r2, #1
	add r1, #0x8c
	str r2, [r1, #0]
	mov r1, #0
	add r3, #0x48
	strb r1, [r3]
	add r3, r4, #0
	add r3, #0x49
	strb r1, [r3]
	add r3, r4, #0
	add r3, #0x4a
	strb r1, [r3]
	add r3, r4, #0
	add r3, #0x4b
	strb r1, [r3]
	str r2, [r4, #0x50]
	str r1, [r4, #0x54]
	str r1, [r4, #0x58]
	bl ov46_0225621C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov46_0225623C
	pop {r4, pc}
	thumb_func_end ov46_022562D4

	thumb_func_start ov46_02256310
ov46_02256310: ; 0x02256310
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	str r3, [r5, #4]
	bl ov46_0225628C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #8
	add r1, #0x48
	add r2, r6, #0
	bl ov46_02256BCC
	cmp r0, #0
	beq _022563A8
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #3]
	mov r0, #8
	str r0, [sp]
	ldr r0, _022563B0 ; =0x02257130
	ldr r2, _022563B4 ; =ov46_022563D8
	mov r1, #0xb
	add r3, r5, #0
	bl ov25_02255ACC
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	mov r1, #3
	mov r2, #4
	bl ov25_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #4
	bl ov25_02255C5C
	mov r1, #4
	ldr r0, [r5, #0x10]
	add r2, r1, #0
	bl ov25_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #6
	mov r2, #4
	bl ov25_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #7
	mov r2, #4
	bl ov25_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #9
	mov r2, #4
	bl ov25_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #8
	mov r2, #4
	bl ov25_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #0xa
	mov r2, #4
	bl ov25_02255C5C
	add sp, #4
	str r4, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_022563A8:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022563B0: .word 0x02257130
_022563B4: .word ov46_022563D8
	thumb_func_end ov46_02256310

	thumb_func_start ov46_022563B8
ov46_022563B8: ; 0x022563B8
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x48
	bl ov46_02256270
	ldr r0, [r4, #0x10]
	bl ov25_02255B34
	ldr r0, [r4, #8]
	bl ov46_02256C0C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov46_022563B8

	thumb_func_start ov46_022563D8
ov46_022563D8: ; 0x022563D8
	push {r3, lr}
	add r2, r0, #0
	str r2, [r3, #0x14]
	str r1, [r3, #0x18]
	cmp r2, #3
	bhs _02256404
	cmp r1, #1
	bne _022563F4
	add r1, r2, #0
	add r0, r3, #0
	mov r2, #1
	bl ov46_02256258
	pop {r3, pc}
_022563F4:
	sub r0, r1, #2
	cmp r0, #1
	bhi _02256404
	add r1, r2, #0
	add r0, r3, #0
	mov r2, #0
	bl ov46_02256258
_02256404:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov46_022563D8

	thumb_func_start ov46_02256408
ov46_02256408: ; 0x02256408
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #7
	bhs _02256450
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl ov25_02254518
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0225642E
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov46_02256D24
	mov r0, #0
	str r0, [r4, #0x44]
_0225642E:
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02256454 ; =0x02257114
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256450
	add r0, r4, #0
	bl ov46_022563B8
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0xc]
	bl ov25_02254260
_02256450:
	pop {r3, r4, r5, pc}
	nop
_02256454: .word 0x02257114
	thumb_func_end ov46_02256408

	thumb_func_start ov46_02256458
ov46_02256458: ; 0x02256458
	mov r1, #1
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end ov46_02256458

	thumb_func_start ov46_02256460
ov46_02256460: ; 0x02256460
	ldrb r3, [r0, #3]
	ldrb r2, [r0]
	cmp r3, #0
	beq _0225646A
	mov r1, #6
_0225646A:
	strb r1, [r0]
	cmp r1, #0
	beq _0225647A
	cmp r1, #6
	beq _0225647A
	add r3, r0, #0
	add r3, #0x8c
	str r2, [r3, #0]
_0225647A:
	cmp r1, #6
	bhi _022564D0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225648A: ; jump table
	.short _022564D0 - _0225648A - 2 ; case 0
	.short _02256498 - _0225648A - 2 ; case 1
	.short _022564A2 - _0225648A - 2 ; case 2
	.short _022564AC - _0225648A - 2 ; case 3
	.short _022564B6 - _0225648A - 2 ; case 4
	.short _022564C0 - _0225648A - 2 ; case 5
	.short _022564CA - _0225648A - 2 ; case 6
_02256498:
	mov r1, #1
	str r1, [r0, #0x50]
	mov r1, #0
	str r1, [r0, #0x54]
	b _022564D0
_022564A2:
	mov r1, #0
	str r1, [r0, #0x50]
	mov r1, #1
	str r1, [r0, #0x54]
	b _022564D0
_022564AC:
	mov r1, #0
	str r1, [r0, #0x50]
	mov r1, #1
	str r1, [r0, #0x54]
	b _022564D0
_022564B6:
	mov r1, #0
	str r1, [r0, #0x50]
	mov r1, #2
	str r1, [r0, #0x54]
	b _022564D0
_022564C0:
	mov r1, #0
	str r1, [r0, #0x50]
	mov r1, #3
	str r1, [r0, #0x54]
	b _022564D0
_022564CA:
	add r1, r0, #0
	add r1, #0x8c
	str r2, [r1, #0]
_022564D0:
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov46_02256460

	thumb_func_start ov46_022564D8
ov46_022564D8: ; 0x022564D8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022564E8
	cmp r0, #1
	beq _022564F8
	b _02256514
_022564E8:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov46_02256D24
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256514
_022564F8:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov46_02256D48
	cmp r0, #0
	beq _02256514
	ldr r0, [r4, #0xc]
	bl ov25_0225424C
	add r0, r4, #0
	add r4, #0x8c
	ldr r1, [r4, #0]
	bl ov46_02256460
_02256514:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov46_022564D8

	thumb_func_start ov46_02256518
ov46_02256518: ; 0x02256518
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #3]
	cmp r1, #0
	beq _0225652C
	mov r1, #6
	bl ov46_02256460
	mov r0, #0
	pop {r4, pc}
_0225652C:
	ldr r0, [r4, #8]
	bl ov46_02256D54
	cmp r0, #0
	bne _0225653A
	mov r0, #0
	pop {r4, pc}
_0225653A:
	ldr r1, [r4, #0x18]
	cmp r1, #1
	bne _022565B6
	ldr r0, [r4, #0x14]
	cmp r0, #2
	bhi _022565B6
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0225656E
	cmp r0, #1
	beq _022565AC
	cmp r0, #2
	bne _022565B2
	add r0, r4, #0
	bl ov46_02256AF0
	ldr r0, [r4, #8]
	mov r1, #5
	bl ov46_02256D24
	ldr r0, _02256698 ; =0x00000663
	bl ov25_02254424
	b _022565B2
_0225656E:
	ldr r0, _02256698 ; =0x00000663
	bl ov25_02254424
	add r0, r4, #0
	bl ov46_022569CC
	mov r3, #0
	mov r2, #0
	eor r1, r3
	eor r0, r2
	orr r0, r1
	beq _022565B2
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov46_0225623C
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov46_0225623C
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov46_02256D24
	add r0, r4, #0
	mov r1, #2
	bl ov46_02256460
	b _022565B2
_022565AC:
	ldr r0, _0225669C ; =0x0000066E
	bl ov25_02254424
_022565B2:
	mov r0, #0
	pop {r4, pc}
_022565B6:
	cmp r1, #1
	beq _022565BE
	cmp r1, #7
	bne _02256692
_022565BE:
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x48
	cmp r1, #0xa
	bhi _02256686
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022565D4: ; jump table
	.short _02256686 - _022565D4 - 2 ; case 0
	.short _02256686 - _022565D4 - 2 ; case 1
	.short _02256686 - _022565D4 - 2 ; case 2
	.short _022565EA - _022565D4 - 2 ; case 3
	.short _022565FC - _022565D4 - 2 ; case 4
	.short _02256610 - _022565D4 - 2 ; case 5
	.short _02256624 - _022565D4 - 2 ; case 6
	.short _02256638 - _022565D4 - 2 ; case 7
	.short _0225664C - _022565D4 - 2 ; case 8
	.short _02256660 - _022565D4 - 2 ; case 9
	.short _02256674 - _022565D4 - 2 ; case 10
_022565EA:
	mov r1, #0
	ldrsb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0]
	ldrsb r2, [r0, r1]
	cmp r2, #9
	ble _02256686
	strb r1, [r0]
	b _02256686
_022565FC:
	mov r1, #1
	ldrsb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, #1]
	ldrsb r1, [r0, r1]
	cmp r1, #9
	ble _02256686
	mov r1, #0
	strb r1, [r0, #1]
	b _02256686
_02256610:
	mov r1, #0
	ldrsb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0]
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _02256686
	mov r1, #9
	strb r1, [r0]
	b _02256686
_02256624:
	mov r1, #1
	ldrsb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0, #1]
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _02256686
	mov r1, #9
	strb r1, [r0, #1]
	b _02256686
_02256638:
	mov r1, #2
	ldrsb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, #2]
	ldrsb r1, [r0, r1]
	cmp r1, #5
	ble _02256686
	mov r1, #0
	strb r1, [r0, #2]
	b _02256686
_0225664C:
	mov r1, #3
	ldrsb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, #3]
	ldrsb r1, [r0, r1]
	cmp r1, #9
	ble _02256686
	mov r1, #0
	strb r1, [r0, #3]
	b _02256686
_02256660:
	mov r1, #2
	ldrsb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0, #2]
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _02256686
	mov r1, #5
	strb r1, [r0, #2]
	b _02256686
_02256674:
	mov r1, #3
	ldrsb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0, #3]
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _02256686
	mov r1, #9
	strb r1, [r0, #3]
_02256686:
	ldr r0, [r4, #8]
	mov r1, #5
	bl ov46_02256D24
	mov r0, #0
	str r0, [r4, #0x18]
_02256692:
	mov r0, #0
	pop {r4, pc}
	nop
_02256698: .word 0x00000663
_0225669C: .word 0x0000066E
	thumb_func_end ov46_02256518

	thumb_func_start ov46_022566A0
ov46_022566A0: ; 0x022566A0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #3]
	cmp r1, #0
	beq _022566B4
	mov r1, #6
	bl ov46_02256460
	mov r0, #0
	pop {r4, pc}
_022566B4:
	bl ov46_02256A88
	cmp r0, #0
	beq _022566EC
	ldr r0, [r4, #8]
	mov r1, #5
	bl ov46_02256D24
	add r0, r4, #0
	bl ov46_02256A78
	cmp r0, #0
	beq _022566EC
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov46_0225623C
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov46_02256D24
	add r0, r4, #0
	mov r1, #4
	bl ov46_02256460
	mov r0, #0
	pop {r4, pc}
_022566EC:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _02256780
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02256706
	cmp r0, #1
	beq _0225670E
	cmp r0, #2
	beq _02256740
	b _02256780
_02256706:
	ldr r0, _02256784 ; =0x0000066E
	bl ov25_02254424
	b _02256780
_0225670E:
	ldr r0, _02256788 ; =0x00000663
	bl ov25_02254424
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov46_0225623C
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov46_0225623C
	add r0, r4, #0
	bl ov46_02256A3C
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov46_02256D24
	add r0, r4, #0
	mov r1, #3
	bl ov46_02256460
	b _02256780
_02256740:
	ldr r0, _02256788 ; =0x00000663
	bl ov25_02254424
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov46_0225623C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov46_0225623C
	add r0, r4, #0
	bl ov46_02256AF0
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov46_02256D24
	ldr r0, [r4, #8]
	mov r1, #5
	bl ov46_02256D24
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov46_02256D24
	add r0, r4, #0
	mov r1, #1
	bl ov46_02256460
_02256780:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02256784: .word 0x0000066E
_02256788: .word 0x00000663
	thumb_func_end ov46_022566A0

	thumb_func_start ov46_0225678C
ov46_0225678C: ; 0x0225678C
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #3]
	cmp r1, #0
	beq _022567A0
	mov r1, #6
	bl ov46_02256460
	mov r0, #0
	pop {r4, pc}
_022567A0:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0225682C
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _022567BA
	cmp r0, #1
	beq _022567E4
	cmp r0, #2
	beq _022567EC
	b _0225682C
_022567BA:
	ldr r0, _02256830 ; =0x00000663
	bl ov25_02254424
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov46_0225623C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov46_0225623C
	add r0, r4, #0
	bl ov46_02256A50
	add r0, r4, #0
	mov r1, #2
	bl ov46_02256460
	b _0225682C
_022567E4:
	ldr r0, _02256834 ; =0x0000066E
	bl ov25_02254424
	b _0225682C
_022567EC:
	ldr r0, _02256830 ; =0x00000663
	bl ov25_02254424
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov46_0225623C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov46_0225623C
	add r0, r4, #0
	bl ov46_02256AF0
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov46_02256D24
	ldr r0, [r4, #8]
	mov r1, #5
	bl ov46_02256D24
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov46_02256D24
	add r0, r4, #0
	mov r1, #1
	bl ov46_02256460
_0225682C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02256830: .word 0x00000663
_02256834: .word 0x0000066E
	thumb_func_end ov46_0225678C

	thumb_func_start ov46_02256838
ov46_02256838: ; 0x02256838
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #3]
	cmp r1, #0
	beq _0225684C
	mov r1, #6
	bl ov46_02256460
	mov r0, #0
	pop {r4, pc}
_0225684C:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _022568D2
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02256866
	cmp r0, #1
	beq _0225686E
	cmp r0, #2
	beq _022568A0
	b _022568D2
_02256866:
	ldr r0, _022568D8 ; =0x0000066E
	bl ov25_02254424
	b _022568D2
_0225686E:
	ldr r0, _022568DC ; =0x00000663
	bl ov25_02254424
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov46_0225623C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov46_0225623C
	ldr r0, [r4, #8]
	mov r1, #7
	bl ov46_02256D24
	add r0, r4, #0
	mov r1, #5
	bl ov46_02256460
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022568D2
_022568A0:
	ldr r0, _022568DC ; =0x00000663
	bl ov25_02254424
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov46_0225623C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov46_0225623C
	ldr r0, [r4, #8]
	mov r1, #7
	bl ov46_02256D24
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov46_02256D24
	add r0, r4, #0
	mov r1, #1
	bl ov46_02256460
_022568D2:
	mov r0, #0
	pop {r4, pc}
	nop
_022568D8: .word 0x0000066E
_022568DC: .word 0x00000663
	thumb_func_end ov46_02256838

	thumb_func_start ov46_022568E0
ov46_022568E0: ; 0x022568E0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #3]
	cmp r1, #0
	beq _022568F4
	mov r1, #6
	bl ov46_02256460
	mov r0, #0
	pop {r4, pc}
_022568F4:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0225698A
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0225690E
	cmp r0, #1
	beq _0225693A
	cmp r0, #2
	beq _02256942
	b _0225698A
_0225690E:
	ldr r0, _02256990 ; =0x00000663
	bl ov25_02254424
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov46_0225623C
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov46_0225623C
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov46_02256D24
	add r0, r4, #0
	mov r1, #4
	bl ov46_02256460
	b _0225698A
_0225693A:
	ldr r0, _02256994 ; =0x0000066E
	bl ov25_02254424
	b _0225698A
_02256942:
	ldr r0, _02256990 ; =0x00000663
	bl ov25_02254424
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov46_0225623C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov46_0225623C
	add r0, r4, #0
	bl ov46_02256AF0
	ldr r0, [r4, #8]
	mov r1, #7
	bl ov46_02256D24
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov46_02256D24
	ldr r0, [r4, #8]
	mov r1, #5
	bl ov46_02256D24
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov46_02256D24
	add r0, r4, #0
	mov r1, #1
	bl ov46_02256460
_0225698A:
	mov r0, #0
	pop {r4, pc}
	nop
_02256990: .word 0x00000663
_02256994: .word 0x0000066E
	thumb_func_end ov46_022568E0

	thumb_func_start ov46_02256998
ov46_02256998: ; 0x02256998
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022569A8
	cmp r0, #1
	beq _022569B8
	b _022569C6
_022569A8:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov46_02256D24
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022569C6
_022569B8:
	ldr r0, [r4, #8]
	bl ov46_02256D54
	cmp r0, #0
	beq _022569C6
	mov r0, #1
	pop {r4, pc}
_022569C6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov46_02256998

	thumb_func_start ov46_022569CC
ov46_022569CC: ; 0x022569CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x48
	bl sub_0202293C
	str r0, [r5, #0x68]
	str r1, [r5, #0x6c]
	mov r2, #0
	str r2, [r5, #0x70]
	add r0, r5, #0
	str r2, [r5, #0x74]
	mov r1, #1
	add r0, #0x88
	str r1, [r0, #0]
	str r2, [r5, #0x78]
	str r2, [r5, #0x7c]
	mov r2, #2
	ldrsb r3, [r4, r2]
	mov r0, #3
	ldrsb r0, [r4, r0]
	add r6, r3, #0
	ldrsb r3, [r4, r1]
	mov r1, #0x48
	mov r2, #0xa
	mul r6, r2
	ldrsb r1, [r5, r1]
	add r0, r0, r6
	mul r2, r1
	add r2, r3, r2
	mov r1, #0x3c
	mul r1, r2
	add r2, r0, r1
	add r0, r5, #0
	add r0, #0x80
	str r2, [r0, #0]
	add r0, r5, #0
	asr r1, r2, #0x1f
	add r0, #0x84
	str r1, [r0, #0]
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0x80
	add r2, #0x84
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r0, r5, #0
	bl ov46_02256B10
	add r0, r5, #0
	add r0, #0x80
	add r5, #0x84
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov46_022569CC

	thumb_func_start ov46_02256A3C
ov46_02256A3C: ; 0x02256A3C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	add r0, #0x88
	str r1, [r0, #0]
	bl sub_0202293C
	str r0, [r4, #0x70]
	str r1, [r4, #0x74]
	pop {r4, pc}
	thumb_func_end ov46_02256A3C

	thumb_func_start ov46_02256A50
ov46_02256A50: ; 0x02256A50
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0202293C
	add r5, r4, #0
	add r5, #0x68
	ldr r7, [r4, #0x70]
	ldr r2, [r4, #0x68]
	ldr r6, [r4, #0x74]
	sub r0, r0, r7
	sbc r1, r6
	ldr r3, [r5, #4]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0x68]
	str r3, [r5, #4]
	mov r0, #1
	add r4, #0x88
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov46_02256A50

	thumb_func_start ov46_02256A78
ov46_02256A78: ; 0x02256A78
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02256A84
	mov r0, #1
	bx lr
_02256A84:
	mov r0, #0
	bx lr
	thumb_func_end ov46_02256A78

	thumb_func_start ov46_02256A88
ov46_02256A88: ; 0x02256A88
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256AEA
	bl sub_0202293C
	ldr r3, [r4, #0x68]
	ldr r2, [r4, #0x6c]
	sub r0, r0, r3
	sbc r1, r2
	bl sub_0202295C
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x80
	add r6, r1, #0
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r2, [r0, #0]
	sub r0, r5, r1
	mov ip, r6
	mov r0, ip
	sbc r0, r2
	blo _02256AC8
	add r0, r4, #0
	bl ov46_02256AF0
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256AC8:
	ldr r3, [r4, #0x78]
	ldr r0, [r4, #0x7c]
	eor r3, r5
	eor r0, r6
	orr r0, r3
	beq _02256AE6
	add r0, r4, #0
	sub r1, r1, r5
	sbc r2, r6
	bl ov46_02256B10
	str r5, [r4, #0x78]
	str r6, [r4, #0x7c]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256AE6:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02256AEA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov46_02256A88

	thumb_func_start ov46_02256AF0
ov46_02256AF0: ; 0x02256AF0
	add r1, r0, #0
	mov r2, #0
	add r1, #0x88
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x48
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	strb r2, [r1]
	add r0, #0x4b
	strb r2, [r0]
	bx lr
	thumb_func_end ov46_02256AF0

	thumb_func_start ov46_02256B10
ov46_02256B10: ; 0x02256B10
	push {r3, r4, r5, r6}
	add r3, r0, #0
	ldr r0, _02256BC0 ; =0x04000280
	mov r4, #1
	strh r4, [r0]
	add r4, r0, #0
	add r4, #0x10
	str r1, [r4, #0]
	str r2, [r4, #4]
	add r1, r0, #0
	mov r4, #0x3c
	add r1, #0x18
	mov r2, #0
	str r4, [r1, #0]
	str r2, [r1, #4]
	lsr r1, r0, #0xb
_02256B30:
	ldrh r2, [r0]
	tst r2, r1
	bne _02256B30
	ldr r0, _02256BC4 ; =0x040002A0
	ldr r6, _02256BC0 ; =0x04000280
	ldr r0, [r0, #0]
	lsr r1, r6, #0xb
_02256B3E:
	ldrh r2, [r6]
	tst r2, r1
	bne _02256B3E
	ldr r5, _02256BC8 ; =0x040002A8
	mov r4, #0
	ldr r2, [r5, #0]
	add r1, r5, #0
	strh r4, [r6]
	sub r1, #0x18
	str r0, [r1, #0]
	mov r0, #0xa
	sub r5, #0x10
	str r0, [r5, #0]
	str r4, [r5, #4]
	ldr r4, _02256BC0 ; =0x04000280
	lsr r0, r4, #0xb
_02256B5E:
	ldrh r1, [r4]
	tst r1, r0
	bne _02256B5E
	ldr r0, _02256BC4 ; =0x040002A0
	ldr r1, [r0, #0]
	add r0, r3, #0
	add r0, #0x48
	strb r1, [r0]
	ldr r1, _02256BC0 ; =0x04000280
	lsr r0, r1, #0xb
_02256B72:
	ldrh r4, [r1]
	tst r4, r0
	bne _02256B72
	ldr r0, _02256BC8 ; =0x040002A8
	add r4, r3, #0
	ldr r5, [r0, #0]
	add r4, #0x49
	strb r5, [r4]
	mov r4, #0
	strh r4, [r1]
	add r1, r0, #0
	sub r1, #0x18
	str r2, [r1, #0]
	mov r1, #0xa
	sub r0, #0x10
	str r1, [r0, #0]
	ldr r2, _02256BC0 ; =0x04000280
	str r4, [r0, #4]
	lsr r0, r2, #0xb
_02256B98:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256B98
	ldr r0, _02256BC4 ; =0x040002A0
	ldr r2, _02256BC0 ; =0x04000280
	ldr r1, [r0, #0]
	add r0, r3, #0
	add r0, #0x4a
	strb r1, [r0]
	lsr r0, r2, #0xb
_02256BAC:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256BAC
	ldr r0, _02256BC8 ; =0x040002A8
	add r3, #0x4b
	ldr r0, [r0, #0]
	strb r0, [r3]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02256BC0: .word 0x04000280
_02256BC4: .word 0x040002A0
_02256BC8: .word 0x040002A8
	thumb_func_end ov46_02256B10

	.rodata


	.global Unk_ov46_02257114
Unk_ov46_02257114: ; 0x02257114
	.incbin "incbin/overlay46_rodata.bin", 0x0, 0x1C - 0x0

	.global Unk_ov46_02257130
Unk_ov46_02257130: ; 0x02257130
	.incbin "incbin/overlay46_rodata.bin", 0x1C, 0x2C

	.section .sinit, 4
	.word ov46_022561C0
