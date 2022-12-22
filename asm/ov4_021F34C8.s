	.include "macros/function.inc"
	.include "include/ov4_021F34C8.inc"

	

	.text


	arm_func_start ov4_021F34C8
ov4_021F34C8: ; 0x021F34C8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	ldr r4, [r5, #4]
	mov r1, #0x1000
	mov r6, r0
	add r0, r1, #1
	str r1, [r4, #0xc]
	bl ov4_021D7880
	str r0, [r4, #8]
	cmp r0, #0
	bne _021F3510
	ldr r1, _021F36A0 ; =0x02218DA8
	mov r0, r6
	bl ov4_021F5D68
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021F3510:
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl ov4_021EACDC
	mvn r1, #0
	str r0, [r4, #4]
	cmp r0, r1
	bne _021F355C
	ldr r2, _021F36A4 ; =0x02218DB8
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F355C:
	mov r1, #0
	bl ov4_021EA924
	cmp r0, #0
	bne _021F3598
	ldr r2, _021F36A8 ; =0x02218DE0
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F3598:
	ldr r0, _021F36AC ; =0x02218D68
	bl ov4_0220854C
	cmp r0, #0
	bne _021F35D4
	ldr r2, _021F36B0 ; =0x02218E14
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F35D4:
	add r3, sp, #0
	mov r2, #0
	str r2, [r3, #0]
	mov r1, #2
	str r2, [r3, #4]
	strb r1, [sp, #1]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	cmp r0, #0
	bne _021F3618
	ldr r0, _021F36B4 ; =0x02218E44
	ldr r1, _021F36B8 ; =0x02218E64
	ldr r2, _021F36BC ; =0x02218D50
	mov r3, #0x59
	bl __msl_assertion_failed
_021F3618:
	ldr r0, _021F36C0 ; =0x0000CD74
	add r1, sp, #0
	strh r0, [sp, #2]
	ldr r0, [r4, #4]
	mov r2, #8
	bl ov4_021EAD78
	mvn r1, #0
	cmp r0, r1
	bne _021F368C
	ldr r0, [r4, #4]
	bl ov4_021EAF38
	mvn r2, #5
	cmp r0, r2
	subne r1, r2, #0x14
	cmpne r0, r1
	subne r1, r2, #0x46
	cmpne r0, r1
	beq _021F368C
	ldr r2, _021F36C4 ; =0x02218E70
	mov r0, r6
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F368C:
	mov r0, #1
	str r0, [r5, #0x14]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F36A0: .word 0x02218DA8
_021F36A4: .word 0x02218DB8
_021F36A8: .word 0x02218DE0
_021F36AC: .word 0x02218D68
_021F36B0: .word 0x02218E14
_021F36B4: .word 0x02218E44
_021F36B8: .word 0x02218E64
_021F36BC: .word 0x02218D50
_021F36C0: .word 0x0000CD74
_021F36C4: .word 0x02218E70
	arm_func_end ov4_021F34C8

	arm_func_start ov4_021F36C8
ov4_021F36C8: ; 0x021F36C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x144
	mov r6, r1
	mov r5, r2
	bl ov4_021D7880
	movs r4, r0
	bne _021F36FC
	ldr r1, _021F3774 ; =0x02218DA8
	mov r0, r7
	bl ov4_021F5D68
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F36FC:
	mov r1, #0
	mov r2, #0x144
	bl memset
	str r5, [r4, #0]
	mvn r0, #0
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0xc]
	str r0, [r4, #0x20]
	mov r1, #0x1000
	str r0, [r4, #0x24]
	add r0, r1, #1
	str r1, [r4, #0x1c]
	bl ov4_021D7880
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _021F3760
	ldr r1, _021F3774 ; =0x02218DA8
	mov r0, r7
	bl ov4_021F5D68
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F3760:
	mov r0, #0
	str r0, [r4, #0x13c]
	str r0, [r4, #0x140]
	str r4, [r6, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F3774: .word 0x02218DA8
	arm_func_end ov4_021F36C8

	arm_func_start ov4_021F3778
ov4_021F3778: ; 0x021F3778
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r4, [r5, #0]
	ldr ip, [sp, #0x20]
	ldr lr, [r4, #0x210]
	add lr, lr, #1
	str lr, [r4, #0x210]
	stmia sp, {r2, r3}
	mov r2, r1
	add r3, sp, #0xc
	mov r1, #3
	str ip, [sp, #8]
	bl ov4_021F1A54
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0xc]
	mov r0, r5
	bl ov4_021F34C8
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021F37FC
	ldr r1, [r1, #0x18]
	mov r0, r5
	bl ov4_021EC3B0
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, pc}
_021F37FC:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021F3778

	arm_func_start ov4_021F3808
ov4_021F3808: ; 0x021F3808
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	movs r8, r1
	mov sb, r0
	ldrnesb r0, [r8]
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	cmpne r0, #0
	bne _021F3898
	cmp r6, #0
	ldrnesb r0, [r6]
	cmpne r0, #0
	bne _021F3898
	cmp r5, #0
	ldrnesb r0, [r5]
	cmpne r0, #0
	bne _021F3898
	cmp r4, #0
	ldrnesb r0, [r4]
	cmpne r0, #0
	bne _021F3898
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _021F3898
	cmp r7, #0
	ldrnesb r0, [r7]
	cmpne r0, #0
	bne _021F3898
	ldr r1, _021F39F0 ; =0x02218E98
	mov r0, sb
	bl ov4_021F5D68
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F3898:
	add r1, sp, #4
	mov r0, sb
	mov r2, #1
	bl ov4_021F36C8
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r8, #0
	bne _021F38CC
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, #0x28]
	b _021F38E0
_021F38CC:
	ldr r0, [sp, #4]
	mov r1, r8
	add r0, r0, #0x28
	mov r2, #0x1f
	bl ov4_021F5820
_021F38E0:
	cmp r7, #0
	bne _021F38F8
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, #0x47]
	b _021F390C
_021F38F8:
	ldr r0, [sp, #4]
	mov r1, r7
	add r0, r0, #0x47
	mov r2, #0x15
	bl ov4_021F5820
_021F390C:
	cmp r6, #0
	bne _021F3924
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, #0x5c]
	b _021F3938
_021F3924:
	ldr r0, [sp, #4]
	mov r1, r6
	add r0, r0, #0x5c
	mov r2, #0x33
	bl ov4_021F5820
_021F3938:
	ldr r0, [sp, #4]
	add r0, r0, #0x5c
	bl ov4_021EA8E0
	cmp r5, #0
	bne _021F395C
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, #0x8f]
	b _021F3970
_021F395C:
	ldr r0, [sp, #4]
	mov r1, r5
	add r0, r0, #0x8f
	mov r2, #0x1f
	bl ov4_021F5820
_021F3970:
	cmp r4, #0
	bne _021F3988
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, #0xae]
	b _021F399C
_021F3988:
	ldr r0, [sp, #4]
	mov r1, r4
	add r0, r0, #0xae
	mov r2, #0x1f
	bl ov4_021F5820
_021F399C:
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #4]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [sp, #0x34]
	str r2, [r1, #0x130]
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x40]
	str r2, [r1, #0x134]
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	mov r0, sb
	bl ov4_021F3778
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021F39F0: .word 0x02218E98
	arm_func_end ov4_021F3808

	arm_func_start ov4_021F39F4
ov4_021F39F4: ; 0x021F39F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x490
	mov sl, r0
	ldr r0, [sl]
	str r1, [sp, #0x1c]
	ldr r1, [r1, #8]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	cmp r1, #0
	movne r4, #1
	ldr r6, [r0, #4]
	moveq r4, #0
_021F3A24:
	mov r1, #1
	ldr r0, _021F482C ; =0x02218EAC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r3, sp, #0x68
	mov r0, sl
	add r2, r6, #0x18
	bl ov4_021EDB54
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _021F4088
	ldr r1, [r6, #4]
	add r2, sp, #0x7c
	mov r0, sl
	bl ov4_021F5A80
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x7c]
	cmp r0, #4
	bne _021F3AB8
	ldr r1, _021F4830 ; =0x00000D01
	ldr r2, _021F4834 ; =0x02218EB0
	mov r0, sl
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #4
	mov r2, #0
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F3AB8:
	cmp r0, #3
	bne _021F5444
	ldr r0, [r6, #0]
	cmp r0, #1
	bne _021F3C80
	ldr r2, _021F4838 ; =0x02218EDC
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F483C ; =0x02218EE8
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r0, [sp, #0x28]
	add r1, r6, #0x18
	ldr r2, [r0, #0x198]
	mov r0, sl
	bl ov4_021ED5F4
	ldr r2, _021F4840 ; =0x02218EF4
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [sp, #0x28]
	mov r0, sl
	ldr r2, [r2, #0x1a0]
	add r1, r6, #0x18
	bl ov4_021ED5F4
	ldr r2, _021F4844 ; =0x02218F00
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [sp, #0x28]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, r6, #0x18
	bl ov4_021ED5F4
	ldrsb r0, [r6, #0x28]
	cmp r0, #0
	beq _021F3B74
	ldr r2, _021F4848 ; =0x02218F10
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x28
	bl ov4_021ED5C4
_021F3B74:
	ldrsb r0, [r6, #0x47]
	cmp r0, #0
	beq _021F3BA0
	ldr r2, _021F484C ; =0x02218F18
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x47
	bl ov4_021ED5C4
_021F3BA0:
	ldrsb r0, [r6, #0x5c]
	cmp r0, #0
	beq _021F3BCC
	ldr r2, _021F4850 ; =0x02218F28
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x5c
	bl ov4_021ED5C4
_021F3BCC:
	ldrsb r0, [r6, #0x8f]
	cmp r0, #0
	beq _021F3BF8
	ldr r2, _021F4854 ; =0x02218F30
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x8f
	bl ov4_021ED5C4
_021F3BF8:
	ldrsb r0, [r6, #0xae]
	cmp r0, #0
	beq _021F3C24
	ldr r2, _021F4858 ; =0x02218F3C
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0xae
	bl ov4_021ED5C4
_021F3C24:
	ldr r0, [r6, #0x130]
	cmp r0, #0
	beq _021F3C50
	ldr r2, _021F485C ; =0x02218F48
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [r6, #0x130]
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5F4
_021F3C50:
	ldr r0, [r6, #0x134]
	cmp r0, #0
	ble _021F4048
	ldr r2, _021F4860 ; =0x02218F54
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [r6, #0x134]
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5F4
	b _021F4048
_021F3C80:
	cmp r0, #2
	bne _021F3CBC
	ldr r2, _021F4864 ; =0x02218F5C
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F4850 ; =0x02218F28
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x5c
	bl ov4_021ED5C4
	b _021F4048
_021F3CBC:
	cmp r0, #3
	bne _021F3D3C
	ldr r2, _021F4868 ; =0x02218F64
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F4850 ; =0x02218F28
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x5c
	bl ov4_021ED5C4
	ldr r2, _021F486C ; =0x02218F6C
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0xcd
	bl ov4_021ED5C4
	ldr r2, _021F4844 ; =0x02218F00
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [sp, #0x28]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, r6, #0x18
	bl ov4_021ED5F4
	b _021F4048
_021F3D3C:
	cmp r0, #4
	bne _021F3DC0
	ldr r2, _021F4870 ; =0x02218F74
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F483C ; =0x02218EE8
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r0, [sp, #0x28]
	add r1, r6, #0x18
	ldr r2, [r0, #0x198]
	mov r0, sl
	bl ov4_021ED5F4
	ldr r2, _021F4840 ; =0x02218EF4
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [sp, #0x28]
	mov r0, sl
	ldr r2, [r2, #0x1a0]
	add r1, r6, #0x18
	bl ov4_021ED5F4
	ldr r2, _021F4874 ; =0x02218F80
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [r6, #0x138]
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5F4
	b _021F4048
_021F3DC0:
	cmp r0, #5
	bne _021F3E3C
	ldr r2, _021F4878 ; =0x02218F8C
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F4848 ; =0x02218F10
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x28
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	ldr r2, _021F4850 ; =0x02218F28
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x5c
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	ldr r2, _021F486C ; =0x02218F6C
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0xcd
	bl ov4_021ED5C4
	b _021F4048
_021F3E3C:
	cmp r0, #6
	bne _021F3F4C
	ldr r2, _021F487C ; =0x02218F94
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F4848 ; =0x02218F10
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x28
	bl ov4_021ED5C4
	ldr r2, _021F4850 ; =0x02218F28
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x5c
	bl ov4_021ED5C4
	ldr r2, _021F486C ; =0x02218F6C
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0xcd
	bl ov4_021ED5C4
	ldr r2, _021F4880 ; =0x02218FA0
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [sp, #0x28]
	mov r0, sl
	ldr r2, [r2, #0x46c]
	add r1, r6, #0x18
	bl ov4_021ED5F4
	ldr r2, _021F4844 ; =0x02218F00
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [sp, #0x28]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, r6, #0x18
	bl ov4_021ED5F4
	ldr r2, _021F484C ; =0x02218F18
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x47
	bl ov4_021ED5C4
	ldrsb r0, [r6, #0xec]
	cmp r0, #0
	beq _021F4048
	ldr r2, _021F4884 ; =0x02218FAC
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0xec
	bl ov4_021ED5C4
	b _021F4048
_021F3F4C:
	cmp r0, #7
	bne _021F3FD4
	ldr r2, _021F4888 ; =0x02218FB4
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F483C ; =0x02218EE8
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r0, [sp, #0x28]
	add r1, r6, #0x18
	ldr r2, [r0, #0x198]
	mov r0, sl
	bl ov4_021ED5F4
	ldr r2, _021F4840 ; =0x02218EF4
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [sp, #0x28]
	mov r0, sl
	ldr r2, [r2, #0x1a0]
	add r1, r6, #0x18
	bl ov4_021ED5F4
	ldr r2, _021F4844 ; =0x02218F00
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [sp, #0x28]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, r6, #0x18
	bl ov4_021ED5F4
	b _021F4048
_021F3FD4:
	cmp r0, #8
	bne _021F4034
	ldr r2, _021F488C ; =0x02218FC0
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F4890 ; =0x02218FD0
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	mov r0, sl
	add r1, r6, #0x18
	add r2, r6, #0x47
	bl ov4_021ED5C4
	ldr r2, _021F4844 ; =0x02218F00
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, [sp, #0x28]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, r6, #0x18
	bl ov4_021ED5F4
	b _021F4048
_021F4034:
	ldr r0, _021F4894 ; =0x02218FE0
	ldr r1, _021F4898 ; =0x02218E64
	ldr r2, _021F489C ; =0x02218D28
	ldr r3, _021F48A0 ; =0x00000275
	bl __msl_assertion_failed
_021F4048:
	ldr r2, _021F48A4 ; =0x02218FE4
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F48A8 ; =0x0221AEEC
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r2, _021F48AC ; =0x02218FF0
	mov r0, sl
	add r1, r6, #0x18
	bl ov4_021ED5C4
	ldr r0, [sp, #0x1c]
	mov r1, #4
	str r1, [r0, #0x14]
	b _021F5444
_021F4088:
	cmp r0, #4
	bne _021F5444
	add r1, sp, #0x68
	ldr r0, _021F482C ; =0x02218EAC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r3, sp, #0x6c
	mov r0, sl
	add r2, r6, #8
	bl ov4_021ED92C
	cmp r0, #0
	beq _021F40F4
	cmp r0, #3
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F4830 ; =0x00000D01
	ldr r2, _021F48B0 ; =0x02218FF8
	mov r0, sl
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #0
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F40F4:
	ldr r0, [r6, #8]
	ldr r1, _021F48AC ; =0x02218FF0
	bl strstr
	cmp r0, #0
	beq _021F5444
	mov r0, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x1c]
	mov r1, #5
	str r1, [r0, #0x14]
	ldr r1, [r6, #8]
	mov r0, sl
	mov r2, #1
	bl ov4_021F58A0
	cmp r0, #0
	beq _021F4148
	mov r0, #1
	str r0, [r6, #0x140]
	add sp, sp, #0x490
	mov r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4148:
	ldr r0, [r6, #0]
	cmp r0, #1
	bne _021F44B8
	ldr r1, _021F48B4 ; =0x00000601
	mov r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x80]
	str r0, [sp, #0x84]
	str r0, [sp, #0x8c]
	str r1, [sp, #0x88]
	add r4, sp, #0x290
	add r5, sp, #0x90
	add fp, sp, #0x78
_021F417C:
	str r5, [sp]
	ldr r1, [r6, #8]
	mov r0, sl
	mov r2, fp
	mov r3, r4
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F48B8 ; =0x02219024
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4210
	str r5, [sp]
	ldr r1, [r6, #8]
	mov r0, sl
	mov r2, fp
	mov r3, r4
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F48BC ; =0x0221902C
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4204
	ldr r1, _021F4894 ; =0x02218FE0
	mov r0, r5
	bl strcmp
	cmp r0, #0
	movne r0, #0x600
	strne r0, [sp, #0x88]
_021F4204:
	mov r0, #1
	str r0, [sp, #0x2c]
	b _021F43F0
_021F4210:
	ldr r1, _021F48C0 ; =0x02219034
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F43C4
	ldr r1, [sp, #0x84]
	ldr r0, [sp, #0x8c]
	add r2, r1, #1
	mov r1, #0xac
	mul r1, r2, r1
	str r2, [sp, #0x84]
	bl ov4_021D7894
	movs r7, r0
	str r7, [sp, #0x8c]
	bne _021F4264
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4264:
	ldr r0, [sp, #0x84]
	mov r1, #0
	sub r2, r0, #1
	mov r0, #0xac
	mul r8, r2, r0
	add sb, r7, r8
	mov r0, sb
	mov r2, #0xac
	bl memset
	mov r0, r5
	bl atoi
	str r0, [r7, r8]
	mov r8, #0
_021F4298:
	ldr r7, [sp, #0x78]
	mov r0, sl
	str r5, [sp]
	ldr r1, [r6, #8]
	mov r2, fp
	mov r3, r4
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F48C8 ; =0x02219038
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F42E8
	add r0, sb, #4
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	b _021F43B8
_021F42E8:
	ldr r1, _021F48CC ; =0x02219040
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4310
	add r0, sb, #0x23
	mov r1, r5
	mov r2, #0x15
	bl ov4_021F5820
	b _021F43B8
_021F4310:
	ldr r1, _021F48D0 ; =0x0221904C
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4338
	add r0, sb, #0x38
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	b _021F43B8
_021F4338:
	ldr r1, _021F48D4 ; =0x02219058
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4360
	add r0, sb, #0x57
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	b _021F43B8
_021F4360:
	ldr r1, _021F48D8 ; =0x02219064
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4388
	add r0, sb, #0x76
	mov r1, r5
	mov r2, #0x33
	bl ov4_021F5820
	b _021F43B8
_021F4388:
	ldr r1, _021F48C0 ; =0x02219034
	mov r0, r4
	bl strcmp
	cmp r0, #0
	beq _021F43B0
	ldr r1, _021F48B8 ; =0x02219024
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F43B8
_021F43B0:
	str r7, [sp, #0x78]
	mov r8, #1
_021F43B8:
	cmp r8, #0
	beq _021F4298
	b _021F43F0
_021F43C4:
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F43F0:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _021F417C
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0x88]
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x10]
	str r3, [sp, #0x70]
	str r2, [sp, #0x74]
	cmp r3, #0
	beq _021F4428
	add r1, sp, #0x80
	mov r0, sl
	blx r3
_021F4428:
	cmp r4, #0x600
	ldreq r0, [sp, #0x88]
	cmpeq r0, #0x600
	bne _021F44A4
	add r0, r6, #0x8f
	str r0, [sp]
	add r0, r6, #0xae
	str r0, [sp, #4]
	ldr r1, [r6, #0x130]
	mov r0, sl
	str r1, [sp, #8]
	ldr r3, [sp, #0x84]
	ldr r2, [r6, #0x134]
	add r1, r6, #0x28
	add r2, r3, r2
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr r3, [r2, #8]
	add r2, r6, #0x47
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x1c]
	ldr r4, [r3, #0xc]
	add r3, r6, #0x5c
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x1c]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x18]
	bl ov4_021F3808
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F44A4:
	ldr r0, [sp, #0x8c]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sp, #0x8c]
	b _021F5438
_021F44B8:
	cmp r0, #2
	bne _021F45CC
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	cmp r1, #0
	beq _021F5438
	add r0, sp, #0x90
	str r0, [sp]
	ldr r1, [r6, #8]
	add r2, sp, #0x78
	add r3, sp, #0x290
	mov r0, sl
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F48E0 ; =0x02219094
	add r0, sp, #0x290
	bl strcmp
	cmp r0, #0
	beq _021F4544
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4544:
	mov r0, #0x3c
	bl ov4_021D7880
	movs r4, r0
	bne _021F456C
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F456C:
	mov r0, #0
	str r0, [r4, #0]
	add r0, r4, #4
	add r1, r6, #0x5c
	mov r2, #0x33
	bl ov4_021F5820
	ldrsb r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x30
	cmp r0, #0x30
	moveq r0, #0
	movne r0, #1
	str r0, [r4, #0x38]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, sl
	mov r3, r4
	ldmia r2, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F5438
	add sp, sp, #0x490
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F45CC:
	cmp r0, #3
	bne _021F4974
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x38]
	str r0, [sp, #0x3c]
	cmp r1, #0
	beq _021F5438
	mov r0, #0x44
	bl ov4_021D7880
	movs r8, r0
	bne _021F4618
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4618:
	mov r2, #0
	add r0, r8, #4
	add r1, r6, #0x5c
	str r2, [r8]
	bl strcpy
	mov r1, #0
	str r1, [r8, #0x38]
	str r1, [r8, #0x3c]
	add r0, sp, #0x90
	str r1, [r8, #0x40]
	str r0, [sp]
	ldr r1, [r6, #8]
	add r2, sp, #0x78
	add r3, sp, #0x290
	mov r0, sl
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F48E4 ; =0x02219098
	add r0, sp, #0x290
	bl strcmp
	cmp r0, #0
	beq _021F46A4
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F46A4:
	ldr fp, _021F48C8 ; =0x02219038
	mov sb, #0
	add r4, sp, #0x290
	add r7, sp, #0x90
	add r5, sp, #0x78
_021F46B8:
	str r7, [sp]
	ldr r1, [r6, #8]
	mov r0, sl
	mov r2, r5
	mov r3, r4
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r4
	mov r1, fp
	bl strcmp
	cmp r0, #0
	bne _021F4784
	ldr r0, [r8, #0x3c]
	ldr r1, [r8, #0x38]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	bne _021F4724
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4724:
	str r0, [r8, #0x3c]
	mov r0, #0x1f
	bl ov4_021D7880
	cmp r0, #0
	bne _021F4750
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4750:
	ldr r3, [r8, #0x3c]
	ldr r2, [r8, #0x38]
	mov r1, r7
	str r0, [r3, r2, lsl #2]
	ldr r3, [r8, #0x3c]
	ldr r0, [r8, #0x38]
	mov r2, #0x1f
	ldr r0, [r3, r0, lsl #2]
	bl ov4_021F5820
	ldr r0, [r8, #0x38]
	add r0, r0, #1
	str r0, [r8, #0x38]
	b _021F4938
_021F4784:
	ldr r1, _021F48CC ; =0x02219040
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F48F4
	ldr r0, [r8, #0x38]
	cmp r0, #0
	ble _021F4938
	mov r1, r0, lsl #2
	ldr r0, [r8, #0x40]
	bl ov4_021D7894
	cmp r0, #0
	bne _021F47D0
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F47D0:
	str r0, [r8, #0x40]
	mov r0, #0x15
	bl ov4_021D7880
	cmp r0, #0
	bne _021F47FC
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F47FC:
	ldr r3, [r8, #0x40]
	ldr r2, [r8, #0x38]
	mov r1, r7
	add r2, r3, r2, lsl #2
	str r0, [r2, #-4]
	ldr r3, [r8, #0x40]
	ldr r0, [r8, #0x38]
	mov r2, #0x15
	add r0, r3, r0, lsl #2
	ldr r0, [r0, #-4]
	bl ov4_021F5820
	b _021F4938
	; .align 2, 0
_021F482C: .word 0x02218EAC
_021F4830: .word 0x00000D01
_021F4834: .word 0x02218EB0
_021F4838: .word 0x02218EDC
_021F483C: .word 0x02218EE8
_021F4840: .word 0x02218EF4
_021F4844: .word 0x02218F00
_021F4848: .word 0x02218F10
_021F484C: .word 0x02218F18
_021F4850: .word 0x02218F28
_021F4854: .word 0x02218F30
_021F4858: .word 0x02218F3C
_021F485C: .word 0x02218F48
_021F4860: .word 0x02218F54
_021F4864: .word 0x02218F5C
_021F4868: .word 0x02218F64
_021F486C: .word 0x02218F6C
_021F4870: .word 0x02218F74
_021F4874: .word 0x02218F80
_021F4878: .word 0x02218F8C
_021F487C: .word 0x02218F94
_021F4880: .word 0x02218FA0
_021F4884: .word 0x02218FAC
_021F4888: .word 0x02218FB4
_021F488C: .word 0x02218FC0
_021F4890: .word 0x02218FD0
_021F4894: .word 0x02218FE0
_021F4898: .word 0x02218E64
_021F489C: .word 0x02218D28
_021F48A0: .word 0x00000275
_021F48A4: .word 0x02218FE4
_021F48A8: .word 0x0221AEEC
_021F48AC: .word 0x02218FF0
_021F48B0: .word 0x02218FF8
_021F48B4: .word 0x00000601
_021F48B8: .word 0x02219024
_021F48BC: .word 0x0221902C
_021F48C0: .word 0x02219034
_021F48C4: .word 0x02218DA8
_021F48C8: .word 0x02219038
_021F48CC: .word 0x02219040
_021F48D0: .word 0x0221904C
_021F48D4: .word 0x02219058
_021F48D8: .word 0x02219064
_021F48DC: .word 0x0221906C
_021F48E0: .word 0x02219094
_021F48E4: .word 0x02219098
_021F48E8: .word 0x0221909C
_021F48EC: .word 0x022190A4
_021F48F0: .word 0x022190AC
_021F48F4:
	ldr r1, _021F48E8 ; =0x0221909C
	mov r0, r4
	bl strcmp
	cmp r0, #0
	moveq sb, #1
	beq _021F4938
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4938:
	cmp sb, #0
	beq _021F46B8
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x38
	str r1, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r0, sl
	mov r3, r8
	ldmia r2, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F5438
	add sp, sp, #0x490
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4974:
	cmp r0, #4
	bne _021F4BF0
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x40]
	str r0, [sp, #0x44]
	cmp r1, #0
	beq _021F5438
	mov r0, #0x10
	bl ov4_021D7880
	movs fp, r0
	bne _021F49C0
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F49C0:
	ldr r1, [r6, #0x138]
	mov r0, #0
	stmia fp, {r0, r1}
	str r0, [fp, #8]
	str r0, [sp, #0x20]
	str r0, [fp, #0xc]
	add r4, sp, #0x290
	add r5, sp, #0x90
_021F49E0:
	str r5, [sp]
	ldr r1, [r6, #8]
	mov r0, sl
	add r2, sp, #0x78
	mov r3, r4
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F48EC ; =0x022190A4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x20]
	beq _021F4BB0
	ldr r1, _021F48F0 ; =0x022190AC
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4B84
	ldr r0, [fp, #8]
	add r2, r0, #1
	mov r0, #0x128
	mul r1, r2, r0
	str r2, [fp, #8]
	ldr r0, [fp, #0xc]
	bl ov4_021D7894
	str r0, [fp, #0xc]
	movs r8, r0
	bne _021F4A74
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4A74:
	ldr r0, [fp, #8]
	mov r1, #0
	sub r2, r0, #1
	mov r0, #0x128
	mul sb, r2, r0
	add r7, r8, sb
	mov r0, r7
	mov r2, #0x128
	bl memset
	mov r0, #1
	str r0, [r7, #0x24]
	mov r0, r5
	bl atoi
	str r0, [r8, sb]
	mov r8, #0
_021F4AB0:
	ldr sb, [sp, #0x78]
	mov r0, sl
	str r5, [sp]
	ldr r1, [r6, #8]
	add r2, sp, #0x78
	mov r3, r4
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F5468 ; =0x022190B0
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4B00
	add r0, r7, #0x28
	mov r1, r5
	mov r2, #0x100
	bl ov4_021F5820
	b _021F4B24
_021F4B00:
	ldr r1, _021F48C8 ; =0x02219038
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4B24
	add r0, r7, #4
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
_021F4B24:
	ldr r1, _021F546C ; =0x022190B8
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4B48
	mov r0, r5
	bl atoi
	str r0, [r7, #0x24]
	b _021F4B78
_021F4B48:
	ldr r1, _021F48F0 ; =0x022190AC
	mov r0, r4
	bl strcmp
	cmp r0, #0
	beq _021F4B70
	ldr r1, _021F48EC ; =0x022190A4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F4B78
_021F4B70:
	str sb, [sp, #0x78]
	mov r8, #1
_021F4B78:
	cmp r8, #0
	beq _021F4AB0
	b _021F4BB0
_021F4B84:
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4BB0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021F49E0
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x40
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	mov r0, sl
	mov r3, fp
	ldmia r2, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F5438
	add sp, sp, #0x490
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4BF0:
	cmp r0, #5
	bne _021F4D4C
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x48]
	str r0, [sp, #0x4c]
	cmp r1, #0
	beq _021F5438
	add r0, sp, #0x90
	str r0, [sp]
	ldr r1, [r6, #8]
	add r2, sp, #0x78
	add r3, sp, #0x290
	mov r0, sl
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F5470 ; =0x022190C4
	add r0, sp, #0x290
	bl strcmp
	cmp r0, #0
	beq _021F4C7C
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4C7C:
	add r0, sp, #0x90
	bl atoi
	movs r4, r0
	beq _021F4C9C
	ldr r0, [sp, #0x28]
	mov r5, #0
	str r4, [r0, #0x418]
	b _021F4CF0
_021F4C9C:
	ldr r0, [r6, #8]
	ldr r1, _021F5474 ; =0x022190C8
	add r2, sp, #0x90
	mov r3, #0x200
	bl ov4_021F5978
	cmp r0, #0
	bne _021F4CE4
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4CE4:
	add r0, sp, #0x90
	bl atoi
	mov r5, r0
_021F4CF0:
	mov r0, #8
	bl ov4_021D7880
	movs r3, r0
	bne _021F4D18
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4D18:
	stmia r3, {r4, r5}
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x48
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, sl
	ldmia r2, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F5438
	add sp, sp, #0x490
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4D4C:
	cmp r0, #6
	bne _021F4EAC
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x50]
	str r0, [sp, #0x54]
	cmp r1, #0
	beq _021F5438
	add r0, sp, #0x90
	str r0, [sp]
	ldr r1, [r6, #8]
	add r2, sp, #0x78
	add r3, sp, #0x290
	mov r0, sl
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F5478 ; =0x022190D0
	add r0, sp, #0x290
	bl strcmp
	cmp r0, #0
	beq _021F4DD8
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4DD8:
	add r0, sp, #0x90
	bl atoi
	movs r4, r0
	ldrne r0, [sp, #0x28]
	ldr r1, _021F5474 ; =0x022190C8
	strne r4, [r0, #0x418]
	ldr r0, [r6, #8]
	add r2, sp, #0x90
	mov r3, #0x200
	bl ov4_021F5978
	cmp r0, #0
	bne _021F4E44
	cmp r4, #0
	bne _021F4E3C
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4E3C:
	mov r5, #0
	b _021F4E50
_021F4E44:
	add r0, sp, #0x90
	bl atoi
	mov r5, r0
_021F4E50:
	mov r0, #8
	bl ov4_021D7880
	movs r3, r0
	bne _021F4E78
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4E78:
	stmia r3, {r4, r5}
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x50
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, sl
	ldmia r2, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F5438
	add sp, sp, #0x490
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4EAC:
	cmp r0, #7
	bne _021F51E8
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	cmp r1, #0
	beq _021F5438
	mov r0, #0xc
	bl ov4_021D7880
	movs fp, r0
	bne _021F4EF8
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4EF8:
	mov r1, #0
	str r1, [fp]
	str r1, [fp, #4]
	add r0, sp, #0x90
	str r1, [fp, #8]
	str r0, [sp]
	ldr r1, [r6, #8]
	add r2, sp, #0x78
	add r3, sp, #0x290
	mov r0, sl
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F547C ; =0x022190D4
	add r0, sp, #0x290
	bl strcmp
	cmp r0, #0
	beq _021F4F70
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F4F70:
	mov r0, #0
	str r0, [sp, #0x24]
	add r4, sp, #0x290
	add r5, sp, #0x90
_021F4F80:
	str r5, [sp]
	ldr r1, [r6, #8]
	mov r0, sl
	add r2, sp, #0x78
	mov r3, r4
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F5480 ; =0x022190DC
	mov r0, r4
	bl strcmp
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x24]
	beq _021F51A8
	ldr r1, _021F5484 ; =0x022190E4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F517C
	ldr r1, [fp, #4]
	ldr r0, [fp, #8]
	add r2, r1, #1
	mov r1, #0xac
	mul r1, r2, r1
	bl ov4_021D7894
	cmp r0, #0
	bne _021F500C
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F500C:
	str r0, [fp, #8]
	ldr r2, [fp, #4]
	mov r8, r0
	mov r0, #0xac
	mul sb, r2, r0
	add r7, r8, sb
	mov r1, #0
	mov r0, r7
	mov r2, #0xac
	bl memset
	ldr r1, [fp, #4]
	mov r0, r5
	add r1, r1, #1
	str r1, [fp, #4]
	bl atoi
	str r0, [r8, sb]
	mov r8, #0
_021F5050:
	ldr sb, [sp, #0x78]
	mov r0, sl
	str r5, [sp]
	ldr r1, [r6, #8]
	add r2, sp, #0x78
	mov r3, r4
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F48C8 ; =0x02219038
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F50A0
	add r0, r7, #4
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	b _021F5170
_021F50A0:
	ldr r1, _021F48CC ; =0x02219040
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F50C8
	add r0, r7, #0x23
	mov r1, r5
	mov r2, #0x15
	bl ov4_021F5820
	b _021F5170
_021F50C8:
	ldr r1, _021F5488 ; =0x022190E8
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F50F0
	add r0, r7, #0x38
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	b _021F5170
_021F50F0:
	ldr r1, _021F548C ; =0x022190F0
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F5118
	add r0, r7, #0x57
	mov r1, r5
	mov r2, #0x1f
	bl ov4_021F5820
	b _021F5170
_021F5118:
	ldr r1, _021F48D8 ; =0x02219064
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F5140
	add r0, r7, #0x76
	mov r1, r5
	mov r2, #0x33
	bl ov4_021F5820
	b _021F5170
_021F5140:
	ldr r1, _021F5484 ; =0x022190E4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	beq _021F5168
	ldr r1, _021F5480 ; =0x022190DC
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F5170
_021F5168:
	str sb, [sp, #0x78]
	mov r8, #1
_021F5170:
	cmp r8, #0
	beq _021F5050
	b _021F51A8
_021F517C:
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F51A8:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021F4F80
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x58
	str r1, [sp]
	mov r1, #8
	str r1, [sp, #4]
	mov r0, sl
	mov r3, fp
	ldmia r2, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F5438
	add sp, sp, #0x490
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F51E8:
	cmp r0, #8
	bne _021F5424
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x60]
	str r0, [sp, #0x64]
	cmp r1, #0
	beq _021F5438
	mov r0, #0xc
	mov r7, #0
	bl ov4_021D7880
	movs r8, r0
	bne _021F5238
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F5238:
	mov r1, r7
	str r1, [r8]
	str r1, [r8, #4]
	add r0, sp, #0x90
	str r1, [r8, #8]
	str r0, [sp]
	ldr r1, [r6, #8]
	add r2, sp, #0x78
	add r3, sp, #0x290
	mov r0, sl
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F5490 ; =0x022190F8
	add r0, sp, #0x290
	bl strcmp
	cmp r0, #0
	beq _021F52B0
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F52B0:
	add r0, sp, #0x90
	bl atoi
	str r0, [r8, #4]
	mov r0, r0, lsl #2
	bl ov4_021D7880
	str r0, [r8, #8]
	cmp r0, #0
	bne _021F52E8
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F52E8:
	mov sb, r7
	add r4, sp, #0x290
	add r5, sp, #0x90
	add fp, sp, #0x78
_021F52F8:
	str r5, [sp]
	ldr r1, [r6, #8]
	mov r0, sl
	mov r2, fp
	mov r3, r4
	bl ov4_021F5B74
	cmp r0, #0
	addne sp, sp, #0x490
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F48C8 ; =0x02219038
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F537C
	mov r0, #0x15
	bl ov4_021D7880
	ldr r1, [r8, #8]
	str r0, [r1, r7, lsl #2]
	ldr r0, [r8, #8]
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bne _021F5368
	ldr r1, _021F48C4 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	add sp, sp, #0x490
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F5368:
	mov r1, r5
	mov r2, #0x15
	bl ov4_021F5820
	add r7, r7, #1
	b _021F53E8
_021F537C:
	ldr r1, _021F5494 ; =0x022190FC
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F53BC
	ldr r0, [r8, #4]
	cmp r7, r0
	beq _021F53B0
	ldr r0, _021F5498 ; =0x02219104
	ldr r1, _021F4898 ; =0x02218E64
	ldr r2, _021F489C ; =0x02218D28
	ldr r3, _021F549C ; =0x00000515
	bl __msl_assertion_failed
_021F53B0:
	str r7, [r8, #4]
	mov sb, #1
	b _021F53E8
_021F53BC:
	ldr r2, _021F48DC ; =0x0221906C
	mov r0, sl
	mov r1, #1
	bl ov4_021F5D44
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x490
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F53E8:
	cmp sb, #0
	beq _021F52F8
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x60
	str r1, [sp]
	mov r1, #9
	str r1, [sp, #4]
	mov r0, sl
	mov r3, r8
	ldmia r2, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F5438
	add sp, sp, #0x490
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F5424:
	ldr r0, _021F4894 ; =0x02218FE0
	ldr r1, _021F4898 ; =0x02218E64
	ldr r2, _021F489C ; =0x02218D28
	ldr r3, _021F54A0 ; =0x0000052A
	bl __msl_assertion_failed
_021F5438:
	mov r0, #1
	str r0, [r6, #0x140]
	mov r4, #0
_021F5444:
	cmp r4, #0
	beq _021F5454
	mov r0, #0xa
	bl ov4_021EA898
_021F5454:
	cmp r4, #0
	bne _021F3A24
	mov r0, #0
	add sp, sp, #0x490
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021F5468: .word 0x022190B0
_021F546C: .word 0x022190B8
_021F5470: .word 0x022190C4
_021F5474: .word 0x022190C8
_021F5478: .word 0x022190D0
_021F547C: .word 0x022190D4
_021F5480: .word 0x022190DC
_021F5484: .word 0x022190E4
_021F5488: .word 0x022190E8
_021F548C: .word 0x022190F0
_021F5490: .word 0x022190F8
_021F5494: .word 0x022190FC
_021F5498: .word 0x02219104
_021F549C: .word 0x00000515
_021F54A0: .word 0x0000052A
	arm_func_end ov4_021F39F4

	arm_func_start ov4_021F54A4
ov4_021F54A4: ; 0x021F54A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r6, [sl]
	mov sb, #0
	ldr r0, [r6, #0x210]
	cmp r0, #0
	ble _021F55D8
	mov r0, r0, lsl #2
	bl ov4_021D7880
	movs r7, r0
	bne _021F54E4
	ldr r1, _021F55E0 ; =0x02218DA8
	mov r0, sl
	bl ov4_021F5D68
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F54E4:
	ldr r8, [r6, #0x424]
	cmp r8, #0
	beq _021F5560
	ldr r5, _021F55E4 ; =0x02219124
	ldr fp, _021F55E8 ; =0x02218E64
	mov r4, #1
_021F54FC:
	ldr r0, [r8]
	cmp r0, #3
	bne _021F5554
	ldr r0, [r8, #0x14]
	cmp r0, #5
	beq _021F5554
	ldr r0, [r8, #4]
	ldr r0, [r0, #0x13c]
	cmp r0, #0
	bne _021F5554
	ldr r0, [r6, #0x210]
	cmp sb, r0
	blt _021F5544
	ldr r2, _021F55EC ; =0x02218D3C
	ldr r3, _021F55F0 ; =0x00000563
	mov r0, r5
	mov r1, fp
	bl __msl_assertion_failed
_021F5544:
	str r8, [r7, sb, lsl #2]
	ldr r0, [r8, #4]
	add sb, sb, #1
	str r4, [r0, #0x13c]
_021F5554:
	ldr r8, [r8, #0x20]
	cmp r8, #0
	bne _021F54FC
_021F5560:
	cmp sb, #0
	mov r4, #0
	ble _021F5590
_021F556C:
	ldr r1, [r7, r4, lsl #2]
	mov r0, sl
	bl ov4_021F39F4
	cmp r0, #0
	ldrne r1, [r7, r4, lsl #2]
	add r4, r4, #1
	strne r0, [r1, #0x1c]
	cmp r4, sb
	blt _021F556C
_021F5590:
	cmp sb, #0
	mov r4, #0
	ble _021F55D0
	mov r5, r4
_021F55A0:
	ldr r0, [r7, r4, lsl #2]
	ldr r0, [r0, #4]
	str r5, [r0, #0x13c]
	ldr r0, [r0, #0x140]
	cmp r0, #0
	beq _021F55C4
	ldr r1, [r7, r4, lsl #2]
	mov r0, sl
	bl ov4_021F1BA8
_021F55C4:
	add r4, r4, #1
	cmp r4, sb
	blt _021F55A0
_021F55D0:
	mov r0, r7
	bl ov4_021D78B0
_021F55D8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021F55E0: .word 0x02218DA8
_021F55E4: .word 0x02219124
_021F55E8: .word 0x02218E64
_021F55EC: .word 0x02218D3C
_021F55F0: .word 0x00000563
	arm_func_end ov4_021F54A4

	.data


	.global Unk_ov4_02218D28
Unk_ov4_02218D28: ; 0x02218D28
	.incbin "incbin/overlay4_data.bin", 0x2EA8, 0x2EBC - 0x2EA8

	.global Unk_ov4_02218D3C
Unk_ov4_02218D3C: ; 0x02218D3C
	.incbin "incbin/overlay4_data.bin", 0x2EBC, 0x2ED0 - 0x2EBC

	.global Unk_ov4_02218D50
Unk_ov4_02218D50: ; 0x02218D50
	.incbin "incbin/overlay4_data.bin", 0x2ED0, 0x2EE8 - 0x2ED0

	.global Unk_ov4_02218D68
Unk_ov4_02218D68: ; 0x02218D68
	.incbin "incbin/overlay4_data.bin", 0x2EE8, 0x2F28 - 0x2EE8

	.global Unk_ov4_02218DA8
Unk_ov4_02218DA8: ; 0x02218DA8
	.incbin "incbin/overlay4_data.bin", 0x2F28, 0x2F38 - 0x2F28

	.global Unk_ov4_02218DB8
Unk_ov4_02218DB8: ; 0x02218DB8
	.incbin "incbin/overlay4_data.bin", 0x2F38, 0x2F60 - 0x2F38

	.global Unk_ov4_02218DE0
Unk_ov4_02218DE0: ; 0x02218DE0
	.incbin "incbin/overlay4_data.bin", 0x2F60, 0x2F94 - 0x2F60

	.global Unk_ov4_02218E14
Unk_ov4_02218E14: ; 0x02218E14
	.incbin "incbin/overlay4_data.bin", 0x2F94, 0x2FC4 - 0x2F94

	.global Unk_ov4_02218E44
Unk_ov4_02218E44: ; 0x02218E44
	.incbin "incbin/overlay4_data.bin", 0x2FC4, 0x2FE4 - 0x2FC4

	.global Unk_ov4_02218E64
Unk_ov4_02218E64: ; 0x02218E64
	.incbin "incbin/overlay4_data.bin", 0x2FE4, 0x2FF0 - 0x2FE4

	.global Unk_ov4_02218E70
Unk_ov4_02218E70: ; 0x02218E70
	.incbin "incbin/overlay4_data.bin", 0x2FF0, 0x3018 - 0x2FF0

	.global Unk_ov4_02218E98
Unk_ov4_02218E98: ; 0x02218E98
	.incbin "incbin/overlay4_data.bin", 0x3018, 0x302C - 0x3018

	.global Unk_ov4_02218EAC
Unk_ov4_02218EAC: ; 0x02218EAC
	.incbin "incbin/overlay4_data.bin", 0x302C, 0x3030 - 0x302C

	.global Unk_ov4_02218EB0
Unk_ov4_02218EB0: ; 0x02218EB0
	.incbin "incbin/overlay4_data.bin", 0x3030, 0x305C - 0x3030

	.global Unk_ov4_02218EDC
Unk_ov4_02218EDC: ; 0x02218EDC
	.incbin "incbin/overlay4_data.bin", 0x305C, 0x3068 - 0x305C

	.global Unk_ov4_02218EE8
Unk_ov4_02218EE8: ; 0x02218EE8
	.incbin "incbin/overlay4_data.bin", 0x3068, 0x3074 - 0x3068

	.global Unk_ov4_02218EF4
Unk_ov4_02218EF4: ; 0x02218EF4
	.incbin "incbin/overlay4_data.bin", 0x3074, 0x3080 - 0x3074

	.global Unk_ov4_02218F00
Unk_ov4_02218F00: ; 0x02218F00
	.incbin "incbin/overlay4_data.bin", 0x3080, 0x3090 - 0x3080

	.global Unk_ov4_02218F10
Unk_ov4_02218F10: ; 0x02218F10
	.incbin "incbin/overlay4_data.bin", 0x3090, 0x3098 - 0x3090

	.global Unk_ov4_02218F18
Unk_ov4_02218F18: ; 0x02218F18
	.incbin "incbin/overlay4_data.bin", 0x3098, 0x30A8 - 0x3098

	.global Unk_ov4_02218F28
Unk_ov4_02218F28: ; 0x02218F28
	.incbin "incbin/overlay4_data.bin", 0x30A8, 0x30B0 - 0x30A8

	.global Unk_ov4_02218F30
Unk_ov4_02218F30: ; 0x02218F30
	.incbin "incbin/overlay4_data.bin", 0x30B0, 0x30BC - 0x30B0

	.global Unk_ov4_02218F3C
Unk_ov4_02218F3C: ; 0x02218F3C
	.incbin "incbin/overlay4_data.bin", 0x30BC, 0x30C8 - 0x30BC

	.global Unk_ov4_02218F48
Unk_ov4_02218F48: ; 0x02218F48
	.incbin "incbin/overlay4_data.bin", 0x30C8, 0x30D4 - 0x30C8

	.global Unk_ov4_02218F54
Unk_ov4_02218F54: ; 0x02218F54
	.incbin "incbin/overlay4_data.bin", 0x30D4, 0x30DC - 0x30D4

	.global Unk_ov4_02218F5C
Unk_ov4_02218F5C: ; 0x02218F5C
	.incbin "incbin/overlay4_data.bin", 0x30DC, 0x30E4 - 0x30DC

	.global Unk_ov4_02218F64
Unk_ov4_02218F64: ; 0x02218F64
	.incbin "incbin/overlay4_data.bin", 0x30E4, 0x30EC - 0x30E4

	.global Unk_ov4_02218F6C
Unk_ov4_02218F6C: ; 0x02218F6C
	.incbin "incbin/overlay4_data.bin", 0x30EC, 0x30F4 - 0x30EC

	.global Unk_ov4_02218F74
Unk_ov4_02218F74: ; 0x02218F74
	.incbin "incbin/overlay4_data.bin", 0x30F4, 0x3100 - 0x30F4

	.global Unk_ov4_02218F80
Unk_ov4_02218F80: ; 0x02218F80
	.incbin "incbin/overlay4_data.bin", 0x3100, 0x310C - 0x3100

	.global Unk_ov4_02218F8C
Unk_ov4_02218F8C: ; 0x02218F8C
	.incbin "incbin/overlay4_data.bin", 0x310C, 0x3114 - 0x310C

	.global Unk_ov4_02218F94
Unk_ov4_02218F94: ; 0x02218F94
	.incbin "incbin/overlay4_data.bin", 0x3114, 0x3120 - 0x3114

	.global Unk_ov4_02218FA0
Unk_ov4_02218FA0: ; 0x02218FA0
	.incbin "incbin/overlay4_data.bin", 0x3120, 0x312C - 0x3120

	.global Unk_ov4_02218FAC
Unk_ov4_02218FAC: ; 0x02218FAC
	.incbin "incbin/overlay4_data.bin", 0x312C, 0x3134 - 0x312C

	.global Unk_ov4_02218FB4
Unk_ov4_02218FB4: ; 0x02218FB4
	.incbin "incbin/overlay4_data.bin", 0x3134, 0x3140 - 0x3134

	.global Unk_ov4_02218FC0
Unk_ov4_02218FC0: ; 0x02218FC0
	.incbin "incbin/overlay4_data.bin", 0x3140, 0x3150 - 0x3140

	.global Unk_ov4_02218FD0
Unk_ov4_02218FD0: ; 0x02218FD0
	.incbin "incbin/overlay4_data.bin", 0x3150, 0x3160 - 0x3150

	.global Unk_ov4_02218FE0
Unk_ov4_02218FE0: ; 0x02218FE0
	.incbin "incbin/overlay4_data.bin", 0x3160, 0x3164 - 0x3160

	.global Unk_ov4_02218FE4
Unk_ov4_02218FE4: ; 0x02218FE4
	.incbin "incbin/overlay4_data.bin", 0x3164, 0x3170 - 0x3164

	.global Unk_ov4_02218FF0
Unk_ov4_02218FF0: ; 0x02218FF0
	.incbin "incbin/overlay4_data.bin", 0x3170, 0x3178 - 0x3170

	.global Unk_ov4_02218FF8
Unk_ov4_02218FF8: ; 0x02218FF8
	.incbin "incbin/overlay4_data.bin", 0x3178, 0x31A4 - 0x3178

	.global Unk_ov4_02219024
Unk_ov4_02219024: ; 0x02219024
	.incbin "incbin/overlay4_data.bin", 0x31A4, 0x31AC - 0x31A4

	.global Unk_ov4_0221902C
Unk_ov4_0221902C: ; 0x0221902C
	.incbin "incbin/overlay4_data.bin", 0x31AC, 0x31B4 - 0x31AC

	.global Unk_ov4_02219034
Unk_ov4_02219034: ; 0x02219034
	.incbin "incbin/overlay4_data.bin", 0x31B4, 0x31B8 - 0x31B4

	.global Unk_ov4_02219038
Unk_ov4_02219038: ; 0x02219038
	.incbin "incbin/overlay4_data.bin", 0x31B8, 0x31C0 - 0x31B8

	.global Unk_ov4_02219040
Unk_ov4_02219040: ; 0x02219040
	.incbin "incbin/overlay4_data.bin", 0x31C0, 0x31CC - 0x31C0

	.global Unk_ov4_0221904C
Unk_ov4_0221904C: ; 0x0221904C
	.incbin "incbin/overlay4_data.bin", 0x31CC, 0x31D8 - 0x31CC

	.global Unk_ov4_02219058
Unk_ov4_02219058: ; 0x02219058
	.incbin "incbin/overlay4_data.bin", 0x31D8, 0x31E4 - 0x31D8

	.global Unk_ov4_02219064
Unk_ov4_02219064: ; 0x02219064
	.incbin "incbin/overlay4_data.bin", 0x31E4, 0x31EC - 0x31E4

	.global Unk_ov4_0221906C
Unk_ov4_0221906C: ; 0x0221906C
	.incbin "incbin/overlay4_data.bin", 0x31EC, 0x3214 - 0x31EC

	.global Unk_ov4_02219094
Unk_ov4_02219094: ; 0x02219094
	.incbin "incbin/overlay4_data.bin", 0x3214, 0x3218 - 0x3214

	.global Unk_ov4_02219098
Unk_ov4_02219098: ; 0x02219098
	.incbin "incbin/overlay4_data.bin", 0x3218, 0x321C - 0x3218

	.global Unk_ov4_0221909C
Unk_ov4_0221909C: ; 0x0221909C
	.incbin "incbin/overlay4_data.bin", 0x321C, 0x3224 - 0x321C

	.global Unk_ov4_022190A4
Unk_ov4_022190A4: ; 0x022190A4
	.incbin "incbin/overlay4_data.bin", 0x3224, 0x322C - 0x3224

	.global Unk_ov4_022190AC
Unk_ov4_022190AC: ; 0x022190AC
	.incbin "incbin/overlay4_data.bin", 0x322C, 0x3230 - 0x322C

	.global Unk_ov4_022190B0
Unk_ov4_022190B0: ; 0x022190B0
	.incbin "incbin/overlay4_data.bin", 0x3230, 0x3238 - 0x3230

	.global Unk_ov4_022190B8
Unk_ov4_022190B8: ; 0x022190B8
	.incbin "incbin/overlay4_data.bin", 0x3238, 0x3244 - 0x3238

	.global Unk_ov4_022190C4
Unk_ov4_022190C4: ; 0x022190C4
	.incbin "incbin/overlay4_data.bin", 0x3244, 0x3248 - 0x3244

	.global Unk_ov4_022190C8
Unk_ov4_022190C8: ; 0x022190C8
	.incbin "incbin/overlay4_data.bin", 0x3248, 0x3250 - 0x3248

	.global Unk_ov4_022190D0
Unk_ov4_022190D0: ; 0x022190D0
	.incbin "incbin/overlay4_data.bin", 0x3250, 0x3254 - 0x3250

	.global Unk_ov4_022190D4
Unk_ov4_022190D4: ; 0x022190D4
	.incbin "incbin/overlay4_data.bin", 0x3254, 0x325C - 0x3254

	.global Unk_ov4_022190DC
Unk_ov4_022190DC: ; 0x022190DC
	.incbin "incbin/overlay4_data.bin", 0x325C, 0x3264 - 0x325C

	.global Unk_ov4_022190E4
Unk_ov4_022190E4: ; 0x022190E4
	.incbin "incbin/overlay4_data.bin", 0x3264, 0x3268 - 0x3264

	.global Unk_ov4_022190E8
Unk_ov4_022190E8: ; 0x022190E8
	.incbin "incbin/overlay4_data.bin", 0x3268, 0x3270 - 0x3268

	.global Unk_ov4_022190F0
Unk_ov4_022190F0: ; 0x022190F0
	.incbin "incbin/overlay4_data.bin", 0x3270, 0x3278 - 0x3270

	.global Unk_ov4_022190F8
Unk_ov4_022190F8: ; 0x022190F8
	.incbin "incbin/overlay4_data.bin", 0x3278, 0x327C - 0x3278

	.global Unk_ov4_022190FC
Unk_ov4_022190FC: ; 0x022190FC
	.incbin "incbin/overlay4_data.bin", 0x327C, 0x3284 - 0x327C

	.global Unk_ov4_02219104
Unk_ov4_02219104: ; 0x02219104
	.incbin "incbin/overlay4_data.bin", 0x3284, 0x32A4 - 0x3284

	.global Unk_ov4_02219124
Unk_ov4_02219124: ; 0x02219124
	.incbin "incbin/overlay4_data.bin", 0x32A4, 0x1F

