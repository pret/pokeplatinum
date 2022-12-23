	.include "macros/function.inc"
	.include "overlay013/ov13_02228A38.inc"

	

	.text


	thumb_func_start ov13_02228A38
ov13_02228A38: ; 0x02228A38
	push {r3, lr}
	mov r1, #0x10
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x10
	mov r1, #0
_02228A46:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02228A46
	pop {r3, pc}
	thumb_func_end ov13_02228A38

	thumb_func_start ov13_02228A50
ov13_02228A50: ; 0x02228A50
	ldr r3, _02228A54 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02228A54: .word sub_020181C4
	thumb_func_end ov13_02228A50

	thumb_func_start ov13_02228A58
ov13_02228A58: ; 0x02228A58
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov13_02228A58

	thumb_func_start ov13_02228A5C
ov13_02228A5C: ; 0x02228A5C
	ldrb r0, [r0, #8]
	bx lr
	thumb_func_end ov13_02228A5C

	thumb_func_start ov13_02228A60
ov13_02228A60: ; 0x02228A60
	strb r1, [r0, #8]
	bx lr
	thumb_func_end ov13_02228A60

	thumb_func_start ov13_02228A64
ov13_02228A64: ; 0x02228A64
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov13_02228A64

	thumb_func_start ov13_02228A68
ov13_02228A68: ; 0x02228A68
	push {r3, r4, lr}
	sub sp, #4
	strb r1, [r0, #9]
	ldrb r1, [r0, #8]
	cmp r1, #1
	bne _02228A8C
	ldrb r1, [r0, #9]
	ldr r2, [r0, #4]
	lsl r4, r1, #3
	add r3, r2, r4
	ldrb r1, [r3, #3]
	str r1, [sp]
	ldrb r1, [r2, r4]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #1]
	ldr r0, [r0, #0]
	bl ov16_0226DD7C
_02228A8C:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov13_02228A68

	thumb_func_start ov13_02228A90
ov13_02228A90: ; 0x02228A90
	mov r1, #0
	strb r1, [r0, #9]
	mov r1, #0xff
	strb r1, [r0, #0xa]
	bx lr
	; .align 2, 0
	thumb_func_end ov13_02228A90

	thumb_func_start ov13_02228A9C
ov13_02228A9C: ; 0x02228A9C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov13_02228A90
	mov r0, #0
	str r5, [r4, #4]
	mvn r0, r0
	str r0, [r4, #0xc]
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _02228AC6
	ldr r3, [r4, #4]
	ldrb r0, [r3, #3]
	str r0, [sp]
	ldrb r1, [r3]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #1]
	ldr r0, [r4, #0]
	bl ov16_0226DD7C
_02228AC6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov13_02228A9C

	thumb_func_start ov13_02228AC8
ov13_02228AC8: ; 0x02228AC8
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov13_02228AC8

	thumb_func_start ov13_02228ACC
ov13_02228ACC: ; 0x02228ACC
	push {r3, r4, lr}
	sub sp, #4
	ldrb r1, [r0, #8]
	cmp r1, #1
	bne _02228ADC
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_02228ADC:
	ldr r1, _02228B10 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0xf3
	tst r1, r2
	beq _02228B08
	mov r1, #1
	strb r1, [r0, #8]
	ldrb r1, [r0, #9]
	ldr r2, [r0, #4]
	lsl r4, r1, #3
	add r3, r2, r4
	ldrb r1, [r3, #3]
	str r1, [sp]
	ldrb r1, [r2, r4]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #1]
	ldr r0, [r0, #0]
	bl ov16_0226DD7C
	ldr r0, _02228B14 ; =0x000005DC
	bl sub_02005748
_02228B08:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02228B10: .word 0x021BF67C
_02228B14: .word 0x000005DC
	thumb_func_end ov13_02228ACC

	thumb_func_start ov13_02228B18
ov13_02228B18: ; 0x02228B18
	cmp r1, #3
	bhi _02228B60
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02228B28: ; jump table
	.short _02228B30 - _02228B28 - 2 ; case 0
	.short _02228B3C - _02228B28 - 2 ; case 1
	.short _02228B48 - _02228B28 - 2 ; case 2
	.short _02228B54 - _02228B28 - 2 ; case 3
_02228B30:
	ldrb r1, [r0, #5]
	mov r0, #0x80
	tst r0, r1
	beq _02228B60
	mov r0, #1
	bx lr
_02228B3C:
	ldrb r1, [r0, #4]
	mov r0, #0x80
	tst r0, r1
	beq _02228B60
	mov r0, #1
	bx lr
_02228B48:
	ldrb r1, [r0, #7]
	mov r0, #0x80
	tst r0, r1
	beq _02228B60
	mov r0, #1
	bx lr
_02228B54:
	ldrb r1, [r0, #6]
	mov r0, #0x80
	tst r0, r1
	beq _02228B60
	mov r0, #1
	bx lr
_02228B60:
	mov r0, #0
	bx lr
	thumb_func_end ov13_02228B18

	thumb_func_start ov13_02228B64
ov13_02228B64: ; 0x02228B64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ov13_02228ACC
	cmp r0, #0
	bne _02228B7A
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02228B7A:
	ldr r0, _02228CF0 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02228B9E
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #9]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_0201E028
	add r4, r0, #0
	mov r6, #0
	b _02228C06
_02228B9E:
	mov r1, #0x80
	tst r1, r0
	beq _02228BC0
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #9]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_0201E028
	add r4, r0, #0
	mov r6, #1
	b _02228C06
_02228BC0:
	mov r1, #0x20
	tst r1, r0
	beq _02228BE2
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #9]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_0201E028
	add r4, r0, #0
	mov r6, #2
	b _02228C06
_02228BE2:
	mov r1, #0x10
	tst r0, r1
	beq _02228C04
	mov r1, #0
	str r1, [sp]
	ldrb r0, [r5, #9]
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl sub_0201E028
	add r4, r0, #0
	mov r6, #3
	b _02228C06
_02228C04:
	mov r4, #0xff
_02228C06:
	cmp r4, #0xff
	beq _02228CC6
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x80
	add r1, r4, #0
	tst r1, r0
	beq _02228C26
	ldrb r1, [r5, #0xa]
	cmp r1, #0xff
	beq _02228C20
	add r4, r1, #0
	b _02228C26
_02228C20:
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02228C26:
	mov r7, #0
_02228C28:
	mov r0, #1
	ldr r1, [r5, #0xc]
	lsl r0, r4
	tst r0, r1
	bne _02228C60
	str r7, [sp, #0xc]
	str r7, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_0201E028
	mov r1, #0x7f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r4
	beq _02228C58
	ldrb r0, [r5, #9]
	cmp r1, r0
	bne _02228C5C
_02228C58:
	ldrb r4, [r5, #9]
	b _02228C60
_02228C5C:
	add r4, r1, #0
	b _02228C28
_02228C60:
	ldrb r0, [r5, #9]
	cmp r0, r4
	beq _02228CBE
	ldr r0, [r5, #4]
	lsl r7, r4, #3
	add r1, sp, #0x10
	add r2, sp, #0x10
	add r0, r0, r7
	add r1, #3
	add r2, #2
	bl sub_0201E010
	ldr r0, [r5, #4]
	add r1, sp, #0x10
	add r0, r0, r7
	add r1, #1
	add r2, sp, #0x10
	bl sub_0201E01C
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r0, r0, r7
	bl ov13_02228B18
	cmp r0, #1
	bne _02228CA0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02228CA0
	ldrb r0, [r5, #9]
	strb r0, [r5, #0xa]
	b _02228CA4
_02228CA0:
	mov r0, #0xff
	strb r0, [r5, #0xa]
_02228CA4:
	strb r4, [r5, #9]
	add r3, sp, #0x10
	ldrb r0, [r3]
	str r0, [sp]
	ldrb r1, [r3, #3]
	ldrb r2, [r3, #1]
	ldrb r3, [r3, #2]
	ldr r0, [r5, #0]
	bl ov16_0226DD7C
	ldr r0, _02228CF4 ; =0x000005DC
	bl sub_02005748
_02228CBE:
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02228CC6:
	ldr r0, _02228CF0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02228CD6
	add sp, #0x14
	ldrb r0, [r5, #9]
	pop {r4, r5, r6, r7, pc}
_02228CD6:
	mov r0, #2
	tst r1, r0
	beq _02228CEA
	ldr r0, _02228CF8 ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02228CEA:
	sub r0, r0, #3
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02228CF0: .word 0x021BF67C
_02228CF4: .word 0x000005DC
_02228CF8: .word 0x000005DD
	thumb_func_end ov13_02228B64