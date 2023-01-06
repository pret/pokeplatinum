	.include "macros/function.inc"
	.include "overlay018/ov18_02244424.inc"

	

	.text


	arm_func_start ov18_02244424
ov18_02244424: ; 0x02244424
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r0, #0x680
	mov r1, #4
	bl ov18_02245068
	mov r4, r0
	ldr r3, _0224451C ; =0x022533C0
	add r1, r4, #0x10
	mov r0, #0x20
	mov r2, #0x30
	str r4, [r3, #0]
	bl ov18_02244008
	ldr r1, _0224451C ; =0x022533C0
	ldr r1, [r1, #0]
	str r0, [r1, #0x670]
	bl ov18_0222F74C
	cmp r0, #6
	mov r4, #4
	bne _022444C4
	mov r7, #0
	ldr r6, _02244520 ; =0x0224B210
	ldr sb, _0224451C ; =0x022533C0
	mov r8, r7
	mov r5, r7
_02244480:
	ldr r0, [r6, r7, lsl #2]
	mov r1, r5
	mov r2, r4
	bl ov18_02243738
	ldr r1, [sb]
	add r1, r1, r7, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [sb]
	add r0, r2, r7, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r8
	bl NNS_G2dFontInitUTF16
	add r7, r7, #1
	cmp r7, #2
	add r8, r8, #8
	blt _02244480
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022444C4:
	mov r8, #0
	ldr r6, _02244524 ; =0x0224B218
	ldr sb, _0224451C ; =0x022533C0
	mov r7, r8
	mov r5, r8
_022444D8:
	ldr r0, [r6, r8, lsl #2]
	mov r1, r5
	mov r2, r4
	bl ov18_02243738
	ldr r1, [sb]
	add r1, r1, r8, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [sb]
	add r0, r2, r8, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r7
	bl NNS_G2dFontInitUTF16
	add r8, r8, #1
	cmp r8, #2
	add r7, r7, #8
	blt _022444D8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0224451C: .word Unk_ov18_022533C0
_02244520: .word Unk_ov18_0224B210
_02244524: .word Unk_ov18_0224B218
	arm_func_end ov18_02244424

	arm_func_start ov18_02244528
ov18_02244528: ; 0x02244528
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0224456C ; =0x022533C0
	mov r5, #0
_02244534:
	ldr r0, [r4, #0]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x674]
	bl ov18_0224382C
	add r5, r5, #1
	cmp r5, #2
	blt _02244534
	ldr r0, _0224456C ; =0x022533C0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x670]
	bl ov18_02244048
	ldr r0, _02244570 ; =0x022533C0
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224456C: .word Unk_ov18_022533C0
_02244570: .word Unk_ov18_022533C0
	arm_func_end ov18_02244528

	arm_func_start ov18_02244574
ov18_02244574: ; 0x02244574
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, _0224464C ; =0x022533C0
	mov r7, r0
	ldr r0, [r4, #0]
	mov r6, r1
	ldr r0, [r0, #0x670]
	mov r5, r2
	mov r8, r3
	bl ov18_022440BC
	mov r4, r0
	strb r6, [r4, #0x2e]
	mul r1, r6, r5
	mov r2, r8
	strb r5, [r4, #0x2f]
	mov r0, r7
	add r3, sp, #4
	bl ov18_02245C98
	str r0, [r4, #0x28]
	ldr r1, [sp, #4]
	mov r0, r6
	strh r1, [r4, #0x2c]
	mov r1, r5
	bl NNSi_G2dCalcRequiredOBJ
	ldr r1, [sp, #0x20]
	cmp r7, #1
	str r0, [r1, #0]
	moveq ip, #0x6600000
	ldr r7, [sp, #4]
	mov r1, #4
	movne ip, #0x6400000
	str r1, [sp]
	mov r0, r4
	mov r2, r6
	mov r3, r5
	add r1, ip, r7, lsl #7
	bl NNS_G2dCharCanvasInitForOBJ1D
	ldr r1, [r4, #0x14]
	mov r0, r4
	ldr r2, [r1, #4]
	mov r1, #0
	blx r2
	ldr r0, _0224464C ; =0x022533C0
	ldr r2, [sp, #0x24]
	ldr r0, [r0, #0]
	mov r1, #1
	str r4, [r4, #0x18]
	add r0, r0, r2, lsl #3
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	mov r0, r4
	str r1, [r4, #0x24]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0224464C: .word Unk_ov18_022533C0
	arm_func_end ov18_02244574

	arm_func_start ov18_02244650
ov18_02244650: ; 0x02244650
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	bl ov18_02245E10
	ldr r0, _02244678 ; =0x022533C0
	mov r1, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x670]
	bl ov18_02244064
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02244678: .word Unk_ov18_022533C0
	arm_func_end ov18_02244650

	arm_func_start ov18_0224467C
ov18_0224467C: ; 0x0224467C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r0, _022447D8 ; =0x022533C0
	ldr r3, _022447DC ; =0x0224972E
	mov r4, r8, lsl #2
	ldr r2, _022447E0 ; =0x0224972C
	ldr r0, [r0, #0]
	ldrh r5, [r3, r4]
	ldrh r6, [r2, r4]
	add r3, r0, #0x610
	mov r0, #0x30
	mul r2, r6, r5
	mov r7, r1
	mla r4, r8, r0, r3
	mov r0, r2, lsl #5
	mov r1, #0x20
	bl ov18_02245068
	str r0, [r4, #0x28]
	cmp r8, #1
	bne _022446F4
	ldr r1, _022447E4 ; =0x04001008
	ldrh r0, [r1]
	bic r0, r0, #0x40
	strh r0, [r1]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r1]
	b _02244714
_022446F4:
	ldr r1, _022447E8 ; =0x04000008
	ldrh r0, [r1]
	bic r0, r0, #0x40
	strh r0, [r1]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r1]
_02244714:
	mov r0, #4
	str r0, [sp]
	ldr r1, [r4, #0x28]
	mov r0, r4
	mov r2, r6
	mov r3, r5
	bl NNS_G2dCharCanvasInitForBG
	ldr r0, _022447D8 ; =0x022533C0
	mov r1, #1
	ldr r0, [r0, #0]
	cmp r8, #1
	str r4, [r4, #0x18]
	add r0, r0, r7, lsl #3
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	str r1, [r4, #0x24]
	bne _02244760
	bl G2S_GetBG0ScrPtr
	b _02244764
_02244760:
	bl G2_GetBG0ScrPtr
_02244764:
	ldr r1, _022447EC ; =0x02249728
	mov r2, r8, lsl #1
	mov r3, #0
	ldrh r7, [r1, r2]
	str r3, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, r6
	mov r2, r5
	str r7, [sp, #8]
	mov r5, #0xf
	str r5, [sp, #0xc]
	bl NNS_G2dMapScrToCharText
	mov r0, r4
	mov r1, #0
	bl ov18_02244B5C
	ldr r0, _022447D8 ; =0x022533C0
	ldr r1, _022447F0 ; =ov18_022447F4
	ldr r2, [r0, #0]
	mov r0, #1
	add r2, r2, #0x27c
	add r2, r2, #0x400
	add r2, r2, r8
	mov r3, #0xc8
	bl ov18_02246304
	str r0, [r4, #0x2c]
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022447D8: .word Unk_ov18_022533C0
_022447DC: .word 0x0224972E
_022447E0: .word Unk_ov18_0224972C
_022447E4: .word 0x04001008
_022447E8: .word 0x04000008
_022447EC: .word Unk_ov18_02249728
_022447F0: .word ov18_022447F4
	arm_func_end ov18_0224467C

	arm_func_start ov18_022447F4
ov18_022447F4: ; 0x022447F4
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldrb r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _02244878 ; =0x022533C0
	ldr r1, [r0, #0]
	add r0, r1, #0x27c
	add r0, r0, #0x400
	cmp r4, r0
	bne _02244848
	ldr r0, [r1, #0x638]
	mov r1, #0x6000
	bl DC_FlushRange
	ldr r0, _02244878 ; =0x022533C0
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0x6000
	ldr r0, [r0, #0x638]
	bl GX_LoadBG0Char
	b _0224486C
_02244848:
	ldr r0, [r1, #0x668]
	mov r1, #0x3000
	bl DC_FlushRange
	ldr r0, _02244878 ; =0x022533C0
	mov r1, #0x3000
	ldr r0, [r0, #0]
	mov r2, r1
	ldr r0, [r0, #0x668]
	bl GXS_LoadBG0Char
_0224486C:
	mov r0, #0
	strb r0, [r4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02244878: .word Unk_ov18_022533C0
	arm_func_end ov18_022447F4

	arm_func_start ov18_0224487C
ov18_0224487C: ; 0x0224487C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x2c]
	mov r0, #1
	bl ov18_022463CC
	ldr r0, _022448DC ; =0x022533C0
	ldr r0, [r0, #0]
	add r0, r0, #0x610
	cmp r4, r0
	bne _022448BC
	bl G2_GetBG0CharPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x6000
	bl MIi_CpuClear16
	b _022448D0
_022448BC:
	bl G2_GetBG0CharPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x3000
	bl MIi_CpuClear16
_022448D0:
	add r0, r4, #0x28
	bl ov18_0224508C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022448DC: .word Unk_ov18_022533C0
	arm_func_end ov18_0224487C

	arm_func_start ov18_022448E0
ov18_022448E0: ; 0x022448E0
	ldr r2, _022448FC ; =0x022533C0
	mov r1, #0x30
	ldr r2, [r2, #0]
	ldr ip, _02244900 ; =ov18_0224487C
	add r2, r2, #0x610
	mla r0, r1, r0, r2
	bx ip
	; .align 2, 0
_022448FC: .word Unk_ov18_022533C0
_02244900: .word ov18_0224487C
	arm_func_end ov18_022448E0

	arm_func_start ov18_02244904
ov18_02244904: ; 0x02244904
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r4, [r0, #0x1c]
	add ip, sp, #0xc
	mov lr, #0
	strb lr, [ip]
	strb lr, [ip, #1]
	ldr ip, [r4]
	ldr ip, [ip, #8]
	ldrb ip, [ip, #7]
	cmp ip, #7
	addls pc, pc, ip, lsl #2
	b _02244984
_02244938: ; jump table
	b _02244958 ; case 0
	b _02244964 ; case 1
	b _02244964 ; case 2
	b _02244970 ; case 3
	b _02244970 ; case 4
	b _0224497C ; case 5
	b _0224497C ; case 6
	b _02244958 ; case 7
_02244958:
	mov ip, #1
	strb ip, [sp, #0xc]
	b _02244984
_02244964:
	mov ip, #1
	strb ip, [sp, #0xd]
	b _02244984
_02244970:
	sub ip, lr, #1
	strb ip, [sp, #0xc]
	b _02244984
_0224497C:
	sub ip, lr, #1
	strb ip, [sp, #0xd]
_02244984:
	ldr lr, [sp, #0x18]
	ldr ip, [sp, #0x1c]
	str lr, [sp]
	str ip, [sp, #4]
	ldrb lr, [sp, #0xc]
	ldrb ip, [sp, #0xd]
	add r0, r0, #0x18
	strb lr, [sp, #8]
	strb ip, [sp, #9]
	bl NNSi_G2dTextCanvasDrawText
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end ov18_02244904

	arm_func_start ov18_022449B4
ov18_022449B4: ; 0x022449B4
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrh ip, [sp, #0x10]
	str r3, [sp]
	ldr r3, _022449EC ; =0x022533C0
	str ip, [sp, #4]
	ldr lr, [r3]
	ldr ip, [sp, #0x14]
	mov r3, r2
	mov r2, r1
	add r1, lr, ip, lsl #3
	bl NNS_G2dCharCanvasDrawChar
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022449EC: .word Unk_ov18_022533C0
	arm_func_end ov18_022449B4

	arm_func_start ov18_022449F0
ov18_022449F0: ; 0x022449F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r6, [sp, #0x34]
	mov sb, r1
	ldrh r1, [r6]
	ldr r7, [sp, #0x30]
	ldr r5, [sp, #0x38]
	cmp r1, #0
	mov sl, r0
	mov r8, r2
	mov fp, r3
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02244A24:
	ldr r0, _02244A94 ; =0x022533C0
	ldr r0, [r0, #0]
	add r4, r0, r5, lsl #3
	mov r0, r4
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	ldr r0, _02244A98 ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, [r4]
	ldreqh r1, [r0, #2]
	mov r0, r4
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldrh r1, [r6]
	mov r2, r0
	mov r0, sl
	stmia sp, {r1, r5}
	ldrsb r1, [r2, #2]
	mov r2, r8
	mov r3, fp
	sub r1, r7, r1
	add r1, sb, r1, asr #1
	bl ov18_022449B4
	ldrh r1, [r6, #2]!
	add sb, sb, r7
	cmp r1, #0
	bne _02244A24
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02244A94: .word Unk_ov18_022533C0
_02244A98: .word 0x0000FFFF
	arm_func_end ov18_022449F0

	arm_func_start ov18_02244A9C
ov18_02244A9C: ; 0x02244A9C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r4, [r0, #0x1c]
	add ip, sp, #0x14
	mov lr, #0
	strb lr, [ip]
	strb lr, [ip, #1]
	ldr ip, [r4]
	ldr ip, [ip, #8]
	ldrb ip, [ip, #7]
	cmp ip, #7
	addls pc, pc, ip, lsl #2
	b _02244B1C
_02244AD0: ; jump table
	b _02244AF0 ; case 0
	b _02244AFC ; case 1
	b _02244AFC ; case 2
	b _02244B08 ; case 3
	b _02244B08 ; case 4
	b _02244B14 ; case 5
	b _02244B14 ; case 6
	b _02244AF0 ; case 7
_02244AF0:
	mov ip, #1
	strb ip, [sp, #0x14]
	b _02244B1C
_02244AFC:
	mov ip, #1
	strb ip, [sp, #0x15]
	b _02244B1C
_02244B08:
	sub ip, lr, #1
	strb ip, [sp, #0x14]
	b _02244B1C
_02244B14:
	sub ip, lr, #1
	strb ip, [sp, #0x15]
_02244B1C:
	ldr lr, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str lr, [sp]
	ldr lr, [sp, #0x28]
	str ip, [sp, #4]
	ldr ip, [sp, #0x2c]
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	ldrb lr, [sp, #0x14]
	ldrb ip, [sp, #0x15]
	add r0, r0, #0x18
	strb lr, [sp, #0x10]
	strb ip, [sp, #0x11]
	bl NNSi_G2dTextCanvasDrawTextRect
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	arm_func_end ov18_02244A9C

	arm_func_start ov18_02244B5C
ov18_02244B5C: ; 0x02244B5C
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x14]
	ldr r2, [r2, #4]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02244B5C

	arm_func_start ov18_02244B70
ov18_02244B70: ; 0x02244B70
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r3
	mov r4, r0
	mov r8, r1
	mov r0, r6
	mov r1, #0
	mov r7, r2
	bl ov18_02243BBC
	mov r2, #0
	mov r5, r0
	mov r0, r6
	mvn r1, #0
	mov r3, r2
	bl ov18_02243BD0
	mov r0, r6
	mvn r1, #0
	mov r2, #0
	mov r3, #0xf
	bl ov18_02243C74
	mov r0, r6
	mvn r1, #0
	ldr r2, [sp, #0x28]
	bl ov18_02243DE4
	str r7, [sp]
	mov r0, r5
	mov r3, r8
	mov r1, #0
	str r1, [sp, #4]
	ldrh r2, [r4, #0x2c]
	mov r1, #2
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldrb r1, [r4, #0x2e]
	ldrb r2, [r4, #0x2f]
	bl NNS_G2dArrangeOBJ1D
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov18_02244B70

	arm_func_start ov18_02244C08
ov18_02244C08: ; 0x02244C08
	ldr r1, _02244C28 ; =0x022533C0
	ldr r2, [r1, #0]
	add r1, r2, #0x610
	cmp r0, r1
	mov r0, #1
	streqb r0, [r2, #0x67c]
	strneb r0, [r2, #0x67d]
	bx lr
	; .align 2, 0
_02244C28: .word Unk_ov18_022533C0
	arm_func_end ov18_02244C08

	.rodata


	.global Unk_ov18_02249728
Unk_ov18_02249728: ; 0x02249728
	.incbin "incbin/overlay18_rodata.bin", 0x32F4, 0x32F8 - 0x32F4

	.global Unk_ov18_0224972C
Unk_ov18_0224972C: ; 0x0224972C
	.incbin "incbin/overlay18_rodata.bin", 0x32F8, 0x8



	.data


	.global Unk_ov18_0224B210
Unk_ov18_0224B210: ; 0x0224B210
	.incbin "incbin/overlay18_data.bin", 0x1AB0, 0x1AB8 - 0x1AB0

	.global Unk_ov18_0224B218
Unk_ov18_0224B218: ; 0x0224B218
	.incbin "incbin/overlay18_data.bin", 0x1AB8, 0x1AC0 - 0x1AB8

	.global Unk_ov18_0224B220
Unk_ov18_0224B220: ; 0x0224B220
	.incbin "incbin/overlay18_data.bin", 0x1AC0, 0x1AD0 - 0x1AC0

	.global Unk_ov18_0224B230
Unk_ov18_0224B230: ; 0x0224B230
	.incbin "incbin/overlay18_data.bin", 0x1AD0, 0x1AE0 - 0x1AD0

	.global Unk_ov18_0224B240
Unk_ov18_0224B240: ; 0x0224B240
	.incbin "incbin/overlay18_data.bin", 0x1AE0, 0x10



	.bss


	.global Unk_ov18_022533C0
Unk_ov18_022533C0: ; 0x022533C0
	.space 0x4

