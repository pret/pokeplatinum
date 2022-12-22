	.include "macros/function.inc"
	.include "include/ov113_0225E368.inc"

	

	.text


	thumb_func_start ov113_0225E368
ov113_0225E368: ; 0x0225E368
	ldr r3, _0225E370 ; =MI_CpuFill8
	mov r1, #0
	ldr r2, _0225E374 ; =0x00000744
	bx r3
	; .align 2, 0
_0225E370: .word MI_CpuFill8
_0225E374: .word 0x00000744
	thumb_func_end ov113_0225E368

	thumb_func_start ov113_0225E378
ov113_0225E378: ; 0x0225E378
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0225E37E:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0225E38C
	bl ov113_0225EB0C
_0225E38C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x80
	blt _0225E37E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov113_0225E378

	thumb_func_start ov113_0225E398
ov113_0225E398: ; 0x0225E398
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r4, _0225E3EC ; =0x0000073C
	ldrb r4, [r1, r4]
	cmp r4, #0
	beq _0225E3AA
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0225E3AA:
	mov r4, #0
	add r5, r1, #0
_0225E3AE:
	add r6, r5, #0
	add r6, #0xb4
	ldr r6, [r6, #0]
	cmp r6, #0
	bne _0225E3DE
	ldr r6, [sp, #0x18]
	add r5, r1, #0
	str r6, [sp]
	ldr r6, [sp, #0x1c]
	add r5, #0xb4
	lsl r4, r4, #2
	str r6, [sp, #4]
	bl ov113_0225E6B8
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0225E3D8
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225E3D8:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0225E3DE:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x80
	blt _0225E3AE
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225E3EC: .word 0x0000073C
	thumb_func_end ov113_0225E398

	thumb_func_start ov113_0225E3F0
ov113_0225E3F0: ; 0x0225E3F0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _0225E48C ; =0x0000073D
	add r7, r0, #0
	ldrb r1, [r7, r1]
	cmp r1, #0
	beq _0225E406
	add r1, r7, #0
	add r1, #0xb0
	bl ov113_0225FD80
_0225E406:
	ldr r0, _0225E490 ; =0x0000073C
	ldrb r3, [r7, r0]
	cmp r3, #0
	beq _0225E426
	add r2, r4, #0
	lsl r4, r3, #2
	ldr r3, _0225E494 ; =0x02260C0C
	add r0, r7, #0
	ldr r3, [r3, r4]
	add r1, r7, #0
	blx r3
	cmp r0, #1
	bne _0225E426
	ldr r0, _0225E490 ; =0x0000073C
	mov r1, #0
	strb r1, [r7, r0]
_0225E426:
	mov r4, #0
	add r6, r7, #0
_0225E42A:
	add r0, r6, #0
	add r0, #0xb4
	ldr r5, [r0, #0]
	cmp r5, #0
	beq _0225E482
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r1, r0, #0x10
	lsr r1, r1, #0x18
	bne _0225E45C
	lsl r0, r0, #8
	lsr r1, r0, #0x18
	beq _0225E45C
	mov r0, #9
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	ldr r0, _0225E498 ; =0xFFFF00FF
	lsl r1, r1, #0x18
	and r0, r2
	lsr r1, r1, #0x10
	orr r1, r0
	mov r0, #9
	lsl r0, r0, #6
	str r1, [r5, r0]
_0225E45C:
	mov r2, #9
	lsl r2, r2, #6
	ldr r2, [r5, r2]
	mov r3, #0xc
	lsl r2, r2, #0x10
	lsr r2, r2, #0x18
	mul r3, r2
	ldr r2, _0225E49C ; =0x02260CAC
	add r0, r7, #0
	ldr r2, [r2, r3]
	add r1, r5, #0
	blx r2
	cmp r0, #1
	bne _0225E482
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov113_0225EB20
_0225E482:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #0x80
	blt _0225E42A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E48C: .word 0x0000073D
_0225E490: .word 0x0000073C
_0225E494: .word 0x02260C0C
_0225E498: .word 0xFFFF00FF
_0225E49C: .word 0x02260CAC
	thumb_func_end ov113_0225E3F0

	thumb_func_start ov113_0225E4A0
ov113_0225E4A0: ; 0x0225E4A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _0225E4E4 ; =0x02260CAC
	mov r4, #0
	add r5, r6, #0
_0225E4AA:
	add r0, r5, #0
	add r0, #0xb4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0225E4D8
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r2, r0, #0x18
	mov r0, #0xc
	mul r0, r2
	add r0, r7, r0
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0225E4D0
	add r0, r6, #0
	blx r2
	b _0225E4D8
_0225E4D0:
	add r1, #0x1c
	add r0, r1, #0
	bl sub_02017294
_0225E4D8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x80
	blt _0225E4AA
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E4E4: .word 0x02260CAC
	thumb_func_end ov113_0225E4A0

	thumb_func_start ov113_0225E4E8
ov113_0225E4E8: ; 0x0225E4E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0
	mov r6, #9
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	add r1, r0, #0
	add r2, r7, #0
	add r3, r7, #0
	lsl r6, r6, #6
_0225E4FE:
	add r0, r2, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0225E536
	ldr r4, [r0, r6]
	lsl r4, r4, #0x10
	lsr r4, r4, #0x18
	beq _0225E520
	mov r4, #0xad
	lsl r4, r4, #2
	str r0, [r3, r4]
	ldr r0, [sp, #0x10]
	add r3, r3, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	b _0225E536
_0225E520:
	ldr r4, [sp, #0xc]
	mov r5, #0x7f
	sub r4, r5, r4
	lsl r4, r4, #2
	add r5, r7, r4
	mov r4, #0xad
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_0225E536:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x80
	blt _0225E4FE
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0225E5F2
_0225E548:
	ldr r0, [sp, #4]
	mov r1, #0x7f
	sub r0, r1, r0
	lsl r0, r0, #2
	add r1, r7, r0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0225E5E6
	add r5, r7, #0
_0225E564:
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #9
	str r0, [sp]
	ldr r1, [sp]
	lsl r3, r3, #6
	add r6, r1, #0
	ldr r3, [r6, r3]
	mov r6, #0xc
	lsl r3, r3, #0x10
	lsr r3, r3, #0x18
	mul r6, r3
	ldr r3, _0225E650 ; =0x02260CAC
	add r0, r7, #0
	add r3, r3, r6
	ldr r3, [r3, #8]
	add r2, r4, #0
	blx r3
	cmp r0, #1
	bne _0225E5D8
	mov r1, #9
	ldr r2, [sp]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	bl ov113_0225EEBC
	cmp r0, #1
	bne _0225E5D8
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsr r0, r0, #0x18
	cmp r0, #0xff
	bne _0225E5D8
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	ldr r0, _0225E654 ; =0x00FFFFFF
	and r0, r2
	ldr r2, [sp]
	ldr r2, [r2, r1]
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	orr r0, r2
	str r0, [r4, r1]
	ldr r2, [sp]
	add r0, r7, #0
	ldr r2, [r2, r1]
	lsr r1, r2, #0x18
	lsl r2, r2, #0x10
	lsr r2, r2, #0x18
	bl ov113_0225EE0C
	b _0225E5E6
_0225E5D8:
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #8]
	cmp r1, r0
	blt _0225E564
_0225E5E6:
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	cmp r1, r0
	blt _0225E548
_0225E5F2:
	ldr r0, _0225E658 ; =0x0000073D
	ldrb r1, [r7, r0]
	cmp r1, #0
	beq _0225E64C
	add r0, r0, #1
	ldrb r0, [r7, r0]
	cmp r0, #1
	bne _0225E64C
	mov r5, #0
	add r6, r7, #0
_0225E606:
	add r0, r6, #0
	add r0, #0xb4
	ldr r4, [r0, #0]
	cmp r4, #0
	beq _0225E63E
	ldr r0, _0225E658 ; =0x0000073D
	ldrb r1, [r7, r0]
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r2, r0, #0x10
	lsr r2, r2, #0x18
	cmp r2, r1
	beq _0225E63E
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	cmp r0, r1
	beq _0225E63E
	add r0, r4, #0
	bl ov113_0225EEBC
	cmp r0, #0
	bne _0225E63E
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov113_0225EB20
_0225E63E:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #0x80
	blt _0225E606
	add r0, r7, #0
	bl ov113_0225EE98
_0225E64C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E650: .word 0x02260CAC
_0225E654: .word 0x00FFFFFF
_0225E658: .word 0x0000073D
	thumb_func_end ov113_0225E4E8

	thumb_func_start ov113_0225E65C
ov113_0225E65C: ; 0x0225E65C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0225E6B4 ; =0x000004B4
	mov r4, #0
	str r1, [sp]
	add r5, r6, r0
	add r7, r4, #0
_0225E66A:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0225E688
	ldr r1, [r0, #4]
	bl DC_FlushRange
	ldr r0, [r5, #0]
	mov r1, #1
	bl NNS_G3dTexLoad
	ldr r0, [r5, #0]
	mov r1, #1
	bl NNS_G3dPlttLoad
	str r7, [r5, #0]
_0225E688:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x20
	blt _0225E66A
	mov r1, #0x1d
	lsl r1, r1, #6
	ldrb r0, [r6, r1]
	cmp r0, #0
	beq _0225E6B2
	ldr r0, [sp]
	cmp r0, #3
	beq _0225E6B2
	add r1, r1, #2
	ldrsh r1, [r6, r1]
	mov r0, #0
	bl sub_0200F44C
	mov r0, #0x1d
	mov r1, #0
	lsl r0, r0, #6
	strb r1, [r6, r0]
_0225E6B2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E6B4: .word 0x000004B4
	thumb_func_end ov113_0225E65C

	thumb_func_start ov113_0225E6B8
ov113_0225E6B8: ; 0x0225E6B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #8]
	mov r1, #0x91
	add r7, r0, #0
	mov r0, #0x76
	lsl r1, r1, #2
	add r5, r2, #0
	str r3, [sp, #0xc]
	bl sub_02018144
	mov r2, #0x91
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r2, #9
	lsl r2, r2, #6
	ldr r1, [r4, r2]
	ldr r0, _0225E770 ; =0x00FFFFFF
	add r6, r5, #0
	and r1, r0
	lsl r0, r0, #0x18
	orr r0, r1
	str r0, [r4, r2]
	ldmia r6!, {r0, r1}
	add r3, r4, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	sub r2, #0x53
	str r0, [r3, #0]
	ldrh r0, [r4, #2]
	cmp r0, r2
	bls _0225E706
	bl GF_AssertFail
	mov r0, #0x84
	strh r0, [r4, #2]
_0225E706:
	ldr r0, [sp, #0x34]
	str r4, [sp]
	str r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x30]
	add r1, #0xc
	bl ov113_0225E774
	cmp r0, #0
	bne _0225E724
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225E724:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x1c
	add r1, #0xc
	bl sub_02017258
	add r0, sp, #0x10
	str r0, [sp]
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #0xa]
	add r0, r7, #0
	add r3, sp, #0x14
	bl ov113_0225EB64
	add r0, r4, #0
	mov r3, #1
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, #0x1c
	lsl r3, r3, #0x10
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r0, #0x1c
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0
	bl sub_02017348
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E770: .word 0x00FFFFFF
	thumb_func_end ov113_0225E6B8

	thumb_func_start ov113_0225E774
ov113_0225E774: ; 0x0225E774
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r7, r0, #0
	add r5, r1, #0
	add r6, r3, #0
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x1d
	mov r3, #0x76
	str r2, [sp]
	bl sub_0200723C
	str r0, [r5, #0]
	cmp r0, #0
	bne _0225E798
	bl GF_AssertFail
_0225E798:
	ldr r0, [r5, #0]
	bl NNS_G3dGetMdlSet
	str r0, [r5, #4]
	cmp r0, #0
	beq _0225E7C4
	add r1, r0, #0
	add r1, #8
	beq _0225E7B8
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _0225E7B8
	ldrh r2, [r0, #0xe]
	add r1, r1, r2
	add r1, r1, #4
	b _0225E7BA
_0225E7B8:
	mov r1, #0
_0225E7BA:
	cmp r1, #0
	beq _0225E7C4
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _0225E7C6
_0225E7C4:
	mov r0, #0
_0225E7C6:
	str r0, [r5, #8]
	ldr r0, [r5, #0]
	bl NNS_G3dGetTex
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0225E846
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r1, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl ov113_0225E920
	ldr r0, [r5, #0xc]
	bl ov113_0225E8B0
	add r4, r0, #0
	beq _0225E7F8
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	bl ov113_0225E854
	cmp r0, #0
	bne _0225E83E
_0225E7F8:
	cmp r4, #1
	bne _0225E822
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	add r2, sp, #4
	bl NNS_G3dTexReleaseTexKey
	ldr r1, _0225E84C ; =0x02100DF0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0225E84C ; =0x02100DF0
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	blx r1
	ldr r0, [r5, #0xc]
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _0225E850 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
_0225E822:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0225E82C
	bl sub_020181C4
_0225E82C:
	mov r1, #0x10
	mov r0, #0
_0225E830:
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _0225E830
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0225E83E:
	ldr r0, [r5, #0]
	ldr r1, [r5, #0xc]
	bl sub_0201CBB0
_0225E846:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E84C: .word 0x02100DF0
_0225E850: .word 0x02100DF8
	thumb_func_end ov113_0225E774

	thumb_func_start ov113_0225E854
ov113_0225E854: ; 0x0225E854
	push {r4, r5}
	ldr r2, _0225E880 ; =0x000004B4
	mov r4, #0
	add r5, r0, #0
_0225E85C:
	ldr r3, [r5, r2]
	cmp r3, #0
	bne _0225E870
	lsl r2, r4, #2
	add r2, r0, r2
	ldr r0, _0225E880 ; =0x000004B4
	str r1, [r2, r0]
	mov r0, #1
	pop {r4, r5}
	bx lr
_0225E870:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x20
	blt _0225E85C
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_0225E880: .word 0x000004B4
	thumb_func_end ov113_0225E854

	thumb_func_start ov113_0225E884
ov113_0225E884: ; 0x0225E884
	push {r4, r5}
	ldr r2, _0225E8AC ; =0x000004B4
	mov r4, #0
	add r5, r0, #0
_0225E88C:
	ldr r3, [r5, r2]
	cmp r3, r1
	bne _0225E8A0
	lsl r1, r4, #2
	add r1, r0, r1
	ldr r0, _0225E8AC ; =0x000004B4
	mov r2, #0
	str r2, [r1, r0]
	pop {r4, r5}
	bx lr
_0225E8A0:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x20
	blt _0225E88C
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0225E8AC: .word 0x000004B4
	thumb_func_end ov113_0225E884

	thumb_func_start ov113_0225E8B0
ov113_0225E8B0: ; 0x0225E8B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	str r1, [r5, #8]
	bl NNS_G3dTexGetRequiredSize
	add r4, r0, #0
	add r0, r5, #0
	bl NNS_G3dPlttGetRequiredSize
	ldr r3, _0225E914 ; =0x02100DEC
	mov r1, #0
	add r6, r0, #0
	ldr r3, [r3, #0]
	add r0, r4, #0
	add r2, r1, #0
	blx r3
	add r4, r0, #0
	bne _0225E8DA
	mov r0, #0
	pop {r4, r5, r6, pc}
_0225E8DA:
	ldr r3, _0225E918 ; =0x02100DF4
	mov r1, #2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0]
	and r1, r2
	add r0, r6, #0
	mov r2, #0
	blx r3
	add r6, r0, #0
	bne _0225E8FC
	ldr r1, _0225E91C ; =0x02100DF0
	add r0, r4, #0
	ldr r1, [r1, #0]
	blx r1
	mov r0, #0
	pop {r4, r5, r6, pc}
_0225E8FC:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl NNS_G3dTexSetTexKey
	add r0, r5, #0
	add r1, r6, #0
	bl NNS_G3dPlttSetPlttKey
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0225E914: .word 0x02100DEC
_0225E918: .word 0x02100DF4
_0225E91C: .word 0x02100DF0
	thumb_func_end ov113_0225E8B0

	thumb_func_start ov113_0225E920
ov113_0225E920: ; 0x0225E920
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r1, r3, #0
	str r0, [sp, #4]
	add r5, r2, #0
	ldrh r0, [r3, #2]
	ldrb r1, [r1, #8]
	ldr r2, [sp, #0x38]
	str r3, [sp, #8]
	bl ov113_02260788
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E964
	mov r2, #1
	ldr r1, [sp, #8]
	str r2, [sp]
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #0x76
	add r1, r1, #3
	bl sub_0200723C
	add r1, sp, #0x20
	str r0, [sp, #0x18]
	bl NNS_G2dGetUnpackedCharacterData
	b _0225E97C
_0225E964:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x76
	bl sub_0200723C
	add r1, sp, #0x20
	str r0, [sp, #0x18]
	bl NNS_G2dGetUnpackedCharacterData
_0225E97C:
	ldr r1, [sp, #0x1c]
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClear16
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_0225E992:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	bhi _0225E9FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225E9A4: ; jump table
	.short _0225E9AC - _0225E9A4 - 2 ; case 0
	.short _0225E9BE - _0225E9A4 - 2 ; case 1
	.short _0225E9D4 - _0225E9A4 - 2 ; case 2
	.short _0225E9E8 - _0225E9A4 - 2 ; case 3
_0225E9AC:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E9B8
	ldr r1, [sp, #0xc]
	add r1, #0x80
	b _0225E9BA
_0225E9B8:
	ldr r1, [sp, #0xc]
_0225E9BA:
	ldr r2, [sp, #0x1c]
	b _0225E9FC
_0225E9BE:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E9CA
	ldr r1, [sp, #0xc]
	add r1, #0xa0
	b _0225E9CE
_0225E9CA:
	ldr r1, [sp, #0xc]
	add r1, #0x20
_0225E9CE:
	ldr r0, [sp, #0x1c]
	add r2, r0, #2
	b _0225E9FC
_0225E9D4:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E9DE
	ldr r1, [sp, #0xc]
	b _0225E9E2
_0225E9DE:
	ldr r1, [sp, #0xc]
	add r1, #0x40
_0225E9E2:
	ldr r2, [sp, #0x1c]
	add r2, #0x20
	b _0225E9FC
_0225E9E8:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225E9F4
	ldr r1, [sp, #0xc]
	add r1, #0x20
	b _0225E9F8
_0225E9F4:
	ldr r1, [sp, #0xc]
	add r1, #0x60
_0225E9F8:
	ldr r2, [sp, #0x1c]
	add r2, #0x22
_0225E9FC:
	mov r5, #0
	mov ip, r5
_0225EA00:
	mov r0, #0
	add r7, r0, #0
_0225EA04:
	ldrb r4, [r1, r5]
	mov r3, #0xf
	tst r3, r4
	beq _0225EA16
	mov r3, #1
	ldrh r4, [r2]
	lsl r3, r0
	orr r3, r4
	strh r3, [r2]
_0225EA16:
	ldrb r4, [r1, r5]
	mov r3, #0xf0
	tst r3, r4
	beq _0225EA2A
	ldrh r6, [r2]
	add r4, r0, #2
	mov r3, #1
	lsl r3, r4
	orr r3, r6
	strh r3, [r2]
_0225EA2A:
	add r7, r7, #1
	add r0, r0, #4
	add r5, r5, #1
	cmp r7, #4
	blt _0225EA04
	mov r0, ip
	add r0, r0, #1
	add r2, r2, #4
	mov ip, r0
	cmp r0, #8
	blt _0225EA00
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0225E992
	ldr r0, [sp, #8]
	ldrh r2, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x38]
	add r0, r0, r1
	strh r2, [r0, #2]
	ldr r0, [sp, #0x18]
	bl sub_020181C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225E920

	thumb_func_start ov113_0225EA60
ov113_0225EA60: ; 0x0225EA60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x14]
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0x76
	mov r1, #0x40
	bl sub_02018144
	str r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	mov r2, #0x40
	add r0, r1, r0
	ldr r1, [sp, #4]
	bl MIi_CpuCopy16
	ldr r2, [sp]
	ldr r1, [sp, #8]
	mov r0, #0
	add r1, r2, r1
	mov r2, #0x40
	bl MIi_CpuClear16
	cmp r4, #3
	beq _0225EA9C
	cmp r4, #4
	beq _0225EACC
	b _0225EB02
_0225EA9C:
	ldr r3, [sp, #4]
	mov r2, #0x1e
	mov r7, #0
	mov r5, #3
_0225EAA4:
	ldr r4, [sp]
	ldr r0, [sp, #8]
	mov r1, #0
	add r4, r4, r0
_0225EAAC:
	ldr r6, [r3, #0]
	ldr r0, [r4, #0]
	lsr r6, r1
	and r6, r5
	lsl r6, r2
	orr r0, r6
	add r1, r1, #2
	stmia r4!, {r0}
	cmp r1, #0x20
	blt _0225EAAC
	add r7, r7, #1
	sub r2, r2, #2
	add r3, r3, #4
	cmp r7, #0x10
	blt _0225EAA4
	b _0225EB02
_0225EACC:
	ldr r2, [sp]
	ldr r0, [sp, #8]
	mov r3, #0
	add r0, r2, r0
	add r0, #0x3c
	ldr r1, [sp, #4]
	add r7, r3, #0
	mov ip, r0
	mov r6, #3
_0225EADE:
	mov r4, #0
	mov r2, ip
_0225EAE2:
	ldr r5, [r1, #0]
	ldr r0, [r2, #0]
	lsr r5, r4
	and r5, r6
	lsl r5, r3
	orr r0, r5
	str r0, [r2, #0]
	add r4, r4, #2
	sub r2, r2, #4
	cmp r4, #0x20
	blt _0225EAE2
	add r7, r7, #1
	add r3, r3, #2
	add r1, r1, #4
	cmp r7, #0x10
	blt _0225EADE
_0225EB02:
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225EA60

	thumb_func_start ov113_0225EB0C
ov113_0225EB0C: ; 0x0225EB0C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc
	bl sub_02017110
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov113_0225EB0C

	thumb_func_start ov113_0225EB20
ov113_0225EB20: ; 0x0225EB20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #9
	add r4, r1, #0
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r6, r2, #0
	lsl r1, r0, #0x1c
	lsr r1, r1, #0x1c
	beq _0225EB3C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _0225EB44
_0225EB3C:
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	bl ov113_0225E884
_0225EB44:
	mov r1, #9
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov113_0225EE78
	add r0, r4, #0
	bl ov113_0225EB0C
	lsl r0, r6, #2
	add r0, r5, r0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov113_0225EB20

	thumb_func_start ov113_0225EB64
ov113_0225EB64: ; 0x0225EB64
	push {r4, r5, r6, r7}
	add r0, r2, #0
	asr r2, r1, #3
	lsr r2, r2, #0x1c
	add r2, r1, r2
	add r5, r3, #0
	asr r3, r2, #4
	ldr r4, [sp, #0x10]
	cmp r3, #0x11
	blo _0225EB7A
	mov r3, #0x10
_0225EB7A:
	ldr r2, _0225EBF4 ; =0x02260C68
	lsl r6, r3, #2
	ldr r7, [r2, r6]
	cmp r3, #0x10
	str r7, [r5, #0]
	bhs _0225EBB0
	ldr r2, [r5, #0]
	lsl r6, r1, #0x1c
	mov ip, r2
	lsr r2, r1, #0x1f
	sub r6, r6, r2
	mov r1, #0x1c
	ror r6, r1
	add r1, r2, r6
	add r2, r3, #1
	lsl r3, r2, #2
	ldr r2, _0225EBF4 ; =0x02260C68
	ldr r2, [r2, r3]
	sub r3, r2, r7
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	asr r2, r2, #4
	mul r2, r1
	mov r1, ip
	add r1, r1, r2
	str r1, [r5, #0]
_0225EBB0:
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	asr r6, r1, #4
	cmp r6, #0xb
	blo _0225EBBE
	mov r6, #0xa
_0225EBBE:
	ldr r5, _0225EBF8 ; =0x02260BE0
	lsl r1, r6, #2
	ldr r3, [r5, r1]
	cmp r6, #0xa
	str r3, [r4, #0]
	bhs _0225EBEE
	lsr r1, r0, #0x1f
	lsl r7, r0, #0x1c
	sub r7, r7, r1
	mov r0, #0x1c
	ror r7, r0
	add r0, r1, r7
	add r1, r6, #1
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r4, #0]
	sub r3, r1, r3
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	asr r1, r1, #4
	mul r1, r0
	add r0, r2, r1
	str r0, [r4, #0]
_0225EBEE:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0225EBF4: .word 0x02260C68
_0225EBF8: .word 0x02260BE0
	thumb_func_end ov113_0225EB64

	thumb_func_start ov113_0225EBFC
ov113_0225EBFC: ; 0x0225EBFC
	push {r3, r4, r5, r6}
	ldr r2, _0225EC58 ; =0x00000534
	mov r1, #1
	ldr r5, [r0, r2]
	add r3, r1, #0
_0225EC06:
	add r4, r3, #0
	lsl r4, r1
	add r2, r5, #0
	tst r2, r4
	bne _0225EC1E
	ldr r2, _0225EC58 ; =0x00000534
	ldr r3, [r0, r2]
	orr r3, r4
	str r3, [r0, r2]
	add r0, r1, #0
	pop {r3, r4, r5, r6}
	bx lr
_0225EC1E:
	add r1, r1, #1
	cmp r1, #0x20
	blt _0225EC06
	mov r5, #0
	cmp r1, #0x3f
	bge _0225EC50
	ldr r2, _0225EC5C ; =0x00000538
	mov r3, #1
	ldr r6, [r0, r2]
_0225EC30:
	add r4, r3, #0
	lsl r4, r5
	add r2, r6, #0
	tst r2, r4
	bne _0225EC48
	ldr r2, _0225EC5C ; =0x00000538
	ldr r3, [r0, r2]
	orr r3, r4
	str r3, [r0, r2]
	add r0, r1, #0
	pop {r3, r4, r5, r6}
	bx lr
_0225EC48:
	add r1, r1, #1
	add r5, r5, #1
	cmp r1, #0x3f
	blt _0225EC30
_0225EC50:
	mov r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
	nop
_0225EC58: .word 0x00000534
_0225EC5C: .word 0x00000538
	thumb_func_end ov113_0225EBFC

	thumb_func_start ov113_0225EC60
ov113_0225EC60: ; 0x0225EC60
	push {r4, r5}
	cmp r1, #0xff
	beq _0225EC94
	cmp r1, #0x20
	bge _0225EC80
	mov r3, #1
	ldr r2, _0225EC98 ; =0x00000534
	add r4, r3, #0
	lsl r4, r1
	sub r1, r3, #2
	ldr r5, [r0, r2]
	eor r1, r4
	and r1, r5
	str r1, [r0, r2]
	pop {r4, r5}
	bx lr
_0225EC80:
	mov r3, #1
	ldr r2, _0225EC9C ; =0x00000538
	sub r1, #0x20
	add r4, r3, #0
	lsl r4, r1
	sub r1, r3, #2
	ldr r5, [r0, r2]
	eor r1, r4
	and r1, r5
	str r1, [r0, r2]
_0225EC94:
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0225EC98: .word 0x00000534
_0225EC9C: .word 0x00000538
	thumb_func_end ov113_0225EC60

	thumb_func_start ov113_0225ECA0
ov113_0225ECA0: ; 0x0225ECA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrh r0, [r1, #2]
	ldrb r1, [r1, #8]
	add r5, r2, #0
	add r6, r3, #0
	bl ov113_022607B8
	add r7, r0, #0
	cmp r7, #3
	blo _0225ECBC
	bl GF_AssertFail
_0225ECBC:
	add r0, r4, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_02017358
	ldr r1, _0225ED94 ; =0x02260C38
	lsl r0, r7, #4
	ldr r2, [sp, #0x14]
	ldr r1, [r1, r0]
	add r1, r2, r1
	str r1, [r5, #0]
	ldr r1, _0225ED98 ; =0x02260C3C
	ldr r2, [sp, #0x14]
	ldr r1, [r1, r0]
	add r1, r2, r1
	str r1, [r5, #4]
	ldr r1, _0225ED9C ; =0x02260C40
	ldr r2, [sp, #0x10]
	ldr r1, [r1, r0]
	add r1, r2, r1
	str r1, [r5, #8]
	ldr r1, _0225EDA0 ; =0x02260C44
	ldr r2, [sp, #0x10]
	ldr r0, [r1, r0]
	add r0, r2, r0
	str r0, [r5, #0xc]
	cmp r6, #1
	bne _0225ED8E
	add r0, r4, #0
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02017374
	ldr r1, [r5, #4]
	ldr r0, [r5, #0]
	mov r2, #0x64
	sub r4, r1, r0
	ldr r0, [sp, #8]
	mov r3, #0
	asr r1, r0, #0x1f
	asr r6, r4, #0x1f
	bl _ull_mul
	mov r2, #1
	lsl r2, r2, #0xc
	mov r3, #0
	bl _ll_sdiv
	add r2, r4, #0
	add r3, r6, #0
	bl _ull_mul
	mov r2, #0x64
	mov r3, #0
	bl _ll_sdiv
	sub r0, r0, r4
	sbc r1, r6
	mov r2, #2
	mov r3, #0
	bl _ll_sdiv
	ldr r1, [r5, #4]
	mov r2, #0x64
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #0]
	mov r3, #0
	sub r0, r1, r0
	str r0, [r5, #0]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	sub r4, r1, r0
	ldr r0, [sp, #4]
	asr r6, r4, #0x1f
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #1
	lsl r2, r2, #0xc
	mov r3, #0
	bl _ll_sdiv
	add r2, r4, #0
	add r3, r6, #0
	bl _ull_mul
	mov r2, #0x64
	mov r3, #0
	bl _ll_sdiv
	sub r0, r0, r4
	sbc r1, r6
	mov r2, #2
	mov r3, #0
	bl _ll_sdiv
	ldr r1, [r5, #8]
	add r1, r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0xc]
	sub r0, r1, r0
	str r0, [r5, #0xc]
_0225ED8E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225ED94: .word 0x02260C38
_0225ED98: .word 0x02260C3C
_0225ED9C: .word 0x02260C40
_0225EDA0: .word 0x02260C44
	thumb_func_end ov113_0225ECA0

	thumb_func_start ov113_0225EDA4
ov113_0225EDA4: ; 0x0225EDA4
	ldr r3, [r0, #0]
	ldr r2, [r1, #4]
	cmp r3, r2
	bgt _0225EDC8
	ldr r3, [r1, #0]
	ldr r2, [r0, #4]
	cmp r3, r2
	bgt _0225EDC8
	ldr r3, [r0, #8]
	ldr r2, [r1, #0xc]
	cmp r3, r2
	blt _0225EDC8
	ldr r1, [r1, #8]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	blt _0225EDC8
	mov r0, #1
	bx lr
_0225EDC8:
	mov r0, #0
	bx lr
	thumb_func_end ov113_0225EDA4

	thumb_func_start ov113_0225EDCC
ov113_0225EDCC: ; 0x0225EDCC
	push {r3, r4, r5, lr}
	ldr r2, _0225EE04 ; =0x0000053C
	add r2, r0, r2
	mov r0, #0
_0225EDD4:
	ldrb r3, [r2, #1]
	cmp r3, #0
	bne _0225EDF6
	mov r4, #9
	lsl r4, r4, #6
	ldr r5, [r1, r4]
	ldr r3, _0225EE08 ; =0x00FFFFFF
	lsl r0, r0, #0x18
	and r3, r5
	orr r0, r3
	str r0, [r1, r4]
	mov r0, #0
	strb r0, [r2]
	ldrb r0, [r2, #1]
	add r0, r0, #1
	strb r0, [r2, #1]
	pop {r3, r4, r5, pc}
_0225EDF6:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #0x80
	blt _0225EDD4
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225EE04: .word 0x0000053C
_0225EE08: .word 0x00FFFFFF
	thumb_func_end ov113_0225EDCC

	thumb_func_start ov113_0225EE0C
ov113_0225EE0C: ; 0x0225EE0C
	push {r3, r4, r5, lr}
	add r3, r0, #0
	add r0, r2, #0
	cmp r1, #0xff
	bne _0225EE1A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225EE1A:
	ldr r2, _0225EE6C ; =0x0000053C
	lsl r4, r1, #2
	add r5, r3, r2
	ldrb r1, [r5, r4]
	add r1, r1, #1
	strb r1, [r5, r4]
	add r1, r2, #1
	add r5, r3, r1
	ldrb r1, [r5, r4]
	add r1, r1, #1
	strb r1, [r5, r4]
	ldr r1, _0225EE70 ; =0x0000073C
	ldrb r5, [r3, r1]
	cmp r5, #0
	bne _0225EE66
	add r5, r1, #1
	ldrb r5, [r3, r5]
	cmp r5, #0
	bne _0225EE66
	add r4, r3, r4
	ldrb r2, [r4, r2]
	add r4, r1, #3
	ldrb r4, [r3, r4]
	lsl r5, r4, #1
	ldr r4, _0225EE74 ; =0x02260BCC
	ldrsh r4, [r4, r5]
	cmp r2, r4
	blt _0225EE66
	add r1, r1, #1
	strb r0, [r3, r1]
	add r3, #0xb0
	add r0, r3, #0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225EE66:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225EE6C: .word 0x0000053C
_0225EE70: .word 0x0000073C
_0225EE74: .word 0x02260BCC
	thumb_func_end ov113_0225EE0C

	thumb_func_start ov113_0225EE78
ov113_0225EE78: ; 0x0225EE78
	push {r3, r4, r5, lr}
	cmp r1, #0xff
	beq _0225EE92
	ldr r2, _0225EE94 ; =0x0000053D
	lsl r4, r1, #2
	add r5, r0, r2
	ldrb r0, [r5, r4]
	sub r0, r0, #1
	bpl _0225EE90
	bl GF_AssertFail
	mov r0, #0
_0225EE90:
	strb r0, [r5, r4]
_0225EE92:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225EE94: .word 0x0000053D
	thumb_func_end ov113_0225EE78

	thumb_func_start ov113_0225EE98
ov113_0225EE98: ; 0x0225EE98
	push {r4, lr}
	mov r1, #0
	mov r2, #0xb0
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r1, _0225EEB8 ; =0x0000073D
	ldrb r2, [r4, r1]
	sub r0, r1, #1
	strb r2, [r4, r0]
	mov r2, #0
	strb r2, [r4, r1]
	add r0, r1, #1
	strb r2, [r4, r0]
	pop {r4, pc}
	nop
_0225EEB8: .word 0x0000073D
	thumb_func_end ov113_0225EE98

	thumb_func_start ov113_0225EEBC
ov113_0225EEBC: ; 0x0225EEBC
	push {r4, lr}
	mov r2, #9
	lsl r2, r2, #6
	ldr r3, [r0, r2]
	lsl r4, r3, #0x10
	lsr r4, r4, #0x18
	bne _0225EED6
	lsl r4, r3, #8
	lsr r4, r4, #0x18
	bne _0225EED6
	lsl r4, r3, #0x1c
	lsr r4, r4, #0x1c
	bne _0225EEDA
_0225EED6:
	mov r0, #0
	pop {r4, pc}
_0225EEDA:
	ldr r4, _0225EEF4 ; =0xFF00FFFF
	lsl r1, r1, #0x18
	and r3, r4
	lsr r1, r1, #8
	orr r1, r3
	str r1, [r0, r2]
	add r0, #0x94
	mov r1, #0
	sub r2, #0x94
	bl MI_CpuFill8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0225EEF4: .word 0xFF00FFFF
	thumb_func_end ov113_0225EEBC

	thumb_func_start ov113_0225EEF8
ov113_0225EEF8: ; 0x0225EEF8
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_02075BFC
	ldr r1, _0225EF08 ; =0x02260D30
	ldrb r0, [r1, r0]
	pop {r3, pc}
	nop
_0225EF08: .word 0x02260D30
	thumb_func_end ov113_0225EEF8

	thumb_func_start ov113_0225EF0C
ov113_0225EF0C: ; 0x0225EF0C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, r5, #0
	add r2, r0, #1
	add r0, r5, #0
	add r0, #0x94
	str r2, [r0, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	cmp r0, #2
	bne _0225EF54
	add r0, r5, #0
	add r0, #0x1c
	add r2, r4, #4
	mov r3, #0
	bl ov113_0225ECA0
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #1
	bl sub_02017348
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #0xf
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
_0225EF54:
	ldr r0, [r4, #0]
	cmp r0, #0x28
	ble _0225EF70
	add r0, r6, #0
	add r1, r5, #0
	bl ov113_0225EDCC
	add r0, r5, #0
	bl ov113_0225EEF8
	add r1, r0, #0
	add r0, r5, #0
	bl ov113_0225EEBC
_0225EF70:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov113_0225EF0C

	thumb_func_start ov113_0225EF74
ov113_0225EF74: ; 0x0225EF74
	mov r0, #0
	bx lr
	thumb_func_end ov113_0225EF74

	thumb_func_start ov113_0225EF78
ov113_0225EF78: ; 0x0225EF78
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x94
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0225EF8C
	cmp r1, #1
	beq _0225EFA4
	b _0225EFDE
_0225EF8C:
	mov r1, #0x1f
	lsl r1, r1, #8
	str r1, [r4, #0]
	bl ov113_0225EBFC
	strb r0, [r4, #9]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #4]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
_0225EFA4:
	ldr r0, [r4, #4]
	mov r3, #1
	add r0, #0xc0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	lsl r3, r3, #8
	add r1, r0, #0
	sub r1, #0xc0
	cmp r1, r3
	bge _0225EFCA
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #0
	bl sub_02017348
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0225EFE8
_0225EFCA:
	sub r0, #0xc0
	str r0, [r4, #0]
	ldr r1, [r4, #4]
	add r0, r5, #0
	add r0, #0x1c
	add r2, r1, #0
	lsl r3, r3, #4
	bl sub_0201736C
	b _0225EFE8
_0225EFDE:
	ldrb r1, [r4, #9]
	bl ov113_0225EC60
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225EFE8:
	add r0, r5, #0
	add r4, #0xc
	add r0, #0x1c
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #1
	bl ov113_0225ECA0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov113_0225EF78

	thumb_func_start ov113_0225EFFC
ov113_0225EFFC: ; 0x0225EFFC
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x94
	ldrb r3, [r0, #9]
	cmp r3, #0xff
	beq _0225F036
	ldr r0, [r0, #0]
	asr r0, r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r0, #0
	add r2, r0, #0
	bl NNS_G3dGlbPolygonAttr
	mov r2, #0x3f
	ldr r0, [r4, #0x14]
	mov r1, #0
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r2, #0x1f
	ldr r0, [r4, #0x14]
	mov r1, #0
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
_0225F036:
	add r4, #0x1c
	add r0, r4, #0
	bl sub_02017294
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov113_0225EFFC

	thumb_func_start ov113_0225F044
ov113_0225F044: ; 0x0225F044
	push {r3, lr}
	add r1, #0xa0
	add r2, #0x98
	add r0, r1, #0
	add r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F05A
	mov r0, #1
	pop {r3, pc}
_0225F05A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov113_0225F044

	thumb_func_start ov113_0225F060
ov113_0225F060: ; 0x0225F060
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, _0225F190 ; =0x0000016A
	add r4, #0x94
	ldrb r0, [r4, r0]
	str r1, [sp]
	cmp r0, #0
	beq _0225F078
	cmp r0, #1
	beq _0225F0B2
	b _0225F154
_0225F078:
	add r0, r1, #0
	add r0, #0x1c
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	ldr r7, [sp]
	mov r6, #0
	add r5, r4, #0
	add r7, #0xc
_0225F08E:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017258
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl sub_02017350
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #3
	blt _0225F08E
	ldr r0, _0225F190 ; =0x0000016A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
_0225F0B2:
	ldr r0, [sp]
	add r1, sp, #0xc
	add r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	mov r2, #2
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0xc
	ldr r3, [sp, #8]
	sub r1, r1, r2
	sub r2, r3, r2
	ldr r3, [sp, #4]
	add r0, #0x1c
	bl sub_02017350
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	mov r2, #2
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0xc
	ldr r3, [sp, #8]
	add r1, r1, r2
	sub r2, r3, r2
	ldr r3, [sp, #4]
	add r0, r4, #0
	bl sub_02017350
	add r0, r4, #0
	add r0, #0x78
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	mov r2, #2
	add r0, r4, #0
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0xc
	ldr r3, [sp, #8]
	sub r1, r1, r2
	add r2, r3, r2
	ldr r3, [sp, #4]
	add r0, #0x78
	bl sub_02017350
	add r0, r4, #0
	add r0, #0xf0
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	mov r2, #2
	add r0, r4, #0
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0xc
	ldr r3, [sp, #8]
	add r1, r1, r2
	add r2, r3, r2
	ldr r3, [sp, #4]
	add r0, #0xf0
	bl sub_02017350
	mov r0, #0x5a
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0x1e
	bls _0225F154
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F154:
	ldr r0, [sp]
	mov r2, #0x5b
	lsl r2, r2, #2
	ldr r1, [sp]
	add r0, #0x1c
	add r2, r4, r2
	mov r3, #0
	bl ov113_0225ECA0
	mov r0, #0x5b
	mov r5, #0
	lsl r0, r0, #2
	add r6, r4, r0
	add r7, r5, #0
_0225F170:
	add r2, r5, #1
	lsl r2, r2, #4
	ldr r1, [sp]
	add r0, r4, #0
	add r2, r6, r2
	add r3, r7, #0
	bl ov113_0225ECA0
	add r5, r5, #1
	add r4, #0x78
	cmp r5, #3
	blt _0225F170
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225F190: .word 0x0000016A
	thumb_func_end ov113_0225F060

	thumb_func_start ov113_0225F194
ov113_0225F194: ; 0x0225F194
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0x94
_0225F19E:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _0225F19E
	add r6, #0x1c
	add r0, r6, #0
	bl sub_02017294
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov113_0225F194

	thumb_func_start ov113_0225F1B8
ov113_0225F1B8: ; 0x0225F1B8
	push {r4, r5, r6, lr}
	mov r0, #2
	add r6, r2, #0
	lsl r0, r0, #8
	add r6, #0x94
	mov r4, #0
	add r5, r1, r0
_0225F1C6:
	add r0, r5, #0
	add r1, r6, #4
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F1D6
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225F1D6:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0225F1C6
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov113_0225F1B8

	thumb_func_start ov113_0225F1E4
ov113_0225F1E4: ; 0x0225F1E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x94
	add r4, r5, #0
	ldr r0, [r0, #0]
	add r4, #0x94
	cmp r0, #3
	bls _0225F1FC
	b _0225F32A
_0225F1FC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F208: ; jump table
	.short _0225F210 - _0225F208 - 2 ; case 0
	.short _0225F26E - _0225F208 - 2 ; case 1
	.short _0225F2A8 - _0225F208 - 2 ; case 2
	.short _0225F2BC - _0225F208 - 2 ; case 3
_0225F210:
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #2
	bl sub_02017394
	ldr r1, _0225F340 ; =0x00000AAA
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r6, r0
	bhi _0225F260
	mov r1, #9
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	ldr r0, [r5, #0x18]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	bl ov113_0225EA60
	ldr r1, [r5, #0x18]
	add r0, r7, #0
	bl ov113_0225E854
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #0xf0
	bic r2, r0
	mov r0, #0x10
	orr r2, r0
	lsl r0, r0, #0xa
	add r0, r6, r0
	lsl r0, r0, #0x10
	str r2, [r5, r1]
	lsr r6, r0, #0x10
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0225F260:
	add r0, r5, #0
	add r0, #0x1c
	add r1, r6, #0
	mov r2, #2
	bl sub_02017388
	b _0225F32A
_0225F26E:
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #0xf0
	bic r2, r0
	add r0, r5, #0
	str r2, [r5, r1]
	add r0, #0x1c
	mov r1, #2
	bl sub_02017394
	ldr r1, _0225F340 ; =0x00000AAA
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #3
	lsl r0, r0, #0xe
	cmp r1, r0
	blo _0225F29C
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0]
_0225F29C:
	add r0, r5, #0
	add r0, #0x1c
	mov r2, #2
	bl sub_02017388
	b _0225F32A
_0225F2A8:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	blt _0225F32A
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0225F2BC:
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02017358
	ldr r1, [sp, #8]
	ldr r0, _0225F344 ; =0xFFFB0000
	cmp r1, r0
	blt _0225F2EA
	mov r0, #5
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0225F2EA
	mov r2, #3
	ldr r3, [sp, #4]
	lsl r2, r2, #0x10
	cmp r3, r2
	bgt _0225F2EA
	ldr r0, _0225F348 ; =0xFFFD0000
	cmp r3, r0
	bge _0225F2F0
_0225F2EA:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225F2F0:
	ldr r0, [r4, #8]
	cmp r0, #5
	bge _0225F30A
	lsr r6, r2, #4
	lsr r2, r2, #4
	add r0, r5, #0
	sub r2, r3, r2
	ldr r3, [sp]
	add r0, #0x1c
	add r1, r1, r6
	bl sub_02017350
	b _0225F31C
_0225F30A:
	lsr r6, r2, #4
	lsr r2, r2, #4
	add r0, r5, #0
	add r2, r3, r2
	ldr r3, [sp]
	add r0, #0x1c
	add r1, r1, r6
	bl sub_02017350
_0225F31C:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	blt _0225F32A
	mov r0, #0
	str r0, [r4, #8]
_0225F32A:
	add r0, r5, #0
	add r4, #0xc
	add r0, #0x1c
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov113_0225ECA0
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225F340: .word 0x00000AAA
_0225F344: .word 0xFFFB0000
_0225F348: .word 0xFFFD0000
	thumb_func_end ov113_0225F1E4

	thumb_func_start ov113_0225F34C
ov113_0225F34C: ; 0x0225F34C
	push {r3, lr}
	add r1, #0xa0
	add r2, #0x98
	add r0, r1, #0
	add r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F362
	mov r0, #1
	pop {r3, pc}
_0225F362:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov113_0225F34C

	thumb_func_start ov113_0225F368
ov113_0225F368: ; 0x0225F368
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x94
	add r4, r5, #0
	ldr r0, [r0, #0]
	add r4, #0x94
	cmp r0, #3
	bls _0225F380
	b _0225F4DA
_0225F380:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F38C: ; jump table
	.short _0225F394 - _0225F38C - 2 ; case 0
	.short _0225F3F4 - _0225F38C - 2 ; case 1
	.short _0225F42E - _0225F38C - 2 ; case 2
	.short _0225F454 - _0225F38C - 2 ; case 3
_0225F394:
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #2
	bl sub_02017394
	ldr r1, _0225F4F0 ; =0x00000AAA
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xc
	cmp r6, r0
	blo _0225F3E6
	mov r1, #9
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	ldr r0, [r5, #0x18]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	bl ov113_0225EA60
	mov r0, #1
	lsl r0, r0, #0xe
	sub r0, r6, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r1, [r5, #0x18]
	add r0, r7, #0
	bl ov113_0225E854
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #0xf0
	bic r2, r0
	mov r0, #0x10
	orr r0, r2
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0225F3E6:
	add r0, r5, #0
	add r0, #0x1c
	add r1, r6, #0
	mov r2, #2
	bl sub_02017388
	b _0225F4DA
_0225F3F4:
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #0xf0
	bic r2, r0
	add r0, r5, #0
	str r2, [r5, r1]
	add r0, #0x1c
	mov r1, #2
	bl sub_02017394
	ldr r1, _0225F4F0 ; =0x00000AAA
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	lsl r0, r0, #0xe
	cmp r1, r0
	bhs _0225F422
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #0]
_0225F422:
	add r0, r5, #0
	add r0, #0x1c
	mov r2, #2
	bl sub_02017388
	b _0225F4DA
_0225F42E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blt _0225F4DA
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02017358
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0225F454:
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02017358
	ldr r1, [sp, #8]
	ldr r0, _0225F4F4 ; =0xFFFB0000
	cmp r1, r0
	blt _0225F482
	mov r0, #5
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0225F482
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0225F482
	ldr r0, _0225F4F8 ; =0xFFFD0000
	cmp r1, r0
	bge _0225F488
_0225F482:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225F488:
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xe
	add r1, r1, r0
	mov r0, #0x5a
	lsl r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _0225F4A0
	ldr r1, [r4, #4]
	sub r0, r1, r0
	str r0, [r4, #4]
_0225F4A0:
	ldr r0, [r4, #4]
	bl sub_0201D2B8
	add r2, r0, #0
	mov r1, #1
	add r0, r5, #0
	ldr r3, [sp, #8]
	lsl r1, r1, #0xc
	sub r1, r3, r1
	asr r3, r2, #0x1f
	lsr r6, r2, #0x11
	lsl r3, r3, #0xf
	orr r3, r6
	mov r6, #1
	lsl r6, r6, #0xc
	lsl r2, r2, #0xf
	lsr r6, r6, #1
	add r0, #0x1c
	add r6, r2, r6
	ldr r2, _0225F4FC ; =0x00000000
	ldr r7, [r4, #0xc]
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r3, r6, #0xc
	orr r3, r2
	add r2, r7, r3
	ldr r3, [sp]
	bl sub_02017350
_0225F4DA:
	add r0, r5, #0
	add r4, #0x10
	add r0, #0x1c
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov113_0225ECA0
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225F4F0: .word 0x00000AAA
_0225F4F4: .word 0xFFFB0000
_0225F4F8: .word 0xFFFD0000
_0225F4FC: .word 0x00000000
	thumb_func_end ov113_0225F368

	thumb_func_start ov113_0225F500
ov113_0225F500: ; 0x0225F500
	push {r3, lr}
	add r1, #0xa4
	add r2, #0x98
	add r0, r1, #0
	add r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F516
	mov r0, #1
	pop {r3, pc}
_0225F516:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov113_0225F500

	thumb_func_start ov113_0225F51C
ov113_0225F51C: ; 0x0225F51C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r1, [sp]
	ldr r1, _0225F66C ; =0x0000016D
	add r4, #0x94
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0225F534
	cmp r2, #1
	beq _0225F580
	b _0225F646
_0225F534:
	bl ov113_0225EBFC
	mov r1, #0x5b
	lsl r1, r1, #2
	strb r0, [r4, r1]
	ldr r0, [sp]
	add r1, sp, #0xc
	add r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	ldr r7, [sp]
	mov r6, #0
	add r5, r4, #0
	add r7, #0xc
_0225F554:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017258
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl sub_02017350
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #3
	blt _0225F554
	ldr r0, _0225F66C ; =0x0000016D
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
_0225F580:
	ldr r0, [sp]
	add r1, sp, #0xc
	add r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	ldr r1, [sp, #0xc]
	ldr r0, _0225F670 ; =0xFFFB0000
	cmp r1, r0
	blt _0225F5B6
	mov r2, #5
	lsl r2, r2, #0x10
	cmp r1, r2
	bgt _0225F5B6
	mov r0, #3
	ldr r3, [sp, #8]
	lsl r0, r0, #0x10
	cmp r3, r0
	bgt _0225F5B6
	ldr r0, _0225F674 ; =0xFFFD0000
	cmp r3, r0
	blt _0225F5B6
	ldr r0, _0225F678 ; =0x0000016B
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0225F5E0
_0225F5B6:
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_0225F5BC:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017348
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #3
	blt _0225F5BC
	ldr r0, [sp]
	mov r1, #0
	add r0, #0x1c
	bl sub_02017348
	ldr r0, _0225F66C ; =0x0000016D
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0225F654
_0225F5E0:
	ldr r0, [sp]
	lsr r2, r2, #5
	add r2, r3, r2
	ldr r3, [sp, #4]
	add r0, #0x1c
	bl sub_02017350
	mov r0, #0x5a
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	bne _0225F63A
	ldr r0, _0225F67C ; =0x0000016A
	mov r2, #0xa
	ldrb r1, [r4, r0]
	ldr r3, [sp, #8]
	mov r0, #0x78
	mul r0, r1
	lsl r2, r2, #0xa
	add r2, r3, r2
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	add r0, r4, r0
	bl sub_02017350
	ldr r0, _0225F67C ; =0x0000016A
	ldrb r1, [r4, r0]
	mov r0, #0x78
	mul r0, r1
	add r0, r4, r0
	mov r1, #1
	bl sub_02017348
	ldr r0, _0225F67C ; =0x0000016A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, #3
	blo _0225F63A
	mov r1, #0
	strb r1, [r4, r0]
_0225F63A:
	mov r0, #0x5a
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0225F654
_0225F646:
	sub r1, r1, #1
	ldrb r1, [r4, r1]
	bl ov113_0225EC60
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F654:
	ldr r0, [sp]
	mov r2, #0x17
	lsl r2, r2, #4
	ldr r1, [sp]
	add r0, #0x1c
	add r2, r4, r2
	mov r3, #0
	bl ov113_0225ECA0
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225F66C: .word 0x0000016D
_0225F670: .word 0xFFFB0000
_0225F674: .word 0xFFFD0000
_0225F678: .word 0x0000016B
_0225F67C: .word 0x0000016A
	thumb_func_end ov113_0225F51C

	thumb_func_start ov113_0225F680
ov113_0225F680: ; 0x0225F680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r7, r6, #0
	mov r0, #0x5b
	add r7, #0x94
	lsl r0, r0, #2
	ldrb r3, [r7, r0]
	cmp r3, #0xff
	beq _0225F6BC
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r0, #0
	add r2, r0, #0
	bl NNS_G3dGlbPolygonAttr
	mov r2, #0x3f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r2, #0x1f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
_0225F6BC:
	mov r4, #0
	add r5, r7, #0
_0225F6C0:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _0225F6C0
	mov r0, #0x5b
	lsl r0, r0, #2
	ldrb r3, [r7, r0]
	cmp r3, #0xff
	beq _0225F700
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r0, #0
	add r2, r0, #0
	bl NNS_G3dGlbPolygonAttr
	mov r2, #0x3f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r2, #0x1f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
_0225F700:
	add r6, #0x1c
	add r0, r6, #0
	bl sub_02017294
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225F680

	thumb_func_start ov113_0225F70C
ov113_0225F70C: ; 0x0225F70C
	push {r3, lr}
	mov r0, #0x81
	lsl r0, r0, #2
	add r2, #0x98
	add r0, r1, r0
	add r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F724
	mov r0, #1
	pop {r3, pc}
_0225F724:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov113_0225F70C

	thumb_func_start ov113_0225F728
ov113_0225F728: ; 0x0225F728
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, r5, #0
	add r4, #0x94
	cmp r0, #0
	beq _0225F742
	cmp r0, #1
	beq _0225F75A
	b _0225F7DC
_0225F742:
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02017358
	ldr r0, [sp, #8]
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0225F75A:
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02017358
	ldr r1, [sp, #8]
	ldr r0, _0225F7F4 ; =0xFFFB0000
	cmp r1, r0
	blt _0225F788
	mov r0, #5
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0225F788
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0225F788
	ldr r0, _0225F7F8 ; =0xFFFD0000
	cmp r1, r0
	bge _0225F78E
_0225F788:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225F78E:
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xe
	add r1, r1, r0
	mov r0, #0x5a
	lsl r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _0225F7A6
	ldr r1, [r4, #4]
	sub r0, r1, r0
	str r0, [r4, #4]
_0225F7A6:
	ldr r0, [r4, #4]
	bl sub_0201D2B8
	add r2, r0, #0
	asr r6, r2, #0x1f
	mov r7, #2
	add r0, r5, #0
	lsr r3, r2, #0x11
	lsl r6, r6, #0xf
	orr r6, r3
	lsl r3, r2, #0xf
	mov r2, #0
	lsl r7, r7, #0xa
	add r0, #0x1c
	add r3, r3, r7
	adc r6, r2
	ldr r1, [r4, #8]
	lsl r2, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	add r1, r1, r3
	ldr r3, [sp, #4]
	lsl r2, r7, #1
	sub r2, r3, r2
	ldr r3, [sp]
	bl sub_02017350
_0225F7DC:
	add r0, r5, #0
	add r4, #0xc
	add r0, #0x1c
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov113_0225ECA0
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225F7F4: .word 0xFFFB0000
_0225F7F8: .word 0xFFFD0000
	thumb_func_end ov113_0225F728

	thumb_func_start ov113_0225F7FC
ov113_0225F7FC: ; 0x0225F7FC
	push {r3, lr}
	add r1, #0xa0
	add r2, #0x98
	add r0, r1, #0
	add r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F812
	mov r0, #1
	pop {r3, pc}
_0225F812:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov113_0225F7FC

	thumb_func_start ov113_0225F818
ov113_0225F818: ; 0x0225F818
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x94
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0225F82C
	cmp r0, #1
	beq _0225F838
	b _0225F860
_0225F82C:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
_0225F838:
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #8
	bls _0225F848
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225F848:
	mov r0, #3
	ldr r1, [r4, #0]
	lsl r0, r0, #8
	add r1, r1, r0
	add r0, r5, #0
	mov r3, #1
	add r0, #0x1c
	add r2, r1, #0
	lsl r3, r3, #0xc
	str r1, [r4, #0]
	bl sub_0201736C
_0225F860:
	add r0, r5, #0
	add r4, #8
	add r0, #0x1c
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #1
	bl ov113_0225ECA0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov113_0225F818

	thumb_func_start ov113_0225F874
ov113_0225F874: ; 0x0225F874
	push {r3, lr}
	add r1, #0x9c
	add r2, #0x98
	add r0, r1, #0
	add r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225F88A
	mov r0, #1
	pop {r3, pc}
_0225F88A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov113_0225F874

	thumb_func_start ov113_0225F890
ov113_0225F890: ; 0x0225F890
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r4, #0x94
	str r1, [sp]
	add r1, r4, #0
	add r1, #0xf7
	ldrb r1, [r1]
	cmp r1, #0
	beq _0225F8AA
	cmp r1, #1
	beq _0225F906
	b _0225F9E0
_0225F8AA:
	bl ov113_0225EBFC
	add r1, r4, #0
	add r1, #0xf6
	strb r0, [r1]
	ldr r0, [sp]
	add r1, sp, #0xc
	add r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	ldr r7, [sp]
	mov r6, #0
	add r5, r4, #0
	add r7, #0xc
_0225F8CA:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017258
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl sub_02017350
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #2
	blt _0225F8CA
	mov r1, #0x1f
	add r0, r4, #0
	lsl r1, r1, #8
	add r0, #0xf4
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xf7
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf7
	strb r1, [r0]
_0225F906:
	add r0, r4, #0
	add r0, #0xf4
	ldrh r0, [r0]
	mov r2, #1
	lsl r2, r2, #8
	sub r0, #0xa0
	cmp r0, r2
	bge _0225F946
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_0225F91C:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017348
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #2
	blt _0225F91C
	ldr r0, [sp]
	mov r1, #0
	add r0, #0x1c
	bl sub_02017348
	add r0, r4, #0
	add r0, #0xf7
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf7
	strb r1, [r0]
	b _0225F9EE
_0225F946:
	add r0, r4, #0
	add r0, #0xf4
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0xf4
	sub r1, #0xa0
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0xf0
	ldr r3, [r1, #0]
	lsl r1, r2, #9
	add r2, r3, r1
	add r1, r4, #0
	add r1, #0xf0
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xf0
	ldr r2, [r1, #0]
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0xf0
	cmp r2, r1
	blt _0225F97C
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
_0225F97C:
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0201D2B8
	asr r2, r0, #0x1f
	lsl r3, r2, #0x10
	lsr r1, r0, #0x10
	lsl r2, r0, #0x10
	mov r0, #2
	orr r3, r1
	mov r1, #0
	lsl r0, r0, #0xa
	add r2, r2, r0
	adc r3, r1
	lsl r0, r3, #0x14
	lsr r7, r2, #0xc
	orr r7, r0
	ldr r0, [sp]
	add r1, sp, #0xc
	add r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	mov r6, #0
	add r5, r4, #0
_0225F9B2:
	mov r0, #1
	tst r0, r6
	beq _0225F9C8
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r1, r7
	bl sub_02017350
	b _0225F9D6
_0225F9C8:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	sub r1, r1, r7
	bl sub_02017350
_0225F9D6:
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #2
	blt _0225F9B2
	b _0225F9EE
_0225F9E0:
	add r4, #0xf6
	ldrb r1, [r4]
	bl ov113_0225EC60
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F9EE:
	ldr r0, [sp]
	add r2, r4, #0
	ldr r1, [sp]
	add r0, #0x1c
	add r2, #0xf8
	mov r3, #0
	bl ov113_0225ECA0
	mov r5, #0
	add r6, r4, #0
	add r6, #0xf8
	add r7, r5, #0
_0225FA06:
	add r2, r5, #1
	lsl r2, r2, #4
	ldr r1, [sp]
	add r0, r4, #0
	add r2, r6, r2
	add r3, r7, #0
	bl ov113_0225ECA0
	add r5, r5, #1
	add r4, #0x78
	cmp r5, #2
	blt _0225FA06
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225F890

	thumb_func_start ov113_0225FA24
ov113_0225FA24: ; 0x0225FA24
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r6, #0
	add r5, #0x94
	add r0, r5, #0
	add r0, #0xf6
	ldrb r3, [r0]
	cmp r3, #0xff
	beq _0225FA66
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	asr r0, r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r0, #0
	add r2, r0, #0
	bl NNS_G3dGlbPolygonAttr
	mov r2, #0x3f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r2, #0x1f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
_0225FA66:
	mov r4, #0
_0225FA68:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #2
	blt _0225FA68
	add r6, #0x1c
	add r0, r6, #0
	bl sub_02017294
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov113_0225FA24

	thumb_func_start ov113_0225FA84
ov113_0225FA84: ; 0x0225FA84
	push {r4, r5, r6, lr}
	mov r0, #0x63
	add r6, r2, #0
	lsl r0, r0, #2
	add r6, #0x94
	mov r4, #0
	add r5, r1, r0
_0225FA92:
	add r0, r5, #0
	add r1, r6, #4
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225FAA2
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225FAA2:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0225FA92
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov113_0225FA84

	thumb_func_start ov113_0225FAB0
ov113_0225FAB0: ; 0x0225FAB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r4, #0x94
	str r1, [sp]
	add r1, r4, #0
	add r1, #0xf7
	ldrb r1, [r1]
	cmp r1, #0
	beq _0225FACA
	cmp r1, #1
	beq _0225FB26
	b _0225FC00
_0225FACA:
	bl ov113_0225EBFC
	add r1, r4, #0
	add r1, #0xf6
	strb r0, [r1]
	ldr r0, [sp]
	add r1, sp, #0xc
	add r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	ldr r7, [sp]
	mov r6, #0
	add r5, r4, #0
	add r7, #0xc
_0225FAEA:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017258
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl sub_02017350
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #2
	blt _0225FAEA
	mov r1, #0x1f
	add r0, r4, #0
	lsl r1, r1, #8
	add r0, #0xf4
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xf7
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf7
	strb r1, [r0]
_0225FB26:
	add r0, r4, #0
	add r0, #0xf4
	ldrh r0, [r0]
	mov r2, #1
	lsl r2, r2, #8
	sub r0, #0xa0
	cmp r0, r2
	bge _0225FB66
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_0225FB3C:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017348
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #2
	blt _0225FB3C
	ldr r0, [sp]
	mov r1, #0
	add r0, #0x1c
	bl sub_02017348
	add r0, r4, #0
	add r0, #0xf7
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf7
	strb r1, [r0]
	b _0225FC0E
_0225FB66:
	add r0, r4, #0
	add r0, #0xf4
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0xf4
	sub r1, #0xa0
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0xf0
	ldr r3, [r1, #0]
	lsl r1, r2, #9
	add r2, r3, r1
	add r1, r4, #0
	add r1, #0xf0
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0xf0
	ldr r2, [r1, #0]
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0xf0
	cmp r2, r1
	blt _0225FB9C
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
_0225FB9C:
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0201D2B8
	asr r2, r0, #0x1f
	lsl r3, r2, #0x10
	lsr r1, r0, #0x10
	lsl r2, r0, #0x10
	mov r0, #2
	orr r3, r1
	mov r1, #0
	lsl r0, r0, #0xa
	add r2, r2, r0
	adc r3, r1
	lsl r0, r3, #0x14
	lsr r7, r2, #0xc
	orr r7, r0
	ldr r0, [sp]
	add r1, sp, #0xc
	add r0, #0x1c
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02017358
	mov r6, #0
	add r5, r4, #0
_0225FBD2:
	mov r0, #1
	tst r0, r6
	beq _0225FBE8
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r2, r2, r7
	bl sub_02017350
	b _0225FBF6
_0225FBE8:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	add r0, r5, #0
	sub r2, r2, r7
	bl sub_02017350
_0225FBF6:
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #2
	blt _0225FBD2
	b _0225FC0E
_0225FC00:
	add r4, #0xf6
	ldrb r1, [r4]
	bl ov113_0225EC60
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225FC0E:
	ldr r0, [sp]
	add r2, r4, #0
	ldr r1, [sp]
	add r0, #0x1c
	add r2, #0xf8
	mov r3, #0
	bl ov113_0225ECA0
	mov r5, #0
	add r6, r4, #0
	add r6, #0xf8
	add r7, r5, #0
_0225FC26:
	add r2, r5, #1
	lsl r2, r2, #4
	ldr r1, [sp]
	add r0, r4, #0
	add r2, r6, r2
	add r3, r7, #0
	bl ov113_0225ECA0
	add r5, r5, #1
	add r4, #0x78
	cmp r5, #2
	blt _0225FC26
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov113_0225FAB0

	thumb_func_start ov113_0225FC44
ov113_0225FC44: ; 0x0225FC44
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r6, #0
	add r5, #0x94
	add r0, r5, #0
	add r0, #0xf6
	ldrb r3, [r0]
	cmp r3, #0xff
	beq _0225FC86
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	asr r0, r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r0, #0
	add r2, r0, #0
	bl NNS_G3dGlbPolygonAttr
	mov r2, #0x3f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r2, #0x1f
	ldr r0, [r6, #0x14]
	mov r1, #0
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
_0225FC86:
	mov r4, #0
_0225FC88:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #2
	blt _0225FC88
	add r6, #0x1c
	add r0, r6, #0
	bl sub_02017294
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov113_0225FC44

	thumb_func_start ov113_0225FCA4
ov113_0225FCA4: ; 0x0225FCA4
	push {r4, r5, r6, lr}
	mov r0, #0x63
	add r6, r2, #0
	lsl r0, r0, #2
	add r6, #0x94
	mov r4, #0
	add r5, r1, r0
_0225FCB2:
	add r0, r5, #0
	add r1, r6, #4
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225FCC2
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225FCC2:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0225FCB2
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov113_0225FCA4

	thumb_func_start ov113_0225FCD0
ov113_0225FCD0: ; 0x0225FCD0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x94
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0225FCE6
	cmp r0, #1
	beq _0225FCF2
	b _0225FD4E
_0225FCE6:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
_0225FCF2:
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #0x1e
	bls _0225FD04
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0225FD04:
	mov r0, #6
	ldr r1, [r4, #0]
	lsl r0, r0, #6
	add r2, r1, r0
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #0xc
	str r2, [r4, #0]
	add r0, #0x1c
	add r3, r1, #0
	bl sub_0201736C
	mov r0, #1
	ldr r1, [r4, #0]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	lsl r1, r0, #0xc
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	neg r5, r0
	add r0, r6, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_02017358
	ldr r2, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #8]
	ldr r3, [sp]
	add r0, #0x1c
	add r2, r2, r5
	bl sub_02017350
_0225FD4E:
	add r0, r6, #0
	add r4, #8
	add r0, #0x1c
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #1
	bl ov113_0225ECA0
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov113_0225FCD0

	thumb_func_start ov113_0225FD64
ov113_0225FD64: ; 0x0225FD64
	push {r3, lr}
	add r1, #0x9c
	add r2, #0x98
	add r0, r1, #0
	add r1, r2, #0
	bl ov113_0225EDA4
	cmp r0, #1
	bne _0225FD7A
	mov r0, #1
	pop {r3, pc}
_0225FD7A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov113_0225FD64

	thumb_func_start ov113_0225FD80
ov113_0225FD80: ; 0x0225FD80
	push {r4, r5}
	add r4, r0, #0
	cmp r2, #3
	bne _0225FD8E
	mov r0, #0
	pop {r4, r5}
	bx lr
_0225FD8E:
	cmp r3, #0
	bne _0225FD98
	mov r0, #0
	mvn r0, r0
	b _0225FD9A
_0225FD98:
	mov r0, #1
_0225FD9A:
	ldrb r2, [r1]
	cmp r2, #0
	beq _0225FDA6
	cmp r2, #1
	beq _0225FDD8
	b _0225FE1A
_0225FDA6:
	mov r3, #2
	ldrsh r5, [r1, r3]
	lsl r2, r3, #8
	add r2, r5, r2
	strh r2, [r1, #2]
	ldrsh r5, [r1, r3]
	lsl r2, r3, #0xa
	cmp r5, r2
	blt _0225FDC0
	strh r2, [r1, #2]
	ldrb r2, [r1]
	add r2, r2, #1
	strb r2, [r1]
_0225FDC0:
	mov r2, #0x1d
	mov r3, #1
	lsl r2, r2, #6
	strb r3, [r4, r2]
	mov r3, #2
	ldrsh r1, [r1, r3]
	asr r1, r1, #8
	add r3, r1, #0
	mul r3, r0
	add r0, r2, #2
	strh r3, [r4, r0]
	b _0225FE24
_0225FDD8:
	mov r3, #2
	ldrsh r5, [r1, r3]
	lsl r2, r3, #8
	sub r2, r5, r2
	strh r2, [r1, #2]
	ldrsh r2, [r1, r3]
	cmp r2, #0
	bgt _0225FE02
	mov r3, #0
	strh r3, [r1, #2]
	ldrb r2, [r1, #1]
	add r2, r2, #1
	strb r2, [r1, #1]
	ldrb r2, [r1, #1]
	cmp r2, #2
	bhs _0225FDFC
	strb r3, [r1]
	b _0225FE02
_0225FDFC:
	ldrb r2, [r1]
	add r2, r2, #1
	strb r2, [r1]
_0225FE02:
	mov r2, #0x1d
	mov r3, #1
	lsl r2, r2, #6
	strb r3, [r4, r2]
	mov r3, #2
	ldrsh r1, [r1, r3]
	asr r1, r1, #8
	add r3, r1, #0
	mul r3, r0
	add r0, r2, #2
	strh r3, [r4, r0]
	b _0225FE24
_0225FE1A:
	ldr r1, _0225FE2C ; =0x0000073E
	mov r0, #1
	strb r0, [r4, r1]
	pop {r4, r5}
	bx lr
_0225FE24:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_0225FE2C: .word 0x0000073E
	thumb_func_end ov113_0225FD80

	thumb_func_start ov113_0225FE30
ov113_0225FE30: ; 0x0225FE30
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r0, [r4, #6]
	add r5, r2, #0
	cmp r0, #3
	bhi _0225FECE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FE48: ; jump table
	.short _0225FE50 - _0225FE48 - 2 ; case 0
	.short _0225FE64 - _0225FE48 - 2 ; case 1
	.short _0225FE86 - _0225FE48 - 2 ; case 2
	.short _0225FEA0 - _0225FE48 - 2 ; case 3
_0225FE50:
	add r0, r5, #0
	bl sub_02020A90
	str r0, [r4, #0]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	ldr r0, _0225FED4 ; =0x000005BE
	bl sub_02005748
_0225FE64:
	ldr r0, _0225FED8 ; =0xFFFFE556
	add r1, r5, #0
	bl sub_02020A78
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	blt _0225FECE
	mov r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _0225FECE
_0225FE86:
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #4
	ble _0225FECE
	mov r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _0225FECE
_0225FEA0:
	ldr r0, _0225FEDC ; =0x00008555
	add r1, r5, #0
	bl sub_02020A78
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #6
	bge _0225FEC2
	add r0, r5, #0
	bl sub_02020A90
	ldr r1, [r4, #0]
	cmp r0, r1
	blt _0225FECE
_0225FEC2:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02020A50
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225FECE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225FED4: .word 0x000005BE
_0225FED8: .word 0xFFFFE556
_0225FEDC: .word 0x00008555
	thumb_func_end ov113_0225FE30

	thumb_func_start ov113_0225FEE0
ov113_0225FEE0: ; 0x0225FEE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r5, #8
	ldrb r0, [r5, #0xc]
	add r4, r2, #0
	cmp r0, #0
	beq _0225FEF4
	cmp r0, #1
	beq _0225FF00
	b _0225FF7E
_0225FEF4:
	ldr r0, _0225FF88 ; =0x000005BE
	bl sub_02005748
	ldrb r0, [r5, #0xc]
	add r0, r0, #1
	strb r0, [r5, #0xc]
_0225FF00:
	ldrb r0, [r5, #0xd]
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, r0, #1
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xd]
	lsl r0, r0, #0xa
	cmp r0, r1
	bge _0225FF18
	lsr r1, r1, #1
	sub r1, r1, r0
	b _0225FF1E
_0225FF18:
	mov r1, #3
	lsl r1, r1, #0xc
	sub r1, r0, r1
_0225FF1E:
	mov r2, #1
	lsl r2, r2, #0xc
	str r1, [r5, #4]
	cmp r0, r2
	bge _0225FF2C
	str r0, [r5, #0]
	b _0225FF50
_0225FF2C:
	lsl r1, r2, #1
	cmp r0, r1
	bge _0225FF38
	sub r0, r1, r0
	str r0, [r5, #0]
	b _0225FF50
_0225FF38:
	mov r1, #3
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _0225FF4A
	lsl r1, r2, #1
	sub r0, r0, r1
	neg r0, r0
	str r0, [r5, #0]
	b _0225FF50
_0225FF4A:
	lsl r1, r2, #2
	sub r0, r0, r1
	str r0, [r5, #0]
_0225FF50:
	ldrb r0, [r5, #0xd]
	cmp r0, #0x10
	blo _0225FF74
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0]
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xe]
	add r0, r0, #1
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0xe]
	cmp r0, #2
	blo _0225FF74
	ldrb r0, [r5, #0xc]
	add r0, r0, #1
	strb r0, [r5, #0xc]
_0225FF74:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02020680
	b _0225FF82
_0225FF7E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225FF82:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225FF88: .word 0x000005BE
	thumb_func_end ov113_0225FEE0

	thumb_func_start ov113_0225FF8C
ov113_0225FF8C: ; 0x0225FF8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r4, #0x18
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	add r5, r2, #0
	cmp r1, #3
	bhi _0226005A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225FFB4: ; jump table
	.short _0225FFBC - _0225FFB4 - 2 ; case 0
	.short _0225FFE6 - _0225FFB4 - 2 ; case 1
	.short _02260016 - _0225FFB4 - 2 ; case 2
	.short _0226002C - _0225FFB4 - 2 ; case 3
_0225FFBC:
	add r0, sp, #0
	add r1, r5, #0
	bl sub_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4, #2]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _02260060 ; =0x000005BE
	bl sub_02005748
_0225FFE6:
	add r1, sp, #0
	ldrh r2, [r1, #0xa]
	mov r0, #1
	lsl r0, r0, #0xc
	sub r2, r2, r0
	strh r2, [r1, #0xa]
	ldr r1, [r4, #8]
	sub r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl sub_02020A24
	mov r0, #2
	ldrh r1, [r4, #2]
	lsl r0, r0, #0xc
	ldr r2, [r4, #8]
	sub r0, r1, r0
	cmp r2, r0
	bgt _0226005A
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0226005A
_02260016:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _0226005A
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0226005A
_0226002C:
	add r2, sp, #0
	ldrh r3, [r2, #0xa]
	mov r1, #2
	lsl r1, r1, #8
	add r3, r3, r1
	strh r3, [r2, #0xa]
	ldr r2, [r4, #8]
	add r1, r2, r1
	str r1, [r4, #8]
	add r1, r5, #0
	bl sub_02020A24
	ldrh r0, [r4, #2]
	ldr r1, [r4, #8]
	cmp r1, r0
	blt _0226005A
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020209D4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226005A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02260060: .word 0x000005BE
	thumb_func_end ov113_0225FF8C

	thumb_func_start ov113_02260064
ov113_02260064: ; 0x02260064
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r4, #0x28
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	add r5, r2, #0
	cmp r1, #3
	bhi _02260132
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226008C: ; jump table
	.short _02260094 - _0226008C - 2 ; case 0
	.short _022600BE - _0226008C - 2 ; case 1
	.short _022600EE - _0226008C - 2 ; case 2
	.short _02260104 - _0226008C - 2 ; case 3
_02260094:
	add r0, sp, #0
	add r1, r5, #0
	bl sub_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4, #2]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _02260138 ; =0x000005BE
	bl sub_02005748
_022600BE:
	add r1, sp, #0
	ldrh r2, [r1, #0xa]
	mov r0, #1
	lsl r0, r0, #0xc
	add r2, r2, r0
	strh r2, [r1, #0xa]
	ldr r1, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl sub_02020A24
	mov r0, #2
	ldrh r1, [r4, #2]
	lsl r0, r0, #0xc
	ldr r2, [r4, #8]
	add r0, r1, r0
	cmp r2, r0
	blt _02260132
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260132
_022600EE:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _02260132
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260132
_02260104:
	add r2, sp, #0
	ldrh r3, [r2, #0xa]
	mov r1, #2
	lsl r1, r1, #8
	sub r3, r3, r1
	strh r3, [r2, #0xa]
	ldr r2, [r4, #8]
	sub r1, r2, r1
	str r1, [r4, #8]
	add r1, r5, #0
	bl sub_02020A24
	ldrh r0, [r4, #2]
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _02260132
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020209D4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_02260132:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02260138: .word 0x000005BE
	thumb_func_end ov113_02260064

	thumb_func_start ov113_0226013C
ov113_0226013C: ; 0x0226013C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r4, #0x38
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	add r5, r2, #0
	cmp r1, #3
	bhi _02260208
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02260164: ; jump table
	.short _0226016C - _02260164 - 2 ; case 0
	.short _02260196 - _02260164 - 2 ; case 1
	.short _022601C4 - _02260164 - 2 ; case 2
	.short _022601DA - _02260164 - 2 ; case 3
_0226016C:
	add r0, sp, #0
	add r1, r5, #0
	bl sub_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4]
	str r0, [r4, #8]
	ldr r0, _02260210 ; =0x000005BE
	bl sub_02005748
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
_02260196:
	add r1, sp, #0
	ldrh r2, [r1, #8]
	ldr r0, _02260214 ; =0x00000AAA
	add r2, r2, r0
	strh r2, [r1, #8]
	ldr r1, [r4, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl sub_02020A24
	mov r0, #2
	ldrh r1, [r4]
	lsl r0, r0, #0xc
	ldr r2, [r4, #8]
	add r0, r1, r0
	cmp r2, r0
	blt _02260208
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260208
_022601C4:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _02260208
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260208
_022601DA:
	add r2, sp, #0
	ldrh r3, [r2, #8]
	mov r1, #2
	lsl r1, r1, #8
	sub r3, r3, r1
	strh r3, [r2, #8]
	ldr r2, [r4, #8]
	sub r1, r2, r1
	str r1, [r4, #8]
	add r1, r5, #0
	bl sub_02020A24
	ldrh r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _02260208
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020209D4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_02260208:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02260210: .word 0x000005BE
_02260214: .word 0x00000AAA
	thumb_func_end ov113_0226013C

	thumb_func_start ov113_02260218
ov113_02260218: ; 0x02260218
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #8
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	add r4, #0x48
	strh r0, [r1, #6]
	ldrb r0, [r4, #0xd]
	add r5, r2, #0
	cmp r0, #0
	beq _0226023A
	cmp r0, #1
	beq _02260260
	b _022602D2
_0226023A:
	add r0, sp, #0
	add r1, r5, #0
	bl sub_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldr r0, _022602E0 ; =0x000005BE
	bl sub_02005748
_02260260:
	mov r1, #6
	ldr r2, [r4, #8]
	lsl r1, r1, #0xe
	add r2, r2, r1
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #8
	str r2, [r4, #8]
	cmp r2, r1
	blt _02260292
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	blo _02260292
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	mov r0, #0
	str r0, [r4, #8]
_02260292:
	ldr r0, [r4, #8]
	bl sub_0201D2B8
	ldrh r2, [r4]
	add r1, sp, #0
	lsl r6, r0, #0xc
	strh r2, [r1, #8]
	ldrh r2, [r4, #2]
	add r3, sp, #8
	strh r2, [r1, #0xa]
	ldrh r2, [r4, #4]
	strh r2, [r1, #0xc]
	ldrh r2, [r4, #6]
	lsr r4, r0, #0x14
	strh r2, [r1, #0xe]
	asr r2, r0, #0x1f
	lsl r2, r2, #0xc
	mov r0, #2
	orr r2, r4
	mov r4, #0
	lsl r0, r0, #0xa
	add r6, r6, r0
	adc r2, r4
	lsl r0, r2, #0x14
	lsr r2, r6, #0xc
	orr r2, r0
	strh r2, [r1, #0xa]
	add r0, r3, #0
	add r1, r5, #0
	bl sub_020209B0
	b _022602D8
_022602D2:
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_022602D8:
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_022602E0: .word 0x000005BE
	thumb_func_end ov113_02260218

	thumb_func_start ov113_022602E4
ov113_022602E4: ; 0x022602E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r4, #0x58
	ldrb r0, [r4, #6]
	add r5, r2, #0
	cmp r0, #3
	bhi _02260384
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022602FE: ; jump table
	.short _02260306 - _022602FE - 2 ; case 0
	.short _0226031A - _022602FE - 2 ; case 1
	.short _0226033C - _022602FE - 2 ; case 2
	.short _02260356 - _022602FE - 2 ; case 3
_02260306:
	add r0, r5, #0
	bl sub_02020A90
	str r0, [r4, #0]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	ldr r0, _02260388 ; =0x000005BE
	bl sub_02005748
_0226031A:
	ldr r0, _0226038C ; =0x00001AAA
	add r1, r5, #0
	bl sub_02020A78
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	blt _02260384
	mov r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _02260384
_0226033C:
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #4
	ble _02260384
	mov r0, #0
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	b _02260384
_02260356:
	ldr r0, _02260390 ; =0xFFFF7AAB
	add r1, r5, #0
	bl sub_02020A78
	mov r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #4]
	ldrsh r0, [r4, r0]
	cmp r0, #6
	bge _02260378
	add r0, r5, #0
	bl sub_02020A90
	ldr r1, [r4, #0]
	cmp r0, r1
	bgt _02260384
_02260378:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02020A50
	mov r0, #1
	pop {r3, r4, r5, pc}
_02260384:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02260388: .word 0x000005BE
_0226038C: .word 0x00001AAA
_02260390: .word 0xFFFF7AAB
	thumb_func_end ov113_022602E4

	thumb_func_start ov113_02260394
ov113_02260394: ; 0x02260394
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r1, sp, #0x18
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	add r4, #0x60
	str r0, [r1, #8]
	ldrb r0, [r4, #0x1d]
	add r5, r2, #0
	cmp r0, #0
	beq _022603B4
	cmp r0, #1
	beq _022603EA
	b _0226045A
_022603B4:
	add r0, sp, #0xc
	add r1, r5, #0
	bl sub_02020ABC
	add r3, sp, #0xc
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r5, #0
	str r0, [r2, #0]
	add r0, sp, #0
	bl sub_02020AAC
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	ldr r0, _02260468 ; =0x000005BE
	bl sub_02005748
_022603EA:
	mov r1, #2
	ldr r2, [r4, #0x18]
	lsl r1, r1, #0x10
	add r2, r2, r1
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0x18
	str r2, [r4, #0x18]
	cmp r2, r1
	blt _0226041C
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1c]
	cmp r0, #4
	blo _0226041C
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	mov r0, #0
	str r0, [r4, #0x18]
_0226041C:
	ldr r0, [r4, #0x18]
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	lsr r2, r0, #0x10
	lsl r1, r1, #0x10
	lsl r3, r0, #0x10
	mov r0, #2
	orr r1, r2
	mov r2, #0
	lsl r0, r0, #0xa
	add r3, r3, r0
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	str r1, [sp, #0x18]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02020ACC
	add r4, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02020ADC
	add r0, sp, #0x18
	add r1, r5, #0
	bl sub_02020990
	b _02260460
_0226045A:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, pc}
_02260460:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02260468: .word 0x000005BE
	thumb_func_end ov113_02260394

	thumb_func_start ov113_0226046C
ov113_0226046C: ; 0x0226046C
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r1, sp, #0x18
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	add r4, #0x80
	str r0, [r1, #8]
	ldrb r0, [r4, #0x1d]
	add r5, r2, #0
	cmp r0, #0
	beq _0226048C
	cmp r0, #1
	beq _022604C2
	b _02260532
_0226048C:
	add r0, sp, #0xc
	add r1, r5, #0
	bl sub_02020ABC
	add r3, sp, #0xc
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r5, #0
	str r0, [r2, #0]
	add r0, sp, #0
	bl sub_02020AAC
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	ldr r0, _02260540 ; =0x000005BE
	bl sub_02005748
_022604C2:
	mov r1, #2
	ldr r2, [r4, #0x18]
	lsl r1, r1, #0x10
	add r2, r2, r1
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #0xe
	add r0, #0x18
	str r2, [r4, #0x18]
	cmp r2, r1
	blt _022604F4
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
	ldrb r0, [r4, #0x1c]
	add r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1c]
	cmp r0, #4
	blo _022604F4
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	mov r0, #0
	str r0, [r4, #0x18]
_022604F4:
	ldr r0, [r4, #0x18]
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	lsr r2, r0, #0x11
	lsl r1, r1, #0xf
	lsl r3, r0, #0xf
	mov r0, #2
	orr r1, r2
	mov r2, #0
	lsl r0, r0, #0xa
	add r3, r3, r0
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	str r1, [sp, #0x1c]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02020ACC
	add r4, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02020ADC
	add r0, sp, #0x18
	add r1, r5, #0
	bl sub_02020990
	b _02260538
_02260532:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, pc}
_02260538:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02260540: .word 0x000005BE
	thumb_func_end ov113_0226046C

	thumb_func_start ov113_02260544
ov113_02260544: ; 0x02260544
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r4, #0xa0
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	add r5, r2, #0
	cmp r1, #3
	bhi _02260610
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226056C: ; jump table
	.short _02260574 - _0226056C - 2 ; case 0
	.short _0226059E - _0226056C - 2 ; case 1
	.short _022605CC - _0226056C - 2 ; case 2
	.short _022605E2 - _0226056C - 2 ; case 3
_02260574:
	add r0, sp, #0
	add r1, r5, #0
	bl sub_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _02260618 ; =0x000005BE
	bl sub_02005748
_0226059E:
	add r1, sp, #0
	ldrh r2, [r1, #8]
	ldr r0, _0226061C ; =0x00000AAA
	sub r2, r2, r0
	strh r2, [r1, #8]
	ldr r1, [r4, #8]
	sub r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl sub_02020A24
	mov r0, #2
	ldrh r1, [r4]
	lsl r0, r0, #0xc
	ldr r2, [r4, #8]
	sub r0, r1, r0
	cmp r2, r0
	bgt _02260610
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260610
_022605CC:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _02260610
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _02260610
_022605E2:
	add r2, sp, #0
	ldrh r3, [r2, #8]
	mov r1, #2
	lsl r1, r1, #8
	add r3, r3, r1
	strh r3, [r2, #8]
	ldr r2, [r4, #8]
	add r1, r2, r1
	str r1, [r4, #8]
	add r1, r5, #0
	bl sub_02020A24
	ldrh r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, r0
	blt _02260610
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020209D4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_02260610:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02260618: .word 0x000005BE
_0226061C: .word 0x00000AAA
	thumb_func_end ov113_02260544

	.rodata


	.global Unk_ov113_02260BBC
Unk_ov113_02260BBC: ; 0x02260BBC
	.incbin "incbin/overlay113_rodata.bin", 0x310, 0x320 - 0x310

	.global Unk_ov113_02260BCC
Unk_ov113_02260BCC: ; 0x02260BCC
	.incbin "incbin/overlay113_rodata.bin", 0x320, 0x334 - 0x320

	.global Unk_ov113_02260BE0
Unk_ov113_02260BE0: ; 0x02260BE0
	.incbin "incbin/overlay113_rodata.bin", 0x334, 0x360 - 0x334

	.global Unk_ov113_02260C0C
Unk_ov113_02260C0C: ; 0x02260C0C
	.incbin "incbin/overlay113_rodata.bin", 0x360, 0x38C - 0x360

	.global Unk_ov113_02260C38
Unk_ov113_02260C38: ; 0x02260C38
	.incbin "incbin/overlay113_rodata.bin", 0x38C, 0x3BC - 0x38C

	.global Unk_ov113_02260C68
Unk_ov113_02260C68: ; 0x02260C68
	.incbin "incbin/overlay113_rodata.bin", 0x3BC, 0x400 - 0x3BC

	.global Unk_ov113_02260CAC
Unk_ov113_02260CAC: ; 0x02260CAC
	.incbin "incbin/overlay113_rodata.bin", 0x400, 0x484 - 0x400

	.global Unk_ov113_02260D30
Unk_ov113_02260D30: ; 0x02260D30
	.incbin "incbin/overlay113_rodata.bin", 0x484, 0x19

