	.include "macros/function.inc"
	.include "include/unk_0201E3D8.inc"

	

	.text


	thumb_func_start sub_0201E3D8
sub_0201E3D8: ; 0x0201E3D8
	push {r3, lr}
	ldr r0, _0201E3F0 ; =0x021C0744
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _0201E3E6
	bl GF_AssertFail
_0201E3E6:
	ldr r0, _0201E3F0 ; =0x021C0744
	mov r1, #0
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	pop {r3, pc}
	; .align 2, 0
_0201E3F0: .word 0x021C0744
	thumb_func_end sub_0201E3D8

	thumb_func_start sub_0201E3F4
sub_0201E3F4: ; 0x0201E3F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0201E44C ; =0x021C0744
	add r6, r1, #0
	ldrh r0, [r0, #0x1a]
	add r4, r2, #0
	cmp r0, #0
	beq _0201E40A
	bl GF_AssertFail
_0201E40A:
	cmp r4, #5
	bhs _0201E412
	cmp r4, #0
	bne _0201E418
_0201E412:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0201E418:
	ldr r0, _0201E44C ; =0x021C0744
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E426
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0201E426:
	add r0, r4, #0
	bl sub_0201E658
	cmp r0, #1
	bne _0201E446
	mov r0, #0
	str r0, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #1
	add r1, r0, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0201E4A4
	mov r0, #1
_0201E446:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0201E44C: .word 0x021C0744
	thumb_func_end sub_0201E3F4

	thumb_func_start sub_0201E450
sub_0201E450: ; 0x0201E450
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0201E4A0 ; =0x021C0744
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _0201E462
	bl GF_AssertFail
_0201E462:
	cmp r4, #5
	bhs _0201E46A
	cmp r4, #0
	bne _0201E470
_0201E46A:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0201E470:
	ldr r0, _0201E4A0 ; =0x021C0744
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E47E
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0201E47E:
	add r0, r4, #0
	bl sub_0201E658
	cmp r0, #1
	bne _0201E49C
	mov r2, #0
	str r2, [sp]
	lsl r0, r4, #1
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #1
	add r3, r2, #0
	bl sub_0201E4A4
	mov r0, #1
_0201E49C:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0201E4A0: .word 0x021C0744
	thumb_func_end sub_0201E450

	thumb_func_start sub_0201E4A4
sub_0201E4A4: ; 0x0201E4A4
	push {r4, lr}
	ldr r4, _0201E4C8 ; =0x021C0744
	strh r0, [r4, #0x18]
	ldr r0, _0201E4CC ; =0x021BF6DC
	strb r1, [r0, #4]
	ldr r0, _0201E4D0 ; =0x021C0704
	ldr r1, [sp, #0xc]
	str r2, [r0, #0]
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [sp, #8]
	str r1, [r0, #0x54]
	ldr r0, _0201E4D4 ; =0x021C0710
	mov r1, #9
	bl sub_0201E4D8
	pop {r4, pc}
	nop
_0201E4C8: .word 0x021C0744
_0201E4CC: .word 0x021BF6DC
_0201E4D0: .word 0x021C0704
_0201E4D4: .word 0x021C0710
	thumb_func_end sub_0201E4A4

	thumb_func_start sub_0201E4D8
sub_0201E4D8: ; 0x0201E4D8
	mov r3, #0
	cmp r1, #0
	ble _0201E4EA
	add r2, r3, #0
_0201E4E0:
	add r3, r3, #1
	strh r2, [r0, #4]
	add r0, #8
	cmp r3, r1
	blt _0201E4E0
_0201E4EA:
	bx lr
	thumb_func_end sub_0201E4D8

	thumb_func_start sub_0201E4EC
sub_0201E4EC: ; 0x0201E4EC
	push {r4, r5, r6, lr}
	ldr r0, _0201E52C ; =0x021C0744
	mov r5, #0
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _0201E4FC
	mov r0, #1
	pop {r4, r5, r6, pc}
_0201E4FC:
	mov r4, #4
	add r6, r4, #0
_0201E500:
	bl TP_RequestAutoSamplingStopAsync
	add r0, r4, #0
	bl TP_WaitBusy
	add r0, r6, #0
	bl TP_CheckError
	cmp r0, #0
	beq _0201E516
	add r5, r5, #1
_0201E516:
	cmp r0, #0
	beq _0201E51E
	cmp r5, #5
	bls _0201E500
_0201E51E:
	cmp r5, #5
	bls _0201E526
	mov r0, #2
	pop {r4, r5, r6, pc}
_0201E526:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0201E52C: .word 0x021C0744
	thumb_func_end sub_0201E4EC

	thumb_func_start sub_0201E530
sub_0201E530: ; 0x0201E530
	push {r4, lr}
	sub sp, #8
	ldr r0, _0201E560 ; =0x021C0744
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _0201E540
	bl GF_AssertFail
_0201E540:
	bl sub_0201E4EC
	add r4, r0, #0
	cmp r4, #1
	bne _0201E55A
	mov r0, #0
	str r0, [sp]
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	str r0, [sp, #4]
	bl sub_0201E4A4
_0201E55A:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0201E560: .word 0x021C0744
	thumb_func_end sub_0201E530

	thumb_func_start sub_0201E564
sub_0201E564: ; 0x0201E564
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0201E5B8 ; =0x021C0744
	add r6, r1, #0
	ldrh r0, [r0, #0x1a]
	add r7, r2, #0
	mov r5, #3
	cmp r0, #0
	beq _0201E57A
	bl GF_AssertFail
_0201E57A:
	ldr r0, _0201E5B8 ; =0x021C0744
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E5B4
	bl TP_GetLatestIndexInAuto
	add r5, r0, #0
	ldr r0, _0201E5BC ; =0x021C0710
	mov r1, #9
	bl sub_0201E5C0
	cmp r4, #0
	beq _0201E59C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0201E7FC
_0201E59C:
	ldr r0, _0201E5B8 ; =0x021C0744
	ldrh r0, [r0, #0x18]
	cmp r0, #1
	bne _0201E5B2
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0201E69C
	add r5, r0, #0
	b _0201E5B4
_0201E5B2:
	mov r5, #1
_0201E5B4:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201E5B8: .word 0x021C0744
_0201E5BC: .word 0x021C0710
	thumb_func_end sub_0201E564

	thumb_func_start sub_0201E5C0
sub_0201E5C0: ; 0x0201E5C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r7, #0
	str r1, [sp]
	add r0, r1, #0
	beq _0201E5F6
	add r4, r5, #0
	add r6, sp, #4
_0201E5D2:
	add r0, sp, #4
	add r1, r5, #0
	bl TP_GetCalibratedPoint
	ldrh r0, [r6]
	add r7, r7, #1
	add r5, #8
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	ldrh r0, [r6, #4]
	strh r0, [r4, #4]
	ldrh r0, [r6, #6]
	strh r0, [r4, #6]
	ldr r0, [sp]
	add r4, #8
	cmp r7, r0
	blo _0201E5D2
_0201E5F6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0201E5C0

	thumb_func_start sub_0201E5FC
sub_0201E5FC: ; 0x0201E5FC
	push {r3, lr}
	ldr r0, _0201E628 ; =0x021C0744
	ldrh r1, [r0, #0x1a]
	cmp r1, #0
	beq _0201E624
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E624
	ldr r0, _0201E62C ; =0x021C0704
	ldr r0, [r0, #8]
	lsr r0, r0, #1
	bl sub_0201E658
	cmp r0, #1
	beq _0201E61E
	bl GF_AssertFail
_0201E61E:
	ldr r0, _0201E628 ; =0x021C0744
	mov r1, #0
	strh r1, [r0, #0x1a]
_0201E624:
	pop {r3, pc}
	nop
_0201E628: .word 0x021C0744
_0201E62C: .word 0x021C0704
	thumb_func_end sub_0201E5FC

	thumb_func_start sub_0201E630
sub_0201E630: ; 0x0201E630
	push {r3, lr}
	ldr r0, _0201E654 ; =0x021C0744
	ldrh r1, [r0, #0x1a]
	cmp r1, #1
	beq _0201E652
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0201E652
	bl sub_0201E4EC
	cmp r0, #1
	beq _0201E64C
	bl GF_AssertFail
_0201E64C:
	ldr r0, _0201E654 ; =0x021C0744
	mov r1, #1
	strh r1, [r0, #0x1a]
_0201E652:
	pop {r3, pc}
	; .align 2, 0
_0201E654: .word 0x021C0744
	thumb_func_end sub_0201E630

	thumb_func_start sub_0201E658
sub_0201E658: ; 0x0201E658
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	lsl r0, r0, #0x10
	ldr r7, _0201E698 ; =0x021C0710
	add r6, r5, #0
	lsr r4, r0, #0x10
_0201E664:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #9
	bl TP_RequestAutoSamplingStartAsync
	mov r0, #2
	bl TP_WaitBusy
	mov r0, #2
	bl TP_CheckError
	cmp r0, #0
	beq _0201E682
	add r5, r5, #1
_0201E682:
	cmp r0, #0
	beq _0201E68A
	cmp r5, #5
	ble _0201E664
_0201E68A:
	cmp r5, #5
	ble _0201E692
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0201E692:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201E698: .word 0x021C0710
	thumb_func_end sub_0201E658

	thumb_func_start sub_0201E69C
sub_0201E69C: ; 0x0201E69C
	push {r3, lr}
	cmp r0, #5
	bhi _0201E6C6
	add r3, r0, r0
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0201E6AE: ; jump table
	.short _0201E6C6 - _0201E6AE - 2 ; case 0
	.short _0201E6BA - _0201E6AE - 2 ; case 1
	.short _0201E6C6 - _0201E6AE - 2 ; case 2
	.short _0201E6BA - _0201E6AE - 2 ; case 3
	.short _0201E6C0 - _0201E6AE - 2 ; case 4
	.short _0201E6C0 - _0201E6AE - 2 ; case 5
_0201E6BA:
	bl sub_0201E6CC
	pop {r3, pc}
_0201E6C0:
	bl sub_0201E784
	pop {r3, pc}
_0201E6C6:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201E69C

	thumb_func_start sub_0201E6CC
sub_0201E6CC: ; 0x0201E6CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _0201E77C ; =0x021C0704
	str r1, [sp, #4]
	ldr r1, [r5, #8]
	str r0, [sp]
	add r7, r2, #0
	mov r4, #0
	cmp r1, #0
	bls _0201E772
_0201E6E0:
	ldr r0, [sp, #4]
	sub r0, r0, r1
	add r0, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bpl _0201E6F4
	add r0, #9
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_0201E6F4:
	lsl r1, r0, #3
	ldr r0, _0201E780 ; =0x021C0704
	add r1, r0, r1
	ldrh r0, [r1, #0x10]
	cmp r0, #1
	bne _0201E76A
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _0201E76A
	ldr r2, [r5, #0x54]
	ldr r0, [r5, #0]
	lsl r2, r2, #3
	add r2, r0, r2
	add r0, r2, #0
	sub r0, #8
	ldrh r3, [r1, #0xc]
	ldrh r0, [r0]
	cmp r0, r3
	blt _0201E71E
	sub r3, r0, r3
	b _0201E720
_0201E71E:
	sub r3, r3, r0
_0201E720:
	sub r6, r2, #6
	ldrh r0, [r1, #0xe]
	ldrh r6, [r6]
	cmp r6, r0
	blt _0201E72E
	sub r0, r6, r0
	b _0201E730
_0201E72E:
	sub r0, r0, r6
_0201E730:
	cmp r3, r7
	bhs _0201E738
	cmp r0, r7
	blo _0201E76A
_0201E738:
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	strh r0, [r2, #2]
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #4]
	ldrh r0, [r1, #0x12]
	strh r0, [r2, #6]
	ldr r0, [r5, #0x54]
	add r0, r0, #1
	str r0, [r5, #0x54]
	ldr r1, [r5, #4]
	cmp r0, r1
	blo _0201E76A
	ldr r2, [sp]
	cmp r2, #1
	bne _0201E762
	bl _u32_div_f
	str r1, [r5, #0x54]
	b _0201E76A
_0201E762:
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0201E76A:
	ldr r1, [r5, #8]
	add r4, r4, #1
	cmp r4, r1
	blo _0201E6E0
_0201E772:
	ldr r0, _0201E77C ; =0x021C0704
	ldr r0, [r0, #0x54]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201E77C: .word 0x021C0704
_0201E780: .word 0x021C0704
	thumb_func_end sub_0201E6CC

	thumb_func_start sub_0201E784
sub_0201E784: ; 0x0201E784
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _0201E7F4 ; =0x021C0704
	str r1, [sp]
	ldr r1, [r5, #8]
	add r7, r0, #0
	mov r4, #0
	cmp r1, #0
	bls _0201E7EC
_0201E794:
	ldr r0, [sp]
	sub r0, r0, r1
	add r0, r4, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	bpl _0201E7A8
	add r1, #9
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
_0201E7A8:
	ldr r0, [r5, #0x54]
	lsl r1, r1, #3
	lsl r3, r0, #3
	ldr r0, _0201E7F8 ; =0x021C0704
	ldr r6, [r5, #0]
	add r2, r0, r1
	ldrh r0, [r2, #0xc]
	add r1, r6, r3
	strh r0, [r6, r3]
	ldrh r0, [r2, #0xe]
	strh r0, [r1, #2]
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #4]
	ldrh r0, [r2, #0x12]
	strh r0, [r1, #6]
	ldr r0, [r5, #0x54]
	add r0, r0, #1
	str r0, [r5, #0x54]
	ldr r1, [r5, #4]
	cmp r0, r1
	blo _0201E7E4
	cmp r7, #4
	bne _0201E7DE
	bl _u32_div_f
	str r1, [r5, #0x54]
	b _0201E7E4
_0201E7DE:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0201E7E4:
	ldr r1, [r5, #8]
	add r4, r4, #1
	cmp r4, r1
	blo _0201E794
_0201E7EC:
	ldr r0, _0201E7F4 ; =0x021C0704
	ldr r0, [r0, #0x54]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201E7F4: .word 0x021C0704
_0201E7F8: .word 0x021C0704
	thumb_func_end sub_0201E784

	thumb_func_start sub_0201E7FC
sub_0201E7FC: ; 0x0201E7FC
	push {r4, r5, r6, r7}
	mov r2, #0
	strh r2, [r0]
	add r3, r0, #0
	add r6, r2, #0
_0201E806:
	strh r6, [r3, #8]
	strh r6, [r3, #6]
	strh r6, [r3, #2]
	strh r6, [r3, #4]
	add r2, r2, #1
	add r3, #8
	cmp r2, #8
	blt _0201E806
	ldr r2, _0201E864 ; =0x021C0704
	ldr r3, [r2, #8]
	cmp r3, #0
	bls _0201E860
	ldr r4, _0201E868 ; =0x021C0704
_0201E820:
	sub r3, r1, r3
	add r3, r6, r3
	add r3, r3, #1
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bpl _0201E832
	add r3, #9
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
_0201E832:
	lsl r3, r3, #3
	add r5, r4, r3
	ldrh r3, [r5, #0x12]
	cmp r3, #0
	bne _0201E858
	ldrh r3, [r0]
	ldrh r7, [r5, #0xc]
	lsl r3, r3, #3
	add r3, r0, r3
	strh r7, [r3, #2]
	ldrh r7, [r5, #0xe]
	strh r7, [r3, #4]
	ldrh r7, [r5, #0x10]
	strh r7, [r3, #6]
	ldrh r5, [r5, #0x12]
	strh r5, [r3, #8]
	ldrh r3, [r0]
	add r3, r3, #1
	strh r3, [r0]
_0201E858:
	ldr r3, [r2, #8]
	add r6, r6, #1
	cmp r6, r3
	blo _0201E820
_0201E860:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0201E864: .word 0x021C0704
_0201E868: .word 0x021C0704
	thumb_func_end sub_0201E7FC

	.bss


	.global Unk_021C0704
Unk_021C0704: ; 0x021C0704
	.space 0x5C

