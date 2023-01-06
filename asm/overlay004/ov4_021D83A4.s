	.include "macros/function.inc"
	.include "overlay004/ov4_021D83A4.inc"

	

	.text


	arm_func_start ov4_021D83A4
ov4_021D83A4: ; 0x021D83A4
	ldr ip, _021D83B8 ; =ov4_021D7790
	mov r2, r1
	mov r1, r0
	mov r0, #6
	bx ip
	; .align 2, 0
_021D83B8: .word ov4_021D7790
	arm_func_end ov4_021D83A4

	arm_func_start ov4_021D83BC
ov4_021D83BC: ; 0x021D83BC
	ldr ip, _021D83D0 ; =DWC_Free
	mov r1, r0
	mov r0, #6
	mov r2, #0
	bx ip
	; .align 2, 0
_021D83D0: .word DWC_Free
	arm_func_end ov4_021D83BC

	arm_func_start ov4_021D83D4
ov4_021D83D4: ; 0x021D83D4
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	bne _021D83FC
	ldr r3, _021D84B4 ; =0x0221A4E8
	ldr r3, [r3, #0]
	ldr r3, [r3, #0]
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
_021D83FC:
	cmp r5, #8
	addls pc, pc, r5, lsl #2
	b _021D8490
_021D8408: ; jump table
	b _021D8490 ; case 0
	b _021D842C ; case 1
	b _021D843C ; case 2
	b _021D8444 ; case 3
	b _021D8454 ; case 4
	b _021D8464 ; case 5
	b _021D8494 ; case 6
	b _021D8478 ; case 7
	b _021D8480 ; case 8
_021D842C:
	ldr r1, _021D84B8 ; =0xFFFF86E7
	mov r0, #9
	bl ov4_021D7724
	b _021D8494
_021D843C:
	bl OS_Terminate
	b _021D8494
_021D8444:
	ldr r1, _021D84BC ; =0xFFFF86D4
	mov r0, #0xf
	bl ov4_021D7724
	b _021D8494
_021D8454:
	ldr r1, _021D84C0 ; =0xFFFF86CA
	mov r0, #0xe
	bl ov4_021D7724
	b _021D8494
_021D8464:
	ldr r1, _021D84C4 ; =0xFFFF86E8
	mov r0, #0xe
	sub r1, r1, r4
	bl ov4_021D7724
	b _021D8494
_021D8478:
	bl OS_Terminate
	b _021D8494
_021D8480:
	ldr r1, _021D84C8 ; =0xFFFF86DF
	mov r0, #9
	bl ov4_021D7724
	b _021D8494
_021D8490:
	bl OS_Terminate
_021D8494:
	ldr r1, _021D84B4 ; =0x0221A4E8
	mov r0, r6
	ldr r2, [r1, #0]
	mov r1, r5
	ldr r3, [r2, #0]
	mov r2, r4
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D84B4: .word Unk_ov4_0221A4E8
_021D84B8: .word 0xFFFF86E7
_021D84BC: .word 0xFFFF86D4
_021D84C0: .word 0xFFFF86CA
_021D84C4: .word 0xFFFF86E8
_021D84C8: .word 0xFFFF86DF
	arm_func_end ov4_021D83D4

	arm_func_start ov4_021D84CC
ov4_021D84CC: ; 0x021D84CC
	stmfd sp!, {r4, lr}
	ldr r0, _021D850C ; =0x0221A4E8
	ldr r0, [r0, #0]
	add r0, r0, #0x9c0
	bl OS_JoinThread
	ldr r0, _021D850C ; =0x0221A4E8
	ldr r0, [r0, #0]
	ldr r4, [r0, #4]
	bl ov4_021D83BC
	ldr r0, _021D850C ; =0x0221A4E8
	mov r1, #0
	str r1, [r0, #0]
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	blx r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D850C: .word Unk_ov4_0221A4E8
	arm_func_end ov4_021D84CC

	arm_func_start ov4_021D8510
ov4_021D8510: ; 0x021D8510
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x2a0
	mov r7, #0
	mov r6, #6
	mvn r5, #0
	mov r4, #0x64
_021D8528:
	bl ov4_021D81B8
	cmp r0, #3
	bne _021D8644
	ldr r0, _021D86B0 ; =0x0221A4E8
	ldr r5, [r0, #0]
	add r0, r5, #0x50
	bl strlen
	mov r4, r0
	ldr r0, _021D86B4 ; =0x02217430
	bl strlen
	add r0, r4, r0
	cmp r0, #0xff
	bls _021D8574
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl ov4_021D83D4
	add sp, sp, #0x2a0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D8574:
	ldr r2, _021D86B8 ; =0x02217444
	add r0, sp, #0x1a0
	add r3, r5, #0x50
	mov r1, #0x100
	bl OS_SNPrintf
	ldr r0, _021D86B0 ; =0x0221A4E8
	ldr r4, [r0, #0]
	add r0, r4, #0x91
	bl strlen
	mov r1, r0
	add r2, sp, #0x10
	add r0, r4, #0x91
	mov r3, #0x190
	bl ov4_021D72E0
	cmp r0, #0
	bge _021D85CC
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl ov4_021D83D4
	add sp, sp, #0x2a0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D85CC:
	ldr r0, _021D86B0 ; =0x0221A4E8
	ldr r4, _021D86BC ; =ov4_021D83D4
	ldr r2, [r0, #0]
	ldr r0, _021D86C0 ; =ov4_021D83A4
	add r1, r2, #8
	str r1, [sp]
	add r1, r2, #0x28
	str r1, [sp, #4]
	ldr r1, _021D86C4 ; =ov4_021D83BC
	add r2, sp, #0x1a0
	add r3, sp, #0x10
	str r4, [sp, #8]
	bl ov60_02224234
	cmp r0, #0
	mov r0, #0
	bne _021D8620
	mov r1, #8
	sub r2, r1, #9
	bl ov4_021D83D4
	add sp, sp, #0x2a0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D8620:
	ldr r1, _021D86B0 ; =0x0221A4E8
	mov r4, #1
	ldr r3, [r1, #0]
	mov r1, r0
	sub r2, r0, #1
	str r4, [r3, #0x48]
	bl ov4_021D83D4
	add sp, sp, #0x2a0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D8644:
	cmp r0, #4
	bne _021D8684
	add r0, sp, #0xc
	bl DWC_GetLastError
	ldr r1, [sp, #0xc]
	mov r0, #0xe
	bl ov4_021D7724
	ldr r0, _021D86B0 ; =0x0221A4E8
	mov r1, #3
	ldr r0, [r0, #0]
	sub r2, r1, #4
	ldr r3, [r0, #0]
	mov r0, #0
	blx r3
	add sp, sp, #0x2a0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D8684:
	cmp r0, #5
	bne _021D869C
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov4_021D83D4
_021D869C:
	mov r0, r4
	bl OS_Sleep
	b _021D8528
_021D86A8:
	.byte 0x2A, 0xDE, 0x8D, 0xE2, 0xF8, 0x80, 0xBD, 0xE8
_021D86B0: .word Unk_ov4_0221A4E8
_021D86B4: .word Unk_ov4_02217430
_021D86B8: .word Unk_ov4_02217444
_021D86BC: .word ov4_021D83D4
_021D86C0: .word ov4_021D83A4
_021D86C4: .word ov4_021D83BC
	arm_func_end ov4_021D8510

	arm_func_start ov4_021D86C8
ov4_021D86C8: ; 0x021D86C8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_021D7708
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0xa80
	mov r1, #0x20
	bl ov4_021D83A4
	ldr r2, _021D87D4 ; =0x0221A4E8
	mov r1, #0
	str r0, [r2, #0]
	str r1, [r0, #0x48]
	ldr r0, [r2, #0]
	mov r2, #0xa80
	bl MI_CpuFill8
	ldr r0, _021D87D4 ; =0x0221A4E8
	mov r1, r5
	ldr r3, [r0, #0]
	mov r2, #0x1f
	str r6, [r3, #0]
	ldr r0, [r0, #0]
	add r0, r0, #8
	bl strncpy
	ldr r0, _021D87D4 ; =0x0221A4E8
	mov r1, r4
	ldr r0, [r0, #0]
	mov r2, #0x1f
	add r0, r0, #0x28
	bl strncpy
	ldr r1, _021D87D4 ; =0x0221A4E8
	ldr r0, _021D87D8 ; =0x02217458
	ldr r1, [r1, #0]
	add r1, r1, #0x4c
	bl ov4_021D8144
	cmp r0, #0
	bne _021D878C
	ldr r0, _021D87D4 ; =0x0221A4E8
	ldr r0, [r0, #0]
	bl ov4_021D83BC
	ldr r1, _021D87D4 ; =0x0221A4E8
	mov r0, #0
	str r0, [r1, #0]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_021D878C:
	ldr r0, _021D87D4 ; =0x0221A4E8
	mov r2, #0x800
	ldr r3, [r0, #0]
	ldr r1, _021D87DC ; =ov4_021D8510
	str r2, [sp]
	mov ip, #0x10
	add r0, r3, #0x9c0
	add r3, r3, #0x9c0
	mov r2, #0
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _021D87D4 ; =0x0221A4E8
	ldr r0, [r0, #0]
	add r0, r0, #0x9c0
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D87D4: .word Unk_ov4_0221A4E8
_021D87D8: .word Unk_ov4_02217458
_021D87DC: .word ov4_021D8510
	arm_func_end ov4_021D86C8

	arm_func_start ov4_021D87E0
ov4_021D87E0: ; 0x021D87E0
	stmfd sp!, {r3, lr}
	ldr r1, _021D8824 ; =0x0221A4E8
	ldr r2, [r1, #0]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	str r0, [r2, #4]
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _021D8814
	bl ov4_021D84CC
	b _021D881C
_021D8814:
	ldr r0, _021D8828 ; =ov4_021D84CC
	bl ov60_02224420
_021D881C:
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D8824: .word Unk_ov4_0221A4E8
_021D8828: .word ov4_021D84CC
	arm_func_end ov4_021D87E0

	arm_func_start ov4_021D882C
ov4_021D882C: ; 0x021D882C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_021D7708
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov60_02223E90
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021D882C

	arm_func_start ov4_021D8860
ov4_021D8860: ; 0x021D8860
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_021D7708
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov60_02224D18
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021D8860

	arm_func_start ov4_021D8884
ov4_021D8884: ; 0x021D8884
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_021D7708
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0xb0
	mul r2, r4, r0
	mov r0, r6
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov60_02224D8C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021D8884

	arm_func_start ov4_021D88CC
ov4_021D88CC: ; 0x021D88CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_021D7708
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov60_0222504C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021D88CC

	arm_func_start ov4_021D8900
ov4_021D8900: ; 0x021D8900
	stmfd sp!, {r3, lr}
	bl ov4_021D7708
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl ov60_02224448
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021D8900

	arm_func_start ov4_021D891C
ov4_021D891C: ; 0x021D891C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_021D7708
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov60_02225208
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021D891C

	.data


	.global Unk_ov4_02217430
Unk_ov4_02217430: ; 0x02217430
	.incbin "incbin/overlay4_data.bin", 0x15B0, 0x15C4 - 0x15B0

	.global Unk_ov4_02217444
Unk_ov4_02217444: ; 0x02217444
	.incbin "incbin/overlay4_data.bin", 0x15C4, 0x15D8 - 0x15C4

	.global Unk_ov4_02217458
Unk_ov4_02217458: ; 0x02217458
	.incbin "incbin/overlay4_data.bin", 0x15D8, 0x5



	.bss


	.global Unk_ov4_0221A4E8
Unk_ov4_0221A4E8: ; 0x0221A4E8
	.space 0x4

