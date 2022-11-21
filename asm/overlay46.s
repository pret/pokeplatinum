	.include "macros/function.inc"


	.text

	thumb_func_start ov46_022561C0
ov46_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =FUN_02254238
	ldr r0, _022561CC ; =ov46_022561D4
	ldr r1, _022561D0 ; =ov46_02256458
	bx r3
	; .align 2, 0
_022561C8: .word FUN_02254238
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
	bl FUN_02255ACC
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	mov r1, #3
	mov r2, #4
	bl FUN_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #4
	bl FUN_02255C5C
	mov r1, #4
	ldr r0, [r5, #0x10]
	add r2, r1, #0
	bl FUN_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #6
	mov r2, #4
	bl FUN_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #7
	mov r2, #4
	bl FUN_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #9
	mov r2, #4
	bl FUN_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #8
	mov r2, #4
	bl FUN_02255C5C
	ldr r0, [r5, #0x10]
	mov r1, #0xa
	mov r2, #4
	bl FUN_02255C5C
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
	bl FUN_02255B34
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
	bl FUN_02254518
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
	bl FUN_02254260
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
	bl FUN_0225424C
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
	bl FUN_02254424
	b _022565B2
_0225656E:
	ldr r0, _02256698 ; =0x00000663
	bl FUN_02254424
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
	bl FUN_02254424
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
	bl FUN_02254424
	b _02256780
_0225670E:
	ldr r0, _02256788 ; =0x00000663
	bl FUN_02254424
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
	bl FUN_02254424
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
	bl FUN_02254424
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
	bl FUN_02254424
	b _0225682C
_022567EC:
	ldr r0, _02256830 ; =0x00000663
	bl FUN_02254424
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
	bl FUN_02254424
	b _022568D2
_0225686E:
	ldr r0, _022568DC ; =0x00000663
	bl FUN_02254424
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
	bl FUN_02254424
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
	bl FUN_02254424
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
	bl FUN_02254424
	b _0225698A
_02256942:
	ldr r0, _02256990 ; =0x00000663
	bl FUN_02254424
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

	thumb_func_start ov46_02256BCC
ov46_02256BCC: ; 0x02256BCC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0xac
	bl sub_02018144
	add r4, r0, #0
	beq _02256C08
	add r0, #8
	mov r1, #8
	bl FUN_02255090
	str r5, [r4, #0]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r1, r5, #0
	bl ov46_02256C20
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02256C08
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256C08:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov46_02256BCC

	thumb_func_start ov46_02256C0C
ov46_02256C0C: ; 0x02256C0C
	push {r4, lr}
	add r4, r0, #0
	beq _02256C1C
	bl ov46_02256CF4
	add r0, r4, #0
	bl sub_020181C4
_02256C1C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov46_02256C0C

	thumb_func_start ov46_02256C20
ov46_02256C20: ; 0x02256C20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r7, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #2
	bl sub_02006EC0
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	mov r3, #0xa
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x5e
	lsl r3, r3, #8
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x78
	mov r1, #0xc
	mov r2, #0x5c
	mov r3, #0x5d
	bl FUN_02255958
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x8c
	mov r1, #0xc
	mov r2, #3
	mov r3, #4
	bl FUN_02255958
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0x78
	str r0, [sp, #0x14]
	add r0, r7, #0
	str r0, [sp, #0x10]
	add r0, #0x8c
	ldr r6, _02256CF0 ; =0x022571E4
	mov r4, #0
	add r5, r7, #0
	str r0, [sp, #0x10]
_02256C8E:
	cmp r4, #0xd
	blt _02256CA4
	cmp r4, #0x10
	bgt _02256CA4
	ldr r0, [r7, #0x30]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl FUN_02255810
	str r0, [r5, #0x34]
	b _02256CB6
_02256CA4:
	ldr r0, [r7, #0x30]
	ldr r2, [sp, #0x14]
	add r1, r6, #0
	bl FUN_02255810
	mov r1, #0x50
	str r0, [r5, #0x34]
	bl FUN_02255940
_02256CB6:
	add r4, r4, #1
	add r6, #0x10
	add r5, r5, #4
	cmp r4, #0x11
	blt _02256C8E
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov46_02257054
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov46_02257094
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02256CDC
	mov r1, #1
	b _02256CDE
_02256CDC:
	mov r1, #0
_02256CDE:
	add r0, r7, #0
	bl ov46_022570C4
	mov r0, #0
	add r7, #0xa8
	str r0, [r7, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256CF0: .word 0x022571E4
	thumb_func_end ov46_02256C20

	thumb_func_start ov46_02256CF4
ov46_02256CF4: ; 0x02256CF4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02256CFC:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _02256D08
	ldr r0, [r6, #0x30]
	bl FUN_022558B0
_02256D08:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x11
	blt _02256CFC
	add r0, r6, #0
	add r0, #0x78
	bl FUN_022559B0
	add r6, #0x8c
	add r0, r6, #0
	bl FUN_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov46_02256CF4

	thumb_func_start ov46_02256D24
ov46_02256D24: ; 0x02256D24
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256D44 ; =0x02257178
	ldr r3, [r2, #0]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256D44: .word 0x02257178
	thumb_func_end ov46_02256D24

	thumb_func_start ov46_02256D48
ov46_02256D48: ; 0x02256D48
	ldr r3, _02256D50 ; =FUN_02255130
	add r0, #8
	bx r3
	nop
_02256D50: .word FUN_02255130
	thumb_func_end ov46_02256D48

	thumb_func_start ov46_02256D54
ov46_02256D54: ; 0x02256D54
	ldr r3, _02256D5C ; =FUN_02255154
	add r0, #8
	bx r3
	nop
_02256D5C: .word FUN_02255154
	thumb_func_end ov46_02256D54

	thumb_func_start ov46_02256D60
ov46_02256D60: ; 0x02256D60
	push {r4, lr}
	add r4, r0, #0
	bl FUN_0225523C
	add r0, #8
	add r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov46_02256D60

	thumb_func_start ov46_02256D74
ov46_02256D74: ; 0x02256D74
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02256E4C ; =0x0225715C
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
	mov r1, #0x5b
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
	mov r1, #0x5a
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256E50 ; =0x04001000
	ldr r0, _02256E54 ; =0xFFFFE0FF
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
	ldr r1, [r4, #0]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	beq _02256E08
	cmp r0, #2
	beq _02256DFE
	cmp r0, #3
	beq _02256E1A
	b _02256E40
_02256DFE:
	add r0, r4, #0
	mov r1, #6
	bl ov46_02256D24
	b _02256E40
_02256E08:
	ldr r0, [r4, #0x34]
	mov r1, #3
	bl FUN_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl FUN_022558C4
	b _02256E40
_02256E1A:
	ldr r0, [r1, #0x10]
	cmp r0, #0
	ldr r0, [r4, #0x34]
	beq _02256E32
	mov r1, #2
	bl FUN_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl FUN_022558C4
	b _02256E40
_02256E32:
	mov r1, #3
	bl FUN_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl FUN_022558C4
_02256E40:
	add r0, r5, #0
	bl ov46_02256D60
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02256E4C: .word 0x0225715C
_02256E50: .word 0x04001000
_02256E54: .word 0xFFFFE0FF
	thumb_func_end ov46_02256D74

	thumb_func_start ov46_02256E58
ov46_02256E58: ; 0x02256E58
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256E7A
	cmp r0, #1
	beq _02256E88
	pop {r3, r4, r5, pc}
_02256E7A:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r5, #0
	bl FUN_0225524C
_02256E88:
	add r0, r4, #0
	mov r1, #6
	bl ov46_02256D48
	cmp r0, #0
	beq _02256EA2
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov46_02256D60
_02256EA2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov46_02256E58

	thumb_func_start ov46_02256EA4
ov46_02256EA4: ; 0x02256EA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r0, r4, #0
	mov r1, #0
	bl ov46_022570C4
	ldr r0, [r4, #0x34]
	mov r1, #2
	bl FUN_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl FUN_022558C4
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02256EA4

	thumb_func_start ov46_02256ED8
ov46_02256ED8: ; 0x02256ED8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r0, r4, #0
	mov r1, #1
	bl ov46_022570C4
	ldr r0, [r4, #0x34]
	mov r1, #3
	bl FUN_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl FUN_022558C4
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02256ED8

	thumb_func_start ov46_02256F0C
ov46_02256F0C: ; 0x02256F0C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r1, r0, #0
	add r0, r4, #0
	bl ov46_02257054
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02256F0C

	thumb_func_start ov46_02256F30
ov46_02256F30: ; 0x02256F30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r1, r0, #0
	add r0, r4, #0
	bl ov46_02257094
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02256F30

	thumb_func_start ov46_02256F54
ov46_02256F54: ; 0x02256F54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256F76
	cmp r0, #1
	beq _02256F9A
	pop {r3, r4, r5, pc}
_02256F76:
	ldr r0, [r4, #0x34]
	mov r1, #2
	bl FUN_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl FUN_022558C4
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r5, #0
	bl FUN_0225524C
_02256F9A:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256FAC
	add r0, r5, #0
	bl ov46_02256D60
	pop {r3, r4, r5, pc}
_02256FAC:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, #8
	blo _0225700A
	add r0, r4, #0
	add r0, #0xa8
	ldr r1, [r0, #0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0xa8
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	ldr r0, [r4, #0x34]
	beq _02256FF0
	mov r1, #2
	bl FUN_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl FUN_022558C4
	b _02256FFE
_02256FF0:
	mov r1, #3
	bl FUN_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl FUN_022558C4
_02256FFE:
	ldr r0, _0225700C ; =0x00000677
	bl FUN_02254424
	mov r0, #0
	add r4, #0xa4
	str r0, [r4, #0]
_0225700A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225700C: .word 0x00000677
	thumb_func_end ov46_02256F54

	thumb_func_start ov46_02257010
ov46_02257010: ; 0x02257010
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02257032
	cmp r0, #1
	beq _02257040
	pop {r3, r4, r5, pc}
_02257032:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xa0
	str r1, [r0, #0]
	add r0, r5, #0
	bl FUN_0225524C
_02257040:
	add r0, r4, #0
	mov r1, #6
	bl ov46_02256D48
	cmp r0, #0
	beq _02257052
	add r0, r5, #0
	bl ov46_02256D60
_02257052:
	pop {r3, r4, r5, pc}
	thumb_func_end ov46_02257010

	thumb_func_start ov46_02257054
ov46_02257054: ; 0x02257054
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _02257064
	mov r1, #6
	b _02257066
_02257064:
	mov r1, #5
_02257066:
	ldr r0, [r5, #0x3c]
	bl FUN_022558C4
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _02257076
	mov r1, #8
	b _02257078
_02257076:
	mov r1, #7
_02257078:
	ldr r0, [r5, #0x40]
	bl FUN_022558C4
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _02257088
	mov r1, #0xa
	b _0225708A
_02257088:
	mov r1, #9
_0225708A:
	ldr r0, [r5, #0x44]
	bl FUN_022558C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_02257054

	thumb_func_start ov46_02257094
ov46_02257094: ; 0x02257094
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #0x68]
	bl FUN_022558C4
	mov r1, #1
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #0x6c]
	bl FUN_022558C4
	mov r1, #2
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #0x70]
	bl FUN_022558C4
	mov r1, #3
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #0x74]
	bl FUN_022558C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov46_02257094

	thumb_func_start ov46_022570C4
ov46_022570C4: ; 0x022570C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	add r4, r1, #0
	bl FUN_02255914
	ldr r0, [r5, #0x4c]
	add r1, r4, #0
	bl FUN_02255914
	ldr r0, [r5, #0x50]
	add r1, r4, #0
	bl FUN_02255914
	ldr r0, [r5, #0x54]
	add r1, r4, #0
	bl FUN_02255914
	ldr r0, [r5, #0x58]
	add r1, r4, #0
	bl FUN_02255914
	ldr r0, [r5, #0x5c]
	add r1, r4, #0
	bl FUN_02255914
	ldr r0, [r5, #0x60]
	add r1, r4, #0
	bl FUN_02255914
	ldr r0, [r5, #0x64]
	add r1, r4, #0
	bl FUN_02255914
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov46_022570C4

	thumb_func_start ov46_0225710C
ov46_0225710C: ; 0x0225710C
	add r0, #0xa8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov46_0225710C
	; 0x02257114

	.incbin "data/overlay46.bin"