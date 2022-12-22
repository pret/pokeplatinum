	.include "macros/function.inc"
	.include "include/ov14_0221FC20.inc"

	

	.text


	thumb_func_start ov14_0221FC20
ov14_0221FC20: ; 0x0221FC20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0xd5
	str r2, [sp, #4]
	add r5, r1, #0
	lsl r0, r0, #2
	add r2, r3, #0
	add r3, r5, r0
	mov r0, #0
	add r1, r0, #0
_0221FC36:
	strb r1, [r3, r0]
	add r0, r0, #1
	cmp r0, #0x1c
	blo _0221FC36
	mov r7, #0
	mov r0, #0x64
_0221FC42:
	mov r3, #1
	tst r3, r2
	beq _0221FC52
	mov r3, #0xd6
	add r4, r5, r1
	lsl r3, r3, #2
	strb r0, [r4, r3]
	b _0221FC5A
_0221FC52:
	mov r3, #0xd6
	add r4, r5, r1
	lsl r3, r3, #2
	strb r7, [r4, r3]
_0221FC5A:
	lsl r2, r2, #0x17
	add r1, r1, #1
	lsr r2, r2, #0x18
	cmp r1, #4
	blt _0221FC42
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	bl ov16_02254A6C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r4, #0
_0221FC7C:
	add r0, r4, #0
	bl sub_020787CC
	tst r0, r7
	beq _0221FC90
	mov r0, #0xd6
	add r2, r5, r4
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r2, r0]
_0221FC90:
	add r0, r6, #0
	bl ov16_0223F4BC
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1c
	sub r2, r2, r1
	mov r0, #0x1c
	ror r2, r0
	add r1, r1, r2
	mov r0, #0x64
	sub r2, r0, r1
	mov r0, #0xdb
	add r1, r5, r4
	lsl r0, r0, #2
	add r4, r4, #1
	strb r2, [r1, r0]
	cmp r4, #4
	blt _0221FC7C
	mov r2, #0xf3
	mov r0, #0
	lsl r2, r2, #2
	strb r0, [r5, r2]
	mov r0, #1
	ldr r1, [r6, #0x2c]
	lsl r0, r0, #8
	tst r1, r0
	beq _0221FCCA
	lsl r0, r0, #0x15
	b _0221FCD6
_0221FCCA:
	ldr r0, [sp, #4]
	mov r1, #0x34
	mul r1, r0
	add r0, r6, r1
	add r0, #0xb8
	ldr r0, [r0, #0]
_0221FCD6:
	sub r2, #0x6c
	str r0, [r5, r2]
	ldr r1, [r6, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0221FCEE
	mov r1, #0x36
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	mov r0, #0x80
	orr r0, r2
	str r0, [r5, r1]
_0221FCEE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov14_0221FC20

	thumb_func_start ov14_0221FCF4
ov14_0221FCF4: ; 0x0221FCF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r2, r1, #0
	mov r1, #0xd9
	ldr r4, [r5, #0x30]
	lsl r1, r1, #2
	ldrb r6, [r4, r1]
	mov r3, #0x10
	tst r3, r6
	bne _0221FD26
	add r1, #0x6b
	strb r2, [r4, r1]
	add r1, r4, #0
	bl ov16_02257028
	mov r2, #0x3d
	lsl r2, r2, #4
	strb r0, [r4, r2]
	sub r2, r2, #1
	ldrb r2, [r4, r2]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0xf
	bl ov14_0221FC20
_0221FD26:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	bne _0221FD38
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_0221FD44
	pop {r4, r5, r6, pc}
_0221FD38:
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_0221FE38
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov14_0221FCF4

	thumb_func_start ov14_0221FD44
ov14_0221FD44: ; 0x0221FD44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	bl ov14_02222C88
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0221FD9A
	add r6, r0, #0
	add r4, r0, #5
_0221FD5E:
	mov r0, #1
	tst r0, r1
	beq _0221FD80
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0221FD78
	mov r0, #0xd5
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r5, r0]
_0221FD78:
	ldr r0, [sp]
	add r1, r5, #0
	bl ov14_02220078
_0221FD80:
	ldr r0, [r5, r6]
	mov r1, #0
	lsr r0, r0, #1
	str r0, [r5, r6]
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	ldr r0, _0221FE30 ; =0x00000355
	strb r1, [r5, r0]
	add r0, #0xb
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0221FD5E
_0221FD9A:
	mov r3, #0xd9
	lsl r3, r3, #2
	ldrb r1, [r5, r3]
	mov r0, #2
	tst r0, r1
	beq _0221FDAA
	mov r0, #4
	b _0221FE1C
_0221FDAA:
	mov r0, #4
	tst r0, r1
	beq _0221FDB4
	mov r0, #5
	b _0221FE1C
_0221FDB4:
	add r0, r3, #0
	sub r0, #0xc
	ldrsb r0, [r5, r0]
	add r1, sp, #4
	mov r4, #1
	strb r0, [r1, #4]
	mov r0, #0
	strb r0, [r1]
	add r3, #0x6b
	ldrb r3, [r5, r3]
	mov r0, #0xc0
	add r2, r4, #0
	mul r0, r3
	add r0, r5, r0
	add r3, r0, #2
_0221FDD2:
	ldr r0, _0221FE34 ; =0x00002D4C
	ldrh r0, [r3, r0]
	cmp r0, #0
	beq _0221FE04
	mov r0, #0xd6
	add r6, r5, r2
	lsl r0, r0, #2
	ldrsb r6, [r6, r0]
	ldrb r0, [r1, #4]
	cmp r0, r6
	bne _0221FDF8
	add r0, sp, #8
	strb r6, [r0, r4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r7, r4, #0
	lsr r4, r0, #0x18
	add r0, sp, #4
	strb r2, [r0, r7]
_0221FDF8:
	ldrb r0, [r1, #4]
	cmp r0, r6
	bge _0221FE04
	strb r6, [r1, #4]
	mov r4, #1
	strb r2, [r1]
_0221FE04:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #4
	blt _0221FDD2
	ldr r0, [sp]
	bl ov16_0223F4BC
	add r1, r4, #0
	bl _s32_div_f
	add r0, sp, #4
	ldrb r0, [r0, r1]
_0221FE1C:
	mov r2, #0x3d
	lsl r2, r2, #4
	sub r1, r2, #1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r2]
	add r2, #0xa
	add r1, r5, r1
	strb r3, [r1, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0221FE30: .word 0x00000355
_0221FE34: .word 0x00002D4C
	thumb_func_end ov14_0221FD44

	thumb_func_start ov14_0221FE38
ov14_0221FE38: ; 0x0221FE38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x18
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, sp, #0x20
	str r5, [sp, #8]
	str r0, [sp]
_0221FE4E:
	ldr r0, _02220064 ; =0x000003CF
	ldrb r2, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r0, r2
	beq _0221FE62
	ldr r1, _02220068 ; =0x00002D8C
	ldr r0, [sp, #8]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0221FE70
_0221FE62:
	mov r1, #0
	ldr r0, [sp, #4]
	mvn r1, r1
	strb r1, [r0]
	ldr r0, [sp]
	strh r1, [r0]
	b _0221FF90
_0221FE70:
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #0xf
	bl ov14_0221FC20
	mov r1, #0x3d
	ldr r0, [sp, #0xc]
	lsl r1, r1, #4
	strb r0, [r5, r1]
	sub r1, r1, #1
	mov r2, #1
	ldrb r1, [r5, r1]
	and r0, r2
	and r1, r2
	cmp r0, r1
	beq _0221FE98
	add r0, r7, #0
	add r1, r5, #0
	bl ov14_02222C88
_0221FE98:
	ldr r0, _0222006C ; =0x00000365
	mov r2, #0
	add r1, r0, #0
	strb r2, [r5, r0]
	sub r1, #0x10
	strb r2, [r5, r1]
	sub r0, r0, #5
	ldr r4, [r5, r0]
	cmp r4, #0
	beq _0221FEE2
	ldr r6, _0222006C ; =0x00000365
_0221FEAE:
	mov r0, #1
	tst r0, r4
	beq _0221FED0
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0221FEC8
	mov r0, #0xd5
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r5, r0]
_0221FEC8:
	add r0, r7, #0
	add r1, r5, #0
	bl ov14_02220078
_0221FED0:
	ldrb r0, [r5, r6]
	asr r4, r4, #1
	mov r1, #0
	add r0, r0, #1
	strb r0, [r5, r6]
	ldr r0, _02220070 ; =0x00000355
	cmp r4, #0
	strb r1, [r5, r0]
	bne _0221FEAE
_0221FEE2:
	mov r2, #0xd9
	lsl r2, r2, #2
	ldrb r1, [r5, r2]
	mov r0, #2
	tst r0, r1
	beq _0221FEF6
	ldr r0, [sp, #4]
	mov r1, #4
	strb r1, [r0]
	b _0221FF90
_0221FEF6:
	mov r0, #4
	tst r0, r1
	beq _0221FF04
	ldr r0, [sp, #4]
	mov r1, #5
	strb r1, [r0]
	b _0221FF90
_0221FF04:
	add r0, r2, #0
	sub r0, #0xc
	ldrsb r1, [r5, r0]
	add r0, sp, #0x10
	add r2, #0x6b
	strb r1, [r0, #4]
	mov r1, #0
	strb r1, [r0]
	ldrb r3, [r5, r2]
	mov r2, #0xc0
	mov r4, #1
	mul r2, r3
	add r2, r5, r2
	add r1, r4, #0
	add r2, r2, #2
_0221FF22:
	ldr r3, _02220074 ; =0x00002D4C
	ldrh r3, [r2, r3]
	cmp r3, #0
	beq _0221FF4E
	mov r3, #0xd6
	add r6, r5, r1
	lsl r3, r3, #2
	ldrsb r3, [r6, r3]
	ldrb r6, [r0, #4]
	cmp r6, r3
	bne _0221FF42
	add r6, sp, #0x14
	strb r3, [r6, r4]
	add r6, sp, #0x10
	strb r1, [r6, r4]
	add r4, r4, #1
_0221FF42:
	ldrb r6, [r0, #4]
	cmp r6, r3
	bge _0221FF4E
	strb r3, [r0, #4]
	strb r1, [r0]
	mov r4, #1
_0221FF4E:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #4
	blt _0221FF22
	add r0, r7, #0
	bl ov16_0223F4BC
	add r1, r4, #0
	bl _s32_div_f
	add r0, sp, #0x10
	ldrb r1, [r0, r1]
	ldr r0, [sp, #4]
	strb r1, [r0]
	add r0, sp, #0x10
	ldrb r1, [r0, #4]
	ldr r0, [sp]
	strh r1, [r0]
	ldr r0, _02220064 ; =0x000003CF
	ldrb r1, [r5, r0]
	mov r0, #2
	eor r1, r0
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _0221FF90
	ldr r0, [sp]
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x64
	bge _0221FF90
	ldr r0, [sp]
	sub r1, r1, #1
	strh r1, [r0]
_0221FF90:
	ldr r0, [sp, #8]
	add r0, #0xc0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #2
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	bge _0221FFAE
	b _0221FE4E
_0221FFAE:
	mov r1, #0x10
	add r0, sp, #0x10
	ldrsh r1, [r0, r1]
	mov r2, #0
	mov r6, #1
	strb r2, [r0, #0xc]
	add r2, sp, #0x20
	add r4, r6, #0
	add r2, #2
_0221FFC0:
	mov r0, #0
	ldrsh r3, [r2, r0]
	cmp r1, r3
	bne _0221FFCE
	add r0, sp, #0x1c
	strb r4, [r0, r6]
	add r6, r6, #1
_0221FFCE:
	cmp r1, r3
	bge _0221FFDA
	add r0, sp, #0x10
	add r1, r3, #0
	strb r4, [r0, #0xc]
	mov r6, #1
_0221FFDA:
	add r4, r4, #1
	add r2, r2, #2
	cmp r4, #4
	blt _0221FFC0
	add r0, r7, #0
	bl ov16_0223F4BC
	add r1, r6, #0
	bl _s32_div_f
	add r0, sp, #0x1c
	ldrb r3, [r0, r1]
	ldr r0, _02220064 ; =0x000003CF
	ldrb r1, [r5, r0]
	add r2, r5, r1
	add r1, r0, #0
	add r1, #0xb
	strb r3, [r2, r1]
	ldrb r2, [r5, r0]
	add r1, r0, #0
	add r1, #0xb
	add r3, r5, r2
	ldrb r1, [r3, r1]
	add r3, sp, #0x18
	add r0, #0x17
	ldrsb r4, [r3, r1]
	mov r3, #0xc0
	mul r3, r2
	add r3, r5, r3
	lsl r2, r4, #1
	add r3, r3, r2
	ldr r2, _02220074 ; =0x00002D4C
	ldrh r6, [r3, r2]
	lsl r2, r6, #4
	add r2, r5, r2
	ldrh r2, [r2, r0]
	mov r0, #2
	lsl r0, r0, #8
	cmp r2, r0
	bne _0222003E
	add r0, r7, #0
	bl ov16_0223E208
	cmp r0, #0
	bne _0222003E
	ldr r0, _02220064 ; =0x000003CF
	ldrb r2, [r5, r0]
	add r0, #0xb
	add r1, r5, r2
	strb r2, [r1, r0]
_0222003E:
	cmp r6, #0xae
	bne _0222005C
	ldr r2, _02220064 ; =0x000003CF
	add r0, r5, #0
	ldrb r2, [r5, r2]
	add r1, r6, #0
	bl ov16_02255950
	cmp r0, #0
	bne _0222005C
	ldr r0, _02220064 ; =0x000003CF
	ldrb r2, [r5, r0]
	add r0, #0xb
	add r1, r5, r2
	strb r2, [r1, r0]
_0222005C:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220064: .word 0x000003CF
_02220068: .word 0x00002D8C
_0222006C: .word 0x00000365
_02220070: .word 0x00000355
_02220074: .word 0x00002D4C
	thumb_func_end ov14_0221FE38

	thumb_func_start ov14_02220078
ov14_02220078: ; 0x02220078
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xd5
	add r5, r1, #0
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #2
	beq _0222015E
	mov r6, #0xd9
	lsl r6, r6, #2
	add r4, r6, #0
	sub r4, #0x10
_02220090:
	cmp r0, #0
	beq _0222009C
	cmp r0, #1
	beq _022200DC
	cmp r0, #2
	b _02220154
_0222009C:
	ldr r1, _02220160 ; =0x00000365
	ldr r0, _02220164 ; =0x00002134
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r0, _02220168 ; =0x00002138
	str r1, [r5, r0]
	ldr r0, _0222016C ; =0x000003CF
	ldrb r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	add r3, r5, r0
	ldr r0, _02220170 ; =0x00000355
	ldrb r2, [r5, r0]
	ldr r0, _02220174 ; =0x00002D6C
	add r1, r3, r2
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022200C8
	mov r1, #0
	b _022200D0
_022200C8:
	lsl r0, r2, #1
	add r1, r3, r0
	ldr r0, _02220178 ; =0x00002D4C
	ldrh r1, [r1, r0]
_022200D0:
	ldr r0, _0222017C ; =0x00000356
	strh r1, [r5, r0]
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	b _02220154
_022200DC:
	ldr r0, _0222017C ; =0x00000356
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _022200FE
	ldr r3, _02220168 ; =0x00002138
	ldr r2, _02220164 ; =0x00002134
	ldr r3, [r5, r3]
	ldr r2, [r5, r2]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	add r0, r7, #0
	lsl r3, r2, #2
	ldr r2, _02220180 ; =0x0222EEAC
	add r1, r5, #0
	ldr r2, [r2, r3]
	blx r2
	b _02220114
_022200FE:
	ldr r0, _02220170 ; =0x00000355
	mov r1, #0
	ldrb r0, [r5, r0]
	add r2, r5, r0
	mov r0, #0xd6
	lsl r0, r0, #2
	strb r1, [r2, r0]
	ldrb r1, [r5, r6]
	mov r0, #1
	orr r0, r1
	strb r0, [r5, r6]
_02220114:
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _02220154
	ldr r0, _02220170 ; =0x00000355
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _02220170 ; =0x00000355
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #4
	bhs _02220146
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #8
	tst r0, r1
	bne _02220146
	mov r0, #0xd5
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r5, r0]
	b _0222014C
_02220146:
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
_0222014C:
	ldrb r1, [r5, r6]
	mov r0, #0xfe
	and r0, r1
	strb r0, [r5, r6]
_02220154:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #2
	bne _02220090
_0222015E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220160: .word 0x00000365
_02220164: .word 0x00002134
_02220168: .word 0x00002138
_0222016C: .word 0x000003CF
_02220170: .word 0x00000355
_02220174: .word 0x00002D6C
_02220178: .word 0x00002D4C
_0222017C: .word 0x00000356
_02220180: .word 0x0222EEAC
	thumb_func_end ov14_02220078

	thumb_func_start ov14_02220184
ov14_02220184: ; 0x02220184
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	add r0, r6, #0
	bl ov16_0223F4BC
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r2, r1
	cmp r0, r4
	bge _022201C0
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_022201C0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov14_02220184

	thumb_func_start ov14_022201C4
ov14_022201C4: ; 0x022201C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	add r0, r6, #0
	bl ov16_0223F4BC
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r2, r1
	cmp r0, r4
	ble _02220200
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02220200:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov14_022201C4

	thumb_func_start ov14_02220204
ov14_02220204: ; 0x02220204
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	add r0, r6, #0
	bl ov16_0223F4BC
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r2, r1
	cmp r4, r0
	bne _02220240
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02220240:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov14_02220204

	thumb_func_start ov14_02220244
ov14_02220244: ; 0x02220244
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	add r0, r6, #0
	bl ov16_0223F4BC
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r2, r1
	cmp r4, r0
	beq _02220280
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02220280:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov14_02220244

	thumb_func_start ov14_02220284
ov14_02220284: ; 0x02220284
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	mov r2, #0xd6
	lsl r2, r2, #2
	sub r3, r2, #3
	ldrb r5, [r4, r3]
	add r1, r4, r2
	ldrsb r3, [r1, r5]
	add r0, r3, r0
	strb r0, [r1, r5]
	sub r0, r2, #3
	ldrb r2, [r4, r0]
	ldrsb r0, [r1, r2]
	cmp r0, #0
	bge _022202B4
	mov r0, #0
	strb r0, [r1, r2]
_022202B4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_02220284

	thumb_func_start ov14_022202B8
ov14_022202B8: ; 0x022202B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r3, _0222030C ; =0x00002D8C
	add r2, r5, r1
	ldr r1, [r2, r3]
	mov r0, #0x64
	mul r0, r1
	add r1, r3, #4
	ldr r1, [r2, r1]
	bl _u32_div_f
	cmp r0, r6
	bhs _02220308
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02220308:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222030C: .word 0x00002D8C
	thumb_func_end ov14_022202B8

	thumb_func_start ov14_02220310
ov14_02220310: ; 0x02220310
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r3, _02220364 ; =0x00002D8C
	add r2, r5, r1
	ldr r1, [r2, r3]
	mov r0, #0x64
	mul r0, r1
	add r1, r3, #4
	ldr r1, [r2, r1]
	bl _u32_div_f
	cmp r0, r6
	bls _02220360
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02220360:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220364: .word 0x00002D8C
	thumb_func_end ov14_02220310

	thumb_func_start ov14_02220368
ov14_02220368: ; 0x02220368
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r3, _022203BC ; =0x00002D8C
	add r2, r5, r1
	ldr r1, [r2, r3]
	mov r0, #0x64
	mul r0, r1
	add r1, r3, #4
	ldr r1, [r2, r1]
	bl _u32_div_f
	cmp r0, r6
	bne _022203B8
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_022203B8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022203BC: .word 0x00002D8C
	thumb_func_end ov14_02220368

	thumb_func_start ov14_022203C0
ov14_022203C0: ; 0x022203C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r3, _02220414 ; =0x00002D8C
	add r2, r5, r1
	ldr r1, [r2, r3]
	mov r0, #0x64
	mul r0, r1
	add r1, r3, #4
	ldr r1, [r2, r1]
	bl _u32_div_f
	cmp r0, r6
	beq _02220410
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02220410:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220414: .word 0x00002D8C
	thumb_func_end ov14_022203C0

	thumb_func_start ov14_02220418
ov14_02220418: ; 0x02220418
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02220460 ; =0x00002DAC
	add r1, r5, r1
	ldr r0, [r1, r0]
	tst r0, r6
	beq _0222045C
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_0222045C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220460: .word 0x00002DAC
	thumb_func_end ov14_02220418

	thumb_func_start ov14_02220464
ov14_02220464: ; 0x02220464
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022204AC ; =0x00002DAC
	add r1, r5, r1
	ldr r0, [r1, r0]
	tst r0, r6
	bne _022204A8
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_022204A8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022204AC: .word 0x00002DAC
	thumb_func_end ov14_02220464

	thumb_func_start ov14_022204B0
ov14_022204B0: ; 0x022204B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022204F8 ; =0x00002DB0
	add r1, r5, r1
	ldr r0, [r1, r0]
	tst r0, r6
	beq _022204F4
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_022204F4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022204F8: .word 0x00002DB0
	thumb_func_end ov14_022204B0

	thumb_func_start ov14_022204FC
ov14_022204FC: ; 0x022204FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02220544 ; =0x00002DB0
	add r1, r5, r1
	ldr r0, [r1, r0]
	tst r0, r6
	bne _02220540
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02220540:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220544: .word 0x00002DB0
	thumb_func_end ov14_022204FC

	thumb_func_start ov14_02220548
ov14_02220548: ; 0x02220548
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	mov r0, #0xb7
	add r1, r5, r1
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	tst r0, r6
	beq _0222058E
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_0222058E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_02220548

	thumb_func_start ov14_02220590
ov14_02220590: ; 0x02220590
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	mov r0, #0xb7
	add r1, r5, r1
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	tst r0, r6
	bne _022205D6
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_022205D6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_02220590

	thumb_func_start ov14_022205D8
ov14_022205D8: ; 0x022205D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r1, r0, #0
	add r0, r7, #0
	bl ov16_0223E208
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	tst r0, r6
	beq _02220626
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_02222D24
_02220626:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_022205D8

	thumb_func_start ov14_02220628
ov14_02220628: ; 0x02220628
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r1, r0, #0
	add r0, r7, #0
	bl ov16_0223E208
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	tst r0, r6
	bne _02220676
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_02222D24
_02220676:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_02220628

	thumb_func_start ov14_02220678
ov14_02220678: ; 0x02220678
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, r4
	bge _022206A4
	add r0, r5, #0
	bl ov14_02222D24
_022206A4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_02220678

	thumb_func_start ov14_022206A8
ov14_022206A8: ; 0x022206A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, r4
	ble _022206D4
	add r0, r5, #0
	bl ov14_02222D24
_022206D4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_022206A8

	thumb_func_start ov14_022206D8
ov14_022206D8: ; 0x022206D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, r4
	bne _02220704
	add r0, r5, #0
	bl ov14_02222D24
_02220704:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_022206D8

	thumb_func_start ov14_02220708
ov14_02220708: ; 0x02220708
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, r4
	beq _02220734
	add r0, r5, #0
	bl ov14_02222D24
_02220734:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_02220708

	thumb_func_start ov14_02220738
ov14_02220738: ; 0x02220738
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	tst r0, r4
	beq _02220764
	add r0, r5, #0
	bl ov14_02222D24
_02220764:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_02220738

	thumb_func_start ov14_02220768
ov14_02220768: ; 0x02220768
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	tst r0, r4
	bne _02220794
	add r0, r5, #0
	bl ov14_02222D24
_02220794:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_02220768

	thumb_func_start ov14_02220798
ov14_02220798: ; 0x02220798
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	ldr r0, _022207C4 ; =0x00000356
	ldrh r0, [r5, r0]
	cmp r0, r4
	bne _022207C2
	add r0, r5, #0
	bl ov14_02222D24
_022207C2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022207C4: .word 0x00000356
	thumb_func_end ov14_02220798

	thumb_func_start ov14_022207C8
ov14_022207C8: ; 0x022207C8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	ldr r0, _022207F4 ; =0x00000356
	ldrh r0, [r5, r0]
	cmp r0, r4
	beq _022207F2
	add r0, r5, #0
	bl ov14_02222D24
_022207F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022207F4: .word 0x00000356
	thumb_func_end ov14_022207C8

	thumb_func_start ov14_022207F8
ov14_022207F8: ; 0x022207F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_02222D10
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02220848
	mov r6, #0xd7
	add r7, r1, #0
	lsl r6, r6, #2
_0222082A:
	ldr r1, [r5, r6]
	cmp r1, r0
	bne _0222083A
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_02222D24
	pop {r3, r4, r5, r6, r7, pc}
_0222083A:
	add r4, r4, #1
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_02222D10
	cmp r0, r7
	bne _0222082A
_02220848:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov14_022207F8

	thumb_func_start ov14_0222084C
ov14_0222084C: ; 0x0222084C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_02222D10
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02220892
	mov r6, #0xd7
	add r7, r1, #0
	lsl r6, r6, #2
_0222087E:
	ldr r1, [r5, r6]
	cmp r1, r0
	beq _0222089A
	add r4, r4, #1
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_02222D10
	cmp r0, r7
	bne _0222087E
_02220892:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_02222D24
_0222089A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_0222084C

	thumb_func_start ov14_0222089C
ov14_0222089C: ; 0x0222089C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r6, #0
	bl ov14_02222CF0
	ldr r1, _022208F4 ; =0x000003CF
	mov ip, r0
	ldrb r2, [r6, r1]
	mov r1, #0xc0
	mov r0, #0
	mul r1, r2
	add r3, r6, r1
	ldr r7, _022208F8 ; =0x00002D4C
	add r1, r3, #0
	add r2, r0, #0
_022208C2:
	ldrh r4, [r1, r7]
	cmp r4, #0
	beq _022208DA
	ldr r4, _022208F8 ; =0x00002D4C
	add r5, r3, r2
	ldrh r4, [r5, r4]
	lsl r4, r4, #4
	add r5, r6, r4
	ldr r4, _022208FC ; =0x000003E1
	ldrb r4, [r5, r4]
	cmp r4, #0
	bne _022208E4
_022208DA:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _022208C2
_022208E4:
	cmp r0, #4
	bge _022208F0
	add r0, r6, #0
	mov r1, ip
	bl ov14_02222D24
_022208F0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022208F4: .word 0x000003CF
_022208F8: .word 0x00002D4C
_022208FC: .word 0x000003E1
	thumb_func_end ov14_0222089C

	thumb_func_start ov14_02220900
ov14_02220900: ; 0x02220900
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r6, #0
	bl ov14_02222CF0
	ldr r1, _02220958 ; =0x000003CF
	mov ip, r0
	ldrb r2, [r6, r1]
	mov r1, #0xc0
	mov r0, #0
	mul r1, r2
	add r3, r6, r1
	ldr r7, _0222095C ; =0x00002D4C
	add r1, r3, #0
	add r2, r0, #0
_02220926:
	ldrh r4, [r1, r7]
	cmp r4, #0
	beq _0222093E
	ldr r4, _0222095C ; =0x00002D4C
	add r5, r3, r2
	ldrh r4, [r5, r4]
	lsl r4, r4, #4
	add r5, r6, r4
	ldr r4, _02220960 ; =0x000003E1
	ldrb r4, [r5, r4]
	cmp r4, #0
	bne _02220948
_0222093E:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _02220926
_02220948:
	cmp r0, #4
	bne _02220954
	add r0, r6, #0
	mov r1, ip
	bl ov14_02222D24
_02220954:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220958: .word 0x000003CF
_0222095C: .word 0x00002D4C
_02220960: .word 0x000003E1
	thumb_func_end ov14_02220900

	thumb_func_start ov14_02220964
ov14_02220964: ; 0x02220964
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov14_02220964

	thumb_func_start ov14_02220980
ov14_02220980: ; 0x02220980
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	cmp r0, #8
	bls _0222099A
	b _02220AA4
_0222099A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022209A6: ; jump table
	.short _022209CE - _022209A6 - 2 ; case 0
	.short _022209B8 - _022209A6 - 2 ; case 1
	.short _022209FC - _022209A6 - 2 ; case 2
	.short _022209E6 - _022209A6 - 2 ; case 3
	.short _02220A14 - _022209A6 - 2 ; case 4
	.short _02220A46 - _022209A6 - 2 ; case 5
	.short _02220A28 - _022209A6 - 2 ; case 6
	.short _02220A84 - _022209A6 - 2 ; case 7
	.short _02220A66 - _022209A6 - 2 ; case 8
_022209B8:
	ldr r1, _02220AAC ; =0x000003CF
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_022209CE:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_022209E6:
	ldr r1, _02220AAC ; =0x000003CF
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_022209FC:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_02220A14:
	ldr r0, _02220AB0 ; =0x00000356
	ldrh r1, [r4, r0]
	lsl r1, r1, #4
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x8c
	ldrb r1, [r2, r1]
	add r0, r0, #6
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02220A28:
	ldr r1, _02220AAC ; =0x000003CF
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov16_0223E258
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_02220A46:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl ov16_0223E258
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_02220A66:
	ldr r1, _02220AAC ; =0x000003CF
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov16_0223E258
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_02220A84:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl ov16_0223E258
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_02220AA4:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	nop
_02220AAC: .word 0x000003CF
_02220AB0: .word 0x00000356
	thumb_func_end ov14_02220980

	thumb_func_start ov14_02220AB4
ov14_02220AB4: ; 0x02220AB4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r6, #0x18
	add r4, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r4, r0
	beq _02220AFC
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r4, r0
	bne _02220B06
_02220AFC:
	mov r0, #0xd7
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02220B06:
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov14_02220AB4

	thumb_func_start ov14_02220B10
ov14_02220B10: ; 0x02220B10
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, _02220B30 ; =0x00000356
	ldrh r1, [r4, r0]
	lsl r1, r1, #4
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x8b
	ldrb r1, [r2, r1]
	add r0, r0, #6
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02220B30: .word 0x00000356
	thumb_func_end ov14_02220B10

	thumb_func_start ov14_02220B34
ov14_02220B34: ; 0x02220B34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r1, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r6, #0
	bl ov14_02222CF0
	ldr r2, _02220C50 ; =0x00000356
	str r0, [sp, #0x1c]
	ldrh r3, [r6, r2]
	add r2, #0x88
	ldr r1, _02220C54 ; =0x0222EE90
	lsl r7, r3, #4
	add r3, r6, r7
	ldrh r3, [r3, r2]
	ldr r2, _02220C58 ; =0x0000FFFF
	mov r0, #0
_02220B5E:
	ldrh r4, [r1]
	cmp r3, r4
	beq _02220B6E
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _02220B5E
_02220B6E:
	ldr r2, _02220C5C ; =0x0222EE78
	ldr r4, _02220C58 ; =0x0000FFFF
	mov r1, #0
_02220B74:
	ldrh r5, [r2]
	cmp r3, r5
	beq _02220B84
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _02220B74
_02220B84:
	lsl r2, r1, #1
	ldr r1, _02220C5C ; =0x0222EE78
	ldrh r1, [r1, r2]
	ldr r2, _02220C58 ; =0x0000FFFF
	cmp r1, r2
	bne _02220BA4
	ldr r1, _02220C60 ; =0x000003E1
	add r3, r6, r7
	ldrb r1, [r3, r1]
	cmp r1, #1
	bls _02220C42
	lsl r1, r0, #1
	ldr r0, _02220C54 ; =0x0222EE90
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _02220C42
_02220BA4:
	ldr r7, _02220C64 ; =0x000003CF
	mov r4, #0
	add r5, sp, #0x20
_02220BAA:
	ldrb r1, [r6, r7]
	add r2, r4, #0
	add r0, r6, #0
	add r2, #0xa
	mov r3, #0
	bl ov16_02252060
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _02220BAA
	ldr r0, _02220C64 ; =0x000003CF
	ldrb r4, [r6, r0]
	mov r0, #0xc0
	add r5, r4, #0
	mul r5, r0
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_02255A4C
	add r1, sp, #0x28
	str r1, [sp]
	ldr r3, _02220C68 ; =0x00002DB8
	add r1, r6, r5
	ldrh r1, [r1, r3]
	add r2, r4, #0
	str r1, [sp, #4]
	add r1, sp, #0x20
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	mul r0, r4
	add r1, r6, r0
	add r0, r3, #0
	add r0, #0x14
	ldr r0, [r1, r0]
	sub r3, #0x6c
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r3, r6, r3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	add r3, r3, r5
	bl ov14_02222D7C
	ldr r0, _02220C6C ; =0x00000355
	add r1, sp, #0x28
	ldrb r0, [r6, r0]
	mov r3, #0
	lsl r0, r0, #2
	ldr r2, [r1, r0]
_02220C18:
	ldr r0, [r1, #0]
	cmp r0, r2
	bgt _02220C26
	add r3, r3, #1
	add r1, r1, #4
	cmp r3, #4
	blt _02220C18
_02220C26:
	cmp r3, #4
	bne _02220C36
	mov r0, #0xd7
	mov r1, #2
	lsl r0, r0, #2
	add sp, #0x38
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02220C36:
	mov r0, #0xd7
	mov r1, #1
	lsl r0, r0, #2
	add sp, #0x38
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02220C42:
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220C50: .word 0x00000356
_02220C54: .word 0x0222EE90
_02220C58: .word 0x0000FFFF
_02220C5C: .word 0x0222EE78
_02220C60: .word 0x000003E1
_02220C64: .word 0x000003CF
_02220C68: .word 0x00002DB8
_02220C6C: .word 0x00000355
	thumb_func_end ov14_02220B34

	thumb_func_start ov14_02220C70
ov14_02220C70: ; 0x02220C70
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _02220CA0 ; =0x0000307C
	ldrh r1, [r1, r0]
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02220CA0: .word 0x0000307C
	thumb_func_end ov14_02220C70

	thumb_func_start ov14_02220CA4
ov14_02220CA4: ; 0x02220CA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r4, r0
	bne _02220CD0
	add r0, r5, #0
	bl ov14_02222D24
_02220CD0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_02220CA4

	thumb_func_start ov14_02220CD4
ov14_02220CD4: ; 0x02220CD4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r4, r0
	beq _02220D00
	add r0, r5, #0
	bl ov14_02222D24
_02220D00:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_02220CD4

	thumb_func_start ov14_02220D04
ov14_02220D04: ; 0x02220D04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r3, _02220D44 ; =0x000003CF
	add r0, r6, #0
	ldrb r2, [r5, r3]
	add r3, r3, #1
	ldrb r3, [r5, r3]
	add r1, r5, #0
	bl ov16_02252EC8
	cmp r4, r0
	bne _02220D42
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02220D42:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220D44: .word 0x000003CF
	thumb_func_end ov14_02220D04

	thumb_func_start ov14_02220D48
ov14_02220D48: ; 0x02220D48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r3, _02220D88 ; =0x000003CF
	add r0, r6, #0
	ldrb r2, [r5, r3]
	add r3, r3, #1
	ldrb r3, [r5, r3]
	add r1, r5, #0
	bl ov16_02252EC8
	cmp r4, r0
	beq _02220D86
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02220D86:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220D88: .word 0x000003CF
	thumb_func_end ov14_02220D48

	thumb_func_start ov14_02220D8C
ov14_02220D8C: ; 0x02220D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r2, r0, #0
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	lsl r1, r2, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	str r0, [sp]
	ldr r1, [sp]
	add r0, r7, #0
	bl ov16_0223DF20
	str r0, [sp, #0xc]
	ldr r1, [r7, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _02220DE6
	ldr r0, [sp]
	add r1, r5, r0
	ldr r0, _02220E60 ; =0x0000219C
	ldrb r0, [r1, r0]
	ldr r1, [sp]
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov16_0223E258
	add r1, r5, r0
	ldr r0, _02220E60 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	b _02220DF2
_02220DE6:
	ldr r0, [sp]
	add r1, r5, r0
	ldr r0, _02220E60 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	str r0, [sp, #8]
_02220DF2:
	ldr r1, [sp]
	add r0, r7, #0
	mov r4, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _02220E5C
_02220E00:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl sub_0207A0FC
	ldr r1, [sp, #8]
	add r6, r0, #0
	cmp r4, r1
	beq _02220E4E
	ldr r1, [sp, #4]
	cmp r4, r1
	beq _02220E4E
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02220E4E
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02220E4E
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02220E64 ; =0x000001EE
	cmp r0, r1
	beq _02220E4E
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r0, #1
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r5, r0]
_02220E4E:
	ldr r1, [sp]
	add r0, r7, #0
	add r4, r4, #1
	bl ov16_0223DF60
	cmp r4, r0
	blt _02220E00
_02220E5C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220E60: .word 0x0000219C
_02220E64: .word 0x000001EE
	thumb_func_end ov14_02220D8C

	thumb_func_start ov14_02220E68
ov14_02220E68: ; 0x02220E68
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, _02220E80 ; =0x00000356
	ldrh r1, [r4, r0]
	add r0, r0, #6
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02220E80: .word 0x00000356
	thumb_func_end ov14_02220E68

	thumb_func_start ov14_02220E84
ov14_02220E84: ; 0x02220E84
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, _02220EA4 ; =0x00000356
	ldrh r1, [r4, r0]
	lsl r1, r1, #4
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x88
	ldrh r1, [r2, r1]
	add r0, r0, #6
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02220EA4: .word 0x00000356
	thumb_func_end ov14_02220E84

	thumb_func_start ov14_02220EA8
ov14_02220EA8: ; 0x02220EA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	lsl r1, r7, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r1, r0, #0
	mov r3, #0xb7
	mov r2, #2
	mov r0, #0xc0
	add r6, r1, #0
	mul r6, r0
	add r0, r5, r6
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	lsl r2, r2, #0x14
	tst r2, r4
	beq _02220EEA
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02220EEA:
	ldr r2, _02220F80 ; =0x000003CF
	ldrb r4, [r5, r2]
	cmp r4, r1
	beq _02220F72
	cmp r7, #3
	beq _02220F72
	add r4, r5, r1
	add r1, r2, #0
	sub r1, #0x3f
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _02220F08
	sub r2, #0x73
	str r1, [r5, r2]
	pop {r3, r4, r5, r6, r7, pc}
_02220F08:
	add r1, r3, #0
	sub r1, #0x59
	ldrb r1, [r0, r1]
	cmp r1, #0x17
	beq _02220F1A
	cmp r1, #0x2a
	beq _02220F1A
	cmp r1, #0x47
	bne _02220F22
_02220F1A:
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02220F22:
	sub r3, #0x80
	add r7, r5, r3
	ldrh r0, [r7, r6]
	mov r1, #0x18
	bl sub_020759F0
	add r4, r0, #0
	ldrh r0, [r7, r6]
	mov r1, #0x19
	bl sub_020759F0
	add r6, r0, #0
	cmp r4, #0
	beq _02220F5E
	cmp r6, #0
	beq _02220F5E
	ldr r0, [sp]
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _02220F56
	mov r0, #0xd7
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02220F56:
	mov r0, #0xd7
	lsl r0, r0, #2
	str r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02220F5E:
	cmp r4, #0
	beq _02220F6A
	mov r0, #0xd7
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02220F6A:
	mov r0, #0xd7
	lsl r0, r0, #2
	str r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02220F72:
	ldr r0, _02220F84 ; =0x00002D67
	add r1, r5, r6
	ldrb r1, [r1, r0]
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220F80: .word 0x000003CF
_02220F84: .word 0x00002D67
	thumb_func_end ov14_02220EA8

	thumb_func_start ov14_02220F88
ov14_02220F88: ; 0x02220F88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	mov r2, #2
	mov ip, r1
	add r6, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r3, [r6, r1]
	lsl r2, r2, #0x14
	tst r2, r3
	beq _02220FC8
	mov r4, #0
	b _02221034
_02220FC8:
	cmp r4, #0
	beq _02220FD0
	cmp r4, #2
	bne _02221030
_02220FD0:
	mov r1, #0x39
	add r2, r5, r0
	lsl r1, r1, #4
	ldrb r4, [r2, r1]
	cmp r4, #0
	beq _02220FE2
	sub r1, #0x34
	str r4, [r5, r1]
	b _02221034
_02220FE2:
	mov r1, ip
	add r2, r5, r1
	ldr r1, _0222105C ; =0x00002D67
	ldrb r4, [r2, r1]
	cmp r4, #0x17
	beq _02221034
	cmp r4, #0x2a
	beq _02221034
	cmp r4, #0x47
	beq _02221034
	sub r1, #0x27
	add r6, r5, r1
	mov r1, #0xc0
	mul r1, r0
	ldrh r0, [r6, r1]
	str r1, [sp]
	mov r1, #0x18
	bl sub_020759F0
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x19
	ldrh r0, [r6, r0]
	bl sub_020759F0
	cmp r4, #0
	beq _02221028
	cmp r0, #0
	beq _02221028
	cmp r4, r7
	beq _02221024
	cmp r0, r7
	bne _02221034
_02221024:
	mov r4, #0
	b _02221034
_02221028:
	cmp r4, #0
	bne _02221034
	add r4, r0, #0
	b _02221034
_02221030:
	sub r1, #0x59
	ldrb r4, [r6, r1]
_02221034:
	cmp r4, #0
	bne _02221042
	mov r0, #0xd7
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02221042:
	cmp r4, r7
	bne _02221050
	mov r0, #0xd7
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02221050:
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222105C: .word 0x00002D67
	thumb_func_end ov14_02220F88

	thumb_func_start ov14_02221060
ov14_02221060: ; 0x02221060
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	mov r0, #0
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	str r0, [r5, r1]
	add r4, r0, #0
_0222107C:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _02221108 ; =0x000003CF
	ldrb r2, [r5, r0]
	mov r0, #0xc0
	mul r0, r2
	add r0, r5, r0
	add r1, r4, r0
	ldr r0, _0222110C ; =0x00002D4C
	ldrh r6, [r1, r0]
	add r0, r7, #0
	add r1, r5, #0
	add r3, r6, #0
	bl ov14_0222327C
	add r3, r0, #0
	cmp r6, #0
	beq _022210F8
	ldr r0, _02221108 ; =0x000003CF
	add r1, r5, #0
	ldrb r0, [r5, r0]
	add r2, r6, #0
	str r0, [sp]
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov16_02254FA8
	cmp r0, #0x78
	bne _022210C8
	mov r0, #0x50
	b _022210DE
_022210C8:
	cmp r0, #0xf0
	bne _022210D0
	mov r0, #0xa0
	b _022210DE
_022210D0:
	cmp r0, #0x1e
	bne _022210D8
	mov r0, #0x14
	b _022210DE
_022210D8:
	cmp r0, #0xf
	bne _022210DE
	mov r0, #0xa
_022210DE:
	ldr r2, [sp, #0x14]
	ldr r1, _02221110 ; =0x00140808
	tst r1, r2
	beq _022210E8
	mov r0, #0
_022210E8:
	mov r1, #0xd7
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, r0
	bhs _022210F8
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r5, r1]
_022210F8:
	ldr r0, [sp, #0x10]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0222107C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221108: .word 0x000003CF
_0222110C: .word 0x00002D4C
_02221110: .word 0x00140808
	thumb_func_end ov14_02221060

	thumb_func_start ov14_02221114
ov14_02221114: ; 0x02221114
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r7, r0, #0
	add r0, r4, #0
	bl ov14_02222CF0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r3, _022211A4 ; =0x000003CF
	add r0, r5, #0
	ldrb r6, [r4, r3]
	sub r3, #0x79
	ldrh r3, [r4, r3]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_0222327C
	mov r2, #0x3d
	str r6, [sp]
	lsl r2, r2, #4
	add r3, r0, #0
	ldrb r0, [r4, r2]
	sub r2, #0x7a
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldrh r2, [r4, r2]
	add r0, r5, #0
	bl ov16_02254FA8
	cmp r0, #0x78
	bne _02221172
	mov r0, #0x50
	b _02221188
_02221172:
	cmp r0, #0xf0
	bne _0222117A
	mov r0, #0xa0
	b _02221188
_0222117A:
	cmp r0, #0x1e
	bne _02221182
	mov r0, #0x14
	b _02221188
_02221182:
	cmp r0, #0xf
	bne _02221188
	mov r0, #0xa
_02221188:
	ldr r2, [sp, #0x14]
	ldr r1, _022211A8 ; =0x00140808
	tst r1, r2
	beq _02221192
	mov r0, #0
_02221192:
	cmp r0, r7
	bne _0222119E
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl ov14_02222D24
_0222119E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022211A4: .word 0x000003CF
_022211A8: .word 0x00140808
	thumb_func_end ov14_02221114

	thumb_func_start ov14_022211AC
ov14_022211AC: ; 0x022211AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, [sp]
	bl ov14_02222CF0
	add r4, r0, #0
	ldr r0, [sp]
	bl ov14_02222CF0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov14_02222CF0
	str r0, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r6, r0, #0
	ldr r1, [r7, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _02221206
	ldr r0, [sp]
	add r1, r0, r6
	ldr r0, _02221298 ; =0x0000219C
	ldrb r0, [r1, r0]
	add r1, r6, #0
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov16_0223E258
	ldr r1, [sp]
	add r1, r1, r0
	ldr r0, _02221298 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	b _02221212
_02221206:
	ldr r0, [sp]
	add r1, r0, r6
	ldr r0, _02221298 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	str r0, [sp, #8]
_02221212:
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0223DF20
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	mov r5, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _02221294
_0222122A:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl sub_0207A0FC
	ldr r1, [sp, #8]
	add r4, r0, #0
	cmp r5, r1
	beq _02221286
	ldr r1, [sp, #4]
	cmp r5, r1
	beq _02221286
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02221286
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02221286
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _0222129C ; =0x000001EE
	cmp r0, r1
	beq _02221286
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x10]
	tst r0, r1
	beq _02221286
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl ov14_02222D24
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02221286:
	add r0, r7, #0
	add r1, r6, #0
	add r5, r5, #1
	bl ov16_0223DF60
	cmp r5, r0
	blt _0222122A
_02221294:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221298: .word 0x0000219C
_0222129C: .word 0x000001EE
	thumb_func_end ov14_022211AC

	thumb_func_start ov14_022212A0
ov14_022212A0: ; 0x022212A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, [sp]
	bl ov14_02222CF0
	add r4, r0, #0
	ldr r0, [sp]
	bl ov14_02222CF0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov14_02222CF0
	str r0, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r6, r0, #0
	ldr r1, [r7, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _022212FA
	ldr r0, [sp]
	add r1, r0, r6
	ldr r0, _0222138C ; =0x0000219C
	ldrb r0, [r1, r0]
	add r1, r6, #0
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov16_0223E258
	ldr r1, [sp]
	add r1, r1, r0
	ldr r0, _0222138C ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	b _02221306
_022212FA:
	ldr r0, [sp]
	add r1, r0, r6
	ldr r0, _0222138C ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	str r0, [sp, #8]
_02221306:
	add r0, r7, #0
	add r1, r6, #0
	bl ov16_0223DF20
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	mov r5, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _02221388
_0222131E:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl sub_0207A0FC
	ldr r1, [sp, #8]
	add r4, r0, #0
	cmp r5, r1
	beq _0222137A
	ldr r1, [sp, #4]
	cmp r5, r1
	beq _0222137A
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0222137A
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0222137A
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02221390 ; =0x000001EE
	cmp r0, r1
	beq _0222137A
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x10]
	tst r0, r1
	bne _0222137A
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl ov14_02222D24
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0222137A:
	add r0, r7, #0
	add r1, r6, #0
	add r5, r5, #1
	bl ov16_0223DF60
	cmp r5, r0
	blt _0222131E
_02221388:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222138C: .word 0x0000219C
_02221390: .word 0x000001EE
	thumb_func_end ov14_022212A0

	thumb_func_start ov14_02221394
ov14_02221394: ; 0x02221394
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	mov r1, #3
	tst r1, r2
	beq _022213B8
	mov r1, #2
	str r1, [r4, r0]
_022213B8:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0xc
	tst r0, r1
	beq _022213CC
	mov r0, #0xd7
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
_022213CC:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x30
	tst r0, r1
	beq _022213E0
	mov r0, #0xd7
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_022213E0:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0xc0
	tst r0, r1
	beq _022213F4
	mov r0, #0xd7
	mov r1, #4
	lsl r0, r0, #2
	str r1, [r4, r0]
_022213F4:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r1
	beq _0222140A
	mov r0, #0xd7
	mov r1, #5
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222140A:
	pop {r4, pc}
	thumb_func_end ov14_02221394

	thumb_func_start ov14_0222140C
ov14_0222140C: ; 0x0222140C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	ldr r0, _02221440 ; =0x00000356
	ldrh r2, [r5, r0]
	add r0, #0x88
	lsl r2, r2, #4
	add r2, r5, r2
	ldrh r0, [r2, r0]
	cmp r4, r0
	bne _0222143E
	add r0, r5, #0
	bl ov14_02222D24
_0222143E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02221440: .word 0x00000356
	thumb_func_end ov14_0222140C

	thumb_func_start ov14_02221444
ov14_02221444: ; 0x02221444
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	ldr r0, _02221478 ; =0x00000356
	ldrh r2, [r5, r0]
	add r0, #0x88
	lsl r2, r2, #4
	add r2, r5, r2
	ldrh r0, [r2, r0]
	cmp r4, r0
	beq _02221476
	add r0, r5, #0
	bl ov14_02222D24
_02221476:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02221478: .word 0x00000356
	thumb_func_end ov14_02221444

	thumb_func_start ov14_0222147C
ov14_0222147C: ; 0x0222147C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	add r1, r0, r6
	ldr r0, _022214CC ; =0x00002D58
	ldrsb r0, [r1, r0]
	cmp r0, r7
	bge _022214CA
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_02222D24
_022214CA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022214CC: .word 0x00002D58
	thumb_func_end ov14_0222147C

	thumb_func_start ov14_022214D0
ov14_022214D0: ; 0x022214D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	add r1, r0, r6
	ldr r0, _02221520 ; =0x00002D58
	ldrsb r0, [r1, r0]
	cmp r0, r7
	ble _0222151E
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_02222D24
_0222151E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221520: .word 0x00002D58
	thumb_func_end ov14_022214D0

	thumb_func_start ov14_02221524
ov14_02221524: ; 0x02221524
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	add r1, r0, r6
	ldr r0, _02221574 ; =0x00002D58
	ldrsb r0, [r1, r0]
	cmp r7, r0
	bne _02221572
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_02222D24
_02221572:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221574: .word 0x00002D58
	thumb_func_end ov14_02221524

	thumb_func_start ov14_02221578
ov14_02221578: ; 0x02221578
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r7, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	add r1, r0, r6
	ldr r0, _022215C8 ; =0x00002D58
	ldrsb r0, [r1, r0]
	cmp r7, r0
	beq _022215C6
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_02222D24
_022215C6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022215C8: .word 0x00002D58
	thumb_func_end ov14_02221578

	thumb_func_start ov14_022215CC
ov14_022215CC: ; 0x022215CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r1, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r6, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r6, #0
	bl ov14_02222CF0
	str r0, [sp, #0x1c]
	cmp r4, #1
	bne _022215FE
	ldr r0, _022216D4 ; =0x00000355
	ldrb r1, [r6, r0]
	add r0, #0x17
	add r1, r6, r1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x18]
	b _02221602
_022215FE:
	mov r0, #0x64
	str r0, [sp, #0x18]
_02221602:
	ldr r2, _022216D8 ; =0x00000356
	ldr r1, _022216DC ; =0x0222EE90
	ldrh r3, [r6, r2]
	add r2, #0x88
	mov r0, #0
	lsl r7, r3, #4
	add r3, r6, r7
	ldrh r3, [r3, r2]
	ldr r2, _022216E0 ; =0x0000FFFF
_02221614:
	ldrh r4, [r1]
	cmp r3, r4
	beq _02221624
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _02221614
_02221624:
	ldr r2, _022216E4 ; =0x0222EE78
	ldr r4, _022216E0 ; =0x0000FFFF
	mov r1, #0
_0222162A:
	ldrh r5, [r2]
	cmp r3, r5
	beq _0222163A
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _0222162A
_0222163A:
	lsl r2, r1, #1
	ldr r1, _022216E4 ; =0x0222EE78
	ldrh r1, [r1, r2]
	ldr r2, _022216E0 ; =0x0000FFFF
	cmp r1, r2
	bne _0222165A
	ldr r1, _022216E8 ; =0x000003E1
	add r3, r6, r7
	ldrb r1, [r3, r1]
	cmp r1, #1
	bls _022216D0
	lsl r1, r0, #1
	ldr r0, _022216DC ; =0x0222EE90
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _022216D0
_0222165A:
	ldr r7, _022216EC ; =0x000003CF
	mov r4, #0
	add r5, sp, #0x20
_02221660:
	ldrb r1, [r6, r7]
	add r2, r4, #0
	add r0, r6, #0
	add r2, #0xa
	mov r3, #0
	bl ov16_02252060
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _02221660
	ldr r0, _022216EC ; =0x000003CF
	ldrb r4, [r6, r0]
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_02255A4C
	add r1, sp, #0x20
	str r1, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc0
	mul r0, r4
	ldr r3, _022216F0 ; =0x00002DCC
	add r4, r6, r0
	ldr r0, [r4, r3]
	ldr r2, _022216D8 ; =0x00000356
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	sub r3, #0x14
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r2, [r6, r2]
	ldrh r3, [r4, r3]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl ov14_02222E84
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r2, [r6, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r6, r1
	ldr r1, _022216F4 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, r0
	bhi _022216D0
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl ov14_02222D24
_022216D0:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022216D4: .word 0x00000355
_022216D8: .word 0x00000356
_022216DC: .word 0x0222EE90
_022216E0: .word 0x0000FFFF
_022216E4: .word 0x0222EE78
_022216E8: .word 0x000003E1
_022216EC: .word 0x000003CF
_022216F0: .word 0x00002DCC
_022216F4: .word 0x00002D8C
	thumb_func_end ov14_022215CC

	thumb_func_start ov14_022216F8
ov14_022216F8: ; 0x022216F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r1, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r6, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r6, #0
	bl ov14_02222CF0
	str r0, [sp, #0x1c]
	cmp r4, #1
	bne _0222172A
	ldr r0, _02221800 ; =0x00000355
	ldrb r1, [r6, r0]
	add r0, #0x17
	add r1, r6, r1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x18]
	b _0222172E
_0222172A:
	mov r0, #0x64
	str r0, [sp, #0x18]
_0222172E:
	ldr r2, _02221804 ; =0x00000356
	ldr r1, _02221808 ; =0x0222EE90
	ldrh r3, [r6, r2]
	add r2, #0x88
	mov r0, #0
	lsl r7, r3, #4
	add r3, r6, r7
	ldrh r3, [r3, r2]
	ldr r2, _0222180C ; =0x0000FFFF
_02221740:
	ldrh r4, [r1]
	cmp r3, r4
	beq _02221750
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _02221740
_02221750:
	ldr r2, _02221810 ; =0x0222EE78
	ldr r4, _0222180C ; =0x0000FFFF
	mov r1, #0
_02221756:
	ldrh r5, [r2]
	cmp r3, r5
	beq _02221766
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _02221756
_02221766:
	lsl r2, r1, #1
	ldr r1, _02221810 ; =0x0222EE78
	ldrh r1, [r1, r2]
	ldr r2, _0222180C ; =0x0000FFFF
	cmp r1, r2
	bne _02221786
	ldr r1, _02221814 ; =0x000003E1
	add r3, r6, r7
	ldrb r1, [r3, r1]
	cmp r1, #1
	bls _022217FC
	lsl r1, r0, #1
	ldr r0, _02221808 ; =0x0222EE90
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _022217FC
_02221786:
	ldr r7, _02221818 ; =0x000003CF
	mov r4, #0
	add r5, sp, #0x20
_0222178C:
	ldrb r1, [r6, r7]
	add r2, r4, #0
	add r0, r6, #0
	add r2, #0xa
	mov r3, #0
	bl ov16_02252060
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _0222178C
	ldr r0, _02221818 ; =0x000003CF
	ldrb r4, [r6, r0]
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_02255A4C
	add r1, sp, #0x20
	str r1, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc0
	mul r0, r4
	ldr r3, _0222181C ; =0x00002DCC
	add r4, r6, r0
	ldr r0, [r4, r3]
	ldr r2, _02221804 ; =0x00000356
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	sub r3, #0x14
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r2, [r6, r2]
	ldrh r3, [r4, r3]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl ov14_02222E84
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r2, [r6, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r6, r1
	ldr r1, _02221820 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, r0
	bls _022217FC
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl ov14_02222D24
_022217FC:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221800: .word 0x00000355
_02221804: .word 0x00000356
_02221808: .word 0x0222EE90
_0222180C: .word 0x0000FFFF
_02221810: .word 0x0222EE78
_02221814: .word 0x000003E1
_02221818: .word 0x000003CF
_0222181C: .word 0x00002DCC
_02221820: .word 0x00002D8C
	thumb_func_end ov14_022216F8

	thumb_func_start ov14_02221824
ov14_02221824: ; 0x02221824
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r6, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	cmp r6, #0
	beq _022218B4
	cmp r6, #1
	beq _02221860
	cmp r6, #3
	beq _02221886
	pop {r3, r4, r5, r6, r7, pc}
_02221860:
	mov r2, #0xc0
	mul r2, r0
	ldr r0, _022218DC ; =0x00002D4C
	mov r1, #0
	add r3, r5, r2
_0222186A:
	ldrh r2, [r3, r0]
	cmp r4, r2
	beq _02221878
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, #4
	blt _0222186A
_02221878:
	cmp r1, #4
	bge _022218D8
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
	pop {r3, r4, r5, r6, r7, pc}
_02221886:
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	ldr r1, _022218E0 ; =0x00002D8C
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _022218D8
	ldr r1, _022218DC ; =0x00002D4C
	mov r3, #0
_02221898:
	ldrh r2, [r0, r1]
	cmp r4, r2
	beq _022218A6
	add r3, r3, #1
	add r0, r0, #2
	cmp r3, #4
	blt _02221898
_022218A6:
	cmp r3, #4
	bge _022218D8
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
	pop {r3, r4, r5, r6, r7, pc}
_022218B4:
	lsl r0, r0, #3
	add r3, r5, r0
	mov r0, #0x37
	mov r1, #0
	lsl r0, r0, #4
_022218BE:
	ldrh r2, [r3, r0]
	cmp r4, r2
	beq _022218CC
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, #4
	blt _022218BE
_022218CC:
	cmp r1, #4
	bge _022218D8
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_022218D8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022218DC: .word 0x00002D4C
_022218E0: .word 0x00002D8C
	thumb_func_end ov14_02221824

	thumb_func_start ov14_022218E4
ov14_022218E4: ; 0x022218E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r6, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	cmp r6, #0
	beq _02221974
	cmp r6, #1
	beq _02221920
	cmp r6, #3
	beq _02221946
	pop {r3, r4, r5, r6, r7, pc}
_02221920:
	mov r2, #0xc0
	mul r2, r0
	ldr r0, _0222199C ; =0x00002D4C
	mov r1, #0
	add r3, r5, r2
_0222192A:
	ldrh r2, [r3, r0]
	cmp r4, r2
	beq _02221938
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, #4
	blt _0222192A
_02221938:
	cmp r1, #4
	bne _02221998
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
	pop {r3, r4, r5, r6, r7, pc}
_02221946:
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	ldr r1, _022219A0 ; =0x00002D8C
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02221998
	ldr r1, _0222199C ; =0x00002D4C
	mov r3, #0
_02221958:
	ldrh r2, [r0, r1]
	cmp r4, r2
	beq _02221966
	add r3, r3, #1
	add r0, r0, #2
	cmp r3, #4
	blt _02221958
_02221966:
	cmp r3, #4
	bne _02221998
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
	pop {r3, r4, r5, r6, r7, pc}
_02221974:
	lsl r0, r0, #3
	add r3, r5, r0
	mov r0, #0x37
	mov r1, #0
	lsl r0, r0, #4
_0222197E:
	ldrh r2, [r3, r0]
	cmp r4, r2
	beq _0222198C
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, #4
	blt _0222197E
_0222198C:
	cmp r1, #4
	bne _02221998
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02221998:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222199C: .word 0x00002D4C
_022219A0: .word 0x00002D8C
	thumb_func_end ov14_022218E4

	thumb_func_start ov14_022219A4
ov14_022219A4: ; 0x022219A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r6, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	cmp r6, #0
	beq _02221A0C
	cmp r6, #1
	bne _02221A3C
	mov r2, #0xc0
	mul r2, r0
	add r0, r5, r2
	ldr r2, _02221A40 ; =0x000003DE
	ldr r3, _02221A44 ; =0x00002D4C
	mov r1, #0
_022219E6:
	ldrh r6, [r0, r3]
	cmp r6, #0
	beq _022219F6
	lsl r6, r6, #4
	add r6, r5, r6
	ldrh r6, [r6, r2]
	cmp r4, r6
	beq _022219FE
_022219F6:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _022219E6
_022219FE:
	cmp r1, #4
	bge _02221A3C
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
	pop {r3, r4, r5, r6, r7, pc}
_02221A0C:
	ldr r2, _02221A40 ; =0x000003DE
	lsl r0, r0, #3
	add r3, r2, #0
	mov r1, #0
	add r0, r5, r0
	sub r3, #0x6e
_02221A18:
	ldrh r6, [r0, r3]
	cmp r6, #0
	beq _02221A28
	lsl r6, r6, #4
	add r6, r5, r6
	ldrh r6, [r6, r2]
	cmp r4, r6
	beq _02221A30
_02221A28:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _02221A18
_02221A30:
	cmp r1, #4
	bge _02221A3C
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02221A3C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221A40: .word 0x000003DE
_02221A44: .word 0x00002D4C
	thumb_func_end ov14_022219A4

	thumb_func_start ov14_02221A48
ov14_02221A48: ; 0x02221A48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r6, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	cmp r6, #0
	beq _02221AB0
	cmp r6, #1
	bne _02221AE0
	mov r2, #0xc0
	mul r2, r0
	add r0, r5, r2
	ldr r2, _02221AE4 ; =0x000003DE
	ldr r3, _02221AE8 ; =0x00002D4C
	mov r1, #0
_02221A8A:
	ldrh r6, [r0, r3]
	cmp r6, #0
	beq _02221A9A
	lsl r6, r6, #4
	add r6, r5, r6
	ldrh r6, [r6, r2]
	cmp r4, r6
	beq _02221AA2
_02221A9A:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _02221A8A
_02221AA2:
	cmp r1, #4
	bne _02221AE0
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
	pop {r3, r4, r5, r6, r7, pc}
_02221AB0:
	ldr r2, _02221AE4 ; =0x000003DE
	lsl r0, r0, #3
	add r3, r2, #0
	mov r1, #0
	add r0, r5, r0
	sub r3, #0x6e
_02221ABC:
	ldrh r6, [r0, r3]
	cmp r6, #0
	beq _02221ACC
	lsl r6, r6, #4
	add r6, r5, r6
	ldrh r6, [r6, r2]
	cmp r4, r6
	beq _02221AD4
_02221ACC:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _02221ABC
_02221AD4:
	cmp r1, #4
	bne _02221AE0
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02221AE0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221AE4: .word 0x000003DE
_02221AE8: .word 0x00002D4C
	thumb_func_end ov14_02221A48

	thumb_func_start ov14_02221AEC
ov14_02221AEC: ; 0x02221AEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r6, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	cmp r4, #0
	beq _02221B24
	cmp r4, #1
	beq _02221B3E
	pop {r3, r4, r5, r6, r7, pc}
_02221B24:
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02221B58 ; =0x00002DC8
	add r1, r5, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	beq _02221B56
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
	pop {r3, r4, r5, r6, r7, pc}
_02221B3E:
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02221B58 ; =0x00002DC8
	add r1, r5, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	beq _02221B56
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02221B56:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221B58: .word 0x00002DC8
	thumb_func_end ov14_02221AEC

	thumb_func_start ov14_02221B5C
ov14_02221B5C: ; 0x02221B5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r5, r0, #0
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	cmp r5, #0
	beq _02221B82
	cmp r5, #1
	beq _02221BA0
	pop {r3, r4, r5, pc}
_02221B82:
	ldr r2, _02221BC0 ; =0x00000356
	ldrh r0, [r4, r2]
	add r2, #0x79
	ldrb r3, [r4, r2]
	mov r2, #0xc0
	mul r2, r3
	add r3, r4, r2
	ldr r2, _02221BC4 ; =0x00002DE8
	ldrh r2, [r3, r2]
	cmp r0, r2
	bne _02221BBC
	add r0, r4, #0
	bl ov14_02222D24
	pop {r3, r4, r5, pc}
_02221BA0:
	ldr r2, _02221BC0 ; =0x00000356
	ldrh r0, [r4, r2]
	add r2, #0x79
	ldrb r3, [r4, r2]
	mov r2, #0xc0
	mul r2, r3
	add r3, r4, r2
	ldr r2, _02221BC8 ; =0x00002DEC
	ldrh r2, [r3, r2]
	cmp r0, r2
	bne _02221BBC
	add r0, r4, #0
	bl ov14_02222D24
_02221BBC:
	pop {r3, r4, r5, pc}
	nop
_02221BC0: .word 0x00000356
_02221BC4: .word 0x00002DE8
_02221BC8: .word 0x00002DEC
	thumb_func_end ov14_02221B5C

	thumb_func_start ov14_02221BCC
ov14_02221BCC: ; 0x02221BCC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	mov r1, #0xd9
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #0xb
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov14_02221BCC

	thumb_func_start ov14_02221BE8
ov14_02221BE8: ; 0x02221BE8
	bx lr
	; .align 2, 0
	thumb_func_end ov14_02221BE8

	thumb_func_start ov14_02221BEC
ov14_02221BEC: ; 0x02221BEC
	bx lr
	; .align 2, 0
	thumb_func_end ov14_02221BEC

	thumb_func_start ov14_02221BF0
ov14_02221BF0: ; 0x02221BF0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02221C20 ; =0x00002DB8
	add r1, r4, r1
	ldrh r1, [r1, r0]
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02221C20: .word 0x00002DB8
	thumb_func_end ov14_02221BF0

	thumb_func_start ov14_02221C24
ov14_02221C24: ; 0x02221C24
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	ldr r1, _02221C80 ; =0x000003CF
	add r2, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, r2
	beq _02221C64
	lsl r2, r2, #1
	add r2, r4, r2
	sub r1, #0x3b
	ldrh r1, [r2, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov16_0225B0FC
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
_02221C64:
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02221C84 ; =0x00002DB8
	add r0, r4, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl ov16_0225B0FC
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02221C80: .word 0x000003CF
_02221C84: .word 0x00002DB8
	thumb_func_end ov14_02221C24

	thumb_func_start ov14_02221C88
ov14_02221C88: ; 0x02221C88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r6, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r6, r0, #0
	ldr r0, _02221CE8 ; =0x000003CF
	mov r1, #1
	add r3, r6, #0
	ldrb r2, [r5, r0]
	and r3, r1
	and r1, r2
	cmp r3, r1
	bne _02221CD2
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	ldr r0, _02221CEC ; =0x00002DB8
	b _02221CD8
_02221CD2:
	lsl r1, r6, #1
	add r1, r5, r1
	sub r0, #0x3b
_02221CD8:
	ldrh r0, [r1, r0]
	cmp r0, r4
	bne _02221CE6
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02221CE6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221CE8: .word 0x000003CF
_02221CEC: .word 0x00002DB8
	thumb_func_end ov14_02221C88

	thumb_func_start ov14_02221CF0
ov14_02221CF0: ; 0x02221CF0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	tst r0, r4
	beq _02221D1C
	add r0, r5, #0
	bl ov14_02222D24
_02221D1C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov14_02221CF0

	thumb_func_start ov14_02221D20
ov14_02221D20: ; 0x02221D20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r6, #0x18
	add r4, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r1, r0, #0
	add r0, r7, #0
	bl ov16_0223E208
	cmp r4, #4
	beq _02221D5E
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r4, r1
	beq _02221D74
	pop {r3, r4, r5, r6, r7, pc}
_02221D5E:
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1e
	lsr r1, r0, #0x1e
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02221D74:
	lsl r0, r0, #3
	add r2, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	sub r1, #0xa4
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_02221D20

	thumb_func_start ov14_02221D88
ov14_02221D88: ; 0x02221D88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, [sp]
	bl ov14_02222CF0
	add r4, r0, #0
	ldr r0, [sp]
	bl ov14_02222CF0
	str r0, [sp, #8]
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r4, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _02221E10
	ldr r0, [sp]
	add r0, r0, r6
	str r0, [sp, #4]
_02221DC8:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov16_0223DFAC
	ldr r2, [sp, #4]
	ldr r1, _02221E14 ; =0x0000219C
	str r0, [sp, #0xc]
	ldrb r1, [r2, r1]
	cmp r4, r1
	beq _02221E02
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	beq _02221E02
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov14_02222D24
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02221E02:
	add r0, r5, #0
	add r1, r6, #0
	add r4, r4, #1
	bl ov16_0223DF60
	cmp r4, r0
	blt _02221DC8
_02221E10:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221E14: .word 0x0000219C
	thumb_func_end ov14_02221D88

	thumb_func_start ov14_02221E18
ov14_02221E18: ; 0x02221E18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, [sp, #4]
	bl ov14_02222CF0
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov14_02222CF0
	str r0, [sp, #0x10]
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov14_02222D34
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	mov r7, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _02221EB2
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0xc]
_02221E5A:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	add r2, r7, #0
	bl ov16_0223DFAC
	add r5, r0, #0
	ldr r1, [sp, #0xc]
	ldr r0, _02221EB8 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r7, r0
	beq _02221EA4
	mov r4, #0
_02221E72:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, #0x42
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	beq _02221E9A
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	bl ov14_02222D24
	b _02221EA0
_02221E9A:
	add r4, r4, #1
	cmp r4, #4
	blt _02221E72
_02221EA0:
	cmp r4, #4
	bne _02221EB2
_02221EA4:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	add r7, r7, #1
	bl ov16_0223DF60
	cmp r7, r0
	blt _02221E5A
_02221EB2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02221EB8: .word 0x0000219C
	thumb_func_end ov14_02221E18

	thumb_func_start ov14_02221EBC
ov14_02221EBC: ; 0x02221EBC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_02258B80
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov14_02221EBC

	thumb_func_start ov14_02221EEC
ov14_02221EEC: ; 0x02221EEC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r1, _02221F14 ; =0x000003CF
	mov r0, #0xc0
	ldrb r2, [r4, r1]
	mul r0, r2
	add r2, r4, r0
	add r0, r1, #0
	sub r0, #0x7a
	ldrb r0, [r4, r0]
	sub r1, #0x73
	add r2, r2, r0
	ldr r0, _02221F18 ; =0x00002D6C
	ldrb r0, [r2, r0]
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_02221F14: .word 0x000003CF
_02221F18: .word 0x00002D6C
	thumb_func_end ov14_02221EEC

	thumb_func_start ov14_02221F1C
ov14_02221F1C: ; 0x02221F1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r5, r0, #0
	add r0, r4, #0
	bl ov14_02222CF0
	lsl r1, r5, #0x18
	add r7, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov16_02256128
	mov r1, #0xc0
	mul r1, r5
	add r2, r4, r1
	ldr r1, _02221F74 ; =0x00002DCC
	ldr r1, [r2, r1]
	lsl r1, r1, #0x13
	lsr r2, r1, #0x1d
	sub r1, r0, #1
	cmp r2, r1
	blo _02221F70
	cmp r0, #1
	ble _02221F70
	add r0, r4, #0
	add r1, r7, #0
	bl ov14_02222D24
_02221F70:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221F74: .word 0x00002DCC
	thumb_func_end ov14_02221F1C

	thumb_func_start ov14_02221F78
ov14_02221F78: ; 0x02221F78
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, _02221F98 ; =0x00000356
	ldrh r1, [r4, r0]
	lsl r1, r1, #4
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x8a
	ldrb r1, [r2, r1]
	add r0, r0, #6
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02221F98: .word 0x00000356
	thumb_func_end ov14_02221F78

	thumb_func_start ov14_02221F9C
ov14_02221F9C: ; 0x02221F9C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r0, [r4, r1]
	lsl r0, r0, #1
	add r2, r4, r0
	ldr r0, _02221FC8 ; =0x0000307C
	ldrh r0, [r2, r0]
	lsl r0, r0, #4
	add r2, r4, r0
	add r0, r1, #0
	add r0, #0x10
	ldrb r0, [r2, r0]
	sub r1, #0x74
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02221FC8: .word 0x0000307C
	thumb_func_end ov14_02221F9C

	thumb_func_start ov14_02221FCC
ov14_02221FCC: ; 0x02221FCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, [sp, #8]
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	bl ov14_02222D34
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	bl ov16_0223DF1C
	mov r1, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _0222200A
	add r2, sp, #0x24
_02222000:
	ldr r0, [sp, #0x14]
	stmia r2!, {r1}
	add r1, r1, #1
	cmp r1, r0
	blt _02222000
_0222200A:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0
	ble _02222064
	add r6, sp, #0x24
	str r6, [sp, #0x20]
_0222201C:
	ldr r0, [sp, #0xc]
	add r7, r0, #1
	ldr r0, [sp, #0x14]
	cmp r7, r0
	bge _02222056
	ldr r0, [sp, #0x20]
	lsl r1, r7, #2
	add r5, r0, r1
_0222202C:
	ldr r0, [r6, #0]
	ldr r4, [r5, #0]
	str r0, [sp, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x18]
	add r3, r4, #0
	bl ov16_02252EC8
	cmp r0, #0
	beq _0222204C
	ldr r0, [sp, #0x18]
	str r4, [r6, #0]
	str r0, [r5, #0]
_0222204C:
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, r0
	blt _0222202C
_02222056:
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0222201C
_02222064:
	ldr r1, [sp, #0x14]
	mov r0, #0
	cmp r1, #0
	ble _0222208C
	add r3, sp, #0x24
_0222206E:
	ldr r2, [r3, #0]
	ldr r1, [sp, #0x10]
	cmp r1, r2
	bne _02222082
	mov r2, #0xd7
	ldr r1, [sp, #8]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_02222082:
	ldr r1, [sp, #0x14]
	add r0, r0, #1
	add r3, r3, #4
	cmp r0, r1
	blt _0222206E
_0222208C:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov14_02221FCC

	thumb_func_start ov14_02222090
ov14_02222090: ; 0x02222090
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022220C8 ; =0x00002DD4
	add r1, r4, r1
	ldr r0, [r1, r0]
	sub r1, r2, r0
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_022220C8: .word 0x00002DD4
	thumb_func_end ov14_02222090

	thumb_func_start ov14_022220CC
ov14_022220CC: ; 0x022220CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, r1, #0
	mov r1, #1
	bl ov14_02222D24
	ldr r0, [sp, #0x1c]
	bl ov14_02222CF0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	bl ov14_02222CF0
	str r0, [sp, #0x2c]
	mov r4, #0
	ldr r1, _02222250 ; =0x000003CF
	ldr r0, [sp, #0x1c]
	add r5, sp, #0x34
	ldrb r0, [r0, r1]
	add r6, r4, #0
	str r0, [sp, #0x28]
_022220FA:
	add r2, r4, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, #0xa
	add r3, r6, #0
	bl ov16_02252060
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _022220FA
	ldr r0, [sp, #0x28]
	mov r1, #0xc0
	add r4, r0, #0
	mul r4, r1
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	bl ov16_02255A4C
	add r1, sp, #0x44
	str r1, [sp]
	ldr r1, [sp, #0x1c]
	ldr r3, _02222254 ; =0x00002DB8
	add r2, r1, r4
	ldrh r1, [r2, r3]
	ldr r5, _02222250 ; =0x000003CF
	str r1, [sp, #4]
	add r1, sp, #0x34
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r3, #0
	add r0, #0x14
	ldr r0, [r2, r0]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	str r0, [sp, #0x14]
	ldrb r2, [r2, r5]
	sub r3, #0x6c
	add r5, r1, #0
	add r3, r5, r3
	ldr r0, [sp, #0x18]
	add r3, r3, r4
	bl ov14_02222D7C
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	mov r7, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _0222224A
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	str r0, [sp, #0x20]
_02222174:
	ldr r1, _02222258 ; =0x0000219C
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, r1]
	cmp r7, r0
	beq _0222223C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	add r2, r7, #0
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0222223C
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0222223C
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _0222225C ; =0x000001EE
	cmp r0, r1
	beq _0222223C
	add r5, sp, #0x38
	mov r4, #0
	add r5, #2
_022221BA:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	strh r0, [r5]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _022221BA
	mov r5, #0
	add r4, sp, #0x34
_022221D4:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x46
	mov r2, #0
	bl sub_02074470
	strb r0, [r4]
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, #6
	blt _022221D4
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x44
	str r1, [sp]
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	add r1, sp, #0x34
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r3, _02222250 ; =0x000003CF
	add r2, r1, #0
	ldrb r2, [r2, r3]
	add r3, sp, #0x38
	ldr r0, [sp, #0x18]
	add r3, #2
	bl ov14_02222D7C
	ldr r1, [sp, #0x24]
	cmp r0, r1
	ble _0222223C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x2c]
	bl ov14_02222D24
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_0222223C:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	add r7, r7, #1
	bl ov16_0223DF60
	cmp r7, r0
	blt _02222174
_0222224A:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_02222250: .word 0x000003CF
_02222254: .word 0x00002DB8
_02222258: .word 0x0000219C
_0222225C: .word 0x000001EE
	thumb_func_end ov14_022220CC

	thumb_func_start ov14_02222260
ov14_02222260: ; 0x02222260
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	ldr r2, _02222294 ; =0x000003CF
	add r6, r0, #0
	ldrb r2, [r4, r2]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl ov14_02223B34
	cmp r0, #1
	bne _02222290
	add r0, r4, #0
	add r1, r6, #0
	bl ov14_02222D24
_02222290:
	pop {r4, r5, r6, pc}
	nop
_02222294: .word 0x000003CF
	thumb_func_end ov14_02222260

	thumb_func_start ov14_02222298
ov14_02222298: ; 0x02222298
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r1, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r6, #0
	bl ov14_02222CF0
	str r0, [sp, #0x28]
	add r0, r6, #0
	bl ov14_02222CF0
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl ov14_02222CF0
	ldr r7, _0222239C ; =0x000003CF
	str r0, [sp, #0x20]
	mov r4, #0
	add r5, sp, #0x2c
_022222C6:
	ldrb r1, [r6, r7]
	add r2, r4, #0
	add r0, r6, #0
	add r2, #0xa
	mov r3, #0
	bl ov16_02252060
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _022222C6
	ldr r0, _0222239C ; =0x000003CF
	ldrb r4, [r6, r0]
	mov r0, #0xc0
	add r5, r4, #0
	mul r5, r0
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_02255A4C
	add r1, sp, #0x34
	str r1, [sp]
	ldr r3, _022223A0 ; =0x00002DB8
	add r1, r6, r5
	ldrh r1, [r1, r3]
	add r2, r4, #0
	str r1, [sp, #4]
	add r1, sp, #0x2c
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	mul r0, r4
	add r1, r6, r0
	add r0, r3, #0
	add r0, #0x14
	ldr r0, [r1, r0]
	sub r3, #0x6c
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	add r3, r6, r3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	add r3, r3, r5
	bl ov14_02222D7C
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x1c]
	lsl r1, r1, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _0222234A
	ldr r0, _022223A4 ; =0x00000355
	ldrb r1, [r6, r0]
	add r0, #0x17
	add r1, r6, r1
	ldrb r5, [r1, r0]
	b _0222234C
_0222234A:
	mov r5, #0x64
_0222234C:
	mov r0, #0xc0
	add r7, r4, #0
	mul r7, r0
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_02255A4C
	add r1, sp, #0x2c
	str r1, [sp]
	str r4, [sp, #4]
	lsl r2, r4, #1
	add r4, r6, r2
	ldr r3, _022223A8 ; =0x00002DCC
	add r7, r6, r7
	str r0, [sp, #8]
	ldr r0, [r7, r3]
	ldr r2, _022223AC ; =0x0000307C
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0xc]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	sub r3, #0x14
	ldrh r2, [r4, r2]
	ldrh r3, [r7, r3]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	bl ov14_02222E84
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	ble _02222396
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	bl ov14_02222D24
_02222396:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0222239C: .word 0x000003CF
_022223A0: .word 0x00002DB8
_022223A4: .word 0x00000355
_022223A8: .word 0x00002DCC
_022223AC: .word 0x0000307C
	thumb_func_end ov14_02222298

	thumb_func_start ov14_022223B0
ov14_022223B0: ; 0x022223B0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r2, #0xd7
	mov r3, #0xd7
	mov r1, #0
	lsl r2, r2, #2
	str r1, [r4, r2]
	mov r2, #0xc0
	mul r2, r0
	add r0, r4, r2
	ldr r2, _022223FC ; =0x00002D58
	lsl r3, r3, #2
_022223E2:
	ldrsb r5, [r0, r2]
	cmp r5, #6
	ble _022223F0
	ldr r6, [r4, r3]
	sub r5, r5, #6
	add r5, r6, r5
	str r5, [r4, r3]
_022223F0:
	add r1, r1, #1
	add r0, r0, #1
	cmp r1, #8
	blt _022223E2
	pop {r4, r5, r6, pc}
	nop
_022223FC: .word 0x00002D58
	thumb_func_end ov14_022223B0

	thumb_func_start ov14_02222400
ov14_02222400: ; 0x02222400
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r6, #0x18
	add r4, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	ldr r3, _02222448 ; =0x000003CF
	mov r1, #0xc0
	ldrb r6, [r5, r3]
	add r2, r0, #0
	mul r2, r1
	add r0, r5, r2
	mul r1, r6
	add r1, r5, r1
	ldr r2, _0222244C ; =0x00002D58
	add r0, r0, r4
	add r1, r1, r4
	ldrsb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	sub r3, #0x73
	sub r0, r0, r1
	str r0, [r5, r3]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02222448: .word 0x000003CF
_0222244C: .word 0x00002D58
	thumb_func_end ov14_02222400

	thumb_func_start ov14_02222450
ov14_02222450: ; 0x02222450
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r1, r0, #0
	str r6, [sp]
	add r0, r5, #0
	add r2, sp, #8
	add r3, sp, #4
	bl ov14_0222254C
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	cmp r1, r0
	bge _0222249E
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_0222249E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov14_02222450

	thumb_func_start ov14_022224A4
ov14_022224A4: ; 0x022224A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r1, r0, #0
	str r6, [sp]
	add r0, r5, #0
	add r2, sp, #8
	add r3, sp, #4
	bl ov14_0222254C
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	cmp r1, r0
	ble _022224F2
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_022224F2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov14_022224A4

	thumb_func_start ov14_022224F8
ov14_022224F8: ; 0x022224F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r1, r0, #0
	str r6, [sp]
	add r0, r5, #0
	add r2, sp, #8
	add r3, sp, #4
	bl ov14_0222254C
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _02222546
	add r0, r5, #0
	add r1, r7, #0
	bl ov14_02222D24
_02222546:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov14_022224F8

	thumb_func_start ov14_0222254C
ov14_0222254C: ; 0x0222254C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r3, #0
	ldr r3, [sp, #0x10]
	cmp r3, #5
	bhi _02222624
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02222564: ; jump table
	.short _02222570 - _02222564 - 2 ; case 0
	.short _0222258E - _02222564 - 2 ; case 1
	.short _022225AC - _02222564 - 2 ; case 2
	.short _02222606 - _02222564 - 2 ; case 3
	.short _022225CA - _02222564 - 2 ; case 4
	.short _022225E8 - _02222564 - 2 ; case 5
_02222570:
	ldr r3, _0222262C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _02222630 ; =0x00002D8C
	add r6, r0, r6
	ldr r6, [r6, r5]
	str r6, [r2, #0]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldr r0, [r0, r5]
	str r0, [r1, #0]
	pop {r4, r5, r6, pc}
_0222258E:
	ldr r3, _0222262C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _02222634 ; =0x00002D42
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2, #0]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1, #0]
	pop {r4, r5, r6, pc}
_022225AC:
	ldr r3, _0222262C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _02222638 ; =0x00002D44
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2, #0]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1, #0]
	pop {r4, r5, r6, pc}
_022225CA:
	ldr r3, _0222262C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _0222263C ; =0x00002D48
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2, #0]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1, #0]
	pop {r4, r5, r6, pc}
_022225E8:
	ldr r3, _0222262C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _02222640 ; =0x00002D4A
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2, #0]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1, #0]
	pop {r4, r5, r6, pc}
_02222606:
	ldr r3, _0222262C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _02222644 ; =0x00002D46
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2, #0]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1, #0]
	pop {r4, r5, r6, pc}
_02222624:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	nop
_0222262C: .word 0x000003CF
_02222630: .word 0x00002D8C
_02222634: .word 0x00002D42
_02222638: .word 0x00002D44
_0222263C: .word 0x00002D48
_02222640: .word 0x00002D4A
_02222644: .word 0x00002D46
	thumb_func_end ov14_0222254C

	thumb_func_start ov14_02222648
ov14_02222648: ; 0x02222648
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r1, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r6, #0
	bl ov14_02222CF0
	ldr r2, _02222784 ; =0x00000356
	str r0, [sp, #0x20]
	ldrh r3, [r6, r2]
	add r2, #0x88
	ldr r1, _02222788 ; =0x0222EE90
	lsl r7, r3, #4
	add r3, r6, r7
	ldrh r3, [r3, r2]
	ldr r2, _0222278C ; =0x0000FFFF
	mov r0, #0
_02222672:
	ldrh r4, [r1]
	cmp r3, r4
	beq _02222682
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _02222672
_02222682:
	ldr r2, _02222790 ; =0x0222EE78
	ldr r4, _0222278C ; =0x0000FFFF
	mov r1, #0
_02222688:
	ldrh r5, [r2]
	cmp r3, r5
	beq _02222698
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _02222688
_02222698:
	lsl r2, r1, #1
	ldr r1, _02222790 ; =0x0222EE78
	ldrh r1, [r1, r2]
	ldr r2, _0222278C ; =0x0000FFFF
	cmp r1, r2
	bne _022226B8
	ldr r1, _02222794 ; =0x000003E1
	add r3, r6, r7
	ldrb r1, [r3, r1]
	cmp r1, #1
	bls _02222776
	lsl r1, r0, #1
	ldr r0, _02222788 ; =0x0222EE90
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _02222776
_022226B8:
	ldr r0, _02222798 ; =0x000003CF
	ldrb r7, [r6, r0]
	mov r0, #0
	str r0, [sp, #0x1c]
_022226C0:
	mov r4, #0
	add r5, sp, #0x28
_022226C4:
	add r2, r4, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, #0xa
	mov r3, #0
	bl ov16_02252060
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _022226C4
	mov r0, #0xc0
	add r4, r7, #0
	mul r4, r0
	add r0, r6, #0
	add r1, r7, #0
	bl ov16_02255A4C
	add r1, sp, #0x30
	str r1, [sp]
	ldr r3, _0222279C ; =0x00002DB8
	add r1, r6, r4
	ldrh r2, [r1, r3]
	str r2, [sp, #4]
	add r2, sp, #0x28
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r3, #0
	add r0, #0x14
	ldr r0, [r1, r0]
	sub r3, #0x6c
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	add r3, r6, r3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	add r2, r7, #0
	add r3, r3, r4
	bl ov14_02222D7C
	ldr r1, _02222798 ; =0x000003CF
	ldr r0, [sp, #0x18]
	ldrb r1, [r6, r1]
	bl ov16_0223E258
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0222273A
	ldr r0, _022227A0 ; =0x00000355
	ldrb r0, [r6, r0]
	lsl r1, r0, #2
	add r0, sp, #0x30
	ldr r0, [r0, r1]
	str r0, [sp, #0x24]
_0222273A:
	mov r3, #0
	add r2, sp, #0x30
_0222273E:
	ldr r1, [r2, #0]
	ldr r0, [sp, #0x24]
	cmp r1, r0
	bgt _0222274E
	add r3, r3, #1
	add r2, r2, #4
	cmp r3, #4
	blt _0222273E
_0222274E:
	cmp r3, #4
	bne _0222275C
	mov r0, #0xd7
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r6, r0]
	b _02222768
_0222275C:
	mov r0, #0xd7
	mov r1, #1
	lsl r0, r0, #2
	add sp, #0x40
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02222768:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #2
	blt _022226C0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_02222776:
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222784: .word 0x00000356
_02222788: .word 0x0222EE90
_0222278C: .word 0x0000FFFF
_02222790: .word 0x0222EE78
_02222794: .word 0x000003E1
_02222798: .word 0x000003CF
_0222279C: .word 0x00002DB8
_022227A0: .word 0x00000355
	thumb_func_end ov14_02222648

	thumb_func_start ov14_022227A4
ov14_022227A4: ; 0x022227A4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	cmp r4, #1
	bne _022227C8
	bl GF_AssertFail
_022227C8:
	cmp r4, #0
	bne _022227D0
	bl GF_AssertFail
_022227D0:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	bl sub_020787CC
	ldr r1, _022227F0 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	beq _022227EE
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_02222D24
_022227EE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022227F0: .word 0x00003108
	thumb_func_end ov14_022227A4

	thumb_func_start ov14_022227F4
ov14_022227F4: ; 0x022227F4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r6, r0, #0
	cmp r4, #1
	bne _02222818
	bl GF_AssertFail
_02222818:
	cmp r4, #0
	bne _02222820
	bl GF_AssertFail
_02222820:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	bl sub_020787CC
	ldr r1, _02222840 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _0222283E
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_02222D24
_0222283E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02222840: .word 0x00003108
	thumb_func_end ov14_022227F4

	thumb_func_start ov14_02222844
ov14_02222844: ; 0x02222844
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02222878 ; =0x00002DBE
	add r1, r4, r1
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02222878: .word 0x00002DBE
	thumb_func_end ov14_02222844

	thumb_func_start ov14_0222287C
ov14_0222287C: ; 0x0222287C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r2, r0, #0
	mov r1, #0xc0
	mul r2, r1
	ldr r0, _022228C4 ; =0x00002DD4
	add r2, r4, r2
	add r1, #0x90
	ldr r2, [r2, r0]
	ldr r0, [r4, r1]
	cmp r2, r0
	bge _022228B8
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_022228B8:
	mov r1, #1
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_022228C4: .word 0x00002DD4
	thumb_func_end ov14_0222287C

	thumb_func_start ov14_022228C8
ov14_022228C8: ; 0x022228C8
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022228FC ; =0x00002DC8
	add r1, r4, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #8
	lsr r1, r0, #0x1d
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_022228FC: .word 0x00002DC8
	thumb_func_end ov14_022228C8

	thumb_func_start ov14_02222900
ov14_02222900: ; 0x02222900
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	mov r0, #0xd7
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_02222900

	thumb_func_start ov14_02222918
ov14_02222918: ; 0x02222918
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _02222948 ; =0x00003124
	ldrh r1, [r1, r0]
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02222948: .word 0x00003124
	thumb_func_end ov14_02222918

	thumb_func_start ov14_0222294C
ov14_0222294C: ; 0x0222294C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	mov r1, #0xd7
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #4
	add r2, r4, r0
	add r0, r1, #0
	add r0, #0x86
	ldrb r0, [r2, r0]
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov14_0222294C

	thumb_func_start ov14_0222296C
ov14_0222296C: ; 0x0222296C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	mov r1, #0xd7
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #4
	add r2, r4, r0
	add r0, r1, #0
	add r0, #0x85
	ldrb r0, [r2, r0]
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov14_0222296C

	thumb_func_start ov14_0222298C
ov14_0222298C: ; 0x0222298C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	mov r1, #0xd7
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #4
	add r2, r4, r0
	add r0, r1, #0
	add r0, #0x82
	ldrh r0, [r2, r0]
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov14_0222298C

	thumb_func_start ov14_022229AC
ov14_022229AC: ; 0x022229AC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	lsl r1, r0, #1
	add r2, r4, r1
	ldr r1, _02222A00 ; =0x0000305C
	ldrh r1, [r2, r1]
	cmp r1, #0xb6
	beq _022229E8
	cmp r1, #0xc5
	beq _022229E8
	cmp r1, #0xcb
	beq _022229E8
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_022229E8:
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02222A04 ; =0x00002DC8
	add r1, r4, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #0x13
	lsr r1, r0, #0x1e
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02222A00: .word 0x0000305C
_02222A04: .word 0x00002DC8
	thumb_func_end ov14_022229AC

	thumb_func_start ov14_02222A08
ov14_02222A08: ; 0x02222A08
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_02222C28
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_02222A08

	thumb_func_start ov14_02222A28
ov14_02222A28: ; 0x02222A28
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	add r0, r4, #0
	bl ov14_02222D24
	pop {r4, pc}
	thumb_func_end ov14_02222A28

	thumb_func_start ov14_02222A44
ov14_02222A44: ; 0x02222A44
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_02222C60
	cmp r0, #1
	beq _02222A6A
	mov r1, #0xd9
	lsl r1, r1, #2
	ldrb r2, [r4, r1]
	mov r0, #1
	orr r0, r2
	strb r0, [r4, r1]
_02222A6A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_02222A44

	thumb_func_start ov14_02222A6C
ov14_02222A6C: ; 0x02222A6C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	add r1, r0, #0
	cmp r4, #0
	beq _02222A96
	cmp r4, #1
	beq _02222ABC
	cmp r4, #2
	beq _02222AE2
	pop {r3, r4, r5, pc}
_02222A96:
	ldr r2, _02222B08 ; =0x000003CF
	mov r3, #0xc0
	ldrb r0, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r4, r0, #0
	mul r4, r3
	add r0, r5, r4
	ldr r4, _02222B0C ; =0x00002D74
	mul r3, r2
	add r2, r5, r3
	ldrb r0, [r0, r4]
	ldrb r2, [r2, r4]
	cmp r0, r2
	bls _02222B06
	add r0, r5, #0
	bl ov14_02222D24
	pop {r3, r4, r5, pc}
_02222ABC:
	ldr r2, _02222B08 ; =0x000003CF
	mov r3, #0xc0
	ldrb r0, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r4, r0, #0
	mul r4, r3
	add r0, r5, r4
	ldr r4, _02222B0C ; =0x00002D74
	mul r3, r2
	add r2, r5, r3
	ldrb r0, [r0, r4]
	ldrb r2, [r2, r4]
	cmp r0, r2
	bhs _02222B06
	add r0, r5, #0
	bl ov14_02222D24
	pop {r3, r4, r5, pc}
_02222AE2:
	ldr r2, _02222B08 ; =0x000003CF
	mov r3, #0xc0
	ldrb r0, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r4, r0, #0
	mul r4, r3
	add r0, r5, r4
	ldr r4, _02222B0C ; =0x00002D74
	mul r3, r2
	add r2, r5, r3
	ldrb r0, [r0, r4]
	ldrb r2, [r2, r4]
	cmp r0, r2
	bne _02222B06
	add r0, r5, #0
	bl ov14_02222D24
_02222B06:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02222B08: .word 0x000003CF
_02222B0C: .word 0x00002D74
	thumb_func_end ov14_02222A6C

	thumb_func_start ov14_02222B10
ov14_02222B10: ; 0x02222B10
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02222B44 ; =0x00002DC8
	ldr r0, [r2, r0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	beq _02222B40
	add r0, r4, #0
	bl ov14_02222D24
_02222B40:
	pop {r4, pc}
	nop
_02222B44: .word 0x00002DC8
	thumb_func_end ov14_02222B10

	thumb_func_start ov14_02222B48
ov14_02222B48: ; 0x02222B48
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02222B7C ; =0x00002DC8
	ldr r0, [r2, r0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	bne _02222B78
	add r0, r4, #0
	bl ov14_02222D24
_02222B78:
	pop {r4, pc}
	nop
_02222B7C: .word 0x00002DC8
	thumb_func_end ov14_02222B48

	thumb_func_start ov14_02222B80
ov14_02222B80: ; 0x02222B80
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	ldr r2, _02222BB0 ; =0x000003CF
	add r1, r0, #0
	ldrb r0, [r4, r2]
	add r2, r2, #1
	mov r3, #1
	ldrb r2, [r4, r2]
	and r0, r3
	and r2, r3
	cmp r0, r2
	bne _02222BAC
	add r0, r4, #0
	bl ov14_02222D24
_02222BAC:
	pop {r4, pc}
	nop
_02222BB0: .word 0x000003CF
	thumb_func_end ov14_02222B80

	thumb_func_start ov14_02222BB4
ov14_02222BB4: ; 0x02222BB4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r5, #0
	bl ov14_02222CF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov14_02222CF0
	lsl r1, r4, #0x18
	add r6, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02222BF4 ; =0x00002DC8
	add r1, r5, r1
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	beq _02222BF0
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_02222D24
_02222BF0:
	pop {r4, r5, r6, pc}
	nop
_02222BF4: .word 0x00002DC8
	thumb_func_end ov14_02222BB4

	thumb_func_start ov14_02222BF8
ov14_02222BF8: ; 0x02222BF8
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov14_02222D24
	add r0, r4, #0
	bl ov14_02222CF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov14_02222D34
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_02255A4C
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov14_02222BF8

	thumb_func_start ov14_02222C28
ov14_02222C28: ; 0x02222C28
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0xf3
	lsl r1, r1, #2
	ldrb r5, [r4, r1]
	add r0, r5, #1
	strb r0, [r4, r1]
	ldr r0, _02222C5C ; =0x00002138
	sub r1, #0x20
	ldr r3, [r4, r0]
	lsl r0, r5, #2
	add r0, r4, r0
	str r3, [r0, r1]
	add r0, r4, #0
	add r1, r2, #0
	bl ov14_02222D24
	mov r0, #0xf3
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #8
	bls _02222C58
	bl GF_AssertFail
_02222C58:
	pop {r3, r4, r5, pc}
	nop
_02222C5C: .word 0x00002138
	thumb_func_end ov14_02222C28

	thumb_func_start ov14_02222C60
ov14_02222C60: ; 0x02222C60
	mov r0, #0xf3
	lsl r0, r0, #2
	ldrb r2, [r1, r0]
	cmp r2, #0
	beq _02222C80
	sub r2, r2, #1
	strb r2, [r1, r0]
	ldrb r2, [r1, r0]
	sub r0, #0x20
	lsl r2, r2, #2
	add r2, r1, r2
	ldr r2, [r2, r0]
	ldr r0, _02222C84 ; =0x00002138
	str r2, [r1, r0]
	mov r0, #1
	bx lr
_02222C80:
	mov r0, #0
	bx lr
	; .align 2, 0
_02222C84: .word 0x00002138
	thumb_func_end ov14_02222C60

	thumb_func_start ov14_02222C88
ov14_02222C88: ; 0x02222C88
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x3d
	lsl r2, r2, #4
	str r1, [sp]
	ldrb r1, [r1, r2]
	mov r7, #0x37
	lsl r7, r7, #4
	mov lr, r1
	mov r3, lr
	lsl r4, r3, #1
	ldr r3, [sp]
	ldr r2, [sp]
	lsl r1, r1, #3
	add r4, r3, r4
	ldr r3, _02222CEC ; =0x0000307C
	mov r0, #0
	add r5, r2, r1
	mov ip, r1
	ldrh r3, [r4, r3]
	add r1, r5, #0
	add r2, r0, #0
	add r6, r7, #0
_02222CB4:
	ldrh r4, [r1, r6]
	cmp r3, r4
	beq _02222CEA
	add r4, r5, r2
	ldrh r4, [r4, r7]
	cmp r4, #0
	bne _02222CE0
	mov r1, lr
	lsl r2, r1, #1
	ldr r1, [sp]
	ldr r3, [sp]
	add r2, r1, r2
	ldr r1, _02222CEC ; =0x0000307C
	lsl r0, r0, #1
	ldrh r1, [r2, r1]
	mov r2, ip
	add r2, r3, r2
	add r2, r2, r0
	mov r0, #0x37
	lsl r0, r0, #4
	strh r1, [r2, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02222CE0:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _02222CB4
_02222CEA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02222CEC: .word 0x0000307C
	thumb_func_end ov14_02222C88

	thumb_func_start ov14_02222CF0
ov14_02222CF0: ; 0x02222CF0
	ldr r1, _02222D0C ; =0x00002134
	add r2, r1, #4
	ldr r2, [r0, r2]
	ldr r3, [r0, r1]
	lsl r2, r2, #2
	ldr r3, [r3, r2]
	add r2, r1, #4
	ldr r2, [r0, r2]
	add r1, r1, #4
	add r2, r2, #1
	str r2, [r0, r1]
	add r0, r3, #0
	bx lr
	nop
_02222D0C: .word 0x00002134
	thumb_func_end ov14_02222CF0

	thumb_func_start ov14_02222D10
ov14_02222D10: ; 0x02222D10
	ldr r2, _02222D20 ; =0x00002134
	ldr r3, [r0, r2]
	add r2, r2, #4
	ldr r0, [r0, r2]
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	bx lr
	; .align 2, 0
_02222D20: .word 0x00002134
	thumb_func_end ov14_02222D10

	thumb_func_start ov14_02222D24
ov14_02222D24: ; 0x02222D24
	ldr r2, _02222D30 ; =0x00002138
	ldr r3, [r0, r2]
	add r1, r3, r1
	str r1, [r0, r2]
	bx lr
	nop
_02222D30: .word 0x00002138
	thumb_func_end ov14_02222D24

	thumb_func_start ov14_02222D34
ov14_02222D34: ; 0x02222D34
	cmp r1, #3
	bhi _02222D52
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02222D44: ; jump table
	.short _02222D52 - _02222D44 - 2 ; case 0
	.short _02222D4C - _02222D44 - 2 ; case 1
	.short _02222D68 - _02222D44 - 2 ; case 2
	.short _02222D5A - _02222D44 - 2 ; case 3
_02222D4C:
	ldr r1, _02222D78 ; =0x000003CF
	ldrb r0, [r0, r1]
	bx lr
_02222D52:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	bx lr
_02222D5A:
	ldr r1, _02222D78 ; =0x000003CF
	ldrb r1, [r0, r1]
	mov r0, #2
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02222D68:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r0, r1]
	mov r0, #2
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_02222D78: .word 0x000003CF
	thumb_func_end ov14_02222D34

	thumb_func_start ov14_02222D7C
ov14_02222D7C: ; 0x02222D7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x44]
	ldr r6, [sp, #0x40]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	add r7, r1, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	str r2, [sp, #0x18]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x54]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
_02222DA4:
	ldr r2, [sp, #0x1c]
	ldr r3, _02222E70 ; =0x000003DE
	ldrh r2, [r2]
	ldr r1, _02222E74 ; =0x0222EE90
	mov r0, #0
	mov ip, r2
	lsl r2, r2, #4
	add r2, r7, r2
	ldrh r3, [r2, r3]
	str r2, [sp, #0x20]
	ldr r2, _02222E78 ; =0x0000FFFF
_02222DBA:
	ldrh r4, [r1]
	cmp r4, r3
	beq _02222DCA
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _02222DBA
_02222DCA:
	ldr r2, _02222E7C ; =0x0222EE78
	ldr r4, _02222E78 ; =0x0000FFFF
	mov r1, #0
_02222DD0:
	ldrh r5, [r2]
	cmp r5, r3
	beq _02222DE0
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _02222DD0
_02222DE0:
	lsl r2, r1, #1
	ldr r1, _02222E7C ; =0x0222EE78
	ldrh r1, [r1, r2]
	ldr r2, _02222E78 ; =0x0000FFFF
	cmp r1, r2
	bne _02222E06
	mov r1, ip
	cmp r1, #0
	beq _02222E3C
	lsl r1, r0, #1
	ldr r0, _02222E74 ; =0x0222EE90
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _02222E3C
	ldr r1, _02222E80 ; =0x000003E1
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, r1]
	cmp r0, #1
	bls _02222E3C
_02222E06:
	ldr r0, [sp, #0x54]
	cmp r0, #1
	bne _02222E18
	ldr r0, [sp, #0x28]
	add r1, r7, r0
	mov r0, #0xdb
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	b _02222E1A
_02222E18:
	mov r0, #0x64
_02222E1A:
	ldr r1, [sp, #0x48]
	mov r2, ip
	str r1, [sp]
	ldr r1, [sp, #0x18]
	str r1, [sp, #4]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #8]
	ldr r1, [sp, #0x50]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x44]
	add r1, r7, #0
	bl ov14_02222E84
	str r0, [r6, #0]
	b _02222E40
_02222E3C:
	mov r0, #0
	str r0, [r6, #0]
_02222E40:
	ldr r0, [sp, #0x1c]
	add r6, r6, #4
	add r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _02222DA4
	ldr r2, [sp, #0x40]
	mov r3, #0
_02222E56:
	ldr r1, [r2, #0]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	bge _02222E60
	str r1, [sp, #0x24]
_02222E60:
	add r3, r3, #1
	add r2, r2, #4
	cmp r3, #4
	blt _02222E56
	ldr r0, [sp, #0x24]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02222E70: .word 0x000003DE
_02222E74: .word 0x0222EE90
_02222E78: .word 0x0000FFFF
_02222E7C: .word 0x0222EE78
_02222E80: .word 0x000003E1
	thumb_func_end ov14_02222D7C

	thumb_func_start ov14_02222E84
ov14_02222E84: ; 0x02222E84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r6, r1, #0
	ldr r1, [sp, #0x60]
	str r3, [sp, #0x1c]
	str r1, [sp, #0x60]
	ldr r1, [sp, #0x64]
	str r0, [sp, #0x18]
	str r1, [sp, #0x64]
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r6, r1]
	add r5, r2, #0
	bl ov16_0223E208
	mov r4, #0
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r7, r4, #0
	str r4, [sp, #0x20]
	str r0, [sp, #0x48]
	cmp r5, #0xd8
	bgt _02222EEA
	blt _02222EB6
	b _022230F4
_02222EB6:
	cmp r5, #0x52
	bgt _02222ED8
	blt _02222EBE
	b _022230B8
_02222EBE:
	cmp r5, #0x31
	bgt _02222EC8
	bne _02222EC6
	b _0222316E
_02222EC6:
	b _022231B0
_02222EC8:
	cmp r5, #0x45
	bgt _02222ED6
	cmp r5, #0x43
	blt _02222ED6
	beq _02222F20
	cmp r5, #0x45
	beq _02222EDE
_02222ED6:
	b _022231B0
_02222ED8:
	cmp r5, #0x65
	bgt _02222EE2
	bne _02222EE0
_02222EDE:
	b _022230BE
_02222EE0:
	b _022231B0
_02222EE2:
	cmp r5, #0x95
	bne _02222EE8
	b _022230CE
_02222EE8:
	b _022231B0
_02222EEA:
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r5, r0
	bgt _02222F10
	blt _02222EF6
	b _0222308E
_02222EF6:
	cmp r5, #0xde
	bgt _02222F0A
	cmp r5, #0xda
	blt _02222F08
	bne _02222F02
	b _0222310E
_02222F02:
	cmp r5, #0xde
	bne _02222F08
	b _0222312C
_02222F08:
	b _022231B0
_02222F0A:
	cmp r5, #0xed
	beq _02222FE8
	b _022231B0
_02222F10:
	add r1, r0, #0
	add r1, #0x57
	cmp r5, r1
	bgt _02222F2A
	add r1, r0, #0
	add r1, #0x57
	cmp r5, r1
	blt _02222F22
_02222F20:
	b _02223174
_02222F22:
	add r0, r0, #3
	cmp r5, r0
	beq _02222F32
	b _022231B0
_02222F2A:
	add r0, #0x59
	cmp r5, r0
	beq _02222F5A
	b _022231B0
_02222F32:
	ldr r0, [sp, #0x68]
	cmp r0, #0x67
	beq _02222F66
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	bne _02222F66
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	mov r2, #0xb
	bl ov16_0225B0FC
	add r4, r0, #0
	beq _02222F66
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	mov r2, #0xc
	bl ov16_0225B0FC
	add r7, r0, #0
	b _022231B4
_02222F5A:
	ldr r0, [sp, #0x68]
	cmp r0, #0x67
	beq _02222F66
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	beq _02222F68
_02222F66:
	b _022231B4
_02222F68:
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	mov r2, #1
	bl ov16_0225B0FC
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _02222FE4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02222F84: ; jump table
	.short _02222FC4 - _02222F84 - 2 ; case 0
	.short _02222FC8 - _02222F84 - 2 ; case 1
	.short _02222FD0 - _02222F84 - 2 ; case 2
	.short _02222FCC - _02222F84 - 2 ; case 3
	.short _02222FD8 - _02222F84 - 2 ; case 4
	.short _02222FA4 - _02222F84 - 2 ; case 5
	.short _02222FAC - _02222F84 - 2 ; case 6
	.short _02222FB0 - _02222F84 - 2 ; case 7
	.short _02222FA8 - _02222F84 - 2 ; case 8
	.short _02222FD4 - _02222F84 - 2 ; case 9
	.short _02222FB8 - _02222F84 - 2 ; case 10
	.short _02222FB4 - _02222F84 - 2 ; case 11
	.short _02222FBC - _02222F84 - 2 ; case 12
	.short _02222FDC - _02222F84 - 2 ; case 13
	.short _02222FE0 - _02222F84 - 2 ; case 14
	.short _02222FC0 - _02222F84 - 2 ; case 15
_02222FA4:
	mov r7, #1
	b _022231B4
_02222FA8:
	mov r7, #2
	b _022231B4
_02222FAC:
	mov r7, #3
	b _022231B4
_02222FB0:
	mov r7, #4
	b _022231B4
_02222FB4:
	mov r7, #5
	b _022231B4
_02222FB8:
	mov r7, #6
	b _022231B4
_02222FBC:
	mov r7, #7
	b _022231B4
_02222FC0:
	mov r7, #8
	b _022231B4
_02222FC4:
	mov r7, #0xa
	b _022231B4
_02222FC8:
	mov r7, #0xb
	b _022231B4
_02222FCC:
	mov r7, #0xc
	b _022231B4
_02222FD0:
	mov r7, #0xd
	b _022231B4
_02222FD4:
	mov r7, #0xe
	b _022231B4
_02222FD8:
	mov r7, #0xf
	b _022231B4
_02222FDC:
	mov r7, #0x10
	b _022231B4
_02222FE0:
	mov r7, #0x11
	b _022231B4
_02222FE4:
	mov r7, #0
	b _022231B4
_02222FE8:
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x60]
	ldrb r0, [r0, #1]
	ldrb r3, [r1, #4]
	ldrb r1, [r1, #5]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x34]
	ldrb r0, [r0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1a
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x38]
	ldrb r2, [r0, #2]
	lsl r1, r3, #0x1f
	lsr r1, r1, #0x1b
	ldrb r0, [r0, #3]
	str r1, [sp, #0x3c]
	mov r4, #1
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1c
	str r1, [sp, #0x40]
	lsl r1, r2, #0x1f
	lsr r7, r1, #0x1d
	ldr r1, [sp, #0x30]
	and r1, r4
	ldr r4, [sp, #0x2c]
	lsl r4, r4, #0x1f
	lsr r4, r4, #0x1e
	orr r1, r4
	add r4, r7, #0
	orr r4, r1
	ldr r1, [sp, #0x40]
	orr r4, r1
	ldr r1, [sp, #0x3c]
	orr r4, r1
	ldr r1, [sp, #0x38]
	orr r1, r4
	str r1, [sp, #0x24]
	mov r1, #2
	ldr r4, [sp, #0x34]
	and r3, r1
	and r4, r1
	lsl r4, r4, #4
	str r4, [sp, #0x44]
	and r0, r1
	lsl r4, r3, #3
	lsl r3, r0, #2
	add r0, r2, #0
	and r0, r1
	lsl r2, r0, #1
	ldr r0, [sp, #0x30]
	and r0, r1
	asr r7, r0, #1
	ldr r0, [sp, #0x2c]
	and r0, r1
	orr r0, r7
	orr r0, r2
	orr r0, r3
	add r1, r4, #0
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r1, r0
	mov r0, #0x28
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r4, r0, #0
	ldr r1, [sp, #0x24]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	add r4, #0x1e
	bl _s32_div_f
	add r7, r0, #1
	cmp r7, #9
	bge _0222308A
	b _022231B4
_0222308A:
	add r7, r7, #1
	b _022231B4
_0222308E:
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	ldr r2, _02223254 ; =0x000021F0
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r1, [r0, r2]
	mov r0, #0x19
	mul r0, r1
	ldr r1, [sp, #0x64]
	lsl r1, r1, #2
	add r1, r6, r1
	ldr r1, [r1, r2]
	bl _u32_div_f
	add r4, r0, #1
	cmp r4, #0x96
	ble _022230B4
	mov r4, #0x96
_022230B4:
	mov r7, #0
	b _022231B4
_022230B8:
	mov r0, #0x28
	str r0, [sp, #0x20]
	b _022231B4
_022230BE:
	ldr r0, [sp, #0x64]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02223258 ; =0x00002D74
	add r1, r6, r1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x20]
	b _022231B4
_022230CE:
	ldr r0, [sp, #0x18]
	bl ov16_0223F4BC
	mov r1, #0xb
	bl _s32_div_f
	ldr r0, [sp, #0x64]
	mov r2, #0xc0
	mul r2, r0
	ldr r0, _02223258 ; =0x00002D74
	add r2, r6, r2
	ldrb r2, [r2, r0]
	add r0, r1, #5
	mov r1, #0xa
	mul r0, r2
	bl _s32_div_f
	str r0, [sp, #0x20]
	b _022231B4
_022230F4:
	ldr r0, [sp, #0x64]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0222325C ; =0x00002D75
	add r1, r6, r1
	ldrb r1, [r1, r0]
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x19
	bl _s32_div_f
	add r4, r0, #0
	b _022231B4
_0222310E:
	ldr r0, [sp, #0x64]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0222325C ; =0x00002D75
	add r1, r6, r1
	ldrb r1, [r1, r0]
	mov r0, #0xff
	sub r1, r0, r1
	mov r0, #0xa
	mul r0, r1
	mov r1, #0x19
	bl _s32_div_f
	add r4, r0, #0
	b _022231B4
_0222312C:
	ldr r0, [sp, #0x18]
	bl ov16_0223F4BC
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, #5
	bge _02223140
	mov r4, #0xa
	b _0222316A
_02223140:
	cmp r1, #0xf
	bge _02223148
	mov r4, #0x1e
	b _0222316A
_02223148:
	cmp r1, #0x23
	bge _02223150
	mov r4, #0x32
	b _0222316A
_02223150:
	cmp r1, #0x41
	bge _02223158
	mov r4, #0x46
	b _0222316A
_02223158:
	cmp r1, #0x55
	bge _02223160
	mov r4, #0x5a
	b _0222316A
_02223160:
	cmp r1, #0x5f
	bge _02223168
	mov r4, #0x6e
	b _0222316A
_02223168:
	mov r4, #0x96
_0222316A:
	mov r7, #0
	b _022231B4
_0222316E:
	mov r0, #0x14
	str r0, [sp, #0x20]
	b _022231B4
_02223174:
	mov r2, #0x3d
	lsl r2, r2, #4
	ldrb r3, [r6, r2]
	mov r2, #0xc0
	ldr r1, _02223260 ; =0x0222EE60
	mul r2, r3
	add r3, r6, r2
	ldr r2, _02223264 ; =0x00002D60
	ldr r4, _02223268 ; =0x0000FFFF
	ldr r2, [r3, r2]
	mov r0, #0
_0222318A:
	ldrh r3, [r1]
	cmp r3, r2
	bge _0222319A
	add r1, r1, #4
	ldrh r3, [r1]
	add r0, r0, #1
	cmp r3, r4
	bne _0222318A
_0222319A:
	ldr r1, _02223260 ; =0x0222EE60
	lsl r0, r0, #2
	ldrh r2, [r1, r0]
	ldr r1, _02223268 ; =0x0000FFFF
	cmp r2, r1
	beq _022231AC
	ldr r1, _0222326C ; =0x0222EE62
	ldrh r4, [r1, r0]
	b _022231B4
_022231AC:
	mov r4, #0x78
	b _022231B4
_022231B0:
	mov r4, #0
	add r7, r4, #0
_022231B4:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _022231FE
	mov r0, #6
	lsl r0, r0, #6
	mov ip, r0
	ldr r0, [r6, r0]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x64]
	lsl r3, r3, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	add r4, r6, r3
	mov r3, ip
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r3, #0x3c
	ldr r0, [sp, #0x18]
	ldr r3, [r4, r3]
	add r1, r6, #0
	add r2, r5, #0
	bl ov16_0225A280
	str r0, [sp, #0x20]
	b _0222320A
_022231FE:
	ldr r1, _02223270 ; =0x0000213C
	mov r0, #2
	ldr r2, [r6, r1]
	lsl r0, r0, #0xa
	orr r0, r2
	str r0, [r6, r1]
_0222320A:
	ldr r0, [sp, #0x64]
	add r1, r6, #0
	str r0, [sp]
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	add r2, r5, #0
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	add r0, sp, #0x48
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	bl ov16_02254FA8
	ldr r2, _02223270 ; =0x0000213C
	ldr r1, _02223274 ; =0xFFFFF7FF
	ldr r3, [r6, r2]
	and r1, r3
	str r1, [r6, r2]
	ldr r2, [sp, #0x48]
	ldr r1, _02223278 ; =0x00140808
	tst r1, r2
	beq _02223242
	add sp, #0x4c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02223242:
	add r1, sp, #0x70
	ldrb r1, [r1]
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x64
	bl ov16_022563F8
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02223254: .word 0x000021F0
_02223258: .word 0x00002D74
_0222325C: .word 0x00002D75
_02223260: .word 0x0222EE60
_02223264: .word 0x00002D60
_02223268: .word 0x0000FFFF
_0222326C: .word 0x0222EE62
_02223270: .word 0x0000213C
_02223274: .word 0xFFFFF7FF
_02223278: .word 0x00140808
	thumb_func_end ov14_02222E84

	thumb_func_start ov14_0222327C
ov14_0222327C: ; 0x0222327C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	ldr r2, _022233E8 ; =0x00000137
	add r7, r0, #0
	add r4, r1, #0
	cmp r3, r2
	bgt _02223294
	blt _0222328E
	b _02223390
_0222328E:
	cmp r3, #0xed
	beq _02223336
	b _022233E2
_02223294:
	add r0, r2, #0
	add r0, #0x34
	cmp r3, r0
	bgt _022232A4
	add r2, #0x34
	cmp r3, r2
	beq _022232AC
	b _022233E2
_022232A4:
	add r2, #0x8a
	cmp r3, r2
	beq _022232B8
	b _022233E2
_022232AC:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02258B2C
	add r5, r0, #0
	b _022233E4
_022232B8:
	add r0, r4, #0
	add r1, r6, #0
	bl ov16_02258AB8
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _02223332
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022232D2: ; jump table
	.short _02223312 - _022232D2 - 2 ; case 0
	.short _02223316 - _022232D2 - 2 ; case 1
	.short _0222331E - _022232D2 - 2 ; case 2
	.short _0222331A - _022232D2 - 2 ; case 3
	.short _02223326 - _022232D2 - 2 ; case 4
	.short _022232F2 - _022232D2 - 2 ; case 5
	.short _022232FA - _022232D2 - 2 ; case 6
	.short _022232FE - _022232D2 - 2 ; case 7
	.short _022232F6 - _022232D2 - 2 ; case 8
	.short _02223322 - _022232D2 - 2 ; case 9
	.short _02223306 - _022232D2 - 2 ; case 10
	.short _02223302 - _022232D2 - 2 ; case 11
	.short _0222330A - _022232D2 - 2 ; case 12
	.short _0222332A - _022232D2 - 2 ; case 13
	.short _0222332E - _022232D2 - 2 ; case 14
	.short _0222330E - _022232D2 - 2 ; case 15
_022232F2:
	mov r5, #1
	b _022233E4
_022232F6:
	mov r5, #2
	b _022233E4
_022232FA:
	mov r5, #3
	b _022233E4
_022232FE:
	mov r5, #4
	b _022233E4
_02223302:
	mov r5, #5
	b _022233E4
_02223306:
	mov r5, #6
	b _022233E4
_0222330A:
	mov r5, #7
	b _022233E4
_0222330E:
	mov r5, #8
	b _022233E4
_02223312:
	mov r5, #0xa
	b _022233E4
_02223316:
	mov r5, #0xb
	b _022233E4
_0222331A:
	mov r5, #0xc
	b _022233E4
_0222331E:
	mov r5, #0xd
	b _022233E4
_02223322:
	mov r5, #0xe
	b _022233E4
_02223326:
	mov r5, #0xf
	b _022233E4
_0222332A:
	mov r5, #0x10
	b _022233E4
_0222332E:
	mov r5, #0x11
	b _022233E4
_02223332:
	mov r5, #0
	b _022233E4
_02223336:
	ldr r0, _022233EC ; =0x00002D54
	add r1, r4, r0
	mov r0, #0xc0
	mul r0, r6
	ldr r4, [r1, r0]
	lsl r0, r4, #2
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r5, r0, #0x1a
	lsl r0, r4, #7
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r3, r0, #0x1b
	lsl r0, r4, #0xc
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1c
	lsl r0, r4, #0x11
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	lsl r0, r4, #0x1b
	lsl r4, r4, #0x16
	lsr r4, r4, #0x1b
	lsr r6, r0, #0x1b
	mov r0, #1
	lsl r4, r4, #0x1f
	and r0, r6
	lsr r4, r4, #0x1e
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r1, r5, #0
	orr r1, r0
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r5, r0, #1
	cmp r5, #9
	blt _022233E4
	add r5, r5, #1
	b _022233E4
_02223390:
	mov r2, #0xd
	str r2, [sp]
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _022233E4
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _022233E4
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, _022233F0 ; =0x000080FF
	tst r1, r0
	beq _022233E4
	mov r1, #3
	tst r1, r0
	beq _022233C8
	mov r5, #0xb
_022233C8:
	mov r1, #0xc
	tst r1, r0
	beq _022233D0
	mov r5, #5
_022233D0:
	mov r1, #0x30
	tst r1, r0
	beq _022233D8
	mov r5, #0xa
_022233D8:
	mov r1, #0xc0
	tst r0, r1
	beq _022233E4
	mov r5, #0xf
	b _022233E4
_022233E2:
	mov r5, #0
_022233E4:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022233E8: .word 0x00000137
_022233EC: .word 0x00002D54
_022233F0: .word 0x000080FF
	thumb_func_end ov14_0222327C

	thumb_func_start ov14_022233F4
ov14_022233F4: ; 0x022233F4
	push {r4, r5}
	mov r2, #0xc0
	mul r2, r1
	add r5, r0, r2
	mov r2, #0xb7
	lsl r2, r2, #6
	ldr r4, [r5, r2]
	mov r3, #0x20
	tst r3, r4
	beq _02223420
	add r2, #8
	ldr r2, [r5, r2]
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1e
	bne _02223420
	add r1, r0, r1
	ldr r0, _02223428 ; =0x000021A4
	mov r2, #6
	strb r2, [r1, r0]
	mov r0, #1
	pop {r4, r5}
	bx lr
_02223420:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_02223428: .word 0x000021A4
	thumb_func_end ov14_022233F4

	thumb_func_start ov14_0222342C
ov14_0222342C: ; 0x0222342C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x14]
	add r5, r1, #0
	str r2, [sp, #0x18]
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02223446
	add sp, #0x44
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02223446:
	ldr r0, [sp, #0x18]
	mov r1, #1
	add r4, r0, #0
	eor r4, r1
	mov r1, #0xc0
	add r0, r4, #0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _022235DC ; =0x00002D67
	ldrb r0, [r2, r0]
	cmp r0, #0x19
	bne _022234C4
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	mul r1, r0
	add r6, r5, r1
_02223468:
	ldr r0, _022235E0 ; =0x00002D4C
	ldr r2, [sp, #0x18]
	ldrh r7, [r6, r0]
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	add r3, r7, #0
	bl ov14_0222327C
	add r3, r0, #0
	cmp r7, #0
	beq _022234A8
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x40
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r2, r7, #0
	bl ov16_02254FA8
	ldr r1, [sp, #0x40]
	mov r0, #2
	tst r0, r1
	beq _022234A8
	add sp, #0x44
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022234A8:
	ldr r0, [sp, #0x28]
	add r6, r6, #2
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _02223468
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov16_0223DF60
	cmp r0, #0
	bgt _022234C6
_022234C4:
	b _022235D6
_022234C6:
	ldr r0, [sp, #0x18]
	add r0, r5, r0
	str r0, [sp, #0x24]
_022234CC:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _022235C0
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _022235C0
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _022235E4 ; =0x000001EE
	cmp r0, r1
	beq _022235C0
	ldr r1, _022235E8 ; =0x0000219C
	ldr r0, [sp, #0x24]
	ldrb r1, [r0, r1]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	beq _022235C0
	mov r7, #0
_02223510:
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	add r1, r5, #0
	add r2, r6, #0
	bl ov16_0225BE3C
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _022235BA
	mov r0, #0
	str r0, [sp, #0x40]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	str r0, [sp, #0x34]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02258AB8
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0x3c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	str r1, [sp]
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x30]
	str r1, [sp, #4]
	ldr r1, [sp, #0x3c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x40
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ov16_022552D4
	ldr r1, [sp, #0x40]
	mov r0, #2
	tst r0, r1
	beq _022235BA
	ldr r0, [sp, #0x14]
	bl ov16_0223F4BC
	mov r1, #3
	bl _s32_div_f
	cmp r1, #2
	bge _022235BA
	ldr r0, [sp, #0x18]
	ldr r1, _022235EC ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x20]
	add sp, #0x44
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022235BA:
	add r7, r7, #1
	cmp r7, #4
	blt _02223510
_022235C0:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	bl ov16_0223DF60
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bge _022235D6
	b _022234CC
_022235D6:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022235DC: .word 0x00002D67
_022235E0: .word 0x00002D4C
_022235E4: .word 0x000001EE
_022235E8: .word 0x0000219C
_022235EC: .word 0x000021A4
	thumb_func_end ov14_0222342C

	thumb_func_start ov14_022235F0
ov14_022235F0: ; 0x022235F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xbc
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp, #0x14]
	bl ov16_0223DF0C
	mov r4, #2
	tst r0, r4
	beq _02223608
	mov r6, #0
	b _0222360C
_02223608:
	mov r6, #0
	add r4, r6, #0
_0222360C:
	ldr r1, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x5c]
	str r0, [sp, #0x74]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	add r1, r5, r2
	str r1, [sp, #0x44]
	add r1, r6, #0
	mul r1, r0
	mul r0, r4
	add r1, r5, r1
	add r0, r5, r0
	str r1, [sp, #0x3c]
	str r0, [sp, #0x38]
_0222362C:
	ldr r1, [sp, #0x44]
	ldr r0, _0222395C ; =0x00002D4C
	ldr r2, [sp, #0x14]
	ldrh r0, [r1, r0]
	add r1, r5, #0
	str r0, [sp, #0x40]
	ldr r3, [sp, #0x40]
	add r0, r7, #0
	bl ov14_0222327C
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _022236C6
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02223960 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _022236C6
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x5c]
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r0, _02223964 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02223682
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x40]
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xb8
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x64]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_02254FA8
_02223682:
	ldr r1, [sp, #0xb8]
	mov r0, #8
	tst r0, r1
	bne _02223690
	add sp, #0xbc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02223690:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x38]
	ldr r0, _02223964 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022236B8
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x40]
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xb8
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x64]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_02254FA8
_022236B8:
	ldr r1, [sp, #0xb8]
	mov r0, #8
	tst r0, r1
	bne _022236C6
	add sp, #0xbc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022236C6:
	ldr r0, [sp, #0x44]
	add r0, r0, #2
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x74]
	add r0, r0, #1
	str r0, [sp, #0x74]
	cmp r0, #4
	blt _0222362C
	ldr r0, [sp, #0x5c]
	cmp r0, #2
	bge _022236E2
	add sp, #0xbc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022236E2:
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x6c]
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	bne _02223702
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	beq _02223708
_02223702:
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x68]
	b _02223716
_02223708:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov16_0223E258
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x68]
_02223716:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov16_0223DF60
	str r0, [sp, #0x60]
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bgt _0222372C
	b _0222390E
_0222372C:
	ldr r0, [sp, #0x6c]
	add r0, r5, r0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x68]
	add r0, r5, r0
	str r0, [sp, #0x48]
_02223738:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x30]
	add r0, r7, #0
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	str r0, [sp, #0x58]
	bl sub_02074470
	cmp r0, #0
	beq _0222379E
	ldr r0, [sp, #0x58]
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0222379E
	ldr r0, [sp, #0x58]
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02223968 ; =0x000001EE
	cmp r0, r1
	beq _0222379E
	ldr r0, _0222396C ; =0x0000219C
	ldr r1, [sp, #0x4c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x30]
	cmp r1, r2
	beq _0222379E
	ldr r1, [sp, #0x48]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x30]
	cmp r1, r2
	beq _0222379E
	add r2, r0, #0
	ldr r1, [sp, #0x4c]
	add r2, #8
	ldrb r2, [r1, r2]
	ldr r1, [sp, #0x30]
	cmp r1, r2
	beq _0222379E
	ldr r1, [sp, #0x48]
	add r0, #8
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bne _022237A0
_0222379E:
	b _02223900
_022237A0:
	mov r0, #0
	str r0, [sp, #0x70]
_022237A4:
	ldr r1, [sp, #0x70]
	ldr r0, [sp, #0x58]
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x28]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0225BE3C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _022237D6
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02223960 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022237D8
_022237D6:
	b _022238F4
_022237D8:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x3c]
	ldr r0, _02223964 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0222383E
	ldr r0, [sp, #0x58]
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x78]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	str r0, [sp, #0x7c]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02258AB8
	str r0, [sp, #0x80]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0x84]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x20]
	str r1, [sp]
	ldr r1, [sp, #0x80]
	ldr r3, [sp, #0x78]
	str r1, [sp, #4]
	ldr r1, [sp, #0x84]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0xb8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl ov16_022552D4
_0222383E:
	ldr r1, [sp, #0xb8]
	mov r0, #2
	tst r0, r1
	beq _02223866
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #3
	bl _s32_div_f
	cmp r1, #2
	bge _02223866
	ldr r0, [sp, #0x14]
	ldr r1, _02223970 ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x30]
	add sp, #0xbc
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02223866:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x38]
	ldr r0, _02223964 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022238CC
	ldr r0, [sp, #0x58]
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x88]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	str r0, [sp, #0x8c]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02258AB8
	str r0, [sp, #0x90]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0x94]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0x20]
	str r1, [sp]
	ldr r1, [sp, #0x90]
	ldr r3, [sp, #0x88]
	str r1, [sp, #4]
	ldr r1, [sp, #0x94]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0xb8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl ov16_022552D4
_022238CC:
	ldr r1, [sp, #0xb8]
	mov r0, #2
	tst r0, r1
	beq _022238F4
	add r0, r7, #0
	bl ov16_0223F4BC
	mov r1, #3
	bl _s32_div_f
	cmp r1, #2
	bge _022238F4
	ldr r0, [sp, #0x14]
	ldr r1, _02223970 ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x30]
	add sp, #0xbc
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022238F4:
	ldr r0, [sp, #0x70]
	add r0, r0, #1
	str r0, [sp, #0x70]
	cmp r0, #4
	bge _02223900
	b _022237A4
_02223900:
	ldr r0, [sp, #0x30]
	add r1, r0, #1
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x30]
	cmp r1, r0
	bge _0222390E
	b _02223738
_0222390E:
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bgt _0222391A
	b _02223B1C
_0222391A:
	ldr r0, [sp, #0x6c]
	add r0, r5, r0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x68]
	add r0, r5, r0
	str r0, [sp, #0x50]
_02223926:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x34]
	add r0, r7, #0
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	str r0, [sp, #0x1c]
	bl sub_02074470
	cmp r0, #0
	beq _022239A8
	ldr r0, [sp, #0x1c]
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _022239A8
	ldr r0, [sp, #0x1c]
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02223968 ; =0x000001EE
	b _02223974
	nop
_0222395C: .word 0x00002D4C
_02223960: .word 0x000003E1
_02223964: .word 0x00002D8C
_02223968: .word 0x000001EE
_0222396C: .word 0x0000219C
_02223970: .word 0x000021A4
_02223974:
	cmp r0, r1
	beq _022239A8
	ldr r0, _02223B24 ; =0x0000219C
	ldr r1, [sp, #0x54]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _022239A8
	ldr r1, [sp, #0x50]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _022239A8
	add r2, r0, #0
	ldr r1, [sp, #0x54]
	add r2, #8
	ldrb r2, [r1, r2]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _022239A8
	ldr r1, [sp, #0x50]
	add r0, #8
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x34]
	cmp r0, r1
	bne _022239AA
_022239A8:
	b _02223B0E
_022239AA:
	mov r0, #0
	str r0, [sp, #0x18]
_022239AE:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x2c]
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0225BE3C
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _022239E0
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02223B28 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022239E2
_022239E0:
	b _02223B02
_022239E2:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x3c]
	ldr r0, _02223B2C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02223A48
	ldr r0, [sp, #0x1c]
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x98]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02255A4C
	str r0, [sp, #0x9c]
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02258AB8
	str r0, [sp, #0xa0]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0xa4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x9c]
	ldr r2, [sp, #0x24]
	str r1, [sp]
	ldr r1, [sp, #0xa0]
	ldr r3, [sp, #0x98]
	str r1, [sp, #4]
	ldr r1, [sp, #0xa4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0xb8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl ov16_022552D4
_02223A48:
	ldr r0, [sp, #0xb8]
	cmp r0, #0
	bne _02223A72
	add r0, r7, #0
	bl ov16_0223F4BC
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r1
	mov r0, #0x1f
	ror r2, r0
	add r0, r1, r2
	bne _02223A72
	ldr r0, [sp, #0x14]
	ldr r1, _02223B30 ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x34]
	add sp, #0xbc
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02223A72:
	mov r0, #0
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x38]
	ldr r0, _02223B2C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02223AD8
	ldr r0, [sp, #0x1c]
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xa8]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	str r0, [sp, #0xac]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02258AB8
	str r0, [sp, #0xb0]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	str r0, [sp, #0xb4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0x24]
	str r1, [sp]
	ldr r1, [sp, #0xb0]
	ldr r3, [sp, #0xa8]
	str r1, [sp, #4]
	ldr r1, [sp, #0xb4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0xb8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl ov16_022552D4
_02223AD8:
	ldr r0, [sp, #0xb8]
	cmp r0, #0
	bne _02223B02
	add r0, r7, #0
	bl ov16_0223F4BC
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r1
	mov r0, #0x1f
	ror r2, r0
	add r0, r1, r2
	bne _02223B02
	ldr r0, [sp, #0x14]
	ldr r1, _02223B30 ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x34]
	add sp, #0xbc
	strb r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02223B02:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _02223B0E
	b _022239AE
_02223B0E:
	ldr r0, [sp, #0x34]
	add r1, r0, #1
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x34]
	cmp r1, r0
	bge _02223B1C
	b _02223926
_02223B1C:
	mov r0, #0
	add sp, #0xbc
	pop {r4, r5, r6, r7, pc}
	nop
_02223B24: .word 0x0000219C
_02223B28: .word 0x000003E1
_02223B2C: .word 0x00002D8C
_02223B30: .word 0x000021A4
	thumb_func_end ov14_022235F0

	thumb_func_start ov14_02223B34
ov14_02223B34: ; 0x02223B34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	add r5, r0, #0
	str r3, [sp, #0x10]
	bl ov16_0223E1F8
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r5, #0
	bl ov16_0223E1C4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	bl sub_020787CC
	ldr r1, _02223C84 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _02223BDC
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0xc0
	mul r0, r6
	add r7, r4, r0
_02223B70:
	ldr r0, _02223C88 ; =0x00002D4C
	add r1, r4, #0
	ldrh r0, [r7, r0]
	add r2, r6, #0
	str r0, [sp, #0x20]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	bl ov14_0222327C
	add r3, r0, #0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02223BD0
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02254FA8
	ldr r1, [sp, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _02223BD0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02223BBA
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223BBA:
	add r0, r5, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #0
	beq _02223BD0
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223BD0:
	ldr r0, [sp, #0x28]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _02223B70
_02223BDC:
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02223BEE
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223BEE:
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov16_0223E258
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	bl sub_020787CC
	ldr r1, _02223C84 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _02223C7E
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0xc0
	mul r0, r6
	add r7, r4, r0
_02223C12:
	ldr r0, _02223C88 ; =0x00002D4C
	add r1, r4, #0
	ldrh r0, [r7, r0]
	add r2, r6, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov14_0222327C
	add r3, r0, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02223C72
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02254FA8
	ldr r1, [sp, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _02223C72
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02223C5C
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223C5C:
	add r0, r5, #0
	bl ov16_0223F4BC
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #0
	beq _02223C72
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223C72:
	ldr r0, [sp, #0x18]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _02223C12
_02223C7E:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223C84: .word 0x00003108
_02223C88: .word 0x00002D4C
	thumb_func_end ov14_02223B34

	thumb_func_start ov14_02223C8C
ov14_02223C8C: ; 0x02223C8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #1
	add r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	bl ov14_02223B34
	cmp r0, #0
	beq _02223CB6
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	beq _02223CB6
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02223CB6:
	ldr r0, [sp, #4]
	lsl r1, r0, #1
	ldr r0, [sp]
	add r1, r0, r1
	ldr r0, _02223DFC ; =0x00003064
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _02223CCC
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02223CCC:
	lsl r1, r0, #4
	ldr r0, [sp]
	add r2, r0, r1
	ldr r0, _02223E00 ; =0x000003E1
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _02223CE0
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02223CE0:
	add r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0xa
	bne _02223CEE
	mov r0, #0x12
	str r0, [sp, #0x10]
	b _02223D08
_02223CEE:
	cmp r0, #0xb
	bne _02223CF8
	mov r0, #0xb
	str r0, [sp, #0x10]
	b _02223D08
_02223CF8:
	cmp r0, #0xd
	bne _02223D02
	mov r0, #0xa
	str r0, [sp, #0x10]
	b _02223D08
_02223D02:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02223D08:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov16_02255A4C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _02223D1C
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02223D1C:
	ldr r0, [sp, #4]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	bne _02223D3A
	add r0, r6, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	beq _02223D3E
_02223D3A:
	add r7, r4, #0
	b _02223D4A
_02223D3E:
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov16_0223E258
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_02223D4A:
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov16_0223DF60
	mov r5, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _02223DF4
	ldr r0, [sp]
	add r0, r0, r4
	str r0, [sp, #8]
	ldr r0, [sp]
	add r7, r0, r7
_02223D64:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02223DEC
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02223DEC
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02223E04 ; =0x000001EE
	cmp r0, r1
	beq _02223DEC
	ldr r1, [sp, #8]
	ldr r0, _02223E08 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _02223DEC
	ldr r0, _02223E08 ; =0x0000219C
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _02223DEC
	ldr r0, _02223E0C ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _02223DEC
	ldr r0, _02223E0C ; =0x000021A4
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _02223DEC
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bne _02223DEC
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _02223DEC
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add sp, #0x14
	add r1, r1, r0
	ldr r0, _02223E0C ; =0x000021A4
	strb r5, [r1, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02223DEC:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _02223D64
_02223DF4:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02223DFC: .word 0x00003064
_02223E00: .word 0x000003E1
_02223E04: .word 0x000001EE
_02223E08: .word 0x0000219C
_02223E0C: .word 0x000021A4
	thumb_func_end ov14_02223C8C

	thumb_func_start ov14_02223E10
ov14_02223E10: ; 0x02223E10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r1, #0
	add r1, r2, #0
	lsl r6, r1, #1
	str r3, [sp, #0x1c]
	ldr r1, _02224058 ; =0x00003064
	add r3, r5, r6
	str r2, [sp, #0x18]
	ldrh r2, [r3, r1]
	str r0, [sp, #0x14]
	cmp r2, #0
	beq _02223E32
	add r1, #8
	ldrh r1, [r3, r1]
	cmp r1, #0xff
	bne _02223E38
_02223E32:
	add sp, #0x60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223E38:
	lsl r1, r2, #4
	add r2, r5, r1
	ldr r1, _0222405C ; =0x000003E1
	ldrb r1, [r2, r1]
	cmp r1, #0
	bne _02223E4A
	add sp, #0x60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223E4A:
	ldr r1, [sp, #0x18]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	bne _02223E66
	ldr r0, [sp, #0x14]
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	beq _02223E6A
_02223E66:
	add r7, r4, #0
	b _02223E76
_02223E6A:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov16_0223E258
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_02223E76:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov16_0223DF60
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bgt _02223E8C
	b _02224050
_02223E8C:
	add r0, r5, r4
	str r0, [sp, #0x2c]
	add r0, r5, r7
	str r0, [sp, #0x28]
	add r0, sp, #0x68
	ldrb r0, [r0, #0x10]
	add r4, r5, r6
	str r0, [sp, #0x24]
_02223E9C:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x34]
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02223F02
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02223F02
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _02224060 ; =0x000001EE
	cmp r0, r1
	beq _02223F02
	ldr r0, _02224064 ; =0x0000219C
	ldr r1, [sp, #0x2c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _02223F02
	ldr r1, [sp, #0x28]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _02223F02
	add r2, r0, #0
	ldr r1, [sp, #0x2c]
	add r2, #8
	ldrb r2, [r1, r2]
	ldr r1, [sp, #0x34]
	cmp r1, r2
	beq _02223F02
	ldr r1, [sp, #0x28]
	add r0, #8
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x34]
	cmp r0, r1
	bne _02223F04
_02223F02:
	b _02224042
_02223F04:
	mov r0, #0
	str r0, [sp, #0x5c]
	ldr r3, _02224068 ; =0x0000306C
	ldr r0, [sp, #0x14]
	ldrh r2, [r4, r3]
	sub r3, #8
	ldrh r3, [r4, r3]
	add r1, r5, #0
	bl ov14_0222327C
	ldr r1, _02224068 ; =0x0000306C
	str r0, [sp, #0x38]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov16_02255A4C
	str r0, [sp, #0x3c]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x40]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #1
	bl ov16_0225B0FC
	str r0, [sp, #0x44]
	add r0, r6, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x38]
	str r1, [sp]
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x3c]
	str r1, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x5c
	str r0, [sp, #0x10]
	ldr r1, _02224058 ; =0x00003064
	add r0, r5, #0
	ldrh r1, [r4, r1]
	bl ov16_022552D4
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x1c]
	tst r0, r1
	beq _02224042
	mov r7, #0
_02223F8A:
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	add r2, r6, #0
	bl ov16_0225BE3C
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0222403C
	mov r0, #0
	str r0, [sp, #0x5c]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	ldr r1, _02224068 ; =0x0000306C
	str r0, [sp, #0x4c]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov16_02255A4C
	ldr r1, _02224068 ; =0x0000306C
	str r0, [sp, #0x50]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov16_02258AB8
	ldr r1, _02224068 ; =0x0000306C
	str r0, [sp, #0x54]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	ldr r1, _02224068 ; =0x0000306C
	str r0, [sp, #0x58]
	ldrh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x48]
	str r1, [sp]
	ldr r1, [sp, #0x54]
	ldr r3, [sp, #0x4c]
	str r1, [sp, #4]
	ldr r1, [sp, #0x58]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x5c
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov16_022552D4
	ldr r1, [sp, #0x5c]
	mov r0, #2
	tst r0, r1
	beq _0222403C
	ldr r0, [sp, #0x14]
	bl ov16_0223F4BC
	ldr r1, [sp, #0x24]
	bl _s32_div_f
	cmp r1, #0
	bne _0222403C
	ldr r0, [sp, #0x18]
	ldr r1, _0222406C ; =0x000021A4
	add r2, r5, r0
	ldr r0, [sp, #0x34]
	add sp, #0x60
	strb r0, [r2, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222403C:
	add r7, r7, #1
	cmp r7, #4
	blt _02223F8A
_02224042:
	ldr r0, [sp, #0x34]
	add r1, r0, #1
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x34]
	cmp r1, r0
	bge _02224050
	b _02223E9C
_02224050:
	mov r0, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224058: .word 0x00003064
_0222405C: .word 0x000003E1
_02224060: .word 0x000001EE
_02224064: .word 0x0000219C
_02224068: .word 0x0000306C
_0222406C: .word 0x000021A4
	thumb_func_end ov14_02223E10

	thumb_func_start ov14_02224070
ov14_02224070: ; 0x02224070
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0xc0
	add r5, r1, #0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02224158 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _022240AA
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02255A4C
	cmp r0, #0x1e
	bne _022240AA
	mov r0, #0xc0
	mul r0, r4
	ldr r1, _0222415C ; =0x00002D8C
	add r2, r5, r0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	lsr r1, r1, #1
	cmp r0, r1
	bhs _022240B0
_022240AA:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022240B0:
	ldr r0, _02224160 ; =0x00003064
	add r7, r5, r0
	lsl r0, r4, #1
	str r0, [sp, #4]
	ldrh r0, [r7, r0]
	cmp r0, #0
	bne _022240D8
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _022240D8
	ldr r0, _02224164 ; =0x000021A4
	mov r3, #6
	add r2, r5, r4
	strb r3, [r2, r0]
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_022240D8:
	ldr r0, [sp, #4]
	ldrh r0, [r7, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02224168 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02224102
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _02224102
	ldr r0, _02224164 ; =0x000021A4
	mov r3, #6
	add r2, r5, r4
	strb r3, [r2, r0]
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_02224102:
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #8
	bl ov14_02223E10
	cmp r0, #0
	beq _0222411C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222411C:
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #4
	bl ov14_02223E10
	cmp r0, #0
	beq _02224136
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02224136:
	add r0, r6, #0
	bl ov16_0223F4BC
	mov r1, #1
	tst r0, r1
	beq _02224150
	ldr r0, _02224164 ; =0x000021A4
	mov r3, #6
	add r2, r5, r4
	strb r3, [r2, r0]
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_02224150:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224158: .word 0x00002DAC
_0222415C: .word 0x00002D8C
_02224160: .word 0x00003064
_02224164: .word 0x000021A4
_02224168: .word 0x000003E1
	thumb_func_end ov14_02224070

	thumb_func_start ov14_0222416C
ov14_0222416C: ; 0x0222416C
	push {r3, r4}
	mov r4, #0xc0
	mul r4, r2
	mov r3, #0
	ldr r2, _022241A0 ; =0x00002D58
	add r0, r3, #0
	add r4, r1, r4
_0222417A:
	ldrsb r1, [r4, r2]
	cmp r1, #6
	ble _02224188
	sub r1, r1, #6
	add r1, r3, r1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
_02224188:
	add r0, r0, #1
	add r4, r4, #1
	cmp r0, #8
	blt _0222417A
	cmp r3, #4
	blo _0222419A
	mov r0, #1
	pop {r3, r4}
	bx lr
_0222419A:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_022241A0: .word 0x00002D58
	thumb_func_end ov14_0222416C

	thumb_func_start ov14_022241A4
ov14_022241A4: ; 0x022241A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r2, #0
	mov r2, #0xc0
	add r3, r6, #0
	mul r3, r2
	add r2, r1, #0
	add r5, r2, r3
	ldr r2, _022243A8 ; =0x00002DB0
	ldr r3, _022243AC ; =0x0400E000
	ldr r4, [r5, r2]
	str r0, [sp, #4]
	str r1, [sp, #8]
	tst r4, r3
	bne _02224224
	add r2, #0x10
	ldr r4, [r5, r2]
	lsr r2, r3, #0x10
	tst r2, r4
	bne _02224224
	mov r2, #0x17
	str r2, [sp]
	mov r2, #2
	add r3, r6, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02224224
	mov r0, #0x47
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #2
	add r3, r6, #0
	bl ov16_022555A4
	cmp r0, #0
	bne _02224224
	mov r0, #0x2a
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #6
	add r3, r6, #0
	bl ov16_022555A4
	cmp r0, #0
	beq _0222422A
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov16_02252060
	cmp r0, #8
	beq _02224224
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov16_02252060
	cmp r0, #8
	bne _0222422A
_02224224:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222422A:
	mov r0, #0
	str r0, [sp, #0x14]
	lsl r0, r6, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	bne _0222424A
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	beq _0222424E
_0222424A:
	add r7, r4, #0
	b _0222425A
_0222424E:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl ov16_0223E258
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0222425A:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl ov16_0223DF60
	mov r5, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _022242DA
	ldr r0, [sp, #8]
	add r0, r0, r4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r7, r0, r7
_02224274:
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _022242D2
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _022242D2
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _022243B0 ; =0x000001EE
	cmp r0, r1
	beq _022242D2
	ldr r1, [sp, #0xc]
	ldr r0, _022243B4 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _022242D2
	ldr r0, _022243B4 ; =0x0000219C
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _022242D2
	ldr r0, _022243B8 ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _022242D2
	ldr r0, _022243B8 ; =0x000021A4
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _022242D2
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
_022242D2:
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _02224274
_022242DA:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022243A0
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl ov14_022233F4
	cmp r0, #0
	beq _022242F2
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022242F2:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov14_0222342C
	cmp r0, #0
	beq _02224306
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02224306:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov14_022235F0
	cmp r0, #0
	beq _0222431A
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222431A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov14_02223C8C
	cmp r0, #0
	beq _0222432E
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222432E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov14_02224070
	cmp r0, #0
	beq _02224342
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02224342:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	mov r3, #0
	bl ov14_02223B34
	cmp r0, #0
	beq _02224358
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02224358:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov14_0222416C
	cmp r0, #0
	beq _0222436C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222436C:
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	mov r3, #8
	bl ov14_02223E10
	cmp r0, #0
	beq _02224386
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02224386:
	mov r0, #3
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	mov r3, #4
	bl ov14_02223E10
	cmp r0, #0
	beq _022243A0
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022243A0:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022243A8: .word 0x00002DB0
_022243AC: .word 0x0400E000
_022243B0: .word 0x000001EE
_022243B4: .word 0x0000219C
_022243B8: .word 0x000021A4
	thumb_func_end ov14_022241A4

	thumb_func_start ov14_022243BC
ov14_022243BC: ; 0x022243BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r1, r0, #0
	str r0, [sp]
	ldr r5, [r1, #0x30]
	bl ov16_0223DF0C
	add r6, r0, #0
	mov r0, #1
	tst r0, r6
	bne _022243E0
	ldr r0, [sp]
	add r1, r7, #0
	bl ov16_0223E208
	cmp r0, #0
	bne _022244A0
_022243E0:
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r7, #0
	bl ov14_022241A4
	cmp r0, #0
	beq _0222448E
	ldr r0, _022244A8 ; =0x000021A4
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldrb r0, [r0, r7]
	cmp r0, #6
	bne _02224488
	ldr r0, [sp]
	add r1, r7, #0
	bl ov16_0225BA88
	add r4, r0, #0
	cmp r4, #6
	bne _02224484
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #0x10
	tst r0, r6
	bne _0222441A
	mov r0, #8
	tst r0, r6
	beq _02224420
_0222441A:
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	b _0222442E
_02224420:
	ldr r0, [sp]
	add r1, r7, #0
	bl ov16_0223E258
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
_0222442E:
	ldr r0, [sp]
	add r1, r7, #0
	bl ov16_0223DF60
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02224484
	ldr r0, [sp, #0xc]
	add r6, r5, r0
	ldr r0, [sp, #8]
	add r5, r5, r0
_02224446:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0222447C
	ldr r0, _022244AC ; =0x0000219C
	ldrb r0, [r6, r0]
	cmp r4, r0
	beq _0222447C
	ldr r0, _022244AC ; =0x0000219C
	ldrb r0, [r5, r0]
	cmp r4, r0
	beq _0222447C
	ldr r0, _022244A8 ; =0x000021A4
	ldrb r0, [r6, r0]
	cmp r4, r0
	beq _0222447C
	ldr r0, _022244A8 ; =0x000021A4
	ldrb r0, [r5, r0]
	cmp r4, r0
	bne _02224484
_0222447C:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02224446
_02224484:
	ldr r0, [sp, #0x10]
	strb r4, [r0, r7]
_02224488:
	add sp, #0x14
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0222448E:
	ldr r0, [sp]
	add r1, r7, #0
	bl ov14_022244B0
	cmp r0, #0
	beq _022244A0
	add sp, #0x14
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_022244A0:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022244A8: .word 0x000021A4
_022244AC: .word 0x0000219C
	thumb_func_end ov14_022243BC

	thumb_func_start ov14_022244B0
ov14_022244B0: ; 0x022244B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r2, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	asr r2, r2, #1
	ldr r4, [r5, #0x30]
	str r2, [sp, #0xc]
	add r6, r4, r2
	ldr r2, [sp, #0x14]
	ldr r3, _022247BC ; =0x000003D3
	str r2, [sp, #0x1c]
	strb r2, [r6, r3]
	ldr r3, [r5, #0x2c]
	mov r2, #0x4b
	and r2, r3
	str r1, [sp]
	cmp r2, #0x4b
	bne _022244E6
	bl ov16_0223E1F8
	cmp r0, #4
	bne _022244E6
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022244E6:
	ldr r0, [sp]
	mov r1, #0xc0
	mul r1, r0
	mov r0, #0xb7
	str r1, [sp, #8]
	add r1, r4, r1
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r1
	beq _02224504
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02224504:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov16_0223DF20
	add r7, r0, #0
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02224562
_02224518:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02224556
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02224556
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _022247C0 ; =0x000001EE
	cmp r0, r1
	beq _02224556
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
_02224556:
	add r0, r7, #0
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _02224518
_02224562:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #1
	lsl r0, r0, #3
	add r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r5, r4, r0
	ldr r0, [sp, #8]
	add r7, r4, r0
	ldr r0, [sp]
	bic r0, r1
	str r0, [sp]
	add r0, r4, r0
	str r0, [sp, #0x10]
_02224582:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02224598
	ldr r0, _022247C4 ; =0x000003CD
	ldrb r1, [r5, r0]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bgt _022245A4
_02224598:
	mov r0, #0xe7
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	ldrh r6, [r1, r0]
	cmp r6, #0
	bne _022245A6
_022245A4:
	b _0222487E
_022245A6:
	cmp r6, #0x17
	bne _022245C8
	ldr r1, _022247C8 ; =0x00002D90
	ldr r0, _022247CC ; =0x00002D8C
	ldr r1, [r7, r1]
	ldr r0, [r7, r0]
	lsr r1, r1, #2
	cmp r0, r1
	bhs _02224622
	cmp r0, #0
	beq _02224622
	ldr r0, _022247D0 ; =0x000003D1
	mov r1, #0
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_022245C8:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x26
	bl ov16_0225B0FC
	cmp r0, #0
	beq _0222460A
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x36
	bl ov16_0225B0FC
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	beq _02224622
	ldr r0, _022247CC ; =0x00002D8C
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02224622
	add r0, r0, #4
	ldr r3, [r7, r0]
	lsr r0, r3, #2
	cmp r1, r0
	blo _022245FE
	sub r0, r3, r1
	cmp r0, r2
	bls _02224622
_022245FE:
	ldr r0, _022247D0 ; =0x000003D1
	mov r1, #1
	strb r1, [r5, r0]
	add r0, r1, #0
	str r0, [sp, #0x1c]
	b _0222486A
_0222460A:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xf
	bl ov16_0225B0FC
	cmp r0, #0
	beq _02224640
	ldr r0, _022247D4 ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #7
	tst r0, r1
	bne _02224624
_02224622:
	b _0222486A
_02224624:
	mov r0, #5
	bl sub_020787CC
	ldr r1, _022247BC ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022247BC ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_02224640:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x10
	bl ov16_0225B0FC
	cmp r0, #0
	beq _0222467A
	ldr r0, _022247D4 ; =0x00002DAC
	mov r1, #8
	ldr r0, [r7, r0]
	tst r1, r0
	bne _0222465E
	mov r1, #0x80
	tst r0, r1
	beq _0222472E
_0222465E:
	mov r0, #4
	bl sub_020787CC
	ldr r1, _022247BC ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022247BC ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_0222467A:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x11
	bl ov16_0225B0FC
	cmp r0, #0
	beq _022246AE
	ldr r0, _022247D4 ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #0x10
	tst r0, r1
	beq _0222472E
	mov r0, #3
	bl sub_020787CC
	ldr r1, _022247BC ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022247BC ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_022246AE:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x12
	bl ov16_0225B0FC
	cmp r0, #0
	beq _022246E2
	ldr r0, _022247D4 ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #0x20
	tst r0, r1
	beq _0222472E
	mov r0, #2
	bl sub_020787CC
	ldr r1, _022247BC ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022247BC ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_022246E2:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x13
	bl ov16_0225B0FC
	cmp r0, #0
	beq _02224716
	ldr r0, _022247D4 ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0222472E
	mov r0, #1
	bl sub_020787CC
	ldr r1, _022247BC ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022247BC ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_02224716:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x14
	bl ov16_0225B0FC
	cmp r0, #0
	beq _0222474C
	ldr r0, _022247D8 ; =0x00002DB0
	ldr r1, [r7, r0]
	mov r0, #7
	tst r0, r1
	bne _02224730
_0222472E:
	b _0222486A
_02224730:
	mov r0, #0
	bl sub_020787CC
	ldr r1, _022247BC ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022247BC ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_0222474C:
	ldr r0, _022247DC ; =0x00002DD4
	ldr r1, [r7, r0]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	sub r0, r1, r0
	bpl _0222475C
	b _02224864
_0222475C:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1b
	bl ov16_0225B0FC
	cmp r0, #0
	beq _0222477C
	ldr r0, _022247BC ; =0x000003D3
	mov r1, #1
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_0222477C:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1c
	bl ov16_0225B0FC
	cmp r0, #0
	beq _0222479C
	ldr r0, _022247BC ; =0x000003D3
	mov r1, #2
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_0222479C:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1d
	bl ov16_0225B0FC
	cmp r0, #0
	beq _022247E0
	ldr r0, _022247BC ; =0x000003D3
	mov r1, #4
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
	; .align 2, 0
_022247BC: .word 0x000003D3
_022247C0: .word 0x000001EE
_022247C4: .word 0x000003CD
_022247C8: .word 0x00002D90
_022247CC: .word 0x00002D8C
_022247D0: .word 0x000003D1
_022247D4: .word 0x00002DAC
_022247D8: .word 0x00002DB0
_022247DC: .word 0x00002DD4
_022247E0:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1e
	bl ov16_0225B0FC
	cmp r0, #0
	beq _02224800
	ldr r0, _02224898 ; =0x000003D3
	mov r1, #5
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_02224800:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1f
	bl ov16_0225B0FC
	cmp r0, #0
	beq _0222481E
	ldr r0, _02224898 ; =0x000003D3
	mov r1, #3
	strb r1, [r5, r0]
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_0222481E:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x20
	bl ov16_0225B0FC
	cmp r0, #0
	beq _0222483E
	ldr r0, _02224898 ; =0x000003D3
	mov r1, #6
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_0222483E:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x16
	bl ov16_0225B0FC
	cmp r0, #0
	beq _0222486A
	mov r0, #7
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x40
	tst r0, r1
	bne _0222486A
	ldr r0, _0222489C ; =0x000003D1
	mov r1, #4
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222486A
_02224864:
	ldr r0, _0222489C ; =0x000003D1
	mov r1, #5
	strb r1, [r5, r0]
_0222486A:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _0222487E
	ldr r1, [sp, #0x10]
	ldr r0, _022248A0 ; =0x000003D6
	mov r2, #0
	strh r6, [r1, r0]
	ldr r1, [sp, #0x18]
	sub r0, #0x3a
	strh r2, [r1, r0]
_0222487E:
	ldr r0, [sp, #0x18]
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	bge _02224890
	b _02224582
_02224890:
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02224898: .word 0x000003D3
_0222489C: .word 0x000003D1
_022248A0: .word 0x000003D6
	thumb_func_end ov14_022244B0

	.rodata

	.global Unk_ov14_022248A4
Unk_ov14_022248A4: ; 0x022248A4
	.incbin "incbin/overlay14_rodata.bin", 0x0, 0xA5BC

	.global Unk_ov14_0222EE60
Unk_ov14_0222EE60: ; 0x0222EE60
	.incbin "incbin/overlay14_rodata.bin", 0xA5BC, 0x18 - 0x0

	.global Unk_ov14_0222EE78
Unk_ov14_0222EE78: ; 0x0222EE78
	.incbin "incbin/overlay14_rodata.bin", 0xA5BC + 0x18, 0x30 - 0x18

	.global Unk_ov14_0222EE90
Unk_ov14_0222EE90: ; 0x0222EE90
	.incbin "incbin/overlay14_rodata.bin", 0xA5BC + 0x30, 0x4C - 0x30

	.global Unk_ov14_0222EEAC
Unk_ov14_0222EEAC: ; 0x0222EEAC
	.incbin "incbin/overlay14_rodata.bin", 0xA5BC + 0x4C, 0x1B4

