	.include "macros/function.inc"
	.include "include/scenesetlist.inc"

	

	.extern Unk_ov18_02249734
	.text


	arm_func_start ov18_02236BE0
ov18_02236BE0: ; 0x02236BE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	bl ov18_0223DDCC
	mov r4, r0
	mov r0, #0x48
	mov r1, #4
	bl ov18_02245068
	ldr r1, _02236DC4 ; =0x0225332C
	mov r2, #0xc
	str r0, [r1, #8]
	ldrb r3, [r4, #0xf6]
	strb r3, [r0, #0x43]
	ldr r0, [r1, #8]
	strb r2, [r0, #0x42]
	bl ov18_02236FF0
	bl ov18_02236DDC
	ldr r0, _02236DC4 ; =0x0225332C
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02236C50
	bl ov18_0222F74C
	ldr r1, _02236DC8 ; =0x022493B0
	ldrb r2, [r4, #0xf4]
	ldrsb r1, [r1, r0]
	mov r0, #0x30
	add r2, r2, #1
	bl ov18_0222B594
	b _02236C60
_02236C50:
	mov r0, #0x45
	sub r1, r0, #0x46
	mov r2, #0
	bl ov18_0222B594
_02236C60:
	mov r0, #1
	bl ov18_0222B740
	bl ov18_0222BC34
	ldr r0, _02236DC4 ; =0x0225332C
	mov r1, #0x37
	ldrh r3, [r0, #4]
	ldr r2, _02236DCC ; =0xE1FC780F
	mov r0, #2
	mul r5, r3, r1
	smull r1, r3, r2, r5
	add r3, r5, r3
	mov r1, r5, lsr #0x1f
	add r3, r1, r3, asr #7
	str r3, [sp]
	mov r1, #0x55
	mov r2, #0xf1
	mov r3, #0x41
	bl ov18_0223D218
	mov r0, #0
	mov r1, #1
	bl ov18_0224467C
	ldr r6, _02236DC4 ; =0x0225332C
	mov r5, #0
	ldr r1, [r6, #8]
	mov r8, r5
	str r0, [r1, #0x14]
	mov r7, #0x29
_02236CCC:
	mov r0, r8
	mov r1, r7
	bl ov18_02243F60
	ldr r1, [r6, #8]
	add r1, r1, r5, lsl #2
	add r5, r5, #1
	str r0, [r1, #0x18]
	cmp r5, #7
	blt _02236CCC
	ldrb r0, [r4, #0xe7]
	cmp r0, #1
	beq _02236D08
	cmp r0, #2
	beq _02236D3C
	b _02236D6C
_02236D08:
	mov r0, #0
	mov r1, #0x50
	bl ov18_02243F60
	ldr r1, _02236DC4 ; =0x0225332C
	ldr r2, [r1, #8]
	str r0, [r2, #0x34]
	ldr r0, [r1, #8]
	ldr r1, [r0, #0x34]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	b _02236D6C
_02236D3C:
	mov r0, #0
	mov r1, #0x51
	bl ov18_02243F60
	ldr r1, _02236DC4 ; =0x0225332C
	ldr r2, [r1, #8]
	str r0, [r2, #0x34]
	ldr r0, [r1, #8]
	ldr r1, [r0, #0x34]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
_02236D6C:
	ldr r1, _02236DD0 ; =ov18_02238924
	mov r0, #1
	mov r2, #0
	mov r3, #0x6e
	bl ov18_02246304
	ldr r2, _02236DC4 ; =0x0225332C
	ldr r1, _02236DD4 ; =ov18_02238E84
	ldr r2, [r2, #8]
	mov r3, #0x78
	str r0, [r2, #0x3c]
	mov r0, #0
	mov r2, r0
	bl ov18_02246304
	ldr r1, _02236DC4 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0]
	bl ov18_02237BA8
	bl ov18_022389A8
	ldr r0, _02236DD8 ; =ov18_0223702C
	bl ov18_0222F6C4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02236DC4: .word Unk_ov18_0225332C
_02236DC8: .word Unk_ov18_022493B0
_02236DCC: .word 0xE1FC780F
_02236DD0: .word ov18_02238924
_02236DD4: .word ov18_02238E84
_02236DD8: .word ov18_0223702C
	arm_func_end ov18_02236BE0

	arm_func_start ov18_02236DDC
ov18_02236DDC: ; 0x02236DDC
	stmdb sp!, {lr}
	sub sp, sp, #0x44
	ldr r3, _02236FB0 ; =0x0224934F
	add ip, sp, #0x2b
	mov r2, #0xb
_02236DF0:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [ip]
	strb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	bne _02236DF0
	ldrb r0, [r3]
	ldr r3, _02236FB4 ; =0x02249324
	add lr, sp, #0x16
	strb r0, [ip]
	mov r2, #0xa
_02236E24:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [lr]
	strb r0, [lr, #1]
	add lr, lr, #2
	subs r2, r2, #1
	bne _02236E24
	ldrb r0, [r3]
	ldr ip, _02236FB8 ; =0x02249339
	add r3, sp, #0
	strb r0, [lr]
	mov r2, #0xb
_02236E58:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _02236E58
	ldr r3, _02236FBC ; =0x0400000C
	ldr r0, _02236FC0 ; =0x0224A254
	ldrh r2, [r3]
	ldr r1, _02236FC4 ; =0x020C0160
	and r2, r2, #0x43
	orr r2, r2, #0x218
	orr r2, r2, #0xc00
	strh r2, [r3]
	bl ov18_0222B700
	ldr r0, _02236FC8 ; =0x0224A268
	ldr r1, _02236FCC ; =0x020C08AC
	bl ov18_0222B700
	ldr r0, _02236FD0 ; =0x0224A280
	ldr r1, _02236FD4 ; =0x020C07EC
	bl ov18_0222B700
	ldr r1, _02236FD8 ; =GX_LoadBGPltt
	add r0, sp, #0x16
	bl ov18_0222B700
	ldr r0, _02236FDC ; =0x0224A298
	ldr r1, _02236FE0 ; =0x020C05AC
	bl ov18_0222B700
	add r0, sp, #0x2b
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02236FE4 ; =0x0225332C
	ldr r2, [r1, #8]
	str r0, [r2, #8]
	ldr r0, [r1, #8]
	ldr r0, [r0, #8]
	bl ov18_0223D004
	bl ov18_0223D090
	add r0, sp, #0x16
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02236FE4 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0xc]
	add r0, sp, #0
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02236FE4 ; =0x0225332C
	ldr r2, _02236FE8 ; =0x04001008
	ldr r1, [r1, #8]
	str r0, [r1, #0x10]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	sub r2, r2, #0x1000
	ldrh r0, [r2]
	ldr r1, _02236FEC ; =0x0400000A
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
	add sp, sp, #0x44
	ldmia sp!, {pc}
	; .align 2, 0
_02236FB0: .word Unk_ov18_0224934F
_02236FB4: .word Unk_ov18_02249324
_02236FB8: .word Unk_ov18_02249339
_02236FBC: .word 0x0400000C
_02236FC0: .word Unk_ov18_0224A254
_02236FC4: .word 0x020C0160
_02236FC8: .word Unk_ov18_0224A268
_02236FCC: .word 0x020C08AC
_02236FD0: .word Unk_ov18_0224A280
_02236FD4: .word 0x020C07EC
_02236FD8: .word GX_LoadBGPltt
_02236FDC: .word Unk_ov18_0224A298
_02236FE0: .word 0x020C05AC
_02236FE4: .word Unk_ov18_0225332C
_02236FE8: .word 0x04001008
_02236FEC: .word 0x0400000A
	arm_func_end ov18_02236DDC

	arm_func_start ov18_02236FF0
ov18_02236FF0: ; 0x02236FF0
	stmfd sp!, {r3, lr}
	bl ov18_0223DDCC
	add r1, sp, #0
	mov r0, #0
	bl ov18_0222F724
	ldr r0, [sp]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02237028 ; =0x0225332C
	mov r1, #0
	strh r1, [r0, #4]
	strb r1, [r0]
	strb r1, [r0, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02237028: .word Unk_ov18_0225332C
	arm_func_end ov18_02236FF0

	arm_func_start ov18_0223702C
ov18_0223702C: ; 0x0223702C
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
	ldr r0, _0223707C ; =ov18_02237080
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223707C: .word ov18_02237080
	arm_func_end ov18_0223702C

	arm_func_start ov18_02237080
ov18_02237080: ; 0x02237080
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _022370B0 ; =ov18_022370B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022370B0: .word ov18_022370B4
	arm_func_end ov18_02237080

	arm_func_start ov18_022370B4
ov18_022370B4: ; 0x022370B4
	stmfd sp!, {r3, lr}
	bl ov18_022370C4
	bl ov18_022375EC
	ldmia sp!, {r3, pc}
	arm_func_end ov18_022370B4

	arm_func_start ov18_022370C4
ov18_022370C4: ; 0x022370C4
	stmfd sp!, {r3, lr}
	ldr r0, _02237334 ; =0x0225332C
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x45]
	cmpeq r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_02237344
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _02237110
	ldr r0, _02237334 ; =0x0225332C
	ldrb r0, [r0]
	bl ov18_022373C8
	ldmia sp!, {r3, pc}
_02237110:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02237144
	mov r0, #7
	bl ov18_0223E994
	ldr r1, _02237334 ; =0x0225332C
	ldr r0, _02237338 ; =ov18_02237848
	ldr r1, [r1, #8]
	mov r2, #0xd
	strb r2, [r1, #0x40]
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02237144:
	mov r0, #0x200
	bl ov18_022454B0
	cmp r0, #0
	beq _022371BC
	ldr r0, _02237334 ; =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #0x91
	bne _02237190
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02237334 ; =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	ldmia sp!, {r3, pc}
_02237190:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _0223733C ; =ov18_02238880
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02237334 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_022371BC:
	mov r0, #0x200
	bl ov18_022454F0
	cmp r0, #0
	beq _022371E0
	ldr r0, _02237334 ; =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	ldmia sp!, {r3, pc}
_022371E0:
	mov r0, #0x100
	bl ov18_022454B0
	cmp r0, #0
	beq _02237258
	ldr r0, _02237334 ; =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne _0223722C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02237334 ; =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	ldmia sp!, {r3, pc}
_0223722C:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02237340 ; =ov18_022387B8
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02237334 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_02237258:
	mov r0, #0x100
	bl ov18_022454F0
	cmp r0, #0
	beq _0223727C
	ldr r0, _02237334 ; =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	ldmia sp!, {r3, pc}
_0223727C:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _02237298
	mov r0, #1
	bl ov18_02238B60
	ldmia sp!, {r3, pc}
_02237298:
	mov r0, #0x40
	bl ov18_022454F0
	cmp r0, #0
	beq _022372BC
	ldr r0, _02237334 ; =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	ldmia sp!, {r3, pc}
_022372BC:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	beq _022372D8
	mov r0, #3
	bl ov18_02238B60
	ldmia sp!, {r3, pc}
_022372D8:
	mov r0, #0x80
	bl ov18_022454F0
	cmp r0, #0
	beq _022372FC
	ldr r0, _02237334 ; =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	ldmia sp!, {r3, pc}
_022372FC:
	mov r0, #0x20
	bl ov18_022454B0
	cmp r0, #0
	beq _02237318
	mov r0, #0
	bl ov18_02238B60
	ldmia sp!, {r3, pc}
_02237318:
	mov r0, #0x10
	bl ov18_022454B0
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #2
	bl ov18_02238B60
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02237334: .word Unk_ov18_0225332C
_02237338: .word ov18_02237848
_0223733C: .word ov18_02238880
_02237340: .word ov18_022387B8
	arm_func_end ov18_022370C4

	arm_func_start ov18_02237344
ov18_02237344: ; 0x02237344
	stmfd sp!, {r4, lr}
	bl ov18_0223DDCC
	bl ov18_022384DC
	mov r4, r0
	cmp r4, #0xe
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov18_02237F58
	cmp r0, #0
	bne _0223737C
	mov r0, #9
	bl ov18_0223E994
	mov r0, #1
	ldmia sp!, {r4, pc}
_0223737C:
	mov r0, r4
	bl ov18_02238B30
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _022373B8
_02237390: ; jump table
	b _022373B8 ; case 0
	b _022373B8 ; case 1
	b _022373B4 ; case 2
	b _022373B4 ; case 3
	b _022373B8 ; case 4
	b _022373B8 ; case 5
	b _022373B8 ; case 6
	b _022373B4 ; case 7
	b _022373B4 ; case 8
_022373B4:
	bl ov18_02238ED8
_022373B8:
	mov r0, r4
	bl ov18_022373C8
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov18_02237344

	arm_func_start ov18_022373C8
ov18_022373C8: ; 0x022373C8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl ov18_02237F58
	cmp r0, #0
	bne _022373F0
	mov r0, #9
	bl ov18_0223E994
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_022373F0:
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _02237468
_022373FC: ; jump table
	b _02237468 ; case 0
	b _02237468 ; case 1
	b _02237420 ; case 2
	b _02237420 ; case 3
	b _02237468 ; case 4
	b _02237468 ; case 5
	b _02237468 ; case 6
	b _02237444 ; case 7
	b _02237444 ; case 8
_02237420:
	mov r0, #6
	bl ov18_0223E994
	sub r0, r4, #2
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl ov18_02237548
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02237444:
	mov r0, #6
	bl ov18_0223E994
	sub r0, r4, #7
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl ov18_022375B4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02237468:
	ldr r0, _02237538 ; =0x0225332C
	sub r1, r4, #0xb
	ldr r0, [r0, #8]
	cmp r1, #1
	strb r4, [r0, #0x40]
	bhi _022374E4
	bl ov18_02238E50
	bl ov18_02238F9C
	cmp r0, #0
	bne _022374C4
	mov r0, #9
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #6
	str ip, [sp]
	bl ov18_0223FC48
	ldr r0, _0223753C ; =ov18_0223903C
	bl ov18_0222F6C4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_022374C4:
	cmp r4, #0xb
	bne _022374D8
	mov r0, #6
	bl ov18_0223E994
	b _02237524
_022374D8:
	mov r0, #0xe
	bl ov18_0223E994
	b _02237524
_022374E4:
	cmp r4, #0xd
	bne _022374FC
	bl ov18_02238E50
	mov r0, #7
	bl ov18_0223E994
	b _02237524
_022374FC:
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02237540 ; =0x022493D0
	ldrb r0, [r0, r4]
	bl ov18_02238750
	mov r2, r0
	mov r0, #0
	mov r1, #1
	bl ov18_02237FEC
	bl ov18_022382CC
_02237524:
	bl ov18_0223D378
	ldr r0, _02237544 ; =ov18_02237848
	bl ov18_0222F6C4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02237538: .word Unk_ov18_0225332C
_0223753C: .word ov18_0223903C
_02237540: .word Unk_ov18_022493D0
_02237544: .word ov18_02237848
	arm_func_end ov18_022373C8

	arm_func_start ov18_02237548
ov18_02237548: ; 0x02237548
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl ov18_0223DDCC
	ldrb r1, [r0, #0xf5]
	cmp r1, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	beq _02237584
	ldr r0, _022375B0 ; =0x0225332C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x43]
	cmp r0, #0
	movne r5, #1
	moveq r5, #0
	b _02237598
_02237584:
	ldr r1, _022375B0 ; =0x0225332C
	ldrb r2, [r0, #0xf6]
	ldr r0, [r1, #8]
	mov r5, #0
	strb r2, [r0, #0x43]
_02237598:
	mov r0, r4
	bl ov18_0223DDE0
	mov r0, r5
	bl ov18_0223DDF4
	bl ov18_02237BA8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022375B0: .word Unk_ov18_0225332C
	arm_func_end ov18_02237548

	arm_func_start ov18_022375B4
ov18_022375B4: ; 0x022375B4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf6]
	cmp r0, r4
	ldmeqia sp!, {r4, pc}
	ldr r1, _022375E8 ; =0x0225332C
	mov r0, r4
	ldr r1, [r1, #8]
	strb r4, [r1, #0x43]
	bl ov18_0223DDF4
	bl ov18_02237BA8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022375E8: .word Unk_ov18_0225332C
	arm_func_end ov18_022375B4

	arm_func_start ov18_022375EC
ov18_022375EC: ; 0x022375EC
	stmfd sp!, {r3, lr}
	ldr r0, _02237838 ; =0x0225332C
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r0, [r1, #0x41]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r1, #0x41]
	bl ov18_0223D340
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_02237624: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _02237644 ; case 1
	b _02237658 ; case 2
	b _022376AC ; case 3
	b _02237754 ; case 4
	b _02237824 ; case 5
	b _022377BC ; case 6
	b _02237824 ; case 7
_02237644:
	ldr r0, _02237838 ; =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x45]
	ldmia sp!, {r3, pc}
_02237658:
	ldr r0, _02237838 ; =0x0225332C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x41]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222BAF4
	bl ov18_0223D32C
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _0223783C ; =0x094F2095
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	ldr r1, _02237838 ; =0x0225332C
	add r3, r0, r3, asr #1
	strh r3, [r1, #4]
	bl ov18_02237BA8
	ldr r0, _02237838 ; =0x0225332C
	mov r1, #4
	ldr r0, [r0, #8]
	strb r1, [r0, #0x41]
	ldmia sp!, {r3, pc}
_022376AC:
	ldr r0, _02237838 ; =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x45]
	bl ov18_0223D32C
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _0223783C ; =0x094F2095
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	ldr r1, _02237838 ; =0x0225332C
	add r3, r0, r3, asr #1
	mov r0, #0x13
	strh r3, [r1, #4]
	bl ov18_0223E994
	bl ov18_02237BA8
	ldr r0, _02237838 ; =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_ModS32
	cmp r0, #0
	bne _0223770C
	bl ov18_02238A80
	ldmia sp!, {r3, pc}
_0223770C:
	cmp r0, #0x10
	mov r0, #0
	mov r3, #0x78
	bge _02237738
	ldr r1, _02237840 ; =ov18_022387B8
	mov r2, r0
	bl ov18_02246304
	ldr r1, _02237838 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_02237738:
	ldr r1, _02237844 ; =ov18_02238880
	mov r2, r0
	bl ov18_02246304
	ldr r1, _02237838 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_02237754:
	ldr r0, _02237838 ; =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne _02237790
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02237838 ; =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x46]
	ldmia sp!, {r3, pc}
_02237790:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02237840 ; =ov18_022387B8
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02237838 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_022377BC:
	ldr r0, _02237838 ; =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #0x91
	bne _022377F8
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02237838 ; =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x46]
	ldmia sp!, {r3, pc}
_022377F8:
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02237844 ; =ov18_02238880
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02237838 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, pc}
_02237824:
	ldr r0, _02237838 ; =0x0225332C
	mov r1, #0
	ldr r0, [r0, #8]
	strb r1, [r0, #0x46]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02237838: .word Unk_ov18_0225332C
_0223783C: .word 0x094F2095
_02237840: .word ov18_022387B8
_02237844: .word ov18_02238880
	arm_func_end ov18_022375EC

	arm_func_start ov18_02237848
ov18_02237848: ; 0x02237848
	stmfd sp!, {r3, lr}
	bl ov18_0223D378
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02237864 ; =ov18_02237868
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02237864: .word ov18_02237868
	arm_func_end ov18_02237848

	arm_func_start ov18_02237868
ov18_02237868: ; 0x02237868
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
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
	ldr r0, _022378B0 ; =ov18_022378B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022378B0: .word ov18_022378B4
	arm_func_end ov18_02237868

	arm_func_start ov18_022378B4
ov18_022378B4: ; 0x022378B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, _02237B7C ; =0x0225332C
	mov r0, #0
	ldr r1, [r1, #8]
	ldr r1, [r1, #0]
	bl ov18_022463CC
	ldr r1, _02237B7C ; =0x0225332C
	mov r0, #1
	ldr r1, [r1, #8]
	ldr r1, [r1, #0x3c]
	bl ov18_022463CC
	ldr r4, _02237B7C ; =0x0225332C
	mov r5, #0
_02237908:
	ldr r0, [r4, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x18]
	bl ov18_02245B74
	add r5, r5, #1
	cmp r5, #7
	blt _02237908
	ldr r0, _02237B7C ; =0x0225332C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _0223793C
	bl ov18_02245B74
_0223793C:
	bl ov18_0223D2F0
	mov r0, #0
	bl ov18_022448E0
	bl ov18_0222BAF4
	ldr r0, _02237B7C ; =0x0225332C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xc
	beq _02237964
	bl ov18_0222B668
_02237964:
	bl ov18_0223D064
	ldr r0, _02237B7C ; =0x0225332C
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bl ov18_0224382C
	ldr r4, _02237B7C ; =0x0225332C
	mov r5, #0
_02237980:
	ldr r0, [r4, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xc]
	bl ov18_0224382C
	add r5, r5, #1
	cmp r5, #2
	blt _02237980
	ldr r0, _02237B80 ; =0x0224A2AC
	ldr r1, _02237B84 ; =0x020C0160
	bl ov18_0222B700
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x1d
	bl ov18_02244CD8
	ldr r0, _02237B88 ; =0x04000010
	mov r1, #0
	str r1, [r0, #0]
	sub r3, r0, #4
	str r1, [r0, #8]
	ldrh r0, [r3]
	ldr r2, _02237B7C ; =0x0225332C
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r3]
	ldr r0, [r2, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _02237B70
_022379FC: ; jump table
	b _02237A34 ; case 0
	b _02237A34 ; case 1
	b _02237B70 ; case 2
	b _02237B70 ; case 3
	b _02237A50 ; case 4
	b _02237A50 ; case 5
	b _02237A50 ; case 6
	b _02237B70 ; case 7
	b _02237B70 ; case 8
	b _02237A50 ; case 9
	b _02237A50 ; case 10
	b _02237A80 ; case 11
	b _02237B18 ; case 12
	b _02237B2C ; case 13
_02237A34:
	bl ov18_0222F710
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	ldr r0, _02237B8C ; =ov18_02234DB4
	bl ov18_0222F6C4
	b _02237B70
_02237A50:
	sub r4, r0, #4
	cmp r0, #9
	subhs r4, r4, #2
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	mov r0, r4
	mov r1, #0
	bl ov18_0222F710
	ldr r0, _02237B90 ; =ov18_022358F4
	bl ov18_0222F6C4
	b _02237B70
_02237A80:
	bl ov18_0223DDCC
	mov r4, r0
	add r0, r4, #0xf0
	bl sub_020A2B94
	strb r0, [r4, #0xd0]
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	beq _02237AD8
	add r0, r4, #0xc0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	add r0, r4, #0xc4
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	add r0, r4, #0xf0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r0, #0
	strb r0, [r4, #0xd0]
_02237AD8:
	ldrb r0, [r4, #0xf6]
	cmp r0, #0
	beq _02237AF4
	add r0, r4, #0xc8
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
_02237AF4:
	mov r0, #2
	mov r1, #0
	bl ov18_0222F6D4
	mov r0, #0
	mov r1, r0
	bl ov18_0222F710
	ldr r0, _02237B94 ; =ov18_0223BBAC
	bl ov18_0222F6C4
	b _02237B70
_02237B18:
	mov r0, r1
	bl ov18_0222F6D4
	ldr r0, _02237B98 ; =ov18_022390AC
	bl ov18_0222F6C4
	b _02237B70
_02237B2C:
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _02237B50
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02237B9C ; =ov18_0223A6B4
	bl ov18_0222F6C4
	b _02237B70
_02237B50:
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	bl ov18_0223E1F0
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02237BA0 ; =ov18_0223B3F4
	bl ov18_0222F6C4
_02237B70:
	ldr r0, _02237BA4 ; =0x02253334
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02237B7C: .word Unk_ov18_0225332C
_02237B80: .word Unk_ov18_0224A2AC
_02237B84: .word 0x020C0160
_02237B88: .word 0x04000010
_02237B8C: .word ov18_02234DB4
_02237B90: .word ov18_022358F4
_02237B94: .word ov18_0223BBAC
_02237B98: .word ov18_022390AC
_02237B9C: .word ov18_0223A6B4
_02237BA0: .word ov18_0223B3F4
_02237BA4: .word Unk_ov18_02253334
	arm_func_end ov18_022378B4

	arm_func_start ov18_02237BA8
ov18_02237BA8: ; 0x02237BA8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _02237C60 ; =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_DivS32
	ldr r1, _02237C60 ; =0x0225332C
	mov r4, r0
	ldr r0, [r1, #8]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl ov18_02244B5C
	mov r5, r4
	mov r6, #0
_02237BDC:
	mov r0, r5
	mov r1, r6
	bl ov18_02237C68
	add r6, r6, #1
	cmp r6, #5
	add r5, r5, #1
	blt _02237BDC
	ldr r0, _02237C60 ; =0x0225332C
	ldr r1, _02237C64 ; =0x02249312
	mov r2, r4, lsl #1
	ldr r3, [r0, #8]
	ldrh r0, [r1, r2]
	ldr r2, [r3, #8]
	mov r1, #0
	add r0, r2, r0, lsl #1
	mov r2, #0x1e
	mov r3, #0x13
	bl ov18_0223D0A8
	mov r5, #0
_02237C28:
	mov r0, r4
	mov r1, r5
	bl ov18_02237E04
	add r5, r5, #1
	cmp r5, #5
	add r4, r4, #1
	blt _02237C28
	bl ov18_0223D090
	ldr r0, _02237C60 ; =0x0225332C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x14]
	bl ov18_02244C08
	bl ov18_022382CC
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02237C60: .word Unk_ov18_0225332C
_02237C64: .word Unk_ov18_02249312
	arm_func_end ov18_02237BA8

	arm_func_start ov18_02237C68
ov18_02237C68: ; 0x02237C68
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r6, r0
	mov r5, r1
	bl ov18_0223DDCC
	cmp r6, #8
	addls pc, pc, r6, lsl #2
	b _02237DFC
_02237C88: ; jump table
	b _02237CAC ; case 0
	b _02237CC0 ; case 1
	b _02237DFC ; case 2
	b _02237D50 ; case 3
	b _02237D74 ; case 4
	b _02237D98 ; case 5
	b _02237DFC ; case 6
	b _02237DBC ; case 7
	b _02237DE0 ; case 8
_02237CAC:
	mov r1, r5
	add r0, r0, #0x40
	bl ov18_022380F0
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
_02237CC0:
	ldrb r1, [r0, #0xe6]
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1e
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02237D04
_02237CD8: ; jump table
	b _02237CE8 ; case 0
	b _02237CF0 ; case 1
	b _02237CF8 ; case 2
	b _02237D00 ; case 3
_02237CE8:
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
_02237CF0:
	mov r4, #0xa
	b _02237D04
_02237CF8:
	mov r4, #0x1a
	b _02237D04
_02237D00:
	mov r4, #0x20
_02237D04:
	ldrb r0, [r0, #0xe6]
	mov r1, #0
	mov r2, #0x21
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1a
	cmp r0, #1
	addeq r0, r4, r4, lsr #31
	moveq r4, r0, asr #1
	add r0, sp, #0
	bl MI_CpuFill8
	add r0, sp, #0
	mov r2, r4
	mov r1, #0x2a
	bl memset
	add r0, sp, #0
	mov r1, r5
	bl ov18_022380F0
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
_02237D50:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc0
	bl ov18_02238244
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
_02237D74:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xf0
	bl ov18_02238244
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
_02237D98:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc4
	bl ov18_02238244
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
_02237DBC:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc8
	bl ov18_02238244
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
_02237DE0:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xcc
	bl ov18_02238244
_02237DFC:
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov18_02237C68

	arm_func_start ov18_02237E04
ov18_02237E04: ; 0x02237E04
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	bl ov18_0223DDCC
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _02237F38
_02237E20: ; jump table
	b _02237E44 ; case 0
	b _02237E44 ; case 1
	b _02237E60 ; case 2
	b _02237EAC ; case 3
	b _02237EAC ; case 4
	b _02237EAC ; case 5
	b _02237EC4 ; case 6
	b _02237F20 ; case 7
	b _02237F20 ; case 8
_02237E44:
	mov r4, #0
	mov r0, r4
	mov r5, r4
	bl ov18_02237F58
	cmp r0, #0
	moveq r5, #2
	b _02237F40
_02237E60:
	ldr r2, _02237F54 ; =0x0225332C
	ldrb r0, [r0, #0xf5]
	ldr r3, [r2, #8]
	mov r1, #0
	ldrb r2, [r3, #4]
	cmp r0, #0
	movne r4, #1
	movne r0, #4
	moveq r4, #2
	moveq r0, #3
	cmp r2, #0
	mov r5, r1
	ldrb r2, [r3, #5]
	movne r5, #1
	cmp r2, #0
	movne r1, #1
	mov r2, r6
	bl ov18_02237FEC
	b _02237F40
_02237EAC:
	ldrb r0, [r0, #0xf5]
	mov r4, #0
	cmp r0, #0
	movne r5, #2
	moveq r5, r4
	b _02237F40
_02237EC4:
	ldrb r2, [r0, #0xf6]
	mov r1, #0
	mov r5, r1
	cmp r2, #0
	movne r4, #1
	movne r0, #4
	bne _02237EF4
	ldrb r0, [r0, #0xf5]
	mov r4, #2
	cmp r0, #0
	moveq r5, #2
	mov r0, #3
_02237EF4:
	ldr r2, _02237F54 ; =0x0225332C
	ldr r3, [r2, #8]
	ldrb r2, [r3, #6]
	cmp r2, #0
	ldrb r2, [r3, #7]
	movne r5, #1
	cmp r2, #0
	movne r1, #1
	mov r2, r6
	bl ov18_02237FEC
	b _02237F40
_02237F20:
	ldrb r0, [r0, #0xf6]
	mov r4, #0
	cmp r0, #0
	movne r5, #2
	moveq r5, r4
	b _02237F40
_02237F38:
	mov r4, #0
	mov r5, #2
_02237F40:
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl ov18_02237FEC
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02237F54: .word Unk_ov18_0225332C
	arm_func_end ov18_02237E04

	arm_func_start ov18_02237F58
ov18_02237F58: ; 0x02237F58
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov18_0223DDCC
	cmp r4, #0xa
	mov r1, #1
	addls pc, pc, r4, lsl #2
	b _02237FE4
_02237F74: ; jump table
	b _02237FB0 ; case 0
	b _02237FB0 ; case 1
	b _02237FE4 ; case 2
	b _02237FE4 ; case 3
	b _02237FC8 ; case 4
	b _02237FC8 ; case 5
	b _02237FC8 ; case 6
	b _02237FA0 ; case 7
	b _02237FE4 ; case 8
	b _02237FD8 ; case 9
	b _02237FD8 ; case 10
_02237FA0:
	ldrb r0, [r0, #0xf5]
	cmp r0, #0
	moveq r1, #0
	b _02237FE4
_02237FB0:
	ldrb r0, [r0, #0xe7]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #1
	movls r1, #0
	b _02237FE4
_02237FC8:
	ldrb r0, [r0, #0xf5]
	cmp r0, #0
	movne r1, #0
	b _02237FE4
_02237FD8:
	ldrb r0, [r0, #0xf6]
	cmp r0, #0
	movne r1, #0
_02237FE4:
	mov r0, r1
	ldmia sp!, {r4, pc}
	arm_func_end ov18_02237F58

	arm_func_start ov18_02237FEC
ov18_02237FEC: ; 0x02237FEC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r3, _022380E4 ; =0x0225332C
	mov ip, #0xc0
	ldr r3, [r3, #8]
	mov r6, r0
	mov r4, #0x8f
	add r3, r3, #0x18
	sub r0, r6, #1
	mov lr, #0xcc
	mov r5, r1
	strh lr, [sp]
	strh ip, [sp, #2]
	strh ip, [sp, #4]
	strh r4, [sp, #6]
	strh r4, [sp, #8]
	cmp r0, #1
	add r4, r3, r2, lsl #2
	bhi _02238060
	mov r0, r2
	bl ov18_02238794
	cmp r0, #2
	ldrne r0, _022380E4 ; =0x0225332C
	ldrne r0, [r0, #8]
	addne r4, r0, #0x30
	bne _02238060
	ldr r0, _022380E4 ; =0x0225332C
	ldr r0, [r0, #8]
	add r4, r0, #0x2c
_02238060:
	ldr r0, _022380E8 ; =0x02249302
	add r1, r6, r6, lsl #1
	add r0, r0, r1
	ldrb r1, [r5, r0]
	ldr r2, [r4, #0]
	cmp r1, #0
	beq _022380C8
	mov r0, #0
	bl ov18_02243ECC
	add r0, sp, #0
	mov r1, r6, lsl #1
	ldrh r2, [r0, r1]
	ldr r3, [r4, #0]
	ldr r0, _022380EC ; =0xFE00FF00
	ldr r1, [r3, #0]
	mov r2, r2, lsl #0x17
	and r0, r1, r0
	orr r0, r0, r2, lsr #7
	str r0, [r3, #0]
	ldr r1, [r4, #0]
	add sp, sp, #0xc
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, pc}
_022380C8:
	ldr r0, _022380EC ; =0xFE00FF00
	ldr r1, [r2, #0]
	and r0, r1, r0
	orr r0, r0, #0x1000000
	str r0, [r2, #0]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_022380E4: .word Unk_ov18_0225332C
_022380E8: .word Unk_ov18_02249302
_022380EC: .word 0xFE00FF00
	arm_func_end ov18_02237FEC

	arm_func_start ov18_022380F0
ov18_022380F0: ; 0x022380F0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	mov r6, r0
	mov r5, r1
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x22
	bl MI_CpuFill8
	mov r0, r6
	mov r1, #0x20
	bl ov18_02245E50
	mov r4, r0
	cmp r4, #0x10
	movle lr, r4
	movgt lr, #0x10
	cmp lr, #0
	mov ip, #0
	ble _02238160
	ldr r2, _0223823C ; =0x0000E01D
	add r1, sp, #0xc
_02238140:
	ldrb r3, [r6, ip]
	mov r0, ip, lsl #1
	add ip, ip, #1
	cmp r3, #0x20
	streqh r2, [r1, r0]
	strneh r3, [r1, r0]
	cmp ip, lr
	blt _02238140
_02238160:
	mov r0, #0x1d
	mul r0, r5, r0
	mov r1, #8
	add r5, r0, #2
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _02238240 ; =0x0225332C
	cmp r4, #0x10
	ldr r0, [r0, #8]
	addle r5, r5, #5
	ldr r0, [r0, #0x14]
	mov r2, r5
	mov r1, #0x48
	mov r3, #2
	bl ov18_022449F0
	cmp r4, #0x10
	addle sp, sp, #0x30
	ldmleia sp!, {r4, r5, r6, pc}
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x22
	bl MI_CpuFill8
	sub r4, r4, #0x10
	cmp r4, #0
	mov ip, #0
	ble _02238200
	ldr r2, _0223823C ; =0x0000E01D
	add r1, sp, #0xc
_022381DC:
	add r0, r6, ip
	ldrb r3, [r0, #0x10]
	mov r0, ip, lsl #1
	add ip, ip, #1
	cmp r3, #0x20
	streqh r2, [r1, r0]
	strneh r3, [r1, r0]
	cmp ip, r4
	blt _022381DC
_02238200:
	mov r1, #8
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _02238240 ; =0x0225332C
	add r2, r5, #0xc
	ldr r0, [r0, #8]
	mov r1, #0x48
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl ov18_022449F0
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0223823C: .word 0x0000E01D
_02238240: .word Unk_ov18_0225332C
	arm_func_end ov18_022380F0

	arm_func_start ov18_02238244
ov18_02238244: ; 0x02238244
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	mov ip, r0
	ldrb r2, [ip, #1]
	mov r4, r1
	add r0, sp, #0xc
	str r2, [sp]
	ldrb r3, [ip, #2]
	ldr r2, _022382C4 ; =0x0224A2C4
	mov r1, #0x10
	str r3, [sp, #4]
	ldrb r3, [ip, #3]
	str r3, [sp, #8]
	ldrb r3, [ip]
	bl swprintf
	mov r2, #7
	mov r0, #0x1d
	mul r1, r4, r0
	str r2, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _022382C8 ; =0x0225332C
	add r2, r1, #8
	ldr r0, [r0, #8]
	mov r1, #0x5f
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl ov18_022449F0
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_022382C4: .word Unk_ov18_0224A2C4
_022382C8: .word Unk_ov18_0225332C
	arm_func_end ov18_02238244

	arm_func_start ov18_022382CC
ov18_022382CC: ; 0x022382CC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r0, _022384D0 ; =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_DivS32
	ldr r1, _022384D0 ; =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FX_ModS32
	ldr r1, _022384D0 ; =0x0225332C
	rsb ip, r0, #0x34
	ldr r1, [r1, #8]
	ldr r0, [r1, #0x34]
	cmp r0, #0
	beq _0223834C
	ldr r5, [r1, #0x34]
	cmp r4, #0
	moveq r0, #0x26
	streq r0, [sp, #4]
	movne r0, #0x100
	strne r0, [sp, #4]
	ldr r2, [r5, #0]
	ldr r0, _022384D4 ; =0xFE00FF00
	ldr r3, [sp, #4]
	and r0, r2, r0
	and r1, ip, #0xff
	mov r2, r3, lsl #0x17
	orr r0, r0, r1
	orr r0, r0, r2, lsr #7
	str r0, [r5, #0]
_0223834C:
	ldr r8, _022384D0 ; =0x0225332C
	ldr r6, _022384D8 ; =0x01FF0000
	ldr r7, _022384D4 ; =0xFE00FF00
	mov lr, ip
	mov r5, #0
_02238360:
	ldr r0, [r8, #8]
	and sb, lr, #0xff
	add r0, r0, r5, lsl #2
	ldr r3, [r0, #0x18]
	add r5, r5, #1
	ldr r1, [r3, #0]
	cmp r5, #5
	mov r0, r1
	and r2, r1, r6
	and sl, r0, r7
	mov r2, r2, lsr #0x10
	mov r0, r2, lsl #0x17
	orr sb, sl, sb
	orr r0, sb, r0, lsr #7
	str r0, [r3, #0]
	and r0, r1, #0xff
	add lr, lr, #0x1d
	blt _02238360
	str r0, [sp]
	str r2, [sp, #4]
	cmp r4, #2
	bgt _02238410
	ldr r0, _022384D0 ; =0x0225332C
	rsb r2, r4, #2
	ldr r0, [r0, #8]
	mov r1, #0x1d
	ldr r0, [r0, #0x2c]
	mla r3, r2, r1, ip
	ldr r2, [r0, #0]
	ldr r1, _022384D8 ; =0x01FF0000
	and r6, r2, #0xff
	and r1, r2, r1
	mov r7, r1, lsr #0x10
	mov r5, r2
	ldr r1, _022384D4 ; =0xFE00FF00
	and r2, r3, #0xff
	and r1, r5, r1
	mov r3, r7, lsl #0x17
	orr r1, r1, r2
	orr r1, r1, r3, lsr #7
	str r7, [sp, #4]
	str r6, [sp]
	str r1, [r0, #0]
	b _02238430
_02238410:
	ldr r1, _022384D0 ; =0x0225332C
	ldr r0, _022384D4 ; =0xFE00FF00
	ldr r1, [r1, #8]
	ldr r2, [r1, #0x2c]
	ldr r1, [r2, #0]
	and r0, r1, r0
	orr r0, r0, #0x1000000
	str r0, [r2, #0]
_02238430:
	cmp r4, #2
	blt _02238498
	cmp r4, #6
	bgt _02238498
	ldr r0, _022384D0 ; =0x0225332C
	rsb r2, r4, #6
	ldr r0, [r0, #8]
	mov r1, #0x1d
	ldr r0, [r0, #0x30]
	mla r3, r2, r1, ip
	ldr r2, [r0, #0]
	ldr r1, _022384D8 ; =0x01FF0000
	and r5, r2, #0xff
	and r1, r2, r1
	mov r6, r1, lsr #0x10
	mov r4, r2
	ldr r1, _022384D4 ; =0xFE00FF00
	and r2, r3, #0xff
	and r1, r4, r1
	mov r3, r6, lsl #0x17
	orr r1, r1, r2
	orr r1, r1, r3, lsr #7
	str r6, [sp, #4]
	str r5, [sp]
	str r1, [r0, #0]
	b _022384B8
_02238498:
	ldr r1, _022384D0 ; =0x0225332C
	ldr r0, _022384D4 ; =0xFE00FF00
	ldr r1, [r1, #8]
	ldr r2, [r1, #0x30]
	ldr r1, [r2, #0]
	and r0, r1, r0
	orr r0, r0, #0x1000000
	str r0, [r2, #0]
_022384B8:
	ldr r0, _022384D0 ; =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x44]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_022384D0: .word Unk_ov18_0225332C
_022384D4: .word 0xFE00FF00
_022384D8: .word 0x01FF0000
	arm_func_end ov18_022382CC

	arm_func_start ov18_022384DC
ov18_022384DC: ; 0x022384DC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r0, _0223873C ; =0x02249734
	bl ov18_022455B8
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0xe
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _02238740 ; =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_DivS32
	ldr r1, _02238744 ; =0x022492D8
	mov r5, r0
	ldrh r3, [r1, #4]
	ldrh r2, [r1, #6]
	add r4, sp, #0
	strh r3, [sp]
	strh r2, [sp, #2]
	ldrh r2, [r1, #8]
	ldrh r0, [r1, #0xa]
	mov r6, #0
	strh r2, [sp, #4]
	strh r0, [sp, #6]
_0223853C:
	cmp r5, #2
	cmpne r5, #6
	beq _02238564
	mov r0, r4
	bl ov18_02245750
	cmp r0, #0
	ldrne r0, _02238748 ; =0x022493B8
	addne sp, sp, #8
	ldrneb r0, [r0, r5]
	ldmneia sp!, {r4, r5, r6, pc}
_02238564:
	ldrh r0, [sp, #2]
	add r6, r6, #1
	cmp r6, #4
	add r0, r0, #0x1d
	strh r0, [sp, #2]
	add r5, r5, #1
	blt _0223853C
	ldr r0, _02238740 ; =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_DivS32
	mov r3, #0
_02238594:
	cmp r0, #2
	bne _02238630
	ldr r1, _02238744 ; =0x022492D8
	mov r0, #0x1d
	ldrh r5, [r1, #0x16]
	ldrh r2, [r1, #0x14]
	mul r4, r3, r0
	strh r2, [sp]
	strh r5, [sp, #2]
	ldrh r3, [r1, #0x18]
	ldrh r2, [r1, #0x1a]
	add r1, r5, r4
	add r0, sp, #0
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl ov18_02245750
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #2
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _02238744 ; =0x022492D8
	add r0, sp, #0
	ldrh r5, [r1, #0xe]
	ldrh r2, [r1, #0xc]
	strh r5, [sp, #2]
	strh r2, [sp]
	ldrh r3, [r1, #0x10]
	ldrh r2, [r1, #0x12]
	add r1, r5, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl ov18_02245750
	cmp r0, #0
	beq _02238640
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_02238630:
	add r3, r3, #1
	cmp r3, #4
	add r0, r0, #1
	blt _02238594
_02238640:
	ldr r0, _02238740 ; =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_DivS32
	mov r3, #0
_02238654:
	cmp r0, #6
	bne _022386F0
	ldr r1, _02238744 ; =0x022492D8
	mov r0, #0x1d
	ldrh r5, [r1, #0x16]
	ldrh r2, [r1, #0x14]
	mul r4, r3, r0
	strh r2, [sp]
	strh r5, [sp, #2]
	ldrh r3, [r1, #0x18]
	ldrh r2, [r1, #0x1a]
	add r1, r5, r4
	add r0, sp, #0
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl ov18_02245750
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #7
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _02238744 ; =0x022492D8
	add r0, sp, #0
	ldrh r5, [r1, #0xe]
	ldrh r2, [r1, #0xc]
	strh r5, [sp, #2]
	strh r2, [sp]
	ldrh r3, [r1, #0x10]
	ldrh r2, [r1, #0x12]
	add r1, r5, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl ov18_02245750
	cmp r0, #0
	beq _02238700
	add sp, sp, #8
	mov r0, #8
	ldmia sp!, {r4, r5, r6, pc}
_022386F0:
	add r3, r3, #1
	cmp r3, #4
	add r0, r0, #1
	blt _02238654
_02238700:
	ldr r4, _0223874C ; =0x02249366
	mov r5, #0
_02238708:
	mov r0, r4
	bl ov18_022455B8
	cmp r0, #0
	addne sp, sp, #8
	addne r0, r5, #0xb
	ldmneia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #3
	add r4, r4, #8
	blt _02238708
	mov r0, #0xe
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0223873C: .word Unk_ov18_02249734
_02238740: .word Unk_ov18_0225332C
_02238744: .word Unk_ov18_022492D8
_02238748: .word Unk_ov18_022493B8
_0223874C: .word Unk_ov18_02249366
	arm_func_end ov18_022384DC

	arm_func_start ov18_02238750
ov18_02238750: ; 0x02238750
	stmfd sp!, {r4, lr}
	ldr r1, _02238790 ; =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FX_DivS32
	mov r1, #0
_0223876C:
	cmp r0, r4
	moveq r0, r1
	ldmeqia sp!, {r4, pc}
	add r1, r1, #1
	cmp r1, #4
	add r0, r0, #1
	blt _0223876C
	mvn r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02238790: .word Unk_ov18_0225332C
	arm_func_end ov18_02238750

	arm_func_start ov18_02238794
ov18_02238794: ; 0x02238794
	stmfd sp!, {r4, lr}
	ldr r1, _022387B4 ; =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FX_DivS32
	add r0, r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022387B4: .word Unk_ov18_0225332C
	arm_func_end ov18_02238794

	arm_func_start ov18_022387B8
ov18_022387B8: ; 0x022387B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl ov18_0223D378
	bl ov18_0222BAF4
	ldr r0, _02238878 ; =0x0225332C
	ldrh r1, [r0, #4]
	cmp r1, #6
	subhi r1, r1, #6
	movls r1, #0
	strh r1, [r0, #4]
	ldr r0, _02238878 ; =0x0225332C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FX_ModS32
	mov r5, r0
	cmp r5, #0x17
	bne _02238804
	bl ov18_02237BA8
	ldmia sp!, {r3, r4, r5, pc}
_02238804:
	ble _02238820
	ldr r0, _02238878 ; =0x0225332C
	rsb r1, r5, #0x1d
	ldrh r2, [r0, #4]
	mov r5, #0
	add r1, r2, r1
	strh r1, [r0, #4]
_02238820:
	bl ov18_022382CC
	cmp r5, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, _02238878 ; =0x0225332C
	mov r0, #0x37
	ldrh r1, [r1, #4]
	ldr r2, _0223887C ; =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #7
	bl ov18_0223D354
	bl ov18_0223D360
	bl ov18_02238A80
	ldr r0, _02238878 ; =0x0225332C
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0
	str r0, [r2, #0x38]
	bl ov18_022463AC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02238878: .word Unk_ov18_0225332C
_0223887C: .word 0xE1FC780F
	arm_func_end ov18_022387B8

	arm_func_start ov18_02238880
ov18_02238880: ; 0x02238880
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov18_0223D378
	bl ov18_0222BAF4
	ldr r0, _0223891C ; =0x0225332C
	mov r1, #0x1d
	ldrh r2, [r0, #4]
	add r2, r2, #6
	strh r2, [r0, #4]
	ldrh r0, [r0, #4]
	bl FX_ModS32
	cmp r0, #6
	blt _022388BC
	bl ov18_022382CC
	ldmia sp!, {r4, pc}
_022388BC:
	ldr r1, _0223891C ; =0x0225332C
	ldrh r2, [r1, #4]
	sub r0, r2, r0
	strh r0, [r1, #4]
	bl ov18_02237BA8
	ldr r1, _0223891C ; =0x0225332C
	mov r0, #0x37
	ldrh r1, [r1, #4]
	ldr r2, _02238920 ; =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #7
	bl ov18_0223D354
	bl ov18_0223D360
	bl ov18_02238A80
	ldr r0, _0223891C ; =0x0225332C
	mov r1, r4
	ldr r2, [r0, #8]
	mov r0, #0
	str r0, [r2, #0x38]
	bl ov18_022463AC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223891C: .word Unk_ov18_0225332C
_02238920: .word 0xE1FC780F
	arm_func_end ov18_02238880

	arm_func_start ov18_02238924
ov18_02238924: ; 0x02238924
	stmfd sp!, {r4, lr}
	ldr r0, _02238998 ; =0x0225332C
	ldr r1, [r0, #8]
	ldrb r1, [r1, #0x44]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldrh r0, [r0, #4]
	mov r1, #0x1d
	bl FX_DivS32
	ldr r1, _02238998 ; =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FX_ModS32
	ldr r2, _0223899C ; =0x022493C4
	ldr r1, _022389A0 ; =0x01FF0000
	sub ip, r0, #0x33
	ldrb r0, [r2, r4]
	ldr r2, _022389A4 ; =0x04000010
	and r3, r1, ip, lsl #16
	add r0, ip, r0
	str r3, [r2, #0]
	and r1, r1, r0, lsl #16
	ldr r0, _02238998 ; =0x0225332C
	str r1, [r2, #8]
	ldr r0, [r0, #8]
	mov r1, #0
	strb r1, [r0, #0x44]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02238998: .word Unk_ov18_0225332C
_0223899C: .word Unk_ov18_022493C4
_022389A0: .word 0x01FF0000
_022389A4: .word 0x04000010
	arm_func_end ov18_02238924

	arm_func_start ov18_022389A8
ov18_022389A8: ; 0x022389A8
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr ip, _02238A6C ; =0x022492F4
	add r3, sp, #8
	mov r2, #7
_022389BC:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _022389BC
	ldr r0, _02238A70 ; =0x0225332C
	add r1, sp, #8
	ldrb r2, [r0]
	ldrb r2, [r1, r2]
	cmp r2, #3
	blt _02238A20
	mov r3, r2, lsl #3
	ldr r1, _02238A74 ; =0x0224937E
	ldr r2, _02238A78 ; =0x02249382
	ldr r0, _02238A7C ; =0x02249380
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #3
	bl ov18_0222B948
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
_02238A20:
	ldr r1, _02238A74 ; =0x0224937E
	mov lr, r2, lsl #3
	add ip, r1, r2, lsl #3
	ldrb r2, [r0, #2]
	ldrh r3, [ip, #2]
	mov r0, #0x1d
	ldrh r1, [r1, lr]
	mla r0, r2, r0, r3
	strh r0, [sp, #2]
	ldrh r2, [ip, #4]
	ldrh ip, [ip, #6]
	ldrh r3, [sp, #2]
	mov r0, #1
	strh r1, [sp]
	strh r2, [sp, #4]
	strh ip, [sp, #6]
	bl ov18_0222B948
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02238A6C: .word Unk_ov18_022492F4
_02238A70: .word Unk_ov18_0225332C
_02238A74: .word Unk_ov18_0224937E
_02238A78: .word 0x02249382
_02238A7C: .word 0x02249380
	arm_func_end ov18_022389A8

	arm_func_start ov18_02238A80
ov18_02238A80: ; 0x02238A80
	stmfd sp!, {r4, lr}
	ldr r0, _02238B28 ; =0x0225332C
	ldrb r0, [r0]
	add r0, r0, #0xf5
	and r0, r0, #0xff
	cmp r0, #2
	bhi _02238AA4
	bl ov18_022389A8
	ldmia sp!, {r4, pc}
_02238AA4:
	bl ov18_0223DDCC
	ldr r1, _02238B28 ; =0x0225332C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FX_DivS32
	ldr r1, _02238B28 ; =0x0225332C
	ldrb r2, [r1, #2]
	add r2, r2, r0
	cmp r2, #2
	beq _02238ADC
	cmp r2, #6
	beq _02238AF8
	b _02238B14
_02238ADC:
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	movne r0, #2
	strneb r0, [r1]
	moveq r0, #3
	streqb r0, [r1]
	b _02238B20
_02238AF8:
	ldrb r0, [r4, #0xf6]
	cmp r0, #0
	movne r0, #7
	strneb r0, [r1]
	moveq r0, #8
	streqb r0, [r1]
	b _02238B20
_02238B14:
	ldr r0, _02238B2C ; =0x022493B8
	ldrb r0, [r0, r2]
	strb r0, [r1]
_02238B20:
	bl ov18_022389A8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02238B28: .word Unk_ov18_0225332C
_02238B2C: .word Unk_ov18_022493B8
	arm_func_end ov18_02238A80

	arm_func_start ov18_02238B30
ov18_02238B30: ; 0x02238B30
	stmfd sp!, {r3, lr}
	ldr r1, _02238B58 ; =0x0225332C
	ldr r2, _02238B5C ; =0x022493D0
	strb r0, [r1]
	ldrb r0, [r2, r0]
	bl ov18_02238750
	ldr r1, _02238B58 ; =0x0225332C
	strb r0, [r1, #2]
	bl ov18_022389A8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02238B58: .word Unk_ov18_0225332C
_02238B5C: .word Unk_ov18_022493D0
	arm_func_end ov18_02238B30

	arm_func_start ov18_02238B60
ov18_02238B60: ; 0x02238B60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov18_0223DDCC
	ldr r1, _02238E44 ; =0x0225332C
	mov r4, #0
	ldrb r2, [r1]
	cmp r2, #8
	ldreqb r0, [r0, #0xf5]
	cmpeq r0, #0
	bne _02238B94
	cmp r5, #0
	cmpne r5, #2
	ldmeqia sp!, {r3, r4, r5, pc}
_02238B94:
	cmp r2, #0
	bgt _02238BA4
	beq _02238BC4
	b _02238D28
_02238BA4:
	sub r0, r2, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02238D28
_02238BB4: ; jump table
	b _02238BFC ; case 0
	b _02238C38 ; case 1
	b _02238CA0 ; case 2
	b _02238CA0 ; case 3
_02238BC4:
	cmp r5, #1
	bne _02238BDC
	ldr r0, _02238E44 ; =0x0225332C
	mov r1, #0xb
	strb r1, [r0]
	b _02238E24
_02238BDC:
	cmp r5, #3
	movne r4, #2
	bne _02238E24
	ldr r0, _02238E44 ; =0x0225332C
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	b _02238E24
_02238BFC:
	cmp r5, #1
	bne _02238C18
	ldr r0, _02238E44 ; =0x0225332C
	ldrb r1, [r0, #2]
	sub r1, r1, #1
	strb r1, [r0, #2]
	b _02238E24
_02238C18:
	cmp r5, #3
	movne r4, #2
	bne _02238E24
	ldr r0, _02238E44 ; =0x0225332C
	ldr r1, [r0, #8]
	ldrb r1, [r1, #0x42]
	strb r1, [r0]
	b _02238E24
_02238C38:
	cmp r5, #1
	bne _02238C70
	ldr r0, _02238E44 ; =0x0225332C
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02238E44 ; =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	ldmia sp!, {r3, r4, r5, pc}
_02238C70:
	cmp r5, #3
	movne r4, #2
	bne _02238E24
	ldr r0, _02238E44 ; =0x0225332C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #2]
	strh r1, [r0, #4]
	bl ov18_02237BA8
	mov r0, #0
	bl ov18_0223D354
	b _02238E24
_02238CA0:
	ldr r0, _02238E44 ; =0x0225332C
	cmp r5, #1
	ldr r1, [r0, #8]
	strb r2, [r1, #0x42]
	bne _02238CDC
	mov r1, #0xa
	strb r1, [r0]
	mov r1, #3
	strb r1, [r0, #2]
	mov r1, #0x91
	strh r1, [r0, #4]
	bl ov18_02237BA8
	mov r0, #0x37
	bl ov18_0223D354
	b _02238E24
_02238CDC:
	cmp r5, #3
	bne _02238D10
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl ov18_0223E994
	ldr r0, _02238E44 ; =0x0225332C
	mov r1, #1
	ldr r0, [r0, #8]
	strb r1, [r0, #0x47]
	ldmia sp!, {r3, r4, r5, pc}
_02238D10:
	cmp r2, #0xc
	moveq r1, #0xd
	streqb r1, [r0]
	movne r1, #0xc
	strneb r1, [r0]
	b _02238E24
_02238D28:
	cmp r5, #1
	bne _02238D74
	ldr r0, _02238E44 ; =0x0225332C
	ldrb r1, [r0, #2]
	cmp r1, #0
	subne r1, r1, #1
	strneb r1, [r0, #2]
	bne _02238E24
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02238E48 ; =ov18_022387B8
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02238E44 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, r4, r5, pc}
_02238D74:
	cmp r5, #3
	bne _02238DC0
	ldr r0, _02238E44 ; =0x0225332C
	ldrb r1, [r0, #2]
	cmp r1, #3
	addlo r1, r1, #1
	strlob r1, [r0, #2]
	blo _02238E24
	mov r0, #0x13
	bl ov18_0223E994
	mov r0, #0
	ldr r1, _02238E4C ; =ov18_02238880
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _02238E44 ; =0x0225332C
	ldr r1, [r1, #8]
	str r0, [r1, #0x38]
	ldmia sp!, {r3, r4, r5, pc}
_02238DC0:
	cmp r2, #2
	mov r4, #2
	bne _02238DDC
	ldr r0, _02238E44 ; =0x0225332C
	mov r1, #3
	strb r1, [r0]
	b _02238E18
_02238DDC:
	cmp r2, #3
	ldreq r0, _02238E44 ; =0x0225332C
	streqb r4, [r0]
	beq _02238E18
	cmp r2, #7
	bne _02238E04
	ldr r0, _02238E44 ; =0x0225332C
	mov r1, #8
	strb r1, [r0]
	b _02238E18
_02238E04:
	cmp r2, #8
	bne _02238E24
	ldr r0, _02238E44 ; =0x0225332C
	mov r1, #7
	strb r1, [r0]
_02238E18:
	mov r0, #8
	bl ov18_0223E994
	bl ov18_022389A8
_02238E24:
	cmp r4, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #8
	bl ov18_0223E994
	cmp r4, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov18_02238A80
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02238E44: .word Unk_ov18_0225332C
_02238E48: .word ov18_022387B8
_02238E4C: .word ov18_02238880
	arm_func_end ov18_02238B60

	arm_func_start ov18_02238E50
ov18_02238E50: ; 0x02238E50
	ldr r0, _02238E78 ; =0x0225332C
	ldr r1, _02238E7C ; =0x022492D4
	ldrb r2, [r0]
	ldr r0, [r0, #8]
	ldr ip, _02238E80 ; =ov18_0223D154
	sub r2, r2, #0xb
	ldrb r1, [r1, r2]
	ldr r0, [r0, #0x10]
	mov r2, r1
	bx ip
	; .align 2, 0
_02238E78: .word Unk_ov18_0225332C
_02238E7C: .word Unk_ov18_022492D4
_02238E80: .word ov18_0223D154
	arm_func_end ov18_02238E50

	arm_func_start ov18_02238E84
ov18_02238E84: ; 0x02238E84
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02238ED4 ; =0x0225332C
	mov r4, #0
_02238E90:
	ldr r0, [r5, #8]
	add r1, r0, r4
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _02238EC4
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02238EC4
	bl ov18_02237BA8
_02238EC4:
	add r4, r4, #1
	cmp r4, #4
	blt _02238E90
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02238ED4: .word Unk_ov18_0225332C
	arm_func_end ov18_02238E84

	arm_func_start ov18_02238ED8
ov18_02238ED8: ; 0x02238ED8
	stmdb sp!, {r3}
	sub sp, sp, #4
	ldr r1, _02238F94 ; =0x022492D8
	ldr r0, _02238F98 ; =0x0225332C
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldrb ip, [r0]
	strb r3, [sp]
	strb r2, [sp, #1]
	ldrb r2, [r1, #2]
	ldrb r0, [r1, #3]
	add r1, sp, #0
	mov r3, #0
	strb r2, [sp, #2]
	strb r0, [sp, #3]
_02238F14:
	ldrb r0, [r1]
	cmp ip, r0
	bne _02238F78
	ldr r0, _02238F98 ; =0x0225332C
	mov r2, #0x14
	ldr r1, [r0, #8]
	tst r3, #1
	add r1, r1, r3
	strb r2, [r1, #4]
	ldr r1, [r0, #8]
	beq _02238F5C
	sub r0, r3, #1
	add r0, r1, r0
	mov r1, #0
	strb r1, [r0, #4]
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr
_02238F5C:
	add r0, r3, #1
	add r0, r1, r0
	mov r1, #0
	strb r1, [r0, #4]
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr
_02238F78:
	add r3, r3, #1
	cmp r3, #4
	add r1, r1, #1
	blt _02238F14
	add sp, sp, #4
	ldmia sp!, {r3}
	bx lr
	; .align 2, 0
_02238F94: .word Unk_ov18_022492D8
_02238F98: .word Unk_ov18_0225332C
	arm_func_end ov18_02238ED8

	arm_func_start ov18_02238F9C
ov18_02238F9C: ; 0x02238F9C
	stmfd sp!, {r4, lr}
	bl ov18_0223DDCC
	mov r4, r0
	ldrb r0, [r4, #0x40]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r4, #0xf6]
	cmp r0, #0
	bne _02238FE8
	add r0, r4, #0xc8
	bl sub_020A2CAC
	cmp r0, #0
	bne _02238FE8
	add r0, r4, #0xcc
	bl sub_020A2CAC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_02238FE8:
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	bne _02239034
	add r0, r4, #0xc0
	bl sub_020A2CAC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0xc4
	bl sub_020A2CAC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0xc0
	add r1, r4, #0xf0
	bl sub_020A2C30
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_02239034:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov18_02238F9C

	arm_func_start ov18_0223903C
ov18_0223903C: ; 0x0223903C
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02239074 ; =0x0225332C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl ov18_0223D1BC
	ldr r0, _02239078 ; =ov18_0223907C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239074: .word Unk_ov18_0225332C
_02239078: .word ov18_0223907C
	arm_func_end ov18_0223903C

	arm_func_start ov18_0223907C
ov18_0223907C: ; 0x0223907C
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02239098 ; =ov18_022370B4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239098: .word ov18_022370B4
	arm_func_end ov18_0223907C

	arm_func_start ov18_0223909C
ov18_0223909C: ; 0x0223909C
	ldr r1, _022390A8 ; =0x0225332C
	strb r0, [r1, #1]
	bx lr
	; .align 2, 0
_022390A8: .word Unk_ov18_0225332C
	arm_func_end ov18_0223909C

	.rodata


	.global Unk_ov18_022492D4
Unk_ov18_022492D4: ; 0x022492D4
	.incbin "incbin/overlay18_rodata.bin", 0x2EA0, 0x2EA4 - 0x2EA0

	.global Unk_ov18_022492D8
Unk_ov18_022492D8: ; 0x022492D8
	.incbin "incbin/overlay18_rodata.bin", 0x2EA4, 0x2EA8 - 0x2EA4

	.global Unk_ov18_022492DC
Unk_ov18_022492DC: ; 0x022492DC
	.incbin "incbin/overlay18_rodata.bin", 0x2EA8, 0x2EB0 - 0x2EA8

	.global Unk_ov18_022492E4
Unk_ov18_022492E4: ; 0x022492E4
	.incbin "incbin/overlay18_rodata.bin", 0x2EB0, 0x2EB8 - 0x2EB0

	.global Unk_ov18_022492EC
Unk_ov18_022492EC: ; 0x022492EC
	.incbin "incbin/overlay18_rodata.bin", 0x2EB8, 0x2EC0 - 0x2EB8

	.global Unk_ov18_022492F4
Unk_ov18_022492F4: ; 0x022492F4
	.incbin "incbin/overlay18_rodata.bin", 0x2EC0, 0x2ECE - 0x2EC0

	.global Unk_ov18_02249302
Unk_ov18_02249302: ; 0x02249302
	.incbin "incbin/overlay18_rodata.bin", 0x2ECE, 0x2EDE - 0x2ECE

	.global Unk_ov18_02249312
Unk_ov18_02249312: ; 0x02249312
	.incbin "incbin/overlay18_rodata.bin", 0x2EDE, 0x2EF0 - 0x2EDE

	.global Unk_ov18_02249324
Unk_ov18_02249324: ; 0x02249324
	.incbin "incbin/overlay18_rodata.bin", 0x2EF0, 0x2F05 - 0x2EF0

	.global Unk_ov18_02249339
Unk_ov18_02249339: ; 0x02249339
	.incbin "incbin/overlay18_rodata.bin", 0x2F05, 0x2F1B - 0x2F05

	.global Unk_ov18_0224934F
Unk_ov18_0224934F: ; 0x0224934F
	.incbin "incbin/overlay18_rodata.bin", 0x2F1B, 0x2F32 - 0x2F1B

	.global Unk_ov18_02249366
Unk_ov18_02249366: ; 0x02249366
	.incbin "incbin/overlay18_rodata.bin", 0x2F32, 0x2F4A - 0x2F32

	.global Unk_ov18_0224937E
Unk_ov18_0224937E: ; 0x0224937E
	.incbin "incbin/overlay18_rodata.bin", 0x2F4A, 0x2F7C - 0x2F4A

	.global Unk_ov18_022493B0
Unk_ov18_022493B0: ; 0x022493B0
	.incbin "incbin/overlay18_rodata.bin", 0x2F7C, 0x2F84 - 0x2F7C

	.global Unk_ov18_022493B8
Unk_ov18_022493B8: ; 0x022493B8
	.incbin "incbin/overlay18_rodata.bin", 0x2F84, 0x2F90 - 0x2F84

	.global Unk_ov18_022493C4
Unk_ov18_022493C4: ; 0x022493C4
	.incbin "incbin/overlay18_rodata.bin", 0x2F90, 0x2F9C - 0x2F90

	.global Unk_ov18_022493D0
Unk_ov18_022493D0: ; 0x022493D0
	.incbin "incbin/overlay18_rodata.bin", 0x2F9C, 0xB



	.data


	.global Unk_ov18_0224A254
Unk_ov18_0224A254: ; 0x0224A254
	.incbin "incbin/overlay18_data.bin", 0xAF4, 0xB08 - 0xAF4

	.global Unk_ov18_0224A268
Unk_ov18_0224A268: ; 0x0224A268
	.incbin "incbin/overlay18_data.bin", 0xB08, 0xB20 - 0xB08

	.global Unk_ov18_0224A280
Unk_ov18_0224A280: ; 0x0224A280
	.incbin "incbin/overlay18_data.bin", 0xB20, 0xB38 - 0xB20

	.global Unk_ov18_0224A298
Unk_ov18_0224A298: ; 0x0224A298
	.incbin "incbin/overlay18_data.bin", 0xB38, 0xB4C - 0xB38

	.global Unk_ov18_0224A2AC
Unk_ov18_0224A2AC: ; 0x0224A2AC
	.incbin "incbin/overlay18_data.bin", 0xB4C, 0xB64 - 0xB4C

	.global Unk_ov18_0224A2C4
Unk_ov18_0224A2C4: ; 0x0224A2C4
	.incbin "incbin/overlay18_data.bin", 0xB64, 0x20



	.bss


	.global Unk_ov18_0225332C
Unk_ov18_0225332C: ; 0x0225332C
	.space 0x1

	.global Unk_ov18_0225332D
Unk_ov18_0225332D: ; 0x0225332D
	.space 0x1

	.global Unk_ov18_0225332E
Unk_ov18_0225332E: ; 0x0225332E
	.space 0x2

	.global Unk_ov18_02253330
Unk_ov18_02253330: ; 0x02253330
	.space 0x4

	.global Unk_ov18_02253334
Unk_ov18_02253334: ; 0x02253334
	.space 0x4

