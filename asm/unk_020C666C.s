	.include "macros/function.inc"
	.include "include/unk_020C666C.inc"

	

	.text


	arm_func_start sub_020C666C
sub_020C666C: ; 0x020C666C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020C3D98
	ldr r1, [r5, #0]
	mov r6, r0
	ldr r0, [r5, #4]
	cmp r1, #0
	strne r0, [r1, #4]
	cmp r0, #0
	strne r1, [r0]
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #4]
	ldr r1, [r5, #0xc]
	add r0, r5, #0x18
	bic r1, r1, #0x4f
	str r1, [r5, #0xc]
	str r4, [r5, #0x14]
	bl sub_020C2268
	mov r0, r6
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C666C

	arm_func_start sub_020C66C8
sub_020C66C8: ; 0x020C66C8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0xc]
	ldr r5, [r8, #8]
	mov r7, r1
	mov r1, #1
	tst r0, #4
	mov r6, r1, lsl r7
	moveq r1, #0
	ldr r0, [r5, #0x1c]
	cmp r1, #0
	orrne r0, r0, #0x200
	orreq r0, r0, #0x100
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x58]
	tst r0, r6
	beq _020C6770
	ldr r2, [r5, #0x54]
	mov r0, r8
	mov r1, r7
	blx r2
	mov r4, r0
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _020C6774
_020C672C: ; jump table
	b _020C6750 ; case 0
	b _020C6750 ; case 1
	b _020C6774 ; case 2
	b _020C6774 ; case 3
	b _020C6750 ; case 4
	b _020C6774 ; case 5
	b _020C6774 ; case 6
	b _020C6774 ; case 7
	b _020C6758 ; case 8
_020C6750:
	str r4, [r8, #0x14]
	b _020C6774
_020C6758:
	ldr r1, [r5, #0x58]
	mvn r0, r6
	and r0, r1, r0
	str r0, [r5, #0x58]
	mov r4, #7
	b _020C6774
_020C6770:
	mov r4, #7
_020C6774:
	cmp r4, #7
	bne _020C6790
	ldr r1, _020C6854 ; =0x020FE484
	mov r0, r8
	ldr r1, [r1, r7, lsl #2]
	blx r1
	mov r4, r0
_020C6790:
	cmp r4, #6
	bne _020C6808
	ldr r0, [r8, #0xc]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C684C
	bl sub_020C3D98
	ldr r1, [r5, #0x1c]
	mov r7, r0
	tst r1, #0x200
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C67F8
	mov r4, #0
	mov r6, #1
_020C67D8:
	add r0, r5, #0xc
	bl sub_020C2218
	ldr r0, [r5, #0x1c]
	tst r0, #0x200
	movne r0, r6
	moveq r0, r4
	cmp r0, #0
	bne _020C67D8
_020C67F8:
	mov r0, r7
	ldr r4, [r8, #0x14]
	bl sub_020C3DAC
	b _020C684C
_020C6808:
	ldr r0, [r8, #0xc]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C683C
	ldr r1, [r5, #0x1c]
	mov r0, r8
	bic r2, r1, #0x100
	mov r1, r4
	str r2, [r5, #0x1c]
	bl sub_020C666C
	b _020C684C
_020C683C:
	ldr r0, [r5, #0x1c]
	bic r0, r0, #0x200
	str r0, [r5, #0x1c]
	str r4, [r8, #0x14]
_020C684C:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C6854: .word 0x020FE484
	arm_func_end sub_020C66C8