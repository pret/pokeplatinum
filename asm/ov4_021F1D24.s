	.include "macros/function.inc"
	.include "include/ov4_021F1D24.inc"

	

	.text


	arm_func_start ov4_021F1D24
ov4_021F1D24: ; 0x021F1D24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r1
	ldr r2, [r6, #0]
	mov r7, r0
	sub r2, r2, #0x65
	ldr r4, [r7, #0]
	cmp r2, #3
	addls pc, pc, r2, lsl #2
	b _021F1FE4
_021F1D4C: ; jump table
	b _021F1FF8 ; case 0
	b _021F1D5C ; case 1
	b _021F1D70 ; case 2
	b _021F1EF4 ; case 3
_021F1D5C:
	bl ov4_021F2AE8
	cmp r0, #0
	beq _021F1FF8
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1D70:
	ldr r1, [r6, #8]
	add r2, sp, #0x14
	bl ov4_021F5A80
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bne _021F1DAC
	ldr r1, _021F2048 ; =0x02218A88
	mov r0, r7
	bl ov4_021F5D68
	add sp, sp, #0x18
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1DAC:
	cmp r0, #3
	bne _021F1FF8
	ldr r1, [r6, #0xc]
	add r2, sp, #8
	mov r0, r7
	mov r5, #1
	bl ov4_021F32A8
	cmp r0, #0
	bne _021F1DE8
	ldr r1, _021F2048 ; =0x02218A88
	mov r0, r7
	bl ov4_021F5D68
	add sp, sp, #0x18
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1DE8:
	ldr r2, _021F204C ; =0x02218AA4
	mov r0, r7
	add r1, r6, #0x28
	bl ov4_021ED5C4
	ldr r2, _021F2050 ; =0x02218AAC
	mov r0, r7
	add r1, r6, #0x28
	bl ov4_021ED5C4
	ldr r2, [r4, #0x1a0]
	mov r0, r7
	add r1, r6, #0x28
	bl ov4_021ED5F4
	ldr r2, _021F2054 ; =0x02218AB4
	mov r0, r7
	add r1, r6, #0x28
	bl ov4_021ED5C4
	mov r0, r7
	add r1, r6, #0x28
	add r2, r4, #0x110
	bl ov4_021ED5C4
	mov r0, r7
	add r1, r6, #0x28
	ldr r2, _021F2058 ; =0x02218ABC
	bl ov4_021ED5C4
	mov r0, r7
	add r1, r6, #0x28
	ldr r2, [sp, #8]
	ldr r2, [r2, #0x18]
	bl ov4_021ED5C4
	mov r0, r7
	add r1, r6, #0x28
	ldr r2, _021F205C ; =0x02218AC4
	bl ov4_021ED5C4
	ldr r2, [r4, #0x434]
	cmp r2, #0
	beq _021F1EAC
	ldr r3, [r6, #0xc]
	mov r0, #0
_021F1E80:
	ldr r1, [r2, #0xc]
	cmp r1, r3
	bne _021F1EA0
	cmp r2, r6
	beq _021F1EA0
	ldr r1, [r2, #0]
	cmp r1, #0x67
	movle r5, r0
_021F1EA0:
	ldr r2, [r2, #0x3c]
	cmp r2, #0
	bne _021F1E80
_021F1EAC:
	cmp r5, #0
	beq _021F1EE8
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	bl ov4_021D78B0
	ldr r0, [sp, #8]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r0, [sp, #8]
	bl ov4_021F3490
	cmp r0, #0
	beq _021F1EE8
	ldr r1, [sp, #8]
	mov r0, r7
	bl ov4_021F3318
_021F1EE8:
	mov r0, #0x68
	str r0, [r6, #0]
	b _021F1FF8
_021F1EF4:
	add r2, sp, #0xc
	str r2, [sp]
	ldr r1, _021F2060 ; =0x02218ACC
	add r3, sp, #0x10
	str r1, [sp, #4]
	ldr r1, [r6, #8]
	add r2, r6, #0x18
	bl ov4_021ED92C
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x18]
	ldr r1, _021F205C ; =0x02218AC4
	bl sub_020D90B0
	cmp r0, #0
	beq _021F1FF8
	mov r1, #0
	strb r1, [r0]
	ldr r4, [r6, #0x18]
	ldr r1, _021F2064 ; =0x02218AD0
	mov r0, r4
	mov r2, #7
	bl sub_020D8E28
	cmp r0, #0
	bne _021F1FA0
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	cmp r0, #1
	ble _021F1F84
	ldr r1, _021F2068 ; =0x02218AD8
	mov r0, r7
	bl ov4_021F5D68
	add sp, sp, #0x18
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1F84:
	mov r0, r7
	mov r1, r6
	bl ov4_021F2A84
	cmp r0, #0
	beq _021F1FD0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1FA0:
	ldr r1, _021F206C ; =0x02218AFC
	mov r0, r4
	mov r2, #6
	bl sub_020D8E28
	cmp r0, #0
	beq _021F1FD0
	ldr r1, _021F2070 ; =0x02218B04
	mov r0, r7
	bl ov4_021F5D68
	add sp, sp, #0x18
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1FD0:
	mov r0, #0x69
	str r0, [r6, #0]
	mov r0, #0
	str r0, [r6, #0x20]
	b _021F1FF8
_021F1FE4:
	ldr r0, _021F2074 ; =0x02218B24
	ldr r1, _021F2078 ; =0x02218B28
	ldr r2, _021F207C ; =0x02218A64
	mov r3, #0x9f
	bl sub_020D407C
_021F1FF8:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	ble _021F203C
	mov r1, #1
	ldr r0, _021F2060 ; =0x02218ACC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #8]
	add r3, sp, #0xc
	mov r0, r7
	add r2, r6, #0x28
	bl ov4_021EDB54
	ldr r1, [sp, #0xc]
	cmp r1, #0
	cmpeq r0, #0
	movne r0, #0x6a
	strne r0, [r6]
_021F203C:
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F2048: .word 0x02218A88
_021F204C: .word 0x02218AA4
_021F2050: .word 0x02218AAC
_021F2054: .word 0x02218AB4
_021F2058: .word 0x02218ABC
_021F205C: .word 0x02218AC4
_021F2060: .word 0x02218ACC
_021F2064: .word 0x02218AD0
_021F2068: .word 0x02218AD8
_021F206C: .word 0x02218AFC
_021F2070: .word 0x02218B04
_021F2074: .word 0x02218B24
_021F2078: .word 0x02218B28
_021F207C: .word 0x02218A64
	arm_func_end ov4_021F1D24

	arm_func_start ov4_021F2080
ov4_021F2080: ; 0x021F2080
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x184
	mov r5, r1
	ldr r1, [r5, #0]
	mov r6, r0
	cmp r1, #0x68
	ldr r4, [r6, #0]
	beq _021F20B4
	ldr r0, _021F22AC ; =0x02218B34
	ldr r1, _021F22B0 ; =0x02218B28
	ldr r2, _021F22B4 ; =0x02218A40
	mov r3, #0xc1
	bl sub_020D407C
_021F20B4:
	add r1, sp, #8
	ldr r0, _021F22B8 ; =0x02218ACC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r5, #8]
	add r3, sp, #0xc
	mov r0, r6
	add r2, r5, #0x18
	bl ov4_021ED92C
	cmp r0, #0
	addne sp, sp, #0x184
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021F2104
	mov r0, #0x6a
	str r0, [r5, #0]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F2104:
	ldr r0, [r5, #0x18]
	ldr r1, _021F22BC ; =0x02218AC4
	bl sub_020D90B0
	cmp r0, #0
	beq _021F22A0
	mov r1, #0
	strb r1, [r0]
	ldr r7, [r5, #0x18]
	ldr r1, _021F22C0 ; =0x02218AA4
	mov r0, r7
	mov r2, #6
	bl sub_020D8E28
	cmp r0, #0
	bne _021F2284
	ldr r1, _021F22C4 ; =0x02218AAC
	add r2, sp, #0x71
	mov r0, r7
	mov r3, #0x10
	bl ov4_021F5978
	cmp r0, #0
	bne _021F216C
	mov r0, #0x6a
	str r0, [r5, #0]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F216C:
	add r0, sp, #0x71
	bl sub_020DAE0C
	mov r7, r0
	ldr r0, [r5, #0x18]
	ldr r1, _021F22C8 ; =0x02218AB4
	add r2, sp, #0x52
	mov r3, #0x1f
	bl ov4_021F5978
	cmp r0, #0
	bne _021F21A8
	mov r0, #0x6a
	str r0, [r5, #0]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F21A8:
	ldr r0, [r5, #0x18]
	ldr r1, _021F22CC ; =0x02218ABC
	add r2, sp, #0x31
	mov r3, #0x21
	bl ov4_021F5978
	cmp r0, #0
	bne _021F21D8
	mov r0, #0x6a
	str r0, [r5, #0]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F21D8:
	str r7, [sp]
	add r2, r4, #0x77
	ldr r3, [r4, #0x1a0]
	ldr r1, _021F22D0 ; =0x02218B54
	add r0, sp, #0x81
	add r2, r2, #0x100
	bl sub_020D7510
	add r0, sp, #0x81
	bl sub_020D8B60
	mov r1, r0
	add r0, sp, #0x81
	add r2, sp, #0x10
	bl ov4_021EA7F4
	add r0, sp, #0x31
	add r1, sp, #0x10
	bl sub_020D8D14
	cmp r0, #0
	beq _021F2254
	ldr r2, _021F22D4 ; =0x02218AD0
	mov r0, r6
	add r1, r5, #0x28
	bl ov4_021ED5C4
	ldr r2, _021F22BC ; =0x02218AC4
	mov r0, r6
	add r1, r5, #0x28
	bl ov4_021ED5C4
	mov r0, #0x6a
	str r0, [r5, #0]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F2254:
	ldr r2, _021F22D8 ; =0x02218AFC
	mov r0, r6
	add r1, r5, #0x28
	bl ov4_021ED5C4
	ldr r2, _021F22BC ; =0x02218AC4
	mov r0, r6
	add r1, r5, #0x28
	bl ov4_021ED5C4
	mov r0, #0x69
	str r0, [r5, #0]
	str r7, [r5, #0xc]
	b _021F2298
_021F2284:
	mov r0, #0x6a
	str r0, [r5, #0]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F2298:
	mov r0, #0
	str r0, [r5, #0x20]
_021F22A0:
	mov r0, #0
	add sp, sp, #0x184
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F22AC: .word 0x02218B34
_021F22B0: .word 0x02218B28
_021F22B4: .word 0x02218A40
_021F22B8: .word 0x02218ACC
_021F22BC: .word 0x02218AC4
_021F22C0: .word 0x02218AA4
_021F22C4: .word 0x02218AAC
_021F22C8: .word 0x02218AB4
_021F22CC: .word 0x02218ABC
_021F22D0: .word 0x02218B54
_021F22D4: .word 0x02218AD0
_021F22D8: .word 0x02218AFC
	arm_func_end ov4_021F2080

	arm_func_start ov4_021F22DC
ov4_021F22DC: ; 0x021F22DC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r1
	ldr r1, [sb, #0x30]
	mov sl, r0
	cmp r1, #0
	addne sp, sp, #0xc
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sb, #0x38]
	bl ov4_021E9BBC
	cmp r0, #0
	beq _021F23A0
	mov fp, #0
	ldr r5, _021F23AC ; =0x02218ACC
	mov r8, fp
	mov r6, fp
	add r4, sp, #8
_021F2324:
	ldr r0, [sb, #0x38]
	mov r1, r8
	bl ov4_021E9BC4
	mov r7, r0
	str r6, [sp]
	str r5, [sp, #4]
	ldr r1, [sb, #8]
	mov r0, sl
	mov r2, r7
	mov r3, r4
	bl ov4_021EDB54
	ldr r1, [sp, #8]
	cmp r1, #0
	cmpeq r0, #0
	beq _021F2374
	mov r0, #0x6a
	str r0, [sb]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2374:
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #8]
	cmp r1, r0
	bne _021F23A0
	ldr r0, [sb, #0x38]
	mov r1, fp
	bl ov4_021E9E40
	ldr r0, [sb, #0x38]
	bl ov4_021E9BBC
	cmp r0, #0
	bne _021F2324
_021F23A0:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021F23AC: .word 0x02218ACC
	arm_func_end ov4_021F22DC

	arm_func_start ov4_021F23B0
ov4_021F23B0: ; 0x021F23B0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov r8, r1
	ldr r1, [r8, #0x30]
	mov sb, r0
	cmp r1, #0
	ldr r7, [sb]
	beq _021F2414
	mov r2, #1
	str r2, [sp]
	ldr r1, _021F2624 ; =0x02218ACC
	add r3, sp, #0x1c
	str r1, [sp, #4]
	ldr r1, [r8, #8]
	add r2, r8, #0x28
	bl ov4_021EDB54
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	cmpeq r0, #0
	beq _021F2414
	mov r0, #0x6a
	str r0, [r8]
	add sp, sp, #0x24
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2414:
	ldr r0, [r8, #0x30]
	cmp r0, #0
	bne _021F244C
	mov r0, sb
	mov r1, r8
	bl ov4_021F22DC
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r8]
	cmp r0, #0x6a
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F244C:
	add r1, sp, #0x1c
	ldr r0, _021F2624 ; =0x02218ACC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r8, #8]
	add r3, sp, #0x20
	mov r0, sb
	add r2, r8, #0x18
	bl ov4_021ED92C
	cmp r0, #0
	beq _021F248C
	mov r0, #0x6a
	str r0, [r8]
	add sp, sp, #0x24
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F248C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _021F24A8
	mov r0, #0
	bl ov4_021EAF48
	add r0, r0, #0x12c
	str r0, [r8, #0x10]
_021F24A8:
	mov r4, #0
	mov sl, #2
	add fp, sp, #0x14
	add r6, sp, #8
_021F24B8:
	mov r0, sb
	add r1, r8, #0x18
	add r2, sp, #0x10
	add r3, sp, #0xc
	str r6, [sp]
	bl ov4_021EDCD4
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _021F25FC
	ldr r2, [sp, #0xc]
	cmp r2, #0x66
	bgt _021F2504
	bge _021F25BC
	cmp r2, #1
	beq _021F2538
	b _021F25F0
_021F2504:
	sub r0, r2, #0xc8
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _021F25F0
_021F2514: ; jump table
	b _021F25D4 ; case 0
	b _021F25D4 ; case 1
	b _021F25D4 ; case 2
	b _021F25D4 ; case 3
	b _021F25D4 ; case 4
	b _021F25D4 ; case 5
	b _021F25D4 ; case 6
	b _021F25D4 ; case 7
	b _021F25D4 ; case 8
_021F2538:
	ldr r1, [r7, #0x1bc]
	ldr r0, [r7, #0x1c0]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r1, #0
	beq _021F25F0
	mov r0, #0xc
	bl ov4_021D7880
	movs r5, r0
	bne _021F2578
	ldr r1, _021F2628 ; =0x02218B5C
	mov r0, sb
	bl ov4_021F5D68
	add sp, sp, #0x24
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2578:
	ldr r0, [r8, #0xc]
	str r0, [r5, #0]
	ldr r0, [sp, #0x10]
	bl ov4_021EA8AC
	str r0, [r5, #8]
	mov r0, #0
	bl ov4_021EAF48
	str r0, [r5, #4]
	mov r3, r5
	mov r0, sb
	stmia sp, {r4, sl}
	ldmia fp, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F25F0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F25BC:
	ldr r1, [r8, #0xc]
	ldr r3, _021F262C ; =0x02218B6C
	mov r0, sb
	mov r2, #0x67
	bl ov4_021ED09C
	b _021F25F0
_021F25D4:
	str r1, [sp]
	ldr r1, [sp, #8]
	mov r0, sb
	str r1, [sp, #4]
	mov r1, r8
	ldr r3, [r8, #0x18]
	bl ov4_021F5698
_021F25F0:
	mov r0, sb
	add r1, r8, #0x18
	bl ov4_021EDE10
_021F25FC:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021F24B8
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	movne r0, #0x6a
	strne r0, [r8]
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021F2624: .word 0x02218ACC
_021F2628: .word 0x02218B5C
_021F262C: .word 0x02218B6C
	arm_func_end ov4_021F23B0

	arm_func_start ov4_021F2630
ov4_021F2630: ; 0x021F2630
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #0]
	mov r6, r0
	cmp r1, #0x64
	mov r4, #0
	bne _021F2660
	ldr r0, _021F26BC ; =0x02218B70
	ldr r1, _021F26C0 ; =0x02218B28
	ldr r2, _021F26C4 ; =0x022189E0
	ldr r3, _021F26C8 ; =0x000001D9
	bl sub_020D407C
_021F2660:
	ldr r0, [r5, #0]
	cmp r0, #0x69
	beq _021F2694
	ldr r0, [r5, #4]
	mov r1, r5
	cmp r0, #0
	mov r0, r6
	beq _021F268C
	bl ov4_021F1D24
	mov r4, r0
	b _021F2694
_021F268C:
	bl ov4_021F2080
	mov r4, r0
_021F2694:
	cmp r4, #0
	ldreq r0, [r5]
	cmpeq r0, #0x69
	bne _021F26B4
	mov r0, r6
	mov r1, r5
	bl ov4_021F23B0
	mov r4, r0
_021F26B4:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F26BC: .word 0x02218B70
_021F26C0: .word 0x02218B28
_021F26C4: .word 0x022189E0
_021F26C8: .word 0x000001D9
	arm_func_end ov4_021F2630

	arm_func_start ov4_021F26CC
ov4_021F26CC: ; 0x021F26CC
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov4_021EAD04
	ldr r0, [r4, #8]
	bl ov4_021EACF0
	ldr r0, [r4, #0x18]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021F2720
	bl ov4_021E9B50
	mov r0, #0
	str r0, [r4, #0x38]
_021F2720:
	mov r0, r4
	bl ov4_021D78B0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F26CC

	arm_func_start ov4_021F272C
ov4_021F272C: ; 0x021F272C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	movs r4, r1
	ldr r6, [r5, #0]
	bne _021F2754
	ldr r0, _021F282C ; =0x02218B98
	ldr r1, _021F2830 ; =0x02218B28
	ldr r2, _021F2834 ; =0x022189D0
	ldr r3, _021F2838 ; =0x00000213
	bl sub_020D407C
_021F2754:
	ldr r1, [r6, #0x434]
	cmp r1, r4
	ldreq r0, [r4, #0x3c]
	streq r0, [r6, #0x434]
	beq _021F27B8
	ldr r0, [r1, #0x3c]
	cmp r0, r4
	beq _021F27B0
_021F2774:
	cmp r0, #0
	bne _021F27A0
	ldr r0, _021F283C ; =0x02218B24
	ldr r1, _021F2830 ; =0x02218B28
	ldr r2, _021F2834 ; =0x022189D0
	ldr r3, _021F2840 ; =0x00000225
	bl sub_020D407C
	ldr r1, _021F2844 ; =0x02218BA8
	mov r0, r5
	bl ov4_021F5894
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F27A0:
	mov r1, r0
	ldr r0, [r0, #0x3c]
	cmp r0, r4
	bne _021F2774
_021F27B0:
	ldr r0, [r4, #0x3c]
	str r0, [r1, #0x3c]
_021F27B8:
	ldr r0, [r4, #0x38]
	bl ov4_021E9BBC
	cmp r0, #0
	beq _021F281C
	mov r6, #0
	mov r7, r6
_021F27D0:
	ldr r0, [r4, #0x38]
	mov r1, r7
	bl ov4_021E9BC4
	ldr r2, [r0, #0x10]
	cmp r2, #0x64
	bge _021F2800
	ldr ip, [r0]
	ldr r3, [r0, #0x14]
	ldr r1, [r4, #0xc]
	mov r0, r5
	add r3, ip, r3
	bl ov4_021ECFC0
_021F2800:
	ldr r0, [r4, #0x38]
	mov r1, r6
	bl ov4_021E9E40
	ldr r0, [r4, #0x38]
	bl ov4_021E9BBC
	cmp r0, #0
	bne _021F27D0
_021F281C:
	mov r0, r5
	mov r1, r4
	bl ov4_021F26CC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F282C: .word 0x02218B98
_021F2830: .word 0x02218B28
_021F2834: .word 0x022189D0
_021F2838: .word 0x00000213
_021F283C: .word 0x02218B24
_021F2840: .word 0x00000225
_021F2844: .word 0x02218BA8
	arm_func_end ov4_021F272C

	arm_func_start ov4_021F2848
ov4_021F2848: ; 0x021F2848
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0x4000
	bl ov4_021EA964
	mov r0, r4
	mov r1, #0x8000
	bl ov4_021EA964
	mov r0, r4
	mov r1, #0x10000
	bl ov4_021EA964
	mov r0, r4
	mov r1, #0x20000
	bl ov4_021EA964
	mov r0, r4
	mov r1, #0x40000
	bl ov4_021EA964
	mov r0, r4
	mov r1, #0x4000
	bl ov4_021EA9A8
	mov r0, r4
	mov r1, #0x8000
	bl ov4_021EA9A8
	mov r0, r4
	mov r1, #0x10000
	bl ov4_021EA9A8
	mov r0, r4
	bl ov4_021EA9E8
	mov r0, r4
	bl ov4_021EAA30
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F2848

	arm_func_start ov4_021F28C0
ov4_021F28C0: ; 0x021F28C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r7, [r4, #0]
	mvn r1, #0
	ldr r0, [r7, #0x204]
	cmp r0, r1
	beq _021F2948
	bl ov4_021EAB6C
	cmp r0, #0
	beq _021F2948
	mov r1, #0
	ldr r0, [r7, #0x204]
	mov r2, r1
	bl ov4_021EADD8
	mov r6, r0
	mvn r1, #0
	cmp r6, r1
	beq _021F2948
	mov r0, r4
	mov r2, #0
	bl ov4_021F2A04
	movs r5, r0
	beq _021F2940
	mov r0, #0x68
	str r0, [r5, #0]
	mov r0, r6
	str r6, [r5, #8]
	mov r1, #0
	bl ov4_021EA924
	ldr r0, [r5, #8]
	bl ov4_021F2848
	b _021F2948
_021F2940:
	mov r0, r6
	bl ov4_021EACF0
_021F2948:
	ldr r7, [r7, #0x434]
	cmp r7, #0
	beq _021F29A8
	mov r5, #0
_021F2958:
	mov r0, r4
	mov r1, r7
	ldr r6, [r7, #0x3c]
	bl ov4_021F2630
	ldr r1, [r7, #0]
	cmp r1, #0x6a
	beq _021F2990
	cmp r0, #0
	bne _021F2990
	mov r0, r5
	bl ov4_021EAF48
	ldr r1, [r7, #0x10]
	cmp r0, r1
	ble _021F299C
_021F2990:
	mov r0, r4
	mov r1, r7
	bl ov4_021F272C
_021F299C:
	mov r7, r6
	cmp r6, #0
	bne _021F2958
_021F29A8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021F28C0

	arm_func_start ov4_021F29B0
ov4_021F29B0: ; 0x021F29B0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x434]
	cmp r0, #0
	beq _021F29E0
_021F29C0:
	ldr r2, [r0, #0xc]
	cmp r2, r1
	ldreq r2, [r0]
	cmpeq r2, #0x69
	bxeq lr
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _021F29C0
_021F29E0:
	mov r0, #0
	bx lr
	arm_func_end ov4_021F29B0

	arm_func_start ov4_021F29E8
ov4_021F29E8: ; 0x021F29E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021F29E8

	arm_func_start ov4_021F2A04
ov4_021F2A04: ; 0x021F2A04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [r0, #0]
	mov r0, #0x40
	mov r7, r1
	mov r6, r2
	bl ov4_021D7880
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, #0x40
	bl sub_020D5124
	mov r0, #0x64
	stmia r4, {r0, r6}
	sub r0, r0, #0x65
	str r0, [r4, #8]
	mov r0, #0
	str r7, [r4, #0xc]
	bl ov4_021EAF48
	add r0, r0, #0x12c
	str r0, [r4, #0x10]
	ldr r3, [r5, #0x434]
	ldr r2, _021F2A80 ; =ov4_021F29E8
	mov r0, #0x18
	mov r1, #0
	str r3, [r4, #0x3c]
	bl ov4_021E9A8C
	str r0, [r4, #0x38]
	mov r0, r4
	str r4, [r5, #0x434]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F2A80: .word ov4_021F29E8
	arm_func_end ov4_021F2A04

	arm_func_start ov4_021F2A84
ov4_021F2A84: ; 0x021F2A84
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r2, #0
	str r2, [sp]
	mov r4, r1
	str r2, [sp, #4]
	add r3, sp, #0xc
	mov r1, #2
	mov r5, r0
	str r2, [sp, #8]
	bl ov4_021F1A54
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0xc]
	ldr r2, [r0, #0x18]
	mov r0, r5
	bl ov4_021F1328
	cmp r0, #0
	moveq r0, #0x65
	streq r0, [r4]
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021F2A84

	arm_func_start ov4_021F2AE8
ov4_021F2AE8: ; 0x021F2AE8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	ldr r1, [r4, #0xc]
	add r2, sp, #0
	mov r5, r0
	bl ov4_021F32A8
	cmp r0, #0
	bne _021F2B24
	ldr r1, _021F2C64 ; =0x02218A88
	mov r0, r5
	bl ov4_021F5D68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F2B24:
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl ov4_021EACDC
	mvn r1, #0
	str r0, [r4, #8]
	cmp r0, r1
	bne _021F2B70
	ldr r2, _021F2C68 ; =0x02218BCC
	mov r0, r5
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r5
	mov r1, #3
	mov r2, #0
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F2B70:
	mov r1, #0
	bl ov4_021EA924
	cmp r0, #0
	bne _021F2BAC
	ldr r2, _021F2C6C ; =0x02218BF4
	mov r0, r5
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r5
	mov r1, #3
	mov r2, #0
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F2BAC:
	ldr r0, [r4, #8]
	bl ov4_021F2848
	add r1, sp, #4
	mov r2, #0
	ldr r3, [sp]
	str r2, [r1, #0]
	mov r0, #2
	str r2, [r1, #4]
	strb r0, [sp, #5]
	ldr r0, [r3, #8]
	mov r2, #8
	ldr r0, [r0, #0x10]
	str r0, [sp, #8]
	ldr r0, [r3, #8]
	ldr r0, [r0, #0x14]
	strh r0, [sp, #6]
	ldr r0, [r4, #8]
	bl ov4_021EAD78
	mvn r1, #0
	cmp r0, r1
	bne _021F2C50
	ldr r0, [r4, #8]
	bl ov4_021EAF38
	mvn r2, #5
	cmp r0, r2
	subne r1, r2, #0x14
	cmpne r0, r1
	subne r1, r2, #0x46
	cmpne r0, r1
	beq _021F2C50
	ldr r2, _021F2C70 ; =0x02218C28
	mov r0, r5
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F2C50:
	mov r0, #0x67
	str r0, [r4, #0]
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_021F2C64: .word 0x02218A88
_021F2C68: .word 0x02218BCC
_021F2C6C: .word 0x02218BF4
_021F2C70: .word 0x02218C28
	arm_func_end ov4_021F2AE8

	arm_func_start ov4_021F2C74
ov4_021F2C74: ; 0x021F2C74
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	bne _021F2CA4
	ldr r0, _021F2DE4 ; =0x02218B98
	ldr r1, _021F2DE8 ; =0x02218B28
	ldr r2, _021F2DEC ; =0x022189F0
	mov r3, #0x340
	bl sub_020D407C
_021F2CA4:
	cmp r5, #0
	bne _021F2CC0
	ldr r0, _021F2DF0 ; =0x02218C50
	ldr r1, _021F2DE8 ; =0x02218B28
	ldr r2, _021F2DEC ; =0x022189F0
	ldr r3, _021F2DF4 ; =0x00000341
	bl sub_020D407C
_021F2CC0:
	mov r0, r5
	bl sub_020D8B60
	mov r4, r0
	add r1, sp, #0
	mov r3, #0
	str r3, [r1, #0x10]
	ldr r2, _021F2DF8 ; =0x02218C60
	mov r0, r8
	str r3, [r1, #0]
	str r3, [r1, #4]
	str r3, [r1, #8]
	str r3, [r1, #0xc]
	str r3, [r1, #0x14]
	str r6, [sp, #0x10]
	bl ov4_021ED5C4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r8
	mov r2, r6
	bl ov4_021ED5F4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _021F2DFC ; =0x02218C64
	add r1, sp, #0
	mov r0, r8
	bl ov4_021ED5C4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r8
	mov r2, r4
	bl ov4_021ED5F4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _021F2E00 ; =0x02218C6C
	add r1, sp, #0
	mov r0, r8
	bl ov4_021ED5C4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr ip, [sp, #8]
	add r1, sp, #0
	mov r0, r8
	mov r2, r5
	mov r3, r4
	str ip, [sp, #0x14]
	bl ov4_021ED4B8
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r8
	mov r2, #0
	bl ov4_021ED420
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x38]
	add r1, sp, #0
	bl ov4_021E9C2C
	mov r0, #0
	bl ov4_021EAF48
	add r0, r0, #0x12c
	str r0, [r7, #0x10]
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F2DE4: .word 0x02218B98
_021F2DE8: .word 0x02218B28
_021F2DEC: .word 0x022189F0
_021F2DF0: .word 0x02218C50
_021F2DF4: .word 0x00000341
_021F2DF8: .word 0x02218C60
_021F2DFC: .word 0x02218C64
_021F2E00: .word 0x02218C6C
	arm_func_end ov4_021F2C74

	arm_func_start ov4_021F2E04
ov4_021F2E04: ; 0x021F2E04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x48
	mov sb, r0
	mov r8, r1
	mov r7, r2
	cmp r3, #0
	ldr r5, [r3, #0]
	ldmib r3, {r4, r6}
	bne _021F2E3C
	ldr r0, _021F2E6C ; =0x02218C74
	ldr r1, _021F2E70 ; =0x02218B28
	ldr r2, _021F2E74 ; =0x02218A04
	ldr r3, _021F2E78 ; =0x00000376
	bl sub_020D407C
_021F2E3C:
	ldr r1, _021F2E7C ; =0x02218C80
	add r0, sp, #8
	mov r2, r7
	mov r3, r5
	stmia sp, {r4, r6}
	bl sub_020D7510
	add r2, sp, #8
	mov r0, sb
	mov r1, r8
	bl ov4_021ED8FC
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021F2E6C: .word 0x02218C74
_021F2E70: .word 0x02218B28
_021F2E74: .word 0x02218A04
_021F2E78: .word 0x00000376
_021F2E7C: .word 0x02218C80
	arm_func_end ov4_021F2E04

	arm_func_start ov4_021F2E80
ov4_021F2E80: ; 0x021F2E80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bne _021F2EB0
	ldr r0, _021F2F54 ; =0x02218B98
	ldr r1, _021F2F58 ; =0x02218B28
	ldr r2, _021F2F5C ; =0x02218A20
	ldr r3, _021F2F60 ; =0x00000389
	bl sub_020D407C
_021F2EB0:
	mvn r0, #0
	cmp r5, #0
	ldreq r5, _021F2F64 ; =0x02218C94
	cmp r4, r0
	bne _021F2ED0
	mov r0, r5
	bl sub_020D8B60
	mov r4, r0
_021F2ED0:
	ldr r1, _021F2F68 ; =0x02218C98
	add r0, sp, #0
	mov r2, r4
	bl sub_020D7510
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl ov4_021ED8FC
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov4_021ED7FC
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #0
	bl ov4_021ED71C
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	bl ov4_021EAF48
	add r0, r0, #0x12c
	str r0, [r6, #0x10]
	mov r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F2F54: .word 0x02218B98
_021F2F58: .word 0x02218B28
_021F2F5C: .word 0x02218A20
_021F2F60: .word 0x00000389
_021F2F64: .word 0x02218C94
_021F2F68: .word 0x02218C98
	arm_func_end ov4_021F2E80

	.data


	.global Unk_ov4_022189D0
Unk_ov4_022189D0: ; 0x022189D0
	.incbin "incbin/overlay4_data.bin", 0x2B50, 0x2B60 - 0x2B50

	.global Unk_ov4_022189E0
Unk_ov4_022189E0: ; 0x022189E0
	.incbin "incbin/overlay4_data.bin", 0x2B60, 0x2B70 - 0x2B60

	.global Unk_ov4_022189F0
Unk_ov4_022189F0: ; 0x022189F0
	.incbin "incbin/overlay4_data.bin", 0x2B70, 0x2B84 - 0x2B70

	.global Unk_ov4_02218A04
Unk_ov4_02218A04: ; 0x02218A04
	.incbin "incbin/overlay4_data.bin", 0x2B84, 0x2BA0 - 0x2B84

	.global Unk_ov4_02218A20
Unk_ov4_02218A20: ; 0x02218A20
	.incbin "incbin/overlay4_data.bin", 0x2BA0, 0x2BC0 - 0x2BA0

	.global Unk_ov4_02218A40
Unk_ov4_02218A40: ; 0x02218A40
	.incbin "incbin/overlay4_data.bin", 0x2BC0, 0x2BE4 - 0x2BC0

	.global Unk_ov4_02218A64
Unk_ov4_02218A64: ; 0x02218A64
	.incbin "incbin/overlay4_data.bin", 0x2BE4, 0x2C08 - 0x2BE4

	.global Unk_ov4_02218A88
Unk_ov4_02218A88: ; 0x02218A88
	.incbin "incbin/overlay4_data.bin", 0x2C08, 0x2C24 - 0x2C08

	.global Unk_ov4_02218AA4
Unk_ov4_02218AA4: ; 0x02218AA4
	.incbin "incbin/overlay4_data.bin", 0x2C24, 0x2C2C - 0x2C24

	.global Unk_ov4_02218AAC
Unk_ov4_02218AAC: ; 0x02218AAC
	.incbin "incbin/overlay4_data.bin", 0x2C2C, 0x2C34 - 0x2C2C

	.global Unk_ov4_02218AB4
Unk_ov4_02218AB4: ; 0x02218AB4
	.incbin "incbin/overlay4_data.bin", 0x2C34, 0x2C3C - 0x2C34

	.global Unk_ov4_02218ABC
Unk_ov4_02218ABC: ; 0x02218ABC
	.incbin "incbin/overlay4_data.bin", 0x2C3C, 0x2C44 - 0x2C3C

	.global Unk_ov4_02218AC4
Unk_ov4_02218AC4: ; 0x02218AC4
	.incbin "incbin/overlay4_data.bin", 0x2C44, 0x2C4C - 0x2C44

	.global Unk_ov4_02218ACC
Unk_ov4_02218ACC: ; 0x02218ACC
	.incbin "incbin/overlay4_data.bin", 0x2C4C, 0x2C50 - 0x2C4C

	.global Unk_ov4_02218AD0
Unk_ov4_02218AD0: ; 0x02218AD0
	.incbin "incbin/overlay4_data.bin", 0x2C50, 0x2C58 - 0x2C50

	.global Unk_ov4_02218AD8
Unk_ov4_02218AD8: ; 0x02218AD8
	.incbin "incbin/overlay4_data.bin", 0x2C58, 0x2C7C - 0x2C58

	.global Unk_ov4_02218AFC
Unk_ov4_02218AFC: ; 0x02218AFC
	.incbin "incbin/overlay4_data.bin", 0x2C7C, 0x2C84 - 0x2C7C

	.global Unk_ov4_02218B04
Unk_ov4_02218B04: ; 0x02218B04
	.incbin "incbin/overlay4_data.bin", 0x2C84, 0x2CA4 - 0x2C84

	.global Unk_ov4_02218B24
Unk_ov4_02218B24: ; 0x02218B24
	.incbin "incbin/overlay4_data.bin", 0x2CA4, 0x2CA8 - 0x2CA4

	.global Unk_ov4_02218B28
Unk_ov4_02218B28: ; 0x02218B28
	.incbin "incbin/overlay4_data.bin", 0x2CA8, 0x2CB4 - 0x2CA8

	.global Unk_ov4_02218B34
Unk_ov4_02218B34: ; 0x02218B34
	.incbin "incbin/overlay4_data.bin", 0x2CB4, 0x2CD4 - 0x2CB4

	.global Unk_ov4_02218B54
Unk_ov4_02218B54: ; 0x02218B54
	.incbin "incbin/overlay4_data.bin", 0x2CD4, 0x2CDC - 0x2CD4

	.global Unk_ov4_02218B5C
Unk_ov4_02218B5C: ; 0x02218B5C
	.incbin "incbin/overlay4_data.bin", 0x2CDC, 0x2CEC - 0x2CDC

	.global Unk_ov4_02218B6C
Unk_ov4_02218B6C: ; 0x02218B6C
	.incbin "incbin/overlay4_data.bin", 0x2CEC, 0x2CF0 - 0x2CEC

	.global Unk_ov4_02218B70
Unk_ov4_02218B70: ; 0x02218B70
	.incbin "incbin/overlay4_data.bin", 0x2CF0, 0x2D18 - 0x2CF0

	.global Unk_ov4_02218B98
Unk_ov4_02218B98: ; 0x02218B98
	.incbin "incbin/overlay4_data.bin", 0x2D18, 0x2D28 - 0x2D18

	.global Unk_ov4_02218BA8
Unk_ov4_02218BA8: ; 0x02218BA8
	.incbin "incbin/overlay4_data.bin", 0x2D28, 0x2D4C - 0x2D28

	.global Unk_ov4_02218BCC
Unk_ov4_02218BCC: ; 0x02218BCC
	.incbin "incbin/overlay4_data.bin", 0x2D4C, 0x2D74 - 0x2D4C

	.global Unk_ov4_02218BF4
Unk_ov4_02218BF4: ; 0x02218BF4
	.incbin "incbin/overlay4_data.bin", 0x2D74, 0x2DA8 - 0x2D74

	.global Unk_ov4_02218C28
Unk_ov4_02218C28: ; 0x02218C28
	.incbin "incbin/overlay4_data.bin", 0x2DA8, 0x2DD0 - 0x2DA8

	.global Unk_ov4_02218C50
Unk_ov4_02218C50: ; 0x02218C50
	.incbin "incbin/overlay4_data.bin", 0x2DD0, 0x2DE0 - 0x2DD0

	.global Unk_ov4_02218C60
Unk_ov4_02218C60: ; 0x02218C60
	.incbin "incbin/overlay4_data.bin", 0x2DE0, 0x2DE4 - 0x2DE0

	.global Unk_ov4_02218C64
Unk_ov4_02218C64: ; 0x02218C64
	.incbin "incbin/overlay4_data.bin", 0x2DE4, 0x2DEC - 0x2DE4

	.global Unk_ov4_02218C6C
Unk_ov4_02218C6C: ; 0x02218C6C
	.incbin "incbin/overlay4_data.bin", 0x2DEC, 0x2DF4 - 0x2DEC

	.global Unk_ov4_02218C74
Unk_ov4_02218C74: ; 0x02218C74
	.incbin "incbin/overlay4_data.bin", 0x2DF4, 0x2E00 - 0x2DF4

	.global Unk_ov4_02218C80
Unk_ov4_02218C80: ; 0x02218C80
	.incbin "incbin/overlay4_data.bin", 0x2E00, 0x2E14 - 0x2E00

	.global Unk_ov4_02218C94
Unk_ov4_02218C94: ; 0x02218C94
	.incbin "incbin/overlay4_data.bin", 0x2E14, 0x2E18 - 0x2E14

	.global Unk_ov4_02218C98
Unk_ov4_02218C98: ; 0x02218C98
	.incbin "incbin/overlay4_data.bin", 0x2E18, 0xE

