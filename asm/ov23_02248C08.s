	.include "macros/function.inc"
	.include "include/ov23_02248C08.inc"

	

	.text


	thumb_func_start ov23_02248C08
ov23_02248C08: ; 0x02248C08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r5, r0, #0
	str r2, [sp, #4]
	add r0, r3, #0
	mov r1, #0x24
	str r3, [sp, #8]
	bl sub_02018144
	str r0, [sp, #0xc]
	mov r1, #0
	mov r2, #0x24
	bl sub_020C4CF4
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0xc]
	cmp r1, #0
	str r1, [r0, #0]
	beq _02248C7E
	ldr r1, [sp, #0x2c]
	str r1, [r0, #4]
	ldr r1, [sp, #0x30]
	strb r1, [r0, #0x1e]
	ldr r0, [sp, #8]
	bl sub_020149F0
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x10]
	ldr r1, _02248CA0 ; =0x0008090F
	bl sub_02014A40
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	strb r1, [r0, #0x1d]
	ldr r1, [sp, #0xc]
	ldrh r0, [r5, #0x10]
	ldrb r1, [r1, #0x1d]
	bl sub_02013A04
	add r7, r0, #0
	ldrh r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _02248C78
	add r4, r6, #0
_02248C64:
	ldr r1, [r5, #0]
	add r0, r7, #0
	add r1, r1, r4
	bl sub_02013A90
	ldrh r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02248C64
_02248C78:
	ldr r0, [sp, #0xc]
	str r7, [r5, #0]
	str r7, [r0, #8]
_02248C7E:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, [sp, #0xc]
	strh r1, [r0, #0x20]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl sub_0200112C
	ldr r1, [sp, #0xc]
	str r0, [r1, #0xc]
	add r0, r1, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248CA0: .word 0x0008090F
	thumb_func_end ov23_02248C08

	thumb_func_start ov23_02248CA4
ov23_02248CA4: ; 0x02248CA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r4, #0x14]
	ldrh r0, [r4, #0x16]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02001504
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrh r0, [r4, #0x18]
	cmp r0, r5
	bne _02248CD0
	ldrh r0, [r4, #0x1a]
	cmp r0, r7
	beq _02248D1A
_02248CD0:
	strh r5, [r4, #0x18]
	add r0, r5, r1
	strh r7, [r4, #0x1a]
	cmp r0, r6
	blt _02248D1A
	cmp r5, r6
	bhi _02248D1A
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_02001504
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r1, #9
	bl sub_02001504
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [r4, #0xc]
	mov r1, #8
	bl sub_02001504
	str r0, [sp, #4]
	sub r0, r6, r5
	add r5, r7, #0
	mul r5, r0
	ldr r0, [r4, #0xc]
	mov r1, #0x12
	bl sub_02001504
	ldr r3, [sp, #4]
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [sp]
	add r3, r5, r3
	bl sub_02014A58
_02248D1A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_02248CA4

	thumb_func_start ov23_02248D20
ov23_02248D20: ; 0x02248D20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02248D6A
	ldr r0, [sp, #4]
	mov r1, #2
	bl sub_02001504
	add r7, r0, #0
	add r1, sp, #0xc
	ldr r0, [sp, #4]
	add r1, #2
	add r2, sp, #0xc
	bl sub_020014DC
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _02248D4E
	b _02248E6C
_02248D4E:
	add r1, sp, #0xc
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	add r2, r5, #0
	bl ov23_02248CA4
	ldr r0, _02248EF0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02248D6C
	mov r0, #4
	tst r0, r1
	bne _02248D6C
_02248D6A:
	b _02248EAA
_02248D6C:
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
	add r0, sp, #0xc
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	add r2, r1, r0
	sub r0, r7, #1
	cmp r0, r2
	bne _02248D88
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02248D88:
	ldrh r1, [r5, #0x14]
	ldrh r0, [r5, #0x16]
	add r1, r1, r0
	cmp r2, r1
	bne _02248D9A
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02248D9A:
	ldr r0, [r5, #4]
	ldr r3, [r5, #0]
	blx r3
	ldrb r1, [r5, #0x1d]
	add r0, r7, #0
	bl sub_02013A04
	mov r4, #0
	add r6, r4, #0
	str r0, [sp]
	cmp r7, #0
	ble _02248DF0
_02248DB2:
	ldrh r1, [r5, #0x14]
	ldrh r0, [r5, #0x16]
	add r0, r1, r0
	cmp r6, r0
	bne _02248DBE
	b _02248DCA
_02248DBE:
	ldr r2, [r5, #8]
	lsl r1, r4, #3
	ldr r0, [sp]
	add r1, r2, r1
	bl sub_02013A90
_02248DCA:
	add r0, sp, #0xc
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	add r4, r4, #1
	add r0, r1, r0
	cmp r6, r0
	bne _02248DEA
	ldrh r2, [r5, #0x14]
	ldrh r1, [r5, #0x16]
	ldr r3, [r5, #8]
	ldr r0, [sp]
	add r1, r2, r1
	lsl r1, r1, #3
	add r1, r3, r1
	bl sub_02013A90
_02248DEA:
	add r6, r6, #1
	cmp r6, r7
	blt _02248DB2
_02248DF0:
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _02248E34
	sub r0, r7, #1
	mov r4, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _02248E26
	ldr r6, [sp]
	add r7, r4, #0
_02248E04:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_02028AFC
	cmp r0, #0
	bne _02248E14
	mov r0, #1
	b _02248E16
_02248E14:
	mov r0, #0
_02248E16:
	add r0, r7, r0
	str r0, [r6, #4]
	ldr r0, [sp, #8]
	add r4, r4, #1
	add r7, r7, #2
	add r6, #8
	cmp r4, r0
	blt _02248E04
_02248E26:
	lsl r0, r4, #1
	add r2, r0, #1
	ldr r0, [sp]
	lsl r1, r4, #3
	add r0, r0, r1
	str r2, [r0, #4]
	b _02248E48
_02248E34:
	sub r0, r7, #1
	mov r2, #0
	cmp r0, #0
	ble _02248E48
	ldr r1, [sp]
_02248E3E:
	str r2, [r1, #4]
	add r2, r2, #1
	add r1, #8
	cmp r2, r0
	blt _02248E3E
_02248E48:
	ldr r0, [r5, #8]
	bl sub_020181C4
	ldr r0, [sp]
	ldr r1, [sp]
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	bl sub_020015CC
	mov r0, #0
	strb r0, [r5, #0x1c]
	ldr r0, [sp, #4]
	bl sub_020013AC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02248E6C:
	ldr r0, _02248EF0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #4
	tst r0, r1
	beq _02248EAA
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
	add r0, sp, #0xc
	ldrh r3, [r0, #2]
	ldrh r1, [r0]
	sub r2, r7, #1
	add r1, r3, r1
	cmp r2, r1
	bne _02248E92
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02248E92:
	strh r3, [r5, #0x14]
	ldrh r1, [r0]
	add sp, #0x10
	strh r1, [r5, #0x16]
	ldrh r1, [r0, #2]
	strh r1, [r5, #0x18]
	ldrh r0, [r0]
	strh r0, [r5, #0x1a]
	mov r0, #1
	strb r0, [r5, #0x1c]
	sub r0, r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_02248EAA:
	ldr r0, [sp, #4]
	bl sub_02001288
	add r4, r0, #0
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0x20
	ldrh r6, [r5, #0x20]
	bl sub_020014D0
	ldrh r0, [r5, #0x20]
	cmp r6, r0
	beq _02248ECA
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
_02248ECA:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02248EDA
	add r0, r0, #1
	cmp r4, r0
	beq _02248EE8
	b _02248EE2
_02248EDA:
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
	b _02248EE8
_02248EE2:
	ldr r0, _02248EF4 ; =0x000005DC
	bl sub_02005748
_02248EE8:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248EF0: .word 0x021BF67C
_02248EF4: .word 0x000005DC
	thumb_func_end ov23_02248D20

	thumb_func_start ov23_02248EF8
ov23_02248EF8: ; 0x02248EF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02001384
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02248F14
	ldr r0, [r4, #0x10]
	bl sub_02014A20
	ldr r0, [r4, #8]
	bl sub_020181C4
_02248F14:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov23_02248EF8