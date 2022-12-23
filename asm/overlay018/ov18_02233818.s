	.include "macros/function.inc"
	.include "overlay018/ov18_02233818.inc"

	

	.text


	arm_func_start ov18_02233818
ov18_02233818: ; 0x02233818
	stmfd sp!, {r3, lr}
	mov r0, #0x5c
	mov r1, #4
	bl ov18_02245068
	ldr r2, _022338E4 ; =0x02253318
	mov r1, #0
	str r0, [r2, #4]
	add r0, sp, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	bne _02233858
	ldr r0, _022338E4 ; =0x02253318
	mov r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
_02233858:
	ldr r0, _022338E4 ; =0x02253318
	ldr r0, [r0, #4]
	bl ov18_0223DAE0
	ldr r1, _022338E4 ; =0x02253318
	ldr r1, [r1, #4]
	strb r0, [r1, #0x51]
	bl ov18_022338F0
	bl ov18_0222BC1C
	mov r0, #0x34
	sub r1, r0, #0x35
	mov r2, #0
	bl ov18_0222B594
	mov r0, #2
	bl ov18_0222B740
	bl ov18_02233A44
	bl ov18_02233AEC
	mov r0, #0
	mov r1, r0
	bl ov18_0224467C
	ldr r2, _022338E4 ; =0x02253318
	ldr r1, _022338E8 ; =ov18_02234A44
	ldr r3, [r2, #4]
	mov r2, #0
	str r0, [r3, #0xc]
	mov r0, #1
	mov r3, #0x6e
	bl ov18_02246304
	ldr r1, _022338E4 ; =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x3c]
	bl ov18_02234588
	bl ov18_02234AA0
	ldr r0, _022338EC ; =ov18_02233C60
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022338E4: .word 0x02253318
_022338E8: .word ov18_02234A44
_022338EC: .word ov18_02233C60
	arm_func_end ov18_02233818

	arm_func_start ov18_022338F0
ov18_022338F0: ; 0x022338F0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x30
	ldr r3, _02233A28 ; =0x022491BF
	add lr, sp, #0x16
	mov r2, #0xc
_02233904:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [lr]
	strb r0, [lr, #1]
	add lr, lr, #2
	subs r2, r2, #1
	bne _02233904
	ldrb r0, [r3]
	ldr ip, _02233A2C ; =0x022491A9
	add r3, sp, #0
	strb r0, [lr]
	mov r2, #0xb
_02233938:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _02233938
	ldr r0, _02233A30 ; =0x0224A138
	ldr r1, _02233A34 ; =0x020C05AC
	bl ov18_0222B700
	add r0, sp, #0x16
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02233A38 ; =0x02253318
	ldr r2, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0, #4]
	bl ov18_0223D004
	bl ov18_0223D090
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02233A38 ; =0x02253318
	ldr r3, _02233A3C ; =0x04001008
	ldr r1, [r1, #4]
	sub r2, r3, #0x1000
	str r0, [r1, #8]
	ldrh r0, [r3]
	ldr r1, _02233A40 ; =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #4]
	add sp, sp, #0x30
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233A28: .word 0x022491BF
_02233A2C: .word 0x022491A9
_02233A30: .word 0x0224A138
_02233A34: .word 0x020C05AC
_02233A38: .word 0x02253318
_02233A3C: .word 0x04001008
_02233A40: .word 0x0400000A
	arm_func_end ov18_022338F0

	arm_func_start ov18_02233A44
ov18_02233A44: ; 0x02233A44
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _02233AE8 ; =0x02253318
	mov r1, #0x1c
	ldr ip, [r2, #4]
	mov r0, #0
	ldrb r3, [ip, #0x51]
	sub r3, r3, #4
	mul r1, r3, r1
	strh r1, [ip, #0x40]
	ldr r2, [r2, #4]
	ldrb r1, [r2, #0x51]
	cmp r1, #4
	movls r4, r0
	strlsb r0, [r2, #0x53]
	bls _02233AA4
	cmp r1, #8
	movhi r1, #0x37
	strhib r1, [r2, #0x53]
	movhi r4, #2
	bhi _02233AA4
	mov r1, #0x1f
	strb r1, [r2, #0x53]
	mov r4, #1
_02233AA4:
	cmp r4, #0
	beq _02233AC8
	ldr r0, _02233AE8 ; =0x02253318
	ldr r1, [r0, #4]
	ldrh r2, [r0, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FX_DivS32
_02233AC8:
	str r0, [sp]
	mov r0, r4
	mov r1, #0x55
	mov r2, #0xec
	mov r3, #0x3f
	bl ov18_0223D218
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02233AE8: .word 0x02253318
	arm_func_end ov18_02233A44

	arm_func_start ov18_02233AEC
ov18_02233AEC: ; 0x02233AEC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _02233C50 ; =0x02253318
	mov sb, #0
	ldr r0, [r0, #4]
	ldrb r8, [r0, #0x51]
	cmp r8, #5
	movgt r8, #5
	cmp r8, #0
	ble _02233B60
	ldr sl, _02233C50 ; =0x02253318
	mov r7, sb
	mov r6, #0x2e
	mov r5, sb
	mov r4, #0x18
_02233B24:
	mov r0, r7
	mov r1, r6
	bl ov18_02243F60
	ldr r2, [sl, #4]
	mov r1, r4
	add r2, r2, sb, lsl #2
	str r0, [r2, #0x10]
	mov r0, r5
	bl ov18_02243F60
	ldr r1, [sl, #4]
	add r1, r1, sb, lsl #2
	add sb, sb, #1
	str r0, [r1, #0x24]
	cmp sb, r8
	blt _02233B24
_02233B60:
	mov r6, #0
	ldr r5, _02233C54 ; =0x02249228
	ldr sb, _02233C50 ; =0x02253318
	ldr r7, _02233C58 ; =0x000003FF
	mov r4, r6
_02233B74:
	ldr r0, [sb, #4]
	ldrb r1, [r5], #1
	ldr r2, [r0, #0x10]
	mov r0, r4
	bl ov18_02243ECC
	ldr r0, [sb, #4]
	ldr r1, [r0, #0x10]
	add r0, r0, r6, lsl #1
	ldrh r1, [r1, #4]
	add r6, r6, #1
	cmp r6, #3
	and r1, r1, r7
	strh r1, [r0, #0x42]
	blo _02233B74
	mov r6, #0
	ldr r5, _02233C5C ; =0x0224922C
	ldr sb, _02233C50 ; =0x02253318
	ldr r7, _02233C58 ; =0x000003FF
	mov r4, r6
_02233BC0:
	ldr r0, [sb, #4]
	ldrb r1, [r5], #1
	ldr r2, [r0, #0x24]
	mov r0, r4
	bl ov18_02243ECC
	ldr r0, [sb, #4]
	ldr r1, [r0, #0x24]
	add r0, r0, r6, lsl #1
	ldrh r1, [r1, #4]
	add r6, r6, #1
	cmp r6, #4
	and r1, r1, r7
	strh r1, [r0, #0x48]
	blo _02233BC0
	cmp r8, #0
	mov r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _02233C50 ; =0x02253318
_02233C08:
	ldr r2, [r1, #4]
	add r2, r2, r0, lsl #2
	ldr r3, [r2, #0x10]
	ldrh r2, [r3, #4]
	bic r2, r2, #0xc00
	orr r2, r2, #0xc00
	strh r2, [r3, #4]
	ldr r2, [r1, #4]
	add r2, r2, r0, lsl #2
	ldr r3, [r2, #0x24]
	add r0, r0, #1
	ldrh r2, [r3, #4]
	cmp r0, r8
	bic r2, r2, #0xc00
	orr r2, r2, #0xc00
	strh r2, [r3, #4]
	blt _02233C08
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02233C50: .word 0x02253318
_02233C54: .word 0x02249228
_02233C58: .word 0x000003FF
_02233C5C: .word 0x0224922C
	arm_func_end ov18_02233AEC

	arm_func_start ov18_02233C60
ov18_02233C60: ; 0x02233C60
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x1d
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x1d
	bl ov18_02244C84
	ldr r0, _02233CB0 ; =ov18_02233CB4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233CB0: .word ov18_02233CB4
	arm_func_end ov18_02233C60

	arm_func_start ov18_02233CB4
ov18_02233CB4: ; 0x02233CB4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _02233CEC ; =ov18_02233CF0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233CEC: .word ov18_02233CF0
	arm_func_end ov18_02233CB4

	arm_func_start ov18_02233CF0
ov18_02233CF0: ; 0x02233CF0
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02233D14 ; =ov18_02233D18
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02233D14: .word ov18_02233D18
	arm_func_end ov18_02233CF0

	arm_func_start ov18_02233D18
ov18_02233D18: ; 0x02233D18
	stmfd sp!, {r3, lr}
	bl ov18_02233D2C
	bl ov18_02233F80
	bl ov18_022341F0
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02233D18

	arm_func_start ov18_02233D2C
ov18_02233D2C: ; 0x02233D2C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02233F74 ; =0x02253318
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x57]
	cmpeq r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _02233F78 ; =0x02249734
	bl ov18_022455B8
	cmp r0, #0
	beq _02233DC4
	ldr r0, _02233F74 ; =0x02253318
	mvn r1, #0
	ldr r0, [r0, #4]
	ldr r5, _02233F7C ; =0x022491D8
	strb r1, [r0, #0x50]
	mov r4, #0
_02233D74:
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _02233DB4
	cmp r4, #4
	bge _02233D9C
	ldr r0, _02233F74 ; =0x02253318
	ldr r0, [r0, #4]
	strb r4, [r0, #0x50]
	b _02233DC4
_02233D9C:
	mov r0, #1
	bl ov18_0222B048
	ldr r0, _02233F74 ; =0x02253318
	strb r4, [r0]
	bl ov18_02234AA0
	ldmia sp!, {r3, r4, r5, pc}
_02233DB4:
	add r4, r4, #1
	cmp r4, #5
	add r5, r5, #8
	blo _02233D74
_02233DC4:
	ldr r0, _02233F78 ; =0x02249734
	bl ov18_022456C8
	cmp r0, #0
	beq _02233E40
	ldr r4, _02233F7C ; =0x022491D8
	mov r5, #0
_02233DDC:
	mov r0, r4
	bl ov18_022456C8
	cmp r0, #0
	beq _02233E30
	ldr r0, _02233F74 ; =0x02253318
	ldr r1, [r0, #4]
	ldrsb r0, [r1, #0x50]
	cmp r0, r5
	bne _02233E40
	ldrb r0, [r1, #0x51]
	cmp r5, r0
	blt _02233E18
	mov r0, #9
	bl ov18_0223E994
	b _02233E40
_02233E18:
	mov r0, #1
	bl ov18_0222B048
	ldr r0, _02233F74 ; =0x02253318
	strb r5, [r0]
	bl ov18_02234AA0
	ldmia sp!, {r3, r4, r5, pc}
_02233E30:
	add r5, r5, #1
	cmp r5, #4
	add r4, r4, #8
	blt _02233DDC
_02233E40:
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _02233E60
	mov r0, #1
	bl ov18_0222B048
	bl ov18_0223D378
	ldmia sp!, {r3, r4, r5, pc}
_02233E60:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02233E7C
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, r4, r5, pc}
_02233E7C:
	mov r0, #0x200
	bl ov18_022454B0
	cmp r0, #0
	beq _02233E94
	bl ov18_02234CAC
	ldmia sp!, {r3, r4, r5, pc}
_02233E94:
	mov r0, #0x200
	bl ov18_022454F0
	cmp r0, #0
	beq _02233EB8
	ldr r0, _02233F74 ; =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmia sp!, {r3, r4, r5, pc}
_02233EB8:
	mov r0, #0x100
	bl ov18_022454B0
	cmp r0, #0
	beq _02233ED0
	bl ov18_02234C38
	ldmia sp!, {r3, r4, r5, pc}
_02233ED0:
	mov r0, #0x100
	bl ov18_022454F0
	cmp r0, #0
	beq _02233EF4
	ldr r0, _02233F74 ; =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmia sp!, {r3, r4, r5, pc}
_02233EF4:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _02233F10
	mov r0, #1
	bl ov18_02234AEC
	ldmia sp!, {r3, r4, r5, pc}
_02233F10:
	mov r0, #0x40
	bl ov18_022454F0
	cmp r0, #0
	beq _02233F34
	ldr r0, _02233F74 ; =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmia sp!, {r3, r4, r5, pc}
_02233F34:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _02233F50
	mov r0, #3
	bl ov18_02234AEC
	ldmia sp!, {r3, r4, r5, pc}
_02233F50:
	mov r0, #0x80
	bl ov18_022454F0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _02233F74 ; =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02233F74: .word 0x02253318
_02233F78: .word 0x02249734
_02233F7C: .word 0x022491D8
	arm_func_end ov18_02233D2C

	arm_func_start ov18_02233F80
ov18_02233F80: ; 0x02233F80
	stmfd sp!, {r3, lr}
	ldr r0, _022341E4 ; =0x02253318
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r0, [r1, #0x55]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r1, #0x55]
	bl ov18_0223D340
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_02233FB8: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _02233FD8 ; case 1
	b _02233FF0 ; case 2
	b _02234044 ; case 3
	b _022340F0 ; case 4
	b _022341D0 ; case 5
	b _02234158 ; case 6
	b _022341D0 ; case 7
_02233FD8:
	ldr r0, _022341E4 ; =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x57]
	bl ov18_0222B0C0
	ldmia sp!, {r3, pc}
_02233FF0:
	ldr r0, _022341E4 ; =0x02253318
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x55]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222BAF4
	bl ov18_0223D32C
	ldr r1, _022341E4 ; =0x02253318
	ldr r1, [r1, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FX_DivS32
	ldr r1, _022341E4 ; =0x02253318
	strh r0, [r1, #2]
	bl ov18_02234588
	ldr r0, _022341E4 ; =0x02253318
	mov r1, #4
	ldr r0, [r0, #4]
	strb r1, [r0, #0x55]
	ldmia sp!, {r3, pc}
_02234044:
	ldr r0, _022341E4 ; =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x57]
	bl ov18_0222B0A8
	bl ov18_0223D32C
	ldr r1, _022341E4 ; =0x02253318
	ldr r1, [r1, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FX_DivS32
	ldr r1, _022341E4 ; =0x02253318
	strh r0, [r1, #2]
	mov r0, #0x13
	bl ov18_0223E994
	bl ov18_02234588
	ldr r0, _022341E4 ; =0x02253318
	mov r1, #0x1c
	ldrh r0, [r0, #2]
	bl FX_ModS32
	cmp r0, #0
	bne _022340A8
	bl ov18_02234AA0
	ldmia sp!, {r3, pc}
_022340A8:
	cmp r0, #0xe
	mov r0, #0
	mov r3, #0x78
	bge _022340D4
	ldr r1, _022341E8 ; =ov18_022348F0
	mov r2, r0
	bl ov18_02246304
	ldr r1, _022341E4 ; =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_022340D4:
	ldr r1, _022341EC ; =ov18_022349AC
	mov r2, r0
	bl ov18_02246304
	ldr r1, _022341E4 ; =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_022340F0:
	ldr r0, _022341E4 ; =0x02253318
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _0223412C
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x58]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _022341E4 ; =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x58]
	ldmia sp!, {r3, pc}
_0223412C:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _022341E8 ; =ov18_022348F0
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _022341E4 ; =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_02234158:
	ldr r0, _022341E4 ; =0x02253318
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x51]
	cmp r1, #4
	bls _0223417C
	ldrh r1, [r0, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	bne _022341A4
_0223417C:
	ldrb r0, [r2, #0x58]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _022341E4 ; =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x58]
	ldmia sp!, {r3, pc}
_022341A4:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _022341EC ; =ov18_022349AC
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _022341E4 ; =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_022341D0:
	ldr r0, _022341E4 ; =0x02253318
	mov r1, #0
	ldr r0, [r0, #4]
	strb r1, [r0, #0x58]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022341E4: .word 0x02253318
_022341E8: .word ov18_022348F0
_022341EC: .word ov18_022349AC
	arm_func_end ov18_02233F80

	arm_func_start ov18_022341F0
ov18_022341F0: ; 0x022341F0
	stmfd sp!, {r3, lr}
	ldr r0, _022342F0 ; =0x02253318
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x57]
	cmpeq r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B034
	cmp r0, #0
	beq _02234228
	cmp r0, #1
	beq _02234234
	ldmia sp!, {r3, pc}
_02234228:
	mov r0, #7
	bl ov18_0223E994
	b _022342E4
_02234234:
	ldr r0, _022342F0 ; =0x02253318
	ldrb r1, [r0]
	cmp r1, #4
	bne _02234260
	ldr r1, [r0, #4]
	mov r2, #1
	mov r0, #6
	strb r2, [r1, #0x54]
	bl ov18_0223E994
	bl ov18_02234D30
	b _022342E4
_02234260:
	ldrh r0, [r0, #2]
	mov r1, #0x1c
	bl FX_DivS32
	ldr r2, _022342F0 ; =0x02253318
	mov r1, #0x2a
	ldrb lr, [r2]
	ldr ip, [r2, #4]
	ldr r3, [ip]
	add lr, lr, r0
	mla r0, lr, r1, r3
	ldrb r0, [r0, #0x28]
	cmp r0, #2
	bne _022342CC
	mov r0, #9
	bl ov18_0223E994
	bl ov18_0223D378
	bl ov18_0222B0C0
	mov r1, #1
	mov r0, #0
	str r0, [sp]
	mov r2, r1
	mov r0, #0xe
	sub r3, r1, #2
	bl ov18_0223FC48
	ldr r0, _022342F4 ; =ov18_02234D60
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_022342CC:
	mov r0, #1
	strb r0, [ip, #0x54]
	ldr r1, [r2, #4]
	mov r0, #6
	strb lr, [r1, #0x52]
	bl ov18_0223E994
_022342E4:
	ldr r0, _022342F8 ; =ov18_022342FC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022342F0: .word 0x02253318
_022342F4: .word ov18_02234D60
_022342F8: .word ov18_022342FC
	arm_func_end ov18_022341F0

	arm_func_start ov18_022342FC
ov18_022342FC: ; 0x022342FC
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02234318 ; =ov18_0223431C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234318: .word ov18_0223431C
	arm_func_end ov18_022342FC

	arm_func_start ov18_0223431C
ov18_0223431C: ; 0x0223431C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02234384 ; =0x02253318
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	beq _0223434C
	bl ov18_0222B004
	b _02234350
_0223434C:
	bl ov18_0222B0C0
_02234350:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x1d
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02234388 ; =ov18_0223438C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234384: .word 0x02253318
_02234388: .word ov18_0223438C
	arm_func_end ov18_0223431C

	arm_func_start ov18_0223438C
ov18_0223438C: ; 0x0223438C
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _0223456C ; =0x02253318
	mov r0, #1
	ldr r1, [r1, #4]
	ldr r1, [r1, #0x3c]
	bl ov18_022463CC
	ldr r4, _0223456C ; =0x02253318
	mov r5, #0
_022343D8:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022343F0
	bl ov18_02245B74
_022343F0:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02234408
	bl ov18_02245B74
_02234408:
	add r5, r5, #1
	cmp r5, #5
	blt _022343D8
	ldr r0, _0223456C ; =0x02253318
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl ov18_0224487C
	bl ov18_0223D2F0
	bl ov18_0222BAF4
	bl ov18_0222B668
	bl ov18_0223D064
	ldr r0, _0223456C ; =0x02253318
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	bl ov18_0224382C
	ldr r0, _0223456C ; =0x02253318
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	bl ov18_0224382C
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x1d
	bl ov18_02244CD8
	mov r2, #0
	ldr r1, _02234570 ; =0x04000010
	ldr r0, _0223456C ; =0x02253318
	str r2, [r1, #0]
	str r2, [r1, #8]
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x54]
	cmp r1, #0
	bne _022344B8
	bl ov18_0223D910
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	bl ov18_0223E1F0
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	ldr r0, _02234574 ; =ov18_0223B3F4
	bl ov18_0222F6C4
	b _02234560
_022344B8:
	ldrb r0, [r0]
	cmp r0, #4
	bne _022344E0
	bl ov18_0223D910
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02234578 ; =ov18_0223A1D0
	bl ov18_0222F6C4
	b _02234560
_022344E0:
	ldrb r1, [r2, #0x52]
	ldr r2, [r2, #0]
	mov r0, #0x2a
	mla r0, r1, r0, r2
	bl ov18_0223DE08
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r1, _0223456C ; =0x02253318
	mov r0, #0x2a
	ldr r2, [r1, #4]
	ldrb r1, [r2, #0x52]
	ldr r2, [r2, #0]
	mla r0, r1, r0, r2
	ldrb r0, [r0, #0x28]
	mov r1, #1
	cmp r0, #0
	mov r0, #0
	beq _02234548
	bl ov18_0222F6D4
	mov r0, #1
	mov r1, r0
	bl ov18_0222F710
	ldr r0, _0223457C ; =ov18_02234DB4
	bl ov18_0222F6C4
	b _02234560
_02234548:
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, #1
	bl ov18_0222F710
	ldr r0, _02234580 ; =ov18_0223C21C
	bl ov18_0222F6C4
_02234560:
	ldr r0, _02234584 ; =0x0225331C
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223456C: .word 0x02253318
_02234570: .word 0x04000010
_02234574: .word ov18_0223B3F4
_02234578: .word ov18_0223A1D0
_0223457C: .word ov18_02234DB4
_02234580: .word ov18_0223C21C
_02234584: .word 0x0225331C
	arm_func_end ov18_0223438C

	arm_func_start ov18_02234588
ov18_02234588: ; 0x02234588
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0223462C ; =0x02253318
	mov r1, #0x1c
	ldrh r0, [r0, #2]
	bl FX_DivS32
	ldr r1, _0223462C ; =0x02253318
	mov r7, r0
	ldr r0, [r1, #4]
	mov r1, #0
	ldrb r4, [r0, #0x51]
	ldr r0, [r0, #0xc]
	bl ov18_02244B5C
	cmp r4, #5
	movgt r4, #5
	mov r5, r7
	cmp r4, #0
	mov r6, #0
	ble _022345EC
_022345D0:
	mov r0, r5
	mov r1, r6
	bl ov18_02234630
	add r6, r6, #1
	cmp r6, r4
	add r5, r5, #1
	blt _022345D0
_022345EC:
	cmp r4, #0
	mov r5, #0
	ble _02234614
_022345F8:
	mov r0, r7
	mov r1, r5
	bl ov18_022347A8
	add r5, r5, #1
	cmp r5, r4
	add r7, r7, #1
	blt _022345F8
_02234614:
	ldr r0, _0223462C ; =0x02253318
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl ov18_02244C08
	bl ov18_02234834
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223462C: .word 0x02253318
	arm_func_end ov18_02234588

	arm_func_start ov18_02234630
ov18_02234630: ; 0x02234630
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r7, r0
	mov r0, #0x2a
	ldr r2, _022347A4 ; =0x02253318
	mul r6, r7, r0
	ldr r0, [r2, #4]
	mov r4, r1
	ldr r0, [r0, #0]
	mov r1, #0x20
	add r0, r0, r6
	bl ov18_02245E50
	ldr r2, _022347A4 ; =0x02253318
	mov r1, #0x1c
	mul r5, r4, r1
	ldr r2, [r2, #4]
	mov r4, r0
	ldrb r1, [r2, #0x51]
	cmp r7, r1
	addge sp, sp, #0x30
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0xc
	cmp r4, #0x10
	mov r1, #0
	mov r2, #0x22
	addle r5, r5, #6
	bl MI_CpuFill8
	cmp r4, #0x10
	movle ip, r4
	movgt ip, #0x10
	cmp ip, #0
	mov r3, #0
	ble _022346E0
	ldr r0, _022347A4 ; =0x02253318
	ldr r7, [r0, #4]
	add r0, sp, #0xc
_022346C0:
	ldr r2, [r7, #0]
	mov r1, r3, lsl #1
	add r2, r6, r2
	ldrb r2, [r3, r2]
	add r3, r3, #1
	cmp r3, ip
	strh r2, [r0, r1]
	blt _022346C0
_022346E0:
	mov r1, #0xa
	add r0, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _022347A4 ; =0x02253318
	mov r2, r5
	ldr r0, [r0, #4]
	mov r3, #2
	ldr r0, [r0, #0xc]
	bl ov18_022449F0
	cmp r4, #0x10
	addle sp, sp, #0x30
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x22
	bl MI_CpuFill8
	sub r3, r4, #0x10
	cmp r3, #0
	mov r7, #0
	ble _0223476C
	ldr r0, _022347A4 ; =0x02253318
	ldr r4, [r0, #4]
	add r0, sp, #0xc
_02234748:
	ldr r2, [r4, #0]
	mov r1, r7, lsl #1
	add r2, r6, r2
	add r2, r7, r2
	ldrb r2, [r2, #0x10]
	add r7, r7, #1
	cmp r7, r3
	strh r2, [r0, r1]
	blt _02234748
_0223476C:
	mov r1, #0xa
	add r0, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _022347A4 ; =0x02253318
	add r2, r5, #0xc
	ldr r0, [r0, #4]
	mov r3, #2
	ldr r0, [r0, #0xc]
	bl ov18_022449F0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022347A4: .word 0x02253318
	arm_func_end ov18_02234630

	arm_func_start ov18_022347A8
ov18_022347A8: ; 0x022347A8
	stmfd sp!, {r4, lr}
	ldr r3, _02234830 ; =0x02253318
	ldr lr, [r3, #4]
	ldrb r2, [lr, #0x51]
	cmp r0, r2
	ldmgeia sp!, {r4, pc}
	mov r2, #0x2a
	mul r2, r0, r2
	ldr r0, [lr]
	add r4, lr, r1, lsl #2
	add r0, r0, r2
	ldrb ip, [r0, #0x28]
	ldr r4, [r4, #0x10]
	mov r0, #0x400
	add ip, lr, ip, lsl #1
	ldrh lr, [r4, #4]
	rsb r0, r0, #0
	ldrh ip, [ip, #0x42]
	and lr, lr, r0
	orr ip, lr, ip
	strh ip, [r4, #4]
	ldr lr, [r3, #4]
	ldr r3, [lr]
	add ip, lr, r1, lsl #2
	add r1, r3, r2
	ldrh r1, [r1, #0x26]
	ldr r3, [ip, #0x24]
	add r1, lr, r1, lsl #1
	ldrh r2, [r3, #4]
	ldrh r1, [r1, #0x48]
	and r0, r2, r0
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02234830: .word 0x02253318
	arm_func_end ov18_022347A8

	arm_func_start ov18_02234834
ov18_02234834: ; 0x02234834
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _022348E8 ; =0x02253318
	mov r1, #0x1c
	ldrh r0, [r0, #2]
	bl FX_ModS32
	ldr r1, _022348E8 ; =0x02253318
	rsb r0, r0, #0x36
	ldr r1, [r1, #4]
	mov r2, #0
	ldrb r1, [r1, #0x51]
	cmp r1, #5
	movgt r1, #5
	cmp r1, #0
	ble _022348D4
	ldr ip, _022348E8 ; =0x02253318
	ldr r3, _022348EC ; =0xFE00FF00
_02234874:
	ldr r5, [ip, #4]
	sub r4, r0, #2
	add r5, r5, r2, lsl #2
	ldr r6, [r5, #0x10]
	add lr, r0, #1
	ldr r5, [r6, #0]
	and r4, r4, #0xff
	and r5, r5, r3
	orr r4, r5, r4
	orr r4, r4, #0xb30000
	str r4, [r6, #0]
	ldr r4, [ip, #4]
	and lr, lr, #0xff
	add r4, r4, r2, lsl #2
	ldr r5, [r4, #0x24]
	add r2, r2, #1
	ldr r4, [r5, #0]
	cmp r2, r1
	and r4, r4, r3
	orr r4, r4, lr
	orr r4, r4, #0xd20000
	str r4, [r5, #0]
	add r0, r0, #0x1c
	blt _02234874
_022348D4:
	ldr r0, _022348E8 ; =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x56]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022348E8: .word 0x02253318
_022348EC: .word 0xFE00FF00
	arm_func_end ov18_02234834

	arm_func_start ov18_022348F0
ov18_022348F0: ; 0x022348F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl ov18_0223D378
	bl ov18_0222BAF4
	ldr r0, _022349A8 ; =0x02253318
	ldrh r1, [r0, #2]
	cmp r1, #4
	subhi r1, r1, #4
	movls r1, #0
	strh r1, [r0, #2]
	ldr r0, _022349A8 ; =0x02253318
	mov r1, #0x1c
	ldrh r0, [r0, #2]
	bl FX_ModS32
	mov r5, r0
	cmp r5, #0x18
	bne _0223493C
	bl ov18_02234588
	ldmia sp!, {r3, r4, r5, pc}
_0223493C:
	ble _02234958
	ldr r0, _022349A8 ; =0x02253318
	rsb r1, r5, #0x1c
	ldrh r2, [r0, #2]
	mov r5, #0
	add r1, r2, r1
	strh r1, [r0, #2]
_02234958:
	bl ov18_02234834
	cmp r5, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _022349A8 ; =0x02253318
	ldr r1, [r0, #4]
	ldrh r2, [r0, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FX_DivS32
	bl ov18_0223D354
	bl ov18_0223D360
	bl ov18_02234AA0
	ldr r0, _022349A8 ; =0x02253318
	mov r1, r4
	ldr r2, [r0, #4]
	mov r0, #0
	str r0, [r2, #0x38]
	bl ov18_022463AC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022349A8: .word 0x02253318
	arm_func_end ov18_022348F0

	arm_func_start ov18_022349AC
ov18_022349AC: ; 0x022349AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov18_0223D378
	bl ov18_0222BAF4
	ldr r0, _02234A40 ; =0x02253318
	mov r1, #0x1c
	ldrh r2, [r0, #2]
	add r2, r2, #4
	strh r2, [r0, #2]
	ldrh r0, [r0, #2]
	bl FX_ModS32
	cmp r0, #4
	blt _022349E8
	bl ov18_02234834
	ldmia sp!, {r4, pc}
_022349E8:
	ldr r1, _02234A40 ; =0x02253318
	ldrh r2, [r1, #2]
	sub r0, r2, r0
	strh r0, [r1, #2]
	bl ov18_02234588
	ldr r0, _02234A40 ; =0x02253318
	ldr r1, [r0, #4]
	ldrh r2, [r0, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FX_DivS32
	bl ov18_0223D354
	bl ov18_0223D360
	bl ov18_02234AA0
	ldr r0, _02234A40 ; =0x02253318
	mov r1, r4
	ldr r2, [r0, #4]
	mov r0, #0
	str r0, [r2, #0x38]
	bl ov18_022463AC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02234A40: .word 0x02253318
	arm_func_end ov18_022349AC

	arm_func_start ov18_02234A44
ov18_02234A44: ; 0x02234A44
	stmfd sp!, {r3, lr}
	ldr r0, _02234A94 ; =0x02253318
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x56]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldrh r0, [r0, #2]
	mov r1, #0x1c
	bl FX_ModS32
	ldr r1, _02234A98 ; =0x01FF0000
	sub r0, r0, #0x32
	ldr r2, _02234A9C ; =0x04000010
	and r1, r1, r0, lsl #16
	str r1, [r2, #0]
	ldr r0, _02234A94 ; =0x02253318
	str r1, [r2, #8]
	ldr r0, [r0, #4]
	mov r1, #0
	strb r1, [r0, #0x56]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234A94: .word 0x02253318
_02234A98: .word 0x01FF0000
_02234A9C: .word 0x04000010
	arm_func_end ov18_02234A44

	arm_func_start ov18_02234AA0
ov18_02234AA0: ; 0x02234AA0
	stmfd sp!, {r3, lr}
	ldr r0, _02234ADC ; =0x02253318
	ldr r1, _02234AE0 ; =0x02249200
	ldrb r2, [r0]
	ldr r3, _02234AE4 ; =0x02249202
	mov ip, r2, lsl #3
	cmp r2, #4
	ldr r2, _02234AE8 ; =0x02249204
	movlo r0, #2
	ldrh r1, [r1, ip]
	ldrh r2, [r2, ip]
	ldrh r3, [r3, ip]
	movhs r0, #3
	bl ov18_0222B948
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234ADC: .word 0x02253318
_02234AE0: .word 0x02249200
_02234AE4: .word 0x02249202
_02234AE8: .word 0x02249204
	arm_func_end ov18_02234AA0

	arm_func_start ov18_02234AEC
ov18_02234AEC: ; 0x02234AEC
	stmfd sp!, {r4, lr}
	ldr r1, _02234C30 ; =0x02253318
	mov r4, #1
	ldrb r3, [r1]
	cmp r3, #4
	addls pc, pc, r3, lsl #2
	b _02234BE8
_02234B08: ; jump table
	b _02234B1C ; case 0
	b _02234B80 ; case 1
	b _02234B80 ; case 2
	b _02234BAC ; case 3
	b _02234BC4 ; case 4
_02234B1C:
	cmp r0, #1
	bne _02234B64
	ldrh r0, [r1, #2]
	cmp r0, #0
	moveq r0, #4
	streqb r0, [r1]
	beq _02234BE8
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02234C34 ; =ov18_022348F0
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02234C30 ; =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	ldmia sp!, {r4, pc}
_02234B64:
	ldr r0, [r1, #4]
	ldrb r0, [r0, #0x51]
	cmp r0, #1
	addhi r0, r3, #1
	strhib r0, [r1]
	movls r4, #0
	b _02234BE8
_02234B80:
	cmp r0, #1
	subeq r0, r3, #1
	streqb r0, [r1]
	beq _02234BE8
	ldr r2, [r1, #4]
	add r0, r3, #1
	ldrb r2, [r2, #0x51]
	cmp r2, r0
	strgtb r0, [r1]
	movle r4, #0
	b _02234BE8
_02234BAC:
	cmp r0, #1
	subeq r0, r3, #1
	streqb r0, [r1]
	beq _02234BE8
	bl ov18_02234CAC
	ldmia sp!, {r4, pc}
_02234BC4:
	cmp r0, #1
	moveq r4, #0
	beq _02234BE8
	mov r0, #0
	strh r0, [r1, #2]
	strb r0, [r1]
	bl ov18_02234588
	mov r0, #0
	bl ov18_0223D354
_02234BE8:
	cmp r4, #0
	bne _02234C20
	ldr r0, _02234C30 ; =0x02253318
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02234C30 ; =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmia sp!, {r4, pc}
_02234C20:
	mov r0, #8
	bl ov18_0223E994
	bl ov18_02234AA0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02234C30: .word 0x02253318
_02234C34: .word ov18_022348F0
	arm_func_end ov18_02234AEC

	arm_func_start ov18_02234C38
ov18_02234C38: ; 0x02234C38
	stmfd sp!, {r3, lr}
	ldr r0, _02234CA4 ; =0x02253318
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _02234C78
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02234CA4 ; =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmia sp!, {r3, pc}
_02234C78:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02234CA8 ; =ov18_022348F0
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02234CA4 ; =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234CA4: .word 0x02253318
_02234CA8: .word ov18_022348F0
	arm_func_end ov18_02234C38

	arm_func_start ov18_02234CAC
ov18_02234CAC: ; 0x02234CAC
	stmfd sp!, {r3, lr}
	ldr r0, _02234D28 ; =0x02253318
	ldr r2, [r0, #4]
	ldrh r1, [r0, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	beq _02234CD4
	ldrb r0, [r2, #0x51]
	cmp r0, #4
	bhi _02234CFC
_02234CD4:
	ldrb r0, [r2, #0x59]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02234D28 ; =0x02253318
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmia sp!, {r3, pc}
_02234CFC:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02234D2C ; =ov18_022349AC
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02234D28 ; =0x02253318
	ldr r1, [r1, #4]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234D28: .word 0x02253318
_02234D2C: .word ov18_022349AC
	arm_func_end ov18_02234CAC

	arm_func_start ov18_02234D30
ov18_02234D30: ; 0x02234D30
	stmfd sp!, {r3, lr}
	ldr r1, _02234D58 ; =0x022491A8
	ldr r0, _02234D5C ; =0x02253318
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	mov r2, r1
	strb r1, [sp]
	bl ov18_0223D154
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234D58: .word 0x022491A8
_02234D5C: .word 0x02253318
	arm_func_end ov18_02234D30

	arm_func_start ov18_02234D60
ov18_02234D60: ; 0x02234D60
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02234D88 ; =ov18_02234D8C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234D88: .word ov18_02234D8C
	arm_func_end ov18_02234D60

	arm_func_start ov18_02234D8C
ov18_02234D8C: ; 0x02234D8C
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B0A8
	bl ov18_0223D360
	ldr r0, _02234DB0 ; =ov18_02233D18
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02234DB0: .word ov18_02233D18
	arm_func_end ov18_02234D8C

	.rodata


	.global Unk_ov18_022491A8
Unk_ov18_022491A8: ; 0x022491A8
	.incbin "incbin/overlay18_rodata.bin", 0x2D74, 0x2D75 - 0x2D74

	.global Unk_ov18_022491A9
Unk_ov18_022491A9: ; 0x022491A9
	.incbin "incbin/overlay18_rodata.bin", 0x2D75, 0x2D8B - 0x2D75

	.global Unk_ov18_022491BF
Unk_ov18_022491BF: ; 0x022491BF
	.incbin "incbin/overlay18_rodata.bin", 0x2D8B, 0x2DA4 - 0x2D8B

	.global Unk_ov18_022491D8
Unk_ov18_022491D8: ; 0x022491D8
	.incbin "incbin/overlay18_rodata.bin", 0x2DA4, 0x2DCC - 0x2DA4

	.global Unk_ov18_02249200
Unk_ov18_02249200: ; 0x02249200
	.incbin "incbin/overlay18_rodata.bin", 0x2DCC, 0x2DF4 - 0x2DCC

	.global Unk_ov18_02249228
Unk_ov18_02249228: ; 0x02249228
	.incbin "incbin/overlay18_rodata.bin", 0x2DF4, 0x2DF8 - 0x2DF4

	.global Unk_ov18_0224922C
Unk_ov18_0224922C: ; 0x0224922C
	.incbin "incbin/overlay18_rodata.bin", 0x2DF8, 0x4



	.data


	.global Unk_ov18_0224A138
Unk_ov18_0224A138: ; 0x0224A138
	.incbin "incbin/overlay18_data.bin", 0x9D8, 0x15



	.bss


	.global Unk_ov18_02253318
Unk_ov18_02253318: ; 0x02253318
	.space 0x2

	.global Unk_ov18_0225331A
Unk_ov18_0225331A: ; 0x0225331A
	.space 0x2

	.global Unk_ov18_0225331C
Unk_ov18_0225331C: ; 0x0225331C
	.space 0x4

