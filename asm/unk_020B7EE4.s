	.include "macros/function.inc"
	.include "include/unk_020B7EE4.inc"

	

	.text


	arm_func_start sub_020B7EE4
sub_020B7EE4: ; 0x020B7EE4
	mov r2, #0x24
	mul r2, r0, r2
	ldr r0, _020B7EF8 ; =0x021CB3C4
	strb r1, [r0, r2]
	bx lr
	; .align 2, 0
_020B7EF8: .word 0x021CB3C4
	arm_func_end sub_020B7EE4

	arm_func_start sub_020B7EFC
sub_020B7EFC: ; 0x020B7EFC
	mov r2, #0x24
	mul r2, r0, r2
	mov r0, r1, lsl #0x10
	ldr r1, _020B7F18 ; =0x021CB3BC
	mov r0, r0, lsr #0x10
	str r0, [r1, r2]
	bx lr
	; .align 2, 0
_020B7F18: .word 0x021CB3BC
	arm_func_end sub_020B7EFC

	arm_func_start sub_020B7F1C
sub_020B7F1C: ; 0x020B7F1C
	mov r2, #0x24
	mul r2, r0, r2
	ldr r0, _020B7F30 ; =0x021CB3C0
	str r1, [r0, r2]
	bx lr
	; .align 2, 0
_020B7F30: .word 0x021CB3C0
	arm_func_end sub_020B7F1C

	arm_func_start sub_020B7F34
