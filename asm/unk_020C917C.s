	.include "macros/function.inc"
	.include "include/unk_020C917C.inc"

	

	.text


	arm_func_start DGT_Hash2Reset
DGT_Hash2Reset: ; 0x020C917C
	ldr r1, _020C91B8 ; =0x67452301
	ldr r2, _020C91BC ; =0xEFCDAB89
	str r1, [r0, #0]
	ldr r1, _020C91C0 ; =0x98BADCFE
	str r2, [r0, #4]
	ldr r2, _020C91C4 ; =0x10325476
	str r1, [r0, #8]
	ldr r1, _020C91C8 ; =0xC3D2E1F0
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	; .align 2, 0
_020C91B8: .word 0x67452301
_020C91BC: .word 0xEFCDAB89
_020C91C0: .word 0x98BADCFE
_020C91C4: .word 0x10325476
_020C91C8: .word 0xC3D2E1F0
	arm_func_end DGT_Hash2Reset

	arm_func_start DGT_Hash2SetSource
DGT_Hash2SetSource: ; 0x020C91CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	movs r8, r2
	mov sb, r1
	add r6, sl, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x14]
	add r1, r0, r8, lsl #3
	cmp r1, r0
	ldrlo r0, [sl, #0x18]
	addlo r0, r0, #1
	strlo r0, [sl, #0x18]
	ldr r0, [sl, #0x18]
	add r0, r0, r8, lsr #29
	str r0, [sl, #0x18]
	str r1, [sl, #0x14]
	ldr r1, [sl, #0x1c]
	cmp r1, #0
	beq _020C9284
	add r0, r1, r8
	cmp r0, #0x40
	blo _020C9264
	rsb r4, r1, #0x40
	mov r0, sb
	mov r2, r4
	add r1, r6, r1
	bl MI_CpuCopy8
	ldr r1, _020C931C ; =0x02101338
	mov r0, sl
	ldr r3, [r1, #0]
	mov r1, r6
	mov r2, #0x40
	sub r8, r8, r4
	add sb, sb, r4
	blx r3
	mov r0, #0
	str r0, [sl, #0x1c]
	b _020C9284
_020C9264:
	mov r0, sb
	mov r2, r8
	add r1, r6, r1
	bl MI_CpuCopy8
	ldr r0, [sl, #0x1c]
	add r0, r0, r8
	str r0, [sl, #0x1c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C9284:
	cmp r8, #0x40
	blo _020C92FC
	bic r7, r8, #0x3f
	tst sb, #3
	sub r8, r8, r7
	bne _020C92BC
	ldr r1, _020C931C ; =0x02101338
	mov r0, sl
	ldr r3, [r1, #0]
	mov r1, sb
	mov r2, r7
	blx r3
	add sb, sb, r7
	b _020C92FC
_020C92BC:
	mov r5, #0x40
	ldr r4, _020C931C ; =0x02101338
	mov fp, r5
_020C92C8:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl MI_CpuCopy8
	ldr r3, [r4, #0]
	mov r0, sl
	mov r1, r6
	add sb, sb, #0x40
	mov r2, fp
	blx r3
	sub r7, r7, #0x40
	cmp r7, #0
	bgt _020C92C8
_020C92FC:
	str r8, [sl, #0x1c]
	cmp r8, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	mov r1, r6
	mov r2, r8
	bl MI_CpuCopy8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020C931C: .word Unk_02101338
	arm_func_end DGT_Hash2SetSource

	arm_func_start DGT_Hash2GetDigest
DGT_Hash2GetDigest: ; 0x020C9320
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, [sp, #0x10]
	mov r6, r1
	ldr r3, [r0, #0x1c]
	add r4, r0, #0x20
	tst r3, #3
	mov r2, r3, asr #2
	moveq r0, #0
	streq r0, [r4, r2, lsl #2]
	ldr r1, [sp, #0x10]
	mov r0, #0x80
	add r5, r1, #0x20
	strb r0, [r5, r3]
	add r3, r3, #1
	tst r3, #3
	beq _020C9378
	mov r0, #0
_020C9368:
	strb r0, [r5, r3]
	add r3, r3, #1
	tst r3, #3
	bne _020C9368
_020C9378:
	ldr r0, [sp, #0x10]
	add r2, r2, #1
	ldr r0, [r0, #0x1c]
	cmp r0, #0x38
	blt _020C93C4
	cmp r2, #0x10
	bge _020C93A8
	mov r0, #0
_020C9398:
	str r0, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x10
	blt _020C9398
_020C93A8:
	ldr r1, _020C9518 ; =0x02101338
	ldr r0, [sp, #0x10]
	ldr r3, [r1, #0]
	mov r1, r4
	mov r2, #0x40
	blx r3
	mov r2, #0
_020C93C4:
	cmp r2, #0xe
	bge _020C93E0
	mov r0, #0
_020C93D0:
	str r0, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0xe
	blt _020C93D0
_020C93E0:
	ldr r0, [sp, #0x10]
	ldr r3, _020C9518 ; =0x02101338
	ldr r2, [r0, #0x14]
	mov r1, r4
	strb r2, [r5, #0x3f]
	mov r0, r2, lsr #8
	strb r0, [r5, #0x3e]
	mov r0, r2, lsr #0x10
	strb r0, [r5, #0x3d]
	mov r0, r2, lsr #0x18
	strb r0, [r5, #0x3c]
	ldr r0, [sp, #0x10]
	mov r2, #0x40
	ldr r4, [r0, #0x18]
	strb r4, [r5, #0x3b]
	mov r0, r4, lsr #8
	strb r0, [r5, #0x3a]
	mov r0, r4, lsr #0x10
	strb r0, [r5, #0x39]
	mov r0, r4, lsr #0x18
	strb r0, [r5, #0x38]
	ldr r0, [sp, #0x10]
	ldr r3, [r3, #0]
	blx r3
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0]
	mov r0, r1, lsr #0x18
	strb r0, [r6]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #1]
	mov r0, r1, lsr #8
	strb r0, [r6, #2]
	strb r1, [r6, #3]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #4]
	mov r0, r1, lsr #0x18
	strb r0, [r6, #4]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #5]
	mov r0, r1, lsr #8
	strb r0, [r6, #6]
	strb r1, [r6, #7]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #8]
	mov r0, r1, lsr #0x18
	strb r0, [r6, #8]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #9]
	mov r0, r1, lsr #8
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0xc]
	mov r0, r1, lsr #0x18
	strb r0, [r6, #0xc]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #0xd]
	mov r0, r1, lsr #8
	strb r0, [r6, #0xe]
	strb r1, [r6, #0xf]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	mov r0, r1, lsr #0x18
	strb r0, [r6, #0x10]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #0x11]
	mov r0, r1, lsr #8
	strb r0, [r6, #0x12]
	strb r1, [r6, #0x13]
	ldr r3, [sp, #0x10]
	mov r0, #0
	add r1, sp, #0x10
	mov r2, #4
	str r0, [r3, #0x1c]
	bl MIi_CpuClear32
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020C9518: .word Unk_02101338
	arm_func_end DGT_Hash2GetDigest

	arm_func_start DGT_Hash2CalcHmac
DGT_Hash2CalcHmac: ; 0x020C951C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xa0
	ldr lr, _020C95A0 ; =0x020FE4E8
	add ip, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, ip
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	add lr, sp, #0x38
	add ip, sp, #0x24
	str lr, [sp, #0x10]
	ldr lr, _020C95A4 ; =DGT_Hash2Reset
	str ip, [sp, #0x14]
	ldr ip, _020C95A8 ; =DGT_Hash2SetSource
	str lr, [sp, #0x18]
	ldr lr, _020C95AC ; =DGT_Hash2GetDigest
	str ip, [sp, #0x1c]
	ldr ip, [sp, #0xb8]
	str lr, [sp, #0x20]
	str ip, [sp]
	mov r3, r5
	mov r0, r8
	mov r1, r7
	mov r2, r6
	str r4, [sp, #4]
	bl HmacCalc
	add sp, sp, #0xa0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C95A0: .word Unk_020FE4E8
_020C95A4: .word DGT_Hash2Reset
_020C95A8: .word DGT_Hash2SetSource
_020C95AC: .word DGT_Hash2GetDigest
	arm_func_end DGT_Hash2CalcHmac

	.rodata


	.global Unk_020FE4E8
Unk_020FE4E8: ; 0x020FE4E8
	.incbin "incbin/arm9_rodata.bin", 0x198A8, 0x198C4 - 0x198A8

	.global Unk_020FE504
Unk_020FE504: ; 0x020FE504
	.incbin "incbin/arm9_rodata.bin", 0x198C4, 0x198E0 - 0x198C4

	.global Unk_020FE520
Unk_020FE520: ; 0x020FE520
	.incbin "incbin/arm9_rodata.bin", 0x198E0, 0x1C



	.data


	.global Unk_02101334
Unk_02101334: ; 0x02101334
	.incbin "incbin/arm9_data.bin", 0x2654, 0x2658 - 0x2654

	.global Unk_02101338
Unk_02101338: ; 0x02101338
	.incbin "incbin/arm9_data.bin", 0x2658, 0x265C - 0x2658

	.global Unk_0210133C
Unk_0210133C: ; 0x0210133C
	.incbin "incbin/arm9_data.bin", 0x265C, 0x266C - 0x265C

	.global Unk_0210134C
Unk_0210134C: ; 0x0210134C
	.incbin "incbin/arm9_data.bin", 0x266C, 0x267C - 0x266C

	.global Unk_0210135C
Unk_0210135C: ; 0x0210135C
	.incbin "incbin/arm9_data.bin", 0x267C, 0x268C - 0x267C

	.global Unk_0210136C
Unk_0210136C: ; 0x0210136C
	.incbin "incbin/arm9_data.bin", 0x268C, 0x2690 - 0x268C

	.global Unk_02101370
Unk_02101370: ; 0x02101370
	.incbin "incbin/arm9_data.bin", 0x2690, 0x26A8 - 0x2690

	.global Unk_02101388
Unk_02101388: ; 0x02101388
	.incbin "incbin/arm9_data.bin", 0x26A8, 0x26C0 - 0x26A8

	.global Unk_021013A0
Unk_021013A0: ; 0x021013A0
	.incbin "incbin/arm9_data.bin", 0x26C0, 0x26D8 - 0x26C0

	.global Unk_021013B8
Unk_021013B8: ; 0x021013B8
	.incbin "incbin/arm9_data.bin", 0x26D8, 0x26F0 - 0x26D8

	.global Unk_021013D0
Unk_021013D0: ; 0x021013D0
	.incbin "incbin/arm9_data.bin", 0x26F0, 0x272C - 0x26F0

	.global Unk_0210140C
Unk_0210140C: ; 0x0210140C
	.incbin "incbin/arm9_data.bin", 0x272C, 0x41

