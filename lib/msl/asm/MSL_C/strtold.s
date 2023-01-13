	.include "macros/function.inc"
	.include "include/strtold.inc"

	.extern errno
	.extern Unk_021015AC
	.extern Unk_021015B4


	.text


	arm_func_start __strtold
__strtold: ; 0x020D911C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xa8
	ldr r4, [sp, #0xd0]
	mov sl, #0
	str r4, [sp, #0xd0]
	str r0, [sp]
	add r6, sp, #0x80
	mov sb, r1
	mov r8, r2
	str r3, [sp, #4]
	mov r4, sl
	str sl, [sp, #0x2c]
	mov r5, #1
	mov r0, #4
_020D9154:
	strh sl, [r6]
	strh sl, [r6, #2]
	strh sl, [r6, #4]
	strh sl, [r6, #6]
	add r6, r6, #8
	subs r0, r0, #1
	bne _020D9154
	mov r0, #0
	str r0, [sp, #0x28]
	strh sl, [r6]
	strh sl, [r6, #2]
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0xd0]
	strh sl, [r6, #4]
	str r2, [r1, #0]
	mov r1, r2
	mov r0, r8
	str r1, [sp, #0x24]
	str r1, [sp, #0x20]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x18]
	str r1, [sp, #0x10]
	str r1, [sp, #0xc]
	str r1, [sp, #8]
	add r4, r4, #1
	blx sb
	mov r1, r0
	ldr r7, _020DA0FC ; =0x020FE991
	add r0, sp, #0x4d
	mov r6, #4
_020D91CC:
	ldrb r3, [r7]
	ldrb r2, [r7, #1]
	add r7, r7, #2
	strb r3, [r0]
	strb r2, [r0, #1]
	add r0, r0, #2
	subs r6, r6, #1
	bne _020D91CC
	ldrb r3, [r7]
	ldr r2, _020DA100 ; =0x020FE98C
	strb r3, [r0]
	ldrb r3, [r2, #1]
	ldrb r0, [r2, #2]
	ldrb r6, [r2]
	strb r3, [sp, #0x31]
	strb r0, [sp, #0x32]
	ldrb r3, [r2, #3]
	ldrb r0, [r2, #4]
	strb r6, [sp, #0x30]
	strb r3, [sp, #0x33]
	strb r0, [sp, #0x34]
	b _020D9F10
_020D9224:
	cmp r5, #0x100
	bgt _020D929C
	bge _020D99A4
	cmp r5, #0x20
	bgt _020D9280
	bge _020D9878
	cmp r5, #8
	bgt _020D9274
	cmp r5, #0
	addge pc, pc, r5, lsl #2
	b _020D9F10
_020D9250: ; jump table
	b _020D9F10 ; case 0
	b _020D92E0 ; case 1
	b _020D96C4 ; case 2
	b _020D9F10 ; case 3
	b _020D9774 ; case 4
	b _020D9F10 ; case 5
	b _020D9F10 ; case 6
	b _020D9F10 ; case 7
	b _020D979C ; case 8
_020D9274:
	cmp r5, #0x10
	beq _020D9840
	b _020D9F10
_020D9280:
	cmp r5, #0x40
	bgt _020D9290
	beq _020D9904
	b _020D9F10
_020D9290:
	cmp r5, #0x80
	beq _020D9950
	b _020D9F10
_020D929C:
	cmp r5, #0x2000
	bgt _020D92C4
	bge _020D94F8
	cmp r5, #0x200
	bgt _020D92B8
	beq _020D9A04
	b _020D9F10
_020D92B8:
	cmp r5, #0x400
	beq _020D9A2C
	b _020D9F10
_020D92C4:
	cmp r5, #0x4000
	bgt _020D92D4
	beq _020D9400
	b _020D9F10
_020D92D4:
	cmp r5, #0x8000
	beq _020D9AA4
	b _020D9F10
_020D92E0:
	cmp r1, #0
	blt _020D92F0
	cmp r1, #0x80
	blt _020D92F8
_020D92F0:
	mov r0, #0
	b _020D9308
_020D92F8:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #0x100
_020D9308:
	cmp r0, #0
	beq _020D9334
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r1, r0
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	b _020D9F10
_020D9334:
	cmp r1, #0
	blt _020D9344
	cmp r1, #0x80
	blt _020D934C
_020D9344:
	mov r0, r1
	b _020D9354
_020D934C:
	ldr r0, _020DA108 ; =0x020FE7E4
	ldrb r0, [r0, r1]
_020D9354:
	cmp r0, #0x49
	bgt _020D9380
	bge _020D93B8
	cmp r0, #0x2d
	bgt _020D93F8
	cmp r0, #0x2b
	blt _020D93F8
	beq _020D9394
	cmp r0, #0x2d
	beq _020D938C
	b _020D93F8
_020D9380:
	cmp r0, #0x4e
	beq _020D93D8
	b _020D93F8
_020D938C:
	mov r0, #1
	str r0, [sp, #0x28]
_020D9394:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	mov r0, #1
	str r0, [sp, #0x18]
	b _020D9F10
_020D93B8:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	mov r5, #0x4000
	b _020D9F10
_020D93D8:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	mov r5, #0x2000
	b _020D9F10
_020D93F8:
	mov r5, #2
	b _020D9F10
_020D9400:
	mov r5, #1
	add r7, sp, #0x4d
	add r0, sp, #0x76
	mov r6, #4
_020D9410:
	ldrb r3, [r7]
	ldrb r2, [r7, #1]
	add r7, r7, #2
	strb r3, [r0]
	strb r2, [r0, #1]
	add r0, r0, #2
	subs r6, r6, #1
	bne _020D9410
	ldrb r2, [r7]
	add r6, sp, #0x77
	ldr r7, _020DA108 ; =0x020FE7E4
	strb r2, [r0]
	b _020D9464
_020D9444:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r6, r6, #1
	add r5, r5, #1
	add r4, r4, #1
	blx sb
	mov r1, r0
_020D9464:
	cmp r5, #8
	bge _020D9494
	cmp r1, #0
	blt _020D947C
	cmp r1, #0x80
	blt _020D9484
_020D947C:
	mov r2, r1
	b _020D9488
_020D9484:
	ldrb r2, [r7, r1]
_020D9488:
	ldrsb r0, [r6]
	cmp r0, r2
	beq _020D9444
_020D9494:
	cmp r5, #3
	cmpne r5, #8
	bne _020D94F0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _020D94C4
	ldr r1, _020DA10C ; =0x021015AC
	mov r0, #0
	ldr r1, [r1, #0]
	bl _f_sub
	bl _f_ftod
	b _020D94D0
_020D94C4:
	ldr r0, _020DA10C ; =0x021015AC
	ldr r0, [r0, #0]
	bl _f_ftod
_020D94D0:
	ldr r2, [sp, #0x2c]
	add r3, r2, r5
	ldr r2, [sp, #0x18]
	add r3, r2, r3
	ldr r2, [sp, #4]
	add sp, sp, #0xa8
	str r3, [r2, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D94F0:
	mov r5, #0x1000
	b _020D9F10
_020D94F8:
	ldrb r3, [sp, #0x30]
	ldrb r0, [sp, #0x32]
	ldrb r2, [sp, #0x31]
	strb r3, [sp, #0x40]
	strb r0, [sp, #0x42]
	ldrb r3, [sp, #0x33]
	ldrb r0, [sp, #0x34]
	strb r2, [sp, #0x41]
	mov r5, #1
	strb r0, [sp, #0x44]
	mov r6, #0
	add r2, sp, #0x56
	strb r3, [sp, #0x43]
	mov r0, #8
_020D9530:
	strb r6, [r2]
	strb r6, [r2, #1]
	strb r6, [r2, #2]
	strb r6, [r2, #3]
	add r2, r2, #4
	subs r0, r0, #1
	bne _020D9530
	add r7, sp, #0x41
	b _020D9574
_020D9554:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r7, r7, #1
	add r5, r5, #1
	add r4, r4, #1
	blx sb
	mov r1, r0
_020D9574:
	cmp r5, #4
	bge _020D95A8
	cmp r1, #0
	blt _020D958C
	cmp r1, #0x80
	blt _020D9594
_020D958C:
	mov r2, r1
	b _020D959C
_020D9594:
	ldr r0, _020DA108 ; =0x020FE7E4
	ldrb r2, [r0, r1]
_020D959C:
	ldrsb r0, [r7]
	cmp r0, r2
	beq _020D9554
_020D95A8:
	sub r0, r5, #3
	cmp r0, #1
	bhi _020D96BC
	cmp r5, #4
	bne _020D9660
	ldr r7, _020DA104 ; =0x020FE864
	b _020D95E8
_020D95C4:
	add r0, sp, #0x56
	strb r1, [r0, r6]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r6, r6, #1
	add r4, r4, #1
	blx sb
	mov r1, r0
_020D95E8:
	cmp r6, #0x20
	bge _020D9650
	cmp r1, #0
	blt _020D9600
	cmp r1, #0x80
	blt _020D9608
_020D9600:
	mov r0, #0
	b _020D9614
_020D9608:
	mov r0, r1, lsl #1
	ldrh r0, [r7, r0]
	and r0, r0, #8
_020D9614:
	cmp r0, #0
	bne _020D95C4
	cmp r1, #0
	blt _020D962C
	cmp r1, #0x80
	blt _020D9634
_020D962C:
	mov r0, #0
	b _020D9640
_020D9634:
	mov r0, r1, lsl #1
	ldrh r0, [r7, r0]
	and r0, r0, #1
_020D9640:
	cmp r0, #0
	bne _020D95C4
	cmp r1, #0x2e
	beq _020D95C4
_020D9650:
	cmp r1, #0x29
	movne r5, #0x1000
	bne _020D9F10
	add r6, r6, #1
_020D9660:
	add r0, sp, #0x56
	mov r1, #0
	strb r1, [r0, r6]
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _020D9694
	bl nan
	mov r2, r0
	mov r0, #0
	mov r3, r1
	mov r1, r0
	bl _dsub
	b _020D9698
_020D9694:
	bl nan
_020D9698:
	ldr r2, [sp, #0x2c]
	add r2, r2, r5
	add r3, r6, r2
	ldr r2, [sp, #0x18]
	add r3, r2, r3
	ldr r2, [sp, #4]
	add sp, sp, #0xa8
	str r3, [r2, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D96BC:
	mov r5, #0x1000
	b _020D9F10
_020D96C4:
	cmp r1, #0x2e
	bne _020D96EC
	mov r5, #0x10
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D96EC:
	cmp r1, #0
	blt _020D96FC
	cmp r1, #0x80
	blt _020D9704
_020D96FC:
	mov r0, #0
	b _020D9714
_020D9704:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9714:
	cmp r0, #0
	moveq r5, #0x1000
	beq _020D9F10
	cmp r1, #0x30
	bne _020D976C
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	cmp r0, #0
	mov r1, r0
	blt _020D9758
	cmp r0, #0x80
	bge _020D9758
	ldr r2, _020DA108 ; =0x020FE7E4
	ldrb r0, [r2, r0]
_020D9758:
	cmp r0, #0x58
	moveq r5, #0x8000
	moveq sl, #1
	movne r5, #4
	b _020D9F10
_020D976C:
	mov r5, #8
	b _020D9F10
_020D9774:
	cmp r1, #0x30
	movne r5, #8
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D979C:
	cmp r1, #0
	blt _020D97AC
	cmp r1, #0x80
	blt _020D97B4
_020D97AC:
	mov r0, #0
	b _020D97C4
_020D97B4:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D97C4:
	cmp r0, #0
	bne _020D97F8
	cmp r1, #0x2e
	movne r5, #0x40
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov r5, #0x20
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D97F8:
	ldrb r2, [sp, #0x84]
	cmp r2, #0x14
	ldrhs r0, [sp, #0x1c]
	addhs r0, r0, #1
	strhs r0, [sp, #0x1c]
	bhs _020D9824
	add r0, r2, #1
	strb r0, [sp, #0x84]
	add r0, sp, #0x80
	add r0, r0, r2
	strb r1, [r0, #5]
_020D9824:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9840:
	cmp r1, #0
	blt _020D9850
	cmp r1, #0x80
	blt _020D9858
_020D9850:
	mov r0, #0
	b _020D9868
_020D9858:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9868:
	cmp r0, #0
	moveq r5, #0x1000
	movne r5, #0x20
	b _020D9F10
_020D9878:
	cmp r1, #0
	blt _020D9888
	cmp r1, #0x80
	blt _020D9890
_020D9888:
	mov r0, #0
	b _020D98A0
_020D9890:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D98A0:
	cmp r0, #0
	moveq r5, #0x40
	beq _020D9F10
	ldrb r3, [sp, #0x84]
	cmp r3, #0x14
	bhs _020D98E8
	cmp r1, #0x30
	cmpeq r3, #0
	beq _020D98DC
	ldrb r2, [sp, #0x84]
	add r0, sp, #0x80
	add r0, r0, r3
	add r2, r2, #1
	strb r2, [sp, #0x84]
	strb r1, [r0, #5]
_020D98DC:
	ldr r0, [sp, #0x1c]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
_020D98E8:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9904:
	cmp r1, #0
	blt _020D9914
	cmp r1, #0x80
	blt _020D991C
_020D9914:
	mov r0, r1
	b _020D9924
_020D991C:
	ldr r0, _020DA108 ; =0x020FE7E4
	ldrb r0, [r0, r1]
_020D9924:
	cmp r0, #0x45
	movne r5, #0x800
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov r5, #0x80
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9950:
	cmp r1, #0x2b
	bne _020D9974
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D999C
_020D9974:
	cmp r1, #0x2d
	bne _020D999C
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	mov r0, #1
	str r0, [sp, #0x24]
_020D999C:
	mov r5, #0x100
	b _020D9F10
_020D99A4:
	cmp r1, #0
	blt _020D99B4
	cmp r1, #0x80
	blt _020D99BC
_020D99B4:
	mov r0, #0
	b _020D99CC
_020D99BC:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D99CC:
	cmp r0, #0
	moveq r5, #0x1000
	beq _020D9F10
	cmp r1, #0x30
	movne r5, #0x400
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov r5, #0x200
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9A04:
	cmp r1, #0x30
	movne r5, #0x400
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9A2C:
	cmp r1, #0
	blt _020D9A3C
	cmp r1, #0x80
	blt _020D9A44
_020D9A3C:
	mov r0, #0
	b _020D9A54
_020D9A44:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9A54:
	cmp r0, #0
	moveq r5, #0x800
	beq _020D9F10
	ldr r0, [sp, #0x20]
	sub r2, r1, #0x30
	mov r1, #0xa
	mla r0, r1, r0, r2
	ldr r1, _020DA110 ; =0x00007FFF
	str r0, [sp, #0x20]
	cmp r0, r1
	ldrgt r0, [sp, #0xd0]
	movgt r1, #1
	strgt r1, [r0]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9AA4:
	cmp sl, #0x20
	bgt _020D9AF4
	bge _020D9DC8
	cmp sl, #8
	bgt _020D9AE8
	cmp sl, #0
	addge pc, pc, sl, lsl #2
	b _020D9F10
_020D9AC4: ; jump table
	b _020D9F10 ; case 0
	b _020D9B18 ; case 1
	b _020D9B68 ; case 2
	b _020D9F10 ; case 3
	b _020D9B90 ; case 4
	b _020D9F10 ; case 5
	b _020D9F10 ; case 6
	b _020D9F10 ; case 7
	b _020D9CA0 ; case 8
_020D9AE8:
	cmp sl, #0x10
	beq _020D9D7C
	b _020D9F10
_020D9AF4:
	cmp sl, #0x80
	bgt _020D9B0C
	bge _020D9E70
	cmp sl, #0x40
	beq _020D9E10
	b _020D9F10
_020D9B0C:
	cmp sl, #0x100
	beq _020D9E98
	b _020D9F10
_020D9B18:
	mov r1, #0
	add r0, sp, #0x45
	str r0, [sp, #0x14]
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	mov r0, r8
	mov r2, r1
	str r1, [sp, #8]
	mov fp, r1
	mov sl, #2
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9B68:
	cmp r1, #0x30
	movne sl, #4
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9B90:
	cmp r1, #0
	blt _020D9BA0
	cmp r1, #0x80
	blt _020D9BA8
_020D9BA0:
	mov r0, #0
	b _020D9BB8
_020D9BA8:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #0x400
_020D9BB8:
	cmp r0, #0
	bne _020D9BEC
	cmp r1, #0x2e
	movne sl, #0x10
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov sl, #8
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9BEC:
	ldr r2, [sp, #8]
	mov r0, #0xe
	cmp r2, r0
	bhs _020D9C84
	mov r0, r2
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r2, fp, fp, lsr #31
	cmp r1, #0
	ldrb r0, [r0, r2, asr #1]
	blt _020D9C2C
	cmp r1, #0x80
	bge _020D9C2C
	ldr r2, _020DA108 ; =0x020FE7E4
	ldrb r1, [r2, r1]
_020D9C2C:
	cmp r1, #0x41
	subge r1, r1, #0x37
	sublt r1, r1, #0x30
	mov r2, fp, lsr #0x1f
	and r3, r1, #0xff
	rsb r1, r2, fp, lsl #31
	adds r1, r2, r1, ror #31
	moveq r1, r3, lsl #4
	add r2, fp, fp, lsr #31
	orrne r0, r0, r3
	andeq r1, r1, #0xff
	orreq r0, r0, r1
	ldr r1, [sp, #0x14]
	add fp, fp, #1
	strb r0, [r1, r2, asr #1]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9C84:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9CA0:
	cmp r1, #0
	blt _020D9CB0
	cmp r1, #0x80
	blt _020D9CB8
_020D9CB0:
	mov r0, #0
	b _020D9CC8
_020D9CB8:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #0x400
_020D9CC8:
	cmp r0, #0
	moveq sl, #0x10
	beq _020D9F10
	ldr r2, [sp, #8]
	mov r0, #0xe
	cmp r2, r0
	bhs _020D9D60
	ldr r0, [sp, #0x14]
	add r2, fp, fp, lsr #31
	cmp r1, #0
	ldrb r0, [r0, r2, asr #1]
	blt _020D9D08
	cmp r1, #0x80
	bge _020D9D08
	ldr r2, _020DA108 ; =0x020FE7E4
	ldrb r1, [r2, r1]
_020D9D08:
	cmp r1, #0x41
	subge r1, r1, #0x37
	sublt r1, r1, #0x30
	mov r2, fp, lsr #0x1f
	and r3, r1, #0xff
	rsb r1, r2, fp, lsl #31
	adds r1, r2, r1, ror #31
	moveq r1, r3, lsl #4
	add r2, fp, fp, lsr #31
	orrne r0, r0, r3
	andeq r1, r1, #0xff
	orreq r0, r0, r1
	ldr r1, [sp, #0x14]
	add fp, fp, #1
	strb r0, [r1, r2, asr #1]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9D60:
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9D7C:
	cmp r1, #0
	blt _020D9D8C
	cmp r1, #0x80
	blt _020D9D94
_020D9D8C:
	mov r0, r1
	b _020D9D9C
_020D9D94:
	ldr r0, _020DA108 ; =0x020FE7E4
	ldrb r0, [r0, r1]
_020D9D9C:
	cmp r0, #0x50
	movne r5, #0x800
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov sl, #0x20
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9DC8:
	cmp r1, #0x2d
	moveq r0, #1
	streq r0, [sp, #0xc]
	beq _020D9DF0
	cmp r1, #0x2b
	beq _020D9DF0
	mov r0, r8
	mov r2, #1
	blx sb
	sub r4, r4, #1
_020D9DF0:
	mov sl, #0x40
	add r4, r4, #1
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9E10:
	cmp r1, #0
	blt _020D9E20
	cmp r1, #0x80
	blt _020D9E28
_020D9E20:
	mov r0, #0
	b _020D9E38
_020D9E28:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9E38:
	cmp r0, #0
	moveq r5, #0x1000
	beq _020D9F10
	cmp r1, #0x30
	movne sl, #0x100
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	mov sl, #0x80
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9E70:
	cmp r1, #0x30
	movne sl, #0x100
	bne _020D9F10
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	mov r1, r0
	b _020D9F10
_020D9E98:
	cmp r1, #0
	blt _020D9EA8
	cmp r1, #0x80
	blt _020D9EB0
_020D9EA8:
	mov r0, #0
	b _020D9EC0
_020D9EB0:
	mov r2, r1, lsl #1
	ldr r0, _020DA104 ; =0x020FE864
	ldrh r0, [r0, r2]
	and r0, r0, #8
_020D9EC0:
	cmp r0, #0
	moveq r5, #0x800
	beq _020D9F10
	ldr r0, [sp, #0x10]
	sub r2, r1, #0x30
	mov r1, #0xa
	mla r0, r1, r0, r2
	str r0, [sp, #0x10]
	ldr r1, _020DA110 ; =0x00007FFF
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	cmp r0, r1
	ldrgt r0, [sp, #0xd0]
	movgt r1, #1
	strgt r1, [r0]
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r1, r0
_020D9F10:
	ldr r0, [sp]
	cmp r4, r0
	bgt _020D9F30
	mvn r0, #0
	cmp r1, r0
	beq _020D9F30
	tst r5, #0x1800
	beq _020D9224
_020D9F30:
	cmp r5, #0x8000
	beq _020D9F4C
	ldr r0, _020DA114 ; =0x00000E2C
	tst r5, r0
	moveq r0, #1
	movne r0, #0
	b _020D9F70
_020D9F4C:
	sub r0, r4, #1
	cmp r0, #2
	ble _020D9F64
	ldr r0, _020DA118 ; =0x0000018E
	tst sl, r0
	bne _020D9F6C
_020D9F64:
	mov r0, #1
	b _020D9F70
_020D9F6C:
	mov r0, #0
_020D9F70:
	cmp r0, #0
	movne r2, #0
	ldrne r0, [sp, #4]
	bne _020D9F90
	ldr r0, [sp, #0x2c]
	sub r2, r4, #1
	add r2, r2, r0
	ldr r0, [sp, #4]
_020D9F90:
	str r2, [r0, #0]
	mov r0, r8
	mov r2, #1
	blx sb
	cmp sl, #0
	bne _020DA194
	ldr r0, [sp, #0x24]
	ldrb r2, [sp, #0x84]
	cmp r0, #0
	ldrne r0, [sp, #0x20]
	rsbne r0, r0, #0
	strne r0, [sp, #0x20]
	add r0, sp, #0x85
	add r1, r0, r2
	b _020D9FD8
_020D9FCC:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_020D9FD8:
	cmp r2, #0
	sub r2, r2, #1
	beq _020D9FF0
	ldrb r0, [r1, #-1]!
	cmp r0, #0x30
	beq _020D9FCC
_020D9FF0:
	add r0, r2, #1
	strb r0, [sp, #0x84]
	ands r2, r0, #0xff
	bne _020DA014
	add r1, r2, #1
	strb r1, [sp, #0x84]
	add r0, sp, #0x85
	mov r1, #0x30
	strb r1, [r0, r2]
_020DA014:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	mov r2, #0x8000
	add r0, r1, r0
	rsb r2, r2, #0
	str r0, [sp, #0x20]
	cmp r0, r2
	blt _020DA03C
	cmp r0, r2, lsr #17
	ble _020DA048
_020DA03C:
	ldr r0, [sp, #0xd0]
	mov r1, #1
	str r1, [r0, #0]
_020DA048:
	ldr r0, [sp, #0xd0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020DA0A4
	ldr r0, [sp, #0x24]
	cmp r0, #0
	movne r0, #0
	addne sp, sp, #0xa8
	movne r1, r0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ldreq r1, _020DA11C ; =0x021015B4
	addeq sp, sp, #0xa8
	ldmeqia r1, {r0, r1}
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _020DA11C ; =0x021015B4
	mov r0, #0
	ldmia r1, {r2, r3}
	mov r1, r0
	bl _dsub
	add sp, sp, #0xa8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DA0A4:
	ldr r1, [sp, #0x20]
	add r0, sp, #0x80
	strh r1, [sp, #0x82]
	bl __dec2num
	mov r4, r0
	mov r6, r1
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r6
	bl _d_fne
	beq _020DA124
	mov r0, r4
	mov r1, r6
	mov r2, #0
	mov r3, #0x100000
	bl _d_flt
	bhs _020DA124
	ldr r0, [sp, #0xd0]
	mov r1, #1
	str r1, [r0, #0]
	b _020DA150
	; .align 2, 0
_020DA0FC: .word Unk_020FE991
_020DA100: .word Unk_020FE98C
_020DA104: .word 0x020FE864
_020DA108: .word 0x020FE7E4
_020DA10C: .word Unk_021015AC
_020DA110: .word 0x00007FFF
_020DA114: .word 0x00000E2C
_020DA118: .word 0x0000018E
_020DA11C: .word Unk_021015B4
_020DA120: .word 0x7FEFFFFF
_020DA124:
	ldr r3, _020DA120 ; =0x7FEFFFFF
	mov r0, r4
	mov r1, r6
	mvn r2, #0
	bl _d_fgt
	bls _020DA150
	ldr r0, [sp, #0xd0]
	mov r2, #1
	ldr r1, _020DA11C ; =0x021015B4
	str r2, [r0, #0]
	ldmia r1, {r4, r6}
_020DA150:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _020DA184
	ldr r0, _020DA114 ; =0x00000E2C
	tst r5, r0
	beq _020DA184
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r6
	bl _dsub
	mov r4, r0
	mov r6, r1
_020DA184:
	add sp, sp, #0xa8
	mov r0, r4
	mov r1, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DA194:
	ldr r0, [sp, #0xc]
	add r4, sp, #0x38
	cmp r0, #0
	ldrne r0, [sp, #0x10]
	ldrb r3, [sp, #0x45]
	rsbne r0, r0, #0
	strne r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #8]
	mov r2, #0
	add r0, r1, r0, lsl #2
	str r0, [sp, #0x10]
	mov r1, #0x80
	b _020DA1DC
_020DA1CC:
	ldr r0, [sp, #0x10]
	add r2, r2, #1
	sub r0, r0, #1
	str r0, [sp, #0x10]
_020DA1DC:
	cmp r2, #4
	bhs _020DA1EC
	tst r3, r1, asr r2
	beq _020DA1CC
_020DA1EC:
	adds r5, r2, #1
	beq _020DA238
	add r0, sp, #0x4c
	add r3, sp, #0x45
	str r0, [sp, #0x14]
	mov r1, #0
	cmp r0, r3
	blo _020DA238
	rsb r6, r5, #8
_020DA210:
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	orr r2, r1, r0, lsl r5
	mov r1, r0, asr r6
	ldr r0, [sp, #0x14]
	and r1, r1, #0xff
	strb r2, [r0], #-1
	str r0, [sp, #0x14]
	cmp r0, r3
	bhs _020DA210
_020DA238:
	mov r2, #0
	mov r6, r2
	strb r2, [r4]
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	strb r2, [r4, #4]
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	mov r3, #0xc
	mov r7, #1
	mov r0, #0xff
	add r1, sp, #0x45
_020DA270:
	add r5, r2, #8
	cmp r5, #0x34
	ldrb r5, [r1, r6]
	rsbhi r8, r2, #0x34
	and fp, r3, #7
	andhi r5, r5, r0, lsl r8
	andhi r5, r5, #0xff
	mov r8, r5, asr fp
	and sb, r8, #0xff
	ldrb sl, [r4, r7]
	rsb r8, fp, #8
	mov r5, r5, lsl r8
	orr sb, sl, sb
	strb sb, [r4, r7]
	add r7, r7, #1
	add r2, r2, #8
	ldrb r8, [r4, r7]
	and r5, r5, #0xff
	cmp r2, #0x34
	orr r5, r8, r5
	strb r5, [r4, r7]
	add r3, r3, #8
	add r6, r6, #1
	blo _020DA270
	ldr r0, [sp, #0x10]
	mov r1, #0x800
	add r0, r0, #0xfe
	add r2, r0, #0x300
	rsb r1, r1, #0
	tst r2, r1
	beq _020DA308
	ldr r2, [sp, #0xd0]
	mov r3, #1
	mov r0, #0
	add sp, sp, #0xa8
	mov r1, r0
	str r3, [r2, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020DA308:
	ldrb r0, [r4, #1]
	mov r2, r2, lsl #0x15
	ldrb r1, [r4]
	orr r0, r0, r2, lsr #17
	strb r0, [r4, #1]
	ldr r0, [sp, #0x28]
	orr r1, r1, r2, lsr #25
	cmp r0, #0
	andne r0, r1, #0xff
	strb r1, [r4]
	orrne r0, r0, #0x80
	strneb r0, [r4]
	mov r3, #0
_020DA33C:
	rsb r1, r3, #7
	ldrb r2, [r4, r3]
	ldrb r0, [r4, r1]
	strb r0, [r4, r3]
	add r3, r3, #1
	strb r2, [r4, r1]
	cmp r3, #4
	blt _020DA33C
	ldmia r4, {r0, r1}
	add sp, sp, #0xa8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end __strtold

	arm_func_start strtod
strtod: ; 0x020DA368
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r0, #0
	mov r6, r1
	str r0, [sp, #8]
	add r4, sp, #0xc
	str r7, [sp, #4]
	ldr r1, _020DA43C ; =__StringRead
	add r2, sp, #4
	add r3, sp, #0x10
	sub r0, r0, #-0x7fffffff
	str r4, [sp]
	bl __strtold
	mov r5, r1
	mov r4, r0
	cmp r6, #0
	ldrne r0, [sp, #0x10]
	mov r1, r5
	addne r0, r7, r0
	strne r0, [r6]
	mov r0, r4
	bl fabs
	ldr r2, [sp, #0xc]
	mov r6, r0
	mov r7, r1
	cmp r2, #0
	bne _020DA420
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r5
	bl _d_fne
	beq _020DA42C
	mov r0, r6
	mov r1, r7
	mov r2, #0
	mov r3, #0x100000
	bl _d_flt
	blo _020DA420
	ldr r3, _020DA440 ; =0x7FEFFFFF
	mov r0, r6
	mov r1, r7
	mvn r2, #0
	bl _d_fgt
	bls _020DA42C
_020DA420:
	ldr r0, _020DA444 ; =0x021D0D40
	mov r1, #0x22
	str r1, [r0, #0]
_020DA42C:
	mov r0, r4
	mov r1, r5
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020DA43C: .word __StringRead
_020DA440: .word 0x7FEFFFFF
_020DA444: .word errno
	arm_func_end strtod

	arm_func_start atof
atof: ; 0x020DA448
	ldr ip, _020DA454 ; =strtod
	mov r1, #0
	bx ip
	; .align 2, 0
_020DA454: .word strtod
	arm_func_end atof


	.section .exception, 4


	.global Unk_020E4568
Unk_020E4568: ; 0x020E4568
	.incbin "incbin/arm9_exception.bin", 0x10, 0x8


	.rodata


	.global Unk_020FE98C
Unk_020FE98C: ; 0x020FE98C
	.incbin "incbin/arm9_rodata.bin", 0x19D4C, 0x19D51 - 0x19D4C

	.global Unk_020FE991
Unk_020FE991: ; 0x020FE991
	.incbin "incbin/arm9_rodata.bin", 0x19D51, 0x9