sub_020B7F34: ; 0x020B7F34
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r6, r0
	mov r0, r1
	mov r3, #0
	ldr r2, _020B7FC0 ; =sub_020B8884
	add r1, r5, #0x14
	str r3, [sp]
	bl sub_020BA018
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r2, #0
	str r2, [r4, #0xc]
	str r6, [r4, #0x10]
	mov r1, r5
	add r0, r4, #0x14
	str r2, [r4, #8]
	bl sub_020B9ED4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r2, _020B7FC4 ; =0x021CB3A4
	mov r1, #0x24
	mla r2, r6, r1, r2
	str r0, [r4, #8]
	mov r1, r4
	add r0, r2, #0xc
	bl sub_020A4C54
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020B7FC0: .word sub_020B8884
_020B7FC4: .word 0x021CB3A4
	arm_func_end sub_020B7F34

	arm_func_start sub_020B7FC8
sub_020B7FC8: ; 0x020B7FC8
	ldr ip, _020B7FD4 ; =sub_020B85AC
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_020B7FD4: .word sub_020B85AC
	arm_func_end sub_020B7FC8

	arm_func_start sub_020B7FD8
sub_020B7FD8: ; 0x020B7FD8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020B802C ; =0x021CB3A4
	mov r2, #0x24
	mla r6, r0, r2, r3
	ldr r5, _020B8030 ; =0x021CAF64
	mov r7, r1
	mov r4, #0
_020B7FF4:
	ldrb r0, [r5, #0x2c]
	cmp r0, #0
	beq _020B8018
	ldr r0, [r5, #4]
	cmp r0, r6
	bne _020B8018
	mov r0, r5
	mov r1, r7
	bl sub_020B85AC
_020B8018:
	add r4, r4, #1
	cmp r4, #0x10
	add r5, r5, #0x44
	blt _020B7FF4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B802C: .word 0x021CB3A4
_020B8030: .word 0x021CAF64
	arm_func_end sub_020B7FD8

	arm_func_start sub_020B8034
sub_020B8034: ; 0x020B8034
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020B8088 ; =0x021CAF64
	mov r7, r0
	mov r6, r1
	mov r4, #0
_020B8048:
	ldrb r0, [r5, #0x2c]
	cmp r0, #0
	beq _020B8074
	ldrh r0, [r5, #0x34]
	cmp r0, #1
	ldreqh r0, [r5, #0x38]
	cmpeq r0, r7
	bne _020B8074
	mov r0, r5
	mov r1, r6
	bl sub_020B85AC
_020B8074:
	add r4, r4, #1
	cmp r4, #0x10
	add r5, r5, #0x44
	blt _020B8048
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B8088: .word 0x021CAF64
	arm_func_end sub_020B8034

	arm_func_start sub_020B808C
sub_020B808C: ; 0x020B808C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020B80C8 ; =0x021CAF64
	mov r6, r0
	mov r4, #0
_020B809C:
	ldrb r0, [r5, #0x2c]
	cmp r0, #0
	beq _020B80B4
	mov r0, r5
	mov r1, r6
	bl sub_020B85AC
_020B80B4:
	add r4, r4, #1
	cmp r4, #0x10
	add r5, r5, #0x44
	blt _020B809C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B80C8: .word 0x021CAF64
	arm_func_end sub_020B808C

	arm_func_start sub_020B80CC
sub_020B80CC: ; 0x020B80CC
	ldr ip, _020B80D8 ; =sub_020B85F8
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_020B80D8: .word sub_020B85F8
	arm_func_end sub_020B80CC

	arm_func_start sub_020B80DC
sub_020B80DC: ; 0x020B80DC
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	arm_func_end sub_020B80DC

	arm_func_start sub_020B80E8
sub_020B80E8: ; 0x020B80E8
	ldr r1, [r0, #0]
	cmp r1, #0
	bxeq lr
	ldr r1, [r0, #0]
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r0, #0]
	bx lr
	arm_func_end sub_020B80E8

	arm_func_start sub_020B8108
sub_020B8108: ; 0x020B8108
	mov r1, #0x24
	mul r1, r0, r1
	ldr r0, _020B811C ; =0x021CB3AC
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_020B811C: .word 0x021CB3AC
	arm_func_end sub_020B8108

	arm_func_start sub_020B8120
sub_020B8120: ; 0x020B8120
	ldr r2, [r0, #0]
	cmp r2, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x41]
	bx lr
	arm_func_end sub_020B8120

	arm_func_start sub_020B8134
sub_020B8134: ; 0x020B8134
	ldr r2, [r0, #0]
	cmp r2, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x40]
	bx lr
	arm_func_end sub_020B8134

	arm_func_start sub_020B8148
sub_020B8148: ; 0x020B8148
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	ldrne r3, [r0]
	ldrneb r0, [r3, #0x2c]
	cmpne r0, #2
	ldmeqia sp!, {r3, pc}
	add r0, r3, #0x1c
	mov r1, r1, lsl #8
	bl sub_020BB3C0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B8148

	arm_func_start sub_020B8174
sub_020B8174: ; 0x020B8174
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x3c]
	bl sub_020C518C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B8174

	arm_func_start sub_020B8194
sub_020B8194: ; 0x020B8194
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x3c]
	bl sub_020C51A4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B8194

	arm_func_start sub_020B81B4
sub_020B81B4: ; 0x020B81B4
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x3c]
	bl sub_020C51C0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B81B4

	arm_func_start sub_020B81D4
sub_020B81D4: ; 0x020B81D4
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x3c]
	bl sub_020C515C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B81D4

	arm_func_start sub_020B81F4
sub_020B81F4: ; 0x020B81F4
	ldr r2, [r0, #0]
	cmp r2, #0
	bxeq lr
	ldr r2, [r0, #0]
	mov r3, #1
	strh r3, [r2, #0x34]
	ldr r0, [r0, #0]
	strh r1, [r0, #0x38]
	bx lr
	arm_func_end sub_020B81F4

	arm_func_start sub_020B8218
sub_020B8218: ; 0x020B8218
	ldr r3, [r0, #0]
	cmp r3, #0
	bxeq lr
	ldr r3, [r0, #0]
	mov ip, #2
	strh ip, [r3, #0x34]
	ldr r3, [r0, #0]
	strh r1, [r3, #0x38]
	ldr r0, [r0, #0]
	strh r2, [r0, #0x3a]
	bx lr
	arm_func_end sub_020B8218

	arm_func_start sub_020B8244
sub_020B8244: ; 0x020B8244
	ldr r1, [r0, #0]
	cmp r1, #0
	mvneq r0, #0
	bxeq lr
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x34]
	cmp r0, #1
	mvnne r0, #0
	ldreqh r0, [r1, #0x38]
	bx lr
	arm_func_end sub_020B8244

	arm_func_start sub_020B826C
sub_020B826C: ; 0x020B826C
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r0, [r1, #0x3c]
	bl sub_020C5E0C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B826C

	arm_func_start sub_020B82A0
sub_020B82A0: ; 0x020B82A0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _020B8344 ; =0x021CAF58
	mov r1, #0x14
	bl sub_020A4C10
	ldr r0, _020B8348 ; =0x021CAF4C
	mov r1, #0x14
	bl sub_020A4C10
	mov r6, #0
	ldr r7, _020B834C ; =0x021CAF64
	ldr r4, _020B8348 ; =0x021CAF4C
	mov r5, r6
_020B82CC:
	strb r5, [r7, #0x2c]
	mov r0, r4
	mov r1, r7
	strb r6, [r7, #0x3c]
	bl sub_020A4C54
	add r6, r6, #1
	cmp r6, #0x10
	add r7, r7, #0x44
	blt _020B82CC
	mov sl, #0
	ldr sb, _020B8350 ; =0x021CB3A4
	mov r8, #0xc
	mov r7, sl
	mov r6, #0x7f
	mov r5, #1
	mov r4, sl
_020B830C:
	mov r0, sb
	mov r1, r8
	bl sub_020A4C10
	mov r1, r7
	add r0, sb, #0xc
	bl sub_020A4C10
	strb r6, [sb, #0x20]
	str r5, [sb, #0x18]
	add sl, sl, #1
	str r4, [sb, #0x1c]
	cmp sl, #0x20
	add sb, sb, #0x24
	blt _020B830C
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020B8344: .word 0x021CAF58
_020B8348: .word 0x021CAF4C
_020B834C: .word 0x021CAF64
_020B8350: .word 0x021CB3A4
	arm_func_end sub_020B82A0

	arm_func_start sub_020B8354
sub_020B8354: ; 0x020B8354
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bl sub_020C5DB4
	mov fp, r0
	ldr r0, _020B84AC ; =0x021CAF58
	mov r1, #0
	bl sub_020A4DBC
	movs r6, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	ldr r5, _020B84B0 ; =0x020FDAB0
	rsb r4, r4, #0
_020B8380:
	ldr r0, _020B84AC ; =0x021CAF58
	mov r1, r6
	bl sub_020A4DBC
	ldrb r1, [r6, #0x2d]
	mov r7, r0
	cmp r1, #0
	bne _020B83B0
	ldr r0, [r6, #0x30]
	bl sub_020C5AD8
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6, #0x2d]
_020B83B0:
	ldrb r0, [r6, #0x2d]
	cmp r0, #0
	beq _020B83D8
	ldrb r1, [r6, #0x3c]
	mov r0, #1
	tst fp, r0, lsl r1
	bne _020B83D8
	mov r0, r6
	bl sub_020B8800
	b _020B849C
_020B83D8:
	add r0, r6, #0x1c
	bl sub_020BB41C
	ldr r0, [r6, #4]
	ldrb r2, [r6, #0x41]
	ldrb r0, [r0, #0x20]
	ldrb r1, [r6, #0x40]
	mov r2, r2, lsl #1
	mov r0, r0, lsl #1
	mov r1, r1, lsl #1
	ldrsh sl, [r5, r0]
	add r0, r6, #0x1c
	ldrsh r8, [r5, r2]
	ldrsh sb, [r5, r1]
	bl sub_020BB3E8
	mov r0, r0, asr #8
	mov r0, r0, lsl #1
	add r1, sb, r8
	ldrsh r0, [r5, r0]
	add r1, sl, r1
	add r8, r0, r1
	cmp r8, r4
	movlt r8, r4
	blt _020B8440
	ldr r0, _020B84B4 ; =0x00007FFF
	cmp r8, r0
	movgt r8, r0
_020B8440:
	ldrsh r0, [r6, #0x3e]
	cmp r8, r0
	beq _020B845C
	ldrb r0, [r6, #0x3c]
	mov r1, r8
	bl sub_020C5174
	strh r8, [r6, #0x3e]
_020B845C:
	ldrb r0, [r6, #0x2c]
	cmp r0, #2
	bne _020B8480
	add r0, r6, #0x1c
	bl sub_020BB434
	cmp r0, #0
	beq _020B8480
	mov r0, r6
	bl sub_020B8760
_020B8480:
	ldrb r0, [r6, #0x2f]
	cmp r0, #0
	beq _020B849C
	ldrb r0, [r6, #0x3c]
	bl sub_020C511C
	mov r0, #0
	strb r0, [r6, #0x2f]
_020B849C:
	mov r6, r7
	cmp r7, #0
	bne _020B8380
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B84AC: .word 0x021CAF58
_020B84B0: .word 0x020FDAB0
_020B84B4: .word 0x00007FFF
	arm_func_end sub_020B8354

	arm_func_start sub_020B84B8
sub_020B84B8: ; 0x020B84B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _020B854C ; =0x021CB3A4
	mov r3, #0x24
	mov r4, r0
	ldr r5, [r4, #0]
	mla r6, r1, r3, ip
	mov r7, r2
	cmp r5, #0
	beq _020B84E0
	bl sub_020B80E8
_020B84E0:
	ldrh r1, [r6, #8]
	ldr r0, [r6, #0x18]
	cmp r1, r0
	blo _020B851C
	mov r0, r6
	mov r1, #0
	bl sub_020A4DBC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r0, #0x3d]
	cmp r7, r1
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_020B8760
_020B851C:
	mov r0, r7
	bl sub_020B8798
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl sub_020B86BC
	str r4, [r5, #0]
	mov r0, r5
	str r5, [r4, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B854C: .word 0x021CB3A4
	arm_func_end sub_020B84B8

	arm_func_start sub_020B8550
sub_020B8550: ; 0x020B8550
	ldr ip, _020B8558 ; =sub_020B8800
	bx ip
	; .align 2, 0
_020B8558: .word sub_020B8800
	arm_func_end sub_020B8550

	arm_func_start sub_020B855C
sub_020B855C: ; 0x020B855C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x3c]
	ldr r4, [r5, #4]
	bl sub_020C50F4
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _020B8588
	ldrb r0, [r5, #0x3c]
	ldr r1, _020B85A8 ; =0x0000FFFF
	bl sub_020C51DC
_020B8588:
	mov r0, r5
	bl sub_020B8674
	bl sub_020C5AAC
	str r0, [r5, #0x30]
	mov r0, #1
	strb r0, [r5, #0x2f]
	strb r0, [r5, #0x2c]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B85A8: .word 0x0000FFFF
	arm_func_end sub_020B855C

	arm_func_start sub_020B85AC
sub_020B85AC: ; 0x020B85AC
	stmfd sp!, {r4, lr}
	movs r4, r0
	mov r2, r1
	ldrneb r1, [r4, #0x2c]
	cmpne r1, #0
	ldmeqia sp!, {r4, pc}
	cmp r2, #0
	bne _020B85D4
	bl sub_020B8760
	ldmia sp!, {r4, pc}
_020B85D4:
	add r0, r4, #0x1c
	mov r1, #0
	bl sub_020BB3C0
	mov r0, r4
	mov r1, #0
	bl sub_020B88D4
	mov r0, #2
	strb r0, [r4, #0x2c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B85AC

	arm_func_start sub_020B85F8
sub_020B85F8: ; 0x020B85F8
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	ldrneb r0, [r5, #0x2e]
	mov r4, r1
	cmpne r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0x3c]
	bl sub_020C513C
	strb r4, [r5, #0x2e]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B85F8

	arm_func_start sub_020B8620
sub_020B8620: ; 0x020B8620
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _020B8670 ; =0x021CB3A4
	mov r2, #0x24
	mla r5, r0, r2, r3
	mov r6, r1
	add r0, r5, #0xc
	mov r1, #0
	bl sub_020A4DBC
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r4
	add r0, r5, #0xc
	bl sub_020A4D5C
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	ldr r0, [r4, #8]
	bl sub_020B9F5C
	ldr r0, [r4, #8]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B8670: .word 0x021CB3A4
	arm_func_end sub_020B8620

	arm_func_start sub_020B8674
sub_020B8674: ; 0x020B8674
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	strb r0, [r4, #0x2e]
	strb r0, [r4, #0x2d]
	strb r0, [r4, #0x2f]
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x3e]
	mov r1, #0x7f
	strb r1, [r4, #0x40]
	add r0, r4, #0x1c
	strb r1, [r4, #0x41]
	bl sub_020BB3A8
	add r0, r4, #0x1c
	mov r1, #0x7f00
	mov r2, #1
	bl sub_020BB3C0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B8674

	arm_func_start sub_020B86BC
sub_020B86BC: ; 0x020B86BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0
	mov r5, r0
	bl sub_020A4DBC
	movs r1, r0
	beq _020B86F8
_020B86D8:
	ldrb r2, [r4, #0x3d]
	ldrb r0, [r1, #0x3d]
	cmp r2, r0
	blo _020B86F8
	mov r0, r5
	bl sub_020A4DBC
	movs r1, r0
	bne _020B86D8
_020B86F8:
	mov r0, r5
	mov r2, r4
	bl sub_020A4CF8
	str r5, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B86BC

	arm_func_start sub_020B870C
sub_020B870C: ; 0x020B870C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020B875C ; =0x021CAF58
	mov r1, #0
	bl sub_020A4DBC
	movs r1, r0
	beq _020B874C
	ldr r4, _020B875C ; =0x021CAF58
_020B872C:
	ldrb r2, [r5, #0x3d]
	ldrb r0, [r1, #0x3d]
	cmp r2, r0
	blo _020B874C
	mov r0, r4
	bl sub_020A4DBC
	movs r1, r0
	bne _020B872C
_020B874C:
	ldr r0, _020B875C ; =0x021CAF58
	mov r2, r5
	bl sub_020A4CF8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B875C: .word 0x021CAF58
	arm_func_end sub_020B870C

	arm_func_start sub_020B8760
sub_020B8760: ; 0x020B8760
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x2c]
	cmp r0, #2
	bne _020B8780
	ldrb r0, [r4, #0x3c]
	ldr r1, _020B8794 ; =0xFFFFFD2D
	bl sub_020C5174
_020B8780:
	ldrb r0, [r4, #0x3c]
	bl sub_020C50D4
	mov r0, r4
	bl sub_020B8800
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B8794: .word 0xFFFFFD2D
	arm_func_end sub_020B8760

	arm_func_start sub_020B8798
sub_020B8798: ; 0x020B8798
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020B87F8 ; =0x021CAF4C
	mov r1, #0
	bl sub_020A4DBC
	movs r4, r0
	bne _020B87D8
	ldr r0, _020B87FC ; =0x021CAF58
	mov r1, #0
	bl sub_020A4DBC
	mov r4, r0
	ldrb r1, [r4, #0x3d]
	cmp r5, r1
	movlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	bl sub_020B8760
_020B87D8:
	ldr r0, _020B87F8 ; =0x021CAF4C
	mov r1, r4
	bl sub_020A4D5C
	mov r0, r4
	strb r5, [r4, #0x3d]
	bl sub_020B870C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B87F8: .word 0x021CAF4C
_020B87FC: .word 0x021CAF58
	arm_func_end sub_020B8798

	arm_func_start sub_020B8800
sub_020B8800: ; 0x020B8800
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	strne r0, [r4]
	ldr r5, [r4, #4]
	mov r1, r4
	mov r0, r5
	bl sub_020A4D5C
	mov r0, #0
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020B8858
	add r0, r5, #0xc
	bl sub_020A4C54
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r4, #8]
_020B8858:
	ldr r0, _020B887C ; =0x021CAF58
	mov r1, r4
	bl sub_020A4D5C
	ldr r0, _020B8880 ; =0x021CAF4C
	mov r1, r4
	bl sub_020A4C54
	mov r0, #0
	strb r0, [r4, #0x2c]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B887C: .word 0x021CAF58
_020B8880: .word 0x021CAF4C
	arm_func_end sub_020B8800

	arm_func_start sub_020B8884
sub_020B8884: ; 0x020B8884
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020B9F44
	ldr r1, [r4, #0xc]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #8]
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0x10]
	ldr r2, _020B88D0 ; =0x021CB3A4
	mov r0, #0x24
	mla r0, r1, r0, r2
	mov r1, r4
	add r0, r0, #0xc
	bl sub_020A4D5C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B88D0: .word 0x021CB3A4
	arm_func_end sub_020B8884

	arm_func_start sub_020B88D4
sub_020B88D4: ; 0x020B88D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #4]
	mov r5, r1
	cmp r4, #0
	beq _020B8900
	mov r0, r4
	mov r1, r6
	bl sub_020A4D5C
	mov r0, #0
	str r0, [r6, #4]
_020B8900:
	ldr r0, _020B8930 ; =0x021CAF58
	mov r1, r6
	bl sub_020A4D5C
	strb r5, [r6, #0x3d]
	cmp r4, #0
	beq _020B8924
	mov r0, r4
	mov r1, r6
	bl sub_020B86BC
_020B8924:
	mov r0, r6
	bl sub_020B870C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B8930: .word 0x021CAF58
	arm_func_end sub_020B88D4

	.bss


	.global Unk_021CAF4C
Unk_021CAF4C: ; 0x021CAF4C
	.space 0xC

	.global Unk_021CAF58
Unk_021CAF58: ; 0x021CAF58
	.space 0xC

	.global Unk_021CAF64
Unk_021CAF64: ; 0x021CAF64
	.space 0x440

	.global Unk_021CB3A4
Unk_021CB3A4: ; 0x021CB3A4
	.space 0x480

