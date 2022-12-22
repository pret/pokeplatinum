	.include "macros/function.inc"
	.include "include/ov4_021EE2E0.inc"

	

	.text


	arm_func_start ov4_021EE2E0
ov4_021EE2E0: ; 0x021EE2E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov sb, r0
	cmp r8, #0
	mov r7, #0
	ble _021EE334
	ldr r6, _021EE340 ; =0x0221816C
	ldr r5, _021EE344 ; =0x08421085
	mov r4, #0x3e
_021EE304:
	bl rand
	umull r1, r2, r0, r5
	sub r1, r0, r2
	add r2, r2, r1, lsr #1
	mov r2, r2, lsr #5
	umull r1, r2, r4, r2
	sub r2, r0, r1
	ldrsb r0, [r6, r2]
	strb r0, [sb, r7]
	add r7, r7, #1
	cmp r7, r8
	blt _021EE304
_021EE334:
	mov r0, #0
	strb r0, [sb, r7]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021EE340: .word 0x0221816C
_021EE344: .word 0x08421085
	arm_func_end ov4_021EE2E0

	arm_func_start ov4_021EE348
ov4_021EE348: ; 0x021EE348
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r4, [r6, #0]
	mov r5, r1
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	bne _021EE4E8
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl ov4_021EACDC
	mvn r1, #0
	str r0, [r4, #0x204]
	cmp r0, r1
	bne _021EE3B4
	ldr r2, _021EE68C ; =0x022181AC
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EE3B4:
	mov r1, #0
	bl ov4_021EA924
	cmp r0, #0
	bne _021EE3F0
	ldr r2, _021EE690 ; =0x022181D4
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EE3F0:
	add r1, sp, #4
	mov r2, #0
	str r2, [r1, #0]
	mov r0, #2
	str r2, [r1, #4]
	strb r0, [sp, #5]
	ldr r0, [r4, #0x204]
	mov r2, #8
	bl ov4_021EAD18
	mvn r1, #0
	cmp r0, r1
	mov r1, #5
	bne _021EE44C
	ldr r2, _021EE694 ; =0x02218208
	mov r0, r6
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EE44C:
	ldr r0, [r4, #0x204]
	bl ov4_021EADC4
	mvn r1, #0
	cmp r0, r1
	bne _021EE48C
	ldr r2, _021EE698 ; =0x02218230
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EE48C:
	mov r0, #8
	str r0, [sp]
	ldr r0, [r4, #0x204]
	add r1, sp, #4
	add r2, sp, #0
	bl ov4_021EAEF0
	mvn r1, #0
	cmp r0, r1
	bne _021EE4DC
	ldr r2, _021EE69C ; =0x0221825C
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EE4DC:
	ldrh r0, [sp, #6]
	str r0, [r4, #0x208]
	b _021EE4F8
_021EE4E8:
	mvn r0, #0
	str r0, [r4, #0x204]
	mov r0, #0
	str r0, [r4, #0x208]
_021EE4F8:
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl ov4_021EACDC
	mvn r1, #0
	str r0, [r4, #0x1d4]
	cmp r0, r1
	bne _021EE544
	ldr r2, _021EE68C ; =0x022181AC
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EE544:
	mov r1, #0
	bl ov4_021EA924
	cmp r0, #0
	bne _021EE580
	ldr r2, _021EE690 ; =0x022181D4
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EE580:
	ldr r0, _021EE6A0 ; =0x0221812C
	bl ov4_0220854C
	cmp r0, #0
	bne _021EE5BC
	ldr r2, _021EE6A4 ; =0x0221828C
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EE5BC:
	add r3, sp, #4
	mov r2, #0
	str r2, [r3, #0]
	mov r1, #2
	str r2, [r3, #4]
	strb r1, [sp, #5]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	cmp r0, #0
	bne _021EE600
	ldr r0, _021EE6A8 ; =0x022182C0
	ldr r1, _021EE6AC ; =0x022182E0
	ldr r2, _021EE6B0 ; =0x0221810C
	mov r3, #0x90
	bl __msl_assertion_failed
_021EE600:
	ldr r0, _021EE6B4 ; =0x0000CC74
	add r1, sp, #4
	strh r0, [sp, #6]
	ldr r0, [r4, #0x1d4]
	mov r2, #8
	bl ov4_021EAD78
	mvn r1, #0
	cmp r0, r1
	bne _021EE674
	ldr r0, [r4, #0x1d4]
	bl ov4_021EAF38
	mvn r2, #5
	cmp r0, r2
	subne r1, r2, #0x14
	cmpne r0, r1
	subne r1, r2, #0x46
	cmpne r0, r1
	beq _021EE674
	ldr r2, _021EE6B8 ; =0x022182F0
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EE674:
	mov r0, #1
	str r0, [r5, #0x14]
	str r0, [r4, #0x1d8]
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021EE68C: .word 0x022181AC
_021EE690: .word 0x022181D4
_021EE694: .word 0x02218208
_021EE698: .word 0x02218230
_021EE69C: .word 0x0221825C
_021EE6A0: .word 0x0221812C
_021EE6A4: .word 0x0221828C
_021EE6A8: .word 0x022182C0
_021EE6AC: .word 0x022182E0
_021EE6B0: .word 0x0221810C
_021EE6B4: .word 0x0000CC74
_021EE6B8: .word 0x022182F0
	arm_func_end ov4_021EE348

	arm_func_start ov4_021EE6BC
ov4_021EE6BC: ; 0x021EE6BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r4, [r8]
	mov r7, r1
	ldr r1, [r4, #0x1d8]
	mov r6, r2
	mov r5, r3
	cmp r1, #4
	bne _021EE6F4
	bl ov4_021EBF70
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021EE6F4:
	ldr r0, [r4, #0x1d8]
	cmp r0, #0
	beq _021EE718
	ldr r1, _021EE8F4 ; =0x02218318
	mov r0, r8
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EE718:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _021EE738
	cmp r0, #1
	bne _021EE744
	mov r0, #1
	str r0, [r4, #0x10c]
	b _021EE75C
_021EE738:
	mov r0, #0
	str r0, [r4, #0x10c]
	b _021EE75C
_021EE744:
	ldr r1, _021EE8F8 ; =0x0221832C
	mov r0, r8
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EE75C:
	mov r3, #1
	mov r1, r7
	add r0, r4, #0x110
	mov r2, #0x1f
	str r3, [r4, #0x10c]
	bl ov4_021F5820
	add r0, r4, #0x2f
	mov r1, r6
	add r0, r0, #0x100
	mov r2, #0x15
	bl ov4_021F5820
	mov r1, r5
	add r0, r4, #0x144
	mov r2, #0x33
	bl ov4_021F5820
	add r0, r4, #0x77
	ldr r1, [sp, #0x28]
	add r0, r0, #0x100
	mov r2, #0x1f
	bl ov4_021F5820
	add r0, r4, #0x144
	bl ov4_021EA8E0
	mov r0, #0x308
	bl ov4_021D7880
	movs r4, r0
	bne _021EE7DC
	ldr r1, _021EE8FC ; =0x02218340
	mov r0, r8
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EE7DC:
	mov r1, #0
	mov r2, #0x308
	bl memset
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x2c]
	str r0, [r4, #0x304]
	ldrsb r0, [r1]
	cmp r0, #0
	ldrne r0, [sp, #0x30]
	ldrnesb r0, [r0]
	cmpne r0, #0
	beq _021EE82C
	add r0, r4, #0xc2
	mov r2, #0x100
	bl ov4_021F5820
	add r0, r4, #0xc2
	ldr r1, [sp, #0x30]
	add r0, r0, #0x100
	mov r2, #0x100
	bl ov4_021F5820
_021EE82C:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _021EE848
	add r0, r4, #0xc2
	add r0, r0, #0x200
	mov r2, #0x41
	bl ov4_021F5820
_021EE848:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x44]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r5, [sp, #0x48]
	add r3, sp, #0xc
	mov r0, r8
	mov r2, r4
	mov r1, #0
	str r5, [sp, #8]
	bl ov4_021F1A54
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0xc]
	mov r0, r8
	bl ov4_021EE348
	movs r4, r0
	beq _021EE8C0
	ldr r1, [sp, #0xc]
	mov r0, r8
	str r4, [r1, #0x1c]
	ldr r1, [sp, #0xc]
	bl ov4_021F1708
	mov r0, r8
	mov r1, #0
	bl ov4_021EF75C
	add sp, sp, #0x10
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EE8C0:
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021EE8E8
	ldr r1, [r1, #0x18]
	mov r0, r8
	bl ov4_021EC3B0
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021EE8E8:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021EE8F4: .word 0x02218318
_021EE8F8: .word 0x0221832C
_021EE8FC: .word 0x02218340
	arm_func_end ov4_021EE6BC

	arm_func_start ov4_021EE900
ov4_021EE900: ; 0x021EE900
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x288
	mov r5, r1
	mov r6, r0
	add r0, r5, #0x80
	mov r1, #0x20
	ldr r4, [r6, #0]
	bl ov4_021EE2E0
	add r0, r5, #0x100
	ldrsb r0, [r0, #0xc2]
	cmp r0, #0
	addne r0, r5, #0xc2
	addeq r0, r4, #0x77
	add r7, r0, #0x100
	mov r0, r7
	bl strlen
	mov r1, r0
	mov r0, r7
	add r2, r5, #0xa1
	bl ov4_021EA7F4
	ldrsb r0, [r5, #0xc2]
	cmp r0, #0
	addne r0, r5, #0xc2
	bne _021EE990
	add r0, r4, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	addne r0, r4, #0x2f
	addne r0, r0, #0x100
	bne _021EE990
	ldr r1, _021EEC54 ; =0x02218350
	add r0, sp, #0x35
	add r2, r4, #0x110
	add r3, r4, #0x144
	bl sprintf
	add r0, sp, #0x35
_021EE990:
	str r0, [sp]
	add r0, r5, #0x80
	str r0, [sp, #4]
	ldr r1, _021EEC58 ; =0x02218358
	ldr r3, _021EEC5C ; =0x02218368
	add r0, sp, #0x87
	str r5, [sp, #8]
	add r2, r5, #0xa1
	str r2, [sp, #0xc]
	bl sprintf
	add r0, sp, #0x87
	bl strlen
	mov r1, r0
	add r0, sp, #0x87
	add r2, sp, #0x14
	bl ov4_021EA7F4
	ldr r0, [r4, #0x100]
	cmp r0, #0
	beq _021EEA10
	add r3, sp, #0x10
	mov r0, r6
	add r1, r4, #0x110
	add r2, r4, #0x144
	bl ov4_021F338C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021EEA10
	ldr r0, [r0, #4]
	str r0, [r4, #0x19c]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	str r0, [r4, #0x1a0]
_021EEA10:
	ldr r2, _021EEC60 ; =0x0221839C
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, _021EEC64 ; =0x022183A4
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r5, #0x80
	bl ov4_021ED5C4
	ldrsb r0, [r5, #0xc2]
	cmp r0, #0
	beq _021EEA70
	ldr r2, _021EEC68 ; =0x022183B0
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r5, #0xc2
	bl ov4_021ED5C4
	b _021EEAE8
_021EEA70:
	add r0, r4, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	beq _021EEAA8
	ldr r2, _021EEC6C ; =0x022183BC
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	add r2, r4, #0x2f
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r2, #0x100
	bl ov4_021ED5C4
	b _021EEAE8
_021EEAA8:
	ldr r2, _021EEC70 ; =0x022183CC
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r4, #0x110
	bl ov4_021ED5C4
	ldr r2, _021EEC74 ; =0x022183D4
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r4, #0x144
	bl ov4_021ED5C4
_021EEAE8:
	ldr r0, [r4, #0x19c]
	cmp r0, #0
	beq _021EEB14
	ldr r2, _021EEC78 ; =0x022183D8
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r4, #0x19c]
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
_021EEB14:
	ldr r0, [r4, #0x1a0]
	cmp r0, #0
	beq _021EEB40
	ldr r2, _021EEC7C ; =0x022183E4
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r4, #0x1a0]
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
_021EEB40:
	ldr r2, _021EEC80 ; =0x022183F0
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	add r2, sp, #0x14
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r0, [r4, #0x10c]
	cmp r0, #1
	bne _021EEB7C
	ldr r2, _021EEC84 ; =0x022183FC
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
_021EEB7C:
	ldr r2, _021EEC88 ; =0x02218408
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r1, [r4, #0x208]
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r1, lsl #0x10
	add r1, r4, #0x1f4
	mov r2, r2, asr #0x10
	bl ov4_021ED5F4
	ldr r2, _021EEC8C ; =0x02218410
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r4, #0x46c]
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021EEC90 ; =0x0221841C
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021EEC94 ; =0x0221AEEC
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021EEC98 ; =0x02218428
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, [r4, #0x470]
	bl ov4_021ED5F4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021EEC9C ; =0x02218438
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021EECA0 ; =0x02218440
	bl ov4_021ED5C4
	mov r0, #0
	add sp, sp, #0x288
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EEC54: .word 0x02218350
_021EEC58: .word 0x02218358
_021EEC5C: .word 0x02218368
_021EEC60: .word 0x0221839C
_021EEC64: .word 0x022183A4
_021EEC68: .word 0x022183B0
_021EEC6C: .word 0x022183BC
_021EEC70: .word 0x022183CC
_021EEC74: .word 0x022183D4
_021EEC78: .word 0x022183D8
_021EEC7C: .word 0x022183E4
_021EEC80: .word 0x022183F0
_021EEC84: .word 0x022183FC
_021EEC88: .word 0x02218408
_021EEC8C: .word 0x02218410
_021EEC90: .word 0x0221841C
_021EEC94: .word 0x0221AEEC
_021EEC98: .word 0x02218428
_021EEC9C: .word 0x02218438
_021EECA0: .word 0x02218440
	arm_func_end ov4_021EE900

	arm_func_start ov4_021EECA4
ov4_021EECA4: ; 0x021EECA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xe8
	mov sl, r0
	ldr r5, [sl]
	mov sb, r1
	add r0, r5, #0x77
	add r0, r0, #0x100
	bl strlen
	mov r7, r0
	ldr r0, _021EEEFC ; =0x79707367
	bl ov4_021EB018
	cmp r7, #0
	mov r6, #0
	bls _021EED18
	add r8, sp, #0x2d
	mov r4, r6
	mov fp, #0xff
_021EECE8:
	mov r0, r4
	mov r1, fp
	bl ov4_021EB034
	add r1, r5, r6
	add r1, r1, #0x100
	add r6, r6, #1
	ldrsb r1, [r1, #0x77]
	mov r0, r0, lsl #0x18
	cmp r6, r7
	eor r0, r1, r0, asr #24
	strb r0, [r8], #1
	blo _021EECE8
_021EED18:
	add r0, sp, #0x2d
	mov r4, #0
	add r1, sp, #0
	mov r2, r7
	mov r3, #1
	strb r4, [r0, r6]
	bl ov4_021EB0F0
	ldr r2, _021EEF00 ; =0x02218448
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	ldr r2, _021EEF04 ; =0x02218454
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r5, #0x1f4
	add r2, r5, #0x144
	bl ov4_021ED5C4
	ldr r2, _021EEF08 ; =0x0221845C
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r5, #0x1f4
	add r2, r5, #0x110
	bl ov4_021ED5C4
	ldr r2, _021EEF0C ; =0x02218464
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r5, #0x1f4
	add r2, sp, #0
	bl ov4_021ED5C4
	ldr r2, _021EEF10 ; =0x02218410
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r5, #0x46c]
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5F4
	ldr r2, _021EEF14 ; =0x0221841C
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	ldr r2, _021EEF18 ; =0x0221AEEC
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	ldr r2, _021EEF1C ; =0x02218428
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r5, #0x470]
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5F4
	ldr r2, _021EEF20 ; =0x022183BC
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	add r2, r5, #0x2f
	mov r0, sl
	add r1, r5, #0x1f4
	add r2, r2, #0x100
	bl ov4_021ED5C4
	add r0, sb, #0x200
	ldrsb r0, [r0, #0xc2]
	cmp r0, #0
	beq _021EEED0
	add r0, sb, #0xc2
	add r0, r0, #0x200
	bl strlen
	mov r6, r0
	ldr r0, _021EEEFC ; =0x79707367
	bl ov4_021EB018
	cmp r6, #0
	mov r8, r4
	bls _021EEE94
	add r7, sp, #0xa6
	mov fp, #0xff
_021EEE64:
	mov r0, r4
	mov r1, fp
	bl ov4_021EB034
	add r1, sb, r8
	add r1, r1, #0x200
	add r8, r8, #1
	ldrsb r1, [r1, #0xc2]
	mov r0, r0, lsl #0x18
	cmp r8, r6
	eor r0, r1, r0, asr #24
	strb r0, [r7], #1
	blo _021EEE64
_021EEE94:
	add r0, sp, #0xa6
	mov r4, #0
	add r1, sp, #0x4c
	mov r2, r6
	mov r3, #1
	strb r4, [r0, r8]
	bl ov4_021EB0F0
	ldr r2, _021EEF24 ; =0x02218474
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	add r2, sp, #0x4c
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
_021EEED0:
	ldr r2, _021EEF28 ; =0x02218438
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	ldr r2, _021EEF2C ; =0x02218440
	mov r0, sl
	add r1, r5, #0x1f4
	bl ov4_021ED5C4
	mov r0, #0
	add sp, sp, #0xe8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021EEEFC: .word 0x79707367
_021EEF00: .word 0x02218448
_021EEF04: .word 0x02218454
_021EEF08: .word 0x0221845C
_021EEF0C: .word 0x02218464
_021EEF10: .word 0x02218410
_021EEF14: .word 0x0221841C
_021EEF18: .word 0x0221AEEC
_021EEF1C: .word 0x02218428
_021EEF20: .word 0x022183BC
_021EEF24: .word 0x02218474
_021EEF28: .word 0x02218438
_021EEF2C: .word 0x02218440
	arm_func_end ov4_021EECA4

	arm_func_start ov4_021EEF30
ov4_021EEF30: ; 0x021EEF30
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2a0
	mov r6, r2
	mov r8, r0
	mov r7, r1
	mov r1, r6
	mov r2, #0
	ldr r5, [r8]
	bl ov4_021F58A0
	cmp r0, #0
	beq _021EF028
	ldr r2, [r5, #0x418]
	ldr r0, _021EF5A0 ; =0x00000106
	cmp r2, r0
	bne _021EEF90
	ldr r1, [r5, #0x1a0]
	cmp r1, #0
	beq _021EEF90
	mov r0, r8
	bl ov4_021F32E4
	mov r0, #0
	str r0, [r5, #0x19c]
	str r0, [r5, #0x1a0]
	b _021EEFC4
_021EEF90:
	ldr r0, _021EF5A4 ; =0x00000201
	cmp r2, r0
	bne _021EEFC4
	ldr r1, _021EF5A8 ; =0x02218480
	add r2, sp, #0xa0
	mov r0, r6
	mov r3, #0x200
	bl ov4_021F5978
	cmp r0, #0
	beq _021EEFC4
	add r0, sp, #0xa0
	bl atoi
	str r0, [r5, #0x1a0]
_021EEFC4:
	ldr r1, _021EF5AC ; =0x02218488
	mov r0, r6
	bl strstr
	cmp r0, #0
	ldr r1, [r5, #0x418]
	mov r0, r8
	beq _021EF004
	mov r2, r5
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #4
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF004:
	mov r2, r5
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #4
	mov r2, #0
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF028:
	ldr r0, [r7, #0x14]
	ldr r4, [r7, #4]
	cmp r0, #1
	beq _021EF04C
	cmp r0, #2
	beq _021EF234
	cmp r0, #3
	beq _021EF124
	b _021EF594
_021EF04C:
	ldr r1, _021EF5B0 ; =0x02218490
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021EF090
	ldr r2, _021EF5B4 ; =0x02218498
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF090:
	ldr r1, _021EF5B8 ; =0x022183A4
	mov r0, r6
	mov r2, r4
	mov r3, #0x80
	bl ov4_021F5978
	cmp r0, #0
	bne _021EF0D8
	ldr r2, _021EF5B4 ; =0x02218498
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF0D8:
	ldr r0, [r4, #0x304]
	mov r1, r4
	cmp r0, #0
	mov r0, r8
	beq _021EF108
	bl ov4_021EECA4
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #3
	str r0, [r7, #0x14]
	b _021EF594
_021EF108:
	bl ov4_021EE900
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #2
	str r0, [r7, #0x14]
	b _021EF594
_021EF124:
	ldr r1, _021EF5BC ; =0x022184C8
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021EF168
	ldr r2, _021EF5B4 ; =0x02218498
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF168:
	ldr r1, _021EF5C0 ; =0x022183D8
	add r2, sp, #0xa0
	mov r0, r6
	mov r3, #0x200
	bl ov4_021F5978
	cmp r0, #0
	bne _021EF1B0
	ldr r2, _021EF5C4 ; =0x022184D0
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF1B0:
	add r0, sp, #0xa0
	bl atoi
	str r0, [r5, #0x19c]
	ldr r1, _021EF5C8 ; =0x022183E4
	add r2, sp, #0xa0
	mov r0, r6
	mov r3, #0x200
	bl ov4_021F5978
	cmp r0, #0
	bne _021EF204
	ldr r2, _021EF5C4 ; =0x022184D0
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF204:
	add r0, sp, #0xa0
	bl atoi
	str r0, [r5, #0x1a0]
	mov r0, r8
	mov r1, r4
	bl ov4_021EE900
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #2
	str r0, [r7, #0x14]
	b _021EF594
_021EF234:
	ldr r1, _021EF5CC ; =0x02218500
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021EF278
	ldr r2, _021EF5B4 ; =0x02218498
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF278:
	ldr r1, _021EF5D0 ; =0x02218508
	add r2, sp, #0xa0
	mov r0, r6
	mov r3, #0x200
	bl ov4_021F5978
	cmp r0, #0
	bne _021EF2C0
	ldr r2, _021EF5C4 ; =0x022184D0
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF2C0:
	add r0, sp, #0xa0
	bl atoi
	str r0, [r5, #0x198]
	ldr r1, _021EF5C0 ; =0x022183D8
	add r2, sp, #0xa0
	mov r0, r6
	mov r3, #0x200
	bl ov4_021F5978
	cmp r0, #0
	bne _021EF314
	ldr r2, _021EF5C4 ; =0x022184D0
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF314:
	add r0, sp, #0xa0
	bl atoi
	str r0, [r5, #0x19c]
	ldr r1, _021EF5C8 ; =0x022183E4
	add r2, sp, #0xa0
	mov r0, r6
	mov r3, #0x200
	bl ov4_021F5978
	cmp r0, #0
	bne _021EF368
	ldr r2, _021EF5C4 ; =0x022184D0
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF368:
	add r0, sp, #0xa0
	bl atoi
	str r0, [r5, #0x1a0]
	ldr r1, _021EF5D4 ; =0x022183BC
	add r2, sp, #0x18
	mov r0, r6
	mov r3, #0x15
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	add r2, r5, #0x74
	streqb r0, [sp, #0x18]
	ldr r1, _021EF5D8 ; =0x02218514
	mov r0, r6
	add r2, r2, #0x400
	mov r3, #0x19
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r5, #0x474]
	ldrsb r0, [r4, #0xc2]
	cmp r0, #0
	addne r0, r4, #0xc2
	bne _021EF3F8
	add r0, r5, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	addne r0, r5, #0x2f
	addne r0, r0, #0x100
	bne _021EF3F8
	ldr r1, _021EF5DC ; =0x02218350
	add r0, sp, #0x4e
	add r2, r5, #0x110
	add r3, r5, #0x144
	bl sprintf
	add r0, sp, #0x4e
_021EF3F8:
	stmia sp, {r0, r4}
	add r2, r4, #0x80
	str r2, [sp, #8]
	add r2, r4, #0xa1
	ldr r1, _021EF5E0 ; =0x02218358
	ldr r3, _021EF5E4 ; =0x02218368
	add r0, sp, #0xa0
	str r2, [sp, #0xc]
	bl sprintf
	add r0, sp, #0xa0
	bl strlen
	mov r1, r0
	add r0, sp, #0xa0
	add r2, sp, #0x2d
	bl ov4_021EA7F4
	ldr r1, _021EF5E8 ; =0x0221851C
	mov r0, r6
	add r2, sp, #0xa0
	mov r3, #0x200
	bl ov4_021F5978
	cmp r0, #0
	bne _021EF47C
	ldr r2, _021EF5C4 ; =0x022184D0
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF47C:
	add r0, sp, #0x2d
	add r1, sp, #0xa0
	mov r2, #0x20
	bl memcmp
	cmp r0, #0
	beq _021EF4C0
	ldr r2, _021EF5EC ; =0x02218524
	mov r0, r8
	mov r1, #0x108
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF4C0:
	ldr r0, [r5, #0x100]
	cmp r0, #0
	beq _021EF4E8
	ldr r1, [r5, #0x1a0]
	mov r0, r8
	bl ov4_021F31C4
	ldr r1, [r5, #0x1a0]
	str r1, [r0, #0]
	ldr r1, [r5, #0x19c]
	str r1, [r0, #4]
_021EF4E8:
	mov r0, #3
	str r0, [r5, #0x1d8]
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x10]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r1, #0
	beq _021EF588
	mov r0, #0x20
	bl ov4_021D7880
	movs r4, r0
	bne _021EF530
	ldr r1, _021EF5F0 ; =0x02218340
	mov r0, r8
	bl ov4_021F5D68
	add sp, sp, #0x2a0
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EF530:
	mov r1, #0
	mov r2, #0x20
	bl memset
	ldr r0, [r5, #0x1a0]
	mov r3, #0
	str r0, [r4, #4]
	add r1, sp, #0x18
	add r0, r4, #8
	mov r2, #0x15
	str r3, [r4, #0]
	bl ov4_021F5820
	add r1, sp, #0x10
	mov r0, r8
	mov r3, r4
	str r7, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021EF588:
	mov r0, r8
	mov r1, r7
	bl ov4_021F1BA8
_021EF594:
	mov r0, #0
	add sp, sp, #0x2a0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021EF5A0: .word 0x00000106
_021EF5A4: .word 0x00000201
_021EF5A8: .word 0x02218480
_021EF5AC: .word 0x02218488
_021EF5B0: .word 0x02218490
_021EF5B4: .word 0x02218498
_021EF5B8: .word 0x022183A4
_021EF5BC: .word 0x022184C8
_021EF5C0: .word 0x022183D8
_021EF5C4: .word 0x022184D0
_021EF5C8: .word 0x022183E4
_021EF5CC: .word 0x02218500
_021EF5D0: .word 0x02218508
_021EF5D4: .word 0x022183BC
_021EF5D8: .word 0x02218514
_021EF5DC: .word 0x02218350
_021EF5E0: .word 0x02218358
_021EF5E4: .word 0x02218368
_021EF5E8: .word 0x0221851C
_021EF5EC: .word 0x02218524
_021EF5F0: .word 0x02218340
	arm_func_end ov4_021EEF30

	arm_func_start ov4_021EF5F4
ov4_021EF5F4: ; 0x021EF5F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0]
	add r2, sp, #0
	ldr r1, [r4, #0x1d4]
	bl ov4_021F5A80
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	cmp r0, #4
	bne _021EF648
	ldr r1, _021EF680 ; =0x00000107
	ldr r2, _021EF684 ; =0x02218544
	mov r0, r5
	bl ov4_021F5D44
	mov r0, r5
	mov r1, #4
	mov r2, #1
	bl ov4_021EDE68
	mov r0, #4
	ldmia sp!, {r3, r4, r5, pc}
_021EF648:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #3
	beq _021EF670
	ldr r0, _021EF688 ; =0x0221856C
	ldr r1, _021EF68C ; =0x022182E0
	ldr r2, _021EF690 ; =0x0221811C
	ldr r3, _021EF694 ; =0x000002EF
	bl __msl_assertion_failed
_021EF670:
	mov r0, #2
	str r0, [r4, #0x1d8]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021EF680: .word 0x00000107
_021EF684: .word 0x02218544
_021EF688: .word 0x0221856C
_021EF68C: .word 0x022182E0
_021EF690: .word 0x0221811C
_021EF694: .word 0x000002EF
	arm_func_end ov4_021EF5F4

	arm_func_start ov4_021EF698
ov4_021EF698: ; 0x021EF698
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #8]
	mov r6, r0
	cmp r1, #0
	ldr r4, [r6, #0]
	beq _021EF6FC
	ldr r0, [r4, #0x104]
	cmp r0, #0
	bne _021EF6FC
	ldr r0, [r1, #8]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0xc]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r5, #8]
_021EF6FC:
	ldr r0, [r5, #0x10]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021EF740
	ldr r0, [r4, #0x104]
	cmp r0, #1
	ldreq r0, [r5, #8]
	cmpeq r0, #0
	bne _021EF754
_021EF740:
	mov r0, r6
	mov r1, r5
	bl ov4_021F3318
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021EF754:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021EF698

	arm_func_start ov4_021EF75C
ov4_021EF75C: ; 0x021EF75C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r4, [r5, #0]
	ldr r2, [r4, #0x1d8]
	cmp r2, #4
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	cmp r2, #0
	beq _021EF848
	cmp r1, #0
	beq _021EF7C0
	cmp r2, #3
	bne _021EF7C0
	ldr r2, _021EF914 ; =0x02218584
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r4, #0x198]
	mov r0, r5
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	ldr r2, _021EF918 ; =0x02218440
	mov r0, r5
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
_021EF7C0:
	mov r1, #1
	ldr r0, _021EF91C ; =0x02218598
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1d4]
	add r3, sp, #8
	mov r0, r5
	add r2, r4, #0x1f4
	bl ov4_021EDB54
	ldr r0, [r4, #0x1d4]
	mvn r1, #0
	cmp r0, r1
	beq _021EF80C
	mov r1, #2
	bl ov4_021EAD04
	ldr r0, [r4, #0x1d4]
	bl ov4_021EACF0
	mvn r0, #0
	str r0, [r4, #0x1d4]
_021EF80C:
	ldr r0, [r4, #0x204]
	mvn r1, #0
	cmp r0, r1
	beq _021EF834
	mov r1, #2
	bl ov4_021EAD04
	ldr r0, [r4, #0x204]
	bl ov4_021EACF0
	mvn r0, #0
	str r0, [r4, #0x204]
_021EF834:
	mov r0, #4
	str r0, [r4, #0x1d8]
	mov r0, #0
	str r0, [r4, #0x19c]
	str r0, [r4, #0x1a0]
_021EF848:
	ldr r0, [r4, #0x1dc]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x1dc]
	ldr r0, [r4, #0x1ec]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x1ec]
	ldr r0, [r4, #0x1f4]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x1f4]
	ldr r0, [r4, #0x440]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x440]
	ldr r0, [r4, #0x450]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x450]
	ldr r1, [r4, #0x424]
	cmp r1, #0
	beq _021EF8B8
_021EF8A4:
	mov r0, r5
	bl ov4_021F1BA8
	ldr r1, [r4, #0x424]
	cmp r1, #0
	bne _021EF8A4
_021EF8B8:
	mov r0, #0
	str r0, [r4, #0x424]
	ldr r6, [r4, #0x434]
	cmp r6, #0
	beq _021EF8E4
_021EF8CC:
	mov r1, r6
	ldr r6, [r6, #0x3c]
	mov r0, r5
	bl ov4_021F26CC
	cmp r6, #0
	bne _021EF8CC
_021EF8E4:
	mov r0, #0
	str r0, [r4, #0x434]
	ldr r6, _021EF920 ; =ov4_021EF698
	mov r4, r0
_021EF8F4:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl ov4_021F33F4
	cmp r0, #0
	beq _021EF8F4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021EF914: .word 0x02218584
_021EF918: .word 0x02218440
_021EF91C: .word 0x02218598
_021EF920: .word ov4_021EF698
	arm_func_end ov4_021EF75C

	.data


	.global Unk_ov4_0221810C
Unk_ov4_0221810C: ; 0x0221810C
	.incbin "incbin/overlay4_data.bin", 0x228C, 0x229C - 0x228C

	.global Unk_ov4_0221811C
Unk_ov4_0221811C: ; 0x0221811C
	.incbin "incbin/overlay4_data.bin", 0x229C, 0x22AC - 0x229C

	.global Unk_ov4_0221812C
Unk_ov4_0221812C: ; 0x0221812C
	.incbin "incbin/overlay4_data.bin", 0x22AC, 0x22EC - 0x22AC

	.global Unk_ov4_0221816C
Unk_ov4_0221816C: ; 0x0221816C
	.incbin "incbin/overlay4_data.bin", 0x22EC, 0x232C - 0x22EC

	.global Unk_ov4_022181AC
Unk_ov4_022181AC: ; 0x022181AC
	.incbin "incbin/overlay4_data.bin", 0x232C, 0x2354 - 0x232C

	.global Unk_ov4_022181D4
Unk_ov4_022181D4: ; 0x022181D4
	.incbin "incbin/overlay4_data.bin", 0x2354, 0x2388 - 0x2354

	.global Unk_ov4_02218208
Unk_ov4_02218208: ; 0x02218208
	.incbin "incbin/overlay4_data.bin", 0x2388, 0x23B0 - 0x2388

	.global Unk_ov4_02218230
Unk_ov4_02218230: ; 0x02218230
	.incbin "incbin/overlay4_data.bin", 0x23B0, 0x23DC - 0x23B0

	.global Unk_ov4_0221825C
Unk_ov4_0221825C: ; 0x0221825C
	.incbin "incbin/overlay4_data.bin", 0x23DC, 0x240C - 0x23DC

	.global Unk_ov4_0221828C
Unk_ov4_0221828C: ; 0x0221828C
	.incbin "incbin/overlay4_data.bin", 0x240C, 0x2440 - 0x240C

	.global Unk_ov4_022182C0
Unk_ov4_022182C0: ; 0x022182C0
	.incbin "incbin/overlay4_data.bin", 0x2440, 0x2460 - 0x2440

	.global Unk_ov4_022182E0
Unk_ov4_022182E0: ; 0x022182E0
	.incbin "incbin/overlay4_data.bin", 0x2460, 0x2470 - 0x2460

	.global Unk_ov4_022182F0
Unk_ov4_022182F0: ; 0x022182F0
	.incbin "incbin/overlay4_data.bin", 0x2470, 0x2498 - 0x2470

	.global Unk_ov4_02218318
Unk_ov4_02218318: ; 0x02218318
	.incbin "incbin/overlay4_data.bin", 0x2498, 0x24AC - 0x2498

	.global Unk_ov4_0221832C
Unk_ov4_0221832C: ; 0x0221832C
	.incbin "incbin/overlay4_data.bin", 0x24AC, 0x24C0 - 0x24AC

	.global Unk_ov4_02218340
Unk_ov4_02218340: ; 0x02218340
	.incbin "incbin/overlay4_data.bin", 0x24C0, 0x24D0 - 0x24C0

	.global Unk_ov4_02218350
Unk_ov4_02218350: ; 0x02218350
	.incbin "incbin/overlay4_data.bin", 0x24D0, 0x24D8 - 0x24D0

	.global Unk_ov4_02218358
Unk_ov4_02218358: ; 0x02218358
	.incbin "incbin/overlay4_data.bin", 0x24D8, 0x24E8 - 0x24D8

	.global Unk_ov4_02218368
Unk_ov4_02218368: ; 0x02218368
	.incbin "incbin/overlay4_data.bin", 0x24E8, 0x251C - 0x24E8

	.global Unk_ov4_0221839C
Unk_ov4_0221839C: ; 0x0221839C
	.incbin "incbin/overlay4_data.bin", 0x251C, 0x2524 - 0x251C

	.global Unk_ov4_022183A4
Unk_ov4_022183A4: ; 0x022183A4
	.incbin "incbin/overlay4_data.bin", 0x2524, 0x2530 - 0x2524

	.global Unk_ov4_022183B0
Unk_ov4_022183B0: ; 0x022183B0
	.incbin "incbin/overlay4_data.bin", 0x2530, 0x253C - 0x2530

	.global Unk_ov4_022183BC
Unk_ov4_022183BC: ; 0x022183BC
	.incbin "incbin/overlay4_data.bin", 0x253C, 0x254C - 0x253C

	.global Unk_ov4_022183CC
Unk_ov4_022183CC: ; 0x022183CC
	.incbin "incbin/overlay4_data.bin", 0x254C, 0x2554 - 0x254C

	.global Unk_ov4_022183D4
Unk_ov4_022183D4: ; 0x022183D4
	.incbin "incbin/overlay4_data.bin", 0x2554, 0x2558 - 0x2554

	.global Unk_ov4_022183D8
Unk_ov4_022183D8: ; 0x022183D8
	.incbin "incbin/overlay4_data.bin", 0x2558, 0x2564 - 0x2558

	.global Unk_ov4_022183E4
Unk_ov4_022183E4: ; 0x022183E4
	.incbin "incbin/overlay4_data.bin", 0x2564, 0x2570 - 0x2564

	.global Unk_ov4_022183F0
Unk_ov4_022183F0: ; 0x022183F0
	.incbin "incbin/overlay4_data.bin", 0x2570, 0x257C - 0x2570

	.global Unk_ov4_022183FC
Unk_ov4_022183FC: ; 0x022183FC
	.incbin "incbin/overlay4_data.bin", 0x257C, 0x2588 - 0x257C

	.global Unk_ov4_02218408
Unk_ov4_02218408: ; 0x02218408
	.incbin "incbin/overlay4_data.bin", 0x2588, 0x2590 - 0x2588

	.global Unk_ov4_02218410
Unk_ov4_02218410: ; 0x02218410
	.incbin "incbin/overlay4_data.bin", 0x2590, 0x259C - 0x2590

	.global Unk_ov4_0221841C
Unk_ov4_0221841C: ; 0x0221841C
	.incbin "incbin/overlay4_data.bin", 0x259C, 0x25A8 - 0x259C

	.global Unk_ov4_02218428
Unk_ov4_02218428: ; 0x02218428
	.incbin "incbin/overlay4_data.bin", 0x25A8, 0x25B8 - 0x25A8

	.global Unk_ov4_02218438
Unk_ov4_02218438: ; 0x02218438
	.incbin "incbin/overlay4_data.bin", 0x25B8, 0x25C0 - 0x25B8

	.global Unk_ov4_02218440
Unk_ov4_02218440: ; 0x02218440
	.incbin "incbin/overlay4_data.bin", 0x25C0, 0x25C8 - 0x25C0

	.global Unk_ov4_02218448
Unk_ov4_02218448: ; 0x02218448
	.incbin "incbin/overlay4_data.bin", 0x25C8, 0x25D4 - 0x25C8

	.global Unk_ov4_02218454
Unk_ov4_02218454: ; 0x02218454
	.incbin "incbin/overlay4_data.bin", 0x25D4, 0x25DC - 0x25D4

	.global Unk_ov4_0221845C
Unk_ov4_0221845C: ; 0x0221845C
	.incbin "incbin/overlay4_data.bin", 0x25DC, 0x25E4 - 0x25DC

	.global Unk_ov4_02218464
Unk_ov4_02218464: ; 0x02218464
	.incbin "incbin/overlay4_data.bin", 0x25E4, 0x25F4 - 0x25E4

	.global Unk_ov4_02218474
Unk_ov4_02218474: ; 0x02218474
	.incbin "incbin/overlay4_data.bin", 0x25F4, 0x2600 - 0x25F4

	.global Unk_ov4_02218480
Unk_ov4_02218480: ; 0x02218480
	.incbin "incbin/overlay4_data.bin", 0x2600, 0x2608 - 0x2600

	.global Unk_ov4_02218488
Unk_ov4_02218488: ; 0x02218488
	.incbin "incbin/overlay4_data.bin", 0x2608, 0x2610 - 0x2608

	.global Unk_ov4_02218490
Unk_ov4_02218490: ; 0x02218490
	.incbin "incbin/overlay4_data.bin", 0x2610, 0x2618 - 0x2610

	.global Unk_ov4_02218498
Unk_ov4_02218498: ; 0x02218498
	.incbin "incbin/overlay4_data.bin", 0x2618, 0x2648 - 0x2618

	.global Unk_ov4_022184C8
Unk_ov4_022184C8: ; 0x022184C8
	.incbin "incbin/overlay4_data.bin", 0x2648, 0x2650 - 0x2648

	.global Unk_ov4_022184D0
Unk_ov4_022184D0: ; 0x022184D0
	.incbin "incbin/overlay4_data.bin", 0x2650, 0x2680 - 0x2650

	.global Unk_ov4_02218500
Unk_ov4_02218500: ; 0x02218500
	.incbin "incbin/overlay4_data.bin", 0x2680, 0x2688 - 0x2680

	.global Unk_ov4_02218508
Unk_ov4_02218508: ; 0x02218508
	.incbin "incbin/overlay4_data.bin", 0x2688, 0x2694 - 0x2688

	.global Unk_ov4_02218514
Unk_ov4_02218514: ; 0x02218514
	.incbin "incbin/overlay4_data.bin", 0x2694, 0x269C - 0x2694

	.global Unk_ov4_0221851C
Unk_ov4_0221851C: ; 0x0221851C
	.incbin "incbin/overlay4_data.bin", 0x269C, 0x26A4 - 0x269C

	.global Unk_ov4_02218524
Unk_ov4_02218524: ; 0x02218524
	.incbin "incbin/overlay4_data.bin", 0x26A4, 0x26C4 - 0x26A4

	.global Unk_ov4_02218544
Unk_ov4_02218544: ; 0x02218544
	.incbin "incbin/overlay4_data.bin", 0x26C4, 0x26EC - 0x26C4

	.global Unk_ov4_0221856C
Unk_ov4_0221856C: ; 0x0221856C
	.incbin "incbin/overlay4_data.bin", 0x26EC, 0x2704 - 0x26EC

	.global Unk_ov4_02218584
Unk_ov4_02218584: ; 0x02218584
	.incbin "incbin/overlay4_data.bin", 0x2704, 0x2718 - 0x2704

	.global Unk_ov4_02218598
Unk_ov4_02218598: ; 0x02218598
	.incbin "incbin/overlay4_data.bin", 0x2718, 0x3

