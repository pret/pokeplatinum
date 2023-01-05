	.include "macros/function.inc"
	.include "include/unk_020D2114.inc"

	.extern Unk_021D03A8
	.extern Unk_021D03AC
	.extern Unk_021D03C8
	.extern Unk_021D03DC
	.extern CTRDGi_PollingSR512kCOMMON

	.text


	arm_func_start CTRDGi_EraseFlashChipCoreLE
CTRDGi_EraseFlashChipCoreLE: ; 0x020D2114
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D21E0 ; =0x021D03AC
	ldrh r0, [r0]
	bl OS_LockCartridge
	ldr r0, _020D21E4 ; =0x04000204
	ldr r1, _020D21E8 ; =0x02101488
	ldrh r3, [r0]
	ldr r2, [r1, #0]
	ldrh r1, [r0]
	ldr r4, [r2, #0x10]
	mov r2, #0
	bic r1, r1, #3
	orr r1, r1, r4
	strh r1, [r0]
	ldrh r4, [r0, #4]
	ldr r1, _020D21EC ; =0x021D03C8
	ldr lr, _020D21F0 ; =0x0A005555
	strh r2, [r0, #4]
	str r4, [r1, #0]
	mov r5, #0xaa
	ldr r4, _020D21F4 ; =0x0A002AAA
	strb r5, [lr]
	mov ip, #0x55
	strb ip, [r4]
	mov r2, #0x80
	strb r2, [lr]
	strb r5, [lr]
	strb ip, [r4]
	mov r2, #0x10
	strb r2, [lr]
	ldrh r2, [r0, #4]
	ldr r2, [r1, #0]
	ldr r1, _020D21F8 ; =0x021D03DC
	strh r2, [r0, #4]
	ldr r4, [r1, #0]
	mov r0, #3
	mov r1, #0xa000000
	mov r2, #0xff
	and r5, r3, #3
	blx r4
	ldr r3, _020D21E4 ; =0x04000204
	ldr r1, _020D21E0 ; =0x021D03AC
	ldrh r2, [r3]
	mov r4, r0
	bic r0, r2, #3
	orr r0, r0, r5
	strh r0, [r3]
	ldrh r0, [r1]
	bl OS_UnlockCartridge
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D21E0: .word Unk_021D03AC
_020D21E4: .word 0x04000204
_020D21E8: .word 0x02101488
_020D21EC: .word Unk_021D03C8
_020D21F0: .word 0x0A005555
_020D21F4: .word 0x0A002AAA
_020D21F8: .word Unk_021D03DC
	arm_func_end CTRDGi_EraseFlashChipCoreLE

	arm_func_start CTRDGi_EraseFlashSectorCoreLE
CTRDGi_EraseFlashSectorCoreLE: ; 0x020D21FC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldrh r4, [sp, #0x20]
	cmp r4, #0x10
	addhs sp, sp, #0x24
	ldrhs r0, _020D2310 ; =0x000080FF
	ldmhsia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020D2314 ; =0x021D03AC
	ldrh r0, [r0]
	bl OS_LockCartridge
	ldr r0, _020D2318 ; =0x04000204
	ldr r1, _020D231C ; =0x02101488
	ldrh r3, [r0]
	ldr r5, [r1, #0]
	ldrh r2, [r0]
	ldr r6, [r5, #0x10]
	mov r5, #0
	bic r2, r2, #3
	orr r2, r2, r6
	strh r2, [r0]
	ldr r2, [r1, #0]
	ldrh r1, [r0, #4]
	ldrh ip, [r2, #8]
	ldr r2, _020D2320 ; =0x021D03C8
	ldr lr, _020D2324 ; =0x0A005555
	strh r5, [r0, #4]
	mov r6, r4, lsl ip
	str r1, [r2, #0]
	mov r5, #0xaa
	ldr r4, _020D2328 ; =0x0A002AAA
	strb r5, [lr]
	mov ip, #0x55
	strb ip, [r4]
	mov r1, #0x80
	strb r1, [lr]
	strb r5, [lr]
	strb ip, [r4]
	add r1, r6, #0xa000000
	mov r4, #0x30
	strb r4, [r1]
	ldrh r4, [r0, #4]
	ldr r4, [r2, #0]
	ldr r2, _020D232C ; =0x021D03DC
	strh r4, [r0, #4]
	ldr r4, [r2, #0]
	mov r0, #2
	mov r2, #0xff
	and r5, r3, #3
	blx r4
	ldr r3, _020D2318 ; =0x04000204
	ldr r1, _020D2314 ; =0x021D03AC
	ldrh r2, [r3]
	mov r4, r0
	bic r0, r2, #3
	orr r0, r0, r5
	strh r0, [r3]
	ldrh r0, [r1]
	bl OS_UnlockCartridge
	mov r0, r4
	add sp, sp, #0x24
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020D2310: .word 0x000080FF
_020D2314: .word Unk_021D03AC
_020D2318: .word 0x04000204
_020D231C: .word 0x02101488
_020D2320: .word Unk_021D03C8
_020D2324: .word 0x0A005555
_020D2328: .word 0x0A002AAA
_020D232C: .word Unk_021D03DC
	arm_func_end CTRDGi_EraseFlashSectorCoreLE

	arm_func_start CTRDGi_ProgramFlashByteLE
CTRDGi_ProgramFlashByteLE: ; 0x020D2330
	stmfd sp!, {r3, lr}
	ldr ip, _020D2378 ; =0x0A005555
	mov r3, #0xaa
	ldr r2, _020D237C ; =0x0A002AAA
	strb r3, [ip]
	mov r3, #0x55
	mov lr, r0
	strb r3, [r2]
	mov r0, #0xa0
	strb r0, [ip]
	ldrb r2, [lr]
	ldr r3, _020D2380 ; =0x021D03DC
	mov r0, #1
	strb r2, [r1]
	ldrb r2, [lr]
	ldr r3, [r3, #0]
	blx r3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D2378: .word 0x0A005555
_020D237C: .word 0x0A002AAA
_020D2380: .word Unk_021D03DC
	arm_func_end CTRDGi_ProgramFlashByteLE

	arm_func_start CTRDGi_WriteFlashSectorCoreLE
CTRDGi_WriteFlashSectorCoreLE: ; 0x020D2384
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldmia r5!, {r0, r1, r2, r3}
	add r4, sp, #0
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	ldrh r8, [sp, #0x20]
	ldr r5, [sp, #0xc]
	cmp r8, #0x10
	addhs sp, sp, #0x24
	ldrhs r0, _020D2534 ; =0x000080FF
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _020D2538 ; =0x02101488
	ldr r6, _020D253C ; =CTRDGi_VerifyFlashCoreFF
	ldr r0, [r0, #0]
	mov sb, #0
	ldrh r0, [r0, #8]
	mov r0, r8, lsl r0
	add r7, r0, #0xa000000
_020D23E0:
	mov r0, r8
	bl CTRDGi_EraseFlashSectorLE
	movs r4, r0
	bne _020D2408
	mov r0, r7
	mov r1, r6
	bl CTRDGi_VerifyFlashErase
	mov r0, r0, lsl #0x10
	movs r4, r0, lsr #0x10
	beq _020D2428
_020D2408:
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	cmp sb, #0x50
	mov sb, r0, lsr #0x10
	bne _020D23E0
	add sp, sp, #0x24
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020D2428:
	mov r6, #1
	cmp sb, #0
	movne r6, #6
	cmp r6, #1
	mov sb, #1
	blo _020D245C
_020D2440:
	mov r0, r8
	bl CTRDGi_EraseFlashSectorLE
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	cmp r6, r0, lsr #16
	mov sb, r0, lsr #0x10
	bhs _020D2440
_020D245C:
	ldr r0, _020D2540 ; =0x021D03AC
	ldrh r0, [r0]
	bl OS_LockCartridge
	ldr r1, _020D2544 ; =0x04000204
	ldr r2, _020D2538 ; =0x02101488
	ldrh r0, [r1]
	ldr r6, [r2, #0]
	ldrh r3, [r1]
	ldr r8, [r6, #0x10]
	ldr r6, _020D2548 ; =0x021D03A8
	bic r3, r3, #3
	orr r3, r3, r8
	strh r3, [r1]
	ldr r2, [r2, #0]
	mov r3, #0
	ldr r8, [r2, #4]
	ldr r2, _020D254C ; =0x021D03C8
	strh r8, [r6]
	ldrh sb, [r1, #4]
	and r8, r0, #3
	strh r3, [r1, #4]
	ldrh r0, [r6]
	str sb, [r2]
	cmp r0, #0
	beq _020D24F4
_020D24C0:
	mov r0, r5
	mov r1, r7
	bl CTRDGi_ProgramFlashByteLE
	movs r4, r0
	bne _020D24F4
	ldrh r0, [r6]
	add r5, r5, #1
	add r7, r7, #1
	sub r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #0
	bne _020D24C0
_020D24F4:
	ldr r3, _020D2550 ; =0x04000208
	ldr r0, _020D254C ; =0x021D03C8
	ldrh r1, [r3]
	ldr r0, [r0, #0]
	sub r2, r3, #4
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _020D2540 ; =0x021D03AC
	bic r1, r1, #3
	orr r1, r1, r8
	strh r1, [r2]
	ldrh r0, [r0]
	bl OS_UnlockCartridge
	mov r0, r4
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020D2534: .word 0x000080FF
_020D2538: .word 0x02101488
_020D253C: .word CTRDGi_VerifyFlashCoreFF
_020D2540: .word Unk_021D03AC
_020D2544: .word 0x04000204
_020D2548: .word Unk_021D03A8
_020D254C: .word Unk_021D03C8
_020D2550: .word 0x04000208
	arm_func_end CTRDGi_WriteFlashSectorCoreLE

	arm_func_start CTRDGi_VerifyFlashCoreFF
CTRDGi_VerifyFlashCoreFF: ; 0x020D2554
	ldr r1, _020D2584 ; =0x02101488
	ldr r1, [r1, #0]
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _020D257C
_020D2568:
	ldrb r1, [r0], #1
	cmp r1, #0xff
	bne _020D257C
	subs r2, r2, #1
	bne _020D2568
_020D257C:
	mov r0, r2
	bx lr
	; .align 2, 0
_020D2584: .word 0x02101488
	arm_func_end CTRDGi_VerifyFlashCoreFF

	arm_func_start CTRDGi_VerifyFlashErase
CTRDGi_VerifyFlashErase: ; 0x020D2588
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020D2604 ; =0x021D03AC
	mov r5, r0
	ldrh r0, [r2]
	mov r4, r1
	bl OS_LockCartridge
	ldr ip, _020D2608 ; =0x04000204
	ldr r0, _020D260C ; =0x02101488
	ldrh r3, [ip]
	ldr r0, [r0, #0]
	ldrh r1, [ip]
	ldr r2, [r0, #0x10]
	mov r0, r5
	bic r1, r1, #3
	orr r1, r1, r2
	strh r1, [ip]
	and r6, r3, #3
	mov r5, #0
	blx r4
	cmp r0, #0
	ldr r2, _020D2608 ; =0x04000204
	ldr r0, _020D2604 ; =0x021D03AC
	ldrh r1, [r2]
	ldrne r5, _020D2610 ; =0x00008004
	bic r1, r1, #3
	orr r1, r1, r6
	strh r1, [r2]
	ldrh r0, [r0]
	bl OS_UnlockCartridge
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020D2604: .word Unk_021D03AC
_020D2608: .word 0x04000204
_020D260C: .word 0x02101488
_020D2610: .word 0x00008004
	arm_func_end CTRDGi_VerifyFlashErase

	arm_func_start CTRDGi_EraseFlashChipLE
CTRDGi_EraseFlashChipLE: ; 0x020D2614
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	add r0, sp, #0
	bl CTRDGi_EraseFlashChipCoreLE
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end CTRDGi_EraseFlashChipLE

	arm_func_start CTRDGi_EraseFlashSectorLE
CTRDGi_EraseFlashSectorLE: ; 0x020D2634
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	bl CTRDGi_EraseFlashSectorCoreLE
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end CTRDGi_EraseFlashSectorLE

	arm_func_start CTRDGi_WriteFlashSectorLE
CTRDGi_WriteFlashSectorLE: ; 0x020D2658
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	strh r0, [sp, #0x20]
	add r0, sp, #0
	str r1, [sp, #0xc]
	bl CTRDGi_WriteFlashSectorCoreLE
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x24
	ldmia sp!, {pc}
	arm_func_end CTRDGi_WriteFlashSectorLE

	arm_func_start CTRDGi_EraseFlashChipAsyncLE
CTRDGi_EraseFlashChipAsyncLE: ; 0x020D2680
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldr r1, _020D26A0 ; =CTRDGi_EraseFlashChipCoreLE
	mov r2, r0
	add r0, sp, #0
	bl CTRDGi_SetTask
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D26A0: .word CTRDGi_EraseFlashChipCoreLE
	arm_func_end CTRDGi_EraseFlashChipAsyncLE

	arm_func_start CTRDGi_EraseFlashSectorAsyncLE
CTRDGi_EraseFlashSectorAsyncLE: ; 0x020D26A4
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov r2, r1
	strh r0, [sp, #0x20]
	ldr r1, _020D26C8 ; =CTRDGi_EraseFlashSectorCoreLE
	add r0, sp, #0
	bl CTRDGi_SetTask
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D26C8: .word CTRDGi_EraseFlashSectorCoreLE
	arm_func_end CTRDGi_EraseFlashSectorAsyncLE

	arm_func_start CTRDGi_WriteFlashSectorAsyncLE
CTRDGi_WriteFlashSectorAsyncLE: ; 0x020D26CC
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	str r1, [sp, #0xc]
	strh r0, [sp, #0x20]
	ldr r1, _020D26F0 ; =CTRDGi_WriteFlashSectorCoreLE
	add r0, sp, #0
	bl CTRDGi_SetTask
	add sp, sp, #0x24
	ldmia sp!, {pc}
	; .align 2, 0
_020D26F0: .word CTRDGi_WriteFlashSectorCoreLE
	arm_func_end CTRDGi_WriteFlashSectorAsyncLE

	.rodata


	.global Unk_020FE620
Unk_020FE620: ; 0x020FE620
	.incbin "incbin/arm9_rodata.bin", 0x199E0, 0x199E8 - 0x199E0

	.global Unk_020FE628
Unk_020FE628: ; 0x020FE628
	.word CTRDGi_WriteFlashSectorLE
    .word CTRDGi_EraseFlashChipLE
    .word CTRDGi_EraseFlashSectorLE
    .word CTRDGi_WriteFlashSectorAsyncLE
    .word CTRDGi_EraseFlashChipAsyncLE
    .word CTRDGi_EraseFlashSectorAsyncLE
    .word CTRDGi_PollingSR512kCOMMON
    .word Unk_020FE620
	.incbin "incbin/arm9_rodata.bin", 0x199E8+0x20, 0x19A24 - 0x19A08

	.global Unk_020FE664
Unk_020FE664: ; 0x020FE664
	.word CTRDGi_WriteFlashSectorLE
    .word CTRDGi_EraseFlashChipLE
    .word CTRDGi_EraseFlashSectorLE
    .word CTRDGi_WriteFlashSectorAsyncLE
    .word CTRDGi_EraseFlashChipAsyncLE
    .word CTRDGi_EraseFlashSectorAsyncLE
    .word CTRDGi_PollingSR512kCOMMON
	.word Unk_020FE620
	.incbin "incbin/arm9_rodata.bin", 0x19A24+0x20, 0x1C

