	.include "macros/function.inc"
	.include "include/unk_020A2418.inc"

	

	.text


	arm_func_start sub_020A2418
sub_020A2418: ; 0x020A2418
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl sub_020C6350
	mov r0, #0xf
	mov r1, #1
	bl sub_020C64A8
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _020A2640 ; =0x021C3A3C
	ldrh r0, [r8]
	cmp r0, #0
	bne _020A2478
	mvn r4, #2
_020A2458:
	bl sub_020C1A00
	cmp r0, r4
	moveq r0, #7
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	strh r0, [r8]
	ldrh r0, [r8]
	cmp r0, #0
	beq _020A2458
_020A2478:
	bl sub_020C3D98
	ldr r1, _020A2640 ; =0x021C3A3C
	mov r4, r0
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _020A249C
	bl sub_020C3DAC
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A249C:
	ldrh r2, [r1, #2]
	cmp r2, #0
	beq _020A24B4
	bl sub_020C3DAC
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A24B4:
	cmp r7, #4
	beq _020A24D0
	cmp r7, #8
	beq _020A2510
	cmp r7, #0xc
	beq _020A2550
	b _020A2598
_020A24D0:
	ldrh r1, [r1]
	mov r0, #4
	bl sub_020C4090
	cmp r0, #0
	bne _020A24F4
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A24F4:
	ldr r0, _020A2640 ; =0x021C3A3C
	mov r2, #4
	ldr r1, _020A2644 ; =0x04000242
	strh r2, [r0, #2]
	mov r0, #0x82
	strb r0, [r1]
	b _020A25A4
_020A2510:
	ldrh r1, [r1]
	mov r0, #8
	bl sub_020C4090
	cmp r0, #0
	bne _020A2534
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A2534:
	ldr r0, _020A2640 ; =0x021C3A3C
	mov r2, #8
	ldr r1, _020A2648 ; =0x04000243
	strh r2, [r0, #2]
	mov r0, #0x82
	strb r0, [r1]
	b _020A25A4
_020A2550:
	ldrh r1, [r1]
	mov r0, #0xc
	bl sub_020C4090
	cmp r0, #0
	bne _020A2574
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A2574:
	ldr r0, _020A2640 ; =0x021C3A3C
	mov r2, #0xc
	ldr r1, _020A2644 ; =0x04000242
	strh r2, [r0, #2]
	mov r0, #0x82
	strb r0, [r1]
	mov r0, #0x8a
	strb r0, [r1, #1]
	b _020A25A4
_020A2598:
	bl sub_020C3DAC
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A25A4:
	mov r0, #0xf
	mov r1, #0
	bl sub_020C64A8
	cmp r0, #0
	bne _020A25C4
	ldr r1, _020A264C ; =sub_020A2734
	mov r0, #0xf
	bl sub_020C645C
_020A25C4:
	cmp r6, #0
	ldrne r0, _020A2640 ; =0x021C3A3C
	strne r6, [r0, #8]
	bne _020A25E0
	ldr r1, _020A2650 ; =sub_020A280C
	ldr r0, _020A2640 ; =0x021C3A3C
	str r1, [r0, #8]
_020A25E0:
	ldr r3, _020A2640 ; =0x021C3A3C
	mov r0, #0xf
	mov r1, #0x10000
	mov r2, #0
	str r5, [r3, #4]
	bl sub_020C64CC
	cmp r0, #0
	bge _020A2630
	ldr r1, _020A2640 ; =0x021C3A3C
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	bl sub_020C4150
	ldr r1, _020A2640 ; =0x021C3A3C
	mov r2, #0
	strh r2, [r1, #2]
	mov r0, r4
	str r2, [r1, #8]
	bl sub_020C3DAC
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A2630:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020A2640: .word 0x021C3A3C
_020A2644: .word 0x04000242
_020A2648: .word 0x04000243
_020A264C: .word sub_020A2734
_020A2650: .word sub_020A280C
	arm_func_end sub_020A2418

	arm_func_start sub_020A2654
sub_020A2654: ; 0x020A2654
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl sub_020C6350
	mov r0, #0xf
	mov r1, #1
	bl sub_020C64A8
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
	bl sub_020C3D98
	ldr r1, _020A2728 ; =0x021C3A3C
	mov r4, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020A26A0
	bl sub_020C3DAC
	mov r0, #5
	ldmia sp!, {r4, r5, r6, pc}
_020A26A0:
	mov r0, #0xf
	mov r1, #0
	bl sub_020C64A8
	cmp r0, #0
	bne _020A26C0
	ldr r1, _020A272C ; =sub_020A2734
	mov r0, #0xf
	bl sub_020C645C
_020A26C0:
	cmp r6, #0
	ldrne r0, _020A2728 ; =0x021C3A3C
	strne r6, [r0, #8]
	bne _020A26DC
	ldr r1, _020A2730 ; =sub_020A280C
	ldr r0, _020A2728 ; =0x021C3A3C
	str r1, [r0, #8]
_020A26DC:
	ldr r3, _020A2728 ; =0x021C3A3C
	mov r0, #0xf
	mov r1, #0x20000
	mov r2, #0
	str r5, [r3, #4]
	bl sub_020C64CC
	cmp r0, #0
	bge _020A2718
	ldr r1, _020A2728 ; =0x021C3A3C
	mov r2, #0
	mov r0, r4
	str r2, [r1, #8]
	bl sub_020C3DAC
	mov r0, #4
	ldmia sp!, {r4, r5, r6, pc}
_020A2718:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A2728: .word 0x021C3A3C
_020A272C: .word sub_020A2734
_020A2730: .word sub_020A280C
	arm_func_end sub_020A2654

	arm_func_start sub_020A2734
sub_020A2734: ; 0x020A2734
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #0x10000
	ldr r2, _020A2808 ; =0x021C3A3C
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x10000
	and r6, r1, #0xff
	ldr r4, [r2, #8]
	ldr r5, [r2, #4]
	beq _020A2768
	cmp r0, #0x20000
	beq _020A27A0
	b _020A27E0
_020A2768:
	cmp r6, #7
	bne _020A27E0
	ldrh r0, [r2, #2]
	cmp r0, #0
	ldrneh r0, [r2]
	cmpne r0, #0
	beq _020A27E0
	ldrh r0, [r2, #2]
	ldrh r1, [r2]
	bl sub_020C4150
	ldr r0, _020A2808 ; =0x021C3A3C
	mov r1, #0
	strh r1, [r0, #2]
	b _020A27E0
_020A27A0:
	cmp r6, #0
	bne _020A27D4
	ldrh r0, [r2, #2]
	cmp r0, #0
	ldrneh r0, [r2]
	cmpne r0, #0
	beq _020A27D4
	ldrh r0, [r2, #2]
	ldrh r1, [r2]
	bl sub_020C4150
	ldr r0, _020A2808 ; =0x021C3A3C
	mov r1, #0
	strh r1, [r0, #2]
_020A27D4:
	mov r0, #0xf
	mov r1, #0
	bl sub_020C645C
_020A27E0:
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, _020A2808 ; =0x021C3A3C
	mov r3, #0
	str r3, [r2, #8]
	mov r0, r5
	mov r1, r6
	str r3, [r2, #4]
	blx r4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A2808: .word 0x021C3A3C
	arm_func_end sub_020A2734

	arm_func_start sub_020A280C
sub_020A280C: ; 0x020A280C
	bx lr
	arm_func_end sub_020A280C

	.bss


	.global Unk_021C3A3C
Unk_021C3A3C: ; 0x021C3A3C
	.space 0x2

	.global Unk_021C3A3E
Unk_021C3A3E: ; 0x021C3A3E
	.space 0x2

	.global Unk_021C3A40
Unk_021C3A40: ; 0x021C3A40
	.space 0x4

	.global Unk_021C3A44
Unk_021C3A44: ; 0x021C3A44
	.space 0x4

