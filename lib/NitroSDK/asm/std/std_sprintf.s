	.include "macros/function.inc"
	.include "include/std_sprintf.inc"

	

	.text


	arm_func_start string_put_char
string_put_char: ; 0x020D3448
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _020D3468
	ldr r2, [r0, #4]
	strb r1, [r2]
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
_020D3468:
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end string_put_char

	arm_func_start string_fill_char
string_fill_char: ; 0x020D3478
	stmfd sp!, {r3, lr}
	cmp r2, #0
	ldmleia sp!, {r3, pc}
	ldr lr, [r0]
	mov ip, #0
	cmp lr, r2
	movhi lr, r2
	cmp lr, #0
	bls _020D34B0
_020D349C:
	ldr r3, [r0, #4]
	strb r1, [r3, ip]
	add ip, ip, #1
	cmp ip, lr
	blo _020D349C
_020D34B0:
	ldr r1, [r0, #0]
	sub r1, r1, lr
	str r1, [r0, #0]
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end string_fill_char

	arm_func_start string_put_string
string_put_string: ; 0x020D34CC
	stmfd sp!, {r4, lr}
	cmp r2, #0
	ldmleia sp!, {r4, pc}
	ldr r4, [r0, #0]
	mov lr, #0
	cmp r4, r2
	movhi r4, r2
	cmp r4, #0
	bls _020D3508
_020D34F0:
	ldrsb ip, [r1, lr]
	ldr r3, [r0, #4]
	strb ip, [r3, lr]
	add lr, lr, #1
	cmp lr, r4
	blo _020D34F0
_020D3508:
	ldr r1, [r0, #0]
	sub r1, r1, r4
	str r1, [r0, #0]
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end string_put_string

	arm_func_start STD_TVSNPrintf
STD_TVSNPrintf: ; 0x020D3524
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	mov sb, r2
	str r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldrsb r0, [sb]
	str r1, [sp]
	mov fp, r3
	cmp r0, #0
	beq _020D3D50
_020D3550:
	ldrsb r1, [sb]
	and r0, r1, #0xff
	eor r0, r0, #0x20
	sub r0, r0, #0xa1
	cmp r0, #0x3c
	bhs _020D358C
	add r0, sp, #0xc
	bl string_put_char
	ldrsb r1, [sb, #1]!
	cmp r1, #0
	beq _020D3D44
	add r0, sp, #0xc
	add sb, sb, #1
	bl string_put_char
	b _020D3D44
_020D358C:
	cmp r1, #0x25
	beq _020D35A4
	add r0, sp, #0xc
	add sb, sb, #1
	bl string_put_char
	b _020D3D44
_020D35A4:
	mov r5, #0
	mov sl, r5
	mov r2, sb
	sub r6, r5, #1
	mov r0, #0xa
	mov r3, #0x57
_020D35BC:
	ldrsb r4, [sb, #1]!
	cmp r4, #0x20
	bgt _020D35D0
	beq _020D360C
	b _020D3624
_020D35D0:
	cmp r4, #0x30
	bgt _020D3624
	cmp r4, #0x2b
	blt _020D3624
	beq _020D35F8
	cmp r4, #0x2d
	beq _020D3614
	cmp r4, #0x30
	beq _020D361C
	b _020D3624
_020D35F8:
	ldrsb r1, [sb, #-1]
	cmp r1, #0x20
	bne _020D3624
	orr r5, r5, #2
	b _020D35BC
_020D360C:
	orr r5, r5, #1
	b _020D35BC
_020D3614:
	orr r5, r5, #8
	b _020D35BC
_020D361C:
	orr r5, r5, #0x10
	b _020D35BC
_020D3624:
	cmp r4, #0x2a
	bne _020D3648
	add fp, fp, #4
	ldr sl, [fp, #-4]
	add sb, sb, #1
	cmp sl, #0
	rsblt sl, sl, #0
	orrlt r5, r5, #8
	b _020D3670
_020D3648:
	mov r1, #0xa
	b _020D365C
_020D3650:
	ldrsb r4, [sb], #1
	mla r4, sl, r1, r4
	sub sl, r4, #0x30
_020D365C:
	ldrsb r4, [sb]
	cmp r4, #0x30
	blt _020D3670
	cmp r4, #0x39
	ble _020D3650
_020D3670:
	ldrsb r1, [sb]
	cmp r1, #0x2e
	bne _020D36CC
	ldrsb r1, [sb, #1]!
	mov r6, #0
	cmp r1, #0x2a
	bne _020D36A4
	add fp, fp, #4
	ldr r6, [fp, #-4]
	add sb, sb, #1
	cmp r6, #0
	mvnlt r6, #0
	b _020D36CC
_020D36A4:
	mov r1, #0xa
	b _020D36B8
_020D36AC:
	ldrsb r4, [sb], #1
	mla r4, r6, r1, r4
	sub r6, r4, #0x30
_020D36B8:
	ldrsb r4, [sb]
	cmp r4, #0x30
	blt _020D36CC
	cmp r4, #0x39
	ble _020D36AC
_020D36CC:
	ldrsb r1, [sb]
	cmp r1, #0x68
	beq _020D36E4
	cmp r1, #0x6c
	beq _020D36FC
	b _020D3710
_020D36E4:
	ldrsb r1, [sb, #1]!
	cmp r1, #0x68
	orrne r5, r5, #0x40
	addeq sb, sb, #1
	orreq r5, r5, #0x100
	b _020D3710
_020D36FC:
	ldrsb r1, [sb, #1]!
	cmp r1, #0x6c
	orrne r5, r5, #0x20
	addeq sb, sb, #1
	orreq r5, r5, #0x80
_020D3710:
	ldrsb r1, [sb]
	cmp r1, #0x69
	bgt _020D3754
	cmp r1, #0x63
	blt _020D3738
	beq _020D37C4
	cmp r1, #0x64
	cmpne r1, #0x69
	beq _020D397C
	b _020D3960
_020D3738:
	cmp r1, #0x25
	bgt _020D3748
	beq _020D3944
	b _020D3960
_020D3748:
	cmp r1, #0x58
	beq _020D37B0
	b _020D3960
_020D3754:
	cmp r1, #0x6e
	bgt _020D3764
	beq _020D38EC
	b _020D3960
_020D3764:
	sub r1, r1, #0x6f
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _020D3960
_020D3774: ; jump table
	b _020D379C ; case 0
	b _020D37B8 ; case 1
	b _020D3960 ; case 2
	b _020D3960 ; case 3
	b _020D3838 ; case 4
	b _020D3960 ; case 5
	b _020D37A8 ; case 6
	b _020D3960 ; case 7
	b _020D3960 ; case 8
	b _020D3974 ; case 9
_020D379C:
	orr r5, r5, #0x1000
	mov r0, #8
	b _020D397C
_020D37A8:
	orr r5, r5, #0x1000
	b _020D397C
_020D37B0:
	mov r3, #0x37
	b _020D3974
_020D37B8:
	orr r5, r5, #4
	mov r6, #8
	b _020D3974
_020D37C4:
	cmp r6, #0
	bge _020D3960
	add fp, fp, #4
	tst r5, #8
	ldr r4, [fp, #-4]
	beq _020D3800
	mov r1, r4, lsl #0x18
	add r0, sp, #0xc
	mov r1, r1, asr #0x18
	bl string_put_char
	add r0, sp, #0xc
	sub r2, sl, #1
	mov r1, #0x20
	bl string_fill_char
	b _020D3830
_020D3800:
	tst r5, #0x10
	movne r0, #0x30
	moveq r0, #0x20
	mov r1, r0, lsl #0x18
	add r0, sp, #0xc
	mov r1, r1, asr #0x18
	sub r2, sl, #1
	bl string_fill_char
	mov r1, r4, lsl #0x18
	add r0, sp, #0xc
	mov r1, r1, asr #0x18
	bl string_put_char
_020D3830:
	add sb, sb, #1
	b _020D3D44
_020D3838:
	add fp, fp, #4
	cmp r6, #0
	ldr r7, [fp, #-4]
	mov r4, #0
	bge _020D3870
	ldrsb r0, [r7]
	cmp r0, #0
	beq _020D3884
_020D3858:
	add r4, r4, #1
	ldrsb r0, [r7, r4]
	cmp r0, #0
	bne _020D3858
	b _020D3884
_020D386C:
	add r4, r4, #1
_020D3870:
	cmp r4, r6
	bge _020D3884
	ldrsb r0, [r7, r4]
	cmp r0, #0
	bne _020D386C
_020D3884:
	tst r5, #8
	sub sl, sl, r4
	beq _020D38B4
	add r0, sp, #0xc
	mov r1, r7
	mov r2, r4
	bl string_put_string
	add r0, sp, #0xc
	mov r2, sl
	mov r1, #0x20
	bl string_fill_char
	b _020D38E4
_020D38B4:
	tst r5, #0x10
	movne r0, #0x30
	moveq r0, #0x20
	mov r1, r0, lsl #0x18
	add r0, sp, #0xc
	mov r2, sl
	mov r1, r1, asr #0x18
	bl string_fill_char
	add r0, sp, #0xc
	mov r1, r7
	mov r2, r4
	bl string_put_string
_020D38E4:
	add sb, sb, #1
	b _020D3D44
_020D38EC:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	tst r5, #0x100
	sub r2, r1, r0
	bne _020D393C
	tst r5, #0x40
	beq _020D3918
	add fp, fp, #4
	ldr r0, [fp, #-4]
	strh r2, [r0]
	b _020D393C
_020D3918:
	add fp, fp, #4
	tst r5, #0x80
	ldreq r0, [fp, #-4]
	streq r2, [r0]
	beq _020D393C
	ldr r0, [fp, #-4]
	mov r1, r2, asr #0x1f
	str r2, [r0, #0]
	str r1, [r0, #4]
_020D393C:
	add sb, sb, #1
	b _020D3D44
_020D3944:
	add r0, r2, #1
	cmp r0, sb
	bne _020D3960
	add r0, sp, #0xc
	add sb, sb, #1
	bl string_put_char
	b _020D3D44
_020D3960:
	mov r1, r2
	add r0, sp, #0xc
	sub r2, sb, r2
	bl string_put_string
	b _020D3D44
_020D3974:
	orr r5, r5, #0x1000
	mov r0, #0x10
_020D397C:
	tst r5, #8
	bicne r5, r5, #0x10
	cmp r6, #0
	bicge r5, r5, #0x10
	movlt r6, #1
	mov r4, #0
	tst r5, #0x1000
	beq _020D3A3C
	tst r5, #0x100
	beq _020D39B4
	add fp, fp, #4
	ldrb r7, [fp, #-4]
	mov r1, #0
	b _020D39EC
_020D39B4:
	tst r5, #0x40
	beq _020D39CC
	add fp, fp, #4
	ldrh r7, [fp, #-4]
	mov r1, #0
	b _020D39EC
_020D39CC:
	tst r5, #0x80
	addeq fp, fp, #4
	ldreq r7, [fp, #-4]
	moveq r1, #0
	beq _020D39EC
	add fp, fp, #8
	ldr r7, [fp, #-8]
	ldr r1, [fp, #-4]
_020D39EC:
	bic r5, r5, #3
	tst r5, #4
	beq _020D3AFC
	cmp r0, #0x10
	bne _020D3A24
	cmp r1, #0
	cmpeq r7, #0
	beq _020D3AFC
	add r4, r3, #0x21
	mov r2, #0x30
	strb r4, [sp, #8]
	strb r2, [sp, #9]
	mov r4, #2
	b _020D3AFC
_020D3A24:
	cmp r0, #8
	bne _020D3AFC
	mov r2, #0x30
	strb r2, [sp, #8]
	mov r4, #1
	b _020D3AFC
_020D3A3C:
	tst r5, #0x100
	beq _020D3A54
	add fp, fp, #4
	ldrsb r7, [fp, #-4]
	mov r1, r7, asr #0x1f
	b _020D3A8C
_020D3A54:
	tst r5, #0x40
	beq _020D3A6C
	add fp, fp, #4
	ldrsh r7, [fp, #-4]
	mov r1, r7, asr #0x1f
	b _020D3A8C
_020D3A6C:
	tst r5, #0x80
	addeq fp, fp, #4
	ldreq r7, [fp, #-4]
	moveq r1, r7, asr #0x1f
	beq _020D3A8C
	add fp, fp, #8
	ldr r7, [fp, #-8]
	ldr r1, [fp, #-4]
_020D3A8C:
	mov ip, #0
	and r2, ip, #0
	and r8, r1, #0x80000000
	cmp r2, #0
	cmpeq r8, #0
	beq _020D3AC4
	mvn r4, r7
	mov r2, #0x2d
	mvn r1, r1
	strb r2, [sp, #8]
	adds r7, r4, #1
	adc r1, r1, ip
	mov r4, #1
	b _020D3AFC
_020D3AC4:
	cmp r1, ip
	cmpeq r7, ip
	cmpeq r6, #0
	beq _020D3AFC
	tst r5, #2
	beq _020D3AEC
	mov r2, #0x2b
	strb r2, [sp, #8]
	mov r4, #1
	b _020D3AFC
_020D3AEC:
	tst r5, #1
	movne r2, #0x20
	strneb r2, [sp, #8]
	movne r4, #1
_020D3AFC:
	cmp r0, #8
	mov r8, #0
	beq _020D3B1C
	cmp r0, #0xa
	beq _020D3B68
	cmp r0, #0x10
	beq _020D3C00
	b _020D3C4C
_020D3B1C:
	cmp r1, r8
	cmpeq r7, r8
	beq _020D3C4C
	add r2, sp, #0x18
	mov r0, r8
	mov lr, #7
	mov ip, r8
_020D3B38:
	and r3, r7, lr
	add r3, r3, #0x30
	strb r3, [r2, r8]
	mov r3, r1, lsr #3
	cmp r3, r0
	mov r7, r7, lsr #3
	orr r7, r7, r1, lsl #29
	mov r1, r3
	cmpeq r7, ip
	add r8, r8, #1
	bne _020D3B38
	b _020D3C4C
_020D3B68:
	mov r0, r8
	cmp r0, r8
	cmpeq r1, r8
	bne _020D3BB4
	cmp r7, #0
	beq _020D3C4C
	ldr ip, _020D3D9C ; =0xCCCCCCCD
	add r3, sp, #0x18
	mov r2, #0xa
_020D3B8C:
	umull r1, r0, r7, ip
	movs r0, r0, lsr #3
	mul r1, r0, r2
	sub r1, r7, r1
	mov r7, r0
	add r0, r1, #0x30
	strb r0, [r3, r8]
	add r8, r8, #1
	bne _020D3B8C
	b _020D3C4C
_020D3BB4:
	cmp r1, r8
	cmpeq r7, r8
	beq _020D3C4C
_020D3BC0:
	mov r0, r7
	mov r2, #0xa
	mov r3, #0
	bl _ull_div
	mov r2, #0xa
	umull r3, r2, r0, r2
	subs r2, r7, r3
	add r3, r2, #0x30
	add r2, sp, #0x18
	strb r3, [r2, r8]
	cmp r1, #0
	cmpeq r0, #0
	mov r7, r0
	add r8, r8, #1
	bne _020D3BC0
	b _020D3C4C
_020D3C00:
	cmp r1, r8
	cmpeq r7, r8
	beq _020D3C4C
	add ip, sp, #0x18
	mov lr, #0xf
_020D3C14:
	and r2, r7, lr
	mov r7, r7, lsr #4
	mov r0, r1, lsr #4
	orr r7, r7, r1, lsl #28
	cmp r2, #0xa
	mov r1, r0
	addlt r0, r2, #0x30
	addge r0, r2, r3
	strb r0, [ip, r8]
	mov r0, #0
	cmp r1, r0
	cmpeq r7, r0
	add r8, r8, #1
	bne _020D3C14
_020D3C4C:
	cmp r4, #0
	ble _020D3C74
	ldrsb r0, [sp, #8]
	cmp r0, #0x30
	bne _020D3C74
	add r0, sp, #0x18
	mov r1, #0x30
	strb r1, [r0, r8]
	add r8, r8, #1
	mov r4, #0
_020D3C74:
	tst r5, #0x10
	sub r6, r6, r8
	beq _020D3C90
	sub r0, sl, r8
	sub r0, r0, r4
	cmp r6, r0
	movlt r6, r0
_020D3C90:
	cmp r6, #0
	subgt sl, sl, r6
	add r0, r4, r8
	sub sl, sl, r0
	ands r0, r5, #8
	str r0, [sp, #4]
	bne _020D3CBC
	add r0, sp, #0xc
	mov r2, sl
	mov r1, #0x20
	bl string_fill_char
_020D3CBC:
	cmp r4, #0
	ble _020D3CE8
	add r0, sp, #8
	add r5, r0, r4
	add r7, sp, #0xc
_020D3CD0:
	ldrsb r1, [r5, #-1]!
	mov r0, r7
	sub r4, r4, #1
	bl string_put_char
	cmp r4, #0
	bgt _020D3CD0
_020D3CE8:
	add r0, sp, #0xc
	mov r2, r6
	mov r1, #0x30
	bl string_fill_char
	cmp r8, #0
	ble _020D3D24
	add r0, sp, #0x18
	add r5, r0, r8
	add r4, sp, #0xc
_020D3D0C:
	ldrsb r1, [r5, #-1]!
	mov r0, r4
	sub r8, r8, #1
	bl string_put_char
	cmp r8, #0
	bgt _020D3D0C
_020D3D24:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020D3D40
	add r0, sp, #0xc
	mov r2, sl
	mov r1, #0x20
	bl string_fill_char
_020D3D40:
	add sb, sb, #1
_020D3D44:
	ldrsb r0, [sb]
	cmp r0, #0
	bne _020D3550
_020D3D50:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020D3D6C
	ldr r0, [sp, #0x10]
	mov r1, #0
	strb r1, [r0]
	b _020D3D88
_020D3D6C:
	ldr r0, [sp]
	cmp r0, #0
	beq _020D3D88
	ldr r1, [sp, #0x14]
	mov r2, #0
	add r0, r1, r0
	strb r2, [r0, #-1]
_020D3D88:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020D3D9C: .word 0xCCCCCCCD
	arm_func_end STD_TVSNPrintf