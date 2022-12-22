	.include "macros/function.inc"
	.include "include/ov66_022324F0.inc"

	

	.text


	thumb_func_start ov66_022324F0
ov66_022324F0: ; 0x022324F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02232590 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _02232506
	bl sub_02022974
_02232506:
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r7, r0
	blo _02232512
	bl sub_02022974
_02232512:
	ldr r1, _02232594 ; =0x00000988
	add r0, r5, #0
	bl sub_02018144
	ldr r1, _02232590 ; =0x0225B6C0
	ldr r2, _02232594 ; =0x00000988
	str r0, [r1, #0]
	mov r1, #0
	bl memset
	ldr r0, _02232590 ; =0x0225B6C0
	ldr r0, [r0, #0]
	str r6, [r0, #0]
	add r0, r6, #0
	bl sub_0202B370
	ldr r1, _02232590 ; =0x0225B6C0
	ldr r1, [r1, #0]
	str r0, [r1, #4]
	add r0, r6, #0
	bl sub_0202C878
	ldr r6, _02232590 ; =0x0225B6C0
	ldr r1, [r6, #0]
	str r0, [r1, #8]
	ldr r3, [r6, #0]
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r7, #0
	str r0, [r2, #0]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	str r0, [r3, #0x20]
	ldr r0, [r6, #0]
	bl ov66_02233758
	add r0, r6, #0
	ldr r0, [r0, #0]
	mov r1, #0x14
	mov r2, #8
	add r3, r5, #0
	bl ov66_022338C8
	add r0, r6, #0
	ldr r0, [r0, #0]
	bl ov66_02234054
	add r0, r6, #0
	ldr r1, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0x80
	add r2, r5, #0
	bl ov66_022342F4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232590: .word 0x0225B6C0
_02232594: .word 0x00000988
	thumb_func_end ov66_022324F0

	thumb_func_start ov66_02232598
ov66_02232598: ; 0x02232598
	push {r3, lr}
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022325A6
	bl sub_02022974
_022325A6:
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov66_0223430C
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	bl ov66_02233920
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	bl ov66_02233788
	ldr r0, _022325D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _022325D4 ; =0x0225B6C0
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_022325D4: .word 0x0225B6C0
	thumb_func_end ov66_02232598

	thumb_func_start ov66_022325D8
ov66_022325D8: ; 0x022325D8
	push {r3, lr}
	ldr r0, _022326D4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022325E6
	mov r0, #0
	pop {r3, pc}
_022325E6:
	blx ov66_02235428
	cmp r0, #0xa
	bhi _02232654
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022325FA: ; jump table
	.short _02232610 - _022325FA - 2 ; case 0
	.short _0223261E - _022325FA - 2 ; case 1
	.short _0223261E - _022325FA - 2 ; case 2
	.short _0223261E - _022325FA - 2 ; case 3
	.short _0223261E - _022325FA - 2 ; case 4
	.short _0223261E - _022325FA - 2 ; case 5
	.short _0223261E - _022325FA - 2 ; case 6
	.short _0223261E - _022325FA - 2 ; case 7
	.short _0223262C - _022325FA - 2 ; case 8
	.short _0223263A - _022325FA - 2 ; case 9
	.short _02232648 - _022325FA - 2 ; case 10
_02232610:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _02232654
_0223261E:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _02232654
_0223262C:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #2
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _02232654
_0223263A:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #3
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _02232654
_02232648:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #4
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
_02232654:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r1, #0x4b
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #2
	bne _022326CC
	bl ov66_022341F4
	ldr r0, _022326D4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r1, r0
	blx ov66_02235FD8
	blx ov66_022360F4
	cmp r0, #3
	bhi _022326CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232688: ; jump table
	.short _02232690 - _02232688 - 2 ; case 0
	.short _022326A4 - _02232688 - 2 ; case 1
	.short _022326B0 - _02232688 - 2 ; case 2
	.short _022326C2 - _02232688 - 2 ; case 3
_02232690:
	ldr r1, _022326D4 ; =0x0225B6C0
	ldr r0, _022326D8 ; =0x0000012E
	ldr r2, [r1, #0]
	mov r3, #0
	strb r3, [r2, r0]
	ldr r1, [r1, #0]
	mov r2, #4
	sub r0, r0, #1
	strb r2, [r1, r0]
	b _022326CC
_022326A4:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _022326D8 ; =0x0000012E
	strb r2, [r1, r0]
	b _022326CC
_022326B0:
	ldr r0, _022326D4 ; =0x0225B6C0
	ldr r2, [r0, #0]
	ldr r0, _022326D8 ; =0x0000012E
	ldrb r1, [r2, r0]
	cmp r1, #3
	beq _022326CC
	mov r1, #2
	strb r1, [r2, r0]
	b _022326CC
_022326C2:
	ldr r0, _022326D4 ; =0x0225B6C0
	mov r2, #4
	ldr r1, [r0, #0]
	ldr r0, _022326D8 ; =0x0000012E
	strb r2, [r1, r0]
_022326CC:
	bl ov66_0223287C
	pop {r3, pc}
	nop
_022326D4: .word 0x0225B6C0
_022326D8: .word 0x0000012E
	thumb_func_end ov66_022325D8

	thumb_func_start ov66_022326DC
ov66_022326DC: ; 0x022326DC
	push {r3, lr}
	ldr r0, _02232704 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022326EA
	bl sub_02022974
_022326EA:
	ldr r0, _02232704 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232708 ; =0x00000984
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022326FC
	blx ov66_022370FC
	pop {r3, pc}
_022326FC:
	blx ov66_02237134
	pop {r3, pc}
	nop
_02232704: .word 0x0225B6C0
_02232708: .word 0x00000984
	thumb_func_end ov66_022326DC

	thumb_func_start ov66_0223270C
ov66_0223270C: ; 0x0223270C
	ldr r3, _02232710 ; =ov66_02237118
	bx r3
	; .align 2, 0
_02232710: .word ov66_02237118
	thumb_func_end ov66_0223270C

	thumb_func_start ov66_02232714
ov66_02232714: ; 0x02232714
	ldr r3, _0223271C ; =ov66_02232720
	mov r1, #0
	bx r3
	nop
_0223271C: .word ov66_02232720
	thumb_func_end ov66_02232714

	thumb_func_start ov66_02232720
ov66_02232720: ; 0x02232720
	push {r3, r4, r5, lr}
	sub sp, #0x50
	add r5, r0, #0
	ldr r0, _022327B0 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232734
	bl sub_02022974
_02232734:
	ldr r0, _022327B4 ; =ov66_02233B54
	str r0, [sp, #0xc]
	ldr r0, _022327B8 ; =ov66_02233BF0
	str r0, [sp, #0x10]
	ldr r0, _022327BC ; =ov66_02233C60
	str r0, [sp, #0x14]
	ldr r0, _022327C0 ; =ov66_02233CE4
	str r0, [sp, #0x18]
	ldr r0, _022327C4 ; =ov66_02233CE8
	str r0, [sp, #0x1c]
	ldr r0, _022327C8 ; =ov66_02233D94
	str r0, [sp, #0x20]
	ldr r0, _022327CC ; =ov66_02233DD4
	str r0, [sp, #0x24]
	ldr r0, _022327D0 ; =ov66_02233E50
	str r0, [sp, #0x28]
	ldr r0, _022327D4 ; =ov66_02233E8C
	str r0, [sp, #0x2c]
	ldr r0, _022327D8 ; =ov66_02233F18
	str r0, [sp, #0x30]
	ldr r0, _022327DC ; =ov66_02233F60
	str r0, [sp, #0x34]
	ldr r0, _022327E0 ; =ov66_02233F74
	str r0, [sp, #0x38]
	ldr r0, _022327E4 ; =ov66_02233FA0
	str r0, [sp, #0x3c]
	ldr r0, _022327E8 ; =ov66_02233FC0
	str r0, [sp, #0x40]
	ldr r0, _022327EC ; =ov66_02233FEC
	str r0, [sp, #0x44]
	ldr r0, _022327F0 ; =ov66_02234018
	str r0, [sp, #0x48]
	ldr r0, _022327F4 ; =ov66_02234040
	str r0, [sp, #0x4c]
	ldr r0, _022327B0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_0202AD28
	str r0, [sp]
	ldr r0, _022327B0 ; =0x0225B6C0
	str r5, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, _022327F8 ; =0x02258E14
	ldr r0, [r0, #0x28]
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _022327FC ; =0x02258E04
	add r3, sp, #0xc
	blx ov66_02234FD4
	ldr r2, _022327B0 ; =0x0225B6C0
	ldr r1, _02232800 ; =0x00000984
	ldr r3, [r2, #0]
	str r0, [r3, r1]
	ldr r0, [r2, #0]
	ldr r0, [r0, r1]
	bl ov66_0223365C
	add sp, #0x50
	pop {r3, r4, r5, pc}
	nop
_022327B0: .word 0x0225B6C0
_022327B4: .word ov66_02233B54
_022327B8: .word ov66_02233BF0
_022327BC: .word ov66_02233C60
_022327C0: .word ov66_02233CE4
_022327C4: .word ov66_02233CE8
_022327C8: .word ov66_02233D94
_022327CC: .word ov66_02233DD4
_022327D0: .word ov66_02233E50
_022327D4: .word ov66_02233E8C
_022327D8: .word ov66_02233F18
_022327DC: .word ov66_02233F60
_022327E0: .word ov66_02233F74
_022327E4: .word ov66_02233FA0
_022327E8: .word ov66_02233FC0
_022327EC: .word ov66_02233FEC
_022327F0: .word ov66_02234018
_022327F4: .word ov66_02234040
_022327F8: .word 0x02258E14
_022327FC: .word 0x02258E04
_02232800: .word 0x00000984
	thumb_func_end ov66_02232720

	thumb_func_start ov66_02232804
ov66_02232804: ; 0x02232804
	push {r3, lr}
	ldr r0, _02232828 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232812
	bl sub_02022974
_02232812:
	ldr r0, _02232828 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02232824
	mov r0, #1
	pop {r3, pc}
_02232824:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02232828: .word 0x0225B6C0
	thumb_func_end ov66_02232804

	thumb_func_start ov66_0223282C
ov66_0223282C: ; 0x0223282C
	push {r3, lr}
	ldr r0, _02232850 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223283A
	bl sub_02022974
_0223283A:
	bl ov66_0223369C
	blx ov66_022353A4
	bl ov66_0223365C
	cmp r0, #0
	bne _0223284E
	bl sub_02022974
_0223284E:
	pop {r3, pc}
	; .align 2, 0
_02232850: .word 0x0225B6C0
	thumb_func_end ov66_0223282C

	thumb_func_start ov66_02232854
ov66_02232854: ; 0x02232854
	push {r3, lr}
	ldr r0, _02232878 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232862
	bl sub_02022974
_02232862:
	ldr r0, _02232878 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02232874
	mov r0, #1
	pop {r3, pc}
_02232874:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02232878: .word 0x0225B6C0
	thumb_func_end ov66_02232854

	thumb_func_start ov66_0223287C
ov66_0223287C: ; 0x0223287C
	push {r3, lr}
	ldr r0, _022328C0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223288A
	bl sub_02022974
_0223288A:
	ldr r0, _022328C0 ; =0x0225B6C0
	ldr r1, _022328C4 ; =0x0000012D
	ldr r0, [r0, #0]
	ldrb r2, [r0, r1]
	cmp r2, #4
	beq _022328A2
	add r1, r1, #1
	ldrb r1, [r0, r1]
	cmp r1, #4
	bne _022328A2
	mov r0, #4
	pop {r3, pc}
_022328A2:
	ldr r2, _022328C8 ; =0x00000133
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _022328AE
	mov r0, #4
	pop {r3, pc}
_022328AE:
	sub r1, r2, #1
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _022328BA
	mov r0, #4
	pop {r3, pc}
_022328BA:
	sub r1, r2, #7
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_022328C0: .word 0x0225B6C0
_022328C4: .word 0x0000012D
_022328C8: .word 0x00000133
	thumb_func_end ov66_0223287C

	thumb_func_start ov66_022328CC
ov66_022328CC: ; 0x022328CC
	push {r3, lr}
	ldr r0, _022328E8 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022328DA
	bl sub_02022974
_022328DA:
	ldr r0, _022328E8 ; =0x0225B6C0
	ldr r1, _022328EC ; =0x00000131
	ldr r3, [r0, #0]
	mov r2, #0
	ldrb r0, [r3, r1]
	strb r2, [r3, r1]
	pop {r3, pc}
	; .align 2, 0
_022328E8: .word 0x0225B6C0
_022328EC: .word 0x00000131
	thumb_func_end ov66_022328CC

	thumb_func_start ov66_022328F0
ov66_022328F0: ; 0x022328F0
	push {r3, lr}
	ldr r0, _02232904 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022328FE
	bl sub_02022974
_022328FE:
	blx ov66_02236494
	pop {r3, pc}
	; .align 2, 0
_02232904: .word 0x0225B6C0
	thumb_func_end ov66_022328F0

	thumb_func_start ov66_02232908
ov66_02232908: ; 0x02232908
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232938 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232918
	bl sub_02022974
_02232918:
	blx ov66_02236494
	add r1, r0, #0
	ldr r0, _02232938 ; =0x0225B6C0
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223379C
	ldr r1, _02232938 ; =0x0225B6C0
	add r0, r4, #0
	ldr r1, [r1, #0]
	mov r2, #0
	ldr r1, [r1, #0x28]
	blx ov66_022364C4
	pop {r4, pc}
	; .align 2, 0
_02232938: .word 0x0225B6C0
	thumb_func_end ov66_02232908

	thumb_func_start ov66_0223293C
ov66_0223293C: ; 0x0223293C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232958 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223294C
	bl sub_02022974
_0223294C:
	ldr r0, _02232958 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_022337E8
	pop {r4, pc}
	; .align 2, 0
_02232958: .word 0x0225B6C0
	thumb_func_end ov66_0223293C

	thumb_func_start ov66_0223295C
ov66_0223295C: ; 0x0223295C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02232984 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223296E
	bl sub_02022974
_0223296E:
	ldr r0, _02232984 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl ov66_02233864
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	str r1, [r4, #0]
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	nop
_02232984: .word 0x0225B6C0
	thumb_func_end ov66_0223295C

	thumb_func_start ov66_02232988
ov66_02232988: ; 0x02232988
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	lsr r6, r0, #4
	add r5, r0, #0
	ldr r0, _022329E0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022329A2
	bl sub_02022974
_022329A2:
	mov r4, #0
_022329A4:
	ldr r0, _022329E0 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233A6C
	mov r1, #0
	add r7, r0, #0
	mvn r1, r1
	cmp r7, r1
	beq _022329D4
	add r1, sp, #4
	bl ov66_0223295C
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	sub r0, r2, r5
	mov ip, r1
	mov r0, ip
	sbc r0, r6
	bge _022329D4
	add r5, r2, #0
	add r6, r1, #0
	str r7, [sp]
_022329D4:
	add r4, r4, #1
	cmp r4, #0x14
	blt _022329A4
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022329E0: .word 0x0225B6C0
	thumb_func_end ov66_02232988

	thumb_func_start ov66_022329E4
ov66_022329E4: ; 0x022329E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	lsr r7, r0, #4
	add r6, r0, #0
	ldr r0, _02232A44 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232A00
	bl sub_02022974
_02232A00:
	mov r4, #0
_02232A02:
	ldr r0, _02232A44 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233A6C
	mov r1, #0
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	beq _02232A38
	ldr r1, [sp]
	cmp r5, r1
	beq _02232A38
	add r1, sp, #8
	bl ov66_0223295C
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	sub r0, r2, r6
	mov ip, r1
	mov r0, ip
	sbc r0, r7
	bge _02232A38
	add r6, r2, #0
	add r7, r1, #0
	str r5, [sp, #4]
_02232A38:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02232A02
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02232A44: .word 0x0225B6C0
	thumb_func_end ov66_022329E4

	thumb_func_start ov66_02232A48
ov66_02232A48: ; 0x02232A48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232A7C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232A58
	bl sub_02022974
_02232A58:
	add r0, r4, #0
	bl ov66_022336C0
	blx ov66_02235BA0
	bl ov66_0223365C
	cmp r0, #1
	bne _02232A7A
	ldr r2, _02232A7C ; =0x0225B6C0
	ldr r1, _02232A80 ; =0x0000012D
	ldr r3, [r2, #0]
	strb r4, [r3, r1]
	ldr r2, [r2, #0]
	mov r3, #0
	add r1, r1, #2
	strb r3, [r2, r1]
_02232A7A:
	pop {r4, pc}
	; .align 2, 0
_02232A7C: .word 0x0225B6C0
_02232A80: .word 0x0000012D
	thumb_func_end ov66_02232A48

	thumb_func_start ov66_02232A84
ov66_02232A84: ; 0x02232A84
	push {r3, lr}
	ldr r0, _02232A9C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232A92
	bl sub_02022974
_02232A92:
	ldr r0, _02232A9C ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232AA0 ; =0x0000012F
	ldrb r0, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_02232A9C: .word 0x0225B6C0
_02232AA0: .word 0x0000012F
	thumb_func_end ov66_02232A84

	thumb_func_start ov66_02232AA4
ov66_02232AA4: ; 0x02232AA4
	push {r3, lr}
	ldr r0, _02232ACC ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232AB2
	bl sub_02022974
_02232AB2:
	blx ov66_02235DD4
	bl ov66_0223365C
	cmp r0, #1
	bne _02232AC8
	ldr r1, _02232ACC ; =0x0225B6C0
	mov r3, #3
	ldr r2, [r1, #0]
	ldr r1, _02232AD0 ; =0x0000012E
	strb r3, [r2, r1]
_02232AC8:
	pop {r3, pc}
	nop
_02232ACC: .word 0x0225B6C0
_02232AD0: .word 0x0000012E
	thumb_func_end ov66_02232AA4

	thumb_func_start ov66_02232AD4
ov66_02232AD4: ; 0x02232AD4
	push {r3, lr}
	ldr r0, _02232AF8 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232AE2
	bl sub_02022974
_02232AE2:
	ldr r0, _02232AF8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232AFC ; =0x0000012E
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02232AF2
	mov r0, #1
	pop {r3, pc}
_02232AF2:
	mov r0, #0
	pop {r3, pc}
	nop
_02232AF8: .word 0x0225B6C0
_02232AFC: .word 0x0000012E
	thumb_func_end ov66_02232AD4

	thumb_func_start ov66_02232B00
ov66_02232B00: ; 0x02232B00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232B1C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232B10
	bl sub_02022974
_02232B10:
	ldr r0, _02232B1C ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_02233AE8
	pop {r4, pc}
	; .align 2, 0
_02232B1C: .word 0x0225B6C0
	thumb_func_end ov66_02232B00

	thumb_func_start ov66_02232B20
ov66_02232B20: ; 0x02232B20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232B48 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232B30
	bl sub_02022974
_02232B30:
	ldr r1, _02232B48 ; =0x0225B6C0
	mov r0, #0x47
	ldr r2, [r1, #0]
	lsl r0, r0, #2
	ldrsh r2, [r2, r0]
	add r0, r0, #4
	str r2, [r4, #0]
	ldr r1, [r1, #0]
	ldr r0, [r1, r0]
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02232B48: .word 0x0225B6C0
	thumb_func_end ov66_02232B20

	thumb_func_start ov66_02232B4C
ov66_02232B4C: ; 0x02232B4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232B74 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232B5C
	bl sub_02022974
_02232B5C:
	ldr r1, _02232B74 ; =0x0225B6C0
	mov r0, #0x49
	ldr r2, [r1, #0]
	lsl r0, r0, #2
	ldrsh r2, [r2, r0]
	add r0, r0, #4
	str r2, [r4, #0]
	ldr r1, [r1, #0]
	ldr r0, [r1, r0]
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02232B74: .word 0x0225B6C0
	thumb_func_end ov66_02232B4C

	thumb_func_start ov66_02232B78
ov66_02232B78: ; 0x02232B78
	add r1, r0, #0
	ldr r0, _02232B84 ; =0x0225B6C0
	ldr r3, _02232B88 ; =ov66_02233A34
	ldr r0, [r0, #0]
	mov r2, #0
	bx r3
	; .align 2, 0
_02232B84: .word 0x0225B6C0
_02232B88: .word ov66_02233A34
	thumb_func_end ov66_02232B78

	thumb_func_start ov66_02232B8C
ov66_02232B8C: ; 0x02232B8C
	add r1, r0, #0
	ldr r0, _02232B98 ; =0x0225B6C0
	ldr r3, _02232B9C ; =ov66_02233A34
	ldr r0, [r0, #0]
	mov r2, #1
	bx r3
	; .align 2, 0
_02232B98: .word 0x0225B6C0
_02232B9C: .word ov66_02233A34
	thumb_func_end ov66_02232B8C

	thumb_func_start ov66_02232BA0
ov66_02232BA0: ; 0x02232BA0
	add r1, r0, #0
	ldr r0, _02232BAC ; =0x0225B6C0
	ldr r3, _02232BB0 ; =ov66_02233A6C
	ldr r0, [r0, #0]
	mov r2, #0
	bx r3
	; .align 2, 0
_02232BAC: .word 0x0225B6C0
_02232BB0: .word ov66_02233A6C
	thumb_func_end ov66_02232BA0

	thumb_func_start ov66_02232BB4
ov66_02232BB4: ; 0x02232BB4
	add r1, r0, #0
	ldr r0, _02232BC0 ; =0x0225B6C0
	ldr r3, _02232BC4 ; =ov66_02233A6C
	ldr r0, [r0, #0]
	mov r2, #1
	bx r3
	; .align 2, 0
_02232BC0: .word 0x0225B6C0
_02232BC4: .word ov66_02233A6C
	thumb_func_end ov66_02232BB4

	thumb_func_start ov66_02232BC8
ov66_02232BC8: ; 0x02232BC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232BE8 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232BD8
	bl sub_02022974
_02232BD8:
	ldr r0, _02232BE8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r1, r0
	ldmia r0!, {r2, r3}
	stmia r4!, {r2, r3}
	pop {r4, pc}
	; .align 2, 0
_02232BE8: .word 0x0225B6C0
	thumb_func_end ov66_02232BC8

	thumb_func_start ov66_02232BEC
ov66_02232BEC: ; 0x02232BEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02232C88 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232BFC
	bl sub_02022974
_02232BFC:
	ldr r1, _02232C88 ; =0x0225B6C0
	mov r0, #1
	ldr r2, [r1, #0]
	mov r1, #0x4b
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #2
	beq _02232C12
	cmp r1, #4
	beq _02232C12
	mov r0, #0
_02232C12:
	cmp r0, #0
	bne _02232C1A
	bl sub_02022974
_02232C1A:
	cmp r5, #8
	blt _02232C22
	bl sub_02022974
_02232C22:
	ldr r0, _02232C88 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r1, r0
	cmp r5, #7
	bhi _02232C84
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02232C3C: ; jump table
	.short _02232C4C - _02232C3C - 2 ; case 0
	.short _02232C50 - _02232C3C - 2 ; case 1
	.short _02232C54 - _02232C3C - 2 ; case 2
	.short _02232C58 - _02232C3C - 2 ; case 3
	.short _02232C5C - _02232C3C - 2 ; case 4
	.short _02232C68 - _02232C3C - 2 ; case 5
	.short _02232C72 - _02232C3C - 2 ; case 6
	.short _02232C7C - _02232C3C - 2 ; case 7
_02232C4C:
	ldr r4, [r0, #0]
	b _02232C84
_02232C50:
	ldr r4, [r0, #4]
	b _02232C84
_02232C54:
	ldrb r4, [r0, #0xc]
	b _02232C84
_02232C58:
	ldrb r4, [r0, #0xd]
	b _02232C84
_02232C5C:
	ldr r0, [r0, #8]
	mov r4, #1
	tst r0, r4
	bne _02232C84
	mov r4, #0
	b _02232C84
_02232C68:
	mov r1, #0x13
	bl ov66_022342CC
	add r4, r0, #0
	b _02232C84
_02232C72:
	mov r1, #0x10
	bl ov66_022342CC
	add r4, r0, #0
	b _02232C84
_02232C7C:
	mov r1, #0x11
	bl ov66_022342CC
	add r4, r0, #0
_02232C84:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02232C88: .word 0x0225B6C0
	thumb_func_end ov66_02232BEC

	thumb_func_start ov66_02232C8C
ov66_02232C8C: ; 0x02232C8C
	push {r3, lr}
	ldr r0, _02232CB4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232C9A
	bl sub_02022974
_02232C9A:
	ldr r0, _02232CB4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	bl ov66_022336C4
	cmp r0, #0
	beq _02232CB2
	ldr r1, _02232CB4 ; =0x0225B6C0
	mov r3, #1
	ldr r2, [r1, #0]
	mov r1, #0x13
	lsl r1, r1, #4
	strb r3, [r2, r1]
_02232CB2:
	pop {r3, pc}
	; .align 2, 0
_02232CB4: .word 0x0225B6C0
	thumb_func_end ov66_02232C8C

	thumb_func_start ov66_02232CB8
ov66_02232CB8: ; 0x02232CB8
	ldr r0, _02232CD0 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02232CCA
	mov r0, #1
	bx lr
_02232CCA:
	mov r0, #0
	bx lr
	nop
_02232CD0: .word 0x0225B6C0
	thumb_func_end ov66_02232CB8

	thumb_func_start ov66_02232CD4
ov66_02232CD4: ; 0x02232CD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232CFC ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232CE4
	bl sub_02022974
_02232CE4:
	cmp r4, #0x14
	blo _02232CEC
	bl sub_02022974
_02232CEC:
	ldr r0, _02232CFC ; =0x0225B6C0
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_02232CFC: .word 0x0225B6C0
	thumb_func_end ov66_02232CD4

	thumb_func_start ov66_02232D00
ov66_02232D00: ; 0x02232D00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02232D28 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232D10
	bl sub_02022974
_02232D10:
	cmp r4, #0x14
	blo _02232D18
	bl sub_02022974
_02232D18:
	ldr r0, _02232D28 ; =0x0225B6C0
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, _02232D2C ; =0x00000136
	ldrb r0, [r1, r0]
	pop {r4, pc}
	nop
_02232D28: .word 0x0225B6C0
_02232D2C: .word 0x00000136
	thumb_func_end ov66_02232D00

	thumb_func_start ov66_02232D30
ov66_02232D30: ; 0x02232D30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02232D5C ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	bne _02232D44
	bl sub_02022974
_02232D44:
	ldr r2, _02232D5C ; =0x0225B6C0
	mov r1, #0x61
	ldr r0, [r2, #0]
	lsl r1, r1, #2
	str r5, [r0, r1]
	ldr r3, [r2, #0]
	add r0, r1, #4
	str r4, [r3, r0]
	ldr r0, [r2, #0]
	add r1, #8
	str r6, [r0, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02232D5C: .word 0x0225B6C0
	thumb_func_end ov66_02232D30

	thumb_func_start ov66_02232D60
ov66_02232D60: ; 0x02232D60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02232D8C ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	bne _02232D74
	bl sub_02022974
_02232D74:
	ldr r2, _02232D8C ; =0x0225B6C0
	mov r1, #0x19
	ldr r0, [r2, #0]
	lsl r1, r1, #4
	str r5, [r0, r1]
	ldr r3, [r2, #0]
	add r0, r1, #4
	str r4, [r3, r0]
	ldr r0, [r2, #0]
	add r1, #8
	str r6, [r0, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02232D8C: .word 0x0225B6C0
	thumb_func_end ov66_02232D60

	thumb_func_start ov66_02232D90
ov66_02232D90: ; 0x02232D90
	push {r3, lr}
	ldr r0, _02232DC4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232D9E
	bl sub_02022974
_02232D9E:
	ldr r0, _02232DC4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x61
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	pop {r3, pc}
	; .align 2, 0
_02232DC4: .word 0x0225B6C0
	thumb_func_end ov66_02232D90

	thumb_func_start ov66_02232DC8
ov66_02232DC8: ; 0x02232DC8
	push {r3, lr}
	ldr r0, _02232DFC ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232DD6
	bl sub_02022974
_02232DD6:
	ldr r0, _02232DFC ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x19
	lsl r0, r0, #4
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	pop {r3, pc}
	; .align 2, 0
_02232DFC: .word 0x0225B6C0
	thumb_func_end ov66_02232DC8

	thumb_func_start ov66_02232E00
ov66_02232E00: ; 0x02232E00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02232E58 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r4, r2, #0
	cmp r0, #0
	bne _02232E14
	bl sub_02022974
_02232E14:
	ldr r0, _02232E58 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r5
	bhi _02232E26
	bl sub_02022974
_02232E26:
	ldr r0, _02232E58 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	lsl r0, r5, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r4, r0
	beq _02232E3E
	bl sub_02022974
_02232E3E:
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	blx ov66_02236390
	bl ov66_0223365C
	cmp r0, #1
	beq _02232E56
	bl sub_02022974
_02232E56:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02232E58: .word 0x0225B6C0
	thumb_func_end ov66_02232E00

	thumb_func_start ov66_02232E5C
ov66_02232E5C: ; 0x02232E5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02232EB8 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _02232E72
	bl sub_02022974
_02232E72:
	ldr r0, _02232EB8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r5
	bhi _02232E84
	bl sub_02022974
_02232E84:
	ldr r0, _02232EB8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	lsl r0, r5, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r4, r0
	beq _02232E9C
	bl sub_02022974
_02232E9C:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	blx ov66_02236414
	bl ov66_0223365C
	cmp r0, #1
	beq _02232EB4
	bl sub_02022974
_02232EB4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232EB8: .word 0x0225B6C0
	thumb_func_end ov66_02232E5C

	thumb_func_start ov66_02232EBC
ov66_02232EBC: ; 0x02232EBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02232F30 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r4, r2, #0
	cmp r0, #0
	bne _02232ED0
	bl sub_02022974
_02232ED0:
	ldr r0, _02232F30 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r5
	bhi _02232EE2
	bl sub_02022974
_02232EE2:
	ldr r0, _02232F30 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	lsl r0, r5, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r4, r0
	beq _02232EFA
	bl sub_02022974
_02232EFA:
	ldr r0, _02232F30 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232F34 ; =0x0000012D
	ldrb r0, [r1, r0]
	cmp r0, #4
	bne _02232F0A
	bl sub_02022974
_02232F0A:
	ldr r0, _02232F30 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02232F34 ; =0x0000012D
	ldrb r0, [r1, r0]
	bl ov66_022336C0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	blx ov66_02236390
	bl ov66_0223365C
	cmp r0, #1
	beq _02232F2C
	bl sub_02022974
_02232F2C:
	pop {r4, r5, r6, pc}
	nop
_02232F30: .word 0x0225B6C0
_02232F34: .word 0x0000012D
	thumb_func_end ov66_02232EBC

	thumb_func_start ov66_02232F38
ov66_02232F38: ; 0x02232F38
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _02233048 ; =0x0225B6C0
	add r6, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02232F4A
	bl sub_02022974
_02232F4A:
	ldr r0, _02233048 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #1
	bne _02232F5C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232F5C:
	ldr r2, _02233048 ; =0x0225B6C0
	ldr r1, _0223304C ; =0x0000069C
	ldr r0, [r2, #0]
	ldrh r3, [r0, r1]
	cmp r3, #3
	beq _02232F6C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232F6C:
	mov r3, #0x4c
	add r5, r4, #0
	mul r5, r3
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xe4
	str r4, [r3, r0]
	ldr r0, [r2, #0]
	mov r7, #1
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xe0
	str r6, [r3, r0]
	ldr r0, [r2, #0]
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xdc
	str r7, [r3, r0]
	ldr r0, [r2, #0]
	mov r7, #0
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xd8
	str r7, [r3, r0]
	ldr r2, [r2, #0]
	sub r1, #0xe4
	add r0, r2, r1
	mov r1, #0x67
	lsl r1, r1, #2
	add r0, r0, r5
	add r1, r2, r1
	bl ov66_02234288
	ldr r0, _02233048 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233050 ; =0x000005B8
	add r0, r1, r0
	add r0, r0, r5
	blx ov66_02236770
	bl ov66_0223365C
	cmp r0, #0
	bne _02232FC8
	bl sub_02022974
_02232FC8:
	ldr r1, _02233048 ; =0x0225B6C0
	mov r0, #0x4c
	add r5, r4, #0
	mul r5, r0
	ldr r1, [r1, #0]
	mov r0, #1
	add r2, r1, r5
	ldr r1, _02233054 ; =0x000005FC
	strh r0, [r2, r1]
	blx ov66_02236494
	ldr r1, _02233048 ; =0x0225B6C0
	mov r7, #6
	ldr r2, [r1, #0]
	lsl r7, r7, #8
	add r2, r2, r5
	str r0, [r2, r7]
	ldr r2, [r1, #0]
	ldr r0, _02233058 ; =0x00000708
	add r3, r2, r5
	sub r2, r7, #2
	strh r0, [r3, r2]
	add r2, r0, #0
	ldr r3, [r1, #0]
	sub r2, #0x6c
	strh r4, [r3, r2]
	add r2, r0, #0
	ldr r3, [r1, #0]
	mov r4, #1
	sub r2, #0x6a
	strb r4, [r3, r2]
	ldr r2, [r1, #0]
	mov r3, #0
	sub r0, #0x69
	strb r3, [r2, r0]
	ldr r4, [r1, #0]
	sub r0, r7, #2
	add r1, r4, r5
	ldrh r0, [r1, r0]
	mov r1, #0x1e
	bl _s32_div_f
	add r3, r0, #0
	add r0, r7, #0
	sub r0, #0x18
	add r0, r4, r0
	add r0, r0, r5
	add r1, r6, #0
	mov r2, #1
	bl ov4_021D116C
	ldr r1, _02233048 ; =0x0225B6C0
	ldr r0, _0223305C ; =ov66_022342A0
	ldr r1, [r1, #0]
	bl ov4_021D1150
	ldr r1, _02233048 ; =0x0225B6C0
	ldr r0, _02233060 ; =ov66_022342A4
	ldr r1, [r1, #0]
	bl ov4_021D1120
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233048: .word 0x0225B6C0
_0223304C: .word 0x0000069C
_02233050: .word 0x000005B8
_02233054: .word 0x000005FC
_02233058: .word 0x00000708
_0223305C: .word ov66_022342A0
_02233060: .word ov66_022342A4
	thumb_func_end ov66_02232F38

	thumb_func_start ov66_02233064
ov66_02233064: ; 0x02233064
	push {r4, lr}
	ldr r0, _022330C0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233072
	bl sub_02022974
_02233072:
	ldr r0, _022330C0 ; =0x0225B6C0
	ldr r2, [r0, #0]
	ldr r0, _022330C4 ; =0x0000069C
	ldrh r1, [r2, r0]
	cmp r1, #3
	beq _022330BC
	add r0, r0, #2
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _022330BC
	blx ov66_02236BB8
	bl ov66_0223365C
	cmp r0, #0
	bne _02233096
	bl sub_02022974
_02233096:
	ldr r0, _022330C0 ; =0x0225B6C0
	ldr r4, [r0, #0]
	blx ov66_02236494
	ldr r1, _022330C4 ; =0x0000069C
	add r2, r0, #0
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ov66_022340F0
	cmp r0, #0
	bne _022330B2
	bl sub_02022974
_022330B2:
	ldr r0, _022330C0 ; =0x0225B6C0
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _022330C8 ; =0x0000069E
	strb r2, [r1, r0]
_022330BC:
	pop {r4, pc}
	nop
_022330C0: .word 0x0225B6C0
_022330C4: .word 0x0000069C
_022330C8: .word 0x0000069E
	thumb_func_end ov66_02233064

	thumb_func_start ov66_022330CC
ov66_022330CC: ; 0x022330CC
	push {r4, r5, r6, lr}
	ldr r0, _02233120 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022330DA
	bl sub_02022974
_022330DA:
	ldr r4, _02233120 ; =0x0225B6C0
	ldr r3, _02233124 ; =0x0000069E
	ldr r1, [r4, #0]
	ldrb r0, [r1, r3]
	cmp r0, #0
	beq _0223311C
	sub r2, r3, #2
	ldrh r5, [r1, r2]
	mov r2, #0x4c
	mov r0, #1
	add r6, r5, #0
	mul r6, r2
	add r5, r1, r6
	add r1, r3, #0
	sub r1, #0xda
	str r0, [r5, r1]
	add r0, r3, #0
	ldr r1, [r4, #0]
	sub r0, #0xe6
	add r4, r1, r0
	sub r0, r3, #2
	ldrh r0, [r1, r0]
	add r1, r0, #0
	mul r1, r2
	add r0, r4, r1
	blx ov66_02236AC4
	bl ov66_0223365C
	cmp r0, #0
	bne _0223311C
	bl sub_02022974
_0223311C:
	pop {r4, r5, r6, pc}
	nop
_02233120: .word 0x0225B6C0
_02233124: .word 0x0000069E
	thumb_func_end ov66_022330CC

	thumb_func_start ov66_02233128
ov66_02233128: ; 0x02233128
	push {r3, lr}
	ldr r0, _0223315C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233136
	bl sub_02022974
_02233136:
	ldr r0, _0223315C ; =0x0225B6C0
	ldr r1, _02233160 ; =0x0000069C
	ldr r3, [r0, #0]
	ldrh r2, [r3, r1]
	cmp r2, #3
	bne _02233146
	mov r0, #0
	pop {r3, pc}
_02233146:
	mov r0, #0x4c
	mul r0, r2
	add r0, r3, r0
	sub r1, #0xd8
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _02233158
	mov r0, #1
	pop {r3, pc}
_02233158:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0223315C: .word 0x0225B6C0
_02233160: .word 0x0000069C
	thumb_func_end ov66_02233128

	thumb_func_start ov66_02233164
ov66_02233164: ; 0x02233164
	push {r3, lr}
	ldr r0, _0223317C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233172
	bl sub_02022974
_02233172:
	ldr r0, _0223317C ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233180 ; =0x0000069F
	ldrb r0, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_0223317C: .word 0x0225B6C0
_02233180: .word 0x0000069F
	thumb_func_end ov66_02233164

	thumb_func_start ov66_02233184
ov66_02233184: ; 0x02233184
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022331A0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233194
	bl sub_02022974
_02233194:
	ldr r0, _022331A0 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	pop {r4, pc}
	; .align 2, 0
_022331A0: .word 0x0225B6C0
	thumb_func_end ov66_02233184

	thumb_func_start ov66_022331A4
ov66_022331A4: ; 0x022331A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022331DC ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022331B4
	bl sub_02022974
_022331B4:
	add r0, r4, #0
	bl ov66_02233184
	cmp r0, #0
	bne _022331C2
	mov r0, #0
	pop {r4, pc}
_022331C2:
	ldr r0, _022331DC ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x4c
	mul r0, r4
	add r1, r1, r0
	ldr r0, _022331E0 ; =0x000005C4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022331D8
	mov r0, #1
	pop {r4, pc}
_022331D8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022331DC: .word 0x0225B6C0
_022331E0: .word 0x000005C4
	thumb_func_end ov66_022331A4

	thumb_func_start ov66_022331E4
ov66_022331E4: ; 0x022331E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02233220 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022331F4
	bl sub_02022974
_022331F4:
	cmp r4, #3
	blt _022331FC
	bl sub_02022974
_022331FC:
	ldr r0, _02233220 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #0
	bne _0223320E
	mov r0, #0
	pop {r4, pc}
_0223320E:
	ldr r0, _02233220 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_022341C0
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	sub r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_02233220: .word 0x0225B6C0
	thumb_func_end ov66_022331E4

	thumb_func_start ov66_02233224
ov66_02233224: ; 0x02233224
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223325C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233234
	bl sub_02022974
_02233234:
	cmp r4, #3
	blt _0223323C
	bl sub_02022974
_0223323C:
	ldr r0, _0223325C ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #0
	bne _0223324E
	mov r0, #0
	pop {r4, pc}
_0223324E:
	ldr r0, _0223325C ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_022341C0
	ldr r0, [r0, #8]
	pop {r4, pc}
	; .align 2, 0
_0223325C: .word 0x0225B6C0
	thumb_func_end ov66_02233224

	thumb_func_start ov66_02233260
ov66_02233260: ; 0x02233260
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _022332E4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233270
	bl sub_02022974
_02233270:
	ldr r0, _022332E4 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #0
	bne _02233282
	mov r0, #0
	pop {r4, r5, r6, pc}
_02233282:
	ldr r3, _022332E4 ; =0x0225B6C0
	ldr r2, _022332E8 ; =0x0000069C
	ldr r0, [r3, #0]
	ldrh r1, [r0, r2]
	cmp r1, #3
	beq _02233292
	mov r0, #0
	pop {r4, r5, r6, pc}
_02233292:
	mov r1, #0x4c
	add r4, r5, #0
	mul r4, r1
	add r1, r2, #0
	add r6, r0, r4
	sub r1, #0xd8
	ldr r1, [r6, r1]
	cmp r1, #1
	bne _022332A8
	mov r0, #0
	pop {r4, r5, r6, pc}
_022332A8:
	strh r5, [r0, r2]
	ldr r5, [r3, #0]
	sub r2, #0x9e
	add r0, r5, r4
	ldrh r0, [r0, r2]
	mov r1, #0x1e
	bl _s32_div_f
	ldr r1, _022332EC ; =0x000005E8
	add r3, r0, #0
	add r0, r5, r1
	add r2, r5, r4
	sub r1, #0x2c
	ldr r1, [r2, r1]
	add r0, r0, r4
	mov r2, #0
	bl ov4_021D116C
	ldr r1, _022332E4 ; =0x0225B6C0
	ldr r0, _022332F0 ; =ov66_022342A0
	ldr r1, [r1, #0]
	bl ov4_021D1150
	ldr r1, _022332E4 ; =0x0225B6C0
	ldr r0, _022332F4 ; =ov66_022342A4
	ldr r1, [r1, #0]
	bl ov4_021D1120
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022332E4: .word 0x0225B6C0
_022332E8: .word 0x0000069C
_022332EC: .word 0x000005E8
_022332F0: .word ov66_022342A0
_022332F4: .word ov66_022342A4
	thumb_func_end ov66_02233260

	thumb_func_start ov66_022332F8
ov66_022332F8: ; 0x022332F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02233334 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233308
	bl sub_02022974
_02233308:
	cmp r4, #3
	blt _02233310
	bl sub_02022974
_02233310:
	ldr r0, _02233334 ; =0x0225B6C0
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl ov66_0223412C
	cmp r0, #0
	bne _02233322
	ldr r0, _02233338 ; =0x00000708
	pop {r4, pc}
_02233322:
	ldr r0, _02233334 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x4c
	mul r0, r4
	add r1, r1, r0
	ldr r0, _0223333C ; =0x000005FE
	ldrh r0, [r1, r0]
	pop {r4, pc}
	nop
_02233334: .word 0x0225B6C0
_02233338: .word 0x00000708
_0223333C: .word 0x000005FE
	thumb_func_end ov66_022332F8

	thumb_func_start ov66_02233340
ov66_02233340: ; 0x02233340
	push {r3, lr}
	ldr r0, _0223336C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223334E
	bl sub_02022974
_0223334E:
	ldr r0, _0223336C ; =0x0225B6C0
	ldr r1, _02233370 ; =0x0000069C
	ldr r3, [r0, #0]
	ldrh r2, [r3, r1]
	cmp r2, #3
	bne _02233360
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02233360:
	mov r0, #0x4c
	mul r0, r2
	add r0, r3, r0
	sub r1, #0x9c
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0223336C: .word 0x0225B6C0
_02233370: .word 0x0000069C
	thumb_func_end ov66_02233340

	thumb_func_start ov66_02233374
ov66_02233374: ; 0x02233374
	push {r3, lr}
	ldr r0, _0223338C ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233382
	bl sub_02022974
_02233382:
	ldr r0, _0223338C ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233390 ; =0x0000069E
	ldrb r0, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_0223338C: .word 0x0225B6C0
_02233390: .word 0x0000069E
	thumb_func_end ov66_02233374

	thumb_func_start ov66_02233394
ov66_02233394: ; 0x02233394
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022333B8 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022333A4
	bl sub_02022974
_022333A4:
	ldr r0, _022333B8 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #0
	bl ov66_02234344
	pop {r4, pc}
	nop
_022333B8: .word 0x0225B6C0
	thumb_func_end ov66_02233394

	thumb_func_start ov66_022333BC
ov66_022333BC: ; 0x022333BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022333E0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022333CC
	bl sub_02022974
_022333CC:
	ldr r0, _022333E0 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #0
	bl ov66_0223436C
	pop {r4, pc}
	nop
_022333E0: .word 0x0225B6C0
	thumb_func_end ov66_022333BC

	thumb_func_start ov66_022333E4
ov66_022333E4: ; 0x022333E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02233430 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022333F4
	bl sub_02022974
_022333F4:
	cmp r4, #3
	blt _022333FC
	bl sub_02022974
_022333FC:
	ldr r0, _02233430 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0223340E
	bl sub_02022974
_0223340E:
	add r0, r4, #0
	blx ov66_02236D74
	bl ov66_0223365C
	cmp r0, #1
	beq _02233420
	bl sub_02022974
_02233420:
	ldr r0, _02233430 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	str r2, [r1, r0]
	pop {r4, pc}
	nop
_02233430: .word 0x0225B6C0
	thumb_func_end ov66_022333E4

	thumb_func_start ov66_02233434
ov66_02233434: ; 0x02233434
	push {r3, lr}
	ldr r0, _02233450 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233442
	bl sub_02022974
_02233442:
	ldr r0, _02233450 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	pop {r3, pc}
	nop
_02233450: .word 0x0225B6C0
	thumb_func_end ov66_02233434

	thumb_func_start ov66_02233454
ov66_02233454: ; 0x02233454
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233464
	bl sub_02022974
_02233464:
	cmp r4, #0xb
	blt _0223346C
	bl sub_02022974
_0223346C:
	cmp r4, #0xa
	bhi _0223350E
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223347C: ; jump table
	.short _02233492 - _0223347C - 2 ; case 0
	.short _0223349C - _0223347C - 2 ; case 1
	.short _022334A6 - _0223347C - 2 ; case 2
	.short _022334B0 - _0223347C - 2 ; case 3
	.short _022334C8 - _0223347C - 2 ; case 4
	.short _022334D2 - _0223347C - 2 ; case 5
	.short _022334DC - _0223347C - 2 ; case 6
	.short _022334E6 - _0223347C - 2 ; case 7
	.short _022334FE - _0223347C - 2 ; case 8
	.short _022334FE - _0223347C - 2 ; case 9
	.short _022334FE - _0223347C - 2 ; case 10
_02233492:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _0223351C ; =0x000006A8
	ldr r0, [r1, r0]
	pop {r4, pc}
_0223349C:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233520 ; =0x000006AC
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334A6:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233524 ; =0x00000804
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334B0:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233520 ; =0x000006AC
	ldr r1, [r1, r0]
	mov r0, #0xfa
	lsl r0, r0, #2
	cmp r1, r0
	blt _022334C4
	mov r0, #1
	pop {r4, pc}
_022334C4:
	mov r0, #0
	pop {r4, pc}
_022334C8:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233528 ; =0x00000808
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334D2:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _0223352C ; =0x0000080C
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334DC:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02233530 ; =0x00000964
	ldr r0, [r1, r0]
	pop {r4, pc}
_022334E6:
	ldr r0, _02233518 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _0223352C ; =0x0000080C
	ldr r1, [r1, r0]
	mov r0, #0xfa
	lsl r0, r0, #2
	cmp r1, r0
	blt _022334FA
	mov r0, #1
	pop {r4, pc}
_022334FA:
	mov r0, #0
	pop {r4, pc}
_022334FE:
	ldr r0, _02233518 ; =0x0225B6C0
	sub r4, #8
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, _02233534 ; =0x00000974
	ldr r0, [r1, r0]
	pop {r4, pc}
_0223350E:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	nop
_02233518: .word 0x0225B6C0
_0223351C: .word 0x000006A8
_02233520: .word 0x000006AC
_02233524: .word 0x00000804
_02233528: .word 0x00000808
_0223352C: .word 0x0000080C
_02233530: .word 0x00000964
_02233534: .word 0x00000974
	thumb_func_end ov66_02233454

	thumb_func_start ov66_02233538
ov66_02233538: ; 0x02233538
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02233548
	bl sub_02022974
_02233548:
	cmp r4, #8
	blt _02233550
	bl sub_02022974
_02233550:
	cmp r4, #7
	bhi _022335AC
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233560: ; jump table
	.short _02233570 - _02233560 - 2 ; case 0
	.short _0223357C - _02233560 - 2 ; case 1
	.short _0223357C - _02233560 - 2 ; case 2
	.short _0223357C - _02233560 - 2 ; case 3
	.short _0223358E - _02233560 - 2 ; case 4
	.short _0223359A - _02233560 - 2 ; case 5
	.short _0223359A - _02233560 - 2 ; case 6
	.short _0223359A - _02233560 - 2 ; case 7
_02233570:
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x6b
	lsl r0, r0, #4
	add r0, r1, r0
	pop {r4, pc}
_0223357C:
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _022335B8 ; =0x0000078C
	add r2, r1, r0
	sub r1, r4, #1
	mov r0, #0x24
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_0223358E:
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x81
	lsl r0, r0, #4
	add r0, r1, r0
	pop {r4, pc}
_0223359A:
	ldr r0, _022335B4 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _022335BC ; =0x000008EC
	add r2, r1, r0
	sub r1, r4, #5
	mov r0, #0x24
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_022335AC:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022335B4: .word 0x0225B6C0
_022335B8: .word 0x0000078C
_022335BC: .word 0x000008EC
	thumb_func_end ov66_02233538

	thumb_func_start ov66_022335C0
ov66_022335C0: ; 0x022335C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02233610 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022335D2
	bl sub_02022974
_022335D2:
	cmp r5, #2
	blt _022335DA
	bl sub_02022974
_022335DA:
	cmp r4, #0xc
	blo _022335E2
	bl sub_02022974
_022335E2:
	cmp r5, #2
	blt _022335EA
	mov r0, #0
	pop {r3, r4, r5, pc}
_022335EA:
	cmp r4, #0xc
	blo _022335F2
	mov r0, #0
	pop {r3, r4, r5, pc}
_022335F2:
	cmp r5, #0
	bne _02233602
	ldr r0, _02233610 ; =0x0225B6C0
	ldr r0, [r0, #0]
	add r1, r0, r4
	ldr r0, _02233614 ; =0x000007F8
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
_02233602:
	ldr r0, _02233610 ; =0x0225B6C0
	ldr r0, [r0, #0]
	add r1, r0, r4
	ldr r0, _02233618 ; =0x00000958
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_02233610: .word 0x0225B6C0
_02233614: .word 0x000007F8
_02233618: .word 0x00000958
	thumb_func_end ov66_022335C0

	thumb_func_start ov66_0223361C
ov66_0223361C: ; 0x0223361C
	push {r4, lr}
	ldr r0, _02233654 ; =0x0225B6C0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223362A
	bl sub_02022974
_0223362A:
	mov r0, #0
	add r1, r0, #0
	bl ov4_021D1150
	mov r0, #0
	add r1, r0, #0
	bl ov4_021D1120
	ldr r2, _02233654 ; =0x0225B6C0
	ldr r0, _02233658 ; =0x0000069C
	ldr r1, [r2, #0]
	mov r3, #3
	strh r3, [r1, r0]
	add r1, r0, #2
	ldr r3, [r2, #0]
	mov r4, #0
	strb r4, [r3, r1]
	ldr r1, [r2, #0]
	add r0, r0, #3
	strb r4, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
_02233654: .word 0x0225B6C0
_02233658: .word 0x0000069C
	thumb_func_end ov66_0223361C

	thumb_func_start ov66_0223365C
ov66_0223365C: ; 0x0223365C
	push {r3, lr}
	mov r1, #1
	cmp r0, #7
	bhi _02233690
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233670: ; jump table
	.short _02233696 - _02233670 - 2 ; case 0
	.short _02233680 - _02233670 - 2 ; case 1
	.short _02233680 - _02233670 - 2 ; case 2
	.short _02233684 - _02233670 - 2 ; case 3
	.short _02233680 - _02233670 - 2 ; case 4
	.short _02233680 - _02233670 - 2 ; case 5
	.short _02233684 - _02233670 - 2 ; case 6
	.short _0223368C - _02233670 - 2 ; case 7
_02233680:
	mov r1, #0
	b _02233696
_02233684:
	bl sub_02022974
	mov r1, #0
	b _02233696
_0223368C:
	mov r1, #0
	b _02233696
_02233690:
	bl sub_02022974
	mov r1, #0
_02233696:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_0223365C

	thumb_func_start ov66_0223369C
ov66_0223369C: ; 0x0223369C
	ldr r1, _022336B0 ; =0x0225B6C0
	ldr r0, _022336B4 ; =0x00000133
	ldr r2, [r1, #0]
	mov r3, #0
	strb r3, [r2, r0]
	ldr r1, [r1, #0]
	sub r0, r0, #1
	strb r3, [r1, r0]
	bx lr
	nop
_022336B0: .word 0x0225B6C0
_022336B4: .word 0x00000133
	thumb_func_end ov66_0223369C

	thumb_func_start ov66_022336B8
ov66_022336B8: ; 0x022336B8
	sub r0, r0, #1
	bpl _022336BE
	mov r0, #4
_022336BE:
	bx lr
	thumb_func_end ov66_022336B8

	thumb_func_start ov66_022336C0
ov66_022336C0: ; 0x022336C0
	add r0, r0, #1
	bx lr
	thumb_func_end ov66_022336C0

	thumb_func_start ov66_022336C4
ov66_022336C4: ; 0x022336C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, [r0, #8]
	bl sub_0202C8C0
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl sub_0202C8C4
	cmp r4, #0
	bne _022336E4
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022336E4:
	ldr r7, _02233750 ; =0x00000136
	ldr r2, [sp, #4]
	mov r1, #0
	sub r3, r7, #2
	add r5, r7, #1
_022336EE:
	ldrb r6, [r2, r5]
	cmp r6, #0
	beq _0223370E
	ldrh r6, [r2, r3]
	cmp r4, r6
	bne _02233706
	ldrb r6, [r2, r7]
	cmp r0, r6
	bne _02233706
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02233706:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x14
	blt _022336EE
_0223370E:
	cmp r1, #0x14
	blt _0223371C
	bl sub_02022974
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223371C:
	lsl r2, r1, #2
	ldr r1, [sp, #4]
	mov r3, #0x4d
	add r2, r1, r2
	lsl r3, r3, #2
	strh r4, [r2, r3]
	add r1, r3, #2
	strb r0, [r2, r1]
	mov r1, #1
	add r0, r3, #3
	strb r1, [r2, r0]
	mov r0, #0x50
	str r0, [sp]
	ldr r2, _02233754 ; =0x02258DF0
	ldr r4, [sp, #4]
	ldr r2, [r2, #0]
	sub r0, #0x51
	mov r1, #0
	add r3, r4, r3
	blx ov66_022361B8
	bl ov66_0223365C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233750: .word 0x00000136
_02233754: .word 0x02258DF0
	thumb_func_end ov66_022336C4

	thumb_func_start ov66_02233758
ov66_02233758: ; 0x02233758
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x14
	add r4, r5, #0
	mul r4, r0
	add r0, r2, #0
	add r1, r4, #0
	bl sub_02018144
	ldr r1, _02233784 ; =0x0225B6C0
	ldr r2, [r1, #0]
	str r0, [r2, #0x24]
	ldr r0, [r1, #0]
	mov r1, #0
	ldr r0, [r0, #0x24]
	add r2, r4, #0
	bl memset
	ldr r0, _02233784 ; =0x0225B6C0
	ldr r0, [r0, #0]
	str r5, [r0, #0x28]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233784: .word 0x0225B6C0
	thumb_func_end ov66_02233758

	thumb_func_start ov66_02233788
ov66_02233788: ; 0x02233788
	ldr r0, _02233794 ; =0x0225B6C0
	ldr r3, _02233798 ; =sub_020181C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	bx r3
	nop
_02233794: .word 0x0225B6C0
_02233798: .word sub_020181C4
	thumb_func_end ov66_02233788

	thumb_func_start ov66_0223379C
ov66_0223379C: ; 0x0223379C
	push {r3, lr}
	ldr r3, [r0, #0x28]
	bl ov66_022337A8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov66_0223379C

	thumb_func_start ov66_022337A8
ov66_022337A8: ; 0x022337A8
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	mov r2, #0
	add r4, r0, #0
	add r6, r3, #0
	bl ov66_02233A34
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _022337C4
	bl sub_02022974
_022337C4:
	ldr r2, [r4, #0x28]
	ldr r5, [r4, #0x24]
	add r4, r2, #0
	mul r4, r7
	cmp r2, r6
	bls _022337DA
	add r0, r5, r4
	mov r1, #0
	bl memset
	b _022337DC
_022337DA:
	add r6, r2, #0
_022337DC:
	ldr r1, [sp]
	add r0, r5, r4
	add r2, r6, #0
	bl memcpy
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_022337A8

	thumb_func_start ov66_022337E8
ov66_022337E8: ; 0x022337E8
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02233800
	bl sub_02022974
_02233800:
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x24]
	add r1, r0, #0
	mul r1, r4
	add r0, r2, r1
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_022337E8

	thumb_func_start ov66_0223380C
ov66_0223380C: ; 0x0223380C
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02233824
	bl sub_02022974
_02233824:
	ldr r2, [r5, #0x28]
	ldr r1, [r5, #0x24]
	add r0, r2, #0
	mul r0, r4
	add r0, r1, r0
	mov r1, #0
	bl memset
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223380C

	thumb_func_start ov66_02233838
ov66_02233838: ; 0x02233838
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _02233852
	bl sub_02022974
_02233852:
	mov r0, #0xc
	mul r0, r6
	add r2, r5, r0
	ldmia r4!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_02233838

	thumb_func_start ov66_02233864
ov66_02233864: ; 0x02233864
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0223387C
	bl sub_02022974
_0223387C:
	mov r0, #0xc
	add r5, #0x2c
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02233864

	thumb_func_start ov66_02233888
ov66_02233888: ; 0x02233888
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov66_02233A34
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _022338A0
	bl sub_02022974
_022338A0:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	add r5, #0x2c
	mov r0, #0
	add r2, r5, r1
	strb r0, [r5, r1]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	strb r0, [r2, #4]
	strb r0, [r2, #5]
	strb r0, [r2, #6]
	strb r0, [r2, #7]
	strb r0, [r2, #8]
	strb r0, [r2, #9]
	strb r0, [r2, #0xa]
	strb r0, [r2, #0xb]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_02233888

	thumb_func_start ov66_022338C8
ov66_022338C8: ; 0x022338C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r4, #0
	add r5, r7, #0
_022338D8:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022338E6
	bl sub_02022974
_022338E6:
	cmp r4, #0
	bne _022338EE
	ldr r6, [sp]
	b _022338F0
_022338EE:
	ldr r6, [sp, #4]
_022338F0:
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, [sp, #8]
	lsl r1, r6, #2
	bl sub_02018144
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r0, r1, #2
	strh r6, [r5, r0]
	add r0, r7, #0
	add r1, r4, #0
	bl ov66_02233950
	add r4, r4, #1
	add r5, #8
	cmp r4, #2
	blt _022338D8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov66_022338C8

	thumb_func_start ov66_02233920
ov66_02233920: ; 0x02233920
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x12
	add r5, r0, #0
	add r6, r4, #0
	lsl r7, r7, #4
_0223392C:
	ldr r0, [r5, r7]
	cmp r0, #0
	bne _02233936
	bl sub_02022974
_02233936:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0x12
	lsl r0, r0, #4
	str r6, [r5, r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, #2
	blt _0223392C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov66_02233920

	thumb_func_start ov66_02233950
ov66_02233950: ; 0x02233950
	push {r3, r4, r5, r6}
	lsl r2, r1, #3
	add r0, r0, r2
	mov r2, #0x47
	mov r1, #0
	lsl r2, r2, #2
	strh r1, [r0, r2]
	add r2, r2, #2
	ldrh r2, [r0, r2]
	cmp r2, #0
	ble _0223397E
	mov r2, #0x12
	lsl r2, r2, #4
	add r6, r1, #0
	sub r5, r1, #1
	sub r3, r2, #2
_02233970:
	ldr r4, [r0, r2]
	add r1, r1, #1
	str r5, [r4, r6]
	ldrh r4, [r0, r3]
	add r6, r6, #4
	cmp r1, r4
	blt _02233970
_0223397E:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02233950

	thumb_func_start ov66_02233984
ov66_02233984: ; 0x02233984
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp]
	add r4, r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02233A00
	ldr r0, _02233A04 ; =0x0000011E
	lsl r4, r4, #3
	add r5, r7, r0
	sub r0, r0, #2
	add r1, r7, r0
	add r0, r1, r4
	str r0, [sp, #4]
	ldrsh r1, [r1, r4]
	ldrh r0, [r5, r4]
	cmp r1, r0
	blt _022339B4
	bl sub_02022974
_022339B4:
	ldr r1, [sp, #4]
	mov r0, #0
	ldrh r2, [r5, r4]
	ldrsh r1, [r1, r0]
	cmp r1, r2
	bge _02233A00
	cmp r2, #0
	ble _022339E4
	mov r1, #0x12
	add r2, r7, r4
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	ldr r3, _02233A04 ; =0x0000011E
	sub r5, r0, #1
_022339D0:
	ldr r6, [r1, #0]
	cmp r6, r5
	bne _022339DA
	str r0, [sp, #8]
	b _022339E4
_022339DA:
	ldrh r6, [r2, r3]
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, r6
	blt _022339D0
_022339E4:
	mov r0, #0x12
	add r1, r7, r4
	lsl r0, r0, #4
	ldr r2, [r1, r0]
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, [sp]
	str r0, [r2, r1]
	ldr r0, [sp, #4]
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r1, r0, #1
	ldr r0, [sp, #4]
	strh r1, [r0]
_02233A00:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02233A04: .word 0x0000011E
	thumb_func_end ov66_02233984

	thumb_func_start ov66_02233A08
ov66_02233A08: ; 0x02233A08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233A32
	lsl r2, r4, #3
	mov r3, #0x12
	add r4, r5, r2
	lsl r3, r3, #4
	ldr r4, [r4, r3]
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r3, #4
	add r1, r5, r0
	ldrsh r0, [r1, r2]
	sub r0, r0, #1
	strh r0, [r1, r2]
_02233A32:
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_02233A08

	thumb_func_start ov66_02233A34
ov66_02233A34: ; 0x02233A34
	push {r4, r5}
	lsl r2, r2, #3
	add r0, r0, r2
	ldr r2, _02233A68 ; =0x0000011E
	mov r3, #0
	ldrh r4, [r0, r2]
	cmp r4, #0
	ble _02233A60
	add r2, r2, #2
	ldr r5, [r0, r2]
	ldr r2, _02233A68 ; =0x0000011E
_02233A4A:
	ldr r4, [r5, #0]
	cmp r1, r4
	bne _02233A56
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_02233A56:
	ldrh r4, [r0, r2]
	add r3, r3, #1
	add r5, r5, #4
	cmp r3, r4
	blt _02233A4A
_02233A60:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02233A68: .word 0x0000011E
	thumb_func_end ov66_02233A34

	thumb_func_start ov66_02233A6C
ov66_02233A6C: ; 0x02233A6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r6, r2, #3
	add r4, r1, #0
	ldr r0, _02233A90 ; =0x0000011E
	add r1, r5, r6
	ldrh r0, [r1, r0]
	cmp r4, r0
	blt _02233A82
	bl sub_02022974
_02233A82:
	mov r0, #0x12
	add r1, r5, r6
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02233A90: .word 0x0000011E
	thumb_func_end ov66_02233A6C

	thumb_func_start ov66_02233A94
ov66_02233A94: ; 0x02233A94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov66_022336C0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov66_02233950
	ldr r0, _02233AE4 ; =0x0000011E
	mov r4, #0
	ldrh r0, [r5, r0]
	cmp r0, #0
	ble _02233AE2
	add r6, r5, #0
_02233AB4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov66_02233A6C
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02233AD6
	ldr r0, [r6, #0x34]
	cmp r7, r0
	bne _02233AD6
	add r0, r5, #0
	mov r2, #1
	bl ov66_02233984
_02233AD6:
	ldr r0, _02233AE4 ; =0x0000011E
	add r4, r4, #1
	ldrh r0, [r5, r0]
	add r6, #0xc
	cmp r4, r0
	blt _02233AB4
_02233AE2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233AE4: .word 0x0000011E
	thumb_func_end ov66_02233A94

	thumb_func_start ov66_02233AE8
ov66_02233AE8: ; 0x02233AE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	cmp r1, #4
	blt _02233AF8
	bl sub_02022974
_02233AF8:
	ldr r0, [sp]
	bl ov66_022336C0
	str r0, [sp, #4]
	ldr r0, _02233B4C ; =0x0000011E
	mov r7, #0
	ldrh r0, [r6, r0]
	add r4, r7, #0
	cmp r0, #0
	ble _02233B36
	add r5, r6, #0
_02233B0E:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov66_02233A6C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233B2A
	ldr r1, [r5, #0x34]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _02233B2A
	add r7, r7, #1
_02233B2A:
	ldr r0, _02233B4C ; =0x0000011E
	add r4, r4, #1
	ldrh r0, [r6, r0]
	add r5, #0xc
	cmp r4, r0
	blt _02233B0E
_02233B36:
	ldr r1, _02233B50 ; =0x02258B20
	ldr r0, [sp]
	ldrb r0, [r1, r0]
	cmp r0, r7
	ble _02233B46
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233B46:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233B4C: .word 0x0000011E
_02233B50: .word 0x02258B20
	thumb_func_end ov66_02233AE8

	thumb_func_start ov66_02233B54
ov66_02233B54: ; 0x02233B54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _02233B94
	ldr r0, _02233BE0 ; =0x0225B6C0
	mov r3, #1
	ldr r2, [r0, #0]
	ldr r1, _02233BE4 ; =0x000005B4
	lsl r3, r3, #0xa
	str r3, [r2, r1]
	ldr r2, [r0, #0]
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r2, r0
	add r1, r2, r1
	blx ov66_02236084
	bl ov66_0223365C
	cmp r0, #0
	bne _02233B82
	bl sub_02022974
_02233B82:
	ldr r2, _02233BE8 ; =0x02258DF0
	mov r0, #0
	mov r1, #0
	ldr r2, [r2, #0]
	mvn r0, r0
	add r3, r1, #0
	blx ov66_02236218
	pop {r3, r4, r5, pc}
_02233B94:
	ldr r0, _02233BE0 ; =0x0225B6C0
	ldr r4, [r0, #0]
	add r0, r1, #0
	bl ov66_022336B8
	ldr r1, _02233BEC ; =0x0000012D
	ldrb r2, [r4, r1]
	cmp r2, r0
	bne _02233BD4
	cmp r5, #1
	bne _02233BCC
	mov r2, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	ldr r0, _02233BE0 ; =0x0225B6C0
	ldr r0, [r0, #0]
	ldrb r1, [r0, r1]
	bl ov66_02233A94
	blx ov66_02236494
	add r1, r0, #0
	ldr r0, _02233BE0 ; =0x0225B6C0
	mov r2, #1
	ldr r0, [r0, #0]
	bl ov66_02233984
	pop {r3, r4, r5, pc}
_02233BCC:
	mov r2, #2
	add r0, r1, #2
	strb r2, [r4, r0]
	pop {r3, r4, r5, pc}
_02233BD4:
	bl sub_02022974
	bl ov66_02232AA4
	pop {r3, r4, r5, pc}
	nop
_02233BE0: .word 0x0225B6C0
_02233BE4: .word 0x000005B4
_02233BE8: .word 0x02258DF0
_02233BEC: .word 0x0000012D
	thumb_func_end ov66_02233B54

	thumb_func_start ov66_02233BF0
ov66_02233BF0: ; 0x02233BF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	blx ov66_02236494
	cmp r5, r0
	bne _02233C14
	ldr r0, _02233C5C ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r1, r0
	blx ov66_02235FD8
	mov r4, #1
	b _02233C16
_02233C14:
	mov r4, #0
_02233C16:
	ldr r0, _02233C5C ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233984
	ldr r0, _02233C5C ; =0x0225B6C0
	ldr r3, [sp]
	ldr r0, [r0, #0]
	add r1, r5, #0
	add r2, r7, #0
	bl ov66_022337A8
	ldr r0, _02233C5C ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r6, #0
	bl ov66_02233838
	ldr r0, _02233C5C ; =0x0225B6C0
	add r1, r5, #0
	ldr r6, [r0, #0]
	add r0, r6, #0
	bl ov66_022337E8
	add r3, r4, #0
	ldr r4, _02233C5C ; =0x0225B6C0
	add r1, r0, #0
	ldr r4, [r4, #0]
	ldr r2, [r6, #0x20]
	ldr r4, [r4, #0xc]
	add r0, r5, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233C5C: .word 0x0225B6C0
	thumb_func_end ov66_02233BF0

	thumb_func_start ov66_02233C60
ov66_02233C60: ; 0x02233C60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233CD8
	mov r6, #0
	ldr r7, _02233CDC ; =0x0225B6C0
	add r4, r6, #0
_02233C7E:
	ldr r1, [r7, #0]
	mov r0, #6
	add r2, r1, r4
	lsl r0, r0, #8
	ldr r0, [r2, r0]
	cmp r5, r0
	bne _02233C98
	ldr r2, _02233CE0 ; =0x000005B8
	add r0, r5, #0
	add r1, r1, r2
	add r1, r1, r4
	bl ov66_02233F18
_02233C98:
	add r6, r6, #1
	add r4, #0x4c
	cmp r6, #3
	blt _02233C7E
	ldr r0, _02233CDC ; =0x0225B6C0
	ldr r2, [r0, #0]
	add r0, r5, #0
	ldr r1, [r2, #0x20]
	ldr r2, [r2, #0x10]
	blx r2
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl ov66_02233888
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	bl ov66_0223380C
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl ov66_02233A08
	ldr r0, _02233CDC ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl ov66_02233A08
_02233CD8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233CDC: .word 0x0225B6C0
_02233CE0: .word 0x000005B8
	thumb_func_end ov66_02233C60

	thumb_func_start ov66_02233CE4
ov66_02233CE4: ; 0x02233CE4
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02233CE4

	thumb_func_start ov66_02233CE8
ov66_02233CE8: ; 0x02233CE8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02233D8C ; =0x0225B6C0
	add r4, r1, #0
	add r5, r2, #0
	ldr r0, [r0, #0]
	add r1, r7, #0
	mov r2, #0
	str r3, [sp]
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233D88
	cmp r4, #5
	bhi _02233D88
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233D16: ; jump table
	.short _02233D22 - _02233D16 - 2 ; case 0
	.short _02233D26 - _02233D16 - 2 ; case 1
	.short _02233D26 - _02233D16 - 2 ; case 2
	.short _02233D26 - _02233D16 - 2 ; case 3
	.short _02233D26 - _02233D16 - 2 ; case 4
	.short _02233D3C - _02233D16 - 2 ; case 5
_02233D22:
	mov r1, #0
	b _02233D42
_02233D26:
	add r0, r4, #0
	bl ov66_022336B8
	ldr r1, _02233D8C ; =0x0225B6C0
	ldr r2, [r1, #0]
	ldr r1, _02233D90 ; =0x0000012D
	ldrb r1, [r2, r1]
	cmp r1, r0
	bne _02233D88
	mov r1, #1
	b _02233D42
_02233D3C:
	mov r1, #0
	b _02233D42
_02233D40:
	.byte 0xF8, 0xBD
_02233D42:
	add r4, r1, #0
	mov r0, #0xc
	mul r4, r0
	ldr r0, _02233D8C ; =0x0225B6C0
	mov r1, #0x62
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	add r0, r0, r4
	ldr r2, [r0, r1]
	cmp r2, r5
	bls _02233D88
	sub r1, r1, #4
	ldr r0, [r0, r1]
	lsl r5, r5, #3
	add r0, r0, r5
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bls _02233D6C
	bl sub_02022974
_02233D6C:
	ldr r0, _02233D8C ; =0x0225B6C0
	mov r3, #0x61
	ldr r0, [r0, #0]
	lsl r3, r3, #2
	add r6, r0, r4
	ldr r4, [r6, r3]
	add r3, #8
	add r2, r4, r5
	ldr r1, [sp]
	ldr r2, [r2, #4]
	ldr r3, [r6, r3]
	ldr r4, [r4, r5]
	add r0, r7, #0
	blx r4
_02233D88:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233D8C: .word 0x0225B6C0
_02233D90: .word 0x0000012D
	thumb_func_end ov66_02233CE8

	thumb_func_start ov66_02233D94
ov66_02233D94: ; 0x02233D94
	push {r3, lr}
	ldr r1, _02233DCC ; =0x02258DF0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl strcmp
	cmp r0, #0
	bne _02233DC8
	ldr r0, _02233DD0 ; =0x0225B6C0
	mov r2, #0x50
	ldr r1, [r0, #0]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	bl memcpy
	ldr r0, _02233DD0 ; =0x0225B6C0
	ldr r2, [r0, #0]
	mov r0, #0x13
	lsl r0, r0, #4
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02233DC8
	mov r1, #0
	strb r1, [r2, r0]
_02233DC8:
	pop {r3, pc}
	nop
_02233DCC: .word 0x02258DF0
_02233DD0: .word 0x0225B6C0
	thumb_func_end ov66_02233D94

	thumb_func_start ov66_02233DD4
ov66_02233DD4: ; 0x02233DD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02233E48 ; =0x0225B6C0
	add r7, r1, #0
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233E46
	ldr r0, _02233E48 ; =0x0225B6C0
	ldr r1, _02233E4C ; =0x0000012D
	ldr r0, [r0, #0]
	ldrb r1, [r0, r1]
	cmp r1, #4
	beq _02233E3A
	add r1, r5, #0
	bl ov66_02233864
	ldr r4, [r0, #8]
	ldr r0, _02233E48 ; =0x0225B6C0
	ldr r6, [r7, #8]
	ldr r1, [r0, #0]
	ldr r0, _02233E4C ; =0x0000012D
	ldrb r0, [r1, r0]
	bl ov66_022336C0
	cmp r4, #5
	bne _02233E26
	cmp r6, r0
	bne _02233E26
	ldr r0, _02233E48 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl ov66_02233984
	b _02233E3A
_02233E26:
	cmp r4, r0
	bne _02233E3A
	cmp r6, r0
	beq _02233E3A
	ldr r0, _02233E48 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl ov66_02233A08
_02233E3A:
	ldr r0, _02233E48 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r7, #0
	bl ov66_02233838
_02233E46:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233E48: .word 0x0225B6C0
_02233E4C: .word 0x0000012D
	thumb_func_end ov66_02233DD4

	thumb_func_start ov66_02233E50
ov66_02233E50: ; 0x02233E50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02233E88 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233E84
	ldr r0, _02233E88 ; =0x0225B6C0
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl ov66_0223379C
	ldr r0, _02233E88 ; =0x0225B6C0
	add r1, r4, #0
	ldr r3, [r0, #0]
	add r0, r5, #0
	ldr r2, [r3, #0x20]
	ldr r3, [r3, #0x14]
	blx r3
_02233E84:
	pop {r3, r4, r5, pc}
	nop
_02233E88: .word 0x0225B6C0
	thumb_func_end ov66_02233E50

	thumb_func_start ov66_02233E8C
ov66_02233E8C: ; 0x02233E8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02233F0C ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233F08
	bl ov66_022328F0
	cmp r0, r5
	beq _02233EFA
	ldr r0, _02233F0C ; =0x0225B6C0
	ldr r2, _02233F10 ; =0x0000069E
	ldr r1, [r0, #0]
	ldrb r0, [r1, r2]
	cmp r0, #0
	beq _02233EFA
	sub r0, r2, #2
	ldrh r0, [r1, r0]
	ldr r3, [r4, #0]
	cmp r0, r3
	bne _02233EFA
	sub r2, #0xe6
	add r2, r1, r2
	mov r1, #0x4c
	mul r1, r0
	add r0, r2, r1
	add r1, sp, #8
	bl ov66_02234294
	add r0, r4, #0
	add r1, sp, #0
	bl ov66_02234294
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	sub r0, r3, r0
	sbc r2, r1
	blt _02233F08
	ldr r0, _02233F0C ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02233F14 ; =0x0000069F
	strb r2, [r1, r0]
	bl ov66_02233064
_02233EFA:
	ldr r0, _02233F0C ; =0x0225B6C0
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	add r2, r5, #0
	add r3, r4, #0
	bl ov66_02234074
_02233F08:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233F0C: .word 0x0225B6C0
_02233F10: .word 0x0000069E
_02233F14: .word 0x0000069F
	thumb_func_end ov66_02233E8C

	thumb_func_start ov66_02233F18
ov66_02233F18: ; 0x02233F18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02233F58 ; =0x0225B6C0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov66_02233A34
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02233F56
	ldr r0, _02233F58 ; =0x0225B6C0
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	add r2, r5, #0
	bl ov66_022340F0
	ldr r1, _02233F58 ; =0x0225B6C0
	ldr r2, [r4, #0]
	ldr r5, [r1, #0]
	ldr r1, _02233F5C ; =0x0000069C
	ldrh r3, [r5, r1]
	cmp r3, r2
	bne _02233F56
	cmp r0, #1
	bne _02233F56
	mov r2, #1
	add r0, r1, #3
	strb r2, [r5, r0]
_02233F56:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02233F58: .word 0x0225B6C0
_02233F5C: .word 0x0000069C
	thumb_func_end ov66_02233F18

	thumb_func_start ov66_02233F60
ov66_02233F60: ; 0x02233F60
	push {r3, lr}
	ldr r1, _02233F70 ; =0x0225B6C0
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x20]
	ldr r2, [r2, #0x18]
	blx r2
	pop {r3, pc}
	nop
_02233F70: .word 0x0225B6C0
	thumb_func_end ov66_02233F60

	thumb_func_start ov66_02233F74
ov66_02233F74: ; 0x02233F74
	push {r3, lr}
	cmp r0, #0
	beq _02233F86
	ldr r0, _02233F98 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02233F9C ; =0x00000133
	strb r2, [r1, r0]
	pop {r3, pc}
_02233F86:
	ldr r0, _02233F98 ; =0x0225B6C0
	ldr r3, [r0, #0]
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r3, #0x20]
	ldr r3, [r3, #0x1c]
	blx r3
	pop {r3, pc}
	nop
_02233F98: .word 0x0225B6C0
_02233F9C: .word 0x00000133
	thumb_func_end ov66_02233F74

	thumb_func_start ov66_02233FA0
ov66_02233FA0: ; 0x02233FA0
	cmp r0, #0
	bne _02233FA8
	mov r0, #1
	bx lr
_02233FA8:
	ldr r0, _02233FB8 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02233FBC ; =0x00000132
	strb r2, [r1, r0]
	mov r0, #0
	bx lr
	nop
_02233FB8: .word 0x0225B6C0
_02233FBC: .word 0x00000132
	thumb_func_end ov66_02233FA0

	thumb_func_start ov66_02233FC0
ov66_02233FC0: ; 0x02233FC0
	push {r3, lr}
	cmp r0, #0
	bne _02233FD6
	ldr r0, _02233FE4 ; =0x0225B6C0
	ldr r3, [r0, #0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r3, r0
	bl ov66_0223431C
	pop {r3, pc}
_02233FD6:
	ldr r0, _02233FE4 ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02233FE8 ; =0x00000132
	strb r2, [r1, r0]
	pop {r3, pc}
	nop
_02233FE4: .word 0x0225B6C0
_02233FE8: .word 0x00000132
	thumb_func_end ov66_02233FC0

	thumb_func_start ov66_02233FEC
ov66_02233FEC: ; 0x02233FEC
	push {r3, lr}
	cmp r0, #0
	bne _02234000
	ldr r0, _0223400C ; =0x0225B6C0
	ldr r2, [r0, #0]
	ldr r0, _02234010 ; =0x000006A8
	add r0, r2, r0
	bl ov66_0223439C
	pop {r3, pc}
_02234000:
	ldr r0, _0223400C ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02234014 ; =0x00000132
	strb r2, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_0223400C: .word 0x0225B6C0
_02234010: .word 0x000006A8
_02234014: .word 0x00000132
	thumb_func_end ov66_02233FEC

	thumb_func_start ov66_02234018
ov66_02234018: ; 0x02234018
	push {r3, lr}
	ldr r0, _0223403C ; =0x0225B6C0
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _0223402C
	bl sub_02022974
_0223402C:
	ldr r0, _0223403C ; =0x0225B6C0
	mov r2, #2
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #6
	str r2, [r1, r0]
	pop {r3, pc}
	nop
_0223403C: .word 0x0225B6C0
	thumb_func_end ov66_02234018

	thumb_func_start ov66_02234040
ov66_02234040: ; 0x02234040
	ldr r0, _0223404C ; =0x0225B6C0
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02234050 ; =0x00000131
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_0223404C: .word 0x0225B6C0
_02234050: .word 0x00000131
	thumb_func_end ov66_02234040

	thumb_func_start ov66_02234054
ov66_02234054: ; 0x02234054
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223406C ; =0x000005B8
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xe4
	bl memset
	ldr r0, _02234070 ; =0x0000069C
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0223406C: .word 0x000005B8
_02234070: .word 0x0000069C
	thumb_func_end ov66_02234054

	thumb_func_start ov66_02234074
ov66_02234074: ; 0x02234074
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r7, r3, #0
	str r2, [sp]
	cmp r6, #3
	blt _02234086
	bl sub_02022974
_02234086:
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_0223412C
	cmp r0, #1
	bne _022340A4
	mov r0, #0x4c
	mul r0, r6
	add r1, r5, r0
	mov r0, #6
	lsl r0, r0, #8
	ldr r1, [r1, r0]
	ldr r0, [sp]
	cmp r0, r1
	bne _022340E2
_022340A4:
	mov r0, #0x4c
	add r4, r6, #0
	mul r4, r0
	ldr r0, _022340E4 ; =0x000005B8
	add r1, r5, r4
	add r3, r1, r0
	mov r2, #8
_022340B2:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022340B2
	ldr r0, [r7, #0]
	str r0, [r3, #0]
	ldr r0, _022340E8 ; =0x000005FC
	add r2, r5, r0
	ldrh r1, [r2, r4]
	cmp r1, #0
	bne _022340E2
	mov r1, #1
	strh r1, [r2, r4]
	add r1, r0, #4
	ldr r0, [sp]
	add r2, r5, r4
	str r0, [r2, r1]
	add r0, r5, #0
	add r1, r6, #0
	bl ov66_0223414C
	ldr r1, _022340EC ; =0x000005FE
	add r2, r5, r4
	strh r0, [r2, r1]
_022340E2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022340E4: .word 0x000005B8
_022340E8: .word 0x000005FC
_022340EC: .word 0x000005FE
	thumb_func_end ov66_02234074

	thumb_func_start ov66_022340F0
ov66_022340F0: ; 0x022340F0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blt _02234100
	bl sub_02022974
_02234100:
	add r0, r5, #0
	add r1, r4, #0
	bl ov66_0223412C
	cmp r0, #1
	bne _02234126
	mov r0, #0x4c
	mul r0, r4
	add r2, r5, r0
	mov r0, #6
	lsl r0, r0, #8
	ldr r1, [r2, r0]
	cmp r6, r1
	bne _02234126
	mov r1, #0
	sub r0, r0, #4
	strh r1, [r2, r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02234126:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov66_022340F0

	thumb_func_start ov66_0223412C
ov66_0223412C: ; 0x0223412C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0223413A
	bl sub_02022974
_0223413A:
	mov r0, #0x4c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02234148 ; =0x000005FC
	ldrh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_02234148: .word 0x000005FC
	thumb_func_end ov66_0223412C

	thumb_func_start ov66_0223414C
ov66_0223414C: ; 0x0223414C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl ov66_0223412C
	cmp r0, #0
	bne _02234162
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02234162:
	add r0, r4, #0
	add r1, r5, #0
	bl ov66_022341C0
	add r1, sp, #0
	bl ov66_02234294
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r2, [r4, r1]
	ldr r3, [sp]
	ldr r1, [sp, #4]
	sub r0, r0, r3
	sbc r2, r1
	mov r3, #0
	mov r1, #0x1e
	sub r1, r1, r0
	sbc r3, r2
	bge _02234192
	mov r0, #0x1e
	mov r2, #0
	b _022341A4
_02234192:
	mov r1, #0
	mov r3, #0
	sub r1, r0, r1
	mov ip, r2
	mov r1, ip
	sbc r1, r3
	bge _022341A4
	mov r0, #0
	add r2, r0, #0
_022341A4:
	mov r1, #0x3c
	mov r3, #0
	sub r0, r1, r0
	mov ip, r3
	mov r1, ip
	sbc r1, r2
	mov r2, #0x1e
	bl _ull_mul
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov66_0223414C

	thumb_func_start ov66_022341C0
ov66_022341C0: ; 0x022341C0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #3
	blt _022341CE
	bl sub_02022974
_022341CE:
	mov r0, #0x4c
	add r4, r6, #0
	mul r4, r0
	ldr r0, _022341EC ; =0x000005FC
	add r1, r5, r4
	ldrh r0, [r1, r0]
	cmp r0, #1
	beq _022341E2
	bl sub_02022974
_022341E2:
	ldr r0, _022341F0 ; =0x000005B8
	add r0, r5, r0
	add r0, r0, r4
	pop {r4, r5, r6, pc}
	nop
_022341EC: .word 0x000005FC
_022341F0: .word 0x000005B8
	thumb_func_end ov66_022341C0

	thumb_func_start ov66_022341F4
ov66_022341F4: ; 0x022341F4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02234274 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _02234278 ; =0x0000069E
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0223422E
	bl ov4_021D2610
	add r4, r0, #0
	cmp r4, #4
	bls _02234210
	bl sub_02022974
_02234210:
	ldr r0, _02234274 ; =0x0225B6C0
	ldr r1, [r0, #0]
	ldr r0, _0223427C ; =0x000005B8
	add r2, r1, r0
	add r0, #0xe4
	ldrh r1, [r1, r0]
	mov r0, #0x4c
	mul r0, r1
	add r0, r2, r0
	ldr r1, [r0, #8]
	cmp r1, r4
	beq _0223422E
	str r4, [r0, #8]
	blx ov66_02236AC4
_0223422E:
	mov r4, #0
	ldr r6, _02234274 ; =0x0225B6C0
	ldr r7, _02234280 ; =0x000005FC
	add r5, r4, #0
_02234236:
	ldr r0, [r6, #0]
	add r0, r0, r5
	ldrh r1, [r0, r7]
	cmp r1, #1
	bne _0223426A
	ldr r1, _02234284 ; =0x000005FE
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02234252
	ldr r1, _02234284 ; =0x000005FE
	ldrh r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, _02234284 ; =0x000005FE
	strh r2, [r0, r1]
_02234252:
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl ov66_0223414C
	ldr r1, [r6, #0]
	ldr r2, _02234284 ; =0x000005FE
	add r1, r1, r5
	ldrh r2, [r1, r2]
	cmp r0, r2
	bhs _0223426A
	ldr r2, _02234284 ; =0x000005FE
	strh r0, [r1, r2]
_0223426A:
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #3
	blt _02234236
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234274: .word 0x0225B6C0
_02234278: .word 0x0000069E
_0223427C: .word 0x000005B8
_02234280: .word 0x000005FC
_02234284: .word 0x000005FE
	thumb_func_end ov66_022341F4

	thumb_func_start ov66_02234288
ov66_02234288: ; 0x02234288
	ldr r2, [r1, #0]
	ldr r1, [r1, #4]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02234288

	thumb_func_start ov66_02234294
ov66_02234294: ; 0x02234294
	ldr r2, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r2, [r1, #0]
	str r0, [r1, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov66_02234294

	thumb_func_start ov66_022342A0
ov66_022342A0: ; 0x022342A0
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022342A0

	thumb_func_start ov66_022342A4
ov66_022342A4: ; 0x022342A4
	push {r3, lr}
	ldr r2, _022342C4 ; =0x0000069E
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _022342B4
	bl ov66_02233064
	pop {r3, pc}
_022342B4:
	cmp r0, #0
	bne _022342C2
	ldr r0, _022342C8 ; =0x0225B6C0
	mov r3, #1
	ldr r1, [r0, #0]
	add r0, r2, #1
	strb r3, [r1, r0]
_022342C2:
	pop {r3, pc}
	; .align 2, 0
_022342C4: .word 0x0000069E
_022342C8: .word 0x0225B6C0
	thumb_func_end ov66_022342A4

	thumb_func_start ov66_022342CC
ov66_022342CC: ; 0x022342CC
	push {r4, r5}
	ldrh r2, [r0, #0xe]
	mov r3, #0
	add r4, r3, #0
	cmp r2, #0
	ble _022342EC
	add r5, r0, #0
_022342DA:
	ldr r2, [r5, #0x14]
	cmp r1, r2
	bne _022342E2
	ldr r3, [r5, #0x10]
_022342E2:
	ldrh r2, [r0, #0xe]
	add r4, r4, #1
	add r5, #8
	cmp r4, r2
	blt _022342DA
_022342EC:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov66_022342CC

	thumb_func_start ov66_022342F4
ov66_022342F4: ; 0x022342F4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r2, #0
	lsl r1, r5, #3
	bl sub_02018144
	str r0, [r4, #0]
	strh r5, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	pop {r3, r4, r5, pc}
	thumb_func_end ov66_022342F4

	thumb_func_start ov66_0223430C
ov66_0223430C: ; 0x0223430C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov66_0223430C

	thumb_func_start ov66_0223431C
ov66_0223431C: ; 0x0223431C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r4, r2, #0
	add r6, r1, #0
	cmp r4, r0
	blo _0223432E
	bl sub_02022974
_0223432E:
	ldrh r0, [r5, #4]
	cmp r4, r0
	blo _02234336
	add r4, r0, #0
_02234336:
	ldr r1, [r5, #0]
	add r0, r6, #0
	lsl r2, r4, #3
	bl MIi_CpuCopy32
	strh r4, [r5, #6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov66_0223431C

	thumb_func_start ov66_02234344
ov66_02234344: ; 0x02234344
	push {r3, r4}
	ldrh r2, [r0, #6]
	mov r3, #0
	cmp r2, #0
	ble _02234366
	ldr r4, [r0, #0]
_02234350:
	ldr r2, [r4, #0]
	cmp r1, r2
	bne _0223435C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0223435C:
	ldrh r2, [r0, #6]
	add r3, r3, #1
	add r4, #8
	cmp r3, r2
	blt _02234350
_02234366:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov66_02234344

	thumb_func_start ov66_0223436C
ov66_0223436C: ; 0x0223436C
	push {r4, r5}
	ldrh r2, [r0, #6]
	mov r3, #0
	cmp r2, #0
	ble _02234394
	ldr r5, [r0, #0]
	add r4, r5, #0
_0223437A:
	ldr r2, [r4, #0]
	cmp r1, r2
	bne _0223438A
	lsl r0, r3, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	pop {r4, r5}
	bx lr
_0223438A:
	ldrh r2, [r0, #6]
	add r3, r3, #1
	add r4, #8
	cmp r3, r2
	blt _0223437A
_02234394:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov66_0223436C

	thumb_func_start ov66_0223439C
ov66_0223439C: ; 0x0223439C
	ldr r3, _022343A4 ; =memcpy
	mov r2, #0xb6
	lsl r2, r2, #2
	bx r3
	; .align 2, 0
_022343A4: .word memcpy
	thumb_func_end ov66_0223439C

	.rodata


	.global Unk_ov66_02258B20
Unk_ov66_02258B20: ; 0x02258B20
	.incbin "incbin/overlay66_rodata.bin", 0x208, 0x4


	.data


	.global Unk_ov66_02258DF0
Unk_ov66_02258DF0: ; 0x02258DF0
	.incbin "incbin/overlay66_data.bin", 0xD0, 0xD4 - 0xD0

	.global Unk_ov66_02258DF4
Unk_ov66_02258DF4: ; 0x02258DF4
	.incbin "incbin/overlay66_data.bin", 0xD4, 0xE4 - 0xD4

	.global Unk_ov66_02258E04
Unk_ov66_02258E04: ; 0x02258E04
	.incbin "incbin/overlay66_data.bin", 0xE4, 0xF4 - 0xE4

	.global Unk_ov66_02258E14
Unk_ov66_02258E14: ; 0x02258E14
	.incbin "incbin/overlay66_data.bin", 0xF4, 0x7


	.bss


	.global Unk_ov66_0225B6C0
Unk_ov66_0225B6C0: ; 0x0225B6C0
	.space 0x4

