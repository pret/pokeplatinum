	.include "macros/function.inc"
	.include "overlay040/ov40_0225645C.inc"

	

	.text


	thumb_func_start ov40_0225645C
ov40_0225645C: ; 0x0225645C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x90
	bl sub_02018144
	add r4, r0, #0
	beq _022564AE
	add r0, #8
	mov r1, #4
	bl ov25_02255090
	str r5, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x20]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x88
	str r2, [r0, #0]
	ldr r0, _022564B4 ; =ov40_022567E0
	add r1, r4, #0
	bl sub_0200DA3C
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov40_022564D4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022564AE
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_022564AE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_022564B4: .word ov40_022567E0
	thumb_func_end ov40_0225645C

	thumb_func_start ov40_022564B8
ov40_022564B8: ; 0x022564B8
	push {r4, lr}
	add r4, r0, #0
	beq _022564D2
	bl ov40_02256598
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
_022564D2:
	pop {r4, pc}
	thumb_func_end ov40_022564B8

	thumb_func_start ov40_022564D4
ov40_022564D4: ; 0x022564D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	mov r0, #1
	str r1, [sp, #0x10]
	bl ov25_02255360
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x54
	bl sub_02006EC0
	mov r1, #0x14
	bl _u32_div_f
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r0, [r1, #0x78]
	ldr r1, [sp, #0x10]
	bl ov40_02256808
	mov r0, #8
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #0xc
	add r0, #0x50
	mov r2, #0x52
	mov r3, #0x53
	bl ov25_02255958
	mov r0, #8
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #0xc
	add r0, #0x64
	mov r2, #5
	mov r3, #6
	bl ov25_02255958
	ldr r5, [sp, #0xc]
	mov r4, #0
	add r0, r5, #0
	str r0, [sp, #0x1c]
	add r0, #0x50
	str r0, [sp, #0x1c]
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x64
	ldr r6, _02256594 ; =0x02256A90
	add r7, r4, #0
	str r0, [sp, #0x18]
_02256544:
	cmp r4, #0
	blt _02256564
	cmp r4, #2
	bgt _02256564
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	ldr r0, [r0, #0x20]
	add r1, r6, #0
	bl ov25_02255810
	ldr r1, [sp, #0x14]
	str r0, [r5, #0x24]
	add r1, r1, r7
	bl ov25_02255940
	b _02256572
_02256564:
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr r0, [r0, #0x20]
	add r1, r6, #0
	bl ov25_02255810
	str r0, [r5, #0x24]
_02256572:
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl ov25_02255948
	add r4, r4, #1
	add r6, #0x10
	add r5, r5, #4
	add r7, #0x20
	cmp r4, #0xb
	blt _02256544
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl ov40_02256848
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256594: .word 0x02256A90
	thumb_func_end ov40_022564D4

	thumb_func_start ov40_02256598
ov40_02256598: ; 0x02256598
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_022565A0:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _022565AC
	ldr r0, [r6, #0x20]
	bl ov25_022558B0
_022565AC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xb
	blt _022565A0
	add r0, r6, #0
	add r0, #0x64
	bl ov25_022559B0
	add r6, #0x50
	add r0, r6, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov40_02256598

	thumb_func_start ov40_022565C8
ov40_022565C8: ; 0x022565C8
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022565E8 ; =0x02256A60
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022565E8: .word 0x02256A60
	thumb_func_end ov40_022565C8

	thumb_func_start ov40_022565EC
ov40_022565EC: ; 0x022565EC
	ldr r3, _022565F4 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022565F4: .word ov25_02255130
	thumb_func_end ov40_022565EC

	thumb_func_start ov40_022565F8
ov40_022565F8: ; 0x022565F8
	ldr r3, _02256600 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256600: .word ov25_02255154
	thumb_func_end ov40_022565F8

	thumb_func_start ov40_02256604
ov40_02256604: ; 0x02256604
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov40_02256604

	thumb_func_start ov40_02256618
ov40_02256618: ; 0x02256618
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022566A4 ; =0x02256A44
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
	mov r1, #0x51
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
	mov r1, #0x50
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _022566A8 ; =0x0400104C
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	sub r1, #0x4c
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	ldr r0, _022566AC ; =0xFFFFE0FF
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
	bl ov40_02256604
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_022566A4: .word 0x02256A44
_022566A8: .word 0x0400104C
_022566AC: .word 0xFFFFE0FF
	thumb_func_end ov40_02256618

	thumb_func_start ov40_022566B0
ov40_022566B0: ; 0x022566B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _022566CC
	cmp r0, #1
	beq _022566DA
	pop {r3, r4, r5, pc}
_022566CC:
	mov r0, #1
	add r4, #0x84
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_022566DA:
	add r0, r4, #0
	mov r1, #2
	bl ov40_022565EC
	cmp r0, #0
	beq _022566FC
	ldr r0, _02256700 ; =0x0400104C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov40_02256604
_022566FC:
	pop {r3, r4, r5, pc}
	nop
_02256700: .word 0x0400104C
	thumb_func_end ov40_022566B0

	thumb_func_start ov40_02256704
ov40_02256704: ; 0x02256704
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r6, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #3
	bhi _022567D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225672E: ; jump table
	.short _02256736 - _0225672E - 2 ; case 0
	.short _0225675C - _0225672E - 2 ; case 1
	.short _02256774 - _0225672E - 2 ; case 2
	.short _022567CA - _0225672E - 2 ; case 3
_02256736:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	mov r0, #0xa
	str r0, [r4, #0x7c]
	add r0, r4, #0
	bl ov40_022567D8
	ldr r0, _022567D4 ; =0x00000678
	bl ov25_02254424
	add r0, r5, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
_0225675C:
	ldr r0, [r4, #0x78]
	add r1, r6, #0
	bl ov40_02256808
	add r0, r4, #0
	add r1, r6, #0
	bl ov40_02256848
	add r0, r5, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
_02256774:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256790
	mov r0, #0
	str r0, [r4, #0x7c]
	add r0, r4, #0
	bl ov40_022567D8
	add r0, r5, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
_02256790:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #4
	blo _022567D0
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0, #0]
	ldr r0, [r4, #0x7c]
	sub r0, r0, #1
	str r0, [r4, #0x7c]
	add r0, r4, #0
	bl ov40_022567D8
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	bne _022567D0
	add r0, r5, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
_022567CA:
	add r0, r5, #0
	bl ov40_02256604
_022567D0:
	pop {r4, r5, r6, pc}
	nop
_022567D4: .word 0x00000678
	thumb_func_end ov40_02256704

	thumb_func_start ov40_022567D8
ov40_022567D8: ; 0x022567D8
	mov r1, #1
	add r0, #0x88
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov40_022567D8

	thumb_func_start ov40_022567E0
ov40_022567E0: ; 0x022567E0
	add r0, r1, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256802
	ldr r2, [r1, #0x7c]
	ldr r3, _02256804 ; =0x0400104C
	lsl r0, r2, #4
	orr r0, r2
	strb r0, [r3]
	ldr r2, [r1, #0x7c]
	add r1, #0x88
	lsl r0, r2, #4
	orr r0, r2
	strb r0, [r3, #1]
	mov r0, #0
	str r0, [r1, #0]
_02256802:
	bx lr
	; .align 2, 0
_02256804: .word 0x0400104C
	thumb_func_end ov40_022567E0

	thumb_func_start ov40_02256808
ov40_02256808: ; 0x02256808
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	add r1, r0, #0
	mov r2, #0
	bl sub_02079D8C
	ldrb r1, [r4]
	cmp r1, #0
	beq _02256824
	ldr r1, [r4, #4]
	b _02256826
_02256824:
	add r1, r0, #0
_02256826:
	str r1, [sp]
	ldrb r1, [r4]
	cmp r1, #1
	bls _02256832
	ldr r1, [r4, #8]
	b _02256834
_02256832:
	add r1, r0, #0
_02256834:
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #3
	mov r3, #1
	bl ov25_022553A0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov40_02256808

	thumb_func_start ov40_02256848
ov40_02256848: ; 0x02256848
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0
	add r6, r1, #0
	str r0, [sp]
	ldrb r0, [r6]
	cmp r0, #0
	ble _02256880
	add r4, r6, #0
	add r5, r7, #0
_0225685C:
	ldrh r0, [r4, #0x1c]
	ldrh r1, [r4, #0x20]
	mov r2, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	add r1, r1, #1
	bl ov25_02255938
	ldr r0, [sp]
	ldrb r1, [r6]
	add r0, r0, #1
	add r4, r4, #2
	add r5, r5, #4
	str r0, [sp]
	cmp r0, r1
	blt _0225685C
_02256880:
	mov r0, #1
	mov r1, #0
	add r2, r0, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [r7, #0x2c]
	add r1, r1, #1
	bl ov25_02255938
	ldrb r0, [r6]
	cmp r0, #0
	beq _022568B8
	ldrh r0, [r6, #0x1c]
	ldrh r1, [r6, #0x20]
	mov r2, #0x1c
	bl sub_020759CC
	cmp r0, #0
	ldr r0, [r7, #0x24]
	beq _022568B2
	mov r1, #6
	bl ov25_022558C4
	b _022568B8
_022568B2:
	mov r1, #7
	bl ov25_022558C4
_022568B8:
	add r0, r7, #0
	ldr r1, [r6, #0xc]
	add r0, #0x30
	bl ov40_02256958
	add r0, r7, #0
	ldr r1, [r6, #0x10]
	add r0, #0x3c
	bl ov40_02256958
	ldr r0, [r7, #0x48]
	ldr r1, [r6, #0x14]
	bl ov40_02256A14
	ldr r0, [r7, #0x4c]
	ldr r1, [r6, #0x18]
	bl ov40_02256A14
	ldrb r0, [r6]
	cmp r0, #0
	bne _022568E6
	mov r4, #1
	b _022568E8
_022568E6:
	mov r4, #0
_022568E8:
	ldr r0, [r7, #0x24]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r7, #0x30]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r7, #0x34]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r7, #0x38]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r7, #0x48]
	add r1, r4, #0
	bl ov25_02255914
	ldrb r0, [r6]
	cmp r0, #1
	bhi _0225691A
	mov r4, #1
	b _0225691C
_0225691A:
	mov r4, #0
_0225691C:
	ldr r0, [r7, #0x28]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r7, #0x3c]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r7, #0x40]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r7, #0x44]
	add r1, r4, #0
	bl ov25_02255914
	ldr r0, [r7, #0x4c]
	add r1, r4, #0
	bl ov25_02255914
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _0225694E
	mov r1, #1
	b _02256950
_0225694E:
	mov r1, #0
_02256950:
	ldr r0, [r7, #0x2c]
	bl ov25_02255914
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov40_02256848

	thumb_func_start ov40_02256958
ov40_02256958: ; 0x02256958
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	str r0, [sp]
	cmp r7, #0x64
	bls _02256966
	mov r7, #0x64
_02256966:
	ldr r2, _02256A08 ; =0x04000280
	mov r3, #0
	strh r3, [r2]
	add r0, r2, #0
	str r7, [r2, #0x10]
	mov r1, #0x64
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_0225697A:
	ldrh r1, [r2]
	tst r1, r0
	bne _0225697A
	ldr r0, _02256A0C ; =0x040002A0
	ldr r4, _02256A08 ; =0x04000280
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	lsr r0, r4, #0xb
_0225698A:
	ldrh r1, [r4]
	tst r1, r0
	bne _0225698A
	ldr r3, _02256A10 ; =0x040002A8
	mov r1, #0
	ldr r2, [r3, #0]
	add r0, r3, #0
	strh r1, [r4]
	sub r0, #0x18
	str r2, [r0, #0]
	mov r0, #0xa
	sub r3, #0x10
	str r0, [r3, #0]
	ldr r2, _02256A08 ; =0x04000280
	str r1, [r3, #4]
	lsr r0, r2, #0xb
_022569AA:
	ldrh r1, [r2]
	tst r1, r0
	bne _022569AA
	ldr r0, _02256A0C ; =0x040002A0
	ldr r2, _02256A08 ; =0x04000280
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	lsr r0, r2, #0xb
_022569BA:
	ldrh r1, [r2]
	tst r1, r0
	bne _022569BA
	ldr r0, _02256A10 ; =0x040002A8
	ldr r5, [sp]
	ldr r0, [r0, #0]
	mov r6, #0
	str r0, [sp, #0xc]
	add r4, sp, #4
_022569CC:
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl ov25_022558C4
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _022569CC
	cmp r7, #0x64
	bhs _022569E6
	mov r1, #1
	b _022569E8
_022569E6:
	mov r1, #0
_022569E8:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl ov25_02255914
	cmp r7, #0xa
	bhs _022569F8
	mov r1, #1
	b _022569FA
_022569F8:
	mov r1, #0
_022569FA:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl ov25_02255914
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256A08: .word 0x04000280
_02256A0C: .word 0x040002A0
_02256A10: .word 0x040002A8
	thumb_func_end ov40_02256958

	thumb_func_start ov40_02256A14
ov40_02256A14: ; 0x02256A14
	push {r3, lr}
	cmp r1, #0
	beq _02256A20
	cmp r1, #1
	beq _02256A28
	b _02256A30
_02256A20:
	mov r1, #0xa
	bl ov25_022558C4
	pop {r3, pc}
_02256A28:
	mov r1, #0xb
	bl ov25_022558C4
	pop {r3, pc}
_02256A30:
	mov r1, #0xc
	bl ov25_022558C4
	pop {r3, pc}
	thumb_func_end ov40_02256A14

	.rodata


	.global Unk_ov40_02256A44
Unk_ov40_02256A44: ; 0x02256A44
	.incbin "incbin/overlay40_rodata.bin", 0xC, 0x28 - 0xC

	.global Unk_ov40_02256A60
Unk_ov40_02256A60: ; 0x02256A60
	.incbin "incbin/overlay40_rodata.bin", 0x28, 0x58 - 0x28

	.global Unk_ov40_02256A90
Unk_ov40_02256A90: ; 0x02256A90
	.incbin "incbin/overlay40_rodata.bin", 0x58, 0xB0

