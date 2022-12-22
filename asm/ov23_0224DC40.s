	.include "macros/function.inc"
	.include "include/ov23_0224DC40.inc"

	

	.text


	thumb_func_start ov23_0224DC40
ov23_0224DC40: ; 0x0224DC40
	push {r3, lr}
	ldrh r2, [r0, #0x2c]
	add r0, sp, #0
	strb r2, [r0]
	strb r1, [r0, #1]
	mov r0, #0x4a
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	thumb_func_end ov23_0224DC40

	thumb_func_start ov23_0224DC54
ov23_0224DC54: ; 0x0224DC54
	push {r3, lr}
	ldrh r2, [r0, #0x30]
	add r0, sp, #0
	strb r2, [r0]
	strb r1, [r0, #1]
	mov r0, #0x49
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	thumb_func_end ov23_0224DC54

	thumb_func_start ov23_0224DC68
ov23_0224DC68: ; 0x0224DC68
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0x88
	blt _0224DC80
	ldrh r0, [r0, #0x30]
	bl sub_02032EE8
	bl sub_02025F30
	cmp r0, #1
	bne _0224DC80
	add r4, #0x13
_0224DC80:
	bl ov23_0224219C
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, pc}
	thumb_func_end ov23_0224DC68

	thumb_func_start ov23_0224DC90
ov23_0224DC90: ; 0x0224DC90
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0x88
	blt _0224DCA8
	ldrh r0, [r0, #0x2c]
	bl sub_02032EE8
	bl sub_02025F30
	cmp r0, #1
	bne _0224DCA8
	add r4, #0x13
_0224DCA8:
	bl ov23_0224219C
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, pc}
	thumb_func_end ov23_0224DC90

	thumb_func_start ov23_0224DCB8
ov23_0224DCB8: ; 0x0224DCB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x21
	mov r1, #0x3c
	add r7, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x3c
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, _0224DD1C ; =0x022577B0
	mov r1, #1
	str r4, [r0, #4]
	str r7, [r4, #8]
	str r6, [r4, #0x2c]
	add r0, r4, #0
	strh r5, [r4, #0x30]
	add r0, #0x37
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	add r0, r4, #0
	ldrh r1, [r4, #0x30]
	add r0, #0x28
	strb r1, [r0]
	ldr r0, _0224DD20 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	bl ov23_0224DC68
	ldr r0, _0224DD24 ; =ov23_0224E2D8
	ldr r2, _0224DD28 ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DD1C: .word 0x022577B0
_0224DD20: .word 0x000005DC
_0224DD24: .word ov23_0224E2D8
_0224DD28: .word 0x00002710
	thumb_func_end ov23_0224DCB8

	thumb_func_start ov23_0224DD2C
ov23_0224DD2C: ; 0x0224DD2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #4
	add r1, r0, #0
	bl sub_02013A04
	str r0, [r5, #0x1c]
	mov r3, #1
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224DDD4 ; =0x000001E7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, #0xc
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224DDD8 ; =0x000003D9
	add r0, #0xc
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _0224DDDC ; =0x0000027A
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	ldr r4, _0224DDE0 ; =0x022568B4
	add r7, r0, #0
	mov r6, #0
_0224DD7E:
	ldr r0, [r5, #0x1c]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	add r1, r7, #0
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blo _0224DD7E
	add r0, r7, #0
	bl sub_0200B190
	bl ov23_02253D40
	add r1, sp, #0x14
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [r5, #0x1c]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xc
	str r0, [sp, #0x20]
	mov r3, #4
	add r0, sp, #0x14
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r1, [r5, #0x3a]
	add r0, sp, #0x14
	add r2, r1, #0
	bl sub_0200112C
	str r0, [r5, #0x20]
	add r5, #0xc
	add r0, r5, #0
	bl sub_0201A954
	bl sub_020594FC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DDD4: .word 0x000001E7
_0224DDD8: .word 0x000003D9
_0224DDDC: .word 0x0000027A
_0224DDE0: .word 0x022568B4
	thumb_func_end ov23_0224DD2C

	thumb_func_start ov23_0224DDE4
ov23_0224DDE4: ; 0x0224DDE4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0224DDFA
	mov r1, #4
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x24]
_0224DDFA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224DE0C
	mov r1, #1
	mvn r1, r1
	bl ov23_02251044
	bl ov23_02243204
_0224DE0C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E244
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _0224DE1E
	mov r0, #0
	blx r1
_0224DE1E:
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02059514
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, _0224DE38 ; =0x022577B0
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, r4, r5, pc}
	nop
_0224DE38: .word 0x022577B0
	thumb_func_end ov23_0224DDE4

	thumb_func_start ov23_0224DE3C
ov23_0224DE3C: ; 0x0224DE3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #4
	add r1, r0, #0
	bl sub_02013A04
	str r0, [r5, #0x1c]
	mov r3, #1
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224DF0C ; =0x000001B7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, #0xc
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224DF10 ; =0x000003D9
	add r0, #0xc
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _0224DF14 ; =0x00000279
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	mov r4, #0
	add r7, sp, #0x14
_0224DE8E:
	bl sub_0201D35C
	mov r1, #0xc
	bl _u32_div_f
	add r2, r1, #0
	mov r1, #0
	cmp r4, #0
	ble _0224DEB0
	add r3, r7, #0
_0224DEA2:
	ldrb r0, [r3]
	cmp r0, r2
	beq _0224DEB0
	add r1, r1, #1
	add r3, r3, #1
	cmp r1, r4
	blt _0224DEA2
_0224DEB0:
	cmp r1, r4
	bne _0224DEC2
	strb r2, [r7, r4]
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	add r3, r2, #0
	bl sub_02013A4C
	b _0224DEC4
_0224DEC2:
	sub r4, r4, #1
_0224DEC4:
	add r4, r4, #1
	cmp r4, #4
	blt _0224DE8E
	add r0, r6, #0
	bl sub_0200B190
	ldr r4, _0224DF18 ; =0x02256894
	add r3, sp, #0x18
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x1c]
	mov r1, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xc
	str r0, [sp, #0x24]
	add r0, r2, #0
	strh r1, [r5, #0x3a]
	add r2, r1, #0
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x20]
	add r5, #0xc
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DF0C: .word 0x000001B7
_0224DF10: .word 0x000003D9
_0224DF14: .word 0x00000279
_0224DF18: .word 0x02256894
	thumb_func_end ov23_0224DE3C

	thumb_func_start ov23_0224DF1C
ov23_0224DF1C: ; 0x0224DF1C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_0224F270
	bl sub_020360F0
	cmp r0, #0
	beq _0224DF50
	add r0, r5, #0
	mov r1, #3
	add r0, #0x37
	strb r1, [r0]
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224DF50:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224DF5E
	add r0, r0, #1
	cmp r4, r0
	bne _0224DF64
_0224DF5E:
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0224DF64:
	ldr r0, _0224DF9C ; =0x000005DC
	bl sub_02005748
	add r0, sp, #0
	strb r4, [r0]
	ldrh r1, [r5, #0x30]
	strb r1, [r0, #1]
	mov r1, #0
	strb r1, [r0, #2]
	mov r0, #0x4f
	add r1, sp, #0
	bl sub_020360D0
	add r0, r5, #0
	add r0, #0x32
	strb r4, [r0]
	add r0, r5, #0
	mov r1, #0x1e
	add r0, #0x37
	strb r1, [r0]
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224DF9C: .word 0x000005DC
	thumb_func_end ov23_0224DF1C

	thumb_func_start ov23_0224DFA0
ov23_0224DFA0: ; 0x0224DFA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #4
	add r1, r0, #0
	bl sub_02013A04
	str r0, [r5, #0x1c]
	mov r3, #1
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224E050 ; =0x000001B7
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, #0xc
	ldr r0, [r0, #8]
	mov r2, #3
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224E054 ; =0x000003D9
	add r0, #0xc
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r2, #0x9e
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	mov r4, #0
_0224DFF2:
	add r2, r5, #0
	add r2, #0x32
	ldrb r2, [r2]
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	lsl r2, r2, #2
	add r2, r4, r2
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, #4
	blt _0224DFF2
	add r0, r6, #0
	bl sub_0200B190
	ldr r4, _0224E058 ; =0x02256894
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x1c]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xc
	str r0, [sp, #0x20]
	add r0, r2, #0
	strh r1, [r5, #0x3a]
	add r2, r1, #0
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x20]
	add r5, #0xc
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_0224E050: .word 0x000001B7
_0224E054: .word 0x000003D9
_0224E058: .word 0x02256894
	thumb_func_end ov23_0224DFA0

	thumb_func_start ov23_0224E05C
ov23_0224E05C: ; 0x0224E05C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_0224F270
	bl sub_020360F0
	cmp r0, #0
	beq _0224E08E
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	mov r0, #3
	add r5, #0x37
	strb r0, [r5]
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224E08E:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224E09C
	add r0, r0, #1
	cmp r4, r0
	bne _0224E0A2
_0224E09C:
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0224E0A2:
	ldr r0, _0224E120 ; =0x000005DC
	bl sub_02005748
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	add r0, r5, #0
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, sp, #0
	strb r1, [r0]
	ldrh r1, [r5, #0x30]
	strb r1, [r0, #1]
	mov r1, #2
	strb r1, [r0, #2]
	mov r0, #0x4f
	add r1, sp, #0
	bl sub_020360D0
	bl ov23_0224219C
	add r1, sp, #0
	ldrb r1, [r1]
	bl ov23_022540C8
	bl ov23_0224219C
	add r2, r5, #0
	add r2, #0x33
	ldrb r2, [r2]
	mov r1, #6
	bl ov23_022540E0
	add r0, r5, #0
	add r0, #0x33
	ldrb r1, [r0]
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r1, r0
	bne _0224E102
	add r0, r5, #0
	mov r1, #0x8d
	bl ov23_0224DC68
	b _0224E10A
_0224E102:
	add r0, r5, #0
	mov r1, #0x8c
	bl ov23_0224DC68
_0224E10A:
	add r0, r5, #0
	mov r1, #0x24
	add r0, #0x37
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x1b
	bl ov23_0224DC54
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224E120: .word 0x000005DC
	thumb_func_end ov23_0224E05C

	thumb_func_start ov23_0224E124
ov23_0224E124: ; 0x0224E124
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov23_0224219C
	add r5, r0, #0
	ldrh r0, [r4, #0x30]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r5, #0
	bl ov23_02254068
	bl ov23_0224219C
	add r1, r4, #0
	add r1, #0x2a
	ldrb r1, [r1]
	bl ov23_022540F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0xe
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, [r4, #8]
	bl sub_0203D174
	bl sub_020298A0
	bl sub_0202952C
	add r4, #0x2a
	ldrb r0, [r4]
	bl ov23_0224F634
	ldr r0, _0224E178 ; =0x000005E3
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_0224E178: .word 0x000005E3
	thumb_func_end ov23_0224E124

	thumb_func_start ov23_0224E17C
ov23_0224E17C: ; 0x0224E17C
	push {r4, lr}
	add r4, r1, #0
	bl ov23_0224219C
	add r1, r4, #0
	bl ov23_022540F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0xc
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E17C

	thumb_func_start ov23_0224E19C
ov23_0224E19C: ; 0x0224E19C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x24]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224E1DE
	cmp r0, #0
	bne _0224E1CA
	ldrh r1, [r4, #0x30]
	add r0, r4, #0
	add r0, #0x28
	strb r1, [r0]
	add r1, r4, #0
	mov r0, #0x4d
	add r1, #0x28
	bl sub_020360D0
	mov r1, #0x15
	b _0224E1D4
_0224E1CA:
	add r0, r4, #0
	mov r1, #0xb
	bl ov23_0224DC68
	mov r1, #0xf
_0224E1D4:
	add r0, r4, #0
	add r0, #0x37
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x24]
_0224E1DE:
	pop {r4, pc}
	thumb_func_end ov23_0224E19C

	thumb_func_start ov23_0224E1E0
ov23_0224E1E0: ; 0x0224E1E0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_02001288
	add r4, r0, #0
	add r0, r5, #0
	bl ov23_0224F270
	bl sub_020360F0
	cmp r0, #0
	beq _0224E200
	mov r4, #1
	mvn r4, r4
_0224E200:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224E212
	add r0, r0, #1
	cmp r4, r0
	bne _0224E228
	mov r0, #0
	pop {r4, r5, r6, pc}
_0224E212:
	ldr r0, _0224E240 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov23_0224E8E0
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
	b _0224E23A
_0224E228:
	ldr r0, _0224E240 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	blx r4
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224E244
_0224E23A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0224E240: .word 0x000005DC
	thumb_func_end ov23_0224E1E0

	thumb_func_start ov23_0224E244
ov23_0224E244: ; 0x0224E244
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0224E27C
	add r0, r4, #0
	add r0, #0xc
	mov r1, #1
	bl sub_0200DC9C
	mov r1, #0
	ldr r0, [r4, #0x20]
	add r2, r1, #0
	bl sub_02001384
	add r0, r4, #0
	add r0, #0xc
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xc
	bl sub_0201A8FC
	ldr r0, [r4, #0x1c]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x1c]
_0224E27C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E244

	thumb_func_start ov23_0224E280
ov23_0224E280: ; 0x0224E280
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl ov23_0224DC54
	add r0, r4, #0
	mov r1, #7
	bl ov23_0224DC68
	mov r0, #5
	add r4, #0x37
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E280

	thumb_func_start ov23_0224E29C
ov23_0224E29C: ; 0x0224E29C
	push {r4, lr}
	mov r1, #0x16
	add r4, r0, #0
	bl ov23_0224DC54
	mov r0, #0x1b
	add r4, #0x37
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E29C

	thumb_func_start ov23_0224E2B0
ov23_0224E2B0: ; 0x0224E2B0
	mov r1, #0x10
	add r0, #0x37
	strb r1, [r0]
	bx lr
	thumb_func_end ov23_0224E2B0

	thumb_func_start ov23_0224E2B8
ov23_0224E2B8: ; 0x0224E2B8
	ldr r1, _0224E2CC ; =0x022577B0
	ldr r2, [r1, #4]
	add r2, #0x2a
	strb r0, [r2]
	ldr r0, [r1, #4]
	mov r2, #0x12
	add r0, #0x37
	strb r2, [r0]
	bx lr
	nop
_0224E2CC: .word 0x022577B0
	thumb_func_end ov23_0224E2B8

	thumb_func_start ov23_0224E2D0
ov23_0224E2D0: ; 0x0224E2D0
	mov r1, #0xb
	add r0, #0x37
	strb r1, [r0]
	bx lr
	thumb_func_end ov23_0224E2D0

	thumb_func_start ov23_0224E2D8
ov23_0224E2D8: ; 0x0224E2D8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _0224E304
	ldrh r0, [r4, #0x30]
	bl sub_02035D78
	cmp r0, #0
	bne _0224E304
	mov r0, #0
	str r0, [r4, #4]
	bl ov23_022535EC
	add r0, r4, #0
	mov r1, #4
	add r0, #0x37
	strb r1, [r0]
_0224E304:
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0x29
	bhi _0224E3B8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224E31A: ; jump table
	.short _0224E87A - _0224E31A - 2 ; case 0
	.short _0224E36E - _0224E31A - 2 ; case 1
	.short _0224E390 - _0224E31A - 2 ; case 2
	.short _0224E39A - _0224E31A - 2 ; case 3
	.short _0224E39A - _0224E31A - 2 ; case 4
	.short _0224E3AC - _0224E31A - 2 ; case 5
	.short _0224E3F8 - _0224E31A - 2 ; case 6
	.short _0224E40A - _0224E31A - 2 ; case 7
	.short _0224E3E6 - _0224E31A - 2 ; case 8
	.short _0224E42A - _0224E31A - 2 ; case 9
	.short _0224E87A - _0224E31A - 2 ; case 10
	.short _0224E45C - _0224E31A - 2 ; case 11
	.short _0224E480 - _0224E31A - 2 ; case 12
	.short _0224E49E - _0224E31A - 2 ; case 13
	.short _0224E4B2 - _0224E31A - 2 ; case 14
	.short _0224E4C4 - _0224E31A - 2 ; case 15
	.short _0224E4E6 - _0224E31A - 2 ; case 16
	.short _0224E87A - _0224E31A - 2 ; case 17
	.short _0224E4FA - _0224E31A - 2 ; case 18
	.short _0224E590 - _0224E31A - 2 ; case 19
	.short _0224E5CC - _0224E31A - 2 ; case 20
	.short _0224E5D6 - _0224E31A - 2 ; case 21
	.short _0224E640 - _0224E31A - 2 ; case 22
	.short _0224E61C - _0224E31A - 2 ; case 23
	.short _0224E62E - _0224E31A - 2 ; case 24
	.short _0224E67A - _0224E31A - 2 ; case 25
	.short _0224E684 - _0224E31A - 2 ; case 26
	.short _0224E6A4 - _0224E31A - 2 ; case 27
	.short _0224E6B6 - _0224E31A - 2 ; case 28
	.short _0224E6D2 - _0224E31A - 2 ; case 29
	.short _0224E6DC - _0224E31A - 2 ; case 30
	.short _0224E6FC - _0224E31A - 2 ; case 31
	.short _0224E738 - _0224E31A - 2 ; case 32
	.short _0224E778 - _0224E31A - 2 ; case 33
	.short _0224E7A0 - _0224E31A - 2 ; case 34
	.short _0224E7BC - _0224E31A - 2 ; case 35
	.short _0224E7C6 - _0224E31A - 2 ; case 36
	.short _0224E7F2 - _0224E31A - 2 ; case 37
	.short _0224E812 - _0224E31A - 2 ; case 38
	.short _0224E82E - _0224E31A - 2 ; case 39
	.short _0224E84A - _0224E31A - 2 ; case 40
	.short _0224E868 - _0224E31A - 2 ; case 41
_0224E36E:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E3B8
	add r0, r4, #0
	bl ov23_0224DD2C
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E390:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E1E0
	b _0224E87A
_0224E39A:
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224DDE4
	b _0224E87A
_0224E3AC:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	beq _0224E3BA
_0224E3B8:
	b _0224E87A
_0224E3BA:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #9
	bne _0224E3D2
	add r0, r4, #0
	mov r1, #9
	add r0, #0x37
	strb r1, [r0]
	ldrh r0, [r4, #0x30]
	bl ov23_022538FC
_0224E3D2:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #6
	bne _0224E4DA
	add r0, r4, #0
	mov r1, #6
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E3E6:
	add r0, r4, #0
	mov r1, #0xf
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #7
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E3F8:
	add r0, r4, #0
	mov r1, #8
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #7
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E40A:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E4DA
	ldr r0, _0224E720 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224E4DA
	add r0, r4, #0
	mov r1, #4
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E42A:
	bl ov23_022539D8
	cmp r0, #0
	beq _0224E4DA
	bl ov23_0224219C
	bl ov23_02254044
	ldrh r0, [r4, #0x30]
	bl sub_02032EE8
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r2, _0224E724 ; =ov23_0224E2D0
	ldr r0, [r0, #8]
	add r3, r4, #0
	bl ov23_02253834
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E45C:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x20
	bl sub_0202CFEC
	bl ov23_022539E8
	add r0, r4, #0
	mov r1, #9
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E480:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E4DA
	add r0, r4, #0
	mov r1, #0xe
	bl ov23_0224DC54
	add r0, r4, #0
	mov r1, #0xd
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E49E:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0224E4DA
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E4B2:
	add r0, r4, #0
	mov r1, #0xa
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #1
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E4C4:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E4DA
	ldr r0, _0224E720 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0224E4DC
_0224E4DA:
	b _0224E87A
_0224E4DC:
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E4E6:
	ldr r0, _0224E728 ; =ov23_0224E2B8
	ldr r1, [r4, #8]
	bl ov23_022511B0
	str r0, [r4, #4]
	add r0, r4, #0
	mov r1, #0x11
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E4FA:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, _0224E72C ; =0x022577B0
	ldr r0, [r0, #4]
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224E51C
	add r0, r4, #0
	mov r1, #0xb
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E51C:
	ldrh r0, [r4, #0x30]
	bl sub_02032FC0
	cmp r0, #0
	beq _0224E538
	add r0, r4, #0
	mov r1, #0x57
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E538:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_02028810
	cmp r0, #0
	bne _0224E556
	add r0, r4, #0
	mov r1, #0x57
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E556:
	ldr r0, _0224E72C ; =0x022577B0
	ldr r0, [r0, #4]
	add r0, #0x2a
	ldrb r0, [r0]
	bl sub_0205748C
	cmp r0, #0
	beq _0224E578
	add r0, r4, #0
	mov r1, #0x56
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E578:
	ldr r1, _0224E72C ; =0x022577B0
	add r0, r4, #0
	ldr r1, [r1, #4]
	add r1, #0x2a
	ldrb r1, [r1]
	bl ov23_0224E17C
	add r0, r4, #0
	mov r1, #0x13
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E590:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E610
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, _0224E730 ; =0x0225688C
	ldr r0, [r0, #8]
	ldr r2, _0224E734 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x24]
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x37
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #8
	beq _0224E610
	add r0, r4, #0
	mov r1, #1
	add r0, #0x38
	strb r1, [r0]
	b _0224E87A
_0224E5CC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E19C
	b _0224E87A
_0224E5D6:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E610
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _0224E5F4
	add r0, r4, #0
	mov r1, #0x16
	add r0, #0x37
	strb r1, [r0]
_0224E5F4:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x18
	bne _0224E606
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0x37
	strb r1, [r0]
_0224E606:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0224E612
_0224E610:
	b _0224E87A
_0224E612:
	add r0, r4, #0
	mov r1, #0x17
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E61C:
	add r0, r4, #0
	mov r1, #0x1e
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x1a
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E62E:
	add r0, r4, #0
	mov r1, #0xd
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x1a
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E640:
	add r0, r4, #0
	bl ov23_0224E124
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	add r6, r0, #0
	bl sub_0206B3EC
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0206B3FC
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x1f
	bl sub_0202CFEC
	add r0, r4, #0
	mov r1, #0x19
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E67A:
	add r0, r4, #0
	mov r1, #0x1a
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E684:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E712
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0xf
	bne _0224E712
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E6A4:
	add r0, r4, #0
	mov r1, #0x88
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x1c
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E6B6:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E712
	add r0, r4, #0
	bl ov23_0224DE3C
	add r0, r4, #0
	mov r1, #0x1d
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E6D2:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224DF1C
	b _0224E87A
_0224E6DC:
	bl ov23_0224219C
	add r1, r4, #0
	add r1, #0x32
	ldrb r1, [r1]
	bl ov23_022540B0
	add r0, r4, #0
	mov r1, #0x89
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E6FC:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E712
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0224E714
_0224E712:
	b _0224E87A
_0224E714:
	add r0, r4, #0
	mov r1, #0x20
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
	nop
_0224E720: .word 0x021BF67C
_0224E724: .word ov23_0224E2D0
_0224E728: .word ov23_0224E2B8
_0224E72C: .word 0x022577B0
_0224E730: .word 0x0225688C
_0224E734: .word 0x000003D9
_0224E738:
	add r0, r4, #0
	add r0, #0x33
	ldrb r6, [r0]
	cmp r6, #0x33
	bne _0224E75C
	add r0, r4, #0
	mov r1, #0x8b
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x21
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E75C:
	bl ov23_0224219C
	add r1, r6, #0
	bl ov23_022540C8
	add r0, r4, #0
	mov r1, #0x8a
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x22
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E778:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x2a
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E7A0:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	add r0, r4, #0
	bl ov23_0224DFA0
	add r0, r4, #0
	mov r1, #0x23
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E7BC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E05C
	b _0224E87A
_0224E7C6:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x21
	bl sub_0202CFEC
	add r0, r4, #0
	mov r1, #0x8e
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x25
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E7F2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	ldr r0, _0224E8DC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224E87A
	add r0, r4, #0
	mov r1, #0x26
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E812:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x25
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0x64
	bl ov23_0224DC54
	add r0, r4, #0
	mov r1, #0x27
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E82E:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x64
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0x96
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #0x28
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E84A:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0x65
	bl ov23_0224DC54
	add r0, r4, #0
	mov r1, #0x29
	add r0, #0x37
	strb r1, [r0]
	b _0224E87A
_0224E868:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0x65
	bne _0224E87A
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x37
	strb r1, [r0]
_0224E87A:
	add r0, r4, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #8
	bne _0224E8D6
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #4
	beq _0224E8D6
	cmp r0, #7
	beq _0224E8D6
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0224E8A2
	mov r1, #4
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x24]
_0224E8A2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224E8C0
	mov r1, #1
	mvn r1, r1
	bl ov23_02251044
	bl ov23_02243204
	bl ov23_022421DC
	bl ov23_02254044
	mov r0, #0
	str r0, [r4, #4]
_0224E8C0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E244
	add r0, r4, #0
	mov r1, #8
	add r0, #0x37
	strb r1, [r0]
	mov r0, #0
	add r4, #0x38
	strb r0, [r4]
_0224E8D6:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224E8DC: .word 0x021BF67C
	thumb_func_end ov23_0224E2D8

	thumb_func_start ov23_0224E8E0
ov23_0224E8E0: ; 0x0224E8E0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xf
	bl ov23_0224DC68
	add r0, r4, #0
	mov r1, #8
	bl ov23_0224DC54
	mov r0, #7
	add r4, #0x37
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224E8E0

	thumb_func_start ov23_0224E8FC
ov23_0224E8FC: ; 0x0224E8FC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224E93A
	cmp r0, #0
	bne _0224E926
	add r0, r4, #0
	mov r1, #9
	bl ov23_0224DC40
	ldrh r0, [r4, #0x2c]
	bl ov23_022538FC
	mov r1, #0xa
	b _0224E930
_0224E926:
	add r0, r4, #0
	mov r1, #6
	bl ov23_0224DC40
	mov r1, #8
_0224E930:
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	mov r0, #0
	str r0, [r4, #0x20]
_0224E93A:
	pop {r4, pc}
	thumb_func_end ov23_0224E8FC

	thumb_func_start ov23_0224E93C
ov23_0224E93C: ; 0x0224E93C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224E9BE
	cmp r0, #0
	bne _0224E9A2
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	bl ov23_0224F744
	cmp r0, #0
	beq _0224E988
	ldr r0, [r4, #4]
	bl sub_0203D174
	bl sub_020298A0
	bl sub_0202977C
	ldr r0, _0224E9C0 ; =0x000005E3
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0x16
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x13
	add r0, #0x34
	strb r1, [r0]
	b _0224E9BA
_0224E988:
	add r0, r4, #0
	mov r1, #0x17
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x15
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0x34
	strb r1, [r0]
	b _0224E9BA
_0224E9A2:
	add r0, r4, #0
	mov r1, #0x18
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x1d
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0x34
	strb r1, [r0]
_0224E9BA:
	mov r0, #0
	str r0, [r4, #0x20]
_0224E9BE:
	pop {r4, pc}
	; .align 2, 0
_0224E9C0: .word 0x000005E3
	thumb_func_end ov23_0224E93C

	thumb_func_start ov23_0224E9C4
ov23_0224E9C4: ; 0x0224E9C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224E9DA
	mov r1, #4
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x20]
_0224E9DA:
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _0224E9E4
	mov r0, #0
	blx r1
_0224E9E4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224EA08
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02059514
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, _0224EA04 ; =0x022577B0
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224EA04: .word 0x022577B0
	thumb_func_end ov23_0224E9C4

	thumb_func_start ov23_0224EA08
ov23_0224EA08: ; 0x0224EA08
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0224EA40
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_0200DC9C
	mov r1, #0
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	bl sub_02001384
	add r0, r4, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #8
	bl sub_0201A8FC
	ldr r0, [r4, #0x18]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x18]
_0224EA40:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224EA08

	thumb_func_start ov23_0224EA44
ov23_0224EA44: ; 0x0224EA44
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov23_0224219C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r6, #0
	bl ov23_02254068
	bl ov23_0224219C
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_0224EA44

	thumb_func_start ov23_0224EA70
ov23_0224EA70: ; 0x0224EA70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov23_0224219C
	add r4, r0, #0
	ldrh r0, [r5, #0x2c]
	bl sub_02032EE8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02254068
	bl ov23_0224219C
	add r5, #0x26
	ldrb r1, [r5]
	bl ov23_022540F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x1f
	add r3, r2, #0
	bl ov23_02253F40
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224EA70

	thumb_func_start ov23_0224EAA4
ov23_0224EAA4: ; 0x0224EAA4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #5
	mov r1, #4
	bl sub_02013A04
	str r0, [r5, #0x18]
	mov r3, #1
	add r1, r5, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0224EB68 ; =0x00000197
	add r1, #8
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	mov r2, #3
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	add r0, r5, #0
	ldr r2, _0224EB6C ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r2, #0x9e
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl sub_0200B144
	add r6, r0, #0
	mov r4, #0
_0224EAF6:
	add r2, r5, #0
	add r2, #0x2e
	ldrb r2, [r2]
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	lsl r2, r2, #2
	add r2, r4, r2
	add r3, r4, #0
	bl sub_02013A4C
	add r4, r4, #1
	cmp r4, #4
	blt _0224EAF6
	ldr r0, [r5, #0x18]
	add r1, r6, #0
	mov r2, #0x30
	mov r3, #0x33
	bl sub_02013A4C
	add r0, r6, #0
	bl sub_0200B190
	ldr r4, _0224EB70 ; =0x02256894
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x18]
	mov r1, #5
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #0x20]
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	mov r1, #0
	add r0, r2, #0
	strh r1, [r5, #0x36]
	add r2, r1, #0
	mov r3, #4
	bl sub_0200112C
	str r0, [r5, #0x1c]
	add r5, #8
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_0224EB68: .word 0x00000197
_0224EB6C: .word 0x000003D9
_0224EB70: .word 0x02256894
	thumb_func_end ov23_0224EAA4

	thumb_func_start ov23_0224EB74
ov23_0224EB74: ; 0x0224EB74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	bl sub_02001288
	add r4, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x1c]
	add r1, #0x36
	ldrh r6, [r5, #0x36]
	bl sub_020014D0
	ldrh r0, [r5, #0x36]
	cmp r6, r0
	beq _0224EB9A
	ldr r0, _0224EC44 ; =0x000005DC
	bl sub_02005748
_0224EB9A:
	bl sub_020360F0
	cmp r0, #0
	beq _0224EBA6
	mov r4, #1
	mvn r4, r4
_0224EBA6:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224EBB8
	add r0, r0, #1
	cmp r4, r0
	bne _0224EBBA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224EBB8:
	mov r4, #0x33
_0224EBBA:
	ldr r0, _0224EC44 ; =0x000005DC
	bl sub_02005748
	add r0, r7, #0
	add r1, r5, #0
	bl ov23_0224EA08
	cmp r4, #0x33
	beq _0224EBFC
	add r0, r5, #0
	add r0, #0x2e
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r1, r4, r0
	add r0, r5, #0
	add r0, #0x2f
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x1a
	add r0, #0x34
	strb r1, [r0]
	bl ov23_0224219C
	add r1, r5, #0
	add r1, #0x2f
	ldrb r1, [r1]
	bl ov23_022540C8
	add r0, r5, #0
	mov r1, #0x92
	bl ov23_0224DC90
	b _0224EC1C
_0224EBFC:
	add r0, r5, #0
	mov r1, #0x33
	add r0, #0x2f
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x10
	add r0, #0x34
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x35
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0x91
	bl ov23_0224DC90
_0224EC1C:
	add r0, r5, #0
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, sp, #0
	strb r1, [r0]
	ldrh r1, [r5, #0x2c]
	strb r1, [r0, #1]
	mov r1, #1
	strb r1, [r0, #2]
	mov r0, #0x4f
	add r1, sp, #0
	bl sub_020360D0
	add r0, r5, #0
	mov r1, #0x20
	bl ov23_0224DC40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224EC44: .word 0x000005DC
	thumb_func_end ov23_0224EB74

	thumb_func_start ov23_0224EC48
ov23_0224EC48: ; 0x0224EC48
	mov r1, #0xc
	add r0, #0x34
	strb r1, [r0]
	bx lr
	thumb_func_end ov23_0224EC48

	thumb_func_start ov23_0224EC50
ov23_0224EC50: ; 0x0224EC50
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x2c]
	bl sub_02035D78
	cmp r0, #0
	bne _0224EC6E
	bl ov23_022535EC
	add r0, r4, #0
	mov r1, #4
	add r0, #0x34
	strb r1, [r0]
_0224EC6E:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0x20
	bls _0224EC7A
	b _0224F038
_0224EC7A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224EC86: ; jump table
	.short _0224F038 - _0224EC86 - 2 ; case 0
	.short _0224F038 - _0224EC86 - 2 ; case 1
	.short _0224ECDA - _0224EC86 - 2 ; case 2
	.short _0224F038 - _0224EC86 - 2 ; case 3
	.short _0224ECC8 - _0224EC86 - 2 ; case 4
	.short _0224ED20 - _0224EC86 - 2 ; case 5
	.short _0224ED32 - _0224EC86 - 2 ; case 6
	.short _0224ED5C - _0224EC86 - 2 ; case 7
	.short _0224ED66 - _0224EC86 - 2 ; case 8
	.short _0224ED78 - _0224EC86 - 2 ; case 9
	.short _0224ED98 - _0224EC86 - 2 ; case 10
	.short _0224F038 - _0224EC86 - 2 ; case 11
	.short _0224EDCA - _0224EC86 - 2 ; case 12
	.short _0224EDE2 - _0224EC86 - 2 ; case 13
	.short _0224EE00 - _0224EC86 - 2 ; case 14
	.short _0224EE16 - _0224EC86 - 2 ; case 15
	.short _0224EE28 - _0224EC86 - 2 ; case 16
	.short _0224EE46 - _0224EC86 - 2 ; case 17
	.short _0224EE70 - _0224EC86 - 2 ; case 18
	.short _0224EE7A - _0224EC86 - 2 ; case 19
	.short _0224EE8A - _0224EC86 - 2 ; case 20
	.short _0224EE94 - _0224EC86 - 2 ; case 21
	.short _0224EEBC - _0224EC86 - 2 ; case 22
	.short _0224EED4 - _0224EC86 - 2 ; case 23
	.short _0224EF06 - _0224EC86 - 2 ; case 24
	.short _0224EF24 - _0224EC86 - 2 ; case 25
	.short _0224EF2E - _0224EC86 - 2 ; case 26
	.short _0224EF56 - _0224EC86 - 2 ; case 27
	.short _0224EFA0 - _0224EC86 - 2 ; case 28
	.short _0224EFBE - _0224EC86 - 2 ; case 29
	.short _0224EFE4 - _0224EC86 - 2 ; case 30
	.short _0224F008 - _0224EC86 - 2 ; case 31
	.short _0224F01E - _0224EC86 - 2 ; case 32
_0224ECC8:
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E9C4
	b _0224F038
_0224ECDA:
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x2e
	strb r1, [r0]
	ldr r0, _0224EFD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0224ECFE
	add r0, r4, #0
	mov r1, #8
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #8
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ECFE:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #5
	bne _0224ED12
	add r0, r4, #0
	mov r1, #5
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED12:
	cmp r0, #0x16
	bne _0224EE0A
	add r0, r4, #0
	mov r1, #0x16
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED20:
	add r0, r4, #0
	mov r1, #0x18
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #6
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED32:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EE0A
	add r0, r4, #0
	mov r1, #7
	add r0, #0x34
	strb r1, [r0]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, _0224EFD8 ; =0x0225688C
	ldr r0, [r0, #8]
	ldr r2, _0224EFDC ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x20]
	b _0224F038
_0224ED5C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E8FC
	b _0224F038
_0224ED66:
	add r0, r4, #0
	mov r1, #0xf
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #9
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED78:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EE0A
	ldr r0, _0224EFD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224EE0A
	add r0, r4, #0
	mov r1, #4
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224ED98:
	bl ov23_022539D8
	cmp r0, #0
	beq _0224EE0A
	bl ov23_0224219C
	bl ov23_02254044
	ldrh r0, [r4, #0x2c]
	bl sub_02032EE8
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r2, _0224EFE0 ; =ov23_0224EC48
	ldr r0, [r0, #8]
	add r3, r4, #0
	bl ov23_02253834
	add r0, r4, #0
	mov r1, #0xb
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EDCA:
	bl ov23_022539E8
	ldrh r1, [r4, #0x2c]
	add r0, r4, #0
	mov r2, #0x1a
	bl ov23_0224EA44
	add r0, r4, #0
	mov r1, #0xd
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EDE2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EE0A
	add r0, r4, #0
	mov r1, #0xd
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE00:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _0224EE0C
_0224EE0A:
	b _0224F038
_0224EE0C:
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE16:
	add r0, r4, #0
	mov r1, #0x1b
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #2
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE28:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EF12
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x34
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x2a
	bl ov23_0224DC40
	b _0224F038
_0224EE46:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EF12
	add r0, r4, #0
	mov r1, #0x12
	add r0, #0x34
	strb r1, [r0]
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, _0224EFD8 ; =0x0225688C
	ldr r0, [r0, #8]
	ldr r2, _0224EFDC ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #0x20]
	b _0224F038
_0224EE70:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224E93C
	b _0224F038
_0224EE7A:
	add r0, r4, #0
	bl ov23_0224EA70
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE8A:
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EE94:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EF12
	ldr r0, _0224EFD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224EF12
	add r0, r4, #0
	mov r1, #0xf
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EEBC:
	add r0, r4, #0
	mov r1, #0x8f
	bl ov23_0224DC90
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EED4:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224EF12
	add r0, r4, #0
	add r0, #0x2e
	ldrb r6, [r0]
	cmp r6, #0xc
	beq _0224EF12
	bl ov23_0224219C
	add r1, r6, #0
	bl ov23_022540B0
	add r0, r4, #0
	mov r1, #0x90
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EF06:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	beq _0224EF14
_0224EF12:
	b _0224F038
_0224EF14:
	add r0, r4, #0
	bl ov23_0224EAA4
	add r0, r4, #0
	mov r1, #0x19
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EF24:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224EB74
	b _0224F038
_0224EF2E:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224F038
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x1b
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x25
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x1b
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EF56:
	bl ov23_0224219C
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	bl ov23_022540C8
	bl ov23_0224219C
	add r2, r4, #0
	add r2, #0x2f
	ldrb r2, [r2]
	mov r1, #6
	bl ov23_022540E0
	add r0, r4, #0
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r1, r0
	bne _0224EF8E
	add r0, r4, #0
	mov r1, #0x94
	bl ov23_0224DC90
	b _0224EF96
_0224EF8E:
	add r0, r4, #0
	mov r1, #0x93
	bl ov23_0224DC90
_0224EF96:
	add r0, r4, #0
	mov r1, #0x1c
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EFA0:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x95
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x1d
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224EFBE:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x1e
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
	; .align 2, 0
_0224EFD4: .word 0x021BF67C
_0224EFD8: .word 0x0225688C
_0224EFDC: .word 0x000003D9
_0224EFE0: .word ov23_0224EC48
_0224EFE4:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x64
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x64
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0x96
	bl ov23_0224DC90
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224F008:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x20
	add r0, #0x34
	strb r1, [r0]
	b _0224F038
_0224F01E:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x65
	bne _0224F038
	add r0, r4, #0
	mov r1, #0x65
	bl ov23_0224DC40
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x34
	strb r1, [r0]
_0224F038:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	cmp r0, #8
	bne _0224F076
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #4
	beq _0224F076
	cmp r0, #9
	beq _0224F076
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224F060
	mov r1, #4
	bl sub_02002154
	mov r0, #0
	str r0, [r4, #0x20]
_0224F060:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224EA08
	add r0, r4, #0
	mov r1, #8
	add r0, #0x34
	strb r1, [r0]
	mov r0, #0
	add r4, #0x35
	strb r0, [r4]
_0224F076:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov23_0224EC50

	thumb_func_start ov23_0224F07C
ov23_0224F07C: ; 0x0224F07C
	push {r4, r5, r6, lr}
	ldr r0, _0224F0E4 ; =0x022577B0
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	beq _0224F090
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_0224F090:
	mov r0, #0x21
	mov r1, #0x38
	bl sub_02018144
	mov r1, #0
	mov r2, #0x38
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, _0224F0E4 ; =0x022577B0
	mov r1, #2
	str r4, [r0, #0]
	str r6, [r4, #4]
	add r0, r4, #0
	strh r5, [r4, #0x2c]
	add r0, #0x34
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x35
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x2e
	strb r1, [r0]
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x16
	add r3, r2, #0
	bl ov23_02253F40
	bl sub_02059624
	ldr r0, _0224F0E8 ; =ov23_0224EC50
	ldr r2, _0224F0EC ; =0x00002710
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	nop
_0224F0E4: .word 0x022577B0
_0224F0E8: .word ov23_0224EC50
_0224F0EC: .word 0x00002710
	thumb_func_end ov23_0224F07C

	thumb_func_start ov23_0224F0F0
ov23_0224F0F0: ; 0x0224F0F0
	ldr r3, _0224F0F8 ; =sub_02035B48
	mov r0, #0x4b
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0224F0F8: .word sub_02035B48
	thumb_func_end ov23_0224F0F0

	thumb_func_start ov23_0224F0FC
ov23_0224F0FC: ; 0x0224F0FC
	ldr r3, _0224F104 ; =sub_02035B48
	mov r0, #0x4c
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0224F104: .word sub_02035B48
	thumb_func_end ov23_0224F0FC

	thumb_func_start ov23_0224F108
ov23_0224F108: ; 0x0224F108
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224F132
	ldr r0, _0224F134 ; =0x022577B0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224F132
	cmp r5, #2
	beq _0224F128
	bl GF_AssertFail
_0224F128:
	ldr r0, _0224F134 ; =0x022577B0
	ldrb r1, [r4, #1]
	ldr r0, [r0, #0]
	add r0, #0x35
	strb r1, [r0]
_0224F132:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F134: .word 0x022577B0
	thumb_func_end ov23_0224F108

	thumb_func_start ov23_0224F138
ov23_0224F138: ; 0x0224F138
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224F16E
	ldr r0, _0224F170 ; =0x022577B0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224F16E
	cmp r5, #2
	beq _0224F158
	bl GF_AssertFail
_0224F158:
	ldr r0, _0224F170 ; =0x022577B0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224F164
	bl GF_AssertFail
_0224F164:
	ldr r0, _0224F170 ; =0x022577B0
	ldrb r1, [r4, #1]
	ldr r0, [r0, #4]
	add r0, #0x38
	strb r1, [r0]
_0224F16E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F170: .word 0x022577B0
	thumb_func_end ov23_0224F138

	thumb_func_start ov23_0224F174
ov23_0224F174: ; 0x0224F174
	mov r0, #2
	bx lr
	thumb_func_end ov23_0224F174

	thumb_func_start ov23_0224F178
ov23_0224F178: ; 0x0224F178
	ldr r3, _0224F180 ; =sub_02035B48
	mov r0, #0x4e
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0224F180: .word sub_02035B48
	thumb_func_end ov23_0224F178

	thumb_func_start ov23_0224F184
ov23_0224F184: ; 0x0224F184
	push {r3, r4, r5, lr}
	ldr r0, _0224F1F4 ; =0x022577B0
	add r5, r2, #0
	ldr r4, [r0, #0]
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _0224F1F2
	ldr r0, _0224F1F4 ; =0x022577B0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0224F1A2
	bl GF_AssertFail
_0224F1A2:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	cmp r0, #2
	beq _0224F1BC
	add r0, r4, #0
	mov r1, #8
	bl ov23_0224DC40
	mov r0, #8
	add r4, #0x34
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224F1BC:
	ldrb r1, [r5]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x25
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #2]
	add r0, #0x26
	add r4, #0x34
	strb r1, [r0]
	mov r0, #0x11
	strb r0, [r4]
	bl ov23_0224219C
	ldrb r1, [r5, #2]
	bl ov23_022540F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x1c
	add r3, r2, #0
	bl ov23_02253F40
_0224F1F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224F1F4: .word 0x022577B0
	thumb_func_end ov23_0224F184

	thumb_func_start ov23_0224F1F8
ov23_0224F1F8: ; 0x0224F1F8
	mov r0, #3
	bx lr
	thumb_func_end ov23_0224F1F8

	thumb_func_start ov23_0224F1FC
ov23_0224F1FC: ; 0x0224F1FC
	ldr r3, _0224F204 ; =sub_02035B48
	mov r0, #0x50
	add r1, r2, #0
	bx r3
	; .align 2, 0
_0224F204: .word sub_02035B48
	thumb_func_end ov23_0224F1FC

	thumb_func_start ov23_0224F208
ov23_0224F208: ; 0x0224F208
	push {r4, r5, r6, lr}
	ldr r0, _0224F244 ; =0x022577B0
	add r5, r2, #0
	ldr r4, [r0, #0]
	ldr r6, [r0, #4]
	bl sub_0203608C
	ldrb r1, [r5, #1]
	cmp r1, r0
	bne _0224F242
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0224F22C
	cmp r0, #1
	beq _0224F234
	cmp r0, #2
	beq _0224F23C
	pop {r4, r5, r6, pc}
_0224F22C:
	ldrb r0, [r5]
	add r4, #0x2e
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224F234:
	ldrb r0, [r5]
	add r6, #0x33
	strb r0, [r6]
	pop {r4, r5, r6, pc}
_0224F23C:
	ldrb r0, [r5]
	add r4, #0x30
	strb r0, [r4]
_0224F242:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224F244: .word 0x022577B0
	thumb_func_end ov23_0224F208

	thumb_func_start ov23_0224F248
ov23_0224F248: ; 0x0224F248
	mov r0, #3
	bx lr
	thumb_func_end ov23_0224F248

	thumb_func_start ov23_0224F24C
ov23_0224F24C: ; 0x0224F24C
	push {r3, lr}
	ldr r0, _0224F26C ; =0x022577B0
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0224F25C
	ldr r0, [r1, #0]
	bl ov23_0224DDE4
_0224F25C:
	ldr r0, _0224F26C ; =0x022577B0
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224F26A
	ldr r0, [r1, #0]
	bl ov23_0224E9C4
_0224F26A:
	pop {r3, pc}
	; .align 2, 0
_0224F26C: .word 0x022577B0
	thumb_func_end ov23_0224F24C

	thumb_func_start ov23_0224F270
ov23_0224F270: ; 0x0224F270
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x20]
	add r1, #0x3a
	ldrh r4, [r5, #0x3a]
	bl sub_020014D0
	ldrh r0, [r5, #0x3a]
	cmp r4, r0
	beq _0224F28C
	ldr r0, _0224F290 ; =0x000005DC
	bl sub_02005748
_0224F28C:
	pop {r3, r4, r5, pc}
	nop
_0224F290: .word 0x000005DC
	thumb_func_end ov23_0224F270

	.rodata


	.global Unk_ov23_02256888
Unk_ov23_02256888: ; 0x02256888
	.incbin "incbin/overlay23_rodata.bin", 0x57C, 0x580 - 0x57C

	.global Unk_ov23_0225688C
Unk_ov23_0225688C: ; 0x0225688C
	.incbin "incbin/overlay23_rodata.bin", 0x580, 0x588 - 0x580

	.global Unk_ov23_02256894
Unk_ov23_02256894: ; 0x02256894
	.incbin "incbin/overlay23_rodata.bin", 0x588, 0x5A8 - 0x588

	.global Unk_ov23_022568B4
Unk_ov23_022568B4: ; 0x022568B4
	.incbin "incbin/overlay23_rodata.bin", 0x5A8, 0x20


	.bss


	.global Unk_ov23_022577B0
Unk_ov23_022577B0: ; 0x022577B0
	.space 0x4

	.global Unk_ov23_022577B4
Unk_ov23_022577B4: ; 0x022577B4
	.space 0x4

