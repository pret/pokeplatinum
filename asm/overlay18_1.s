	.include "macros/function.inc"
	.include "global.inc"

	.text

	arm_func_start ov18_0221F84C
ov18_0221F84C: ; 0x0221F84C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr r1, _0221F870 ; =0x02250D2C
	ldr r1, [r1, #0]
	add r1, r1, #0x1000
	str r4, [r1, #0x4e4]
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0221F870: .word 0x02250D2C
	arm_func_end ov18_0221F84C

	arm_func_start ov18_0221F874
ov18_0221F874: ; 0x0221F874
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _0221F8F4 ; =0x02250D2C
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _0221F8E4
	mov r0, r5
	bl ov18_02220BF4
	cmp r0, #0
	beq _0221F8E4
	ldr r0, _0221F8F4 ; =0x02250D2C
	sub r1, r5, #1
	ldr r3, [r0, #0]
	mov r2, #0x16
	add r0, r3, #0x1340
	mla r0, r1, r2, r0
	add r1, r3, #0x72
	add r1, r1, #0x1700
	bl sub_020C4DB0
	mov r0, r4
	bl sub_020C3DAC
	ldr r0, _0221F8F4 ; =0x02250D2C
	ldr r0, [r0, #0]
	add r0, r0, #0x72
	add r0, r0, #0x1700
	ldmia sp!, {r3, r4, r5, pc}
_0221F8E4:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0221F8F4: .word 0x02250D2C
	arm_func_end ov18_0221F874

	arm_func_start ov18_0221F8F8
ov18_0221F8F8: ; 0x0221F8F8
	stmfd sp!, {r4, lr}
	ldr r1, _0221F948 ; =0x02250D2C
	mov r4, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0221F940
	bl ov18_02220BF4
	cmp r0, #0
	beq _0221F940
	ldr r0, _0221F948 ; =0x02250D2C
	sub r1, r4, #1
	ldr r0, [r0, #0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #7
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_0221F940:
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0221F948: .word 0x02250D2C
	arm_func_end ov18_0221F8F8

	arm_func_start ov18_0221F94C
ov18_0221F94C: ; 0x0221F94C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl sub_020C3D98
	mov r6, r0
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _0221F9AC
_0221F96C: ; jump table
	b _0221F97C ; case 0
	b _0221F988 ; case 1
	b _0221F994 ; case 2
	b _0221F9A0 ; case 3
_0221F97C:
	mov r5, #0xa
	mov r4, #4
	b _0221F9BC
_0221F988:
	mov r5, #0xa
	mov r4, #3
	b _0221F9BC
_0221F994:
	mov r5, #0xe
	mov r4, #2
	b _0221F9BC
_0221F9A0:
	mov r5, #7
	mov r4, #5
	b _0221F9BC
_0221F9AC:
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0221F9BC:
	ldr r0, _0221FA28 ; =0x02250D2C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0221FA18
	mov r0, r7
	bl ov18_02220BF4
	cmp r0, #0
	beq _0221FA18
	ldr r0, _0221FA28 ; =0x02250D2C
	sub r2, r7, #1
	ldr r1, [r0, #0]
	add r0, r1, r2, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r5, r0
	bne _0221FA18
	add r0, r1, r2, lsl #1
	add r1, r0, #0x1700
	mov r0, r6
	strh r4, [r1, #0x54]
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0221FA18:
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0221FA28: .word 0x02250D2C
	arm_func_end ov18_0221F94C

	arm_func_start ov18_0221FA2C
ov18_0221FA2C: ; 0x0221FA2C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov18_02220BF4
	cmp r0, #0
	beq _0221FA60
	ldr r0, _0221FA74 ; =0x02250D2C
	sub r1, r6, #1
	ldr r0, [r0, #0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x1000
	str r5, [r0, #0x4e8]
_0221FA60:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_0221FA78
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0221FA74: .word 0x02250D2C
	arm_func_end ov18_0221FA2C

	arm_func_start ov18_0221FA78
ov18_0221FA78: ; 0x0221FA78
	stmfd sp!, {r3, lr}
	ldr r3, _0221FA9C ; =0x02250D2C
	ldr r3, [r3, #0]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x4e4]
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	blx r3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0221FA9C: .word 0x02250D2C
	arm_func_end ov18_0221FA78

	arm_func_start ov18_0221FAA0
ov18_0221FAA0: ; 0x0221FAA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r0
	mov r4, r1
	cmp r5, #0x19
	bgt _0221FAF8
	bge _0221FD3C
	cmp r5, #0x11
	bgt _0221FAEC
	bge _0221FEF0
	cmp r5, #3
	bgt _0221FEF0
	cmp r5, #0
	blt _0221FEF0
	beq _0221FB30
	cmp r5, #1
	beq _0221FB54
	cmp r5, #3
	beq _0221FD30
	b _0221FEF0
_0221FAEC:
	cmp r5, #0x15
	beq _0221FB1C
	b _0221FEF0
_0221FAF8:
	cmp r5, #0xff
	bgt _0221FB10
	bge _0221FDDC
	cmp r5, #0x1c
	beq _0221FD44
	b _0221FEF0
_0221FB10:
	cmp r5, #0x100
	beq _0221FE4C
	b _0221FEF0
_0221FB1C:
	mov r2, r4
	mov r0, #0
	mov r1, #1
	bl ov18_0221FA2C
	b _0221FEF0
_0221FB30:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0221FEF0
	cmp r0, #0x10
	bhs _0221FEF0
	mov r2, r4
	mov r1, #2
	bl ov18_0221FA2C
	b _0221FEF0
_0221FB54:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0221FEF0
	cmp r0, #0x10
	bhs _0221FEF0
	ldr r2, _0221FF38 ; =0x02250D2C
	sub r0, r0, #1
	ldr r3, [r2, #0]
	mov r1, #0
	add r0, r3, r0, lsl #1
	add r0, r0, #0x1400
	strh r1, [r0, #0x8a]
	ldr r0, [r2, #0]
	ldrh r2, [r4, #0x10]
	add r0, r0, #0xa8
	add r3, r0, #0x1400
	sub r0, r2, #1
	add r0, r3, r0, lsl #2
	mov r2, #4
	bl sub_020C4CF4
	ldr r0, _0221FF38 ; =0x02250D2C
	ldrh r1, [r4, #0x10]
	ldr r0, [r0, #0]
	mov r2, #0x16
	add r0, r0, #0x1340
	sub r1, r1, #1
	mla r0, r1, r2, r0
	mov r1, #0
	bl sub_020C4CF4
	ldrh r0, [r4, #0x10]
	bl ov18_02224400
	ldrh r1, [r4, #0x10]
	ldr r0, _0221FF38 ; =0x02250D2C
	mov r3, #0
	ldr r2, [r0, #0]
	sub r1, r1, #1
	add r1, r2, r1, lsl #1
	add r1, r1, #0x1700
	strh r3, [r1, #0x54]
	ldrh r7, [r4, #0x10]
	ldr r8, [r0]
	sub r2, r3, #1
	sub r6, r7, #1
	add r1, r8, r6
	add r1, r1, #0x1500
	ldrsb r3, [r1, #0x26]
	cmp r3, r2
	beq _0221FC80
	ldr r1, _0221FF3C ; =0x000005D4
	and r2, r3, #0xff
	mul r1, r2, r1
	add r2, r8, r1
	add r8, r2, #0x1d00
	mov r3, #1
	ldrh sb, [r8, #0x4e]
	mvn r2, r3, lsl r7
	and sb, sb, r2
	strh sb, [r8, #0x4e]
	ldr r8, [r0]
	sub sb, r3, #2
	add r8, r8, r1
	add r8, r8, #0x1d00
	ldrh ip, [r8, #0x50]
	orr r3, ip, r3, lsl r7
	strh r3, [r8, #0x50]
	ldr r3, [r0, #0]
	add r3, r3, r6
	add r3, r3, #0x1000
	strb sb, [r3, #0x526]
	ldr r0, [r0, #0]
	add r0, r0, r1
	add r0, r0, #0x1d00
	ldrh r1, [r0, #0x4c]
	and r1, r1, r2
	strh r1, [r0, #0x4c]
_0221FC80:
	ldr r1, _0221FF38 ; =0x02250D2C
	ldrh r2, [r4, #0x10]
	ldr r6, [r1, #0]
	mov r3, #1
	add r0, r6, #0x1500
	ldrh r0, [r0, #0x36]
	tst r0, r3, lsl r2
	beq _0221FCCC
	add r0, r6, #0x1000
	ldrb r2, [r0, #0x535]
	sub r2, r2, #1
	strb r2, [r0, #0x535]
	ldr r0, [r1, #0]
	ldrh r1, [r4, #0x10]
	add r0, r0, #0x1500
	ldrh r2, [r0, #0x36]
	mvn r1, r3, lsl r1
	and r1, r2, r1
	strh r1, [r0, #0x36]
_0221FCCC:
	ldrh r0, [r4, #0x10]
	ldr r1, _0221FF38 ; =0x02250D2C
	ldr r2, [r1, #0]
	sub r1, r0, #1
	add r1, r2, r1, lsl #2
	add r1, r1, #0x1000
	ldr r1, [r1, #0x4e8]
	cmp r1, #8
	bne _0221FCFC
	mov r1, #9
	mov r2, #0
	bl ov18_0221FA2C
_0221FCFC:
	ldrh r0, [r4, #0x10]
	mov r2, r4
	mov r1, #3
	bl ov18_0221FA2C
	ldrh r1, [r4, #0x10]
	ldr r0, _0221FF38 ; =0x02250D2C
	mov r3, #0
	ldr r2, [r0, #0]
	sub r0, r1, #1
	add r0, r2, r0, lsl #2
	add r0, r0, #0x1000
	str r3, [r0, #0x4e8]
	b _0221FEF0
_0221FD30:
	mov r0, r4
	bl ov18_02220424
	b _0221FEF0
_0221FD3C:
	bl ov18_022209E8
	b _0221FEF0
_0221FD44:
	mov r8, #0
	ldr r6, _0221FF38 ; =0x02250D2C
	ldr r4, _0221FF3C ; =0x000005D4
	mov r7, r8
_0221FD54:
	mul sb, r8, r4
	ldr r1, [r6, #0]
	add r2, r1, sb
	add r0, r2, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r2, r2, #0x1d00
	ldrneh r3, [r2, #0x50]
	cmpne r3, #0
	beq _0221FDA4
	add r0, r1, #0x6c
	add r0, r0, #0x1800
	ldrh r2, [r2, #0x4e]
	add r0, r0, sb
	add r1, r1, #0x1340
	bl ov18_02221B20
	ldr r0, [r6, #0]
	add r0, r0, sb
	add r0, r0, #0x1d00
	strh r7, [r0, #0x50]
_0221FDA4:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, #0x10
	blo _0221FD54
	bl ov18_02223E30
	mov r6, r0
	bl ov18_02223E44
	mov r4, r0
	bl ov18_02223E58
	mov r2, r0
	mov r0, r6
	mov r1, r4
	bl ov18_02221C4C
	b _0221FEF0
_0221FDDC:
	ldrh r0, [r4, #2]
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _0221FE3C
_0221FDEC: ; jump table
	b _0221FE3C ; case 0
	b _0221FE2C ; case 1
	b _0221FE3C ; case 2
	b _0221FE3C ; case 3
	b _0221FE2C ; case 4
	b _0221FE2C ; case 5
	b _0221FE2C ; case 6
	b _0221FE3C ; case 7
	b _0221FE2C ; case 8
	b _0221FE2C ; case 9
	b _0221FE3C ; case 10
	b _0221FE3C ; case 11
	b _0221FE3C ; case 12
	b _0221FE3C ; case 13
	b _0221FE3C ; case 14
	b _0221FE3C ; case 15
_0221FE2C:
	mov r0, #0
	mov r1, #9
	bl ov18_02220C10
	b _0221FEF0
_0221FE3C:
	mov r0, #0
	mov r1, #8
	bl ov18_02220C10
	b _0221FEF0
_0221FE4C:
	ldrh r0, [r4]
	cmp r0, #0x1d
	addls pc, pc, r0, lsl #2
	b _0221FEE4
_0221FE5C: ; jump table
	b _0221FED4 ; case 0
	b _0221FEE4 ; case 1
	b _0221FEE4 ; case 2
	b _0221FEE4 ; case 3
	b _0221FEE4 ; case 4
	b _0221FEE4 ; case 5
	b _0221FEE4 ; case 6
	b _0221FED4 ; case 7
	b _0221FED4 ; case 8
	b _0221FEE4 ; case 9
	b _0221FEE4 ; case 10
	b _0221FEE4 ; case 11
	b _0221FEE4 ; case 12
	b _0221FED4 ; case 13
	b _0221FED4 ; case 14
	b _0221FED4 ; case 15
	b _0221FEE4 ; case 16
	b _0221FED4 ; case 17
	b _0221FED4 ; case 18
	b _0221FEE4 ; case 19
	b _0221FEE4 ; case 20
	b _0221FED4 ; case 21
	b _0221FEE4 ; case 22
	b _0221FEE4 ; case 23
	b _0221FEE4 ; case 24
	b _0221FED4 ; case 25
	b _0221FEE4 ; case 26
	b _0221FEE4 ; case 27
	b _0221FEE4 ; case 28
	b _0221FED4 ; case 29
_0221FED4:
	mov r0, #0
	mov r1, #9
	bl ov18_02220C10
	b _0221FEF0
_0221FEE4:
	mov r0, #0
	mov r1, #8
	bl ov18_02220C10
_0221FEF0:
	cmp r5, #0x11
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _0221FF38 ; =0x02250D2C
	mov r0, #0
	ldr r1, [r1, #0]
	mov r2, #0x7d00
	add r3, r1, #0x1000
	ldr r4, [r3, #0x4e4]
	bl sub_020C4BB8
	ldr r1, _0221FF38 ; =0x02250D2C
	mov r0, #0
	str r0, [r1, #0]
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r2, r0
	mov r1, #0xc
	blx r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0221FF38: .word 0x02250D2C
_0221FF3C: .word 0x000005D4
	arm_func_end ov18_0221FAA0

	arm_func_start ov18_0221FF40
ov18_0221FF40: ; 0x0221FF40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x34
	movs r6, r1
	addeq sp, sp, #0x34
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r6, #0xf
	addhi sp, sp, #0x34
	ldmhiia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r1, sp, #0x20
	mov r2, r6
	add r0, r0, #0xa
	bl ov18_022244C8
	ldr r1, _02220418 ; =0x02250D2C
	ldrb r7, [sp, #0x20]
	ldr r2, [r1, #0]
	sub r3, r6, #1
	add r4, r2, r3, lsl #2
	add r4, r4, #0x1000
	ldr r4, [r4, #0x4e8]
	mov r5, r0
	cmp r7, #0xb
	addls pc, pc, r7, lsl #2
	b _02220410
_0221FF9C: ; jump table
	b _02220410 ; case 0
	b _02220410 ; case 1
	b _02220410 ; case 2
	b _02220410 ; case 3
	b _02220410 ; case 4
	b _02220410 ; case 5
	b _02220410 ; case 6
	b _0221FFCC ; case 7
	b _02220264 ; case 8
	b _0222030C ; case 9
	b _0222037C ; case 10
	b _02220410 ; case 11
_0221FFCC:
	cmp r4, #2
	bne _02220074
	cmp r5, #0
	addeq sp, sp, #0x34
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r2, #0x1d
	bl sub_020C4DB0
	ldr r2, _02220418 ; =0x02250D2C
	sub r0, r6, #1
	ldr r1, [r2, #0]
	ldr r3, [sp]
	add r1, r1, r0, lsl #2
	add r1, r1, #0x1000
	str r3, [r1, #0x4a8]
	ldr r1, [r2, #0]
	ldrh r3, [sp, #0x1a]
	add r1, r1, r0, lsl #1
	add r1, r1, #0x1400
	strh r3, [r1, #0x8a]
	ldr r1, [r2, #0]
	mov r2, #0x16
	add r1, r1, #0x1340
	mla r1, r0, r2, r1
	add r0, sp, #4
	bl sub_020C4DB0
	ldr r0, _02220418 ; =0x02250D2C
	sub r2, r6, #1
	ldr r3, [r0, #0]
	mov r0, #0x16
	mul r7, r2, r0
	add r8, r3, #0x1340
	and r1, r6, #0xff
	ldrb r3, [r8, r7]
	mov r0, r1, lsl #0x1c
	add r2, sp, #4
	bic r1, r3, #0xf0
	orr r1, r1, r0, lsr #24
	strb r1, [r8, r7]
	mov r0, r6
	mov r1, #0xa
	bl ov18_0221FA2C
_02220074:
	cmp r4, #0xa
	addne sp, sp, #0x34
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb lr, [r5, #0x1c]
	mov r0, #0
	cmp lr, #0x10
	bhs _022200D0
	ldr r2, _02220418 ; =0x02250D2C
	ldr r1, _0222041C ; =0x000005D4
	ldr r3, [r2, #0]
	mla r4, lr, r1, r3
	add r1, r4, #0x1000
	ldrb r2, [r1, #0xd52]
	cmp r2, #0
	beq _022200D0
	sub r2, r6, #1
	add r3, r3, r2, lsl #2
	ldr r2, [r1, #0xd40]
	add r1, r3, #0x1000
	ldr r3, [r1, #0x4a8]
	ldr r1, [r2, #0x14]
	cmp r3, r1
	beq _022200F0
_022200D0:
	ldr r0, _02220418 ; =0x02250D2C
	sub r1, r6, #1
	ldr r0, [r0, #0]
	mov r2, #4
	add r0, r0, r1, lsl #1
	add r0, r0, #0x1700
	strh r2, [r0, #0x54]
	b _0222016C
_022200F0:
	mov r5, r0
	add r1, r4, #0x1d00
	mov r3, #1
	b _02220118
_02220100:
	ldrh r2, [r1, #0x4e]
	tst r2, r3, lsl r5
	addne r0, r0, #1
	add r2, r5, #1
	andne r0, r0, #0xff
	and r5, r2, #0xff
_02220118:
	cmp r5, #0x10
	blo _02220100
	ldr r2, _02220418 ; =0x02250D2C
	ldr r1, _0222041C ; =0x000005D4
	ldr r2, [r2, #0]
	mla r1, lr, r1, r2
	add r1, r1, #0x1000
	ldr r1, [r1, #0xd40]
	ldrb r1, [r1, #0x18]
	cmp r0, r1
	blo _0222016C
	sub r0, r6, #1
	add r1, r2, r0, lsl #1
	add r3, r1, #0x1700
	mov r2, #0
	mov r0, r6
	mov r1, #0xb
	strh r2, [r3, #0x54]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0222016C:
	ldr r3, _02220418 ; =0x02250D2C
	sub ip, r6, #1
	ldr r1, [r3, #0]
	add r0, r1, ip, lsl #1
	add r4, r0, #0x1700
	ldrh r0, [r4, #0x54]
	cmp r0, #3
	beq _0222019C
	cmp r0, #4
	beq _02220248
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0222019C:
	add r0, r1, #0x1500
	ldrh r0, [r0, #0x36]
	mov r5, #1
	tst r0, r5, lsl r6
	addne sp, sp, #0x34
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r1, r1, #0x1000
	ldrb r4, [r1, #0x535]
	ldr r2, _0222041C ; =0x000005D4
	mov r0, r6
	add r4, r4, #1
	strb r4, [r1, #0x535]
	ldr r1, [r3, #0]
	mul r4, lr, r2
	add r7, r1, #0x1500
	ldrh r8, [r7, #0x36]
	mov r2, #0
	mov r1, #5
	orr r8, r8, r5, lsl r6
	strh r8, [r7, #0x36]
	ldr r7, [r3, #0]
	add r7, r7, ip
	add r7, r7, #0x1000
	strb lr, [r7, #0x526]
	ldr r7, [r3, #0]
	add r7, r7, #0x4e
	add lr, r7, #0x1d00
	ldrh r7, [lr, r4]
	orr r7, r7, r5, lsl r6
	strh r7, [lr, r4]
	ldr r7, [r3, #0]
	add r7, r7, #0xd50
	add lr, r7, #0x1000
	ldrh r7, [lr, r4]
	orr r5, r7, r5, lsl r6
	strh r5, [lr, r4]
	ldr r3, [r3, #0]
	add r3, r3, ip, lsl #1
	add r3, r3, #0x1700
	strh r2, [r3, #0x54]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02220248:
	mov r2, #0
	mov r0, r6
	mov r1, #4
	strh r2, [r4, #0x54]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02220264:
	cmp r4, #5
	bne _02220284
	mov r0, r6
	mov r1, #0xe
	mov r2, #0
	bl ov18_0221FA2C
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02220284:
	cmp r4, #0xe
	addne sp, sp, #0x34
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3, lsl #1
	add r0, r0, #0x1700
	ldrh r0, [r0, #0x54]
	cmp r0, #2
	addne sp, sp, #0x34
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3
	add r0, r0, #0x1000
	ldrb r7, [r0, #0x526]
	ldr r4, _0222041C ; =0x000005D4
	add r0, r2, #0x14c
	mul r5, r7, r4
	add r7, r0, #0x1c00
	ldrh r4, [r7, r5]
	mov r0, #1
	mov r2, #0
	orr r0, r4, r0, lsl r6
	strh r0, [r7, r5]
	ldr r4, [r1, #0]
	mov r0, r6
	add r4, r4, r5
	add r4, r4, #0x1d00
	strh r2, [r4, #0x48]
	ldr r4, [r1, #0]
	mov r1, #6
	add r3, r4, r3, lsl #1
	add r3, r3, #0x1700
	strh r2, [r3, #0x54]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0222030C:
	cmp r4, #6
	addne sp, sp, #0x34
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3
	add r0, r0, #0x1000
	ldrb r4, [r0, #0x526]
	cmp r4, #0xff
	addeq sp, sp, #0x34
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0222041C ; =0x000005D4
	ldrh r1, [sp, #0x22]
	mla r0, r4, r0, r2
	add r0, r0, #0x1d00
	ldrh r0, [r0, #0x4a]
	bl ov18_02220BE4
	ldr r2, _02220418 ; =0x02250D2C
	ldr r1, _0222041C ; =0x000005D4
	ldr r3, [r2, #0]
	ldr r2, _02220420 ; =0x0224B260
	mla r1, r4, r1, r3
	add r1, r1, #0x1d00
	strh r0, [r1, #0x4a]
	ldr r1, [r2, #0]
	mov r0, #1
	orr r0, r1, r0, lsl r4
	str r0, [r2, #0]
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0222037C:
	cmp r4, #6
	bne _022203D8
	add r0, r2, r3
	add r0, r0, #0x1000
	ldrb r3, [r0, #0x526]
	cmp r3, #0xff
	addeq sp, sp, #0x34
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, _0222041C ; =0x000005D4
	add r0, r2, #0x14c
	mul r4, r3, r1
	add r5, r0, #0x1c00
	mov r0, #1
	ldrh r1, [r5, r4]
	mvn r0, r0, lsl r6
	and r3, r1, r0
	mov r0, r6
	mov r1, #7
	mov r2, #0
	strh r3, [r5, r4]
	bl ov18_0221FA2C
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022203D8:
	cmp r4, #7
	addne sp, sp, #0x34
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r2, r3, lsl #1
	add r3, r0, #0x1700
	ldrh r0, [r3, #0x54]
	cmp r0, #5
	addne sp, sp, #0x34
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r2, #0
	mov r0, r6
	mov r1, #8
	strh r2, [r3, #0x54]
	bl ov18_0221FA2C
_02220410:
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02220418: .word 0x02250D2C
_0222041C: .word 0x000005D4
_02220420: .word 0x0224B260
	arm_func_end ov18_0221FF40

	arm_func_start ov18_02220424
ov18_02220424: ; 0x02220424
	stmfd sp!, {r4, r5, r6, lr}
	mov ip, #0
	ldr r2, _022204C0 ; =0x02250D2C
	ldr r1, _022204C4 ; =0x000005D4
	mov r4, r0
	mov r3, ip
_0222043C:
	ldr r0, [r2, #0]
	mla r5, ip, r1, r0
	add r0, r5, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r0, r5, #0x1d00
	strneh r3, [r0, #0x4a]
	add r0, ip, #1
	mov r0, r0, lsl #0x10
	mov ip, r0, lsr #0x10
	cmp ip, #0x10
	blo _0222043C
	ldr r0, _022204C8 ; =0x0224B260
	mov r1, #0
	ldr r5, _022204CC ; =0x0000FFFF
	str r1, [r0, #0]
	mov r6, #1
_02220480:
	mov r0, r4
	mov r1, r6
	bl sub_020CE710
	cmp r0, #0
	ldrneh r1, [r0]
	cmpne r1, r5
	cmpne r1, #0
	beq _022204A8
	mov r1, r6
	bl ov18_0221FF40
_022204A8:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, #0xf
	bls _02220480
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022204C0: .word 0x02250D2C
_022204C4: .word 0x000005D4
_022204C8: .word 0x0224B260
_022204CC: .word 0x0000FFFF
	arm_func_end ov18_02220424

	arm_func_start ov18_022204D0
ov18_022204D0: ; 0x022204D0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _0222050C ; =0x02250D2C
	mov r4, r1
	ldr r1, [r2, #0]
	strb r0, [sp]
	add r0, sp, #0
	bl ov18_02224444
	ldr r0, _0222050C ; =0x02250D2C
	mov r1, r4
	ldr r2, [r0, #0]
	mov r0, #6
	bl ov18_0222190C
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222050C: .word 0x02250D2C
	arm_func_end ov18_022204D0

	arm_func_start ov18_02220510
ov18_02220510: ; 0x02220510
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, #0
	add r0, sp, #6
	mov r1, r5
	mov r2, #0x10
	mvn r4, #0
	bl sub_020C4CF4
	ldr r1, _0222069C ; =0x02250D2C
	mov r0, #1
	ldr r1, [r1, #0]
	add ip, sp, #6
_02220540:
	add r2, r1, r0, lsl #2
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #5
	bne _0222056C
	add r2, r1, r0
	add r2, r2, #0x1500
	ldrsb r3, [r2, #0x25]
	ldrb r2, [ip, r3]
	add r2, r2, #1
	strb r2, [ip, r3]
_0222056C:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #0xf
	bls _02220540
	ldr r2, _022206A0 ; =0x02249760
	ldr ip, _022206A4 ; =0x000005D4
	ldrb r3, [r2]
	mov r0, #0
	add lr, sp, #6
_02220594:
	add r2, r3, #1
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #28
	add r2, r3, r2, ror #28
	and r3, r2, #0xff
	mla r2, r3, ip, r1
	add r2, r2, #0x1000
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	ldrneb r2, [lr, r3]
	cmpne r2, #0
	movne r0, r3, lsl #0x18
	movne r4, r0, asr #0x18
	bne _022205DC
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x10
	blo _02220594
_022205DC:
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _022206A0 ; =0x02249760
	mov r0, #1
	strb r4, [r2]
	mov r3, r0
_02220600:
	add r2, r1, r0, lsl #2
	add r2, r2, #0x1000
	ldr r2, [r2, #0x4e4]
	cmp r2, #5
	bne _02220630
	add r2, r1, r0
	add r2, r2, #0x1500
	ldrsb r2, [r2, #0x25]
	cmp r4, r2
	orreq r2, r5, r3, lsl r0
	moveq r2, r2, lsl #0x10
	moveq r5, r2, lsr #0x10
_02220630:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #0xf
	bls _02220600
	mov r2, #3
	add r0, sp, #0
	strb r2, [sp]
	strh r4, [sp, #2]
	bl ov18_02224444
	movs r1, r0
	beq _02220680
	ldr r0, _0222069C ; =0x02250D2C
	ldr r3, _022206A4 ; =0x000005D4
	ldr r0, [r0, #0]
	mov r2, #0xe4
	add r0, r0, #0x388
	add r0, r0, #0x1400
	mla r0, r4, r3, r0
	bl sub_020C4DB0
_02220680:
	ldr r0, _0222069C ; =0x02250D2C
	mov r1, r5
	ldr r2, [r0, #0]
	mov r0, #0xea
	bl ov18_0222190C
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222069C: .word 0x02250D2C
_022206A0: .word 0x02249760
_022206A4: .word 0x000005D4
	arm_func_end ov18_02220510

	arm_func_start ov18_022206A8
ov18_022206A8: ; 0x022206A8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x4c
	ldr r5, [r0, #0x14]
	ldr r4, [r0, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r5, #0x10
	bl sub_020C7760
	movs r6, r0
	add r0, sp, #4
	ldreq r6, [r5, #0x18]
	bl sub_020C7DA0
	ldr r2, [r4, #0]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r4, #4]
	add r0, sp, #4
	mov r1, r6
	add r3, r2, r3
	bl sub_020C7FC8
	cmp r0, #0
	beq _02220724
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl sub_020C81D4
	ldr r1, [r4, #4]
	cmp r1, r0
	moveq r0, #2
	streq r0, [r4, #0xc]
	add r0, sp, #4
	bl sub_020C80C8
_02220724:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	addeq sp, sp, #0x4c
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #2
	str r0, [r4, #0xc]
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov18_022206A8

	arm_func_start ov18_0222074C
ov18_0222074C: ; 0x0222074C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r5, _022209DC ; =0x02250D2C
	ldr r0, [r5, #0]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x524]
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _022209E0 ; =0x000005D4
	mov r1, #0
_0222077C:
	ldr r0, [r5, #0]
	add r3, r0, #0x1000
	ldrb r0, [r3, #0x525]
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r0, r2, r0, lsl #28
	add r0, r2, r0, ror #28
	strb r0, [r3, #0x525]
	ldr r2, [r5, #0]
	add r0, r2, #0x1000
	ldrb r0, [r0, #0x525]
	mla r3, r0, r4, r2
	add r2, r3, #0x1000
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	addne r2, r3, #0x1d00
	ldrneh r2, [r2, #0x4c]
	cmpne r2, #0
	bne _022207D8
	add r1, r1, #1
	and r1, r1, #0xff
	cmp r1, #0x10
	blo _0222077C
_022207D8:
	cmp r1, #0x10
	addeq sp, sp, #0x18
	moveq r0, #0x15
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov18_02220B68
	ldr r0, _022209DC ; =0x02250D2C
	ldr r2, _022209E0 ; =0x000005D4
	ldr r6, [r0, #0]
	add r0, sp, #8
	add r1, r6, #0x1000
	ldrb r4, [r1, #0x525]
	add r1, r6, #0x12c
	add r3, r6, #0x388
	mul r5, r4, r2
	add r2, r6, r5
	add r2, r2, #0x1d00
	add r1, r1, #0x1c00
	add r3, r3, #0x1400
	ldrh r2, [r2, #0x48]
	add r1, r1, r5
	add r3, r3, r5
	bl ov18_022216E0
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0x15
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _022209DC ; =0x02250D2C
	mov r3, #4
	ldr r1, [r0, #0]
	strb r3, [sp]
	add r2, r1, #0x1000
	ldrb r4, [r2, #0x525]
	add r3, r3, #0x5d0
	add r0, sp, #0
	strh r4, [sp, #2]
	ldrb r4, [r2, #0x525]
	mla r2, r4, r3, r1
	add r2, r2, #0x1d00
	ldrh r2, [r2, #0x48]
	strh r2, [sp, #4]
	bl ov18_02224444
	ldr r1, _022209DC ; =0x02250D2C
	ldr r4, _022209E0 ; =0x000005D4
	ldr r5, [r1, #0]
	ldrb r1, [sp, #0x14]
	add r2, r5, #0x1000
	ldrb r2, [r2, #0x525]
	ldr r6, [sp, #0x10]
	ldr r3, [sp, #0xc]
	mla r4, r2, r4, r5
	add r2, r4, r1, lsl #2
	add r5, r4, #0x1000
	ldr r4, [r5, #0xd58]
	add r2, r2, #0x1000
	ldr r2, [r2, #0xd2c]
	ldr r1, [r4, r1, lsl #2]
	sub r2, r6, r2
	add r4, r2, r1
	ldr r5, [r5, #0xd54]
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl ov18_02223F8C
	cmp r0, #0
	bne _022209A8
	ldr r0, _022209DC ; =0x02250D2C
	ldr r0, [r0, #0]
	add r0, r0, #0xce0
	add r6, r0, #0x7000
	mov r0, r6
	bl ov18_022241EC
	cmp r0, #0
	bne _0222099C
	ldr r0, [r5, #0]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r5]
	bne _0222099C
	add r2, r5, #0x30
	mov r7, #0
	mov r3, r7
	mov ip, r2
_02220920:
	add r0, r2, r3, lsl #4
	ldr r0, [r0, #0xc]
	cmp r0, #2
	bne _0222094C
	cmp r7, #0
	beq _02220948
	ldr r1, [r7, #0]
	ldr r0, [r2, r3, lsl #4]
	cmp r1, r0
	bls _0222094C
_02220948:
	mov r7, ip
_0222094C:
	add r3, r3, #1
	cmp r3, #4
	add ip, ip, #0x10
	blt _02220920
	cmp r7, #0
	bne _02220968
	bl sub_020C42A8
_02220968:
	mov r0, #2
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r7, #0xc]
	bic r0, r4, #0x1f
	str r0, [r7, #0]
	str r7, [r6, #0x10]
	ldr r1, _022209E4 ; =ov18_022206A8
	mov r0, r6
	mov r2, #0
	mov r3, #4
	str r5, [r6, #0x14]
	bl ov18_02224204
_0222099C:
	add sp, sp, #0x18
	mov r0, #0x15
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022209A8:
	ldr r0, _022209DC ; =0x02250D2C
	ldr r4, [sp, #0xc]
	ldr r2, [r0, #0]
	ldr r1, _022209E0 ; =0x000005D4
	add r0, r2, #0x1000
	ldrb r3, [r0, #0x525]
	add r0, r4, #6
	mla r1, r3, r1, r2
	add r1, r1, #0x1d00
	ldrh r1, [r1, #0x4c]
	bl ov18_0222190C
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022209DC: .word 0x02250D2C
_022209E0: .word 0x000005D4
_022209E4: .word ov18_022206A8
	arm_func_end ov18_0222074C

	arm_func_start ov18_022209E8
ov18_022209E8: ; 0x022209E8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	add r1, sp, #0
	mov r0, #0
	mov r2, #0xa
	bl sub_020C4AF0
	mov r3, #1
	ldr r0, _02220B60 ; =0x02250D2C
	mov r4, r3
	ldr ip, [r0]
	mov r5, r3
	mov r0, r3
	mov r1, r3
	mov r2, r3
_02220A20:
	add lr, ip, r3, lsl #2
	add lr, lr, #0x1000
	ldr lr, [lr, #0x4e4]
	cmp lr, #0xb
	addls pc, pc, lr, lsl #2
	b _02220AB4
_02220A38: ; jump table
	b _02220AB4 ; case 0
	b _02220AB4 ; case 1
	b _02220A68 ; case 2
	b _02220AB4 ; case 3
	b _02220A88 ; case 4
	b _02220A78 ; case 5
	b _02220AB4 ; case 6
	b _02220AB4 ; case 7
	b _02220A98 ; case 8
	b _02220AB4 ; case 9
	b _02220AB4 ; case 10
	b _02220AA8 ; case 11
_02220A68:
	ldrh lr, [sp]
	orr lr, lr, r2, lsl r3
	strh lr, [sp]
	b _02220AB4
_02220A78:
	ldrh lr, [sp, #2]
	orr lr, lr, r1, lsl r3
	strh lr, [sp, #2]
	b _02220AB4
_02220A88:
	ldrh lr, [sp, #4]
	orr lr, lr, r0, lsl r3
	strh lr, [sp, #4]
	b _02220AB4
_02220A98:
	ldrh lr, [sp, #6]
	orr lr, lr, r5, lsl r3
	strh lr, [sp, #6]
	b _02220AB4
_02220AA8:
	ldrh lr, [sp, #8]
	orr lr, lr, r4, lsl r3
	strh lr, [sp, #8]
_02220AB4:
	add r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	cmp r3, #0xf
	bls _02220A20
	ldrh r1, [sp, #6]
	cmp r1, #0
	beq _02220AE0
	mov r0, #5
	bl ov18_022204D0
	b _02220B40
_02220AE0:
	ldrh r1, [sp]
	cmp r1, #0
	beq _02220AF8
	mov r0, #1
	bl ov18_022204D0
	b _02220B40
_02220AF8:
	ldrh r1, [sp, #8]
	cmp r1, #0
	beq _02220B10
	mov r0, #6
	bl ov18_022204D0
	b _02220B40
_02220B10:
	ldrh r1, [sp, #4]
	cmp r1, #0
	beq _02220B28
	mov r0, #2
	bl ov18_022204D0
	b _02220B40
_02220B28:
	ldrh r0, [sp, #2]
	cmp r0, #0
	beq _02220B3C
	bl ov18_02220510
	b _02220B40
_02220B3C:
	bl ov18_0222074C
_02220B40:
	cmp r0, #0x15
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	ldr r1, _02220B64 ; =0x0000FFFF
	mov r0, #0
	bl ov18_022204D0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02220B60: .word 0x02250D2C
_02220B64: .word 0x0000FFFF
	arm_func_end ov18_022209E8

	arm_func_start ov18_02220B68
ov18_02220B68: ; 0x02220B68
	ldr r1, _02220BD8 ; =0x0224B260
	mov r2, #1
	ldr r1, [r1, #0]
	tst r1, r2, lsl r0
	bxeq lr
	ldr r2, _02220BDC ; =0x02250D2C
	ldr r1, _02220BE0 ; =0x000005D4
	ldr r2, [r2, #0]
	mla ip, r0, r1, r2
	add r0, ip, #0x1000
	ldrb r0, [r0, #0xd52]
	cmp r0, #0
	addne r0, ip, #0x1d00
	ldrneh r1, [r0, #0x4c]
	cmpne r1, #0
	bxeq lr
	ldrh r2, [r0, #0x48]
	ldrh r3, [r0, #0x4a]
	cmp r3, r2
	bhi _02220BCC
	add r1, r3, #2
	cmp r2, r1
	addle r1, r2, #1
	strleh r1, [r0, #0x48]
	bxle lr
_02220BCC:
	add r0, ip, #0x1d00
	strh r3, [r0, #0x48]
	bx lr
	; .align 2, 0
_02220BD8: .word 0x0224B260
_02220BDC: .word 0x02250D2C
_02220BE0: .word 0x000005D4
	arm_func_end ov18_02220B68

	arm_func_start ov18_02220BE4
ov18_02220BE4: ; 0x02220BE4
	cmp r1, r0
	movls r1, r0
	mov r0, r1
	bx lr
	arm_func_end ov18_02220BE4

	arm_func_start ov18_02220BF4
ov18_02220BF4: ; 0x02220BF4
	cmp r0, #1
	blo _02220C08
	cmp r0, #0xf
	movls r0, #1
	bxls lr
_02220C08:
	mov r0, #0
	bx lr
	arm_func_end ov18_02220BF4

	arm_func_start ov18_02220C10
ov18_02220C10: ; 0x02220C10
	stmfd sp!, {r3, lr}
	strh r1, [sp]
	add r2, sp, #0
	mov r1, #0xd
	bl ov18_0221FA78
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02220C10

	arm_func_start ov18_02220C28
ov18_02220C28: ; 0x02220C28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x60
	mov r4, #0
	movs r7, r0
	mov r5, r4
	beq _02220C74
	ldr ip, [r7, #0x2c]
	ldr r3, [r7, #0x24]
	add r1, sp, #0
	mov r2, #0x60
	sub r6, ip, r3
	bl sub_020C81D4
	cmp r0, #0x60
	mov r0, r7
	mov r1, r6
	mov r2, #0
	addhs r4, sp, #0
	bl sub_020C81E4
	b _02220C78
_02220C74:
	ldr r4, _02220CA4 ; =0x027FFE00
_02220C78:
	cmp r4, #0
	beq _02220C98
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x3c]
	add r1, r1, #0x268
	add r5, r1, r0
	cmp r5, #0x10000
	movlo r5, #0x10000
_02220C98:
	mov r0, r5
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220CA4: .word 0x027FFE00
	arm_func_end ov18_02220C28

	arm_func_start ov18_02220CA8
ov18_02220CA8: ; 0x02220CA8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x6c
	str r2, [sp, #4]
	cmp r2, #0x164
	mov r2, #0
	mov sl, r0
	mov sb, r1
	str r2, [sp, #0x10]
	blo _02221100
	ldr r4, [sp, #4]
	mov r5, sb
	str r2, [sp, #0xc]
	mov r6, r2
	mov fp, r2
	cmp sl, #0
	add r5, r5, #0x160
	sub r4, r4, #0x160
	beq _02220D20
	ldr r7, [sl, #0x2c]
	ldr r3, [sl, #0x24]
	mov r2, #0x160
	sub r3, r7, r3
	str r3, [sp, #8]
	bl sub_020C81D4
	cmp r0, #0x160
	ldr r7, [sb, #0x80]
	movlt r4, fp
	cmp r7, #0
	moveq r7, #0x1000000
	b _02220D9C
_02220D20:
	ldr r0, _0222110C ; =0x027FFE00
	mov r1, #1
	ldr r7, [r0, #0x80]
	add r0, sp, #0x24
	cmp r7, #0
	moveq r7, #0x1000000
	str r1, [sp, #0xc]
	bl sub_020C7DA0
	ldr r0, _02221110 ; =0x02249768
	mov r1, #3
	bl sub_020C7760
	mov r1, r0
	mvn r0, #0
	str r0, [sp]
	add r0, sp, #0x24
	mov r2, #0
	add r3, r7, #0x88
	bl sub_020C7FC8
	ldr r2, [sp, #0x50]
	ldr r1, [sp, #0x48]
	ldr r0, _0222110C ; =0x027FFE00
	sub r1, r2, r1
	str r1, [sp, #8]
	mov r1, sb
	mov r2, #0x160
	add sl, sp, #0x24
	bl sub_020C4DB0
	ldr r0, [sb, #0x60]
	orr r0, r0, #0x6000
	orr r0, r0, #0x400000
	str r0, [sb, #0x60]
_02220D9C:
	cmp r4, #0x88
	movlo r4, #0
	blo _02220DD4
	ldr r1, [sp, #8]
	mov r0, sl
	add r1, r1, r7
	mov r2, #0
	bl sub_020C81E4
	mov r0, sl
	mov r1, r5
	mov r2, #0x88
	bl sub_020C81D4
	add r5, r5, #0x88
	sub r4, r4, #0x88
_02220DD4:
	cmp r4, #0x70
	blo _02220E4C
	mov r0, r5
	mov r6, r5
	bl ov18_02223F10
	mov r0, #3
	str r0, [sp]
	mov r0, r6
	mov r1, #0
	mov r2, #0x160
	mov r3, sb
	add r5, r5, #0x70
	sub r4, r4, #0x70
	bl ov18_02223F24
	ldr r8, [sl, #8]
	mov r7, #0
	b _02220E1C
_02220E18:
	add r7, r7, #1
_02220E1C:
	cmp r7, #3
	bge _02220E30
	ldrsb r0, [r8, r7]
	cmp r0, #0
	bne _02220E18
_02220E30:
	mov r0, r8
	mov r2, r7
	add r1, r6, #0x10
	bl sub_020C4DB0
	str r7, [r6, #0x14]
	str r8, [r6, #0x18]
	b _02220E50
_02220E4C:
	mov r4, #0
_02220E50:
	cmp r4, #0x10
	movlo r4, #0
	blo _02220EA0
	mov r0, #0
	str r0, [r5, #0]
	ldr r1, [sl, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [sb, #0x20]
	add r0, r0, r1
	add r0, r2, r0
	str r0, [r5, #4]
	ldr r1, [sl, #0x24]
	ldr r0, [sp, #8]
	ldr r2, [sb, #0x30]
	add r0, r0, r1
	add r0, r2, r0
	mov fp, r5
	str r0, [r5, #8]
	add r5, r5, #0x10
	sub r4, r4, #0x10
_02220EA0:
	ldr r1, [sb, #0x2c]
	ldr r0, [sb, #0x3c]
	add r0, r1, r0
	cmp r4, r0
	blo _02220F48
	ldr r7, [sl, #0x24]
	ldr r1, [fp, #4]
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl sub_020C81E4
	ldr r2, [sb, #0x2c]
	mov r0, sl
	mov r1, r5
	bl sub_020C81D4
	mov r0, #3
	str r0, [sp]
	ldr r1, [fp, #4]
	ldr r2, [sb, #0x2c]
	mov r0, r6
	mov r3, r5
	bl ov18_02223F24
	ldr r1, [fp, #8]
	ldr r4, [sb, #0x2c]
	mov r0, sl
	mov r2, #0
	sub r1, r1, r7
	bl sub_020C81E4
	ldr r2, [sb, #0x3c]
	mov r0, sl
	add r1, r5, r4
	bl sub_020C81D4
	mov r0, #3
	str r0, [sp]
	ldr r1, [fp, #8]
	ldr r2, [sb, #0x3c]
	add r3, r5, r4
	mov r0, r6
	bl ov18_02223F24
	mov r0, #1
	str r0, [sp, #0x10]
	b _0222101C
_02220F48:
	cmp r4, #0xcc00
	blo _0222101C
	ldr r7, [sl, #0x24]
	ldr r4, [fp, #4]
	mov r0, sl
	sub r1, r4, r7
	mov r2, #0
	bl sub_020C81E4
	mov r0, sl
	mov r1, r5
	mov r2, #0x4400
	bl sub_020C81D4
	mov r0, #3
	str r0, [sp]
	mov r0, r6
	mov r1, r4
	mov r2, #0x4400
	mov r3, r5
	bl ov18_02223F24
	add r1, r4, #0x4400
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl sub_020C81E4
	mov r0, sl
	add r1, r5, #0x4400
	mov r2, #0x4400
	bl sub_020C81D4
	mov r0, #2
	str r0, [sp]
	mov r0, r6
	add r1, r4, #0x4400
	mov r2, #0x4400
	add r3, r5, #0x4400
	bl ov18_02223F24
	add r1, r4, #0x8800
	mov r0, sl
	sub r1, r1, r7
	mov r2, #0
	bl sub_020C81E4
	mov r0, sl
	add r1, r5, #0x8800
	mov r2, #0x4400
	bl sub_020C81D4
	mov r0, #2
	str r0, [sp]
	add r1, r4, #0x8800
	add r3, r5, #0x8800
	mov r0, r6
	mov r2, #0x4400
	bl ov18_02223F24
	mov r0, #1
	str r0, [sp, #0x10]
_0222101C:
	ldr r1, [sp, #8]
	mov r0, sl
	mov r2, #0
	bl sub_020C81E4
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022210E8
	add r0, sp, #0x24
	bl sub_020C80C8
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _022210E8
	ldr r1, [sb, #0x20]
	ldr r0, _02221114 ; =0x02249764
	str r1, [sp, #0x14]
	ldr r2, [sb, #0x28]
	ldr r1, [sb, #0x20]
	ldr r4, [r0, #0]
	sub r0, r2, r1
	str r0, [sp, #0x18]
	ldr r2, [r6, #0x48]
	ldr r1, [sb, #0x20]
	add r0, sp, #0x14
	sub r1, r2, r1
	str r1, [sp, #0x1c]
	ldr r1, [sp, #4]
	mov r2, #0x8000
	str r1, [sp, #0x20]
	mov r1, #0x4000
	mov r3, #1
	bl ov18_02221120
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022210D0
	add r7, sp, #0x14
	mov r5, #0
_022210AC:
	ldmia r4, {r1, r2}
	mov r0, r7
	mov r3, r5
	add r2, r1, r2
	bl ov18_02221120
	add r4, r4, #8
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022210AC
_022210D0:
	ldr r1, [sb, #0x28]
	ldr r2, _02221118 ; =0x02000AAC
	ldr r3, [r6, #0x48]
	ldr r0, _0222111C ; =0xE12FFF1E
	sub r1, r2, r1
	str r0, [r3, r1]
_022210E8:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02221100
	ldr r1, [sp, #4]
	mov r0, sb
	bl sub_020C2C54
_02221100:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222110C: .word 0x027FFE00
_02221110: .word 0x02249768
_02221114: .word 0x02249764
_02221118: .word 0x02000AAC
_0222111C: .word 0xE12FFF1E
	arm_func_end ov18_02220CA8

	arm_func_start ov18_02221120
ov18_02221120: ; 0x02221120
	stmfd sp!, {r3, lr}
	mov lr, r1
	ldr ip, [r0]
	ldr r1, [r0, #0xc]
	cmp lr, #0x4000
	movlo lr, #0x4000
	cmp r2, #0x8000
	movhi r2, #0x8000
	cmp lr, ip
	add r1, ip, r1
	movlo lr, ip
	cmp r2, r1
	movhi r2, r1
	cmp lr, r2
	ldmhsia sp!, {r3, pc}
	cmp r3, #0
	beq _0222117C
	ldr r0, [r0, #8]
	sub r2, r2, lr
	add r0, r0, lr
	mov r1, #0
	bl sub_020C4CF4
	ldmia sp!, {r3, pc}
_0222117C:
	ldr r3, [r0, #4]
	ldr r1, [r0, #8]
	add r0, r3, lr
	add r1, r1, lr
	sub r2, r2, lr
	bl sub_020C4DB0
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02221120

	arm_func_start ov18_02221198
ov18_02221198: ; 0x02221198
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r4, #0xff
	bl sub_020C3D98
	mov r5, r0
	bl ov18_02223EB8
	cmp r0, #0
	bne _022211CC
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022211CC:
	ldr r0, _0222141C ; =0x02250D2C
	ldr r0, [r0, #0]
	add r1, r0, #0x1000
	ldrb r1, [r1, #0x524]
	add r1, r1, #1
	cmp r1, #0x10
	ble _022211F8
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022211F8:
	ldr r1, _02221420 ; =0x000005D4
	mov r6, #0
_02221200:
	mla r2, r6, r1, r0
	add r2, r2, #0x1000
	ldr r3, [r2, #0xd40]
	cmp r3, r8
	bne _02221224
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02221224:
	ldrb r2, [r2, #0xd52]
	cmp r2, #0
	moveq r4, r6
	beq _02221244
	add r2, r6, #1
	and r6, r2, #0xff
	cmp r6, #0x10
	blo _02221200
_02221244:
	cmp r6, #0x10
	bne _0222125C
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0222125C:
	ldr r1, _02221420 ; =0x000005D4
	ldr r2, _0222141C ; =0x02250D2C
	mul r6, r4, r1
	add r0, r0, r6
	add r0, r0, #0x1000
	str r8, [r0, #0xd40]
	ldr r0, [r2, #0]
	mov r1, r7
	add r0, r0, #0x388
	add r0, r0, #0x1400
	add sb, r0, r6
	mov r0, sb
	bl ov18_02221428
	add r0, r8, #0x1c
	add r1, sb, #0xc4
	mov r2, #0x20
	bl sub_020C4DB0
	ldr r0, _0222141C ; =0x02250D2C
	mov r1, sb
	ldr r0, [r0, #0]
	add r0, r0, #0x12c
	add r0, r0, #0x1c00
	add r0, r0, r6
	bl ov18_02221614
	cmp r0, #0
	bne _022212D4
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022212D4:
	ldr r0, _0222141C ; =0x02250D2C
	mov r1, r8
	ldr r2, [r0, #0]
	add r0, r2, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r6
	add r2, r2, #0x1300
	bl ov18_02221990
	ldr r1, _0222141C ; =0x02250D2C
	ldr r0, [r1, #0]
	add r0, r0, r6
	add r0, r0, #0x1000
	strb r4, [r0, #0xd21]
	ldr r0, [r1, #0]
	add r0, r0, #0x6c
	add r0, r0, #0x1800
	add r0, r0, r6
	bl ov18_02221BB8
	ldr r2, _0222141C ; =0x02250D2C
	ldr r3, _02221424 ; =0x0224B264
	ldr r1, [r2, #0]
	ldrb r0, [r3]
	add r1, r1, r6
	add r1, r1, #0x1000
	strb r0, [r1, #0xd1f]
	ldr r1, [r2, #0]
	mov r4, #1
	add r1, r1, r6
	add r1, r1, #0x1d00
	strh r4, [r1, #0x4e]
	ldr r1, [r2, #0]
	add r8, r7, #0x1e8
	add r1, r1, r6
	add r1, r1, #0x1000
	str r7, [r1, #0xd44]
	ldr r1, [r2, #0]
	add r4, r7, #0x258
	add r1, r1, r6
	add r1, r1, #0x1000
	str r8, [r1, #0xd54]
	ldr r1, [r2, #0]
	add r7, r0, #1
	add r0, r1, r6
	add r0, r0, #0x1000
	str r4, [r0, #0xd58]
	ldr r0, [r2, #0]
	strb r7, [r3]
	add r0, r0, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0xd54]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _022213E0
	bl ov18_022241BC
	cmp r0, #0
	bne _022213E0
	ldr r0, _0222141C ; =0x02250D2C
	ldr r0, [r0, #0]
	add r0, r0, #0xce0
	add r0, r0, #0x7000
	bl ov18_022241D8
	ldr r0, _0222141C ; =0x02250D2C
	mov r1, #0x800
	ldr r0, [r0, #0]
	add r0, r0, #0x4e0
	add r0, r0, #0x7000
	bl ov18_0222413C
_022213E0:
	ldr r2, _0222141C ; =0x02250D2C
	mov r3, #1
	ldr r1, [r2, #0]
	mov r0, r5
	add r1, r1, r6
	add r1, r1, #0x1000
	strb r3, [r1, #0xd52]
	ldr r1, [r2, #0]
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x524]
	add r2, r2, #1
	strb r2, [r1, #0x524]
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0222141C: .word 0x02250D2C
_02221420: .word 0x000005D4
_02221424: .word 0x0224B264
	arm_func_end ov18_02221198

	arm_func_start ov18_02221428
ov18_02221428: ; 0x02221428
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, #0x22c0000
	mov r4, r1
	mov r5, r0
	str r2, [sp]
	ldr r0, [r4, #0x24]
	ldr r7, _02221498 ; =0x02246434
	str r0, [r5, #0]
	ldr r0, [r4, #0x34]
	add r8, r5, #0xc
	str r0, [r5, #4]
	mov sb, #0
	add r6, sp, #0
_0222145C:
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r6
	bl ov18_0222149C
	add sb, sb, #1
	cmp sb, #3
	add r8, r8, #0x10
	add r7, r7, #4
	blt _0222145C
	add r0, r4, #0x160
	add r1, r5, #0x3c
	mov r2, #0x88
	bl sub_020C4DB0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02221498: .word 0x02246434
	arm_func_end ov18_02221428

	arm_func_start ov18_0222149C
ov18_0222149C: ; 0x0222149C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r1, #0]
	mov r7, r0
	mov r6, r2
	mov r5, r3
	cmp r1, #0
	beq _022214CC
	cmp r1, #1
	beq _02221518
	cmp r1, #2
	beq _022215E8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022214CC:
	ldr r0, [r7, #0x28]
	cmp r0, #0x2000000
	blo _02221510
	cmp r0, #0x22c0000
	bhs _02221510
	ldr r1, [r7, #0x2c]
	add r0, r0, r1
	cmp r0, #0x22c0000
	bhi _02221510
	str r1, [r6, #8]
	ldr r0, [r7, #0x28]
	str r0, [r6, #4]
	str r0, [r6, #0]
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	str r0, [r6, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02221510:
	bl sub_020C42A8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02221518:
	ldr ip, [r7, #0x38]
	ldr r1, [r7, #0x3c]
	mov r2, #0
	mov r4, r2
	cmp ip, #0x2000000
	add r3, ip, r1
	blo _02221564
	ldr r0, _02221608 ; =0x023FE800
	cmp ip, r0
	bhs _02221564
	cmp r3, #0x2300000
	bls _02221590
	cmp r3, r0
	bhs _0222155C
	cmp r1, #0x40000
	movls r4, #1
	bls _02221590
_0222155C:
	mov r2, #1
	b _02221590
_02221564:
	ldr r1, _0222160C ; =0x037F8000
	cmp ip, r1
	blo _0222158C
	add r0, r1, #0x17000
	cmp ip, r0
	bhs _0222158C
	cmp r3, r0
	movls r4, #1
	movhi r2, #1
	b _02221590
_0222158C:
	mov r2, #1
_02221590:
	cmp r2, #1
	bne _0222159C
	bl sub_020C42A8
_0222159C:
	ldr r0, [r7, #0x3c]
	cmp r4, #0
	str r0, [r6, #8]
	ldr r0, [r7, #0x38]
	str r0, [r6, #4]
	ldreq r0, [r6, #4]
	streq r0, [r6]
	beq _022215D4
	ldr r0, [r5, #0]
	str r0, [r6, #0]
	ldr r1, [r5, #0]
	ldr r0, [r6, #8]
	add r0, r1, r0
	str r0, [r5, #0]
_022215D4:
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	orr r0, r0, #1
	str r0, [r6, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022215E8:
	ldr r0, _02221610 ; =0x027FFE00
	mov r1, #0x160
	stmib r6, {r0, r1}
	str r0, [r6, #0]
	ldr r0, [r6, #0xc]
	bic r0, r0, #1
	str r0, [r6, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221608: .word 0x023FE800
_0222160C: .word 0x037F8000
_02221610: .word 0x027FFE00
	arm_func_end ov18_0222149C

	arm_func_start ov18_02221614
ov18_02221614: ; 0x02221614
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	add r6, sl, #0xc
	cmp r1, #0
	mov r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r2, r0
_02221630:
	str r0, [sl, r2, lsl #2]
	add r3, r1, r2, lsl #4
	add r2, r2, #1
	ldr r3, [r3, #0x14]
	and r2, r2, #0xff
	cmp r2, #3
	add r0, r0, r3
	blo _02221630
	mov sb, #0
	ldr r4, _022216DC ; =0x02250D2C
	strh sb, [r6]
	add r5, r1, #0xc
_02221660:
	ldr r0, [r4, #0]
	add r7, r5, sb, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0x318]
	ldr r8, [r7, #8]
	add r0, r8, r1
	sub r0, r0, #1
	bl sub_020E2178
	mov r1, sb, lsl #1
	ldrh r3, [r6, r1]
	mov r2, r0, lsl #0x10
	ldr r1, [r7, #4]
	add r2, r3, r2, lsr #16
	mov r3, r2, lsl #0x10
	mov r0, sb
	mov r2, r8
	mov r7, r3, lsr #0x10
	bl ov18_02221840
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp sb, #2
	addlo r0, r6, sb, lsl #1
	strloh r7, [r0, #2]
	add r0, sb, #1
	and sb, r0, #0xff
	strhsh r7, [sl, #0x12]
	cmp sb, #3
	blo _02221660
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_022216DC: .word 0x02250D2C
	arm_func_end ov18_02221614

	arm_func_start ov18_022216E0
ov18_022216E0: ; 0x022216E0
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r4, [r1, #0x12]
	cmp r2, r4
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	mov ip, #2
_022216F8:
	add r4, r1, ip, lsl #1
	ldrh r4, [r4, #0xc]
	cmp r2, r4
	bhs _02221718
	sub r4, ip, #1
	mov ip, r4, lsl #0x18
	movs ip, ip, asr #0x18
	bpl _022216F8
_02221718:
	cmp ip, #0
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r4, _02221790 ; =0x02250D2C
	add r5, r1, ip, lsl #1
	ldr lr, [r4]
	ldrh r5, [r5, #0xc]
	add lr, lr, #0x1000
	ldr lr, [lr, #0x318]
	sub r5, r2, r5
	mul r2, r5, lr
	add r3, r3, #0xc
	add r5, r3, ip, lsl #4
	ldr r3, [r5, #8]
	sub lr, r3, r2
	str lr, [r0, #4]
	ldr r3, [r4, #0]
	add r3, r3, #0x1000
	ldr r3, [r3, #0x318]
	cmp lr, r3
	strhi r3, [r0, #4]
	ldr r1, [r1, ip, lsl #2]
	add r1, r2, r1
	str r1, [r0, #8]
	ldr r1, [r5, #0]
	add r1, r2, r1
	str r1, [r0, #0]
	strb ip, [r0, #0xc]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02221790: .word 0x02250D2C
	arm_func_end ov18_022216E0

	arm_func_start ov18_02221794
ov18_02221794: ; 0x02221794
	ldr r3, _02221838 ; =0x02246434
	ldr r0, [r3, r0, lsl #2]
	cmp r0, #0
	beq _022217D8
	cmp r0, #1
	beq _022217F4
	cmp r0, #2
	bne _02221828
	ldr r0, _0222183C ; =0x027FFE00
	cmp r1, r0
	blo _02221830
	add r1, r1, r2
	add r0, r0, #0x160
	cmp r1, r0
	bhi _02221830
	mov r0, #1
	bx lr
_022217D8:
	cmp r1, #0x2000000
	blo _02221830
	add r0, r1, r2
	cmp r0, #0x22c0000
	bhi _02221830
	mov r0, #1
	bx lr
_022217F4:
	cmp r1, #0x22c0000
	blo _0222180C
	add r0, r1, r2
	cmp r0, #0x2300000
	movls r0, #1
	bxls lr
_0222180C:
	cmp r1, #0x2000000
	blo _02221830
	add r0, r1, r2
	cmp r0, #0x2300000
	bhi _02221830
	mov r0, #1
	bx lr
_02221828:
	mov r0, #0
	bx lr
_02221830:
	mov r0, #0
	bx lr
	; .align 2, 0
_02221838: .word 0x02246434
_0222183C: .word 0x027FFE00
	arm_func_end ov18_02221794

	arm_func_start ov18_02221840
ov18_02221840: ; 0x02221840
	stmfd sp!, {r3, lr}
	ldr r3, _02221900 ; =0x02246434
	ldr r3, [r3, r0, lsl #2]
	cmp r3, #0
	beq _02221864
	cmp r3, #1
	beq _0222186C
	cmp r3, #2
	bne _022218F0
_02221864:
	bl ov18_02221794
	ldmia sp!, {r3, pc}
_0222186C:
	cmp r1, #0x2000000
	blo _022218C4
	ldr r0, _02221904 ; =0x023FE800
	cmp r1, r0
	bhs _022218C4
	cmp r1, #0x2300000
	add r1, r1, r2
	bhs _02221898
	cmp r1, #0x2300000
	movhi r0, #0
	ldmhiia sp!, {r3, pc}
_02221898:
	cmp r1, #0x2300000
	movls r0, #1
	ldmlsia sp!, {r3, pc}
	ldr r0, _02221904 ; =0x023FE800
	cmp r1, r0
	bhs _022218BC
	cmp r2, #0x40000
	movls r0, #1
	ldmlsia sp!, {r3, pc}
_022218BC:
	mov r0, #0
	ldmia sp!, {r3, pc}
_022218C4:
	ldr r3, _02221908 ; =0x037F8000
	cmp r1, r3
	blo _022218F8
	add r0, r3, #0x17000
	cmp r1, r0
	bhs _022218F8
	add r1, r1, r2
	cmp r1, r0
	movls r0, #1
	movhi r0, #0
	ldmia sp!, {r3, pc}
_022218F0:
	mov r0, #0
	ldmia sp!, {r3, pc}
_022218F8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02221900: .word 0x02246434
_02221904: .word 0x023FE800
_02221908: .word 0x037F8000
	arm_func_end ov18_02221840

	arm_func_start ov18_0222190C
ov18_0222190C: ; 0x0222190C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	add r2, r6, #0x1f
	mov r5, r1
	mov r0, r4
	bic r1, r2, #0x1f
	bl sub_020C2C54
	bl sub_020C2C78
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov18_02223D50
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov18_0222190C

	arm_func_start ov18_02221944
ov18_02221944: ; 0x02221944
	mov r3, r1, asr #1
	cmp r3, #0
	mov r2, #0
	ble _02221968
_02221954:
	ldrh r1, [r0], #2
	sub r3, r3, #1
	cmp r3, #0
	add r2, r2, r1
	bgt _02221954
_02221968:
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	add r1, r0, r2, lsr #16
	ldr r0, _0222198C ; =0x0000FFFF
	add r1, r1, r1, lsr #16
	eor r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	; .align 2, 0
_0222198C: .word 0x0000FFFF
	arm_func_end ov18_02221944

	arm_func_start ov18_02221990
ov18_02221990: ; 0x02221990
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r1, r6
	mov r0, #0
	mov r2, #0x4c0
	bl sub_020C4AF0
	mov r0, #0
	strb r0, [r6, #0x4b2]
	ldr r0, [r5, #0xc]
	mov r1, r6
	mov r2, #1
	bl ov18_02221A80
	cmp r0, #0
	moveq r7, #1
	ldr r0, [r5, #0x10]
	mov r1, r6
	mov r2, #0
	movne r7, #0
	bl ov18_02221A80
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	orrs r0, r7, r0
	beq _02221A10
	mov r3, #1
	mov r1, r6
	mov r0, #0
	mov r2, #0x220
	strb r3, [r6, #0x4b2]
	bl sub_020C4BB8
_02221A10:
	ldr r0, [r5, #0x14]
	cmp r4, #0
	str r0, [r6, #0x4b8]
	beq _02221A30
	mov r0, r4
	add r1, r6, #0x220
	mov r2, #0x16
	bl sub_020C4B18
_02221A30:
	ldrb r0, [r5, #0x18]
	strb r0, [r6, #0x236]
	ldr r0, [r5, #4]
	bl ov18_02221B90
	mov r2, r0, lsl #0x11
	ldr r0, [r5, #4]
	add r1, r6, #0x238
	mov r2, r2, lsr #0x10
	bl sub_020C4B18
	ldr r0, [r5, #8]
	add r1, r6, #0x298
	mov r2, #0xc0
	bl sub_020C4B18
	mov r1, #1
	strb r1, [r6, #0x358]
	add r0, r6, #0x300
	strh r1, [r0, #0x5a]
	add r0, r6, #0x400
	strh r1, [r0, #0xb0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02221990

	arm_func_start ov18_02221A80
ov18_02221A80: ; 0x02221A80
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	cmp r2, #0
	movne r4, #0x200
	moveq r4, #0x20
	mov r6, r0
	mov r5, r1
	cmp r2, #0
	addne r5, r5, #0x20
	cmp r6, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, sp, #0
	bl sub_020C7DA0
	add r0, sp, #0
	mov r1, r6
	bl sub_020C8080
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r0, r1, r0
	cmp r4, r0
	add r0, sp, #0
	beq _02221B00
	bl sub_020C80C8
	add sp, sp, #0x48
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02221B00:
	mov r1, r5
	mov r2, r4
	bl sub_020C81D4
	add r0, sp, #0
	bl sub_020C80C8
	mov r0, #1
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov18_02221A80

	arm_func_start ov18_02221B20
ov18_02221B20: ; 0x02221B20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r2
	add r4, r6, #0x5e
	mov r0, r1
	add r1, r4, #0x300
	ldr r2, _02221B8C ; =0x0000014A
	mov r4, r3
	mov r7, #1
	bl sub_020C4B18
	mov r2, #0
	mov r1, #2
_02221B50:
	tst r5, r1, lsl r2
	addne r0, r7, #1
	add r2, r2, #1
	andne r7, r0, #0xff
	cmp r2, #0xf
	blt _02221B50
	strb r7, [r6, #0x358]
	orr r1, r5, #1
	add r0, r6, #0x300
	strh r1, [r0, #0x5a]
	strh r4, [r0, #0x5c]
	ldrb r0, [r6, #0x4b4]
	add r0, r0, #1
	strb r0, [r6, #0x4b4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221B8C: .word 0x0000014A
	arm_func_end ov18_02221B20

	arm_func_start ov18_02221B90
ov18_02221B90: ; 0x02221B90
	ldrh r1, [r0], #2
	mov r2, #0
	cmp r1, #0
	beq _02221BB0
_02221BA0:
	ldrh r1, [r0], #2
	add r2, r2, #1
	cmp r1, #0
	bne _02221BA0
_02221BB0:
	mov r0, r2
	bx lr
	arm_func_end ov18_02221B90

	arm_func_start ov18_02221BB8
ov18_02221BB8: ; 0x02221BB8
	ldr r1, _02221BF8 ; =0x0224B280
	ldr r2, [r1, #0x18]
	cmp r2, #0
	streq r0, [r1, #0x18]
	beq _02221BEC
	ldr r1, [r2, #0x4bc]
	cmp r1, #0
	beq _02221BE8
_02221BD8:
	mov r2, r1
	ldr r1, [r1, #0x4bc]
	cmp r1, #0
	bne _02221BD8
_02221BE8:
	str r0, [r2, #0x4bc]
_02221BEC:
	mov r1, #0
	str r1, [r0, #0x4bc]
	bx lr
	; .align 2, 0
_02221BF8: .word 0x0224B280
	arm_func_end ov18_02221BB8

	arm_func_start ov18_02221BFC
ov18_02221BFC: ; 0x02221BFC
	ldr r0, _02221C20 ; =0x0224B280
	mov r2, #0
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	mov r1, #1
	strb r1, [r0, #0x24]
	ldr ip, _02221C24 ; =ov18_02221C28
	str r2, [r0, #0x14]
	bx ip
	; .align 2, 0
_02221C20: .word 0x0224B280
_02221C24: .word ov18_02221C28
	arm_func_end ov18_02221BFC

	arm_func_start ov18_02221C28
ov18_02221C28: ; 0x02221C28
	ldr r0, _02221C48 ; =0x0224B280
	mov r1, #0
	strb r1, [r0, #0x25]
	strb r1, [r0, #0x26]
	strb r1, [r0, #0x27]
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	bx lr
	; .align 2, 0
_02221C48: .word 0x0224B280
	arm_func_end ov18_02221C28

	arm_func_start ov18_02221C4C
ov18_02221C4C: ; 0x02221C4C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _02221CD4 ; =0x0224B280
	mov r7, r0
	mov r6, r1
	mov r5, r2
_02221C60:
	ldrb r0, [r4, #0x24]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02221C60
_02221C70: ; jump table
	b _02221C8C ; case 0
	b _02221C8C ; case 1
	b _02221C9C ; case 2
	b _02221CA4 ; case 3
	b _02221CB8 ; case 4
	b _02221CC0 ; case 5
	b _02221C60 ; case 6
_02221C8C:
	bl ov18_02221CD8
	cmp r0, #0
	bne _02221C60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02221C9C:
	bl ov18_02221D78
	b _02221C60
_02221CA4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02221DCC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02221CB8:
	bl ov18_02221F30
	b _02221C60
_02221CC0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov18_02221F60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221CD4: .word 0x0224B280
	arm_func_end ov18_02221C4C

	arm_func_start ov18_02221CD8
ov18_02221CD8: ; 0x02221CD8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _02221D70 ; =0x0224B280
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _02221D28
	bl ov18_02223E30
	mov r4, r0
	bl ov18_02223E44
	str r0, [sp]
	mov ip, #8
	ldr r1, _02221D74 ; =0x0224B2C0
	mov r3, r4
	mov r0, #0
	mov r2, #0x70
	str ip, [sp, #4]
	bl sub_020D065C
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_02221D28:
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ldrne r1, [r0, #0x4bc]
	cmpne r1, #0
	ldreq r0, _02221D70 ; =0x0224B280
	ldreq r1, [r0, #0x18]
	ldr r0, _02221D70 ; =0x0224B280
	str r1, [r0, #0x1c]
	bl ov18_02221C28
	ldr r1, _02221D70 ; =0x0224B280
	mov r2, #2
	ldr r3, [r1, #0x1c]
	mov r0, #1
	ldrb r3, [r3, #0x4b4]
	strb r3, [r1, #0x26]
	strb r2, [r1, #0x24]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221D70: .word 0x0224B280
_02221D74: .word 0x0224B2C0
	arm_func_end ov18_02221CD8

	arm_func_start ov18_02221D78
ov18_02221D78: ; 0x02221D78
	ldr r0, _02221DC8 ; =0x0224B280
	ldrb r1, [r0, #0x24]
	cmp r1, #2
	bxne lr
	ldr r2, [r0, #0x1c]
	ldrb r1, [r2, #0x4b2]
	cmp r1, #0
	bne _02221DA8
	mov r1, #9
	strb r1, [r0, #0x28]
	str r2, [r0, #0x20]
	b _02221DB8
_02221DA8:
	mov r1, #4
	strb r1, [r0, #0x28]
	add r1, r2, #0x220
	str r1, [r0, #0x20]
_02221DB8:
	ldr r0, _02221DC8 ; =0x0224B280
	mov r1, #3
	strb r1, [r0, #0x24]
	bx lr
	; .align 2, 0
_02221DC8: .word 0x0224B280
	arm_func_end ov18_02221D78

	arm_func_start ov18_02221DCC
ov18_02221DCC: ; 0x02221DCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r3, _02221F20 ; =0x0224B280
	mov r6, r0
	ldr r4, [r3, #0x1c]
	ldr r0, [r3, #0x20]
	add ip, r4, #0x358
	add r7, r0, #0x62
	cmp r7, ip
	movls r0, #0x62
	mov r5, r1
	mov r4, r2
	strlsb r0, [r3, #0x4c]
	bls _02221E24
	sub r7, ip, r0
	and r1, r7, #0xff
	ldr r0, _02221F24 ; =0x0224B2CE
	rsb r2, r1, #0x62
	add r1, r0, r1
	mov r0, #0
	strb r7, [r3, #0x4c]
	bl sub_020C4AF0
_02221E24:
	ldr r0, _02221F20 ; =0x0224B280
	ldr r1, _02221F24 ; =0x0224B2CE
	ldrb r2, [r0, #0x4c]
	ldr r0, [r0, #0x20]
	bl sub_020C4B18
	ldr r2, _02221F20 ; =0x0224B280
	ldr r0, _02221F28 ; =0x0224B2C8
	ldrb r7, [r2, #0x27]
	mov r3, #0
	mov r1, #0x68
	strb r7, [r2, #0x4a]
	ldrb r7, [r2, #0x28]
	strb r7, [r2, #0x4b]
	ldr r7, [r2, #0x1c]
	ldrb lr, [r2, #0x44]
	ldrb ip, [r7, #0x4b2]
	bic lr, lr, #3
	and ip, ip, #3
	orr ip, lr, ip
	strb ip, [r2, #0x44]
	ldrb ip, [r7, #0x4b3]
	strb ip, [r2, #0x45]
	ldrb ip, [r2, #0x26]
	strb ip, [r2, #0x46]
	ldr ip, [r7, #0x4b8]
	str ip, [r2, #0x40]
	ldrb lr, [r2, #0x44]
	ldrb ip, [r7, #0x4b5]
	bic lr, lr, #0xfc
	mov ip, ip, lsl #0x1a
	orr ip, lr, ip, lsr #24
	strb ip, [r2, #0x44]
	ldrb lr, [r2, #0x29]
	add ip, lr, #1
	strb ip, [r2, #0x29]
	strb lr, [r2, #0x47]
	strh r3, [r2, #0x48]
	bl ov18_02221944
	ldr r1, _02221F20 ; =0x0224B280
	strh r0, [r1, #0x48]
	ldrb r0, [r1, #0x27]
	add r2, r0, #1
	strb r2, [r1, #0x27]
	ldrb r0, [r1, #0x28]
	and r2, r2, #0xff
	cmp r2, r0
	movhs r0, #4
	strhsb r0, [r1, #0x24]
	bhs _02221EF4
	ldr r0, [r1, #0x20]
	add r0, r0, #0x62
	str r0, [r1, #0x20]
_02221EF4:
	orr r0, r4, #3
	ldr r1, _02221F2C ; =0x0224B2C0
	mov r3, r6
	str r5, [sp]
	and r4, r0, #0xff
	mov r0, #0
	mov r2, #0x70
	str r4, [sp, #4]
	bl sub_020D065C
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02221F20: .word 0x0224B280
_02221F24: .word 0x0224B2CE
_02221F28: .word 0x0224B2C8
_02221F2C: .word 0x0224B2C0
	arm_func_end ov18_02221DCC

	arm_func_start ov18_02221F30
ov18_02221F30: ; 0x02221F30
	ldr r1, _02221F5C ; =0x0224B280
	mov r3, #1
	ldr r0, [r1, #0x1c]
	mov r2, #5
	add r0, r0, #0x400
	strh r3, [r0, #0xb0]
	ldr r0, [r1, #0x1c]
	ldrb r0, [r0, #0x4b4]
	strb r0, [r1, #0x26]
	strb r2, [r1, #0x24]
	bx lr
	; .align 2, 0
_02221F5C: .word 0x0224B280
	arm_func_end ov18_02221F30

	arm_func_start ov18_02221F60
ov18_02221F60: ; 0x02221F60
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r3, _022221B8 ; =0x0224B280
	str r0, [sp, #8]
	ldr r0, [r3, #0x1c]
	ldrb r3, [r3, #0x26]
	ldrb r0, [r0, #0x4b4]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	cmp r3, r0
	beq _02221F90
	bl ov18_02221F30
_02221F90:
	ldr r2, _022221B8 ; =0x0224B280
	ldrb r0, [r2, #0x44]
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r2, #0x44]
	ldr r0, [r2, #0x1c]
	ldrb r3, [r0, #0x4b3]
	add r1, r0, #0x300
	strb r3, [r2, #0x45]
	ldrb r3, [r2, #0x26]
	strb r3, [r2, #0x46]
	ldr r3, [r0, #0x4b8]
	str r3, [r2, #0x40]
	ldrb r4, [r2, #0x44]
	ldrb r3, [r0, #0x4b5]
	bic r4, r4, #0xfc
	mov r3, r3, lsl #0x1a
	orr r3, r4, r3, lsr #24
	strb r3, [r2, #0x44]
	ldrb r4, [r2, #0x29]
	add r3, r4, #1
	strb r3, [r2, #0x29]
	strb r4, [r2, #0x47]
	ldrb r3, [r0, #0x358]
	strb r3, [r2, #0x4a]
	ldrh r3, [r1, #0x5a]
	strh r3, [r2, #0x4c]
	ldrh r1, [r1, #0x5c]
	strh r1, [r2, #0x4e]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	bne _02222024
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _02222024
	ldr r0, [r0, #0x4b8]
	blx r1
_02222024:
	ldr r0, _022221B8 ; =0x0224B280
	mov sb, #0
	ldr r1, _022221BC ; =0x0224B328
	ldr r2, [r0, #0x1c]
	b _02222048
_02222038:
	add r0, r2, sb
	ldrb r0, [r0, #0x4a8]
	strb r0, [r1, sb]
	add sb, sb, #1
_02222048:
	cmp sb, #8
	blt _02222038
	ldr r1, _022221C0 ; =0x0224B2D0
	mov r0, #0
	mov r2, #0x58
	bl sub_020C4AF0
	ldr r5, _022221B8 ; =0x0224B280
	mov sl, #0
	ldr r1, [r5, #0x1c]
	mov r6, #2
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r2, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	mov sb, sl
	ldr r7, _022221C0 ; =0x0224B2D0
	eor r0, r2, r0
	mov r4, r0, lsl #0x10
	mov r8, r6
	mov fp, #0x16
	b _022220EC
_0222209C:
	mov r0, r8, lsl sb
	tst r0, r4, lsr #16
	beq _022220E8
	ldr r0, [r5, #0x1c]
	mla r1, sl, fp, r7
	add r0, r0, #0x5e
	add r2, r0, #0x300
	mov r0, #0x16
	mla r0, sb, r0, r2
	mov r2, #0x16
	bl sub_020C4B18
	ldr r0, [r5, #0x1c]
	add sl, sl, #1
	add r0, r0, #0x400
	ldrh r1, [r0, #0xb0]
	cmp sl, #4
	orr r1, r1, r6, lsl sb
	strh r1, [r0, #0xb0]
	beq _022220F4
_022220E8:
	add sb, sb, #1
_022220EC:
	cmp sb, #0xf
	blt _0222209C
_022220F4:
	cmp sl, #4
	bhs _02222114
	mov r0, #0x16
	mul r1, sl, r0
	ldr r2, _022221C0 ; =0x0224B2D0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf0
	strb r0, [r2, r1]
_02222114:
	ldr r2, _022221B8 ; =0x0224B280
	mov r3, #0
	ldr r0, _022221C4 ; =0x0224B2C8
	mov r1, #0x68
	strh r3, [r2, #0x48]
	bl ov18_02221944
	ldr r2, _022221B8 ; =0x0224B280
	strh r0, [r2, #0x48]
	ldr r1, [r2, #0x1c]
	add r0, r1, #0x400
	add r1, r1, #0x300
	ldrh r3, [r0, #0xb0]
	ldrh r0, [r1, #0x5a]
	ldr r1, _022221C8 ; =0x0224B2C0
	cmp r3, r0
	moveq r0, #1
	streqb r0, [r2, #0x24]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #8]
	orr r2, r0, #3
	ldr r0, [sp, #0xc]
	and r4, r2, #0xff
	str r0, [sp]
	mov r0, #0
	mov r2, #0x70
	str r4, [sp, #4]
	bl sub_020D065C
	ldr r0, _022221B8 ; =0x0224B280
	ldr r1, [r0, #0x10]
	cmp r1, #1
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r0, #0x14]
	cmp r1, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x4b8]
	blx r1
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022221B8: .word 0x0224B280
_022221BC: .word 0x0224B328
_022221C0: .word 0x0224B2D0
_022221C4: .word 0x0224B2C8
_022221C8: .word 0x0224B2C0
	arm_func_end ov18_02221F60

	arm_func_start ov18_022221CC
ov18_022221CC: ; 0x022221CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_020CE7F4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh lr, [r4, #4]
	mov r2, #1
	mov ip, #0
	mov r5, lr
	mov r3, r2
_022221F8:
	sub r1, r5, #1
	tst r0, r3, lsl r1
	cmpne lr, r5
	strneh r5, [r4, #4]
	bne _02222234
	add r1, ip, #1
	mov r1, r1, lsl #0x10
	cmp r5, #0x10
	mov ip, r1, lsr #0x10
	moveq r1, r2
	addne r1, r5, #1
	mov r1, r1, lsl #0x10
	cmp ip, #0x10
	mov r5, r1, lsr #0x10
	blo _022221F8
_02222234:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov18_022221CC

	arm_func_start ov18_0222223C
ov18_0222223C: ; 0x0222223C
	ldr r1, _02222298 ; =0x02250D20
	mov r0, #0
	ldr ip, [r1, #8]
	mov r3, r0
	add r1, ip, #0x500
	ldrh r1, [r1, #0x28]
	mov r2, r0
	cmp r1, #1
	ldreqb r1, [ip, #0x50c]
	cmpeq r1, #0
	moveq r3, #1
	cmp r3, #0
	beq _02222280
	add r1, ip, #0x500
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	moveq r2, #1
_02222280:
	cmp r2, #0
	addne r1, ip, #0x500
	ldrneh r1, [r1, #0x2a]
	cmpne r1, #0
	movne r0, #1
	bx lr
	; .align 2, 0
_02222298: .word 0x02250D20
	arm_func_end ov18_0222223C

	arm_func_start ov18_0222229C
ov18_0222229C: ; 0x0222229C
	stmfd sp!, {r3, lr}
	ldr r0, _022222E4 ; =ov18_02222330
	bl sub_020CE478
	mov r1, r0
	mov r0, #0x80
	bl ov18_02223ED8
	ldr r3, _022222E8 ; =0x0224976C
	ldr r0, _022222E4 ; =ov18_02222330
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl sub_020D0764
	mov r1, r0
	mov r0, #0x1d
	bl ov18_02223ED8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022222E4: .word ov18_02222330
_022222E8: .word 0x0224976C
	arm_func_end ov18_0222229C

	arm_func_start ov18_022222EC
ov18_022222EC: ; 0x022222EC
	stmfd sp!, {r3, lr}
	ldr r2, _0222232C ; =0x02250D20
	mov ip, #0
	ldr r3, [r2, #8]
	mov r1, r0
	strb ip, [r3, #0x50d]
	ldr r0, [r2, #0xc]
	add r0, r0, #0x1300
	strh ip, [r0, #0x16]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x51c]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0x11
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222232C: .word 0x02250D20
	arm_func_end ov18_022222EC

	arm_func_start ov18_02222330
ov18_02222330: ; 0x02222330
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldrh r1, [r4]
	cmp r1, #0x19
	bgt _02222398
	bge _02222474
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _02222B58
_02222358: ; jump table
	b _022223B4 ; case 0
	b _02222928 ; case 1
	b _02222A18 ; case 2
	b _02222B58 ; case 3
	b _02222B58 ; case 4
	b _02222B58 ; case 5
	b _02222B58 ; case 6
	b _0222243C ; case 7
	b _02222510 ; case 8
	b _02222B58 ; case 9
	b _02222B58 ; case 10
	b _02222B58 ; case 11
	b _02222B58 ; case 12
	b _02222A60 ; case 13
	b _02222764 ; case 14
	b _02222804 ; case 15
_02222398:
	cmp r1, #0x1d
	bgt _022223A8
	beq _022223EC
	b _02222B58
_022223A8:
	cmp r1, #0x80
	beq _02222A98
	b _02222B58
_022223B4:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022223E0
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022223E0:
	bl ov18_0222229C
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022223EC:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02222418
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222418:
	ldr r1, _02222B78 ; =0x02250D20
	ldr r0, _02222B7C ; =ov18_02222330
	ldr r1, [r1, #8]
	bl sub_020CEDC8
	mov r1, r0
	mov r0, #7
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0222243C:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x15
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r0, _02222B7C ; =ov18_02222330
	mov r1, #1
	bl sub_020D0714
	mov r1, r0
	mov r0, #0x19
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222474:
	ldr r2, _02222B78 ; =0x02250D20
	ldr ip, [r2, #8]
	add r1, ip, #0x500
	ldrh r3, [r1, #0x26]
	cmp r3, #0
	bne _022224D4
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022224B0
	ldr r2, [ip, #0x51c]
	mov r1, r4
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022224B0:
	ldr r1, _02222B80 ; =0x0224976C
	ldr r0, _02222B7C ; =ov18_02222330
	ldr r1, [r1, #0xc]
	bl sub_020CEEF4
	mov r1, r0
	mov r0, #8
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022224D4:
	ldrh r3, [r4, #2]
	cmp r3, #0
	beq _02222504
	mov r0, #0
	strh r0, [r1, #0x26]
	ldr r0, [r2, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222504:
	bl ov18_022222EC
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222510:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0222253C
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_0222253C:
	ldrh r0, [r4, #8]
	cmp r0, #7
	bgt _0222256C
	bge _022225B4
	cmp r0, #2
	bgt _02222744
	cmp r0, #0
	blt _02222744
	beq _0222258C
	cmp r0, #2
	beq _02222710
	b _02222744
_0222256C:
	cmp r0, #9
	bgt _0222257C
	beq _022226D4
	b _02222744
_0222257C:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	b _02222744
_0222258C:
	ldr r1, _02222B78 ; =0x02250D20
	mov r2, #0
	ldr r0, [r1, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	strh r2, [r0, #0x2a]
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	strh r2, [r0, #0x28]
	ldmia sp!, {r3, r4, pc}
_022225B4:
	ldr r2, _02222B78 ; =0x02250D20
	ldr r0, [r2, #8]
	add r0, r0, #0x500
	ldrh r1, [r0, #0x26]
	cmp r1, #1
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	ldrh lr, [r0, #0x2a]
	ldrh r3, [r4, #0x10]
	mov ip, #1
	mov r1, r4
	orr r3, lr, ip, lsl r3
	strh r3, [r0, #0x2a]
	ldr r2, [r2, #8]
	mov r0, #0
	ldr r2, [r2, #0x51c]
	blx r2
	ldr r1, _02222B78 ; =0x02250D20
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x28]
	cmp r0, #0
	bne _022226A4
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x31c]
	cmp r2, #0
	bne _022226A4
	mov r2, #1
	str r2, [r0, #0x31c]
	ldr r0, [r1, #8]
	ldr r1, _02222B78 ; =0x02250D20
	add r0, r0, #0x500
	ldrh r0, [r0, #0x2c]
	ldr ip, [r1, #8]
	mov r1, #1
	cmp r0, #0
	movne r2, #0
	mov r0, r2, lsl #0x10
	mov r3, r0, lsr #0x10
	add r0, ip, #0x500
	ldrh r4, [r0, #0x18]
	mov r2, #0
	str r4, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r0, #0x1a]
	ldr r1, [ip, #0x504]
	ldr r0, _02222B7C ; =ov18_02222330
	add r3, ip, #0x40
	bl sub_020CF540
	mov r1, r0
	mov r0, #0xe
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022226A4:
	bl ov18_0222223C
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, _02222B78 ; =0x02250D20
	mov r0, #0x19
	ldr r2, [r1, #8]
	mov r1, #0
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022226D4:
	ldr r2, _02222B78 ; =0x02250D20
	ldrh r3, [r4, #0x10]
	ldr r1, [r2, #8]
	mov r0, #1
	add r1, r1, #0x500
	ldrh ip, [r1, #0x2a]
	mvn r3, r0, lsl r3
	and r3, ip, r3
	strh r3, [r1, #0x2a]
	ldr r2, [r2, #8]
	mov r1, r4
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222710:
	ldr r0, _02222B78 ; =0x02250D20
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #1
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r1, r4
	mov r0, #0x1c
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222744:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222764:
	ldr r2, _02222B78 ; =0x02250D20
	mov r1, #0
	ldr r0, [r2, #0xc]
	add r0, r0, #0x1000
	str r1, [r0, #0x31c]
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	beq _02222790
	cmp r0, #0xb
	beq _022227CC
	b _022227E8
_02222790:
	ldr r0, [r2, #8]
	mov r3, #1
	add r0, r0, #0x500
	strh r3, [r0, #0x28]
	ldr r2, [r2, #8]
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r2, [r2, #0x51c]
	mov r0, #0x19
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022227CC:
	ldr r0, [r2, #8]
	ldr r1, [r4, #8]
	ldr r2, [r0, #0x51c]
	mov r0, #3
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022227E8:
	ldr r0, [r2, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222804:
	ldr r0, _02222B78 ; =0x02250D20
	ldr r3, [r0, #0xc]
	add r0, r3, #0x7000
	ldr r0, [r0, #0x4c8]
	cmp r0, #0
	beq _02222860
	mov r2, #0
	mov r1, r2
_02222824:
	add r0, r3, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0x4e8]
	cmp r0, #0
	beq _02222844
	add r2, r2, #1
	cmp r2, #2
	bhs _02222850
_02222844:
	add r1, r1, #1
	cmp r1, #0xf
	blo _02222824
_02222850:
	cmp r2, #1
	bne _02222860
	ldr r0, _02222B84 ; =0x000032C8
	bl sub_020C3E08
_02222860:
	ldr r0, _02222B78 ; =0x02250D20
	mov r2, #0
	ldr r1, [r0, #8]
	strb r2, [r1, #0x50c]
	ldrh r1, [r4, #2]
	cmp r1, #0
	bne _022228C4
	ldr r0, [r0, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #2
	blx r2
	ldr r0, _02222B78 ; =0x02250D20
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022228C4:
	cmp r1, #0xa
	ldr r0, [r0, #8]
	mov r1, r4
	bne _022228E8
	ldr r2, [r0, #0x51c]
	mov r0, #0x2a
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022228E8:
	ldr r2, [r0, #0x51c]
	mov r0, #0x13
	blx r2
	ldr r0, _02222B78 ; =0x02250D20
	ldr r1, [r0, #8]
	add r0, r1, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r2, [r1, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222928:
	ldr r1, _02222B78 ; =0x02250D20
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _022229A4
	ldrh r0, [r4, #2]
	mov r2, #0
	cmp r0, #0
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	beq _02222978
	strh r2, [r0, #0x26]
	ldr r0, [r1, #8]
	mov r1, r4
	ldr r2, [r0, #0x51c]
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222978:
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _02222B7C ; =ov18_02222330
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl sub_020CED88
	mov r1, r0
	mov r0, #2
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022229A4:
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl sub_020CE4BC
	mov r0, #0
	bl sub_020CE478
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022229F8
	ldr r2, _02222B78 ; =0x02250D20
	mov r3, #0
	ldr r0, [r2, #8]
	mov r1, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x26]
	ldr r2, [r2, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_022229F8:
	ldr r0, _02222B7C ; =ov18_02222330
	mov r1, #0
	bl sub_020D0714
	mov r1, r0
	mov r0, #0x19
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222A18:
	ldrh r1, [r4, #2]
	cmp r1, #0
	beq _02222A54
	ldr r2, _02222B78 ; =0x02250D20
	mov r3, #0
	ldr r0, [r2, #8]
	mov r1, r4
	add r0, r0, #0x500
	strh r3, [r0, #0x26]
	ldr r2, [r2, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222A54:
	bl ov18_022222EC
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222A60:
	ldrh r0, [r4, #2]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, pc}
	ldr r0, _02222B78 ; =0x02250D20
	ldrh r1, [r4, #0xa]
	ldr r0, [r0, #8]
	add sp, sp, #0x1c
	add r0, r0, #0x500
	ldrh r2, [r0, #0x2a]
	mvn r1, r1
	and r1, r2, r1
	strh r1, [r0, #0x2a]
	ldmia sp!, {r3, r4, pc}
_02222A98:
	ldrh r0, [r4, #4]
	sub r0, r0, #0x10
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02222B70
_02222AAC: ; jump table
	b _02222ACC ; case 0
	b _02222AEC ; case 1
	b _02222B0C ; case 2
	b _02222B2C ; case 3
	b _02222B70 ; case 4
	b _02222B70 ; case 5
	b _02222B4C ; case 6
	b _02222B70 ; case 7
_02222ACC:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1d
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222AEC:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x1f
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222B0C:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x20
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222B2C:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x21
	ldr r2, [r2, #0x51c]
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222B4C:
	bl sub_020C42A8
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
_02222B58:
	ldr r0, _02222B78 ; =0x02250D20
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0x100
	ldr r2, [r2, #0x51c]
	blx r2
_02222B70:
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02222B78: .word 0x02250D20
_02222B7C: .word ov18_02222330
_02222B80: .word 0x0224976C
_02222B84: .word 0x000032C8
	arm_func_end ov18_02222330

	arm_func_start ov18_02222B88
ov18_02222B88: ; 0x02222B88
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldrh r0, [r1, #4]
	cmp r0, #0x15
	bgt _02222BC4
	bge _02222BDC
	cmp r0, #9
	ldmgtia sp!, {r3, pc}
	cmp r0, #7
	ldmltia sp!, {r3, pc}
	cmpne r0, #9
	ldmia sp!, {r3, pc}
_02222BC4:
	cmp r0, #0x1a
	ldmgtia sp!, {r3, pc}
	cmp r0, #0x19
	ldmltia sp!, {r3, pc}
	cmpne r0, #0x1a
	ldmia sp!, {r3, pc}
_02222BDC:
	ldr r2, _02222BF4 ; =0x02250D20
	mov r0, #9
	ldr r2, [r2, #8]
	ldr r2, [r2, #0x51c]
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02222BF4: .word 0x02250D20
	arm_func_end ov18_02222B88

	arm_func_start ov18_02222BF8
ov18_02222BF8: ; 0x02222BF8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	ldrh r2, [r6]
	ldr r1, _02223410 ; =0x02250D20
	cmp r2, #0x1d
	ldr r4, [r1, #8]
	bgt _02222C84
	cmp r2, #0x1d
	bge _02222CF0
	cmp r2, #0x15
	addls pc, pc, r2, lsl #2
	b _022233F8
_02222C2C: ; jump table
	b _02222C90 ; case 0
	b _02223310 ; case 1
	b _02223370 ; case 2
	b _022233F8 ; case 3
	b _022233F8 ; case 4
	b _022233F8 ; case 5
	b _022233F8 ; case 6
	b _022233F8 ; case 7
	b _022233F8 ; case 8
	b _022233F8 ; case 9
	b _02222D8C ; case 10
	b _02223054 ; case 11
	b _022230A4 ; case 12
	b _022233F8 ; case 13
	b _0222321C ; case 14
	b _02223290 ; case 15
	b _022233F8 ; case 16
	b _022233F8 ; case 17
	b _022233F8 ; case 18
	b _022233F8 ; case 19
	b _022233F8 ; case 20
	b _022233AC ; case 21
_02222C84:
	cmp r2, #0x80
	beq _022233D4
	b _022233F8
_02222C90:
	ldrh r0, [r6, #2]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	cmp r0, #0
	beq _02222CB4
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222CB4:
	mov r0, #0x15
	blx r2
	ldr r3, _02223414 ; =0x0224976C
	ldr r0, _02223418 ; =ov18_02222BF8
	ldrh r1, [r3, #4]
	str r1, [sp]
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	bl sub_020D0764
	mov r1, r0
	mov r0, #0x1d
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222CF0:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02222D14
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222D14:
	add r0, r4, #0x440
	str r0, [r1, #0x20]
	ldrh r0, [r1, #0x24]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	streqh r0, [r1, #0x24]
	ldr r0, _02223410 ; =0x02250D20
	ldrh r1, [r0, #0x26]
	cmp r1, #0
	moveq r1, #0xc8
	streqh r1, [r0, #0x26]
	ldr r0, _02223410 ; =0x02250D20
	mov r1, #0xff
	strb r1, [r0, #0x28]
	strb r1, [r0, #0x29]
	strb r1, [r0, #0x2a]
	strb r1, [r0, #0x2b]
	strb r1, [r0, #0x2c]
	strb r1, [r0, #0x2d]
	str r2, [r4, #0x5e4]
	ldr r0, _02223418 ; =ov18_02222BF8
	ldr r1, _0222341C ; =0x02250D40
	str r2, [r4, #0x5e8]
	bl sub_020CEFA0
	mov r1, r0
	mov r0, #0xa
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222D8C:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02222DB0
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222DB0:
	ldrh r0, [r6, #8]
	cmp r0, #3
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #4
	beq _02222FDC
	cmp r0, #5
	bne _0222303C
	add ip, r4, #0x600
	mov r5, #0
	add r0, r4, #0x500
	mov fp, #0x180
	b _02222F0C
_02222DE4:
	mla r2, r5, fp, ip
	ldrb r3, [r6, #0xa]
	ldrb r1, [r2, #0xca]
	mov lr, #0
	mov sl, lr
	cmp r3, r1
	ldreqb r1, [r2, #0xcb]
	ldreqb r2, [r6, #0xb]
	mov r7, lr
	mov r8, lr
	cmpeq r2, r1
	moveq sl, #1
	mov sb, lr
	cmp sl, #0
	beq _02222E38
	mov r2, #0x180
	mla r2, r5, r2, ip
	ldrb r1, [r6, #0xc]
	ldrb r2, [r2, #0xcc]
	cmp r1, r2
	moveq sb, #1
_02222E38:
	cmp sb, #0
	beq _02222E58
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xd]
	ldrb r1, [r1, #0xcd]
	cmp r2, r1
	moveq r8, #1
_02222E58:
	cmp r8, #0
	beq _02222E78
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xe]
	ldrb r1, [r1, #0xce]
	cmp r2, r1
	moveq r7, #1
_02222E78:
	cmp r7, #0
	beq _02222E98
	mov r1, #0x180
	mla r1, r5, r1, ip
	ldrb r2, [r6, #0xf]
	ldrb r1, [r1, #0xcf]
	cmp r2, r1
	moveq lr, #1
_02222E98:
	cmp lr, #0
	beq _02222F08
	mov r0, #0x180
	mla r0, r5, r0, ip
	ldrh r1, [r6, #0x36]
	add sb, r6, #0x38
	add r8, r0, #0xf8
	strh r1, [r0, #0xf6]
	mov r7, #8
_02222EBC:
	ldmia sb!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	subs r7, r7, #1
	bne _02222EBC
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl sub_020C2C1C
	ldr r1, _02223410 ; =0x02250D20
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl sub_020C43C4
	str r5, [r4, #0x5ec]
	b _02222F7C
_02222F08:
	add r5, r5, #1
_02222F0C:
	ldrh r1, [r0, #0xe0]
	cmp r5, r1
	blt _02222DE4
	cmp r5, #0x10
	bge _02222F7C
	mov r0, #0x180
	mla r1, r5, r0, ip
	mov r0, r6
	add r7, r5, #1
	add r3, r4, #0x500
	add r1, r1, #0xc0
	mov r2, #0xb8
	strh r7, [r3, #0xe0]
	bl sub_020C4B18
	add r1, r4, #0x600
	mov r0, #0x180
	mla r0, r5, r0, r1
	mov r1, #0xc0
	bl sub_020C2C1C
	ldr r1, _02223410 ; =0x02250D20
	add r2, r4, #0x600
	mov r0, #0x180
	mla r2, r5, r0, r2
	ldrh r0, [r1]
	add r1, r4, #0x440
	mov r3, #0xc0
	bl sub_020C43C4
	str r5, [r4, #0x5ec]
_02222F7C:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #4
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _02222FBC
	ldr r0, _0222341C ; =0x02250D40
	bl ov18_022221CC
	cmp r0, #0
	bne _02222FBC
	bl ov18_02223A98
_02222FBC:
	ldr r0, _02223418 ; =ov18_02222BF8
	ldr r1, _0222341C ; =0x02250D40
	bl sub_020CEFA0
	mov r1, r0
	mov r0, #0xa
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222FDC:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #5
	blx r2
	ldr r0, [r4, #0x5e4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0x5e8]
	cmp r0, #0
	beq _0222301C
	ldr r0, _0222341C ; =0x02250D40
	bl ov18_022221CC
	cmp r0, #0
	bne _0222301C
	bl ov18_02223A98
_0222301C:
	ldr r0, _02223418 ; =ov18_02222BF8
	ldr r1, _0222341C ; =0x02250D40
	bl sub_020CEFA0
	mov r1, r0
	mov r0, #0xa
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222303C:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223054:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02223078
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223078:
	ldr r1, [r4, #0x520]
	mov r2, #0
	ldr r0, _02223418 ; =ov18_02222BF8
	mov r3, #1
	str r2, [sp]
	bl sub_020CF21C
	mov r1, r0
	mov r0, #0xc
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022230A4:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _022230D4
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0xe0]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xb
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022230D4:
	ldrh r0, [r6, #8]
	cmp r0, #9
	bgt _02223100
	cmp r0, #6
	blt _02223204
	beq _02223110
	cmp r0, #7
	beq _0222312C
	cmp r0, #9
	beq _022231DC
	b _02223204
_02223100:
	cmp r0, #0x1a
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _02223204
_02223110:
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	mov r1, #1
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222312C:
	ldrh r2, [r6, #0xa]
	add r0, r4, #0x500
	mov r1, r6
	strh r2, [r0, #0xe2]
	ldr r2, [r4, #0x51c]
	mov r0, #6
	blx r2
	ldr r1, _02223420 ; =ov18_02222B88
	add r3, r4, #0x500
	mov r0, #1
	mov r2, #0
	strh r0, [r3, #0x2a]
	bl sub_020CE4BC
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r4, #0x500
	ldrh r0, [r0, #0x2c]
	add r1, r4, #0x500
	ldrh r2, [r1, #0x18]
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldrh r2, [r1, #0x1a]
	ldr r1, [r4, #0x504]
	ldr r0, _02223418 ; =ov18_02222BF8
	add r3, r4, #0x40
	bl sub_020CF540
	mov r1, r0
	mov r0, #0xe
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022231DC:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0xa
	blx r2
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x2a]
	strh r1, [r0, #0x28]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223204:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222321C:
	ldrh r0, [r6, #4]
	cmp r0, #0xa
	beq _02223244
	cmp r0, #0xc
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0xd
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	b _02223278
_02223244:
	add r0, r4, #0x500
	mov r1, #1
	strh r1, [r0, #0x28]
	bl ov18_0222223C
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223278:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223290:
	mov r0, #0
	strb r0, [r4, #0x50c]
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _022232B8
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #8
	blx r2
	b _022232DC
_022232B8:
	cmp r0, #9
	ldr r2, [r4, #0x51c]
	mov r1, r6
	bne _022232D4
	mov r0, #0x29
	blx r2
	b _022232DC
_022232D4:
	mov r0, #0x12
	blx r2
_022232DC:
	ldr r0, _02223410 ; =0x02250D20
	ldr r0, [r0, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223310:
	ldrh r0, [r6, #2]
	cmp r0, #0
	add r0, r4, #0x500
	beq _02223340
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223340:
	mov r2, #0
	strh r2, [r0, #0x2a]
	ldr r1, [r1, #8]
	ldr r0, _02223418 ; =ov18_02222BF8
	add r1, r1, #0x500
	strh r2, [r1, #0x28]
	bl sub_020CED88
	mov r1, r0
	mov r0, #2
	bl ov18_02223ED8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223370:
	ldrh r1, [r6, #2]
	cmp r1, #0
	beq _022233A0
	add r0, r4, #0x500
	mov r1, #0
	strh r1, [r0, #0x26]
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233A0:
	bl ov18_022222EC
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233AC:
	bl ov18_0222223C
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0x51c]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233D4:
	ldrh r0, [r6, #4]
	cmp r0, #0x16
	beq _022233EC
	add sp, sp, #0x1c
	cmp r0, #0x17
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233EC:
	bl sub_020C42A8
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022233F8:
	ldr r2, [r4, #0x51c]
	mov r1, r6
	mov r0, #0x100
	blx r2
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02223410: .word 0x02250D20
_02223414: .word 0x0224976C
_02223418: .word ov18_02222BF8
_0222341C: .word 0x02250D40
_02223420: .word ov18_02222B88
	arm_func_end ov18_02222BF8

	arm_func_start ov18_02223424
ov18_02223424: ; 0x02223424
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl sub_020C3FA0
	mov r1, #0
	add r2, sp, #0
	mov r3, r1
_02223440:
	ldrb r0, [r2], #1
	add r1, r1, #1
	cmp r1, #6
	add r3, r3, r0
	blt _02223440
	ldr r1, _02223484 ; =0x027FFC3C
	ldr r0, _02223488 ; =0xCCCCCCCD
	ldr r1, [r1, #0]
	mov r2, #0x14
	add r1, r3, r1
	rsb r3, r1, r1, lsl #3
	umull r1, r0, r3, r0
	mov r0, r0, lsr #4
	umull r0, r1, r2, r0
	sub r0, r3, r0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02223484: .word 0x027FFC3C
_02223488: .word 0xCCCCCCCD
	arm_func_end ov18_02223424

	arm_func_start ov18_0222348C
ov18_0222348C: ; 0x0222348C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _02223664 ; =0x02250D20
	mov sb, r1
	ldr r1, [r4, #0xc]
	mov r8, r2
	cmp r1, #0
	addne r1, r1, #0x1300
	ldrneh r1, [r1, #0x16]
	mov r7, r3
	cmpne r1, #0
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r0, #0x1f
	bic r4, r0, #0x1f
	add r0, r4, #0x1f
	add r0, r0, #0x1e00
	cmp r7, #0x10000
	bic r5, r0, #0x1f
	bne _022234E0
	bl sub_020CEB20
	mov r7, r0
_022234E0:
	bl sub_020C3D98
	ldr r3, _02223668 ; =0x0000FFFF
	ldr r1, _0222366C ; =0x0224976C
	mov r2, #5
	strh r3, [r1, #6]
	strh r2, [r1]
	mov r2, #0x28
	strh r2, [r1, #2]
	mov r6, r0
	strh r2, [r1, #4]
	mov r2, #1
	ldr r0, [sp, #0x20]
	ldr r3, _02223664 ; =0x02250D20
	str r2, [r1, #0xc]
	strh r0, [r3]
	str r4, [r3, #8]
	mov r1, r4
	mov r0, #0
	mov r2, #0x1e00
	str r5, [r3, #0xc]
	bl sub_020C4B4C
	mov r1, r5
	mov r0, #0
	mov r2, #0x1340
	bl sub_020C4AF0
	ldrb r0, [sb, #1]
	add r2, r4, #0x530
	mov r1, #0
	cmp r0, #0
	ble _02223574
_02223558:
	add r0, sb, r1, lsl #1
	ldrh r0, [r0, #2]
	add r1, r1, #1
	strh r0, [r2], #2
	ldrb r0, [sb, #1]
	cmp r1, r0
	blt _02223558
_02223574:
	add r0, r4, #0x138
	add r3, r0, #0x400
	ldr r0, _0222366C ; =0x0224976C
	mov ip, #0
	ldr r1, [r0, #8]
_02223588:
	ldrh r2, [r1]
	cmp r2, #0
	beq _022235AC
	add r1, r1, #2
	add ip, ip, #1
	str r1, [r0, #8]
	cmp ip, #0x10
	strh r2, [r3], #2
	blt _02223588
_022235AC:
	mov r0, sb
	add r1, r5, #0x1300
	mov r2, #0x16
	bl sub_020C4DB0
	ldrb r0, [sb, #1]
	cmp r0, #0xa
	bhs _022235D8
	add r0, r5, r0, lsl #1
	add r0, r0, #0x1300
	mov r1, #0
	strh r1, [r0, #2]
_022235D8:
	add r0, r4, #0x500
	mov r1, #0x100
	strh r1, [r0]
	mov r1, #8
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	mov r1, #1
	strh r1, [r0, #0x2c]
	add r0, r5, #0x400
	str r0, [r4, #0x504]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x12]
	strh r1, [r4, #0x16]
	strh r2, [r4, #0x14]
	str r8, [r4, #8]
	strh r7, [r4, #0xc]
	bl ov18_02223424
	add r0, r0, #0xc8
	strh r0, [r4, #0x18]
	mov r0, #0xf
	strh r0, [r4, #0x10]
	mov r3, #0
	strb r3, [r4, #0x50c]
	strb r3, [r4, #0x50d]
	add r1, r5, #0x1300
	mov r2, #1
	mov r0, r6
	strh r2, [r1, #0x16]
	add r1, r5, #0x1000
	str r3, [r1, #0x31c]
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02223664: .word 0x02250D20
_02223668: .word 0x0000FFFF
_0222366C: .word 0x0224976C
	arm_func_end ov18_0222348C

	arm_func_start ov18_02223670
ov18_02223670: ; 0x02223670
	ldr r3, _022236D8 ; =0x000001FE
	cmp r0, r3
	bhi _02223684
	cmp r0, #0xe4
	bhs _0222368C
_02223684:
	mov r0, #0
	bx lr
_0222368C:
	cmp r1, #0x10
	bhi _0222369C
	cmp r1, #8
	bhs _022236A4
_0222369C:
	mov r0, #0
	bx lr
_022236A4:
	add r0, r0, #0x26
	mov r0, r0, lsl #2
	add r1, r1, #0x20
	add r0, r0, #0x4a
	mov r1, r1, lsl #2
	add r3, r0, #0x100
	add r0, r1, #0x70
	mla r1, r2, r0, r3
	ldr r0, _022236DC ; =0x000015E0
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	bx lr
	; .align 2, 0
_022236D8: .word 0x000001FE
_022236DC: .word 0x000015E0
	arm_func_end ov18_02223670

	arm_func_start ov18_022236E0
ov18_022236E0: ; 0x022236E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020C3D98
	ldr r1, _02223774 ; =0x02250D20
	mov r6, r0
	ldr r1, [r1, #8]
	ldrb r1, [r1, #0x50d]
	cmp r1, #0
	beq _02223714
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02223714:
	mov r0, r5
	mov r2, r4
	mov r1, #8
	bl ov18_02223670
	cmp r0, #0
	bne _0222373C
	mov r0, r6
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0222373C:
	ldr r2, _02223774 ; =0x02250D20
	mov r0, r6
	ldr r1, [r2, #8]
	mov r3, #8
	strh r4, [r1, #0x10]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r5, [r1]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #2]
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02223774: .word 0x02250D20
	arm_func_end ov18_022236E0

	arm_func_start ov18_02223778
ov18_02223778: ; 0x02223778
	stmfd sp!, {r4, lr}
	ldr r2, _02223848 ; =0x02250D20
	mov r3, #0
	ldr r1, [r2, #8]
	mov r0, #0xa
	add r1, r1, #0x500
	strh r3, [r1, #0x28]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x2a]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x26]
	ldr r1, [r2, #8]
	add r1, r1, #0x500
	strh r3, [r1, #0x48]
	bl ov18_02223CF4
	ldr r4, _02223848 ; =0x02250D20
	ldr r0, [r4, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _02223820
_022237D4:
	ldrh r2, [r4]
	ldmib r4, {r0, r1}
	ldr r1, [r1, #0x508]
	bl sub_020CECC8
	cmp r0, #4
	beq _022237D4
	cmp r0, #2
	movne r0, #8
	ldmneia sp!, {r4, pc}
	ldr r0, _02223848 ; =0x02250D20
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x508]
	bl sub_020CE478
	ldr r0, _02223848 ; =0x02250D20
	mov r2, #1
	ldr r1, [r0, #8]
	mov r0, #0
	strb r2, [r1, #0x50d]
	ldmia sp!, {r4, pc}
_02223820:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x508]
	bl sub_020CE478
	mov r0, r4
	ldr r0, [r0, #8]
	mov r1, #1
	strb r1, [r0, #0x50d]
	bl ov18_0222229C
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02223848: .word 0x02250D20
	arm_func_end ov18_02223778

	arm_func_start ov18_0222384C
ov18_0222384C: ; 0x0222384C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r3, _02223A1C ; =0x02250D20
	mov r4, r0
	ldr r0, [r3, #8]
	ldr r2, _02223A20 ; =0x000069C0
	strh r5, [r0, #0x32]
	ldr r5, [r3, #0xc]
	mov r0, #0
	add r1, r5, #0x1f
	add r1, r1, #0x7d00
	bic r1, r1, #0x1f
	str r1, [r3, #4]
	add r1, r5, #0x1000
	ldr r6, [r1, #0x4e4]
	add r1, r5, #0x1340
	bl sub_020C4AF0
	mov r0, r6
	bl ov18_0221F84C
	ldr r1, _02223A1C ; =0x02250D20
	ldr r0, [r1, #8]
	ldr r2, [r1, #0xc]
	add r0, r0, #0x500
	ldrh r3, [r0]
	add r0, r2, #0x1000
	sub r2, r3, #6
	str r2, [r0, #0x318]
	ldr r0, [r1, #8]
	add r0, r0, #0x500
	ldrh r0, [r0, #2]
	bl ov18_022243B0
	ldr r0, _02223A1C ; =0x02250D20
	ldr r0, [r0, #0xc]
	add r0, r0, #0x138
	add r0, r0, #0x1400
	bl ov18_022243E0
	mov r5, #0
	ldr r2, _02223A1C ; =0x02250D20
	mov r0, r5
	mvn r3, #0
_022238F0:
	ldr r1, [r2, #0xc]
	add r1, r1, r5, lsl #2
	add r1, r1, #0x1000
	str r0, [r1, #0x4e8]
	ldr r1, [r2, #0xc]
	add r1, r1, r5
	add r1, r1, #0x1000
	add r5, r5, #1
	strb r3, [r1, #0x526]
	cmp r5, #0xf
	blt _022238F0
	ldr r3, _02223A1C ; =0x02250D20
	ldr r2, _02223A24 ; =0x00005D40
	ldr r1, [r3, #0xc]
	add r1, r1, #0x1000
	strb r0, [r1, #0x524]
	ldr r1, [r3, #0xc]
	add r1, r1, #0x388
	add r1, r1, #0x1400
	bl sub_020C4AF0
	ldr r0, _02223A1C ; =0x02250D20
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x1e
	add r0, r0, #0x354
	add r0, r0, #0x1400
	bl sub_020C4CF4
	ldr r1, _02223A1C ; =0x02250D20
	mov r2, #1
	ldr r0, [r1, #8]
	ldr r3, _02223A28 ; =ov18_0221FAA0
	add r0, r0, #0x500
	strh r2, [r0, #0x24]
	ldr r0, [r1, #8]
	ldr r2, _02223A2C ; =ov18_02222330
	str r3, [r0, #0x51c]
	ldr r0, [r1, #8]
	str r2, [r0, #0x508]
	ldr r2, [r1, #8]
	add r0, r2, #0x500
	ldrh r0, [r0]
	strh r0, [r2, #0x34]
	ldr r0, [r1, #8]
	ldrh r2, [r0, #0x34]
	add r0, r0, #0x500
	add r2, r2, #0x23
	bic r2, r2, #0x1f
	strh r2, [r0, #0x18]
	ldr r2, [r1, #8]
	add r0, r2, #0x500
	ldrh r0, [r0, #2]
	strh r0, [r2, #0x36]
	ldr r0, [r1, #8]
	ldrh r1, [r0, #0x36]
	add r0, r0, #0x500
	add r1, r1, #0xe
	rsb r1, r1, r1, lsl #4
	add r1, r1, #0x29
	bic r1, r1, #0x1f
	mov r1, r1, lsl #1
	strh r1, [r0, #0x1a]
	bl ov18_02221BFC
	bl ov18_02223778
	mov r5, r0
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0xf
	mov r1, #1
	bl sub_020C64A8
	ldr r1, _02223A1C ; =0x02250D20
	ldr r1, [r1, #0xc]
	add r1, r1, #0x7000
	str r0, [r1, #0x4c8]
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02223A1C: .word 0x02250D20
_02223A20: .word 0x000069C0
_02223A24: .word 0x00005D40
_02223A28: .word ov18_0221FAA0
_02223A2C: .word ov18_02222330
	arm_func_end ov18_0222384C

	arm_func_start ov18_02223A30
ov18_02223A30: ; 0x02223A30
	ldr r1, _02223A4C ; =0x02250D20
	ldr ip, _02223A50 ; =ov18_0222384C
	ldr r1, [r1, #0xc]
	mov r2, #1
	add r1, r1, #0x1000
	str r2, [r1, #0x320]
	bx ip
	; .align 2, 0
_02223A4C: .word 0x02250D20
_02223A50: .word ov18_0222384C
	arm_func_end ov18_02223A30

	arm_func_start ov18_02223A54
ov18_02223A54: ; 0x02223A54
	stmfd sp!, {r4, lr}
	ldr r0, _02223A88 ; =0x02250D20
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x508]
	bl sub_020CED50
	mov r4, r0
	mov r1, r4
	mov r0, #1
	bl ov18_02223ED8
	cmp r4, #2
	moveq r4, #0
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02223A88: .word 0x02250D20
	arm_func_end ov18_02223A54

	arm_func_start ov18_02223A8C
ov18_02223A8C: ; 0x02223A8C
	ldr ip, _02223A94 ; =ov18_02223A54
	bx ip
	; .align 2, 0
_02223A94: .word ov18_02223A54
	arm_func_end ov18_02223A8C

	arm_func_start ov18_02223A98
ov18_02223A98: ; 0x02223A98
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	bl sub_020C3D98
	ldr r1, _02223B24 ; =0x02250D20
	mov r4, r0
	ldr r2, [r1, #8]
	ldrb r0, [r2, #0x50d]
	cmp r0, #0
	bne _02223AC8
	mov r0, #0
	bl ov18_022222EC
	b _02223B14
_02223AC8:
	add r0, r2, #0x500
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	bne _02223B14
	mov r0, #0
	str r0, [r2, #0x5e4]
	ldr r0, [r1, #8]
	mov r1, r5
	add r0, r0, #0x500
	strh r1, [r0, #0x26]
	bl ov18_022241BC
	cmp r0, #0
	beq _02223B0C
	ldr r0, _02223B28 ; =ov18_02223A8C
	bl ov18_02224368
	mov r5, #0
	b _02223B14
_02223B0C:
	bl ov18_02223A54
	mov r5, r0
_02223B14:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02223B24: .word 0x02250D20
_02223B28: .word ov18_02223A8C
	arm_func_end ov18_02223A98

	arm_func_start ov18_02223B2C
ov18_02223B2C: ; 0x02223B2C
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _02223B64 ; =0x02250D20
	mov r4, r0
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x320]
	cmp r0, #0
	bne _02223B54
	bl sub_020C42A8
_02223B54:
	bl ov18_02223A98
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02223B64: .word 0x02250D20
	arm_func_end ov18_02223B2C

	arm_func_start ov18_02223B68
ov18_02223B68: ; 0x02223B68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, _02223CE8 ; =ov18_02222330
	mov r1, r5
	bl sub_020CF2E8
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0x10
	ldmhsia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _02223CEC ; =0x02250D20
	sub r4, r5, #1
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r0, r0, r4, lsl #1
	add r0, r0, #0x1400
	strh r1, [r0, #0x8a]
	ldr r0, [r2, #0xc]
	mov r2, #4
	add r0, r0, #0xa8
	add r0, r0, #0x1400
	add r0, r0, r4, lsl #2
	bl sub_020C4CF4
	ldr r0, _02223CEC ; =0x02250D20
	mov r2, #0x16
	ldr r0, [r0, #0xc]
	mov r1, #0
	add r0, r0, #0x1340
	mla r0, r4, r2, r0
	bl sub_020C4CF4
	mov r0, r5
	bl ov18_02224400
	ldr ip, _02223CEC ; =0x02250D20
	mov r2, #0
	ldr r0, [ip, #0xc]
	sub r1, r2, #1
	add r0, r0, r4, lsl #1
	add r0, r0, #0x1700
	strh r2, [r0, #0x54]
	ldr r3, [ip, #0xc]
	add r0, r3, r4
	add r0, r0, #0x1500
	ldrsb r2, [r0, #0x26]
	cmp r2, r1
	beq _02223C88
	ldr r0, _02223CF0 ; =0x000005D4
	and r1, r2, #0xff
	mul r0, r1, r0
	add r1, r3, r0
	add r3, r1, #0x1d00
	mov r2, #1
	ldrh r6, [r3, #0x4e]
	mvn r1, r2, lsl r5
	and r6, r6, r1
	strh r6, [r3, #0x4e]
	ldr r3, [ip, #0xc]
	sub r6, r2, #2
	add r3, r3, r0
	add r3, r3, #0x1d00
	ldrh r7, [r3, #0x50]
	mov lr, r4
	orr r2, r7, r2, lsl r5
	strh r2, [r3, #0x50]
	ldr r2, [ip, #0xc]
	add r2, r2, lr
	add r2, r2, #0x1000
	strb r6, [r2, #0x526]
	ldr r2, [ip, #0xc]
	add r0, r2, r0
	add r0, r0, #0x1d00
	ldrh r2, [r0, #0x4c]
	and r1, r2, r1
	strh r1, [r0, #0x4c]
_02223C88:
	ldr r1, _02223CEC ; =0x02250D20
	mov ip, #1
	ldr r2, [r1, #0xc]
	add r0, r2, #0x1500
	ldrh r0, [r0, #0x36]
	tst r0, ip, lsl r5
	beq _02223CCC
	add r0, r2, #0x1000
	ldrb r3, [r0, #0x535]
	mvn r2, ip, lsl r5
	sub r3, r3, #1
	strb r3, [r0, #0x535]
	ldr r0, [r1, #0xc]
	add r0, r0, #0x1500
	ldrh r1, [r0, #0x36]
	and r1, r1, r2
	strh r1, [r0, #0x36]
_02223CCC:
	ldr r0, _02223CEC ; =0x02250D20
	mov r1, #0
	ldr r0, [r0, #0xc]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x4e8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223CE8: .word ov18_02222330
_02223CEC: .word 0x02250D20
_02223CF0: .word 0x000005D4
	arm_func_end ov18_02223B68

	arm_func_start ov18_02223CF4
ov18_02223CF4: ; 0x02223CF4
	ldr r1, _02223D00 ; =0x02250D20
	strh r0, [r1, #0x26]
	bx lr
	; .align 2, 0
_02223D00: .word 0x02250D20
	arm_func_end ov18_02223CF4

	arm_func_start ov18_02223D04
ov18_02223D04: ; 0x02223D04
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldrh r4, [sp, #0x18]
	mov r3, r2
	mov r2, r1
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	mov r4, #3
	mov r1, #0
	str r4, [sp, #8]
	bl sub_020CF64C
	mov r4, r0
	mov r1, r4
	mov r0, #0xf
	bl ov18_02223ED8
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov18_02223D04

	arm_func_start ov18_02223D50
ov18_02223D50: ; 0x02223D50
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, _02223E28 ; =0x02250D20
	mov r3, r1, lsl #0x10
	ldr r5, [ip, #8]
	mov ip, r2, lsl #0x10
	add lr, r5, #0x500
	ldrh r4, [lr, #0x28]
	mov r1, r0
	mov r2, r3, lsr #0x10
	cmp r4, #0
	ldrneh r0, [lr, #0x26]
	mov r4, ip, lsr #0x10
	cmpne r0, #1
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [lr, #0x24]
	cmp r0, #1
	beq _02223DA4
	cmp r0, #2
	beq _02223DEC
	b _02223E20
_02223DA4:
	ldrh r0, [lr, #0x2c]
	cmp r0, #0
	moveq r0, #0x3e8
	movne r0, #0
	mov r3, r0, lsl #0x10
	str r4, [sp]
	ldr r0, [r5, #0x508]
	mov r3, r3, lsr #0x10
	bl ov18_02223D04
	cmp r0, #2
	bne _02223DE0
	ldr r1, _02223E28 ; =0x02250D20
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_02223DE0:
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02223DEC:
	ldr r0, _02223E2C ; =ov18_02222BF8
	mov r3, #0
	str r4, [sp]
	bl ov18_02223D04
	cmp r0, #2
	bne _02223E14
	ldr r1, _02223E28 ; =0x02250D20
	mov r2, #1
	ldr r1, [r1, #8]
	strb r2, [r1, #0x50c]
_02223E14:
	cmp r0, #2
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02223E20:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02223E28: .word 0x02250D20
_02223E2C: .word ov18_02222BF8
	arm_func_end ov18_02223D50

	arm_func_start ov18_02223E30
ov18_02223E30: ; 0x02223E30
	ldr r0, _02223E40 ; =0x02250D20
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
_02223E40: .word 0x02250D20
	arm_func_end ov18_02223E30

	arm_func_start ov18_02223E44
ov18_02223E44: ; 0x02223E44
	ldr r0, _02223E54 ; =0x02250D20
	ldr r0, [r0, #8]
	ldrh r0, [r0, #0xc]
	bx lr
	; .align 2, 0
_02223E54: .word 0x02250D20
	arm_func_end ov18_02223E44

	arm_func_start ov18_02223E58
ov18_02223E58: ; 0x02223E58
	ldr r0, _02223EB4 ; =0x02250D20
	ldr r1, [r0, #8]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	ldrh r0, [r1, #0xe]
	movne r2, #2
	moveq r2, #0
	cmp r0, #0
	movne r3, #1
	ldrh r0, [r1, #0x14]
	moveq r3, #0
	cmp r0, #0
	movne ip, #4
	ldrh r0, [r1, #0x16]
	moveq ip, #0
	cmp r0, #0
	movne r1, #8
	orr r0, r3, r2
	moveq r1, #0
	orr r0, ip, r0
	orr r0, r1, r0
	and r0, r0, #0xff
	bx lr
	; .align 2, 0
_02223EB4: .word 0x02250D20
	arm_func_end ov18_02223E58

	arm_func_start ov18_02223EB8
ov18_02223EB8: ; 0x02223EB8
	ldr r0, _02223ED4 ; =0x02250D20
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x50d]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_02223ED4: .word 0x02250D20
	arm_func_end ov18_02223EB8

	arm_func_start ov18_02223ED8
ov18_02223ED8: ; 0x02223ED8
	stmfd sp!, {r3, lr}
	cmp r1, #2
	cmpne r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _02223F0C ; =0x02250D20
	strh r0, [sp]
	ldr r0, [r2, #8]
	strh r1, [sp, #2]
	ldr r2, [r0, #0x51c]
	add r1, sp, #0
	mov r0, #0xff
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02223F0C: .word 0x02250D20
	arm_func_end ov18_02223ED8

	arm_func_start ov18_02223F10
ov18_02223F10: ; 0x02223F10
	ldr ip, _02223F20 ; =FUN_020C4CF4
	mov r1, #0
	mov r2, #0x70
	bx ip
	; .align 2, 0
_02223F20: .word sub_020C4CF4
	arm_func_end ov18_02223F10

	arm_func_start ov18_02223F24
ov18_02223F24: ; 0x02223F24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	bl sub_020C3D98
	add r6, r4, #0x30
	mov r5, r0
	add r4, r4, #0x70
_02223F48:
	cmp r6, r4
	blo _02223F54
	bl sub_020C42A8
_02223F54:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _02223F78
	str sb, [r6]
	str r8, [r6, #4]
	ldr r0, [sp, #0x20]
	str r7, [r6, #8]
	str r0, [r6, #0xc]
	b _02223F80
_02223F78:
	add r6, r6, #0x10
	b _02223F48
_02223F80:
	mov r0, r5
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov18_02223F24

	arm_func_start ov18_02223F8C
ov18_02223F8C: ; 0x02223F8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r4, #0
	bl sub_020C3D98
	add r2, sb, #0x30
	add r1, sb, #0x70
	mov r5, r0
	cmp r2, r1
	bhs _02224014
_02223FBC:
	ldr r0, [r2, #0xc]
	cmp r0, #2
	blo _02224008
	ldr r0, [r2, #0]
	subs r0, r8, r0
	bmi _02224008
	ldr r3, [r2, #4]
	add ip, r0, r6
	cmp ip, r3
	bhi _02224008
	ldr r3, [r2, #8]
	mov r1, r7
	mov r2, r6
	add r0, r3, r0
	bl sub_020C4DB0
	mov r0, #0
	str r0, [sb]
	mov r4, #1
	b _02224014
_02224008:
	add r2, r2, #0x10
	cmp r2, r1
	blo _02223FBC
_02224014:
	mov r0, r5
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov18_02223F8C

	arm_func_start ov18_02224024
ov18_02224024: ; 0x02224024
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
_0222402C:
	bl sub_020C3D98
	ldr r1, [r7, #0xc0]
	mov r5, r0
	cmp r1, #0
	bne _02224068
	mov r6, #0
	mov r4, r6
_02224048:
	mov r0, r7
	mov r1, r6
	bl sub_020C23F4
	mov r0, r4
	bl sub_020C2218
	ldr r0, [r7, #0xc0]
	cmp r0, #0
	beq _02224048
_02224068:
	ldr r4, [r7, #0xc0]
	ldr r1, [r7, #0xc0]
	mov r0, r7
	ldr r1, [r1, #0]
	str r1, [r7, #0xc0]
	ldr r1, [r4, #4]
	mov r1, r1, lsr #1
	bl sub_020C23F4
	mov r0, r5
	bl sub_020C3DAC
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _022240A4
	mov r0, r4
	blx r1
_022240A4:
	bl sub_020C3D98
	mov r5, r0
	mov r0, r7
	ldr r6, [r4, #0xc]
	bl sub_020C249C
	ldr r1, [r7, #0xc0]
	cmp r1, #0
	moveq r1, #0
	beq _022240E8
	ldr r1, [r7, #0xc0]
	ldr r1, [r1, #4]
	cmp r0, r1, lsr #1
	movhs r1, r0
	bhs _022240E8
	ldr r1, [r7, #0xc0]
	ldr r1, [r1, #4]
	mov r1, r1, lsr #1
_022240E8:
	cmp r1, r0
	beq _022240F8
	mov r0, r7
	bl sub_020C23F4
_022240F8:
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	cmp r6, #0
	bic r0, r0, #1
	str r0, [r4, #4]
	beq _0222411C
	mov r0, r4
	blx r6
_0222411C:
	add r0, r7, #0xc4
	cmp r4, r0
	beq _02224134
	mov r0, r5
	bl sub_020C3DAC
	b _0222402C
_02224134:
	bl sub_020C2030
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02224024

	arm_func_start ov18_0222413C
ov18_0222413C: ; 0x0222413C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r6, r1
	bl sub_020C3D98
	ldr r1, _022241B4 ; =0x02250D60
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _022241A4
	add r0, r5, #0xc4
	str r5, [r1, #0]
	bl ov18_022241D8
	sub r0, r6, #0xe4
	mov lr, #0
	bic ip, r0, #3
	add r3, r5, #0xe4
	str lr, [r5, #0xc0]
	ldr r1, _022241B8 ; =ov18_02224024
	mov r0, r5
	mov r2, r5
	add r3, r3, ip
	stmia sp, {ip, lr}
	bl sub_020C1F34
	mov r0, r5
	bl sub_020C22D0
_022241A4:
	mov r0, r4
	bl sub_020C3DAC
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022241B4: .word 0x02250D60
_022241B8: .word ov18_02224024
	arm_func_end ov18_0222413C

	arm_func_start ov18_022241BC
ov18_022241BC: ; 0x022241BC
	ldr r0, _022241D4 ; =0x02250D60
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_022241D4: .word 0x02250D60
	arm_func_end ov18_022241BC

	arm_func_start ov18_022241D8
ov18_022241D8: ; 0x022241D8
	ldr ip, _022241E8 ; =FUN_020C4CF4
	mov r1, #0
	mov r2, #0x20
	bx ip
	; .align 2, 0
_022241E8: .word sub_020C4CF4
	arm_func_end ov18_022241D8

	arm_func_start ov18_022241EC
ov18_022241EC: ; 0x022241EC
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov18_022241EC

	arm_func_start ov18_02224204
ov18_02224204: ; 0x02224204
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _02224364 ; =0x02250D60
	mov sb, r0
	ldr r4, [r4, #0]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl ov18_022241BC
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0x1f
	bls _02224288
	mov r0, r4
	bl sub_020C249C
	cmp r6, #0x20
	bne _02224264
	cmp r0, #0
	subne r6, r0, #1
	moveq r6, #0
	b _02224288
_02224264:
	cmp r6, #0x21
	bne _0222427C
	cmp r0, #0x1f
	addlo r6, r0, #1
	movhs r6, #0x1f
	b _02224288
_0222427C:
	cmp r6, #0x22
	moveq r6, r0
	movne r6, #0x1f
_02224288:
	bl sub_020C3D98
	ldr r1, [sb, #4]
	mov r5, r0
	bic r0, r1, #1
	orr r1, r0, #1
	and r0, r1, #1
	str r1, [sb, #4]
	orr r0, r0, r6, lsl #1
	stmib sb, {r0, r8}
	str r7, [sb, #0xc]
	ldr r0, [r4, #0xc0]
	cmp r0, #0
	add r0, r4, #0xc4
	bne _022242E0
	cmp sb, r0
	ldreq r0, _02224364 ; =0x02250D60
	moveq r1, #0
	streq r1, [r0]
	mov r0, r4
	str sb, [r4, #0xc0]
	bl sub_020C22D0
	b _02224358
_022242E0:
	cmp sb, r0
	ldr r1, [r4, #0xc0]
	bne _0222431C
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _02224308
_022242F8:
	mov r1, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022242F8
_02224308:
	ldr r0, _02224364 ; =0x02250D60
	str sb, [r1]
	mov r1, #0
	str r1, [r0, #0]
	b _02224358
_0222431C:
	ldr r0, [r1, #4]
	cmp r6, r0, lsr #1
	strlo sb, [r4, #0xc0]
	strlo r1, [sb]
	blo _02224358
	b _02224338
_02224334:
	mov r1, r2
_02224338:
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02224350
	ldr r0, [r2, #4]
	cmp r6, r0, lsr #1
	bhs _02224334
_02224350:
	str r2, [sb]
	str sb, [r1]
_02224358:
	mov r0, r5
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02224364: .word 0x02250D60
	arm_func_end ov18_02224204

	arm_func_start ov18_02224368
ov18_02224368: ; 0x02224368
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	mov r4, r0
	bl ov18_022241BC
	cmp r0, #0
	beq _022243A0
	ldr r0, _022243AC ; =0x02250D60
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, r5
	mov r3, r1
	add r0, r0, #0xc4
	bl ov18_02224204
_022243A0:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022243AC: .word 0x02250D60
	arm_func_end ov18_02224368

	arm_func_start ov18_022243B0
ov18_022243B0: ; 0x022243B0
	stmfd sp!, {r3, lr}
	ldr r2, _022243DC ; =0x02250D64
	sub r1, r0, #2
	mov r0, #0x1e
	str r1, [r2, #8]
	bl sub_020E1F6C
	ldr r1, _022243DC ; =0x02250D64
	mov r2, #0x1e
	str r0, [r1, #0xc]
	str r2, [r1, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022243DC: .word 0x02250D64
	arm_func_end ov18_022243B0

	arm_func_start ov18_022243E0
ov18_022243E0: ; 0x022243E0
	ldr r3, _022243F8 ; =0x02250D64
	ldr ip, _022243FC ; =FUN_020C4CF4
	mov r1, #0
	mov r2, #0x21c
	str r0, [r3, #4]
	bx ip
	; .align 2, 0
_022243F8: .word 0x02250D64
_022243FC: .word sub_020C4CF4
	arm_func_end ov18_022243E0

	arm_func_start ov18_02224400
ov18_02224400: ; 0x02224400
	stmfd sp!, {r4, lr}
	ldr r1, _02224440 ; =0x02250D64
	ldr r1, [r1, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	sub r4, r0, #1
	add r0, r1, r4, lsl #5
	mov r1, #0
	mov r2, #0x1e
	bl sub_020C4CF4
	ldr r0, _02224440 ; =0x02250D64
	mov r1, #0
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0x1e0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02224440: .word 0x02250D64
	arm_func_end ov18_02224400

	arm_func_start ov18_02224444
ov18_02224444: ; 0x02224444
	ldrb r2, [r0]
	mov r3, r1
	add r3, r3, #1
	strb r2, [r1]
	ldrb r1, [r0]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _022244B8
_02224464: ; jump table
	b _022244B8 ; case 0
	b _022244C0 ; case 1
	b _022244C0 ; case 2
	b _022244C0 ; case 3
	b _02224480 ; case 4
	b _022244C0 ; case 5
	b _022244C0 ; case 6
_02224480:
	ldrh r1, [r0, #2]
	strb r1, [r3]
	ldrh r1, [r0, #2]
	and r1, r1, #0xff00
	mov r1, r1, asr #8
	strb r1, [r3, #1]
	ldrh r1, [r0, #4]
	strb r1, [r3, #2]
	ldrh r0, [r0, #4]
	and r0, r0, #0xff00
	mov r0, r0, asr #8
	strb r0, [r3, #3]
	add r3, r3, #4
	b _022244C0
_022244B8:
	mov r0, #0
	bx lr
_022244C0:
	mov r0, r3
	bx lr
	arm_func_end ov18_02224444

	arm_func_start ov18_022244C8
ov18_022244C8: ; 0x022244C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6]
	mov r5, r1
	mov r4, r2
	strb r0, [r5]
	cmp r0, #7
	beq _022244FC
	cmp r0, #8
	beq _02224560
	cmp r0, #9
	beq _02224588
	b _022245D0
_022244FC:
	mov r0, r4
	bl ov18_02224670
	cmp r0, #0
	beq _02224520
	ldr r0, _022245E0 ; =0x02250D64
	sub r1, r4, #1
	ldr r0, [r0, #4]
	add r0, r0, r1, lsl #5
	ldmia sp!, {r4, r5, r6, pc}
_02224520:
	ldrb r2, [r6, #1]
	ldr r0, _022245E0 ; =0x02250D64
	strb r2, [r5, #2]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	ldr r2, [r0, #8]
	add r0, r6, #2
	add r1, r5, #3
	bl sub_020C4DB0
	mov r0, r5
	mov r1, r4
	bl ov18_022245E4
	mov r4, r0
	b _022245D8
_02224560:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	strh r0, [r5, #2]
	ldrb r0, [r6, #2]
	ldrh r1, [r5, #2]
	mov r0, r0, lsl #8
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [r5, #2]
	b _022245D8
_02224588:
	ldrb r0, [r6, #1]
	add r4, r6, #3
	ldr r1, _022245E0 ; =0x02250D64
	strh r0, [r5, #2]
	ldrb r2, [r6, #2]
	ldrh r3, [r5, #2]
	mov r0, r4
	mov r2, r2, lsl #8
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r5, #2]
	ldr r2, [r1, #8]
	add r1, r5, #4
	bl sub_020C4DB0
	ldr r0, _022245E0 ; =0x02250D64
	ldr r0, [r0, #8]
	add r4, r4, r0
	b _022245D8
_022245D0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_022245D8:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022245E0: .word 0x02250D64
	arm_func_end ov18_022244C8

	arm_func_start ov18_022245E4
ov18_022245E4: ; 0x022245E4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _0222466C ; =0x02250D64
	mov r6, r1
	ldr r3, [r2, #4]
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r5, [r0, #2]
	ldr r1, [r2, #0xc]
	cmp r5, r1
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	sub r4, r6, #1
	ldr r2, [r2, #8]
	add r1, r3, r4, lsl #5
	mla r1, r5, r2, r1
	add r0, r0, #3
	bl sub_020C4DB0
	ldr r0, _0222466C ; =0x02250D64
	mov r1, #1
	ldr r2, [r0, #4]
	mov r0, r6
	add r3, r2, #0x1e0
	ldr r2, [r3, r4, lsl #2]
	orr r1, r2, r1, lsl r5
	str r1, [r3, r4, lsl #2]
	bl ov18_02224670
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _0222466C ; =0x02250D64
	ldr r0, [r0, #4]
	add r0, r0, r4, lsl #5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222466C: .word 0x02250D64
	arm_func_end ov18_022245E4

	arm_func_start ov18_02224670
ov18_02224670: ; 0x02224670
	ldr r1, _022246C0 ; =0x02250D64
	mov r2, #0
	ldr ip, [r1, #0xc]
	cmp ip, #0
	ble _022246B8
	ldr r1, [r1, #4]
	sub r0, r0, #1
	add r0, r1, r0, lsl #2
	ldr r3, [r0, #0x1e0]
	mov r1, #1
_02224698:
	tst r3, r1, lsl r2
	moveq r0, #0
	bxeq lr
	add r0, r2, #1
	mov r0, r0, lsl #0x10
	cmp ip, r0, lsr #16
	mov r2, r0, lsr #0x10
	bgt _02224698
_022246B8:
	mov r0, #1
	bx lr
	; .align 2, 0
_022246C0: .word 0x02250D64
	arm_func_end ov18_02224670