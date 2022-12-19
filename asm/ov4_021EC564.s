	.include "macros/function.inc"
	.include "include/ov4_021EC564.inc"

	

	.text


	arm_func_start ov4_021EC564
ov4_021EC564: ; 0x021EC564
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0]
	ldr r2, _021EC5F8 ; =0x02217CB0
	mov r5, r1
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, _021EC5FC ; =0x02217CBC
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r4, #0x198]
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	ldr r2, _021EC600 ; =0x02217CC8
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, [r5, #0]
	bl ov4_021ED5F4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021EC604 ; =0x02217CD8
	bl ov4_021ED5C4
	ldr r2, [r5, #0x10]
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021EC608 ; =0x02217CE0
	bl ov4_021ED5C4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021EC5F8: .word 0x02217CB0
_021EC5FC: .word 0x02217CBC
_021EC600: .word 0x02217CC8
_021EC604: .word 0x02217CD8
_021EC608: .word 0x02217CE0
	arm_func_end ov4_021EC564

	arm_func_start ov4_021EC60C
ov4_021EC60C: ; 0x021EC60C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x138
	sub sp, sp, #0x1000
	mov r7, r1
	mov sl, r0
	ldr r1, _021ECF80 ; =0x02217CE8
	add r2, sp, #0x138
	mov r0, r7
	mov r3, #0x1000
	ldr r8, [sl]
	bl ov4_021F5978
	cmp r0, #0
	bne _021EC670
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC670:
	add r0, sp, #0x138
	bl sub_020DAE0C
	mov r4, r0
	ldr r1, _021ECF88 ; =0x02217D20
	add r2, sp, #0x138
	mov r0, r7
	mov r3, #0x1000
	bl ov4_021F5978
	cmp r0, #0
	bne _021EC6C8
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC6C8:
	add r0, sp, #0x138
	bl sub_020DAE0C
	mov r6, r0
	ldr r1, _021ECF8C ; =0x02217D24
	add r2, sp, #0x138
	mov r0, r7
	mov r3, #0x1000
	bl ov4_021F5978
	cmp r0, #0
	beq _021EC6FC
	add r0, sp, #0x138
	bl sub_020DAE0C
	b _021EC704
_021EC6FC:
	mov r0, #0
	bl ov4_021EAF48
_021EC704:
	mov sb, r0
	cmp r4, #0x64
	bgt _021EC734
	bge _021ECA20
	cmp r4, #2
	bgt _021ECF70
	cmp r4, #1
	blt _021ECF70
	beq _021EC754
	cmp r4, #2
	beq _021EC860
	b _021ECF70
_021EC734:
	cmp r4, #0x66
	bgt _021ECF70
	cmp r4, #0x65
	blt _021ECF70
	beq _021ECD80
	cmp r4, #0x66
	beq _021ECF10
	b _021ECF70
_021EC754:
	ldr r1, [r8, #0x1bc]
	ldr r0, [r8, #0x1c0]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	cmp r1, #0
	beq _021ECF70
	mov r0, #0xc
	bl ov4_021D7880
	movs r4, r0
	bne _021EC798
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC798:
	ldr r1, _021ECF94 ; =0x02217D3C
	add r2, sp, #0x138
	mov r0, r7
	mov r3, #0x1000
	bl ov4_021F5978
	cmp r0, #0
	bne _021EC7E4
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC7E4:
	add r0, sp, #0x138
	bl sub_020D8B60
	add r0, r0, #1
	bl ov4_021D7880
	str r0, [r4, #8]
	cmp r0, #0
	bne _021EC81C
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC81C:
	add r1, sp, #0x138
	bl sub_020D8B7C
	stmia r4, {r6, sb}
	mov r2, #0
	str r2, [sp]
	mov r2, #2
	add r1, sp, #0x20
	str r2, [sp, #4]
	mov r0, sl
	mov r3, r4
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021ECF70
	add sp, sp, #0x138
	add sp, sp, #0x1000
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC860:
	mov r0, sl
	mov r1, r6
	bl ov4_021F31C4
	movs r5, r0
	bne _021EC890
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC890:
	ldr r1, _021ECF94 ; =0x02217D3C
	add r2, sp, #0x138
	mov r0, r7
	mov r3, #0x1000
	bl ov4_021F5978
	cmp r0, #0
	bne _021EC8DC
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC8DC:
	ldr r1, _021ECF98 ; =0x02217D44
	add r0, sp, #0x138
	bl sub_020D90B0
	movs r4, r0
	bne _021EC920
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC920:
	mov r1, #0
	add r0, r4, #8
	strb r1, [r4]
	bl sub_020D8B60
	cmp r0, #0x20
	beq _021EC968
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC968:
	ldr r0, [r5, #0x10]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r5, #0x10]
	add r0, r4, #8
	bl ov4_021EA8AC
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	ldr r1, [r8, #0x1ac]
	ldr r0, [r8, #0x1b0]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _021ECF70
	ldr r0, _021ECF9C ; =0x0000040C
	bl ov4_021D7880
	movs r4, r0
	bne _021EC9D4
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC9D4:
	ldr r2, _021ECFA0 ; =0x00000401
	add r1, sp, #0x138
	add r0, r4, #8
	bl ov4_021F5820
	stmia r4, {r6, sb}
	mov r2, #0
	str r2, [sp]
	mov r2, #6
	add r1, sp, #8
	str r2, [sp, #4]
	mov r0, sl
	mov r3, r4
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021ECF70
	add sp, sp, #0x138
	add sp, sp, #0x1000
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECA20:
	mov r0, sl
	mov r1, r6
	bl ov4_021F31C4
	movs r4, r0
	bne _021ECA50
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECA50:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021ECAC4
	mov r0, #0x18
	bl ov4_021D7880
	str r0, [r4, #8]
	cmp r0, #0
	bne _021ECA8C
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECA8C:
	mov r2, #6
	mov r1, #0
_021ECA94:
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	add r0, r0, #4
	subs r2, r2, #1
	bne _021ECA94
	ldr r1, [r8, #0x430]
	add r0, r1, #1
	str r0, [r8, #0x430]
	ldr r0, [r4, #8]
	str r1, [r0, #0]
_021ECAC4:
	ldr r1, _021ECF94 ; =0x02217D3C
	mov r0, r7
	add r2, sp, #0x138
	mov r3, #0x1000
	ldr r7, [r4, #8]
	bl ov4_021F5978
	cmp r0, #0
	bne _021ECB14
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECB14:
	ldr r1, _021ECFA4 ; =0x02217D50
	add r0, sp, #0x138
	add r2, sp, #0x28
	mov r3, #0x10
	bl ov4_021F5978
	cmp r0, #0
	bne _021ECB60
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECB60:
	add r0, sp, #0x28
	bl sub_020DAE0C
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r7, #8]
	ldr r1, _021ECFA8 ; =0x02217D54
	add r0, sp, #0x138
	add r2, sp, #0x38
	mov r3, #0x100
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x38]
	add r0, sp, #0x38
	bl ov4_021EA8AC
	str r0, [r7, #8]
	cmp r0, #0
	bne _021ECBCC
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECBCC:
	ldr r0, [r7, #0xc]
	bl ov4_021D78B0
	mov r4, #0
	ldr r1, _021ECFAC ; =0x02217D5C
	add r0, sp, #0x138
	add r2, sp, #0x38
	mov r3, #0x100
	str r4, [r7, #0xc]
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, r4
	streqb r0, [sp, #0x38]
	add r0, sp, #0x38
	bl ov4_021EA8AC
	str r0, [r7, #0xc]
	cmp r0, #0
	bne _021ECC2C
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECC2C:
	ldr r1, _021ECFB0 ; =0x02217D64
	add r0, sp, #0x138
	add r2, sp, #0x28
	mov r3, #0x10
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	beq _021ECCA4
	add r0, sp, #0x28
	bl sub_020DAE0C
	mov r5, r0
	add r0, sp, #0x28
	bl sub_020DAE0C
	mov fp, r0
	add r0, sp, #0x28
	bl sub_020DAE0C
	mov r4, r0
	add r0, sp, #0x28
	bl sub_020DAE0C
	mov r1, r4, lsr #0x18
	mov r0, r0, lsr #8
	mov r2, fp, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r5, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
_021ECCA4:
	ldr r1, _021ECFB4 ; =0x02217D6C
	str r0, [r7, #0x10]
	add r0, sp, #0x138
	add r2, sp, #0x28
	mov r3, #0x10
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	beq _021ECCF4
	add r0, sp, #0x28
	bl sub_020DAE0C
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
_021ECCF4:
	str r0, [r7, #0x14]
	ldr r1, [r8, #0x1b4]
	ldr r0, [r8, #0x1b8]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r1, #0
	beq _021ECF70
	mov r0, #0xc
	bl ov4_021D7880
	movs r3, r0
	bne _021ECD3C
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECD3C:
	str r6, [r3, #0]
	ldr r0, [r7, #0]
	mov r2, #0
	str r0, [r3, #8]
	str sb, [r3, #4]
	str r2, [sp]
	mov r2, #5
	add r1, sp, #0x10
	str r2, [sp, #4]
	mov r0, sl
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021ECF70
	add sp, sp, #0x138
	add sp, sp, #0x1000
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECD80:
	ldr r1, _021ECF94 ; =0x02217D3C
	add r2, sp, #0x138
	mov r0, r7
	mov r3, #0x1000
	bl ov4_021F5978
	cmp r0, #0
	bne _021ECDCC
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECDCC:
	ldr r1, _021ECFB4 ; =0x02217D6C
	add r0, sp, #0x138
	bl sub_020D90B0
	cmp r0, #0
	bne _021ECE10
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECE10:
	ldrsb r1, [r0, #3]
	cmp r1, #0
	bne _021ECE4C
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECE4C:
	add r0, r0, #3
	bl sub_020DAE0C
	mov r4, r0
	ldr r1, _021ECFB8 ; =0x02217D70
	add r0, sp, #0x138
	bl sub_020D90B0
	movs r1, r0
	moveq r0, #0
	streqb r0, [sp, #0x38]
	beq _021ECE84
	add r0, sp, #0x38
	add r1, r1, #3
	mov r2, #0x100
	bl ov4_021F5820
_021ECE84:
	ldr r1, [r8, #0x1c4]
	ldr r0, [r8, #0x1c8]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	cmp r1, #0
	beq _021ECF70
	mov r0, #0x108
	bl ov4_021D7880
	movs r5, r0
	bne _021ECEC8
	ldr r1, _021ECF90 ; =0x02217D2C
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECEC8:
	str r6, [r5, #0]
	add r1, sp, #0x38
	add r0, r5, #8
	str r4, [r5, #4]
	bl sub_020D8B7C
	mov r2, #0
	str r2, [sp]
	add r1, sp, #0x18
	str r2, [sp, #4]
	mov r0, sl
	mov r3, r5
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021ECF70
	add sp, sp, #0x138
	add sp, sp, #0x1000
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECF10:
	ldr r1, _021ECF94 ; =0x02217D3C
	add r2, sp, #0x138
	mov r0, r7
	mov r3, #0x1000
	bl ov4_021F5978
	cmp r0, #0
	bne _021ECF5C
	ldr r2, _021ECF84 ; =0x02217CF0
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x138
	add sp, sp, #0x1000
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ECF5C:
	ldr r3, _021ECFBC ; =0x02217D74
	mov r0, sl
	mov r1, r6
	mov r2, #0x67
	bl ov4_021ED09C
_021ECF70:
	mov r0, #0
	add sp, sp, #0x138
	add sp, sp, #0x1000
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021ECF80: .word 0x02217CE8
_021ECF84: .word 0x02217CF0
_021ECF88: .word 0x02217D20
_021ECF8C: .word 0x02217D24
_021ECF90: .word 0x02217D2C
_021ECF94: .word 0x02217D3C
_021ECF98: .word 0x02217D44
_021ECF9C: .word 0x0000040C
_021ECFA0: .word 0x00000401
_021ECFA4: .word 0x02217D50
_021ECFA8: .word 0x02217D54
_021ECFAC: .word 0x02217D5C
_021ECFB0: .word 0x02217D64
_021ECFB4: .word 0x02217D6C
_021ECFB8: .word 0x02217D70
_021ECFBC: .word 0x02217D74
	arm_func_end ov4_021EC60C

	arm_func_start ov4_021ECFC0
ov4_021ECFC0: ; 0x021ECFC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xdb0
	mov r7, r0
	mov r5, r2
	mov r6, r1
	ldr r2, _021ED084 ; =0x00000DAD
	add r0, sp, #0
	mov r1, r3
	ldr r4, [r7, #0]
	bl ov4_021F5820
	ldr r2, _021ED088 ; =0x02217CE8
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, r7
	mov r2, r5
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	ldr r2, _021ED08C ; =0x02217CBC
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r4, #0x198]
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	ldr r2, _021ED090 ; =0x02217D78
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r2, r6
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	ldr r2, _021ED094 ; =0x02217D3C
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, r7
	add r1, r4, #0x1f4
	add r2, sp, #0
	bl ov4_021ED5C4
	ldr r2, _021ED098 ; =0x02217CE0
	mov r0, r7
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, #0
	add sp, sp, #0xdb0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021ED084: .word 0x00000DAD
_021ED088: .word 0x02217CE8
_021ED08C: .word 0x02217CBC
_021ED090: .word 0x02217D78
_021ED094: .word 0x02217D3C
_021ED098: .word 0x02217CE0
	arm_func_end ov4_021ECFC0

	arm_func_start ov4_021ED09C
ov4_021ED09C: ; 0x021ED09C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021F29B0
	movs r8, r0
	bne _021ED160
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl ov4_021F32A8
	cmp r0, #0
	ldrne r0, [sp]
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r0, [r0, #0x14]
	cmpne r0, #0
	mov r0, r7
	bne _021ED108
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov4_021ECFC0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021ED108:
	mov r1, r6
	mov r2, #1
	bl ov4_021F2A04
	movs r8, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp]
	mov r1, r8
	ldr r0, [r0, #0x18]
	cmp r0, #0
	mov r0, r7
	bne _021ED150
	bl ov4_021F2A84
	cmp r0, #0
	beq _021ED160
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021ED150:
	bl ov4_021F2AE8
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021ED160:
	mov r0, r7
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl ov4_021F2C74
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_021ED09C

	arm_func_start ov4_021ED184
ov4_021ED184: ; 0x021ED184
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r2, sp, #0
	ldr r5, [r4, #0]
	bl ov4_021F32A8
	cmp r0, #0
	bne _021ED1B4
	ldr r1, _021ED24C ; =0x02217D7C
	mov r0, r4
	bl ov4_021F5D68
	mov r0, #2
	ldmia sp!, {r3, r4, r5, pc}
_021ED1B4:
	ldr r1, [sp]
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _021ED1D8
	ldr r1, _021ED24C ; =0x02217D7C
	mov r0, r4
	bl ov4_021F5D68
	mov r0, #2
	ldmia sp!, {r3, r4, r5, pc}
_021ED1D8:
	mov r0, r4
	bl ov4_021EC564
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	sub r0, r0, #1
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x100]
	cmp r0, #0
	bne _021ED244
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bgt _021ED244
	ldr r0, [r1, #0x10]
	bl ov4_021D78B0
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [sp]
	bl ov4_021F3490
	cmp r0, #0
	beq _021ED244
	ldr r1, [sp]
	mov r0, r4
	bl ov4_021F3318
_021ED244:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021ED24C: .word 0x02217D7C
	arm_func_end ov4_021ED184

	arm_func_start ov4_021ED250
ov4_021ED250: ; 0x021ED250
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _021ED26C
	ldr r0, [r1, #0]
	cmp r0, r2
	subgt r0, r0, #1
	strgt r0, [r1]
_021ED26C:
	mov r0, #1
	bx lr
	arm_func_end ov4_021ED250

	arm_func_start ov4_021ED274
ov4_021ED274: ; 0x021ED274
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	add r2, sp, #0
	ldr r4, [r6, #0]
	bl ov4_021F32A8
	cmp r0, #0
	bne _021ED2AC
	ldr r1, _021ED3F4 ; =0x02217D7C
	mov r0, r6
	bl ov4_021F5D68
	add sp, sp, #4
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, pc}
_021ED2AC:
	ldr r2, _021ED3F8 ; =0x02217D90
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, _021ED3FC ; =0x02217CBC
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	ldr r2, [r4, #0x198]
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5F4
	ldr r2, _021ED400 ; =0x02217D9C
	mov r0, r6
	add r1, r4, #0x1f4
	bl ov4_021ED5C4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, [sp]
	ldr r2, [r2, #0]
	bl ov4_021ED5F4
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021ED404 ; =0x02217CE0
	bl ov4_021ED5C4
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021ED3E8
	ldr r5, [r0, #0]
	cmp r5, #0
	bge _021ED340
	ldr r0, _021ED408 ; =0x02217DAC
	ldr r1, _021ED40C ; =0x02217DB8
	ldr r2, _021ED410 ; =0x02217CA0
	ldr r3, _021ED414 ; =0x000001FD
	bl sub_020D407C
_021ED340:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bl ov4_021D78B0
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #8]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl ov4_021D78B0
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl ov4_021D78B0
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [sp]
	bl ov4_021F3490
	cmp r0, #0
	beq _021ED3B4
	ldr r1, [sp]
	mov r0, r6
	bl ov4_021F3318
_021ED3B4:
	ldr r0, [r4, #0x430]
	subs r0, r0, #1
	str r0, [r4, #0x430]
	bpl _021ED3D8
	ldr r0, _021ED418 ; =0x02217DC4
	ldr r1, _021ED40C ; =0x02217DB8
	ldr r2, _021ED410 ; =0x02217CA0
	mov r3, #0x204
	bl sub_020D407C
_021ED3D8:
	ldr r1, _021ED41C ; =ov4_021ED250
	mov r0, r6
	mov r2, r5
	bl ov4_021F33F4
_021ED3E8:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021ED3F4: .word 0x02217D7C
_021ED3F8: .word 0x02217D90
_021ED3FC: .word 0x02217CBC
_021ED400: .word 0x02217D9C
_021ED404: .word 0x02217CE0
_021ED408: .word 0x02217DAC
_021ED40C: .word 0x02217DB8
_021ED410: .word 0x02217CA0
_021ED414: .word 0x000001FD
_021ED418: .word 0x02217DC4
_021ED41C: .word ov4_021ED250
	arm_func_end ov4_021ED274

	.data


	.global Unk_ov4_02217CA0
Unk_ov4_02217CA0: ; 0x02217CA0
	.incbin "incbin/overlay4_data.bin", 0x1E20, 0x1E30 - 0x1E20

	.global Unk_ov4_02217CB0
Unk_ov4_02217CB0: ; 0x02217CB0
	.incbin "incbin/overlay4_data.bin", 0x1E30, 0x1E3C - 0x1E30

	.global Unk_ov4_02217CBC
Unk_ov4_02217CBC: ; 0x02217CBC
	.incbin "incbin/overlay4_data.bin", 0x1E3C, 0x1E48 - 0x1E3C

	.global Unk_ov4_02217CC8
Unk_ov4_02217CC8: ; 0x02217CC8
	.incbin "incbin/overlay4_data.bin", 0x1E48, 0x1E58 - 0x1E48

	.global Unk_ov4_02217CD8
Unk_ov4_02217CD8: ; 0x02217CD8
	.incbin "incbin/overlay4_data.bin", 0x1E58, 0x1E60 - 0x1E58

	.global Unk_ov4_02217CE0
Unk_ov4_02217CE0: ; 0x02217CE0
	.incbin "incbin/overlay4_data.bin", 0x1E60, 0x1E68 - 0x1E60

	.global Unk_ov4_02217CE8
Unk_ov4_02217CE8: ; 0x02217CE8
	.incbin "incbin/overlay4_data.bin", 0x1E68, 0x1E70 - 0x1E68

	.global Unk_ov4_02217CF0
Unk_ov4_02217CF0: ; 0x02217CF0
	.incbin "incbin/overlay4_data.bin", 0x1E70, 0x1EA0 - 0x1E70

	.global Unk_ov4_02217D20
Unk_ov4_02217D20: ; 0x02217D20
	.incbin "incbin/overlay4_data.bin", 0x1EA0, 0x1EA4 - 0x1EA0

	.global Unk_ov4_02217D24
Unk_ov4_02217D24: ; 0x02217D24
	.incbin "incbin/overlay4_data.bin", 0x1EA4, 0x1EAC - 0x1EA4

	.global Unk_ov4_02217D2C
Unk_ov4_02217D2C: ; 0x02217D2C
	.incbin "incbin/overlay4_data.bin", 0x1EAC, 0x1EBC - 0x1EAC

	.global Unk_ov4_02217D3C
Unk_ov4_02217D3C: ; 0x02217D3C
	.incbin "incbin/overlay4_data.bin", 0x1EBC, 0x1EC4 - 0x1EBC

	.global Unk_ov4_02217D44
Unk_ov4_02217D44: ; 0x02217D44
	.incbin "incbin/overlay4_data.bin", 0x1EC4, 0x1ED0 - 0x1EC4

	.global Unk_ov4_02217D50
Unk_ov4_02217D50: ; 0x02217D50
	.incbin "incbin/overlay4_data.bin", 0x1ED0, 0x1ED4 - 0x1ED0

	.global Unk_ov4_02217D54
Unk_ov4_02217D54: ; 0x02217D54
	.incbin "incbin/overlay4_data.bin", 0x1ED4, 0x1EDC - 0x1ED4

	.global Unk_ov4_02217D5C
Unk_ov4_02217D5C: ; 0x02217D5C
	.incbin "incbin/overlay4_data.bin", 0x1EDC, 0x1EE4 - 0x1EDC

	.global Unk_ov4_02217D64
Unk_ov4_02217D64: ; 0x02217D64
	.incbin "incbin/overlay4_data.bin", 0x1EE4, 0x1EEC - 0x1EE4

	.global Unk_ov4_02217D6C
Unk_ov4_02217D6C: ; 0x02217D6C
	.incbin "incbin/overlay4_data.bin", 0x1EEC, 0x1EF0 - 0x1EEC

	.global Unk_ov4_02217D70
Unk_ov4_02217D70: ; 0x02217D70
	.incbin "incbin/overlay4_data.bin", 0x1EF0, 0x1EF4 - 0x1EF0

	.global Unk_ov4_02217D74
Unk_ov4_02217D74: ; 0x02217D74
	.incbin "incbin/overlay4_data.bin", 0x1EF4, 0x1EF8 - 0x1EF4

	.global Unk_ov4_02217D78
Unk_ov4_02217D78: ; 0x02217D78
	.incbin "incbin/overlay4_data.bin", 0x1EF8, 0x1EFC - 0x1EF8

	.global Unk_ov4_02217D7C
Unk_ov4_02217D7C: ; 0x02217D7C
	.incbin "incbin/overlay4_data.bin", 0x1EFC, 0x1F10 - 0x1EFC

	.global Unk_ov4_02217D90
Unk_ov4_02217D90: ; 0x02217D90
	.incbin "incbin/overlay4_data.bin", 0x1F10, 0x1F1C - 0x1F10

	.global Unk_ov4_02217D9C
Unk_ov4_02217D9C: ; 0x02217D9C
	.incbin "incbin/overlay4_data.bin", 0x1F1C, 0x1F2C - 0x1F1C

	.global Unk_ov4_02217DAC
Unk_ov4_02217DAC: ; 0x02217DAC
	.incbin "incbin/overlay4_data.bin", 0x1F2C, 0x1F38 - 0x1F2C

	.global Unk_ov4_02217DB8
Unk_ov4_02217DB8: ; 0x02217DB8
	.incbin "incbin/overlay4_data.bin", 0x1F38, 0x1F44 - 0x1F38

	.global Unk_ov4_02217DC4
Unk_ov4_02217DC4: ; 0x02217DC4
	.incbin "incbin/overlay4_data.bin", 0x1F44, 0x29

