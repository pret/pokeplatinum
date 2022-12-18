	.include "macros/function.inc"
	.include "include/ov5_021EEAC8.inc"

	

	.text


	thumb_func_start ov5_021EEAC8
ov5_021EEAC8: ; 0x021EEAC8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #4
	mov r1, #0x24
	bl sub_02018144
	mov r1, #0
	mov r2, #0x24
	add r6, r0, #0
	bl sub_020D5124
	mov r0, #1
	strh r0, [r6]
	cmp r7, #0
	beq _021EEAEA
	mov r0, #2
	strh r0, [r6, #2]
_021EEAEA:
	mov r4, #0
_021EEAEC:
	lsl r0, r4, #2
	add r5, r6, r0
	mov r0, #0xf
	lsl r0, r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021EEB44 ; =0x02202128
	add r0, r0, r1
	str r0, [r5, #4]
	bne _021EEB04
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EEB04:
	cmp r7, #0
	beq _021EEB22
	mov r1, #9
	mov r0, #4
	lsl r1, r1, #0xc
	bl sub_02018144
	str r0, [r5, #0x14]
	cmp r0, #0
	bne _021EEB1C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EEB1C:
	mov r2, #9
	lsl r2, r2, #0xc
	b _021EEB28
_021EEB22:
	mov r0, #0
	str r0, [r5, #0x14]
	add r2, r0, #0
_021EEB28:
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	add r3, r6, #0
	bl ov5_021EEB9C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021EEAEC
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEB44: .word 0x02202128
	thumb_func_end ov5_021EEAC8

	thumb_func_start ov5_021EEB48
ov5_021EEB48: ; 0x021EEB48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_021EEB52:
	ldrh r0, [r5]
	cmp r0, #2
	bne _021EEB5E
	ldr r0, [r4, #4]
	bl sub_020181C4
_021EEB5E:
	str r7, [r4, #4]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EEB74
	ldrh r1, [r5, #2]
	cmp r1, #2
	bne _021EEB70
	bl sub_020181C4
_021EEB70:
	mov r0, #0
	str r0, [r4, #0x14]
_021EEB74:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _021EEB52
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EEB48

	thumb_func_start ov5_021EEB84
ov5_021EEB84: ; 0x021EEB84
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #4]
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EEB84

	thumb_func_start ov5_021EEB90
ov5_021EEB90: ; 0x021EEB90
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EEB90

	thumb_func_start ov5_021EEB9C
ov5_021EEB9C: ; 0x021EEB9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	lsl r4, r0, #2
	add r0, r5, r4
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, [r0, #4]
	mov r1, #0
	add r2, r6, #0
	bl sub_020C4CF4
	add r0, r5, r4
	ldr r0, [r0, #0x14]
	mov r1, #0
	add r2, r7, #0
	bl sub_020C4CF4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EEB9C

	thumb_func_start ov5_021EEBC0
ov5_021EEBC0: ; 0x021EEBC0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #4
	mov r1, #0x24
	bl sub_02018144
	str r0, [sp]
	mov r1, #0
	mov r2, #0x24
	bl sub_020D5124
	mov r1, #2
	ldr r0, [sp]
	cmp r6, #0
	strh r1, [r0]
	beq _021EEBE2
	strh r1, [r0, #2]
_021EEBE2:
	mov r7, #0xf
	ldr r5, [sp]
	mov r4, #0
	lsl r7, r7, #0xc
_021EEBEA:
	mov r0, #4
	add r1, r7, #0
	bl sub_02018144
	mov r1, #0
	add r2, r7, #0
	str r0, [r5, #4]
	bl sub_020C4CF4
	cmp r6, #1
	bne _021EEC16
	mov r1, #9
	mov r0, #4
	lsl r1, r1, #0xc
	bl sub_02018144
	mov r2, #9
	mov r1, #0
	lsl r2, r2, #0xc
	str r0, [r5, #0x14]
	bl sub_020C4CF4
_021EEC16:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _021EEBEA
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EEBC0

	thumb_func_start ov5_021EEC24
ov5_021EEC24: ; 0x021EEC24
	push {r4, r5, r6}
	sub sp, #0x24
	add r3, r0, #0
	add r2, r1, #0
	add r6, r3, #0
	add r5, sp, #0
	mov r4, #4
_021EEC32:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r4, r4, #1
	bne _021EEC32
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [r5, #0]
	ldrh r0, [r2]
	add r4, sp, #0
	strh r0, [r3]
	add r0, sp, #0
	ldrh r0, [r0]
	strh r0, [r2]
_021EEC4C:
	ldr r0, [r2, #4]
	add r1, r1, #1
	str r0, [r3, #4]
	ldr r0, [r4, #4]
	add r3, r3, #4
	str r0, [r2, #4]
	add r2, r2, #4
	add r4, r4, #4
	cmp r1, #4
	blt _021EEC4C
	add sp, #0x24
	pop {r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EEC24
	.bss


	.global Unk_ov5_02202128
Unk_ov5_02202128: ; 0x02202128
	.space 0x3C000

