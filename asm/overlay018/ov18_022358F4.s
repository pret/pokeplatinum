	.include "macros/function.inc"
	.include "overlay018/ov18_022358F4.inc"

	

	.text


	arm_func_start ov18_022358F4
ov18_022358F4: ; 0x022358F4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	ldr r4, _02235A54 ; =0x02249274
	ldr ip, _02235A58 ; =0x0224925C
	ldmia r4!, {r0, r1, r2, r3}
	add r5, sp, #0xc
	stmia r5!, {r0, r1, r2, r3}
	ldr r4, [r4, #0]
	ldrb lr, [ip, #0xa]
	str r4, [r5, #0]
	ldrb r5, [ip, #8]
	ldrb r4, [ip, #9]
	ldrb r3, [ip, #0xb]
	ldrb r2, [ip, #0xc]
	mov r0, #0x18
	mov r1, #4
	strb r5, [sp, #4]
	strb r4, [sp, #5]
	strb lr, [sp, #6]
	strb r3, [sp, #7]
	strb r2, [sp, #8]
	bl ov18_02245068
	ldr r2, _02235A5C ; =0x02253324
	mov r1, #0
	str r0, [r2, #0]
	add r0, sp, #0
	bl ov18_0222F724
	ldr r0, _02235A5C ; =0x02253324
	ldr r2, [sp]
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, #8
	blx r1
	ldr r0, _02235A5C ; =0x02253324
	ldr r1, _02235A60 ; =0x0224A1C0
	ldr r4, [r0, #0]
	mov r2, #3
	add r0, r4, #8
	bl memcmp
	cmp r0, #0
	movne r0, #3
	strneb r0, [r4, #0x14]
	bne _022359C4
	add r0, r4, #8
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	ldr r0, _02235A5C ; =0x02253324
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x14]
_022359C4:
	bl ov18_02235A68
	ldr r0, [sp]
	add r0, r0, #0xb
	bl ov18_0222BBC0
	ldr r2, [sp]
	add r0, sp, #4
	ldrb r0, [r0, r2]
	mvn r1, #0
	mov r2, #0
	bl ov18_0222B594
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r2, _02235A5C ; =0x02253324
	mov r1, #0x3f
	ldr r2, [r2, #0]
	str r0, [r2, #0]
	mov r0, #0
	bl ov18_02243F60
	ldr r1, _02235A5C ; =0x02253324
	ldr r2, [r1, #0]
	str r0, [r2, #4]
	ldr r0, [r1, #0]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl ov18_0223621C
	bl ov18_02236158
	ldr r0, _02235A64 ; =ov18_02235B24
	bl ov18_0222F6C4
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02235A54: .word Unk_ov18_02249274
_02235A58: .word Unk_ov18_0224925C
_02235A5C: .word Unk_ov18_02253324
_02235A60: .word Unk_ov18_0224A1C0
_02235A64: .word ov18_02235B24
	arm_func_end ov18_022358F4

	arm_func_start ov18_02235A68
ov18_02235A68: ; 0x02235A68
	stmfd sp!, {r3, lr}
	ldr r0, _02235AFC ; =0x0224A1C4
	ldr r1, _02235B00 ; =0x020C0160
	bl ov18_0222B700
	ldr r0, _02235B04 ; =0x0224A1D8
	ldr r1, _02235B08 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02235B0C ; =0x0224A1F0
	ldr r1, _02235B10 ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _02235B14 ; =0x0224A208
	ldr r1, _02235B18 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02235B1C ; =0x04001008
	ldr r1, _02235B20 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235AFC: .word Unk_ov18_0224A1C4
_02235B00: .word 0x020C0160
_02235B04: .word Unk_ov18_0224A1D8
_02235B08: .word 0x020C07EC
_02235B0C: .word Unk_ov18_0224A1F0
_02235B10: .word GX_LoadBGPltt
_02235B14: .word Unk_ov18_0224A208
_02235B18: .word GX_LoadBG2Scr
_02235B1C: .word 0x04001008
_02235B20: .word 0x0400000A
	arm_func_end ov18_02235A68

	arm_func_start ov18_02235B24
ov18_02235B24: ; 0x02235B24
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02235B74 ; =ov18_02235B78
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235B74: .word ov18_02235B78
	arm_func_end ov18_02235B24

	arm_func_start ov18_02235B78
ov18_02235B78: ; 0x02235B78
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222DADC
	mov r0, #0x14
	bl ov18_0223E994
	ldr r0, _02235BFC ; =0x02253324
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _02235BD0
	mov r0, #0
	bl ov18_0222DE60
	mov r0, #0
	bl ov18_0222DE88
	b _02235BF0
_02235BD0:
	mov r0, #0x1a
	bl ov18_02235F44
	cmp r0, #0
	beq _02235BE8
	mov r0, #0
	bl ov18_0222DE74
_02235BE8:
	mov r0, #0
	bl ov18_0222DE88
_02235BF0:
	ldr r0, _02235C00 ; =ov18_02235C04
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235BFC: .word Unk_ov18_02253324
_02235C00: .word ov18_02235C04
	arm_func_end ov18_02235B78

	arm_func_start ov18_02235C04
ov18_02235C04: ; 0x02235C04
	stmfd sp!, {r3, lr}
	bl ov18_0222DE4C
	cmp r0, #0x1f
	ldmeqia sp!, {r3, pc}
	ldr r0, _02235C20 ; =ov18_02235C24
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235C20: .word ov18_02235C24
	arm_func_end ov18_02235C04

	arm_func_start ov18_02235C24
ov18_02235C24: ; 0x02235C24
	stmfd sp!, {r3, lr}
	bl ov18_02235C34
	bl ov18_02235FD8
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02235C24

	arm_func_start ov18_02235C34
ov18_02235C34: ; 0x02235C34
	stmfd sp!, {r3, r4, r5, lr}
	bl ov18_0222DE4C
	mov r4, r0
	cmp r4, #0
	bgt _02235C50
	ldmeqia sp!, {r3, r4, r5, pc}
	b _02235E14
_02235C50:
	sub r0, r4, #0x10
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02235E14
_02235C60: ; jump table
	b _02235C74 ; case 0
	b _02235D1C ; case 1
	b _02235D70 ; case 2
	b _02235D94 ; case 3
	ldmia sp!, {r3, r4, r5, pc} ; case 4
_02235C74:
	ldr r0, _02235F38 ; =0x02253324
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	ldreqb r0, [r1, #0xa]
	cmpeq r0, #0
	beq _02235F2C
	mov r0, #3
	bl ov18_0223E994
	ldr r0, _02235F38 ; =0x02253324
	ldr r2, [r0, #0]
	ldrb r1, [r2, #0x14]
	add r0, r1, r1, lsl #1
	add r0, r0, #2
	add r0, r2, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	subeq r0, r1, #1
	streqb r0, [r2, #0x14]
	ldr r0, _02235F38 ; =0x02253324
	mov r1, #0
	ldr r3, [r0, #0]
	mov r2, #3
	ldrb r0, [r3, #0x14]
	add r3, r3, #8
	add r0, r0, r0, lsl #1
	add r0, r3, r0
	bl MI_CpuFill8
	ldr r0, _02235F38 ; =0x02253324
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	ldreqb r0, [r1, #0xa]
	cmpeq r0, #0
	bne _02235D08
	mov r0, #0
	bl ov18_0222DE60
_02235D08:
	mov r0, #1
	bl ov18_0222DE74
	mov r0, #0
	bl ov18_0222DE88
	b _02235F2C
_02235D1C:
	ldr r0, _02235F38 ; =0x02253324
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	bhs _02235F2C
	add r0, r0, r0, lsl #1
	add r0, r0, #2
	add r0, r1, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _02235F2C
	mov r0, #1
	bl ov18_0223E994
	ldr r1, _02235F38 ; =0x02253324
	mov r0, #0
	ldr r2, [r1, #0]
	ldrb r1, [r2, #0x14]
	add r1, r1, #1
	strb r1, [r2, #0x14]
	bl ov18_0222DE88
	b _02235F2C
_02235D70:
	ldr r0, _02235F38 ; =0x02253324
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #7
	strb r2, [r1, #0x15]
	bl ov18_0223E994
	ldr r0, _02235F3C ; =ov18_02235FDC
	bl ov18_0222F6C4
	ldmia sp!, {r3, r4, r5, pc}
_02235D94:
	bl ov18_022363F8
	cmp r0, #0
	beq _02235DBC
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02235F38 ; =0x02253324
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0x15]
	b _02235DD4
_02235DBC:
	ldr r0, _02235F38 ; =0x02253324
	mov r2, #2
	ldr r1, [r0, #0]
	mov r0, #9
	strb r2, [r1, #0x15]
	bl ov18_0223E994
_02235DD4:
	ldr r1, _02235F38 ; =0x02253324
	mov r3, #3
	ldr r2, [r1, #0]
	ldr r0, _02235F40 ; =0xC1FFFCFF
	strb r3, [r2, #0x14]
	ldr r1, [r1, #0]
	ldr r2, [r1, #4]
	ldr r1, [r2, #0]
	and r0, r1, r0
	orr r0, r0, #0x200
	str r0, [r2, #0]
	bl ov18_0223621C
	bl ov18_02236380
	ldr r0, _02235F3C ; =ov18_02235FDC
	bl ov18_0222F6C4
	ldmia sp!, {r3, r4, r5, pc}
_02235E14:
	ldr r0, _02235F38 ; =0x02253324
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _02235E38
	mov r0, #0x1a
	bl ov18_02235F44
	cmp r0, #0
	bne _02235F2C
_02235E38:
	mov r0, #1
	bl ov18_0223E994
	ldr r0, _02235F38 ; =0x02253324
	ldr r2, [r0, #0]
	ldrb r1, [r2, #0x14]
	add r5, r2, #8
	add lr, r1, r1, lsl #1
	add ip, lr, #2
	ldrb r3, [r5, ip]
	cmp r3, #0
	streqb r4, [r5, ip]
	beq _02235ED0
	add r2, lr, #1
	ldrb r1, [r5, r2]
	cmp r1, #0
	bne _02235EAC
	strb r3, [r5, r2]
	mov r0, #0x1a
	strb r4, [r5, ip]
	bl ov18_02235F44
	cmp r0, #0
	beq _02235ED0
	ldr r0, _02235F38 ; =0x02253324
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	addlo r0, r0, #1
	strlob r0, [r1, #0x14]
	b _02235ED0
_02235EAC:
	strb r1, [r5, lr]
	ldrb r1, [r5, ip]
	strb r1, [r5, r2]
	strb r4, [r5, ip]
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	addlo r0, r0, #1
	strlob r0, [r1, #0x14]
_02235ED0:
	mov r0, #1
	bl ov18_0222DE60
	ldr r0, _02235F38 ; =0x02253324
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bhs _02235EF8
	mov r0, #1
	bl ov18_0222DE88
	b _02235F00
_02235EF8:
	mov r0, #0
	bl ov18_0222DE88
_02235F00:
	ldr r0, _02235F38 ; =0x02253324
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _02235F2C
	mov r0, #0x1a
	bl ov18_02235F44
	cmp r0, #0
	beq _02235F2C
	mov r0, #0
	bl ov18_0222DE74
_02235F2C:
	bl ov18_02236158
	bl ov18_0223621C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02235F38: .word Unk_ov18_02253324
_02235F3C: .word ov18_02235FDC
_02235F40: .word 0xC1FFFCFF
	arm_func_end ov18_02235C34

	arm_func_start ov18_02235F44
ov18_02235F44: ; 0x02235F44
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _02235FD4 ; =0x02253324
	mov r4, r0
	ldr r1, [r1, #0]
	ldrb r0, [r1, #0x14]
	add r3, r1, #8
	add r2, r0, r0, lsl #1
	ldrb r0, [r3, r2]
	cmp r0, #0
	cmpne r0, #0x20
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, pc}
	add r0, r3, r2
	add r1, sp, #0
	mov r2, #3
	bl MI_CpuCopy8
	mov r2, #0
	add r3, sp, #0
	strb r2, [sp, #3]
	mov r0, #0x20
_02235F9C:
	ldrb r1, [r3]
	cmp r1, #0
	bne _02235FB8
	add r2, r2, #1
	cmp r2, #3
	strb r0, [r3], #1
	blt _02235F9C
_02235FB8:
	add r0, sp, #0
	bl atoi
	cmp r0, r4
	movge r0, #1
	movlt r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02235FD4: .word Unk_ov18_02253324
	arm_func_end ov18_02235F44

	arm_func_start ov18_02235FD8
ov18_02235FD8: ; 0x02235FD8
	bx lr
	arm_func_end ov18_02235FD8

	arm_func_start ov18_02235FDC
ov18_02235FDC: ; 0x02235FDC
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02235FF4 ; =ov18_02235FF8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235FF4: .word ov18_02235FF8
	arm_func_end ov18_02235FDC

	arm_func_start ov18_02235FF8
ov18_02235FF8: ; 0x02235FF8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222DE18
	mov r0, #0x15
	bl ov18_0223E994
	ldr r0, _02236024 ; =ov18_02236028
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236024: .word ov18_02236028
	arm_func_end ov18_02235FF8

	arm_func_start ov18_02236028
ov18_02236028: ; 0x02236028
	stmfd sp!, {r3, lr}
	bl ov18_0222DE9C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _022360A4 ; =0x02253324
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _02236058
	ldr r0, _022360A8 ; =ov18_022360B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02236058:
	mov r2, #1
	cmp r0, #2
	mov ip, #0
	sub r3, r2, #2
	bne _02236088
	mov r0, #6
	mov r1, #3
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _022360AC ; =ov18_0223654C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02236088:
	mov r0, #0x47
	mov r1, #2
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _022360B0 ; =ov18_02236270
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022360A4: .word Unk_ov18_02253324
_022360A8: .word ov18_022360B4
_022360AC: .word ov18_0223654C
_022360B0: .word ov18_02236270
	arm_func_end ov18_02236028

	arm_func_start ov18_022360B4
ov18_022360B4: ; 0x022360B4
	stmfd sp!, {r3, lr}
	bl ov18_0222B668
	ldr r0, _02236144 ; =0x02253324
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov18_02245B74
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02236148 ; =0x0224A220
	ldr r1, _0223614C ; =0x020C0160
	bl ov18_0222B700
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	add r0, sp, #0
	mov r1, #0
	bl ov18_0222F724
	ldr r0, [sp]
	mov r1, #1
	cmp r0, #3
	addge r0, r0, #1
	strge r0, [sp]
	mov r0, #2
	bl ov18_0222F6D4
	ldr r1, [sp]
	mov r0, #0
	add r1, r1, #3
	bl ov18_0222F710
	ldr r0, _02236150 ; =ov18_02236BE0
	bl ov18_0222F6C4
	ldr r0, _02236154 ; =0x02253324
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236144: .word Unk_ov18_02253324
_02236148: .word Unk_ov18_0224A220
_0223614C: .word 0x020C0160
_02236150: .word ov18_02236BE0
_02236154: .word Unk_ov18_02253324
	arm_func_end ov18_022360B4

	arm_func_start ov18_02236158
ov18_02236158: ; 0x02236158
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c
	ldr r0, _02236210 ; =0x02253324
	ldr r1, _02236214 ; =0x0224925C
	ldr r0, [r0, #0]
	ldrh r5, [r1, #0xe]
	ldrh r4, [r1, #0x10]
	mov r3, #0xb
	mov r2, #0x10
	ldr r0, [r0, #0]
	mov r1, #0
	strh r5, [sp, #0x14]
	strh r4, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl ov18_02244B5C
	mov r4, #0
	ldr r5, _02236218 ; =0x0224929C
	ldr r6, _02236210 ; =0x02253324
	strh r4, [sp, #0x12]
	mov sb, #2
	mov r8, #0x480
	add r7, sp, #0x10
_022361B4:
	ldr ip, [r6]
	ldrb r1, [r5], #1
	add r0, ip, r4
	ldrb r3, [r0, #8]
	ldrh r0, [sp, #0x1a]
	ldrh r2, [sp, #0x16]
	strh r3, [sp, #0x10]
	stmia sp, {r0, sb}
	str r8, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r3, [sp, #0x18]
	ldr r0, [ip]
	strh r1, [sp, #0x14]
	bl ov18_02244A9C
	add r4, r4, #1
	cmp r4, #0xc
	blt _022361B4
	ldr r0, _02236210 ; =0x02253324
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov18_02244C08
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02236210: .word Unk_ov18_02253324
_02236214: .word Unk_ov18_0224925C
_02236218: .word Unk_ov18_0224929C
	arm_func_end ov18_02236158

	arm_func_start ov18_0223621C
ov18_0223621C: ; 0x0223621C
	ldr r0, _02236264 ; =0x02253324
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0x14]
	ldr r3, [r2, #4]
	cmp r0, #3
	movgt r0, #3
	add r1, r0, r0, lsl #1
	ldr r0, _02236268 ; =0x0224929C
	add r1, r1, #2
	ldrb r2, [r0, r1]
	ldr r1, [r3, #0]
	ldr r0, _0223626C ; =0xFE00FF00
	mov r2, r2, lsl #0x17
	and r0, r1, r0
	orr r0, r0, #0x28
	orr r0, r0, r2, lsr #7
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_02236264: .word Unk_ov18_02253324
_02236268: .word Unk_ov18_0224929C
_0223626C: .word 0xFE00FF00
	arm_func_end ov18_0223621C

	arm_func_start ov18_02236270
ov18_02236270: ; 0x02236270
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	ldr r1, _022362C4 ; =0x02253324
	ldr r2, [r1, #0]
	strb r0, [r2, #0x15]
	ldr r0, [r1, #0]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _022362A0
	cmp r0, #1
	beq _022362AC
	ldmia sp!, {r3, pc}
_022362A0:
	mov r0, #7
	bl ov18_0223E994
	b _022362B4
_022362AC:
	mov r0, #0xe
	bl ov18_0223E994
_022362B4:
	bl ov18_0223FF74
	ldr r0, _022362C8 ; =ov18_022362CC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022362C4: .word Unk_ov18_02253324
_022362C8: .word ov18_022362CC
	arm_func_end ov18_02236270

	arm_func_start ov18_022362CC
ov18_022362CC: ; 0x022362CC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr lr, _0223636C ; =0x02249288
	add ip, sp, #4
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r0, [lr]
	str r0, [ip]
	bl ov18_0223FFCC
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r3, pc}
	ldr r0, _02236370 ; =0x02253324
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	bne _02236334
	ldr r3, [r1, #4]
	ldr r1, _02236374 ; =0xC1FFFCFF
	ldr r2, [r3, #0]
	ldr r0, _02236378 ; =ov18_02235B78
	and r1, r2, r1
	str r1, [r3, #0]
	bl ov18_0222F6C4
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
_02236334:
	add r0, sp, #0
	mov r1, #0
	bl ov18_0222F724
	ldr r0, _02236370 ; =0x02253324
	ldr r2, [sp]
	add r1, sp, #4
	ldr r0, [r0, #0]
	ldr r1, [r1, r2, lsl #2]
	add r0, r0, #8
	blx r1
	ldr r0, _0223637C ; =ov18_022360B4
	bl ov18_0222F6C4
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223636C: .word Unk_ov18_02249288
_02236370: .word Unk_ov18_02253324
_02236374: .word 0xC1FFFCFF
_02236378: .word ov18_02235B78
_0223637C: .word ov18_022360B4
	arm_func_end ov18_022362CC

	arm_func_start ov18_02236380
ov18_02236380: ; 0x02236380
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	ldr r0, _022363F4 ; =0x02253324
	mov r6, r4
	mov r1, #0x20
	mov r2, #0x30
	mov ip, r4
_0223639C:
	ldr r3, [r0, #0]
	mov r5, ip
	add r3, r3, #8
	add lr, r3, r6
_022363AC:
	ldrb r3, [lr, r5]
	cmp r3, #0x30
	cmpne r3, #0x20
	cmpne r3, #0
	bne _022363DC
	cmp r5, #2
	moveq r3, r2
	movne r3, r1
	strb r3, [lr, r5]
	add r5, r5, #1
	cmp r5, #3
	blt _022363AC
_022363DC:
	add r4, r4, #1
	cmp r4, #4
	add r6, r6, #3
	blt _0223639C
	bl ov18_02236158
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022363F4: .word Unk_ov18_02253324
	arm_func_end ov18_02236380

	arm_func_start ov18_022363F8
ov18_022363F8: ; 0x022363F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r2, _02236544 ; =0x0224925C
	mov r0, #0
	ldrb ip, [r2]
	ldrb r3, [r2, #1]
	ldr r1, _02236548 ; =0x02253324
	strb ip, [sp, #8]
	strb r3, [sp, #9]
	ldrb ip, [r2, #2]
	ldrb r3, [r2, #3]
	ldr r2, [r1, #0]
	add r4, sp, #8
	strb ip, [sp, #0xa]
	mov r7, r0
	strb r3, [sp, #0xb]
	add lr, r2, #8
	mov ip, r0
_02236440:
	ldrb r1, [lr, r7]
	add r5, lr, r7
	cmp r1, #0x20
	beq _02236484
	mov r6, ip
	mov r8, r4
_02236458:
	ldrb r3, [r5, r6]
	ldrb r1, [r8]
	cmp r3, r1
	addhi sp, sp, #0xc
	movhi r0, #0
	ldmhiia sp!, {r3, r4, r5, r6, r7, r8, pc}
	blo _02236484
	add r6, r6, #1
	cmp r6, #3
	add r8, r8, #1
	blt _02236458
_02236484:
	add r0, r0, #1
	cmp r0, #4
	add r7, r7, #3
	blt _02236440
	add r1, sp, #0
	add r0, r2, #8
	bl ov18_0223E834
	add r0, sp, #4
	mov r1, #0
	bl ov18_0222F724
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02236528
	mov r4, #0
	mov r1, #1
	add r5, sp, #0
	mov r6, r4
	mov r2, r1
	mov ip, r4
_022364D0:
	ldrb r3, [r5]
	mov r7, ip
_022364D8:
	cmp r4, #0
	rsb r0, r7, #7
	beq _022364F8
	tst r3, r2, lsl r0
	beq _02236500
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022364F8:
	tst r3, r1, lsl r0
	moveq r4, r1
_02236500:
	add r7, r7, #1
	cmp r7, #8
	blt _022364D8
	add r6, r6, #1
	cmp r6, #4
	add r5, r5, #1
	blt _022364D0
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02236528:
	add r0, sp, #0
	bl sub_020A2CAC
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02236544: .word Unk_ov18_0224925C
_02236548: .word Unk_ov18_02253324
	arm_func_end ov18_022363F8

	arm_func_start ov18_0223654C
ov18_0223654C: ; 0x0223654C
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02236574 ; =ov18_02236578
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236574: .word ov18_02236578
	arm_func_end ov18_0223654C

	arm_func_start ov18_02236578
ov18_02236578: ; 0x02236578
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _022365B0 ; =0x02253324
	ldr r1, _022365B4 ; =0xC1FFFCFF
	ldr r2, [r0, #0]
	ldr r0, _022365B8 ; =ov18_02235B78
	ldr r3, [r2, #4]
	ldr r2, [r3, #0]
	and r1, r2, r1
	str r1, [r3, #0]
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022365B0: .word Unk_ov18_02253324
_022365B4: .word 0xC1FFFCFF
_022365B8: .word ov18_02235B78
	arm_func_end ov18_02236578

	.rodata


	.global Unk_ov18_0224925C
Unk_ov18_0224925C: ; 0x0224925C
	.incbin "incbin/overlay18_rodata.bin", 0x2E28, 0x2E2C - 0x2E28

	.global Unk_ov18_02249260
Unk_ov18_02249260: ; 0x02249260
	.incbin "incbin/overlay18_rodata.bin", 0x2E2C, 0x2E30 - 0x2E2C

	.global Unk_ov18_02249264
Unk_ov18_02249264: ; 0x02249264
	.incbin "incbin/overlay18_rodata.bin", 0x2E30, 0x2E36 - 0x2E30

	.global Unk_ov18_0224926A
Unk_ov18_0224926A: ; 0x0224926A
	.incbin "incbin/overlay18_rodata.bin", 0x2E36, 0x2E40 - 0x2E36

	.global Unk_ov18_02249274
Unk_ov18_02249274: ; 0x02249274
	.incbin "incbin/overlay18_rodata.bin", 0x2E40, 0x2E54 - 0x2E40

	.global Unk_ov18_02249288
Unk_ov18_02249288: ; 0x02249288
	.incbin "incbin/overlay18_rodata.bin", 0x2E54, 0x2E68 - 0x2E54

	.global Unk_ov18_0224929C
Unk_ov18_0224929C: ; 0x0224929C
	.incbin "incbin/overlay18_rodata.bin", 0x2E68, 0xC



	.data


	.global Unk_ov18_0224A1C0
Unk_ov18_0224A1C0: ; 0x0224A1C0
	.incbin "incbin/overlay18_data.bin", 0xA60, 0xA64 - 0xA60

	.global Unk_ov18_0224A1C4
Unk_ov18_0224A1C4: ; 0x0224A1C4
	.incbin "incbin/overlay18_data.bin", 0xA64, 0xA78 - 0xA64

	.global Unk_ov18_0224A1D8
Unk_ov18_0224A1D8: ; 0x0224A1D8
	.incbin "incbin/overlay18_data.bin", 0xA78, 0xA90 - 0xA78

	.global Unk_ov18_0224A1F0
Unk_ov18_0224A1F0: ; 0x0224A1F0
	.incbin "incbin/overlay18_data.bin", 0xA90, 0xAA8 - 0xA90

	.global Unk_ov18_0224A208
Unk_ov18_0224A208: ; 0x0224A208
	.incbin "incbin/overlay18_data.bin", 0xAA8, 0xAC0 - 0xAA8

	.global Unk_ov18_0224A220
Unk_ov18_0224A220: ; 0x0224A220
	.incbin "incbin/overlay18_data.bin", 0xAC0, 0x15



	.bss


	.global Unk_ov18_02253324
Unk_ov18_02253324: ; 0x02253324
	.space 0x4

