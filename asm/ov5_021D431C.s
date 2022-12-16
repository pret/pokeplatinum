	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021D431C
ov5_021D431C: ; 0x021D431C
	push {r3, lr}
	mov r0, #4
	mov r1, #0x28
	bl sub_02018184
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	thumb_func_end ov5_021D431C

	thumb_func_start ov5_021D432C
ov5_021D432C: ; 0x021D432C
	ldr r3, _021D4330 ; =sub_020181C4
	bx r3
	; .align 2, 0
_021D4330: .word sub_020181C4
	thumb_func_end ov5_021D432C

	thumb_func_start ov5_021D4334
ov5_021D4334: ; 0x021D4334
	str r0, [r2, #0x14]
	str r1, [r2, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021D4334

	thumb_func_start ov5_021D433C
ov5_021D433C: ; 0x021D433C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #5
	bls _021D434C
	b _021D4510
_021D434C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4358: ; jump table
	.short _021D4364 - _021D4358 - 2 ; case 0
	.short _021D43FE - _021D4358 - 2 ; case 1
	.short _021D445E - _021D4358 - 2 ; case 2
	.short _021D4472 - _021D4358 - 2 ; case 3
	.short _021D4486 - _021D4358 - 2 ; case 4
	.short _021D44F4 - _021D4358 - 2 ; case 5
_021D4364:
	ldr r5, _021D4528 ; =0x021F89F4
	add r3, sp, #0x34
	mov r2, #0xa
_021D436A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D436A
	mov r0, #0
	str r0, [r4, #0x20]
	strb r0, [r4, #0x1d]
	mov r0, #3
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x24
	str r0, [sp, #8]
	sub r2, r2, #2
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	add r3, r2, #0
	bl sub_020550F4
	mov r0, #1
	strb r0, [r4, #0x1c]
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x34
	mov r2, #0x14
	add r3, sp, #0x24
	bl sub_02055208
	cmp r0, #0
	beq _021D43EC
	ldr r0, [r6, #0x50]
	ldr r1, [sp, #0x1c]
	bl ov5_021D3F94
	add r7, r0, #0
	strb r7, [r4, #0x1e]
	ldr r0, [r6, #0x30]
	bl ov5_021EFAA0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	bl ov5_021E18BC
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	bl ov5_021E18C0
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r2, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	ldr r3, [sp, #0x1c]
	bl ov5_021D41C8
	b _021D43F6
_021D43EC:
	bl sub_02022974
	add sp, #0x84
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D43F6:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4510
_021D43FE:
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D4310
	add r5, r0, #0
	cmp r5, #0x4b
	beq _021D4416
	ldr r0, [r6, #0x24]
	bl sub_020206B0
	mov r0, #1
	str r0, [r4, #0x20]
_021D4416:
	add r0, r5, #0
	bl ov5_021D481C
	cmp r0, #1
	bne _021D4424
	ldr r5, _021D452C ; =0x00000608
	b _021D4434
_021D4424:
	add r0, r5, #0
	bl ov5_021D481C
	cmp r0, #2
	bne _021D4432
	ldr r5, _021D4530 ; =0x000005D4
	b _021D4434
_021D4432:
	ldr r5, _021D4534 ; =0x00000605
_021D4434:
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bne _021D443E
	mov r2, #0
	b _021D444C
_021D443E:
	cmp r0, #4
	bne _021D4446
	mov r2, #0
	b _021D444C
_021D4446:
	bl sub_02022974
	mov r2, #0
_021D444C:
	ldr r0, [r6, #0x54]
	mov r1, #1
	add r3, r5, #0
	bl ov5_021D4278
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4510
_021D445E:
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D42F0
	cmp r0, #0
	beq _021D4510
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4510
_021D4472:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	mov r1, #0xc
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4510
_021D4486:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _021D4510
	add r0, r5, #0
	bl sub_020656AC
	add r0, r5, #0
	mov r1, #1
	bl sub_02062D64
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D4310
	add r5, r0, #0
	bl ov5_021D481C
	cmp r0, #1
	bne _021D44BA
	mov r5, #0
	b _021D44CA
_021D44BA:
	add r0, r5, #0
	bl ov5_021D481C
	cmp r0, #2
	bne _021D44C8
	mov r5, #0
	b _021D44CA
_021D44C8:
	ldr r5, _021D4538 ; =0x00000607
_021D44CA:
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bne _021D44D4
	mov r2, #1
	b _021D44E2
_021D44D4:
	cmp r0, #4
	bne _021D44DC
	mov r2, #1
	b _021D44E2
_021D44DC:
	bl sub_02022974
	mov r2, #1
_021D44E2:
	ldr r0, [r6, #0x54]
	mov r1, #1
	add r3, r5, #0
	bl ov5_021D4278
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4510
_021D44F4:
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D42F0
	cmp r0, #0
	beq _021D4510
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #1
	bl ov5_021D42B0
	add sp, #0x84
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D4510:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021D4520
	add r4, #0x1d
	ldr r0, [r6, #0x24]
	add r1, r4, #0
	bl ov5_021D4798
_021D4520:
	mov r0, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_021D4528: .word 0x021F89F4
_021D452C: .word 0x00000608
_021D4530: .word 0x000005D4
_021D4534: .word 0x00000605
_021D4538: .word 0x00000607
	thumb_func_end ov5_021D433C

	thumb_func_start ov5_021D453C
ov5_021D453C: ; 0x021D453C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bls _021D454C
	b _021D4768
_021D454C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4558: ; jump table
	.short _021D4566 - _021D4558 - 2 ; case 0
	.short _021D461E - _021D4558 - 2 ; case 1
	.short _021D4690 - _021D4558 - 2 ; case 2
	.short _021D46B0 - _021D4558 - 2 ; case 3
	.short _021D46C4 - _021D4558 - 2 ; case 4
	.short _021D472A - _021D4558 - 2 ; case 5
	.short _021D475A - _021D4558 - 2 ; case 6
_021D4566:
	ldr r5, _021D4780 ; =0x021F8A44
	add r3, sp, #0x34
	mov r2, #0xa
_021D456C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D456C
	mov r3, #0
	str r3, [r4, #0x20]
	strb r3, [r4, #0x1d]
	mov r0, #3
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x24
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	sub r2, r2, #2
	bl sub_020550F4
	mov r0, #1
	strb r0, [r4, #0x1c]
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x34
	mov r2, #0x14
	add r3, sp, #0x24
	bl sub_02055208
	cmp r0, #0
	beq _021D45EC
	ldr r0, [r6, #0x50]
	ldr r1, [sp, #0x1c]
	bl ov5_021D3F94
	add r7, r0, #0
	strb r7, [r4, #0x1e]
	ldr r0, [r6, #0x30]
	bl ov5_021EFAA0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	bl ov5_021E18BC
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	bl ov5_021E18C0
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r2, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	ldr r3, [sp, #0x1c]
	bl ov5_021D41C8
	b _021D4600
_021D45EC:
	bl sub_02022974
	mov r0, #1
	bl ov5_021D1744
	mov r0, #6
	str r0, [r4, #0]
	add sp, #0x84
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D4600:
	ldr r0, [r6, #0x24]
	bl sub_02020A88
	strh r0, [r4, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #0x4b
	beq _021D4616
	ldr r0, _021D4784 ; =0x0000FFA0
	ldr r1, [r6, #0x24]
	bl sub_0202094C
_021D4616:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4768
_021D461E:
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x10]
	mov r2, #9
	bl sub_02056B30
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D4310
	add r5, r0, #0
	cmp r5, #0x4b
	beq _021D4648
	mov r0, #1
	str r0, [r4, #0x20]
_021D4648:
	add r0, r5, #0
	bl ov5_021D481C
	cmp r0, #1
	bne _021D4656
	ldr r5, _021D4788 ; =0x00000608
	b _021D4666
_021D4656:
	add r0, r5, #0
	bl ov5_021D481C
	cmp r0, #2
	bne _021D4664
	ldr r5, _021D478C ; =0x000005D4
	b _021D4666
_021D4664:
	ldr r5, _021D4790 ; =0x00000605
_021D4666:
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bne _021D4670
	mov r2, #0
	b _021D467E
_021D4670:
	cmp r0, #4
	bne _021D4678
	mov r2, #2
	b _021D467E
_021D4678:
	bl sub_02022974
	mov r2, #0
_021D467E:
	ldr r0, [r6, #0x54]
	mov r1, #1
	add r3, r5, #0
	bl ov5_021D4278
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4768
_021D4690:
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D42F0
	cmp r0, #0
	beq _021D4768
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	mov r1, #0
	bl sub_02062D64
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4768
_021D46B0:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	mov r1, #0xd
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4768
_021D46C4:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _021D4768
	add r0, r5, #0
	bl sub_020656AC
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D4310
	add r5, r0, #0
	bl ov5_021D481C
	cmp r0, #1
	bne _021D46F0
	mov r5, #0
	b _021D4700
_021D46F0:
	add r0, r5, #0
	bl ov5_021D481C
	cmp r0, #2
	bne _021D46FE
	mov r5, #0
	b _021D4700
_021D46FE:
	ldr r5, _021D4794 ; =0x00000607
_021D4700:
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bne _021D470A
	mov r2, #1
	b _021D4718
_021D470A:
	cmp r0, #4
	bne _021D4712
	mov r2, #3
	b _021D4718
_021D4712:
	bl sub_02022974
	mov r2, #1
_021D4718:
	ldr r0, [r6, #0x54]
	mov r1, #1
	add r3, r5, #0
	bl ov5_021D4278
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4768
_021D472A:
	ldr r0, [r6, #0x54]
	mov r1, #1
	bl ov5_021D42F0
	cmp r0, #0
	beq _021D4768
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4768
	ldr r0, [r6, #0x24]
	bl sub_02020A88
	ldrh r1, [r4, #0x24]
	cmp r1, r0
	bne _021D4768
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #1
	bl ov5_021D42B0
	add sp, #0x84
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D475A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4768
	add sp, #0x84
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D4768:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021D4778
	add r4, #0x1d
	ldr r0, [r6, #0x24]
	add r1, r4, #0
	bl ov5_021D47DC
_021D4778:
	mov r0, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_021D4780: .word 0x021F8A44
_021D4784: .word 0x0000FFA0
_021D4788: .word 0x00000608
_021D478C: .word 0x000005D4
_021D4790: .word 0x00000605
_021D4794: .word 0x00000607
	thumb_func_end ov5_021D453C

	thumb_func_start ov5_021D4798
ov5_021D4798: ; 0x021D4798
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5]
	mov r4, #0xc
	add r1, r0, #0
	mul r1, r4
	cmp r1, #0x60
	bgt _021D47D8
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x60
	bls _021D47B8
	sub r0, #0x60
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021D47B8:
	add r0, r6, #0
	bl sub_02020A88
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _021D47D2
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	bl sub_0202094C
_021D47D2:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_021D47D8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021D4798

	thumb_func_start ov5_021D47DC
ov5_021D47DC: ; 0x021D47DC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5]
	lsl r0, r0, #4
	cmp r0, #0x60
	bge _021D4818
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x60
	bls _021D47FA
	sub r0, #0x60
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _021D47FC
_021D47FA:
	mov r4, #0x10
_021D47FC:
	add r0, r6, #0
	bl sub_02020A88
	add r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _021D4812
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0202094C
_021D4812:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_021D4818:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021D47DC

	thumb_func_start ov5_021D481C
ov5_021D481C: ; 0x021D481C
	ldr r2, _021D4854 ; =0x000001BA
	cmp r0, r2
	bne _021D4826
	mov r0, #2
	bx lr
_021D4826:
	cmp r0, #0x46
	beq _021D484C
	add r1, r2, #0
	sub r1, #0x90
	cmp r0, r1
	beq _021D484C
	add r1, r2, #0
	add r1, #0xe
	cmp r0, r1
	beq _021D484C
	add r1, r2, #0
	sub r1, #0xf
	cmp r0, r1
	beq _021D484C
	add r2, #0x2a
	cmp r0, r2
	beq _021D484C
	cmp r0, #0x4b
	bne _021D4850
_021D484C:
	mov r0, #1
	bx lr
_021D4850:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D4854: .word 0x000001BA
	thumb_func_end ov5_021D481C

	thumb_func_start ov5_021D4858
ov5_021D4858: ; 0x021D4858
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r5, r2, #0
	cmp r0, #5
	bls _021D486A
	b _021D4A14
_021D486A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4876: ; jump table
	.short _021D4882 - _021D4876 - 2 ; case 0
	.short _021D4942 - _021D4876 - 2 ; case 1
	.short _021D4982 - _021D4876 - 2 ; case 2
	.short _021D49A2 - _021D4876 - 2 ; case 3
	.short _021D49CA - _021D4876 - 2 ; case 4
	.short _021D49E8 - _021D4876 - 2 ; case 5
_021D4882:
	ldr r3, _021D4A1C ; =0x021F89E4
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r5, #2
	bne _021D48AC
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	sub r2, r2, #2
	mov r3, #0
	bl sub_020550F4
	b _021D48C4
_021D48AC:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	add r3, r2, #0
	bl sub_020550F4
_021D48C4:
	mov r0, #2
	strb r0, [r4, #0x1c]
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x20
	mov r2, #4
	add r3, sp, #0x30
	bl sub_02055208
	cmp r0, #0
	beq _021D4912
	ldr r0, [r6, #0x30]
	bl ov5_021EFAA0
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov5_021E18BC
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov5_021E18C0
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	ldr r3, [sp, #0x18]
	mov r2, #2
	bl ov5_021D41C8
	b _021D491C
_021D4912:
	bl sub_02022974
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D491C:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _021D4936
	add r0, r5, #0
	mov r1, #0x49
	bl sub_02065638
	b _021D493A
_021D4936:
	bl sub_02022974
_021D493A:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4A14
_021D4942:
	mov r0, #1
	bl ov5_021D1744
	ldr r0, [r6, #0x54]
	ldr r3, _021D4A20 ; =0x00000615
	mov r1, #2
	mov r2, #0
	bl ov5_021D4278
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _021D4976
	cmp r5, #3
	bne _021D496C
	mov r1, #0xb
	b _021D496E
_021D496C:
	mov r1, #0xa
_021D496E:
	add r0, r6, #0
	bl sub_02065638
	b _021D497A
_021D4976:
	bl sub_02022974
_021D497A:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4A14
_021D4982:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _021D4A14
	add r0, r5, #0
	mov r1, #0x4a
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4A14
_021D49A2:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _021D4A14
	cmp r5, #3
	bne _021D49BA
	mov r1, #0xb
	b _021D49BC
_021D49BA:
	mov r1, #0xa
_021D49BC:
	add r0, r6, #0
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4A14
_021D49CA:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _021D4A14
	add r0, r5, #0
	bl sub_020656AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4A14
_021D49E8:
	ldr r0, [r6, #0x54]
	mov r1, #2
	bl ov5_021D42F0
	cmp r0, #0
	beq _021D4A14
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4A14
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #2
	bl ov5_021D42B0
	ldr r0, _021D4A20 ; =0x00000615
	mov r1, #0
	bl sub_020057A4
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D4A14:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4A1C: .word 0x021F89E4
_021D4A20: .word 0x00000615
	thumb_func_end ov5_021D4858

	thumb_func_start ov5_021D4A24
ov5_021D4A24: ; 0x021D4A24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r5, r2, #0
	cmp r0, #4
	bls _021D4A36
	b _021D4BB8
_021D4A36:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4A42: ; jump table
	.short _021D4A4C - _021D4A42 - 2 ; case 0
	.short _021D4B0E - _021D4A42 - 2 ; case 1
	.short _021D4B48 - _021D4A42 - 2 ; case 2
	.short _021D4B6E - _021D4A42 - 2 ; case 3
	.short _021D4B8C - _021D4A42 - 2 ; case 4
_021D4A4C:
	ldr r3, _021D4BC0 ; =0x021F89D4
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r5, #2
	bne _021D4A76
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	sub r2, r2, #2
	mov r3, #0
	bl sub_020550F4
	b _021D4A8E
_021D4A76:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	add r3, r2, #0
	bl sub_020550F4
_021D4A8E:
	mov r0, #2
	strb r0, [r4, #0x1c]
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x20
	mov r2, #4
	add r3, sp, #0x30
	bl sub_02055208
	cmp r0, #0
	beq _021D4ADE
	ldr r0, [r6, #0x30]
	bl ov5_021EFAA0
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov5_021E18BC
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov5_021E18C0
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	ldr r3, [sp, #0x18]
	mov r2, #2
	bl ov5_021D41C8
	b _021D4AE8
_021D4ADE:
	bl sub_02022974
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D4AE8:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _021D4B02
	add r0, r5, #0
	mov r1, #0x49
	bl sub_02065638
	b _021D4B06
_021D4B02:
	bl sub_02022974
_021D4B06:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4BB8
_021D4B0E:
	ldr r0, [r6, #0x54]
	ldr r3, _021D4BC4 ; =0x00000615
	mov r1, #2
	mov r2, #0
	bl ov5_021D4278
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _021D4B3C
	cmp r5, #2
	bne _021D4B32
	mov r1, #0xa
	b _021D4B34
_021D4B32:
	mov r1, #0xb
_021D4B34:
	add r0, r6, #0
	bl sub_02065638
	b _021D4B40
_021D4B3C:
	bl sub_02022974
_021D4B40:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4BB8
_021D4B48:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_020655F4
	cmp r0, #1
	bne _021D4BB8
	add r0, r5, #0
	mov r1, #0x4a
	bl sub_02065638
	mov r0, #0
	bl ov5_021D1744
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4BB8
_021D4B6E:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _021D4BB8
	add r0, r5, #0
	bl sub_020656AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4BB8
_021D4B8C:
	ldr r0, [r6, #0x54]
	mov r1, #2
	bl ov5_021D42F0
	cmp r0, #0
	beq _021D4BB8
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4BB8
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	mov r2, #2
	bl ov5_021D42B0
	ldr r0, _021D4BC4 ; =0x00000615
	mov r1, #0
	bl sub_020057A4
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D4BB8:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4BC0: .word 0x021F89D4
_021D4BC4: .word 0x00000615
	thumb_func_end ov5_021D4A24

	thumb_func_start ov5_021D4BC8
ov5_021D4BC8: ; 0x021D4BC8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r1, [r4]
	ldr r0, [r5, #0x54]
	bl ov5_021D42F0
	cmp r0, #0
	beq _021D4BF0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D4BF0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021D4BC8

	thumb_func_start ov5_021D4BF4
ov5_021D4BF4: ; 0x021D4BF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	ldr r6, _021D4C84 ; =0x021F8A94
	str r3, [sp, #0x18]
	add r5, r0, #0
	add r7, r1, #0
	add r4, sp, #0x34
	mov r3, #0xa
_021D4C04:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021D4C04
	mov r0, #3
	str r0, [sp]
	mov r3, #1
	add r1, r2, #0
	str r3, [sp, #4]
	add r0, sp, #0x24
	str r0, [sp, #8]
	sub r2, r3, #2
	add r0, r7, #0
	mov r3, #0
	bl sub_020550F4
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x34
	mov r2, #0x14
	add r3, sp, #0x24
	bl sub_02055208
	cmp r0, #0
	beq _021D4C7C
	ldr r0, [r5, #0x50]
	ldr r1, [sp, #0x1c]
	bl ov5_021D3F94
	add r6, r0, #0
	ldr r0, [r5, #0x30]
	bl ov5_021EFAA0
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl ov5_021E18BC
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	bl ov5_021E18C0
	str r4, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl ov5_021D41C8
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
_021D4C7C:
	bl sub_02022974
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4C84: .word 0x021F8A94
	thumb_func_end ov5_021D4BF4

	thumb_func_start ov5_021D4C88
ov5_021D4C88: ; 0x021D4C88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r7, r1, #0
	bl ov5_021D4310
	add r6, r0, #0
	ldr r0, [r5, #0x50]
	add r1, r6, #0
	bl ov5_021D3F94
	add r4, r0, #0
	add r0, r6, #0
	bl ov5_021D481C
	cmp r0, #1
	bne _021D4CAE
	ldr r6, _021D4CE0 ; =0x00000608
	b _021D4CBE
_021D4CAE:
	add r0, r6, #0
	bl ov5_021D481C
	cmp r0, #2
	bne _021D4CBC
	ldr r6, _021D4CE4 ; =0x000005D4
	b _021D4CBE
_021D4CBC:
	ldr r6, _021D4CE8 ; =0x00000605
_021D4CBE:
	cmp r4, #2
	bne _021D4CC6
	mov r2, #0
	b _021D4CD4
_021D4CC6:
	cmp r4, #4
	bne _021D4CCE
	mov r2, #0
	b _021D4CD4
_021D4CCE:
	bl sub_02022974
	mov r2, #0
_021D4CD4:
	ldr r0, [r5, #0x54]
	add r1, r7, #0
	add r3, r6, #0
	bl ov5_021D4278
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4CE0: .word 0x00000608
_021D4CE4: .word 0x000005D4
_021D4CE8: .word 0x00000605
	thumb_func_end ov5_021D4C88

	thumb_func_start ov5_021D4CEC
ov5_021D4CEC: ; 0x021D4CEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r7, r1, #0
	bl ov5_021D4310
	add r6, r0, #0
	ldr r0, [r5, #0x50]
	add r1, r6, #0
	bl ov5_021D3F94
	add r4, r0, #0
	add r0, r6, #0
	bl ov5_021D481C
	cmp r0, #1
	bne _021D4D12
	mov r6, #0
	b _021D4D22
_021D4D12:
	add r0, r6, #0
	bl ov5_021D481C
	cmp r0, #2
	bne _021D4D20
	mov r6, #0
	b _021D4D22
_021D4D20:
	ldr r6, _021D4D44 ; =0x00000607
_021D4D22:
	cmp r4, #2
	bne _021D4D2A
	mov r2, #1
	b _021D4D38
_021D4D2A:
	cmp r4, #4
	bne _021D4D32
	mov r2, #1
	b _021D4D38
_021D4D32:
	bl sub_02022974
	mov r2, #1
_021D4D38:
	ldr r0, [r5, #0x54]
	add r1, r7, #0
	add r3, r6, #0
	bl ov5_021D4278
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4D44: .word 0x00000607
	thumb_func_end ov5_021D4CEC

	thumb_func_start ov5_021D4D48
ov5_021D4D48: ; 0x021D4D48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #1
	bl sub_02018184
	add r2, r0, #0
	strb r4, [r2]
	ldr r0, [r5, #0x10]
	ldr r1, _021D4D64 ; =ov5_021D4BC8
	bl sub_02050944
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4D64: .word ov5_021D4BC8
	thumb_func_end ov5_021D4D48

	thumb_func_start ov5_021D4D68
ov5_021D4D68: ; 0x021D4D68
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x50]
	ldr r1, [r3, #0x54]
	ldr r3, _021D4D74 ; =ov5_021D42B0
	bx r3
	; .align 2, 0
_021D4D74: .word ov5_021D42B0
	thumb_func_end ov5_021D4D68

	thumb_func_start ov5_021D4D78
ov5_021D4D78: ; 0x021D4D78
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r2, #0
	ldr r2, _021D4DFC ; =0x021F89CC
	add r4, r3, #0
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r2, #1
	str r2, [sp]
	mov r2, #3
	str r2, [sp, #4]
	add r2, sp, #0x1c
	str r2, [sp, #8]
	mov r2, #0
	sub r3, r2, #1
	bl sub_020550F4
	add r0, sp, #0x18
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0xc
	mov r2, #2
	add r3, sp, #0x1c
	bl sub_02055208
	cmp r0, #0
	bne _021D4DBA
	bl sub_02022974
_021D4DBA:
	ldr r0, [sp, #0x18]
	bl ov5_021E18BC
	add r3, r0, #0
	ldr r0, [r4, #0x50]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #1
	bl ov5_021D3B24
	cmp r0, #0
	bne _021D4DD8
	bl sub_02022974
_021D4DD8:
	ldr r0, [sp, #0x14]
	ldr r2, [r4, #0x50]
	add r1, r5, #0
	bl ov5_021D3DE4
	add r4, r0, #0
	bl ov5_021D3E7C
	add r0, r4, #0
	mov r1, #0
	bl ov5_021D3E40
	add r0, r4, #0
	bl ov5_021D3E44
	add sp, #0x2c
	pop {r4, r5, pc}
	nop
_021D4DFC: .word 0x021F89CC
	thumb_func_end ov5_021D4D78

	thumb_func_start ov5_021D4E00
ov5_021D4E00: ; 0x021D4E00
	push {r3, lr}
	mov r0, #4
	mov r1, #0x10
	bl sub_02018184
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	thumb_func_end ov5_021D4E00

	thumb_func_start ov5_021D4E10
ov5_021D4E10: ; 0x021D4E10
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _021D4EF6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D4E36: ; jump table
	.short _021D4E3E - _021D4E36 - 2 ; case 0
	.short _021D4E9A - _021D4E36 - 2 ; case 1
	.short _021D4EB8 - _021D4E36 - 2 ; case 2
	.short _021D4ED6 - _021D4E36 - 2 ; case 3
_021D4E3E:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	cmp r0, #1
	bne _021D4E5C
	add r0, r6, #0
	mov r1, #1
	bl sub_02062D64
	mov r0, #1
	b _021D4E66
_021D4E5C:
	add r0, r6, #0
	mov r1, #0
	bl sub_02062D64
	mov r0, #3
_021D4E66:
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	strb r0, [r4, #4]
	ldr r0, [r5, #0x24]
	bl sub_02020A88
	strh r0, [r4, #0xc]
	ldr r0, _021D4F0C ; =0x0000FFA0
	ldr r1, [r5, #0x24]
	bl sub_0202094C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r3, _021D4F10 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #1
	str r0, [r4, #8]
	b _021D4EF6
_021D4E9A:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	mov r1, #0
	bl sub_02062D64
	add r0, r6, #0
	mov r1, #0xd
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4EF6
_021D4EB8:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _021D4EF6
	add r0, r6, #0
	bl sub_020656AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4EF6
_021D4ED6:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4EF6
	ldr r0, [r5, #0x24]
	bl sub_02020A88
	ldrh r1, [r4, #0xc]
	cmp r1, r0
	bne _021D4EF6
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D4EF6:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D4F04
	ldr r0, [r5, #0x24]
	add r1, r4, #4
	bl ov5_021D47DC
_021D4F04:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D4F0C: .word 0x0000FFA0
_021D4F10: .word 0x00007FFF
	thumb_func_end ov5_021D4E10

	thumb_func_start ov5_021D4F14
ov5_021D4F14: ; 0x021D4F14
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D4F34
	cmp r0, #1
	beq _021D4F70
	b _021D4F84
_021D4F34:
	ldr r0, [r4, #0x3c]
	bl sub_0205EB3C
	mov r1, #1
	bl sub_02062D64
	mov r0, #0
	str r0, [r5, #8]
	strb r0, [r5, #4]
	ldr r0, _021D4F98 ; =0x00000603
	bl sub_02005748
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021D4F9C ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	mov r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D4F84
_021D4F70:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D4F84
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D4F84:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D4F92
	ldr r0, [r4, #0x24]
	add r1, r5, #4
	bl ov5_021D4798
_021D4F92:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D4F98: .word 0x00000603
_021D4F9C: .word 0x00007FFF
	thumb_func_end ov5_021D4F14

	thumb_func_start ov5_021D4FA0
ov5_021D4FA0: ; 0x021D4FA0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D4FC0
	cmp r0, #1
	beq _021D4FF2
	b _021D5006
_021D4FC0:
	mov r0, #0
	str r0, [r4, #8]
	strb r0, [r4, #4]
	ldr r0, _021D501C ; =0x00000603
	bl sub_02005748
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0x10
	add r3, r1, #0
	bl sub_02056B30
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5006
_021D4FF2:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D5006
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D5006:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D5014
	ldr r0, [r6, #0x24]
	add r1, r4, #4
	bl ov5_021D4798
_021D5014:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D501C: .word 0x00000603
	thumb_func_end ov5_021D4FA0

	thumb_func_start ov5_021D5020
ov5_021D5020: ; 0x021D5020
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x10]
	bl sub_02050A60
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _021D5138
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D5046: ; jump table
	.short _021D504E - _021D5046 - 2 ; case 0
	.short _021D50DC - _021D5046 - 2 ; case 1
	.short _021D50FA - _021D5046 - 2 ; case 2
	.short _021D5118 - _021D5046 - 2 ; case 3
_021D504E:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #1
	bne _021D5070
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl sub_02062D64
	mov r0, #1
	b _021D507A
_021D5070:
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_02062D64
	mov r0, #3
_021D507A:
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	strb r0, [r4, #4]
	ldr r0, [r5, #0x24]
	bl sub_02020A88
	strh r0, [r4, #0xc]
	ldr r0, _021D514C ; =0x0000FFA0
	ldr r1, [r5, #0x24]
	bl sub_0202094C
	cmp r7, #3
	bhi _021D50BA
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D50A2: ; jump table
	.short _021D50AA - _021D50A2 - 2 ; case 0
	.short _021D50AE - _021D50A2 - 2 ; case 1
	.short _021D50B2 - _021D50A2 - 2 ; case 2
	.short _021D50B6 - _021D50A2 - 2 ; case 3
_021D50AA:
	mov r6, #3
	b _021D50BE
_021D50AE:
	mov r6, #5
	b _021D50BE
_021D50B2:
	mov r6, #7
	b _021D50BE
_021D50B6:
	mov r6, #0x27
	b _021D50BE
_021D50BA:
	bl sub_02022974
_021D50BE:
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r6, #0
	bl sub_02056B30
	mov r0, #1
	str r0, [r4, #8]
	b _021D5138
_021D50DC:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	mov r1, #0
	bl sub_02062D64
	add r0, r6, #0
	mov r1, #0xd
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5138
_021D50FA:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _021D5138
	add r0, r6, #0
	bl sub_020656AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5138
_021D5118:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D5138
	ldr r0, [r5, #0x24]
	bl sub_02020A88
	ldrh r1, [r4, #0xc]
	cmp r1, r0
	bne _021D5138
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5138:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D5146
	ldr r0, [r5, #0x24]
	add r1, r4, #4
	bl ov5_021D47DC
_021D5146:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D514C: .word 0x0000FFA0
	thumb_func_end ov5_021D5020

	thumb_func_start ov5_021D5150
ov5_021D5150: ; 0x021D5150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _021D5216
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D5176: ; jump table
	.short _021D517E - _021D5176 - 2 ; case 0
	.short _021D51C6 - _021D5176 - 2 ; case 1
	.short _021D51E4 - _021D5176 - 2 ; case 2
	.short _021D5202 - _021D5176 - 2 ; case 3
_021D517E:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _021D51A0
	add r0, r6, #0
	mov r1, #1
	bl sub_02062D64
	mov r0, #1
	b _021D51AA
_021D51A0:
	add r0, r6, #0
	mov r1, #0
	bl sub_02062D64
	mov r0, #3
_021D51AA:
	str r0, [r4, #0]
	mov r1, #0
	mov r2, #1
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r3, r2, #0
	bl sub_02056B30
	b _021D5216
_021D51C6:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	mov r1, #0
	bl sub_02062D64
	add r0, r5, #0
	mov r1, #0xd
	bl sub_02065638
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5216
_021D51E4:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #1
	bne _021D5216
	add r0, r5, #0
	bl sub_020656AC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D5216
_021D5202:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D5216
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5216:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021D5150

	.rodata


	.global Unk_ov5_021F89CC
Unk_ov5_021F89CC: ; 0x021F89CC
	.incbin "incbin/overlay5_rodata.bin", 0xB8, 0xC0 - 0xB8

	.global Unk_ov5_021F89D4
Unk_ov5_021F89D4: ; 0x021F89D4
	.incbin "incbin/overlay5_rodata.bin", 0xC0, 0xD0 - 0xC0

	.global Unk_ov5_021F89E4
Unk_ov5_021F89E4: ; 0x021F89E4
	.incbin "incbin/overlay5_rodata.bin", 0xD0, 0xE0 - 0xD0

	.global Unk_ov5_021F89F4
Unk_ov5_021F89F4: ; 0x021F89F4
	.incbin "incbin/overlay5_rodata.bin", 0xE0, 0x130 - 0xE0

	.global Unk_ov5_021F8A44
Unk_ov5_021F8A44: ; 0x021F8A44
	.incbin "incbin/overlay5_rodata.bin", 0x130, 0x180 - 0x130

	.global Unk_ov5_021F8A94
Unk_ov5_021F8A94: ; 0x021F8A94
	.incbin "incbin/overlay5_rodata.bin", 0x180, 0x50

