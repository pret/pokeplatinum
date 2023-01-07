	.include "macros/function.inc"
	.include "include/ghttpprocess.inc"

	.extern Unk_ov60_02229E28
	.extern Unk_ov60_02229E24

	.extern Unk_ov60_02229120
	.text


	arm_func_start ov60_022227F8
ov60_022227F8: ; 0x022227F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r0
	bne _02222818
	ldr r0, _0222298C ; =0x02229968
	ldr r1, _02222990 ; =0x02229974
	ldr r2, _02222994 ; =0x022298D4
	mov r3, #0x25
	bl __msl_assertion_failed
_02222818:
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02222844
	ldr r0, _02222998 ; =0x02229984
	ldr r1, _02222990 ; =0x02229974
	ldr r2, _02222994 ; =0x022298D4
	mov r3, #0x2b
	bl __msl_assertion_failed
_02222844:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0222299C ; =0x02229994
	mov r0, r4
	mov r2, #7
	bl strncmp
	cmp r0, #0
	addeq r4, r4, #7
	moveq r8, #0
	beq _0222289C
	ldr r1, _022229A0 ; =0x0222999C
	mov r0, r4
	mov r2, #8
	bl strncmp
	cmp r0, #0
	addeq r4, r4, #8
	moveq r8, #1
	beq _0222289C
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0222289C:
	ldr r1, _022229A4 ; =0x022299A8
	mov r0, r4
	bl strcspn
	mov r6, r0
	ldrsb r7, [r4, r6]
	mov r1, #0
	mov r0, r4
	strb r1, [r4, r6]
	bl ov4_021EA8AC
	str r0, [r5, #0x18]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	strb r7, [r4, r6]
	ldrsb r0, [r4, r6]!
	cmp r0, #0x3a
	bne _02222918
	add r4, r4, #1
	mov r0, r4
	bl atoi
	strh r0, [r5, #0x20]
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02222900:
	ldrsb r0, [r4, #1]!
	cmp r0, #0
	beq _0222292C
	cmp r0, #0x2f
	bne _02222900
	b _0222292C
_02222918:
	cmp r8, #0
	ldrne r0, _022229A8 ; =0x000001BB
	strneh r0, [r5, #0x20]
	moveq r0, #0x50
	streqh r0, [r5, #0x20]
_0222292C:
	ldrsb r0, [r4]
	cmp r0, #0
	ldreq r4, _022229AC ; =0x022299AC
	mov r0, r4
	bl ov4_021EA8AC
	mov r1, #0x20
	mov r7, r0
	str r0, [r5, #0x24]
	bl strchr
	cmp r0, #0
	beq _0222297C
	mov r6, #0x2b
	mov r4, #0x20
_02222960:
	strb r6, [r0]
	ldr r7, [r5, #0x24]
	mov r1, r4
	mov r0, r7
	bl strchr
	cmp r0, #0
	bne _02222960
_0222297C:
	cmp r7, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0222298C: .word Unk_ov60_02229968
_02222990: .word Unk_ov60_02229974
_02222994: .word Unk_ov60_022298D4
_02222998: .word Unk_ov60_02229984
_0222299C: .word Unk_ov60_02229994
_022229A0: .word Unk_ov60_0222999C
_022229A4: .word Unk_ov60_022299A8
_022229A8: .word 0x000001BB
_022229AC: .word Unk_ov60_022299AC
	arm_func_end ov60_022227F8

	arm_func_start ov60_022229B0
ov60_022229B0: ; 0x022229B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r4, r0
	mov r2, r1
	bl ov60_02220754
	bl ov4_021EA8A4
	mov r0, r4
	bl ov60_022227F8
	cmp r0, #0
	bne _022229EC
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #3
	str r0, [r4, #0x38]
	ldmia sp!, {r3, r4, r5, pc}
_022229EC:
	ldr r5, [r4, #0x15c]
	cmp r5, #0
	bne _02222A08
	ldr r0, _02222A70 ; =0x02229E28
	ldr r5, [r0, #0]
	cmp r5, #0
	ldreq r5, [r4, #0x18]
_02222A08:
	mov r0, r5
	bl ov4_021EAF1C
	mvn r1, #0
	str r0, [r4, #0x1c]
	cmp r0, r1
	bne _02222A54
	mov r0, r5
	bl ov4_0220854C
	cmp r0, #0
	bne _02222A44
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #4
	str r0, [r4, #0x38]
	ldmia sp!, {r3, r4, r5, pc}
_02222A44:
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	str r0, [r4, #0x1c]
_02222A54:
	mov r1, #0
	mov r3, #1
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02222A70: .word Unk_ov60_02229E28
	arm_func_end ov60_022229B0

	arm_func_start ov60_02222A74
ov60_02222A74: ; 0x02222A74
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r1, [r4, #0x48]
	mvn r0, #0
	cmp r1, r0
	bne _02222C20
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl ov4_021EACDC
	mvn r1, #0
	str r0, [r4, #0x48]
	cmp r0, r1
	bne _02222AD4
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #5
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x48]
	bl ov4_021EAF38
	add sp, sp, #0x10
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
_02222AD4:
	mov r1, #0
	bl ov4_021EA924
	cmp r0, #0
	bne _02222B08
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #5
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x48]
	bl ov4_021EAF38
	add sp, sp, #0x10
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
_02222B08:
	ldr r0, [r4, #0x134]
	cmp r0, #0
	beq _02222B24
	ldr r1, _02222CB8 ; =0x02229120
	ldr r0, [r4, #0x48]
	ldr r1, [r1, #0]
	bl ov4_021EA964
_02222B24:
	add r2, sp, #8
	mov r1, #0
	str r1, [r2, #0]
	mov r0, #2
	str r1, [r2, #4]
	strb r0, [sp, #9]
	ldr r0, [r4, #0x15c]
	cmp r0, #0
	beq _02222B6C
	add r0, r4, #0x100
	ldrh r0, [r0, #0x60]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0xa]
	b _02222BBC
_02222B6C:
	ldr r0, _02222CBC ; =0x02229E28
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02222BA0
	ldr r0, _02222CC0 ; =0x02229E24
	ldrh r0, [r0]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0xa]
	b _02222BBC
_02222BA0:
	ldrh r0, [r4, #0x20]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0xa]
_02222BBC:
	ldr r0, [r4, #0x1c]
	add r1, sp, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x48]
	mov r2, #8
	bl ov4_021EAD78
	mvn r1, #0
	cmp r0, r1
	bne _02222C20
	ldr r0, [r4, #0x48]
	bl ov4_021EAF38
	mvn r2, #5
	cmp r0, r2
	subne r1, r2, #0x14
	cmpne r0, r1
	subne r1, r2, #0x46
	cmpne r0, r1
	beq _02222C20
	mov r1, #1
	str r1, [r4, #0xfc]
	mov r1, #6
	str r1, [r4, #0x38]
	add sp, sp, #0x10
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
_02222C20:
	ldr r0, [r4, #0x48]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, #0
	bl ov4_021EAA74
	cmp r0, #0
	movgt r1, #1
	movle r1, #0
	mvn r0, #0
	cmp r1, r0
	beq _02222C58
	ldr r0, [sp]
	cmp r0, #0
	beq _02222C88
_02222C58:
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #6
	cmp r1, #0
	addne sp, sp, #0x10
	str r0, [r4, #0x38]
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x48]
	bl ov4_021EAF38
	add sp, sp, #0x10
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
_02222C88:
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	mov r3, #2
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02222CB8: .word Unk_ov60_02229120
_02222CBC: .word Unk_ov60_02229E28
_02222CC0: .word Unk_ov60_02229E24
	arm_func_end ov60_02222A74

	arm_func_start ov60_02222CC4
ov60_02222CC4: ; 0x02222CC4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	sub sp, sp, #0x400
	mov r4, r0
	ldr r1, [r4, #0x168]
	cmp r1, #0
	bne _02222D38
	ldr r0, [r4, #0x14]
	ldr r1, _02222E10 ; =0x0222999C
	mov r2, #8
	bl strncmp
	cmp r0, #0
	bne _02222D14
	mov r0, #1
	add sp, sp, #4
	str r0, [r4, #0xfc]
	mov r0, #0x11
	add sp, sp, #0x400
	str r0, [r4, #0x38]
	ldmia sp!, {r3, r4, pc}
_02222D14:
	mov r1, #0
	mov r3, #3
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, pc}
_02222D38:
	ldr r1, [r4, #0x170]
	cmp r1, #0
	beq _02222D64
	mov r1, #0
	mov r3, #3
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, pc}
_02222D64:
	ldr r1, [r4, #0x16c]
	cmp r1, #0
	bne _02222DA4
	ldr r2, [r4, #0x174]
	add r1, r4, #0x164
	blx r2
	cmp r0, #3
	bne _02222DA4
	ldr r0, _02222E14 ; =0x022299B0
	ldr r1, _02222E18 ; =0x02229974
	ldr r2, _02222E1C ; =0x02229914
	ldr r3, _02222E20 ; =0x00000146
	bl __msl_assertion_failed
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, pc}
_02222DA4:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	cmp r1, r0
	bge _02222DEC
	mov r0, r4
	bl ov60_02220548
	cmp r0, #0
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	cmp r1, r0
	addlt sp, sp, #4
	addlt sp, sp, #0x400
	ldmltia sp!, {r3, r4, pc}
	add r0, r4, #0x50
	bl ov60_02220504
_02222DEC:
	mov r3, #0x400
	add r1, sp, #4
	add r2, sp, #0
	mov r0, r4
	str r3, [sp]
	bl ov60_0222097C
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02222E10: .word Unk_ov60_0222999C
_02222E14: .word Unk_ov60_022299B0
_02222E18: .word Unk_ov60_02229974
_02222E1C: .word Unk_ov60_02229914
_02222E20: .word 0x00000146
	arm_func_end ov60_02222CC4

	arm_func_start ov60_02222E24
ov60_02222E24: ; 0x02222E24
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	bne _02222FFC
	ldr r0, [r5, #0x13c]
	add r4, r5, #0x50
	cmp r0, #0
	ldrne r1, _02223058 ; =0x022299B4
	bne _02222E60
	ldr r0, [r5, #0xc]
	cmp r0, #3
	ldreq r1, _0222305C ; =0x022299BC
	ldrne r1, _02223060 ; =0x022299C4
_02222E60:
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
	ldr r0, [r5, #0x15c]
	mov r2, #0
	cmp r0, #0
	ldreq r0, _02223064 ; =0x02229E28
	ldreq r0, [r0]
	cmpeq r0, #0
	beq _02222E98
	ldr r1, [r5, #0x14]
	mov r0, r4
	bl ov60_02220130
	b _02222EA4
_02222E98:
	ldr r1, [r5, #0x24]
	mov r0, r4
	bl ov60_02220130
_02222EA4:
	ldr r1, _02223068 ; =0x022299CC
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
	ldrh r0, [r5, #0x20]
	cmp r0, #0x50
	bne _02222ED4
	ldr r2, [r5, #0x18]
	ldr r1, _0222306C ; =0x022299D8
	mov r0, r4
	bl ov60_022203EC
	b _02222F1C
_02222ED4:
	ldr r1, _02223070 ; =0x022299E0
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
	ldr r1, [r5, #0x18]
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
	mov r0, r4
	mov r1, #0x3a
	bl ov60_0222046C
	ldrh r1, [r5, #0x20]
	mov r0, r4
	bl ov60_022204CC
	mov r0, r4
	ldr r1, _02223074 ; =0x022299E8
	mov r2, #2
	bl ov60_02220130
_02222F1C:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _02222F38
	ldr r1, _02223078 ; =0x022299EC
	bl strstr
	cmp r0, #0
	bne _02222F48
_02222F38:
	ldr r1, _02223078 ; =0x022299EC
	ldr r2, _0222307C ; =0x022299F8
	mov r0, r4
	bl ov60_022203EC
_02222F48:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _02222F68
	ldr r1, _02223080 ; =0x02229A08
	ldr r2, _02223084 ; =0x02229A14
	mov r0, r4
	bl ov60_022203EC
	b _02222F78
_02222F68:
	ldr r1, _02223080 ; =0x02229A08
	ldr r2, _02223088 ; =0x02229A20
	mov r0, r4
	bl ov60_022203EC
_02222F78:
	ldr r0, [r5, #0x13c]
	cmp r0, #0
	beq _02222FBC
	ldr r2, [r5, #0x14c]
	ldr r1, _0222308C ; =0x02229A28
	add r0, sp, #0
	bl sprintf
	ldr r1, _02223090 ; =0x02229A2C
	add r2, sp, #0
	mov r0, r4
	bl ov60_022203EC
	mov r0, r5
	bl ov60_02221924
	mov r2, r0
	ldr r1, _02223094 ; =0x02229A3C
	mov r0, r4
	bl ov60_022203EC
_02222FBC:
	ldr r1, [r5, #0x28]
	cmp r1, #0
	beq _02222FD4
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
_02222FD4:
	ldr r1, _02223074 ; =0x022299E8
	mov r0, r4
	mov r2, #2
	bl ov60_02220130
	add r0, r5, #0x50
	cmp r4, r0
	beq _02222FFC
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	bl ov60_02220130
_02222FFC:
	mov r0, r5
	bl ov60_02220548
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x60]
	ldr r0, [r5, #0x5c]
	cmp r1, r0
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x50
	bl ov60_02220504
	ldr r0, [r5, #0x13c]
	mov r1, #0
	cmp r0, #0
	movne r0, #4
	moveq r0, #5
	str r0, [r5, #0x10]
	mov r0, r5
	mov r2, r1
	bl ov60_02220754
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02223058: .word Unk_ov60_022299B4
_0222305C: .word Unk_ov60_022299BC
_02223060: .word Unk_ov60_022299C4
_02223064: .word Unk_ov60_02229E28
_02223068: .word Unk_ov60_022299CC
_0222306C: .word Unk_ov60_022299D8
_02223070: .word Unk_ov60_022299E0
_02223074: .word Unk_ov60_022299E8
_02223078: .word Unk_ov60_022299EC
_0222307C: .word Unk_ov60_022299F8
_02223080: .word Unk_ov60_02229A08
_02223084: .word Unk_ov60_02229A14
_02223088: .word Unk_ov60_02229A20
_0222308C: .word Unk_ov60_02229A28
_02223090: .word Unk_ov60_02229A2C
_02223094: .word Unk_ov60_02229A3C
	arm_func_end ov60_02222E24

	arm_func_start ov60_02223098
ov60_02223098: ; 0x02223098
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r5, [r6, #0x148]
	bl ov60_02222578
	movs r4, r0
	bne _022230E4
	ldr r0, [r6, #0xfc]
	cmp r0, #0
	ldrne r0, [r6, #0x38]
	cmpne r0, #0
	bne _022230D8
	ldr r0, _02223124 ; =0x02229A4C
	ldr r1, _02223128 ; =0x02229974
	ldr r2, _0222312C ; =0x022298E0
	mov r3, #0x200
	bl __msl_assertion_failed
_022230D8:
	mov r0, r6
	bl ov60_02221EDC
	ldmia sp!, {r4, r5, r6, pc}
_022230E4:
	ldr r0, [r6, #0x148]
	cmp r5, r0
	beq _022230F8
	mov r0, r6
	bl ov60_022207D0
_022230F8:
	cmp r4, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov60_02221EDC
	mov r1, #0
	mov r3, #5
	mov r0, r6
	mov r2, r1
	str r3, [r6, #0x10]
	bl ov60_02220754
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02223124: .word Unk_ov60_02229A4C
_02223128: .word Unk_ov60_02229974
_0222312C: .word Unk_ov60_022298E0
	arm_func_end ov60_02223098

	arm_func_start ov60_02223130
ov60_02223130: ; 0x02223130
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r2, #0
	ldr r0, [r4, #0x48]
	add r1, sp, #0
	mov r3, r2
	bl ov4_021EAA74
	mvn r1, #0
	cmp r0, r1
	bne _02223180
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #5
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x48]
	bl ov4_021EAF38
	add sp, sp, #4
	str r0, [r4, #0x4c]
	ldmia sp!, {r3, r4, pc}
_02223180:
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r1, #0
	mov r3, #6
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov60_02223130

	arm_func_start ov60_022231B0
ov60_022231B0: ; 0x022231B0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	movs r4, r0
	bne _022231D4
	ldr r0, _022232DC ; =0x02229968
	ldr r1, _022232E0 ; =0x02229974
	ldr r2, _022232E4 ; =0x022298F0
	ldr r3, _022232E8 ; =0x0000024E
	bl __msl_assertion_failed
_022231D4:
	ldr r0, [r4, #0x80]
	cmp r0, #0
	bgt _022231F4
	ldr r0, _022232EC ; =0x02229A78
	ldr r1, _022232E0 ; =0x02229974
	ldr r2, _022232E4 ; =0x022298F0
	ldr r3, _022232F0 ; =0x0000024F
	bl __msl_assertion_failed
_022231F4:
	add r1, sp, #0xc
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #0x78]
	ldr r1, _022232F4 ; =0x02229A98
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sscanf
	mov ip, #0
	ldr r5, [sp, #8]
	mov lr, #1
	ldr r2, _022232F8 ; =0x020FE864
	mov r3, ip
	b _02223238
_02223230:
	add r5, r5, #1
	str r5, [sp, #8]
_02223238:
	ldr r1, [r4, #0x78]
	ldrsb r1, [r1, r5]
	cmp r1, #0
	beq _02223274
	mov r6, lr
	blt _02223258
	cmp r1, #0x80
	movlt r6, ip
_02223258:
	cmp r6, #0
	movne r1, r3
	moveq r1, r1, lsl #1
	ldreqh r1, [r2, r1]
	andeq r1, r1, #0x100
	cmp r1, #0
	bne _02223230
_02223274:
	cmp r0, #3
	bne _02223298
	ldr r1, [sp, #0x14]
	cmp r1, #1
	ldrge r0, [sp, #0xc]
	cmpge r0, #0x64
	blt _02223298
	cmp r0, #0x258
	blt _022232B4
_02223298:
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #7
	str r0, [r4, #0x38]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_022232B4:
	str r1, [r4, #0xe4]
	ldr r1, [sp, #0x10]
	mov r0, #1
	str r1, [r4, #0xe8]
	ldr r1, [sp, #0xc]
	str r1, [r4, #0xec]
	ldr r1, [sp, #8]
	str r1, [r4, #0xf0]
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022232DC: .word Unk_ov60_02229968
_022232E0: .word Unk_ov60_02229974
_022232E4: .word Unk_ov60_022298F0
_022232E8: .word 0x0000024E
_022232EC: .word Unk_ov60_02229A78
_022232F0: .word 0x0000024F
_022232F4: .word Unk_ov60_02229A98
_022232F8: .word 0x020FE864
	arm_func_end ov60_022231B0

	arm_func_start ov60_022232FC
ov60_022232FC: ; 0x022232FC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	sub sp, sp, #0x400
	mov r3, #0x400
	add r1, sp, #4
	add r2, sp, #0
	mov r4, r0
	str r3, [sp]
	bl ov60_0222097C
	mov r5, r0
	cmp r5, #3
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r4, r5, pc}
	cmp r5, #1
	ldreq r1, [r4, #0x84]
	ldreq r0, [r4, #0x80]
	cmpeq r1, r0
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r4, r5, pc}
	cmp r5, #0
	bne _02223378
	ldr r2, [sp]
	add r1, sp, #4
	add r0, r4, #0x74
	bl ov60_02220130
	cmp r0, #0
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r4, r5, pc}
_02223378:
	ldr r0, [r4, #0x78]
	ldr r1, _02223420 ; =0x022299E8
	bl strstr
	cmp r0, #0
	beq _022233E8
	mov r1, #0
	strb r1, [r0]
	ldr r1, [r4, #0x78]
	sub r5, r0, r1
	add r1, r5, #1
	mov r0, r4
	str r1, [r4, #0xf8]
	bl ov60_022231B0
	cmp r0, #0
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r4, r5, pc}
	add r3, r5, #2
	mov r1, #0
	str r3, [r4, #0x84]
	mov r3, #7
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r4, r5, pc}
_022233E8:
	cmp r5, #2
	addne sp, sp, #4
	addne sp, sp, #0x400
	ldmneia sp!, {r4, r5, pc}
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #7
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x48]
	bl ov4_021EAF38
	str r0, [r4, #0x4c]
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02223420: .word Unk_ov60_022299E8
	arm_func_end ov60_022232FC

	arm_func_start ov60_02223424
ov60_02223424: ; 0x02223424
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x100]
	mov ip, #0
	add r3, r0, r2
	str r3, [r4, #0x100]
	ldr r0, [r4, #0x104]
	mov lr, ip
	cmp r3, r0
	beq _02223458
	ldr r0, [r4, #0x130]
	cmp r0, #0
	beq _02223460
_02223458:
	mov r0, #1
	str r0, [r4, #0xfc]
_02223460:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0222348C
	add r0, r4, #0xbc
	bl ov60_02220130
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr ip, [r4, #0xc0]
	ldr lr, [r4, #0xc8]
	b _022234CC
_0222348C:
	cmp r0, #1
	bne _022234C0
	cmp r2, #0
	beq _022234B4
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #0xd
	str r0, [r4, #0x38]
	mov r0, #0
	ldmia sp!, {r4, pc}
_022234B4:
	mov ip, r1
	mov lr, r2
	b _022234CC
_022234C0:
	cmp r0, #2
	moveq ip, r1
	moveq lr, r2
_022234CC:
	mov r0, r4
	mov r1, ip
	mov r2, lr
	bl ov60_02220754
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov60_02223424

	arm_func_start ov60_022234E4
ov60_022234E4: ; 0x022234E4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x120]
	cmp r0, #0
	bne _02223510
	ldr r0, _02223534 ; =0x02229AA8
	ldr r1, _02223538 ; =0x02229974
	ldr r2, _0222353C ; =0x02229900
	ldr r3, _02223540 ; =0x00000321
	bl __msl_assertion_failed
_02223510:
	ldr r1, _02223544 ; =0x02229AAC
	add r2, sp, #0
	add r0, r4, #0x114
	bl sscanf
	cmp r0, #1
	mvnne r0, #0
	ldreq r0, [sp]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02223534: .word Unk_ov60_02229AA8
_02223538: .word Unk_ov60_02229974
_0222353C: .word Unk_ov60_02229900
_02223540: .word 0x00000321
_02223544: .word Unk_ov60_02229AAC
	arm_func_end ov60_022234E4

	arm_func_start ov60_02223548
ov60_02223548: ; 0x02223548
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r0
	mov r7, r1
	mov r6, r2
	bne _02223570
	ldr r0, _022235F8 ; =0x02229968
	ldr r1, _022235FC ; =0x02229974
	ldr r2, _02223600 ; =0x02229948
	ldr r3, _02223604 ; =0x00000333
	bl __msl_assertion_failed
_02223570:
	cmp r7, #0
	bne _0222358C
	ldr r0, _02223608 ; =0x02229AB0
	ldr r1, _022235FC ; =0x02229974
	ldr r2, _02223600 ; =0x02229948
	mov r3, #0x334
	bl __msl_assertion_failed
_0222358C:
	cmp r6, #0
	bge _022235A8
	ldr r0, _0222360C ; =0x02229AB8
	ldr r1, _022235FC ; =0x02229974
	ldr r2, _02223600 ; =0x02229948
	ldr r3, _02223610 ; =0x00000335
	bl __msl_assertion_failed
_022235A8:
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [r4, #0x120]
	cmp r3, #0xa
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	rsb r5, r3, #0xa
	cmp r5, r6
	movge r5, r6
	add r0, r4, #0x114
	mov r1, r7
	mov r2, r5
	add r0, r0, r3
	bl memcpy
	ldr r0, [r4, #0x120]
	mov r1, #0
	add r0, r0, r5
	str r0, [r4, #0x120]
	add r0, r4, r0
	strb r1, [r0, #0x114]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022235F8: .word Unk_ov60_02229968
_022235FC: .word Unk_ov60_02229974
_02223600: .word Unk_ov60_02229948
_02223604: .word 0x00000333
_02223608: .word Unk_ov60_02229AB0
_0222360C: .word Unk_ov60_02229AB8
_02223610: .word 0x00000335
	arm_func_end ov60_02223548

	arm_func_start ov60_02223614
ov60_02223614: ; 0x02223614
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _0222363C
	ldr r0, _02223810 ; =0x02229968
	ldr r1, _02223814 ; =0x02229974
	ldr r2, _02223818 ; =0x0222992C
	ldr r3, _0222381C ; =0x0000035D
	bl __msl_assertion_failed
_0222363C:
	cmp r5, #0
	bne _02223658
	ldr r0, _02223820 ; =0x02229AB0
	ldr r1, _02223814 ; =0x02229974
	ldr r2, _02223818 ; =0x0222992C
	ldr r3, _02223824 ; =0x0000035E
	bl __msl_assertion_failed
_02223658:
	cmp r4, #0
	bgt _02223674
	ldr r0, _02223828 ; =0x02229AC4
	ldr r1, _02223814 ; =0x02229974
	ldr r2, _02223818 ; =0x0222992C
	ldr r3, _0222382C ; =0x0000035F
	bl __msl_assertion_failed
_02223674:
	ldr r0, [r6, #0x110]
	cmp r0, #0
	beq _022237FC
	cmp r4, #0
	ble _022237F4
	mov r8, #0
	mov fp, #1
	mov sb, #3
	mvn r7, #0
_02223698:
	ldr r0, [r6, #0x128]
	cmp r0, #0
	bne _0222372C
	mov r0, r5
	mov r1, #0xa
	bl strchr
	movs sl, r0
	beq _02223714
	mov r0, r6
	mov r1, r5
	sub r2, sl, r5
	bl ov60_02223548
	add r1, sl, #1
	sub r2, r1, r5
	mov r0, r6
	sub r4, r4, r2
	mov r5, r1
	bl ov60_022234E4
	str r0, [r6, #0x124]
	cmp r0, r7
	bne _02223704
	mov r0, #1
	str r0, [r6, #0xfc]
	mov r0, #7
	str r0, [r6, #0x38]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223704:
	cmp r0, #0
	streq sb, [r6, #0x128]
	strne fp, [r6, #0x128]
	b _022237EC
_02223714:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov60_02223548
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222372C:
	cmp r0, #1
	bne _0222377C
	ldr sl, [r6, #0x124]
	mov r0, r6
	cmp sl, r4
	movge sl, r4
	mov r1, r5
	mov r2, sl
	bl ov60_02223424
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r6, #0x124]
	add r5, r5, sl
	subs r0, r0, sl
	str r0, [r6, #0x124]
	moveq r0, #2
	sub r4, r4, sl
	streq r0, [r6, #0x128]
	b _022237EC
_0222377C:
	cmp r0, #2
	bne _022237C0
	mov r0, r5
	mov r1, #0xa
	bl strchr
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	strb r8, [r6, #0x114]
	str r8, [r6, #0x120]
	add r0, r0, #1
	sub r1, r0, r5
	str r8, [r6, #0x124]
	mov r5, r0
	str r8, [r6, #0x128]
	sub r4, r4, r1
	b _022237EC
_022237C0:
	cmp r0, #3
	moveq r0, #1
	streq r0, [r6, #0xfc]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _02223830 ; =0x022299B0
	ldr r1, _02223814 ; =0x02229974
	ldr r2, _02223818 ; =0x0222992C
	ldr r3, _02223834 ; =0x000003E3
	bl __msl_assertion_failed
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022237EC:
	cmp r4, #0
	bgt _02223698
_022237F4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022237FC:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov60_02223424
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02223810: .word Unk_ov60_02229968
_02223814: .word Unk_ov60_02229974
_02223818: .word Unk_ov60_0222992C
_0222381C: .word 0x0000035D
_02223820: .word Unk_ov60_02229AB0
_02223824: .word 0x0000035E
_02223828: .word Unk_ov60_02229AC4
_0222382C: .word 0x0000035F
_02223830: .word Unk_ov60_022299B0
_02223834: .word 0x000003E3
	arm_func_end ov60_02223614

	arm_func_start ov60_02223838
ov60_02223838: ; 0x02223838
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r0
	mov r0, #0x1000
	bl ov4_021D7880
	str r0, [sp, #4]
	cmp r0, #0
	bne _0222386C
	mov r0, #1
	str r0, [sl, #0xfc]
	add sp, sp, #0x18
	str r0, [sl, #0x38]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222386C:
	ldr r1, [sp, #4]
	mov r3, #0x1000
	add r2, sp, #8
	mov r0, sl
	str r3, [sp, #8]
	bl ov60_0222097C
	mov r6, r0
	cmp r6, #3
	beq _02223C74
	cmp r6, #1
	ldreq r1, [sl, #0x84]
	ldreq r0, [sl, #0x80]
	cmpeq r1, r0
	beq _02223C74
	cmp r6, #0
	bne _022238C4
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	add r0, sl, #0x74
	bl ov60_02220130
	cmp r0, #0
	beq _02223C74
_022238C4:
	ldr r5, [sl, #0x84]
	ldr r4, [sl, #0x78]
	ldr r1, _02223C84 ; =0x02229ACC
	add r0, r4, r5
	str r5, [sl, #0xf4]
	bl strstr
	cmp r0, #0
	bne _022238F0
	ldr r1, _02223C88 ; =0x02229AD4
	add r0, r4, r5
	bl strstr
_022238F0:
	cmp r0, #0
	beq _02223C50
	mov r1, #0
	strb r1, [r0, #2]
	ldr r2, [sl, #0x78]
	add r7, r0, #2
	ldr r1, [sl, #0x80]
	sub r3, r7, r2
	str r3, [sl, #0x80]
	add r6, r0, #4
	ldr r3, [sl, #0x78]
	sub r2, r6, r2
	sub r0, r7, r3
	str r0, [sl, #0xf8]
	str r0, [sl, #0x84]
	ldr r3, [sl, #0xec]
	ldr r7, _02223C8C ; =0x51EB851F
	mov r0, r3, lsr #0x1f
	smull r3, r8, r7, r3
	add r8, r0, r8, asr #5
	cmp r8, #1
	sub r7, r1, r2
	bne _02223998
	cmp r7, #0
	beq _02223974
	ldr r0, [sl, #0x78]
	mov r1, r6
	add r2, r7, #1
	bl memmove
	str r7, [sl, #0x80]
	mov r0, #0
	str r0, [sl, #0x84]
	b _0222397C
_02223974:
	add r0, sl, #0x74
	bl ov60_02220504
_0222397C:
	mov r1, #0
	mov r3, #6
	mov r0, sl
	mov r2, r1
	str r3, [sl, #0x10]
	bl ov60_02220754
	b _02223C74
_02223998:
	cmp r8, #3
	bne _02223AE8
	ldr r0, [sl, #0x10c]
	cmp r0, #0xa
	ble _022239C0
	mov r0, #1
	str r0, [sl, #0xfc]
	mov r0, #0xb
	str r0, [sl, #0x38]
	b _02223C74
_022239C0:
	ldr r1, _02223C90 ; =0x02229AD8
	add r0, r4, r5
	bl strstr
	cmp r0, #0
	beq _02223AE8
	add r4, r0, #9
	ldr r1, _02223C94 ; =0x020FE864
	mov r2, #0
	b _022239E8
_022239E4:
	add r4, r4, #1
_022239E8:
	ldrsb r0, [r4]
	cmp r0, #0
	blt _022239FC
	cmp r0, #0x80
	blt _02223A04
_022239FC:
	mov r0, r2
	b _02223A10
_02223A04:
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	and r0, r0, #0x100
_02223A10:
	cmp r0, #0
	bne _022239E4
	mov r3, r4
	ldr r1, _02223C94 ; =0x020FE864
	mov r2, #0
	b _02223A2C
_02223A28:
	add r3, r3, #1
_02223A2C:
	ldrsb r0, [r3]
	cmp r0, #0
	beq _02223A60
	blt _02223A44
	cmp r0, #0x80
	blt _02223A4C
_02223A44:
	mov r0, r2
	b _02223A58
_02223A4C:
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	and r0, r0, #0x100
_02223A58:
	cmp r0, #0
	beq _02223A28
_02223A60:
	mov r0, #0
	strb r0, [r3]
	ldrsb r0, [r4]
	cmp r0, #0x2f
	bne _02223AC4
	ldr r0, [sl, #0x18]
	bl strlen
	mov r5, r0
	mov r0, r4
	bl strlen
	add r1, r5, #0xe
	add r0, r1, r0
	bl ov4_021D7880
	str r0, [sl, #0x108]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sl, #0xfc]
	streq r0, [sl, #0x38]
	str r4, [sp]
	ldrh r3, [sl, #0x20]
	ldr r0, [sl, #0x108]
	ldr r2, [sl, #0x18]
	ldr r1, _02223C98 ; =0x02229AE4
	bl sprintf
	b _02223C74
_02223AC4:
	mov r0, r4
	bl ov4_021EA8AC
	str r0, [sl, #0x108]
	cmp r0, #0
	bne _02223C74
	mov r0, #1
	str r0, [sl, #0xfc]
	str r0, [sl, #0x38]
	b _02223C74
_02223AE8:
	ldr r1, _02223C9C ; =0x02229AF4
	add r0, r4, r5
	bl strstr
	movs fp, r0
	beq _02223BC0
	ldr r8, _02223CA0 ; =0x02228C6C
	add r1, sp, #0xc
	mov r3, #5
_02223B08:
	ldrb r2, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	strb r2, [r1]
	strb r0, [r1, #1]
	add r1, r1, #2
	subs r3, r3, #1
	bne _02223B08
	ldrb r2, [r8]
	add r8, fp, #0x10
	add r0, sp, #0xc
	mov sb, r8
	strb r2, [r1]
	bl strlen
	b _02223B48
_02223B44:
	add sb, sb, #1
_02223B48:
	cmp sb, #0
	ldrnesb r1, [sb]
	cmpne r1, #0
	cmpne r1, #0xa
	cmpne r1, #0xd
	cmpne r1, #0x20
	bne _02223B44
	sub r2, sb, r8
	cmp r2, r0
	ble _02223B84
	mov r0, #1
	str r0, [sl, #0xfc]
	mov r0, #0x10
	str r0, [sl, #0x38]
	b _02223C74
_02223B84:
	cmp r0, r2
	bne _02223BB4
	add r1, sp, #0xc
	mov r0, r8
	bl strncmp
	cmp r0, #0
	blt _02223BB4
	mov r0, #1
	str r0, [sl, #0xfc]
	mov r0, #0x10
	str r0, [sl, #0x38]
	b _02223C74
_02223BB4:
	mov r0, r8
	bl atoi
	str r0, [sl, #0x104]
_02223BC0:
	ldr r1, _02223CA4 ; =0x02229B04
	add r0, r4, r5
	bl strstr
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [sl, #0x110]
	cmp r0, #0
	beq _02223BF8
	mov r0, #0
	strb r0, [sl, #0x114]
	str r0, [sl, #0x120]
	str r0, [sl, #0x124]
	str r0, [sl, #0x128]
_02223BF8:
	ldr r0, [sl, #0xc]
	sub r0, r0, #3
	cmp r0, #1
	movls r0, #1
	strls r0, [sl, #0xfc]
	bls _02223C74
	mov r0, #8
	str r0, [sl, #0x10]
	cmp fp, #0
	beq _02223C34
	ldr r0, [sl, #0x104]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sl, #0xfc]
	beq _02223C74
_02223C34:
	cmp r7, #0
	ble _02223C74
	mov r0, sl
	mov r1, r6
	mov r2, r7
	bl ov60_02223614
	b _02223C74
_02223C50:
	cmp r6, #2
	bne _02223C74
	mov r0, #1
	str r0, [sl, #0xfc]
	mov r0, #7
	str r0, [sl, #0x38]
	ldr r0, [sl, #0x48]
	bl ov4_021EAF38
	str r0, [sl, #0x4c]
_02223C74:
	ldr r0, [sp, #4]
	bl ov4_021D78B0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02223C84: .word Unk_ov60_02229ACC
_02223C88: .word Unk_ov60_02229AD4
_02223C8C: .word 0x51EB851F
_02223C90: .word Unk_ov60_02229AD8
_02223C94: .word 0x020FE864
_02223C98: .word Unk_ov60_02229AE4
_02223C9C: .word Unk_ov60_02229AF4
_02223CA0: .word Unk_ov60_02228C6C
_02223CA4: .word Unk_ov60_02229B04
	arm_func_end ov60_02223838

	arm_func_start ov60_02223CA8
ov60_02223CA8: ; 0x02223CA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	bl ov4_021EA840
	mov r7, r0
	mov r0, #0x2000
	mov r8, #0
	bl ov4_021D7880
	movs r6, r0
	bne _02223CDC
	mov r0, #1
	str r0, [sb, #0xfc]
	str r0, [sb, #0x38]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02223CDC:
	mov r5, #0x2000
	add r4, sp, #0
	b _02223D58
_02223CE8:
	mov r0, sb
	mov r1, r6
	mov r2, r4
	str r5, [sp]
	bl ov60_0222097C
	cmp r0, #3
	cmpne r0, #1
	beq _02223D70
	cmp r0, #2
	bne _02223D38
	mov r0, #1
	str r0, [sb, #0xfc]
	ldr r1, [sb, #0x104]
	cmp r1, #0
	ble _02223D70
	ldr r0, [sb, #0x100]
	cmp r0, r1
	movlt r0, #0xf
	strlt r0, [sb, #0x38]
	b _02223D70
_02223D38:
	ldr r2, [sp]
	mov r0, sb
	mov r1, r6
	bl ov60_02223614
	cmp r0, #0
	beq _02223D70
	bl ov4_021EA840
	sub r8, r0, r7
_02223D58:
	ldr r0, [sb, #0xfc]
	cmp r0, #0
	bne _02223D70
	ldr r0, [sb, #0x158]
	cmp r8, r0
	blo _02223CE8
_02223D70:
	mov r0, r6
	bl ov4_021D78B0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov60_02223CA8

	.rodata


	.global Unk_ov60_02228C64
Unk_ov60_02228C64: ; 0x02228C64
	.incbin "incbin/overlay60_rodata.bin", 0x18, 0x1C - 0x18

	.global Unk_ov60_02228C68
Unk_ov60_02228C68: ; 0x02228C68
	.incbin "incbin/overlay60_rodata.bin", 0x1C, 0x20 - 0x1C

	.global Unk_ov60_02228C6C
Unk_ov60_02228C6C: ; 0x02228C6C
	.incbin "incbin/overlay60_rodata.bin", 0x20, 0xB



	.data


	.global Unk_ov60_022298D4
Unk_ov60_022298D4: ; 0x022298D4
	.incbin "incbin/overlay60_data.bin", 0xA94, 0xAA0 - 0xA94

	.global Unk_ov60_022298E0
Unk_ov60_022298E0: ; 0x022298E0
	.incbin "incbin/overlay60_data.bin", 0xAA0, 0xAB0 - 0xAA0

	.global Unk_ov60_022298F0
Unk_ov60_022298F0: ; 0x022298F0
	.incbin "incbin/overlay60_data.bin", 0xAB0, 0xAC0 - 0xAB0

	.global Unk_ov60_02229900
Unk_ov60_02229900: ; 0x02229900
	.incbin "incbin/overlay60_data.bin", 0xAC0, 0xAD4 - 0xAC0

	.global Unk_ov60_02229914
Unk_ov60_02229914: ; 0x02229914
	.incbin "incbin/overlay60_data.bin", 0xAD4, 0xAEC - 0xAD4

	.global Unk_ov60_0222992C
Unk_ov60_0222992C: ; 0x0222992C
	.incbin "incbin/overlay60_data.bin", 0xAEC, 0xB08 - 0xAEC

	.global Unk_ov60_02229948
Unk_ov60_02229948: ; 0x02229948
	.incbin "incbin/overlay60_data.bin", 0xB08, 0xB28 - 0xB08

	.global Unk_ov60_02229968
Unk_ov60_02229968: ; 0x02229968
	.incbin "incbin/overlay60_data.bin", 0xB28, 0xB34 - 0xB28

	.global Unk_ov60_02229974
Unk_ov60_02229974: ; 0x02229974
	.incbin "incbin/overlay60_data.bin", 0xB34, 0xB44 - 0xB34

	.global Unk_ov60_02229984
Unk_ov60_02229984: ; 0x02229984
	.incbin "incbin/overlay60_data.bin", 0xB44, 0xB54 - 0xB44

	.global Unk_ov60_02229994
Unk_ov60_02229994: ; 0x02229994
	.incbin "incbin/overlay60_data.bin", 0xB54, 0xB5C - 0xB54

	.global Unk_ov60_0222999C
Unk_ov60_0222999C: ; 0x0222999C
	.incbin "incbin/overlay60_data.bin", 0xB5C, 0xB68 - 0xB5C

	.global Unk_ov60_022299A8
Unk_ov60_022299A8: ; 0x022299A8
	.incbin "incbin/overlay60_data.bin", 0xB68, 0xB6C - 0xB68

	.global Unk_ov60_022299AC
Unk_ov60_022299AC: ; 0x022299AC
	.incbin "incbin/overlay60_data.bin", 0xB6C, 0xB70 - 0xB6C

	.global Unk_ov60_022299B0
Unk_ov60_022299B0: ; 0x022299B0
	.incbin "incbin/overlay60_data.bin", 0xB70, 0xB74 - 0xB70

	.global Unk_ov60_022299B4
Unk_ov60_022299B4: ; 0x022299B4
	.incbin "incbin/overlay60_data.bin", 0xB74, 0xB7C - 0xB74

	.global Unk_ov60_022299BC
Unk_ov60_022299BC: ; 0x022299BC
	.incbin "incbin/overlay60_data.bin", 0xB7C, 0xB84 - 0xB7C

	.global Unk_ov60_022299C4
Unk_ov60_022299C4: ; 0x022299C4
	.incbin "incbin/overlay60_data.bin", 0xB84, 0xB8C - 0xB84

	.global Unk_ov60_022299CC
Unk_ov60_022299CC: ; 0x022299CC
	.incbin "incbin/overlay60_data.bin", 0xB8C, 0xB98 - 0xB8C

	.global Unk_ov60_022299D8
Unk_ov60_022299D8: ; 0x022299D8
	.incbin "incbin/overlay60_data.bin", 0xB98, 0xBA0 - 0xB98

	.global Unk_ov60_022299E0
Unk_ov60_022299E0: ; 0x022299E0
	.incbin "incbin/overlay60_data.bin", 0xBA0, 0xBA8 - 0xBA0

	.global Unk_ov60_022299E8
Unk_ov60_022299E8: ; 0x022299E8
	.incbin "incbin/overlay60_data.bin", 0xBA8, 0xBAC - 0xBA8

	.global Unk_ov60_022299EC
Unk_ov60_022299EC: ; 0x022299EC
	.incbin "incbin/overlay60_data.bin", 0xBAC, 0xBB8 - 0xBAC

	.global Unk_ov60_022299F8
Unk_ov60_022299F8: ; 0x022299F8
	.incbin "incbin/overlay60_data.bin", 0xBB8, 0xBC8 - 0xBB8

	.global Unk_ov60_02229A08
Unk_ov60_02229A08: ; 0x02229A08
	.incbin "incbin/overlay60_data.bin", 0xBC8, 0xBD4 - 0xBC8

	.global Unk_ov60_02229A14
Unk_ov60_02229A14: ; 0x02229A14
	.incbin "incbin/overlay60_data.bin", 0xBD4, 0xBE0 - 0xBD4

	.global Unk_ov60_02229A20
Unk_ov60_02229A20: ; 0x02229A20
	.incbin "incbin/overlay60_data.bin", 0xBE0, 0xBE8 - 0xBE0

	.global Unk_ov60_02229A28
Unk_ov60_02229A28: ; 0x02229A28
	.incbin "incbin/overlay60_data.bin", 0xBE8, 0xBEC - 0xBE8

	.global Unk_ov60_02229A2C
Unk_ov60_02229A2C: ; 0x02229A2C
	.incbin "incbin/overlay60_data.bin", 0xBEC, 0xBFC - 0xBEC

	.global Unk_ov60_02229A3C
Unk_ov60_02229A3C: ; 0x02229A3C
	.incbin "incbin/overlay60_data.bin", 0xBFC, 0xC0C - 0xBFC

	.global Unk_ov60_02229A4C
Unk_ov60_02229A4C: ; 0x02229A4C
	.incbin "incbin/overlay60_data.bin", 0xC0C, 0xC38 - 0xC0C

	.global Unk_ov60_02229A78
Unk_ov60_02229A78: ; 0x02229A78
	.incbin "incbin/overlay60_data.bin", 0xC38, 0xC58 - 0xC38

	.global Unk_ov60_02229A98
Unk_ov60_02229A98: ; 0x02229A98
	.incbin "incbin/overlay60_data.bin", 0xC58, 0xC68 - 0xC58

	.global Unk_ov60_02229AA8
Unk_ov60_02229AA8: ; 0x02229AA8
	.incbin "incbin/overlay60_data.bin", 0xC68, 0xC6C - 0xC68

	.global Unk_ov60_02229AAC
Unk_ov60_02229AAC: ; 0x02229AAC
	.incbin "incbin/overlay60_data.bin", 0xC6C, 0xC70 - 0xC6C

	.global Unk_ov60_02229AB0
Unk_ov60_02229AB0: ; 0x02229AB0
	.incbin "incbin/overlay60_data.bin", 0xC70, 0xC78 - 0xC70

	.global Unk_ov60_02229AB8
Unk_ov60_02229AB8: ; 0x02229AB8
	.incbin "incbin/overlay60_data.bin", 0xC78, 0xC84 - 0xC78

	.global Unk_ov60_02229AC4
Unk_ov60_02229AC4: ; 0x02229AC4
	.incbin "incbin/overlay60_data.bin", 0xC84, 0xC8C - 0xC84

	.global Unk_ov60_02229ACC
Unk_ov60_02229ACC: ; 0x02229ACC
	.incbin "incbin/overlay60_data.bin", 0xC8C, 0xC94 - 0xC8C

	.global Unk_ov60_02229AD4
Unk_ov60_02229AD4: ; 0x02229AD4
	.incbin "incbin/overlay60_data.bin", 0xC94, 0xC98 - 0xC94

	.global Unk_ov60_02229AD8
Unk_ov60_02229AD8: ; 0x02229AD8
	.incbin "incbin/overlay60_data.bin", 0xC98, 0xCA4 - 0xC98

	.global Unk_ov60_02229AE4
Unk_ov60_02229AE4: ; 0x02229AE4
	.incbin "incbin/overlay60_data.bin", 0xCA4, 0xCB4 - 0xCA4

	.global Unk_ov60_02229AF4
Unk_ov60_02229AF4: ; 0x02229AF4
	.incbin "incbin/overlay60_data.bin", 0xCB4, 0xCC4 - 0xCB4

	.global Unk_ov60_02229B04
Unk_ov60_02229B04: ; 0x02229B04
	.incbin "incbin/overlay60_data.bin", 0xCC4, 0x1C

