	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_02000C88
sub_02000C88: ; 0x02000C88
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0201789C
	bl sub_020179E4
	bl sub_02017AF4
	mov r0, #0
	bl sub_02017B70
	ldr r0, _02000E18 ; =0x02101D20
	mov r1, #0
	bl sub_020CB29C
	bl sub_0202419C
	bl sub_0201378C
	bl sub_02000E3C
	bl sub_02002B7C
	mov r0, #0
	mov r1, #3
	bl sub_02002BB8
	mov r0, #1
	mov r1, #3
	bl sub_02002BB8
	mov r0, #3
	add r1, r0, #0
	bl sub_02002BB8
	mov r1, #0
	ldr r0, _02000E1C ; =0x02101D20
	mvn r1, r1
	str r1, [r0, #0x18]
	bl sub_020244AC
	ldr r1, _02000E1C ; =0x02101D20
	str r0, [r1, #0x20]
	bl sub_0202CC98
	add r4, r0, #0
	ldr r0, _02000E1C ; =0x02101D20
	ldr r0, [r0, #0x20]
	bl sub_02025E44
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02003B60
	bl sub_02022844
	mov r0, #3
	bl sub_02038FFC
	cmp r0, #3
	bne _02000D08
	mov r0, #3
	mov r1, #0
	bl sub_02039A64
_02000D08:
	ldr r0, _02000E1C ; =0x02101D20
	ldr r0, [r0, #0x20]
	bl sub_020247B8
	cmp r0, #0
	bne _02000D1C
	mov r0, #0
	bl sub_0209A74C
	b _02000D5E
_02000D1C:
	ldr r0, _02000E20 ; =0x027FFC20
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02000D2A
	cmp r0, #1
	beq _02000D3A
	b _02000D5A
_02000D2A:
	ldr r0, _02000E1C ; =0x02101D20
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r0, _02000E24 ; =0x0000004D
	ldr r1, _02000E28 ; =0x021D788C
	bl sub_02000EC4
	b _02000D5E
_02000D3A:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r0, _02000E1C ; =0x02101D20
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r0, _02000E2C ; =0x00000039
	ldr r1, _02000E30 ; =0x021D0F70
	bl sub_02000EC4
	b _02000D5E
_02000D5A:
	bl sub_02022974
_02000D5E:
	ldr r0, _02000E34 ; =0x021BF67C
	mov r1, #1
	str r1, [r0, #0x6c]
	mov r1, #0
	str r1, [r0, #0x30]
	bl sub_02001028
	bl sub_0200AB84
	bl sub_02017428
	mov r1, #0
	ldr r0, _02000E1C ; =0x02101D20
	mov r7, #0xc3
	ldr r6, _02000E38 ; =0x021BF6DC
	ldr r4, _02000E34 ; =0x021BF67C
	str r1, [r0, #4]
	add r5, r1, #0
	lsl r7, r7, #2
_02000D84:
	bl sub_02000F30
	bl sub_0200106C
	bl sub_02017B9C
	mov r0, #0xc3
	ldr r1, [r4, #0x38]
	lsl r0, r0, #2
	and r0, r1
	cmp r0, r7
	bne _02000DA8
	ldrb r0, [r6, #8]
	cmp r0, #0
	bne _02000DA8
	mov r0, #0
	bl sub_02000F60
_02000DA8:
	bl sub_020349EC
	cmp r0, #0
	beq _02000DD8
	bl sub_02000F30
	bl sub_02000E54
	ldr r0, [r4, #0x18]
	bl sub_0201CDD4
	ldr r0, [r4, #0x24]
	bl sub_0201CDD4
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _02000DD8
	mov r0, #1
	add r1, r0, #0
	bl sub_020C12B4
	ldr r0, [r4, #0x2c]
	add r0, r0, #1
	str r0, [r4, #0x2c]
_02000DD8:
	bl sub_020137C4
	bl sub_02017458
	bl sub_020241CC
	ldr r0, [r4, #0x24]
	bl sub_0201CDD4
	mov r0, #1
	add r1, r0, #0
	bl sub_020C12B4
	ldr r0, [r4, #0x2c]
	add r0, r0, #1
	str r0, [r4, #0x2c]
	str r5, [r4, #0x30]
	bl sub_0200ABF0
	bl sub_0200F27C
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02000E0C
	ldr r0, [r4, #4]
	blx r1
_02000E0C:
	bl sub_02003BD8
	ldr r0, [r4, #0x20]
	bl sub_0201CDD4
	b _02000D84
	; .align 2, 0
_02000E18: .word 0x02101D20
_02000E1C: .word 0x02101D20
_02000E20: .word 0x027FFC20
_02000E24: .word 0x0000004D
_02000E28: .word 0x021D788C
_02000E2C: .word 0x00000039
_02000E30: .word 0x021D0F70
_02000E34: .word 0x021BF67C
_02000E38: .word 0x021BF6DC
	thumb_func_end sub_02000C88

	thumb_func_start sub_02000E3C
sub_02000E3C: ; 0x02000E3C
	mov r2, #0
	ldr r0, _02000E50 ; =0x02101D20
	mvn r2, r2
	str r2, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	nop
_02000E50: .word 0x02101D20
	thumb_func_end sub_02000E3C

	thumb_func_start sub_02000E54
sub_02000E54: ; 0x02000E54
	push {r3, lr}
	ldr r0, _02000EBC ; =0x02101D20
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _02000E92
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _02000EB8
	mov r1, #0
	ldr r0, [r0, #0x10]
	mvn r1, r1
	cmp r0, r1
	beq _02000E74
	mov r1, #0
	bl sub_02006590
_02000E74:
	ldr r0, _02000EBC ; =0x02101D20
	mov r2, #0
	ldr r1, [r0, #0x10]
	str r1, [r0, #8]
	ldr r0, [r0, #0x14]
	ldr r1, _02000EC0 ; =0x02101D38
	bl sub_020067E8
	ldr r1, _02000EBC ; =0x02101D20
	str r0, [r1, #0xc]
	mov r0, #0
	mvn r0, r0
	str r0, [r1, #0x10]
	mov r0, #0
	str r0, [r1, #0x14]
_02000E92:
	ldr r0, _02000EBC ; =0x02101D20
	ldr r0, [r0, #0xc]
	bl sub_02006844
	cmp r0, #0
	beq _02000EB8
	ldr r0, _02000EBC ; =0x02101D20
	ldr r0, [r0, #0xc]
	bl sub_02006814
	ldr r0, _02000EBC ; =0x02101D20
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	sub r1, r1, #1
	cmp r0, r1
	beq _02000EB8
	bl sub_02006514
_02000EB8:
	pop {r3, pc}
	nop
_02000EBC: .word 0x02101D20
_02000EC0: .word 0x02101D38
	thumb_func_end sub_02000E54

	thumb_func_start sub_02000EC4
sub_02000EC4: ; 0x02000EC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02000EE0 ; =0x02101D20
	add r4, r1, #0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _02000ED6
	bl sub_02022974
_02000ED6:
	ldr r0, _02000EE0 ; =0x02101D20
	str r5, [r0, #0x10]
	str r4, [r0, #0x14]
	pop {r3, r4, r5, pc}
	nop
_02000EE0: .word 0x02101D20
	thumb_func_end sub_02000EC4

	thumb_func_start sub_02000EE4
sub_02000EE4: ; 0x02000EE4
	push {r3, lr}
	bl sub_020349EC
	mov r0, #1
	add r1, r0, #0
	bl sub_020C12B4
	ldr r0, _02000F0C ; =0x021BF67C
	ldr r1, [r0, #0x2c]
	add r1, r1, #1
	str r1, [r0, #0x2c]
	mov r1, #0
	str r1, [r0, #0x30]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02000F08
	ldr r0, [r0, #4]
	blx r1
_02000F08:
	pop {r3, pc}
	nop
_02000F0C: .word 0x021BF67C
	thumb_func_end sub_02000EE4

	thumb_func_start sub_02000F10
sub_02000F10: ; 0x02000F10
	push {r4, lr}
	add r4, r0, #0
	bl sub_02038AB8
	cmp r0, #0
	beq _02000F2A
	bl sub_020CD050
	cmp r0, #1
	bne _02000F2A
	add r0, r4, #0
	bl sub_020C3EE4
_02000F2A:
	bl sub_02000EE4
	pop {r4, pc}
	thumb_func_end sub_02000F10

	thumb_func_start sub_02000F30
sub_02000F30: ; 0x02000F30
	push {r3, lr}
	bl sub_020389D8
	add r1, r0, #0
	cmp r1, #1
	beq _02000F46
	cmp r1, #2
	beq _02000F4E
	cmp r1, #3
	beq _02000F56
	pop {r3, pc}
_02000F46:
	mov r0, #1
	bl sub_02000F94
	pop {r3, pc}
_02000F4E:
	mov r0, #0
	bl sub_02000F94
	pop {r3, pc}
_02000F56:
	mov r0, #1
	bl sub_02000F94
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02000F30

	thumb_func_start sub_02000F60
sub_02000F60: ; 0x02000F60
	push {r4, lr}
	ldr r1, _02000F90 ; =0x00007FFF
	add r4, r0, #0
	mov r0, #0
	bl sub_0200F344
	ldr r1, _02000F90 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	bl sub_02037DB0
	cmp r0, #0
	beq _02000F84
	bl sub_020245A4
	bl sub_02024850
_02000F84:
	bl sub_0200106C
	add r0, r4, #0
	bl sub_02000F10
	b _02000F84
	; .align 2, 0
_02000F90: .word 0x00007FFF
	thumb_func_end sub_02000F60

	thumb_func_start sub_02000F94
sub_02000F94: ; 0x02000F94
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	cmp r1, #3
	bne _02000FA8
	mov r0, #0
	mov r1, #3
	add r2, r0, #0
	bl sub_02039834
	b _02000FEA
_02000FA8:
	cmp r7, #0
	bne _02000FCC
	bl sub_020389B8
	cmp r0, #1
	bne _02000FC0
	mov r0, #0
	mov r1, #6
	add r2, r0, #0
	bl sub_02039834
	b _02000FEA
_02000FC0:
	mov r0, #0
	mov r1, #2
	add r2, r0, #0
	bl sub_02039834
	b _02000FEA
_02000FCC:
	bl sub_020389B8
	cmp r0, #1
	bne _02000FE0
	mov r0, #0
	mov r1, #5
	add r2, r0, #0
	bl sub_02039834
	b _02000FEA
_02000FE0:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02039834
_02000FEA:
	bl sub_02037DB0
	bl sub_02000EE4
	bl sub_02003BD8
	ldr r4, _02001024 ; =0x021BF67C
	mov r5, #0
	mov r6, #1
_02000FFC:
	bl sub_0200106C
	bl sub_02017B9C
	cmp r5, #0x1e
	blt _0200100E
	ldr r0, [r4, #0x48]
	tst r0, r6
	bne _0200101A
_0200100E:
	bl sub_02000EE4
	cmp r5, #0x1e
	bge _02000FFC
	add r5, r5, #1
	b _02000FFC
_0200101A:
	add r0, r7, #0
	bl sub_02000F60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02001024: .word 0x021BF67C
	thumb_func_end sub_02000F94

	thumb_func_start sub_02001028
sub_02001028: ; 0x02001028
	push {r4, r5, lr}
	sub sp, #0x1c
	add r0, sp, #0xc
	add r1, sp, #0
	bl sub_0201384C
	ldr r0, _02001068 ; =0x021BF67C
	ldr r3, [sp, #0x10]
	ldr r4, [r0, #0x2c]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r5, [sp, #0x14]
	add r0, r1, r0
	lsl r2, r0, #0x18
	ldr r0, [sp]
	lsl r3, r3, #8
	lsl r1, r0, #0x10
	mul r3, r5
	ldr r0, [sp, #0xc]
	lsl r3, r3, #0x10
	add r0, r0, r3
	add r0, r1, r0
	add r5, r2, r0
	add r0, r4, r5
	bl sub_0201D318
	add r0, r4, r5
	bl sub_0201D2DC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_02001068: .word 0x021BF67C
	thumb_func_end sub_02001028

	thumb_func_start sub_0200106C
sub_0200106C: ; 0x0200106C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _02001120 ; =0x027FFFA8
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _02001102
	ldr r0, _02001124 ; =0x021BF6DC
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _020010E8
	bl sub_0201E630
	bl sub_020D09B8
	cmp r0, #1
	bne _02001098
	ldr r0, _02001128 ; =0x02101D20
	mov r1, #1
	str r1, [r0, #4]
_02001098:
	ldr r6, _02001128 ; =0x02101D20
	mov r0, #0xc
	ldr r1, [r6, #4]
	ldr r4, _02001120 ; =0x027FFFA8
	mov r2, #0x10
	add r5, r0, #0
	ldr r7, _02001124 ; =0x021BF6DC
	orr r5, r2
_020010A8:
	ldrb r2, [r7, #6]
	mov r0, #0xc
	cmp r2, #0
	beq _020010B6
	cmp r1, #0
	bne _020010B6
	add r0, r5, #0
_020010B6:
	mov r1, #0
	add r2, r1, #0
	bl sub_020CB324
	bl sub_020CD9CC
	cmp r0, #0
	beq _020010CC
	bl sub_020CB218
	b _020010E0
_020010CC:
	ldrh r1, [r4]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _020010E0
	mov r0, #1
	str r0, [r6, #4]
	add r1, r0, #0
	b _020010A8
_020010E0:
	bl sub_0201E5FC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020010E8:
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020CB29C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0200111A
	mov r0, #2
	mov r1, #0
	bl sub_020CB144
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02001102:
	add r0, sp, #4
	add r1, sp, #0
	bl sub_020CB29C
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0200111A
	ldr r1, _02001128 ; =0x02101D20
	mov r0, #2
	ldr r1, [r1, #0]
	bl sub_020CB144
_0200111A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02001120: .word 0x027FFFA8
_02001124: .word 0x021BF6DC
_02001128: .word 0x02101D20
	thumb_func_end sub_0200106C

	thumb_func_start sub_0200112C
sub_0200112C: ; 0x0200112C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	mov r1, #0x38
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	add r3, r5, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	bl sub_020149F0
	str r0, [r4, #0x28]
	strh r6, [r4, #0x2c]
	add r1, r4, #0
	strh r7, [r4, #0x2e]
	mov r0, #0
	add r1, #0x30
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x31
	strb r0, [r1]
	add r1, r4, #0
	mov r2, #0xff
	add r1, #0x32
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x33
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x34
	strb r0, [r1]
	add r0, r4, #0
	ldrb r1, [r4, #0x17]
	add r0, #0x20
	ldrb r2, [r0]
	lsl r1, r1, #0x18
	mov r0, #0xf
	lsr r3, r1, #0x1c
	mov r1, #0xf
	bic r2, r0
	and r3, r1
	orr r3, r2
	add r2, r4, #0
	add r2, #0x20
	strb r3, [r2]
	add r2, r4, #0
	add r2, #0x20
	ldrb r2, [r2]
	mov r3, #0xf0
	bic r2, r3
	ldrb r3, [r4, #0x18]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1c
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x18
	orr r3, r2
	add r2, r4, #0
	add r2, #0x20
	strb r3, [r2]
	add r2, r4, #0
	add r2, #0x21
	ldrb r2, [r2]
	bic r2, r0
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r1, #0x3f
	bic r0, r1
	ldrh r1, [r4, #0x1a]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x3f
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x22
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	mov r1, #0x7f
	bic r0, r1
	ldrh r1, [r4, #0x1a]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1a
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x24
	ldrb r1, [r0]
	mov r0, #0x80
	bic r1, r0
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	ldrh r1, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	cmp r1, r0
	bhs _02001230
	strh r1, [r4, #0x12]
_02001230:
	ldrb r2, [r4, #0x18]
	ldr r0, [r4, #0x28]
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	ldrb r1, [r4, #0x17]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #8
	lsr r2, r2, #0x10
	orr r1, r2
	orr r1, r3
	bl sub_02014A40
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0201ADA4
	ldrh r1, [r4, #0x2c]
	ldrh r3, [r4, #0x12]
	add r0, r4, #0
	mov r2, #0
	bl sub_02001688
	add r0, r4, #0
	bl sub_02001720
	add r0, r4, #0
	mov r1, #1
	bl sub_02001AD8
	ldr r0, [r5, #0xc]
	bl sub_0201A954
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200112C

	thumb_func_start sub_02001288
sub_02001288: ; 0x02001288
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r6, _02001380 ; =0x021BF67C
	mov r3, #0
	add r1, #0x33
	strb r3, [r1]
	ldr r1, [r6, #0x48]
	mov r2, #1
	add r5, r1, #0
	tst r5, r2
	beq _020012B0
	ldrh r1, [r4, #0x2c]
	ldrh r0, [r4, #0x2e]
	ldr r2, [r4, #0]
	add r0, r1, r0
	lsl r0, r0, #3
	add r0, r2, r0
	ldr r0, [r0, #4]
	pop {r4, r5, r6, pc}
_020012B0:
	mov r5, #2
	tst r1, r5
	beq _020012BA
	sub r0, r5, #4
	pop {r4, r5, r6, pc}
_020012BA:
	ldr r5, [r6, #0x4c]
	mov r1, #0x40
	tst r1, r5
	beq _020012D8
	add r1, r2, #0
	bl sub_02001A18
	cmp r0, #0
	bne _020012D2
	mov r0, #1
	add r4, #0x33
	strb r0, [r4]
_020012D2:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_020012D8:
	mov r1, #0x80
	add r3, r5, #0
	tst r3, r1
	beq _020012F8
	add r1, r2, #0
	add r3, r2, #0
	bl sub_02001A18
	cmp r0, #0
	bne _020012F2
	mov r0, #2
	add r4, #0x33
	strb r0, [r4]
_020012F2:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_020012F8:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1e
	beq _02001308
	cmp r0, #1
	beq _0200130E
	cmp r0, #2
	beq _02001320
_02001308:
	mov r0, #0
	add r1, r0, #0
	b _02001330
_0200130E:
	mov r0, #0x20
	mov r1, #0x10
	and r0, r5
	and r1, r5
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	b _02001330
_02001320:
	lsl r0, r1, #2
	add r1, #0x80
	and r0, r5
	and r1, r5
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
_02001330:
	cmp r0, #0
	beq _02001354
	ldrh r2, [r4, #0x12]
	add r0, r4, #0
	mov r1, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02001A18
	cmp r0, #0
	bne _0200134E
	mov r0, #3
	add r4, #0x33
	strb r0, [r4]
_0200134E:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001354:
	cmp r1, #0
	beq _02001378
	ldrh r2, [r4, #0x12]
	mov r1, #1
	add r0, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r3, r1, #0
	bl sub_02001A18
	cmp r0, #0
	bne _02001372
	mov r0, #4
	add r4, #0x33
	strb r0, [r4]
_02001372:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001378:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_02001380: .word 0x021BF67C
	thumb_func_end sub_02001288

	thumb_func_start sub_02001384
sub_02001384: ; 0x02001384
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _02001390
	ldrh r0, [r4, #0x2c]
	strh r0, [r1]
_02001390:
	cmp r2, #0
	beq _02001398
	ldrh r0, [r4, #0x2e]
	strh r0, [r2]
_02001398:
	ldr r0, [r4, #0x28]
	bl sub_02014A20
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	thumb_func_end sub_02001384

	thumb_func_start sub_020013AC
sub_020013AC: ; 0x020013AC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0201ADA4
	ldrh r1, [r4, #0x2c]
	ldrh r3, [r4, #0x12]
	add r0, r4, #0
	mov r2, #0
	bl sub_02001688
	add r0, r4, #0
	bl sub_02001720
	ldr r0, [r4, #0xc]
	bl sub_0201A954
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020013AC

	thumb_func_start sub_020013D8
sub_020013D8: ; 0x020013D8
	push {r4, r5}
	ldrb r5, [r0, #0x17]
	mov r4, #0xf0
	lsl r1, r1, #0x1c
	bic r5, r4
	lsr r1, r1, #0x18
	orr r1, r5
	strb r1, [r0, #0x17]
	ldrb r5, [r0, #0x18]
	mov r1, #0xf
	bic r5, r1
	mov r1, #0xf
	and r1, r2
	orr r1, r5
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x18]
	lsl r1, r3, #0x1c
	lsr r1, r1, #0x18
	bic r2, r4
	orr r1, r2
	strb r1, [r0, #0x18]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020013D8

	thumb_func_start sub_02001408
sub_02001408: ; 0x02001408
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	beq _02001422
	add r5, r4, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
_02001422:
	strh r2, [r4, #0x2c]
	add r0, r4, #0
	strh r3, [r4, #0x2e]
	mov r3, #0
	add r0, #0x30
	strb r3, [r0]
	add r0, r4, #0
	add r0, #0x31
	add r1, sp, #0
	strb r3, [r0]
	ldrh r0, [r1, #0x14]
	cmp r0, #0x40
	bne _0200144C
	ldrh r1, [r1, #0x10]
	add r0, r4, #0
	mov r2, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02001A18
	b _02001460
_0200144C:
	cmp r0, #0x80
	bne _02001460
	ldrh r1, [r1, #0x10]
	mov r2, #1
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02001A18
_02001460:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0200146A
	ldrh r0, [r4, #0x2c]
	strh r0, [r1]
_0200146A:
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _02001474
	ldrh r0, [r4, #0x2e]
	strh r0, [r1]
_02001474:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02001408

	thumb_func_start sub_0200147C
sub_0200147C: ; 0x0200147C
	push {r3, r4, r5, r6}
	add r4, r0, #0
	add r4, #0x20
	ldrb r6, [r4]
	mov r4, #0xf
	mov r5, #0xf
	bic r6, r4
	and r1, r5
	orr r6, r1
	add r1, r0, #0
	add r1, #0x20
	strb r6, [r1]
	add r1, r0, #0
	add r1, #0x20
	lsl r2, r2, #0x1c
	ldrb r1, [r1]
	mov r6, #0xf0
	lsr r2, r2, #0x18
	bic r1, r6
	orr r2, r1
	add r1, r0, #0
	add r1, #0x20
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x21
	ldrb r2, [r1]
	add r1, r3, #0
	and r1, r5
	bic r2, r4
	orr r2, r1
	add r1, r0, #0
	add r1, #0x21
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x24
	ldrb r2, [r1]
	mov r1, #0x80
	add r0, #0x24
	orr r1, r2
	strb r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0200147C

	thumb_func_start sub_020014D0
sub_020014D0: ; 0x020014D0
	ldrh r2, [r0, #0x2c]
	ldrh r0, [r0, #0x2e]
	add r0, r2, r0
	strh r0, [r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020014D0

	thumb_func_start sub_020014DC
sub_020014DC: ; 0x020014DC
	cmp r1, #0
	beq _020014E4
	ldrh r3, [r0, #0x2c]
	strh r3, [r1]
_020014E4:
	cmp r2, #0
	beq _020014EC
	ldrh r0, [r0, #0x2e]
	strh r0, [r2]
_020014EC:
	bx lr
	; .align 2, 0
	thumb_func_end sub_020014DC

	thumb_func_start sub_020014F0
sub_020014F0: ; 0x020014F0
	add r0, #0x33
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020014F0

	thumb_func_start sub_020014F8
sub_020014F8: ; 0x020014F8
	ldr r2, [r0, #0]
	lsl r0, r1, #3
	add r0, r2, r0
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020014F8

	thumb_func_start sub_02001504
sub_02001504: ; 0x02001504
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0x13
	bhi _020015C6
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02001518: ; jump table
	.short _02001540 - _02001518 - 2 ; case 0
	.short _02001544 - _02001518 - 2 ; case 1
	.short _02001548 - _02001518 - 2 ; case 2
	.short _0200154C - _02001518 - 2 ; case 3
	.short _020015C6 - _02001518 - 2 ; case 4
	.short _02001550 - _02001518 - 2 ; case 5
	.short _02001554 - _02001518 - 2 ; case 6
	.short _02001558 - _02001518 - 2 ; case 7
	.short _0200155C - _02001518 - 2 ; case 8
	.short _02001564 - _02001518 - 2 ; case 9
	.short _0200157E - _02001518 - 2 ; case 10
	.short _02001586 - _02001518 - 2 ; case 11
	.short _0200158E - _02001518 - 2 ; case 12
	.short _02001596 - _02001518 - 2 ; case 13
	.short _0200159E - _02001518 - 2 ; case 14
	.short _020015A6 - _02001518 - 2 ; case 15
	.short _020015AE - _02001518 - 2 ; case 16
	.short _020015B6 - _02001518 - 2 ; case 17
	.short _020015BE - _02001518 - 2 ; case 18
	.short _020015C2 - _02001518 - 2 ; case 19
_02001540:
	ldr r0, [r4, #4]
	pop {r4, pc}
_02001544:
	ldr r0, [r4, #8]
	pop {r4, pc}
_02001548:
	ldrh r0, [r4, #0x10]
	pop {r4, pc}
_0200154C:
	ldrh r0, [r4, #0x12]
	pop {r4, pc}
_02001550:
	ldrb r0, [r4, #0x14]
	pop {r4, pc}
_02001554:
	ldrb r0, [r4, #0x15]
	pop {r4, pc}
_02001558:
	ldrb r0, [r4, #0x16]
	pop {r4, pc}
_0200155C:
	ldrb r0, [r4, #0x17]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r4, pc}
_02001564:
	ldrh r0, [r4, #0x1a]
	mov r1, #1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02002DF8
	ldrh r1, [r4, #0x1a]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	add r0, r1, r0
	pop {r4, pc}
_0200157E:
	ldrb r0, [r4, #0x17]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r4, pc}
_02001586:
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r4, pc}
_0200158E:
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r4, pc}
_02001596:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r4, pc}
_0200159E:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1c
	pop {r4, pc}
_020015A6:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1e
	pop {r4, pc}
_020015AE:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	pop {r4, pc}
_020015B6:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	pop {r4, pc}
_020015BE:
	ldr r0, [r4, #0xc]
	pop {r4, pc}
_020015C2:
	ldr r0, [r4, #0x1c]
	pop {r4, pc}
_020015C6:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end sub_02001504

	thumb_func_start sub_020015CC
sub_020015CC: ; 0x020015CC
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_020015CC

	thumb_func_start sub_020015D0
sub_020015D0: ; 0x020015D0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #0
	beq _02001684
	add r0, #0x24
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	str r3, [sp]
	beq _02001640
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x20
	ldrb r2, [r0]
	add r3, r4, #0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r2, #0x1c
	add r2, r6, #0
	add r2, #0x21
	ldrb r2, [r2]
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r2, r5, #0
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0xc]
	add r6, #0x24
	ldrb r1, [r6]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	bl sub_0201D7E0
	add sp, #0x18
	pop {r4, r5, r6, pc}
_02001640:
	mov r0, #0xff
	str r0, [sp, #4]
	ldrb r1, [r6, #0x18]
	add r3, r4, #0
	lsl r0, r1, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldrb r0, [r6, #0x17]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #8
	lsr r1, r1, #0x10
	orr r0, r1
	orr r0, r2
	str r0, [sp, #8]
	ldrh r0, [r6, #0x1a]
	add r2, r5, #0
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldrh r1, [r6, #0x1a]
	ldr r0, [r6, #0xc]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1a
	bl sub_0201D7E0
_02001684:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020015D0

	thumb_func_start sub_02001688
sub_02001688: ; 0x02001688
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r3, [sp]
	ldrh r0, [r5, #0x1a]
	add r4, r1, #0
	mov r1, #1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r6, r2, #0
	bl sub_02002DF8
	ldrh r1, [r5, #0x1a]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	cmp r0, #0
	ble _0200171A
_020016BC:
	ldr r1, [r5, #0]
	lsl r0, r4, #3
	str r0, [sp, #8]
	add r0, r1, r0
	ldr r1, [r0, #4]
	mov r0, #2
	mvn r0, r0
	cmp r1, r0
	beq _020016D4
	ldrb r0, [r5, #0x15]
	str r0, [sp, #4]
	b _020016D8
_020016D4:
	ldrb r0, [r5, #0x14]
	str r0, [sp, #4]
_020016D8:
	ldrb r0, [r5, #0x17]
	lsl r0, r0, #0x1c
	lsr r3, r0, #0x1c
	ldr r0, [sp, #0xc]
	add r2, r0, #0
	mul r2, r6
	add r0, r3, r2
	lsl r0, r0, #0x18
	ldr r3, [r5, #8]
	lsr r7, r0, #0x18
	cmp r3, #0
	beq _020016F6
	add r0, r5, #0
	add r2, r7, #0
	blx r3
_020016F6:
	ldr r2, [r5, #0]
	ldr r1, [sp, #8]
	add r0, r5, #0
	ldr r1, [r2, r1]
	ldr r2, [sp, #4]
	add r3, r7, #0
	bl sub_020015D0
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _020016BC
_0200171A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02001688

	thumb_func_start sub_02001720
sub_02001720: ; 0x02001720
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x1a]
	mov r1, #1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02002DF8
	ldrh r1, [r4, #0x1a]
	ldrh r5, [r4, #0x2e]
	lsl r2, r1, #0x19
	lsr r2, r2, #0x1c
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldrb r0, [r4, #0x17]
	mul r3, r5
	ldrb r2, [r4, #0x16]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r0, r0, r3
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #3
	bhi _02001776
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02001766: ; jump table
	.short _0200176E - _02001766 - 2 ; case 0
	.short _02001776 - _02001766 - 2 ; case 1
	.short _02001776 - _02001766 - 2 ; case 2
	.short _02001776 - _02001766 - 2 ; case 3
_0200176E:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0xc]
	bl sub_02014A58
_02001776:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02001720

	thumb_func_start sub_02001778
sub_02001778: ; 0x02001778
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldrh r0, [r4, #0x1a]
	add r5, r1, #0
	lsl r1, r0, #0x10
	lsr r1, r1, #0x1f
	cmp r1, #3
	bhi _020017DC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02001796: ; jump table
	.short _0200179E - _02001796 - 2 ; case 0
	.short _020017DC - _02001796 - 2 ; case 1
	.short _020017DC - _02001796 - 2 ; case 2
	.short _020017DC - _02001796 - 2 ; case 3
_0200179E:
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02002DF8
	ldrh r1, [r4, #0x1a]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r0, #8
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, #0x16]
	ldrb r4, [r4, #0x17]
	lsl r1, r1, #0x1c
	mul r3, r5
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	add r3, r4, r3
	lsl r3, r3, #0x10
	lsr r1, r1, #0x1c
	lsr r3, r3, #0x10
	bl sub_0201AE78
_020017DC:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02001778

	thumb_func_start sub_020017E0
sub_020017E0: ; 0x020017E0
	push {r4, r5, r6, r7}
	ldrh r4, [r0, #0x2e]
	ldrh r3, [r0, #0x2c]
	cmp r1, #0
	ldrh r2, [r0, #0x12]
	bne _02001872
	cmp r2, #1
	bne _020017F4
	mov r1, #0
	b _0200180C
_020017F4:
	lsr r7, r2, #0x1f
	lsl r6, r2, #0x1f
	sub r6, r6, r7
	mov r5, #0x1f
	ror r6, r5
	lsr r1, r2, #1
	add r5, r7, r6
	add r1, r1, r5
	sub r1, r2, r1
	sub r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
_0200180C:
	cmp r3, #0
	bne _02001840
	cmp r4, #0
	beq _0200183A
	ldr r2, [r0, #0]
	lsl r1, r3, #3
	mov r3, #2
	add r1, r2, r1
	mvn r3, r3
_0200181E:
	sub r2, r4, #1
	lsl r2, r2, #0x10
	lsr r4, r2, #0x10
	lsl r2, r4, #3
	add r2, r1, r2
	ldr r2, [r2, #4]
	cmp r2, r3
	beq _02001836
	strh r4, [r0, #0x2e]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_02001836:
	cmp r4, #0
	bne _0200181E
_0200183A:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02001840:
	cmp r4, r1
	bls _0200186A
	ldr r5, [r0, #0]
	lsl r2, r3, #3
	add r2, r5, r2
	mov r5, #2
	mvn r5, r5
_0200184E:
	sub r4, r4, #1
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	lsl r6, r4, #3
	add r6, r2, r6
	ldr r6, [r6, #4]
	cmp r6, r5
	beq _02001866
	strh r4, [r0, #0x2e]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_02001866:
	cmp r4, r1
	bhi _0200184E
_0200186A:
	strh r1, [r0, #0x2e]
	sub r1, r3, #1
	strh r1, [r0, #0x2c]
	b _020018F8
_02001872:
	cmp r2, #1
	bne _0200187A
	mov r5, #0
	b _0200188E
_0200187A:
	lsr r7, r2, #0x1f
	lsl r6, r2, #0x1f
	sub r6, r6, r7
	mov r5, #0x1f
	ror r6, r5
	lsr r1, r2, #1
	add r5, r7, r6
	add r1, r1, r5
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
_0200188E:
	ldrh r1, [r0, #0x10]
	sub r1, r1, r2
	cmp r3, r1
	bne _020018C8
	sub r2, r2, #1
	cmp r4, r2
	bge _020018C2
	ldr r5, [r0, #0]
	lsl r1, r3, #3
	add r1, r5, r1
	mov r5, #2
	mvn r5, r5
_020018A6:
	add r3, r4, #1
	lsl r3, r3, #0x10
	lsr r4, r3, #0x10
	lsl r3, r4, #3
	add r3, r1, r3
	ldr r3, [r3, #4]
	cmp r3, r5
	beq _020018BE
	strh r4, [r0, #0x2e]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_020018BE:
	cmp r4, r2
	blt _020018A6
_020018C2:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_020018C8:
	cmp r4, r5
	bhs _020018F2
	ldr r2, [r0, #0]
	lsl r1, r3, #3
	mov r6, #2
	add r1, r2, r1
	mvn r6, r6
_020018D6:
	add r2, r4, #1
	lsl r2, r2, #0x10
	lsr r4, r2, #0x10
	lsl r2, r4, #3
	add r2, r1, r2
	ldr r2, [r2, #4]
	cmp r2, r6
	beq _020018EE
	strh r4, [r0, #0x2e]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_020018EE:
	cmp r4, r5
	blo _020018D6
_020018F2:
	strh r5, [r0, #0x2e]
	add r1, r3, #1
	strh r1, [r0, #0x2c]
_020018F8:
	mov r0, #2
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020017E0

	thumb_func_start sub_02001900
sub_02001900: ; 0x02001900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5, #0x12]
	add r4, r1, #0
	add r7, r2, #0
	cmp r4, r0
	blt _0200192C
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0201ADA4
	ldrh r1, [r5, #0x2c]
	ldrh r3, [r5, #0x12]
	add r0, r5, #0
	mov r2, #0
	bl sub_02001688
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0200192C:
	ldrh r0, [r5, #0x1a]
	mov r1, #1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1a
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02002DF8
	ldrh r1, [r5, #0x1a]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1c
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r7, #0
	ldrb r0, [r5, #0x18]
	bne _020019BA
	lsl r0, r0, #0x1c
	lsr r7, r0, #0x1c
	add r2, r4, #0
	lsl r3, r7, #4
	mul r2, r6
	orr r3, r7
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #0xc]
	mov r1, #1
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201C04C
	ldrh r1, [r5, #0x2c]
	add r0, r5, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_02001688
	ldrb r0, [r5, #0x17]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1c
	ldrh r0, [r5, #0x12]
	add r1, r0, #0
	mul r1, r6
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #0xc]
	bl sub_0201C294
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0201C298
	lsl r0, r0, #3
	lsl r1, r4, #0x13
	sub r0, r0, r6
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	str r1, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0xc]
	mov r2, #0
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r3, r6, #0
	bl sub_0201AE78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020019BA:
	lsl r0, r0, #0x1c
	lsr r3, r0, #0x1c
	add r2, r4, #0
	mul r2, r6
	lsl r6, r3, #4
	orr r3, r6
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #0xc]
	mov r1, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201C04C
	ldrh r0, [r5, #0x12]
	ldrh r1, [r5, #0x2c]
	add r3, r4, #0
	sub r2, r0, r4
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02001688
	ldr r0, [r5, #0xc]
	bl sub_0201C294
	lsl r0, r0, #0x13
	lsr r0, r0, #0x10
	str r0, [sp]
	ldrb r0, [r5, #0x17]
	mov r2, #0
	add r3, r2, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	str r0, [sp, #4]
	ldrb r1, [r5, #0x18]
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl sub_0201AE78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02001900

	thumb_func_start sub_02001A18
sub_02001A18: ; 0x02001A18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	add r4, r0, #0
	str r3, [sp, #8]
	ldrh r0, [r4, #0x2e]
	mov r6, #0
	add r5, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r7, r6, #0
	cmp r0, #0
	bls _02001A6A
_02001A34:
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_020017E0
	orr r5, r0
	cmp r0, #2
	bne _02001A5E
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldrh r1, [r4, #0x2c]
	ldrh r0, [r4, #0x2e]
	ldr r2, [r4, #0]
	add r0, r1, r0
	lsl r0, r0, #3
	add r0, r2, r0
	ldr r1, [r0, #4]
	mov r0, #2
	mvn r0, r0
	cmp r1, r0
	beq _02001A34
_02001A5E:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #4]
	cmp r7, r0
	blo _02001A34
_02001A6A:
	ldr r0, [sp]
	cmp r0, #0
	beq _02001AD2
	cmp r5, #3
	bhi _02001A88
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02001A80: ; jump table
	.short _02001A88 - _02001A80 - 2 ; case 0
	.short _02001A8E - _02001A80 - 2 ; case 1
	.short _02001AAC - _02001A80 - 2 ; case 2
	.short _02001AAC - _02001A80 - 2 ; case 3
_02001A88:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02001A8E:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02001778
	add r0, r4, #0
	bl sub_02001720
	add r0, r4, #0
	mov r1, #0
	bl sub_02001AD8
	ldr r0, [r4, #0xc]
	bl sub_0201A954
	b _02001AD2
_02001AAC:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02001778
	ldr r2, [sp, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02001900
	add r0, r4, #0
	bl sub_02001720
	add r0, r4, #0
	mov r1, #0
	bl sub_02001AD8
	ldr r0, [r4, #0xc]
	bl sub_0201A954
_02001AD2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02001A18

	thumb_func_start sub_02001AD8
sub_02001AD8: ; 0x02001AD8
	push {r3, r4, r5, lr}
	ldr r3, [r0, #4]
	add r2, r1, #0
	cmp r3, #0
	beq _02001AF2
	ldrh r5, [r0, #0x2c]
	ldrh r4, [r0, #0x2e]
	ldr r1, [r0, #0]
	add r4, r5, r4
	lsl r4, r4, #3
	add r1, r1, r4
	ldr r1, [r1, #4]
	blx r3
_02001AF2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02001AD8

	thumb_func_start sub_02001AF4
sub_02001AF4: ; 0x02001AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r3, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r6, r1, #0
	mov r1, #0x20
	add r7, r2, #0
	str r0, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	add r3, r5, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #4]
	bl sub_020149F0
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x10]
	ldr r0, [sp]
	strb r0, [r4, #0x15]
	add r0, r4, #0
	bl sub_02001F1C
	strb r0, [r4, #0x16]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	mov r1, #0
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x17]
	strb r7, [r4, #0x18]
	ldrb r0, [r5, #8]
	bl sub_02002DF8
	add r6, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #2
	bl sub_02002DF8
	add r0, r6, r0
	strb r0, [r4, #0x19]
	ldrb r0, [r5, #8]
	mov r1, #1
	bl sub_02002DF8
	add r6, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #3
	bl sub_02002DF8
	add r0, r6, r0
	strb r0, [r4, #0x1a]
	add r0, r4, #0
	bl sub_02001F5C
	add r0, r4, #0
	bl sub_02001FE8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02001AF4

	thumb_func_start sub_02001B7C
sub_02001B7C: ; 0x02001B7C
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02001AF4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0201A954
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02001B7C

	thumb_func_start sub_02001B9C
sub_02001B9C: ; 0x02001B9C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #8]
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	bl sub_02002DF8
	add r1, r0, #0
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_02001B7C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02001B9C

	thumb_func_start sub_02001BC4
sub_02001BC4: ; 0x02001BC4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _02001BD0
	ldrb r0, [r4, #0x15]
	strb r0, [r1]
_02001BD0:
	ldr r0, [r4, #0xc]
	bl sub_02014A20
	ldrb r0, [r4, #0x1c]
	add r1, r4, #0
	bl sub_02018238
	pop {r4, pc}
	thumb_func_end sub_02001BC4

	thumb_func_start sub_02001BE0
sub_02001BE0: ; 0x02001BE0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r1, #0
	ldr r2, _02001C8C ; =0x021BF67C
	strb r1, [r4, #0x1b]
	ldr r2, [r2, #0x48]
	mov r5, #1
	add r3, r2, #0
	tst r3, r5
	beq _02001C06
	ldr r0, _02001C90 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	ldr r1, [r4, #0]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_02001C06:
	ldr r3, [r4, #0x10]
	tst r3, r2
	beq _02001C16
	ldr r0, _02001C90 ; =0x000005DC
	bl sub_02005748
	sub r0, r5, #3
	pop {r3, r4, r5, pc}
_02001C16:
	mov r3, #0x40
	tst r3, r2
	beq _02001C30
	ldr r2, _02001C90 ; =0x000005DC
	bl sub_02001DCC
	cmp r0, #1
	bne _02001C2A
	add r0, r5, #0
	strb r0, [r4, #0x1b]
_02001C2A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C30:
	mov r1, #0x80
	tst r1, r2
	beq _02001C4C
	ldr r2, _02001C90 ; =0x000005DC
	add r1, r5, #0
	bl sub_02001DCC
	cmp r0, #1
	bne _02001C46
	mov r0, #2
	strb r0, [r4, #0x1b]
_02001C46:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C4C:
	mov r1, #0x20
	tst r1, r2
	beq _02001C68
	ldr r2, _02001C90 ; =0x000005DC
	mov r1, #2
	bl sub_02001DCC
	cmp r0, #1
	bne _02001C62
	mov r0, #3
	strb r0, [r4, #0x1b]
_02001C62:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C68:
	mov r1, #0x10
	tst r2, r1
	beq _02001C84
	ldr r2, _02001C90 ; =0x000005DC
	mov r1, #3
	bl sub_02001DCC
	cmp r0, #1
	bne _02001C7E
	mov r0, #4
	strb r0, [r4, #0x1b]
_02001C7E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02001C84:
	sub r1, #0x11
	add r0, r1, #0
	pop {r3, r4, r5, pc}
	nop
_02001C8C: .word 0x021BF67C
_02001C90: .word 0x000005DC
	thumb_func_end sub_02001BE0

	thumb_func_start sub_02001C94
sub_02001C94: ; 0x02001C94
	push {r4, r5, r6, lr}
	add r2, r1, #0
	add r4, r0, #0
	mov r1, #0
	ldr r3, _02001D3C ; =0x021BF67C
	strb r1, [r4, #0x1b]
	ldr r5, [r3, #0x48]
	mov r3, #1
	add r6, r5, #0
	tst r6, r3
	beq _02001CBC
	ldr r0, _02001D40 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	ldr r1, [r4, #0]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r4, r5, r6, pc}
_02001CBC:
	ldr r6, [r4, #0x10]
	tst r6, r5
	beq _02001CCE
	ldr r0, _02001D40 ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001CCE:
	mov r6, #0x40
	tst r6, r5
	beq _02001CE6
	bl sub_02001DCC
	cmp r0, #1
	bne _02001CE0
	mov r0, #1
	strb r0, [r4, #0x1b]
_02001CE0:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001CE6:
	mov r1, #0x80
	tst r1, r5
	beq _02001D00
	add r1, r3, #0
	bl sub_02001DCC
	cmp r0, #1
	bne _02001CFA
	mov r0, #2
	strb r0, [r4, #0x1b]
_02001CFA:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001D00:
	mov r1, #0x20
	tst r1, r5
	beq _02001D1A
	mov r1, #2
	bl sub_02001DCC
	cmp r0, #1
	bne _02001D14
	mov r0, #3
	strb r0, [r4, #0x1b]
_02001D14:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001D1A:
	mov r1, #0x10
	add r3, r5, #0
	tst r3, r1
	beq _02001D36
	mov r1, #3
	bl sub_02001DCC
	cmp r0, #1
	bne _02001D30
	mov r0, #4
	strb r0, [r4, #0x1b]
_02001D30:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02001D36:
	sub r1, #0x11
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02001D3C: .word 0x021BF67C
_02001D40: .word 0x000005DC
	thumb_func_end sub_02001C94

	thumb_func_start sub_02001D44
sub_02001D44: ; 0x02001D44
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #5
	bhi _02001DBA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02001D58: ; jump table
	.short _02001D64 - _02001D58 - 2 ; case 0
	.short _02001D76 - _02001D58 - 2 ; case 1
	.short _02001D82 - _02001D58 - 2 ; case 2
	.short _02001D90 - _02001D58 - 2 ; case 3
	.short _02001D9E - _02001D58 - 2 ; case 4
	.short _02001DAC - _02001D58 - 2 ; case 5
_02001D64:
	ldr r0, _02001DC0 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	ldr r1, [r4, #0]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r4, pc}
_02001D76:
	ldr r0, _02001DC0 ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	mvn r0, r0
	pop {r4, pc}
_02001D82:
	ldr r2, _02001DC0 ; =0x000005DC
	mov r1, #0
	bl sub_02001DCC
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02001D90:
	ldr r2, _02001DC0 ; =0x000005DC
	mov r1, #1
	bl sub_02001DCC
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02001D9E:
	ldr r2, _02001DC0 ; =0x000005DC
	mov r1, #2
	bl sub_02001DCC
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02001DAC:
	ldr r2, _02001DC0 ; =0x000005DC
	mov r1, #3
	bl sub_02001DCC
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_02001DBA:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	; .align 2, 0
_02001DC0: .word 0x000005DC
	thumb_func_end sub_02001D44

	thumb_func_start sub_02001DC4
sub_02001DC4: ; 0x02001DC4
	ldrb r0, [r0, #0x15]
	bx lr
	thumb_func_end sub_02001DC4

	thumb_func_start sub_02001DC8
sub_02001DC8: ; 0x02001DC8
	ldrb r0, [r0, #0x1b]
	bx lr
	thumb_func_end sub_02001DC8

	thumb_func_start sub_02001DCC
sub_02001DCC: ; 0x02001DCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r2, #0
	ldrb r4, [r5, #0x15]
	bl sub_02001E24
	cmp r0, #0
	bne _02001DE4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02001DE4:
	ldrb r0, [r5, #8]
	mov r1, #6
	bl sub_02002DF8
	add r1, sp, #8
	add r7, r0, #0
	add r0, r5, #0
	add r1, #1
	add r2, sp, #8
	add r3, r4, #0
	bl sub_02002018
	mov r0, #8
	str r0, [sp]
	ldrb r0, [r5, #0x1a]
	add r3, sp, #8
	add r1, r7, #0
	str r0, [sp, #4]
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r5, #4]
	bl sub_0201AE78
	add r0, r5, #0
	bl sub_02001FE8
	add r0, r6, #0
	bl sub_02005748
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02001DCC

	thumb_func_start sub_02001E24
sub_02001E24: ; 0x02001E24
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _02001E62
	ldrb r6, [r5, #0xa]
	cmp r6, #1
	bhi _02001E36
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001E36:
	ldrb r4, [r5, #0x15]
	add r1, r6, #0
	add r0, r4, #0
	bl sub_020E1F6C
	cmp r1, #0
	bne _02001E5A
	ldrb r0, [r5, #0xb]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _02001E50
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001E50:
	sub r0, r6, #1
	add r0, r4, r0
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001E5A:
	sub r0, r4, #1
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001E62:
	cmp r1, #1
	bne _02001E9A
	ldrb r1, [r5, #0xa]
	cmp r1, #1
	bhi _02001E70
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001E70:
	ldrb r6, [r5, #0x15]
	sub r4, r1, #1
	add r0, r6, #0
	bl sub_020E1F6C
	cmp r4, r1
	bne _02001E92
	ldrb r0, [r5, #0xb]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _02001E8A
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001E8A:
	sub r0, r6, r4
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001E92:
	add r0, r6, #1
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001E9A:
	cmp r1, #2
	bne _02001ED0
	ldrb r3, [r5, #9]
	cmp r3, #1
	bhi _02001EA8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001EA8:
	ldrb r2, [r5, #0xa]
	ldrb r1, [r5, #0x15]
	cmp r1, r2
	bhs _02001EC8
	ldrb r0, [r5, #0xb]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _02001EBC
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001EBC:
	sub r0, r3, #1
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001EC8:
	sub r0, r1, r2
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001ED0:
	ldrb r2, [r5, #9]
	cmp r2, #1
	bhi _02001EDA
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001EDA:
	ldrb r1, [r5, #0xa]
	ldrb r0, [r5, #0x15]
	sub r2, r2, #1
	mul r2, r1
	cmp r0, r2
	blt _02001EFC
	ldrb r2, [r5, #0xb]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1e
	bne _02001EF2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001EF2:
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	asr r2, r0, #0x18
	b _02001F02
_02001EFC:
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r2, r0, #0x18
_02001F02:
	ldr r1, [r5, #0]
	lsl r0, r2, #3
	add r0, r1, r0
	ldr r1, [r0, #4]
	mov r0, #2
	mvn r0, r0
	cmp r1, r0
	bne _02001F16
	mov r0, #0
	pop {r4, r5, r6, pc}
_02001F16:
	strb r2, [r5, #0x15]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02001E24

	thumb_func_start sub_02001F1C
sub_02001F1C: ; 0x02001F1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r1, [r5, #9]
	ldrb r0, [r5, #0xa]
	mov r6, #0
	add r4, r6, #0
	mul r0, r1
	cmp r0, #0
	ble _02001F58
	add r7, r6, #0
_02001F30:
	ldr r2, [r5, #0]
	lsl r1, r4, #3
	ldr r1, [r2, r1]
	ldrb r0, [r5, #8]
	add r2, r7, #0
	bl sub_02002D7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r6, r0
	bhs _02001F48
	add r6, r0, #0
_02001F48:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r1, [r5, #9]
	ldrb r0, [r5, #0xa]
	mul r0, r1
	cmp r4, r0
	blt _02001F30
_02001F58:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02001F1C

	thumb_func_start sub_02001F5C
sub_02001F5C: ; 0x02001F5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #8]
	mov r1, #6
	bl sub_02002DF8
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201ADA4
	ldrb r0, [r5, #0x19]
	ldrb r1, [r5, #0x16]
	ldrb r7, [r5, #0x17]
	lsl r0, r0, #1
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	mov r6, #0
	cmp r0, #0
	bls _02001FE4
_02001F8A:
	ldrb r2, [r5, #0xa]
	mov r4, #0
	cmp r2, #0
	bls _02001FD0
_02001F92:
	ldrb r3, [r5, #0xb]
	mul r2, r6
	ldrb r0, [r5, #0x1a]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1c
	add r0, r0, r3
	ldrb r1, [r5, #0x18]
	mul r0, r4
	add r2, r4, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [r5, #0]
	lsl r2, r2, #3
	ldr r2, [r3, r2]
	ldrb r1, [r5, #8]
	ldr r0, [r5, #4]
	add r3, r7, #0
	bl sub_0201D738
	add r0, r4, #1
	lsl r0, r0, #0x18
	ldrb r2, [r5, #0xa]
	lsr r4, r0, #0x18
	cmp r4, r2
	blo _02001F92
_02001FD0:
	ldr r0, [sp, #0xc]
	add r0, r7, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldrb r0, [r5, #9]
	cmp r6, r0
	blo _02001F8A
_02001FE4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02001F5C

	thumb_func_start sub_02001FE8
sub_02001FE8: ; 0x02001FE8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #0xb]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1e
	cmp r1, #1
	beq _02002012
	ldrb r3, [r4, #0x15]
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl sub_02002018
	add r3, sp, #0
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	bl sub_02014A58
_02002012:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02001FE8

	thumb_func_start sub_02002018
sub_02002018: ; 0x02002018
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	ldrb r1, [r5, #0xa]
	add r0, r7, #0
	add r6, r2, #0
	bl sub_020E1F6C
	ldrb r2, [r5, #0x19]
	ldrb r1, [r5, #0x16]
	lsl r2, r2, #1
	add r1, r1, r2
	mul r1, r0
	strb r1, [r4]
	ldrb r1, [r5, #0xa]
	add r0, r7, #0
	bl sub_020E1F6C
	ldrb r2, [r5, #0xb]
	ldrb r3, [r5, #0x1a]
	ldrb r0, [r5, #0x18]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	add r2, r3, r2
	mul r2, r1
	add r0, r0, r2
	strb r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02002018

	thumb_func_start sub_02002054
sub_02002054: ; 0x02002054
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r5, [sp, #0x3c]
	str r2, [sp, #0xc]
	add r7, r0, #0
	str r1, [sp, #8]
	str r3, [sp, #0x10]
	ldr r2, _020020FC ; =0x00000169
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl sub_0200B144
	add r4, r0, #0
	mov r0, #2
	add r1, r5, #0
	bl sub_02013A04
	add r1, r4, #0
	mov r2, #0x29
	mov r3, #0
	add r6, r0, #0
	bl sub_02013A4C
	mov r3, #0x2a
	add r2, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	sub r3, #0x2c
	bl sub_02013A4C
	add r0, r4, #0
	bl sub_0200B190
	add r0, r5, #0
	mov r1, #1
	str r6, [sp, #0x14]
	bl sub_0201A778
	add r1, r0, #0
	str r1, [sp, #0x18]
	mov r0, #0
	add r2, sp, #0x14
	strb r0, [r2, #8]
	mov r0, #1
	strb r0, [r2, #9]
	mov r0, #2
	strb r0, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r0, #0xf
	bic r3, r0
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r0, #0x30
	bic r3, r0
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r0, #0xc0
	bic r3, r0
	strb r3, [r2, #0xb]
	ldr r2, [sp, #8]
	add r0, r7, #0
	bl sub_0201A8D4
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, #1
	bl sub_0200DC48
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r3, sp, #0x28
	ldrb r3, [r3, #0x10]
	add r0, sp, #0x14
	mov r1, #8
	mov r2, #0
	bl sub_02001B7C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020020FC: .word 0x00000169
	thumb_func_end sub_02002054

	thumb_func_start sub_02002100
sub_02002100: ; 0x02002100
	push {r4, lr}
	sub sp, #8
	mov r4, #0
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl sub_02002054
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02002100

	thumb_func_start sub_02002114
sub_02002114: ; 0x02002114
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02001BE0
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02002130
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02002154
_02002130:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02002114

	thumb_func_start sub_02002134
sub_02002134: ; 0x02002134
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02001D44
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02002150
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02002154
_02002150:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02002134

	thumb_func_start sub_02002154
sub_02002154: ; 0x02002154
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0
	bl sub_0200DC9C
	ldr r0, [r5, #4]
	bl sub_0201A8FC
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl sub_02018238
	ldr r0, [r5, #0]
	bl sub_02013A3C
	add r0, r5, #0
	mov r1, #0
	bl sub_02001BC4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02002154

	thumb_func_start sub_02002180
sub_02002180: ; 0x02002180
	push {r4, lr}
	sub sp, #0x18
	mov r4, #8
	lsl r1, r1, #0x10
	str r4, [sp]
	mov r3, #0x10
	str r3, [sp, #4]
	lsr r1, r1, #0x10
	str r1, [sp, #8]
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r1, _020021AC ; =0x020E4C48
	mov r2, #0
	str r3, [sp, #0x14]
	add r3, r2, #0
	bl sub_0201ADDC
	add sp, #0x18
	pop {r4, pc}
	nop
_020021AC: .word 0x020E4C48
	thumb_func_end sub_02002180

	thumb_func_start sub_020021B0
sub_020021B0: ; 0x020021B0
	ldrh r3, [r1]
	ldr r2, _020021CC ; =0x0000FFFF
	cmp r3, r2
	beq _020021C4
_020021B8:
	add r1, r1, #2
	strh r3, [r0]
	ldrh r3, [r1]
	add r0, r0, #2
	cmp r3, r2
	bne _020021B8
_020021C4:
	ldr r1, _020021CC ; =0x0000FFFF
	strh r1, [r0]
	bx lr
	nop
_020021CC: .word 0x0000FFFF
	thumb_func_end sub_020021B0

	thumb_func_start sub_020021D0
sub_020021D0: ; 0x020021D0
	push {r4, r5}
	mov r4, #0
	cmp r2, #0
	bls _020021E8
	add r5, r0, #0
_020021DA:
	ldrh r3, [r1]
	add r4, r4, #1
	add r1, r1, #2
	strh r3, [r5]
	add r5, r5, #2
	cmp r4, r2
	blo _020021DA
_020021E8:
	lsl r1, r2, #1
	add r0, r0, r1
	pop {r4, r5}
	bx lr
	thumb_func_end sub_020021D0

	thumb_func_start sub_020021F0
sub_020021F0: ; 0x020021F0
	ldrh r2, [r0]
	ldr r1, _02002208 ; =0x0000FFFF
	mov r3, #0
	cmp r2, r1
	beq _02002204
_020021FA:
	add r0, r0, #2
	ldrh r2, [r0]
	add r3, r3, #1
	cmp r2, r1
	bne _020021FA
_02002204:
	add r0, r3, #0
	bx lr
	; .align 2, 0
_02002208: .word 0x0000FFFF
	thumb_func_end sub_020021F0

	thumb_func_start sub_0200220C
sub_0200220C: ; 0x0200220C
	push {r3, r4}
	ldrh r4, [r0]
	ldrh r2, [r1]
	cmp r4, r2
	bne _0200222E
	ldr r2, _02002234 ; =0x0000FFFF
_02002218:
	cmp r4, r2
	bne _02002222
	mov r0, #0
	pop {r3, r4}
	bx lr
_02002222:
	add r0, r0, #2
	add r1, r1, #2
	ldrh r4, [r0]
	ldrh r3, [r1]
	cmp r4, r3
	beq _02002218
_0200222E:
	mov r0, #1
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02002234: .word 0x0000FFFF
	thumb_func_end sub_0200220C

	thumb_func_start sub_02002238
sub_02002238: ; 0x02002238
	push {r3, r4, r5, r6}
	ldrh r6, [r1]
	ldrh r5, [r0]
	cmp r5, r6
	bne _0200226C
	ldr r3, _02002274 ; =0x0000FFFF
	add r4, r3, #0
_02002246:
	cmp r2, #0
	bne _02002250
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02002250:
	cmp r5, r4
	bne _0200225E
	cmp r6, r3
	bne _0200225E
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_0200225E:
	add r0, r0, #2
	add r1, r1, #2
	ldrh r6, [r1]
	ldrh r5, [r0]
	sub r2, r2, #1
	cmp r5, r6
	beq _02002246
_0200226C:
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02002274: .word 0x0000FFFF
	thumb_func_end sub_02002238

	thumb_func_start sub_02002278
sub_02002278: ; 0x02002278
	push {r3, r4}
	mov r3, #0
	cmp r2, #0
	bls _0200228C
	add r4, r0, #0
_02002282:
	add r3, r3, #1
	strh r1, [r4]
	add r4, r4, #2
	cmp r3, r2
	blo _02002282
_0200228C:
	lsl r1, r3, #1
	add r0, r0, r1
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02002278

	thumb_func_start sub_02002294
sub_02002294: ; 0x02002294
	ldr r3, _0200229C ; =sub_02002278
	add r2, r1, #0
	ldr r1, _020022A0 ; =0x0000FFFF
	bx r3
	; .align 2, 0
_0200229C: .word sub_02002278
_020022A0: .word 0x0000FFFF
	thumb_func_end sub_02002294

	thumb_func_start sub_020022A4
sub_020022A4: ; 0x020022A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r0, _0200231C ; =0x020E4CA4
	lsl r1, r3, #2
	ldr r4, [r0, r1]
	add r6, r2, #0
	cmp r4, #0
	beq _02002314
_020022B6:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020E2178
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	mul r0, r1
	sub r7, r7, r0
	cmp r6, #2
	bne _020022E0
	cmp r1, #0xa
	blo _020022D4
	mov r0, #0xe2
	b _020022DA
_020022D4:
	ldr r0, _02002320 ; =0x020E4C88
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
_020022DA:
	strh r0, [r5]
	add r5, r5, #2
	b _02002308
_020022E0:
	cmp r1, #0
	bne _020022E8
	cmp r4, #1
	bne _020022FE
_020022E8:
	mov r6, #2
	cmp r1, #0xa
	blo _020022F2
	mov r0, #0xe2
	b _020022F8
_020022F2:
	ldr r0, _02002320 ; =0x020E4C88
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
_020022F8:
	strh r0, [r5]
	add r5, r5, #2
	b _02002308
_020022FE:
	cmp r6, #1
	bne _02002308
	mov r0, #1
	strh r0, [r5]
	add r5, r5, #2
_02002308:
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E2178
	add r4, r0, #0
	bne _020022B6
_02002314:
	ldr r0, _02002324 ; =0x0000FFFF
	strh r0, [r5]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200231C: .word 0x020E4CA4
_02002320: .word 0x020E4C88
_02002324: .word 0x0000FFFF
	thumb_func_end sub_020022A4

	thumb_func_start sub_02002328
sub_02002328: ; 0x02002328
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x28
	ldrb r1, [r1]
	add r6, r4, #0
	add r6, #0x20
	cmp r1, #6
	bls _0200233E
	b _020027A0
_0200233E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200234A: ; jump table
	.short _02002358 - _0200234A - 2 ; case 0
	.short _020026AA - _0200234A - 2 ; case 1
	.short _020026C4 - _0200234A - 2 ; case 2
	.short _020026EE - _0200234A - 2 ; case 3
	.short _0200271E - _0200234A - 2 ; case 4
	.short _02002774 - _0200234A - 2 ; case 5
	.short _02002780 - _0200234A - 2 ; case 6
_02002358:
	ldr r0, _020025C0 ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #3
	tst r0, r1
	beq _0200236A
	ldrb r0, [r6]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bne _0200237C
_0200236A:
	ldr r0, _020025C4 ; =0x021BF6BC
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	beq _0200239A
	ldr r0, _020025C8 ; =0x02101D44
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _0200239A
_0200237C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2a
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	beq _0200239A
	ldr r1, _020025C8 ; =0x02101D44
	mov r0, #0x40
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
_0200239A:
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _020023F4
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	beq _020023F4
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	ldr r0, _020025C8 ; =0x02101D44
	ldrb r0, [r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _020023EE
	ldr r1, _020025C0 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	bne _020023E0
	ldr r1, _020025C4 ; =0x021BF6BC
	ldrh r1, [r1, #0x20]
	cmp r1, #0
	beq _020023EE
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _020023EE
_020023E0:
	ldrb r1, [r6]
	mov r0, #0x10
	add r4, #0x2a
	orr r0, r1
	strb r0, [r6]
	mov r0, #0
	strb r0, [r4]
_020023EE:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020023F4:
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x19
	add r0, r4, #0
	add r0, #0x2a
	strb r1, [r0]
	ldr r0, [r4, #0]
	ldrh r5, [r0]
	add r0, r0, #2
	str r0, [r4, #0]
	mov r0, #0xf1
	lsl r0, r0, #8
	cmp r5, r0
	bne _02002418
	bl sub_02022974
_02002418:
	ldr r0, _020025CC ; =0x0000F0FD
	cmp r5, r0
	bgt _02002442
	bge _02002476
	ldr r1, _020025D0 ; =0x000025BD
	cmp r5, r1
	bgt _02002438
	sub r0, r1, #1
	cmp r5, r0
	blt _02002436
	bne _02002430
	b _02002640
_02002430:
	cmp r5, r1
	bne _02002436
	b _02002654
_02002436:
	b _02002668
_02002438:
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r5, r0
	beq _0200245A
	b _02002668
_02002442:
	ldr r0, _020025D4 ; =0x0000FFFE
	cmp r5, r0
	bgt _0200244C
	beq _02002482
	b _02002668
_0200244C:
	add r0, r0, #1
	cmp r5, r0
	beq _02002454
	b _02002668
_02002454:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0200245A:
	ldrb r0, [r4, #0xa]
	mov r1, #1
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #9]
	bl sub_02002DF8
	ldrh r1, [r4, #0x12]
	ldrh r2, [r4, #0xe]
	add sp, #0xc
	add r0, r1, r0
	add r0, r2, r0
	strh r0, [r4, #0xe]
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02002476:
	ldr r0, [r4, #0]
	add sp, #0xc
	add r0, r0, #2
	str r0, [r4, #0]
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02002482:
	ldr r0, [r4, #0]
	sub r0, r0, #2
	str r0, [r4, #0]
	bl sub_0201D0F0
	lsl r0, r0, #0x10
	ldr r1, _020025D8 ; =0x0000FE06
	lsr r0, r0, #0x10
	cmp r0, r1
	bgt _020024BA
	blt _0200249A
	b _020025E0
_0200249A:
	mov r1, #2
	lsl r1, r1, #8
	sub r1, r0, r1
	cmp r1, #4
	bhi _020024C4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020024B0: ; jump table
	.short _0200251C - _020024B0 - 2 ; case 0
	.short _02002546 - _020024B0 - 2 ; case 1
	.short _02002568 - _020024B0 - 2 ; case 2
	.short _02002580 - _020024B0 - 2 ; case 3
	.short _0200258C - _020024B0 - 2 ; case 4
_020024BA:
	mov r1, #0xff
	lsl r1, r1, #8
	cmp r0, r1
	bgt _020024C6
	beq _020024CE
_020024C4:
	b _02002632
_020024C6:
	add r1, r1, #1
	cmp r0, r1
	beq _02002598
	b _02002632
_020024CE:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xff
	bne _020024FE
	ldrb r0, [r4, #0x15]
	ldrb r2, [r4, #0x1b]
	sub r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, #0x64
	strb r0, [r4, #0x1b]
	cmp r2, #0x64
	blo _020025AC
	cmp r2, #0x6b
	bhs _020025AC
	sub r2, #0x64
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	b _02002506
_020024FE:
	cmp r0, #0x64
	blo _02002506
	strb r0, [r4, #0x1b]
	b _02002632
_02002506:
	lsl r1, r0, #1
	add r0, r1, #1
	strb r0, [r4, #0x15]
	add r0, r1, #2
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x16]
	ldrb r2, [r4, #0x17]
	bl sub_0201D9FC
	b _02002632
_0200251C:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldrh r1, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	add r0, r4, #0
	bl sub_0201DB8C
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _02002632
	ldr r0, [r4, #4]
	bl sub_0201A954
	b _02002632
_02002546:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	add r1, r4, #0
	add r1, #0x2a
	strb r0, [r1]
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	mov r0, #6
	add r4, #0x28
	strb r0, [r4]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002568:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	strh r0, [r4, #0x2e]
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002580:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	strh r0, [r4, #0xc]
	b _02002632
_0200258C:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	strh r0, [r4, #0xe]
	b _02002632
_02002598:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x64
	beq _020025AE
	cmp r0, #0xc8
	beq _020025B6
_020025AC:
	b _02002632
_020025AE:
	mov r0, #0
	strh r0, [r4, #0x18]
	strb r0, [r4, #0x1a]
	b _02002632
_020025B6:
	ldr r0, _020025DC ; =0x0000FFFC
	strh r0, [r4, #0x18]
	mov r0, #0
	strb r0, [r4, #0x1a]
	b _02002632
	; .align 2, 0
_020025C0: .word 0x021BF67C
_020025C4: .word 0x021BF6BC
_020025C8: .word 0x02101D44
_020025CC: .word 0x0000F0FD
_020025D0: .word 0x000025BD
_020025D4: .word 0x0000FFFE
_020025D8: .word 0x0000FE06
_020025DC: .word 0x0000FFFC
_020025E0:
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201D134
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xfe
	lsl r0, r0, #8
	cmp r1, r0
	beq _02002616
	add r0, r0, #1
	cmp r1, r0
	bne _02002632
	add r0, r4, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027B4
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002616:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027B4
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002632:
	ldr r0, [r4, #0]
	bl sub_0201D0C8
	str r0, [r4, #0]
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_02002640:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027B4
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002654:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020027B4
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002668:
	ldrb r0, [r6]
	add r1, r5, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bl sub_02002CFC
	add r5, r0, #0
	ldrh r0, [r4, #0xc]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp]
	ldrh r0, [r4, #0xe]
	add r2, #0x80
	add r3, #0x81
	str r0, [sp, #4]
	ldrh r0, [r4, #0x18]
	add r1, r5, #0
	str r0, [sp, #8]
	ldrb r2, [r2]
	ldrb r3, [r3]
	ldr r0, [r4, #4]
	bl sub_0201AED0
	add r5, #0x80
	ldrb r1, [r5]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xc]
	add sp, #0xc
	add r0, r1, r0
	add r0, r2, r0
	strh r0, [r4, #0xc]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_020026AA:
	bl sub_02002AA4
	cmp r0, #0
	beq _020026BE
	add r0, r4, #0
	bl sub_02002968
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_020026BE:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020026C4:
	bl sub_02002A80
	cmp r0, #0
	beq _020026E8
	add r0, r4, #0
	bl sub_02002968
	ldrb r1, [r4, #0x16]
	ldr r0, [r4, #4]
	bl sub_0201ADA4
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	ldrb r0, [r4, #0xb]
	strh r0, [r4, #0xe]
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_020026E8:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020026EE:
	bl sub_02002A80
	cmp r0, #0
	beq _02002718
	add r0, r4, #0
	bl sub_02002968
	ldrb r0, [r4, #9]
	mov r1, #1
	bl sub_02002DF8
	ldrh r1, [r4, #0x12]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	ldrb r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	mov r0, #4
	add r4, #0x28
	strb r0, [r4]
_02002718:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_0200271E:
	add r0, #0x2b
	ldrb r2, [r0]
	cmp r2, #0
	beq _02002768
	cmp r2, #4
	ldrb r5, [r4, #0x16]
	bge _02002740
	lsl r3, r5, #4
	orr r3, r5
	lsl r3, r3, #0x18
	ldr r0, [r4, #4]
	mov r1, #0
	lsr r3, r3, #0x18
	bl sub_0201C04C
	mov r1, #0
	b _0200275A
_02002740:
	lsl r3, r5, #4
	orr r3, r5
	lsl r3, r3, #0x18
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #4
	lsr r3, r3, #0x18
	bl sub_0201C04C
	add r0, r4, #0
	add r0, #0x2b
	ldrb r0, [r0]
	sub r1, r0, #4
_0200275A:
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl sub_0201A954
	b _0200276E
_02002768:
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
_0200276E:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002774:
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_02002780:
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _02002794
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r4, #0x2a
	sub r0, r0, #1
	b _02002798
_02002794:
	mov r0, #0
	add r4, #0x28
_02002798:
	add sp, #0xc
	strb r0, [r4]
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_020027A0:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02002328

	thumb_func_start sub_020027A8
sub_020027A8: ; 0x020027A8
	ldr r1, _020027B0 ; =0x02101D44
	strh r0, [r1, #2]
	bx lr
	nop
_020027B0: .word 0x02101D44
	thumb_func_end sub_020027A8

	thumb_func_start sub_020027B4
sub_020027B4: ; 0x020027B4
	ldr r1, _020027DC ; =0x02101D44
	add r0, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _020027CA
	ldrb r2, [r0, #2]
	mov r1, #0xff
	bic r2, r1
	strb r2, [r0, #2]
	bx lr
_020027CA:
	ldrb r2, [r0, #1]
	mov r1, #0x60
	bic r2, r1
	strb r2, [r0, #1]
	ldrb r2, [r0, #1]
	mov r1, #0x1f
	bic r2, r1
	strb r2, [r0, #1]
	bx lr
	; .align 2, 0
_020027DC: .word 0x02101D44
	thumb_func_end sub_020027B4

	thumb_func_start sub_020027E0
sub_020027E0: ; 0x020027E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, _02002960 ; =0x02101D44
	add r4, r5, #0
	ldrb r0, [r0]
	add r4, #0x20
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _020027F6
	b _0200295C
_020027F6:
	ldrb r0, [r4, #1]
	lsl r1, r0, #0x1b
	lsr r2, r1, #0x1b
	beq _02002814
	mov r1, #0x1f
	add r2, #0xff
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	add sp, #0x2c
	strb r0, [r4, #1]
	pop {r4, r5, r6, r7, pc}
_02002814:
	ldr r0, [r5, #4]
	bl sub_0201C290
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	bl sub_0201C29C
	str r0, [sp, #0x24]
	ldr r0, [r5, #4]
	bl sub_0201C2A0
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	bl sub_0201C294
	ldr r1, _02002960 ; =0x02101D44
	ldrh r6, [r1, #2]
	ldr r1, [sp, #0x28]
	add r7, r1, #2
	ldr r1, [sp, #0x24]
	add r2, r6, #0
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x18]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	add r2, #0x12
	mov ip, r2
	ldrb r2, [r4, #1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _02002964 ; =0x020E4CD0
	ldr r0, [r0, #0]
	ldrb r2, [r2, r3]
	mov r3, ip
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r3, [sp, #0x18]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, #2
	str r0, [sp, #0x10]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #1]
	add r7, r6, #0
	ldr r0, [r5, #4]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _02002964 ; =0x020E4CD0
	add r7, #0x13
	ldrb r2, [r2, r3]
	ldr r3, [sp, #0x10]
	ldr r0, [r0, #0]
	lsl r2, r2, #2
	add r2, r7, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x28]
	add r7, r6, #0
	add r0, r0, #3
	str r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #1]
	ldr r0, [r5, #4]
	add r7, #0x14
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _02002964 ; =0x020E4CD0
	ldr r0, [r0, #0]
	ldrb r2, [r2, r3]
	ldr r3, [sp, #0x18]
	ldr r1, [sp, #0x20]
	lsl r2, r2, #2
	add r2, r7, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x14]
	add r6, #0x15
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x1e
	ldr r2, _02002964 ; =0x020E4CD0
	ldr r0, [r0, #0]
	ldrb r2, [r2, r3]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #2
	add r2, r6, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	bl sub_02019448
	ldrb r1, [r4, #1]
	mov r0, #0x1f
	bic r1, r0
	mov r0, #8
	orr r0, r1
	strb r0, [r4, #1]
	ldrb r2, [r4, #1]
	mov r1, #0x60
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x1e
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r0, r1
	strb r0, [r4, #1]
_0200295C:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02002960: .word 0x02101D44
_02002964: .word 0x020E4CD0
	thumb_func_end sub_020027E0

	thumb_func_start sub_02002968
sub_02002968: ; 0x02002968
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201C290
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	bl sub_0201C29C
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	bl sub_0201C2A0
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_0201C294
	ldr r1, _020029F8 ; =0x02101D44
	add r7, r6, #2
	ldrh r4, [r1, #2]
	ldr r1, [sp, #0x14]
	add r6, r1, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r2, r4, #0
	add r2, #0xa
	add r3, r6, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r4, #0xb
	add r3, r6, #2
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_02019448
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020029F8: .word 0x02101D44
	thumb_func_end sub_02002968

	thumb_func_start sub_020029FC
sub_020029FC: ; 0x020029FC
	push {r3, lr}
	ldr r0, _02002A34 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _02002A1A
	ldr r0, _02002A38 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02002A2E
	ldr r0, _02002A3C ; =0x02101D44
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _02002A2E
_02002A1A:
	ldr r0, _02002A40 ; =0x000005DC
	bl sub_02005748
	ldr r1, _02002A3C ; =0x02101D44
	mov r0, #0x80
	ldrb r2, [r1]
	orr r0, r2
	strb r0, [r1]
	mov r0, #1
	pop {r3, pc}
_02002A2E:
	mov r0, #0
	pop {r3, pc}
	nop
_02002A34: .word 0x021BF67C
_02002A38: .word 0x021BF6BC
_02002A3C: .word 0x02101D44
_02002A40: .word 0x000005DC
	thumb_func_end sub_020029FC

	thumb_func_start sub_02002A44
sub_02002A44: ; 0x02002A44
	push {r4, lr}
	add r2, r0, #0
	add r2, #0x20
	ldrb r1, [r2, #2]
	add r4, r1, #0
	cmp r4, #0x64
	bne _02002A56
	mov r0, #1
	pop {r4, pc}
_02002A56:
	mov r3, #0xff
	bic r1, r3
	add r3, r4, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	orr r1, r3
	strb r1, [r2, #2]
	ldr r1, _02002A7C ; =0x02101D44
	ldrb r1, [r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _02002A78
	bl sub_020029FC
	pop {r4, pc}
_02002A78:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02002A7C: .word 0x02101D44
	thumb_func_end sub_02002A44

	thumb_func_start sub_02002A80
sub_02002A80: ; 0x02002A80
	push {r4, lr}
	ldr r1, _02002AA0 ; =0x02101D44
	add r4, r0, #0
	ldrb r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _02002A94
	bl sub_02002A44
	pop {r4, pc}
_02002A94:
	bl sub_020027E0
	add r0, r4, #0
	bl sub_020029FC
	pop {r4, pc}
	; .align 2, 0
_02002AA0: .word 0x02101D44
	thumb_func_end sub_02002A80

	thumb_func_start sub_02002AA4
sub_02002AA4: ; 0x02002AA4
	push {r3, lr}
	ldr r1, _02002AC4 ; =0x02101D44
	ldrb r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _02002ABA
	bl sub_02002A44
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
_02002ABA:
	bl sub_020029FC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
_02002AC4: .word 0x02101D44
	thumb_func_end sub_02002AA4

	thumb_func_start sub_02002AC8
sub_02002AC8: ; 0x02002AC8
	ldr r2, _02002AE0 ; =0x02101D44
	mov r1, #1
	ldrb r3, [r2]
	lsl r0, r0, #0x18
	bic r3, r1
	lsr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	orr r0, r3
	strb r0, [r2]
	bx lr
	nop
_02002AE0: .word 0x02101D44
	thumb_func_end sub_02002AC8

	thumb_func_start sub_02002AE4
sub_02002AE4: ; 0x02002AE4
	push {r3, r4}
	ldr r1, _02002B1C ; =0x02101D44
	mov r3, #4
	ldrb r2, [r1]
	mov r4, #1
	bic r2, r3
	add r3, r0, #0
	and r3, r4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1d
	orr r2, r3
	asr r0, r0, #1
	and r0, r4
	strb r2, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r2, [r1]
	mov r3, #0x20
	lsr r0, r0, #0x1a
	bic r2, r3
	orr r0, r2
	strb r0, [r1]
	pop {r3, r4}
	bx lr
	nop
_02002B1C: .word 0x02101D44
	thumb_func_end sub_02002AE4

	thumb_func_start sub_02002B20
sub_02002B20: ; 0x02002B20
	ldr r2, _02002B38 ; =0x02101D44
	lsl r0, r0, #0x18
	ldrb r3, [r2]
	lsr r0, r0, #0x18
	mov r1, #0x10
	lsl r0, r0, #0x1f
	bic r3, r1
	lsr r0, r0, #0x1b
	orr r0, r3
	strb r0, [r2]
	bx lr
	nop
_02002B38: .word 0x02101D44
	thumb_func_end sub_02002B20

	thumb_func_start sub_02002B3C
sub_02002B3C: ; 0x02002B3C
	ldr r0, _02002B48 ; =0x02101D44
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
	nop
_02002B48: .word 0x02101D44
	thumb_func_end sub_02002B3C

	thumb_func_start sub_02002B4C
sub_02002B4C: ; 0x02002B4C
	ldr r1, _02002B58 ; =0x02101D44
	mov r0, #0x40
	ldrb r2, [r1]
	bic r2, r0
	strb r2, [r1]
	bx lr
	; .align 2, 0
_02002B58: .word 0x02101D44
	thumb_func_end sub_02002B4C

	thumb_func_start sub_02002B5C
sub_02002B5C: ; 0x02002B5C
	ldr r0, _02002B68 ; =0x02101D44
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	nop
_02002B68: .word 0x02101D44
	thumb_func_end sub_02002B5C

	thumb_func_start sub_02002B6C
sub_02002B6C: ; 0x02002B6C
	ldr r1, _02002B78 ; =0x02101D44
	mov r0, #0x80
	ldrb r2, [r1]
	bic r2, r0
	strb r2, [r1]
	bx lr
	; .align 2, 0
_02002B78: .word 0x02101D44
	thumb_func_end sub_02002B6C

	thumb_func_start sub_02002B7C
sub_02002B7C: ; 0x02002B7C
	push {r4, lr}
	ldr r0, _02002BAC ; =0x02101D4C
	ldr r4, _02002BB0 ; =0x02101D48
	mov r1, #0
	str r0, [r4, #0]
	add r2, r1, #0
	add r0, r1, #0
_02002B8A:
	ldr r3, [r4, #0]
	add r1, r1, #1
	add r3, r3, r2
	add r3, #0x84
	str r0, [r3, #0]
	ldr r3, [r4, #0]
	add r3, r3, r2
	add r3, #0x94
	add r2, r2, #4
	str r0, [r3, #0]
	cmp r1, #4
	blo _02002B8A
	ldr r0, _02002BB4 ; =0x020E4CE4
	bl sub_0201D670
	pop {r4, pc}
	nop
_02002BAC: .word 0x02101D4C
_02002BB0: .word 0x02101D48
_02002BB4: .word 0x020E4CE4
	thumb_func_end sub_02002B7C

	thumb_func_start sub_02002BB8
sub_02002BB8: ; 0x02002BB8
	push {r3, r4, lr}
	sub sp, #4
	str r1, [sp]
	lsl r4, r0, #2
	ldr r1, _02002BE0 ; =0x020E4CD4
	ldr r3, _02002BE4 ; =0x020E4CD6
	ldrh r1, [r1, r4]
	ldrh r3, [r3, r4]
	mov r0, #0xe
	mov r2, #1
	bl sub_020232E0
	ldr r1, _02002BE8 ; =0x02101D48
	ldr r1, [r1, #0]
	add r1, r1, r4
	add r1, #0x94
	str r0, [r1, #0]
	add sp, #4
	pop {r3, r4, pc}
	nop
_02002BE0: .word 0x020E4CD4
_02002BE4: .word 0x020E4CD6
_02002BE8: .word 0x02101D48
	thumb_func_end sub_02002BB8

	thumb_func_start sub_02002BEC
sub_02002BEC: ; 0x02002BEC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #4
	blt _02002BFA
	bl sub_02022974
_02002BFA:
	ldr r0, _02002C24 ; =0x02101D48
	lsl r4, r4, #2
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002C0E
	bl sub_02022974
_02002C0E:
	ldr r0, _02002C24 ; =0x02101D48
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023330
	pop {r3, r4, r5, pc}
	nop
_02002C24: .word 0x02101D48
	thumb_func_end sub_02002BEC

	thumb_func_start sub_02002C28
sub_02002C28: ; 0x02002C28
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #4
	blt _02002C34
	bl sub_02022974
_02002C34:
	ldr r0, _02002C5C ; =0x02101D48
	lsl r4, r4, #2
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002C48
	bl sub_02022974
_02002C48:
	ldr r0, _02002C5C ; =0x02101D48
	mov r1, #1
	ldr r0, [r0, #0]
	mov r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023330
	pop {r4, pc}
	; .align 2, 0
_02002C5C: .word 0x02101D48
	thumb_func_end sub_02002C28

	thumb_func_start sub_02002C60
sub_02002C60: ; 0x02002C60
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r4, #4
	blt _02002C6C
	bl sub_02022974
_02002C6C:
	ldr r0, _02002CF4 ; =0x02101D48
	lsl r6, r4, #2
	ldr r7, [r0, #0]
	add r0, r7, r6
	add r0, #0x84
	ldr r0, [r0, #0]
	mov ip, r0
	cmp r0, #0
	beq _02002CD0
	ldr r2, _02002CF8 ; =0x020E4CD4
	mov r1, #0
	ldrh r0, [r2, r6]
	add r3, r7, #0
_02002C86:
	cmp r1, r4
	beq _02002CA6
	ldrh r5, [r2]
	cmp r5, r0
	bne _02002CA6
	add r5, r3, #0
	add r5, #0x94
	ldr r5, [r5, #0]
	cmp r5, #0
	beq _02002CA6
	lsl r0, r1, #2
	add r2, r7, r0
	add r2, #0x84
	mov r0, ip
	str r0, [r2, #0]
	b _02002CB0
_02002CA6:
	add r1, r1, #1
	add r2, r2, #4
	add r3, r3, #4
	cmp r1, #4
	blo _02002C86
_02002CB0:
	cmp r1, #4
	bne _02002CD0
	ldr r0, _02002CF4 ; =0x02101D48
	lsl r5, r4, #2
	ldr r0, [r0, #0]
	add r0, r0, r5
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02002CF4 ; =0x02101D48
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r5
	add r0, #0x84
	str r1, [r0, #0]
_02002CD0:
	ldr r0, _02002CF4 ; =0x02101D48
	ldr r0, [r0, #0]
	add r0, r0, r6
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02002CF0
	bl sub_02023318
	ldr r0, _02002CF4 ; =0x02101D48
	mov r2, #0
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r0, r1, r0
	add r0, #0x94
	str r2, [r0, #0]
_02002CF0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02002CF4: .word 0x02101D48
_02002CF8: .word 0x020E4CD4
	thumb_func_end sub_02002C60

	thumb_func_start sub_02002CFC
sub_02002CFC: ; 0x02002CFC
	push {r3, lr}
	ldr r2, _02002D14 ; =0x02101D48
	lsl r0, r0, #2
	ldr r2, [r2, #0]
	add r0, r2, r0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_020234A0
	ldr r0, _02002D14 ; =0x02101D48
	ldr r0, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_02002D14: .word 0x02101D48
	thumb_func_end sub_02002CFC

	thumb_func_start sub_02002D18
sub_02002D18: ; 0x02002D18
	push {r4, lr}
	add r3, r1, #0
	add r3, #0x20
	ldrb r2, [r3, #1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	bne _02002D40
	ldrb r2, [r3]
	mov r4, #0xf
	lsl r0, r0, #0x18
	bic r2, r4
	lsr r4, r0, #0x18
	mov r0, #0xf
	and r0, r4
	orr r0, r2
	strb r0, [r3]
	ldrb r2, [r3, #1]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r3, #1]
_02002D40:
	add r0, r1, #0
	bl sub_02002328
	pop {r4, pc}
	thumb_func_end sub_02002D18

	thumb_func_start sub_02002D48
sub_02002D48: ; 0x02002D48
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002D78 ; =0x02101D48
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002D62
	bl sub_02022974
_02002D62:
	ldr r0, _02002D78 ; =0x02101D48
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r6, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023620
	pop {r4, r5, r6, pc}
	nop
_02002D78: .word 0x02101D48
	thumb_func_end sub_02002D48

	thumb_func_start sub_02002D7C
sub_02002D7C: ; 0x02002D7C
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002DB0 ; =0x02101D48
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002D96
	bl sub_02022974
_02002D96:
	add r0, r5, #0
	bl sub_02023E2C
	add r1, r0, #0
	ldr r0, _02002DB0 ; =0x02101D48
	add r2, r6, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023620
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02002DB0: .word 0x02101D48
	thumb_func_end sub_02002D7C

	thumb_func_start sub_02002DB4
sub_02002DB4: ; 0x02002DB4
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002DF4 ; =0x02101D48
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r5, r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002DCE
	bl sub_02022974
_02002DCE:
	add r0, r5, #0
	bl sub_020237E8
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02023F10
	add r0, r5, #0
	bl sub_02023E2C
	add r1, r0, #0
	ldr r0, _02002DF4 ; =0x02101D48
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0202366C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02002DF4: .word 0x02101D48
	thumb_func_end sub_02002DB4

	thumb_func_start sub_02002DF8
sub_02002DF8: ; 0x02002DF8
	mov r2, #0
	cmp r1, #7
	bhi _02002E58
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02002E0A: ; jump table
	.short _02002E1A - _02002E0A - 2 ; case 0
	.short _02002E22 - _02002E0A - 2 ; case 1
	.short _02002E2A - _02002E0A - 2 ; case 2
	.short _02002E32 - _02002E0A - 2 ; case 3
	.short _02002E3A - _02002E0A - 2 ; case 4
	.short _02002E42 - _02002E0A - 2 ; case 5
	.short _02002E4A - _02002E0A - 2 ; case 6
	.short _02002E52 - _02002E0A - 2 ; case 7
_02002E1A:
	lsl r1, r0, #3
	ldr r0, _02002E5C ; =0x020E4CE4
	ldrb r2, [r0, r1]
	b _02002E58
_02002E22:
	lsl r1, r0, #3
	ldr r0, _02002E60 ; =0x020E4CE5
	ldrb r2, [r0, r1]
	b _02002E58
_02002E2A:
	lsl r1, r0, #3
	ldr r0, _02002E64 ; =0x020E4CE6
	ldrb r2, [r0, r1]
	b _02002E58
_02002E32:
	lsl r1, r0, #3
	ldr r0, _02002E68 ; =0x020E4CE7
	ldrb r2, [r0, r1]
	b _02002E58
_02002E3A:
	lsl r1, r0, #3
	ldr r0, _02002E6C ; =0x020E4CE8
	ldrb r2, [r0, r1]
	b _02002E58
_02002E42:
	lsl r1, r0, #3
	ldr r0, _02002E70 ; =0x020E4CE9
	ldrb r2, [r0, r1]
	b _02002E58
_02002E4A:
	lsl r1, r0, #3
	ldr r0, _02002E74 ; =0x020E4CEA
	ldrb r2, [r0, r1]
	b _02002E58
_02002E52:
	lsl r1, r0, #3
	ldr r0, _02002E78 ; =0x020E4CEB
	ldrb r2, [r0, r1]
_02002E58:
	add r0, r2, #0
	bx lr
	; .align 2, 0
_02002E5C: .word 0x020E4CE4
_02002E60: .word 0x020E4CE5
_02002E64: .word 0x020E4CE6
_02002E68: .word 0x020E4CE7
_02002E6C: .word 0x020E4CE8
_02002E70: .word 0x020E4CE9
_02002E74: .word 0x020E4CEA
_02002E78: .word 0x020E4CEB
	thumb_func_end sub_02002DF8

	thumb_func_start sub_02002E7C
sub_02002E7C: ; 0x02002E7C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r3, r1, #0
	str r2, [sp, #4]
	mov r0, #0xe
	mov r1, #6
	add r2, r4, #0
	bl sub_02006E84
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02002E7C

	thumb_func_start sub_02002E98
sub_02002E98: ; 0x02002E98
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	add r3, r1, #0
	str r2, [sp, #4]
	mov r0, #0xe
	mov r1, #7
	add r2, r4, #0
	bl sub_02006E84
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02002E98

	thumb_func_start sub_02002EB4
sub_02002EB4: ; 0x02002EB4
	push {r4, r5, r6, lr}
	lsl r4, r0, #2
	ldr r0, _02002EE8 ; =0x02101D48
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002ECE
	bl sub_02022974
_02002ECE:
	add r0, r5, #0
	bl sub_02023E2C
	add r1, r0, #0
	ldr r0, _02002EE8 ; =0x02101D48
	add r2, r6, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_020236D0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02002EE8: .word 0x02101D48
	thumb_func_end sub_02002EB4

	thumb_func_start sub_02002EEC
sub_02002EEC: ; 0x02002EEC
	push {r4, lr}
	add r4, r3, #0
	bl sub_02002D7C
	cmp r0, r4
	bhs _02002EFE
	sub r0, r4, r0
	lsr r0, r0, #1
	pop {r4, pc}
_02002EFE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02002EEC

	thumb_func_start sub_02002F04
sub_02002F04: ; 0x02002F04
	push {r3, r4, r5, lr}
	lsl r4, r0, #2
	ldr r0, _02002F34 ; =0x02101D48
	add r5, r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02002F1C
	bl sub_02022974
_02002F1C:
	add r0, r5, #0
	bl sub_02023E2C
	add r1, r0, #0
	ldr r0, _02002F34 ; =0x02101D48
	ldr r0, [r0, #0]
	add r0, r0, r4
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02023738
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02002F34: .word 0x02101D48
	thumb_func_end sub_02002F04

	thumb_func_start sub_02002F38
sub_02002F38: ; 0x02002F38
	push {r4, lr}
	mov r1, #0x12
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x12
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02002F38

	thumb_func_start sub_02002F54
sub_02002F54: ; 0x02002F54
	ldr r3, _02002F58 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02002F58: .word sub_020181C4
	thumb_func_end sub_02002F54

	thumb_func_start sub_02002F5C
sub_02002F5C: ; 0x02002F5C
	push {r3, r4}
	mov r4, #0x14
	mul r4, r1
	str r2, [r0, r4]
	add r1, r0, r4
	ldr r0, [sp, #8]
	str r3, [r1, #4]
	str r0, [r1, #8]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02002F5C

	thumb_func_start sub_02002F70
sub_02002F70: ; 0x02002F70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp, #4]
	add r0, r3, #0
	add r1, r4, #0
	bl sub_02018144
	add r7, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02018144
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	str r4, [sp]
	bl sub_02002F5C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02002F70

	thumb_func_start sub_02002FA0
sub_02002FA0: ; 0x02002FA0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x14
	add r5, r1, #0
	mul r5, r0
	ldr r0, [r4, r5]
	bl sub_020181C4
	add r0, r4, r5
	ldr r0, [r0, #4]
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02002FA0

	thumb_func_start sub_02002FBC
sub_02002FBC: ; 0x02002FBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, sp, #8
	ldrh r7, [r0, #0x10]
	add r6, r2, #0
	mov r0, #0x14
	mul r6, r0
	str r1, [sp]
	add r0, r1, #0
	ldr r1, [r5, r6]
	lsl r4, r3, #1
	add r1, r1, r4
	add r2, r7, #0
	bl sub_020C4B18
	add r1, r5, r6
	ldr r1, [r1, #4]
	ldr r0, [sp]
	add r1, r1, r4
	add r2, r7, #0
	bl sub_020C4B18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02002FBC

	thumb_func_start sub_02002FEC
sub_02002FEC: ; 0x02002FEC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, sp, #4
	ldr r4, [sp, #0x1c]
	bl sub_02006F88
	add r6, r0, #0
	bne _02003006
	bl sub_02022974
_02003006:
	cmp r4, #0
	bne _0200300E
	ldr r0, [sp, #4]
	ldr r4, [r0, #8]
_0200300E:
	add r0, sp, #8
	ldrh r0, [r0, #0x18]
	ldr r2, [sp, #0x18]
	mov r1, #0x14
	mul r1, r2
	add r1, r5, r1
	lsl r0, r0, #1
	ldr r1, [r1, #8]
	add r0, r4, r0
	cmp r0, r1
	bls _02003028
	bl sub_02022974
_02003028:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	add r3, sp, #8
	ldr r2, [r1, #0xc]
	ldrh r1, [r3, #0x1c]
	ldrh r3, [r3, #0x18]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r2, r1
	ldr r2, [sp, #0x18]
	bl sub_02002FBC
	add r0, r6, #0
	bl sub_020181C4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02002FEC

	thumb_func_start sub_02003050
sub_02003050: ; 0x02003050
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	add r4, sp, #8
	ldrh r4, [r4, #0x18]
	str r4, [sp, #8]
	mov r4, #0
	str r4, [sp, #0xc]
	bl sub_02002FEC
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02003050

	thumb_func_start sub_02003070
sub_02003070: ; 0x02003070
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x14
	add r6, r0, #0
	mul r1, r4
	add r5, r2, #0
	add r1, r6, r1
	add r7, r3, #0
	lsl r0, r5, #1
	ldr r1, [r1, #8]
	add r0, r7, r0
	cmp r0, r1
	bls _0200308E
	bl sub_02022974
_0200308E:
	cmp r4, #3
	bhi _020030C6
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200309E: ; jump table
	.short _020030A6 - _0200309E - 2 ; case 0
	.short _020030AE - _0200309E - 2 ; case 1
	.short _020030B6 - _0200309E - 2 ; case 2
	.short _020030BE - _0200309E - 2 ; case 3
_020030A6:
	bl sub_020241F0
	add r1, r0, #0
	b _020030CC
_020030AE:
	bl sub_02024200
	add r1, r0, #0
	b _020030CC
_020030B6:
	bl sub_02024210
	add r1, r0, #0
	b _020030CC
_020030BE:
	bl sub_02024218
	add r1, r0, #0
	b _020030CC
_020030C6:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_020030CC:
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	lsl r2, r5, #1
	str r0, [sp]
	add r1, r1, r2
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_02002FBC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02003070

	thumb_func_start sub_020030E4
sub_020030E4: ; 0x020030E4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r3, #0
	add r2, sp, #0
	add r3, r4, #0
	bl sub_02006F88
	add r4, r0, #0
	bne _020030FA
	bl sub_02022974
_020030FA:
	cmp r5, #0
	bne _02003102
	ldr r0, [sp]
	ldr r5, [r0, #8]
_02003102:
	ldr r0, [sp]
	add r2, r5, #0
	ldr r1, [r0, #0xc]
	add r0, sp, #0
	ldrh r0, [r0, #0x10]
	lsl r0, r0, #1
	add r0, r1, r0
	ldr r1, [sp, #0x14]
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020030E4

	thumb_func_start sub_02003120
sub_02003120: ; 0x02003120
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	ldrh r1, [r4, #0x14]
	add r6, r3, #0
	str r1, [sp]
	ldrh r1, [r4, #0x10]
	lsl r4, r2, #1
	ldr r2, [sp]
	lsl r7, r1, #1
	mov r1, #0x14
	mul r6, r1
	mul r1, r0
	ldr r0, [r5, r1]
	str r1, [sp, #4]
	ldr r1, [r5, r6]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_020C4B18
	ldr r0, [sp, #4]
	add r1, r5, r6
	ldr r0, [r5, r0]
	ldr r1, [r1, #4]
	ldr r2, [sp]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_020C4B18
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02003120

	thumb_func_start sub_02003164
sub_02003164: ; 0x02003164
	mov r2, #0x14
	mul r2, r1
	ldr r0, [r0, r2]
	bx lr
	thumb_func_end sub_02003164

	thumb_func_start sub_0200316C
sub_0200316C: ; 0x0200316C
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200316C

	thumb_func_start sub_02003178
sub_02003178: ; 0x02003178
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #8]
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	mov r6, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	add r7, r1, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r4, r6, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x28
	ldrh r0, [r0, #8]
	str r0, [sp, #0xc]
_0200319A:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200327C
	cmp r0, #1
	bne _0200320E
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r1, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bl sub_0200327C
	cmp r0, #0
	bne _0200320E
	mov r0, #0x14
	add r6, r4, #0
	mul r6, r0
	add r0, r4, #0
	add r1, r5, r6
	add r2, sp, #0x30
	bl sub_020032D0
	ldr r0, [sp, #0x3c]
	add r1, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x40]
	str r0, [sp, #4]
	add r0, r5, r6
	ldrh r1, [r1, #8]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x38]
	add r0, #0xc
	bl sub_0200330C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02003290
	cmp r4, #4
	blo _020031FC
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #8
	bl sub_02003504
	b _02003206
_020031FC:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	bl sub_02003504
_02003206:
	ldr r1, [sp, #0xc]
	add r0, sp, #0x28
	strh r1, [r0, #8]
	mov r6, #1
_0200320E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xe
	blo _0200319A
	cmp r6, #1
	bne _02003268
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r2, [r5, r0]
	ldr r1, _02003274 ; =0xFFFF0003
	and r1, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x12
	orr r2, r7
	lsl r2, r2, #0x12
	lsr r2, r2, #0x10
	orr r1, r2
	strh r1, [r5, r0]
	add r1, r0, #2
	ldrh r1, [r5, r1]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1f
	bne _02003268
	add r1, r0, #2
	ldrh r2, [r5, r1]
	mov r1, #1
	lsl r1, r1, #0xe
	orr r2, r1
	add r1, r0, #2
	strh r2, [r5, r1]
	ldrh r2, [r5, r0]
	mov r1, #3
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r5, r0]
	mov r2, #0
	add r0, r0, #4
	strb r2, [r5, r0]
	ldr r0, _02003278 ; =sub_020033CC
	add r1, r5, #0
	sub r2, r2, #2
	bl sub_0200D9E8
_02003268:
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_02003274: .word 0xFFFF0003
_02003278: .word sub_020033CC
	thumb_func_end sub_02003178

	thumb_func_start sub_0200327C
sub_0200327C: ; 0x0200327C
	mov r3, #1
	add r2, r3, #0
	lsl r2, r1
	tst r0, r2
	bne _02003288
	mov r3, #0
_02003288:
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200327C

	thumb_func_start sub_02003290
sub_02003290: ; 0x02003290
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020032C8 ; =0x0000011A
	add r4, r1, #0
	ldrh r0, [r5, r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	bl sub_0200327C
	cmp r0, #1
	beq _020032C6
	ldr r3, _020032C8 ; =0x0000011A
	ldr r1, _020032CC ; =0xFFFFC000
	ldrh r2, [r5, r3]
	add r0, r2, #0
	lsl r2, r2, #0x12
	lsr r6, r2, #0x12
	mov r2, #1
	lsl r2, r4
	orr r2, r6
	lsl r2, r2, #0x10
	and r0, r1
	lsr r2, r2, #0x10
	lsr r1, r1, #0x12
	and r1, r2
	orr r0, r1
	strh r0, [r5, r3]
_020032C6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020032C8: .word 0x0000011A
_020032CC: .word 0xFFFFC000
	thumb_func_end sub_02003290

	thumb_func_start sub_020032D0
sub_020032D0: ; 0x020032D0
	push {r4, r5}
	cmp r0, #4
	ldr r0, [r1, #8]
	bge _020032DC
	lsl r0, r0, #0x13
	b _020032E0
_020032DC:
	lsr r0, r0, #9
	lsl r0, r0, #0x18
_020032E0:
	mov r4, #0
	lsr r0, r0, #0x18
	add r5, r4, #0
	cmp r0, #0
	bls _02003300
	mov r3, #1
_020032EC:
	add r1, r3, #0
	lsl r1, r5
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	cmp r5, r0
	blo _020032EC
_02003300:
	ldrh r0, [r2]
	and r0, r4
	strh r0, [r2]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020032D0

	thumb_func_start sub_0200330C
sub_0200330C: ; 0x0200330C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r3, #0
	cmp r2, #0
	bge _0200333C
	add r0, r2, #0
	bl sub_020D4070
	add r0, r0, #2
	ldrh r1, [r5, #6]
	mov r2, #0xf
	lsl r0, r0, #0x10
	bic r1, r2
	lsr r2, r0, #0x10
	mov r0, #0xf
	and r0, r2
	orr r0, r1
	strh r0, [r5, #6]
	ldrh r1, [r5, #2]
	mov r0, #0x3f
	bic r1, r0
	strh r1, [r5, #2]
	b _0200335A
_0200333C:
	ldrh r1, [r5, #6]
	mov r0, #0xf
	bic r1, r0
	mov r0, #2
	orr r0, r1
	strh r0, [r5, #6]
	ldrh r0, [r5, #2]
	mov r1, #0x3f
	bic r0, r1
	lsl r1, r2, #0x10
	lsr r2, r1, #0x10
	mov r1, #0x3f
	and r1, r2
	orr r0, r1
	strh r0, [r5, #2]
_0200335A:
	strh r6, [r5]
	ldrh r1, [r5, #2]
	ldr r0, _020033BC ; =0xFFFFF83F
	add r3, sp, #0
	and r1, r0
	lsl r0, r4, #0x1b
	lsr r0, r0, #0x15
	orr r0, r1
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	ldr r0, _020033C0 ; =0xFFFF07FF
	add r2, r1, #0
	ldrb r1, [r3, #0x10]
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r5, #2]
	ldrh r0, [r5, #4]
	ldr r2, _020033C4 ; =0xFFFF8000
	ldrh r6, [r3, #0x14]
	lsr r3, r2, #0x11
	and r0, r2
	and r3, r6
	orr r0, r3
	strh r0, [r5, #4]
	ldrh r3, [r5, #6]
	ldr r0, _020033C8 ; =0xFFFFFC0F
	and r0, r3
	ldrh r3, [r5, #2]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1a
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x16
	orr r0, r3
	strh r0, [r5, #6]
	cmp r4, r1
	ldrh r1, [r5, #4]
	bhs _020033B0
	sub r0, r2, #1
	and r0, r1
	strh r0, [r5, #4]
	pop {r4, r5, r6, pc}
_020033B0:
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_020033BC: .word 0xFFFFF83F
_020033C0: .word 0xFFFF07FF
_020033C4: .word 0xFFFF8000
_020033C8: .word 0xFFFFFC0F
	thumb_func_end sub_0200330C

	thumb_func_start sub_020033CC
sub_020033CC: ; 0x020033CC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0x47
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	add r5, r0, #0
	cmp r2, #1
	bne _0200340C
	mov r2, #0
	strb r2, [r4, r1]
	sub r2, r1, #2
	ldrh r3, [r4, r2]
	ldr r2, _0200345C ; =0xFFFFC000
	add r5, r3, #0
	and r5, r2
	sub r3, r1, #2
	strh r5, [r4, r3]
	sub r3, r1, #4
	ldrh r5, [r4, r3]
	ldr r3, _02003460 ; =0xFFFF0003
	sub r2, r2, #1
	and r5, r3
	sub r3, r1, #4
	strh r5, [r4, r3]
	sub r3, r1, #2
	ldrh r3, [r4, r3]
	sub r1, r1, #2
	and r2, r3
	strh r2, [r4, r1]
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
_0200340C:
	sub r0, r1, #4
	ldrh r2, [r4, r0]
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _02003458
	sub r0, r1, #2
	ldrh r0, [r4, r0]
	ldr r3, _0200345C ; =0xFFFFC000
	lsl r2, r2, #0x10
	lsr r6, r2, #0x12
	lsr r2, r3, #0x12
	and r0, r3
	and r2, r6
	orr r2, r0
	sub r0, r1, #2
	strh r2, [r4, r0]
	add r0, r4, #0
	bl sub_02003468
	add r0, r4, #0
	bl sub_02003488
	mov r1, #0x46
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bne _02003458
	add r0, r1, #2
	ldrh r2, [r4, r0]
	ldr r0, _02003464 ; =0xFFFFBFFF
	and r2, r0
	add r0, r1, #2
	strh r2, [r4, r0]
	add r0, r5, #0
	bl sub_0200DA58
_02003458:
	pop {r4, r5, r6, pc}
	nop
_0200345C: .word 0xFFFFC000
_02003460: .word 0xFFFF0003
_02003464: .word 0xFFFFBFFF
	thumb_func_end sub_020033CC

	thumb_func_start sub_02003468
sub_02003468: ; 0x02003468
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0x10
_02003470:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020034A8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _02003470
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02003468

	thumb_func_start sub_02003488
sub_02003488: ; 0x02003488
	push {r4, r5, r6, lr}
	mov r4, #4
	add r6, r4, #0
	add r5, r0, #0
	add r6, #0xfc
_02003492:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020034A8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xe
	blo _02003492
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02003488

	thumb_func_start sub_020034A8
sub_020034A8: ; 0x020034A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bl sub_0200327C
	cmp r0, #0
	beq _020034FC
	mov r0, #0x14
	mul r0, r4
	add r2, r5, r0
	ldrh r0, [r2, #0x12]
	ldrh r3, [r2, #0xe]
	lsl r1, r0, #0x16
	lsl r3, r3, #0x1a
	lsr r1, r1, #0x1a
	lsr r3, r3, #0x1a
	cmp r1, r3
	bhs _020034EC
	ldr r3, _02003500 ; =0xFFFFFC0F
	and r3, r0
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x16
	orr r0, r3
	strh r0, [r2, #0x12]
	pop {r4, r5, r6, pc}
_020034EC:
	ldr r1, _02003500 ; =0xFFFFFC0F
	and r0, r1
	strh r0, [r2, #0x12]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02003504
_020034FC:
	pop {r4, r5, r6, pc}
	nop
_02003500: .word 0xFFFFFC0F
	thumb_func_end sub_020034A8

	thumb_func_start sub_02003504
sub_02003504: ; 0x02003504
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x14
	mul r1, r0
	ldr r0, [sp]
	mov r6, #0
	add r5, r0, r1
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0xc
	add r7, r2, #0
	add r4, r6, #0
	str r0, [sp, #8]
_02003524:
	ldrh r0, [r5, #0xc]
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	bl sub_0200327C
	cmp r0, #0
	beq _02003544
	ldr r0, [r5, #0]
	lsl r1, r4, #1
	ldr r2, [r5, #4]
	add r0, r0, r1
	add r1, r2, r1
	ldr r2, [sp, #8]
	add r3, r7, #0
	bl sub_02003560
_02003544:
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #0x10
	blo _02003524
	ldr r1, [sp, #4]
	add r5, #0xc
	lsl r1, r1, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	add r2, r5, #0
	bl sub_020035EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02003504

	thumb_func_start sub_02003560
sub_02003560: ; 0x02003560
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	mov r0, #0
	add r6, r1, #0
	mov ip, r0
	str r2, [sp]
	mov lr, r3
	add r0, r3, #0
	beq _020035E8
_02003574:
	ldr r0, [sp, #4]
	mov r1, #0x1f
	ldrh r0, [r0]
	asr r2, r0, #5
	add r5, r2, #0
	and r5, r1
	ldr r1, [sp]
	asr r4, r0, #0xa
	ldrh r1, [r1, #4]
	lsl r1, r1, #0x11
	lsr r3, r1, #0x11
	ldr r1, [sp]
	ldrh r1, [r1, #2]
	lsl r1, r1, #0x15
	lsr r2, r1, #0x1b
	mov r1, #0x1f
	and r1, r4
	mov r4, #0x1f
	and r0, r4
	and r4, r3
	sub r4, r4, r0
	mul r4, r2
	asr r4, r4, #4
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	asr r4, r3, #0xa
	mov r0, #0x1f
	and r0, r4
	sub r0, r0, r1
	mul r0, r2
	asr r0, r0, #4
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	asr r3, r3, #5
	mov r1, #0x1f
	and r1, r3
	sub r1, r1, r5
	mul r1, r2
	asr r1, r1, #4
	add r1, r5, r1
	lsl r1, r1, #0x18
	lsl r0, r0, #0xa
	lsr r1, r1, #0x13
	orr r0, r1
	orr r0, r7
	strh r0, [r6]
	ldr r0, [sp, #4]
	add r6, r6, #2
	add r0, r0, #2
	str r0, [sp, #4]
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blo _02003574
_020035E8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02003560

	thumb_func_start sub_020035EC
sub_020035EC: ; 0x020035EC
	push {r4, r5}
	ldrh r4, [r2, #2]
	lsl r3, r4, #0x10
	lsl r4, r4, #0x15
	lsr r3, r3, #0x1b
	lsr r4, r4, #0x1b
	cmp r4, r3
	bne _02003626
	mov r3, #0x46
	lsl r3, r3, #2
	ldrh r4, [r0, r3]
	mov r2, #1
	lsl r2, r1
	lsl r1, r4, #0x10
	lsr r5, r1, #0x12
	add r1, r5, #0
	tst r1, r2
	beq _02003686
	eor r2, r5
	lsl r2, r2, #0x10
	ldr r1, _0200368C ; =0xFFFF0003
	lsr r2, r2, #0x10
	lsl r2, r2, #0x12
	and r1, r4
	lsr r2, r2, #0x10
	orr r1, r2
	strh r1, [r0, r3]
	pop {r4, r5}
	bx lr
_02003626:
	ldrh r0, [r2, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bne _0200365C
	lsl r0, r4, #0x10
	asr r1, r0, #0x10
	ldrh r0, [r2, #6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r3
	ble _02003646
	lsl r0, r3, #0x10
	asr r4, r0, #0x10
_02003646:
	ldrh r1, [r2, #2]
	ldr r0, _02003690 ; =0xFFFFF83F
	and r1, r0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x15
	orr r0, r1
	strh r0, [r2, #2]
	pop {r4, r5}
	bx lr
_0200365C:
	lsl r0, r4, #0x10
	asr r1, r0, #0x10
	ldrh r0, [r2, #6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r3
	bge _02003674
	lsl r0, r3, #0x10
	asr r4, r0, #0x10
_02003674:
	ldrh r1, [r2, #2]
	ldr r0, _02003690 ; =0xFFFFF83F
	and r1, r0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x15
	orr r0, r1
	strh r0, [r2, #2]
_02003686:
	pop {r4, r5}
	bx lr
	nop
_0200368C: .word 0xFFFF0003
_02003690: .word 0xFFFFF83F
	thumb_func_end sub_020035EC

	thumb_func_start sub_02003694
sub_02003694: ; 0x02003694
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02003844 ; =0x0000011A
	ldrh r1, [r6, r0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1f
	bne _020036B0
	sub r0, r0, #2
	ldrh r0, [r6, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r0, #1
	beq _020036B0
	b _02003842
_020036B0:
	mov r7, #2
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #0xc
_020036B8:
	ldr r0, _02003844 ; =0x0000011A
	ldrh r1, [r6, r0]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x1f
	bne _020036D8
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020036E4
	lsl r0, r1, #0x12
	lsl r1, r5, #0x10
	lsr r0, r0, #0x12
	lsr r1, r1, #0x10
	bl sub_0200327C
	cmp r0, #0
	beq _020036E4
_020036D8:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl sub_020C2C54
	cmp r5, #0xd
	bls _020036E6
_020036E4:
	b _0200380C
_020036E6:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020036F2: ; jump table
	.short _0200370E - _020036F2 - 2 ; case 0
	.short _0200371A - _020036F2 - 2 ; case 1
	.short _02003726 - _020036F2 - 2 ; case 2
	.short _02003732 - _020036F2 - 2 ; case 3
	.short _0200373E - _020036F2 - 2 ; case 4
	.short _02003752 - _020036F2 - 2 ; case 5
	.short _02003766 - _020036F2 - 2 ; case 6
	.short _0200377C - _020036F2 - 2 ; case 7
	.short _02003792 - _020036F2 - 2 ; case 8
	.short _020037A6 - _020036F2 - 2 ; case 9
	.short _020037BA - _020036F2 - 2 ; case 10
	.short _020037D0 - _020036F2 - 2 ; case 11
	.short _020037E6 - _020036F2 - 2 ; case 12
	.short _020037FA - _020036F2 - 2 ; case 13
_0200370E:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C00B4
	b _0200380C
_0200371A:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0108
	b _0200380C
_02003726:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0160
	b _0200380C
_02003732:
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C01B8
	b _0200380C
_0200373E:
	bl sub_020C096C
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0A0C
	bl sub_020C0A7C
	b _0200380C
_02003752:
	bl sub_020C096C
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	add r1, r7, #0
	bl sub_020C0A0C
	bl sub_020C0A7C
	b _0200380C
_02003766:
	bl sub_020C096C
	mov r1, #1
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020C0A0C
	bl sub_020C0A7C
	b _0200380C
_0200377C:
	bl sub_020C096C
	mov r1, #6
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xc
	bl sub_020C0A0C
	bl sub_020C0A7C
	b _0200380C
_02003792:
	bl sub_020C0BBC
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0BD4
	bl sub_020C0C38
	b _0200380C
_020037A6:
	bl sub_020C0BBC
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	add r1, r7, #0
	bl sub_020C0BD4
	bl sub_020C0C38
	b _0200380C
_020037BA:
	bl sub_020C0BBC
	mov r1, #1
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xe
	bl sub_020C0BD4
	bl sub_020C0C38
	b _0200380C
_020037D0:
	bl sub_020C0BBC
	mov r1, #6
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	lsl r1, r1, #0xc
	bl sub_020C0BD4
	bl sub_020C0C38
	b _0200380C
_020037E6:
	bl sub_020C0AC4
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0B0C
	bl sub_020C0B78
	b _0200380C
_020037FA:
	bl sub_020C0C78
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_020C0C90
	bl sub_020C0CF4
_0200380C:
	add r5, r5, #1
	add r4, #0x14
	cmp r5, #0xe
	bge _02003816
	b _020036B8
_02003816:
	ldr r3, _02003844 ; =0x0000011A
	ldr r1, _02003848 ; =0xFFFFC000
	sub r2, r3, #2
	ldrh r2, [r6, r2]
	ldrh r0, [r6, r3]
	lsl r2, r2, #0x10
	and r0, r1
	lsr r2, r2, #0x12
	lsr r1, r1, #0x12
	and r1, r2
	orr r0, r1
	strh r0, [r6, r3]
	ldrh r0, [r6, r3]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	bne _02003842
	sub r0, r3, #2
	ldrh r1, [r6, r0]
	mov r0, #3
	bic r1, r0
	sub r0, r3, #2
	strh r1, [r6, r0]
_02003842:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02003844: .word 0x0000011A
_02003848: .word 0xFFFFC000
	thumb_func_end sub_02003694

	thumb_func_start sub_0200384C
sub_0200384C: ; 0x0200384C
	mov r1, #0x46
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x12
	bx lr
	thumb_func_end sub_0200384C

	thumb_func_start sub_02003858
sub_02003858: ; 0x02003858
	push {r3, r4}
	ldr r3, _02003874 ; =0x0000011A
	lsl r1, r1, #0x10
	ldrh r4, [r0, r3]
	ldr r2, _02003878 ; =0xFFFF7FFF
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	and r2, r4
	lsr r1, r1, #0x10
	orr r1, r2
	strh r1, [r0, r3]
	pop {r3, r4}
	bx lr
	nop
_02003874: .word 0x0000011A
_02003878: .word 0xFFFF7FFF
	thumb_func_end sub_02003858

	thumb_func_start sub_0200387C
sub_0200387C: ; 0x0200387C
	push {r3, r4}
	mov r2, #0x46
	lsl r2, r2, #2
	ldrh r3, [r0, r2]
	mov r4, #3
	bic r3, r4
	mov r4, #1
	and r1, r4
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	mov r1, #3
	and r1, r4
	orr r1, r3
	strh r1, [r0, r2]
	ldrh r3, [r0, r2]
	ldr r1, _020038A8 ; =0xFFFF0003
	and r3, r1
	ldr r1, _020038AC ; =0x0000FFFC
	orr r1, r3
	strh r1, [r0, r2]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_020038A8: .word 0xFFFF0003
_020038AC: .word 0x0000FFFC
	thumb_func_end sub_0200387C

	thumb_func_start sub_020038B0
sub_020038B0: ; 0x020038B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r3, [sp]
	mov r0, #0x14
	add r4, r1, #0
	mul r4, r0
	add r0, sp, #0x10
	ldrh r0, [r0, #0x14]
	add r7, r2, #0
	ldr r5, [sp, #0x20]
	str r0, [sp, #4]
	lsl r1, r0, #1
	add r0, r6, r4
	ldr r0, [r0, #8]
	cmp r1, r0
	bls _020038D6
	bl sub_02022974
_020038D6:
	sub r0, r7, #1
	cmp r0, #1
	bhi _020038EE
	ldr r2, [r6, r4]
	lsl r1, r5, #1
	add r1, r2, r1
	ldr r2, [sp, #4]
	ldr r0, [sp]
	sub r2, r2, r5
	lsl r2, r2, #1
	bl sub_020C4AF0
_020038EE:
	cmp r7, #0
	beq _020038F6
	cmp r7, #2
	bne _0200390A
_020038F6:
	add r1, r6, r4
	ldr r2, [r1, #4]
	lsl r1, r5, #1
	add r1, r2, r1
	ldr r2, [sp, #4]
	ldr r0, [sp]
	sub r2, r2, r5
	lsl r2, r2, #1
	bl sub_020C4AF0
_0200390A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020038B0

	thumb_func_start sub_02003910
sub_02003910: ; 0x02003910
	push {r3, lr}
	cmp r2, #1
	bne _02003922
	mov r2, #0x14
	mul r2, r1
	ldr r1, [r0, r2]
	lsl r0, r3, #1
	ldrh r0, [r1, r0]
	pop {r3, pc}
_02003922:
	cmp r2, #0
	bne _02003934
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r2
	ldr r1, [r0, #4]
	lsl r0, r3, #1
	ldrh r0, [r1, r0]
	pop {r3, pc}
_02003934:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02003910

	thumb_func_start sub_0200393C
sub_0200393C: ; 0x0200393C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	str r1, [sp, #4]
	add r7, r2, #0
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	mov ip, r1
	lsl r1, r0, #0x16
	lsl r0, r0, #0x11
	lsr r1, r1, #0x1b
	lsr r0, r0, #0x1b
	mov r2, #0
	mov lr, r1
	str r0, [sp, #8]
	cmp r7, #0
	bls _020039AA
_02003962:
	ldr r0, [sp]
	lsl r6, r2, #1
	ldrh r4, [r0, r6]
	lsl r0, r4, #0x1b
	lsr r1, r0, #0x1b
	lsl r0, r4, #0x16
	lsl r4, r4, #0x11
	lsr r5, r4, #0x1b
	ldr r4, [sp, #8]
	lsr r0, r0, #0x1b
	sub r4, r4, r5
	mul r4, r3
	asr r4, r4, #4
	add r4, r5, r4
	lsl r5, r4, #0xa
	mov r4, ip
	sub r4, r4, r1
	mul r4, r3
	asr r4, r4, #4
	add r1, r1, r4
	mov r4, lr
	sub r4, r4, r0
	mul r4, r3
	asr r4, r4, #4
	add r0, r0, r4
	lsl r0, r0, #5
	orr r0, r1
	add r1, r5, #0
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r0, r6]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, r7
	blo _02003962
_020039AA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200393C

	thumb_func_start sub_020039B0
sub_020039B0: ; 0x020039B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r5, r0, #0
	mov r2, #0x14
	add r6, r1, #0
	mul r6, r2
	str r3, [sp, #4]
	ldr r1, [r5, r6]
	mov r0, #0
	add r4, r5, r6
	cmp r1, #0
	beq _020039D2
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020039D2
	mov r0, #1
_020039D2:
	cmp r0, #0
	bne _020039DA
	bl sub_02022974
_020039DA:
	add r3, sp, #0x10
	ldrh r0, [r3, #0x14]
	add r2, r5, r6
	lsl r1, r7, #1
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r2, [r2, #4]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3, #0x10]
	ldr r2, [sp, #4]
	bl sub_0200393C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020039B0

	thumb_func_start sub_020039F8
sub_020039F8: ; 0x020039F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp, #4]
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	ldr r7, [sp, #0x20]
	beq _02003A28
_02003A08:
	mov r0, #1
	tst r0, r4
	beq _02003A1C
	str r7, [sp]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x10
	bl sub_0200393C
_02003A1C:
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
	add r6, #0x20
	add r5, #0x20
	cmp r4, #0
	bne _02003A08
_02003A28:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020039F8

	thumb_func_start sub_02003A2C
sub_02003A2C: ; 0x02003A2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r3, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x20]
	add r5, r2, #0
	mov r1, #0x14
	add r2, r7, #0
	str r0, [sp, #0x20]
	mul r2, r1
	mov r4, #0
	ldr r1, [r6, r2]
	add r0, r4, #0
	cmp r1, #0
	beq _02003A56
	add r1, r6, r2
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _02003A56
	mov r0, #1
_02003A56:
	cmp r0, #0
	bne _02003A5E
	bl sub_02022974
_02003A5E:
	cmp r5, #0
	beq _02003A88
_02003A62:
	mov r0, #1
	tst r0, r5
	beq _02003A7E
	ldr r0, [sp, #8]
	lsl r2, r4, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_020039B0
_02003A7E:
	lsl r0, r5, #0xf
	lsr r5, r0, #0x10
	add r4, #0x10
	cmp r5, #0
	bne _02003A62
_02003A88:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02003A2C

	thumb_func_start sub_02003A8C
sub_02003A8C: ; 0x02003A8C
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r1
	mov ip, r2
	add r7, r3, #0
	mov r4, #0
	cmp r1, #0
	ble _02003B04
	ldr r6, [sp, #0x18]
_02003A9C:
	ldrh r3, [r0]
	mov r1, #0x1f
	add r2, r3, #0
	asr r5, r3, #0xa
	and r2, r1
	and r5, r1
	mov r1, #0x1d
	mul r1, r5
	mov r5, #0x4c
	mul r5, r2
	asr r3, r3, #5
	mov r2, #0x1f
	and r3, r2
	mov r2, #0x97
	mul r2, r3
	add r2, r5, r2
	add r1, r1, r2
	asr r3, r1, #8
	mov r1, ip
	add r2, r1, #0
	mul r2, r3
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	asr r2, r1, #8
	add r1, r7, #0
	mul r1, r3
	mul r3, r6
	lsl r1, r1, #0x10
	lsl r3, r3, #0x10
	lsr r1, r1, #0x10
	lsr r3, r3, #0x10
	asr r1, r1, #8
	asr r3, r3, #8
	cmp r2, #0x1f
	ble _02003AE4
	mov r2, #0x1f
_02003AE4:
	cmp r1, #0x1f
	ble _02003AEA
	mov r1, #0x1f
_02003AEA:
	cmp r3, #0x1f
	ble _02003AF0
	mov r3, #0x1f
_02003AF0:
	lsl r3, r3, #0xa
	lsl r1, r1, #5
	orr r1, r3
	orr r1, r2
	strh r1, [r0]
	add r4, r4, #1
	mov r1, lr
	add r0, r0, #2
	cmp r4, r1
	blt _02003A9C
_02003B04:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02003A8C

	thumb_func_start sub_02003B08
sub_02003B08: ; 0x02003B08
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, sp, #4
	bl sub_02006F88
	add r4, r0, #0
	bne _02003B20
	bl sub_02022974
_02003B20:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02003B2C
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x1c]
_02003B2C:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x28]
	ldr r0, [r0, #0xc]
	mov r1, #0x10
	bl sub_02003A8C
	ldr r0, [sp, #0x1c]
	add r3, sp, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	ldrh r3, [r3, #0x18]
	ldr r1, [r1, #0xc]
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	bl sub_02002FBC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02003B08

	thumb_func_start sub_02003B60
sub_02003B60: ; 0x02003B60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02003D54
	add r4, r0, #0
	bl sub_020B799C
	bl sub_020041A0
	add r0, r4, #0
	bl sub_0200413C
	add r0, r4, #0
	ldr r1, _02003BC8 ; =0x000BBC00
	add r0, #0x98
	bl sub_020B9ED4
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r2, r4, #0
	add r2, #0x94
	ldr r1, _02003BCC ; =0x020FECE0
	ldr r2, [r2, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020B97C8
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_020BACDC
	add r0, r4, #0
	bl sub_02004160
	add r0, r4, #0
	bl sub_0200417C
	ldr r0, _02003BD0 ; =0x02101DF0
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, _02003BD4 ; =0x000BCD4C
	str r5, [r4, r0]
	ldrh r0, [r6]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bl sub_02004FB8
	pop {r4, r5, r6, pc}
	nop
_02003BC8: .word 0x000BBC00
_02003BCC: .word 0x020FECE0
_02003BD0: .word 0x02101DF0
_02003BD4: .word 0x000BCD4C
	thumb_func_end sub_02003B60

	thumb_func_start sub_02003BD8
sub_02003BD8: ; 0x02003BD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_02003D54
	add r7, r0, #0
	bl sub_02003D28
	cmp r0, #0
	bne _02003BFA
	ldr r0, _02003C54 ; =0x000BCD00
	ldr r1, [r7, r0]
	cmp r1, #0
	ble _02003BF6
	sub r1, r1, #1
	str r1, [r7, r0]
_02003BF6:
	bl sub_02003C64
_02003BFA:
	bl sub_02006224
	mov r4, #0
	add r5, r7, #0
	add r6, r7, #0
_02003C04:
	ldr r1, _02003C58 ; =0x000BCD84
	add r0, r7, r4
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02003C40
	ldr r1, _02003C58 ; =0x000BCD84
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _02003C58 ; =0x000BCD84
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02003C40
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	ldr r2, _02003C5C ; =0x000BCD68
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r1, #0
	sub r1, r1, #4
	ldr r3, _02003C60 ; =0x000BCD70
	sub r0, #0x24
	ldrh r1, [r6, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_020059D0
_02003C40:
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #2
	cmp r4, #2
	blt _02003C04
	bl sub_020B7A24
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02003C54: .word 0x000BCD00
_02003C58: .word 0x000BCD84
_02003C5C: .word 0x000BCD68
_02003C60: .word 0x000BCD70
	thumb_func_end sub_02003BD8

	thumb_func_start sub_02003C64
sub_02003C64: ; 0x02003C64
	push {r4, lr}
	bl sub_02003D54
	add r4, r0, #0
	ldr r0, _02003D00 ; =0x02101DF0
	ldr r0, [r0, #0]
	cmp r0, #6
	bhi _02003CFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02003C80: ; jump table
	.short _02003CFC - _02003C80 - 2 ; case 0
	.short _02003C8E - _02003C80 - 2 ; case 1
	.short _02003CFC - _02003C80 - 2 ; case 2
	.short _02003C96 - _02003C80 - 2 ; case 3
	.short _02003CA6 - _02003C80 - 2 ; case 4
	.short _02003CB6 - _02003C80 - 2 ; case 5
	.short _02003CD4 - _02003C80 - 2 ; case 6
_02003C8E:
	mov r0, #2
	bl sub_02003D0C
	pop {r4, pc}
_02003C96:
	bl sub_02005684
	cmp r0, #0
	bne _02003CFC
	mov r0, #2
	bl sub_02003D0C
	pop {r4, pc}
_02003CA6:
	bl sub_02005684
	cmp r0, #0
	bne _02003CFC
	mov r0, #2
	bl sub_02003D0C
	pop {r4, pc}
_02003CB6:
	bl sub_02005684
	cmp r0, #0
	bne _02003CFC
	bl sub_02004FEC
	cmp r0, #0
	bne _02003CFC
	bl sub_020041B4
	ldr r0, _02003D04 ; =0x000BCD0E
	ldrh r0, [r4, r0]
	bl sub_0200549C
	pop {r4, pc}
_02003CD4:
	bl sub_02005684
	cmp r0, #0
	bne _02003CFC
	bl sub_02004FEC
	cmp r0, #0
	bne _02003CFC
	bl sub_020041B4
	ldr r0, _02003D04 ; =0x000BCD0E
	ldrh r0, [r4, r0]
	bl sub_0200549C
	ldr r1, _02003D08 ; =0x000BCD08
	mov r0, #0x7f
	ldr r1, [r4, r1]
	mov r2, #0
	bl sub_0200560C
_02003CFC:
	pop {r4, pc}
	nop
_02003D00: .word 0x02101DF0
_02003D04: .word 0x000BCD0E
_02003D08: .word 0x000BCD08
	thumb_func_end sub_02003C64

	thumb_func_start sub_02003D0C
sub_02003D0C: ; 0x02003D0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	ldr r1, _02003D20 ; =0x000BCCFC
	mov r2, #0
	strh r2, [r0, r1]
	ldr r0, _02003D24 ; =0x02101DF0
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_02003D20: .word 0x000BCCFC
_02003D24: .word 0x02101DF0
	thumb_func_end sub_02003D0C

	thumb_func_start sub_02003D28
sub_02003D28: ; 0x02003D28
	push {r4, lr}
	bl sub_02003D54
	add r4, r0, #0
	mov r0, #2
	bl sub_02004B04
	cmp r0, #0
	beq _02003D3E
	mov r0, #1
	pop {r4, pc}
_02003D3E:
	ldr r0, _02003D50 ; =0x000BCD12
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _02003D4A
	mov r0, #1
	pop {r4, pc}
_02003D4A:
	mov r0, #0
	pop {r4, pc}
	nop
_02003D50: .word 0x000BCD12
	thumb_func_end sub_02003D28

	thumb_func_start sub_02003D54
sub_02003D54: ; 0x02003D54
	ldr r0, _02003D58 ; =0x02101DF8
	bx lr
	; .align 2, 0
_02003D58: .word 0x02101DF8
	thumb_func_end sub_02003D54

	thumb_func_start sub_02003D5C
sub_02003D5C: ; 0x02003D5C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	cmp r4, #0x36
	bls _02003D6A
	b _02003F2E
_02003D6A:
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02003D76: ; jump table
	.short _02003DF0 - _02003D76 - 2 ; case 0
	.short _02003DF6 - _02003D76 - 2 ; case 1
	.short _02003DFC - _02003D76 - 2 ; case 2
	.short _02003E02 - _02003D76 - 2 ; case 3
	.short _02003E08 - _02003D76 - 2 ; case 4
	.short _02003DE4 - _02003D76 - 2 ; case 5
	.short _02003DEA - _02003D76 - 2 ; case 6
	.short _02003E0E - _02003D76 - 2 ; case 7
	.short _02003E14 - _02003D76 - 2 ; case 8
	.short _02003E1A - _02003D76 - 2 ; case 9
	.short _02003E20 - _02003D76 - 2 ; case 10
	.short _02003E26 - _02003D76 - 2 ; case 11
	.short _02003E2C - _02003D76 - 2 ; case 12
	.short _02003E32 - _02003D76 - 2 ; case 13
	.short _02003E38 - _02003D76 - 2 ; case 14
	.short _02003E3E - _02003D76 - 2 ; case 15
	.short _02003E44 - _02003D76 - 2 ; case 16
	.short _02003E4A - _02003D76 - 2 ; case 17
	.short _02003E50 - _02003D76 - 2 ; case 18
	.short _02003E56 - _02003D76 - 2 ; case 19
	.short _02003E5C - _02003D76 - 2 ; case 20
	.short _02003E62 - _02003D76 - 2 ; case 21
	.short _02003E68 - _02003D76 - 2 ; case 22
	.short _02003E6E - _02003D76 - 2 ; case 23
	.short _02003E74 - _02003D76 - 2 ; case 24
	.short _02003E7A - _02003D76 - 2 ; case 25
	.short _02003E80 - _02003D76 - 2 ; case 26
	.short _02003E86 - _02003D76 - 2 ; case 27
	.short _02003E8C - _02003D76 - 2 ; case 28
	.short _02003E92 - _02003D76 - 2 ; case 29
	.short _02003E98 - _02003D76 - 2 ; case 30
	.short _02003E9E - _02003D76 - 2 ; case 31
	.short _02003EA4 - _02003D76 - 2 ; case 32
	.short _02003EAA - _02003D76 - 2 ; case 33
	.short _02003EB0 - _02003D76 - 2 ; case 34
	.short _02003EB6 - _02003D76 - 2 ; case 35
	.short _02003EBC - _02003D76 - 2 ; case 36
	.short _02003EC2 - _02003D76 - 2 ; case 37
	.short _02003EC8 - _02003D76 - 2 ; case 38
	.short _02003ECE - _02003D76 - 2 ; case 39
	.short _02003ED4 - _02003D76 - 2 ; case 40
	.short _02003EDA - _02003D76 - 2 ; case 41
	.short _02003EE0 - _02003D76 - 2 ; case 42
	.short _02003EE6 - _02003D76 - 2 ; case 43
	.short _02003EEC - _02003D76 - 2 ; case 44
	.short _02003EF2 - _02003D76 - 2 ; case 45
	.short _02003EF8 - _02003D76 - 2 ; case 46
	.short _02003EFE - _02003D76 - 2 ; case 47
	.short _02003F04 - _02003D76 - 2 ; case 48
	.short _02003F0A - _02003D76 - 2 ; case 49
	.short _02003F10 - _02003D76 - 2 ; case 50
	.short _02003F16 - _02003D76 - 2 ; case 51
	.short _02003F1C - _02003D76 - 2 ; case 52
	.short _02003F22 - _02003D76 - 2 ; case 53
	.short _02003F28 - _02003D76 - 2 ; case 54
_02003DE4:
	ldr r1, _02003F38 ; =0x000BCCFE
	add r0, r0, r1
	pop {r4, pc}
_02003DEA:
	ldr r1, _02003F3C ; =0x000BCCFF
	add r0, r0, r1
	pop {r4, pc}
_02003DF0:
	ldr r1, _02003F40 ; =0x000BBCBC
	add r0, r0, r1
	pop {r4, pc}
_02003DF6:
	ldr r1, _02003F44 ; =0x000BBCC0
	add r0, r0, r1
	pop {r4, pc}
_02003DFC:
	ldr r1, _02003F48 ; =0x000BBCC4
	add r0, r0, r1
	pop {r4, pc}
_02003E02:
	ldr r1, _02003F4C ; =0x000BBCE0
	add r0, r0, r1
	pop {r4, pc}
_02003E08:
	ldr r1, _02003F50 ; =0x000BCCE0
	add r0, r0, r1
	pop {r4, pc}
_02003E0E:
	ldr r1, _02003F54 ; =0x000BCD00
	add r0, r0, r1
	pop {r4, pc}
_02003E14:
	ldr r1, _02003F58 ; =0x000BCD04
	add r0, r0, r1
	pop {r4, pc}
_02003E1A:
	ldr r1, _02003F5C ; =0x000BCD08
	add r0, r0, r1
	pop {r4, pc}
_02003E20:
	ldr r1, _02003F60 ; =0x000BCD0C
	add r0, r0, r1
	pop {r4, pc}
_02003E26:
	ldr r1, _02003F64 ; =0x000BCD0E
	add r0, r0, r1
	pop {r4, pc}
_02003E2C:
	ldr r1, _02003F68 ; =0x000BCD10
	add r0, r0, r1
	pop {r4, pc}
_02003E32:
	ldr r1, _02003F6C ; =0x000BCD11
	add r0, r0, r1
	pop {r4, pc}
_02003E38:
	ldr r1, _02003F70 ; =0x000BCD12
	add r0, r0, r1
	pop {r4, pc}
_02003E3E:
	ldr r1, _02003F74 ; =0x000BCD14
	add r0, r0, r1
	pop {r4, pc}
_02003E44:
	ldr r1, _02003F78 ; =0x000BCD15
	add r0, r0, r1
	pop {r4, pc}
_02003E4A:
	ldr r1, _02003F7C ; =0x000BCD16
	add r0, r0, r1
	pop {r4, pc}
_02003E50:
	ldr r1, _02003F80 ; =0x000BCD17
	add r0, r0, r1
	pop {r4, pc}
_02003E56:
	ldr r1, _02003F84 ; =0x000BCD18
	add r0, r0, r1
	pop {r4, pc}
_02003E5C:
	ldr r1, _02003F88 ; =0x000BCD19
	add r0, r0, r1
	pop {r4, pc}
_02003E62:
	ldr r1, _02003F8C ; =0x000BCD1A
	add r0, r0, r1
	pop {r4, pc}
_02003E68:
	ldr r1, _02003F90 ; =0x000BCD1B
	add r0, r0, r1
	pop {r4, pc}
_02003E6E:
	ldr r1, _02003F94 ; =0x000BCD1C
	add r0, r0, r1
	pop {r4, pc}
_02003E74:
	ldr r1, _02003F98 ; =0x000BCD20
	add r0, r0, r1
	pop {r4, pc}
_02003E7A:
	ldr r1, _02003F9C ; =0x000BCD24
	add r0, r0, r1
	pop {r4, pc}
_02003E80:
	ldr r1, _02003FA0 ; =0x000BCD28
	add r0, r0, r1
	pop {r4, pc}
_02003E86:
	ldr r1, _02003FA4 ; =0x000BCD2C
	add r0, r0, r1
	pop {r4, pc}
_02003E8C:
	ldr r1, _02003FA8 ; =0x000BCD30
	add r0, r0, r1
	pop {r4, pc}
_02003E92:
	ldr r1, _02003FAC ; =0x000BCD34
	add r0, r0, r1
	pop {r4, pc}
_02003E98:
	ldr r1, _02003FB0 ; =0x000BCD38
	add r0, r0, r1
	pop {r4, pc}
_02003E9E:
	ldr r1, _02003FB4 ; =0x000BCD39
	add r0, r0, r1
	pop {r4, pc}
_02003EA4:
	ldr r1, _02003FB8 ; =0x000BCD3A
	add r0, r0, r1
	pop {r4, pc}
_02003EAA:
	ldr r1, _02003FBC ; =0x000BCD3C
	add r0, r0, r1
	pop {r4, pc}
_02003EB0:
	ldr r1, _02003FC0 ; =0x000BCD40
	add r0, r0, r1
	pop {r4, pc}
_02003EB6:
	ldr r1, _02003FC4 ; =0x000BCD48
	add r0, r0, r1
	pop {r4, pc}
_02003EBC:
	ldr r1, _02003FC8 ; =0x000BCD4C
	add r0, r0, r1
	pop {r4, pc}
_02003EC2:
	ldr r1, _02003FCC ; =0x000BCD50
	add r0, r0, r1
	pop {r4, pc}
_02003EC8:
	ldr r1, _02003FD0 ; =0x000BCD54
	add r0, r0, r1
	pop {r4, pc}
_02003ECE:
	ldr r1, _02003FD4 ; =0x000BCD58
	add r0, r0, r1
	pop {r4, pc}
_02003ED4:
	ldr r1, _02003FD8 ; =0x000BCD5C
	add r0, r0, r1
	pop {r4, pc}
_02003EDA:
	ldr r1, _02003FDC ; =0x000BCD60
	add r0, r0, r1
	pop {r4, pc}
_02003EE0:
	ldr r1, _02003FE0 ; =0x000BCD68
	add r0, r0, r1
	pop {r4, pc}
_02003EE6:
	ldr r1, _02003FE4 ; =0x000BCD70
	add r0, r0, r1
	pop {r4, pc}
_02003EEC:
	ldr r1, _02003FE8 ; =0x000BCD78
	add r0, r0, r1
	pop {r4, pc}
_02003EF2:
	ldr r1, _02003FEC ; =0x000BCD80
	add r0, r0, r1
	pop {r4, pc}
_02003EF8:
	ldr r1, _02003FF0 ; =0x000BCD84
	add r0, r0, r1
	pop {r4, pc}
_02003EFE:
	ldr r1, _02003FF4 ; =0x000BCD64
	add r0, r0, r1
	pop {r4, pc}
_02003F04:
	ldr r1, _02003FF8 ; =0x000BCD6C
	add r0, r0, r1
	pop {r4, pc}
_02003F0A:
	ldr r1, _02003FFC ; =0x000BCD74
	add r0, r0, r1
	pop {r4, pc}
_02003F10:
	ldr r1, _02004000 ; =0x000BCD7C
	add r0, r0, r1
	pop {r4, pc}
_02003F16:
	ldr r1, _02004004 ; =0x000BCD82
	add r0, r0, r1
	pop {r4, pc}
_02003F1C:
	ldr r1, _02004008 ; =0x000BCD85
	add r0, r0, r1
	pop {r4, pc}
_02003F22:
	ldr r1, _0200400C ; =0x000BCD86
	add r0, r0, r1
	pop {r4, pc}
_02003F28:
	ldr r1, _02004010 ; =0x000BCD87
	add r0, r0, r1
	pop {r4, pc}
_02003F2E:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	nop
_02003F38: .word 0x000BCCFE
_02003F3C: .word 0x000BCCFF
_02003F40: .word 0x000BBCBC
_02003F44: .word 0x000BBCC0
_02003F48: .word 0x000BBCC4
_02003F4C: .word 0x000BBCE0
_02003F50: .word 0x000BCCE0
_02003F54: .word 0x000BCD00
_02003F58: .word 0x000BCD04
_02003F5C: .word 0x000BCD08
_02003F60: .word 0x000BCD0C
_02003F64: .word 0x000BCD0E
_02003F68: .word 0x000BCD10
_02003F6C: .word 0x000BCD11
_02003F70: .word 0x000BCD12
_02003F74: .word 0x000BCD14
_02003F78: .word 0x000BCD15
_02003F7C: .word 0x000BCD16
_02003F80: .word 0x000BCD17
_02003F84: .word 0x000BCD18
_02003F88: .word 0x000BCD19
_02003F8C: .word 0x000BCD1A
_02003F90: .word 0x000BCD1B
_02003F94: .word 0x000BCD1C
_02003F98: .word 0x000BCD20
_02003F9C: .word 0x000BCD24
_02003FA0: .word 0x000BCD28
_02003FA4: .word 0x000BCD2C
_02003FA8: .word 0x000BCD30
_02003FAC: .word 0x000BCD34
_02003FB0: .word 0x000BCD38
_02003FB4: .word 0x000BCD39
_02003FB8: .word 0x000BCD3A
_02003FBC: .word 0x000BCD3C
_02003FC0: .word 0x000BCD40
_02003FC4: .word 0x000BCD48
_02003FC8: .word 0x000BCD4C
_02003FCC: .word 0x000BCD50
_02003FD0: .word 0x000BCD54
_02003FD4: .word 0x000BCD58
_02003FD8: .word 0x000BCD5C
_02003FDC: .word 0x000BCD60
_02003FE0: .word 0x000BCD68
_02003FE4: .word 0x000BCD70
_02003FE8: .word 0x000BCD78
_02003FEC: .word 0x000BCD80
_02003FF0: .word 0x000BCD84
_02003FF4: .word 0x000BCD64
_02003FF8: .word 0x000BCD6C
_02003FFC: .word 0x000BCD74
_02004000: .word 0x000BCD7C
_02004004: .word 0x000BCD82
_02004008: .word 0x000BCD85
_0200400C: .word 0x000BCD86
_02004010: .word 0x000BCD87
	thumb_func_end sub_02003D5C

	thumb_func_start sub_02004014
sub_02004014: ; 0x02004014
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02003D54
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_020BA080
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02004032
	bl sub_02022974
_02004032:
	cmp r5, #0
	beq _02004038
	str r4, [r5, #0]
_02004038:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004014

	thumb_func_start sub_0200403C
sub_0200403C: ; 0x0200403C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_020BA0CC
	pop {r4, pc}
	thumb_func_end sub_0200403C

	thumb_func_start sub_02004050
sub_02004050: ; 0x02004050
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl sub_020BA240
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004050

	thumb_func_start sub_02004068
sub_02004068: ; 0x02004068
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl sub_020BA258
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004068

	thumb_func_start sub_02004080
sub_02004080: ; 0x02004080
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02003D54
	add r2, r0, #0
	add r2, #0x94
	ldr r2, [r2, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020BA2DC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004080

	thumb_func_start sub_0200409C
sub_0200409C: ; 0x0200409C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl sub_020BA2B0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200409C

	thumb_func_start sub_020040B4
sub_020040B4: ; 0x020040B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	add r1, r0, #0
	add r1, #0x94
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl sub_020BA284
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020040B4

	thumb_func_start sub_020040CC
sub_020040CC: ; 0x020040CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02003D54
	add r4, r0, #0
	cmp r5, #9
	blt _020040E0
	bl sub_02022974
	mov r5, #0
_020040E0:
	ldr r0, _020040EC ; =0x000BBC98
	add r1, r4, r0
	lsl r0, r5, #2
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	nop
_020040EC: .word 0x000BBC98
	thumb_func_end sub_020040CC

	thumb_func_start sub_020040F0
sub_020040F0: ; 0x020040F0
	push {r3, lr}
	cmp r0, #7
	bhi _02004132
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02004102: ; jump table
	.short _02004116 - _02004102 - 2 ; case 0
	.short _02004112 - _02004102 - 2 ; case 1
	.short _0200411A - _02004102 - 2 ; case 2
	.short _0200411E - _02004102 - 2 ; case 3
	.short _02004122 - _02004102 - 2 ; case 4
	.short _02004126 - _02004102 - 2 ; case 5
	.short _0200412A - _02004102 - 2 ; case 6
	.short _0200412E - _02004102 - 2 ; case 7
_02004112:
	mov r0, #0
	pop {r3, pc}
_02004116:
	mov r0, #1
	pop {r3, pc}
_0200411A:
	mov r0, #2
	pop {r3, pc}
_0200411E:
	mov r0, #3
	pop {r3, pc}
_02004122:
	mov r0, #4
	pop {r3, pc}
_02004126:
	mov r0, #5
	pop {r3, pc}
_0200412A:
	mov r0, #6
	pop {r3, pc}
_0200412E:
	mov r0, #7
	pop {r3, pc}
_02004132:
	bl sub_02022974
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020040F0

	thumb_func_start sub_0200413C
sub_0200413C: ; 0x0200413C
	push {r4, lr}
	ldr r2, _02004158 ; =0x000BCD88
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _0200415C ; =0x000BCD1C
	mov r1, #0
_0200414C:
	add r1, r1, #1
	str r1, [r4, r0]
	add r4, r4, #4
	cmp r1, #7
	blt _0200414C
	pop {r4, pc}
	; .align 2, 0
_02004158: .word 0x000BCD88
_0200415C: .word 0x000BCD1C
	thumb_func_end sub_0200413C

	thumb_func_start sub_02004160
sub_02004160: ; 0x02004160
	push {r3, r4, r5, lr}
	ldr r1, _02004178 ; =0x000BBC98
	mov r4, #0
	add r5, r0, r1
_02004168:
	add r0, r5, #0
	bl sub_020B80DC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blt _02004168
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02004178: .word 0x000BBC98
	thumb_func_end sub_02004160

	thumb_func_start sub_0200417C
sub_0200417C: ; 0x0200417C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02004198 ; =0x000BCD1C
	add r0, r4, r0
	bl sub_02004014
	mov r0, #0
	bl sub_02004050
	ldr r0, _0200419C ; =0x000BCD20
	add r0, r4, r0
	bl sub_02004014
	pop {r4, pc}
	; .align 2, 0
_02004198: .word 0x000BCD1C
_0200419C: .word 0x000BCD20
	thumb_func_end sub_0200417C

	thumb_func_start sub_020041A0
sub_020041A0: ; 0x020041A0
	push {r3, lr}
	bl sub_020CA638
	mov r0, #1
	bl sub_020CB240
	mov r0, #2
	bl sub_020CB284
	pop {r3, pc}
	thumb_func_end sub_020041A0

	thumb_func_start sub_020041B4
sub_020041B4: ; 0x020041B4
	push {r3, lr}
	mov r0, #7
	mov r1, #0
	bl sub_020B7FD8
	mov r0, #7
	bl sub_020040CC
	bl sub_020B80E8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020041B4

	thumb_func_start sub_020041CC
sub_020041CC: ; 0x020041CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020041CC

	thumb_func_start sub_020041DC
sub_020041DC: ; 0x020041DC
	push {r3, lr}
	mov r0, #5
	bl sub_02003D5C
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_020041DC

	thumb_func_start sub_020041E8
sub_020041E8: ; 0x020041E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	bl sub_02003D5C
	strh r4, [r0]
	mov r0, #0
	bl sub_02004208
	pop {r4, pc}
	thumb_func_end sub_020041E8

	thumb_func_start sub_020041FC
sub_020041FC: ; 0x020041FC
	push {r3, lr}
	mov r0, #0xa
	bl sub_02003D5C
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_020041FC

	thumb_func_start sub_02004208
sub_02004208: ; 0x02004208
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	bl sub_02003D5C
	strh r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004208

	thumb_func_start sub_02004218
sub_02004218: ; 0x02004218
	push {r3, lr}
	mov r0, #0xb
	bl sub_02003D5C
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02004218

	thumb_func_start sub_02004224
sub_02004224: ; 0x02004224
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x20
	bl sub_02003D5C
	strh r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004224

	thumb_func_start sub_02004234
sub_02004234: ; 0x02004234
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x15
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x16
	bl sub_02003D5C
	cmp r5, #0x33
	bhs _02004252
	strb r5, [r4]
	mov r1, #0
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_02004252:
	strb r5, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004234

	thumb_func_start sub_02004258
sub_02004258: ; 0x02004258
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x15
	bl sub_02003D5C
	mov r0, #0x16
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_02004258

	thumb_func_start sub_0200426C
sub_0200426C: ; 0x0200426C
	push {r4, lr}
	cmp r0, #0x44
	bls _02004274
	b _020044F6
_02004274:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02004280: ; jump table
	.short _020044F6 - _02004280 - 2 ; case 0
	.short _0200430A - _02004280 - 2 ; case 1
	.short _020043B2 - _02004280 - 2 ; case 2
	.short _020043D6 - _02004280 - 2 ; case 3
	.short _020043E0 - _02004280 - 2 ; case 4
	.short _020043EA - _02004280 - 2 ; case 5
	.short _020043FE - _02004280 - 2 ; case 6
	.short _02004454 - _02004280 - 2 ; case 7
	.short _02004408 - _02004280 - 2 ; case 8
	.short _0200430A - _02004280 - 2 ; case 9
	.short _0200430A - _02004280 - 2 ; case 10
	.short _020043F4 - _02004280 - 2 ; case 11
	.short _02004412 - _02004280 - 2 ; case 12
	.short _020043B2 - _02004280 - 2 ; case 13
	.short _020043A8 - _02004280 - 2 ; case 14
	.short _0200442C - _02004280 - 2 ; case 15
	.short _0200441C - _02004280 - 2 ; case 16
	.short _0200430A - _02004280 - 2 ; case 17
	.short _020043BC - _02004280 - 2 ; case 18
	.short _02004314 - _02004280 - 2 ; case 19
	.short _0200430A - _02004280 - 2 ; case 20
	.short _020043C6 - _02004280 - 2 ; case 21
	.short _020043E0 - _02004280 - 2 ; case 22
	.short _0200430A - _02004280 - 2 ; case 23
	.short _020044F6 - _02004280 - 2 ; case 24
	.short _020044F6 - _02004280 - 2 ; case 25
	.short _020044F6 - _02004280 - 2 ; case 26
	.short _020044F6 - _02004280 - 2 ; case 27
	.short _020044F6 - _02004280 - 2 ; case 28
	.short _020044F6 - _02004280 - 2 ; case 29
	.short _020044F6 - _02004280 - 2 ; case 30
	.short _020044F6 - _02004280 - 2 ; case 31
	.short _020044F6 - _02004280 - 2 ; case 32
	.short _020044F6 - _02004280 - 2 ; case 33
	.short _020044F6 - _02004280 - 2 ; case 34
	.short _020044F6 - _02004280 - 2 ; case 35
	.short _020044F6 - _02004280 - 2 ; case 36
	.short _020044F6 - _02004280 - 2 ; case 37
	.short _020044F6 - _02004280 - 2 ; case 38
	.short _020044F6 - _02004280 - 2 ; case 39
	.short _020044F6 - _02004280 - 2 ; case 40
	.short _020044F6 - _02004280 - 2 ; case 41
	.short _020044F6 - _02004280 - 2 ; case 42
	.short _020044F6 - _02004280 - 2 ; case 43
	.short _020044F6 - _02004280 - 2 ; case 44
	.short _020044F6 - _02004280 - 2 ; case 45
	.short _020044F6 - _02004280 - 2 ; case 46
	.short _020044F6 - _02004280 - 2 ; case 47
	.short _020044F6 - _02004280 - 2 ; case 48
	.short _020044F6 - _02004280 - 2 ; case 49
	.short _020044F6 - _02004280 - 2 ; case 50
	.short _02004436 - _02004280 - 2 ; case 51
	.short _0200444A - _02004280 - 2 ; case 52
	.short _02004454 - _02004280 - 2 ; case 53
	.short _0200445E - _02004280 - 2 ; case 54
	.short _02004468 - _02004280 - 2 ; case 55
	.short _02004478 - _02004280 - 2 ; case 56
	.short _02004482 - _02004280 - 2 ; case 57
	.short _0200448C - _02004280 - 2 ; case 58
	.short _02004496 - _02004280 - 2 ; case 59
	.short _020044A0 - _02004280 - 2 ; case 60
	.short _020044AA - _02004280 - 2 ; case 61
	.short _020044B4 - _02004280 - 2 ; case 62
	.short _020044BE - _02004280 - 2 ; case 63
	.short _020044C8 - _02004280 - 2 ; case 64
	.short _020044D8 - _02004280 - 2 ; case 65
	.short _02004440 - _02004280 - 2 ; case 66
	.short _02004468 - _02004280 - 2 ; case 67
	.short _020044E8 - _02004280 - 2 ; case 68
_0200430A:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004314:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	ldr r0, _020044FC ; =0x00000577
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004500 ; =0x00000579
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004504 ; =0x0000057B
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004508 ; =0x00000576
	mov r1, #1
	bl sub_02004080
	ldr r0, _0200450C ; =0x0000057C
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004510 ; =0x0000057E
	mov r1, #1
	bl sub_02004080
	mov r0, #0x65
	lsl r0, r0, #4
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004514 ; =0x0000056A
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004518 ; =0x00000722
	mov r1, #1
	bl sub_02004080
	ldr r0, _0200451C ; =0x0000056B
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004520 ; =0x0000056C
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004524 ; =0x0000056D
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004528 ; =0x0000056F
	mov r1, #1
	bl sub_02004080
	ldr r0, _0200452C ; =0x0000063E
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004530 ; =0x00000643
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004534 ; =0x00000572
	mov r1, #1
	bl sub_02004080
	ldr r0, _02004538 ; =0x00000569
	mov r1, #1
	bl sub_02004080
	b _020044F6
_020043A8:
	mov r0, #0xe
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043B2:
	mov r0, #2
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043BC:
	mov r0, #2
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043C6:
	ldr r0, _0200453C ; =0x00000302
	bl sub_020040B4
	ldr r0, _0200453C ; =0x00000302
	bl sub_0200409C
	add r4, r0, #0
	b _020044F6
_020043D6:
	mov r0, #0xd
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043E0:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043EA:
	mov r0, #2
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043F4:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020043FE:
	mov r0, #0xb
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004408:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004412:
	mov r0, #0xe
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200441C:
	mov r0, #1
	bl sub_02004050
	mov r0, #8
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200442C:
	mov r0, #1
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004436:
	mov r0, #3
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004440:
	mov r0, #6
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200444A:
	mov r0, #5
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004454:
	mov r0, #9
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200445E:
	mov r0, #0xa
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004468:
	ldr r0, _02004540 ; =0x000002F7
	bl sub_020040B4
	ldr r0, _02004540 ; =0x000002F7
	bl sub_0200409C
	add r4, r0, #0
	b _020044F6
_02004478:
	mov r0, #0xc
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004482:
	mov r0, #7
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_0200448C:
	mov r0, #8
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_02004496:
	mov r0, #0xf
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044A0:
	mov r0, #3
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044AA:
	mov r0, #5
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044B4:
	mov r0, #0xf
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044BE:
	mov r0, #4
	bl sub_02004050
	add r4, r0, #0
	b _020044F6
_020044C8:
	ldr r0, _02004544 ; =0x000002FF
	bl sub_020040B4
	ldr r0, _02004544 ; =0x000002FF
	bl sub_0200409C
	add r4, r0, #0
	b _020044F6
_020044D8:
	ldr r0, _02004548 ; =0x000002FE
	bl sub_020040B4
	ldr r0, _02004548 ; =0x000002FE
	bl sub_0200409C
	add r4, r0, #0
	b _020044F6
_020044E8:
	ldr r0, _0200454C ; =0x00000301
	bl sub_020040B4
	ldr r0, _0200454C ; =0x00000301
	bl sub_0200409C
	add r4, r0, #0
_020044F6:
	add r0, r4, #0
	pop {r4, pc}
	nop
_020044FC: .word 0x00000577
_02004500: .word 0x00000579
_02004504: .word 0x0000057B
_02004508: .word 0x00000576
_0200450C: .word 0x0000057C
_02004510: .word 0x0000057E
_02004514: .word 0x0000056A
_02004518: .word 0x00000722
_0200451C: .word 0x0000056B
_02004520: .word 0x0000056C
_02004524: .word 0x0000056D
_02004528: .word 0x0000056F
_0200452C: .word 0x0000063E
_02004530: .word 0x00000643
_02004534: .word 0x00000572
_02004538: .word 0x00000569
_0200453C: .word 0x00000302
_02004540: .word 0x000002F7
_02004544: .word 0x000002FF
_02004548: .word 0x000002FE
_0200454C: .word 0x00000301
	thumb_func_end sub_0200426C

	thumb_func_start sub_02004550
sub_02004550: ; 0x02004550
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x15
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02003D5C
	str r0, [sp]
	mov r0, #0x16
	bl sub_02003D5C
	str r0, [sp, #4]
	mov r0, #0xe
	bl sub_02003D5C
	add r7, r0, #0
	cmp r4, #0x33
	bhs _02004584
	ldr r0, [sp]
	ldrb r0, [r0]
	cmp r0, r4
	bne _02004592
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004584:
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, r4
	bne _02004592
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004592:
	add r0, r4, #0
	bl sub_02004234
	cmp r4, #0x44
	bls _0200459E
	b _020046C4
_0200459E:
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020045AA: ; jump table
	.short _020046C4 - _020045AA - 2 ; case 0
	.short _02004678 - _020045AA - 2 ; case 1
	.short _0200469C - _020045AA - 2 ; case 2
	.short _020046AE - _020045AA - 2 ; case 3
	.short _02004634 - _020045AA - 2 ; case 4
	.short _02004648 - _020045AA - 2 ; case 5
	.short _0200465C - _020045AA - 2 ; case 6
	.short _02004666 - _020045AA - 2 ; case 7
	.short _020046AE - _020045AA - 2 ; case 8
	.short _020046AE - _020045AA - 2 ; case 9
	.short _020046AE - _020045AA - 2 ; case 10
	.short _02004652 - _020045AA - 2 ; case 11
	.short _020046AE - _020045AA - 2 ; case 12
	.short _020046AE - _020045AA - 2 ; case 13
	.short _0200468A - _020045AA - 2 ; case 14
	.short _020046AE - _020045AA - 2 ; case 15
	.short _020046AE - _020045AA - 2 ; case 16
	.short _020046AE - _020045AA - 2 ; case 17
	.short _020046AE - _020045AA - 2 ; case 18
	.short _020046AE - _020045AA - 2 ; case 19
	.short _020046AE - _020045AA - 2 ; case 20
	.short _020046AE - _020045AA - 2 ; case 21
	.short _020046BA - _020045AA - 2 ; case 22
	.short _020046AE - _020045AA - 2 ; case 23
	.short _020046C4 - _020045AA - 2 ; case 24
	.short _020046C4 - _020045AA - 2 ; case 25
	.short _020046C4 - _020045AA - 2 ; case 26
	.short _020046C4 - _020045AA - 2 ; case 27
	.short _020046C4 - _020045AA - 2 ; case 28
	.short _020046C4 - _020045AA - 2 ; case 29
	.short _020046C4 - _020045AA - 2 ; case 30
	.short _020046C4 - _020045AA - 2 ; case 31
	.short _020046C4 - _020045AA - 2 ; case 32
	.short _020046C4 - _020045AA - 2 ; case 33
	.short _020046C4 - _020045AA - 2 ; case 34
	.short _020046C4 - _020045AA - 2 ; case 35
	.short _020046C4 - _020045AA - 2 ; case 36
	.short _020046C4 - _020045AA - 2 ; case 37
	.short _020046C4 - _020045AA - 2 ; case 38
	.short _020046C4 - _020045AA - 2 ; case 39
	.short _020046C4 - _020045AA - 2 ; case 40
	.short _020046C4 - _020045AA - 2 ; case 41
	.short _020046C4 - _020045AA - 2 ; case 42
	.short _020046C4 - _020045AA - 2 ; case 43
	.short _020046C4 - _020045AA - 2 ; case 44
	.short _020046C4 - _020045AA - 2 ; case 45
	.short _020046C4 - _020045AA - 2 ; case 46
	.short _020046C4 - _020045AA - 2 ; case 47
	.short _020046C4 - _020045AA - 2 ; case 48
	.short _020046C4 - _020045AA - 2 ; case 49
	.short _020046C4 - _020045AA - 2 ; case 50
	.short _02004670 - _020045AA - 2 ; case 51
	.short _02004670 - _020045AA - 2 ; case 52
	.short _02004670 - _020045AA - 2 ; case 53
	.short _02004670 - _020045AA - 2 ; case 54
	.short _02004670 - _020045AA - 2 ; case 55
	.short _02004670 - _020045AA - 2 ; case 56
	.short _02004670 - _020045AA - 2 ; case 57
	.short _02004670 - _020045AA - 2 ; case 58
	.short _02004670 - _020045AA - 2 ; case 59
	.short _02004670 - _020045AA - 2 ; case 60
	.short _02004670 - _020045AA - 2 ; case 61
	.short _02004670 - _020045AA - 2 ; case 62
	.short _02004670 - _020045AA - 2 ; case 63
	.short _02004670 - _020045AA - 2 ; case 64
	.short _02004670 - _020045AA - 2 ; case 65
	.short _02004670 - _020045AA - 2 ; case 66
	.short _02004670 - _020045AA - 2 ; case 67
	.short _02004670 - _020045AA - 2 ; case 68
_02004634:
	mov r0, #0
	bl sub_020053CC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020046F8
	mov r0, #0
	strh r0, [r7]
	b _020046C4
_02004648:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02004874
	b _020046C4
_02004652:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020048AC
	b _020046C4
_0200465C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020048CC
	b _020046C4
_02004666:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020048F0
	b _020046C4
_02004670:
	add r0, r4, #0
	bl sub_02004914
	b _020046C4
_02004678:
	mov r0, #1
	bl sub_020053CC
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
	b _020046C4
_0200468A:
	mov r0, #2
	bl sub_020053CC
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
	b _020046C4
_0200469C:
	mov r0, #0
	bl sub_020053CC
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
	b _020046C4
_020046AE:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
	b _020046C4
_020046BA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02004930
_020046C4:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02004550

	thumb_func_start sub_020046CC
sub_020046CC: ; 0x020046CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	ldr r0, [r0, #0]
	bl sub_0200403C
	mov r0, #0x19
	bl sub_02003D5C
	bl sub_02004014
	add r0, r4, #0
	bl sub_0200426C
	mov r0, #0x1a
	bl sub_02003D5C
	bl sub_02004014
	pop {r4, pc}
	thumb_func_end sub_020046CC

	thumb_func_start sub_020046F8
sub_020046F8: ; 0x020046F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xc
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	mov r0, #0x20
	bl sub_02003D5C
	mov r0, #0
	bl sub_020040CC
	bl sub_02004B34
	add r4, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _02004732
	cmp r4, r5
	bne _02004732
	bl sub_02004218
	mov r1, #0x12
	lsl r1, r1, #6
	cmp r0, r1
	bne _0200478A
_02004732:
	mov r0, #1
	bl sub_0200501C
	bl sub_020056D4
	cmp r4, r5
	beq _0200474C
	mov r0, #1
	mov r1, #0
	bl sub_020049F4
	bl sub_0200569C
_0200474C:
	ldrb r0, [r6]
	cmp r0, #1
	bne _02004784
	mov r0, #2
	bl sub_02004974
	bl sub_0200403C
	mov r0, #4
	bl sub_0200426C
	mov r0, #0x1a
	bl sub_02003D5C
	bl sub_02004014
	cmp r4, r5
	beq _02004778
	mov r0, #1
	mov r1, #0
	bl sub_020049F4
_02004778:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0200478C
	pop {r4, r5, r6, pc}
_02004784:
	add r0, r5, #0
	bl sub_0200549C
_0200478A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020046F8

	thumb_func_start sub_0200478C
sub_0200478C: ; 0x0200478C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x20
	bl sub_02003D5C
	add r4, r0, #0
	ldrh r0, [r4]
	bl sub_02004B48
	ldr r1, _020047E4 ; =0x000002BD
	cmp r0, r1
	beq _020047B8
	add r1, r1, #2
	cmp r0, r1
	beq _020047B8
	add r0, r5, #0
	mov r1, #4
	bl sub_02004080
	bl sub_02022974
	b _020047C0
_020047B8:
	ldrh r0, [r4]
	mov r1, #6
	bl sub_02004080
_020047C0:
	mov r0, #0x1b
	bl sub_02003D5C
	bl sub_02004014
	mov r0, #1
	mov r1, #0
	bl sub_020049F4
	mov r0, #0x7f
	mov r1, #0x28
	mov r2, #0
	bl sub_0200560C
	mov r0, #0
	bl sub_0200501C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020047E4: .word 0x000002BD
	thumb_func_end sub_0200478C

	thumb_func_start sub_020047E8
sub_020047E8: ; 0x020047E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x13
	add r5, r1, #0
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x20
	bl sub_02003D5C
	add r4, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _02004808
	cmp r5, #0
	bne _0200486C
_02004808:
	mov r0, #1
	bl sub_02004974
	bl sub_0200403C
	mov r0, #0
	bl sub_02004258
	ldrh r0, [r4]
	mov r1, #2
	bl sub_02004080
	mov r0, #0x19
	bl sub_02003D5C
	bl sub_02004014
	mov r0, #4
	bl sub_0200426C
	mov r0, #0x1a
	bl sub_02003D5C
	bl sub_02004014
	ldrh r0, [r4]
	bl sub_02004B48
	ldr r1, _02004870 ; =0x000002BD
	cmp r0, r1
	beq _0200485A
	add r1, r1, #2
	cmp r0, r1
	beq _0200485A
	add r0, r7, #0
	mov r1, #4
	bl sub_02004080
	bl sub_02022974
	b _02004862
_0200485A:
	ldrh r0, [r4]
	mov r1, #4
	bl sub_02004080
_02004862:
	mov r0, #0x1b
	bl sub_02003D5C
	bl sub_02004014
_0200486C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02004870: .word 0x000002BD
	thumb_func_end sub_020047E8

	thumb_func_start sub_02004874
sub_02004874: ; 0x02004874
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	bl sub_0200540C
	mov r0, #2
	bl sub_02004974
	bl sub_0200403C
	mov r0, #5
	bl sub_0200426C
	mov r0, #0x1a
	bl sub_02003D5C
	bl sub_02004014
	mov r0, #1
	bl sub_0200501C
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004874

	thumb_func_start sub_020048AC
sub_020048AC: ; 0x020048AC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	bl sub_0200569C
	bl sub_02004A3C
	mov r0, #4
	bl sub_020046CC
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	thumb_func_end sub_020048AC

	thumb_func_start sub_020048CC
sub_020048CC: ; 0x020048CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	bl sub_0200569C
	mov r0, #6
	bl sub_020046CC
	mov r0, #1
	bl sub_0200501C
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020048CC

	thumb_func_start sub_020048F0
sub_020048F0: ; 0x020048F0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x18
	bl sub_02003D5C
	bl sub_0200569C
	mov r0, #7
	bl sub_020046CC
	mov r0, #1
	bl sub_0200501C
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020048F0

	thumb_func_start sub_02004914
sub_02004914: ; 0x02004914
	push {r4, lr}
	add r4, r0, #0
	bl sub_02004964
	add r0, r4, #0
	bl sub_0200426C
	mov r0, #0x1c
	bl sub_02003D5C
	bl sub_02004014
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004914

	thumb_func_start sub_02004930
sub_02004930: ; 0x02004930
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x18
	add r4, r1, #0
	bl sub_02003D5C
	bl sub_0200569C
	add r0, r5, #0
	bl sub_020046CC
	add r0, r4, #0
	bl sub_0200549C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004930

	thumb_func_start sub_02004950
sub_02004950: ; 0x02004950
	push {r4, lr}
	add r4, r0, #0
	bl sub_02003D54
	bl sub_0200540C
	add r0, r4, #0
	bl sub_0200549C
	pop {r4, pc}
	thumb_func_end sub_02004950

	thumb_func_start sub_02004964
sub_02004964: ; 0x02004964
	push {r3, lr}
	mov r0, #4
	bl sub_02004974
	bl sub_0200403C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004964

	thumb_func_start sub_02004974
sub_02004974: ; 0x02004974
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02003D54
	cmp r4, #7
	blt _0200498E
	bl sub_02022974
	mov r0, #0x1b
	bl sub_02003D5C
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
_0200498E:
	cmp r4, #6
	bhi _020049F0
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200499E: ; jump table
	.short _020049AC - _0200499E - 2 ; case 0
	.short _020049B6 - _0200499E - 2 ; case 1
	.short _020049C0 - _0200499E - 2 ; case 2
	.short _020049CA - _0200499E - 2 ; case 3
	.short _020049D4 - _0200499E - 2 ; case 4
	.short _020049DE - _0200499E - 2 ; case 5
	.short _020049E8 - _0200499E - 2 ; case 6
_020049AC:
	mov r0, #0x17
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049B6:
	mov r0, #0x18
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049C0:
	mov r0, #0x19
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049CA:
	mov r0, #0x1a
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049D4:
	mov r0, #0x1b
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049DE:
	mov r0, #0x1c
	bl sub_02003D5C
	add r5, r0, #0
	b _020049F0
_020049E8:
	mov r0, #0x1d
	bl sub_02003D5C
	add r5, r0, #0
_020049F0:
	ldr r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004974

	thumb_func_start sub_020049F4
sub_020049F4: ; 0x020049F4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	cmp r0, #1
	bne _02004A08
	mov r0, #0xc
	bl sub_02003D5C
	add r6, r0, #0
	mov r4, #0
	b _02004A16
_02004A08:
	cmp r0, #7
	bne _02004A3A
	mov r0, #0xd
	bl sub_02003D5C
	add r6, r0, #0
	mov r4, #7
_02004A16:
	cmp r5, #0
	bne _02004A2C
	add r0, r4, #0
	bl sub_020040CC
	bl sub_02004B34
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020041E8
_02004A2C:
	add r0, r4, #0
	bl sub_020040CC
	add r1, r5, #0
	bl sub_020B80CC
	strb r5, [r6]
_02004A3A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020049F4

	thumb_func_start sub_02004A3C
sub_02004A3C: ; 0x02004A3C
	push {r4, lr}
	mov r0, #0xc
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0xd
	bl sub_02003D5C
	mov r1, #0
	strb r1, [r4]
	strb r1, [r0]
	pop {r4, pc}
	thumb_func_end sub_02004A3C

	thumb_func_start sub_02004A54
sub_02004A54: ; 0x02004A54
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020040CC
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020B8148
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004A54

	thumb_func_start sub_02004A68
sub_02004A68: ; 0x02004A68
	push {r4, lr}
	add r4, r1, #0
	bpl _02004A70
	mov r4, #0
_02004A70:
	cmp r4, #0x7f
	ble _02004A76
	mov r4, #0x7f
_02004A76:
	bl sub_020040CC
	add r1, r4, #0
	bl sub_020B8134
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004A68

	thumb_func_start sub_02004A84
sub_02004A84: ; 0x02004A84
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02004B18
	bl sub_020040F0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02004AA0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004A84

	thumb_func_start sub_02004AA0
sub_02004AA0: ; 0x02004AA0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_020B9B0C
	cmp r5, #1
	beq _02004AB0
	cmp r5, #8
	bne _02004AB4
_02004AB0:
	mov r4, #0x7f
	b _02004ABA
_02004AB4:
	cmp r0, #0
	beq _02004AD2
	ldrb r4, [r0, #2]
_02004ABA:
	bl sub_02036314
	cmp r0, #1
	bne _02004AD2
	add r0, r4, #0
	mov r1, #5
	bl sub_020E1F6C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02004A68
_02004AD2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004AA0

	thumb_func_start sub_02004AD4
sub_02004AD4: ; 0x02004AD4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02004B18
	bl sub_020040F0
	add r1, r4, #0
	bl sub_02004A68
	pop {r4, pc}
	thumb_func_end sub_02004AD4

	thumb_func_start sub_02004AE8
sub_02004AE8: ; 0x02004AE8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020040CC
	mov r2, #0
	mvn r2, r2
	add r1, r5, #0
	add r3, r2, #0
	str r4, [sp]
	bl sub_020BADC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004AE8

	thumb_func_start sub_02004B04
sub_02004B04: ; 0x02004B04
	push {r4, lr}
	add r4, r0, #0
	bpl _02004B0E
	bl sub_02022974
_02004B0E:
	add r0, r4, #0
	bl sub_020B8108
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004B04

	thumb_func_start sub_02004B18
sub_02004B18: ; 0x02004B18
	push {r3, lr}
	cmp r0, #0
	bne _02004B22
	mov r0, #0xff
	pop {r3, pc}
_02004B22:
	bl sub_020B9B0C
	cmp r0, #0
	bne _02004B2E
	mov r0, #0xff
	pop {r3, pc}
_02004B2E:
	ldrb r0, [r0, #5]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004B18

	thumb_func_start sub_02004B34
sub_02004B34: ; 0x02004B34
	ldr r3, _02004B38 ; =sub_020B8244
	bx r3
	; .align 2, 0
_02004B38: .word sub_020B8244
	thumb_func_end sub_02004B34

	thumb_func_start sub_02004B3C
sub_02004B3C: ; 0x02004B3C
	push {r3, lr}
	bl sub_02004B48
	bl sub_020B9BEC
	pop {r3, pc}
	thumb_func_end sub_02004B3C

	thumb_func_start sub_02004B48
sub_02004B48: ; 0x02004B48
	push {r3, lr}
	bl sub_020B9B0C
	cmp r0, #0
	bne _02004B56
	mov r0, #0
	pop {r3, pc}
_02004B56:
	ldrh r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004B48

	thumb_func_start sub_02004B5C
sub_02004B5C: ; 0x02004B5C
	ldr r3, _02004B60 ; =sub_020CA88C
	bx r3
	; .align 2, 0
_02004B60: .word sub_020CA88C
	thumb_func_end sub_02004B5C

	thumb_func_start sub_02004B64
sub_02004B64: ; 0x02004B64
	push {r3, lr}
	bl sub_02003D54
	bl sub_020CA920
	pop {r3, pc}
	thumb_func_end sub_02004B64

	thumb_func_start sub_02004B70
sub_02004B70: ; 0x02004B70
	push {r3, lr}
	bl sub_020CA6A8
	pop {r3, pc}
	thumb_func_end sub_02004B70

	thumb_func_start sub_02004B78
sub_02004B78: ; 0x02004B78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02003D54
	mov r0, #0x10
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	cmp r5, #0xe
	beq _02004B9C
	cmp r5, #0xf
	beq _02004B9C
	bl sub_02022974
_02004B9C:
	cmp r5, #0xe
	bne _02004BAA
	ldrb r0, [r6]
	cmp r0, #0
	bne _02004BAA
	bl sub_02022974
_02004BAA:
	cmp r5, #0xf
	bne _02004BB8
	ldrb r0, [r4]
	cmp r0, #0
	bne _02004BB8
	bl sub_02022974
_02004BB8:
	cmp r5, #0xe
	bne _02004BC4
	mov r0, #0
	bl sub_02003D5C
	pop {r4, r5, r6, pc}
_02004BC4:
	mov r0, #1
	bl sub_02003D5C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02004B78

	thumb_func_start sub_02004BCC
sub_02004BCC: ; 0x02004BCC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02003D54
	mov r0, #0x10
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	cmp r5, #0xe
	beq _02004BF0
	cmp r5, #0xf
	beq _02004BF0
	bl sub_02022974
_02004BF0:
	cmp r5, #0xe
	bne _02004C1E
	ldrb r0, [r6]
	cmp r0, #0
	bne _02004C18
	mov r0, #0
	bl sub_02003D5C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020B7C00
	str r0, [r4, #0]
	cmp r0, #0
	bne _02004C12
	mov r0, #0
	pop {r4, r5, r6, pc}
_02004C12:
	mov r0, #1
	strb r0, [r6]
	b _02004C46
_02004C18:
	bl sub_02022974
	b _02004C46
_02004C1E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _02004C42
	mov r0, #1
	bl sub_02003D5C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020B7C00
	str r0, [r6, #0]
	cmp r0, #0
	bne _02004C3C
	mov r0, #0
	pop {r4, r5, r6, pc}
_02004C3C:
	mov r0, #1
	strb r0, [r4]
	b _02004C46
_02004C42:
	bl sub_02022974
_02004C46:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02004BCC

	thumb_func_start sub_02004C4C
sub_02004C4C: ; 0x02004C4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02003D54
	mov r0, #0x10
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	cmp r5, #0xe
	beq _02004C72
	cmp r5, #0xf
	beq _02004C72
	bl sub_02022974
	pop {r4, r5, r6, pc}
_02004C72:
	cmp r5, #0xe
	bne _02004C94
	ldrb r0, [r6]
	cmp r0, #1
	bne _02004C8E
	add r0, r5, #0
	bl sub_02004B78
	ldr r0, [r0, #0]
	bl sub_020B7C44
	mov r0, #0
	strb r0, [r6]
	pop {r4, r5, r6, pc}
_02004C8E:
	bl sub_02022974
	pop {r4, r5, r6, pc}
_02004C94:
	ldrb r0, [r4]
	cmp r0, #1
	bne _02004CAC
	add r0, r5, #0
	bl sub_02004B78
	ldr r0, [r0, #0]
	bl sub_020B7C44
	mov r0, #0
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02004CAC:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02004C4C

	thumb_func_start sub_02004CB4
sub_02004CB4: ; 0x02004CB4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r3, r0, #0
	ldr r0, [r3, #0x10]
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r3, #0x14]
	str r0, [sp, #4]
	ldr r0, [r3, #0x18]
	str r0, [sp, #8]
	ldr r0, [r3, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r0, [r0, #0]
	ldr r3, [r3, #0xc]
	bl sub_020B7C5C
	add r5, r0, #0
	bne _02004CEC
	add r0, r4, #0
	bl sub_02004C4C
_02004CEC:
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02004CB4

	thumb_func_start sub_02004CF4
sub_02004CF4: ; 0x02004CF4
	push {r3, lr}
	bl sub_02004B78
	ldr r0, [r0, #0]
	bl sub_020B7D7C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004CF4

	thumb_func_start sub_02004D04
sub_02004D04: ; 0x02004D04
	push {r3, lr}
	bl sub_02004B78
	ldr r0, [r0, #0]
	bl sub_020B7E88
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004D04

	thumb_func_start sub_02004D14
sub_02004D14: ; 0x02004D14
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0x7f
	bls _02004D1E
	mov r4, #0x7f
_02004D1E:
	bl sub_02004B78
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_020B7E64
	pop {r4, pc}
	thumb_func_end sub_02004D14

	thumb_func_start sub_02004D2C
sub_02004D2C: ; 0x02004D2C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02004B78
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_020B7DE0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004D2C

	thumb_func_start sub_02004D40
sub_02004D40: ; 0x02004D40
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02036314
	cmp r0, #1
	bne _02004D68
	add r0, r4, #0
	bl sub_02004B78
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_020B7DB8
	pop {r3, r4, r5, pc}
_02004D68:
	add r0, r4, #0
	bl sub_02004B78
	ldr r0, [r0, #0]
	add r1, r5, #0
	bl sub_020B7DB8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004D40

	thumb_func_start sub_02004D78
sub_02004D78: ; 0x02004D78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r5, r3, #0
	bl sub_02003D54
	mov r0, #0x22
	bl sub_02003D5C
	add r4, r0, #0
	cmp r5, #0xe
	beq _02004D9C
	cmp r5, #0xf
	beq _02004D9C
	bl sub_02022974
_02004D9C:
	add r0, r6, #0
	bl sub_020B9C50
	add r7, r0, #0
	bne _02004DB0
	bl sub_02022974
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004DB0:
	ldr r0, [r7, #0]
	lsl r0, r0, #8
	lsr r0, r0, #8
	bl sub_020B9D7C
	add r6, r0, #0
	bne _02004DC8
	bl sub_02022974
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004DC8:
	cmp r5, #0xe
	bne _02004E16
	ldr r0, [sp, #0x48]
	add r1, r6, #0
	bl sub_02018144
	str r0, [r4, #0]
	cmp r0, #0
	bne _02004DE4
	bl sub_02022974
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004DE4:
	mov r1, #0
	add r2, r6, #0
	bl sub_020D5124
	ldr r0, [r7, #0]
	ldr r1, [r4, #0]
	lsl r0, r0, #8
	lsr r0, r0, #8
	add r2, r6, #0
	mov r3, #0
	bl sub_020B9DA4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02004E0E
	bl sub_02022974
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02004E0E:
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl sub_02004E64
_02004E16:
	add r0, r5, #0
	bl sub_02004B78
	mov r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	str r0, [sp, #0x10]
	ldr r0, _02004E60 ; =0x00003443
	str r1, [sp, #0x14]
	str r0, [sp, #0x20]
	ldr r0, [sp]
	str r1, [sp, #0x18]
	str r0, [sp, #0x24]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #4]
	add r1, r5, #0
	str r0, [sp, #0x2c]
	add r0, sp, #8
	str r6, [sp, #0x1c]
	bl sub_02004CB4
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02004D40
	mov r0, #0xf
	bl sub_02003D5C
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02004E60: .word 0x00003443
	thumb_func_end sub_02004D78

	thumb_func_start sub_02004E64
sub_02004E64: ; 0x02004E64
	push {r3, r4, r5, r6}
	mov r5, #0
	lsr r6, r1, #1
	beq _02004E7E
	sub r2, r1, #1
_02004E6E:
	sub r3, r2, r5
	ldrb r4, [r0, r5]
	ldrb r1, [r0, r3]
	strb r1, [r0, r5]
	add r5, r5, #1
	strb r4, [r0, r3]
	cmp r5, r6
	blo _02004E6E
_02004E7E:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02004E64

	thumb_func_start sub_02004E84
sub_02004E84: ; 0x02004E84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02003D54
	mov r0, #0xf
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x22
	bl sub_02003D5C
	add r6, r0, #0
	cmp r5, #0xe
	beq _02004EA8
	cmp r5, #0xf
	beq _02004EA8
	bl sub_02022974
_02004EA8:
	add r0, r5, #0
	bl sub_02004CF4
	ldrb r0, [r4]
	cmp r0, #1
	bne _02004EBE
	mov r0, #0
	strb r0, [r4]
	ldr r0, [r6, #0]
	bl sub_020181C4
_02004EBE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02004E84

	thumb_func_start sub_02004EC0
sub_02004EC0: ; 0x02004EC0
	ldr r3, _02004EC4 ; =sub_020B90EC
	bx r3
	; .align 2, 0
_02004EC4: .word sub_020B90EC
	thumb_func_end sub_02004EC0

	thumb_func_start sub_02004EC8
sub_02004EC8: ; 0x02004EC8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_02003D54
	mov r0, #3
	bl sub_02003D5C
	mov r1, #1
	mov r3, #0xfa
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #6
	str r4, [sp]
	bl sub_020B8ED0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02004EC8

	thumb_func_start sub_02004EEC
sub_02004EEC: ; 0x02004EEC
	ldr r3, _02004EF0 ; =sub_020B8FBC
	bx r3
	; .align 2, 0
_02004EF0: .word sub_020B8FBC
	thumb_func_end sub_02004EEC

	thumb_func_start sub_02004EF4
sub_02004EF4: ; 0x02004EF4
	ldr r3, _02004EF8 ; =sub_020B8F78
	bx r3
	; .align 2, 0
_02004EF8: .word sub_020B8F78
	thumb_func_end sub_02004EF4

	thumb_func_start sub_02004EFC
sub_02004EFC: ; 0x02004EFC
	push {r3, r4, lr}
	sub sp, #0xc
	bl sub_02003D54
	mov r0, #4
	bl sub_02003D5C
	mov r1, #0
	mov r2, #0x1c
	bl sub_020C4CF4
	mov r0, #3
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #4
	bl sub_02003D5C
	mov r2, #2
	ldr r1, _02004F3C ; =sub_020052C8
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	lsl r1, r2, #0xb
	ldr r3, _02004F40 ; =0x000055F0
	add r0, r4, #0
	mov r2, #0
	bl sub_020B9014
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02004F3C: .word sub_020052C8
_02004F40: .word 0x000055F0
	thumb_func_end sub_02004EFC

	thumb_func_start sub_02004F44
sub_02004F44: ; 0x02004F44
	ldr r3, _02004F48 ; =sub_020B90C0
	bx r3
	; .align 2, 0
_02004F48: .word sub_020B90C0
	thumb_func_end sub_02004F44

	thumb_func_start sub_02004F4C
sub_02004F4C: ; 0x02004F4C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x14
	bl sub_02003D5C
	cmp r4, #8
	ble _02004F5E
	mov r4, #8
	b _02004F64
_02004F5E:
	cmp r4, #0
	bge _02004F64
	mov r4, #0
_02004F64:
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_02004F4C

	thumb_func_start sub_02004F68
sub_02004F68: ; 0x02004F68
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020040CC
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020B8194
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004F68

	thumb_func_start sub_02004F7C
sub_02004F7C: ; 0x02004F7C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02004B18
	bl sub_020040F0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02004F68
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004F7C

	thumb_func_start sub_02004F94
sub_02004F94: ; 0x02004F94
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020040CC
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020B81B4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02004F94

	thumb_func_start sub_02004FA8
sub_02004FA8: ; 0x02004FA8
	push {r4, lr}
	add r4, r1, #0
	bl sub_020040CC
	add r1, r4, #0
	bl sub_020B81D4
	pop {r4, pc}
	thumb_func_end sub_02004FA8

	thumb_func_start sub_02004FB8
sub_02004FB8: ; 0x02004FB8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020B7A60
	ldr r0, _02004FC8 ; =0x021BEB80
	str r4, [r0, #0]
	pop {r4, pc}
	nop
_02004FC8: .word 0x021BEB80
	thumb_func_end sub_02004FB8

	thumb_func_start sub_02004FCC
sub_02004FCC: ; 0x02004FCC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #7
	bl sub_02003D5C
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004FCC

	thumb_func_start sub_02004FDC
sub_02004FDC: ; 0x02004FDC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl sub_02003D5C
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02004FDC

	thumb_func_start sub_02004FEC
sub_02004FEC: ; 0x02004FEC
	push {r3, lr}
	mov r0, #8
	bl sub_02003D5C
	ldrh r1, [r0]
	cmp r1, #0
	bne _02005002
	mov r1, #0
	strh r1, [r0]
	add r0, r1, #0
	pop {r3, pc}
_02005002:
	sub r1, r1, #1
	strh r1, [r0]
	ldrh r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02004FEC

	thumb_func_start sub_0200500C
sub_0200500C: ; 0x0200500C
	ldr r3, _02005010 ; =sub_020B7A54
	bx r3
	; .align 2, 0
_02005010: .word sub_020B7A54
	thumb_func_end sub_0200500C

	thumb_func_start sub_02005014
sub_02005014: ; 0x02005014
	ldr r0, _02005018 ; =0x021BEBA0
	bx lr
	; .align 2, 0
_02005018: .word 0x021BEBA0
	thumb_func_end sub_02005014

	thumb_func_start sub_0200501C
sub_0200501C: ; 0x0200501C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200501C

	thumb_func_start sub_0200502C
sub_0200502C: ; 0x0200502C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x16
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02003D5C
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r3, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020050A4
	mov r0, #0
	strb r0, [r4]
	mov r0, #5
	bl sub_02003D0C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200502C

	thumb_func_start sub_02005068
sub_02005068: ; 0x02005068
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #9
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02003D5C
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	ldr r3, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020050A4
	ldr r0, [sp, #0x20]
	str r0, [r4, #0]
	mov r0, #6
	bl sub_02003D0C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02005068

	thumb_func_start sub_020050A4
sub_020050A4: ; 0x020050A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	mov r0, #2
	add r5, r1, #0
	add r7, r3, #0
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0
	add r1, r6, #0
	bl sub_0200564C
	mov r0, #0
	bl sub_020041E8
	add r0, r5, #0
	bl sub_02004208
	add r0, r7, #0
	bl sub_02004FDC
	add r0, r5, #0
	bl sub_02004B3C
	str r0, [r4, #0]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	bl sub_0200501C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020050A4

	thumb_func_start sub_020050E0
sub_020050E0: ; 0x020050E0
	cmp r0, #0
	bne _020050E8
	mov r0, #0
	bx lr
_020050E8:
	add r0, #0xc
	bx lr
	thumb_func_end sub_020050E0

	thumb_func_start sub_020050EC
sub_020050EC: ; 0x020050EC
	cmp r0, #0
	bne _020050F4
	mov r0, #0
	bx lr
_020050F4:
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_020050EC

	thumb_func_start sub_020050F8
sub_020050F8: ; 0x020050F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #5
	bl sub_02004974
	bl sub_0200403C
	lsl r0, r5, #0x10
	lsr r4, r0, #0x10
	ldr r0, _0200512C ; =0x000001B9
	cmp r4, r0
	beq _0200511C
	add r0, #0x36
	cmp r5, r0
	bgt _0200511A
	cmp r5, #0
	bne _0200511C
_0200511A:
	mov r4, #1
_0200511C:
	add r0, r4, #0
	bl sub_0200409C
	add r0, r4, #0
	bl sub_02005130
	pop {r3, r4, r5, pc}
	nop
_0200512C: .word 0x000001B9
	thumb_func_end sub_020050F8

	thumb_func_start sub_02005130
sub_02005130: ; 0x02005130
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x21
	bl sub_02003D5C
	add r4, r0, #0
	lsl r0, r5, #0x10
	ldr r1, _02005184 ; =0x000001B9
	lsr r0, r0, #0x10
	cmp r0, r1
	beq _02005152
	add r1, #0x36
	cmp r5, r1
	bgt _02005150
	cmp r5, #0
	bne _02005152
_02005150:
	mov r0, #1
_02005152:
	bl sub_020B9C50
	cmp r0, #0
	bne _02005162
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005162:
	ldr r0, [r0, #0]
	lsl r0, r0, #8
	lsr r0, r0, #8
	bl sub_020B9E6C
	cmp r0, #0
	bne _02005178
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005178:
	mov r1, #0
	bl sub_020C6314
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_02005184: .word 0x000001B9
	thumb_func_end sub_02005130

	thumb_func_start sub_02005188
sub_02005188: ; 0x02005188
	push {r4, r5, r6, lr}
	mov r0, #1
	add r5, r1, #0
	add r6, r2, #0
	bl sub_020051C4
	mov r1, #3
	add r4, r0, #0
	add r0, r6, #0
	lsl r1, r1, #8
	ldr r5, [r5, #8]
	bl sub_020E1F6C
	lsl r1, r0, #1
	bpl _020051B0
	mov r0, #0x20
	bl sub_020E1F6C
	neg r0, r0
	b _020051BA
_020051B0:
	cmp r1, #0
	bne _020051B8
	mov r0, #0x20
	b _020051BA
_020051B8:
	lsl r0, r1, #5
_020051BA:
	mul r0, r4
	cmp r0, r5
	blo _020051C2
	mov r0, #0
_020051C2:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02005188

	thumb_func_start sub_020051C4
sub_020051C4: ; 0x020051C4
	push {r3, lr}
	bl sub_020040CC
	bl sub_020B826C
	pop {r3, pc}
	thumb_func_end sub_020051C4

	thumb_func_start sub_020051D0
sub_020051D0: ; 0x020051D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r4, r1, #0
	add r6, r2, #0
	ldr r1, [sp]
	mov r0, #1
	add r2, r3, #0
	bl sub_02005188
	add r1, r0, #0
	mov ip, r0
	sub r1, #0x64
	bpl _020051EE
	mov r1, #0
_020051EE:
	ldr r0, [sp]
	mov r3, #0
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	add r7, r3, #0
	cmp r0, #0x80
	bhs _02005200
	mov r0, #1
	b _02005202
_02005200:
	sub r0, r3, #1
_02005202:
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	mov r0, ip
	cmp r1, r0
	bhs _02005282
_0200520C:
	mov r0, #0
	cmp r5, #0
	ble _02005226
	ldr r2, [sp]
	add r2, r2, r1
	str r2, [sp, #4]
	ldrb r2, [r2, #0xc]
	cmp r2, #0x80
	bls _02005222
	mov r0, #1
	b _02005238
_02005222:
	add r3, r3, #1
	b _02005238
_02005226:
	ldr r2, [sp]
	add r2, r2, r1
	str r2, [sp, #4]
	ldrb r2, [r2, #0xc]
	cmp r2, #0x80
	bhs _02005236
	mov r0, #1
	b _02005238
_02005236:
	add r3, r3, #1
_02005238:
	cmp r0, #1
	bne _0200527A
	ldr r5, _020052C4 ; =0x020E4D0C
	mov r2, #0
_02005240:
	ldrb r0, [r5]
	cmp r3, r0
	bge _0200524A
	add r7, r2, #0
	b _02005252
_0200524A:
	add r2, r2, #1
	add r5, r5, #1
	cmp r2, #9
	blt _02005240
_02005252:
	cmp r7, r6
	blt _02005258
	sub r7, r6, #1
_02005258:
	cmp r3, #0
	beq _02005266
	sub r0, r6, #1
	sub r0, r0, r7
	ldrb r2, [r4, r0]
	add r2, r2, #1
	strb r2, [r4, r0]
_02005266:
	ldr r0, [sp, #4]
	mov r3, #0
	ldrb r0, [r0, #0xc]
	cmp r0, #0x80
	bhs _02005274
	mov r0, #1
	b _02005276
_02005274:
	sub r0, r3, #1
_02005276:
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
_0200527A:
	add r1, r1, #2
	mov r0, ip
	cmp r1, r0
	blo _0200520C
_02005282:
	mov r2, #0
	cmp r6, #0
	ble _02005298
	mov r0, #9
_0200528A:
	ldrb r1, [r4, r2]
	cmp r1, #0xa
	blo _02005292
	strb r0, [r4, r2]
_02005292:
	add r2, r2, #1
	cmp r2, r6
	blt _0200528A
_02005298:
	sub r2, r6, #1
	mov r3, #0
	cmp r2, #0
	ble _020052C0
_020052A0:
	ldrb r0, [r4, r3]
	add r1, r4, r3
	cmp r0, #0
	bne _020052BA
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _020052BA
	add r0, r3, #1
	ldrb r0, [r4, r0]
	add sp, #8
	lsr r0, r0, #1
	strb r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_020052BA:
	add r3, r3, #1
	cmp r3, r2
	blt _020052A0
_020052C0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020052C4: .word 0x020E4D0C
	thumb_func_end sub_020051D0

	thumb_func_start sub_020052C8
sub_020052C8: ; 0x020052C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [sp, #0x48]
	add r6, r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x14
	str r2, [sp]
	add r4, r3, #0
	bl sub_02003D5C
	add r7, r0, #0
	cmp r4, #1
	beq _020052EA
	ldr r0, [sp]
	lsr r0, r0, #1
	str r0, [sp]
_020052EA:
	ldrb r2, [r7]
	cmp r2, #0
	beq _020053BA
	mov r0, #0
	cmp r2, #0
	ble _0200531C
	add r1, sp, #0x10
_020052F8:
	ldr r3, [sp]
	sub r2, r3, r2
	add r2, r0, r2
	lsl r2, r2, #1
	ldrsh r2, [r5, r2]
	strh r2, [r1]
	ldrb r3, [r7]
	ldr r2, [sp]
	sub r2, r2, r3
	add r2, r0, r2
	lsl r2, r2, #1
	ldrsh r2, [r6, r2]
	add r0, r0, #1
	strh r2, [r1, #2]
	ldrb r2, [r7]
	add r1, r1, #4
	cmp r0, r2
	blt _020052F8
_0200531C:
	ldr r0, [sp]
	sub r4, r0, #1
	sub r0, r2, #1
	cmp r4, r0
	blt _02005386
	lsl r1, r4, #1
	add r0, r5, r1
	str r0, [sp, #8]
	add r0, r6, r1
	str r0, [sp, #4]
_02005330:
	mov r0, #0
	add r1, r0, #0
	cmp r2, #0
	ble _02005346
_02005338:
	sub r3, r4, r1
	lsl r3, r3, #1
	ldrsh r3, [r5, r3]
	add r1, r1, #1
	add r0, r0, r3
	cmp r1, r2
	blt _02005338
_02005346:
	add r1, r2, #0
	bl sub_020E1F6C
	ldr r1, [sp, #8]
	strh r0, [r1]
	mov r0, #0
	ldrb r1, [r7]
	add r2, r0, #0
	cmp r1, #0
	ble _02005368
_0200535A:
	sub r3, r4, r2
	lsl r3, r3, #1
	ldrsh r3, [r6, r3]
	add r2, r2, #1
	add r0, r0, r3
	cmp r2, r1
	blt _0200535A
_02005368:
	bl sub_020E1F6C
	ldr r1, [sp, #4]
	sub r4, r4, #1
	strh r0, [r1]
	ldr r0, [sp, #8]
	ldrb r2, [r7]
	sub r0, r0, #2
	str r0, [sp, #8]
	add r0, r1, #0
	sub r0, r0, #2
	str r0, [sp, #4]
	sub r0, r2, #1
	cmp r4, r0
	bge _02005330
_02005386:
	mov r1, #0
	cmp r2, #0
	ble _020053AA
	add r0, sp, #0x10
	mov r4, #2
_02005390:
	mov r2, #0
	ldrsh r3, [r0, r2]
	ldr r2, [sp, #0xc]
	add r1, r1, #1
	strh r3, [r2]
	ldrsh r3, [r0, r4]
	add r0, r0, #4
	strh r3, [r2, #2]
	add r2, r2, #4
	str r2, [sp, #0xc]
	ldrb r2, [r7]
	cmp r1, r2
	blt _02005390
_020053AA:
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_020C2C54
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_020C2C54
_020053BA:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020052C8

	thumb_func_start sub_020053C0
sub_020053C0: ; 0x020053C0
	ldr r3, _020053C8 ; =sub_020B7F1C
	add r1, r0, #0
	mov r0, #7
	bx r3
	; .align 2, 0
_020053C8: .word sub_020B7F1C
	thumb_func_end sub_020053C0

	thumb_func_start sub_020053CC
sub_020053CC: ; 0x020053CC
	push {r3, lr}
	cmp r0, #0
	bne _020053E0
	ldr r0, _02005404 ; =0x000007FF
	bl sub_020053C0
	mov r0, #0
	bl sub_02004EEC
	b _020053FC
_020053E0:
	cmp r0, #1
	ldr r0, _02005408 ; =0x00007FFF
	bne _020053F2
	bl sub_020053C0
	mov r0, #0x1e
	bl sub_02004EC8
	b _020053FC
_020053F2:
	bl sub_020053C0
	mov r0, #0xf
	bl sub_02004EC8
_020053FC:
	bl sub_02004EC0
	pop {r3, pc}
	nop
_02005404: .word 0x000007FF
_02005408: .word 0x00007FFF
	thumb_func_end sub_020053CC

	thumb_func_start sub_0200540C
sub_0200540C: ; 0x0200540C
	push {r3, lr}
	bl sub_02005684
	cmp r0, #0
	bne _02005440
	mov r0, #0
	bl sub_020040CC
	bl sub_02004B34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02005440
	bl sub_020041FC
	ldr r1, _02005448 ; =0x0000047E
	cmp r0, r1
	beq _02005440
	bl sub_020056D4
	mov r0, #1
	add r1, r0, #0
	bl sub_020049F4
	pop {r3, pc}
_02005440:
	bl sub_0200569C
	pop {r3, pc}
	nop
_02005448: .word 0x0000047E
	thumb_func_end sub_0200540C

	thumb_func_start sub_0200544C
sub_0200544C: ; 0x0200544C
	ldr r3, _02005450 ; =sub_020B7EE4
	bx r3
	; .align 2, 0
_02005450: .word sub_020B7EE4
	thumb_func_end sub_0200544C

	thumb_func_start sub_02005454
sub_02005454: ; 0x02005454
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x35
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02005454

	thumb_func_start sub_02005464
sub_02005464: ; 0x02005464
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x36
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02005464

	thumb_func_start sub_02005474
sub_02005474: ; 0x02005474
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02004B18
	bl sub_020040F0
	add r5, r0, #0
	bl sub_020040CC
	add r1, r6, #0
	bl sub_020BAD78
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020054EC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02005474

	thumb_func_start sub_0200549C
sub_0200549C: ; 0x0200549C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02004B18
	add r4, r0, #0
	bl sub_020040F0
	add r6, r0, #0
	cmp r4, #7
	bne _020054BE
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02005508
	add r4, r0, #0
	b _020054D8
_020054BE:
	cmp r4, #1
	bne _020054D0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02005538
	add r4, r0, #0
	b _020054D8
_020054D0:
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
_020054D8:
	mov r0, #0
	bl sub_0200501C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020054EC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200549C

	thumb_func_start sub_020054EC
sub_020054EC: ; 0x020054EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020041E8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02004AA0
	mov r0, #1
	bl sub_02003D0C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020054EC

	thumb_func_start sub_02005508
sub_02005508: ; 0x02005508
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #3
	add r4, r2, #0
	bl sub_02004974
	bl sub_0200403C
	add r0, r5, #0
	bl sub_02004068
	mov r0, #0x1b
	bl sub_02003D5C
	bl sub_02004014
	add r0, r4, #0
	bl sub_020040CC
	add r1, r5, #0
	bl sub_020BAD78
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02005508

	thumb_func_start sub_02005538
sub_02005538: ; 0x02005538
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x13
	add r6, r2, #0
	bl sub_02003D5C
	mov r0, #0x20
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0
	bl sub_020040CC
	bl sub_02004B34
	bl sub_02004B48
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020047E8
	add r0, r6, #0
	bl sub_020040CC
	add r6, r0, #0
	ldrh r0, [r4]
	bl sub_02004B48
	mov r1, #0
	mvn r1, r1
	add r2, r0, #0
	add r0, r6, #0
	add r3, r1, #0
	str r5, [sp]
	bl sub_020BADC0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02005538

	thumb_func_start sub_02005588
sub_02005588: ; 0x02005588
	push {r3, r4, r5, lr}
	add r5, r1, #0
	cmp r0, #4
	beq _02005598
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005598:
	add r0, r5, #0
	bl sub_02004B18
	cmp r0, #7
	beq _020055AA
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
_020055AA:
	add r0, r5, #0
	mov r1, #1
	bl sub_02004080
	mov r0, #7
	bl sub_020040CC
	add r1, r5, #0
	bl sub_020BAD78
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020041E8
	mov r0, #1
	bl sub_02003D0C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005588

	thumb_func_start sub_020055D0
sub_020055D0: ; 0x020055D0
	push {r4, lr}
	add r4, r0, #0
	bl sub_020B8034
	add r0, r4, #0
	bl sub_02004B18
	cmp r0, #0xff
	beq _020055EE
	bl sub_020040F0
	bl sub_020040CC
	bl sub_020B80E8
_020055EE:
	bl sub_020055F4
	pop {r4, pc}
	thumb_func_end sub_020055D0

	thumb_func_start sub_020055F4
sub_020055F4: ; 0x020055F4
	push {r3, lr}
	mov r0, #0
	bl sub_020041E8
	mov r0, #0
	bl sub_02004208
	mov r0, #0
	bl sub_02003D0C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020055F4

	thumb_func_start sub_0200560C
sub_0200560C: ; 0x0200560C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020041FC
	bl sub_02004B18
	cmp r0, #0xff
	beq _02005648
	bl sub_020040F0
	add r7, r0, #0
	cmp r4, #0
	bne _02005632
	mov r1, #0
	add r2, r1, #0
	bl sub_02004A54
_02005632:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02004A54
	add r0, r5, #0
	bl sub_02004FCC
	mov r0, #3
	bl sub_02003D0C
_02005648:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200560C

	thumb_func_start sub_0200564C
sub_0200564C: ; 0x0200564C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020041FC
	bl sub_02004B18
	add r6, r0, #0
	cmp r6, #0xff
	beq _02005682
	bl sub_02005684
	cmp r0, #0
	bne _0200567C
	add r0, r6, #0
	bl sub_020040F0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02004A54
	add r0, r4, #0
	bl sub_02004FCC
_0200567C:
	mov r0, #4
	bl sub_02003D0C
_02005682:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200564C

	thumb_func_start sub_02005684
sub_02005684: ; 0x02005684
	push {r3, lr}
	mov r0, #7
	bl sub_02003D5C
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02005684

	thumb_func_start sub_02005690
sub_02005690: ; 0x02005690
	push {r3, lr}
	bl sub_02004B18
	bl sub_02004B04
	pop {r3, pc}
	thumb_func_end sub_02005690

	thumb_func_start sub_0200569C
sub_0200569C: ; 0x0200569C
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0
	bl sub_020B808C
	ldrb r0, [r5]
	cmp r0, #1
	bne _020056C0
	mov r0, #0xe
	bl sub_02004CF4
_020056C0:
	ldrb r0, [r4]
	cmp r0, #1
	bne _020056CC
	mov r0, #0xf
	bl sub_02004CF4
_020056CC:
	mov r0, #0
	bl sub_02003D0C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200569C

	thumb_func_start sub_020056D4
sub_020056D4: ; 0x020056D4
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r7, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #7
	bl sub_020040CC
	mov r1, #0
	bl sub_020B7FC8
	bl sub_020055F4
	mov r5, #0
	add r4, r5, #0
_020056FA:
	add r0, r5, #3
	add r1, r4, #0
	bl sub_020057AC
	add r5, r5, #1
	cmp r5, #4
	blt _020056FA
	mov r0, #0
	bl sub_0200592C
	ldrb r0, [r7]
	cmp r0, #1
	bne _0200571A
	mov r0, #0xe
	bl sub_02004CF4
_0200571A:
	ldrb r0, [r6]
	cmp r0, #1
	bne _02005726
	mov r0, #0xf
	bl sub_02004CF4
_02005726:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020056D4

	thumb_func_start sub_02005728
sub_02005728: ; 0x02005728
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02005748
	add r6, r0, #0
	ldr r1, _02005744 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl sub_020057FC
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02005744: .word 0x0000FFFF
	thumb_func_end sub_02005728

	thumb_func_start sub_02005748
sub_02005748: ; 0x02005748
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02004B18
	bl sub_020040F0
	add r5, r0, #0
	bl sub_020040CC
	add r1, r6, #0
	bl sub_020BAD78
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02004AA0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02005748

	thumb_func_start sub_02005770
sub_02005770: ; 0x02005770
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020040F0
	add r6, r0, #0
	bl sub_020040CC
	mov r2, #0
	mvn r2, r2
	add r1, r5, #0
	add r3, r2, #0
	str r4, [sp]
	bl sub_020BADC0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02004AA0
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02005770

	thumb_func_start sub_020057A4
sub_020057A4: ; 0x020057A4
	ldr r3, _020057A8 ; =sub_020B8034
	bx r3
	; .align 2, 0
_020057A8: .word sub_020B8034
	thumb_func_end sub_020057A4

	thumb_func_start sub_020057AC
sub_020057AC: ; 0x020057AC
	push {r4, lr}
	add r4, r1, #0
	bl sub_020040CC
	add r1, r4, #0
	bl sub_020B7FC8
	pop {r4, pc}
	thumb_func_end sub_020057AC

	thumb_func_start sub_020057BC
sub_020057BC: ; 0x020057BC
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_020057C2:
	add r0, r5, #3
	add r1, r4, #0
	bl sub_020057AC
	add r5, r5, #1
	cmp r5, #4
	blt _020057C2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020057BC

	thumb_func_start sub_020057D4
sub_020057D4: ; 0x020057D4
	push {r3, lr}
	bl sub_02004B18
	bl sub_02004B04
	pop {r3, pc}
	thumb_func_end sub_020057D4

	thumb_func_start sub_020057E0
sub_020057E0: ; 0x020057E0
	push {r4, lr}
	mov r4, #0
_020057E4:
	add r0, r4, #3
	bl sub_02004B04
	cmp r0, #1
	bne _020057F2
	mov r0, #1
	pop {r4, pc}
_020057F2:
	add r4, r4, #1
	cmp r4, #4
	blt _020057E4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020057E0

	thumb_func_start sub_020057FC
sub_020057FC: ; 0x020057FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02004B18
	bl sub_020040F0
	bl sub_020040CC
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020B81B4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020057FC

	thumb_func_start sub_02005818
sub_02005818: ; 0x02005818
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #3
	bl sub_020040F0
	ldr r7, _02005840 ; =0x0000FFFF
	add r4, r0, #0
	mov r5, #0
_02005828:
	add r0, r4, r5
	bl sub_020040CC
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020B81B4
	add r5, r5, #1
	cmp r5, #4
	blt _02005828
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02005840: .word 0x0000FFFF
	thumb_func_end sub_02005818

	thumb_func_start sub_02005844
sub_02005844: ; 0x02005844
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x12
	str r1, [sp, #4]
	bl sub_02003D5C
	add r7, r0, #0
	mov r0, #0x24
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x35
	bl sub_02003D5C
	add r4, r0, #0
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02006038
	cmp r0, #1
	bne _02005872
	ldr r5, _02005904 ; =0x000001EE
_02005872:
	ldr r0, _02005904 ; =0x000001EE
	cmp r5, r0
	beq _02005884
	add r0, r0, #1
	cmp r5, r0
	bhi _02005882
	cmp r5, #0
	bne _02005884
_02005882:
	mov r5, #1
_02005884:
	ldr r0, _02005908 ; =0x000001B9
	cmp r5, r0
	bne _020058A6
	mov r1, #0
	ldr r0, [r6, #0]
	mov r2, #0x7f
	add r3, r1, #0
	bl sub_0200629C
	cmp r0, #1
	bne _020058A6
	mov r0, #0
	bl sub_020063D4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020058A6:
	ldrb r0, [r7]
	cmp r0, #0
	bne _020058D8
	ldrb r0, [r4]
	cmp r0, #0
	bne _020058B8
	mov r0, #0
	bl sub_0200592C
_020058B8:
	mov r0, #1
	bl sub_020040CC
	mov r1, #2
	str r1, [sp]
	sub r1, r1, #3
	add r2, r5, #0
	add r3, r1, #0
	bl sub_020BADC0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_02004AA0
	b _020058F6
_020058D8:
	mov r0, #8
	bl sub_020040CC
	mov r1, #2
	str r1, [sp]
	sub r1, r1, #3
	add r2, r5, #0
	add r3, r1, #0
	bl sub_020BADC0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_02004AA0
_020058F6:
	mov r0, #0
	bl sub_020063D4
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02005904: .word 0x000001EE
_02005908: .word 0x000001B9
	thumb_func_end sub_02005844

	thumb_func_start sub_0200590C
sub_0200590C: ; 0x0200590C
	push {lr}
	sub sp, #0xc
	add r3, r0, #0
	mov r0, #0xb
	str r0, [sp]
	str r1, [sp, #4]
	add r1, r3, #0
	mov r0, #0
	str r2, [sp, #8]
	add r2, r0, #0
	mov r3, #0x7f
	bl sub_02005F4C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_0200590C

	thumb_func_start sub_0200592C
sub_0200592C: ; 0x0200592C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x10
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0xf
	bl sub_02003D5C
	mov r0, #1
	bl sub_020040CC
	add r1, r5, #0
	bl sub_020B7FC8
	mov r0, #8
	bl sub_020040CC
	add r1, r5, #0
	bl sub_020B7FC8
	ldrb r0, [r6]
	cmp r0, #1
	bne _02005970
	mov r0, #0xe
	bl sub_02004E84
	mov r0, #0xe
	bl sub_02004C4C
_02005970:
	ldrb r0, [r4]
	cmp r0, #1
	bne _02005982
	mov r0, #0xf
	bl sub_02004E84
	mov r0, #0xf
	bl sub_02004C4C
_02005982:
	bl sub_02006350
	bl sub_0200605C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200592C

	thumb_func_start sub_0200598C
sub_0200598C: ; 0x0200598C
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0xf
	bl sub_02003D5C
	mov r0, #0x2e
	bl sub_02003D5C
	ldrb r0, [r5]
	cmp r0, #1
	bne _020059B8
	mov r0, #0xe
	bl sub_02004D04
	pop {r3, r4, r5, pc}
_020059B8:
	ldrb r0, [r4]
	cmp r0, #1
	bne _020059C6
	mov r0, #0xf
	bl sub_02004D04
	pop {r3, r4, r5, pc}
_020059C6:
	mov r0, #0
	bl sub_02004B04
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200598C

	thumb_func_start sub_020059D0
sub_020059D0: ; 0x020059D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r4, r1, #0
	str r0, [sp, #0x38]
	mov r0, #0x10
	add r6, r2, #0
	add r7, r3, #0
	ldr r5, [sp, #0x3c]
	bl sub_02003D5C
	str r0, [sp, #0x14]
	mov r0, #0x11
	bl sub_02003D5C
	str r0, [sp, #0x10]
	mov r0, #0x12
	bl sub_02003D5C
	str r0, [sp, #0xc]
	mov r0, #0x1e
	bl sub_02003D5C
	str r0, [sp, #8]
	mov r0, #0x24
	bl sub_02003D5C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006038
	cmp r0, #1
	bne _02005A16
	ldr r4, _02005D6C ; =0x000001EE
_02005A16:
	ldr r0, _02005D6C ; =0x000001EE
	cmp r4, r0
	beq _02005A28
	add r0, r0, #1
	cmp r4, r0
	bhi _02005A26
	cmp r4, #0
	bne _02005A28
_02005A26:
	mov r4, #1
_02005A28:
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r0, r0, #1
	str r0, [sp, #0x1c]
	add r0, #0x40
	str r0, [sp, #0x1c]
	add r0, r7, #0
	str r0, [sp, #0x18]
	sub r0, #0x1e
	str r0, [sp, #0x18]
	cmp r0, #0
	bgt _02005A44
	mov r0, #1
	str r0, [sp, #0x18]
_02005A44:
	ldr r0, [sp, #0xc]
	mov r1, #0
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02005A5E
	mov r0, #0xe
	bl sub_02004E84
	mov r0, #0xe
	bl sub_02004C4C
_02005A5E:
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02005A72
	mov r0, #0xf
	bl sub_02004E84
	mov r0, #0xf
	bl sub_02004C4C
_02005A72:
	ldr r0, _02005D70 ; =0x000001B9
	cmp r4, r0
	bne _02005B06
	ldr r1, [sp, #4]
	cmp r1, #0xc
	bhi _02005B00
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02005A8A: ; jump table
	.short _02005AA4 - _02005A8A - 2 ; case 0
	.short _02005AA4 - _02005A8A - 2 ; case 1
	.short _02005AA4 - _02005A8A - 2 ; case 2
	.short _02005B00 - _02005A8A - 2 ; case 3
	.short _02005B00 - _02005A8A - 2 ; case 4
	.short _02005AA4 - _02005A8A - 2 ; case 5
	.short _02005B00 - _02005A8A - 2 ; case 6
	.short _02005B00 - _02005A8A - 2 ; case 7
	.short _02005B00 - _02005A8A - 2 ; case 8
	.short _02005B00 - _02005A8A - 2 ; case 9
	.short _02005B00 - _02005A8A - 2 ; case 10
	.short _02005AA4 - _02005A8A - 2 ; case 11
	.short _02005AA4 - _02005A8A - 2 ; case 12
_02005AA4:
	add r1, r5, #0
	bl sub_02005844
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	cmp r0, #0
	bne _02005AC8
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	b _02005AFA
_02005AC8:
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02005AE6
	ldr r1, [sp, #0x1c]
	mov r0, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02004D14
	mov r0, #0xe
	add r1, r7, #0
	bl sub_02004D40
	b _02005AFA
_02005AE6:
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
_02005AFA:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02005B00:
	mov r0, #1
	bl sub_020063D4
_02005B06:
	ldr r0, [sp, #4]
	cmp r0, #0xe
	bls _02005B0E
	b _02005E40
_02005B0E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02005B1A: ; jump table
	.short _02005B38 - _02005B1A - 2 ; case 0
	.short _02005B56 - _02005B1A - 2 ; case 1
	.short _02005B7C - _02005B1A - 2 ; case 2
	.short _02005BC2 - _02005B1A - 2 ; case 3
	.short _02005C10 - _02005B1A - 2 ; case 4
	.short _02005C62 - _02005B1A - 2 ; case 5
	.short _02005C8C - _02005B1A - 2 ; case 6
	.short _02005CD4 - _02005B1A - 2 ; case 7
	.short _02005D06 - _02005B1A - 2 ; case 8
	.short _02005D36 - _02005B1A - 2 ; case 9
	.short _02005D78 - _02005B1A - 2 ; case 10
	.short _02005DAA - _02005B1A - 2 ; case 11
	.short _02005DD4 - _02005B1A - 2 ; case 12
	.short _02005E06 - _02005B1A - 2 ; case 13
	.short _02005E38 - _02005B1A - 2 ; case 14
_02005B38:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	b _02005E40
_02005B56:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x14
	bl sub_02005E64
	b _02005E40
_02005B7C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0x40
	bl sub_02004F68
	add r0, r4, #0
	mov r1, #0x14
	add r2, r5, #0
	bl sub_020060EC
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02004F94
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	bl sub_02005E4C
	b _02005E40
_02005BC2:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x1e
	bl sub_02005E64
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0xc0
	bl sub_02004F68
	add r0, r4, #0
	mov r1, #0x10
	add r2, r5, #0
	bl sub_020060EC
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02004F94
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	bl sub_02005E4C
	b _02005E40
_02005C10:
	mov r0, #0xe
	bl sub_02004BCC
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0xe
	bl sub_02004D78
	ldr r1, [sp, #0x1c]
	mov r0, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02004D14
	ldr r1, [sp, #0x38]
	mov r0, #0xf
	bl sub_02005E64
	mov r1, #0x86
	mov r0, #0xe
	lsl r1, r1, #8
	bl sub_02004D2C
	ldr r0, [sp, #0x38]
	mov r1, #0x3f
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mvn r1, r1
	bl sub_02006120
	mov r1, #0x86
	mov r0, #0xf
	lsl r1, r1, #8
	bl sub_02004D2C
	b _02005E40
_02005C62:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005D74 ; =0x0000FFFF
	sub r2, #0xe1
	bl sub_02004F68
	b _02005E40
_02005C8C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0x2c
	bl sub_02004F68
	mov r1, #0x3f
	add r0, r4, #0
	mvn r1, r1
	add r2, r5, #0
	bl sub_020060EC
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02004F94
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	bl sub_02005E4C
	b _02005E40
_02005CD4:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0xb
	bl sub_02005E64
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005D74 ; =0x0000FFFF
	sub r2, #0x81
	bl sub_02004F68
	b _02005E40
_02005D06:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x3c
	bl sub_02005E64
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0x3c
	bl sub_02004F68
	b _02005E40
_02005D36:
	mov r0, #0xe
	bl sub_02004BCC
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0xe
	bl sub_02004D78
	ldr r1, [sp, #0x1c]
	mov r0, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02004D14
	ldr r1, [sp, #0x38]
	mov r0, #0xd
	bl sub_02005E64
	mov r1, #0x1a
	mov r0, #0xe
	lsl r1, r1, #0xa
	bl sub_02004D2C
	b _02005E40
	; .align 2, 0
_02005D6C: .word 0x000001EE
_02005D70: .word 0x000001B9
_02005D74: .word 0x0000FFFF
_02005D78:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005E48 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x64
	bl sub_02005E64
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005E48 ; =0x0000FFFF
	sub r2, #0x2d
	bl sub_02004F68
	b _02005E40
_02005DAA:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005E48 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005E48 ; =0x0000FFFF
	sub r2, #0x61
	bl sub_02004F68
	b _02005E40
_02005DD4:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005E48 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x14
	bl sub_02005E64
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005E48 ; =0x0000FFFF
	sub r2, #0x61
	bl sub_02004F68
	b _02005E40
_02005E06:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x7f
	bl sub_02005E4C
	add r0, r4, #0
	mov r1, #0x14
	add r2, r5, #0
	bl sub_020060EC
	ldr r1, _02005E48 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02004F94
	mov r0, #8
	add r1, r7, #0
	mov r2, #0
	bl sub_02004A54
	b _02005E40
_02005E38:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
_02005E40:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02005E48: .word 0x0000FFFF
	thumb_func_end sub_020059D0

	thumb_func_start sub_02005E4C
sub_02005E4C: ; 0x02005E4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	bl sub_02004A68
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02004AA0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005E4C

	thumb_func_start sub_02005E64
sub_02005E64: ; 0x02005E64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x23
	bl sub_02003D5C
	add r6, r0, #0
	bl sub_02005F24
	add r0, r4, #0
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	bne _02005E88
	bl sub_02022974
	pop {r4, r5, r6, pc}
_02005E88:
	mov r2, #0
	strb r2, [r4]
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	strb r2, [r4, #4]
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	ldr r0, _02005EAC ; =sub_02005EB0
	add r1, r4, #0
	str r5, [r4, #0]
	bl sub_0200D9E8
	str r0, [r4, #4]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	nop
_02005EAC: .word sub_02005EB0
	thumb_func_end sub_02005E64

	thumb_func_start sub_02005EB0
sub_02005EB0: ; 0x02005EB0
	push {r4, r5, r6, lr}
	mov r0, #0x10
	add r5, r1, #0
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	ldr r2, [r5, #0]
	add r4, r0, #0
	cmp r2, #0xa
	bne _02005EDC
	mov r0, #1
	mov r1, #0
	bl sub_02004A54
	ldr r2, [r5, #0]
	mov r0, #8
	mov r1, #0
	bl sub_02004A54
_02005EDC:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	bl sub_0200598C
	cmp r0, #0
	bne _02005EEE
	mov r0, #0
	str r0, [r5, #0]
_02005EEE:
	ldr r0, [r5, #0]
	cmp r0, #0
	bgt _02005F22
	mov r0, #0
	bl sub_0200592C
	ldrb r0, [r6]
	cmp r0, #1
	bne _02005F0C
	mov r0, #0xe
	bl sub_02004E84
	mov r0, #0xe
	bl sub_02004C4C
_02005F0C:
	ldrb r0, [r4]
	cmp r0, #1
	bne _02005F1E
	mov r0, #0xf
	bl sub_02004E84
	mov r0, #0xf
	bl sub_02004C4C
_02005F1E:
	bl sub_02005F24
_02005F22:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02005EB0

	thumb_func_start sub_02005F24
sub_02005F24: ; 0x02005F24
	push {r3, r4, r5, lr}
	mov r0, #0x23
	bl sub_02003D5C
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02005F46
	bl sub_0201CED0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200DA58
	add r0, r5, #0
	bl sub_020181C4
_02005F46:
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005F24

	thumb_func_start sub_02005F4C
sub_02005F4C: ; 0x02005F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	mov r0, #6
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x35
	bl sub_02003D5C
	str r0, [sp, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	bne _02005FA0
	mov r0, #0x29
	bl sub_02003D5C
	str r0, [sp, #0x24]
	mov r0, #0x2d
	bl sub_02003D5C
	str r0, [sp, #0x20]
	mov r0, #0x2a
	bl sub_02003D5C
	str r0, [sp, #0x1c]
	mov r0, #0x2b
	bl sub_02003D5C
	str r0, [sp, #0x18]
	mov r0, #0x2c
	bl sub_02003D5C
	str r0, [sp, #0x14]
	mov r0, #0x2e
	bl sub_02003D5C
	str r0, [sp, #0x10]
	b _02005FD0
_02005FA0:
	mov r0, #0x2f
	bl sub_02003D5C
	str r0, [sp, #0x24]
	mov r0, #0x33
	bl sub_02003D5C
	str r0, [sp, #0x20]
	mov r0, #0x30
	bl sub_02003D5C
	str r0, [sp, #0x1c]
	mov r0, #0x31
	bl sub_02003D5C
	str r0, [sp, #0x18]
	mov r0, #0x32
	bl sub_02003D5C
	str r0, [sp, #0x14]
	mov r0, #0x34
	bl sub_02003D5C
	str r0, [sp, #0x10]
_02005FD0:
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02005FE0
	ldrb r1, [r4]
	mov r0, #1
	eor r0, r1
	strb r0, [r4]
_02005FE0:
	add r1, sp, #0x30
	ldrb r1, [r1, #0x18]
	add r0, r5, #0
	bl sub_02006038
	cmp r0, #1
	bne _02005FF0
	ldr r5, _02006034 ; =0x000001EE
_02005FF0:
	cmp r5, #0
	beq _02006030
	add r1, sp, #0x30
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _02006014
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldrb r0, [r1, #0x18]
	add r1, r5, #0
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_020059D0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02006014:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #8]
	str r6, [r1, #0]
	ldr r1, [sp, #0x20]
	strh r5, [r1]
	ldr r1, [sp, #0x1c]
	str r7, [r1, #0]
	ldr r1, [sp, #0x18]
	str r2, [r1, #0]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x14]
	str r2, [r1, #0]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
_02006030:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02006034: .word 0x000001EE
	thumb_func_end sub_02005F4C

	thumb_func_start sub_02006038
sub_02006038: ; 0x02006038
	mov r2, #0x7b
	lsl r2, r2, #2
	cmp r0, r2
	bne _02006048
	cmp r1, #1
	bne _02006048
	mov r0, #1
	bx lr
_02006048:
	ldr r1, _02006058 ; =0x000001EE
	cmp r0, r1
	bne _02006052
	mov r0, #1
	bx lr
_02006052:
	mov r0, #0
	bx lr
	nop
_02006058: .word 0x000001EE
	thumb_func_end sub_02006038

	thumb_func_start sub_0200605C
sub_0200605C: ; 0x0200605C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r0, #0x29
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x2d
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x2a
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x2b
	bl sub_02003D5C
	add r7, r0, #0
	mov r0, #0x2c
	bl sub_02003D5C
	str r0, [sp]
	mov r0, #0x2e
	bl sub_02003D5C
	str r0, [sp, #4]
	mov r0, #0x2f
	bl sub_02003D5C
	str r0, [sp, #8]
	mov r0, #0x33
	bl sub_02003D5C
	str r0, [sp, #0xc]
	mov r0, #0x30
	bl sub_02003D5C
	str r0, [sp, #0x10]
	mov r0, #0x31
	bl sub_02003D5C
	str r0, [sp, #0x14]
	mov r0, #0x32
	bl sub_02003D5C
	str r0, [sp, #0x18]
	mov r0, #0x34
	bl sub_02003D5C
	mov r1, #0
	str r1, [r5, #0]
	strh r1, [r4]
	str r1, [r6, #0]
	ldr r2, [sp]
	str r1, [r7, #0]
	str r1, [r2, #0]
	ldr r2, [sp, #4]
	strb r1, [r2]
	ldr r2, [sp, #8]
	str r1, [r2, #0]
	ldr r2, [sp, #0xc]
	strh r1, [r2]
	ldr r2, [sp, #0x10]
	str r1, [r2, #0]
	ldr r2, [sp, #0x14]
	str r1, [r2, #0]
	ldr r2, [sp, #0x18]
	str r1, [r2, #0]
	strb r1, [r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200605C

	thumb_func_start sub_020060EC
sub_020060EC: ; 0x020060EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x12
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02003D5C
	mov r1, #1
	strb r1, [r0]
	add r0, r1, #0
	bl sub_020063D4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02005844
	add r5, r0, #0
	ldr r1, _0200611C ; =0x0000FFFF
	mov r0, #8
	add r2, r4, #0
	bl sub_02004F68
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0200611C: .word 0x0000FFFF
	thumb_func_end sub_020060EC

	thumb_func_start sub_02006120
sub_02006120: ; 0x02006120
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x12
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02003D5C
	mov r1, #1
	strb r1, [r0]
	mov r0, #0xf
	bl sub_02004BCC
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xf
	bl sub_02004D78
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02006120

	thumb_func_start sub_02006150
sub_02006150: ; 0x02006150
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02004B3C
	add r0, r5, #0
	bl sub_02006214
	bl sub_020041FC
	bl sub_02004B18
	cmp r0, #0xff
	beq _02006170
	mov r1, #1
	bl sub_020049F4
_02006170:
	mov r0, #0x1d
	bl sub_02003D5C
	bl sub_02004014
	add r0, r5, #0
	mov r1, #3
	bl sub_02004080
	mov r0, #2
	bl sub_020040CC
	add r1, r5, #0
	bl sub_020BAD78
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_02004AA0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02006150

	thumb_func_start sub_0200619C
sub_0200619C: ; 0x0200619C
	push {r4, lr}
	mov r0, #0xe
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #2
	bl sub_02004B04
	cmp r0, #0
	beq _020061B4
	mov r0, #1
	pop {r4, pc}
_020061B4:
	ldrh r0, [r4]
	cmp r0, #0
	beq _020061C2
	sub r0, r0, #1
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_020061C2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200619C

	thumb_func_start sub_020061C8
sub_020061C8: ; 0x020061C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_020040CC
	add r1, r4, #0
	bl sub_020B7FC8
	mov r0, #6
	bl sub_02004974
	bl sub_0200403C
	pop {r4, pc}
	thumb_func_end sub_020061C8

	thumb_func_start sub_020061E4
sub_020061E4: ; 0x020061E4
	push {r3, lr}
	mov r0, #0xe
	bl sub_02003D5C
	bl sub_0200619C
	cmp r0, #1
	bne _020061F8
	mov r0, #1
	pop {r3, pc}
_020061F8:
	mov r0, #0
	bl sub_020061C8
	bl sub_020041FC
	bl sub_02004B18
	cmp r0, #0xff
	beq _02006210
	mov r1, #0
	bl sub_020049F4
_02006210:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020061E4

	thumb_func_start sub_02006214
sub_02006214: ; 0x02006214
	push {r3, lr}
	mov r0, #0xe
	bl sub_02003D5C
	mov r1, #0xf
	strh r1, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02006214

	thumb_func_start sub_02006224
sub_02006224: ; 0x02006224
	push {r4, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x1e
	bl sub_02003D5C
	ldrb r0, [r0]
	cmp r0, #1
	bne _0200625A
	ldrb r0, [r4]
	cmp r0, #1
	bne _02006252
	mov r0, #0xe
	bl sub_02004D04
	cmp r0, #0
	bne _0200625A
	bl sub_02006350
	mov r0, #1
	pop {r4, pc}
_02006252:
	bl sub_02006350
	mov r0, #1
	pop {r4, pc}
_0200625A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006224

	thumb_func_start sub_02006260
sub_02006260: ; 0x02006260
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x1f
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x36
	bl sub_02003D5C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202CCA4
	cmp r0, #0
	bne _02006282
	mov r0, #0
	pop {r4, r5, r6, pc}
_02006282:
	ldrb r0, [r4]
	cmp r0, #1
	bne _0200628C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0200628C:
	ldrb r0, [r5]
	cmp r0, #1
	beq _02006296
	mov r0, #1
	pop {r4, r5, r6, pc}
_02006296:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02006260

	thumb_func_start sub_0200629C
sub_0200629C: ; 0x0200629C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02005014
	str r0, [sp]
	mov r0, #0x1e
	bl sub_02003D5C
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02006260
	cmp r0, #0
	bne _020062C4
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020062C4:
	mov r0, #0
	bl sub_0200592C
	bl sub_02006350
	mov r0, #0xe
	bl sub_02004BCC
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x13
	sub r1, r1, r2
	mov r0, #0x13
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	bl sub_0202CCB0
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_0202CCB4
	mov r0, #0xe
	bl sub_02004B78
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	bl sub_02005014
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r4, r0
	str r0, [sp, #0x28]
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	add r0, #0x40
	str r0, [sp, #0x2c]
	add r0, sp, #8
	mov r1, #0xe
	str r5, [sp, #0x24]
	bl sub_02004CB4
	add r4, r0, #0
	mov r0, #0xe
	add r1, r5, #0
	bl sub_02004D40
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0]
	mov r0, #0
	bl sub_020063D4
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200629C

	thumb_func_start sub_02006350
sub_02006350: ; 0x02006350
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x1e
	bl sub_02003D5C
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	bne _02006374
	mov r0, #0xe
	bl sub_02004E84
	mov r0, #0xe
	bl sub_02004C4C
_02006374:
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006350

	thumb_func_start sub_0200637C
sub_0200637C: ; 0x0200637C
	push {lr}
	sub sp, #0x1c
	mov r0, #2
	str r0, [sp]
	bl sub_02005014
	mov r1, #0x7d
	str r0, [sp, #4]
	lsl r1, r1, #4
	mov r0, #0x1f
	str r1, [sp, #8]
	tst r0, r1
	beq _0200639C
	mov r0, #0x1f
	bic r1, r0
	str r1, [sp, #8]
_0200639C:
	ldr r0, _020063B4 ; =0x00004174
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, sp, #0
	bl sub_02004B5C
	add sp, #0x1c
	pop {pc}
	nop
_020063B4: .word 0x00004174
	thumb_func_end sub_0200637C

	thumb_func_start sub_020063B8
sub_020063B8: ; 0x020063B8
	ldr r3, _020063BC ; =sub_02004B64
	bx r3
	; .align 2, 0
_020063BC: .word sub_02004B64
	thumb_func_end sub_020063B8

	thumb_func_start sub_020063C0
sub_020063C0: ; 0x020063C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02005014
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202CCEC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020063C0

	thumb_func_start sub_020063D4
sub_020063D4: ; 0x020063D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	bl sub_02003D5C
	strb r4, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020063D4

	thumb_func_start sub_020063E4
sub_020063E4: ; 0x020063E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x24
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02003D5C
	cmp r5, #0
	bne _02006408
	ldr r0, [r0, #0]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200629C
	b _02006414
_02006408:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200629C
_02006414:
	cmp r0, #0
	bne _02006430
	mov r0, #1
	bl sub_020063D4
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0
	ldr r1, _02006434 ; =0x000001B9
	add r2, r6, #0
	add r3, r4, #0
	str r0, [sp, #4]
	bl sub_020059D0
_02006430:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02006434: .word 0x000001B9
	thumb_func_end sub_020063E4

	thumb_func_start sub_02006438
sub_02006438: ; 0x02006438
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x24
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02003D5C
	cmp r5, #0
	bne _0200645C
	ldr r0, [r0, #0]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200629C
	b _02006468
_0200645C:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200629C
_02006468:
	cmp r0, #0
	bne _0200648C
	mov r0, #1
	bl sub_020063D4
	mov r0, #0xb
	str r0, [sp]
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r1, _02006490 ; =0x000001B9
	add r2, r6, #0
	str r0, [sp, #4]
	mov r0, #0
	add r3, r4, #0
	str r0, [sp, #8]
	bl sub_02005F4C
	mov r0, #1
_0200648C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02006490: .word 0x000001B9
	thumb_func_end sub_02006438

	thumb_func_start sub_02006494
sub_02006494: ; 0x02006494
	push {r4, lr}
	add r4, r0, #0
	bl sub_0202CCA4
	cmp r0, #0
	bne _020064A4
	mov r0, #0
	pop {r4, pc}
_020064A4:
	add r0, r4, #0
	bl sub_0202CCB0
	mov r1, #0xf
	ldrsb r0, [r0, r1]
	sub r1, #0x2d
	cmp r0, r1
	bge _020064B8
	mov r0, #1
	pop {r4, pc}
_020064B8:
	cmp r0, #0x1e
	blt _020064C4
	cmp r0, #0x80
	bge _020064C4
	mov r0, #2
	pop {r4, pc}
_020064C4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02006494

	thumb_func_start sub_020064C8
sub_020064C8: ; 0x020064C8
	cmp r0, #0xb
	bgt _020064E2
	bge _020064E6
	cmp r0, #5
	bgt _020064EA
	cmp r0, #0
	blt _020064EA
	beq _020064E6
	cmp r0, #1
	beq _020064E6
	cmp r0, #5
	beq _020064E6
	b _020064EA
_020064E2:
	cmp r0, #0xc
	bne _020064EA
_020064E6:
	mov r0, #1
	bx lr
_020064EA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020064C8

	thumb_func_start sub_020064F0
sub_020064F0: ; 0x020064F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _020064FE
	bl sub_02022974
_020064FE:
	ldr r1, [r4, #0]
	mov r0, #0
	bl sub_020C8BBC
	cmp r0, #1
	beq _0200650E
	bl sub_02022974
_0200650E:
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end sub_020064F0

	thumb_func_start sub_02006514
sub_02006514: ; 0x02006514
	push {r4, lr}
	add r4, r0, #0
	bl sub_02006544
	bl sub_020066C0
	mov r2, #0
	add r3, r0, #0
_02006524:
	ldr r1, [r3, #4]
	cmp r1, #1
	bne _0200653A
	ldr r1, [r3, #0]
	cmp r4, r1
	bne _0200653A
	lsl r1, r2, #3
	add r0, r0, r1
	bl sub_020064F0
	pop {r4, pc}
_0200653A:
	add r2, r2, #1
	add r3, #8
	cmp r2, #8
	blt _02006524
	pop {r4, pc}
	thumb_func_end sub_02006514

	thumb_func_start sub_02006544
sub_02006544: ; 0x02006544
	push {lr}
	sub sp, #0x2c
	add r2, r0, #0
	add r0, sp, #0
	mov r1, #0
	bl sub_020C86C8
	cmp r0, #1
	beq _0200655A
	bl sub_02022974
_0200655A:
	mov r0, #2
	ldr r2, [sp, #4]
	lsl r0, r0, #0x18
	cmp r2, r0
	bhi _02006570
	lsr r0, r0, #1
	cmp r2, r0
	blo _02006570
	add sp, #0x2c
	mov r0, #1
	pop {pc}
_02006570:
	mov r0, #1
	ldr r1, _0200658C ; =0x027E0000
	lsl r0, r0, #0xe
	add r0, r1, r0
	cmp r2, r0
	bhi _02006586
	cmp r2, r1
	blo _02006586
	add sp, #0x2c
	mov r0, #2
	pop {pc}
_02006586:
	mov r0, #0
	add sp, #0x2c
	pop {pc}
	; .align 2, 0
_0200658C: .word 0x027E0000
	thumb_func_end sub_02006544

	thumb_func_start sub_02006590
sub_02006590: ; 0x02006590
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	str r1, [sp]
	bl sub_02006644
	cmp r0, #0
	bne _020065A8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020065A8:
	add r0, r5, #0
	bl sub_02006544
	add r7, r0, #0
	bl sub_020066C0
	add r3, r0, #0
	mov r6, #0
	add r1, r3, #0
_020065BA:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _020065CC
	lsl r1, r6, #3
	add r2, r3, r1
	mov r0, #1
	str r0, [r2, #4]
	str r5, [r3, r1]
	b _020065D4
_020065CC:
	add r6, r6, #1
	add r1, #8
	cmp r6, #8
	blt _020065BA
_020065D4:
	cmp r6, #8
	blt _020065E0
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020065E0:
	sub r6, r7, #1
	cmp r6, #1
	bhi _020065F0
	mov r0, #0
	mvn r0, r0
	bl sub_020C84E0
	str r0, [sp]
_020065F0:
	cmp r4, #0
	beq _020065FE
	cmp r4, #1
	beq _0200660A
	cmp r4, #2
	beq _02006616
	b _02006622
_020065FE:
	mov r0, #0
	add r1, r5, #0
	bl sub_0200671C
	add r4, r0, #0
	b _0200662A
_0200660A:
	mov r0, #0
	add r1, r5, #0
	bl sub_02006724
	add r4, r0, #0
	b _0200662A
_02006616:
	mov r0, #0
	add r1, r5, #0
	bl sub_0200675C
	add r4, r0, #0
	b _0200662A
_02006622:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200662A:
	cmp r6, #1
	bhi _02006634
	ldr r0, [sp]
	bl sub_020C84E0
_02006634:
	cmp r4, #0
	bne _02006640
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02006640:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02006590

	thumb_func_start sub_02006644
sub_02006644: ; 0x02006644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r1, sp, #0xc
	add r2, sp, #8
	add r4, r0, #0
	bl sub_020066E4
	cmp r0, #0
	bne _0200665C
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200665C:
	add r0, r4, #0
	bl sub_02006544
	bl sub_020066C0
	add r5, r0, #0
	mov r4, #0
	add r6, sp, #4
	add r7, sp, #0
_0200666E:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _020066B0
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020066E4
	cmp r0, #1
	bne _020066B0
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	cmp r2, r1
	blo _02006690
	ldr r0, [sp]
	cmp r2, r0
	blo _020066A6
_02006690:
	ldr r3, [sp, #8]
	cmp r3, r1
	bls _0200669C
	ldr r0, [sp]
	cmp r3, r0
	bls _020066A6
_0200669C:
	cmp r2, r1
	bhi _020066B0
	ldr r0, [sp]
	cmp r3, r0
	blo _020066B0
_020066A6:
	bl sub_02022974
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020066B0:
	add r4, r4, #1
	add r5, #8
	cmp r4, #8
	blt _0200666E
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02006644

	thumb_func_start sub_020066C0
sub_020066C0: ; 0x020066C0
	cmp r0, #0
	beq _020066CC
	cmp r0, #1
	beq _020066D0
	cmp r0, #2
	beq _020066D4
_020066CC:
	ldr r0, _020066D8 ; =0x021BF370
	bx lr
_020066D0:
	ldr r0, _020066DC ; =0x021BF3B0
	bx lr
_020066D4:
	ldr r0, _020066E0 ; =0x021BF3F0
	bx lr
	; .align 2, 0
_020066D8: .word 0x021BF370
_020066DC: .word 0x021BF3B0
_020066E0: .word 0x021BF3F0
	thumb_func_end sub_020066C0

	thumb_func_start sub_020066E4
sub_020066E4: ; 0x020066E4
	push {r4, r5, lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	add r2, r3, #0
	bl sub_020C86C8
	cmp r0, #0
	bne _02006706
	bl sub_02022974
	add sp, #0x2c
	mov r0, #0
	pop {r4, r5, pc}
_02006706:
	ldr r2, [sp, #4]
	str r2, [r5, #0]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #0]
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020066E4

	thumb_func_start sub_0200671C
sub_0200671C: ; 0x0200671C
	ldr r3, _02006720 ; =sub_020C8B68
	bx r3
	; .align 2, 0
_02006720: .word sub_020C8B68
	thumb_func_end sub_0200671C

	thumb_func_start sub_02006724
sub_02006724: ; 0x02006724
	push {lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r2, r1, #0
	add r0, sp, #0
	add r1, r3, #0
	bl sub_020C86C8
	cmp r0, #0
	bne _0200673E
	add sp, #0x2c
	mov r0, #0
	pop {pc}
_0200673E:
	add r0, sp, #0
	bl sub_020C8850
	cmp r0, #0
	bne _0200674E
	add sp, #0x2c
	mov r0, #0
	pop {pc}
_0200674E:
	add r0, sp, #0
	bl sub_020C8974
	mov r0, #1
	add sp, #0x2c
	pop {pc}
	; .align 2, 0
	thumb_func_end sub_02006724

	thumb_func_start sub_0200675C
sub_0200675C: ; 0x0200675C
	push {lr}
	sub sp, #0x74
	add r3, r0, #0
	add r2, r1, #0
	add r0, sp, #0
	add r1, r3, #0
	bl sub_020C86C8
	cmp r0, #0
	bne _02006776
	add sp, #0x74
	mov r0, #0
	pop {pc}
_02006776:
	add r0, sp, #0x2c
	bl sub_020C7DA0
	add r0, sp, #0
	add r1, sp, #0x2c
	bl sub_020C87C4
	add r0, sp, #0x2c
	bl sub_020C8104
	add r0, sp, #0x2c
	bl sub_020C80C8
	add r0, sp, #0
	bl sub_020C8974
	mov r0, #1
	add sp, #0x74
	pop {pc}
	thumb_func_end sub_0200675C

	thumb_func_start sub_0200679C
sub_0200679C: ; 0x0200679C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, #0
	beq _020067C0
	add r0, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _020067B6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020067B6:
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	b _020067C2
_020067C0:
	mov r4, #0
_020067C2:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200679C

	thumb_func_start sub_020067D0
sub_020067D0: ; 0x020067D0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	cmp r0, #0
	beq _020067E0
	bl sub_020181C4
_020067E0:
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end sub_020067D0

	thumb_func_start sub_020067E8
sub_020067E8: ; 0x020067E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #0x28
	bl sub_02018144
	add r3, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	str r0, [r3, #0x10]
	str r0, [r3, #0x14]
	str r4, [r3, #0x18]
	str r0, [r3, #0x1c]
	str r0, [r3, #0x20]
	str r0, [r3, #0x24]
	add r0, r3, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020067E8

	thumb_func_start sub_02006814
sub_02006814: ; 0x02006814
	ldr r3, _02006818 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02006818: .word sub_020181C4
	thumb_func_end sub_02006814

	thumb_func_start sub_0200681C
sub_0200681C: ; 0x0200681C
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	bl sub_02018144
	str r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200681C

	thumb_func_start sub_0200682C
sub_0200682C: ; 0x0200682C
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0200682C

	thumb_func_start sub_02006830
sub_02006830: ; 0x02006830
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_02006830

	thumb_func_start sub_02006840
sub_02006840: ; 0x02006840
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_02006840

	thumb_func_start sub_02006844
sub_02006844: ; 0x02006844
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #3
	bhi _020068C2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200685A: ; jump table
	.short _02006862 - _0200685A - 2 ; case 0
	.short _02006876 - _0200685A - 2 ; case 1
	.short _0200688E - _0200685A - 2 ; case 2
	.short _020068A4 - _0200685A - 2 ; case 3
_02006862:
	mov r1, #0
	ldr r0, [r4, #0xc]
	mvn r1, r1
	cmp r0, r1
	beq _02006872
	mov r1, #2
	bl sub_02006590
_02006872:
	mov r0, #1
	str r0, [r4, #0x10]
_02006876:
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, r4, #0
	add r1, #0x14
	blx r2
	cmp r0, #1
	bne _020068C2
	mov r0, #2
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _020068C2
_0200688E:
	add r1, r4, #0
	ldr r2, [r4, #4]
	add r1, #0x14
	blx r2
	cmp r0, #1
	bne _020068C2
	mov r0, #3
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _020068C2
_020068A4:
	add r1, r4, #0
	ldr r2, [r4, #8]
	add r1, #0x14
	blx r2
	cmp r0, #1
	bne _020068C2
	mov r1, #0
	ldr r0, [r4, #0xc]
	mvn r1, r1
	cmp r0, r1
	beq _020068BE
	bl sub_02006514
_020068BE:
	mov r0, #1
	pop {r4, pc}
_020068C2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006844

	thumb_func_start sub_020068C8
sub_020068C8: ; 0x020068C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	str r1, [sp, #0xc]
	add r0, sp, #8
	strh r1, [r0]
	add r0, sp, #0x18
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_020C7DA0
	add r0, sp, #0x18
	add r1, r4, #0
	bl sub_020C8080
	add r0, sp, #0x18
	mov r1, #0xc
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #2
	bl sub_020C81D4
	ldr r4, [sp, #0x14]
	add r0, sp, #0x18
	add r1, r4, #4
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x18
	add r1, sp, #8
	mov r2, #2
	bl sub_020C81D4
	add r0, sp, #8
	ldrh r0, [r0]
	cmp r0, r5
	bgt _0200692E
	bl sub_02022974
_0200692E:
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r6, r4, r0
	add r0, sp, #0x18
	add r1, r6, #4
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020C81D4
	add r4, #0xc
	lsl r1, r5, #3
	add r0, sp, #0x18
	add r1, r4, r1
	mov r2, #0
	ldr r7, [sp, #0x14]
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x10
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x18
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020C81D4
	add r2, r6, r7
	ldr r1, [sp, #0x10]
	add r2, #8
	add r2, r2, r1
	ldr r1, [sp, #4]
	add r0, sp, #0x18
	add r1, r1, r2
	mov r2, #0
	bl sub_020C81E4
	ldr r0, [sp, #0x78]
	cmp r0, #0
	bne _0200698A
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
_0200698A:
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02006994
	bl sub_02022974
_02006994:
	ldr r1, [sp]
	ldr r2, [sp, #0x14]
	add r0, sp, #0x18
	bl sub_020C81D4
	add r0, sp, #0x18
	bl sub_020C80C8
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020068C8

	thumb_func_start sub_020069A8
sub_020069A8: ; 0x020069A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r1, #0
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	str r1, [sp, #0xc]
	add r0, sp, #8
	strh r1, [r0]
	add r0, sp, #0x18
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_020C7DA0
	add r0, sp, #0x18
	add r1, r4, #0
	bl sub_020C8080
	add r0, sp, #0x18
	mov r1, #0xc
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #2
	bl sub_020C81D4
	ldr r4, [sp, #0x14]
	add r0, sp, #0x18
	add r1, r4, #4
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x18
	add r1, sp, #8
	mov r2, #2
	bl sub_020C81D4
	add r0, sp, #8
	ldrh r0, [r0]
	cmp r0, r5
	bgt _02006A0E
	bl sub_02022974
_02006A0E:
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r6, r4, r0
	add r0, sp, #0x18
	add r1, r6, #4
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x14
	mov r2, #4
	bl sub_020C81D4
	add r4, #0xc
	lsl r1, r5, #3
	add r0, sp, #0x18
	add r1, r4, r1
	mov r2, #0
	ldr r7, [sp, #0x14]
	bl sub_020C81E4
	add r0, sp, #0x18
	add r1, sp, #0x10
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x18
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020C81D4
	add r2, r6, r7
	ldr r1, [sp, #0x10]
	add r2, #8
	add r2, r2, r1
	ldr r1, [sp, #4]
	add r0, sp, #0x18
	add r1, r1, r2
	mov r2, #0
	bl sub_020C81E4
	ldr r0, [sp, #0x78]
	cmp r0, #0
	bne _02006A6A
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
_02006A6A:
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02006A74
	bl sub_02022974
_02006A74:
	ldr r0, [sp, #0x7c]
	cmp r0, #0
	bne _02006A84
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl sub_02018144
	b _02006A8C
_02006A84:
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl sub_02018184
_02006A8C:
	add r4, r0, #0
	ldr r2, [sp, #0x14]
	add r0, sp, #0x18
	add r1, r4, #0
	bl sub_020C81D4
	add r0, sp, #0x18
	bl sub_020C80C8
	add r0, r4, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020069A8

	thumb_func_start sub_02006AA4
sub_02006AA4: ; 0x02006AA4
	push {r3, r4, lr}
	sub sp, #4
	mov r3, #0
	lsl r4, r1, #2
	ldr r1, _02006ABC ; =0x02100498
	str r3, [sp]
	ldr r1, [r1, r4]
	bl sub_020068C8
	add sp, #4
	pop {r3, r4, pc}
	nop
_02006ABC: .word 0x02100498
	thumb_func_end sub_02006AA4

	thumb_func_start sub_02006AC0
sub_02006AC0: ; 0x02006AC0
	push {r4, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	lsl r4, r0, #2
	ldr r0, _02006AD8 ; =0x02100498
	str r3, [sp, #4]
	ldr r0, [r0, r4]
	bl sub_020069A8
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02006AD8: .word 0x02100498
	thumb_func_end sub_02006AC0

	thumb_func_start sub_02006ADC
sub_02006ADC: ; 0x02006ADC
	push {r4, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r4, #1
	str r4, [sp, #4]
	lsl r4, r0, #2
	ldr r0, _02006AF8 ; =0x02100498
	ldr r0, [r0, r4]
	bl sub_020069A8
	add sp, #8
	pop {r4, pc}
	nop
_02006AF8: .word 0x02100498
	thumb_func_end sub_02006ADC

	thumb_func_start sub_02006AFC
sub_02006AFC: ; 0x02006AFC
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	lsl r4, r1, #2
	ldr r1, _02006B14 ; =0x02100498
	ldr r1, [r1, r4]
	bl sub_020068C8
	add sp, #4
	pop {r3, r4, pc}
	nop
_02006B14: .word 0x02100498
	thumb_func_end sub_02006AFC

	thumb_func_start sub_02006B18
sub_02006B18: ; 0x02006B18
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	lsl r4, r0, #2
	ldr r0, _02006B34 ; =0x02100498
	ldr r0, [r0, r4]
	bl sub_020069A8
	add sp, #8
	pop {r4, pc}
	nop
_02006B34: .word 0x02100498
	thumb_func_end sub_02006B18

	thumb_func_start sub_02006B38
sub_02006B38: ; 0x02006B38
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	lsl r4, r0, #2
	ldr r0, _02006B54 ; =0x02100498
	ldr r0, [r0, r4]
	bl sub_020069A8
	add sp, #8
	pop {r4, pc}
	nop
_02006B54: .word 0x02100498
	thumb_func_end sub_02006B38

	thumb_func_start sub_02006B58
sub_02006B58: ; 0x02006B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r1, #0
	mov r1, #0
	add r4, r0, #0
	str r1, [sp, #0xc]
	str r1, [sp, #8]
	str r1, [sp, #4]
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0x10
	bl sub_020C7DA0
	ldr r1, _02006C20 ; =0x02100498
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, sp, #0x10
	bl sub_020C8080
	add r0, sp, #0x10
	mov r1, #0xc
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r2, #2
	bl sub_020C81D4
	ldr r4, [sp, #0xc]
	add r0, sp, #0x10
	add r1, r4, #4
	mov r2, #0
	bl sub_020C81E4
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x10
	add r1, sp, #0
	mov r2, #2
	bl sub_020C81D4
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r0, r5
	bgt _02006BBE
	bl sub_02022974
_02006BBE:
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r6, r4, r0
	add r0, sp, #0x10
	add r1, r6, #4
	bl sub_020C81E4
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r2, #4
	bl sub_020C81D4
	add r4, #0xc
	lsl r1, r5, #3
	add r0, sp, #0x10
	add r1, r4, r1
	mov r2, #0
	ldr r7, [sp, #0xc]
	bl sub_020C81E4
	add r0, sp, #0x10
	add r1, sp, #8
	mov r2, #4
	bl sub_020C81D4
	add r0, sp, #0x10
	add r1, sp, #4
	mov r2, #4
	bl sub_020C81D4
	add r2, r6, r7
	ldr r1, [sp, #8]
	add r2, #8
	add r1, r2, r1
	add r0, sp, #0x10
	mov r2, #0
	bl sub_020C81E4
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	bne _02006C18
	bl sub_02022974
_02006C18:
	ldr r0, [sp, #0xc]
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02006C20: .word 0x02100498
	thumb_func_end sub_02006B58

	thumb_func_start sub_02006C24
sub_02006C24: ; 0x02006C24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x54
	bl sub_02018144
	add r4, r0, #0
	beq _02006CA0
	mov r1, #0
	str r1, [r4, #0x48]
	bl sub_020C7DA0
	ldr r1, _02006CA4 ; =0x02100498
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_020C8080
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_020C81E4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x48
	mov r2, #2
	bl sub_020C81D4
	ldr r1, [r4, #0x48]
	add r0, r4, #0
	add r1, r1, #4
	mov r2, #0
	bl sub_020C81E4
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	mov r2, #2
	bl sub_020C81D4
	ldr r1, [r4, #0x48]
	ldr r0, [sp]
	mov r2, #0
	add r5, r1, r0
	add r0, r4, #0
	add r1, r5, #4
	bl sub_020C81E4
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r0, [sp]
	add r0, r5, r0
	str r0, [r4, #0x4c]
_02006CA0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02006CA4: .word 0x02100498
	thumb_func_end sub_02006C24

	thumb_func_start sub_02006CA8
sub_02006CA8: ; 0x02006CA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C80C8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02006CA8

	thumb_func_start sub_02006CB8
sub_02006CB8: ; 0x02006CB8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, r4
	bhi _02006CCE
	bl sub_02022974
_02006CCE:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_020C81D4
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r2, [r5, #0x4c]
	ldr r1, [sp, #4]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r0, r6, #0
	sub r1, r2, r1
	bl sub_02018144
	add r4, r0, #0
	beq _02006D20
	ldr r3, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r3, r2
	bl sub_020C81D4
_02006D20:
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02006CB8

	thumb_func_start sub_02006D28
sub_02006D28: ; 0x02006D28
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, r4
	bhi _02006D3E
	bl sub_02022974
_02006D3E:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_020C81D4
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r2, [r5, #0x4c]
	ldr r1, [sp, #4]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	ldr r3, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	sub r2, r3, r2
	bl sub_020C81D4
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02006D28

	thumb_func_start sub_02006D84
sub_02006D84: ; 0x02006D84
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	cmp r0, r4
	bhi _02006D98
	bl sub_02022974
_02006D98:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_020C81D4
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r1, [sp]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006D84

	thumb_func_start sub_02006DC8
sub_02006DC8: ; 0x02006DC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, r4
	bhi _02006DDE
	bl sub_02022974
_02006DDE:
	ldr r2, [r5, #0x48]
	lsl r1, r4, #3
	add r2, #0xc
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_020C81E4
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #4
	bl sub_020C81D4
	ldr r2, [r5, #0x4c]
	ldr r1, [sp]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	add r1, r6, r1
	mov r2, #0
	bl sub_020C81E4
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_020C81D4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02006DC8

	thumb_func_start sub_02006E18
sub_02006E18: ; 0x02006E18
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _02006E24 ; =sub_020C81D4
	bx r3
	nop
_02006E24: .word sub_020C81D4
	thumb_func_end sub_02006E18

	thumb_func_start sub_02006E28
sub_02006E28: ; 0x02006E28
	ldr r3, _02006E30 ; =sub_020C81E4
	mov r2, #1
	bx r3
	nop
_02006E30: .word sub_020C81E4
	thumb_func_end sub_02006E28

	thumb_func_start sub_02006E34
sub_02006E34: ; 0x02006E34
	add r0, #0x50
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02006E34

	thumb_func_start sub_02006E3C
sub_02006E3C: ; 0x02006E3C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02006FE8
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020072D0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006E3C

	thumb_func_start sub_02006E60
sub_02006E60: ; 0x02006E60
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_02006FE8
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007314
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006E60

	thumb_func_start sub_02006E84
sub_02006E84: ; 0x02006E84
	push {lr}
	sub sp, #0xc
	str r3, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	ldr r3, [sp, #0x14]
	str r3, [sp, #8]
	mov r3, #0
	bl sub_02006E9C
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02006E84

	thumb_func_start sub_02006E9C
sub_02006E9C: ; 0x02006E9C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x18]
	mov r2, #0
	bl sub_02006FE8
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020073BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006E9C

	thumb_func_start sub_02006EC0
sub_02006EC0: ; 0x02006EC0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_02006FE8
	ldr r3, [sp, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007374
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006EC0

	thumb_func_start sub_02006EE0
sub_02006EE0: ; 0x02006EE0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_02006FE8
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200749C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02006EE0

	thumb_func_start sub_02006F00
sub_02006F00: ; 0x02006F00
	push {r4, lr}
	sub sp, #8
	add r4, r3, #0
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	bl sub_02006FE8
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	add r1, r4, #0
	bl sub_020074EC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006F00

	thumb_func_start sub_02006F28
sub_02006F28: ; 0x02006F28
	push {r4, lr}
	sub sp, #8
	add r4, r3, #0
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	bl sub_02006FE8
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	add r1, r4, #0
	bl sub_02007534
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006F28

	thumb_func_start sub_02006F50
sub_02006F50: ; 0x02006F50
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_020075A0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006F50

	thumb_func_start sub_02006F6C
sub_02006F6C: ; 0x02006F6C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_020075BC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006F6C

	thumb_func_start sub_02006F88
sub_02006F88: ; 0x02006F88
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	mov r2, #0
	str r2, [sp]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_020075D8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02006F88

	thumb_func_start sub_02006FA0
sub_02006FA0: ; 0x02006FA0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_020075F4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006FA0

	thumb_func_start sub_02006FBC
sub_02006FBC: ; 0x02006FBC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_02006FE8
	add r1, r4, #0
	bl sub_02007610
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02006FBC

	thumb_func_start sub_02006FD8
sub_02006FD8: ; 0x02006FD8
	push {r3, lr}
	add r3, r2, #0
	mov r2, #0
	str r2, [sp]
	mov r2, #1
	bl sub_02006FE8
	pop {r3, pc}
	thumb_func_end sub_02006FD8

	thumb_func_start sub_02006FE8
sub_02006FE8: ; 0x02006FE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r7, r0, #0
	add r6, r3, #0
	str r1, [sp]
	cmp r5, #0
	bne _02006FFC
	ldr r2, [sp, #0x18]
	cmp r2, #1
	bne _02007010
_02006FFC:
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_02006B58
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02018184
	add r4, r0, #0
	b _0200701E
_02007010:
	bl sub_02006B58
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02018144
	add r4, r0, #0
_0200701E:
	cmp r4, #0
	beq _02007062
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02006AA4
	cmp r5, #0
	beq _02007062
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02007042
	ldr r1, [r4, #0]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_02018144
	b _0200704C
_02007042:
	ldr r1, [r4, #0]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_02018184
_0200704C:
	add r5, r0, #0
	cmp r5, #0
	beq _02007060
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020C4F48
	add r0, r4, #0
	bl sub_020181C4
_02007060:
	add r4, r5, #0
_02007062:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02006FE8

	thumb_func_start sub_02007068
sub_02007068: ; 0x02007068
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, [sp, #0x24]
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02006B58
	str r0, [r5, #0]
	cmp r6, #0
	bne _02007086
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _02007092
_02007086:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018184
	add r4, r0, #0
	b _0200709C
_02007092:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018144
	add r4, r0, #0
_0200709C:
	cmp r4, #0
	beq _020070E2
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r4, #0
	bl sub_02006AA4
	cmp r6, #0
	beq _020070E2
	ldr r0, [r4, #0]
	lsr r0, r0, #8
	str r0, [r5, #0]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020070C4
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018144
	b _020070CC
_020070C4:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018184
_020070CC:
	add r5, r0, #0
	cmp r5, #0
	beq _020070E0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020C4F48
	add r0, r4, #0
	bl sub_020181C4
_020070E0:
	add r4, r5, #0
_020070E2:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02007068

	thumb_func_start sub_020070E8
sub_020070E8: ; 0x020070E8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200723C
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020072D0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020070E8

	thumb_func_start sub_0200710C
sub_0200710C: ; 0x0200710C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200723C
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02007314
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200710C

	thumb_func_start sub_02007130
sub_02007130: ; 0x02007130
	push {lr}
	sub sp, #0xc
	str r3, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	ldr r3, [sp, #0x14]
	str r3, [sp, #8]
	mov r3, #0
	bl sub_02007148
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02007130

	thumb_func_start sub_02007148
sub_02007148: ; 0x02007148
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x18]
	mov r2, #0
	bl sub_0200723C
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020073BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02007148

	thumb_func_start sub_0200716C
sub_0200716C: ; 0x0200716C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	str r2, [sp]
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl sub_0200723C
	ldr r3, [sp, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200749C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200716C

	thumb_func_start sub_0200718C
sub_0200718C: ; 0x0200718C
	push {r4, lr}
	sub sp, #8
	add r4, r3, #0
	mov r3, #1
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	bl sub_0200723C
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	add r1, r4, #0
	bl sub_020074EC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200718C

	thumb_func_start sub_020071B4
sub_020071B4: ; 0x020071B4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_020075A0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020071B4

	thumb_func_start sub_020071D0
sub_020071D0: ; 0x020071D0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_020075BC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_020071D0

	thumb_func_start sub_020071EC
sub_020071EC: ; 0x020071EC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	mov r2, #0
	str r2, [sp]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_020075D8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_020071EC

	thumb_func_start sub_02007204
sub_02007204: ; 0x02007204
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_020075F4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02007204

	thumb_func_start sub_02007220
sub_02007220: ; 0x02007220
	push {r3, r4, lr}
	sub sp, #4
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl sub_0200723C
	add r1, r4, #0
	bl sub_02007610
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_02007220

	thumb_func_start sub_0200723C
sub_0200723C: ; 0x0200723C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	add r4, sp, #8
	str r4, [sp, #4]
	bl sub_02007250
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200723C

	thumb_func_start sub_02007250
sub_02007250: ; 0x02007250
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, [sp, #0x24]
	str r0, [sp]
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02006D84
	str r0, [r5, #0]
	cmp r6, #0
	bne _0200726E
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0200727A
_0200726E:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018184
	add r4, r0, #0
	b _02007284
_0200727A:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018144
	add r4, r0, #0
_02007284:
	cmp r4, #0
	beq _020072CA
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl sub_02006D28
	cmp r6, #0
	beq _020072CA
	ldr r0, [r4, #0]
	lsr r0, r0, #8
	str r0, [r5, #0]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020072AC
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018144
	b _020072B4
_020072AC:
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_02018184
_020072B4:
	add r5, r0, #0
	cmp r5, #0
	beq _020072C8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020C4F48
	add r0, r4, #0
	bl sub_020181C4
_020072C8:
	add r4, r5, #0
_020072CA:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02007250

	thumb_func_start sub_020072D0
sub_020072D0: ; 0x020072D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x20]
	cmp r5, #0
	beq _0200730C
	add r1, sp, #8
	bl sub_020A7164
	cmp r0, #0
	beq _02007306
	cmp r4, #0
	bne _020072F4
	ldr r0, [sp, #8]
	ldr r4, [r0, #0x10]
_020072F4:
	str r7, [sp]
	ldr r2, [sp, #8]
	lsl r1, r6, #0x18
	ldr r0, [sp, #4]
	ldr r2, [r2, #0x14]
	lsr r1, r1, #0x18
	add r3, r4, #0
	bl sub_0201958C
_02007306:
	add r0, r5, #0
	bl sub_020181C4
_0200730C:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020072D0

	thumb_func_start sub_02007314
sub_02007314: ; 0x02007314
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	cmp r6, #0
	beq _02007370
	add r1, sp, #8
	bl sub_020A7248
	cmp r0, #0
	beq _0200736A
	cmp r4, #0
	bne _02007338
	ldr r0, [sp, #8]
	ldr r4, [r0, #8]
_02007338:
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_02019FE4
	cmp r0, #0
	beq _02007356
	ldr r2, [sp, #8]
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019574
_02007356:
	ldr r0, [sp, #4]
	lsl r1, r5, #0x18
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r7, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019460
_0200736A:
	add r0, r6, #0
	bl sub_020181C4
_02007370:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02007314

	thumb_func_start sub_02007374
sub_02007374: ; 0x02007374
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	beq _020073B4
	add r1, sp, #0
	bl sub_020A7118
	cmp r0, #0
	beq _020073AE
	cmp r4, #0
	bne _02007394
	ldr r0, [sp]
	ldr r4, [r0, #0x10]
_02007394:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0x14]
	bl sub_020C2C54
	ldr r0, [sp]
	ldr r3, _020073B8 ; =0x020E4D28
	lsl r6, r6, #2
	ldr r0, [r0, #0x14]
	ldr r3, [r3, r6]
	add r1, r7, #0
	add r2, r4, #0
	blx r3
_020073AE:
	add r0, r5, #0
	bl sub_020181C4
_020073B4:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020073B8: .word 0x020E4D28
	thumb_func_end sub_02007374

	thumb_func_start sub_020073BC
sub_020073BC: ; 0x020073BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	ldr r5, [sp, #0x20]
	add r1, r0, #0
	beq _02007492
	add r1, sp, #4
	bl sub_020A71B0
	cmp r0, #0
	beq _0200748C
	ldr r0, [sp, #4]
	ldr r1, [r0, #0xc]
	add r1, r1, r7
	str r1, [r0, #0xc]
	cmp r5, #0
	bne _020073EA
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	sub r5, r0, r7
_020073EA:
	ldr r0, [sp, #4]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	cmp r4, #7
	bhi _0200747C
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02007404: ; jump table
	.short _0200747C - _02007404 - 2 ; case 0
	.short _0200747C - _02007404 - 2 ; case 1
	.short _02007414 - _02007404 - 2 ; case 2
	.short _02007448 - _02007404 - 2 ; case 3
	.short _0200747C - _02007404 - 2 ; case 4
	.short _0200747C - _02007404 - 2 ; case 5
	.short _0200742E - _02007404 - 2 ; case 6
	.short _02007462 - _02007404 - 2 ; case 7
_02007414:
	bl sub_020C096C
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_020C0A7C
	b _0200748C
_0200742E:
	bl sub_020C0BBC
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_020C0C38
	b _0200748C
_02007448:
	bl sub_020C0AC4
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_020C0B78
	b _0200748C
_02007462:
	bl sub_020C0C78
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_020C0CF4
	b _0200748C
_0200747C:
	ldr r0, [sp, #4]
	ldr r3, _02007498 ; =0x020E4D30
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
_0200748C:
	ldr r0, [sp]
	bl sub_020181C4
_02007492:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02007498: .word 0x020E4D30
	thumb_func_end sub_020073BC

	thumb_func_start sub_0200749C
sub_0200749C: ; 0x0200749C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	beq _020074E8
	add r1, sp, #8
	bl sub_020A71EC
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_020A71B0
	cmp r0, #0
	beq _020074E2
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020074D6
	str r4, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, r7, #0
	add r3, r6, #0
	bl sub_020A8948
	b _020074E2
_020074D6:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_020A8850
_020074E2:
	add r0, r5, #0
	bl sub_020181C4
_020074E8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200749C

	thumb_func_start sub_020074EC
sub_020074EC: ; 0x020074EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	mov r6, #0
	str r3, [sp]
	cmp r5, #0
	beq _0200752A
	add r1, sp, #4
	bl sub_020A7118
	cmp r0, #0
	beq _02007524
	cmp r4, #0
	beq _02007510
	ldr r0, [sp, #4]
	str r4, [r0, #0x10]
_02007510:
	ldr r4, _02007530 ; =0x020E4D18
	lsl r6, r7, #2
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	ldr r2, [sp]
	ldr r3, [sp, #0x24]
	ldr r4, [r4, r6]
	blx r4
	ldr r0, [sp, #4]
	ldr r6, [r0, #0x10]
_02007524:
	add r0, r5, #0
	bl sub_020181C4
_0200752A:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02007530: .word 0x020E4D18
	thumb_func_end sub_020074EC

	thumb_func_start sub_02007534
sub_02007534: ; 0x02007534
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _02007590
	add r1, sp, #0
	bl sub_020A7118
	cmp r0, #0
	beq _0200758A
	cmp r5, #0
	beq _02007554
	ldr r0, [sp]
	str r5, [r0, #0x10]
_02007554:
	cmp r4, #1
	beq _0200755E
	cmp r4, #2
	beq _0200756E
	b _0200757A
_0200755E:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r0, _02007594 ; =0x00300010
	and r1, r0
	ldr r0, [sp]
	str r1, [r0, #8]
	b _0200757A
_0200756E:
	ldr r0, _02007598 ; =0x04001000
	ldr r1, [r0, #0]
	ldr r0, _02007594 ; =0x00300010
	and r1, r0
	ldr r0, [sp]
	str r1, [r0, #8]
_0200757A:
	add r2, r4, #0
	ldr r4, _0200759C ; =0x020E4D20
	lsl r5, r7, #2
	ldr r0, [sp]
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r4, [r4, r5]
	blx r4
_0200758A:
	add r0, r6, #0
	bl sub_020181C4
_02007590:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02007594: .word 0x00300010
_02007598: .word 0x04001000
_0200759C: .word 0x020E4D20
	thumb_func_end sub_02007534

	thumb_func_start sub_020075A0
sub_020075A0: ; 0x020075A0
	push {r4, lr}
	add r4, r0, #0
	beq _020075B8
	bl sub_020A7164
	cmp r0, #0
	bne _020075B8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_020075B8:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020075A0

	thumb_func_start sub_020075BC
sub_020075BC: ; 0x020075BC
	push {r4, lr}
	add r4, r0, #0
	beq _020075D4
	bl sub_020A7248
	cmp r0, #0
	bne _020075D4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_020075D4:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020075BC

	thumb_func_start sub_020075D8
sub_020075D8: ; 0x020075D8
	push {r4, lr}
	add r4, r0, #0
	beq _020075F0
	bl sub_020A71B0
	cmp r0, #0
	bne _020075F0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_020075F0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020075D8

	thumb_func_start sub_020075F4
sub_020075F4: ; 0x020075F4
	push {r4, lr}
	add r4, r0, #0
	beq _0200760C
	bl sub_020A6F38
	cmp r0, #0
	bne _0200760C
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_0200760C:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_020075F4

	thumb_func_start sub_02007610
sub_02007610: ; 0x02007610
	push {r4, lr}
	add r4, r0, #0
	beq _02007628
	bl sub_020A6D88
	cmp r0, #0
	bne _02007628
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_02007628:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02007610

	thumb_func_start sub_0200762C
sub_0200762C: ; 0x0200762C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0xce
	lsl r1, r1, #2
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0xba
	lsl r0, r0, #2
	add r1, r0, #0
	add r3, r0, #0
	str r5, [r4, r0]
	mov r2, #0
	add r1, #0x48
	strb r2, [r4, r1]
	add r1, r0, #4
	str r2, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0xe
	add r3, #8
	str r1, [r4, r3]
	add r3, r0, #0
	add r3, #0xc
	str r2, [r4, r3]
	mov r2, #0x80
	add r0, #0x10
	str r2, [r4, r0]
	add r0, r5, #0
	bl sub_02018144
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #0xc0
	bl sub_02018144
	mov r1, #3
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #4
	bl sub_020C4BB8
	add r0, r5, #0
	mov r1, #0xc0
	bl sub_02018144
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #4
	bl sub_020C4BB8
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_020076A6:
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0xac
	bl sub_020C4BB8
	add r6, r6, #1
	add r5, #0xac
	cmp r6, #4
	blt _020076A6
	bl sub_020A73C0
	ldr r2, _0200775C ; =0x00000333
	mov r0, #0
	strb r0, [r4, r2]
	sub r2, #0x4b
	ldr r2, [r4, r2]
	mov r0, #0x75
	mov r1, #0xfb
	bl sub_02006AC0
	add r1, sp, #0xc
	str r0, [sp, #4]
	bl sub_020A7118
	ldr r0, [sp, #0xc]
	mov r1, #0xc3
	ldr r0, [r0, #4]
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	ldr r2, [r0, #8]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [sp, #0xc]
	add r1, #8
	ldr r0, [r0, #0xc]
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x14]
	str r0, [sp, #8]
	bl sub_02009348
	ldr r1, [sp, #8]
	mov r0, #0xbf
	lsl r0, r0, #2
	mov r2, #2
	ldrb r1, [r1]
	ldr r0, [r4, r0]
	lsl r2, r2, #0xe
	bl sub_020C4CF4
	mov r0, #0
	mov r7, #0xbf
	ldr r6, _02007760 ; =0x00005050
	mov ip, r0
	str r0, [sp]
	add r3, r0, #0
	lsl r7, r7, #2
_0200771A:
	ldr r2, [sp, #8]
	ldr r0, [sp]
	mov r1, #0
	add r2, r2, r0
_02007722:
	ldr r5, [r4, r7]
	ldrb r0, [r2]
	add r5, r3, r5
	add r5, r1, r5
	add r1, r1, #1
	add r2, r2, #1
	strb r0, [r5, r6]
	cmp r1, #0x28
	blt _02007722
	ldr r0, [sp]
	add r3, #0x80
	add r0, #0x50
	str r0, [sp]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x50
	blt _0200771A
	ldr r0, [sp, #4]
	bl sub_020181C4
	ldr r0, _02007764 ; =0x00000331
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200775C: .word 0x00000333
_02007760: .word 0x00005050
_02007764: .word 0x00000331
	thumb_func_end sub_0200762C

	thumb_func_start sub_02007768
sub_02007768: ; 0x02007768
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_02008B78
	add r0, r5, #0
	bl sub_02008FC8
	bl sub_020B2628
	mov r6, #0xb3
	mov r0, #0
	ldr r4, _02007ADC ; =0x04000444
	lsl r6, r6, #2
	str r0, [r4, #0]
	str r0, [sp, #0x18]
	add r0, r6, #0
	sub r0, #0xc
	ldr r1, [r5, r0]
	add r3, r6, #0
	ldr r2, [r5, r6]
	add r0, r6, #0
	sub r3, #8
	add r6, #0x20
	ldr r3, [r5, r3]
	ldr r6, [r5, r6]
	sub r0, #0x10
	ldr r0, [r5, r0]
	lsr r6, r6, #3
	lsl r3, r3, #0x1a
	orr r6, r3
	mov r3, #1
	lsl r3, r3, #0x1e
	lsl r0, r0, #0x14
	orr r3, r6
	lsl r1, r1, #0x17
	orr r0, r3
	lsl r2, r2, #0x1d
	orr r0, r1
	orr r0, r2
	str r0, [r4, #0x64]
	ldr r0, [sp, #0x18]
	ldr r7, _02007AE0 ; =0x020E4ECC
	add r4, r5, #0
	str r0, [sp, #0x14]
_020077C2:
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _020077D8
	ldr r0, [r4, #0x54]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _020077D8
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	beq _020077DA
_020077D8:
	b _02007B42
_020077DA:
	ldr r2, [r4, #0x68]
	cmp r2, #0
	beq _020077E8
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x24
	blx r2
_020077E8:
	bl sub_020B2628
	ldr r0, _02007AE4 ; =0x00000333
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _020077FA
	ldr r0, _02007AE8 ; =0x04000454
	mov r1, #0
	str r1, [r0, #0]
_020077FA:
	add r0, r4, #0
	bl sub_020088D8
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _0200780E
	mov r0, #1
	b _02007810
_0200780E:
	mov r0, #0
_02007810:
	mov r1, #0xbd
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r3, #0x40
	add r2, r2, r1
	mov r1, #4
	sub r0, r1, r0
	add r1, r2, #0
	lsr r1, r0
	ldr r0, _02007AEC ; =0x040004AC
	str r1, [r0, #0]
	ldr r0, [r4, #0x28]
	ldrsh r3, [r4, r3]
	lsl r2, r0, #0xc
	mov r0, #0x26
	ldrsh r1, [r4, r0]
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	lsl r1, r0, #0xc
	mov r0, #0x24
	ldrsh r0, [r4, r0]
	add r0, r0, r3
	lsl r3, r0, #0xc
	ldr r0, _02007AF0 ; =0x04000470
	str r3, [r0, #0]
	str r1, [r0, #0]
	str r2, [r0, #0]
	ldrh r0, [r4, #0x38]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _02007AF4 ; =0x020F983C
	add r1, r0, r2
	ldrsh r0, [r0, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	bl sub_020C0000
	ldrh r0, [r4, #0x3a]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _02007AF4 ; =0x020F983C
	add r1, r0, r2
	ldrsh r0, [r0, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	bl sub_020C003C
	ldrh r0, [r4, #0x3c]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _02007AF4 ; =0x020F983C
	add r1, r0, r2
	ldrsh r0, [r0, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	bl sub_020C0078
	ldr r0, [r4, #0x28]
	mov r3, #0x40
	lsl r0, r0, #0xc
	neg r2, r0
	mov r0, #0x26
	ldrsh r1, [r4, r0]
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	ldrsh r3, [r4, r3]
	add r0, r1, r0
	lsl r0, r0, #0xc
	neg r1, r0
	mov r0, #0x24
	ldrsh r0, [r4, r0]
	add r0, r0, r3
	lsl r0, r0, #0xc
	neg r3, r0
	ldr r0, _02007AF0 ; =0x04000470
	str r3, [r0, #0]
	str r1, [r0, #0]
	str r2, [r0, #0]
	ldr r0, [r4, #0x50]
	lsl r1, r0, #0x11
	lsr r1, r1, #0x1b
	lsl r3, r0, #0x16
	lsl r2, r1, #0xa
	lsl r1, r0, #0x1b
	lsr r3, r3, #0x1b
	lsr r1, r1, #0x1b
	lsl r3, r3, #5
	orr r1, r3
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	lsl r1, r0, #2
	lsr r1, r1, #0x1b
	lsl r2, r1, #0xa
	lsl r1, r0, #0xc
	lsl r0, r0, #7
	lsr r0, r0, #0x1b
	lsr r1, r1, #0x1b
	lsl r0, r0, #5
	orr r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	add r1, r3, #0
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r1, r0
	ldr r0, _02007AF8 ; =0x040004C0
	str r1, [r0, #0]
	ldr r1, _02007AFC ; =0x00004210
	add r0, r0, #4
	str r1, [r0, #0]
	ldr r1, [r4, #0]
	ldr r0, [r4, #0x54]
	lsl r1, r1, #0x19
	lsl r0, r0, #0x19
	lsr r1, r1, #0x1a
	lsr r0, r0, #0x1b
	lsl r2, r1, #0x18
	mov r1, #0xc0
	lsl r0, r0, #0x10
	orr r1, r2
	orr r1, r0
	ldr r0, _02007B00 ; =0x040004A4
	str r1, [r0, #0]
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02007992
	add r0, r4, #0
	add r0, #0x5b
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, #0x44
	lsl r3, r0, #4
	ldrb r2, [r1]
	ldr r1, [r7, r3]
	add r0, r7, r3
	add r6, r2, r1
	add r1, r4, #0
	add r1, #0x46
	ldrb r1, [r1]
	add r3, r4, #0
	add r3, #0x47
	str r1, [sp, #0x1c]
	add r1, r4, #0
	add r1, #0x45
	ldrb r3, [r3]
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	mov ip, r3
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r1, r0
	str r6, [sp, #4]
	str r0, [sp, #8]
	add r3, r3, r6
	str r3, [sp, #0xc]
	mov r3, ip
	add r0, r3, r0
	str r0, [sp, #0x10]
	mov r3, #0x24
	ldrsh r3, [r4, r3]
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	sub r3, #0x28
	add r2, r3, r2
	add r0, r0, r2
	mov r3, #0x26
	ldrsh r3, [r4, r3]
	mov r2, #0x2e
	lsl r0, r0, #0x10
	sub r3, #0x28
	add r1, r3, r1
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x28]
	asr r0, r0, #0x10
	add r2, r2, r1
	mov r1, #0x6e
	ldrsb r1, [r4, r1]
	sub r1, r2, r1
	ldr r2, [r4, #0x30]
	lsl r1, r1, #0x10
	add r2, r3, r2
	ldr r3, [sp, #0x1c]
	asr r1, r1, #0x10
	bl sub_020A7488
	b _020079FE
_02007992:
	mov r0, #0x34
	ldrsh r1, [r4, r0]
	mov r0, #0x50
	mul r0, r1
	asr r3, r0, #8
	mov r0, #0x36
	ldrsh r1, [r4, r0]
	mov r0, #0x50
	mul r0, r1
	asr r6, r0, #8
	add r0, r4, #0
	add r0, #0x5b
	ldrb r0, [r0]
	lsl r1, r0, #4
	str r6, [sp]
	add r0, r7, r1
	ldr r1, [r7, r1]
	str r1, [sp, #4]
	ldr r1, [r0, #4]
	str r1, [sp, #8]
	ldr r1, [r0, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0xc]
	lsr r1, r3, #0x1f
	str r0, [sp, #0x10]
	mov r0, #0x24
	add r1, r3, r1
	ldrsh r0, [r4, r0]
	asr r1, r1, #1
	sub r0, r0, r1
	mov r1, #0x2c
	ldrsh r1, [r4, r1]
	add r0, r0, r1
	mov r1, #0x26
	ldrsh r2, [r4, r1]
	lsr r1, r6, #0x1f
	add r1, r6, r1
	asr r1, r1, #1
	sub r1, r2, r1
	mov r2, #0x2e
	ldrsh r2, [r4, r2]
	lsl r0, r0, #0x10
	ldr r6, [r4, #0x28]
	add r1, r1, r2
	mov r2, #0x6e
	ldrsb r2, [r4, r2]
	asr r0, r0, #0x10
	sub r1, r1, r2
	ldr r2, [r4, #0x30]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r6, r2
	bl sub_020A7488
_020079FE:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1e
	beq _02007A24
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	beq _02007A24
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02007A24
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _02007A26
_02007A24:
	b _02007B42
_02007A26:
	ldr r0, _02007AE4 ; =0x00000333
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _02007A34
	ldr r0, _02007AE8 ; =0x04000454
	mov r1, #0
	str r1, [r0, #0]
_02007A34:
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _02007A42
	mov r1, #1
	b _02007A44
_02007A42:
	mov r1, #0
_02007A44:
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	mov r0, #0xbd
	lsl r0, r0, #2
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	add r2, r2, #3
	ldr r0, [r5, r0]
	lsl r2, r2, #5
	add r2, r0, r2
	mov r0, #4
	sub r0, r0, r1
	add r1, r2, #0
	lsr r1, r0
	ldr r0, _02007AEC ; =0x040004AC
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _02007A84
	mov r0, #0x34
	ldrsh r0, [r4, r0]
	lsl r0, r0, #6
	asr r3, r0, #8
	mov r0, #0x36
	ldrsh r0, [r4, r0]
	lsl r0, r0, #4
	asr r1, r0, #8
	b _02007A88
_02007A84:
	mov r3, #0x40
	mov r1, #0x10
_02007A88:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _02007AAA
	mov r0, #0x74
	ldrsh r2, [r4, r0]
	mov r0, #0x24
	mov r6, #0x2c
	ldrsh r0, [r4, r0]
	ldrsh r6, [r4, r6]
	add r0, r0, r6
	add r2, r2, r0
	add r0, r4, #0
	add r0, #0x70
	strh r2, [r0]
_02007AAA:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02007ACC
	mov r0, #0x76
	ldrsh r2, [r4, r0]
	mov r0, #0x26
	mov r6, #0x2e
	ldrsh r0, [r4, r0]
	ldrsh r6, [r4, r6]
	add r0, r0, r6
	add r2, r2, r0
	add r0, r4, #0
	add r0, #0x72
	strh r2, [r0]
_02007ACC:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	lsl r2, r0, #4
	ldr r0, _02007B04 ; =0x020E4D50
	b _02007B08
	; .align 2, 0
_02007ADC: .word 0x04000444
_02007AE0: .word 0x020E4ECC
_02007AE4: .word 0x00000333
_02007AE8: .word 0x04000454
_02007AEC: .word 0x040004AC
_02007AF0: .word 0x04000470
_02007AF4: .word 0x020F983C
_02007AF8: .word 0x040004C0
_02007AFC: .word 0x00004210
_02007B00: .word 0x040004A4
_02007B04: .word 0x020E4D50
_02007B08:
	str r1, [sp]
	add r6, r0, r2
	ldr r0, [r0, r2]
	lsr r2, r3, #0x1f
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r2, r3, r2
	str r0, [sp, #8]
	ldr r0, [r6, #8]
	asr r2, r2, #1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x70
	ldrsh r0, [r4, r0]
	sub r0, r0, r2
	mov r2, #0x72
	ldrsh r6, [r4, r2]
	lsr r2, r1, #0x1f
	add r2, r1, r2
	asr r1, r2, #1
	sub r1, r6, r1
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _02007B64 ; =0xFFFFFC18
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl sub_020A7488
_02007B42:
	ldr r0, [sp, #0x14]
	add r4, #0xac
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, #0x20
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _02007B58
	b _020077C2
_02007B58:
	ldr r0, _02007B68 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02007B64: .word 0xFFFFFC18
_02007B68: .word 0x04000448
	thumb_func_end sub_02007768

	thumb_func_start sub_02007B6C
sub_02007B6C: ; 0x02007B6C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02007B6C

	thumb_func_start sub_02007B98
sub_02007B98: ; 0x02007B98
	push {r3, r4}
	add r1, r0, #0
	mov r3, #0
	add r1, #0x59
	strb r3, [r1]
	add r1, r3, #0
_02007BA4:
	add r2, r0, r3
	add r2, #0x5c
	add r3, r3, #1
	strb r1, [r2]
	cmp r3, #0xa
	blt _02007BA4
	add r2, r0, #0
	add r2, #0x59
	ldrb r2, [r2]
	lsl r2, r2, #2
	add r3, r0, r2
	mov r2, #0x84
	ldrsb r4, [r3, r2]
	add r3, r2, #0
	sub r3, #0x85
	cmp r4, r3
	bne _02007BCE
	add r0, #0x5b
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_02007BCE:
	add r1, r0, #0
	mov r3, #1
	add r1, #0x58
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	ldrsb r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x5b
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	add r1, #0x85
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x5a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r2, r0, r1
	mov r1, #0x86
	ldrsb r1, [r2, r1]
	strh r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02007B98

	thumb_func_start sub_02007C10
sub_02007C10: ; 0x02007C10
	add r2, r0, #0
	ldr r3, _02007C20 ; =sub_020C4DB0
	add r2, #0x84
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x28
	bx r3
	nop
_02007C20: .word sub_020C4DB0
	thumb_func_end sub_02007C10

	thumb_func_start sub_02007C24
sub_02007C24: ; 0x02007C24
	add r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _02007C30
	mov r0, #1
	bx lr
_02007C30:
	mov r0, #0
	bx lr
	thumb_func_end sub_02007C24

	thumb_func_start sub_02007C34
sub_02007C34: ; 0x02007C34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x14]
	mov r4, #0
_02007C42:
	ldr r1, [r0, #0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	beq _02007C52
	add r4, r4, #1
	add r0, #0xac
	cmp r4, #4
	blt _02007C42
_02007C52:
	cmp r4, #4
	bne _02007C5A
	bl sub_02022974
_02007C5A:
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	add r2, r7, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02007C7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02007C34

	thumb_func_start sub_02007C7C
sub_02007C7C: ; 0x02007C7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	add r4, r0, #0
	mov r0, #0xac
	add r6, r1, #0
	mul r6, r0
	ldr r0, [r4, r6]
	str r2, [sp]
	lsl r0, r0, #0x1f
	str r3, [sp, #4]
	lsr r0, r0, #0x1f
	beq _02007C9C
	bl sub_02022974
_02007C9C:
	add r5, r4, r6
	mov r0, #0
	add r1, r5, #0
	mov r2, #0xac
	bl sub_020C4BB8
	ldr r1, [r4, r6]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r4, r6]
	ldr r1, [r4, r6]
	mov r0, #0x80
	orr r0, r1
	str r0, [r4, r6]
	mov r0, #0x80
	ldr r1, [r4, r6]
	add r0, #0x80
	orr r0, r1
	str r0, [r4, r6]
	add r2, r5, #0
	ldr r0, [r4, r6]
	mov r1, #0x7e
	bic r0, r1
	ldr r1, [sp, #0x24]
	add r7, r2, #4
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, r6]
	ldr r0, [sp, #8]
	mov ip, r0
	mov r3, ip
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	add r7, r2, #0
	ldr r3, [sp, #8]
	add r7, #0x14
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	str r3, [sp, #8]
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r7, r1, #0x10
	strh r0, [r2, #0x24]
	str r3, [sp, #8]
	ldr r1, [sp, #0x20]
	strh r7, [r2, #0x26]
	str r1, [r2, #0x28]
	mov r1, #0x80
	add r1, #0x80
	strh r1, [r2, #0x34]
	strh r1, [r2, #0x36]
	ldr r1, [r5, #0x54]
	mov r3, #0x7c
	bic r1, r3
	mov r3, #0x7c
	orr r1, r3
	str r1, [r5, #0x54]
	ldr r1, [r5, #0x50]
	mov r3, #0x1f
	bic r1, r3
	mov r3, #0x1f
	orr r3, r1
	ldr r1, _02007DB4 ; =0xFFFFFC1F
	and r1, r3
	mov r3, #0x1f
	lsl r3, r3, #5
	orr r3, r1
	ldr r1, _02007DB8 ; =0xFFFF83FF
	and r1, r3
	mov r3, #0x1f
	lsl r3, r3, #0xa
	orr r3, r1
	ldr r1, _02007DBC ; =0xFFF07FFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0xc
	orr r3, r1
	ldr r1, _02007DC0 ; =0xFE0FFFFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0x11
	orr r3, r1
	ldr r1, _02007DC4 ; =0xC1FFFFFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0x16
	orr r1, r3
	str r1, [r5, #0x50]
	ldr r1, [sp, #0x30]
	str r1, [r2, #0x68]
	add r1, r2, #0
	add r1, #0x70
	strh r0, [r1]
	add r2, #0x72
	add r0, r5, #0
	strh r7, [r2]
	add r0, #0x6c
	ldrh r1, [r0]
	mov r0, #4
	orr r1, r0
	add r0, r5, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x6c
	ldrh r1, [r0]
	mov r0, #8
	orr r1, r0
	add r0, r5, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x6c
	ldrh r1, [r0]
	mov r0, #0x10
	add r5, #0x6c
	orr r0, r1
	strh r0, [r5]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _02007DAC
	add r1, r4, r6
	add r1, #0x84
	mov r2, #0x28
	bl sub_020C4DB0
_02007DAC:
	add r0, r4, r6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02007DB4: .word 0xFFFFFC1F
_02007DB8: .word 0xFFFF83FF
_02007DBC: .word 0xFFF07FFF
_02007DC0: .word 0xFE0FFFFF
_02007DC4: .word 0xC1FFFFFF
	thumb_func_end sub_02007C7C

	thumb_func_start sub_02007DC8
sub_02007DC8: ; 0x02007DC8
	ldr r2, [r0, #0]
	mov r1, #1
	bic r2, r1
	str r2, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02007DC8

	thumb_func_start sub_02007DD4
sub_02007DD4: ; 0x02007DD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02007DDA:
	add r0, r5, #0
	bl sub_02007DC8
	add r4, r4, #1
	add r5, #0xac
	cmp r4, #4
	blt _02007DDA
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02007DD4

	thumb_func_start sub_02007DEC
sub_02007DEC: ; 0x02007DEC
	cmp r1, #0x2e
	bls _02007DF2
	b _02008094
_02007DF2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02007DFE: ; jump table
	.short _02007E5C - _02007DFE - 2 ; case 0
	.short _02007E60 - _02007DFE - 2 ; case 1
	.short _02007E64 - _02007DFE - 2 ; case 2
	.short _02007E68 - _02007DFE - 2 ; case 3
	.short _02007E6C - _02007DFE - 2 ; case 4
	.short _02007E70 - _02007DFE - 2 ; case 5
	.short _02007E74 - _02007DFE - 2 ; case 6
	.short _02007E84 - _02007DFE - 2 ; case 7
	.short _02007E88 - _02007DFE - 2 ; case 8
	.short _02007E8C - _02007DFE - 2 ; case 9
	.short _02007E90 - _02007DFE - 2 ; case 10
	.short _02007E96 - _02007DFE - 2 ; case 11
	.short _02007E9C - _02007DFE - 2 ; case 12
	.short _02007EA0 - _02007DFE - 2 ; case 13
	.short _02007EA4 - _02007DFE - 2 ; case 14
	.short _02007EB4 - _02007DFE - 2 ; case 15
	.short _02007EBA - _02007DFE - 2 ; case 16
	.short _02007EC0 - _02007DFE - 2 ; case 17
	.short _02007EC6 - _02007DFE - 2 ; case 18
	.short _02007ECC - _02007DFE - 2 ; case 19
	.short _02007ED2 - _02007DFE - 2 ; case 20
	.short _02007ED8 - _02007DFE - 2 ; case 21
	.short _02007EDE - _02007DFE - 2 ; case 22
	.short _02007EE4 - _02007DFE - 2 ; case 23
	.short _02007EF4 - _02007DFE - 2 ; case 24
	.short _02007F04 - _02007DFE - 2 ; case 25
	.short _02007F14 - _02007DFE - 2 ; case 26
	.short _02007F24 - _02007DFE - 2 ; case 27
	.short _02007F34 - _02007DFE - 2 ; case 28
	.short _02007F44 - _02007DFE - 2 ; case 29
	.short _02007F54 - _02007DFE - 2 ; case 30
	.short _02007F6E - _02007DFE - 2 ; case 31
	.short _02007F7C - _02007DFE - 2 ; case 32
	.short _02007F8E - _02007DFE - 2 ; case 33
	.short _02007FA0 - _02007DFE - 2 ; case 34
	.short _02007FA6 - _02007DFE - 2 ; case 35
	.short _02007FBE - _02007DFE - 2 ; case 36
	.short _02007FD6 - _02007DFE - 2 ; case 37
	.short _02007FE6 - _02007DFE - 2 ; case 38
	.short _02008094 - _02007DFE - 2 ; case 39
	.short _02007FEC - _02007DFE - 2 ; case 40
	.short _02008004 - _02007DFE - 2 ; case 41
	.short _0200800A - _02007DFE - 2 ; case 42
	.short _0200802E - _02007DFE - 2 ; case 43
	.short _02008048 - _02007DFE - 2 ; case 44
	.short _02008062 - _02007DFE - 2 ; case 45
	.short _0200807C - _02007DFE - 2 ; case 46
_02007E5C:
	strh r2, [r0, #0x24]
	bx lr
_02007E60:
	strh r2, [r0, #0x26]
	bx lr
_02007E64:
	str r2, [r0, #0x28]
	bx lr
_02007E68:
	strh r2, [r0, #0x2c]
	bx lr
_02007E6C:
	strh r2, [r0, #0x2e]
	bx lr
_02007E70:
	str r2, [r0, #0x30]
	bx lr
_02007E74:
	ldr r3, [r0, #0x54]
	mov r1, #1
	bic r3, r1
	mov r1, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007E84:
	strh r2, [r0, #0x38]
	bx lr
_02007E88:
	strh r2, [r0, #0x3a]
	bx lr
_02007E8C:
	strh r2, [r0, #0x3c]
	bx lr
_02007E90:
	add r0, #0x40
	strh r2, [r0]
	bx lr
_02007E96:
	add r0, #0x42
	strh r2, [r0]
	bx lr
_02007E9C:
	strh r2, [r0, #0x34]
	bx lr
_02007EA0:
	strh r2, [r0, #0x36]
	bx lr
_02007EA4:
	ldr r3, [r0, #0x54]
	mov r1, #2
	bic r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x1e
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007EB4:
	add r0, #0x44
	strb r2, [r0]
	bx lr
_02007EBA:
	add r0, #0x45
	strb r2, [r0]
	bx lr
_02007EC0:
	add r0, #0x46
	strb r2, [r0]
	bx lr
_02007EC6:
	add r0, #0x47
	strb r2, [r0]
	bx lr
_02007ECC:
	add r0, #0x70
	strh r2, [r0]
	bx lr
_02007ED2:
	add r0, #0x72
	strh r2, [r0]
	bx lr
_02007ED8:
	add r0, #0x74
	strh r2, [r0]
	bx lr
_02007EDE:
	add r0, #0x76
	strh r2, [r0]
	bx lr
_02007EE4:
	ldr r3, [r0, #0x54]
	mov r1, #0x7c
	bic r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x19
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007EF4:
	ldr r3, [r0, #0x50]
	mov r1, #0x1f
	bic r3, r1
	mov r1, #0x1f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F04:
	ldr r3, [r0, #0x50]
	ldr r1, _02008098 ; =0xFFFFFC1F
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x16
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F14:
	ldr r3, [r0, #0x50]
	ldr r1, _0200809C ; =0xFFFF83FF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x11
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F24:
	ldr r3, [r0, #0x50]
	ldr r1, _020080A0 ; =0xFFF07FFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0xc
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F34:
	ldr r3, [r0, #0x50]
	ldr r1, _020080A4 ; =0xFE0FFFFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #7
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F44:
	ldr r3, [r0, #0x50]
	ldr r1, _020080A8 ; =0xC1FFFFFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #2
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F54:
	ldr r3, [r0, #0x54]
	ldr r1, _020080AC ; =0xFFFFEFFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x13
	orr r1, r3
	str r1, [r0, #0x54]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007F6E:
	str r2, [r0, #0x4c]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007F7C:
	add r1, r0, #0
	add r1, #0x48
	strb r2, [r1]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007F8E:
	add r1, r0, #0
	add r1, #0x49
	strb r2, [r1]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007FA0:
	add r0, #0x4a
	strb r2, [r0]
	bx lr
_02007FA6:
	ldr r3, [r0, #0x54]
	ldr r1, _020080B0 ; =0xFFFFFDFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x16
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0, #0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007FBE:
	ldr r3, [r0, #0x54]
	ldr r1, _020080B4 ; =0xFFFFFBFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x15
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0, #0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007FD6:
	ldr r3, [r0, #0x54]
	ldr r1, _020080B8 ; =0xFFFFF7FF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x14
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007FE6:
	add r0, #0x5b
	strb r2, [r0]
	bx lr
_02007FEC:
	ldr r3, [r0, #0x54]
	ldr r1, _020080BC ; =0xFFFE1FFF
	and r3, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0xf
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0, #0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02008004:
	add r0, #0x6e
	strb r2, [r0]
	bx lr
_0200800A:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #3
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	mov r2, #3
	and r1, r2
	orr r3, r1
	add r1, r0, #0
	add r1, #0x6c
	strh r3, [r1]
	ldr r1, [r0, #0]
	add r2, #0xfd
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_0200802E:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #4
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r1, r3
	strh r1, [r0]
	bx lr
_02008048:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #8
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1c
	orr r1, r3
	strh r1, [r0]
	bx lr
_02008062:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #0x10
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r1, r3
	strh r1, [r0]
	bx lr
_0200807C:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #0x60
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r1, r3
	strh r1, [r0]
_02008094:
	bx lr
	nop
_02008098: .word 0xFFFFFC1F
_0200809C: .word 0xFFFF83FF
_020080A0: .word 0xFFF07FFF
_020080A4: .word 0xFE0FFFFF
_020080A8: .word 0xC1FFFFFF
_020080AC: .word 0xFFFFEFFF
_020080B0: .word 0xFFFFFDFF
_020080B4: .word 0xFFFFFBFF
_020080B8: .word 0xFFFFF7FF
_020080BC: .word 0xFFFE1FFF
	thumb_func_end sub_02007DEC

	thumb_func_start sub_020080C0
sub_020080C0: ; 0x020080C0
	push {r3, lr}
	cmp r1, #0x2e
	bls _020080C8
	b _0200826A
_020080C8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020080D4: ; jump table
	.short _02008132 - _020080D4 - 2 ; case 0
	.short _02008138 - _020080D4 - 2 ; case 1
	.short _0200813E - _020080D4 - 2 ; case 2
	.short _02008142 - _020080D4 - 2 ; case 3
	.short _02008148 - _020080D4 - 2 ; case 4
	.short _0200814E - _020080D4 - 2 ; case 5
	.short _02008152 - _020080D4 - 2 ; case 6
	.short _0200815A - _020080D4 - 2 ; case 7
	.short _0200815E - _020080D4 - 2 ; case 8
	.short _02008162 - _020080D4 - 2 ; case 9
	.short _02008166 - _020080D4 - 2 ; case 10
	.short _0200816C - _020080D4 - 2 ; case 11
	.short _02008172 - _020080D4 - 2 ; case 12
	.short _02008178 - _020080D4 - 2 ; case 13
	.short _0200817E - _020080D4 - 2 ; case 14
	.short _02008186 - _020080D4 - 2 ; case 15
	.short _0200818C - _020080D4 - 2 ; case 16
	.short _02008192 - _020080D4 - 2 ; case 17
	.short _02008198 - _020080D4 - 2 ; case 18
	.short _0200819E - _020080D4 - 2 ; case 19
	.short _020081A4 - _020080D4 - 2 ; case 20
	.short _020081AA - _020080D4 - 2 ; case 21
	.short _020081B0 - _020080D4 - 2 ; case 22
	.short _020081B6 - _020080D4 - 2 ; case 23
	.short _020081BE - _020080D4 - 2 ; case 24
	.short _020081C6 - _020080D4 - 2 ; case 25
	.short _020081CE - _020080D4 - 2 ; case 26
	.short _020081D6 - _020080D4 - 2 ; case 27
	.short _020081DE - _020080D4 - 2 ; case 28
	.short _020081E6 - _020080D4 - 2 ; case 29
	.short _020081EE - _020080D4 - 2 ; case 30
	.short _020081F6 - _020080D4 - 2 ; case 31
	.short _020081FA - _020080D4 - 2 ; case 32
	.short _02008200 - _020080D4 - 2 ; case 33
	.short _02008206 - _020080D4 - 2 ; case 34
	.short _0200820C - _020080D4 - 2 ; case 35
	.short _02008214 - _020080D4 - 2 ; case 36
	.short _0200821C - _020080D4 - 2 ; case 37
	.short _02008224 - _020080D4 - 2 ; case 38
	.short _0200826A - _020080D4 - 2 ; case 39
	.short _0200822A - _020080D4 - 2 ; case 40
	.short _02008232 - _020080D4 - 2 ; case 41
	.short _02008238 - _020080D4 - 2 ; case 42
	.short _02008242 - _020080D4 - 2 ; case 43
	.short _0200824C - _020080D4 - 2 ; case 44
	.short _02008256 - _020080D4 - 2 ; case 45
	.short _02008260 - _020080D4 - 2 ; case 46
_02008132:
	mov r1, #0x24
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008138:
	mov r1, #0x26
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_0200813E:
	ldr r0, [r0, #0x28]
	pop {r3, pc}
_02008142:
	mov r1, #0x2c
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008148:
	mov r1, #0x2e
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_0200814E:
	ldr r0, [r0, #0x30]
	pop {r3, pc}
_02008152:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0200815A:
	ldrh r0, [r0, #0x38]
	pop {r3, pc}
_0200815E:
	ldrh r0, [r0, #0x3a]
	pop {r3, pc}
_02008162:
	ldrh r0, [r0, #0x3c]
	pop {r3, pc}
_02008166:
	mov r1, #0x40
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_0200816C:
	mov r1, #0x42
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008172:
	mov r1, #0x34
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008178:
	mov r1, #0x36
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_0200817E:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008186:
	add r0, #0x44
	ldrb r0, [r0]
	pop {r3, pc}
_0200818C:
	add r0, #0x45
	ldrb r0, [r0]
	pop {r3, pc}
_02008192:
	add r0, #0x46
	ldrb r0, [r0]
	pop {r3, pc}
_02008198:
	add r0, #0x47
	ldrb r0, [r0]
	pop {r3, pc}
_0200819E:
	mov r1, #0x70
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020081A4:
	mov r1, #0x72
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020081AA:
	mov r1, #0x74
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020081B0:
	mov r1, #0x76
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020081B6:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081BE:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081C6:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081CE:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081D6:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081DE:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #7
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081E6:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #2
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081EE:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	pop {r3, pc}
_020081F6:
	ldr r0, [r0, #0x4c]
	pop {r3, pc}
_020081FA:
	add r0, #0x48
	ldrb r0, [r0]
	pop {r3, pc}
_02008200:
	add r0, #0x49
	ldrb r0, [r0]
	pop {r3, pc}
_02008206:
	add r0, #0x4a
	ldrb r0, [r0]
	pop {r3, pc}
_0200820C:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008214:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0200821C:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008224:
	add r0, #0x5b
	ldrb r0, [r0]
	pop {r3, pc}
_0200822A:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	pop {r3, pc}
_02008232:
	mov r1, #0x6e
	ldrsb r0, [r0, r1]
	pop {r3, pc}
_02008238:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	pop {r3, pc}
_02008242:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0200824C:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008256:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008260:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	pop {r3, pc}
_0200826A:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020080C0

	thumb_func_start sub_02008274
sub_02008274: ; 0x02008274
	push {r3, r4}
	add r3, r0, #0
	add r0, r2, #0
	cmp r1, #0x2e
	bls _02008280
	b _020086A6
_02008280:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200828C: ; jump table
	.short _020082EA - _0200828C - 2 ; case 0
	.short _020082F6 - _0200828C - 2 ; case 1
	.short _02008302 - _0200828C - 2 ; case 2
	.short _0200830C - _0200828C - 2 ; case 3
	.short _02008318 - _0200828C - 2 ; case 4
	.short _02008324 - _0200828C - 2 ; case 5
	.short _0200832E - _0200828C - 2 ; case 6
	.short _02008348 - _0200828C - 2 ; case 7
	.short _02008352 - _0200828C - 2 ; case 8
	.short _0200835C - _0200828C - 2 ; case 9
	.short _02008366 - _0200828C - 2 ; case 10
	.short _02008374 - _0200828C - 2 ; case 11
	.short _02008382 - _0200828C - 2 ; case 12
	.short _0200838E - _0200828C - 2 ; case 13
	.short _0200839A - _0200828C - 2 ; case 14
	.short _020083B4 - _0200828C - 2 ; case 15
	.short _020083C4 - _0200828C - 2 ; case 16
	.short _020083D4 - _0200828C - 2 ; case 17
	.short _020083E4 - _0200828C - 2 ; case 18
	.short _020083F4 - _0200828C - 2 ; case 19
	.short _02008402 - _0200828C - 2 ; case 20
	.short _02008410 - _0200828C - 2 ; case 21
	.short _0200841E - _0200828C - 2 ; case 22
	.short _0200842C - _0200828C - 2 ; case 23
	.short _02008446 - _0200828C - 2 ; case 24
	.short _02008460 - _0200828C - 2 ; case 25
	.short _02008478 - _0200828C - 2 ; case 26
	.short _02008490 - _0200828C - 2 ; case 27
	.short _020084A8 - _0200828C - 2 ; case 28
	.short _020084C0 - _0200828C - 2 ; case 29
	.short _020084D8 - _0200828C - 2 ; case 30
	.short _020084FA - _0200828C - 2 ; case 31
	.short _0200850E - _0200828C - 2 ; case 32
	.short _0200852A - _0200828C - 2 ; case 33
	.short _02008546 - _0200828C - 2 ; case 34
	.short _02008556 - _0200828C - 2 ; case 35
	.short _02008576 - _0200828C - 2 ; case 36
	.short _02008596 - _0200828C - 2 ; case 37
	.short _020085AE - _0200828C - 2 ; case 38
	.short _020086A6 - _0200828C - 2 ; case 39
	.short _020085BE - _0200828C - 2 ; case 40
	.short _020085DE - _0200828C - 2 ; case 41
	.short _020085EC - _0200828C - 2 ; case 42
	.short _0200861A - _0200828C - 2 ; case 43
	.short _0200863E - _0200828C - 2 ; case 44
	.short _02008662 - _0200828C - 2 ; case 45
	.short _02008686 - _0200828C - 2 ; case 46
_020082EA:
	mov r1, #0x24
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x24]
	pop {r3, r4}
	bx lr
_020082F6:
	mov r1, #0x26
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x26]
	pop {r3, r4}
	bx lr
_02008302:
	ldr r1, [r3, #0x28]
	add r0, r1, r0
	str r0, [r3, #0x28]
	pop {r3, r4}
	bx lr
_0200830C:
	mov r1, #0x2c
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x2c]
	pop {r3, r4}
	bx lr
_02008318:
	mov r1, #0x2e
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x2e]
	pop {r3, r4}
	bx lr
_02008324:
	ldr r1, [r3, #0x30]
	add r0, r1, r0
	str r0, [r3, #0x30]
	pop {r3, r4}
	bx lr
_0200832E:
	ldr r4, [r3, #0x54]
	mov r2, #1
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1f
	lsr r2, r2, #0x1f
	add r2, r2, r0
	mov r0, #1
	and r0, r2
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_02008348:
	ldrh r1, [r3, #0x38]
	add r0, r1, r0
	strh r0, [r3, #0x38]
	pop {r3, r4}
	bx lr
_02008352:
	ldrh r1, [r3, #0x3a]
	add r0, r1, r0
	strh r0, [r3, #0x3a]
	pop {r3, r4}
	bx lr
_0200835C:
	ldrh r1, [r3, #0x3c]
	add r0, r1, r0
	strh r0, [r3, #0x3c]
	pop {r3, r4}
	bx lr
_02008366:
	mov r1, #0x40
	ldrsh r1, [r3, r1]
	add r3, #0x40
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008374:
	mov r1, #0x42
	ldrsh r1, [r3, r1]
	add r3, #0x42
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008382:
	mov r1, #0x34
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x34]
	pop {r3, r4}
	bx lr
_0200838E:
	mov r1, #0x36
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x36]
	pop {r3, r4}
	bx lr
_0200839A:
	ldr r4, [r3, #0x54]
	mov r2, #2
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1e
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1e
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_020083B4:
	add r1, r3, #0
	add r1, #0x44
	ldrb r1, [r1]
	add r3, #0x44
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020083C4:
	add r1, r3, #0
	add r1, #0x45
	ldrb r1, [r1]
	add r3, #0x45
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020083D4:
	add r1, r3, #0
	add r1, #0x46
	ldrb r1, [r1]
	add r3, #0x46
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020083E4:
	add r1, r3, #0
	add r1, #0x47
	ldrb r1, [r1]
	add r3, #0x47
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020083F4:
	mov r1, #0x70
	ldrsh r1, [r3, r1]
	add r3, #0x70
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008402:
	mov r1, #0x72
	ldrsh r1, [r3, r1]
	add r3, #0x72
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008410:
	mov r1, #0x74
	ldrsh r1, [r3, r1]
	add r3, #0x74
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_0200841E:
	mov r1, #0x76
	ldrsh r1, [r3, r1]
	add r3, #0x76
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_0200842C:
	ldr r4, [r3, #0x54]
	mov r2, #0x7c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x19
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x19
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_02008446:
	ldr r4, [r3, #0x50]
	mov r2, #0x1f
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1b
	lsr r2, r2, #0x1b
	add r2, r2, r0
	mov r0, #0x1f
	and r0, r2
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008460:
	ldr r2, [r3, #0x50]
	ldr r1, _020086AC ; =0xFFFFFC1F
	and r1, r2
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008478:
	ldr r2, [r3, #0x50]
	ldr r1, _020086B0 ; =0xFFFF83FF
	and r1, r2
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008490:
	ldr r2, [r3, #0x50]
	ldr r1, _020086B4 ; =0xFFF07FFF
	and r1, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_020084A8:
	ldr r2, [r3, #0x50]
	ldr r1, _020086B8 ; =0xFE0FFFFF
	and r1, r2
	lsl r2, r2, #7
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_020084C0:
	ldr r2, [r3, #0x50]
	ldr r1, _020086BC ; =0xC1FFFFFF
	and r1, r2
	lsl r2, r2, #2
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_020084D8:
	ldr r2, [r3, #0x54]
	ldr r1, _020086C0 ; =0xFFFFEFFF
	and r1, r2
	lsl r2, r2, #0x13
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r3, #0x54]
	mov r0, #1
	ldr r1, [r3, #0]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_020084FA:
	ldr r1, [r3, #0x4c]
	add r0, r1, r0
	str r0, [r3, #0x4c]
	mov r0, #1
	ldr r1, [r3, #0]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_0200850E:
	add r1, r3, #0
	add r1, #0x48
	ldrb r1, [r1]
	add r1, r1, r0
	add r0, r3, #0
	add r0, #0x48
	strb r1, [r0]
	mov r0, #1
	ldr r1, [r3, #0]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_0200852A:
	add r1, r3, #0
	add r1, #0x49
	ldrb r1, [r1]
	add r1, r1, r0
	add r0, r3, #0
	add r0, #0x49
	strb r1, [r0]
	mov r0, #1
	ldr r1, [r3, #0]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_02008546:
	add r1, r3, #0
	add r1, #0x4a
	ldrb r1, [r1]
	add r3, #0x4a
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_02008556:
	ldr r2, [r3, #0x54]
	ldr r1, _020086C4 ; =0xFFFFFDFF
	and r1, r2
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3, #0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_02008576:
	ldr r2, [r3, #0x54]
	ldr r1, _020086C8 ; =0xFFFFFBFF
	and r1, r2
	lsl r2, r2, #0x15
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x15
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3, #0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_02008596:
	ldr r2, [r3, #0x54]
	ldr r1, _020086CC ; =0xFFFFF7FF
	and r1, r2
	lsl r2, r2, #0x14
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x14
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_020085AE:
	add r1, r3, #0
	add r1, #0x5b
	ldrb r1, [r1]
	add r3, #0x5b
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020085BE:
	ldr r2, [r3, #0x54]
	ldr r1, _020086D0 ; =0xFFFE1FFF
	and r1, r2
	lsl r2, r2, #0xf
	lsr r2, r2, #0x1c
	add r0, r2, r0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0xf
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3, #0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_020085DE:
	mov r1, #0x6e
	ldrsb r1, [r3, r1]
	add r3, #0x6e
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020085EC:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #3
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1e
	lsr r2, r2, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #3
	and r0, r2
	orr r1, r0
	add r0, r3, #0
	add r0, #0x6c
	strh r1, [r0]
	ldr r0, [r3, #0]
	add r2, #0xfd
	orr r0, r2
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_0200861A:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #4
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1d
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1d
	orr r0, r1
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_0200863E:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #8
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1c
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1c
	orr r0, r1
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008662:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #0x10
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1b
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008686:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #0x60
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x19
	lsr r2, r2, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x19
	orr r0, r1
	strh r0, [r3]
_020086A6:
	pop {r3, r4}
	bx lr
	nop
_020086AC: .word 0xFFFFFC1F
_020086B0: .word 0xFFFF83FF
_020086B4: .word 0xFFF07FFF
_020086B8: .word 0xFE0FFFFF
_020086BC: .word 0xC1FFFFFF
_020086C0: .word 0xFFFFEFFF
_020086C4: .word 0xFFFFFDFF
_020086C8: .word 0xFFFFFBFF
_020086CC: .word 0xFFFFF7FF
_020086D0: .word 0xFFFE1FFF
	thumb_func_end sub_02008274

	thumb_func_start sub_020086D4
sub_020086D4: ; 0x020086D4
	push {r4, r5}
	ldr r5, [r0, #0x54]
	mov r4, #2
	orr r4, r5
	str r4, [r0, #0x54]
	add r4, r0, #0
	add r4, #0x44
	strb r1, [r4]
	add r1, r0, #0
	add r1, #0x45
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x46
	strb r3, [r1]
	ldr r1, [sp, #8]
	add r0, #0x47
	strb r1, [r0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020086D4

	thumb_func_start sub_020086FC
sub_020086FC: ; 0x020086FC
	push {r4, r5}
	mov r4, #1
	ldr r5, [r0, #0x54]
	lsl r4, r4, #0xc
	orr r4, r5
	str r4, [r0, #0x54]
	add r4, r0, #0
	add r4, #0x48
	strb r1, [r4]
	add r1, r0, #0
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x4a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4b
	strb r3, [r1]
	ldr r1, [sp, #8]
	str r1, [r0, #0x4c]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020086FC

	thumb_func_start sub_0200872C
sub_0200872C: ; 0x0200872C
	push {r4, r5, r6, r7}
	add r4, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
	lsl r0, r3, #0x18
	ldr r2, [sp, #0x10]
	mov r1, #0
	lsr r0, r0, #0x18
_02008744:
	ldr r3, [r4, #0]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1f
	beq _02008772
	mov r3, #1
	ldr r7, [r4, #0x54]
	lsl r3, r3, #0xc
	orr r3, r7
	str r3, [r4, #0x54]
	add r3, r4, #0
	add r3, #0x48
	strb r6, [r3]
	add r3, r4, #0
	add r3, #0x49
	add r7, r4, #0
	strb r5, [r3]
	add r7, #0x4a
	mov r3, #0
	strb r3, [r7]
	add r3, r4, #0
	add r3, #0x4b
	strb r0, [r3]
	str r2, [r4, #0x4c]
_02008772:
	add r1, r1, #1
	add r4, #0xac
	cmp r1, #4
	blt _02008744
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200872C

	thumb_func_start sub_02008780
sub_02008780: ; 0x02008780
	ldr r2, [r0, #0x54]
	ldr r1, _020087B0 ; =0xFFFFEFFF
	and r1, r2
	str r1, [r0, #0x54]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x48
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4b
	strb r2, [r1]
	str r2, [r0, #0x4c]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020087B0: .word 0xFFFFEFFF
	thumb_func_end sub_02008780

	thumb_func_start sub_020087B4
sub_020087B4: ; 0x020087B4
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _020087C2
	mov r0, #1
	bx lr
_020087C2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020087B4

	thumb_func_start sub_020087C8
sub_020087C8: ; 0x020087C8
	mov r2, #0x28
	sub r2, r2, r1
	mov r1, #0x36
	ldrsh r1, [r0, r1]
	mul r1, r2
	asr r1, r1, #8
	sub r1, r2, r1
	strh r1, [r0, #0x2e]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020087C8

	thumb_func_start sub_020087DC
sub_020087DC: ; 0x020087DC
	push {r4, r5, r6, r7}
	add r1, r0, #0
	add r1, #0x58
	ldrb r1, [r1]
	cmp r1, #0
	beq _020088D2
	add r1, r0, #0
	add r1, #0x5a
	ldrb r1, [r1]
	cmp r1, #0
	bne _020088C6
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	add r6, r0, #0
	add r6, #0x59
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0x59
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r3, [r1]
	lsl r1, r3, #2
	add r2, r0, r1
	mov r1, #0x84
	ldrsb r4, [r2, r1]
	sub r1, #0x85
	cmp r4, r1
	bge _02008878
	mov r2, #0
	sub r1, r2, #2
_0200881C:
	add r4, r0, r3
	add r4, #0x5c
	ldrb r4, [r4]
	add r3, r0, r3
	add r3, #0x5c
	add r4, r4, #1
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0x59
	ldrb r5, [r3]
	lsl r3, r5, #2
	add r4, r0, r3
	add r3, r4, #0
	add r7, r0, r5
	add r3, #0x85
	add r7, #0x5c
	ldrb r3, [r3]
	ldrb r7, [r7]
	cmp r3, r7
	beq _02008848
	cmp r3, #0
	bne _02008856
_02008848:
	add r3, r0, r5
	add r3, #0x5c
	strb r2, [r3]
	ldrb r3, [r6]
	add r3, r3, #1
	strb r3, [r6]
	b _02008862
_02008856:
	mov r3, #0x84
	ldrsb r3, [r4, r3]
	sub r4, r1, r3
	add r3, r0, #0
	add r3, #0x59
	strb r4, [r3]
_02008862:
	add r3, r0, #0
	add r3, #0x59
	ldrb r3, [r3]
	lsl r4, r3, #2
	add r5, r0, r4
	mov r4, #0x84
	ldrsb r4, [r5, r4]
	mov r5, #0
	mvn r5, r5
	cmp r4, r5
	blt _0200881C
_02008878:
	cmp r3, #0xa
	bhs _02008884
	mov r1, #0
	mvn r1, r1
	cmp r4, r1
	bne _02008898
_02008884:
	add r1, r0, #0
	mov r2, #0
	add r1, #0x5b
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x58
	strb r2, [r1]
	strh r2, [r0, #0x2c]
	pop {r4, r5, r6, r7}
	bx lr
_02008898:
	add r1, r0, #0
	add r1, #0x5b
	strb r4, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	add r1, #0x85
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x5a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r2, r0, r1
	mov r1, #0x86
	ldrsb r1, [r2, r1]
	strh r1, [r0, #0x2c]
	pop {r4, r5, r6, r7}
	bx lr
_020088C6:
	add r1, r0, #0
	add r1, #0x5a
	ldrb r1, [r1]
	add r0, #0x5a
	sub r1, r1, #1
	strb r1, [r0]
_020088D2:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020087DC

	thumb_func_start sub_020088D8
sub_020088D8: ; 0x020088D8
	ldr r3, _020088DC ; =sub_020087DC
	bx r3
	; .align 2, 0
_020088DC: .word sub_020087DC
	thumb_func_end sub_020088D8

	thumb_func_start sub_020088E0
sub_020088E0: ; 0x020088E0
	mov r2, #1
	strb r2, [r0]
	mov r3, #0
	strb r3, [r0, #2]
	ldrsb r2, [r1, r3]
	strb r2, [r0, #1]
	ldrb r2, [r1, #1]
	strb r2, [r0, #3]
	str r1, [r0, #0x10]
	add r2, r3, #0
_020088F4:
	add r1, r0, r3
	add r3, r3, #1
	strb r2, [r1, #4]
	cmp r3, #0xa
	blt _020088F4
	bx lr
	thumb_func_end sub_020088E0

	thumb_func_start sub_02008900
sub_02008900: ; 0x02008900
	push {r4, r5, r6, r7}
	ldrb r1, [r0]
	cmp r1, #0
	beq _02008996
	add r3, r0, #2
	ldr r4, [r0, #0x10]
	cmp r1, #0
	beq _02008990
	ldrb r1, [r0, #3]
	cmp r1, #0
	bne _0200898C
	ldrb r1, [r3]
	add r1, r1, #1
	strb r1, [r3]
	ldrb r2, [r3]
	mov r1, #0
	mvn r1, r1
	lsl r5, r2, #2
	ldrsb r6, [r4, r5]
	cmp r6, r1
	bge _02008968
	mov r1, #0
_0200892C:
	add r5, r0, r2
	ldrb r2, [r5, #4]
	add r2, r2, #1
	strb r2, [r5, #4]
	ldrb r2, [r3]
	add r5, r0, r2
	lsl r2, r2, #2
	add r2, r4, r2
	ldrb r7, [r2, #1]
	ldrb r6, [r5, #4]
	cmp r7, r6
	beq _02008948
	cmp r7, #0
	bne _0200894E
_02008948:
	strb r1, [r5, #4]
	add r3, r3, #1
	b _0200895A
_0200894E:
	mov r5, #0
	ldrsb r5, [r2, r5]
	mov r2, #1
	mvn r2, r2
	sub r2, r2, r5
	strb r2, [r3]
_0200895A:
	ldrb r2, [r3]
	mov r6, #0
	mvn r6, r6
	lsl r5, r2, #2
	ldrsb r7, [r4, r5]
	cmp r7, r6
	blt _0200892C
_02008968:
	ldrsb r5, [r4, r5]
	mov r1, #0
	mvn r1, r1
	cmp r5, r1
	beq _02008976
	cmp r2, #0xa
	blo _0200897E
_02008976:
	mov r1, #0
	strb r1, [r0, #1]
	strb r1, [r0]
	b _02008990
_0200897E:
	strb r5, [r0, #1]
	ldrb r1, [r3]
	lsl r1, r1, #2
	add r1, r4, r1
	ldrb r1, [r1, #1]
	strb r1, [r0, #3]
	b _02008990
_0200898C:
	sub r1, r1, #1
	strb r1, [r0, #3]
_02008990:
	ldrb r0, [r0, #1]
	pop {r4, r5, r6, r7}
	bx lr
_02008996:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02008900

	thumb_func_start sub_020089A0
sub_020089A0: ; 0x020089A0
	ldr r2, [r0, #0]
	mov r1, #0x80
	orr r2, r1
	add r1, #0x80
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020089A0

	thumb_func_start sub_020089B0
sub_020089B0: ; 0x020089B0
	push {r3, r4}
	add r2, r0, #0
	add r3, r2, #0
	add r4, r2, #4
	add r3, #0x14
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	add r0, #0x6c
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x78
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x6e
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x7a
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x70
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x7c
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x72
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x7e
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x74
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x80
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x76
	ldrh r0, [r0]
	add r2, #0x82
	strh r0, [r2]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020089B0

	thumb_func_start sub_02008A0C
sub_02008A0C: ; 0x02008A0C
	push {r3, r4}
	add r2, r0, #0
	add r4, r2, #0
	add r4, #0x14
	add r3, r2, #4
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	add r0, #0x78
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x7a
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x6e
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x7c
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x70
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x7e
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x72
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x80
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x74
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x82
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x76
	strh r1, [r0]
	ldr r1, [r2, #0]
	mov r0, #0x80
	orr r1, r0
	add r0, #0x80
	orr r0, r1
	str r0, [r2, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02008A0C

	thumb_func_start sub_02008A78
sub_02008A78: ; 0x02008A78
	mov r3, #0xbb
	lsl r3, r3, #2
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end sub_02008A78

	thumb_func_start sub_02008A84
sub_02008A84: ; 0x02008A84
	mov r3, #0xbd
	lsl r3, r3, #2
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end sub_02008A84

	thumb_func_start sub_02008A90
sub_02008A90: ; 0x02008A90
	add r0, r0, #4
	bx lr
	thumb_func_end sub_02008A90

	thumb_func_start sub_02008A94
sub_02008A94: ; 0x02008A94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02008B24 ; =0x00000331
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02008AE2
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x81
	add r0, r4, r0
	bl sub_020A818C
	mov r3, #0xc2
	lsl r3, r3, #2
	mov r1, #0x20
	strh r1, [r4, r3]
	add r0, r3, #2
	strh r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0x18
	ldr r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x10
	str r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0xc
	ldr r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x14
	str r1, [r4, r0]
	add r1, r3, #0
	sub r1, #0x1c
	add r0, r4, r3
	sub r3, #0x58
	ldr r1, [r4, r1]
	mov r2, #0
	add r3, r4, r3
	bl sub_020A8450
_02008AE2:
	ldr r0, _02008B28 ; =0x00000332
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02008B22
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x5e
	add r0, r4, r0
	bl sub_020A81D0
	mov r3, #0xbe
	lsl r3, r3, #2
	add r0, r3, #0
	ldr r1, [r4, r3]
	add r0, #0x30
	str r1, [r4, r0]
	add r0, r3, #0
	add r0, #8
	ldr r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x34
	str r1, [r4, r0]
	add r0, r3, #0
	sub r1, r3, #4
	add r0, #0x28
	sub r3, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	add r3, r4, r3
	bl sub_020A8850
_02008B22:
	pop {r4, pc}
	; .align 2, 0
_02008B24: .word 0x00000331
_02008B28: .word 0x00000332
	thumb_func_end sub_02008A94

	thumb_func_start sub_02008B2C
sub_02008B2C: ; 0x02008B2C
	ldr r2, _02008B34 ; =0x00000333
	strb r1, [r0, r2]
	bx lr
	nop
_02008B34: .word 0x00000333
	thumb_func_end sub_02008B2C

	thumb_func_start sub_02008B38
sub_02008B38: ; 0x02008B38
	push {r4, lr}
	add r4, r0, #0
	bne _02008B42
	bl sub_02022974
_02008B42:
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02008B4E
	mov r0, #1
	pop {r4, pc}
_02008B4E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02008B38

	thumb_func_start sub_02008B54
sub_02008B54: ; 0x02008B54
	mov r2, #0xcd
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	orr r1, r3
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_02008B54

	thumb_func_start sub_02008B60
sub_02008B60: ; 0x02008B60
	push {r3, r4}
	mov r3, #0xcd
	lsl r3, r3, #2
	mov r2, #0
	mvn r2, r2
	ldr r4, [r0, r3]
	eor r1, r2
	and r1, r4
	str r1, [r0, r3]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02008B60

	thumb_func_start sub_02008B78
sub_02008B78: ; 0x02008B78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x44]
	str r0, [sp, #0x38]
_02008B8A:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _02008B9A
	lsl r0, r1, #0x18
	lsr r0, r0, #0x1f
	bne _02008B9C
_02008B9A:
	b _02008F96
_02008B9C:
	mov r0, #0x80
	bic r1, r0
	ldr r0, [sp, #0x44]
	mov r2, #0xba
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x44]
	lsl r2, r2, #2
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	ldr r2, [r6, r2]
	bl sub_02006AC0
	add r1, sp, #0x58
	str r0, [sp, #0x4c]
	bl sub_020A7118
	ldr r0, [sp, #0x58]
	mov r1, #0xc3
	ldr r0, [r0, #4]
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [sp, #0x58]
	ldr r2, [r0, #8]
	add r0, r1, #4
	str r2, [r6, r0]
	ldr r0, [sp, #0x58]
	add r1, #8
	ldr r0, [r0, #0xc]
	str r0, [r6, r1]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x44]
	ldr r0, [r0, #0x14]
	ldrh r1, [r1, #4]
	str r0, [sp, #0x50]
	bl sub_020093A0
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x50]
	bl sub_020091C0
	ldr r0, [sp, #0x54]
	cmp r0, #3
	beq _02008BFA
	b _02008E28
_02008BFA:
	mov r5, #0
	add r0, r5, #0
	str r5, [sp, #0x14]
	str r0, [sp, #0x24]
_02008C02:
	ldr r0, [sp, #0x14]
	mov r1, #0x4f
	sub r2, r1, r0
	mov r0, #0x50
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x50]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x24]
	add r7, r1, r0
	ldr r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	lsl r0, r0, #7
	str r0, [sp, #0x10]
_02008C2A:
	cmp r4, #0x28
	bge _02008D16
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _02008C5A
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _02008C5A
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008C5A:
	cmp r0, #0
	beq _02008C7A
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008C7A:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _02008C98
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r0, [sp, #0x20]
	ldr r1, [r6, r1]
	ldrb r0, [r0]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008C98:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #0xc]
	beq _02008D04
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #1
	bl sub_020E2178
	cmp r1, #0
	beq _02008CC8
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r0, r4, r0
	add r0, #0x50
	add r1, r5, r1
	add r1, r4, r1
	ldrb r0, [r0]
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008CC8:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_020E2178
	cmp r1, #0
	beq _02008CEA
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r2, r5, r0
	add r0, r2, r4
	add r0, #0x4f
	ldrb r1, [r0]
	add r0, r2, r4
	add r0, #0x50
	strb r1, [r0]
	b _02008E02
_02008CEA:
	ldrb r1, [r7]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008D04:
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r7]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008D16:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _02008D46
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _02008D46
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008D46:
	cmp r0, #0
	beq _02008D6A
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008D6A:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _02008D88
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r0, [sp, #0x20]
	ldr r1, [r6, r1]
	ldrb r0, [r0]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008D88:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #8]
	beq _02008DF2
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #1
	bl sub_020E2178
	cmp r1, #0
	beq _02008DB8
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r2, r4, r0
	ldr r0, _02008FBC ; =0x00002828
	add r1, r5, r1
	ldrb r0, [r2, r0]
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008DB8:
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_020E2178
	cmp r1, #0
	beq _02008DD8
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02008FC0 ; =0x00002827
	add r0, r5, r0
	add r0, r0, r4
	ldrb r2, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
	b _02008E02
_02008DD8:
	ldrb r1, [r7]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008DF2:
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r7]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
_02008E02:
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	add r0, r0, #1
	add r7, r7, #1
	str r0, [sp, #0x20]
	cmp r4, #0x50
	bge _02008E12
	b _02008C2A
_02008E12:
	ldr r0, [sp, #0x24]
	add r5, #0x80
	add r0, #0x50
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x50
	bge _02008E26
	b _02008C02
_02008E26:
	b _02008F90
_02008E28:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
_02008E30:
	ldr r0, [sp]
	mov r1, #0x4f
	sub r2, r1, r0
	mov r0, #0x50
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x50]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x3c]
	add r7, r1, r0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x40]
	str r7, [sp, #0x2c]
	add r5, r1, r0
	ldr r0, [sp]
	sub r0, r0, #1
	lsl r1, r0, #7
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	str r0, [sp, #0x28]
_02008E62:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _02008EAA
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _02008EAA
	cmp r4, #0x28
	bge _02008E8E
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x30]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008E8E:
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x30]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008EAA:
	cmp r0, #0
	beq _02008EE6
	cmp r4, #0x28
	bge _02008ECA
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008ECA:
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008EE6:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _02008F00
	ldr r0, [sp, #0x34]
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r0]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008F00:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #4]
	beq _02008F5C
	ldr r1, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #1
	bl sub_020E2178
	cmp r1, #0
	beq _02008F28
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x28]
	add r1, r1, r0
	ldrb r1, [r4, r1]
	add r0, r5, r0
	strb r1, [r4, r0]
	b _02008F68
_02008F28:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_020E2178
	cmp r1, #0
	beq _02008F46
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r5, r0
	add r0, r1, r4
	sub r0, r0, #1
	ldrb r0, [r0]
	strb r0, [r1, r4]
	b _02008F68
_02008F46:
	ldrb r1, [r7]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008F5C:
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r7]
	add r1, r5, r1
	strb r0, [r4, r1]
_02008F68:
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r0, r0, #1
	add r7, r7, #1
	str r0, [sp, #0x34]
	cmp r4, #0x50
	bge _02008F78
	b _02008E62
_02008F78:
	ldr r0, [sp, #0x40]
	add r0, #0x80
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r0, #0x50
	str r0, [sp, #0x3c]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x50
	bge _02008F90
	b _02008E30
_02008F90:
	ldr r0, [sp, #0x4c]
	bl sub_020181C4
_02008F96:
	ldr r0, [sp, #0x44]
	mov r1, #0xa
	add r0, #0xac
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x54]
	add r0, r0, #1
	str r0, [sp, #0x54]
	cmp r0, #4
	bge _02008FB2
	b _02008B8A
_02008FB2:
	ldr r1, _02008FC4 ; =0x00000331
	ldr r0, [sp, #0x48]
	strb r0, [r6, r1]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02008FBC: .word 0x00002828
_02008FC0: .word 0x00002827
_02008FC4: .word 0x00000331
	thumb_func_end sub_02008B78

	thumb_func_start sub_02008FC8
sub_02008FC8: ; 0x02008FC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r4, r5, #0
	str r0, [sp, #8]
_02008FDA:
	ldr r1, [r4, #0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _020090B4
	lsl r0, r1, #0x17
	lsr r0, r0, #0x1f
	beq _020090B4
	ldr r0, _020091A0 ; =0xFFFFFEFF
	mov r2, #0xba
	and r0, r1
	str r0, [r4, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #8]
	ldr r2, [r5, r2]
	bl sub_02006AC0
	add r1, sp, #0x18
	str r0, [sp, #0x10]
	bl sub_020A71B0
	ldr r0, [sp, #0x18]
	mov r7, #0
	ldr r1, [r0, #0]
	mov r0, #0x32
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r2, r7, #0
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #8]
	lsl r3, r0, #1
_0200901E:
	mov r6, #3
	lsl r6, r6, #8
	ldr r6, [r5, r6]
	ldrh r0, [r1]
	add r6, r3, r6
	add r7, r7, #1
	strh r0, [r2, r6]
	mov r6, #0xc1
	lsl r6, r6, #2
	ldrh r0, [r1]
	ldr r6, [r5, r6]
	add r1, r1, #2
	add r6, r3, r6
	strh r0, [r2, r6]
	add r2, r2, #2
	cmp r7, #0x10
	blt _0200901E
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _020090B4
	mov r2, #0xba
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r0, #0x75
	mov r1, #0xfc
	bl sub_02006AC0
	add r1, sp, #0x18
	str r0, [sp, #4]
	bl sub_020A71B0
	ldr r0, [sp, #0x18]
	mov r7, #0xc1
	ldr r0, [r0, #0xc]
	mov r1, #0
	lsl r7, r7, #2
_02009072:
	add r6, r4, #0
	add r6, #0x6c
	ldrh r6, [r6]
	mov r2, #3
	lsl r2, r2, #8
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x1e
	add r6, r6, #3
	lsl r6, r6, #4
	add r6, r1, r6
	ldrh r3, [r0]
	ldr r2, [r5, r2]
	lsl r6, r6, #1
	strh r3, [r2, r6]
	add r6, r4, #0
	add r6, #0x6c
	ldrh r6, [r6]
	ldrh r3, [r0]
	ldr r2, [r5, r7]
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x1e
	add r6, r6, #3
	lsl r6, r6, #4
	add r6, r1, r6
	lsl r6, r6, #1
	add r1, r1, #1
	add r0, r0, #2
	strh r3, [r2, r6]
	cmp r1, #0x10
	blt _02009072
	ldr r0, [sp, #4]
	bl sub_020181C4
_020090B4:
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02009182
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	beq _02009182
	add r0, r4, #0
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0
	bne _02009174
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x4b
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, [sp, #8]
	mov r2, #0xc1
	lsl r1, r0, #1
	ldr r0, [r4, #0x4c]
	add r3, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	sub r2, r2, #4
	add r3, #0x48
	ldr r2, [r5, r2]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3]
	mov r2, #0x10
	bl sub_0200393C
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _02009136
	add r0, r0, #3
	lsl r1, r0, #5
	ldr r0, [r4, #0x4c]
	mov r2, #0xc1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r3, r4, #0
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	sub r2, r2, #4
	add r3, #0x48
	ldr r2, [r5, r2]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3]
	mov r2, #0x10
	bl sub_0200393C
_02009136:
	add r0, r4, #0
	add r0, #0x49
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, r1
	bne _02009150
	ldr r1, [r4, #0x54]
	ldr r0, _020091A4 ; =0xFFFFEFFF
	and r0, r1
	str r0, [r4, #0x54]
	b _02009182
_02009150:
	cmp r0, r1
	bls _02009164
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x48
	strb r1, [r0]
	b _02009182
_02009164:
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x48
	strb r1, [r0]
	b _02009182
_02009174:
	add r0, r4, #0
	add r0, #0x4a
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x4a
	strb r1, [r0]
_02009182:
	ldr r0, [sp, #8]
	add r4, #0xac
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	bge _02009196
	b _02008FDA
_02009196:
	ldr r1, _020091A8 ; =0x00000332
	ldr r0, [sp, #0xc]
	strb r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020091A0: .word 0xFFFFFEFF
_020091A4: .word 0xFFFFEFFF
_020091A8: .word 0x00000332
	thumb_func_end sub_02008FC8

	thumb_func_start sub_020091AC
sub_020091AC: ; 0x020091AC
	mov r1, #0xf0
	and r1, r0
	lsl r1, r1, #0x14
	lsl r0, r0, #0x1c
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_020091AC

	thumb_func_start sub_020091C0
sub_020091C0: ; 0x020091C0
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #0xa]
	cmp r0, #0
	beq _020091D4
	add r0, r1, #0
	ldr r1, [r2, #0x10]
	mov r2, #1
	bl sub_020091D8
_020091D4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020091C0

	thumb_func_start sub_020091D8
sub_020091D8: ; 0x020091D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r3, r0, #0
	add r0, r1, #0
	mov lr, r0
	mov r0, #0
	mov ip, r0
	ldr r0, _02009324 ; =0x021007A4
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #0x10]
_020091EE:
	ldr r0, [sp, #0x10]
	mov r1, #0
	ldr r6, [r0, #0]
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _02009266
	ldr r0, [sp]
	mov r2, #0xf
	and r0, r2
	str r0, [sp, #0xc]
	sub r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mov r2, #0xf0
	and r0, r2
	lsr r7, r0, #4
	sub r7, #8
_02009210:
	lsl r0, r1, #1
	add r2, r6, r0
	ldrb r4, [r6, r0]
	ldrb r2, [r2, #1]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r2, r7, r2
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r4, r2, #0x18
	mov r2, #0x50
	mul r2, r4
	lsr r5, r0, #1
	add r2, r5, r2
	mov r4, #1
	tst r0, r4
	ldrb r4, [r3, r2]
	beq _02009248
	mov r0, #0xf0
	and r0, r4
	cmp r0, #0x10
	blt _02009258
	cmp r0, #0x30
	bgt _02009258
	add r4, #0x50
	strb r4, [r3, r2]
	b _02009258
_02009248:
	mov r0, #0xf
	and r0, r4
	cmp r0, #1
	blt _02009258
	cmp r0, #3
	bgt _02009258
	add r0, r4, #5
	strb r0, [r3, r2]
_02009258:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r1, #1
	ldrb r0, [r6, r0]
	cmp r0, #0xff
	bne _02009210
_02009266:
	ldr r0, [sp]
	lsr r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #4
	blt _020091EE
	mov r0, lr
	str r0, [sp]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0200931E
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _02009324 ; =0x021007A4
	str r0, [sp, #0x18]
_0200928E:
	ldr r0, [sp, #0x18]
	mov r4, #0
	ldr r2, [r0, #0]
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _02009308
	ldr r0, [sp]
	mov r1, #0xf
	and r0, r1
	str r0, [sp, #0x14]
	add r0, #0x48
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #0xf0
	and r0, r1
	lsr r7, r0, #4
	sub r7, #8
_020092B0:
	lsl r0, r4, #1
	add r5, r2, r0
	ldrb r1, [r2, r0]
	ldrb r5, [r5, #1]
	ldr r0, [sp, #0x14]
	sub r1, #0xe
	add r0, r0, r1
	add r5, r7, r5
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r1, r0, #0x18
	lsr r6, r5, #0x18
	mov r5, #0x50
	lsr r0, r1, #1
	mul r5, r6
	add r0, r0, r5
	mov r5, #1
	tst r1, r5
	ldrb r5, [r3, r0]
	beq _020092EA
	mov r1, #0xf0
	and r1, r5
	cmp r1, #0x10
	blt _020092FA
	cmp r1, #0x30
	bgt _020092FA
	add r5, #0x50
	strb r5, [r3, r0]
	b _020092FA
_020092EA:
	mov r1, #0xf
	and r1, r5
	cmp r1, #1
	blt _020092FA
	cmp r1, #3
	bgt _020092FA
	add r1, r5, #5
	strb r1, [r3, r0]
_020092FA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r0, r4, #1
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	bne _020092B0
_02009308:
	ldr r0, [sp]
	lsr r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _0200928E
_0200931E:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02009324: .word 0x021007A4
	thumb_func_end sub_020091D8

	thumb_func_start sub_02009328
sub_02009328: ; 0x02009328
	ldr r2, [r0, #0]
	ldr r1, _02009340 ; =0x41C64E6D
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02009344 ; =0x00006073
	add r1, r3, r1
	str r1, [r0, #0]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_02009340: .word 0x41C64E6D
_02009344: .word 0x00006073
	thumb_func_end sub_02009328

	thumb_func_start sub_02009348
sub_02009348: ; 0x02009348
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r6, #0x32
	mov r4, #0
	str r0, [sp]
	add r7, sp, #0
	lsl r6, r6, #6
_02009358:
	ldrh r1, [r5]
	ldr r0, [sp]
	eor r0, r1
	strh r0, [r5]
	add r0, r7, #0
	bl sub_02009328
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r6
	blt _02009358
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009348

	thumb_func_start sub_02009370
sub_02009370: ; 0x02009370
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0200939C ; =0x000018FE
	mov r6, #0
	ldrh r2, [r0, r1]
	lsr r4, r1, #1
	add r5, r0, r1
	str r2, [sp]
	add r7, sp, #0
	mvn r6, r6
_02009382:
	ldrh r1, [r5]
	ldr r0, [sp]
	eor r0, r1
	strh r0, [r5]
	add r0, r7, #0
	bl sub_02009328
	sub r4, r4, #1
	sub r5, r5, #2
	cmp r4, r6
	bgt _02009382
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200939C: .word 0x000018FE
	thumb_func_end sub_02009370

	thumb_func_start sub_020093A0
sub_020093A0: ; 0x020093A0
	push {r3, lr}
	sub r1, #0xa5
	cmp r1, #1
	bhi _020093AE
	bl sub_02009370
	pop {r3, pc}
_020093AE:
	bl sub_02009348
	pop {r3, pc}
	thumb_func_end sub_020093A0

	thumb_func_start sub_020093B4
sub_020093B4: ; 0x020093B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r6, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #0xc]
	cmp r0, #0
	bne _020093D2
	bl sub_02022974
_020093D2:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _020093DC
	bl sub_02022974
_020093DC:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _020093E6
	bl sub_02022974
_020093E6:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _020093F0
	bl sub_02022974
_020093F0:
	cmp r5, #0
	bne _020093F8
	bl sub_02022974
_020093F8:
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	bl sub_02009DC8
	add r7, r0, #0
	bne _02009408
	bl sub_02022974
_02009408:
	ldr r0, [sp, #0x48]
	ldr r1, [sp]
	bl sub_02009DC8
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _0200941A
	bl sub_02022974
_0200941A:
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #4]
	bl sub_02009DC8
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0200942C
	bl sub_02022974
_0200942C:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0200944A
	mov r2, #0
	ldr r1, [sp, #0x30]
	mvn r2, r2
	cmp r1, r2
	beq _0200944A
	bl sub_02009DC8
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _0200944A
	bl sub_02022974
_0200944A:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _02009472
	mov r2, #0
	ldr r1, [sp, #0x34]
	mvn r2, r2
	cmp r1, r2
	beq _02009460
	bl sub_02009DC8
	add r4, r0, #0
_02009460:
	mov r0, #0
	ldr r1, [sp, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _02009472
	ldr r0, [sp, #0x58]
	bl sub_02009DC8
	str r0, [sp, #8]
_02009472:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02009492
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl sub_0200A558
	add r6, r0, #0
	bne _02009488
	bl sub_02022974
_02009488:
	add r0, r7, #0
	bl sub_02009E1C
	str r0, [r5, #4]
	b _020094A4
_02009492:
	add r0, r7, #0
	bl sub_0200A534
	add r6, r0, #0
	bne _020094A0
	bl sub_02022974
_020094A0:
	mov r0, #0
	str r0, [r5, #4]
_020094A4:
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl sub_0200A72C
	str r0, [r5, #8]
	ldr r0, [sp, #0x10]
	str r6, [r5, #0]
	bl sub_02009E4C
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020094C4
	bl sub_02009E64
	b _020094C6
_020094C4:
	mov r0, #0
_020094C6:
	str r0, [r5, #0x10]
	cmp r4, #0
	beq _020094DC
	add r0, r4, #0
	bl sub_02009E7C
	str r0, [r5, #0x14]
	ldr r0, [sp, #8]
	bl sub_02009E94
	b _020094E0
_020094DC:
	mov r0, #0
	str r0, [r5, #0x14]
_020094E0:
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x40]
	add r5, #0x20
	strb r0, [r5]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020093B4

	thumb_func_start sub_020094F0
sub_020094F0: ; 0x020094F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200A5B4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020094F0

	thumb_func_start sub_02009508
sub_02009508: ; 0x02009508
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [sp, #0x48]
	add r7, r1, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	mov r4, #0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	ldr r1, [r5, #0]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x2c]
	str r0, [sp, #0x54]
	sub r0, r4, #2
	str r3, [sp, #0x30]
	cmp r1, r0
	beq _0200953C
	add r2, r5, #0
	sub r0, r4, #2
_02009532:
	add r2, #0x20
	ldr r1, [r2, #0]
	add r4, r4, #1
	cmp r1, r0
	bne _02009532
_0200953C:
	add r0, r7, #0
	mov r1, #8
	bl sub_02018144
	mov r1, #0x24
	add r6, r0, #0
	add r0, r7, #0
	mul r1, r4
	bl sub_02018144
	str r0, [r6, #0]
	mov r7, #0
	str r4, [r6, #4]
	cmp r4, #0
	ble _020095A2
	add r4, r7, #0
_0200955C:
	ldr r0, [r5, #0xc]
	str r0, [sp]
	ldr r0, [r5, #0x10]
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x28]
	ldr r0, [r6, #0]
	ldr r1, [r5, #0]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r0, r0, r4
	bl sub_020093B4
	ldr r0, [r6, #4]
	add r7, r7, #1
	add r5, #0x20
	add r4, #0x24
	cmp r7, r0
	blt _0200955C
_020095A2:
	add r0, r6, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02009508

	thumb_func_start sub_020095A8
sub_020095A8: ; 0x020095A8
	push {r4, lr}
	add r4, r0, #0
	bne _020095B2
	bl sub_02022974
_020095B2:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020095BC
	bl sub_020181C4
_020095BC:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_020095A8

	thumb_func_start sub_020095C4
sub_020095C4: ; 0x020095C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _02009628 ; =0xFFFFF000
	add r0, r4, #0
	add r6, r2, #0
	bl sub_0202309C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x98
	add r1, sp, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_0200A8B0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	mov r1, #3
	lsl r1, r1, #0x12
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	str r1, [sp, #4]
	str r1, [sp, #0xc]
	add r0, #0xe0
	add r1, sp, #0
	mov r2, #2
	add r3, r4, #0
	bl sub_0200A8B0
	add r0, sp, #0x10
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r6, [sp, #0x18]
	bl sub_020218BC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02009628: .word 0xFFFFF000
	thumb_func_end sub_020095C4

	thumb_func_start sub_0200962C
sub_0200962C: ; 0x0200962C
	push {r3, lr}
	sub sp, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	lsl r1, r1, #0x12
	str r1, [sp, #0xc]
	add r0, #0x98
	add r1, sp, #0
	str r2, [sp, #4]
	bl sub_020230E0
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_0200962C

	thumb_func_start sub_0200964C
sub_0200964C: ; 0x0200964C
	push {r3, lr}
	sub sp, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	mov r1, #3
	lsl r1, r1, #0x12
	str r1, [sp, #0xc]
	add r0, #0xe0
	add r1, sp, #0
	str r2, [sp, #4]
	bl sub_020230E0
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end sub_0200964C

	thumb_func_start sub_0200966C
sub_0200966C: ; 0x0200966C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0x10
	beq _02009682
	ldr r2, _020096F4 ; =0x00100010
	cmp r1, r2
	beq _020096B2
	ldr r0, _020096F8 ; =0x00200010
	cmp r1, r0
	beq _020096C0
	b _020096EC
_02009682:
	bl sub_020BEFEC
	cmp r0, #0x40
	beq _02009692
	bl sub_020BEFEC
	cmp r0, #0x20
	bne _020096A2
_02009692:
	mov r0, #0x3e
	mov r1, #2
	lsl r0, r0, #8
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096A2:
	mov r0, #0x7e
	mov r1, #2
	lsl r0, r0, #8
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096B2:
	mov r0, #0xfe
	lsr r1, r2, #0xb
	lsl r0, r0, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096C0:
	bl sub_020BEFEC
	cmp r0, #0x30
	beq _020096D0
	bl sub_020BEFEC
	cmp r0, #0x50
	bne _020096DE
_020096D0:
	mov r1, #2
	ldr r0, _020096FC ; =0x00013E00
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096DE:
	mov r1, #2
	ldr r0, _02009700 ; =0x0001FE00
	lsl r1, r1, #8
	add r2, r4, #0
	bl sub_0201E9C0
	pop {r4, pc}
_020096EC:
	bl sub_02022974
	pop {r4, pc}
	nop
_020096F4: .word 0x00100010
_020096F8: .word 0x00200010
_020096FC: .word 0x00013E00
_02009700: .word 0x0001FE00
	thumb_func_end sub_0200966C

	thumb_func_start sub_02009704
sub_02009704: ; 0x02009704
	ldr r3, _02009710 ; =sub_0201F890
	add r1, r0, #0
	mov r0, #3
	lsl r0, r0, #0xe
	bx r3
	nop
_02009710: .word sub_0201F890
	thumb_func_end sub_02009704

	thumb_func_start sub_02009714
sub_02009714: ; 0x02009714
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	add r0, r2, #0
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0202298C
	str r0, [r4, #0]
	mov r0, #0xc
	add r7, r5, #0
	mul r7, r0
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02018144
	mov r1, #0
	add r2, r7, #0
	str r0, [r4, #4]
	bl sub_020D5124
	str r5, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009714

	thumb_func_start sub_02009754
sub_02009754: ; 0x02009754
	push {r4, lr}
	add r4, r0, #0
	bne _0200975E
	bl sub_02022974
_0200975E:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02009768
	bl sub_02022974
_02009768:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02009772
	bl sub_02022974
_02009772:
	add r0, r4, #0
	bl sub_02009D9C
	ldr r0, [r4, #0]
	bl sub_020229D8
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02009754

	thumb_func_start sub_02009794
sub_02009794: ; 0x02009794
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _020097A8
	bl sub_02022974
_020097A8:
	cmp r4, #0
	bne _020097B0
	bl sub_02022974
_020097B0:
	ldr r0, [r4, #4]
	cmp r0, r6
	bgt _020097BA
	bl sub_02022974
_020097BA:
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #8]
	cmp r1, r0
	beq _020097C6
	bl sub_02022974
_020097C6:
	add r0, r5, #0
	bl sub_0200A0A8
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _020097D6
	bl sub_02022974
_020097D6:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _02009812
	ldr r2, [r4, #0]
	mov r0, #0x4c
	add r1, r6, #0
	mul r1, r0
	add r6, r2, r1
	ldr r1, [r2, r1]
	add r0, r5, #0
	bl sub_02009D34
	cmp r0, #1
	beq _020097F6
	bl sub_02022974
_020097F6:
	ldr r0, [r6, #0x44]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r6, #0x48]
	add r2, r6, #4
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r3, [r6, #0]
	add r0, r5, #0
	bl sub_0200A224
	b _02009850
_02009812:
	mov r0, #0x18
	ldr r1, [r4, #0]
	mul r0, r6
	add r6, r1, r0
	ldr r1, [r6, #0xc]
	add r0, r5, #0
	bl sub_02009D34
	cmp r0, #1
	beq _0200982A
	bl sub_02022974
_0200982A:
	ldr r0, [r6, #8]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r6, #0xc]
	str r0, [sp, #4]
	ldr r0, [r6, #0x10]
	str r0, [sp, #8]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [r6, #0]
	ldr r3, [r6, #4]
	add r0, r5, #0
	bl sub_0200A250
_02009850:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009794

	thumb_func_start sub_0200985C
sub_0200985C: ; 0x0200985C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009870
	bl sub_02022974
_02009870:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0200987A
	bl sub_02022974
_0200987A:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009888
	bl sub_02022974
_02009888:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200A250
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200985C

	thumb_func_start sub_020098B8
sub_020098B8: ; 0x020098B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _020098CC
	bl sub_02022974
_020098CC:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _020098D6
	bl sub_02022974
_020098D6:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _020098E4
	bl sub_02022974
_020098E4:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200A250
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020098B8

	thumb_func_start sub_02009918
sub_02009918: ; 0x02009918
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _0200992C
	bl sub_02022974
_0200992C:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _0200993A
	bl sub_02022974
_0200993A:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200A250
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009918

	thumb_func_start sub_02009968
sub_02009968: ; 0x02009968
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _0200997C
	bl sub_02022974
_0200997C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02009986
	bl sub_02022974
_02009986:
	cmp r4, #0
	bne _0200998E
	bl sub_02022974
_0200998E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02009998
	bl sub_02022974
_02009998:
	add r0, r4, #0
	bl sub_02009E08
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02009EBC
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02009D68
	ldr r0, [sp, #0x38]
	mov r1, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A250
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02009968

	thumb_func_start sub_020099D4
sub_020099D4: ; 0x020099D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _020099E8
	bl sub_02022974
_020099E8:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _020099F2
	bl sub_02022974
_020099F2:
	cmp r4, #0
	bne _020099FA
	bl sub_02022974
_020099FA:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _02009A04
	bl sub_02022974
_02009A04:
	add r0, r4, #0
	bl sub_02009E08
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02009EBC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02009EE8
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02009D68
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x24]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A250
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020099D4

	thumb_func_start sub_02009A4C
sub_02009A4C: ; 0x02009A4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009A60
	bl sub_02022974
_02009A60:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02009A6A
	bl sub_02022974
_02009A6A:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009A78
	bl sub_02022974
_02009A78:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02009A4C

	thumb_func_start sub_02009AA8
sub_02009AA8: ; 0x02009AA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009ABC
	bl sub_02022974
_02009ABC:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02009AC6
	bl sub_02022974
_02009AC6:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009AD4
	bl sub_02022974
_02009AD4:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009AA8

	thumb_func_start sub_02009B04
sub_02009B04: ; 0x02009B04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009B18
	bl sub_02022974
_02009B18:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _02009B22
	bl sub_02022974
_02009B22:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009B30
	bl sub_02022974
_02009B30:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02009B04

	thumb_func_start sub_02009B64
sub_02009B64: ; 0x02009B64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009B78
	bl sub_02022974
_02009B78:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _02009B82
	bl sub_02022974
_02009B82:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009B90
	bl sub_02022974
_02009B90:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02009B64

	thumb_func_start sub_02009BC4
sub_02009BC4: ; 0x02009BC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	str r2, [sp, #0x1c]
	cmp r5, #0
	bne _02009BD8
	bl sub_02022974
_02009BD8:
	add r0, r5, #0
	bl sub_0200A0A8
	add r6, r0, #0
	bne _02009BE6
	bl sub_02022974
_02009BE6:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200A288
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009BC4

	thumb_func_start sub_02009C14
sub_02009C14: ; 0x02009C14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0
	bne _02009C28
	bl sub_02022974
_02009C28:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02009C32
	bl sub_02022974
_02009C32:
	cmp r4, #0
	bne _02009C3A
	bl sub_02022974
_02009C3A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02009C44
	bl sub_02022974
_02009C44:
	add r0, r4, #0
	bl sub_02009E08
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02009EBC
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02009D68
	ldr r0, [sp, #0x38]
	mov r1, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A288
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02009C14

	thumb_func_start sub_02009C80
sub_02009C80: ; 0x02009C80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02009C94
	bl sub_02022974
_02009C94:
	cmp r4, #0
	bne _02009C9C
	bl sub_02022974
_02009C9C:
	str r6, [sp]
	str r7, [sp, #4]
	ldr r3, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02009CB4
	ldr r0, [r4, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02009C80

	thumb_func_start sub_02009CB4
sub_02009CB4: ; 0x02009CB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r2, #0
	ldr r0, [sp, #0x24]
	add r7, r5, r3
	str r1, [sp, #4]
	ldr r4, [sp, #0x20]
	str r0, [sp, #0x24]
	cmp r5, r7
	bge _02009CF8
	add r6, r4, #0
	add r6, #8
_02009CCE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r3, [sp, #0x24]
	add r2, r5, #0
	bl sub_02009794
	cmp r4, #0
	beq _02009CF2
	ldr r2, [r4, #8]
	ldr r1, [r4, #4]
	cmp r1, r2
	ble _02009CF2
	ldr r1, [r4, #0]
	lsl r2, r2, #2
	str r0, [r1, r2]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_02009CF2:
	add r5, r5, #1
	cmp r5, r7
	blt _02009CCE
_02009CF8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009CB4

	thumb_func_start sub_02009CFC
sub_02009CFC: ; 0x02009CFC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	lsl r1, r5, #2
	bl sub_02018144
	str r0, [r4, #0]
	str r5, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02009CFC

	thumb_func_start sub_02009D20
sub_02009D20: ; 0x02009D20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009D20

	thumb_func_start sub_02009D34
sub_02009D34: ; 0x02009D34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009D42
	bl sub_02022974
_02009D42:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_020229F8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02009D34

	thumb_func_start sub_02009D4C
sub_02009D4C: ; 0x02009D4C
	push {r4, lr}
	add r4, r0, #0
	bne _02009D56
	bl sub_02022974
_02009D56:
	add r0, r4, #0
	bl sub_0200A1F8
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02022B64
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009D4C

	thumb_func_start sub_02009D68
sub_02009D68: ; 0x02009D68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009D76
	bl sub_02022974
_02009D76:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02009D80
	bl sub_02022974
_02009D80:
	add r0, r4, #0
	bl sub_0200A1F8
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	bl sub_02022AB0
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02009D68

	thumb_func_start sub_02009D9C
sub_02009D9C: ; 0x02009D9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _02009DC4
	add r4, r6, #0
_02009DAA:
	ldr r1, [r5, #4]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02009DBA
	add r0, r5, #0
	add r1, r1, r4
	bl sub_02009D68
_02009DBA:
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02009DAA
_02009DC4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02009D9C

	thumb_func_start sub_02009DC8
sub_02009DC8: ; 0x02009DC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02009DD6
	bl sub_02022974
_02009DD6:
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _02009E04
	add r4, r6, #0
_02009DE0:
	ldr r0, [r5, #4]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02009DFA
	bl sub_02022B80
	cmp r0, r7
	bne _02009DFA
	mov r0, #0xc
	ldr r1, [r5, #4]
	mul r0, r6
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_02009DFA:
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02009DE0
_02009E04:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009DC8

	thumb_func_start sub_02009E08
sub_02009E08: ; 0x02009E08
	push {r4, lr}
	add r4, r0, #0
	bne _02009E12
	bl sub_02022974
_02009E12:
	ldr r0, [r4, #0]
	bl sub_02022B80
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009E08

	thumb_func_start sub_02009E1C
sub_02009E1C: ; 0x02009E1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02009E2A
	bl sub_02022974
_02009E2A:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E1C

	thumb_func_start sub_02009E34
sub_02009E34: ; 0x02009E34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _02009E42
	bl sub_02022974
_02009E42:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E34

	thumb_func_start sub_02009E4C
sub_02009E4C: ; 0x02009E4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #2
	beq _02009E5A
	bl sub_02022974
_02009E5A:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E4C

	thumb_func_start sub_02009E64
sub_02009E64: ; 0x02009E64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _02009E72
	bl sub_02022974
_02009E72:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E64

	thumb_func_start sub_02009E7C
sub_02009E7C: ; 0x02009E7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	beq _02009E8A
	bl sub_02022974
_02009E8A:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E7C

	thumb_func_start sub_02009E94
sub_02009E94: ; 0x02009E94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #5
	beq _02009EA2
	bl sub_02022974
_02009EA2:
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #0]
	pop {r4, pc}
	thumb_func_end sub_02009E94

	thumb_func_start sub_02009EAC
sub_02009EAC: ; 0x02009EAC
	push {r4, lr}
	add r4, r0, #0
	bne _02009EB6
	bl sub_02022974
_02009EB6:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009EAC

	thumb_func_start sub_02009EBC
sub_02009EBC: ; 0x02009EBC
	push {r4, lr}
	add r4, r0, #0
	bne _02009EC6
	bl sub_02022974
_02009EC6:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02009ED6
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #4]
	pop {r4, pc}
_02009ED6:
	cmp r0, #1
	bne _02009EE4
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #4]
	pop {r4, pc}
_02009EE4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02009EBC

	thumb_func_start sub_02009EE8
sub_02009EE8: ; 0x02009EE8
	push {r4, lr}
	add r4, r0, #0
	bne _02009EF2
	bl sub_02022974
_02009EF2:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02009F02
	add r0, r4, #0
	bl sub_0200A20C
	ldr r0, [r0, #8]
	pop {r4, pc}
_02009F02:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009EE8

	thumb_func_start sub_02009F08
sub_02009F08: ; 0x02009F08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009F16
	bl sub_02022974
_02009F16:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02009F24
	add r0, r5, #0
	bl sub_0200A20C
	str r4, [r0, #4]
_02009F24:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _02009F32
	add r0, r5, #0
	bl sub_0200A20C
	str r4, [r0, #4]
_02009F32:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02009F08

	thumb_func_start sub_02009F34
sub_02009F34: ; 0x02009F34
	mov r0, #0x10
	bx lr
	thumb_func_end sub_02009F34

	thumb_func_start sub_02009F38
sub_02009F38: ; 0x02009F38
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02009F38

	thumb_func_start sub_02009F40
sub_02009F40: ; 0x02009F40
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _02009F50
	bl sub_02022974
_02009F50:
	ldr r0, [r5, #0]
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #0xc]
	add r0, r5, #4
	bl sub_0200A2C0
	add r2, r0, #0
	str r0, [r4, #4]
	cmp r2, #0
	ble _02009F72
	mov r1, #0x18
	add r0, r6, #0
	mul r1, r2
	bl sub_02018144
	b _02009F74
_02009F72:
	mov r0, #0
_02009F74:
	str r0, [r4, #0]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02009F88
	ldr r3, [r4, #4]
	mov r2, #0x18
	add r1, r5, #4
	mul r2, r3
	bl sub_020D50B8
_02009F88:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02009F40

	thumb_func_start sub_02009F8C
sub_02009F8C: ; 0x02009F8C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02009F9A
	bl sub_020181C4
_02009F9A:
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009F8C

	thumb_func_start sub_02009FA4
sub_02009FA4: ; 0x02009FA4
	push {r4, lr}
	add r4, r0, #0
	bne _02009FAE
	bl sub_02022974
_02009FAE:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02009FA4

	thumb_func_start sub_02009FB4
sub_02009FB4: ; 0x02009FB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009FC2
	bl sub_02022974
_02009FC2:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _02009FCC
	bl sub_02022974
_02009FCC:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5, #0]
	cmp r0, #0
	bne _02009FDC
	mov r0, #0x4c
	mul r0, r4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
_02009FDC:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02009FB4

	thumb_func_start sub_02009FE8
sub_02009FE8: ; 0x02009FE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02009FF6
	bl sub_02022974
_02009FF6:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A000
	bl sub_02022974
_0200A000:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _0200A010
	mov r0, #0x18
	ldr r1, [r5, #0]
	mul r0, r4
	add r0, r1, r0
	ldr r6, [r0, #4]
_0200A010:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02009FE8

	thumb_func_start sub_0200A014
sub_0200A014: ; 0x0200A014
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A022
	bl sub_02022974
_0200A022:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A02C
	bl sub_02022974
_0200A02C:
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _0200A03C
	mov r0, #0x18
	ldr r1, [r5, #0]
	mul r0, r4
	add r0, r1, r0
	ldr r6, [r0, #8]
_0200A03C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A014

	thumb_func_start sub_0200A040
sub_0200A040: ; 0x0200A040
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A04E
	bl sub_02022974
_0200A04E:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A058
	bl sub_02022974
_0200A058:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5, #0]
	cmp r0, #0
	bne _0200A06A
	mov r0, #0x4c
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x44]
	pop {r3, r4, r5, pc}
_0200A06A:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200A040

	thumb_func_start sub_0200A074
sub_0200A074: ; 0x0200A074
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A082
	bl sub_02022974
_0200A082:
	ldr r0, [r5, #4]
	cmp r0, r4
	bgt _0200A08C
	bl sub_02022974
_0200A08C:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5, #0]
	cmp r0, #0
	bne _0200A09E
	mov r0, #0x4c
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x48]
	pop {r3, r4, r5, pc}
_0200A09E:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200A074

	thumb_func_start sub_0200A0A8
sub_0200A0A8: ; 0x0200A0A8
	push {r3, r4}
	ldr r4, [r0, #8]
	mov r1, #0
	cmp r4, #0
	ble _0200A0CE
	ldr r3, [r0, #4]
	add r2, r3, #0
_0200A0B6:
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _0200A0C6
	mov r0, #0xc
	mul r0, r1
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_0200A0C6:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, r4
	blt _0200A0B6
_0200A0CE:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0200A0A8

	thumb_func_start sub_0200A0D4
sub_0200A0D4: ; 0x0200A0D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r5, [sp, #0x18]
	bl sub_02022B54
	cmp r6, #5
	bhi _0200A142
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200A0F6: ; jump table
	.short _0200A102 - _0200A0F6 - 2 ; case 0
	.short _0200A10E - _0200A0F6 - 2 ; case 1
	.short _0200A11C - _0200A0F6 - 2 ; case 2
	.short _0200A126 - _0200A0F6 - 2 ; case 3
	.short _0200A130 - _0200A0F6 - 2 ; case 4
	.short _0200A13A - _0200A0F6 - 2 ; case 5
_0200A102:
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200A144
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A10E:
	ldr r2, [sp]
	add r1, r7, #0
	add r3, r5, #0
	bl sub_0200A164
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A11C:
	add r1, r5, #0
	bl sub_0200A188
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A126:
	add r1, r5, #0
	bl sub_0200A1A4
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A130:
	add r1, r5, #0
	bl sub_0200A1C0
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0200A13A:
	add r1, r5, #0
	bl sub_0200A1DC
	str r0, [r4, #8]
_0200A142:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200A0D4

	thumb_func_start sub_0200A144
sub_0200A144: ; 0x0200A144
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020A7118
	str r5, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200A144

	thumb_func_start sub_0200A164
sub_0200A164: ; 0x0200A164
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0xc
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020A71B0
	str r5, [r4, #4]
	str r6, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200A164

	thumb_func_start sub_0200A188
sub_0200A188: ; 0x0200A188
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020A6F38
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A188

	thumb_func_start sub_0200A1A4
sub_0200A1A4: ; 0x0200A1A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020A6D88
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A1A4

	thumb_func_start sub_0200A1C0
sub_0200A1C0: ; 0x0200A1C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020A7038
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A1C0

	thumb_func_start sub_0200A1DC
sub_0200A1DC: ; 0x0200A1DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020A6D94
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A1DC

	thumb_func_start sub_0200A1F8
sub_0200A1F8: ; 0x0200A1F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0200A206
	bl sub_020181C4
_0200A206:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0200A1F8

	thumb_func_start sub_0200A20C
sub_0200A20C: ; 0x0200A20C
	push {r4, lr}
	add r4, r0, #0
	bne _0200A216
	bl sub_02022974
_0200A216:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0200A220
	bl sub_02022974
_0200A220:
	ldr r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0200A20C

	thumb_func_start sub_0200A224
sub_0200A224: ; 0x0200A224
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x1c]
	bl sub_02022A58
	str r0, [r4, #0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	bl sub_0200A0D4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200A224

	thumb_func_start sub_0200A250
sub_0200A250: ; 0x0200A250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl sub_02006FE8
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x14]
	bl sub_02022A1C
	str r0, [r4, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200A0D4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A250

	thumb_func_start sub_0200A288
sub_0200A288: ; 0x0200A288
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl sub_0200A2DC
	add r1, r0, #0
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x14]
	bl sub_02022A1C
	str r0, [r4, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #4]
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200A0D4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A288

	thumb_func_start sub_0200A2C0
sub_0200A2C0: ; 0x0200A2C0
	mov r3, #0
	ldr r2, [r0, #0]
	sub r1, r3, #2
	cmp r2, r1
	beq _0200A2D6
	sub r1, r3, #2
_0200A2CC:
	add r0, #0x18
	ldr r2, [r0, #0]
	add r3, r3, #1
	cmp r2, r1
	bne _0200A2CC
_0200A2D6:
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200A2C0

	thumb_func_start sub_0200A2DC
sub_0200A2DC: ; 0x0200A2DC
	push {r4, r5, r6, lr}
	add r6, r3, #0
	add r5, r2, #0
	add r2, r6, #0
	bl sub_02006CB8
	add r4, r0, #0
	beq _0200A322
	cmp r5, #0
	beq _0200A322
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200A302
	ldr r1, [r4, #0]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_02018144
	b _0200A30C
_0200A302:
	ldr r1, [r4, #0]
	add r0, r6, #0
	lsr r1, r1, #8
	bl sub_02018184
_0200A30C:
	add r5, r0, #0
	cmp r5, #0
	beq _0200A320
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020C4F48
	add r0, r4, #0
	bl sub_020181C4
_0200A320:
	add r4, r5, #0
_0200A322:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200A2DC

	thumb_func_start sub_0200A328
sub_0200A328: ; 0x0200A328
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A334
	bl sub_02022974
_0200A334:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A342
	bl sub_02022974
_0200A342:
	add r0, r4, #0
	bl sub_02009E1C
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_0201EA24
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A328

	thumb_func_start sub_0200A368
sub_0200A368: ; 0x0200A368
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A372
	bl sub_02022974
_0200A372:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A39A
	add r4, r6, #0
_0200A37C:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A390
	bl sub_0200A328
	cmp r0, #0
	bne _0200A390
	bl sub_02022974
_0200A390:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A37C
_0200A39A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A368

	thumb_func_start sub_0200A39C
sub_0200A39C: ; 0x0200A39C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A3A8
	bl sub_02022974
_0200A3A8:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A3B6
	bl sub_02022974
_0200A3B6:
	add r0, r4, #0
	bl sub_02009E1C
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_0201EA7C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A39C

	thumb_func_start sub_0200A3DC
sub_0200A3DC: ; 0x0200A3DC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A3E8
	bl sub_02022974
_0200A3E8:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A3F6
	bl sub_02022974
_0200A3F6:
	add r0, r4, #0
	bl sub_02009E1C
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_0201EA24
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A3DC

	thumb_func_start sub_0200A41C
sub_0200A41C: ; 0x0200A41C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A426
	bl sub_02022974
_0200A426:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A44E
	add r4, r6, #0
_0200A430:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A444
	bl sub_0200A3DC
	cmp r0, #0
	bne _0200A444
	bl sub_02022974
_0200A444:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A430
_0200A44E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A41C

	thumb_func_start sub_0200A450
sub_0200A450: ; 0x0200A450
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A45C
	bl sub_02022974
_0200A45C:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A46A
	bl sub_02022974
_0200A46A:
	add r0, r4, #0
	bl sub_02009E1C
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_0201EA7C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A450

	thumb_func_start sub_0200A490
sub_0200A490: ; 0x0200A490
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _0200A49E
	bl sub_02022974
_0200A49E:
	cmp r5, #0
	bne _0200A4A6
	bl sub_02022974
_0200A4A6:
	add r0, r4, #0
	bl sub_02009E08
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02009E1C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0201EB08
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A490

	thumb_func_start sub_0200A4C0
sub_0200A4C0: ; 0x0200A4C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _0200A4CA
	bl sub_02022974
_0200A4CA:
	add r0, r5, #0
	bl sub_02009E08
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02009E1C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0201EB08
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A4C0

	thumb_func_start sub_0200A4E4
sub_0200A4E4: ; 0x0200A4E4
	push {r4, lr}
	add r4, r0, #0
	bne _0200A4EE
	bl sub_02022974
_0200A4EE:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A4FC
	bl sub_02022974
_0200A4FC:
	add r0, r4, #0
	bl sub_02009E08
	bl sub_0201EB50
	pop {r4, pc}
	thumb_func_end sub_0200A4E4

	thumb_func_start sub_0200A508
sub_0200A508: ; 0x0200A508
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A512
	bl sub_02022974
_0200A512:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A532
	add r4, r6, #0
_0200A51C:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A528
	bl sub_0200A4E4
_0200A528:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A51C
_0200A532:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A508

	thumb_func_start sub_0200A534
sub_0200A534: ; 0x0200A534
	push {r4, lr}
	add r4, r0, #0
	bne _0200A53E
	bl sub_02022974
_0200A53E:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A54C
	bl sub_02022974
_0200A54C:
	add r0, r4, #0
	bl sub_02009E08
	bl sub_0201EBDC
	pop {r4, pc}
	thumb_func_end sub_0200A534

	thumb_func_start sub_0200A558
sub_0200A558: ; 0x0200A558
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _0200A566
	bl sub_02022974
_0200A566:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #0
	beq _0200A574
	bl sub_02022974
_0200A574:
	cmp r5, #0
	bne _0200A57C
	bl sub_02022974
_0200A57C:
	add r0, r5, #0
	bl sub_02009EAC
	cmp r0, #2
	beq _0200A58A
	bl sub_02022974
_0200A58A:
	add r0, r4, #0
	bl sub_02009E08
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02009E4C
	add r1, r0, #0
	ldr r1, [r1, #0xc]
	add r0, r4, #0
	ldr r1, [r1, #0]
	bl sub_0201EC00
	cmp r0, #0
	bne _0200A5B2
	add r0, r4, #0
	bl sub_0201EBDC
	bl sub_0201EC84
_0200A5B2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200A558

	thumb_func_start sub_0200A5B4
sub_0200A5B4: ; 0x0200A5B4
	push {r4, lr}
	add r4, r0, #0
	bne _0200A5BE
	bl sub_02022974
_0200A5BE:
	add r0, r4, #0
	bl sub_0201ED1C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200A5B4

	thumb_func_start sub_0200A5C8
sub_0200A5C8: ; 0x0200A5C8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A5D4
	bl sub_02022974
_0200A5D4:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #1
	beq _0200A5E2
	bl sub_02022974
_0200A5E2:
	add r0, r4, #0
	bl sub_02009E34
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02009EE8
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_0201F90C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A5C8

	thumb_func_start sub_0200A60C
sub_0200A60C: ; 0x0200A60C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A616
	bl sub_02022974
_0200A616:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A63E
	add r4, r6, #0
_0200A620:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A634
	bl sub_0200A5C8
	cmp r0, #0
	bne _0200A634
	bl sub_02022974
_0200A634:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A620
_0200A63E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A60C

	thumb_func_start sub_0200A640
sub_0200A640: ; 0x0200A640
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bne _0200A64C
	bl sub_02022974
_0200A64C:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #1
	beq _0200A65A
	bl sub_02022974
_0200A65A:
	add r0, r4, #0
	bl sub_02009E34
	str r0, [sp]
	add r0, r4, #0
	bl sub_02009EBC
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02009E08
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02009EE8
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_0201F950
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_0200A640

	thumb_func_start sub_0200A684
sub_0200A684: ; 0x0200A684
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A68E
	bl sub_02022974
_0200A68E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A6B6
	add r4, r6, #0
_0200A698:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A6AC
	bl sub_0200A640
	cmp r0, #0
	bne _0200A6AC
	bl sub_02022974
_0200A6AC:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A698
_0200A6B6:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A684

	thumb_func_start sub_0200A6B8
sub_0200A6B8: ; 0x0200A6B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bne _0200A6C2
	bl sub_02022974
_0200A6C2:
	add r0, r5, #0
	bl sub_02009E08
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02009E34
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0201F990
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200A6B8

	thumb_func_start sub_0200A6DC
sub_0200A6DC: ; 0x0200A6DC
	push {r4, lr}
	add r4, r0, #0
	bne _0200A6E6
	bl sub_02022974
_0200A6E6:
	add r0, r4, #0
	bl sub_02009EAC
	cmp r0, #1
	beq _0200A6F4
	bl sub_02022974
_0200A6F4:
	add r0, r4, #0
	bl sub_02009E08
	bl sub_0201F9F0
	pop {r4, pc}
	thumb_func_end sub_0200A6DC

	thumb_func_start sub_0200A700
sub_0200A700: ; 0x0200A700
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _0200A70A
	bl sub_02022974
_0200A70A:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0200A72A
	add r4, r6, #0
_0200A714:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200A720
	bl sub_0200A6DC
_0200A720:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200A714
_0200A72A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200A700

	thumb_func_start sub_0200A72C
sub_0200A72C: ; 0x0200A72C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0200A73A
	bl sub_02022974
_0200A73A:
	add r0, r5, #0
	bl sub_02009EAC
	cmp r0, #1
	beq _0200A748
	bl sub_02022974
_0200A748:
	add r0, r5, #0
	bl sub_02009E08
	cmp r4, #0
	beq _0200A75A
	add r1, r4, #0
	bl sub_0201FA80
	pop {r3, r4, r5, pc}
_0200A75A:
	bl sub_0201FA58
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200A72C

	thumb_func_start sub_0200A760
sub_0200A760: ; 0x0200A760
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0
	bl sub_0200A72C
	add r1, r4, #0
	bl sub_020A81FC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0200A780
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	asr r0, r1, #5
_0200A780:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200A760

	thumb_func_start sub_0200A784
sub_0200A784: ; 0x0200A784
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	cmp r4, #4
	bge _0200A798
	mov r0, #4
	cmp r1, #0x7c
	ble _0200A798
	sub r4, r0, r4
	sub r1, r1, r4
_0200A798:
	cmp r2, #1
	bge _0200A7A8
	mov r4, #1
	cmp r3, #0x1e
	ble _0200A7AA
	sub r2, r4, r2
	sub r3, r3, r2
	b _0200A7AA
_0200A7A8:
	add r4, r2, #0
_0200A7AA:
	ldr r2, [sp, #0x20]
	str r2, [sp]
	ldr r2, [sp, #0x24]
	str r2, [sp, #4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #8]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0x10]
	add r2, r4, #0
	bl sub_0200A7C8
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end sub_0200A784

	thumb_func_start sub_0200A7C8
sub_0200A7C8: ; 0x0200A7C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0200A854 ; =0x021BF430
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0200A7E0
	bl sub_02022974
_0200A7E0:
	ldr r0, [sp, #0x30]
	mov r1, #0x3c
	bl sub_02018144
	ldr r1, _0200A854 ; =0x021BF430
	cmp r0, #0
	str r0, [r1, #0]
	bne _0200A7F4
	bl sub_02022974
_0200A7F4:
	ldr r1, _0200A854 ; =0x021BF430
	lsl r3, r6, #0x10
	ldr r2, [sp, #0x30]
	ldr r0, [r1, #0]
	lsr r3, r3, #0x10
	str r2, [r0, #0x38]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_020A7A04
	cmp r0, #0
	bne _0200A820
	bl sub_02022974
_0200A820:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0200A854 ; =0x021BF430
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldr r0, [r0, #0]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_020A7A04
	cmp r0, #0
	bne _0200A850
	bl sub_02022974
_0200A850:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200A854: .word 0x021BF430
	thumb_func_end sub_0200A7C8

	thumb_func_start sub_0200A858
sub_0200A858: ; 0x0200A858
	push {r3, lr}
	ldr r0, _0200A874 ; =0x021BF430
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0200A870
	bl sub_020A8124
	ldr r0, _0200A874 ; =0x021BF430
	ldr r0, [r0, #0]
	add r0, #0x1c
	bl sub_020A8124
_0200A870:
	pop {r3, pc}
	nop
_0200A874: .word 0x021BF430
	thumb_func_end sub_0200A858

	thumb_func_start sub_0200A878
sub_0200A878: ; 0x0200A878
	push {r3, lr}
	ldr r0, _0200A8AC ; =0x021BF430
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0200A886
	bl sub_02022974
_0200A886:
	ldr r0, _0200A8AC ; =0x021BF430
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0200A93C
	ldr r0, _0200A8AC ; =0x021BF430
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x38]
	bl sub_0200A944
	ldr r0, _0200A8AC ; =0x021BF430
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0200A8AC ; =0x021BF430
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_0200A8AC: .word 0x021BF430
	thumb_func_end sub_0200A878

	thumb_func_start sub_0200A8B0
sub_0200A8B0: ; 0x0200A8B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _0200A8FC ; =0x021BF430
	add r7, r1, #0
	ldr r0, [r0, #0]
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _0200A8C8
	bl sub_02022974
_0200A8C8:
	cmp r5, #1
	bne _0200A8E4
	ldr r0, _0200A900 ; =sub_020230F0
	ldr r2, _0200A904 ; =sub_0200A94C
	str r0, [sp]
	str r5, [sp, #4]
	ldr r3, _0200A908 ; =sub_0200A990
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #8]
	bl sub_020230AC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0200A8E4:
	ldr r0, _0200A900 ; =sub_020230F0
	ldr r2, _0200A90C ; =sub_0200A96C
	str r0, [sp]
	str r5, [sp, #4]
	ldr r3, _0200A910 ; =sub_0200A9B4
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #8]
	bl sub_020230AC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0200A8FC: .word 0x021BF430
_0200A900: .word sub_020230F0
_0200A904: .word sub_0200A94C
_0200A908: .word sub_0200A990
_0200A90C: .word sub_0200A96C
_0200A910: .word sub_0200A9B4
	thumb_func_end sub_0200A8B0

	thumb_func_start sub_0200A914
sub_0200A914: ; 0x0200A914
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0200A938 ; =0x021BF430
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0200A924
	bl sub_02022974
_0200A924:
	cmp r4, #0
	bne _0200A92E
	ldr r0, _0200A938 ; =0x021BF430
	ldr r0, [r0, #0]
	pop {r4, pc}
_0200A92E:
	ldr r0, _0200A938 ; =0x021BF430
	ldr r0, [r0, #0]
	add r0, #0x1c
	pop {r4, pc}
	nop
_0200A938: .word 0x021BF430
	thumb_func_end sub_0200A914

	thumb_func_start sub_0200A93C
sub_0200A93C: ; 0x0200A93C
	ldr r3, _0200A940 ; =sub_02022014
	bx r3
	; .align 2, 0
_0200A940: .word sub_02022014
	thumb_func_end sub_0200A93C

	thumb_func_start sub_0200A944
sub_0200A944: ; 0x0200A944
	ldr r3, _0200A948 ; =sub_0202204C
	bx r3
	; .align 2, 0
_0200A948: .word sub_0202204C
	thumb_func_end sub_0200A944

	thumb_func_start sub_0200A94C
sub_0200A94C: ; 0x0200A94C
	push {r4, lr}
	add r3, r0, #0
	ldr r0, _0200A968 ; =0x021BF430
	add r2, r1, #0
	ldr r0, [r0, #0]
	add r1, r3, #0
	bl sub_020A7C50
	add r4, r0, #0
	bne _0200A964
	bl sub_02022974
_0200A964:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0200A968: .word 0x021BF430
	thumb_func_end sub_0200A94C

	thumb_func_start sub_0200A96C
sub_0200A96C: ; 0x0200A96C
	push {r4, lr}
	add r3, r0, #0
	ldr r0, _0200A98C ; =0x021BF430
	add r2, r1, #0
	ldr r0, [r0, #0]
	add r1, r3, #0
	add r0, #0x1c
	bl sub_020A7C50
	add r4, r0, #0
	bne _0200A986
	bl sub_02022974
_0200A986:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0200A98C: .word 0x021BF430
	thumb_func_end sub_0200A96C

	thumb_func_start sub_0200A990
sub_0200A990: ; 0x0200A990
	push {r4, lr}
	add r1, r0, #0
	ldr r0, _0200A9AC ; =0x021BF430
	ldr r0, [r0, #0]
	bl sub_020A7D34
	add r4, r0, #0
	ldr r0, _0200A9B0 ; =0x0000FFFE
	cmp r4, r0
	bne _0200A9A8
	bl sub_02022974
_0200A9A8:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0200A9AC: .word 0x021BF430
_0200A9B0: .word 0x0000FFFE
	thumb_func_end sub_0200A990

	thumb_func_start sub_0200A9B4
sub_0200A9B4: ; 0x0200A9B4
	push {r4, lr}
	add r1, r0, #0
	ldr r0, _0200A9D4 ; =0x021BF430
	ldr r0, [r0, #0]
	add r0, #0x1c
	bl sub_020A7D34
	add r4, r0, #0
	ldr r0, _0200A9D8 ; =0x0000FFFE
	cmp r4, r0
	bne _0200A9CE
	bl sub_02022974
_0200A9CE:
	add r0, r4, #0
	pop {r4, pc}
	nop
_0200A9D4: .word 0x021BF430
_0200A9D8: .word 0x0000FFFE
	thumb_func_end sub_0200A9B4

	thumb_func_start sub_0200A9DC
sub_0200A9DC: ; 0x0200A9DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x10
	ldrsb r2, [r5, r0]
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r1, r2, #0
	mov r7, #0x1a
	ldrsh r2, [r5, r7]
	mul r1, r0
	mov r6, #0xa
	ldrsh r0, [r5, r6]
	add r1, r2, r1
	mov r4, #0
	cmp r0, r1
	beq _0200AA3A
	cmp r2, r0
	beq _0200AA3A
	strh r1, [r5, #0x1a]
	ldrh r3, [r5, #0x18]
	ldrh r0, [r5, #0x16]
	add r2, r5, #0
	add r1, r5, #0
	add r0, r3, r0
	strh r0, [r5, #0x18]
	ldrh r3, [r5, #0x18]
	ldrh r0, [r5, #8]
	add r2, #0x1a
	add r1, #0x18
	cmp r3, r0
	blo _0200AA3E
	mov r3, #0x10
	ldrsh r0, [r2, r4]
	ldrsb r3, [r5, r3]
	add r0, r0, r3
	strh r0, [r2]
	ldrsh r2, [r5, r7]
	ldrsh r0, [r5, r6]
	cmp r2, r0
	beq _0200AA36
	ldrh r2, [r1]
	ldrh r0, [r5, #8]
	sub r0, r2, r0
	strh r0, [r1]
	b _0200AA3E
_0200AA36:
	mov r4, #1
	b _0200AA3E
_0200AA3A:
	strh r0, [r5, #0x1a]
	mov r4, #1
_0200AA3E:
	ldr r1, [r5, #4]
	mov r0, #1
	tst r0, r1
	beq _0200AA54
	mov r2, #0x1a
	ldrsh r2, [r5, r2]
	ldr r0, _0200AA70 ; =0x04000050
	ldr r1, [r5, #0]
	bl sub_020BF578
	b _0200AA66
_0200AA54:
	mov r0, #2
	tst r0, r1
	beq _0200AA66
	mov r2, #0x1a
	ldrsh r2, [r5, r2]
	ldr r0, _0200AA74 ; =0x04001050
	ldr r1, [r5, #0]
	bl sub_020BF578
_0200AA66:
	cmp r4, #1
	bne _0200AA6E
	mov r0, #0
	str r0, [r5, #0x1c]
_0200AA6E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200AA70: .word 0x04000050
_0200AA74: .word 0x04001050
	thumb_func_end sub_0200A9DC

	thumb_func_start sub_0200AA78
sub_0200AA78: ; 0x0200AA78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0200AA8C
	bl sub_02022974
_0200AA8C:
	ldr r1, [sp, #0x18]
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [r5, #0x1c]
	lsr r1, r1, #0x18
	str r1, [r5, #0]
	ldr r1, [sp, #0x1c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [r5, #4]
	strh r4, [r5, #8]
	strh r6, [r5, #0xa]
	strh r7, [r5, #0x1a]
	sub r1, r7, r6
	strh r1, [r5, #0x12]
	mov r1, #0x12
	ldrsh r2, [r5, r1]
	cmp r2, #0
	ble _0200AAB8
	sub r1, #0x13
	strb r1, [r5, #0x10]
	b _0200AAC2
_0200AAB8:
	strb r0, [r5, #0x10]
	ldrsh r0, [r5, r1]
	sub r1, #0x13
	mul r1, r0
	strh r1, [r5, #0x12]
_0200AAC2:
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r1, r4, #0
	bl sub_020E1F6C
	strh r0, [r5, #0x14]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r1, r4, #0
	bl sub_020E1F6C
	strh r1, [r5, #0x16]
	mov r0, #0
	strh r0, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200AA78

	thumb_func_start sub_0200AAE0
sub_0200AAE0: ; 0x0200AAE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	cmp r5, #0
	beq _0200AB36
	ldr r1, [sp, #0x20]
	mov r0, #1
	tst r0, r1
	beq _0200AB12
	ldr r0, _0200AB3C ; =0x04000050
	add r1, r4, #0
	bl sub_020BF578
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0200AB40 ; =0x021BF454
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0200AA78
_0200AB12:
	ldr r1, [sp, #0x20]
	mov r0, #2
	tst r0, r1
	beq _0200AB36
	ldr r0, _0200AB44 ; =0x04001050
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020BF578
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0200AB48 ; =0x021BF434
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0200AA78
_0200AB36:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200AB3C: .word 0x04000050
_0200AB40: .word 0x021BF454
_0200AB44: .word 0x04001050
_0200AB48: .word 0x021BF434
	thumb_func_end sub_0200AAE0

	thumb_func_start sub_0200AB4C
sub_0200AB4C: ; 0x0200AB4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #1
	add r6, r1, #0
	tst r0, r4
	beq _0200AB62
	ldr r0, _0200AB7C ; =0x04000050
	add r2, r5, #0
	bl sub_020BF578
_0200AB62:
	mov r0, #2
	tst r0, r4
	beq _0200AB72
	ldr r0, _0200AB80 ; =0x04001050
	add r1, r6, #0
	add r2, r5, #0
	bl sub_020BF578
_0200AB72:
	add r0, r4, #0
	bl sub_0200ABB0
	pop {r4, r5, r6, pc}
	nop
_0200AB7C: .word 0x04000050
_0200AB80: .word 0x04001050
	thumb_func_end sub_0200AB4C

	thumb_func_start sub_0200AB84
sub_0200AB84: ; 0x0200AB84
	push {r3, lr}
	ldr r0, _0200ABA4 ; =0x021BF454
	mov r1, #0
	mov r2, #0x20
	bl sub_020C4CF4
	ldr r0, _0200ABA8 ; =0x021BF434
	mov r1, #0
	mov r2, #0x20
	bl sub_020C4CF4
	ldr r0, _0200ABAC ; =0x021BF434
	mov r1, #0
	str r1, [r0, #0x3c]
	str r1, [r0, #0x1c]
	pop {r3, pc}
	; .align 2, 0
_0200ABA4: .word 0x021BF454
_0200ABA8: .word 0x021BF434
_0200ABAC: .word 0x021BF434
	thumb_func_end sub_0200AB84

	thumb_func_start sub_0200ABB0
sub_0200ABB0: ; 0x0200ABB0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	tst r0, r4
	beq _0200ABCA
	ldr r0, _0200ABE4 ; =0x021BF454
	mov r1, #0
	mov r2, #0x20
	bl sub_020C4CF4
	ldr r0, _0200ABE8 ; =0x021BF434
	mov r1, #0
	str r1, [r0, #0x3c]
_0200ABCA:
	mov r0, #2
	tst r0, r4
	beq _0200ABE0
	ldr r0, _0200ABEC ; =0x021BF434
	mov r1, #0
	mov r2, #0x20
	bl sub_020C4CF4
	ldr r0, _0200ABE8 ; =0x021BF434
	mov r1, #0
	str r1, [r0, #0x1c]
_0200ABE0:
	pop {r4, pc}
	nop
_0200ABE4: .word 0x021BF454
_0200ABE8: .word 0x021BF434
_0200ABEC: .word 0x021BF434
	thumb_func_end sub_0200ABB0

	thumb_func_start sub_0200ABF0
sub_0200ABF0: ; 0x0200ABF0
	push {r3, lr}
	ldr r0, _0200AC10 ; =0x021BF434
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0200AC00
	ldr r0, _0200AC14 ; =0x021BF454
	bl sub_0200A9DC
_0200AC00:
	ldr r0, _0200AC10 ; =0x021BF434
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0200AC0E
	ldr r0, _0200AC18 ; =0x021BF434
	bl sub_0200A9DC
_0200AC0E:
	pop {r3, pc}
	; .align 2, 0
_0200AC10: .word 0x021BF434
_0200AC14: .word 0x021BF454
_0200AC18: .word 0x021BF434
	thumb_func_end sub_0200ABF0

	thumb_func_start sub_0200AC1C
sub_0200AC1C: ; 0x0200AC1C
	cmp r0, #3
	bne _0200AC32
	ldr r0, _0200AC58 ; =0x021BF434
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	bne _0200AC52
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0200AC52
	mov r0, #1
	bx lr
_0200AC32:
	cmp r0, #1
	bne _0200AC42
	ldr r0, _0200AC58 ; =0x021BF434
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _0200AC52
	mov r0, #1
	bx lr
_0200AC42:
	cmp r0, #2
	bne _0200AC52
	ldr r0, _0200AC58 ; =0x021BF434
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0200AC52
	mov r0, #1
	bx lr
_0200AC52:
	mov r0, #0
	bx lr
	nop
_0200AC58: .word 0x021BF434
	thumb_func_end sub_0200AC1C

	thumb_func_start sub_0200AC5C
sub_0200AC5C: ; 0x0200AC5C
	ldr r3, _0200AC60 ; =sub_02006AC0
	bx r3
	; .align 2, 0
_0200AC60: .word sub_02006AC0
	thumb_func_end sub_0200AC5C

	thumb_func_start sub_0200AC64
sub_0200AC64: ; 0x0200AC64
	ldr r3, _0200AC68 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0200AC68: .word sub_020181C4
	thumb_func_end sub_0200AC64

	thumb_func_start sub_0200AC6C
sub_0200AC6C: ; 0x0200AC6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r3, r0, #0
	ldrh r0, [r3]
	add r5, r1, #0
	add r4, r2, #0
	cmp r5, r0
	bhs _0200ACDC
	lsl r0, r5, #3
	add r0, r3, r0
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	ldr r6, _0200ACE4 ; =0x000002FD
	str r2, [sp]
	str r1, [sp, #4]
	ldrh r0, [r3, #2]
	add r7, r5, #1
	mul r6, r0
	add r0, r7, #0
	mul r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	lsl r0, r6, #0x10
	orr r0, r6
	eor r2, r0
	eor r0, r1
	str r0, [sp, #4]
	str r2, [sp]
	add r1, r3, r2
	add r0, r4, #0
	add r2, sp, #0
	bl sub_0200AD98
	ldr r2, [sp, #4]
	ldr r0, _0200ACE8 ; =0x00091BD3
	add r1, r7, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	sub r3, r2, #1
	cmp r2, #0
	beq _0200ACE0
	ldr r0, _0200ACEC ; =0x0000493D
_0200ACC2:
	ldrh r1, [r4]
	eor r1, r5
	strh r1, [r4]
	add r1, r5, r0
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	add r1, r3, #0
	add r4, r4, #2
	sub r3, r3, #1
	cmp r1, #0
	bne _0200ACC2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0200ACDC:
	bl sub_02022974
_0200ACE0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200ACE4: .word 0x000002FD
_0200ACE8: .word 0x00091BD3
_0200ACEC: .word 0x0000493D
	thumb_func_end sub_0200AC6C

	thumb_func_start sub_0200ACF0
sub_0200ACF0: ; 0x0200ACF0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	bl sub_02006C24
	add r6, r0, #0
	beq _0200AD86
	add r1, sp, #0xc
	str r1, [sp]
	add r1, r5, #0
	mov r2, #0
	mov r3, #4
	bl sub_02006DC8
	add r0, sp, #4
	lsl r2, r4, #3
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r2, #4
	mov r3, #8
	bl sub_02006DC8
	add r0, sp, #4
	ldrh r2, [r0, #0xa]
	ldr r0, _0200AD8C ; =0x000002FD
	add r1, r4, #1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #4]
	eor r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	eor r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp]
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r6, #0
	lsl r3, r3, #1
	bl sub_02006DC8
	ldr r2, _0200AD90 ; =0x00091BD3
	add r3, r4, #1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #8]
	lsr r3, r2, #0x10
	sub r2, r0, #1
	ldr r1, [sp, #0x20]
	cmp r0, #0
	beq _0200AD80
	ldr r0, _0200AD94 ; =0x0000493D
_0200AD6A:
	ldrh r4, [r1]
	eor r4, r3
	strh r4, [r1]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r4, r2, #0
	add r1, r1, #2
	lsr r3, r3, #0x10
	sub r2, r2, #1
	cmp r4, #0
	bne _0200AD6A
_0200AD80:
	add r0, r6, #0
	bl sub_02006CA8
_0200AD86:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0200AD8C: .word 0x000002FD
_0200AD90: .word 0x00091BD3
_0200AD94: .word 0x0000493D
	thumb_func_end sub_0200ACF0

	thumb_func_start sub_0200AD98
sub_0200AD98: ; 0x0200AD98
	add r3, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	ldr r2, [r2, #4]
	ldr r3, _0200ADA8 ; =sub_020C4B18
	lsl r2, r2, #1
	bx r3
	nop
_0200ADA8: .word sub_020C4B18
	thumb_func_end sub_0200AD98

	thumb_func_start sub_0200ADAC
sub_0200ADAC: ; 0x0200ADAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	str r2, [sp]
	cmp r4, r0
	bhs _0200AE42
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldrh r1, [r5, #2]
	ldr r6, _0200AE50 ; =0x000002FD
	add r0, r4, #1
	mul r6, r1
	add r1, r0, #0
	mul r1, r6
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	add r0, r3, #0
	add r6, r2, #0
	str r3, [sp, #8]
	eor r0, r1
	eor r6, r1
	str r0, [sp, #8]
	lsl r0, r6, #1
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	ldr r1, [sp, #4]
	mov r0, #0
	str r6, [sp, #0xc]
	bl sub_02018184
	add r7, r0, #0
	beq _0200AE4C
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, r0
	add r1, r7, #0
	bl sub_020C4B18
	ldr r1, _0200AE54 ; =0x00091BD3
	add r2, r4, #1
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r0, r7, #0
	sub r1, r6, #1
	cmp r6, #0
	beq _0200AE2E
	ldr r3, _0200AE58 ; =0x0000493D
_0200AE18:
	ldrh r4, [r0]
	eor r4, r2
	strh r4, [r0]
	add r2, r2, r3
	lsl r2, r2, #0x10
	add r4, r1, #0
	add r0, r0, #2
	lsr r2, r2, #0x10
	sub r1, r1, #1
	cmp r4, #0
	bne _0200AE18
_0200AE2E:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02023D8C
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0200AE42:
	bl sub_02022974
	ldr r0, [sp]
	bl sub_020237E8
_0200AE4C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200AE50: .word 0x000002FD
_0200AE54: .word 0x00091BD3
_0200AE58: .word 0x0000493D
	thumb_func_end sub_0200ADAC

	thumb_func_start sub_0200AE5C
sub_0200AE5C: ; 0x0200AE5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	str r2, [sp]
	cmp r4, r0
	bhs _0200AF04
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r3, [r0, #4]
	ldr r2, [r0, #8]
	ldrh r1, [r5, #2]
	ldr r6, _0200AF14 ; =0x000002FD
	add r0, r4, #1
	mul r6, r1
	add r1, r0, #0
	mul r1, r6
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	add r0, r3, #0
	add r6, r2, #0
	str r3, [sp, #8]
	eor r0, r1
	eor r6, r1
	str r0, [sp, #8]
	lsl r0, r6, #1
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r6, [sp, #0xc]
	bl sub_02018184
	add r7, r0, #0
	beq _0200AEFE
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, r0
	add r1, r7, #0
	bl sub_020C4B18
	ldr r1, _0200AF18 ; =0x00091BD3
	add r2, r4, #1
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r0, r7, #0
	sub r1, r6, #1
	cmp r6, #0
	beq _0200AEDE
	ldr r3, _0200AF1C ; =0x0000493D
_0200AEC8:
	ldrh r4, [r0]
	eor r4, r2
	strh r4, [r0]
	add r2, r2, r3
	lsl r2, r2, #0x10
	add r4, r1, #0
	add r0, r0, #2
	lsr r2, r2, #0x10
	sub r1, r1, #1
	cmp r4, #0
	bne _0200AEC8
_0200AEDE:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02023790
	add r4, r0, #0
	beq _0200AEF2
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02023D8C
_0200AEF2:
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200AEFE:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200AF04:
	bl sub_02022974
	ldr r1, [sp]
	mov r0, #4
	bl sub_02023790
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200AF14: .word 0x000002FD
_0200AF18: .word 0x00091BD3
_0200AF1C: .word 0x0000493D
	thumb_func_end sub_0200AE5C

	thumb_func_start sub_0200AF20
sub_0200AF20: ; 0x0200AF20
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r1, #0
	add r1, r7, #0
	add r4, r2, #0
	bl sub_02006C24
	add r6, r0, #0
	beq _0200AF46
	ldr r1, [sp, #0x18]
	add r2, r4, #0
	str r1, [sp]
	add r1, r5, #0
	add r3, r7, #0
	bl sub_0200AF48
	add r0, r6, #0
	bl sub_02006CA8
_0200AF46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200AF20

	thumb_func_start sub_0200AF48
sub_0200AF48: ; 0x0200AF48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r2, sp, #0x10
	add r4, r3, #0
	str r2, [sp]
	mov r2, #0
	mov r3, #4
	add r7, r0, #0
	str r1, [sp, #4]
	bl sub_02006DC8
	add r0, sp, #8
	ldrh r0, [r0, #8]
	cmp r5, r0
	bhs _0200AFF6
	add r0, sp, #8
	lsl r2, r5, #3
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r2, #4
	mov r3, #8
	bl sub_02006DC8
	add r0, sp, #8
	ldrh r2, [r0, #0xa]
	ldr r0, _0200B004 ; =0x000002FD
	add r1, r5, #1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #8]
	eor r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	eor r0, r1
	lsl r6, r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02018184
	add r4, r0, #0
	beq _0200B000
	str r4, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_02006DC8
	ldr r2, _0200B008 ; =0x00091BD3
	add r3, r5, #1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0xc]
	lsr r3, r2, #0x10
	add r1, r4, #0
	sub r2, r0, #1
	cmp r0, #0
	beq _0200AFE2
	ldr r0, _0200B00C ; =0x0000493D
_0200AFCC:
	ldrh r5, [r1]
	eor r5, r3
	strh r5, [r1]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r5, r2, #0
	add r1, r1, #2
	lsr r3, r3, #0x10
	sub r2, r2, #1
	cmp r5, #0
	bne _0200AFCC
_0200AFE2:
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl sub_02023D8C
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0200AFF6:
	bl sub_02022974
	ldr r0, [sp, #0x28]
	bl sub_020237E8
_0200B000:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B004: .word 0x000002FD
_0200B008: .word 0x00091BD3
_0200B00C: .word 0x0000493D
	thumb_func_end sub_0200AF48

	thumb_func_start sub_0200B010
sub_0200B010: ; 0x0200B010
	push {r3, r4, r5, r6, r7, lr}
	add r6, r3, #0
	add r5, r1, #0
	add r1, r6, #0
	add r4, r2, #0
	bl sub_02006C24
	add r7, r0, #0
	beq _0200B036
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200B044
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02006CA8
	b _0200B040
_0200B036:
	mov r0, #4
	add r1, r6, #0
	bl sub_02023790
	add r4, r0, #0
_0200B040:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B010

	thumb_func_start sub_0200B044
sub_0200B044: ; 0x0200B044
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	add r2, sp, #0x14
	add r5, r3, #0
	str r2, [sp]
	mov r2, #0
	mov r3, #4
	add r7, r0, #0
	str r1, [sp, #4]
	bl sub_02006DC8
	add r0, sp, #0xc
	ldrh r0, [r0, #8]
	cmp r4, r0
	bhs _0200B102
	add r0, sp, #0xc
	lsl r2, r4, #3
	str r0, [sp]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r2, #4
	mov r3, #8
	bl sub_02006DC8
	add r0, sp, #0xc
	ldrh r2, [r0, #0xa]
	ldr r0, _0200B114 ; =0x000002FD
	add r1, r4, #1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #0xc]
	eor r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	eor r0, r1
	add r1, r5, #0
	str r0, [sp, #0x10]
	bl sub_02023790
	str r0, [sp, #8]
	cmp r0, #0
	beq _0200B0FC
	ldr r0, [sp, #0x10]
	lsl r6, r0, #1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02018184
	add r5, r0, #0
	beq _0200B0FC
	str r5, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r3, r6, #0
	bl sub_02006DC8
	ldr r2, _0200B118 ; =0x00091BD3
	add r3, r4, #1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x10]
	lsr r3, r2, #0x10
	add r1, r5, #0
	sub r2, r0, #1
	cmp r0, #0
	beq _0200B0EC
	ldr r0, _0200B11C ; =0x0000493D
_0200B0D6:
	ldrh r4, [r1]
	eor r4, r3
	strh r4, [r1]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r4, r2, #0
	add r1, r1, #2
	lsr r3, r3, #0x10
	sub r2, r2, #1
	cmp r4, #0
	bne _0200B0D6
_0200B0EC:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	bl sub_02023D8C
	add r0, r5, #0
	bl sub_020181C4
_0200B0FC:
	ldr r0, [sp, #8]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0200B102:
	bl sub_02022974
	mov r0, #4
	add r1, r5, #0
	bl sub_02023790
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200B114: .word 0x000002FD
_0200B118: .word 0x00091BD3
_0200B11C: .word 0x0000493D
	thumb_func_end sub_0200B044

	thumb_func_start sub_0200B120
sub_0200B120: ; 0x0200B120
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_0200B120

	thumb_func_start sub_0200B124
sub_0200B124: ; 0x0200B124
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	mov r0, #4
	add r2, r1, #0
	str r0, [sp]
	add r1, r3, #0
	add r0, sp, #4
	mov r3, #0
	bl sub_02006AFC
	add r0, sp, #4
	ldrh r0, [r0]
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200B124

	thumb_func_start sub_0200B144
sub_0200B144: ; 0x0200B144
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	mov r1, #0xc
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	add r4, r0, #0
	beq _0200B18C
	cmp r5, #0
	bne _0200B178
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200AC5C
	str r0, [r4, #8]
	cmp r0, #0
	bne _0200B182
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200B178:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_02006C24
	str r0, [r4, #8]
_0200B182:
	strh r5, [r4]
	strh r6, [r4, #4]
	ldr r0, [sp]
	strh r7, [r4, #6]
	strh r0, [r4, #2]
_0200B18C:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B144

	thumb_func_start sub_0200B190
sub_0200B190: ; 0x0200B190
	push {r4, lr}
	add r4, r0, #0
	beq _0200B1B6
	ldrh r0, [r4]
	cmp r0, #0
	beq _0200B1A2
	cmp r0, #1
	beq _0200B1AA
	b _0200B1B0
_0200B1A2:
	ldr r0, [r4, #8]
	bl sub_0200AC64
	b _0200B1B0
_0200B1AA:
	ldr r0, [r4, #8]
	bl sub_02006CA8
_0200B1B0:
	add r0, r4, #0
	bl sub_020181C4
_0200B1B6:
	pop {r4, pc}
	thumb_func_end sub_0200B190

	thumb_func_start sub_0200B1B8
sub_0200B1B8: ; 0x0200B1B8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	add r3, r1, #0
	cmp r0, #0
	beq _0200B1CE
	cmp r0, #1
	beq _0200B1D8
	add sp, #4
	pop {r3, r4, pc}
_0200B1CE:
	ldr r0, [r4, #8]
	bl sub_0200ADAC
	add sp, #4
	pop {r3, r4, pc}
_0200B1D8:
	str r2, [sp]
	add r2, r3, #0
	ldrh r1, [r4, #6]
	ldrh r3, [r4, #2]
	ldr r0, [r4, #8]
	bl sub_0200AF48
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200B1B8

	thumb_func_start sub_0200B1EC
sub_0200B1EC: ; 0x0200B1EC
	push {r3, lr}
	add r3, r0, #0
	ldrh r0, [r3]
	add r2, r1, #0
	cmp r0, #0
	beq _0200B1FE
	cmp r0, #1
	beq _0200B208
	b _0200B214
_0200B1FE:
	ldrh r2, [r3, #2]
	ldr r0, [r3, #8]
	bl sub_0200AE5C
	pop {r3, pc}
_0200B208:
	ldr r0, [r3, #8]
	ldrh r1, [r3, #6]
	ldrh r3, [r3, #2]
	bl sub_0200B044
	pop {r3, pc}
_0200B214:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0200B1EC

	thumb_func_start sub_0200B218
sub_0200B218: ; 0x0200B218
	push {r3, lr}
	add r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0200B228
	cmp r0, #1
	beq _0200B230
	b _0200B23A
_0200B228:
	ldr r0, [r1, #8]
	bl sub_0200B120
	pop {r3, pc}
_0200B230:
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	bl sub_0200B124
	pop {r3, pc}
_0200B23A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200B218

	thumb_func_start sub_0200B240
sub_0200B240: ; 0x0200B240
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	add r3, r1, #0
	cmp r0, #0
	beq _0200B256
	cmp r0, #1
	beq _0200B260
	add sp, #4
	pop {r3, r4, pc}
_0200B256:
	ldr r0, [r4, #8]
	bl sub_0200AC6C
	add sp, #4
	pop {r3, r4, pc}
_0200B260:
	str r2, [sp]
	add r2, r3, #0
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldrh r3, [r4, #2]
	bl sub_0200ACF0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200B240

	thumb_func_start sub_0200B274
sub_0200B274: ; 0x0200B274
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #0x67
	add r5, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r6, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200B240
	add r0, r6, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200B274

	thumb_func_start sub_0200B29C
sub_0200B29C: ; 0x0200B29C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xa
	add r6, r2, #0
	str r3, [sp]
	bl sub_02023790
	add r4, r0, #0
	beq _0200B2E6
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200B1EC
	add r5, r0, #0
	beq _0200B2E0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200C388
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02023868
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020237BC
_0200B2E0:
	add r0, r4, #0
	bl sub_020237BC
_0200B2E6:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B29C

	thumb_func_start sub_0200B2EC
sub_0200B2EC: ; 0x0200B2EC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r2, _0200B328 ; =0x00000287
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl sub_0200B144
	add r4, r0, #0
	beq _0200B322
	mov r0, #0x10
	add r1, r5, #0
	bl sub_02023790
	add r5, r0, #0
	beq _0200B318
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200B1B8
_0200B318:
	add r0, r4, #0
	bl sub_0200B190
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_0200B322:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0200B328: .word 0x00000287
	thumb_func_end sub_0200B2EC

	thumb_func_start sub_0200B32C
sub_0200B32C: ; 0x0200B32C
	push {r3, r4, r5, lr}
	mov r2, #0x67
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r5, r0, #0
	beq _0200B354
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0200B354:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200B32C

	thumb_func_start sub_0200B358
sub_0200B358: ; 0x0200B358
	ldr r3, _0200B364 ; =sub_0200B368
	add r2, r0, #0
	mov r0, #8
	mov r1, #0x20
	bx r3
	nop
_0200B364: .word sub_0200B368
	thumb_func_end sub_0200B358

	thumb_func_start sub_0200B368
sub_0200B368: ; 0x0200B368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	bne _0200B378
	bl sub_02022974
_0200B378:
	ldr r0, [sp]
	cmp r0, #0
	bne _0200B382
	bl sub_02022974
_0200B382:
	ldr r0, [sp, #4]
	mov r1, #0x10
	bl sub_02018184
	add r4, r0, #0
	beq _0200B3E8
	ldr r0, [sp, #4]
	str r7, [r4, #0]
	str r0, [r4, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02023790
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _0200B3E8
	ldr r0, [sp, #4]
	lsl r1, r7, #3
	bl sub_02018184
	str r0, [r4, #8]
	cmp r0, #0
	beq _0200B3E8
	mov r6, #0
	cmp r7, #0
	bls _0200B3DE
	add r5, r6, #0
_0200B3B8:
	add r0, r0, r5
	bl sub_0200B444
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02023790
	ldr r1, [r4, #8]
	add r1, r1, r5
	str r0, [r1, #4]
	ldr r0, [r4, #8]
	add r1, r0, r5
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0200B3DE
	add r6, r6, #1
	add r5, #8
	cmp r6, r7
	blo _0200B3B8
_0200B3DE:
	cmp r6, r7
	bne _0200B3E8
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200B3E8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B368

	thumb_func_start sub_0200B3F0
sub_0200B3F0: ; 0x0200B3F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _0200B3FE
	bl sub_02022974
_0200B3FE:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0200B42C
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	bls _0200B426
	add r4, r6, #0
_0200B40E:
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200B426
	bl sub_020237BC
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _0200B40E
_0200B426:
	ldr r0, [r5, #8]
	bl sub_020181C4
_0200B42C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0200B436
	bl sub_020237BC
_0200B436:
	mov r0, #0
	str r0, [r5, #0]
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200B3F0

	thumb_func_start sub_0200B444
sub_0200B444: ; 0x0200B444
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200B444

	thumb_func_start sub_0200B448
sub_0200B448: ; 0x0200B448
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r6, r0
	blo _0200B45C
	bl sub_02022974
_0200B45C:
	ldr r0, [r5, #0]
	cmp r6, r0
	bhs _0200B48A
	cmp r4, #0
	beq _0200B47C
	ldrb r0, [r4]
	ldr r3, [r5, #8]
	lsl r2, r6, #3
	strb r0, [r3, r2]
	ldrb r0, [r4, #1]
	add r1, r3, r2
	strb r0, [r1, #1]
	ldrb r0, [r4, #2]
	strb r0, [r1, #2]
	ldrb r0, [r4, #3]
	strb r0, [r1, #3]
_0200B47C:
	ldr r1, [r5, #8]
	lsl r0, r6, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	add r1, r7, #0
	bl sub_02023810
_0200B48A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B448

	thumb_func_start sub_0200B48C
sub_0200B48C: ; 0x0200B48C
	push {r3, lr}
	mov r3, #0
	bl sub_0200B448
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200B48C

	thumb_func_start sub_0200B498
sub_0200B498: ; 0x0200B498
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_02025EF0
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02023D28
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200B498

	thumb_func_start sub_0200B4BC
sub_0200B4BC: ; 0x0200B4BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_02027848
	bl sub_02027870
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02023D28
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200B4BC

	thumb_func_start sub_0200B4E4
sub_0200B4E4: ; 0x0200B4E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r6, r1, #0
	bl sub_02025E38
	add r7, r0, #0
	ldr r2, _0200B534 ; =0x00000229
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02025F30
	cmp r0, #0
	bne _0200B516
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B1B8
	b _0200B520
_0200B516:
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B1B8
_0200B520:
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r4, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B534: .word 0x00000229
	thumb_func_end sub_0200B4E4

	thumb_func_start sub_0200B538
sub_0200B538: ; 0x0200B538
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	mov r2, #0x67
	add r6, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r1, r0, #0
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r4, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B538

	thumb_func_start sub_0200B578
sub_0200B578: ; 0x0200B578
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B594
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200B578

	thumb_func_start sub_0200B594
sub_0200B594: ; 0x0200B594
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B5C8 ; =0x0000019D
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200B5C8: .word 0x0000019D
	thumb_func_end sub_0200B594

	thumb_func_start sub_0200B5CC
sub_0200B5CC: ; 0x0200B5CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	ldr r2, [r5, #0xc]
	mov r1, #0x77
	bl sub_02074570
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200B5CC

	thumb_func_start sub_0200B5EC
sub_0200B5EC: ; 0x0200B5EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	ldr r2, [r5, #0xc]
	mov r1, #0x91
	bl sub_02074570
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200B5EC

	thumb_func_start sub_0200B60C
sub_0200B60C: ; 0x0200B60C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	str r0, [sp]
	add r1, r2, #0
	add r2, r3, #0
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_020238A0
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200B60C

	thumb_func_start sub_0200B630
sub_0200B630: ; 0x0200B630
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B664 ; =0x00000287
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B662
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B662:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B664: .word 0x00000287
	thumb_func_end sub_0200B630

	thumb_func_start sub_0200B668
sub_0200B668: ; 0x0200B668
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B69C ; =0x00000217
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B69A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B69A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B69C: .word 0x00000217
	thumb_func_end sub_0200B668

	thumb_func_start sub_0200B6A0
sub_0200B6A0: ; 0x0200B6A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B6D4 ; =0x00000262
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B6D2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B6D2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B6D4: .word 0x00000262
	thumb_func_end sub_0200B6A0

	thumb_func_start sub_0200B6D8
sub_0200B6D8: ; 0x0200B6D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xca
	bl sub_0200B144
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B6D8

	thumb_func_start sub_0200B70C
sub_0200B70C: ; 0x0200B70C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x62
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B740
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B740:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B70C

	thumb_func_start sub_0200B744
sub_0200B744: ; 0x0200B744
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B778 ; =0x00000189
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B776
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B776:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B778: .word 0x00000189
	thumb_func_end sub_0200B744

	thumb_func_start sub_0200B77C
sub_0200B77C: ; 0x0200B77C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B7B0 ; =0x0000018A
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B7AE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B7AE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B7B0: .word 0x0000018A
	thumb_func_end sub_0200B77C

	thumb_func_start sub_0200B7B4
sub_0200B7B4: ; 0x0200B7B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x63
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B7E8
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B7E8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B7B4

	thumb_func_start sub_0200B7EC
sub_0200B7EC: ; 0x0200B7EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x27
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B820
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B820:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B7EC

	thumb_func_start sub_0200B824
sub_0200B824: ; 0x0200B824
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B858 ; =0x00000227
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B856
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B856:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B858: .word 0x00000227
	thumb_func_end sub_0200B824

	thumb_func_start sub_0200B85C
sub_0200B85C: ; 0x0200B85C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xdb
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B88E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B88E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B85C

	thumb_func_start sub_0200B890
sub_0200B890: ; 0x0200B890
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B8C4 ; =0x0000025E
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B8C2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B8C2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B8C4: .word 0x0000025E
	thumb_func_end sub_0200B890

	thumb_func_start sub_0200B8C8
sub_0200B8C8: ; 0x0200B8C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200B920 ; =0x000001B1
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	beq _0200B91E
	cmp r4, #0
	beq _0200B8EC
	bl sub_0200B218
	cmp r4, r0
	blo _0200B902
_0200B8EC:
	add r0, r6, #0
	bl sub_0200B190
	ldr r2, _0200B924 ; =0x000001B2
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	mov r4, #2
_0200B902:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r6, #0
	bl sub_0200B190
_0200B91E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B920: .word 0x000001B1
_0200B924: .word 0x000001B2
	thumb_func_end sub_0200B8C8

	thumb_func_start sub_0200B928
sub_0200B928: ; 0x0200B928
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B95C ; =0x000001C9
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B95A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B95A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B95C: .word 0x000001C9
	thumb_func_end sub_0200B928

	thumb_func_start sub_0200B960
sub_0200B960: ; 0x0200B960
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B994 ; =0x0000026B
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B992
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B992:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B994: .word 0x0000026B
	thumb_func_end sub_0200B960

	thumb_func_start sub_0200B998
sub_0200B998: ; 0x0200B998
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x9b
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B9CC
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B9CC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B998

	thumb_func_start sub_0200B9D0
sub_0200B9D0: ; 0x0200B9D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	ldr r2, _0200BA04 ; =0x0000026B
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BA02
	ldrb r1, [r4, #1]
	ldr r2, [r5, #0xc]
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BA02:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BA04: .word 0x0000026B
	thumb_func_end sub_0200B9D0

	thumb_func_start sub_0200BA08
sub_0200BA08: ; 0x0200BA08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BA3C ; =0x0000026A
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BA3A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BA3A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BA3C: .word 0x0000026A
	thumb_func_end sub_0200BA08

	thumb_func_start sub_0200BA40
sub_0200BA40: ; 0x0200BA40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0x15
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BA72
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BA72:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BA40

	thumb_func_start sub_0200BA74
sub_0200BA74: ; 0x0200BA74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r2, #0x14
	add r4, r1, #0
	add r1, r2, #0
	bl sub_02023D28
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200BA74

	thumb_func_start sub_0200BA94
sub_0200BA94: ; 0x0200BA94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x9d
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BAC8
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BAC8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200BA94

	thumb_func_start sub_0200BACC
sub_0200BACC: ; 0x0200BACC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BB00 ; =0x00000275
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BAFE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BAFE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BB00: .word 0x00000275
	thumb_func_end sub_0200BACC

	thumb_func_start sub_0200BB04
sub_0200BB04: ; 0x0200BB04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BB38 ; =0x00000276
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BB36
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BB36:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BB38: .word 0x00000276
	thumb_func_end sub_0200BB04

	thumb_func_start sub_0200BB3C
sub_0200BB3C: ; 0x0200BB3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BB70 ; =0x00000277
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BB6E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BB6E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BB70: .word 0x00000277
	thumb_func_end sub_0200BB3C

	thumb_func_start sub_0200BB74
sub_0200BB74: ; 0x0200BB74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcf
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BBA6
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BBA6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BB74

	thumb_func_start sub_0200BBA8
sub_0200BBA8: ; 0x0200BBA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcc
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BBDA
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BBDA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BBA8

	thumb_func_start sub_0200BBDC
sub_0200BBDC: ; 0x0200BBDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcc
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BC0E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BC0E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BBDC

	thumb_func_start sub_0200BC10
sub_0200BC10: ; 0x0200BC10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BC44 ; =0x00000279
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BC42
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BC42:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BC44: .word 0x00000279
	thumb_func_end sub_0200BC10

	thumb_func_start sub_0200BC48
sub_0200BC48: ; 0x0200BC48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x9e
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BC7C
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BC7C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200BC48

	thumb_func_start sub_0200BC80
sub_0200BC80: ; 0x0200BC80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BCB4 ; =0x00000272
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BCB2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BCB2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BCB4: .word 0x00000272
	thumb_func_end sub_0200BC80

	thumb_func_start sub_0200BCB8
sub_0200BCB8: ; 0x0200BCB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BCEC ; =0x00000273
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BCEA
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BCEA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BCEC: .word 0x00000273
	thumb_func_end sub_0200BCB8

	thumb_func_start sub_0200BCF0
sub_0200BCF0: ; 0x0200BCF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r6, r1, #0
	add r4, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd5
	bl sub_0200B144
	add r7, r0, #0
	cmp r4, #0
	beq _0200BD10
	cmp r4, #1
	beq _0200BD1A
	b _0200BD24
_0200BD10:
	ldr r2, [r5, #0xc]
	mov r1, #0x44
	bl sub_0200B1B8
	b _0200BD2A
_0200BD1A:
	ldr r2, [r5, #0xc]
	mov r1, #0x45
	bl sub_0200B1B8
	b _0200BD2A
_0200BD24:
	ldr r0, [r5, #0xc]
	bl sub_020237E8
_0200BD2A:
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200BCF0

	thumb_func_start sub_0200BD40
sub_0200BD40: ; 0x0200BD40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	ldr r2, [r5, #0xc]
	add r1, r3, #0
	bl sub_02079AF4
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200BD40

	thumb_func_start sub_0200BD60
sub_0200BD60: ; 0x0200BD60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BD94 ; =0x0000017A
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BD92
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BD92:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BD94: .word 0x0000017A
	thumb_func_end sub_0200BD60

	thumb_func_start sub_0200BD98
sub_0200BD98: ; 0x0200BD98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x26
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BDCC
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BDCC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200BD98

	thumb_func_start sub_0200BDD0
sub_0200BDD0: ; 0x0200BDD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BE04 ; =0x000002B6
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BE02
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BE02:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BE04: .word 0x000002B6
	thumb_func_end sub_0200BDD0

	thumb_func_start sub_0200BE08
sub_0200BE08: ; 0x0200BE08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r6, r1, #0
	add r4, r3, #0
	bl sub_02099720
	add r2, r0, #0
	beq _0200BE46
	cmp r4, #0
	beq _0200BE46
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BE46
	ldr r2, [r5, #0xc]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BE46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BE08

	thumb_func_start sub_0200BE48
sub_0200BE48: ; 0x0200BE48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0xc]
	add r0, r2, #0
	bl sub_02014DB8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200BE48

	thumb_func_start sub_0200BE64
sub_0200BE64: ; 0x0200BE64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xc
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BE96
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BE96:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BE64

	thumb_func_start sub_0200BE98
sub_0200BE98: ; 0x0200BE98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BECA
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BECA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BE98

	thumb_func_start sub_0200BECC
sub_0200BECC: ; 0x0200BECC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	str r1, [sp]
	bl sub_02017038
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02017058
	add r4, r0, #0
	ldr r2, _0200BF68 ; =0x020E4FE4
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BF66
	bl sub_0200B218
	cmp r4, r0
	bhs _0200BF26
	cmp r6, #0
	bne _0200BF08
	cmp r4, #0
	beq _0200BF26
_0200BF08:
	ldr r2, [r5, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r1, [sp]
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
_0200BF26:
	add r0, r7, #0
	bl sub_0200B190
	cmp r6, #0
	bne _0200BF3A
	cmp r4, #0
	bne _0200BF3A
	ldr r2, _0200BF6C ; =0x000001B3
	mov r4, #0xc
	b _0200BF3E
_0200BF3A:
	ldr r2, _0200BF70 ; =0x000001B2
	mov r4, #2
_0200BF3E:
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	beq _0200BF66
	ldr r2, [r5, #0xc]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r1, [sp]
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r6, #0
	bl sub_0200B190
_0200BF66:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BF68: .word 0x020E4FE4
_0200BF6C: .word 0x000001B3
_0200BF70: .word 0x000001B2
	thumb_func_end sub_0200BECC

	thumb_func_start sub_0200BF74
sub_0200BF74: ; 0x0200BF74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BFA8 ; =0x000001D1
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BFA6
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BFA6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BFA8: .word 0x000001D1
	thumb_func_end sub_0200BF74

	thumb_func_start sub_0200BFAC
sub_0200BFAC: ; 0x0200BFAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BFE0 ; =0x00000182
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BFDE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BFDE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BFE0: .word 0x00000182
	thumb_func_end sub_0200BFAC

	thumb_func_start sub_0200BFE4
sub_0200BFE4: ; 0x0200BFE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C018 ; =0x00000183
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C016
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C016:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C018: .word 0x00000183
	thumb_func_end sub_0200BFE4

	thumb_func_start sub_0200C01C
sub_0200C01C: ; 0x0200C01C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x61
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C050
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C050:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C01C

	thumb_func_start sub_0200C054
sub_0200C054: ; 0x0200C054
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #8]
	add r5, r2, #0
	add r0, r1, #0
	str r3, [sp, #0xc]
	bl sub_0202B4A0
	add r6, r0, #0
	add r1, r5, #0
	bl sub_0202B47C
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202B488
	add r7, r0, #0
	mov r0, #0x40
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202B42C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023D28
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	str r7, [sp, #4]
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C054

	thumb_func_start sub_0200C0B0
sub_0200C0B0: ; 0x0200C0B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C0E4 ; =0x0000028B
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C0E2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C0E2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C0E4: .word 0x0000028B
	thumb_func_end sub_0200C0B0

	thumb_func_start sub_0200C0E8
sub_0200C0E8: ; 0x0200C0E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C11C ; =0x00000289
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C11A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C11A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C11C: .word 0x00000289
	thumb_func_end sub_0200C0E8

	thumb_func_start sub_0200C120
sub_0200C120: ; 0x0200C120
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0xa3
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C154
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C154:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C120

	thumb_func_start sub_0200C158
sub_0200C158: ; 0x0200C158
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C18C ; =0x0000029B
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C18A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C18A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C18C: .word 0x0000029B
	thumb_func_end sub_0200C158

	thumb_func_start sub_0200C190
sub_0200C190: ; 0x0200C190
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C1C4 ; =0x00000297
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C1C2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C1C2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C1C4: .word 0x00000297
	thumb_func_end sub_0200C190

	thumb_func_start sub_0200C1C8
sub_0200C1C8: ; 0x0200C1C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0xa6
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C1FC
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C1FC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C1C8

	thumb_func_start sub_0200C200
sub_0200C200: ; 0x0200C200
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C234 ; =0x0000029A
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C232
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C232:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C234: .word 0x0000029A
	thumb_func_end sub_0200C200

	thumb_func_start sub_0200C238
sub_0200C238: ; 0x0200C238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C26C ; =0x00000299
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C26A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C26A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C26C: .word 0x00000299
	thumb_func_end sub_0200C238

	thumb_func_start sub_0200C270
sub_0200C270: ; 0x0200C270
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0xa7
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C2A4
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C2A4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C270

	thumb_func_start sub_0200C2A8
sub_0200C2A8: ; 0x0200C2A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C2DC ; =0x00000173
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C2DC: .word 0x00000173
	thumb_func_end sub_0200C2A8

	thumb_func_start sub_0200C2E0
sub_0200C2E0: ; 0x0200C2E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200C320 ; =0x0000019E
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	beq _0200C31E
	cmp r4, #1
	blo _0200C300
	cmp r4, #0xc
	bls _0200C302
_0200C300:
	mov r4, #1
_0200C302:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	sub r1, r4, #1
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r6, #0
	bl sub_0200B190
_0200C31E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C320: .word 0x0000019E
	thumb_func_end sub_0200C2E0

	thumb_func_start sub_0200C324
sub_0200C324: ; 0x0200C324
	ldr r2, [r0, #8]
	lsl r0, r1, #3
	add r0, r2, r0
	ldr r3, _0200C334 ; =sub_02023F8C
	ldr r0, [r0, #4]
	mov r1, #0
	bx r3
	nop
_0200C334: .word sub_02023F8C
	thumb_func_end sub_0200C324

	thumb_func_start sub_0200C338
sub_0200C338: ; 0x0200C338
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200C384 ; =0x00000169
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	cmp r4, #5
	bls _0200C356
	bl sub_02022974
_0200C356:
	cmp r6, #0
	beq _0200C380
	cmp r4, #0
	bne _0200C362
	mov r4, #0x79
	b _0200C364
_0200C362:
	add r4, #0x73
_0200C364:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r6, #0
	bl sub_0200B190
_0200C380:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C384: .word 0x00000169
	thumb_func_end sub_0200C338

	thumb_func_start sub_0200C388
sub_0200C388: ; 0x0200C388
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	bl sub_02023E2C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_020237E8
	ldrh r1, [r5]
	ldr r0, _0200C414 ; =0x0000FFFF
	cmp r1, r0
	beq _0200C410
_0200C3A4:
	ldr r0, _0200C418 ; =0x0000FFFE
	cmp r1, r0
	bne _0200C3FE
	add r0, r5, #0
	bl sub_0201D108
	cmp r0, #0
	beq _0200C3E0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201D134
	add r4, r0, #0
	ldr r0, [r7, #0]
	cmp r4, r0
	blo _0200C3C8
	bl sub_02022974
_0200C3C8:
	ldr r2, [r7, #8]
	lsl r1, r4, #3
	add r1, r2, r1
	ldr r1, [r1, #4]
	add r0, r6, #0
	bl sub_02023F10
	add r0, r5, #0
	bl sub_0201D0C8
	add r5, r0, #0
	b _0200C408
_0200C3E0:
	add r0, r5, #0
	add r4, r5, #0
	bl sub_0201D0C8
	add r5, r0, #0
	cmp r4, r5
	bhs _0200C408
_0200C3EE:
	ldrh r1, [r4]
	add r0, r6, #0
	add r4, r4, #2
	bl sub_02023EB0
	cmp r4, r5
	blo _0200C3EE
	b _0200C408
_0200C3FE:
	ldrh r1, [r5]
	add r0, r6, #0
	add r5, r5, #2
	bl sub_02023EB0
_0200C408:
	ldrh r1, [r5]
	ldr r0, _0200C414 ; =0x0000FFFF
	cmp r1, r0
	bne _0200C3A4
_0200C410:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C414: .word 0x0000FFFF
_0200C418: .word 0x0000FFFE
	thumb_func_end sub_0200C388

	thumb_func_start sub_0200C41C
sub_0200C41C: ; 0x0200C41C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	bls _0200C43E
	add r4, r6, #0
_0200C42A:
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldr r0, [r0, #4]
	bl sub_020237E8
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _0200C42A
_0200C43E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200C41C

	thumb_func_start sub_0200C440
sub_0200C440: ; 0x0200C440
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r4, #0
	mov r1, #0x2c
	str r2, [sp, #4]
	bl sub_02018144
	str r0, [sp, #8]
	cmp r0, #0
	beq _0200C55A
	ldr r3, [sp, #8]
	mov r0, #0xe
	mov r1, #4
	mov r2, #1
	add r3, r3, #4
	str r4, [sp]
	bl sub_02006F50
	ldr r1, [sp, #8]
	mov r3, #0
	str r0, [r1, #0]
	add r0, r1, #0
	ldr r0, [r0, #4]
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bls _0200C554
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #4
	orr r1, r0
	str r1, [sp, #0xc]
	add r1, r0, #0
	orr r1, r5
	str r1, [sp, #0x10]
	orr r0, r6
	str r0, [sp, #0x14]
	ldr r1, [sp, #4]
	lsl r0, r5, #4
	orr r1, r0
	str r1, [sp, #0x18]
	add r1, r5, #0
	orr r1, r0
	str r1, [sp, #0x1c]
	orr r0, r6
	lsl r2, r6, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	add r7, r2, #0
	orr r7, r1
	add r1, r2, #0
	orr r1, r5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r2, r6
	str r1, [sp, #0x28]
	lsl r1, r7, #0x18
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x18]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	mov ip, r2
	str r1, [sp, #0x24]
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
_0200C4E4:
	ldrb r5, [r4, r3]
	cmp r5, #0x12
	bgt _0200C50C
	bge _0200C532
	cmp r5, #0x10
	bgt _0200C506
	bge _0200C52A
	cmp r5, #2
	bgt _0200C548
	cmp r5, #0
	blt _0200C548
	beq _0200C51E
	cmp r5, #1
	beq _0200C522
	cmp r5, #2
	beq _0200C526
	b _0200C548
_0200C506:
	cmp r5, #0x11
	beq _0200C52E
	b _0200C548
_0200C50C:
	cmp r5, #0x21
	bgt _0200C518
	bge _0200C53E
	cmp r5, #0x20
	beq _0200C538
	b _0200C548
_0200C518:
	cmp r5, #0x22
	beq _0200C544
	b _0200C548
_0200C51E:
	strb r2, [r4, r3]
	b _0200C548
_0200C522:
	strb r1, [r4, r3]
	b _0200C548
_0200C526:
	strb r0, [r4, r3]
	b _0200C548
_0200C52A:
	strb r6, [r4, r3]
	b _0200C548
_0200C52E:
	strb r7, [r4, r3]
	b _0200C548
_0200C532:
	ldr r5, [sp, #0x20]
	strb r5, [r4, r3]
	b _0200C548
_0200C538:
	ldr r5, [sp, #0x24]
	strb r5, [r4, r3]
	b _0200C548
_0200C53E:
	ldr r5, [sp, #0x28]
	strb r5, [r4, r3]
	b _0200C548
_0200C544:
	mov r5, ip
	strb r5, [r4, r3]
_0200C548:
	ldr r5, [sp, #8]
	add r3, r3, #1
	ldr r5, [r5, #4]
	ldr r5, [r5, #0x10]
	cmp r3, r5
	blo _0200C4E4
_0200C554:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	str r1, [r0, #0x28]
_0200C55A:
	ldr r0, [sp, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C440

	thumb_func_start sub_0200C560
sub_0200C560: ; 0x0200C560
	push {r4, lr}
	add r4, r0, #0
	beq _0200C576
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0200C570
	bl sub_020181C4
_0200C570:
	add r0, r4, #0
	bl sub_020181C4
_0200C576:
	pop {r4, pc}
	thumb_func_end sub_0200C560

	thumb_func_start sub_0200C578
sub_0200C578: ; 0x0200C578
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _0200C5B4 ; =0x020E4FEE
	lsl r5, r1, #2
	ldrh r1, [r0, r5]
	lsl r3, r3, #0x10
	mov r0, #8
	str r1, [sp]
	str r0, [sp, #4]
	lsr r3, r3, #0x10
	str r3, [sp, #8]
	ldr r3, [sp, #0x28]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r4, #4]
	add r0, r2, #0
	ldr r2, [r1, #0x14]
	ldr r1, _0200C5B8 ; =0x020E4FEC
	ldrh r1, [r1, r5]
	add r1, r2, r1
	mov r2, #0
	add r3, r2, #0
	bl sub_0201ADDC
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0200C5B4: .word 0x020E4FEE
_0200C5B8: .word 0x020E4FEC
	thumb_func_end sub_0200C578

	thumb_func_start sub_0200C5BC
sub_0200C5BC: ; 0x0200C5BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r4, r2, #0
	str r0, [sp, #0x30]
	add r0, r6, #0
	add r2, r3, #0
	add r0, #8
	add r3, r4, #0
	ldr r5, [sp, #0x34]
	ldr r7, [sp, #0x38]
	bl sub_020022A4
	ldrh r1, [r6, #8]
	ldr r0, _0200C644 ; =0x0000FFFF
	cmp r1, r0
	beq _0200C63E
	lsl r0, r7, #0x10
	add r4, r6, #0
	lsr r7, r0, #0x10
_0200C5E6:
	ldrh r2, [r4, #8]
	cmp r2, #0xa2
	blo _0200C61A
	cmp r2, #0xab
	bhi _0200C61A
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r6, #4]
	sub r2, #0xa2
	ldr r1, [r1, #0x14]
	lsl r2, r2, #5
	add r1, r1, r2
	mov r2, #0
	ldr r0, [sp, #0x30]
	add r3, r2, #0
	bl sub_0201ADDC
	b _0200C632
_0200C61A:
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #0x28]
	lsl r2, r5, #0x10
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl sub_0201AE78
_0200C632:
	add r4, r4, #2
	ldrh r1, [r4, #8]
	ldr r0, _0200C644 ; =0x0000FFFF
	add r5, #8
	cmp r1, r0
	bne _0200C5E6
_0200C63E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C644: .word 0x0000FFFF
	thumb_func_end sub_0200C5BC

	thumb_func_start sub_0200C648
sub_0200C648: ; 0x0200C648
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, [sp, #0x2c]
	add r6, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r5, r0, #0
	bl sub_0200C578
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0200C5BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200C648

	thumb_func_start sub_0200C67C
sub_0200C67C: ; 0x0200C67C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r2, #0
	ldr r2, [r7, #0x28]
	ldr r6, [sp, #0x18]
	lsl r0, r2, #4
	orr r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	add r2, r3, #0
	add r0, #8
	add r3, r4, #0
	bl sub_020022A4
	ldrh r1, [r7, #8]
	ldr r0, _0200C6E0 ; =0x0000FFFF
	cmp r1, r0
	beq _0200C6DC
	add r4, r7, #0
	mov r5, #0
_0200C6A8:
	ldrh r2, [r4, #8]
	cmp r2, #0xa2
	blo _0200C6C6
	cmp r2, #0xab
	bhi _0200C6C6
	ldr r0, [r7, #4]
	sub r2, #0xa2
	ldr r1, [r0, #0x14]
	lsl r0, r2, #5
	add r0, r1, r0
	add r1, r6, r5
	mov r2, #0x20
	bl sub_020C4B68
	b _0200C6D0
_0200C6C6:
	ldr r1, [sp]
	add r0, r6, r5
	mov r2, #0x20
	bl sub_020C4CF4
_0200C6D0:
	add r4, r4, #2
	ldrh r1, [r4, #8]
	ldr r0, _0200C6E0 ; =0x0000FFFF
	add r5, #0x20
	cmp r1, r0
	bne _0200C6A8
_0200C6DC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C6E0: .word 0x0000FFFF
	thumb_func_end sub_0200C67C

	thumb_func_start sub_0200C6E4
sub_0200C6E4: ; 0x0200C6E4
	push {r4, lr}
	mov r1, #0x4e
	lsl r1, r1, #2
	add r4, r0, #0
	bl sub_02018144
	cmp r0, #0
	bne _0200C6F8
	mov r0, #0
	pop {r4, pc}
_0200C6F8:
	str r4, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #8]
	pop {r4, pc}
	thumb_func_end sub_0200C6E4

	thumb_func_start sub_0200C704
sub_0200C704: ; 0x0200C704
	push {r4, lr}
	add r4, r0, #0
	bne _0200C70E
	bl sub_02022974
_0200C70E:
	ldr r0, [r4, #0]
	mov r1, #0x58
	bl sub_02018144
	cmp r0, #0
	bne _0200C71E
	mov r0, #0
	pop {r4, pc}
_0200C71E:
	ldr r1, [r4, #4]
	mov r2, #0
	add r1, r1, #1
	str r1, [r4, #4]
	add r3, r0, #0
	add r1, r2, #0
_0200C72A:
	add r2, r2, #1
	str r1, [r3, #0xc]
	add r3, r3, #4
	cmp r2, #6
	blt _0200C72A
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200C704

	thumb_func_start sub_0200C738
sub_0200C738: ; 0x0200C738
	add r0, #0x10
	bx lr
	thumb_func_end sub_0200C738

	thumb_func_start sub_0200C73C
sub_0200C73C: ; 0x0200C73C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0200C750
	bl sub_02022974
_0200C750:
	cmp r5, #0
	bne _0200C75A
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200C75A:
	ldr r0, [r6, #0]
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	str r0, [sp, #0x18]
	ldr r0, [r6, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0]
	str r0, [sp, #0x20]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	add r0, sp, #0x14
	bl sub_0201E88C
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_0201F834
	bl sub_020A7944
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0200C7A6
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0x14]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	str r0, [sp, #8]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0200A784
_0200C7A6:
	ldr r1, [r5, #0]
	mov r0, #0x20
	bl sub_0201DCC8
	str r0, [r5, #0xc]
	bl sub_0201E994
	bl sub_0201F8E4
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C73C

	thumb_func_start sub_0200C7C0
sub_0200C7C0: ; 0x0200C7C0
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	cmp r3, #0
	beq _0200C7CE
	cmp r4, #0
	bne _0200C7D2
_0200C7CE:
	mov r0, #0
	pop {r4, pc}
_0200C7D2:
	add r0, r2, #0
	add r1, r3, #0
	ldr r2, [r3, #0]
	add r1, #0x10
	bl sub_020095C4
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0200C7C0

	thumb_func_start sub_0200C7E4
sub_0200C7E4: ; 0x0200C7E4
	ldr r3, _0200C7E8 ; =sub_02021BD4
	bx r3
	; .align 2, 0
_0200C7E8: .word sub_02021BD4
	thumb_func_end sub_0200C7E4

	thumb_func_start sub_0200C7EC
sub_0200C7EC: ; 0x0200C7EC
	push {r4, lr}
	add r4, r0, #0
	bne _0200C7F6
	bl sub_02022974
_0200C7F6:
	ldr r0, [r4, #0]
	bl sub_020219F8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200C7EC

	thumb_func_start sub_0200C800
sub_0200C800: ; 0x0200C800
	ldr r3, _0200C804 ; =sub_0200A858
	bx r3
	; .align 2, 0
_0200C804: .word sub_0200A858
	thumb_func_end sub_0200C800

	thumb_func_start sub_0200C808
sub_0200C808: ; 0x0200C808
	ldr r3, _0200C80C ; =sub_0201DCE8
	bx r3
	; .align 2, 0
_0200C80C: .word sub_0201DCE8
	thumb_func_end sub_0200C808

	thumb_func_start sub_0200C810
sub_0200C810: ; 0x0200C810
	ldr r3, _0200C818 ; =sub_02021964
	ldr r0, [r0, #0]
	bx r3
	nop
_0200C818: .word sub_02021964
	thumb_func_end sub_0200C810

	thumb_func_start sub_0200C81C
sub_0200C81C: ; 0x0200C81C
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200C828
	bl sub_020095A8
_0200C828:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200C81C

	thumb_func_start sub_0200C82C
sub_0200C82C: ; 0x0200C82C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	mov r4, #0
	cmp r0, #0
	ble _0200C84C
_0200C838:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_02009F38
	bl sub_02009F8C
	ldr r0, [r5, #0x54]
	add r4, r4, #1
	cmp r4, r0
	blt _0200C838
_0200C84C:
	ldr r0, [r5, #8]
	bl sub_020181C4
	ldr r0, [r5, #0x24]
	bl sub_0200A508
	ldr r0, [r5, #0x28]
	bl sub_0200A700
	ldr r0, [r5, #0x54]
	mov r6, #0
	cmp r0, #0
	ble _0200C87E
	add r4, r5, #0
_0200C868:
	ldr r0, [r4, #0x24]
	bl sub_02009D20
	ldr r0, [r4, #0xc]
	bl sub_02009754
	ldr r0, [r5, #0x54]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200C868
_0200C87E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200C82C

	thumb_func_start sub_0200C880
sub_0200C880: ; 0x0200C880
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201DCF0
	bl sub_0201E958
	bl sub_0201F8B4
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0200C89C
	bl sub_0200A878
_0200C89C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200C880

	thumb_func_start sub_0200C8A0
sub_0200C8A0: ; 0x0200C8A0
	ldr r2, [r0, #4]
	ldr r3, _0200C8AC ; =sub_020181C4
	sub r2, r2, #1
	str r2, [r0, #4]
	add r0, r1, #0
	bx r3
	; .align 2, 0
_0200C8AC: .word sub_020181C4
	thumb_func_end sub_0200C8A0

	thumb_func_start sub_0200C8B0
sub_0200C8B0: ; 0x0200C8B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0200C810
	add r0, r4, #0
	bl sub_0200C81C
	add r0, r4, #0
	bl sub_0200C82C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200C8A0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200C8B0

	thumb_func_start sub_0200C8D4
sub_0200C8D4: ; 0x0200C8D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0200C8E2
	bl sub_02022974
_0200C8E2:
	add r0, r4, #0
	bl sub_0200C880
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_0200C8D4

	thumb_func_start sub_0200C8F0
sub_0200C8F0: ; 0x0200C8F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r5, #0
	beq _0200C906
	cmp r4, #0
	bne _0200C90C
_0200C906:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200C90C:
	add r0, r2, #0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0200C918
	mov r0, #4
	str r0, [sp, #0x14]
_0200C918:
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x54]
	bl sub_02009F34
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	ldr r0, [r5, #0]
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #8]
	ldr r0, [sp, #0x14]
	mov r7, #0
	cmp r0, #0
	ble _0200C964
	ldr r6, [sp, #0x10]
_0200C938:
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl sub_02009F38
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	ldr r1, [r6, #0]
	bl sub_02017A40
	ldr r1, [sp, #0x18]
	ldr r2, [r5, #0]
	str r0, [sp, #0x1c]
	bl sub_02009F40
	ldr r0, [sp, #0x1c]
	bl sub_020181C4
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r6, r6, #4
	cmp r7, r0
	blt _0200C938
_0200C964:
	ldr r0, [sp, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _0200C98E
	add r7, r4, #0
_0200C96E:
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_02009F38
	bl sub_02009FA4
	ldr r2, [r5, #0]
	add r1, r6, #0
	bl sub_02009714
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r7, r7, #4
	cmp r6, r0
	blt _0200C96E
_0200C98E:
	ldr r0, [sp, #0x14]
	mov r7, #0
	cmp r0, #0
	ble _0200C9C6
	add r6, r4, #0
_0200C998:
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl sub_02009F38
	str r0, [sp, #0x20]
	bl sub_02009FA4
	ldr r1, [r5, #0]
	bl sub_02009CFC
	add r2, r0, #0
	str r2, [r6, #0x24]
	ldr r0, [r6, #0xc]
	ldr r1, [sp, #0x20]
	ldr r3, [r5, #0]
	bl sub_02009C80
	str r0, [r6, #0x3c]
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r6, r6, #4
	cmp r7, r0
	blt _0200C998
_0200C9C6:
	ldr r0, [r4, #0x24]
	bl sub_0200A368
	ldr r0, [r4, #0x28]
	bl sub_0200A60C
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0]
	ldr r1, [r1, #0x18]
	bl sub_02017A40
	ldr r1, [r4, #0x14]
	add r6, r0, #0
	str r1, [sp]
	ldr r1, [r4, #0x18]
	str r1, [sp, #4]
	ldr r1, [r4, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0xc]
	ldr r1, [r5, #0]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl sub_02009508
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C8F0

	thumb_func_start sub_0200CA08
sub_0200CA08: ; 0x0200CA08
	push {r4, lr}
	sub sp, #0x28
	mov r3, #4
	mov r4, #6
	ldrsh r3, [r2, r3]
	ldrsh r4, [r2, r4]
	str r4, [sp]
	str r3, [sp, #4]
	ldrh r4, [r2, #0xa]
	str r4, [sp, #8]
	ldr r4, [r2, #0xc]
	str r4, [sp, #0xc]
	ldr r4, [r2, #0x10]
	str r4, [sp, #0x10]
	ldr r4, [r2, #0x14]
	str r4, [sp, #0x14]
	ldr r4, [r2, #0x18]
	str r4, [sp, #0x18]
	ldr r4, [r2, #0x1c]
	str r4, [sp, #0x1c]
	ldr r4, [r2, #0x20]
	str r4, [sp, #0x20]
	ldr r4, [r2, #0x24]
	str r4, [sp, #0x24]
	ldr r2, [r2, #0]
	bl sub_0200CA44
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200CA08

	thumb_func_start sub_0200CA44
sub_0200CA44: ; 0x0200CA44
	push {r4, lr}
	sub sp, #0x30
	add r4, r0, #0
	ldr r0, [r1, #0]
	str r0, [sp]
	ldr r0, [r1, #4]
	ldr r1, [r0, #0]
	mov r0, #0x24
	mul r0, r2
	add r0, r1, r0
	str r0, [sp, #4]
	cmp r3, #0
	ble _0200CA70
	lsl r0, r3, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CA7E
_0200CA70:
	lsl r0, r3, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CA7E:
	bl sub_020E1740
	str r0, [sp, #8]
	add r1, sp, #0x28
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _0200CAA0
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CAAE
_0200CAA0:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CAAE:
	bl sub_020E1740
	str r0, [sp, #0xc]
	add r1, sp, #0x28
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _0200CAD0
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CADE
_0200CAD0:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CADE:
	bl sub_020E1740
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	cmp r0, #2
	bne _0200CAF4
	mov r0, #3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0xc]
_0200CAF4:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0, #0x20]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_02021AA0
	add r4, r0, #0
	beq _0200CB2A
	add r1, sp, #0x28
	ldrh r1, [r1, #0x18]
	bl sub_02021D6C
	ldr r1, [sp, #0x48]
	add r0, r4, #0
	bl sub_02021E90
_0200CB2A:
	add r0, r4, #0
	add sp, #0x30
	pop {r4, pc}
	thumb_func_end sub_0200CA44

	thumb_func_start sub_0200CB30
sub_0200CB30: ; 0x0200CB30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0200CB48
	cmp r5, #0
	bne _0200CB4E
_0200CB48:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CB4E:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0200CB5A
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0200CB5E
_0200CB5A:
	mov r0, #4
	str r0, [sp, #4]
_0200CB5E:
	ldr r0, [sp, #4]
	str r0, [r5, #0x54]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0200CB8E
	add r7, r6, #0
	add r4, r5, #0
_0200CB70:
	ldr r2, [sp]
	ldr r0, [r7, #0]
	ldr r1, [sp, #8]
	ldr r2, [r2, #0]
	bl sub_02009714
	str r0, [r4, #0xc]
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r1, r0, #1
	ldr r0, [sp, #4]
	add r4, r4, #4
	str r1, [sp, #8]
	cmp r1, r0
	blt _0200CB70
_0200CB8E:
	ldr r0, [sp, #4]
	mov r7, #0
	cmp r0, #0
	ble _0200CBD4
	add r4, r7, #0
_0200CB98:
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _0200CBC8
	ldr r1, [sp]
	ldr r1, [r1, #0]
	bl sub_02009CFC
	str r0, [r5, #0x24]
	mov r0, #0
	str r0, [r5, #0x3c]
	ldr r3, [r5, #0x24]
	add r1, r0, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	ble _0200CBC8
	add r2, r1, #0
_0200CBB8:
	ldr r0, [r3, #0]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, #0x24]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blt _0200CBB8
_0200CBC8:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, r0
	blt _0200CB98
_0200CBD4:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200CB30

	thumb_func_start sub_0200CBDC
sub_0200CBDC: ; 0x0200CBDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200CBFA
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CBFA:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200985C
	add r5, r0, #0
	beq _0200CC28
	bl sub_0200A3DC
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200CC28:
	bl sub_02022974
	cmp r5, #0
	beq _0200CC36
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200CC36:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CBDC

	thumb_func_start sub_0200CC3C
sub_0200CC3C: ; 0x0200CC3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200CC5A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CC5A:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_02009A4C
	add r5, r0, #0
	beq _0200CC88
	bl sub_0200A3DC
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200CC88:
	bl sub_02022974
	cmp r5, #0
	beq _0200CC96
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200CC96:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CC3C

	thumb_func_start sub_0200CC9C
sub_0200CC9C: ; 0x0200CC9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200CCBC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0200CCBC:
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_020098B8
	add r5, r0, #0
	beq _0200CD00
	bl sub_0200A640
	cmp r0, #1
	beq _0200CCE8
	bl sub_02022974
_0200CCE8:
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_0200D1FC
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	bl sub_0200A760
	lsl r0, r0, #0x18
	add sp, #0x10
	asr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0200CD00:
	bl sub_02022974
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CC9C

	thumb_func_start sub_0200CD0C
sub_0200CD0C: ; 0x0200CD0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x34]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200CD2C
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0200CD2C:
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_02009B04
	add r5, r0, #0
	beq _0200CD70
	bl sub_0200A640
	cmp r0, #1
	beq _0200CD58
	bl sub_02022974
_0200CD58:
	ldr r0, [r4, #0x28]
	add r1, r5, #0
	bl sub_0200D1FC
	ldr r1, [sp, #0x30]
	add r0, r5, #0
	bl sub_0200A760
	lsl r0, r0, #0x18
	add sp, #0x10
	asr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0200CD70:
	bl sub_02022974
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200CD0C

	thumb_func_start sub_0200CD7C
sub_0200CD7C: ; 0x0200CD7C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r2, #0
	ldr r2, [sp, #0x20]
	bl sub_0200CC9C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0200CDBA
	ldr r3, [sp, #0x2c]
	lsl r2, r4, #0x14
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	lsl r3, r3, #5
	bl sub_02003070
_0200CDBA:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200CD7C

	thumb_func_start sub_0200CDC4
sub_0200CDC4: ; 0x0200CDC4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r2, #0
	ldr r2, [sp, #0x20]
	bl sub_0200CD0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0200CE02
	ldr r3, [sp, #0x2c]
	lsl r2, r4, #0x14
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	lsl r3, r3, #5
	bl sub_02003070
_0200CE02:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200CDC4

	thumb_func_start sub_0200CE0C
sub_0200CE0C: ; 0x0200CE0C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200D11C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200CE0C

	thumb_func_start sub_0200CE24
sub_0200CE24: ; 0x0200CE24
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200D18C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200CE24

	thumb_func_start sub_0200CE3C
sub_0200CE3C: ; 0x0200CE3C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #3
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200D11C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200CE3C

	thumb_func_start sub_0200CE54
sub_0200CE54: ; 0x0200CE54
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #3
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	bl sub_0200D18C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200CE54

	thumb_func_start sub_0200CE6C
sub_0200CE6C: ; 0x0200CE6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r7, r0, #0
	ldr r0, [r7, #0]
	add r6, r1, #0
	mov r1, #0x10
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	bne _0200CE88
	add sp, #0x74
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CE88:
	ldr r0, [r7, #0]
	mov r1, #8
	bl sub_02018144
	str r0, [r4, #8]
	cmp r0, #0
	bne _0200CE9C
	add sp, #0x74
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CE9C:
	ldr r0, [r7, #0]
	mov r1, #0x24
	bl sub_02018144
	ldr r1, [r4, #8]
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _0200CEC4
	cmp r0, #0
	beq _0200CEBE
	bl sub_020181C4
_0200CEBE:
	add sp, #0x74
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200CEC4:
	mov r1, #0
	add r2, r5, #0
	add r3, sp, #0x2c
_0200CECA:
	ldr r0, [r2, #0x14]
	add r1, r1, #1
	add r2, r2, #4
	stmia r3!, {r0}
	cmp r1, #6
	blt _0200CECA
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _0200CEE2
	ldr r1, [r6, #0x20]
	cmp r1, #0
	bne _0200CEEC
_0200CEE2:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	b _0200CF1E
_0200CEEC:
	mov r2, #0
	ldr r1, [sp, #0x3c]
	mvn r2, r2
	cmp r1, r2
	beq _0200CF04
	bl sub_02009D34
	cmp r0, #0
	bne _0200CF04
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
_0200CF04:
	mov r0, #0
	ldr r1, [sp, #0x40]
	mvn r0, r0
	cmp r1, r0
	beq _0200CF1E
	ldr r0, [r6, #0x20]
	bl sub_02009D34
	cmp r0, #0
	bne _0200CF1E
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
_0200CF1E:
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r6, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x28]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl sub_020093B4
	ldr r0, [r6, #0]
	str r0, [sp, #0x44]
	ldr r0, [r4, #4]
	str r0, [sp, #0x48]
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200CF78
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CF86
_0200CF78:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CF86:
	bl sub_020E1740
	str r0, [sp, #0x4c]
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200CFA6
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CFB4
_0200CFA6:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CFB4:
	bl sub_020E1740
	str r0, [sp, #0x50]
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0200CFD4
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0200CFE2
_0200CFD4:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0200CFE2:
	bl sub_020E1740
	str r0, [sp, #0x54]
	ldr r0, [r5, #0x10]
	cmp r0, #2
	bne _0200CFF8
	mov r0, #3
	ldr r1, [sp, #0x50]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x50]
_0200CFF8:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	mov r1, #0
	add r0, sp, #0x2c
	strh r1, [r0, #0x38]
	ldr r0, [r5, #8]
	str r0, [sp, #0x68]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x6c]
	ldr r0, [r7, #0]
	str r0, [sp, #0x70]
	add r0, sp, #0x44
	bl sub_02021AA0
	str r0, [r4, #0]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0200D040
	bl sub_02021EE8
	add r6, r0, #0
	ldrh r1, [r5, #6]
	ldr r0, [r4, #0]
	bl sub_02021D6C
	ldr r1, [r5, #0xc]
	ldr r0, [r4, #0]
	add r1, r6, r1
	bl sub_02021E90
	b _0200D044
_0200D040:
	bl sub_02022974
_0200D044:
	add r0, r4, #0
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200CE6C

	thumb_func_start sub_0200D04C
sub_0200D04C: ; 0x0200D04C
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl sub_02009DC8
	mov r1, #0
	bl sub_0200A72C
	pop {r3, pc}
	thumb_func_end sub_0200D04C

	thumb_func_start sub_0200D05C
sub_0200D05C: ; 0x0200D05C
	push {r4, lr}
	ldr r0, [r0, #0x10]
	add r4, r2, #0
	bl sub_02009DC8
	add r1, r4, #0
	bl sub_0200A760
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200D05C

	thumb_func_start sub_0200D070
sub_0200D070: ; 0x0200D070
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0xc]
	ldr r1, [r3, #0x24]
	ldr r3, _0200D07C ; =sub_0200D27C
	bx r3
	; .align 2, 0
_0200D07C: .word sub_0200D27C
	thumb_func_end sub_0200D070

	thumb_func_start sub_0200D080
sub_0200D080: ; 0x0200D080
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x28]
	ldr r3, _0200D08C ; =sub_0200D2D0
	bx r3
	; .align 2, 0
_0200D08C: .word sub_0200D2D0
	thumb_func_end sub_0200D080

	thumb_func_start sub_0200D090
sub_0200D090: ; 0x0200D090
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x2c]
	ldr r3, _0200D09C ; =sub_0200D230
	bx r3
	; .align 2, 0
_0200D09C: .word sub_0200D230
	thumb_func_end sub_0200D090

	thumb_func_start sub_0200D0A0
sub_0200D0A0: ; 0x0200D0A0
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x30]
	ldr r3, _0200D0AC ; =sub_0200D230
	bx r3
	; .align 2, 0
_0200D0AC: .word sub_0200D230
	thumb_func_end sub_0200D0A0

	thumb_func_start sub_0200D0B0
sub_0200D0B0: ; 0x0200D0B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0200C810
	ldr r0, [r6, #0x24]
	bl sub_0200A508
	ldr r0, [r6, #0x28]
	bl sub_0200A700
	ldr r0, [r6, #0x54]
	mov r4, #0
	cmp r0, #0
	ble _0200D0E8
	add r5, r6, #0
_0200D0D2:
	ldr r0, [r5, #0x24]
	bl sub_02009D20
	ldr r0, [r5, #0xc]
	bl sub_02009754
	ldr r0, [r6, #0x54]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0200D0D2
_0200D0E8:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200C8A0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200D0B0

	thumb_func_start sub_0200D0F4
sub_0200D0F4: ; 0x0200D0F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200D106
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0200A5B4
_0200D106:
	ldr r0, [r4, #0]
	bl sub_02021BD4
	ldr r0, [r4, #8]
	bl sub_020095A8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200D0F4

	thumb_func_start sub_0200D11C
sub_0200D11C: ; 0x0200D11C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r6, #0
	lsl r4, r0, #2
	add r5, #0xc
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x30]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02009D34
	cmp r0, #0
	bne _0200D142
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D142:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r3, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	bl sub_02009918
	add r5, r0, #0
	beq _0200D178
	add r0, r6, r4
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add r4, r0, #0
	cmp r4, #1
	beq _0200D172
	bl sub_02022974
_0200D172:
	add sp, #0x14
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0200D178:
	bl sub_02022974
	cmp r5, #0
	beq _0200D186
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D186:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D11C

	thumb_func_start sub_0200D18C
sub_0200D18C: ; 0x0200D18C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r5, r6, #0
	lsl r4, r0, #2
	add r5, #0xc
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x30]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02009D34
	cmp r0, #0
	bne _0200D1B2
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D1B2:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	ldr r3, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	bl sub_02009BC4
	add r5, r0, #0
	beq _0200D1E8
	add r0, r6, r4
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add r4, r0, #0
	cmp r4, #1
	beq _0200D1E2
	bl sub_02022974
_0200D1E2:
	add sp, #0x14
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0200D1E8:
	bl sub_02022974
	cmp r5, #0
	beq _0200D1F6
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D1F6:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D18C

	thumb_func_start sub_0200D1FC
sub_0200D1FC: ; 0x0200D1FC
	push {r3, r4, r5, r6}
	ldr r6, [r0, #4]
	mov r3, #0
	cmp r6, #0
	ble _0200D228
	ldr r5, [r0, #0]
	add r4, r5, #0
_0200D20A:
	ldr r2, [r4, #0]
	cmp r2, #0
	bne _0200D220
	lsl r2, r3, #2
	str r1, [r5, r2]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0200D220:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r6
	blt _0200D20A
_0200D228:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200D1FC

	thumb_func_start sub_0200D230
sub_0200D230: ; 0x0200D230
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200D278
	add r4, r6, #0
_0200D242:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200D26E
	bl sub_02009E08
	cmp r0, r7
	bne _0200D26E
	ldr r1, [r5, #0]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl sub_02009D68
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200D26E:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200D242
_0200D278:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D230

	thumb_func_start sub_0200D27C
sub_0200D27C: ; 0x0200D27C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200D2CA
	add r4, r6, #0
_0200D28E:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200D2C0
	bl sub_02009E08
	cmp r0, r7
	bne _0200D2C0
	add r0, r7, #0
	bl sub_0201EB50
	ldr r1, [r5, #0]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl sub_02009D68
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200D2C0:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200D28E
_0200D2CA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200D27C

	thumb_func_start sub_0200D2D0
sub_0200D2D0: ; 0x0200D2D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #0
	ble _0200D31E
	add r4, r6, #0
_0200D2E2:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0200D314
	bl sub_02009E08
	cmp r0, r7
	bne _0200D314
	add r0, r7, #0
	bl sub_0201F9F0
	ldr r1, [r5, #0]
	lsl r4, r6, #2
	ldr r0, [sp]
	ldr r1, [r1, r4]
	bl sub_02009D68
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0200D314:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0200D2E2
_0200D31E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200D2D0

	thumb_func_start sub_0200D324
sub_0200D324: ; 0x0200D324
	ldr r3, _0200D32C ; =sub_02021E2C
	mov r1, #1
	lsl r1, r1, #0xc
	bx r3
	; .align 2, 0
_0200D32C: .word sub_02021E2C
	thumb_func_end sub_0200D324

	thumb_func_start sub_0200D330
sub_0200D330: ; 0x0200D330
	ldr r3, _0200D338 ; =sub_0200D324
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D338: .word sub_0200D324
	thumb_func_end sub_0200D330

	thumb_func_start sub_0200D33C
sub_0200D33C: ; 0x0200D33C
	ldr r3, _0200D348 ; =sub_02021E2C
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bx r3
	nop
_0200D348: .word sub_02021E2C
	thumb_func_end sub_0200D33C

	thumb_func_start sub_0200D34C
sub_0200D34C: ; 0x0200D34C
	ldr r3, _0200D354 ; =sub_02021E2C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D354: .word sub_02021E2C
	thumb_func_end sub_0200D34C

	thumb_func_start sub_0200D358
sub_0200D358: ; 0x0200D358
	ldr r3, _0200D360 ; =sub_02021D44
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D360: .word sub_02021D44
	thumb_func_end sub_0200D358

	thumb_func_start sub_0200D364
sub_0200D364: ; 0x0200D364
	ldr r3, _0200D36C ; =sub_02021D6C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D36C: .word sub_02021D6C
	thumb_func_end sub_0200D364

	thumb_func_start sub_0200D370
sub_0200D370: ; 0x0200D370
	ldr r3, _0200D378 ; =sub_02021DCC
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D378: .word sub_02021DCC
	thumb_func_end sub_0200D370

	thumb_func_start sub_0200D37C
sub_0200D37C: ; 0x0200D37C
	ldr r3, _0200D384 ; =sub_02021E24
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D384: .word sub_02021E24
	thumb_func_end sub_0200D37C

	thumb_func_start sub_0200D388
sub_0200D388: ; 0x0200D388
	ldr r3, _0200D38C ; =sub_02021CC8
	bx r3
	; .align 2, 0
_0200D38C: .word sub_02021CC8
	thumb_func_end sub_0200D388

	thumb_func_start sub_0200D390
sub_0200D390: ; 0x0200D390
	ldr r3, _0200D398 ; =sub_0200D388
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D398: .word sub_0200D388
	thumb_func_end sub_0200D390

	thumb_func_start sub_0200D39C
sub_0200D39C: ; 0x0200D39C
	ldr r3, _0200D3A0 ; =sub_02021CE4
	bx r3
	; .align 2, 0
_0200D3A0: .word sub_02021CE4
	thumb_func_end sub_0200D39C

	thumb_func_start sub_0200D3A4
sub_0200D3A4: ; 0x0200D3A4
	ldr r3, _0200D3AC ; =sub_0200D39C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3AC: .word sub_0200D39C
	thumb_func_end sub_0200D3A4

	thumb_func_start sub_0200D3B0
sub_0200D3B0: ; 0x0200D3B0
	ldr r3, _0200D3B4 ; =sub_02021FD0
	bx r3
	; .align 2, 0
_0200D3B4: .word sub_02021FD0
	thumb_func_end sub_0200D3B0

	thumb_func_start sub_0200D3B8
sub_0200D3B8: ; 0x0200D3B8
	ldr r3, _0200D3C0 ; =sub_0200D3B0
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3C0: .word sub_0200D3B0
	thumb_func_end sub_0200D3B8

	thumb_func_start sub_0200D3C4
sub_0200D3C4: ; 0x0200D3C4
	ldr r3, _0200D3C8 ; =sub_02021E50
	bx r3
	; .align 2, 0
_0200D3C8: .word sub_02021E50
	thumb_func_end sub_0200D3C4

	thumb_func_start sub_0200D3CC
sub_0200D3CC: ; 0x0200D3CC
	ldr r3, _0200D3D4 ; =sub_0200D3C4
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3D4: .word sub_0200D3C4
	thumb_func_end sub_0200D3CC

	thumb_func_start sub_0200D3D8
sub_0200D3D8: ; 0x0200D3D8
	ldr r3, _0200D3DC ; =sub_02021E74
	bx r3
	; .align 2, 0
_0200D3DC: .word sub_02021E74
	thumb_func_end sub_0200D3D8

	thumb_func_start sub_0200D3E0
sub_0200D3E0: ; 0x0200D3E0
	ldr r3, _0200D3E8 ; =sub_0200D3D8
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3E8: .word sub_0200D3D8
	thumb_func_end sub_0200D3E0

	thumb_func_start sub_0200D3EC
sub_0200D3EC: ; 0x0200D3EC
	ldr r3, _0200D3F0 ; =sub_02021CAC
	bx r3
	; .align 2, 0
_0200D3F0: .word sub_02021CAC
	thumb_func_end sub_0200D3EC

	thumb_func_start sub_0200D3F4
sub_0200D3F4: ; 0x0200D3F4
	ldr r3, _0200D3FC ; =sub_0200D3EC
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D3FC: .word sub_0200D3EC
	thumb_func_end sub_0200D3F4

	thumb_func_start sub_0200D400
sub_0200D400: ; 0x0200D400
	ldr r3, _0200D404 ; =sub_02021D34
	bx r3
	; .align 2, 0
_0200D404: .word sub_02021D34
	thumb_func_end sub_0200D400

	thumb_func_start sub_0200D408
sub_0200D408: ; 0x0200D408
	ldr r3, _0200D410 ; =sub_0200D400
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D410: .word sub_0200D400
	thumb_func_end sub_0200D408

	thumb_func_start sub_0200D414
sub_0200D414: ; 0x0200D414
	ldr r3, _0200D418 ; =sub_02021E90
	bx r3
	; .align 2, 0
_0200D418: .word sub_02021E90
	thumb_func_end sub_0200D414

	thumb_func_start sub_0200D41C
sub_0200D41C: ; 0x0200D41C
	ldr r3, _0200D424 ; =sub_0200D414
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D424: .word sub_0200D414
	thumb_func_end sub_0200D41C

	thumb_func_start sub_0200D428
sub_0200D428: ; 0x0200D428
	ldr r3, _0200D42C ; =sub_02021EF0
	bx r3
	; .align 2, 0
_0200D42C: .word sub_02021EF0
	thumb_func_end sub_0200D428

	thumb_func_start sub_0200D430
sub_0200D430: ; 0x0200D430
	ldr r3, _0200D438 ; =sub_0200D428
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D438: .word sub_0200D428
	thumb_func_end sub_0200D430

	thumb_func_start sub_0200D43C
sub_0200D43C: ; 0x0200D43C
	ldr r3, _0200D444 ; =sub_02021F48
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D444: .word sub_02021F48
	thumb_func_end sub_0200D43C

	thumb_func_start sub_0200D448
sub_0200D448: ; 0x0200D448
	ldr r3, _0200D450 ; =sub_02021E80
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
	; .align 2, 0
_0200D450: .word sub_02021E80
	thumb_func_end sub_0200D448

	thumb_func_start sub_0200D454
sub_0200D454: ; 0x0200D454
	ldr r3, _0200D45C ; =sub_02021E88
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D45C: .word sub_02021E88
	thumb_func_end sub_0200D454

	thumb_func_start sub_0200D460
sub_0200D460: ; 0x0200D460
	ldr r3, _0200D468 ; =sub_0200D448
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D468: .word sub_0200D448
	thumb_func_end sub_0200D460

	thumb_func_start sub_0200D46C
sub_0200D46C: ; 0x0200D46C
	ldr r3, _0200D470 ; =sub_02021F58
	bx r3
	; .align 2, 0
_0200D470: .word sub_02021F58
	thumb_func_end sub_0200D46C

	thumb_func_start sub_0200D474
sub_0200D474: ; 0x0200D474
	ldr r3, _0200D47C ; =sub_0200D46C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D47C: .word sub_0200D46C
	thumb_func_end sub_0200D474

	thumb_func_start sub_0200D480
sub_0200D480: ; 0x0200D480
	ldr r3, _0200D484 ; =sub_02021F74
	bx r3
	; .align 2, 0
_0200D484: .word sub_02021F74
	thumb_func_end sub_0200D480

	thumb_func_start sub_0200D488
sub_0200D488: ; 0x0200D488
	ldr r3, _0200D490 ; =sub_0200D480
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D490: .word sub_0200D480
	thumb_func_end sub_0200D488

	thumb_func_start sub_0200D494
sub_0200D494: ; 0x0200D494
	push {r3, r4, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	add r4, r0, #0
	str r1, [sp, #4]
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D4B4
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #4]
_0200D4B4:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0200D494

	thumb_func_start sub_0200D4C4
sub_0200D4C4: ; 0x0200D4C4
	ldr r3, _0200D4CC ; =sub_0200D494
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D4CC: .word sub_0200D494
	thumb_func_end sub_0200D4C4

	thumb_func_start sub_0200D4D0
sub_0200D4D0: ; 0x0200D4D0
	push {r4, r5, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	add r5, r0, #0
	add r4, r3, #0
	str r1, [sp, #4]
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D4EE
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
_0200D4EE:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200D4D0

	thumb_func_start sub_0200D500
sub_0200D500: ; 0x0200D500
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0200D4D0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200D500

	thumb_func_start sub_0200D50C
sub_0200D50C: ; 0x0200D50C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl sub_02021D28
	add r4, r0, #0
	ldr r1, [r4, #0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6]
	add r0, r7, #0
	bl sub_02021FC8
	cmp r0, #2
	ldr r1, [r4, #4]
	bne _0200D544
	mov r0, #3
	lsl r0, r0, #0x12
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0200D544:
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D50C

	thumb_func_start sub_0200D550
sub_0200D550: ; 0x0200D550
	ldr r3, _0200D558 ; =sub_0200D50C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D558: .word sub_0200D50C
	thumb_func_end sub_0200D550

	thumb_func_start sub_0200D55C
sub_0200D55C: ; 0x0200D55C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02021D28
	add r4, r0, #0
	ldr r1, [r4, #0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6]
	ldr r0, [sp]
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D592
	ldr r0, [r4, #4]
	sub r1, r0, r7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0200D592:
	ldr r1, [r4, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D55C

	thumb_func_start sub_0200D5A0
sub_0200D5A0: ; 0x0200D5A0
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_0200D55C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200D5A0

	thumb_func_start sub_0200D5AC
sub_0200D5AC: ; 0x0200D5AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021D28
	ldr r2, [r0, #0]
	lsl r1, r5, #0xc
	add r1, r2, r1
	str r1, [sp]
	ldr r2, [r0, #4]
	lsl r1, r4, #0xc
	add r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200D5AC

	thumb_func_start sub_0200D5DC
sub_0200D5DC: ; 0x0200D5DC
	ldr r3, _0200D5E4 ; =sub_0200D5AC
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D5E4: .word sub_0200D5AC
	thumb_func_end sub_0200D5DC

	thumb_func_start sub_0200D5E8
sub_0200D5E8: ; 0x0200D5E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	ldr r1, [r0, #0]
	add r1, r1, r4
	str r1, [sp]
	ldr r1, [r0, #4]
	add r1, r1, r6
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200D5E8

	thumb_func_start sub_0200D614
sub_0200D614: ; 0x0200D614
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	str r4, [sp]
	str r6, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0200D614

	thumb_func_start sub_0200D638
sub_0200D638: ; 0x0200D638
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021D28
	ldr r1, [r0, #0]
	str r1, [r5, #0]
	ldr r0, [r0, #4]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200D638

	thumb_func_start sub_0200D650
sub_0200D650: ; 0x0200D650
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D670
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r7
	bl sub_0200D614
	pop {r3, r4, r5, r6, r7, pc}
_0200D670:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200D614
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D650

	thumb_func_start sub_0200D67C
sub_0200D67C: ; 0x0200D67C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200D638
	ldr r0, [r5, #0]
	bl sub_02021FC8
	cmp r0, #2
	bne _0200D698
	ldr r0, [r4, #0]
	sub r0, r0, r6
	str r0, [r4, #0]
_0200D698:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200D67C

	thumb_func_start sub_0200D69C
sub_0200D69C: ; 0x0200D69C
	ldr r3, _0200D6A0 ; =sub_02021CF8
	bx r3
	; .align 2, 0
_0200D6A0: .word sub_02021CF8
	thumb_func_end sub_0200D69C

	thumb_func_start sub_0200D6A4
sub_0200D6A4: ; 0x0200D6A4
	ldr r3, _0200D6AC ; =sub_0200D69C
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D6AC: .word sub_0200D69C
	thumb_func_end sub_0200D6A4

	thumb_func_start sub_0200D6B0
sub_0200D6B0: ; 0x0200D6B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02021D2C
	add r4, r0, #0
	ldr r0, _0200D6E4 ; =0x45800000
	add r1, r6, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [r4, #0]
	ldr r0, _0200D6E4 ; =0x45800000
	add r1, r7, #0
	bl sub_020E18B0
	bl sub_020E1740
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021C70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200D6E4: .word 0x45800000
	thumb_func_end sub_0200D6B0

	thumb_func_start sub_0200D6E8
sub_0200D6E8: ; 0x0200D6E8
	ldr r3, _0200D6F0 ; =sub_0200D6B0
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D6F0: .word sub_0200D6B0
	thumb_func_end sub_0200D6E8

	thumb_func_start sub_0200D6F4
sub_0200D6F4: ; 0x0200D6F4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp]
	bl sub_02021D2C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020E17B4
	add r6, r0, #0
	ldr r0, _0200D748 ; =0x45800000
	add r1, r5, #0
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020E0B00
	bl sub_020E1740
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	bl sub_020E17B4
	add r5, r0, #0
	ldr r0, _0200D748 ; =0x45800000
	ldr r1, [sp]
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020E0B00
	bl sub_020E1740
	str r0, [r4, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02021C70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200D748: .word 0x45800000
	thumb_func_end sub_0200D6F4

	thumb_func_start sub_0200D74C
sub_0200D74C: ; 0x0200D74C
	ldr r3, _0200D754 ; =sub_0200D6F4
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D754: .word sub_0200D6F4
	thumb_func_end sub_0200D74C

	thumb_func_start sub_0200D758
sub_0200D758: ; 0x0200D758
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02021D2C
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_020E17B4
	ldr r1, _0200D784 ; =0x45800000
	bl sub_020E1304
	str r0, [r5, #0]
	ldr r0, [r6, #4]
	bl sub_020E17B4
	ldr r1, _0200D784 ; =0x45800000
	bl sub_020E1304
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	nop
_0200D784: .word 0x45800000
	thumb_func_end sub_0200D758

	thumb_func_start sub_0200D788
sub_0200D788: ; 0x0200D788
	ldr r3, _0200D790 ; =sub_0200D758
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D790: .word sub_0200D758
	thumb_func_end sub_0200D788

	thumb_func_start sub_0200D794
sub_0200D794: ; 0x0200D794
	ldr r3, _0200D798 ; =sub_02021C94
	bx r3
	; .align 2, 0
_0200D798: .word sub_02021C94
	thumb_func_end sub_0200D794

	thumb_func_start sub_0200D79C
sub_0200D79C: ; 0x0200D79C
	ldr r3, _0200D7A4 ; =sub_0200D794
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D7A4: .word sub_0200D794
	thumb_func_end sub_0200D79C

	thumb_func_start sub_0200D7A8
sub_0200D7A8: ; 0x0200D7A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_02021D30
	add r0, r0, r5
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	bl sub_02021C94
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200D7A8

	thumb_func_start sub_0200D7C0
sub_0200D7C0: ; 0x0200D7C0
	ldr r3, _0200D7C8 ; =sub_0200D7A8
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D7C8: .word sub_0200D7A8
	thumb_func_end sub_0200D7C0

	thumb_func_start sub_0200D7CC
sub_0200D7CC: ; 0x0200D7CC
	ldr r3, _0200D7D0 ; =sub_02021D0C
	bx r3
	; .align 2, 0
_0200D7D0: .word sub_02021D0C
	thumb_func_end sub_0200D7CC

	thumb_func_start sub_0200D7D4
sub_0200D7D4: ; 0x0200D7D4
	ldr r3, _0200D7DC ; =sub_0200D7CC
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D7DC: .word sub_0200D7CC
	thumb_func_end sub_0200D7D4

	thumb_func_start sub_0200D7E0
sub_0200D7E0: ; 0x0200D7E0
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #0]
	add r1, sp, #0
	bl sub_02021C60
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_0200D7E0

	thumb_func_start sub_0200D7FC
sub_0200D7FC: ; 0x0200D7FC
	ldr r3, _0200D804 ; =sub_02021FA0
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D804: .word sub_02021FA0
	thumb_func_end sub_0200D7FC

	thumb_func_start sub_0200D808
sub_0200D808: ; 0x0200D808
	ldr r3, _0200D80C ; =sub_02021FE0
	bx r3
	; .align 2, 0
_0200D80C: .word sub_02021FE0
	thumb_func_end sub_0200D808

	thumb_func_start sub_0200D810
sub_0200D810: ; 0x0200D810
	ldr r3, _0200D818 ; =sub_0200D808
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D818: .word sub_0200D808
	thumb_func_end sub_0200D810

	thumb_func_start sub_0200D81C
sub_0200D81C: ; 0x0200D81C
	ldr r3, _0200D824 ; =sub_020220F4
	ldr r0, [r0, #0]
	bx r3
	nop
_0200D824: .word sub_020220F4
	thumb_func_end sub_0200D81C

	thumb_func_start sub_0200D828
sub_0200D828: ; 0x0200D828
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200D846
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D846:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200985C
	add r5, r0, #0
	beq _0200D874
	bl sub_0200A39C
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D874:
	bl sub_02022974
	cmp r5, #0
	beq _0200D882
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D882:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D828

	thumb_func_start sub_0200D888
sub_0200D888: ; 0x0200D888
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200D8A6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D8A6:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_0200985C
	add r5, r0, #0
	beq _0200D8D4
	bl sub_0200A450
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D8D4:
	bl sub_02022974
	cmp r5, #0
	beq _0200D8E2
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D8E2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D888

	thumb_func_start sub_0200D8E8
sub_0200D8E8: ; 0x0200D8E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02009D34
	cmp r0, #0
	bne _0200D906
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0200D906:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl sub_02009A4C
	add r5, r0, #0
	beq _0200D934
	bl sub_0200A450
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200D1FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D934:
	bl sub_02022974
	cmp r5, #0
	beq _0200D942
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0200D942:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D8E8

	thumb_func_start sub_0200D948
sub_0200D948: ; 0x0200D948
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02009DC8
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0
	bl sub_02009968
	add r0, r6, #0
	bl sub_0200A4C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D948

	thumb_func_start sub_0200D97C
sub_0200D97C: ; 0x0200D97C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02009DC8
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r2, r7, #0
	bl sub_020099D4
	add r0, r6, #0
	bl sub_0200A6B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D97C

	thumb_func_start sub_0200D9B0
sub_0200D9B0: ; 0x0200D9B0
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0200D9B0

	thumb_func_start sub_0200D9B4
sub_0200D9B4: ; 0x0200D9B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x24]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02009DC8
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0
	bl sub_02009C14
	add r0, r6, #0
	bl sub_0200A4C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200D9B4

	thumb_func_start sub_0200D9E8
sub_0200D9E8: ; 0x0200D9E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200DA00 ; =0x021BF67C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x18]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201CE14
	pop {r3, r4, r5, pc}
	nop
_0200DA00: .word 0x021BF67C
	thumb_func_end sub_0200D9E8

	thumb_func_start sub_0200DA04
sub_0200DA04: ; 0x0200DA04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200DA1C ; =0x021BF67C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x1c]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201CE14
	pop {r3, r4, r5, pc}
	nop
_0200DA1C: .word 0x021BF67C
	thumb_func_end sub_0200DA04

	thumb_func_start sub_0200DA20
sub_0200DA20: ; 0x0200DA20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200DA38 ; =0x021BF67C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x24]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201CE14
	pop {r3, r4, r5, pc}
	nop
_0200DA38: .word 0x021BF67C
	thumb_func_end sub_0200DA20

	thumb_func_start sub_0200DA3C
sub_0200DA3C: ; 0x0200DA3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200DA54 ; =0x021BF67C
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x20]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201CE14
	pop {r3, r4, r5, pc}
	nop
_0200DA54: .word 0x021BF67C
	thumb_func_end sub_0200DA3C

	thumb_func_start sub_0200DA58
sub_0200DA58: ; 0x0200DA58
	ldr r3, _0200DA5C ; =sub_0201CEA8
	bx r3
	; .align 2, 0
_0200DA5C: .word sub_0201CEA8
	thumb_func_end sub_0200DA58

	thumb_func_start sub_0200DA60
sub_0200DA60: ; 0x0200DA60
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	cmp r3, #0
	str r2, [sp]
	bne _0200DA86
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x20]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02006E3C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0200DA86:
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r1, #1
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02006E3C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200DA60

	thumb_func_start sub_0200DAA0
sub_0200DAA0: ; 0x0200DAA0
	mov r0, #0x18
	bx lr
	thumb_func_end sub_0200DAA0

	thumb_func_start sub_0200DAA4
sub_0200DAA4: ; 0x0200DAA4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r5, r1, #0
	add r4, r3, #0
	cmp r0, #0
	beq _0200DABA
	mov r1, #1
	b _0200DABC
_0200DABA:
	mov r1, #0
_0200DABC:
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r3, r5, #0
	bl sub_02006E3C
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	cmp r0, #2
	bne _0200DADE
	mov r1, #0x2d
	b _0200DAE0
_0200DADE:
	mov r1, #0x18
_0200DAE0:
	cmp r5, #4
	bhs _0200DAFA
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02006E84
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0200DAFA:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02006E84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200DAA4

	thumb_func_start sub_0200DB10
sub_0200DB10: ; 0x0200DB10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r5, [sp, #0x40]
	sub r7, r2, #1
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x10]
	sub r6, r2, #1
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	lsl r3, r6, #0x18
	str r5, [sp, #0xc]
	add r2, sp, #0x28
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r1, sp, #0x28
	ldrh r4, [r1, #0x1c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r1, #0x10]
	add r2, r4, #1
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	add r0, sp, #0x28
	ldrb r1, [r0, #0x10]
	ldr r0, [sp, #0x18]
	add r2, r4, #2
	add r0, r0, r1
	str r0, [sp, #0x20]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x14]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x14]
	add r2, r4, #5
	lsl r2, r2, #0x10
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, sp, #0x28
	ldrb r1, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	add r2, r4, #6
	add r7, r0, r1
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	add r2, r4, #7
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r4, #8
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200DB10

	thumb_func_start sub_0200DC48
sub_0200DC48: ; 0x0200DC48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201C290
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201C29C
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201C2A0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0201C294
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl sub_0201C298
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	str r1, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x18]
	bl sub_0200DB10
	cmp r4, #0
	bne _0200DC98
	add r0, r5, #0
	bl sub_0201A954
_0200DC98:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200DC48

	thumb_func_start sub_0200DC9C
sub_0200DC9C: ; 0x0200DC9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201C290
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201C29C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201C2A0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201C298
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x14]
	add r0, r0, #2
	add r1, r1, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	sub r3, r6, #1
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	cmp r4, #0
	bne _0200DCFE
	add r0, r5, #0
	bl sub_0201ACF4
_0200DCFE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200DC9C

	thumb_func_start sub_0200DD04
sub_0200DD04: ; 0x0200DD04
	add r0, r0, #2
	bx lr
	thumb_func_end sub_0200DD04

	thumb_func_start sub_0200DD08
sub_0200DD08: ; 0x0200DD08
	add r0, #0x19
	bx lr
	thumb_func_end sub_0200DD08

	thumb_func_start sub_0200DD0C
sub_0200DD0C: ; 0x0200DD0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	ldrb r7, [r0, #0x10]
	add r6, r2, #0
	add r5, r1, #0
	add r0, r7, #0
	add r4, r3, #0
	bl sub_0200DD04
	add r1, r0, #0
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r3, r5, #0
	bl sub_02006E3C
	cmp r5, #4
	bhs _0200DD5C
	add r0, r7, #0
	bl sub_0200DD08
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02006E84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0200DD5C:
	add r0, r7, #0
	bl sub_0200DD08
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl sub_02006E84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200DD0C

	thumb_func_start sub_0200DD7C
sub_0200DD7C: ; 0x0200DD7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r2, [sp, #0x4c]
	add r7, r0, #0
	str r2, [sp, #0x4c]
	ldr r2, [sp, #0x18]
	ldr r5, [sp, #0x50]
	sub r6, r2, #1
	ldr r2, [sp, #0x14]
	sub r2, r2, #2
	str r2, [sp, #0x28]
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, sp, #0x38
	lsl r3, r3, #0x18
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	add r0, sp, #0x38
	ldrh r4, [r0, #0x1c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x24]
	str r5, [sp, #0xc]
	add r2, r4, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0, #0x10]
	add r2, r4, #2
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	lsr r2, r2, #0x10
	bl sub_02019CB8
	add r0, sp, #0x38
	ldrb r1, [r0, #0x10]
	ldr r0, [sp, #0x14]
	add r2, r4, #3
	add r0, r0, r1
	str r0, [sp, #0x2c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x2c]
	add r2, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x20]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x2c]
	add r2, r4, #5
	add r0, r0, #2
	str r0, [sp, #0x1c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x1c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	add r2, r4, #6
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	add r2, r4, #7
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x2c]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #9
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xb
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r2, r4, #0
	ldr r3, [sp, #0x28]
	add r2, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x4c]
	lsr r2, r2, #0x10
	add r6, r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x24]
	str r5, [sp, #0xc]
	add r2, #0xd
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0, #0x10]
	add r2, r4, #0
	add r2, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	lsr r2, r2, #0x10
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0xf
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r2, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x1c]
	str r5, [sp, #0xc]
	add r4, #0x11
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200DD7C

	thumb_func_start sub_0200E010
sub_0200E010: ; 0x0200E010
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_0201C290
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201C29C
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201C2A0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0201C294
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201C298
	str r4, [sp]
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_0200DD7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E010

	thumb_func_start sub_0200E060
sub_0200E060: ; 0x0200E060
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	add r2, r3, #0
	add r5, r0, #0
	bl sub_0200E010
	cmp r4, #0
	bne _0200E07A
	add r0, r5, #0
	bl sub_0201A954
_0200E07A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200E130
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200E060

	thumb_func_start sub_0200E084
sub_0200E084: ; 0x0200E084
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201C290
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0201C29C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201C2A0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0201C298
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x14]
	add r0, r0, #2
	add r1, r1, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	sub r3, r6, #2
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	cmp r4, #0
	bne _0200E0E6
	add r0, r5, #0
	bl sub_0201ACF4
_0200E0E6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E084

	thumb_func_start sub_0200E0EC
sub_0200E0EC: ; 0x0200E0EC
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r1, #0
	str r0, [sp, #0x1c]
	add r1, sp, #0x14
	strh r3, [r1, #0xc]
	add r4, r2, #0
	add r0, sp, #0x20
	ldrh r2, [r0, #0x10]
	add r3, r4, #0
	strh r2, [r1, #0xe]
	ldr r2, [sp, #0x34]
	str r2, [sp, #0x14]
	ldrh r2, [r0, #0x18]
	strh r2, [r1, #4]
	ldrh r2, [r0, #0x1c]
	strh r2, [r1, #6]
	ldrh r1, [r0, #0x20]
	add r2, r5, #0
	str r1, [sp]
	ldrh r1, [r0, #0x24]
	str r1, [sp, #4]
	ldrh r1, [r0, #0x28]
	str r1, [sp, #8]
	ldrh r0, [r0, #0x2c]
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl sub_0201A1E4
	add sp, #0x24
	pop {r4, r5, pc}
	thumb_func_end sub_0200E0EC

	thumb_func_start sub_0200E130
sub_0200E130: ; 0x0200E130
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
	ldr r0, [r0, #0]
	bl sub_02018364
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_0201C290
	mov r1, #6
	str r0, [sp, #0x28]
	add r0, r6, #0
	lsl r1, r1, #6
	bl sub_02018144
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	bl sub_02019F28
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0x26
	mov r1, #0x16
	mov r2, #0
	add r3, sp, #0x3c
	bl sub_02006F50
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	mov r7, #0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	add r0, #0xa
	lsl r0, r0, #5
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x24]
	add r0, #0xb
	lsl r0, r0, #5
	str r0, [sp, #0x38]
_0200E184:
	ldr r1, [sp, #0x34]
	lsl r6, r7, #7
	add r0, r5, r6
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r6, #0
	ldr r1, [sp, #0x38]
	add r0, #0x20
	add r0, r5, r0
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r6, #0
	ldr r1, [sp, #0x34]
	add r0, #0x40
	add r0, r5, r0
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020D50B8
	ldr r1, [sp, #0x38]
	add r6, #0x60
	add r0, r5, r6
	add r1, r4, r1
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #3
	blo _0200E184
	mov r1, #0x30
	str r1, [sp]
	str r5, [sp, #4]
	mov r3, #0xc
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r2, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	mov r1, #4
	bl sub_0200E0EC
	ldr r0, [sp, #0x24]
	mov r3, #6
	add r0, #0x12
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0]
	add r2, r5, #0
	lsl r3, r3, #6
	bl sub_0201958C
	ldr r0, [sp, #0x24]
	bl sub_020027A8
	ldr r0, [sp, #0x2c]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E130

	thumb_func_start sub_0200E218
sub_0200E218: ; 0x0200E218
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	add r7, r2, #0
	add r5, r3, #0
	bl sub_0200DD04
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x26
	add r3, sp, #0x10
	bl sub_02006F50
	str r0, [sp, #0xc]
	mov r1, #9
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #6
	bl sub_02018144
	ldr r1, [sp, #0x10]
	mov r2, #9
	ldr r1, [r1, #0x14]
	lsl r2, r2, #6
	add r4, r0, #0
	bl sub_020D50B8
	mov r0, #9
	mov r3, #0
	lsl r0, r0, #6
	mov r1, #0xf
_0200E25E:
	ldrb r2, [r4, r3]
	lsl r6, r2, #0x14
	and r2, r1
	lsl r2, r2, #0x18
	lsr r6, r6, #0x18
	lsr r2, r2, #0x18
	cmp r6, #0
	bne _0200E270
	add r6, r5, #0
_0200E270:
	cmp r2, #0
	bne _0200E276
	add r2, r5, #0
_0200E276:
	lsl r6, r6, #4
	orr r2, r6
	strb r2, [r4, r3]
	add r3, r3, #1
	cmp r3, r0
	blo _0200E25E
	str r7, [sp]
	mov r3, #9
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r4, #0
	lsl r3, r3, #6
	bl sub_0201958C
	ldr r0, [sp, #0xc]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E218

	thumb_func_start sub_0200E2A4
sub_0200E2A4: ; 0x0200E2A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	add r5, r2, #0
	mov r0, #0xf
	add r6, r1, #0
	add r7, r3, #0
	str r5, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r1, #0
	ldr r4, [sp, #0x38]
	str r1, [sp, #8]
	ldr r2, [sp, #0x10]
	mov r0, #0x24
	add r3, r6, #0
	str r4, [sp, #0xc]
	bl sub_02006E3C
	mov r0, #0x24
	mov r1, #1
	add r2, r4, #0
	bl sub_02006AC0
	add r1, sp, #0x18
	str r0, [sp, #0x14]
	bl sub_020A71B0
	add r2, sp, #0x20
	ldr r1, [sp, #0x18]
	ldrb r2, [r2, #0x10]
	lsl r3, r7, #0x15
	ldr r1, [r1, #0xc]
	lsl r2, r2, #5
	add r1, r1, r2
	add r0, r6, #0
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl sub_0201972C
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl sub_02018238
	add r0, sp, #0x20
	ldrb r3, [r0, #0x10]
	cmp r3, #1
	bhi _0200E318
	ldrh r0, [r0, #0x14]
	add r5, #0x1e
	lsl r2, r5, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	lsr r2, r2, #0x10
	str r4, [sp, #4]
	bl sub_0200E31C
_0200E318:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E2A4

	thumb_func_start sub_0200E31C
sub_0200E31C: ; 0x0200E31C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [sp, #0x20]
	cmp r3, #0
	bne _0200E330
	add r1, #0x21
	lsl r0, r1, #0x10
	b _0200E334
_0200E330:
	add r0, r1, #2
	lsl r0, r0, #0x10
_0200E334:
	lsr r1, r0, #0x10
	mov r0, #3
	str r2, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0x24
	add r3, r4, #0
	bl sub_02006E3C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200E31C

	thumb_func_start sub_0200E354
sub_0200E354: ; 0x0200E354
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r6, [sp, #0x5c]
	sub r7, r2, #1
	ldr r2, [sp, #0x18]
	ldr r5, [sp, #0x60]
	str r2, [sp, #0x34]
	sub r2, #9
	str r2, [sp, #0x34]
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [sp, #0x34]
	str r5, [sp, #0xc]
	add r2, sp, #0x48
	lsl r3, r3, #0x18
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	str r0, [sp, #0x10]
	bl sub_02019CB8
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	add r0, sp, #0x48
	ldrh r4, [r0, #0x1c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x30]
	str r5, [sp, #0xc]
	add r2, r4, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, sp, #0x48
	ldrb r0, [r0, #0x10]
	add r2, r4, #2
	lsl r2, r2, #0x10
	str r0, [sp, #0x3c]
	add r0, r0, #7
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	lsr r2, r2, #0x10
	sub r0, r0, #7
	str r0, [sp, #0x20]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r2, r4, #3
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	lsr r2, r2, #0x10
	add r0, r1, r0
	str r0, [sp, #0x38]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x38]
	add r2, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x2c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x38]
	add r0, r0, #2
	str r0, [sp, #0x28]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, r4, #5
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r4, #6
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	add r2, r4, #7
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r3, [sp, #0x18]
	add r2, #8
	sub r3, r3, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	add r2, #9
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, #0xb
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	add r6, r0, r6
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x34]
	str r5, [sp, #0xc]
	add r2, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x30]
	str r5, [sp, #0xc]
	add r2, #0xd
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r2, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r2, #0xe
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	add r2, #0xf
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r2, r4, #0
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r4, #0x11
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E354

	thumb_func_start sub_0200E61C
sub_0200E61C: ; 0x0200E61C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x10]
	add r7, r0, #0
	str r2, [sp, #0x14]
	bl sub_0201C290
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_0201C29C
	sub r0, r0, #7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl sub_0201C2A0
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x24]
_0200E646:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	add r3, r2, #0
	add r0, r1, r0
	mov r1, #6
	mul r3, r1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x18
	mov r4, #0
	add r5, r1, r3
	lsr r6, r0, #0x18
_0200E65E:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	add r2, r4, r5
	add r3, r3, r4
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r7, #0]
	ldr r1, [sp, #0x20]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _0200E65E
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	cmp r0, #4
	blo _0200E646
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E61C

	thumb_func_start sub_0200E69C
sub_0200E69C: ; 0x0200E69C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	str r1, [sp, #0x10]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201C290
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bhi _0200E6FA
	add r0, r4, #0
	bl sub_0201C29C
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_0201C2A0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0201C294
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200E354
	add r1, r6, #0
	add r1, #0x1e
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0200E61C
	b _0200E72C
_0200E6FA:
	add r0, r4, #0
	bl sub_0201C29C
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_0201C2A0
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_0201C294
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200DD7C
_0200E72C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200E738
	add r0, r4, #0
	bl sub_0201A954
_0200E738:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200E130
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200E69C

	thumb_func_start sub_0200E744
sub_0200E744: ; 0x0200E744
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x10]
	bl sub_0201C290
	str r0, [sp, #0x14]
	cmp r4, #1
	bhi _0200E7A2
	add r0, r5, #0
	bl sub_0201C29C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201C2A0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201C298
	sub r1, r7, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r0, r0, #2
	lsl r0, r0, #0x18
	sub r4, #9
	lsl r3, r4, #0x18
	add r6, #0xb
	str r1, [sp]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_02019CB8
	b _0200E7EA
_0200E7A2:
	add r0, r5, #0
	bl sub_0201C29C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201C2A0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0201C298
	sub r1, r6, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	add r1, r7, #5
	lsl r1, r1, #0x18
	add r0, r0, #2
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	sub r3, r4, #2
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl sub_02019CB8
_0200E7EA:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200E7F6
	add r0, r5, #0
	bl sub_0201ACF4
_0200E7F6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200E744

	thumb_func_start sub_0200E7FC
sub_0200E7FC: ; 0x0200E7FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x20]
	ldr r0, [r0, #0]
	str r1, [sp, #0x24]
	bl sub_02018364
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	bl sub_0201C290
	bl sub_02019F28
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	ldr r1, _0200E914 ; =0x0000048C
	bl sub_02018144
	ldr r1, [sp, #0x24]
	add r4, r0, #0
	ldr r0, _0200E918 ; =0x00000404
	add r1, #0x12
	lsl r1, r1, #5
	add r0, r4, r0
	add r1, r5, r1
	mov r2, #0x80
	bl sub_020D50B8
	ldr r0, [sp, #0x28]
	mov r1, #0x80
	bl sub_02018144
	ldr r1, [sp, #0x24]
	mov r2, #0x20
	add r1, #0xa
	lsl r1, r1, #5
	str r1, [sp, #0x2c]
	add r1, r5, r1
	add r6, r0, #0
	bl sub_020D50B8
	ldr r0, [sp, #0x24]
	mov r2, #0x20
	add r0, #0xb
	lsl r7, r0, #5
	add r0, r6, #0
	add r0, #0x20
	add r1, r5, r7
	bl sub_020D50B8
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	add r0, #0x40
	add r1, r5, r1
	mov r2, #0x20
	bl sub_020D50B8
	add r0, r6, #0
	add r0, #0x60
	add r1, r5, r7
	mov r2, #0x20
	bl sub_020D50B8
	mov r5, #0
	add r7, r4, #4
_0200E87E:
	lsl r0, r5, #7
	add r0, r7, r0
	add r1, r6, #0
	mov r2, #0x80
	bl sub_020D50B8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0200E87E
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [sp, #0x28]
	mov r1, #0x17
	str r0, [sp]
	mov r0, #0x26
	mov r2, #0
	add r3, sp, #0x30
	bl sub_02006F50
	mov r2, #0x80
	add r5, r0, #0
	str r2, [sp]
	add r0, r4, #4
	str r0, [sp, #4]
	mov r3, #0x10
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	ldr r0, [r0, #0x14]
	bl sub_0200E0EC
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [sp, #0x20]
	ldr r1, _0200E91C ; =0x00000484
	str r0, [r4, #0]
	ldr r0, [sp, #0x24]
	mov r2, #0
	strh r0, [r4, r1]
	add r0, r1, #2
	strb r2, [r4, r0]
	add r0, r1, #3
	ldrb r3, [r4, r0]
	mov r0, #0x7f
	bic r3, r0
	add r0, r1, #3
	strb r3, [r4, r0]
	add r0, r1, #4
	ldrb r3, [r4, r0]
	mov r0, #3
	bic r3, r0
	add r0, r1, #4
	strb r3, [r4, r0]
	ldr r0, _0200E920 ; =sub_0200EB20
	add r1, r4, #0
	bl sub_0200DA04
	add r0, r4, #0
	mov r1, #1
	bl sub_0200E924
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0200E914: .word 0x0000048C
_0200E918: .word 0x00000404
_0200E91C: .word 0x00000484
_0200E920: .word sub_0200EB20
	thumb_func_end sub_0200E7FC

	thumb_func_start sub_0200E924
sub_0200E924: ; 0x0200E924
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl sub_0201C290
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl sub_0201C29C
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	bl sub_0201C2A0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0]
	bl sub_0201C294
	str r0, [sp, #0x20]
	cmp r6, #2
	bne _0200EA2E
	ldr r2, _0200EB1C ; =0x00000484
	add r1, r4, #0
	ldrh r0, [r5, r2]
	sub r2, #0x80
	add r2, r5, r2
	add r0, #0x12
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r3, #0x80
	ldr r0, [r0, #0]
	bl sub_0201958C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r7, r0, #2
	ldr r0, [sp, #0x20]
	ldr r2, _0200EB1C ; =0x00000484
	add r6, r1, r0
	add r0, r6, #1
	str r0, [sp, #0x14]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, r2]
	ldr r0, [r5, #0]
	ldr r3, [sp, #0x14]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	add r6, r6, #2
	lsl r3, r6, #0x18
	add r2, #0xb
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	add r7, r0, #3
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	add r2, #0xa
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	lsl r3, r6, #0x18
	ldr r0, [r0, #0]
	add r2, #0xb
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl sub_02019448
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0200EA2E:
	ldr r3, _0200EB1C ; =0x00000484
	add r2, r5, #4
	ldrh r0, [r5, r3]
	add r3, r3, #3
	add r1, r4, #0
	add r0, #0x12
	str r0, [sp]
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0]
	lsl r3, r3, #0x19
	lsr r3, r3, #0x19
	lsl r3, r3, #7
	add r2, r2, r3
	ldr r0, [r0, #0]
	mov r3, #0x80
	bl sub_0201958C
	cmp r6, #0
	beq _0200EB16
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r7, r0, #2
	ldr r0, [sp, #0x20]
	ldr r2, _0200EB1C ; =0x00000484
	add r6, r1, r0
	add r0, r6, #1
	str r0, [sp, #0x10]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, r2]
	ldr r0, [r5, #0]
	ldr r3, [sp, #0x10]
	add r2, #0x12
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	add r6, r6, #2
	lsl r3, r6, #0x18
	add r2, #0x13
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x10]
	add r7, r0, #3
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	lsl r3, r3, #0x18
	ldr r0, [r0, #0]
	add r2, #0x14
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200EB1C ; =0x00000484
	ldr r0, [r5, #0]
	ldrh r2, [r5, r2]
	lsl r3, r6, #0x18
	ldr r0, [r0, #0]
	add r2, #0x15
	lsl r2, r2, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl sub_02019448
_0200EB16:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0200EB1C: .word 0x00000484
	thumb_func_end sub_0200E924

	thumb_func_start sub_0200EB20
sub_0200EB20: ; 0x0200EB20
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0200EB88 ; =0x00000488
	ldrb r2, [r1, r0]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	beq _0200EB42
	cmp r2, #1
	bne _0200EB3A
	add r0, r1, #0
	mov r1, #2
	bl sub_0200E924
_0200EB3A:
	add r0, r4, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_0200EB42:
	sub r2, r0, #2
	ldrb r2, [r1, r2]
	add r3, r2, #1
	sub r2, r0, #2
	strb r3, [r1, r2]
	ldrb r2, [r1, r2]
	cmp r2, #0x10
	bne _0200EB84
	mov r3, #0
	sub r2, r0, #2
	strb r3, [r1, r2]
	sub r2, r0, #1
	ldrb r2, [r1, r2]
	mov r4, #0x7f
	bic r2, r4
	sub r4, r0, #1
	ldrb r4, [r1, r4]
	sub r0, r0, #1
	lsl r4, r4, #0x19
	lsr r4, r4, #0x19
	add r5, r4, #1
	mov r4, #7
	and r4, r5
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	mov r4, #0x7f
	and r4, r5
	orr r2, r4
	strb r2, [r1, r0]
	add r0, r1, #0
	add r1, r3, #0
	bl sub_0200E924
_0200EB84:
	pop {r3, r4, r5, pc}
	nop
_0200EB88: .word 0x00000488
	thumb_func_end sub_0200EB20

	thumb_func_start sub_0200EB8C
sub_0200EB8C: ; 0x0200EB8C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200EB8C

	thumb_func_start sub_0200EBA0
sub_0200EBA0: ; 0x0200EBA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0200EBC0 ; =sub_0200EB8C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	ldr r1, _0200EBC4 ; =0x00000488
	mov r0, #3
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	nop
_0200EBC0: .word sub_0200EB8C
_0200EBC4: .word 0x00000488
	thumb_func_end sub_0200EBA0

	thumb_func_start sub_0200EBC8
sub_0200EBC8: ; 0x0200EBC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0200EBE8 ; =sub_0200EB8C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	ldr r1, _0200EBEC ; =0x00000488
	mov r0, #3
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	nop
_0200EBE8: .word sub_0200EB8C
_0200EBEC: .word 0x00000488
	thumb_func_end sub_0200EBC8

	thumb_func_start sub_0200EBF0
sub_0200EBF0: ; 0x0200EBF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	ldr r5, [sp, #0x30]
	str r3, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	str r5, [sp]
	bl sub_0200ED14
	add r4, r0, #0
	add r1, r5, #0
	bl sub_0200ED50
	add r0, r4, #0
	bl sub_0200ED7C
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl sub_0200EDD4
	add r2, sp, #0x10
	ldrh r1, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	add r0, r4, #0
	bl sub_0200EE24
	add r2, sp, #0x10
	ldrb r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	add r0, r4, #0
	bl sub_0200EF7C
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02019448
	ldr r0, _0200EC44 ; =0x0000016F
	add r0, r4, r0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0200EC44: .word 0x0000016F
	thumb_func_end sub_0200EBF0

	thumb_func_start sub_0200EC48
sub_0200EC48: ; 0x0200EC48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	ldr r5, [sp, #0x2c]
	str r3, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	str r5, [sp]
	bl sub_0200ED14
	add r4, r0, #0
	add r1, r5, #0
	bl sub_0200ED50
	add r0, r4, #0
	bl sub_0200ED7C
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl sub_0200EDD4
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl sub_0200EE64
	add r2, sp, #0x10
	ldrb r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	add r0, r4, #0
	bl sub_0200EF7C
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02019448
	ldr r0, _0200EC98 ; =0x0000016F
	add r0, r4, r0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0200EC98: .word 0x0000016F
	thumb_func_end sub_0200EC48

	thumb_func_start sub_0200EC9C
sub_0200EC9C: ; 0x0200EC9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0200ED10 ; =0x0000016F
	add r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #1
	beq _0200ECB4
	cmp r1, #2
	beq _0200ECD2
	cmp r1, #3
	beq _0200ECE4
	b _0200ECF8
_0200ECB4:
	add r0, r4, #0
	bl sub_0200F12C
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	add r0, r4, #0
	bl ov5_021D375C
	add r0, r5, #0
	bl sub_020067D0
	pop {r3, r4, r5, pc}
_0200ECD2:
	mov r1, #3
	strb r1, [r4, r0]
	sub r0, #0xb
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02021D6C
	b _0200ECF8
_0200ECE4:
	sub r0, #0xb
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_02021E74
	cmp r0, #6
	bne _0200ECF8
	ldr r0, _0200ED10 ; =0x0000016F
	mov r1, #0
	strb r1, [r4, r0]
_0200ECF8:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0]
	bl sub_020219F8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0200ED10: .word 0x0000016F
	thumb_func_end sub_0200EC9C

	thumb_func_start sub_0200ED14
sub_0200ED14: ; 0x0200ED14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	mov r1, #0x17
	add r6, r2, #0
	ldr r0, _0200ED48 ; =sub_0200EC9C
	ldr r3, [sp, #0x18]
	lsl r1, r1, #4
	mov r2, #0
	bl sub_0200679C
	bl sub_0201CED0
	ldr r1, _0200ED4C ; =0x0000016F
	mov r2, #0
	strb r2, [r0, r1]
	sub r2, r1, #7
	str r5, [r0, r2]
	sub r2, r1, #3
	strb r4, [r0, r2]
	sub r2, r1, #2
	strb r6, [r0, r2]
	sub r1, r1, #1
	strb r7, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200ED48: .word sub_0200EC9C
_0200ED4C: .word 0x0000016F
	thumb_func_end sub_0200ED14

	thumb_func_start sub_0200ED50
sub_0200ED50: ; 0x0200ED50
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r5, _0200ED78 ; =0x020E5028
	add r4, sp, #0
	add r6, r0, #0
	add r3, r1, #0
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	add r1, r2, #0
	add r0, r6, #0
	mov r2, #1
	bl ov5_021D3190
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0200ED78: .word 0x020E5028
	thumb_func_end sub_0200ED50

	thumb_func_start sub_0200ED7C
sub_0200ED7C: ; 0x0200ED7C
	push {r3, r4, lr}
	sub sp, #0xc
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, _0200EDD0 ; =0x00015CD5
	mov r2, #0x31
	str r1, [sp, #8]
	mov r1, #0x26
	mov r3, #0
	add r4, r0, #0
	bl ov5_021D3270
	ldr r0, _0200EDD0 ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0x2f
	mov r3, #0
	bl ov5_021D3360
	ldr r0, _0200EDD0 ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0x2e
	mov r3, #0
	bl ov5_021D3388
	mov r0, #1
	str r0, [sp]
	ldr r0, _0200EDD0 ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x30
	mov r3, #0
	bl ov5_021D33B0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0200EDD0: .word 0x00015CD5
	thumb_func_end sub_0200ED7C

	thumb_func_start sub_0200EDD4
sub_0200EDD4: ; 0x0200EDD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r5, _0200EE20 ; =0x020E5040
	add r6, r2, #0
	add r4, r0, #0
	add r7, r1, #0
	add r3, sp, #0
	mov r2, #6
_0200EDE4:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0200EDE4
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r7, #5
	lsl r1, r0, #3
	add r0, sp, #0
	strh r1, [r0]
	add r1, r6, #5
	lsl r1, r1, #3
	strh r1, [r0, #2]
	add r0, r4, #0
	add r1, sp, #0
	bl ov5_021D3584
	mov r1, #0x59
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	bl sub_020219F8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0200EE20: .word 0x020E5040
	thumb_func_end sub_0200EDD4

	thumb_func_start sub_0200EE24
sub_0200EE24: ; 0x0200EE24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _0200EE60 ; =0x00000162
	add r4, r1, #0
	ldrh r0, [r5, r0]
	add r6, r2, #0
	bl sub_0200762C
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #2
	bl sub_02075FB4
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0200EE98
	add r0, r7, #0
	bl sub_02007B6C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0200EE60: .word 0x00000162
	thumb_func_end sub_0200EE24

	thumb_func_start sub_0200EE64
sub_0200EE64: ; 0x0200EE64
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0200EE94 ; =0x00000162
	add r4, r1, #0
	ldrh r0, [r5, r0]
	bl sub_0200762C
	add r6, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_02075EF4
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0200EE98
	add r0, r6, #0
	bl sub_02007B6C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0200EE94: .word 0x00000162
	thumb_func_end sub_0200EE64

	thumb_func_start sub_0200EE98
sub_0200EE98: ; 0x0200EE98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _0200EF6C ; =0x00000162
	add r6, r1, #0
	mov r1, #0x19
	ldrh r0, [r5, r0]
	lsl r1, r1, #8
	bl sub_02018144
	add r2, sp, #0x18
	ldr r3, _0200EF70 ; =0x020E5018
	add r4, r0, #0
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r4, [sp]
	ldr r2, _0200EF6C ; =0x00000162
	ldrh r0, [r6]
	ldrh r1, [r6, #2]
	ldrh r2, [r5, r2]
	add r3, r7, #0
	bl sub_020135F0
	ldr r3, _0200EF74 ; =0x020E5008
	add r2, sp, #8
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x32
	lsl r0, r0, #6
	add r0, r4, r0
	str r0, [sp]
	ldr r2, _0200EF6C ; =0x00000162
	ldrh r0, [r6]
	ldrh r1, [r6, #2]
	ldrh r2, [r5, r2]
	add r3, r7, #0
	bl sub_020135F0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0200EF78 ; =0x00015CD5
	bl sub_02009DC8
	bl sub_0200A534
	mov r1, #1
	str r0, [sp, #4]
	bl sub_020A81B0
	mov r1, #0x19
	add r7, r0, #0
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_020C2C54
	mov r2, #0x19
	add r0, r4, #0
	add r1, r7, #0
	lsl r2, r2, #8
	bl sub_020C02BC
	add r0, r4, #0
	bl sub_020181C4
	ldr r2, _0200EF6C ; =0x00000162
	ldrh r0, [r6]
	ldrh r1, [r6, #4]
	ldrh r2, [r5, r2]
	bl sub_02013660
	add r4, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, _0200EF78 ; =0x00015CD5
	bl sub_02009DC8
	ldr r1, [sp, #4]
	bl sub_0200A72C
	mov r1, #1
	bl sub_020A81FC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x20
	bl sub_020C2C54
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x20
	bl sub_020C0160
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200EF6C: .word 0x00000162
_0200EF70: .word 0x020E5018
_0200EF74: .word 0x020E5008
_0200EF78: .word 0x00015CD5
	thumb_func_end sub_0200EE98

	thumb_func_start sub_0200EF7C
sub_0200EF7C: ; 0x0200EF7C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r3, _0200F128 ; =0x0000016E
	add r5, r0, #0
	ldrb r0, [r5, r3]
	add r4, r1, #0
	sub r1, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	add r6, r2, #0
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #1
	ldrb r0, [r5, r3]
	sub r1, r3, #2
	lsl r2, r2, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #2
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #4
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #3
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #5
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #6
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #2
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r2, r6, #7
	ldrb r0, [r5, r3]
	sub r1, r3, #2
	lsl r2, r2, #0x10
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_02019CB8
	ldr r3, _0200F128 ; =0x0000016E
	add r6, #8
	ldrb r0, [r5, r3]
	lsl r2, r6, #0x10
	sub r1, r3, #2
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0200F128: .word 0x0000016E
	thumb_func_end sub_0200EF7C

	thumb_func_start sub_0200F12C
sub_0200F12C: ; 0x0200F12C
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _0200F170 ; =0x0000016E
	add r4, r0, #0
	ldrb r0, [r4, r3]
	mov r2, #0
	sub r1, r3, #2
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	sub r0, r3, #6
	sub r3, r3, #1
	ldrb r3, [r4, r3]
	ldrb r1, [r4, r1]
	ldr r0, [r4, r0]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldrb r1, [r4, r1]
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0200F170: .word 0x0000016E
	thumb_func_end sub_0200F12C

	thumb_func_start sub_0200F174
sub_0200F174: ; 0x0200F174
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0
	bne _0200F18A
	bl sub_02022974
_0200F18A:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _0200F194
	bl sub_02022974
_0200F194:
	ldr r0, _0200F250 ; =0x021BF5B4
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	beq _0200F1A0
	bl sub_02022974
_0200F1A0:
	ldr r0, _0200F254 ; =0x021BF474
	bl sub_0200F814
	ldr r1, _0200F254 ; =0x021BF474
	add r0, r5, #0
	bl sub_0200F564
	ldr r0, _0200F258 ; =0x021BF4E8
	bl sub_0200F600
	ldr r0, _0200F254 ; =0x021BF474
	add r1, r6, #0
	bl sub_0200F768
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0200F25C ; =0x021BF500
	ldr r2, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, _0200F258 ; =0x021BF4E8
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	add r1, r4, #0
	str r0, [sp, #0x14]
	ldr r0, _0200F260 ; =0x021BF488
	str r5, [sp, #0x18]
	bl sub_0200F5D4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0200F25C ; =0x021BF500
	ldr r2, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, _0200F258 ; =0x021BF4E8
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	add r1, r7, #0
	str r0, [sp, #0x14]
	ldr r0, _0200F264 ; =0x021BF4B8
	str r5, [sp, #0x18]
	bl sub_0200F5D4
	ldr r0, _0200F250 ; =0x021BF5B4
	mov r1, #1
	strh r1, [r0, #0xc]
	ldr r0, _0200F268 ; =0x021BF478
	ldr r1, _0200F260 ; =0x021BF488
	bl sub_0200F534
	ldr r0, _0200F26C ; =0x021BF47C
	ldr r1, _0200F264 ; =0x021BF4B8
	bl sub_0200F534
	ldr r0, _0200F270 ; =0x021BF474
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0200F232
	ldr r0, _0200F254 ; =0x021BF474
	add r0, #0x14
	bl sub_0200F7B4
	ldr r1, _0200F274 ; =0x0000014E
	ldr r0, _0200F254 ; =0x021BF474
	mov r2, #1
	strb r2, [r0, r1]
_0200F232:
	ldr r0, _0200F254 ; =0x021BF474
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0200F24A
	ldr r0, _0200F254 ; =0x021BF474
	add r0, #0x44
	bl sub_0200F7B4
	ldr r1, _0200F278 ; =0x0000014F
	ldr r0, _0200F254 ; =0x021BF474
	mov r2, #1
	strb r2, [r0, r1]
_0200F24A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0200F250: .word 0x021BF5B4
_0200F254: .word 0x021BF474
_0200F258: .word 0x021BF4E8
_0200F25C: .word 0x021BF500
_0200F260: .word 0x021BF488
_0200F264: .word 0x021BF4B8
_0200F268: .word 0x021BF478
_0200F26C: .word 0x021BF47C
_0200F270: .word 0x021BF474
_0200F274: .word 0x0000014E
_0200F278: .word 0x0000014F
	thumb_func_end sub_0200F174

	thumb_func_start sub_0200F27C
sub_0200F27C: ; 0x0200F27C
	push {r4, lr}
	ldr r0, _0200F2A4 ; =0x021BF5B4
	ldr r4, _0200F2A8 ; =0x021BF474
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	beq _0200F2A0
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #0
	add r1, #0x14
	add r2, #0x44
	bl sub_0200F4C4
	cmp r0, #1
	bne _0200F2A0
	add r0, r4, #0
	bl sub_0200F46C
_0200F2A0:
	pop {r4, pc}
	nop
_0200F2A4: .word 0x021BF5B4
_0200F2A8: .word 0x021BF474
	thumb_func_end sub_0200F27C

	thumb_func_start sub_0200F2AC
sub_0200F2AC: ; 0x0200F2AC
	ldr r0, _0200F2BC ; =0x021BF5B4
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	bne _0200F2B8
	mov r0, #1
	bx lr
_0200F2B8:
	mov r0, #0
	bx lr
	; .align 2, 0
_0200F2BC: .word 0x021BF5B4
	thumb_func_end sub_0200F2AC

	thumb_func_start sub_0200F2C0
sub_0200F2C0: ; 0x0200F2C0
	push {r3, lr}
	ldr r0, _0200F30C ; =0x021BF4E8
	mov r1, #0
	bl sub_0200F6AC
	ldr r0, _0200F30C ; =0x021BF4E8
	mov r1, #1
	bl sub_0200F6AC
	ldr r0, _0200F310 ; =0x021BF474
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0200F2DE
	mov r1, #2
	str r1, [r0, #0x20]
_0200F2DE:
	ldr r0, _0200F310 ; =0x021BF474
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0200F2EA
	mov r1, #2
	str r1, [r0, #0x50]
_0200F2EA:
	ldr r0, _0200F314 ; =0x021BF478
	ldr r1, _0200F318 ; =0x021BF488
	bl sub_0200F534
	ldr r0, _0200F31C ; =0x021BF47C
	ldr r1, _0200F320 ; =0x021BF4B8
	bl sub_0200F534
	ldr r0, _0200F324 ; =0x021BF5B4
	mov r1, #0
	strh r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	ldr r0, _0200F328 ; =0x021BF474
	bl sub_0200F814
	pop {r3, pc}
	; .align 2, 0
_0200F30C: .word 0x021BF4E8
_0200F310: .word 0x021BF474
_0200F314: .word 0x021BF478
_0200F318: .word 0x021BF488
_0200F31C: .word 0x021BF47C
_0200F320: .word 0x021BF4B8
_0200F324: .word 0x021BF5B4
_0200F328: .word 0x021BF474
	thumb_func_end sub_0200F2C0

	thumb_func_start sub_0200F32C
sub_0200F32C: ; 0x0200F32C
	ldr r3, _0200F334 ; =sub_02012480
	add r1, r0, #0
	mov r0, #0
	bx r3
	; .align 2, 0
_0200F334: .word sub_02012480
	thumb_func_end sub_0200F32C

	thumb_func_start sub_0200F338
sub_0200F338: ; 0x0200F338
	ldr r3, _0200F340 ; =sub_0200F44C
	mov r1, #0
	bx r3
	nop
_0200F340: .word sub_0200F44C
	thumb_func_end sub_0200F338

	thumb_func_start sub_0200F344
sub_0200F344: ; 0x0200F344
	ldr r2, _0200F360 ; =0x0000FFFF
	cmp r1, r2
	bne _0200F34E
	ldr r1, _0200F364 ; =0x021BF5B4
	ldrh r1, [r1, #0x10]
_0200F34E:
	ldr r2, _0200F368 ; =0x00007FFF
	cmp r1, r2
	bne _0200F358
	mov r1, #0x10
	b _0200F35C
_0200F358:
	mov r1, #0xf
	mvn r1, r1
_0200F35C:
	ldr r3, _0200F36C ; =sub_0200F44C
	bx r3
	; .align 2, 0
_0200F360: .word 0x0000FFFF
_0200F364: .word 0x021BF5B4
_0200F368: .word 0x00007FFF
_0200F36C: .word sub_0200F44C
	thumb_func_end sub_0200F344

	thumb_func_start sub_0200F370
sub_0200F370: ; 0x0200F370
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0200F3A4 ; =0x0000FFFF
	cmp r4, r0
	bne _0200F37E
	ldr r0, _0200F3A8 ; =0x021BF5B4
	ldrh r4, [r0, #0x10]
_0200F37E:
	ldr r0, _0200F3AC ; =0x00007FFF
	cmp r4, r0
	bne _0200F388
	mov r5, #0x10
	b _0200F38C
_0200F388:
	mov r5, #0xf
	mvn r5, r5
_0200F38C:
	mov r0, #0
	add r1, r5, #0
	bl sub_0200F44C
	mov r0, #1
	add r1, r5, #0
	bl sub_0200F44C
	ldr r0, _0200F3A8 ; =0x021BF5B4
	strh r4, [r0, #0x10]
	pop {r3, r4, r5, pc}
	nop
_0200F3A4: .word 0x0000FFFF
_0200F3A8: .word 0x021BF5B4
_0200F3AC: .word 0x00007FFF
	thumb_func_end sub_0200F370

	thumb_func_start sub_0200F3B0
sub_0200F3B0: ; 0x0200F3B0
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	add r4, r0, #0
	ldr r0, _0200F420 ; =0x0000FFFF
	cmp r2, r0
	bne _0200F3C8
	ldr r0, _0200F424 ; =0x021BF5B4
	ldrh r0, [r0, #0x10]
	strh r0, [r1, #4]
_0200F3C8:
	cmp r4, #0
	add r0, sp, #0x1c
	bne _0200F3D8
	mov r1, #0
	mov r2, #2
	bl sub_020C00B4
	b _0200F3E0
_0200F3D8:
	mov r1, #0
	mov r2, #2
	bl sub_020C0108
_0200F3E0:
	ldr r0, _0200F428 ; =0x021BF500
	mov r1, #1
	add r2, r4, #0
	bl sub_02012634
	mov r2, #0
	ldr r0, _0200F428 ; =0x021BF500
	mov r1, #0x3f
	add r3, r2, #0
	str r4, [sp]
	bl sub_02012650
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _0200F428 ; =0x021BF500
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #8]
	bl sub_02012698
	ldr r0, _0200F428 ; =0x021BF500
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02012678
	add sp, #0xc
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_0200F420: .word 0x0000FFFF
_0200F424: .word 0x021BF5B4
_0200F428: .word 0x021BF500
	thumb_func_end sub_0200F3B0

	thumb_func_start sub_0200F42C
sub_0200F42C: ; 0x0200F42C
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r0, sp, #8
	mov r1, #0
	mov r2, #2
	bl sub_020C00B4
	add r0, sp, #8
	mov r1, #0
	mov r2, #2
	bl sub_020C0108
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_0200F42C

	thumb_func_start sub_0200F44C
sub_0200F44C: ; 0x0200F44C
	push {r3, lr}
	cmp r0, #0
	bne _0200F45A
	ldr r0, _0200F464 ; =0x0400006C
	bl sub_020BDEC4
	pop {r3, pc}
_0200F45A:
	ldr r0, _0200F468 ; =0x0400106C
	bl sub_020BDEC4
	pop {r3, pc}
	nop
_0200F464: .word 0x0400006C
_0200F468: .word 0x0400106C
	thumb_func_end sub_0200F44C

	thumb_func_start sub_0200F46C
sub_0200F46C: ; 0x0200F46C
	push {r4, lr}
	mov r1, #0x53
	add r4, r0, #0
	mov r2, #0
	lsl r1, r1, #2
	strh r2, [r4, r1]
	bl sub_0200F77C
	mov r1, #0x15
	lsl r1, r1, #4
	strh r0, [r4, r1]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200F49C
	add r0, r4, #0
	add r0, #0x14
	bl sub_0200F7E4
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0200F49C
	ldr r0, _0200F4C0 ; =0x021BF5B4
	mov r1, #0
	strb r1, [r0, #0xe]
_0200F49C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0200F4B6
	add r0, r4, #0
	add r0, #0x44
	bl sub_0200F7E4
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0200F4B6
	ldr r0, _0200F4C0 ; =0x021BF5B4
	mov r1, #0
	strb r1, [r0, #0xf]
_0200F4B6:
	add r0, r4, #0
	bl sub_0200F814
	pop {r4, pc}
	nop
_0200F4C0: .word 0x021BF5B4
	thumb_func_end sub_0200F46C

	thumb_func_start sub_0200F4C4
sub_0200F4C4: ; 0x0200F4C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	cmp r0, #0
	beq _0200F4DA
	cmp r0, #1
	beq _0200F4EC
	cmp r0, #2
	beq _0200F506
	b _0200F51E
_0200F4DA:
	add r0, r5, #4
	bl sub_0200F534
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	bl sub_0200F534
	b _0200F51E
_0200F4EC:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0200F4FA
	add r0, r5, #4
	bl sub_0200F534
	b _0200F51E
_0200F4FA:
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	bl sub_0200F534
	b _0200F51E
_0200F506:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0200F518
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	bl sub_0200F534
	b _0200F51E
_0200F518:
	add r0, r5, #4
	bl sub_0200F534
_0200F51E:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0200F52E
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0200F52E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0200F52E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200F4C4

	thumb_func_start sub_0200F534
sub_0200F534: ; 0x0200F534
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0200F54C
	add r0, r1, #0
	bl sub_0200F550
	cmp r0, #1
	bne _0200F54C
	mov r0, #0
	str r0, [r4, #0]
_0200F54C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200F534

	thumb_func_start sub_0200F550
sub_0200F550: ; 0x0200F550
	push {r3, lr}
	ldr r1, [r0, #0]
	lsl r2, r1, #2
	ldr r1, _0200F560 ; =0x020E5074
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0200F560: .word 0x020E5074
	thumb_func_end sub_0200F550

	thumb_func_start sub_0200F564
sub_0200F564: ; 0x0200F564
	push {r3, lr}
	cmp r0, #4
	bhi _0200F5C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200F576: ; jump table
	.short _0200F580 - _0200F576 - 2 ; case 0
	.short _0200F58E - _0200F576 - 2 ; case 1
	.short _0200F59C - _0200F576 - 2 ; case 2
	.short _0200F5AA - _0200F576 - 2 ; case 3
	.short _0200F5B8 - _0200F576 - 2 ; case 4
_0200F580:
	mov r2, #1
	add r0, r1, #0
	mov r1, #0
	add r3, r2, #0
	bl sub_0200F5C8
	pop {r3, pc}
_0200F58E:
	add r0, r1, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F5C8
	pop {r3, pc}
_0200F59C:
	mov r2, #1
	add r0, r1, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_0200F5C8
	pop {r3, pc}
_0200F5AA:
	add r0, r1, #0
	mov r1, #1
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F5C8
	pop {r3, pc}
_0200F5B8:
	add r0, r1, #0
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl sub_0200F5C8
_0200F5C4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200F564

	thumb_func_start sub_0200F5C8
sub_0200F5C8: ; 0x0200F5C8
	str r1, [r0, #0]
	str r2, [r0, #4]
	str r3, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr
	thumb_func_end sub_0200F5C8

	thumb_func_start sub_0200F5D4
sub_0200F5D4: ; 0x0200F5D4
	str r1, [r0, #0]
	str r2, [r0, #4]
	ldr r1, [sp]
	str r3, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x1c]
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x20]
	ldr r1, _0200F5FC ; =0xFFFFFFF0
	add r1, sp
	ldrh r1, [r1, #0x28]
	strh r1, [r0, #0x24]
	bx lr
	; .align 2, 0
_0200F5FC: .word 0xFFFFFFF0
	thumb_func_end sub_0200F5D4

	thumb_func_start sub_0200F600
sub_0200F600: ; 0x0200F600
	mov r3, #0
	ldr r1, _0200F618 ; =sub_0200F764
	add r2, r3, #0
_0200F606:
	str r2, [r0, #0]
	str r1, [r0, #8]
	str r2, [r0, #0x10]
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #2
	blt _0200F606
	bx lr
	nop
_0200F618: .word sub_0200F764
	thumb_func_end sub_0200F600

	thumb_func_start sub_0200F61C
sub_0200F61C: ; 0x0200F61C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0200F622:
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	blx r1
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0200F622
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200F61C

	thumb_func_start sub_0200F634
sub_0200F634: ; 0x0200F634
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x10
	lsl r4, r3, #2
	str r0, [sp, #8]
	ldr r0, [r0, r4]
	add r7, r2, #0
	str r1, [sp]
	cmp r0, #0
	beq _0200F656
	bl sub_02022974
_0200F656:
	add r6, r5, #0
	add r6, #8
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0200F664
	bl sub_02022974
_0200F664:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0200F67E
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0200F67E
	ldr r0, _0200F6A4 ; =sub_0200F61C
	add r1, r5, #0
	bl sub_020177BC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
_0200F67E:
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _0200F688
	bl sub_02022974
_0200F688:
	ldr r0, [sp]
	cmp r7, #0
	str r0, [r5, r4]
	beq _0200F694
	str r7, [r6, r4]
	b _0200F698
_0200F694:
	ldr r0, _0200F6A8 ; =sub_0200F764
	str r0, [r6, r4]
_0200F698:
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0200F6A4: .word sub_0200F61C
_0200F6A8: .word sub_0200F764
	thumb_func_end sub_0200F634

	thumb_func_start sub_0200F6AC
sub_0200F6AC: ; 0x0200F6AC
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	add r5, r0, #0
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0200F6C8
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0200F6C8
	bl sub_020177A4
_0200F6C8:
	ldr r1, _0200F6D4 ; =sub_0200F764
	add r0, r5, r4
	str r1, [r0, #8]
	mov r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0200F6D4: .word sub_0200F764
	thumb_func_end sub_0200F6AC

	thumb_func_start sub_0200F6D8
sub_0200F6D8: ; 0x0200F6D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [sp, #0x18]
	mov r1, #0x10
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02018184
	add r1, r0, #0
	str r5, [r1, #0]
	str r4, [r1, #4]
	mov r2, #1
	str r6, [r1, #8]
	ldr r0, _0200F700 ; =sub_0200F728
	lsl r2, r2, #0xa
	str r7, [r1, #0xc]
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200F700: .word sub_0200F728
	thumb_func_end sub_0200F6D8

	thumb_func_start sub_0200F704
sub_0200F704: ; 0x0200F704
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #8
	bl sub_02018184
	add r1, r0, #0
	mov r2, #1
	str r5, [r1, #0]
	ldr r0, _0200F724 ; =sub_0200F748
	lsl r2, r2, #0xa
	str r4, [r1, #4]
	bl sub_0200DA3C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0200F724: .word sub_0200F748
	thumb_func_end sub_0200F704

	thumb_func_start sub_0200F728
sub_0200F728: ; 0x0200F728
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0200F634
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200F728

	thumb_func_start sub_0200F748
sub_0200F748: ; 0x0200F748
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	bl sub_0200F6AC
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200F748

	thumb_func_start sub_0200F764
sub_0200F764: ; 0x0200F764
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200F764

	thumb_func_start sub_0200F768
sub_0200F768: ; 0x0200F768
	ldr r2, _0200F778 ; =0x0000FFFF
	cmp r1, r2
	bne _0200F774
	mov r1, #0x15
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
_0200F774:
	add r0, r1, #0
	bx lr
	; .align 2, 0
_0200F778: .word 0x0000FFFF
	thumb_func_end sub_0200F768

	thumb_func_start sub_0200F77C
sub_0200F77C: ; 0x0200F77C
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _0200F788
	add r2, r0, #0
	add r2, #0x14
	b _0200F78C
_0200F788:
	add r2, r0, #0
	add r2, #0x44
_0200F78C:
	ldr r1, [r2, #0x28]
	cmp r1, #1
	bne _0200F796
	ldrh r0, [r2, #0x24]
	bx lr
_0200F796:
	mov r1, #0x15
	lsl r1, r1, #4
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200F77C

	thumb_func_start sub_0200F7A0
sub_0200F7A0: ; 0x0200F7A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x10]
	mov r1, #0
	bl sub_0200F44C
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end sub_0200F7A0

	thumb_func_start sub_0200F7B4
sub_0200F7B4: ; 0x0200F7B4
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _0200F7DA
	ldrh r2, [r1, #0x24]
	ldr r0, _0200F7DC ; =0x00007FFF
	cmp r2, r0
	beq _0200F7CA
	cmp r2, #0
	bne _0200F7DA
_0200F7CA:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _0200F7DA
	mov r2, #1
	ldr r0, _0200F7E0 ; =sub_0200F7A0
	lsl r2, r2, #0xa
	bl sub_0200DA3C
_0200F7DA:
	pop {r3, pc}
	; .align 2, 0
_0200F7DC: .word 0x00007FFF
_0200F7E0: .word sub_0200F7A0
	thumb_func_end sub_0200F7B4

	thumb_func_start sub_0200F7E4
sub_0200F7E4: ; 0x0200F7E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _0200F80C
	ldrh r1, [r4, #0x24]
	ldr r0, _0200F810 ; =0x00007FFF
	cmp r1, r0
	beq _0200F7FA
	cmp r1, #0
	bne _0200F80C
_0200F7FA:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _0200F80C
	ldr r0, [r4, #0x10]
	bl sub_0200F344
	ldr r0, [r4, #0x10]
	bl sub_0200F32C
_0200F80C:
	pop {r4, pc}
	nop
_0200F810: .word 0x00007FFF
	thumb_func_end sub_0200F7E4

	thumb_func_start sub_0200F814
sub_0200F814: ; 0x0200F814
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_0200F81E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0200F81E
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0
	mov r2, #0x30
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0x44
	mov r1, #0
	mov r2, #0x30
	bl sub_020D5124
	add r2, r4, #0
	add r2, #0x74
	mov r1, #0x18
	mov r0, #0
_0200F846:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0200F846
	add r4, #0x8c
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc0
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end sub_0200F814

	thumb_func_start sub_0200F85C
sub_0200F85C: ; 0x0200F85C
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0200F872
	mov r1, #1
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	bl sub_02010238
	mov r0, #0
	pop {r3, pc}
_0200F872:
	bl sub_020102D8
	pop {r3, pc}
	thumb_func_end sub_0200F85C

	thumb_func_start sub_0200F878
sub_0200F878: ; 0x0200F878
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0200F890
	mov r1, #0
	str r1, [r0, #0x28]
	mov r2, #1
	str r2, [r0, #0x2c]
	bl sub_02010238
	mov r0, #0
	pop {r3, pc}
_0200F890:
	bl sub_020102D8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200F878

	thumb_func_start sub_0200F898
sub_0200F898: ; 0x0200F898
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F8C0
	ldr r1, _0200F8C8 ; =0x020E5128
	ldr r0, _0200F8CC ; =0x021007B4
	str r1, [r0, #0x18]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F8D0 ; =0x021007CC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F8C0:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200F8C8: .word 0x020E5128
_0200F8CC: .word 0x021007B4
_0200F8D0: .word 0x021007CC
	thumb_func_end sub_0200F898

	thumb_func_start sub_0200F8D4
sub_0200F8D4: ; 0x0200F8D4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F8FA
	ldr r1, _0200F900 ; =0x020E5120
	ldr r0, _0200F904 ; =0x021007B4
	str r1, [r0, #8]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F908 ; =0x021007BC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F8FA:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200F900: .word 0x020E5120
_0200F904: .word 0x021007B4
_0200F908: .word 0x021007BC
	thumb_func_end sub_0200F8D4

	thumb_func_start sub_0200F90C
sub_0200F90C: ; 0x0200F90C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F934
	ldr r1, _0200F93C ; =0x020E511C
	ldr r0, _0200F940 ; =0x021007B4
	str r1, [r0, #0]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F944 ; =0x021007B4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F934:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200F93C: .word 0x020E511C
_0200F940: .word 0x021007B4
_0200F944: .word 0x021007B4
	thumb_func_end sub_0200F90C

	thumb_func_start sub_0200F948
sub_0200F948: ; 0x0200F948
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F96E
	ldr r1, _0200F974 ; =0x020E5124
	ldr r0, _0200F978 ; =0x021007B4
	str r1, [r0, #0x30]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F97C ; =0x021007E4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F96E:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200F974: .word 0x020E5124
_0200F978: .word 0x021007B4
_0200F97C: .word 0x021007E4
	thumb_func_end sub_0200F948

	thumb_func_start sub_0200F980
sub_0200F980: ; 0x0200F980
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F9A2
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F9A8 ; =0x020E51F0
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F9A2:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0200F9A8: .word 0x020E51F0
	thumb_func_end sub_0200F980

	thumb_func_start sub_0200F9AC
sub_0200F9AC: ; 0x0200F9AC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200F9CC
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200F9D4 ; =0x020E5214
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F9CC:
	bl sub_02010D44
	pop {r4, pc}
	nop
_0200F9D4: .word 0x020E5214
	thumb_func_end sub_0200F9AC

	thumb_func_start sub_0200F9D8
sub_0200F9D8: ; 0x0200F9D8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FA00
	ldr r1, _0200FA08 ; =0x020E515C
	ldr r0, _0200FA0C ; =0x021007B4
	str r1, [r0, #0x28]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FA10 ; =0x021007DC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FA00:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200FA08: .word 0x020E515C
_0200FA0C: .word 0x021007B4
_0200FA10: .word 0x021007DC
	thumb_func_end sub_0200F9D8

	thumb_func_start sub_0200FA14
sub_0200FA14: ; 0x0200FA14
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FA3A
	ldr r1, _0200FA40 ; =0x020E518C
	ldr r0, _0200FA44 ; =0x021007B4
	str r1, [r0, #0x38]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FA48 ; =0x021007EC
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FA3A:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200FA40: .word 0x020E518C
_0200FA44: .word 0x021007B4
_0200FA48: .word 0x021007EC
	thumb_func_end sub_0200FA14

	thumb_func_start sub_0200FA4C
sub_0200FA4C: ; 0x0200FA4C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FA74
	ldr r1, _0200FA7C ; =0x020E513C
	ldr r0, _0200FA80 ; =0x021007B4
	str r1, [r0, #0x10]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FA84 ; =0x021007C4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FA74:
	bl sub_02011F88
	pop {r4, pc}
	nop
_0200FA7C: .word 0x020E513C
_0200FA80: .word 0x021007B4
_0200FA84: .word 0x021007C4
	thumb_func_end sub_0200FA4C

	thumb_func_start sub_0200FA88
sub_0200FA88: ; 0x0200FA88
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FAAE
	ldr r1, _0200FAB4 ; =0x020E5194
	ldr r0, _0200FAB8 ; =0x021007B4
	str r1, [r0, #0x40]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FABC ; =0x021007F4
	add r0, r4, #0
	bl sub_02011F44
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FAAE:
	bl sub_02011F88
	pop {r4, pc}
	; .align 2, 0
_0200FAB4: .word 0x020E5194
_0200FAB8: .word 0x021007B4
_0200FABC: .word 0x021007F4
	thumb_func_end sub_0200FA88

	thumb_func_start sub_0200FAC0
sub_0200FAC0: ; 0x0200FAC0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FAE2
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FAE8 ; =0x020E5238
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FAE2:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0200FAE8: .word 0x020E5238
	thumb_func_end sub_0200FAC0

	thumb_func_start sub_0200FAEC
sub_0200FAEC: ; 0x0200FAEC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FB0C
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FB14 ; =0x020E5244
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FB0C:
	bl sub_02010D44
	pop {r4, pc}
	nop
_0200FB14: .word 0x020E5244
	thumb_func_end sub_0200FAEC

	thumb_func_start sub_0200FB18
sub_0200FB18: ; 0x0200FB18
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FB3C
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FB44 ; =0x020E5250
	ldr r2, _0200FB48 ; =0x020E525C
	add r0, r4, #0
	bl sub_02010D94
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FB3C:
	bl sub_02010DEC
	pop {r4, pc}
	nop
_0200FB44: .word 0x020E5250
_0200FB48: .word 0x020E525C
	thumb_func_end sub_0200FB18

	thumb_func_start sub_0200FB4C
sub_0200FB4C: ; 0x0200FB4C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FB6E
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FB74 ; =0x020E5268
	ldr r2, _0200FB78 ; =0x020E5280
	add r0, r4, #0
	bl sub_02010D94
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FB6E:
	bl sub_02010DEC
	pop {r4, pc}
	; .align 2, 0
_0200FB74: .word 0x020E5268
_0200FB78: .word 0x020E5280
	thumb_func_end sub_0200FB4C

	thumb_func_start sub_0200FB7C
sub_0200FB7C: ; 0x0200FB7C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FB9E
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FBA4 ; =0x020E528C
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FB9E:
	bl sub_02010F64
	pop {r4, pc}
	; .align 2, 0
_0200FBA4: .word 0x020E528C
	thumb_func_end sub_0200FB7C

	thumb_func_start sub_0200FBA8
sub_0200FBA8: ; 0x0200FBA8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FBC8
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FBD0 ; =0x020E519C
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FBC8:
	bl sub_02010F64
	pop {r4, pc}
	nop
_0200FBD0: .word 0x020E519C
	thumb_func_end sub_0200FBA8

	thumb_func_start sub_0200FBD4
sub_0200FBD4: ; 0x0200FBD4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FBF6
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FBFC ; =0x020E51A8
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FBF6:
	bl sub_02010F64
	pop {r4, pc}
	; .align 2, 0
_0200FBFC: .word 0x020E51A8
	thumb_func_end sub_0200FBD4

	thumb_func_start sub_0200FC00
sub_0200FC00: ; 0x0200FC00
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FC20
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FC28 ; =0x020E51B4
	add r0, r4, #0
	bl sub_02010F2C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FC20:
	bl sub_02010F64
	pop {r4, pc}
	nop
_0200FC28: .word 0x020E51B4
	thumb_func_end sub_0200FC00

	thumb_func_start sub_0200FC2C
sub_0200FC2C: ; 0x0200FC2C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FC4E
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FC54 ; =0x020E514C
	add r0, r4, #0
	bl sub_02011204
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FC4E:
	bl sub_0201123C
	pop {r4, pc}
	; .align 2, 0
_0200FC54: .word 0x020E514C
	thumb_func_end sub_0200FC2C

	thumb_func_start sub_0200FC58
sub_0200FC58: ; 0x0200FC58
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FC78
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FC80 ; =0x020E5184
	add r0, r4, #0
	bl sub_02011204
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FC78:
	bl sub_0201123C
	pop {r4, pc}
	nop
_0200FC80: .word 0x020E5184
	thumb_func_end sub_0200FC58

	thumb_func_start sub_0200FC84
sub_0200FC84: ; 0x0200FC84
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FCA6
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FCAC ; =0x020E51D8
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FCA6:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0200FCAC: .word 0x020E51D8
	thumb_func_end sub_0200FC84

	thumb_func_start sub_0200FCB0
sub_0200FCB0: ; 0x0200FCB0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FCD0
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FCD8 ; =0x020E51E4
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FCD0:
	bl sub_02010D44
	pop {r4, pc}
	nop
_0200FCD8: .word 0x020E51E4
	thumb_func_end sub_0200FCB0

	thumb_func_start sub_0200FCDC
sub_0200FCDC: ; 0x0200FCDC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FCFE
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FD04 ; =0x020E51FC
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FCFE:
	bl sub_02010D44
	pop {r4, pc}
	; .align 2, 0
_0200FD04: .word 0x020E51FC
	thumb_func_end sub_0200FCDC

	thumb_func_start sub_0200FD08
sub_0200FD08: ; 0x0200FD08
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FD28
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FD30 ; =0x020E5220
	add r0, r4, #0
	bl sub_02010CF4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FD28:
	bl sub_02010D44
	pop {r4, pc}
	nop
_0200FD30: .word 0x020E5220
	thumb_func_end sub_0200FD08

	thumb_func_start sub_0200FD34
sub_0200FD34: ; 0x0200FD34
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FD56
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FD5C ; =0x020E5174
	add r0, r4, #0
	bl sub_02011408
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FD56:
	bl sub_02011440
	pop {r4, pc}
	; .align 2, 0
_0200FD5C: .word 0x020E5174
	thumb_func_end sub_0200FD34

	thumb_func_start sub_0200FD60
sub_0200FD60: ; 0x0200FD60
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FD80
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	ldr r1, _0200FD88 ; =0x020E516C
	add r0, r4, #0
	bl sub_02011408
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FD80:
	bl sub_02011440
	pop {r4, pc}
	nop
_0200FD88: .word 0x020E516C
	thumb_func_end sub_0200FD60

	thumb_func_start sub_0200FD8C
sub_0200FD8C: ; 0x0200FD8C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0200FDD0
	ldr r0, _0200FDD8 ; =0x020E52A4
	mov r1, #4
	str r0, [sp]
	ldr r0, _0200FDDC ; =0x020E52B4
	str r0, [sp, #4]
	add r0, sp, #0
	strh r1, [r0, #8]
	mov r1, #0
	strh r1, [r0, #0xa]
	mov r1, #0x3f
	strb r1, [r0, #0xc]
	mov r1, #0x20
	strb r1, [r0, #0xd]
	mov r1, #1
	strh r1, [r0, #0xe]
	ldrh r0, [r4, #0x24]
	bl sub_0200F42C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020116A0
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200FDD0:
	bl sub_020116D8
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_0200FDD8: .word 0x020E52A4
_0200FDDC: .word 0x020E52B4
	thumb_func_end sub_0200FD8C
