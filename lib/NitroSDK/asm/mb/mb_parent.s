	.include "macros/function.inc"
	.include "include/mb_parent.inc"

	.extern Unk_ov18_02250D2C

	.text


	arm_func_start ov18_0221F84C
ov18_0221F84C: ; 0x0221F84C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _0221F870 ; =0x02250D2C
	ldr r1, [r1, #0]
	add r1, r1, #0x1000
	str r4, [r1, #0x4e4]
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0221F870: .word Unk_ov18_02250D2C
	arm_func_end ov18_0221F84C

	arm_func_start ov18_0221F874
ov18_0221F874: ; 0x0221F874
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
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
	bl MI_CpuCopy8
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, _0221F8F4 ; =0x02250D2C
	ldr r0, [r0, #0]
	add r0, r0, #0x72
	add r0, r0, #0x1700
	ldmia sp!, {r3, r4, r5, pc}
_0221F8E4:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0221F8F4: .word Unk_ov18_02250D2C
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
_0221F948: .word Unk_ov18_02250D2C
	arm_func_end ov18_0221F8F8

	arm_func_start ov18_0221F94C
ov18_0221F94C: ; 0x0221F94C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl OS_DisableInterrupts
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
	bl OS_RestoreInterrupts
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
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0221FA18:
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0221FA28: .word Unk_ov18_02250D2C
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
_0221FA74: .word Unk_ov18_02250D2C
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
_0221FA9C: .word Unk_ov18_02250D2C
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
	bl MI_CpuFill8
	ldr r0, _0221FF38 ; =0x02250D2C
	ldrh r1, [r4, #0x10]
	ldr r0, [r0, #0]
	mov r2, #0x16
	add r0, r0, #0x1340
	sub r1, r1, #1
	mla r0, r1, r2, r0
	mov r1, #0
	bl MI_CpuFill8
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
	bl MIi_CpuClearFast
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
_0221FF38: .word Unk_ov18_02250D2C
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
	bl MI_CpuCopy8
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
	bl MI_CpuCopy8
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
_02220418: .word Unk_ov18_02250D2C
_0222041C: .word 0x000005D4
_02220420: .word Unk_ov18_0224B260
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
	bl WM_ReadMPData
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
_022204C0: .word Unk_ov18_02250D2C
_022204C4: .word 0x000005D4
_022204C8: .word Unk_ov18_0224B260
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
_0222050C: .word Unk_ov18_02250D2C
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
	bl MI_CpuFill8
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
	bl MI_CpuCopy8
_02220680:
	ldr r0, _0222069C ; =0x02250D2C
	mov r1, r5
	ldr r2, [r0, #0]
	mov r0, #0xea
	bl ov18_0222190C
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222069C: .word Unk_ov18_02250D2C
_022206A0: .word Unk_ov18_02249760
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
	bl FS_FindArchive
	movs r6, r0
	add r0, sp, #4
	ldreq r6, [r5, #0x18]
	bl FS_InitFile
	ldr r2, [r4, #0]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r4, #4]
	add r0, sp, #4
	mov r1, r6
	add r3, r2, r3
	bl FS_OpenFileDirect
	cmp r0, #0
	beq _02220724
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl FS_ReadFile
	ldr r1, [r4, #4]
	cmp r1, r0
	moveq r0, #2
	streq r0, [r4, #0xc]
	add r0, sp, #4
	bl FS_CloseFile
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
	bl OS_Terminate
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
_022209DC: .word Unk_ov18_02250D2C
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
	bl MIi_CpuClear16
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
_02220B60: .word Unk_ov18_02250D2C
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
_02220BD8: .word Unk_ov18_0224B260
_02220BDC: .word Unk_ov18_02250D2C
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

	.data


	.global Unk_ov18_02249760
Unk_ov18_02249760: ; 0x02249760
	.incbin "incbin/overlay18_data.bin", 0x0, 0x1



	.bss


	.global Unk_ov18_0224B260
Unk_ov18_0224B260: ; 0x0224B260
	.space 0x4

