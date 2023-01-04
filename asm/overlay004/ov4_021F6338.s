	.include "macros/function.inc"
	.include "overlay004/ov4_021F6338.inc"

	

	.text


	arm_func_start ov4_021F6338
ov4_021F6338: ; 0x021F6338
	stmfd sp!, {r3, lr}
	ldr r0, _021F63A0 ; =0x02219358
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _021F6364
	mov r1, #2
	bl ov4_021EAD04
	ldr r0, _021F63A0 ; =0x02219358
	ldr r0, [r0, #0]
	bl ov4_021EACF0
_021F6364:
	ldr r0, _021F63A0 ; =0x02219358
	mvn r1, #0
	str r1, [r0, #0]
	bl ov4_021F6C70
	ldr r0, _021F63A4 ; =0x0221AF80
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021D78B0
	ldr r0, _021F63A4 ; =0x0221AF80
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x2c]
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F63A0: .word 0x02219358
_021F63A4: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F6338

	arm_func_start ov4_021F63A8
ov4_021F63A8: ; 0x021F63A8
	ldr r1, _021F63C4 ; =0x02219358
	mvn r0, #0
	ldr r1, [r1, #0]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_021F63C4: .word 0x02219358
	arm_func_end ov4_021F63A8

	arm_func_start ov4_021F63C8
ov4_021F63C8: ; 0x021F63C8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _021F6510 ; =0x02219358
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _021F6514 ; =0x0221AF80
	ldr r1, [r1, #0x10]
	cmp r1, #5
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl ov4_021F664C
	cmp r0, #0
	beq _021F64F4
	mov r7, #0
	ldr sl, _021F6514 ; =0x0221AF80
	ldr sb, _021F6510 ; =0x02219358
	mov r8, #0x100
	mov r6, r7
	mov r4, r7
_021F641C:
	ldr r1, [sl, #0x2c]
	ldr r0, [sl]
	sub r0, r1, r0
	cmp r0, #0x80
	bge _021F6460
	cmp r1, #0x100
	strlt r8, [sl, #0x2c]
	movge r0, r1, lsl #1
	strge r0, [sl, #0x2c]
	ldr r1, [sl, #0x2c]
	ldr r0, [sl, #0xc]
	add r1, r1, #1
	bl ov4_021D7894
	str r0, [sl, #0xc]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F6460:
	ldr r5, [sl]
	ldr r1, [sl, #0xc]
	ldr r2, [sl, #0x2c]
	ldr r0, [sb]
	mov r3, r7
	add r1, r1, r5
	sub r2, r2, r5
	bl ov4_021EAE04
	cmp r0, #0
	bgt _021F6494
	bl ov4_021F6338
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F6494:
	ldr r1, [sl]
	add r1, r1, r0
	str r1, [sl]
	ldr r0, [sl, #0xc]
	strb r6, [r0, r1]
	ldr r0, [sl, #0xc]
	ldr r1, [sl]
	bl ov4_021F6AE4
	ldr r1, [sl]
	mov r5, r0
	cmp r5, r1
	streq r4, [sl]
	beq _021F64E4
	ldr r0, [sl, #0xc]
	sub r2, r1, r5
	add r1, r0, r5
	bl memmove
	ldr r0, [sl]
	sub r0, r0, r5
	str r0, [sl]
_021F64E4:
	ldr r0, [sb]
	bl ov4_021F664C
	cmp r0, #0
	bne _021F641C
_021F64F4:
	ldr r1, _021F6510 ; =0x02219358
	mvn r0, #0
	ldr r1, [r1, #0]
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021F6510: .word 0x02219358
_021F6514: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F63C8

	arm_func_start ov4_021F6518
ov4_021F6518: ; 0x021F6518
	stmfd sp!, {r4, lr}
	ldr r2, _021F655C ; =0x02219358
	cmp r1, #0
	ldr r4, [r2, #8]
	mov lr, #0
	ldmleia sp!, {r4, pc}
_021F6530:
	ldrsb ip, [r0, lr]
	ldrsb r3, [r4]
	eor r3, ip, r3
	strb r3, [r0, lr]
	ldrsb r3, [r4, #1]!
	add lr, lr, #1
	cmp r3, #0
	ldreq r4, [r2, #8]
	cmp lr, r1
	blt _021F6530
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F655C: .word 0x02219358
	arm_func_end ov4_021F6518

	arm_func_start ov4_021F6560
ov4_021F6560: ; 0x021F6560
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x100
	ldr lr, _021F6624 ; =0x02215B27
	add ip, sp, #0
	mov r4, r0
	mov r3, #0x80
_021F6578:
	ldrb r2, [lr]
	ldrb r0, [lr, #1]
	add lr, lr, #2
	strb r2, [ip]
	strb r0, [ip, #1]
	add ip, ip, #2
	subs r3, r3, #1
	bne _021F6578
	ldr r2, _021F6628 ; =0x0221AF80
	add r0, sp, #0
	ldr r3, [r2, #0x24]
	eor r3, r3, #1
	str r3, [r2, #0x24]
	bl strcat
	ldr r1, _021F662C ; =0x022193C8
	add r0, sp, #0
	bl strcat
	add r1, sp, #0
	mov r0, r4
	bl strstr
	movs r4, r0
	addeq sp, sp, #0x100
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, sp, #0
	bl strlen
	ldr r1, _021F6628 ; =0x0221AF80
	ldr r2, _021F6630 ; =0x0221AFB0
	ldr r1, [r1, #0x24]
	add r3, r4, r0
	add r0, r2, r1, lsl #8
	mov r2, r0
	b _021F6604
_021F65FC:
	ldrsb r1, [r3], #1
	strb r1, [r2], #1
_021F6604:
	ldrsb r1, [r3]
	cmp r1, #0
	cmpne r1, #0x5c
	bne _021F65FC
	mov r1, #0
	strb r1, [r2]
	add sp, sp, #0x100
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F6624: .word 0x02215B27
_021F6628: .word Unk_ov4_0221AF80
_021F662C: .word 0x022193C8
_021F6630: .word Unk_ov4_0221AFB0
	arm_func_end ov4_021F6560

	arm_func_start ov4_021F6634
ov4_021F6634: ; 0x021F6634
	stmfd sp!, {r3, lr}
	bl ov4_021F6560
	cmp r0, #0
	ldreq r0, _021F6648 ; =0x022193C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F6648: .word 0x022193C4
	arm_func_end ov4_021F6634

	arm_func_start ov4_021F664C
ov4_021F664C: ; 0x021F664C
	ldr ip, _021F6654 ; =ov4_021EAB6C
	bx ip
	; .align 2, 0
_021F6654: .word ov4_021EAB6C
	arm_func_end ov4_021F664C

	arm_func_start ov4_021F6658
ov4_021F6658: ; 0x021F6658
	sub r3, r1, #6
	mov r2, r0
	cmp r3, #0
	ble _021F66B8
_021F6668:
	ldrsb r1, [r2]
	cmp r1, #0x5c
	ldreqsb r1, [r2, #1]
	cmpeq r1, #0x66
	ldreqsb r1, [r2, #2]
	cmpeq r1, #0x69
	ldreqsb r1, [r2, #3]
	cmpeq r1, #0x6e
	ldreqsb r1, [r2, #4]
	cmpeq r1, #0x61
	ldreqsb r1, [r2, #5]
	cmpeq r1, #0x6c
	ldreqsb r1, [r2, #6]
	cmpeq r1, #0x5c
	moveq r0, r2
	bxeq lr
	add r2, r2, #1
	sub r1, r2, r0
	cmp r1, r3
	blt _021F6668
_021F66B8:
	mov r0, #0
	bx lr
	arm_func_end ov4_021F6658

	arm_func_start ov4_021F66C0
ov4_021F66C0: ; 0x021F66C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _021F6740 ; =0x0221AF80
	mov r7, r0
	ldr r0, [r3, #4]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
	bl ov4_021E9BBC
	cmp r0, #0
	ble _021F6738
	ldr r8, _021F6740 ; =0x0221AF80
_021F66F8:
	ldr r0, [r8, #4]
	mov r1, r4
	bl ov4_021E9BC4
	ldr r1, [r0, #0]
	cmp r1, r7
	ldreq r1, [r0, #4]
	cmpeq r1, r6
	ldreq r0, [r0, #8]
	cmpeq r0, r5
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #4]
	add r4, r4, #1
	bl ov4_021E9BBC
	cmp r4, r0
	blt _021F66F8
_021F6738:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F6740: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F66C0

	arm_func_start ov4_021F6744
ov4_021F6744: ; 0x021F6744
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _021F67E4 ; =0x022193CC
	mov r6, r0
	bl ov4_021F6634
	bl atoi
	mov r5, r0
	ldr r1, _021F67E8 ; =0x022193D4
	mov r0, r6
	bl ov4_021F6634
	bl atoi
	mov r4, r0
	ldr r1, _021F67EC ; =0x022193D8
	mov r0, r6
	bl ov4_021F6634
	mov r6, r0
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021F66C0
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _021F67F0 ; =0x0221AF80
	mov r1, r4
	ldr r0, [r0, #4]
	bl ov4_021E9BC4
	cmp r5, #0
	movgt r1, #1
	str r5, [r0, #8]
	mov r2, #0
	movle r1, #0
	mov r0, r4
	mov r3, r6
	str r2, [sp]
	bl ov4_021F6B6C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021F67E4: .word 0x022193CC
_021F67E8: .word 0x022193D4
_021F67EC: .word 0x022193D8
_021F67F0: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F6744

	arm_func_start ov4_021F67F4
ov4_021F67F4: ; 0x021F67F4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021F6874 ; =0x022193E0
	mov r5, r0
	bl ov4_021F6634
	bl atoi
	mov r4, r0
	ldr r1, _021F6878 ; =0x022193D4
	mov r0, r5
	bl ov4_021F6634
	bl atoi
	mov r1, r0
	mov r0, #3
	mov r2, #0
	bl ov4_021F66C0
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _021F687C ; =0x0221AF80
	mov r1, r5
	ldr r0, [r0, #4]
	bl ov4_021E9BC4
	cmp r4, #0
	movgt r1, #1
	mov r2, #0
	str r4, [r0, #8]
	movle r1, #0
	mov r0, r5
	mov r3, r2
	str r2, [sp]
	bl ov4_021F6B6C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F6874: .word 0x022193E0
_021F6878: .word 0x022193D4
_021F687C: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F67F4

	arm_func_start ov4_021F6880
ov4_021F6880: ; 0x021F6880
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r1, _021F6948 ; =0x022193E8
	mov r4, r0
	bl ov4_021F6634
	bl atoi
	mov r7, r0
	ldr r1, _021F694C ; =0x022193D4
	mov r0, r4
	bl ov4_021F6634
	bl atoi
	mov r6, r0
	ldr r1, _021F6950 ; =0x022193F0
	mov r0, r4
	bl ov4_021F6634
	bl atoi
	mov r5, r0
	ldr r1, _021F6954 ; =0x022193F4
	mov r0, r4
	bl ov4_021F6634
	bl atoi
	mov r8, r0
	mov r1, r6
	mov r2, r5
	mov r0, #1
	bl ov4_021F66C0
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, _021F6958 ; =0x022193F8
	mov r0, r4
	bl ov4_021F6634
	bl atoi
	mov r6, r0
	ldr r1, _021F695C ; =0x02219400
	mov r0, r4
	bl strstr
	cmp r0, #0
	ldreq r3, _021F6960 ; =0x022193C4
	moveq r6, #0
	addne r3, r0, #6
	mov r0, r5
	mov r1, r7
	mov r2, r8
	str r6, [sp]
	bl ov4_021F6B6C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F6948: .word 0x022193E8
_021F694C: .word 0x022193D4
_021F6950: .word 0x022193F0
_021F6954: .word 0x022193F4
_021F6958: .word 0x022193F8
_021F695C: .word 0x02219400
_021F6960: .word 0x022193C4
	arm_func_end ov4_021F6880

	arm_func_start ov4_021F6964
ov4_021F6964: ; 0x021F6964
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _021F69EC ; =0x02219408
	mov r7, r0
	bl ov4_021F6634
	bl atoi
	mov r6, r0
	ldr r1, _021F69F0 ; =0x022193F0
	mov r0, r7
	bl ov4_021F6634
	bl atoi
	mov r5, r0
	ldr r1, _021F69F4 ; =0x022193D4
	mov r0, r7
	bl ov4_021F6634
	bl atoi
	mov r4, r0
	ldr r1, _021F69F8 ; =0x022193F4
	mov r0, r7
	bl ov4_021F6634
	bl atoi
	mov r1, r4
	mov r4, r0
	mov r2, r5
	mov r0, #2
	bl ov4_021F66C0
	mvn r1, #0
	cmp r0, r1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r3, #0
	mov r1, r6
	mov r2, r4
	str r3, [sp]
	bl ov4_021F6B6C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F69EC: .word 0x02219408
_021F69F0: .word 0x022193F0
_021F69F4: .word 0x022193D4
_021F69F8: .word 0x022193F4
	arm_func_end ov4_021F6964

	arm_func_start ov4_021F69FC
ov4_021F69FC: ; 0x021F69FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, _021F6AD4 ; =0x02219410
	mov r5, r0
	mov r3, #0
	mov r2, #8
	strb r3, [r5, r4]
	bl strncmp
	cmp r0, #0
	bne _021F6A34
	mov r0, r5
	mov r1, r4
	bl ov4_021F6744
	ldmia sp!, {r3, r4, r5, pc}
_021F6A34:
	ldr r1, _021F6AD8 ; =0x0221941C
	mov r0, r5
	mov r2, #9
	bl strncmp
	cmp r0, #0
	bne _021F6A5C
	mov r0, r5
	mov r1, r4
	bl ov4_021F67F4
	ldmia sp!, {r3, r4, r5, pc}
_021F6A5C:
	ldr r1, _021F6AD8 ; =0x0221941C
	mov r0, r5
	mov r2, #9
	bl strncmp
	cmp r0, #0
	bne _021F6A84
	mov r0, r5
	mov r1, r4
	bl ov4_021F67F4
	ldmia sp!, {r3, r4, r5, pc}
_021F6A84:
	ldr r1, _021F6ADC ; =0x02219428
	mov r0, r5
	mov r2, #8
	bl strncmp
	cmp r0, #0
	bne _021F6AAC
	mov r0, r5
	mov r1, r4
	bl ov4_021F6880
	ldmia sp!, {r3, r4, r5, pc}
_021F6AAC:
	ldr r1, _021F6AE0 ; =0x02219434
	mov r0, r5
	mov r2, #8
	bl strncmp
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov4_021F6964
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F6AD4: .word 0x02219410
_021F6AD8: .word 0x0221941C
_021F6ADC: .word 0x02219428
_021F6AE0: .word 0x02219434
	arm_func_end ov4_021F69FC

	arm_func_start ov4_021F6AE4
ov4_021F6AE4: ; 0x021F6AE4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r1
	mov sl, r0
	mov r7, sb
	bl ov4_021F6658
	mov r6, r0
	ldr r5, _021F6B64 ; =0x022193A4
	ldr r4, _021F6B68 ; =0x02219358
	b _021F6B4C
_021F6B08:
	sub r8, r6, sl
	mov r0, sl
	mov r1, r8
	str r5, [r4, #8]
	bl ov4_021F6518
	mov r0, sl
	mov r1, r8
	bl ov4_021F69FC
	add r0, r8, #7
	sub sb, sb, r0
	cmp sb, #0
	add sl, r6, #7
	ble _021F6B4C
	mov r0, sl
	mov r1, sb
	bl ov4_021F6658
	mov r6, r0
_021F6B4C:
	cmp sb, #0
	ble _021F6B5C
	cmp r6, #0
	bne _021F6B08
_021F6B5C:
	sub r0, r7, sb
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021F6B64: .word 0x022193A4
_021F6B68: .word 0x02219358
	arm_func_end ov4_021F6AE4

	arm_func_start ov4_021F6B6C
ov4_021F6B6C: ; 0x021F6B6C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	addmi sp, sp, #0x14
	ldmmiia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021F6C6C ; =0x0221AF80
	ldr r0, [r0, #4]
	bl ov4_021E9BBC
	cmp r7, r0
	addge sp, sp, #0x14
	ldmgeia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021F6C6C ; =0x0221AF80
	mov r1, r7
	ldr r0, [r0, #4]
	bl ov4_021E9BC4
	mov r3, r0
	ldr ip, [r3, #0x18]
	cmp ip, #0
	beq _021F6C54
	ldr r0, [r3, #0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021F6C54
_021F6BD4: ; jump table
	b _021F6BE4 ; case 0
	b _021F6C00 ; case 1
	b _021F6C28 ; case 2
	b _021F6C44 ; case 3
_021F6BE4:
	ldr r0, [r3, #0x14]
	mov r2, r6
	str r0, [sp]
	ldmib r3, {r0, r1}
	mov r3, r4
	blx ip
	b _021F6C54
_021F6C00:
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x28]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x14]
	str r0, [sp, #0x10]
	ldmib r3, {r0, r1, r2, r3}
	blx ip
	b _021F6C54
_021F6C28:
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [r3, #0x14]
	str r0, [sp, #8]
	ldmib r3, {r0, r1, r2, r3}
	blx ip
	b _021F6C54
_021F6C44:
	ldmib r3, {r0, r1}
	ldr r3, [r3, #0x14]
	mov r2, r6
	blx ip
_021F6C54:
	ldr r0, _021F6C6C ; =0x0221AF80
	mov r1, r7
	ldr r0, [r0, #4]
	bl ov4_021E9E40
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F6C6C: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F6B6C

	arm_func_start ov4_021F6C70
ov4_021F6C70: ; 0x021F6C70
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	ldr r0, _021F6D54 ; =0x0221AF80
	ldr r0, [r0, #4]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	bl ov4_021E9BBC
	subs r4, r0, #1
	bmi _021F6D34
	ldr r5, _021F6D58 ; =0x022159A4
	add r3, sp, #4
	mov r2, #8
_021F6CA4:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _021F6CA4
	ldr sb, _021F6D5C ; =0x022193B4
	ldr r5, _021F6D60 ; =0x02219358
	add r8, sp, #0x14
	mov r7, #0xf
	mov r6, #0
_021F6CD8:
	add ip, sp, #4
	add r3, sp, #0x14
	mov r2, #8
_021F6CE4:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _021F6CE4
	mov r0, r8
	mov r1, r7
	str sb, [r5, #8]
	bl ov4_021F6518
	mov r0, r4
	mov r1, r6
	mov r2, r6
	mov r3, r8
	str r6, [sp]
	bl ov4_021F6B6C
	subs r4, r4, #1
	bpl _021F6CD8
_021F6D34:
	ldr r0, _021F6D54 ; =0x0221AF80
	ldr r0, [r0, #4]
	bl ov4_021E9B50
	ldr r0, _021F6D54 ; =0x0221AF80
	mov r1, #0
	str r1, [r0, #4]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021F6D54: .word Unk_ov4_0221AF80
_021F6D58: .word 0x022159A4
_021F6D5C: .word 0x022193B4
_021F6D60: .word 0x02219358
	arm_func_end ov4_021F6C70

	arm_func_start ov4_021F6D64
ov4_021F6D64: ; 0x021F6D64
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldreq r0, _021F6D90 ; =0x0221AF80
	ldreq r0, [r0, #0x28]
	cmp r0, #0
	moveq r0, r1
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x20]
	bl ov4_021E9BC4
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F6D90: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F6D64

	arm_func_start ov4_021F6D94
ov4_021F6D94: ; 0x021F6D94
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldreq r0, _021F6DC0 ; =0x0221AF80
	ldreq r0, [r0, #0x28]
	cmp r0, #0
	moveq r0, r1
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x1c]
	bl ov4_021E9BC4
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F6DC0: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F6D94

	arm_func_start ov4_021F6DC4
ov4_021F6DC4: ; 0x021F6DC4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	ldreq r0, _021F6E28 ; =0x0221AF80
	mov r4, r1
	ldreq r5, [r0, #0x28]
	mov r3, r2
	cmp r5, #0
	addeq r0, sp, #0x1c
	beq _021F6E18
	ldr r0, [r5, #0xc]
	add r2, sp, #0x1c
	mov r1, r4
	blx r3
	cmp r0, #0
	bne _021F6E18
	ldr r0, [r5, #0xc]
	add r3, sp, #0x1c
	mov r1, r4
	mov r2, #0
	bl ov4_021F5D7C
_021F6E18:
	ldr r0, [r0, #0]
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_021F6E28: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F6DC4

	arm_func_start ov4_021F6E2C
ov4_021F6E2C: ; 0x021F6E2C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	ldreq r0, _021F6E98 ; =0x0221AF80
	mov r4, r1
	ldreq r5, [r0, #0x28]
	mov r3, r2
	cmp r5, #0
	addeq r0, sp, #0x1c
	beq _021F6E80
	ldr r0, [r5, #0xc]
	add r2, sp, #0x1c
	mov r1, r4
	blx r3
	cmp r0, #0
	bne _021F6E80
	ldr r0, [r5, #0xc]
	add r3, sp, #0x1c
	mov r1, r4
	mov r2, #1
	bl ov4_021F5D7C
_021F6E80:
	ldr r2, [r0, #0]
	ldr r1, [r0, #4]
	mov r0, r2
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_021F6E98: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F6E2C

	arm_func_start ov4_021F6E9C
ov4_021F6E9C: ; 0x021F6E9C
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	ldreq r0, _021F6EF4 ; =0x0221AF80
	mov r5, r1
	ldreq r6, [r0, #0x28]
	mov r4, r3
	cmp r6, #0
	mov ip, r2
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	mov r1, r5
	mov r2, r4
	blx ip
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	mov r1, r5
	mov r3, r4
	mov r2, #2
	bl ov4_021F5D7C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F6EF4: .word Unk_ov4_0221AF80
	arm_func_end ov4_021F6E9C

	arm_func_start ov4_021F6EF8
ov4_021F6EF8: ; 0x021F6EF8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldr r1, [sp, #0x58]
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl ov4_021F6D64
	mov r3, r0
	ldr r1, _021F6F50 ; =0x02219440
	add r0, sp, #4
	mov r2, r6
	bl sprintf
	ldr ip, [sp, #0x58]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	add r1, sp, #4
	str ip, [sp]
	bl ov4_021F6DC4
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F6F50: .word 0x02219440
	arm_func_end ov4_021F6EF8

	arm_func_start ov4_021F6F54
ov4_021F6F54: ; 0x021F6F54
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x48
	mov r7, r1
	ldr r1, [sp, #0x64]
	mov r8, r0
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x60]
	bl ov4_021F6D64
	mov r3, r0
	ldr r1, _021F6FB0 ; =0x02219440
	add r0, sp, #8
	mov r2, r7
	bl sprintf
	ldr ip, [sp, #0x64]
	mov r3, r5
	mov r0, r8
	mov r2, r6
	add r1, sp, #8
	stmia sp, {r4, ip}
	bl ov4_021F6E2C
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F6FB0: .word 0x02219440
	arm_func_end ov4_021F6F54

	arm_func_start ov4_021F6FB4
ov4_021F6FB4: ; 0x021F6FB4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldr r1, [sp, #0x58]
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl ov4_021F6D64
	mov r3, r0
	ldr r1, _021F700C ; =0x02219440
	add r0, sp, #4
	mov r2, r6
	bl sprintf
	ldr ip, [sp, #0x58]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	add r1, sp, #4
	str ip, [sp]
	bl ov4_021F6E9C
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F700C: .word 0x02219440
	arm_func_end ov4_021F6FB4

	arm_func_start ov4_021F7010
ov4_021F7010: ; 0x021F7010
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldr r1, [sp, #0x58]
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl ov4_021F6D94
	mov r3, r0
	ldr r1, _021F7068 ; =0x02219448
	add r0, sp, #4
	mov r2, r6
	bl sprintf
	ldr ip, [sp, #0x58]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	add r1, sp, #4
	str ip, [sp]
	bl ov4_021F6DC4
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F7068: .word 0x02219448
	arm_func_end ov4_021F7010

	arm_func_start ov4_021F706C
ov4_021F706C: ; 0x021F706C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x48
	mov r7, r1
	ldr r1, [sp, #0x64]
	mov r8, r0
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x60]
	bl ov4_021F6D94
	mov r3, r0
	ldr r1, _021F70C8 ; =0x02219448
	add r0, sp, #8
	mov r2, r7
	bl sprintf
	ldr ip, [sp, #0x64]
	mov r3, r5
	mov r0, r8
	mov r2, r6
	add r1, sp, #8
	stmia sp, {r4, ip}
	bl ov4_021F6E2C
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F70C8: .word 0x02219448
	arm_func_end ov4_021F706C

	arm_func_start ov4_021F70CC
ov4_021F70CC: ; 0x021F70CC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldr r1, [sp, #0x58]
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl ov4_021F6D94
	mov r3, r0
	ldr r1, _021F7124 ; =0x02219448
	add r0, sp, #4
	mov r2, r6
	bl sprintf
	ldr ip, [sp, #0x58]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	add r1, sp, #4
	str ip, [sp]
	bl ov4_021F6E9C
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F7124: .word 0x02219448
	arm_func_end ov4_021F70CC

	.rodata


	.global Unk_ov4_0221598C
Unk_ov4_0221598C: ; 0x0221598C
	.incbin "incbin/overlay4_rodata.bin", 0x124, 0x12C - 0x124

	.global Unk_ov4_02215994
Unk_ov4_02215994: ; 0x02215994
	.incbin "incbin/overlay4_rodata.bin", 0x12C, 0x13C - 0x12C

	.global Unk_ov4_022159A4
Unk_ov4_022159A4: ; 0x022159A4
	.incbin "incbin/overlay4_rodata.bin", 0x13C, 0x14C - 0x13C

	.global Unk_ov4_022159B4
Unk_ov4_022159B4: ; 0x022159B4
	.incbin "incbin/overlay4_rodata.bin", 0x14C, 0x16A - 0x14C

	.global Unk_ov4_022159D2
Unk_ov4_022159D2: ; 0x022159D2
	.incbin "incbin/overlay4_rodata.bin", 0x16A, 0x189 - 0x16A

	.global Unk_ov4_022159F1
Unk_ov4_022159F1: ; 0x022159F1
	.incbin "incbin/overlay4_rodata.bin", 0x189, 0x1AC - 0x189

	.global Unk_ov4_02215A14
Unk_ov4_02215A14: ; 0x02215A14
	.incbin "incbin/overlay4_rodata.bin", 0x1AC, 0x1D0 - 0x1AC

	.global Unk_ov4_02215A38
Unk_ov4_02215A38: ; 0x02215A38
	.incbin "incbin/overlay4_rodata.bin", 0x1D0, 0x1F9 - 0x1D0

	.global Unk_ov4_02215A61
Unk_ov4_02215A61: ; 0x02215A61
	.incbin "incbin/overlay4_rodata.bin", 0x1F9, 0x223 - 0x1F9

	.global Unk_ov4_02215A8B
Unk_ov4_02215A8B: ; 0x02215A8B
	.incbin "incbin/overlay4_rodata.bin", 0x223, 0x24F - 0x223

	.global Unk_ov4_02215AB7
Unk_ov4_02215AB7: ; 0x02215AB7
	.incbin "incbin/overlay4_rodata.bin", 0x24F, 0x280 - 0x24F

	.global Unk_ov4_02215AE8
Unk_ov4_02215AE8: ; 0x02215AE8
	.incbin "incbin/overlay4_rodata.bin", 0x280, 0x2BF - 0x280

	.global Unk_ov4_02215B27
Unk_ov4_02215B27: ; 0x02215B27
	.incbin "incbin/overlay4_rodata.bin", 0x2BF, 0x101



	.data


	.global Unk_ov4_02219358
Unk_ov4_02219358: ; 0x02219358
	.incbin "incbin/overlay4_data.bin", 0x34D8, 0x34DC - 0x34D8

	.global Unk_ov4_0221935C
Unk_ov4_0221935C: ; 0x0221935C
	.incbin "incbin/overlay4_data.bin", 0x34DC, 0x34E0 - 0x34DC

	.global Unk_ov4_02219360
Unk_ov4_02219360: ; 0x02219360
	.incbin "incbin/overlay4_data.bin", 0x34E0, 0x34E4 - 0x34E0

	.global Unk_ov4_02219364
Unk_ov4_02219364: ; 0x02219364
	.incbin "incbin/overlay4_data.bin", 0x34E4, 0x3500 - 0x34E4

	.global Unk_ov4_02219380
Unk_ov4_02219380: ; 0x02219380
	.incbin "incbin/overlay4_data.bin", 0x3500, 0x3524 - 0x3500

	.global Unk_ov4_022193A4
Unk_ov4_022193A4: ; 0x022193A4
	.incbin "incbin/overlay4_data.bin", 0x3524, 0x3534 - 0x3524

	.global Unk_ov4_022193B4
Unk_ov4_022193B4: ; 0x022193B4
	.incbin "incbin/overlay4_data.bin", 0x3534, 0x3544 - 0x3534

	.global Unk_ov4_022193C4
Unk_ov4_022193C4: ; 0x022193C4
	.incbin "incbin/overlay4_data.bin", 0x3544, 0x3548 - 0x3544

	.global Unk_ov4_022193C8
Unk_ov4_022193C8: ; 0x022193C8
	.incbin "incbin/overlay4_data.bin", 0x3548, 0x354C - 0x3548

	.global Unk_ov4_022193CC
Unk_ov4_022193CC: ; 0x022193CC
	.incbin "incbin/overlay4_data.bin", 0x354C, 0x3554 - 0x354C

	.global Unk_ov4_022193D4
Unk_ov4_022193D4: ; 0x022193D4
	.incbin "incbin/overlay4_data.bin", 0x3554, 0x3558 - 0x3554

	.global Unk_ov4_022193D8
Unk_ov4_022193D8: ; 0x022193D8
	.incbin "incbin/overlay4_data.bin", 0x3558, 0x3560 - 0x3558

	.global Unk_ov4_022193E0
Unk_ov4_022193E0: ; 0x022193E0
	.incbin "incbin/overlay4_data.bin", 0x3560, 0x3568 - 0x3560

	.global Unk_ov4_022193E8
Unk_ov4_022193E8: ; 0x022193E8
	.incbin "incbin/overlay4_data.bin", 0x3568, 0x3570 - 0x3568

	.global Unk_ov4_022193F0
Unk_ov4_022193F0: ; 0x022193F0
	.incbin "incbin/overlay4_data.bin", 0x3570, 0x3574 - 0x3570

	.global Unk_ov4_022193F4
Unk_ov4_022193F4: ; 0x022193F4
	.incbin "incbin/overlay4_data.bin", 0x3574, 0x3578 - 0x3574

	.global Unk_ov4_022193F8
Unk_ov4_022193F8: ; 0x022193F8
	.incbin "incbin/overlay4_data.bin", 0x3578, 0x3580 - 0x3578

	.global Unk_ov4_02219400
Unk_ov4_02219400: ; 0x02219400
	.incbin "incbin/overlay4_data.bin", 0x3580, 0x3588 - 0x3580

	.global Unk_ov4_02219408
Unk_ov4_02219408: ; 0x02219408
	.incbin "incbin/overlay4_data.bin", 0x3588, 0x3590 - 0x3588

	.global Unk_ov4_02219410
Unk_ov4_02219410: ; 0x02219410
	.incbin "incbin/overlay4_data.bin", 0x3590, 0x359C - 0x3590

	.global Unk_ov4_0221941C
Unk_ov4_0221941C: ; 0x0221941C
	.incbin "incbin/overlay4_data.bin", 0x359C, 0x35A8 - 0x359C

	.global Unk_ov4_02219428
Unk_ov4_02219428: ; 0x02219428
	.incbin "incbin/overlay4_data.bin", 0x35A8, 0x35B4 - 0x35A8

	.global Unk_ov4_02219434
Unk_ov4_02219434: ; 0x02219434
	.incbin "incbin/overlay4_data.bin", 0x35B4, 0x35C0 - 0x35B4

	.global Unk_ov4_02219440
Unk_ov4_02219440: ; 0x02219440
	.incbin "incbin/overlay4_data.bin", 0x35C0, 0x35C8 - 0x35C0

	.global Unk_ov4_02219448
Unk_ov4_02219448: ; 0x02219448
	.incbin "incbin/overlay4_data.bin", 0x35C8, 0x6



	.bss


	.global Unk_ov4_0221AF80
Unk_ov4_0221AF80: ; 0x0221AF80
	.space 0x4

	.global Unk_ov4_0221AF84
Unk_ov4_0221AF84: ; 0x0221AF84
	.space 0x4

	.global Unk_ov4_0221AF88
Unk_ov4_0221AF88: ; 0x0221AF88
	.space 0x4

	.global Unk_ov4_0221AF8C
Unk_ov4_0221AF8C: ; 0x0221AF8C
	.space 0x4

	.global Unk_ov4_0221AF90
Unk_ov4_0221AF90: ; 0x0221AF90
	.space 0x4

	.global Unk_ov4_0221AF94
Unk_ov4_0221AF94: ; 0x0221AF94
	.space 0x4

	.global Unk_ov4_0221AF98
Unk_ov4_0221AF98: ; 0x0221AF98
	.space 0x4

	.global Unk_ov4_0221AF9C
Unk_ov4_0221AF9C: ; 0x0221AF9C
	.space 0x4

	.global Unk_ov4_0221AFA0
Unk_ov4_0221AFA0: ; 0x0221AFA0
	.space 0x4

	.global Unk_ov4_0221AFA4
Unk_ov4_0221AFA4: ; 0x0221AFA4
	.space 0x4

	.global Unk_ov4_0221AFA8
Unk_ov4_0221AFA8: ; 0x0221AFA8
	.space 0x4

	.global Unk_ov4_0221AFAC
Unk_ov4_0221AFAC: ; 0x0221AFAC
	.space 0x4

	.global Unk_ov4_0221AFB0
Unk_ov4_0221AFB0: ; 0x0221AFB0
	.space 0x200

	.global Unk_ov4_0221B1B0
Unk_ov4_0221B1B0: ; 0x0221B1B0
	.space 0x100

	.global Unk_ov4_0221B2B0
Unk_ov4_0221B2B0: ; 0x0221B2B0
	.space 0x100

