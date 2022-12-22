	.include "macros/function.inc"
	.include "include/ov66_02231428.inc"

	

	.text


	thumb_func_start ov66_02231428
ov66_02231428: ; 0x02231428
	push {r3, r4, lr}
	sub sp, #0x1c
	add r3, r1, #0
	ldmia r3!, {r2, r3}
	add r4, r0, #0
	add r0, sp, #0xc
	add r1, sp, #0
	bl RTC_ConvertSecondToDateTime
	ldr r0, [sp]
	strb r0, [r4]
	ldr r0, [sp, #4]
	strb r0, [r4, #1]
	ldr r0, [sp, #8]
	strb r0, [r4, #2]
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231428

	thumb_func_start ov66_0223144C
ov66_0223144C: ; 0x0223144C
	push {r4, lr}
	sub sp, #8
	ldr r0, [r0, #0]
	add r4, r2, #0
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	str r0, [sp]
	add r0, sp, #0
	ldrb r2, [r0, #6]
	ldrb r1, [r0, #2]
	add r1, r2, r1
	strb r1, [r0, #6]
	ldrb r0, [r0, #6]
	mov r1, #0x3c
	bl _s32_div_f
	add r1, sp, #0
	ldrb r2, [r1, #5]
	add r0, r2, r0
	strb r0, [r1, #5]
	ldrb r0, [r1, #6]
	mov r1, #0x3c
	bl _s32_div_f
	strb r1, [r4, #2]
	add r0, sp, #0
	ldrb r2, [r0, #5]
	ldrb r1, [r0, #1]
	add r1, r2, r1
	strb r1, [r0, #5]
	ldrb r0, [r0, #5]
	mov r1, #0x3c
	bl _s32_div_f
	add r1, sp, #0
	ldrb r2, [r1, #4]
	add r0, r2, r0
	strb r0, [r1, #4]
	ldrb r0, [r1, #5]
	mov r1, #0x3c
	bl _s32_div_f
	strb r1, [r4, #1]
	add r0, sp, #0
	ldrb r2, [r0, #4]
	ldrb r1, [r0]
	add r1, r2, r1
	strb r1, [r0, #4]
	ldrb r0, [r0, #4]
	mov r1, #0x18
	bl _s32_div_f
	strb r1, [r4]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_0223144C

	thumb_func_start ov66_022314BC
ov66_022314BC: ; 0x022314BC
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #0]
	add r4, r2, #0
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	add r1, sp, #0
	str r0, [sp]
	ldrb r5, [r1, #2]
	mov r0, #6
	ldrsb r1, [r1, r0]
	lsl r0, r5, #0x18
	asr r0, r0, #0x18
	sub r0, r1, r0
	bpl _022314F6
	neg r0, r0
	mov r1, #0x3c
	bl _s32_div_f
	add r2, sp, #0
	ldrb r3, [r2, #6]
	add r0, r0, #1
	mov r1, #0x3c
	mul r1, r0
	add r1, r3, r1
	strb r1, [r2, #6]
	ldrb r1, [r2, #5]
	sub r0, r1, r0
	strb r0, [r2, #5]
_022314F6:
	add r1, sp, #0
	ldrb r0, [r1, #6]
	sub r0, r0, r5
	strb r0, [r4, #2]
	ldrb r5, [r1, #1]
	mov r0, #5
	ldrsb r1, [r1, r0]
	lsl r0, r5, #0x18
	asr r0, r0, #0x18
	sub r0, r1, r0
	bpl _02231528
	neg r0, r0
	mov r1, #0x3c
	bl _s32_div_f
	add r2, sp, #0
	ldrb r3, [r2, #5]
	add r0, r0, #1
	mov r1, #0x3c
	mul r1, r0
	add r1, r3, r1
	strb r1, [r2, #5]
	ldrb r1, [r2, #4]
	sub r0, r1, r0
	strb r0, [r2, #4]
_02231528:
	add r1, sp, #0
	ldrb r0, [r1, #5]
	sub r0, r0, r5
	strb r0, [r4, #1]
	mov r0, #4
	ldrsb r2, [r1, r0]
	mov r0, #0
	ldrsb r0, [r1, r0]
	sub r0, r2, r0
	bpl _02231552
	neg r0, r0
	mov r1, #0x18
	bl _s32_div_f
	add r1, sp, #0
	add r2, r0, #1
	mov r0, #0x18
	ldrb r3, [r1, #4]
	mul r0, r2
	add r0, r3, r0
	strb r0, [r1, #4]
_02231552:
	add r0, sp, #0
	ldrb r1, [r0, #4]
	ldrb r0, [r0]
	sub r0, r1, r0
	strb r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_022314BC

	thumb_func_start ov66_02231560
ov66_02231560: ; 0x02231560
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #0
	beq _022315D6
	add r0, r5, #0
	bl sub_020996F4
	cmp r4, r0
	bhi _022315D6
	mov r1, #0
	ldr r2, [sp]
	add r0, r1, #0
	mov r7, #1
_02231580:
	ldrb r3, [r2, #3]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	bne _0223158C
	add r1, r7, #0
	b _0223159E
_0223158C:
	ldrh r3, [r2]
	cmp r5, r3
	bne _0223159E
	ldrb r3, [r2, #2]
	cmp r4, r3
	bne _0223159E
	cmp r6, #1
	beq _022315D6
	mov r1, #1
_0223159E:
	cmp r1, #0
	beq _022315CE
	lsl r2, r0, #2
	ldr r0, [sp]
	ldr r1, [sp]
	add r0, r0, r2
	strh r5, [r1, r2]
	strb r4, [r0, #2]
	ldrb r3, [r0, #3]
	mov r1, #0xf
	bic r3, r1
	lsl r1, r6, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r0, #3]
	ldrb r2, [r0, #3]
	mov r1, #0xf0
	bic r2, r1
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0, #3]
	pop {r3, r4, r5, r6, r7, pc}
_022315CE:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #0x32
	blt _02231580
_022315D6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02231560

	thumb_func_start ov66_022315D8
ov66_022315D8: ; 0x022315D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x32
	blo _022315E6
	bl sub_02022974
_022315E6:
	lsl r0, r5, #2
	add r4, r4, r0
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _022315F8
	bl sub_02022974
_022315F8:
	ldrh r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_022315D8

	thumb_func_start ov66_022315FC
ov66_022315FC: ; 0x022315FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x32
	blo _0223160A
	bl sub_02022974
_0223160A:
	lsl r4, r4, #2
	add r0, r5, r4
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _0223161C
	bl sub_02022974
_0223161C:
	add r0, r5, r4
	ldrb r0, [r0, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_022315FC

	thumb_func_start ov66_02231624
ov66_02231624: ; 0x02231624
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x32
	blo _02231632
	bl sub_02022974
_02231632:
	lsl r0, r5, #2
	add r4, r4, r0
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _02231644
	bl sub_02022974
_02231644:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02231624

	thumb_func_start ov66_0223164C
ov66_0223164C: ; 0x0223164C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x32
	blo _0223165A
	bl sub_02022974
_0223165A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223164C

	thumb_func_start ov66_02231668
ov66_02231668: ; 0x02231668
	push {r4, lr}
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _02231692
	add r2, r0, #0
	add r2, #8
	beq _02231686
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02231686
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02231688
_02231686:
	mov r1, #0
_02231688:
	cmp r1, #0
	beq _02231692
	ldr r1, [r1, #0]
	add r4, r0, r1
	b _02231694
_02231692:
	mov r4, #0
_02231694:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231668

	thumb_func_start ov66_022316C4
ov66_022316C4: ; 0x022316C4
	push {r4, lr}
	add r4, r1, #0
	bl sub_020996F4
	cmp r0, #0
	bne _022316D8
	cmp r4, #0
	bne _022316D8
	mov r0, #1
	pop {r4, pc}
_022316D8:
	cmp r4, #1
	blo _022316E4
	cmp r4, r0
	bhi _022316E4
	mov r0, #1
	pop {r4, pc}
_022316E4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov66_022316C4

	thumb_func_start ov66_022316E8
ov66_022316E8: ; 0x022316E8
	ldr r1, _022316F0 ; =0x02258AA4
	ldrb r0, [r1, r0]
	bx lr
	nop
_022316F0: .word 0x02258AA4
	thumb_func_end ov66_022316E8

	thumb_func_start ov66_022316F4
ov66_022316F4: ; 0x022316F4
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D1F3C
	cmp r0, #0xb
	beq _02231704
	cmp r4, #0x19
	bne _02231708
_02231704:
	mov r0, #0xe
	pop {r4, pc}
_02231708:
	cmp r4, #0x1a
	bne _02231710
	mov r0, #0xd
	pop {r4, pc}
_02231710:
	cmp r0, #0
	bge _02231716
	mov r0, #0xb
_02231716:
	pop {r4, pc}
	thumb_func_end ov66_022316F4

	thumb_func_start ov66_02231718
ov66_02231718: ; 0x02231718
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D1F3C
	cmp r4, #0x19
	bne _02231728
	mov r0, #0xb
	b _0223172E
_02231728:
	cmp r4, #0x1a
	bne _0223172E
	mov r0, #0xc
_0223172E:
	cmp r0, #0xb
	bhi _0223175A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223173E: ; jump table
	.short _0223175A - _0223173E - 2 ; case 0
	.short _02231756 - _0223173E - 2 ; case 1
	.short _0223175A - _0223173E - 2 ; case 2
	.short _0223175A - _0223173E - 2 ; case 3
	.short _02231756 - _0223173E - 2 ; case 4
	.short _02231756 - _0223173E - 2 ; case 5
	.short _02231756 - _0223173E - 2 ; case 6
	.short _02231756 - _0223173E - 2 ; case 7
	.short _02231756 - _0223173E - 2 ; case 8
	.short _02231756 - _0223173E - 2 ; case 9
	.short _02231756 - _0223173E - 2 ; case 10
	.short _02231756 - _0223173E - 2 ; case 11
_02231756:
	mov r0, #0
	pop {r4, pc}
_0223175A:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov66_02231718

	thumb_func_start ov66_02231760
ov66_02231760: ; 0x02231760
	push {r3, lr}
	bl sub_020383E8
	cmp r0, #0
	bne _02231772
	bl sub_0203881C
	cmp r0, #0
	beq _02231776
_02231772:
	mov r0, #1
	pop {r3, pc}
_02231776:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_02231760

	.rodata


	.global Unk_ov66_02258AA4
Unk_ov66_02258AA4: ; 0x02258AA4
	.incbin "incbin/overlay66_rodata.bin", 0x18C, 0x12

