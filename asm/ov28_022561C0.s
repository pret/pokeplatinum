	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov28_022561C0
ov28_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov28_022561D4
	ldr r1, _022561D0 ; =ov28_02256324
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov28_022561D4
_022561D0: .word ov28_02256324
	thumb_func_end ov28_022561C0

	thumb_func_start ov28_022561D4
ov28_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x28
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256208
	ldr r1, [sp]
	add r2, r7, #0
	bl ov28_02256210
	cmp r0, #0
	beq _02256208
	ldr r0, _0225620C ; =ov28_022562CC
	str r6, [r4, #0x10]
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256208:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225620C: .word ov28_022562CC
	thumb_func_end ov28_022561D4

	thumb_func_start ov28_02256210
ov28_02256210: ; 0x02256210
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r0, #0x14
	add r1, #0x18
	bl ov28_0225697C
	cmp r0, #0
	beq _0225628A
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #3]
	strb r0, [r4, #2]
	strb r0, [r4, #4]
	mov r0, #0x11
	strh r0, [r4, #6]
	sub r0, #0x12
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0xa
	bl ov28_02256E9C
	add r0, r4, #0
	add r0, #0x20
	mov r1, #0xa
	bl ov28_02256E9C
	add r0, r4, #0
	add r0, #0x24
	mov r1, #0xa
	bl ov28_02256E9C
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02256268
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02256268
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0225626E
_02256268:
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0225626E:
	mov r0, #8
	str r0, [sp]
	ldr r0, _02256290 ; =0x02257658
	ldr r2, _02256294 ; =ov28_02256344
	mov r1, #0x11
	add r3, r4, #0
	bl ov25_02255ACC
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _0225628A
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0225628A:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02256290: .word 0x02257658
_02256294: .word ov28_02256344
	thumb_func_end ov28_02256210

	thumb_func_start ov28_02256298
ov28_02256298: ; 0x02256298
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022562A6
	bl ov28_02256EC0
_022562A6:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _022562B0
	bl ov28_02256EC0
_022562B0:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _022562BA
	bl ov28_02256EC0
_022562BA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022562C4
	bl ov25_02255B34
_022562C4:
	ldr r0, [r4, #0x14]
	bl ov28_022569AC
	pop {r4, pc}
	thumb_func_end ov28_02256298

	thumb_func_start ov28_022562CC
ov28_022562CC: ; 0x022562CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _022562E4
	add r0, r4, #0
	mov r1, #6
	bl ov28_0225632C
	mov r0, #0
	strb r0, [r4, #3]
_022562E4:
	ldrb r0, [r4]
	cmp r0, #7
	bhs _0225631E
	mov r0, #0x11
	strh r0, [r4, #6]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	bl ov25_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02256320 ; =0x0225763C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225631E
	add r0, r4, #0
	bl ov28_02256298
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x10]
	bl ov25_02254260
_0225631E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256320: .word 0x0225763C
	thumb_func_end ov28_022562CC

	thumb_func_start ov28_02256324
ov28_02256324: ; 0x02256324
	mov r1, #1
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end ov28_02256324

	thumb_func_start ov28_0225632C
ov28_0225632C: ; 0x0225632C
	ldrb r2, [r0, #3]
	cmp r2, #0
	bne _02256334
	b _02256336
_02256334:
	mov r1, #6
_02256336:
	strb r1, [r0]
	ldrb r1, [r0]
	strb r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov28_0225632C

	thumb_func_start ov28_02256344
ov28_02256344: ; 0x02256344
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r3, #0
	cmp r2, #0
	beq _02256356
	cmp r2, #1
	beq _02256362
	b _0225636C
_02256356:
	strh r5, [r4, #0x18]
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl ov28_022569B8
	b _0225636C
_02256362:
	strh r5, [r4, #0x18]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ov28_022569B8
_0225636C:
	cmp r6, #3
	bne _02256372
	strh r5, [r4, #6]
_02256372:
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02256344

	thumb_func_start ov28_02256374
ov28_02256374: ; 0x02256374
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256384
	cmp r0, #1
	beq _02256394
	b _022563AE
_02256384:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563AE
_02256394:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov28_022569DC
	cmp r0, #0
	beq _022563AE
	ldr r0, [r4, #0x10]
	bl ov25_0225424C
	add r0, r4, #0
	mov r1, #1
	bl ov28_0225632C
_022563AE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov28_02256374

	thumb_func_start ov28_022563B4
ov28_022563B4: ; 0x022563B4
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022563C4
	cmp r1, #1
	beq _02256468
	b _02256488
_022563C4:
	mov r1, #0
	mvn r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	add r2, r1, #0
	sub r2, #0xa
	cmp r2, #7
	bhi _0225641E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022563E0: ; jump table
	.short _022563FA - _022563E0 - 2 ; case 0
	.short _02256400 - _022563E0 - 2 ; case 1
	.short _02256400 - _022563E0 - 2 ; case 2
	.short _02256400 - _022563E0 - 2 ; case 3
	.short _02256400 - _022563E0 - 2 ; case 4
	.short _02256410 - _022563E0 - 2 ; case 5
	.short _022563F0 - _022563E0 - 2 ; case 6
	.short _02256440 - _022563E0 - 2 ; case 7
_022563F0:
	bl ov28_02256868
	mov r0, #4
	str r0, [r4, #8]
	b _02256440
_022563FA:
	mov r0, #1
	strb r0, [r4, #4]
	b _02256440
_02256400:
	strh r1, [r4, #0x1a]
	mov r0, #0
	strb r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #8]
	mov r0, #2
	strb r0, [r4, #2]
	b _02256440
_02256410:
	ldr r1, [r4, #0x1c]
	bl ov28_02256914
	ldr r0, [r4, #0x1c]
	bl ov28_02256EC8
	b _02256440
_0225641E:
	ldrb r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	beq _02256434
	bl ov28_022571B8
	cmp r0, #0
	beq _02256440
	mov r0, #3
	str r0, [r4, #8]
	b _02256440
_02256434:
	bl ov28_0225717C
	cmp r0, #0
	beq _02256440
	mov r0, #3
	str r0, [r4, #8]
_02256440:
	mov r0, #0
	ldr r1, [r4, #8]
	mvn r0, r0
	cmp r1, r0
	beq _02256458
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256488
_02256458:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256488
	add r0, r4, #0
	bl ov28_0225632C
	b _02256488
_02256468:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _02256488
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256484
	add r0, r4, #0
	bl ov28_0225632C
	b _02256488
_02256484:
	mov r0, #0
	strb r0, [r4, #1]
_02256488:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov28_022563B4

	thumb_func_start ov28_0225648C
ov28_0225648C: ; 0x0225648C
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _0225649C
	cmp r1, #1
	beq _02256564
	b _02256584
_0225649C:
	mov r1, #0
	mvn r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	add r2, r1, #0
	sub r2, #0xa
	cmp r2, #7
	bhi _02256522
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022564B8: ; jump table
	.short _022564D6 - _022564B8 - 2 ; case 0
	.short _022564EA - _022564B8 - 2 ; case 1
	.short _022564EA - _022564B8 - 2 ; case 2
	.short _022564EA - _022564B8 - 2 ; case 3
	.short _022564EA - _022564B8 - 2 ; case 4
	.short _022564F2 - _022564B8 - 2 ; case 5
	.short _022564C8 - _022564B8 - 2 ; case 6
	.short _0225653C - _022564B8 - 2 ; case 7
_022564C8:
	bl ov28_02256868
	mov r0, #4
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #2]
	b _0225653C
_022564D6:
	ldr r0, [r4, #0x20]
	bl ov28_02256EC8
	mov r0, #5
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #4]
	mov r0, #3
	strb r0, [r4, #2]
	b _0225653C
_022564EA:
	strh r1, [r4, #0x1a]
	mov r0, #8
	str r0, [r4, #8]
	b _0225653C
_022564F2:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ov28_02256ED8
	ldrh r1, [r4, #0x1a]
	add r0, r4, #0
	bl ov28_02256888
	cmp r0, #0
	beq _02256518
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl ov28_02256914
	mov r0, #6
	str r0, [r4, #8]
	mov r0, #4
	strb r0, [r4, #2]
	b _0225653C
_02256518:
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #5
	strb r0, [r4, #2]
	b _0225653C
_02256522:
	ldr r0, [r4, #0x20]
	bl ov28_02256EC8
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0x20]
	bl ov28_0225717C
	cmp r0, #0
	beq _0225653C
	mov r0, #5
	str r0, [r4, #8]
	mov r0, #3
	strb r0, [r4, #2]
_0225653C:
	mov r0, #0
	ldr r1, [r4, #8]
	mvn r0, r0
	cmp r1, r0
	beq _02256554
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256584
_02256554:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256584
	add r0, r4, #0
	bl ov28_0225632C
	b _02256584
_02256564:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _02256584
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256580
	add r0, r4, #0
	bl ov28_0225632C
	b _02256584
_02256580:
	mov r0, #0
	strb r0, [r4, #1]
_02256584:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov28_0225648C

	thumb_func_start ov28_02256588
ov28_02256588: ; 0x02256588
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02256598
	cmp r1, #1
	beq _0225667A
	b _0225669A
_02256598:
	mov r1, #0
	mvn r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	add r2, r1, #0
	sub r2, #0xa
	cmp r2, #7
	bhi _02256630
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022565B4: ; jump table
	.short _022565D2 - _022565B4 - 2 ; case 0
	.short _022565D8 - _022565B4 - 2 ; case 1
	.short _022565D8 - _022565B4 - 2 ; case 2
	.short _022565D8 - _022565B4 - 2 ; case 3
	.short _022565D8 - _022565B4 - 2 ; case 4
	.short _02256606 - _022565B4 - 2 ; case 5
	.short _022565C4 - _022565B4 - 2 ; case 6
	.short _02256652 - _022565B4 - 2 ; case 7
_022565C4:
	bl ov28_02256868
	mov r0, #4
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #2]
	b _02256652
_022565D2:
	mov r0, #1
	strb r0, [r4, #4]
	b _02256652
_022565D8:
	ldrh r1, [r4, #0x1a]
	bl ov28_02256888
	cmp r0, #0
	beq _022565FC
	ldrh r0, [r4, #6]
	strh r0, [r4, #0x1a]
	mov r0, #0
	strb r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	bl ov28_02256ED8
	mov r0, #7
	str r0, [r4, #8]
	mov r0, #2
	strb r0, [r4, #2]
	b _02256652
_022565FC:
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #5
	strb r0, [r4, #2]
	b _02256652
_02256606:
	ldrh r1, [r4, #0x1a]
	bl ov28_02256888
	cmp r0, #0
	beq _02256626
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl ov28_02256914
	mov r0, #6
	str r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #4]
	mov r0, #4
	strb r0, [r4, #2]
	b _02256652
_02256626:
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #5
	strb r0, [r4, #2]
	b _02256652
_02256630:
	ldrb r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0x20]
	beq _02256646
	bl ov28_022571B8
	cmp r0, #0
	beq _02256652
	mov r0, #5
	str r0, [r4, #8]
	b _02256652
_02256646:
	bl ov28_0225717C
	cmp r0, #0
	beq _02256652
	mov r0, #5
	str r0, [r4, #8]
_02256652:
	mov r0, #0
	ldr r1, [r4, #8]
	mvn r0, r0
	cmp r1, r0
	beq _0225666A
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225669A
_0225666A:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _0225669A
	add r0, r4, #0
	bl ov28_0225632C
	b _0225669A
_0225667A:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _0225669A
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256696
	add r0, r4, #0
	bl ov28_0225632C
	b _0225669A
_02256696:
	mov r0, #0
	strb r0, [r4, #1]
_0225669A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov28_02256588

	thumb_func_start ov28_022566A0
ov28_022566A0: ; 0x022566A0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022566B0
	cmp r1, #1
	beq _02256784
	b _022567A4
_022566B0:
	mov r1, #0
	mvn r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	add r2, r1, #0
	sub r2, #0xa
	cmp r2, #7
	bhi _02256742
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022566CC: ; jump table
	.short _022566EA - _022566CC - 2 ; case 0
	.short _022566FA - _022566CC - 2 ; case 1
	.short _022566FA - _022566CC - 2 ; case 2
	.short _022566FA - _022566CC - 2 ; case 3
	.short _022566FA - _022566CC - 2 ; case 4
	.short _02256712 - _022566CC - 2 ; case 5
	.short _022566DC - _022566CC - 2 ; case 6
	.short _0225675C - _022566CC - 2 ; case 7
_022566DC:
	bl ov28_02256868
	mov r0, #4
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #2]
	b _0225675C
_022566EA:
	bl ov28_02256868
	mov r0, #3
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #4]
	strb r0, [r4, #2]
	b _0225675C
_022566FA:
	strh r1, [r4, #0x1a]
	mov r0, #8
	str r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	bl ov28_02256ED8
	mov r0, #2
	strb r0, [r4, #2]
	b _0225675C
_02256712:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	bl ov28_02256ED8
	ldrh r1, [r4, #0x1a]
	add r0, r4, #0
	bl ov28_02256888
	cmp r0, #0
	beq _02256738
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl ov28_02256914
	mov r0, #6
	str r0, [r4, #8]
	mov r0, #0
	strb r0, [r4, #4]
	b _0225675C
_02256738:
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #5
	strb r0, [r4, #2]
	b _0225675C
_02256742:
	ldr r0, [r4, #0x1c]
	bl ov28_02256EC8
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0x1c]
	bl ov28_0225717C
	cmp r0, #0
	beq _02256758
	mov r0, #3
	str r0, [r4, #8]
_02256758:
	mov r0, #1
	strb r0, [r4, #2]
_0225675C:
	mov r0, #0
	ldr r1, [r4, #8]
	mvn r0, r0
	cmp r1, r0
	beq _02256774
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022567A4
_02256774:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _022567A4
	add r0, r4, #0
	bl ov28_0225632C
	b _022567A4
_02256784:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _022567A4
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _022567A0
	add r0, r4, #0
	bl ov28_0225632C
	b _022567A4
_022567A0:
	mov r0, #0
	strb r0, [r4, #1]
_022567A4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov28_022566A0

	thumb_func_start ov28_022567A8
ov28_022567A8: ; 0x022567A8
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022567B8
	cmp r1, #1
	beq _02256842
	b _02256862
_022567B8:
	mov r1, #0
	mvn r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	sub r1, #0xa
	cmp r1, #7
	bhi _02256800
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022567D2: ; jump table
	.short _022567F0 - _022567D2 - 2 ; case 0
	.short _0225681A - _022567D2 - 2 ; case 1
	.short _0225681A - _022567D2 - 2 ; case 2
	.short _0225681A - _022567D2 - 2 ; case 3
	.short _0225681A - _022567D2 - 2 ; case 4
	.short _0225681A - _022567D2 - 2 ; case 5
	.short _022567E2 - _022567D2 - 2 ; case 6
	.short _0225681A - _022567D2 - 2 ; case 7
_022567E2:
	bl ov28_02256868
	mov r0, #3
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #2]
	b _0225681A
_022567F0:
	bl ov28_02256868
	mov r0, #3
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #4]
	strb r0, [r4, #2]
	b _0225681A
_02256800:
	add r0, r4, #0
	bl ov28_02256868
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0x1c]
	bl ov28_0225717C
	cmp r0, #0
	beq _02256816
	mov r0, #3
	str r0, [r4, #8]
_02256816:
	mov r0, #1
	strb r0, [r4, #2]
_0225681A:
	mov r0, #0
	ldr r1, [r4, #8]
	mvn r0, r0
	cmp r1, r0
	beq _02256832
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256862
_02256832:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256862
	add r0, r4, #0
	bl ov28_0225632C
	b _02256862
_02256842:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _02256862
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _0225685E
	add r0, r4, #0
	bl ov28_0225632C
	b _02256862
_0225685E:
	mov r0, #0
	strb r0, [r4, #1]
_02256862:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov28_022567A8

	thumb_func_start ov28_02256868
ov28_02256868: ; 0x02256868
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl ov28_02256EC8
	ldr r0, [r4, #0x20]
	bl ov28_02256EC8
	ldr r0, [r4, #0x24]
	bl ov28_02256EC8
	mov r0, #0x11
	strh r0, [r4, #0x1a]
	mov r0, #0
	strb r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov28_02256868

	thumb_func_start ov28_02256888
ov28_02256888: ; 0x02256888
	push {r4, lr}
	sub r1, #0xb
	add r4, r0, #0
	cmp r1, #3
	bhi _022568D4
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225689E: ; jump table
	.short _022568B2 - _0225689E - 2 ; case 0
	.short _022568A6 - _0225689E - 2 ; case 1
	.short _022568BE - _0225689E - 2 ; case 2
	.short _022568CA - _0225689E - 2 ; case 3
_022568A6:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl ov28_02256EE8
	b _022568D4
_022568B2:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl ov28_02256F74
	b _022568D4
_022568BE:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl ov28_02257028
	b _022568D4
_022568CA:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl ov28_02257058
_022568D4:
	ldr r0, [r4, #0x24]
	mov r1, #0xa
	bl ov28_02257240
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov28_02256888

	thumb_func_start ov28_022568E0
ov28_022568E0: ; 0x022568E0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022568F0
	cmp r0, #1
	beq _02256900
	b _0225690E
_022568F0:
	ldr r0, [r4, #0x14]
	mov r1, #0xa
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225690E
_02256900:
	ldr r0, [r4, #0x14]
	bl ov28_022569E8
	cmp r0, #0
	beq _0225690E
	mov r0, #1
	pop {r4, pc}
_0225690E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov28_022568E0

	thumb_func_start ov28_02256914
ov28_02256914: ; 0x02256914
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov28_02257468
	add r4, r0, #0
	mov r2, #0
	mov r0, #0
	sub r0, r0, r4
	sbc r2, r1
	bge _02256976
	mov r2, #0
	ldr r0, _02256978 ; =0x000001ED
	sub r0, r0, r4
	sbc r2, r1
	blt _02256976
	ldr r0, [r5, #0x10]
	bl ov25_02254544
	bl sub_02027560
	add r5, r0, #0
	bl sub_02027474
	cmp r0, #0
	beq _0225694E
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
	b _02256958
_0225694E:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020775C4
	add r4, r0, #0
_02256958:
	cmp r4, #0
	beq _02256976
	ldr r0, _02256978 ; =0x000001ED
	cmp r4, r0
	bhi _02256976
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02026FE8
	cmp r0, #0
	beq _02256976
	add r0, r4, #0
	mov r1, #0
	bl ov25_02254444
_02256976:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256978: .word 0x000001ED
	thumb_func_end ov28_02256914

	.rodata


	.global Unk_ov28_0225763C
Unk_ov28_0225763C: ; 0x0225763C
	.incbin "incbin/overlay28_rodata.bin", 0x0, 0x1C - 0x0

	.global Unk_ov28_02257658
Unk_ov28_02257658: ; 0x02257658
	.incbin "incbin/overlay28_rodata.bin", 0x1C, 0x44

	.section .sinit, 4
	.word ov28_022561C0
