	.include "macros/function.inc"
	.include "overlay004/ov4_021F7128.inc"

	

	.text


	arm_func_start ov4_021F7128
ov4_021F7128: ; 0x021F7128
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldrb r5, [r0]
	mov lr, #0
	mov r4, #1
	and r6, r5, #1
	mov r3, lr
	mov ip, r4
	mov r1, lr
	mov r2, r4
_021F714C:
	add r7, r0, r4
	ldrb sl, [r7, #-1]
	cmp sl, r5
	eor sl, r4, sl
	movlo r8, ip
	and sl, sl, #1
	movhs r8, r3
	cmp r5, #0x4f
	movlo sb, r2
	eor sl, lr, sl
	movhs sb, r1
	eor sl, r6, sl
	eor sb, sl, sb
	eors lr, sb, r8
	beq _021F7194
	ldrb r8, [r7]
	tst r8, #1
	beq _021F71A8
_021F7194:
	cmp lr, #0
	ldreqb r7, [r7]
	andeq r7, r7, #1
	cmpeq r7, #1
	bne _021F71B0
_021F71A8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F71B0:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021F714C
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov4_021F7128

	arm_func_start ov4_021F71C4
ov4_021F71C4: ; 0x021F71C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	bne _021F71E4
	ldr r0, _021F72D0 ; =0x02219488
	ldr r1, _021F72D4 ; =0x02219490
	ldr r2, _021F72D8 ; =0x02219450
	mov r3, #0x2b
	bl __msl_assertion_failed
_021F71E4:
	bl ov4_021EA840
	bl srand
	bl rand
	ldr r5, _021F72DC ; =0x2C0B02C1
	mov r1, r0, lsr #0x1f
	smull r2, r4, r5, r0
	mov r8, #0
	mov r7, #1
	add r4, r1, r4, asr #4
	mov r3, #0x5d
	smull r1, r2, r3, r4
	sub r4, r0, r1
	add r0, r4, #0x21
	strb r0, [sl]
	mov fp, r8
	mov r6, r7
	mov r4, r3
_021F7228:
	add sb, sl, r7
	ldrb r3, [sb, #-1]
	ldrb r0, [sl]
	cmp r3, r0
	eor r3, r7, r3
	movlo r1, r6
	and r3, r3, #1
	movhs r1, fp
	cmp r0, #0x4f
	movlo r2, #1
	and r0, r0, #1
	eor r3, r8, r3
	movhs r2, #0
	eor r0, r0, r3
	eor r0, r0, r2
	eor r8, r0, r1
	bl rand
	smull r2, r3, r5, r0
	mov r1, r0, lsr #0x1f
	add r3, r1, r3, asr #4
	smull r1, r2, r4, r3
	sub r3, r0, r1
	add r0, r3, #0x21
	cmp r8, #0
	strb r0, [sb]
	beq _021F729C
	ldrb r0, [sb]
	tst r0, #1
	beq _021F72B0
_021F729C:
	cmp r8, #0
	ldreqb r0, [sb]
	andeq r0, r0, #1
	cmpeq r0, #1
	bne _021F72BC
_021F72B0:
	ldrb r0, [sb]
	add r0, r0, #1
	strb r0, [sb]
_021F72BC:
	add r7, r7, #1
	cmp r7, #0x20
	blt _021F7228
	mov r0, sl
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021F72D0: .word Unk_ov4_02219488
_021F72D4: .word Unk_ov4_02219490
_021F72D8: .word Unk_ov4_02219450
_021F72DC: .word 0x2C0B02C1
	arm_func_end ov4_021F71C4

	arm_func_start ov4_021F72E0
ov4_021F72E0: ; 0x021F72E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r0
	ldr r0, _021F73E0 ; =0x02219464
	mov r4, r1
	bl strlen
	mov r7, r0
	mov r0, r4
	bl ov4_021F7128
	mov sl, #0
	mov fp, r0
	mov r8, sl
_021F730C:
	cmp fp, #0
	cmpne sl, #0
	cmpne sl, #0xd
	bne _021F7344
	bl rand
	ldr r1, _021F73E4 ; =0x2C0B02C1
	mov r2, r0, lsr #0x1f
	smull r3, r6, r1, r0
	add r6, r2, r6, asr #4
	mov r1, #0x5d
	smull r2, r3, r1, r6
	sub r6, r0, r2
	add r0, r6, #0x21
	b _021F73C0
_021F7344:
	cmp sl, #1
	cmpne sl, #0xe
	ldreqsb r6, [r4, sl]
	addne r0, r4, sl
	ldrb sb, [r4, sl]
	ldrnesb r6, [r0, #-1]
	mov r1, r7
	add r0, sl, sb
	bl _s32_div_f
	mul r0, r6, r8
	mov r6, r1
	mov r1, r7
	bl _s32_div_f
	ldr r0, _021F73E0 ; =0x02219464
	ldrsb r3, [r0, r6]
	ldrsb r2, [r0, r1]
	mla r0, sl, sb, r3
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	ldrb r0, [r4, r0]
	eor r0, r0, r2
	bl abs
	ldr r1, _021F73E4 ; =0x2C0B02C1
	smull r2, r3, r1, r0
	mov r1, r0, lsr #0x1f
	add r3, r1, r3, asr #4
	mov r1, #0x5d
	smull r2, r3, r1, r3
	sub r3, r0, r2
	add r0, r3, #0x21
_021F73C0:
	strb r0, [r5, sl]
	add r0, r8, #0x47
	add sl, sl, #1
	cmp sl, #0x20
	add r8, r0, #0x4600
	blt _021F730C
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021F73E0: .word Unk_ov4_02219464
_021F73E4: .word 0x2C0B02C1
	arm_func_end ov4_021F72E0

	arm_func_start ov4_021F73E8
ov4_021F73E8: ; 0x021F73E8
	mov ip, #0
_021F73EC:
	cmp ip, #0
	cmpne ip, #0xd
	ldrneb r3, [r0, ip]
	ldrneb r2, [r1, ip]
	cmpne r3, r2
	movne r0, #0
	bxne lr
	add ip, ip, #1
	cmp ip, #0x20
	blt _021F73EC
	mov r0, #1
	bx lr
	arm_func_end ov4_021F73E8

	.data


	.global Unk_ov4_02219450
Unk_ov4_02219450: ; 0x02219450
	.incbin "incbin/overlay4_data.bin", 0x35D0, 0x35E4 - 0x35D0

	.global Unk_ov4_02219464
Unk_ov4_02219464: ; 0x02219464
	.incbin "incbin/overlay4_data.bin", 0x35E4, 0x3608 - 0x35E4

	.global Unk_ov4_02219488
Unk_ov4_02219488: ; 0x02219488
	.incbin "incbin/overlay4_data.bin", 0x3608, 0x3610 - 0x3608

	.global Unk_ov4_02219490
Unk_ov4_02219490: ; 0x02219490
	.incbin "incbin/overlay4_data.bin", 0x3610, 0xA

