	.include "macros/function.inc"
	.include "include/button.inc"

	

	.text


	arm_func_start ov18_0222AF0C
ov18_0222AF0C: ; 0x0222AF0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, _0222AFF4 ; =0x02248CBC
	mov r5, r0
	mov r0, #0x1c
	mov r1, #4
	ldrb r8, [r2, r5]
	bl ov18_02245068
	ldr r4, _0222AFF8 ; =0x02253248
	mvn r7, #1
	str r0, [r4, #0]
	strb r7, [r0, #0x16]
	ldr r0, [r4, #0]
	cmp r8, #0
	strb r5, [r0, #0x17]
	mov sb, #0
	ble _0222AF98
	ldr r0, _0222AFFC ; =0x02248CA0
	mov r6, sb
	add sl, r0, r5, lsl #1
	mov r5, #1
	mov fp, r5
_0222AF60:
	ldrb r1, [sl], #1
	mov r0, r6
	mov r2, r5
	bl ov18_02243F8C
	ldr r1, [r4, #0]
	mov r2, fp
	str r0, [r1, sb, lsl #2]
	ldr r0, [r4, #0]
	add r1, r7, #1
	ldr r0, [r0, sb, lsl #2]
	bl ov18_02243DE4
	add sb, sb, #1
	cmp sb, r8
	blt _0222AF60
_0222AF98:
	mov r1, #1
	mov r2, r1
	mov r0, #0
	bl ov18_02243F8C
	ldr r3, _0222AFF8 ; =0x02253248
	mvn r1, #0
	ldr r4, [r3, #0]
	mov r2, #1
	str r0, [r4, #8]
	ldr r0, [r3, #0]
	ldr r0, [r0, #8]
	bl ov18_02243DE4
	mov r0, #0xc0
	bl ov18_0222B0D8
	mov r0, #0
	ldr r1, _0222B000 ; =ov18_0222B16C
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0222AFF8 ; =0x02253248
	ldr r1, [r1, #0]
	str r0, [r1, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222AFF4: .word Unk_ov18_02248CBC
_0222AFF8: .word Unk_ov18_02253248
_0222AFFC: .word Unk_ov18_02248CA0
_0222B000: .word ov18_0222B16C
	arm_func_end ov18_0222AF0C

	arm_func_start ov18_0222B004
ov18_0222B004: ; 0x0222B004
	ldr r0, _0222B028 ; =0x02253248
	mov r3, #1
	ldr r2, [r0, #0]
	ldr ip, _0222B02C ; =ov18_022463A4
	strb r3, [r2, #0x19]
	ldr r0, [r0, #0]
	ldr r1, _0222B030 ; =ov18_0222B3B4
	ldr r0, [r0, #0xc]
	bx ip
	; .align 2, 0
_0222B028: .word Unk_ov18_02253248
_0222B02C: .word ov18_022463A4
_0222B030: .word ov18_0222B3B4
	arm_func_end ov18_0222B004

	arm_func_start ov18_0222B034
ov18_0222B034: ; 0x0222B034
	ldr r0, _0222B044 ; =0x02253248
	ldr r0, [r0, #0]
	ldrsb r0, [r0, #0x16]
	bx lr
	; .align 2, 0
_0222B044: .word Unk_ov18_02253248
	arm_func_end ov18_0222B034

	arm_func_start ov18_0222B048
ov18_0222B048: ; 0x0222B048
	ldr r2, _0222B064 ; =0x02253248
	mvn r1, #0
	ldr r3, [r2, #0]
	ldrsb r2, [r3, #0x16]
	cmp r2, r1
	streqb r0, [r3, #0x16]
	bx lr
	; .align 2, 0
_0222B064: .word Unk_ov18_02253248
	arm_func_end ov18_0222B048

	arm_func_start ov18_0222B068
ov18_0222B068: ; 0x0222B068
	ldr r1, _0222B078 ; =0x02253248
	ldr r1, [r1, #0]
	strb r0, [r1, #0x16]
	bx lr
	; .align 2, 0
_0222B078: .word Unk_ov18_02253248
	arm_func_end ov18_0222B068

	arm_func_start ov18_0222B07C
ov18_0222B07C: ; 0x0222B07C
	ldr r0, _0222B0A4 ; =0x02253248
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_0222B0A4: .word Unk_ov18_02253248
	arm_func_end ov18_0222B07C

	arm_func_start ov18_0222B0A8
ov18_0222B0A8: ; 0x0222B0A8
	ldr r0, _0222B0BC ; =0x02253248
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x18]
	bx lr
	; .align 2, 0
_0222B0BC: .word Unk_ov18_02253248
	arm_func_end ov18_0222B0A8

	arm_func_start ov18_0222B0C0
ov18_0222B0C0: ; 0x0222B0C0
	ldr r0, _0222B0D4 ; =0x02253248
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0x18]
	bx lr
	; .align 2, 0
_0222B0D4: .word Unk_ov18_02253248
	arm_func_end ov18_0222B0C0

	arm_func_start ov18_0222B0D8
ov18_0222B0D8: ; 0x0222B0D8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r1, _0222B15C ; =0x02253248
	mov r8, r0
	ldr r0, [r1, #0]
	ldr r1, _0222B160 ; =0x02248CBC
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, #8]
	mov r3, r8
	ldrb r6, [r1, r2]
	mvn r1, #0
	mov r2, #0
	bl ov18_02243CF4
	mov r7, #0
	cmp r6, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r4, _0222B164 ; =0x02248CAE
	ldr sl, _0222B168 ; =0x02248C98
	ldr sb, _0222B15C ; =0x02253248
	mvn r5, #0
_0222B124:
	ldr r0, [sb]
	mov r1, r5
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, r7, lsl #2]
	add r3, r8, #4
	add r2, r4, r2, lsl #1
	ldrb r2, [r7, r2]
	mov r2, r2, lsl #2
	ldrh r2, [sl, r2]
	bl ov18_02243CF4
	add r7, r7, #1
	cmp r7, r6
	blt _0222B124
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_0222B15C: .word Unk_ov18_02253248
_0222B160: .word Unk_ov18_02248CBC
_0222B164: .word Unk_ov18_02248CAE
_0222B168: .word Unk_ov18_02248C98
	arm_func_end ov18_0222B0D8

	arm_func_start ov18_0222B16C
ov18_0222B16C: ; 0x0222B16C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222B1D0 ; =0x02253248
	mov r4, r0
	ldr r0, [r1, #0]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	sub r0, r0, #4
	str r0, [sp]
	bl ov18_0222B0D8
	ldr r0, [sp]
	cmp r0, #0xa8
	addgt sp, sp, #8
	ldmgtia sp!, {r4, pc}
	mov r0, #0xa8
	bl ov18_0222B0D8
	ldr r1, _0222B1D4 ; =ov18_0222B1D8
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222B1D0: .word Unk_ov18_02253248
_0222B1D4: .word ov18_0222B1D8
	arm_func_end ov18_0222B16C

	arm_func_start ov18_0222B1D8
ov18_0222B1D8: ; 0x0222B1D8
	stmfd sp!, {r3, lr}
	ldr r1, _0222B220 ; =0x02253248
	mvn r3, #0
	ldr r2, [r1, #0]
	strb r3, [r2, #0x16]
	ldr r3, [r1, #0]
	ldrh r2, [r3, #0x14]
	add r2, r2, #1
	strh r2, [r3, #0x14]
	ldr r3, [r1, #0]
	ldrh r1, [r3, #0x14]
	cmp r1, #4
	ldmloia sp!, {r3, pc}
	ldr r1, _0222B224 ; =ov18_0222B228
	mov r2, #0
	strh r2, [r3, #0x14]
	bl ov18_022463A4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222B220: .word Unk_ov18_02253248
_0222B224: .word ov18_0222B228
	arm_func_end ov18_0222B1D8

	arm_func_start ov18_0222B228
ov18_0222B228: ; 0x0222B228
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r8, _0222B394 ; =0x02253248
	ldr r1, _0222B398 ; =0x02248CBC
	ldr r3, [r8]
	ldrb r2, [r3, #0x17]
	ldrb r0, [r3, #0x18]
	ldrb r6, [r1, r2]
	cmp r0, #0
	bne _0222B37C
	ldrsb r1, [r3, #0x16]
	mvn r0, #0
	cmp r1, r0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r6, #0
	mov r7, #0
	ble _0222B37C
	ldr r5, _0222B39C ; =0x02248C98
	ldr r4, _0222B3A0 ; =0x02248CAE
	ldr sl, _0222B3A4 ; =0x02248C94
	add sb, sp, #0
_0222B280:
	ldr r0, [r8]
	mov r1, sl
	ldrb r0, [r0, #0x17]
	mov r2, sb
	add r0, r4, r0, lsl #1
	ldrb r0, [r7, r0]
	add r0, r5, r0, lsl #2
	bl ov18_02244C50
	mov r0, sb
	bl ov18_022455B8
	cmp r0, #0
	beq _0222B370
	ldr r0, _0222B394 ; =0x02253248
	ldr r3, [r0, #0]
	ldr r0, [r3, #0x10]
	cmp r0, #0
	bne _0222B37C
	ldrb r2, [r3, #0x17]
	ldr r1, _0222B3A8 ; =0x02248CA0
	ldr r0, [r3, r7, lsl #2]
	add r1, r1, r2, lsl #1
	ldrb r4, [r7, r1]
	mov r1, #0
	bl ov18_02243BBC
	mov r2, r0
	add r1, r4, #1
	mov r0, #0
	bl ov18_02243ECC
	ldr r0, _0222B394 ; =0x02253248
	ldr r1, _0222B3A0 ; =0x02248CAE
	ldr r0, [r0, #0]
	ldr r2, _0222B39C ; =0x02248C98
	ldrb r4, [r0, #0x17]
	ldr r3, _0222B3AC ; =0x02248C9A
	ldr r0, [r0, r7, lsl #2]
	add r1, r1, r4, lsl #1
	ldrb r4, [r7, r1]
	mvn r1, #0
	mov r4, r4, lsl #2
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl ov18_02243CF4
	ldr r0, _0222B394 ; =0x02253248
	mvn r1, #0
	ldr r0, [r0, #0]
	mov r2, #1
	ldr r0, [r0, r7, lsl #2]
	bl ov18_02243DE4
	mov r0, #0
	ldr r1, _0222B3B0 ; =ov18_0222B490
	mov r2, r0
	mov r3, #0x6e
	bl ov18_02246304
	ldr r1, _0222B394 ; =0x02253248
	add sp, sp, #8
	ldr r2, [r1, #0]
	str r0, [r2, #0x10]
	ldr r0, [r1, #0]
	strb r7, [r0, #0x16]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0222B370:
	add r7, r7, #1
	cmp r7, r6
	blt _0222B280
_0222B37C:
	ldr r0, _0222B394 ; =0x02253248
	mvn r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x16]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_0222B394: .word Unk_ov18_02253248
_0222B398: .word Unk_ov18_02248CBC
_0222B39C: .word Unk_ov18_02248C98
_0222B3A0: .word Unk_ov18_02248CAE
_0222B3A4: .word Unk_ov18_02248C94
_0222B3A8: .word Unk_ov18_02248CA0
_0222B3AC: .word 0x02248C9A
_0222B3B0: .word ov18_0222B490
	arm_func_end ov18_0222B228

	arm_func_start ov18_0222B3B4
ov18_0222B3B4: ; 0x0222B3B4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0222B410 ; =0x02253248
	mov r4, r0
	ldr r0, [r1, #0]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	bl ov18_0222B0D8
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r1, _0222B414 ; =ov18_0222B418
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222B410: .word Unk_ov18_02253248
_0222B414: .word ov18_0222B418
	arm_func_end ov18_0222B3B4

	arm_func_start ov18_0222B418
ov18_0222B418: ; 0x0222B418
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, r0
	mov r0, #0
	bl ov18_022463AC
	ldr r0, _0222B488 ; =0x02253248
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0222B444
	mov r0, #0
	bl ov18_022463AC
_0222B444:
	ldr r4, _0222B488 ; =0x02253248
	mov r5, #0
_0222B44C:
	ldr r0, [r4, #0]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	beq _0222B460
	bl ov18_02243B3C
_0222B460:
	add r5, r5, #1
	cmp r5, #2
	blt _0222B44C
	ldr r0, _0222B488 ; =0x02253248
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl ov18_02243B3C
	ldr r0, _0222B48C ; =0x02253248
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222B488: .word Unk_ov18_02253248
_0222B48C: .word Unk_ov18_02253248
	arm_func_end ov18_0222B418

	arm_func_start ov18_0222B490
ov18_0222B490: ; 0x0222B490
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _0222B574 ; =0x02253248
	str r0, [sp]
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0x14]
	add r0, r0, #1
	strh r0, [r1, #0x14]
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0x14]
	cmp r0, #0x10
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [r1, #0x17]
	ldr r0, _0222B578 ; =0x02248CBC
	mov sb, #0
	ldrb r8, [r0, r1]
	cmp r8, #0
	ble _0222B530
	ldr r7, _0222B57C ; =0x02248CA0
	mov r6, sb
	mov fp, sb
	mvn r5, #0
_0222B4E4:
	ldr r0, [r4, #0]
	mov r1, r6
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, sb, lsl #2]
	add r2, r7, r2, lsl #1
	ldrb sl, [sb, r2]
	bl ov18_02243BBC
	mov r2, r0
	mov r1, sl
	mov r0, fp
	bl ov18_02243ECC
	ldr r0, [r4, #0]
	mov r1, r5
	ldr r0, [r0, sb, lsl #2]
	mov r2, #1
	bl ov18_02243DE4
	add sb, sb, #1
	cmp sb, r8
	blt _0222B4E4
_0222B530:
	mov r0, #0xa8
	bl ov18_0222B0D8
	ldr r1, _0222B574 ; =0x02253248
	mov r0, #0
	ldr r2, [r1, #0]
	sub r3, r0, #1
	strh r0, [r2, #0x14]
	ldr r2, [r1, #0]
	strb r3, [r2, #0x16]
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp]
	str r0, [r2, #0x10]
	bl ov18_022463AC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222B574: .word Unk_ov18_02253248
_0222B578: .word Unk_ov18_02248CBC
_0222B57C: .word Unk_ov18_02248CA0
	arm_func_end ov18_0222B490

	.rodata


	.global Unk_ov18_02248C90
Unk_ov18_02248C90: ; 0x02248C90
	.incbin "incbin/overlay18_rodata.bin", 0x285C, 0x2860 - 0x285C

	.global Unk_ov18_02248C94
Unk_ov18_02248C94: ; 0x02248C94
	.incbin "incbin/overlay18_rodata.bin", 0x2860, 0x2864 - 0x2860

	.global Unk_ov18_02248C98
Unk_ov18_02248C98: ; 0x02248C98
	.incbin "incbin/overlay18_rodata.bin", 0x2864, 0x286C - 0x2864

	.global Unk_ov18_02248CA0
Unk_ov18_02248CA0: ; 0x02248CA0
	.incbin "incbin/overlay18_rodata.bin", 0x286C, 0x287A - 0x286C

	.global Unk_ov18_02248CAE
Unk_ov18_02248CAE: ; 0x02248CAE
	.incbin "incbin/overlay18_rodata.bin", 0x287A, 0x2888 - 0x287A

	.global Unk_ov18_02248CBC
Unk_ov18_02248CBC: ; 0x02248CBC
	.incbin "incbin/overlay18_rodata.bin", 0x2888, 0x7



	.bss


	.global Unk_ov18_02253248
Unk_ov18_02253248: ; 0x02253248
	.space 0x4

