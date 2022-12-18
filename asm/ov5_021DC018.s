	.include "macros/function.inc"
	.include "include/ov5_021DC018.inc"

	

	.text


	thumb_func_start ov5_021DC018
ov5_021DC018: ; 0x021DC018
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [sp, #0x2c]
	add r4, r0, #0
	add r5, r2, #0
	add r7, r3, #0
	cmp r1, #0
	bne _021DC046
	ldr r2, _021DC148 ; =0x00000169
	mov r0, #1
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r1, r6, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	b _021DC056
_021DC046:
	add r0, r6, #0
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
_021DC056:
	add r0, r6, #0
	add r0, #0x97
	strb r1, [r0]
	add r0, r6, #0
	ldr r1, [sp, #0x24]
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r6, #0
	str r4, [r6, #0]
	ldr r1, [sp, #0x20]
	add r0, #0xa0
	str r1, [r0, #0]
	add r1, r6, #0
	add r1, #0xa0
	ldr r1, [r1, #0]
	mov r0, #0
	strh r0, [r1]
	add r1, r6, #0
	add r1, #0xa4
	str r0, [r1, #0]
	add r1, r6, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r1, r6, #0
	add r1, #0x97
	ldrb r3, [r1]
	add r4, sp, #8
	mov r1, #1
	bic r3, r1
	ldrb r2, [r4, #0x14]
	mov r1, #1
	and r1, r2
	add r2, r3, #0
	orr r2, r1
	add r1, r6, #0
	add r1, #0x97
	strb r2, [r1]
	add r1, r6, #0
	ldrb r2, [r4, #0x10]
	add r1, #0x96
	mov r3, #0x40
	strb r2, [r1]
	add r1, r6, #0
	add r1, #0x97
	ldrb r1, [r1]
	bic r1, r3
	add r3, r6, #0
	add r3, #0x97
	strb r1, [r3]
	add r1, r6, #0
	add r1, #0x97
	ldrb r1, [r1]
	mov r3, #0x80
	bic r1, r3
	add r3, r6, #0
	add r3, #0x97
	strb r1, [r3]
	add r1, r6, #0
	add r1, #0x98
	strb r5, [r1]
	add r1, r6, #0
	add r1, #0x99
	strb r7, [r1]
	add r1, r6, #0
	add r1, #0x9b
	strb r0, [r1]
	ldr r1, [sp, #0x28]
	mov r3, #3
	str r1, [r6, #0x18]
	add r1, r6, #0
	add r1, #0x94
	strb r3, [r1]
	mov r1, #0xb7
	lsl r1, r1, #2
	strh r2, [r6, r1]
	add r2, r6, #0
	add r3, r0, #0
_021DC0F0:
	add r1, r2, #0
	add r1, #0xbc
	str r3, [r1, #0]
	add r1, r2, #0
	add r1, #0xc0
	add r0, r0, #1
	add r2, #8
	str r3, [r1, #0]
	cmp r0, #0x1c
	blt _021DC0F0
	mov r7, #0xa9
	add r1, r6, #0
	add r2, r6, #0
	mov r5, #0
	mov r0, #0xff
	lsl r7, r7, #2
_021DC110:
	mov r4, #0x71
	lsl r4, r4, #2
	str r5, [r1, r4]
	add r4, r4, #4
	str r5, [r1, r4]
	strh r0, [r2, r7]
	add r3, r3, #1
	add r1, #8
	add r2, r2, #2
	cmp r3, #0x1c
	blt _021DC110
	add r4, r6, #0
	mov r7, #0x50
_021DC12A:
	add r0, r7, #0
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x1c
	blt _021DC12A
	add r6, #0xa0
	ldr r1, _021DC14C ; =0x0000EEEE
	ldr r0, [r6, #0]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DC148: .word 0x00000169
_021DC14C: .word 0x0000EEEE
	thumb_func_end ov5_021DC018

	thumb_func_start ov5_021DC150
ov5_021DC150: ; 0x021DC150
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	mov r1, #0x2e
	add r6, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	str r2, [sp, #0x18]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _021DC170
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021DC170:
	mov r2, #0x2e
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	str r5, [sp]
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	bl ov5_021DC018
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DC150

	thumb_func_start ov5_021DC1A4
ov5_021DC1A4: ; 0x021DC1A4
	ldr r3, _021DC1A8 ; =ov5_021DC290
	bx r3
	; .align 2, 0
_021DC1A8: .word ov5_021DC290
	thumb_func_end ov5_021DC1A4

	thumb_func_start ov5_021DC1AC
ov5_021DC1AC: ; 0x021DC1AC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl ov5_021DC300
	mov r1, #7
	tst r1, r0
	bne _021DC1C0
	lsr r0, r0, #3
	b _021DC1C4
_021DC1C0:
	lsr r0, r0, #3
	add r0, r0, #1
_021DC1C4:
	add r1, r4, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _021DC1DE
	add r1, r4, #0
	add r1, #0x98
	ldrb r1, [r1]
	sub r2, r1, r0
	add r1, r4, #0
	add r1, #0x98
	strb r2, [r1]
_021DC1DE:
	add r1, r4, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021DC200
	add r1, r4, #0
	add r1, #0x99
	ldrb r2, [r1]
	add r1, r4, #0
	add r1, #0x9b
	ldrb r1, [r1]
	lsl r1, r1, #1
	sub r2, r2, r1
	add r1, r4, #0
	add r1, #0x99
	strb r2, [r1]
_021DC200:
	add r1, r4, #0
	add r1, #0x99
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	add r3, r4, #0
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r4, #0
	add r3, #0x98
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _021DC288 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r4, #0
	ldr r2, _021DC288 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	bl ov5_021DC33C
	add r1, r4, #0
	add r1, #0x96
	add r0, r4, #0
	ldrb r1, [r1]
	add r0, #0xac
	mov r2, #4
	bl sub_02001B9C
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1, #0]
	ldr r0, _021DC28C ; =ov5_021DC3B0
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021DC288: .word 0x000003D9
_021DC28C: .word ov5_021DC3B0
	thumb_func_end ov5_021DC1AC

	thumb_func_start ov5_021DC290
ov5_021DC290: ; 0x021DC290
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x50
	mov r1, #4
	add r6, r2, #0
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0200B1B8
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x1c]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x9b
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r5, r0
	ldr r1, [r0, #0x1c]
	lsl r0, r2, #3
	add r0, r5, r0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, #0xc0
	str r6, [r0, #0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DC290

	thumb_func_start ov5_021DC300
ov5_021DC300: ; 0x021DC300
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _021DC336
	add r5, r7, #0
_021DC312:
	add r0, r5, #0
	add r0, #0xbc
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _021DC336
	mov r0, #0
	bl sub_02002F04
	cmp r6, r0
	bhs _021DC328
	add r6, r0, #0
_021DC328:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _021DC312
_021DC336:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DC300

	thumb_func_start ov5_021DC33C
ov5_021DC33C: ; 0x021DC33C
	add r2, r0, #0
	add r1, r0, #0
	add r2, #0xbc
	add r1, #0xac
	str r2, [r1, #0]
	add r2, r0, #0
	add r1, r0, #0
	add r2, #8
	add r1, #0xb0
	str r2, [r1, #0]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xb4
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0xb5
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xb6
	strb r2, [r1]
	add r2, r0, #0
	add r2, #0xb7
	ldrb r3, [r2]
	mov r2, #0xf
	add r1, r0, #0
	bic r3, r2
	add r2, r0, #0
	add r2, #0xb7
	strb r3, [r2]
	add r2, r0, #0
	add r2, #0xb7
	ldrb r3, [r2]
	mov r2, #0x30
	add r1, #0xb7
	bic r3, r2
	add r2, r0, #0
	add r2, #0xb7
	strb r3, [r2]
	add r0, #0x9b
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, #4
	blo _021DC3A6
	mov r0, #0xc0
	bic r2, r0
	mov r0, #0x40
	orr r0, r2
	strb r0, [r1]
	bx lr
_021DC3A6:
	mov r0, #0xc0
	bic r2, r0
	strb r2, [r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021DC33C

	thumb_func_start ov5_021DC3B0
ov5_021DC3B0: ; 0x021DC3B0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _021DC3CC
	add r0, r4, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r4, #0x94
	sub r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_021DC3CC:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021DC41C
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021DC3EE
	add r1, r1, #1
	cmp r0, r1
	beq _021DC41C
	b _021DC40E
_021DC3EE:
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021DC41C
	add r0, r4, #0
	add r0, #0xa0
	ldr r1, _021DC420 ; =0x0000FFFE
	ldr r0, [r0, #0]
	strh r1, [r0]
	add r0, r4, #0
	bl ov5_021DC424
	pop {r4, pc}
_021DC40E:
	add r1, r4, #0
	add r1, #0xa0
	ldr r1, [r1, #0]
	strh r0, [r1]
	add r0, r4, #0
	bl ov5_021DC424
_021DC41C:
	pop {r4, pc}
	nop
_021DC420: .word 0x0000FFFE
	thumb_func_end ov5_021DC3B0

	thumb_func_start ov5_021DC424
ov5_021DC424: ; 0x021DC424
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021DC488 ; =0x000005DC
	bl sub_02005748
	add r0, r6, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_021DC454:
	ldr r0, [r5, #0x1c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021DC454
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021DC47A
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_0200B190
_021DC47A:
	ldr r0, [r6, #4]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DC488: .word 0x000005DC
	thumb_func_end ov5_021DC424

	thumb_func_start ov5_021DC48C
ov5_021DC48C: ; 0x021DC48C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, sp, #0x10
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	bl ov5_021DC150
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DC48C

	thumb_func_start ov5_021DC4B0
ov5_021DC4B0: ; 0x021DC4B0
	push {r3, lr}
	bl ov5_021DC708
	pop {r3, pc}
	thumb_func_end ov5_021DC4B0

	thumb_func_start ov5_021DC4B8
ov5_021DC4B8: ; 0x021DC4B8
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021DC7A8
	mov r1, #7
	tst r1, r0
	bne _021DC4CA
	lsr r1, r0, #3
	b _021DC4CE
_021DC4CA:
	lsr r0, r0, #3
	add r1, r0, #1
_021DC4CE:
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021DC4E8
	add r0, r4, #0
	add r0, #0x98
	ldrb r0, [r0]
	sub r2, r0, r1
	add r0, r4, #0
	add r0, #0x98
	strb r2, [r0]
_021DC4E8:
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _021DC51E
	add r0, r4, #0
	add r0, #0x9b
	ldrb r3, [r0]
	cmp r3, #8
	bls _021DC50E
	add r0, r4, #0
	add r0, #0x99
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x99
	sub r2, #0x10
	strb r2, [r0]
	b _021DC51E
_021DC50E:
	add r0, r4, #0
	add r0, #0x99
	ldrb r2, [r0]
	lsl r0, r3, #1
	sub r2, r2, r0
	add r0, r4, #0
	add r0, #0x99
	strb r2, [r0]
_021DC51E:
	add r0, r4, #0
	bl ov5_021DC530
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021DC4B8

	thumb_func_start ov5_021DC528
ov5_021DC528: ; 0x021DC528
	ldr r3, _021DC52C ; =ov5_021DC530
	bx r3
	; .align 2, 0
_021DC52C: .word ov5_021DC530
	thumb_func_end ov5_021DC528

	thumb_func_start ov5_021DC530
ov5_021DC530: ; 0x021DC530
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0x9b
	ldrb r2, [r0]
	cmp r2, #8
	bls _021DC56E
	add r0, r4, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x98
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r4, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
	b _021DC59E
_021DC56E:
	add r0, r4, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x98
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r2, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r4, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
_021DC59E:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _021DC5F8 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r4, #0
	ldr r2, _021DC5F8 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	bl ov5_021DC7E4
	add r2, r4, #0
	add r2, #0x96
	mov r0, #0x67
	lsl r0, r0, #2
	ldrb r2, [r2]
	add r0, r4, r0
	mov r1, #0
	mov r3, #4
	bl sub_0200112C
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov5_021DCAF4
	ldr r0, _021DC5FC ; =ov5_021DC95C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_021DC5F8: .word 0x000003D9
_021DC5FC: .word ov5_021DC95C
	thumb_func_end ov5_021DC530

	thumb_func_start ov5_021DC600
ov5_021DC600: ; 0x021DC600
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov5_021DC7A8
	mov r1, #7
	tst r1, r0
	bne _021DC618
	lsr r1, r0, #3
	b _021DC61C
_021DC618:
	lsr r0, r0, #3
	add r1, r0, #1
_021DC61C:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	cmp r0, #8
	bls _021DC656
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	add r3, #0x98
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r5, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
	b _021DC686
_021DC656:
	add r2, r5, #0
	add r2, #0x99
	ldrb r2, [r2]
	lsl r1, r1, #0x18
	lsl r0, r0, #0x19
	str r2, [sp]
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	add r3, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r3, #0x98
	add r1, r5, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
_021DC686:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r2, _021DC700 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r5, #0
	ldr r2, _021DC700 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	bl ov5_021DC7E4
	add r0, r5, #0
	add r0, #0xa4
	str r4, [r0, #0]
	add r0, r5, #0
	add r0, #0xa8
	str r6, [r0, #0]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r3, #4
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	ldrh r0, [r0]
	add r1, r1, r0
	mov r0, #0xb7
	lsl r0, r0, #2
	strh r1, [r5, r0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldrh r1, [r4]
	ldrh r2, [r6]
	add r0, r5, r0
	bl sub_0200112C
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov5_021DCAF4
	ldr r0, _021DC704 ; =ov5_021DC95C
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021DC700: .word 0x000003D9
_021DC704: .word ov5_021DC95C
	thumb_func_end ov5_021DC600

	thumb_func_start ov5_021DC708
ov5_021DC708: ; 0x021DC708
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x50
	mov r1, #4
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02023790
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [sp]
	add r2, r6, #0
	bl sub_0200B1B8
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x1c]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x71
	ldr r0, [r0, #0x1c]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r6, #0
	bl sub_020237BC
	cmp r4, #0xfa
	bne _021DC778
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r2, #2
	mvn r2, r2
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	str r2, [r1, r0]
	b _021DC788
_021DC778:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	str r4, [r1, r0]
_021DC788:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0xa9
	lsl r0, r0, #2
	strh r7, [r1, r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DC708

	thumb_func_start ov5_021DC7A8
ov5_021DC7A8: ; 0x021DC7A8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _021DC7DE
	add r5, r7, #0
_021DC7BA:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021DC7DE
	mov r0, #0
	bl sub_02002F04
	cmp r6, r0
	bhs _021DC7D0
	add r6, r0, #0
_021DC7D0:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _021DC7BA
_021DC7DE:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DC7A8

	thumb_func_start ov5_021DC7E4
ov5_021DC7E4: ; 0x021DC7E4
	push {r4, r5}
	mov r3, #0x71
	lsl r3, r3, #2
	add r1, r3, #0
	add r2, r0, r3
	sub r1, #0x28
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _021DC8E0 ; =ov5_021DC918
	sub r1, #0x24
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _021DC8E4 ; =ov5_021DC8F4
	sub r1, #0x20
	str r2, [r0, r1]
	add r2, r0, #0
	add r1, r3, #0
	add r2, #8
	sub r1, #0x1c
	str r2, [r0, r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r3, #0
	sub r1, #0x18
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #8
	sub r1, #0x16
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #1
	sub r1, #0x14
	strb r2, [r0, r1]
	add r1, r3, #0
	mov r4, #0xc
	sub r1, #0x13
	strb r4, [r0, r1]
	add r1, r3, #0
	mov r4, #2
	sub r1, #0x12
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x11
	ldrb r4, [r0, r1]
	mov r1, #0xf
	bic r4, r1
	orr r4, r2
	add r2, r3, #0
	sub r2, #0x11
	strb r4, [r0, r2]
	add r2, r3, #0
	sub r2, #0x11
	ldrb r5, [r0, r2]
	mov r2, #0xf0
	mov r4, #0x10
	bic r5, r2
	orr r5, r4
	add r4, r3, #0
	sub r4, #0x11
	strb r5, [r0, r4]
	add r4, r3, #0
	sub r4, #0x10
	ldrb r4, [r0, r4]
	bic r4, r1
	mov r1, #0xf
	orr r4, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x10
	ldrb r4, [r0, r1]
	mov r1, #0x20
	bic r4, r2
	add r2, r4, #0
	orr r2, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #7
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #0x78
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021DC8E8 ; =0xFFFFFE7F
	and r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021DC8EC ; =0xFFFF81FF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021DC8F0 ; =0xFFFF7FFF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	sub r3, #0xc
	str r0, [r0, r3]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_021DC8E0: .word ov5_021DC918
_021DC8E4: .word ov5_021DC8F4
_021DC8E8: .word 0xFFFFFE7F
_021DC8EC: .word 0xFFFF81FF
_021DC8F0: .word 0xFFFF7FFF
	thumb_func_end ov5_021DC7E4

	thumb_func_start ov5_021DC8F4
ov5_021DC8F4: ; 0x021DC8F4
	push {r3, lr}
	mov r2, #2
	mvn r2, r2
	cmp r1, r2
	bne _021DC90A
	mov r1, #3
	mov r2, #0xf
	mov r3, #4
	bl sub_0200147C
	pop {r3, pc}
_021DC90A:
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl sub_0200147C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021DC8F4

	thumb_func_start ov5_021DC918
ov5_021DC918: ; 0x021DC918
	push {r3, r4, r5, lr}
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1, #2]
	strh r2, [r1]
	mov r1, #0x13
	add r5, r0, #0
	bl sub_02001504
	add r1, sp, #0
	add r4, r0, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl sub_020014DC
	add r0, r4, #0
	add r0, #0xa4
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _021DC95A
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DC95A
	add r0, sp, #0
	ldrh r1, [r0, #2]
	add r4, #0xa8
	strh r1, [r2]
	ldrh r1, [r0]
	ldr r0, [r4, #0]
	strh r1, [r0]
_021DC95A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021DC918

	thumb_func_start ov5_021DC95C
ov5_021DC95C: ; 0x021DC95C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _021DC978
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r5, #0x94
	sub r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021DC978:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021DCA1A
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #0x6f
	mov r1, #0xb7
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl sub_020014D0
	mov r0, #0xb7
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _021DC9AE
	ldr r0, _021DCA1C ; =0x000005DC
	bl sub_02005748
_021DC9AE:
	ldr r0, _021DCA20 ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	bne _021DC9CA
	mov r1, #0x80
	tst r1, r0
	bne _021DC9CA
	mov r1, #0x20
	tst r1, r0
	bne _021DC9CA
	mov r1, #0x10
	tst r0, r1
	beq _021DC9D0
_021DC9CA:
	add r0, r5, #0
	bl ov5_021DCAF4
_021DC9D0:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021DC9E0
	add r0, r0, #1
	cmp r4, r0
	beq _021DCA1A
	b _021DCA06
_021DC9E0:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021DCA1A
	ldr r0, _021DCA1C ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xa0
	ldr r1, _021DCA24 ; =0x0000FFFE
	ldr r0, [r0, #0]
	strh r1, [r0]
	add r0, r5, #0
	bl ov5_021DCA28
	pop {r4, r5, r6, pc}
_021DCA06:
	ldr r0, _021DCA1C ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	strh r4, [r0]
	add r0, r5, #0
	bl ov5_021DCA28
_021DCA1A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DCA1C: .word 0x000005DC
_021DCA20: .word 0x021BF67C
_021DCA24: .word 0x0000FFFE
	thumb_func_end ov5_021DC95C

	thumb_func_start ov5_021DCA28
ov5_021DCA28: ; 0x021DCA28
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021DCA8C ; =0x000005DC
	bl sub_02005748
	mov r0, #0x6f
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r6, r0]
	add r2, r1, #0
	bl sub_02001384
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	add r0, #8
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_021DCA58:
	ldr r0, [r5, #0x1c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021DCA58
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021DCA7E
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_0200B190
_021DCA7E:
	ldr r0, [r6, #4]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DCA8C: .word 0x000005DC
	thumb_func_end ov5_021DCA28

	thumb_func_start ov5_021DCA90
ov5_021DCA90: ; 0x021DCA90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #0x50
	mov r1, #4
	add r7, r2, #0
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x50
	mov r1, #4
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r1, #1
	add r2, r6, #0
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021DCA90

	thumb_func_start ov5_021DCAF4
ov5_021DCAF4: ; 0x021DCAF4
	push {r4, lr}
	mov r1, #0x6f
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #6
	add r1, r4, r1
	bl sub_020014D0
	ldr r0, _021DCB20 ; =0x000001C2
	ldrh r1, [r4, r0]
	add r0, #0xe2
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, r0]
	cmp r1, #0xff
	beq _021DCB1E
	add r0, r4, #0
	mov r2, #0
	bl ov5_021DCA90
_021DCB1E:
	pop {r4, pc}
	; .align 2, 0
_021DCB20: .word 0x000001C2
	thumb_func_end ov5_021DCAF4

	thumb_func_start ov5_021DCB24
ov5_021DCB24: ; 0x021DCB24
	push {r4, r5, lr}
	sub sp, #0x14
	mov r4, #0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	add r3, r4, #0
	str r4, [sp, #0x10]
	bl ov5_021DC150
	add r5, r0, #0
	add r0, r4, #0
	add r1, r0, #0
	bl sub_02002DF8
	lsl r1, r0, #3
	mov r0, #7
	tst r0, r1
	bne _021DCB52
	lsr r4, r1, #3
	b _021DCB56
_021DCB52:
	lsr r0, r1, #3
	add r4, r0, #1
_021DCB56:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	add r1, r5, #0
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xdd
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r2, _021DCBF8 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r5, #0
	ldr r2, _021DCBF8 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	lsl r0, r4, #0x13
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	add r0, #8
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	mov r2, #0
	add r0, r5, #0
	mov r1, #0xf
	add r3, r2, #0
	bl ov5_021DCC00
	mov r1, #0x10
	add r0, r5, #0
	mov r2, #0x20
	add r3, r1, #0
	bl ov5_021DCC00
	add r0, r5, #0
	add r1, r5, #0
	add r0, #8
	add r1, #0xb0
	str r0, [r1, #0]
	bl sub_0201A954
	ldr r0, _021DCBFC ; =ov5_021DCC64
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021DCBF8: .word 0x000003D9
_021DCBFC: .word ov5_021DCC64
	thumb_func_end ov5_021DCB24

	thumb_func_start ov5_021DCC00
ov5_021DCC00: ; 0x021DCC00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0xc]
	add r5, r0, #0
	mov r0, #0x50
	mov r1, #4
	str r2, [sp, #0x10]
	add r7, r3, #0
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x50
	mov r1, #4
	bl sub_02023790
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200C388
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r5, #8
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021DCC00

	thumb_func_start ov5_021DCC64
ov5_021DCC64: ; 0x021DCC64
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	ldrh r1, [r0]
	ldr r0, _021DCCC4 ; =0x0000FFFF
	cmp r1, r0
	bne _021DCCC2
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_021DCC90:
	ldr r0, [r5, #0x1c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021DCC90
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021DCCB6
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_0200B190
_021DCCB6:
	ldr r0, [r6, #4]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
_021DCCC2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DCCC4: .word 0x0000FFFF
	thumb_func_end ov5_021DCC64

	thumb_func_start ov5_021DCCC8
ov5_021DCCC8: ; 0x021DCCC8
	cmp r0, #0x8a
	bgt _021DCD0A
	bge _021DCD68
	cmp r0, #0x68
	bgt _021DCCF8
	bge _021DCD48
	cmp r0, #0xe
	bgt _021DCCF2
	add r1, r0, #0
	sub r1, #0xb
	bmi _021DCD8C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DCCEA: ; jump table
	.short _021DCD7C - _021DCCEA - 2 ; case 0
	.short _021DCD80 - _021DCCEA - 2 ; case 1
	.short _021DCD84 - _021DCCEA - 2 ; case 2
	.short _021DCD88 - _021DCCEA - 2 ; case 3
_021DCCF2:
	cmp r0, #0x67
	beq _021DCD44
	b _021DCD8C
_021DCCF8:
	cmp r0, #0x71
	bgt _021DCD04
	bge _021DCD58
	cmp r0, #0x70
	beq _021DCD54
	b _021DCD8C
_021DCD04:
	cmp r0, #0x89
	beq _021DCD64
	b _021DCD8C
_021DCD0A:
	cmp r0, #0xa4
	bgt _021DCD2C
	bge _021DCD4C
	cmp r0, #0x8b
	bgt _021DCD18
	beq _021DCD6C
	b _021DCD8C
_021DCD18:
	cmp r0, #0x96
	bgt _021DCD8C
	cmp r0, #0x8c
	blt _021DCD8C
	beq _021DCD70
	cmp r0, #0x8d
	beq _021DCD74
	cmp r0, #0x96
	beq _021DCD50
	b _021DCD8C
_021DCD2C:
	ldr r1, _021DCD90 ; =0x000001CE
	cmp r0, r1
	bgt _021DCD3C
	bge _021DCD60
	sub r1, r1, #1
	cmp r0, r1
	beq _021DCD5C
	b _021DCD8C
_021DCD3C:
	add r1, #0x68
	cmp r0, r1
	beq _021DCD78
	b _021DCD8C
_021DCD44:
	mov r0, #1
	bx lr
_021DCD48:
	mov r0, #0
	bx lr
_021DCD4C:
	mov r0, #0
	bx lr
_021DCD50:
	mov r0, #1
	bx lr
_021DCD54:
	mov r0, #1
	bx lr
_021DCD58:
	mov r0, #0
	bx lr
_021DCD5C:
	mov r0, #1
	bx lr
_021DCD60:
	mov r0, #0
	bx lr
_021DCD64:
	mov r0, #4
	bx lr
_021DCD68:
	mov r0, #3
	bx lr
_021DCD6C:
	mov r0, #2
	bx lr
_021DCD70:
	mov r0, #1
	bx lr
_021DCD74:
	mov r0, #0
	bx lr
_021DCD78:
	mov r0, #5
	bx lr
_021DCD7C:
	mov r0, #3
	bx lr
_021DCD80:
	mov r0, #2
	bx lr
_021DCD84:
	mov r0, #1
	bx lr
_021DCD88:
	mov r0, #0
	bx lr
_021DCD8C:
	mov r0, #1
	bx lr
	; .align 2, 0
_021DCD90: .word 0x000001CE
	thumb_func_end ov5_021DCCC8

	thumb_func_start ov5_021DCD94
ov5_021DCD94: ; 0x021DCD94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	bl ov5_021DC300
	mov r1, #7
	tst r1, r0
	bne _021DCDAA
	lsr r7, r0, #3
	b _021DCDAE
_021DCDAA:
	lsr r0, r0, #3
	add r7, r0, #1
_021DCDAE:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r6, #0
	str r0, [sp, #0x14]
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl sub_020E1F6C
	cmp r1, #0
	beq _021DCDD2
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021DCDD2:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	add r1, r5, #0
	str r0, [sp]
	add r0, r7, #0
	mul r0, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r4, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r2, _021DCE5C ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r5, #0
	ldr r2, _021DCE5C ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov5_021DCE64
	add r1, r5, #0
	add r1, #0x96
	add r0, r5, #0
	ldrb r1, [r1]
	add r0, #0xac
	mov r2, #4
	bl sub_02001B9C
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1, #0]
	ldr r0, _021DCE60 ; =ov5_021DC3B0
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DCE5C: .word 0x000003D9
_021DCE60: .word ov5_021DC3B0
	thumb_func_end ov5_021DCD94

	thumb_func_start ov5_021DCE64
ov5_021DCE64: ; 0x021DCE64
	push {r3, r4}
	add r4, r0, #0
	add r3, r0, #0
	add r4, #0xbc
	add r3, #0xac
	str r4, [r3, #0]
	add r4, r0, #0
	add r3, r0, #0
	add r4, #8
	add r3, #0xb0
	str r4, [r3, #0]
	add r3, r0, #0
	mov r4, #0
	add r3, #0xb4
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xb5
	strb r1, [r3]
	add r1, r0, #0
	add r1, #0xb6
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xb7
	ldrb r2, [r1]
	mov r1, #0xf
	bic r2, r1
	add r1, r0, #0
	add r1, #0xb7
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xb7
	ldrb r2, [r1]
	mov r1, #0x30
	add r0, #0xb7
	bic r2, r1
	strb r2, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov5_021DCE64

	thumb_func_start ov5_021DCEB0
ov5_021DCEB0: ; 0x021DCEB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r0, #4
	mov r1, #1
	bl sub_0201A778
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _021DCF50 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r2, _021DCF50 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _021DCF54 ; =0x0000021F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	mov r1, #0x12
	add r7, r0, #0
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_0200B190
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021DCF6C
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DCF50: .word 0x000003D9
_021DCF54: .word 0x0000021F
	thumb_func_end ov5_021DCEB0

	thumb_func_start ov5_021DCF58
ov5_021DCF58: ; 0x021DCF58
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A928
	pop {r4, pc}
	thumb_func_end ov5_021DCF58

	thumb_func_start ov5_021DCF6C
ov5_021DCF6C: ; 0x021DCF6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x50
	str r0, [sp]
	mov r3, #0x10
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	str r3, [sp, #4]
	bl sub_0201AE78
	ldr r2, _021DD01C ; =0x0000021F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	str r0, [sp, #0xc]
	mov r0, #4
	bl sub_0200B358
	add r6, r0, #0
	mov r0, #0x10
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x13
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	ldr r0, [r7, #0xc]
	bl sub_02025E38
	bl sub_02025F74
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x50
	sub r3, r1, r0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	add r2, r4, #0
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
	ldr r0, [sp, #0xc]
	bl sub_0200B190
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DD01C: .word 0x0000021F
	thumb_func_end ov5_021DCF6C

	thumb_func_start ov5_021DD020
ov5_021DD020: ; 0x021DD020
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r0, #4
	mov r1, #1
	bl sub_0201A778
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x29
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _021DD080 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r2, _021DD080 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021DD098
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DD080: .word 0x000003D9
	thumb_func_end ov5_021DD020

	thumb_func_start ov5_021DD084
ov5_021DD084: ; 0x021DD084
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	mov r1, #1
	bl sub_0201A928
	pop {r4, pc}
	thumb_func_end ov5_021DD084

	thumb_func_start ov5_021DD098
ov5_021DD098: ; 0x021DD098
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	str r1, [sp, #0xc]
	add r0, r1, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _021DD13C ; =0x00000169
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	mov r0, #4
	bl sub_0200B358
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0xc5
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	bl sub_02025E50
	bl sub_0202B5B4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x50
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200B3F0
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, [sp, #0xc]
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DD13C: .word 0x00000169
	thumb_func_end ov5_021DD098

	thumb_func_start ov5_021DD140
ov5_021DD140: ; 0x021DD140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r0, #4
	mov r1, #1
	bl sub_0201A778
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x29
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _021DD1A0 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	ldr r2, _021DD1A0 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021DD1A4
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DD1A0: .word 0x000003D9
	thumb_func_end ov5_021DD140

	thumb_func_start ov5_021DD1A4
ov5_021DD1A4: ; 0x021DD1A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	str r1, [sp, #0xc]
	add r0, r1, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _021DD24C ; =0x00000169
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r7, r0, #0
	mov r0, #4
	bl sub_0200B358
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0xe6
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x50
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200B3F0
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, [sp, #0xc]
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DD24C: .word 0x00000169
	thumb_func_end ov5_021DD1A4

	thumb_func_start ov5_021DD250
ov5_021DD250: ; 0x021DD250
	push {r4, r5, lr}
	sub sp, #0x14
	mov r4, #0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r5, [sp, #0x20]
	add r3, r4, #0
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	bl ov5_021DC150
	add r4, r0, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r4, #0
	add r1, r4, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _021DD394 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r4, #0
	ldr r2, _021DD394 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	add r0, #8
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	mov r2, #0
	ldr r1, _021DD398 ; =0x00000111
	add r0, r4, #0
	add r3, r2, #0
	bl ov5_021DCC00
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r2, sp, #0x10
	ldrb r2, [r2, #0x14]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r1, _021DD39C ; =0x00000115
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x10
	bl ov5_021DCC00
	ldr r1, _021DD3A0 ; =0x00000112
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x20
	bl ov5_021DCC00
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r2, sp, #0x10
	ldrb r2, [r2, #0x18]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r1, _021DD39C ; =0x00000115
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x30
	bl ov5_021DCC00
	ldr r1, _021DD3A4 ; =0x00000113
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x40
	bl ov5_021DCC00
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r2, sp, #0x10
	ldrb r2, [r2, #0x1c]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r1, _021DD39C ; =0x00000115
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x50
	bl ov5_021DCC00
	mov r1, #0x45
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0
	mov r3, #0x60
	bl ov5_021DCC00
	add r2, sp, #0x30
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r1, _021DD39C ; =0x00000115
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x70
	bl ov5_021DCC00
	add r0, r4, #0
	add r1, r4, #0
	add r0, #8
	add r1, #0xb0
	str r0, [r1, #0]
	bl sub_0201A954
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021DD394: .word 0x000003D9
_021DD398: .word 0x00000111
_021DD39C: .word 0x00000115
_021DD3A0: .word 0x00000112
_021DD3A4: .word 0x00000113
	thumb_func_end ov5_021DD250

	thumb_func_start ov5_021DD3A8
ov5_021DD3A8: ; 0x021DD3A8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200DC9C
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	bl sub_0201A8FC
	mov r4, #0
	add r5, r6, #0
_021DD3C4:
	ldr r0, [r5, #0x1c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021DD3C4
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021DD3EA
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_0200B190
_021DD3EA:
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021DD3A8

	thumb_func_start ov5_021DD3F4
ov5_021DD3F4: ; 0x021DD3F4
	add r2, r0, #0
	add r2, #0x97
	ldrb r3, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x40
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x19
	orr r1, r3
	add r0, #0x97
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021DD3F4

	thumb_func_start ov5_021DD410
ov5_021DD410: ; 0x021DD410
	add r2, r0, #0
	add r2, #0x97
	ldrb r3, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x80
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x18
	orr r1, r3
	add r0, #0x97
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021DD410