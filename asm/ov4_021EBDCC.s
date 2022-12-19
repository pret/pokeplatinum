	.include "macros/function.inc"
	.include "include/ov4_021EBDCC.inc"

	

	.text


	arm_func_start ov4_021EBDCC
ov4_021EBDCC: ; 0x021EBDCC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #0x490
	mov r5, r1
	mov r4, r2
	bl ov4_021D7880
	str r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r1, #0
	mov r2, #0x490
	bl sub_020D5124
	ldr r0, [sp]
	mov r3, #0
	strb r3, [r0]
	ldr r0, [sp]
	mov r2, #1
	str r3, [r0, #0x418]
	ldr r1, [sp]
	add r0, sp, #0
	str r2, [r1, #0x100]
	ldr r1, [sp]
	str r3, [r1, #0x104]
	ldr r1, [sp]
	str r3, [r1, #0x108]
	ldr r1, [sp]
	str r3, [r1, #0x10c]
	ldr r1, [sp]
	str r5, [r1, #0x46c]
	ldr r1, [sp]
	str r4, [r1, #0x470]
	bl ov4_021F300C
	cmp r0, #0
	bne _021EBE84
	ldr r0, [sp]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [sp]
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EBE84:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x420]
	mov r3, r1
_021EBE94:
	ldr r0, [sp]
	add r0, r0, r1, lsl #3
	str r3, [r0, #0x1a4]
	ldr r0, [sp]
	add r0, r0, r1, lsl #3
	add r1, r1, #1
	str r3, [r0, #0x1a8]
	cmp r1, #6
	blt _021EBE94
	ldr r2, [sp]
	ldr r1, _021EBF10 ; =0x02217A8C
	add r0, sp, #0
	str r3, [r2, #0x460]
	bl ov4_021F5894
	add r0, sp, #0
	bl ov4_021EBF70
	movs r4, r0
	beq _021EBEF0
	add r0, sp, #0
	bl ov4_021EBF14
	add sp, sp, #4
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EBEF0:
	bl ov4_021EA8A4
	bl ov4_021EA840
	bl sub_020D76D4
	ldr r1, [sp]
	mov r0, #0
	str r1, [r6, #0]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021EBF10: .word 0x02217A8C
	arm_func_end ov4_021EBDCC

	arm_func_start ov4_021EBF14
ov4_021EBF14: ; 0x021EBF14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0]
	mov r1, #1
	bl ov4_021EF75C
	ldr r0, [r4, #0x460]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x460]
	ldr r0, [r4, #0x428]
	bl ov4_021EA364
	mov r0, r4
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r5, #0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021EBF14

	arm_func_start ov4_021EBF54
ov4_021EBF54: ; 0x021EBF54
	mov r0, #0
	str r0, [r1, #8]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	mov r0, #1
	bx lr
	arm_func_end ov4_021EBF54

	arm_func_start ov4_021EBF70
ov4_021EBF70: ; 0x021EBF70
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0]
	mov r1, #0
	strb r1, [r4, #0x110]
	strb r1, [r4, #0x12f]
	strb r1, [r4, #0x144]
	sub r0, r1, #1
	str r0, [r4, #0x1d4]
	str r1, [r4, #0x1d8]
	str r1, [r4, #0x1e4]
	str r1, [r4, #0x1e8]
	str r1, [r4, #0x1e0]
	ldr r0, [r4, #0x1dc]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x1dc]
	str r0, [r4, #0x1f0]
	ldr r0, [r4, #0x1ec]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x1ec]
	str r0, [r4, #0x1fc]
	str r0, [r4, #0x200]
	str r0, [r4, #0x1f8]
	ldr r0, [r4, #0x1f4]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x1f4]
	str r0, [r4, #0x448]
	str r0, [r4, #0x44c]
	str r0, [r4, #0x444]
	ldr r0, [r4, #0x440]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x440]
	str r0, [r4, #0x458]
	str r0, [r4, #0x45c]
	str r0, [r4, #0x454]
	ldr r0, [r4, #0x450]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x450]
	sub r0, r0, #1
	str r0, [r4, #0x204]
	mov r0, #2
	str r0, [r4, #0x20c]
	ldr r1, [r4, #0x424]
	cmp r1, #0
	beq _021EC04C
_021EC038:
	mov r0, r5
	bl ov4_021F1BA8
	ldr r1, [r4, #0x424]
	cmp r1, #0
	bne _021EC038
_021EC04C:
	mov r2, #0
	str r2, [r4, #0x424]
	ldr r1, _021EC094 ; =ov4_021EBF54
	mov r0, r5
	str r2, [r4, #0x430]
	bl ov4_021F33F4
	mov r0, #0
	str r0, [r4, #0x19c]
	str r0, [r4, #0x1a0]
	str r0, [r4, #0x198]
	str r0, [r4, #0x210]
	str r0, [r4, #0x41c]
	str r0, [r4, #0x434]
	sub r1, r0, #1
	str r1, [r4, #0x214]
	strb r0, [r4, #0x218]
	strb r0, [r4, #0x318]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021EC094: .word ov4_021EBF54
	arm_func_end ov4_021EBF70

	arm_func_start ov4_021EC098
ov4_021EC098: ; 0x021EC098
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r1, #0
	mov r4, r0
	str r1, [sp, #8]
	ldr sl, [r4]
_021EC0B0:
	mov r0, r4
	add r1, sl, #0x1f4
	bl ov4_021F053C
	mov r1, #1
	ldr r0, _021EC384 ; =0x02217AB0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sl, #0x1d4]
	add r3, sp, #8
	mov r0, r4
	add r2, sl, #0x1f4
	bl ov4_021EDB54
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r1, sp, #8
	ldr r0, _021EC384 ; =0x02217AB0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sl, #0x1d4]
	add r3, sp, #0xc
	mov r0, r4
	add r2, sl, #0x1dc
	bl ov4_021ED92C
	cmp r0, #0
	beq _021EC150
	cmp r0, #3
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, _021EC388 ; =0x02217AB4
	mov r0, r4
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r4
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x14
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC150:
	ldr r0, [sl, #0x1dc]
	ldr r1, _021EC38C ; =0x02217AE0
	bl sub_020D90B0
	movs r5, r0
	beq _021EC320
	ldr r6, _021EC390 ; =0x02217B04
	ldr r8, _021EC394 ; =0x02217AE8
	add fp, sp, #0x10
	mov r7, #0x800
	mov sb, #0
_021EC178:
	strb sb, [r5]
	mov r0, r4
	mov r1, r8
	ldr r2, [sl, #0x1dc]
	bl ov4_021F5894
	ldr r0, [sl, #0x1dc]
	sub r1, r5, r0
	str r1, [sp, #0xc]
	ldr r0, [sl, #0x1f0]
	cmp r1, r0
	ble _021EC1E8
	ldr r0, [sl, #0x1f0]
	cmp r1, #0x800
	movlt r1, r7
	add r0, r0, r1
	str r0, [sl, #0x1f0]
	add r1, r0, #1
	ldr r0, [sl, #0x1ec]
	bl ov4_021D7894
	cmp r0, #0
	bne _021EC1E4
	ldr r1, _021EC398 ; =0x02217AF4
	mov r0, r4
	bl ov4_021F5D68
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC1E4:
	str r0, [sl, #0x1ec]
_021EC1E8:
	ldr r2, [sp, #0xc]
	ldr r0, [sl, #0x1ec]
	ldr r1, [sl, #0x1dc]
	add r2, r2, #1
	bl sub_020D50B8
	ldr r0, [sl, #0x1dc]
	add r1, r5, #7
	ldr r2, [sl, #0x1e4]
	sub r0, r1, r0
	sub r0, r2, r0
	str r0, [sl, #0x1e4]
	add r2, r0, #1
	ldr r0, [sl, #0x1dc]
	bl sub_020D50D8
	ldr r5, [sl, #0x1ec]
	mov r1, r6
	mov r0, r5
	bl sub_020D90B0
	cmp r0, #0
	beq _021EC290
	add r0, r0, #4
	bl sub_020DAE0C
	mov r5, r0
	mov r0, r4
	mov r1, fp
	mov r2, r5
	bl ov4_021F1BF8
	cmp r0, #0
	bne _021EC270
	ldr r1, _021EC39C ; =0x02217B0C
	mov r2, r5
	mov r0, r4
	bl ov4_021F5894
	b _021EC30C
_021EC270:
	mov r0, r4
	ldr r1, [sp, #0x10]
	ldr r2, [sl, #0x1ec]
	bl ov4_021F1C80
	cmp r0, #0
	beq _021EC30C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC290:
	mov r1, r5
	mov r0, r4
	mov r2, #1
	bl ov4_021F58A0
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, [sl, #0x1ec]
	ldr r1, _021EC3A0 ; =0x02217B34
	mov r0, r5
	mov r2, #4
	bl sub_020D8E28
	cmp r0, #0
	bne _021EC2E8
	mov r1, r5
	mov r0, r4
	bl ov4_021EC60C
	cmp r0, #0
	beq _021EC30C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC2E8:
	ldr r1, _021EC3A4 ; =0x02217B3C
	mov r0, r5
	mov r2, #0xa
	bl sub_020D8E28
	cmp r0, #0
	beq _021EC30C
	ldr r1, _021EC3A8 ; =0x02217B44
	mov r0, r4
	bl ov4_021F5894
_021EC30C:
	ldr r0, [sl, #0x1dc]
	ldr r1, _021EC38C ; =0x02217AE0
	bl sub_020D90B0
	movs r5, r0
	bne _021EC178
_021EC320:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021EC358
	ldr r2, _021EC3AC ; =0x02217B74
	mov r0, r4
	mov r1, #7
	bl ov4_021F5D44
	mov r0, r4
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EC358:
	mov r0, r4
	bl ov4_021F1C44
	movs r5, r0
	beq _021EC370
	mov r0, #0xa
	bl ov4_021EA898
_021EC370:
	cmp r5, #0
	bne _021EC0B0
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021EC384: .word 0x02217AB0
_021EC388: .word 0x02217AB4
_021EC38C: .word 0x02217AE0
_021EC390: .word 0x02217B04
_021EC394: .word 0x02217AE8
_021EC398: .word 0x02217AF4
_021EC39C: .word 0x02217B0C
_021EC3A0: .word 0x02217B34
_021EC3A4: .word 0x02217B3C
_021EC3A8: .word 0x02217B44
_021EC3AC: .word 0x02217B74
	arm_func_end ov4_021EC098

	arm_func_start ov4_021EC3B0
ov4_021EC3B0: ; 0x021EC3B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r6, [sl]
	mov sb, r1
	ldr r0, [r6, #0x1d8]
	mov r7, #0
	cmp r0, #4
	bls _021EC3E4
	ldr r0, _021EC550 ; =0x02217B9C
	ldr r1, _021EC554 ; =0x02217C94
	ldr r2, _021EC558 ; =0x02217A80
	ldr r3, _021EC55C ; =0x000001B6
	bl sub_020D407C
_021EC3E4:
	ldr r0, [r6, #0x1d8]
	cmp r0, #1
	bne _021EC484
	mov r4, #0
	mov r5, #1
	mov fp, #0xa
_021EC3FC:
	mov r0, sl
	bl ov4_021EF5F4
	movs r7, r0
	bne _021EC424
	cmp sb, #0
	beq _021EC424
	ldr r0, [r6, #0x1d8]
	cmp r0, #1
	moveq r8, r5
	beq _021EC428
_021EC424:
	mov r8, r4
_021EC428:
	cmp r8, #0
	beq _021EC438
	mov r0, fp
	bl ov4_021EA898
_021EC438:
	cmp r8, #0
	bne _021EC3FC
	cmp r7, #0
	beq _021EC484
	add r1, sp, #0
	mov r0, sl
	mov r2, #1
	bl ov4_021F1BF8
	cmp r0, #0
	beq _021EC470
	ldr r0, [sp]
	mov r1, #4
	str r1, [r0, #0x1c]
	b _021EC484
_021EC470:
	ldr r0, _021EC560 ; =0x02217C9C
	ldr r1, _021EC554 ; =0x02217C94
	ldr r2, _021EC558 ; =0x02217A80
	mov r3, #0x1dc
	bl sub_020D407C
_021EC484:
	ldr r0, [r6, #0x1d8]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021EC4BC
	cmp r7, #0
	bne _021EC4A8
	mov r0, sl
	bl ov4_021EC098
	mov r7, r0
_021EC4A8:
	cmp r7, #0
	bne _021EC4BC
	mov r0, sl
	bl ov4_021F28C0
	mov r7, r0
_021EC4BC:
	cmp r7, #0
	bne _021EC4D0
	mov r0, sl
	bl ov4_021F54A4
	mov r7, r0
_021EC4D0:
	ldr r1, [r6, #0x424]
	str r1, [sp]
	cmp r1, #0
	beq _021EC51C
_021EC4E0:
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	ldreq r0, [r1, #0x20]
	streq r0, [sp]
	beq _021EC510
	mov r0, sl
	bl ov4_021F1708
	ldr r1, [sp]
	mov r0, sl
	ldr r2, [r1, #0x20]
	str r2, [sp]
	bl ov4_021F1BA8
_021EC510:
	ldr r1, [sp]
	cmp r1, #0
	bne _021EC4E0
_021EC51C:
	mov r0, sl
	mov r1, sb
	bl ov4_021EE1F8
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r6, #0x41c]
	cmp r0, #0
	beq _021EC548
	mov r0, sl
	mov r1, #0
	bl ov4_021EF75C
_021EC548:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021EC550: .word 0x02217B9C
_021EC554: .word 0x02217C94
_021EC558: .word 0x02217A80
_021EC55C: .word 0x000001B6
_021EC560: .word 0x02217C9C
	arm_func_end ov4_021EC3B0

	.data


	.global Unk_ov4_02217A80
Unk_ov4_02217A80: ; 0x02217A80
	.incbin "incbin/overlay4_data.bin", 0x1C00, 0x1C0C - 0x1C00

	.global Unk_ov4_02217A8C
Unk_ov4_02217A8C: ; 0x02217A8C
	.incbin "incbin/overlay4_data.bin", 0x1C0C, 0x1C30 - 0x1C0C

	.global Unk_ov4_02217AB0
Unk_ov4_02217AB0: ; 0x02217AB0
	.incbin "incbin/overlay4_data.bin", 0x1C30, 0x1C34 - 0x1C30

	.global Unk_ov4_02217AB4
Unk_ov4_02217AB4: ; 0x02217AB4
	.incbin "incbin/overlay4_data.bin", 0x1C34, 0x1C60 - 0x1C34

	.global Unk_ov4_02217AE0
Unk_ov4_02217AE0: ; 0x02217AE0
	.incbin "incbin/overlay4_data.bin", 0x1C60, 0x1C68 - 0x1C60

	.global Unk_ov4_02217AE8
Unk_ov4_02217AE8: ; 0x02217AE8
	.incbin "incbin/overlay4_data.bin", 0x1C68, 0x1C74 - 0x1C68

	.global Unk_ov4_02217AF4
Unk_ov4_02217AF4: ; 0x02217AF4
	.incbin "incbin/overlay4_data.bin", 0x1C74, 0x1C84 - 0x1C74

	.global Unk_ov4_02217B04
Unk_ov4_02217B04: ; 0x02217B04
	.incbin "incbin/overlay4_data.bin", 0x1C84, 0x1C8C - 0x1C84

	.global Unk_ov4_02217B0C
Unk_ov4_02217B0C: ; 0x02217B0C
	.incbin "incbin/overlay4_data.bin", 0x1C8C, 0x1CB4 - 0x1C8C

	.global Unk_ov4_02217B34
Unk_ov4_02217B34: ; 0x02217B34
	.incbin "incbin/overlay4_data.bin", 0x1CB4, 0x1CBC - 0x1CB4

	.global Unk_ov4_02217B3C
Unk_ov4_02217B3C: ; 0x02217B3C
	.incbin "incbin/overlay4_data.bin", 0x1CBC, 0x1CC4 - 0x1CBC

	.global Unk_ov4_02217B44
Unk_ov4_02217B44: ; 0x02217B44
	.incbin "incbin/overlay4_data.bin", 0x1CC4, 0x1CF4 - 0x1CC4

	.global Unk_ov4_02217B74
Unk_ov4_02217B74: ; 0x02217B74
	.incbin "incbin/overlay4_data.bin", 0x1CF4, 0x1D1C - 0x1CF4

	.global Unk_ov4_02217B9C
Unk_ov4_02217B9C: ; 0x02217B9C
	.incbin "incbin/overlay4_data.bin", 0x1D1C, 0x1E14 - 0x1D1C

	.global Unk_ov4_02217C94
Unk_ov4_02217C94: ; 0x02217C94
	.incbin "incbin/overlay4_data.bin", 0x1E14, 0x1E1C - 0x1E14

	.global Unk_ov4_02217C9C
Unk_ov4_02217C9C: ; 0x02217C9C
	.incbin "incbin/overlay4_data.bin", 0x1E1C, 0x2

