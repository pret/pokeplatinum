	.include "macros/function.inc"
	.include "include/unk_0202631C.inc"

	

	.text


	thumb_func_start sub_0202631C
sub_0202631C: ; 0x0202631C
	mov r0, #0xc9
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202631C

	thumb_func_start sub_02026324
sub_02026324: ; 0x02026324
	push {r4, lr}
	mov r1, #0xc9
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	bl sub_02026D6C
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_02026324

	thumb_func_start sub_02026338
sub_02026338: ; 0x02026338
	ldr r3, _02026340 ; =MI_CpuCopy8
	mov r2, #0xc9
	lsl r2, r2, #2
	bx r3
	; .align 2, 0
_02026340: .word MI_CpuCopy8
	thumb_func_end sub_02026338

	thumb_func_start sub_02026344
sub_02026344: ; 0x02026344
	push {r3, lr}
	cmp r0, #0
	beq _02026350
	ldr r1, _0202635C ; =0x000001ED
	cmp r0, r1
	bls _02026358
_02026350:
	bl GF_AssertFail
	mov r0, #1
	pop {r3, pc}
_02026358:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0202635C: .word 0x000001ED
	thumb_func_end sub_02026344

	thumb_func_start sub_02026360
sub_02026360: ; 0x02026360
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bne _0202639E
	cmp r4, #2
	blo _02026374
	bl GF_AssertFail
_02026374:
	ldr r0, [sp]
	add r2, r5, #0
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r3, r1, #0
	mov r0, #7
	and r3, r0
	mov r6, #1
	lsl r6, r3
	add r2, #0xc4
	asr r1, r1, #3
	ldrb r0, [r2, r1]
	mvn r6, r6
	and r0, r6
	strb r0, [r2, r1]
	add r0, r4, #0
	ldrb r6, [r2, r1]
	lsl r0, r3
	orr r0, r6
	strb r0, [r2, r1]
_0202639E:
	cmp r4, #2
	blo _020263A6
	bl GF_AssertFail
_020263A6:
	ldr r0, [sp]
	add r5, #0x84
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #7
	add r2, r3, #0
	and r2, r0
	lsl r0, r7, #6
	add r1, r5, r0
	asr r0, r3, #3
	mov r3, #1
	lsl r3, r2
	ldrb r5, [r1, r0]
	mvn r3, r3
	and r3, r5
	strb r3, [r1, r0]
	add r3, r4, #0
	ldrb r5, [r1, r0]
	lsl r3, r2
	add r2, r5, #0
	orr r2, r3
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02026360

	thumb_func_start sub_020263D8
sub_020263D8: ; 0x020263D8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #2
	bls _020263EA
	bl GF_AssertFail
_020263EA:
	cmp r4, #2
	bne _020263F0
	mov r4, #0
_020263F0:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02026360
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020263D8

	thumb_func_start sub_02026400
sub_02026400: ; 0x02026400
	mov r1, #0x43
	mov r3, #0
	lsl r1, r1, #2
_02026406:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	cmp r2, #0xff
	beq _02026414
	add r3, r3, #1
	cmp r3, #0x1c
	blt _02026406
_02026414:
	add r0, r3, #0
	bx lr
	thumb_func_end sub_02026400

	thumb_func_start sub_02026418
sub_02026418: ; 0x02026418
	push {r3, r4}
	mov r2, #0x43
	mov r4, #0
	lsl r2, r2, #2
_02026420:
	add r3, r0, r4
	ldrb r3, [r3, r2]
	cmp r1, r3
	bne _0202642E
	mov r0, #1
	pop {r3, r4}
	bx lr
_0202642E:
	add r4, r4, #1
	cmp r4, #0x1c
	blt _02026420
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026418

	thumb_func_start sub_0202643C
sub_0202643C: ; 0x0202643C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	bl sub_02026418
	cmp r0, #0
	bne _02026460
	add r0, r5, #0
	bl sub_02026400
	cmp r0, #0x1c
	bge _02026460
	add r1, r5, r0
	mov r0, #0x43
	lsl r0, r0, #2
	strb r4, [r1, r0]
_02026460:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202643C

	thumb_func_start sub_02026464
sub_02026464: ; 0x02026464
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02026508 ; =0x000001A6
	add r5, r0, #0
	cmp r4, r1
	beq _02026488
	add r0, r1, #1
	cmp r4, r0
	beq _02026488
	add r0, r1, #0
	add r0, #0x46
	cmp r4, r0
	beq _02026488
	add r1, #0x41
	cmp r4, r1
	beq _02026488
	bl GF_AssertFail
_02026488:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _0202649A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202649A:
	ldr r1, _0202650C ; =0x000001E7
	cmp r4, r1
	bhi _020264C4
	bhs _020264E0
	add r0, r1, #0
	sub r0, #0x40
	cmp r4, r0
	bhi _020264E4
	add r0, r1, #0
	sub r0, #0x41
	cmp r4, r0
	blo _020264E4
	add r0, r1, #0
	sub r0, #0x41
	cmp r4, r0
	beq _020264CC
	add r0, r1, #0
	sub r0, #0x40
	cmp r4, r0
	beq _020264D2
	b _020264E4
_020264C4:
	add r0, r1, #5
	cmp r4, r0
	beq _020264D8
	b _020264E4
_020264CC:
	sub r1, #0xdf
	add r6, r5, r1
	b _020264E4
_020264D2:
	sub r1, #0xde
	add r6, r5, r1
	b _020264E4
_020264D8:
	mov r0, #0x32
	lsl r0, r0, #4
	add r6, r5, r0
	b _020264E4
_020264E0:
	ldr r0, _02026510 ; =0x00000321
	add r6, r5, r0
_020264E4:
	ldrb r1, [r6]
	mov r2, #1
	add r0, r1, #0
	tst r0, r2
	bne _020264F0
	mov r2, #0
_020264F0:
	mov r0, #2
	tst r0, r1
	beq _020264FA
	mov r0, #1
	b _020264FC
_020264FA:
	mov r0, #0
_020264FC:
	cmp r2, r0
	bne _02026504
	mov r0, #1
	pop {r4, r5, r6, pc}
_02026504:
	mov r0, #2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02026508: .word 0x000001A6
_0202650C: .word 0x000001E7
_02026510: .word 0x00000321
	thumb_func_end sub_02026464

	thumb_func_start sub_02026514
sub_02026514: ; 0x02026514
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _020265DC ; =0x000001A6
	add r7, r0, #0
	add r6, r2, #0
	cmp r5, r1
	beq _0202653A
	add r0, r1, #1
	cmp r5, r0
	beq _0202653A
	add r0, r1, #0
	add r0, #0x46
	cmp r5, r0
	beq _0202653A
	add r1, #0x41
	cmp r5, r1
	beq _0202653A
	bl GF_AssertFail
_0202653A:
	lsl r1, r5, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _0202654C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202654C:
	ldr r0, _020265E0 ; =0x000001E7
	cmp r5, r0
	bhi _02026576
	bhs _02026592
	add r1, r0, #0
	sub r1, #0x40
	cmp r5, r1
	bhi _02026596
	add r1, r0, #0
	sub r1, #0x41
	cmp r5, r1
	blo _02026596
	add r1, r0, #0
	sub r1, #0x41
	cmp r5, r1
	beq _0202657E
	add r1, r0, #0
	sub r1, #0x40
	cmp r5, r1
	beq _02026584
	b _02026596
_02026576:
	add r0, r0, #5
	cmp r5, r0
	beq _0202658A
	b _02026596
_0202657E:
	sub r0, #0xdf
	add r4, r7, r0
	b _02026596
_02026584:
	sub r0, #0xde
	add r4, r7, r0
	b _02026596
_0202658A:
	mov r0, #0x32
	lsl r0, r0, #4
	add r4, r7, r0
	b _02026596
_02026592:
	ldr r0, _020265E4 ; =0x00000321
	add r4, r7, r0
_02026596:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02026464
	mov r5, #0
	cmp r0, #0
	bls _020265D8
	mov r1, #1
_020265A6:
	add r2, r5, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	sub r2, r2, #1
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	add r7, r3, #0
	mov r2, #7
	asr r3, r3, #3
	and r7, r2
	add r2, r1, #0
	ldrb r3, [r4, r3]
	lsl r2, r7
	tst r2, r3
	beq _020265C8
	add r2, r1, #0
	b _020265CA
_020265C8:
	mov r2, #0
_020265CA:
	cmp r2, r6
	bne _020265D2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020265D2:
	add r5, r5, #1
	cmp r5, r0
	blo _020265A6
_020265D8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020265DC: .word 0x000001A6
_020265E0: .word 0x000001E7
_020265E4: .word 0x00000321
	thumb_func_end sub_02026514

	thumb_func_start sub_020265E8
sub_020265E8: ; 0x020265E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _020266EC ; =0x000001A6
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, r1
	beq _0202660E
	add r0, r1, #1
	cmp r5, r0
	beq _0202660E
	add r0, r1, #0
	add r0, #0x46
	cmp r5, r0
	beq _0202660E
	add r1, #0x41
	cmp r5, r1
	beq _0202660E
	bl GF_AssertFail
_0202660E:
	lsl r2, r7, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl sub_02026514
	cmp r0, #0
	bne _020266E8
	ldr r0, _020266F0 ; =0x000001E7
	cmp r5, r0
	bhi _02026648
	bhs _02026664
	add r1, r0, #0
	sub r1, #0x40
	cmp r5, r1
	bhi _02026668
	add r1, r0, #0
	sub r1, #0x41
	cmp r5, r1
	blo _02026668
	add r1, r0, #0
	sub r1, #0x41
	cmp r5, r1
	beq _02026650
	add r1, r0, #0
	sub r1, #0x40
	cmp r5, r1
	beq _02026656
	b _02026668
_02026648:
	add r0, r0, #5
	cmp r5, r0
	beq _0202665C
	b _02026668
_02026650:
	sub r0, #0xdf
	add r4, r6, r0
	b _02026668
_02026656:
	sub r0, #0xde
	add r4, r6, r0
	b _02026668
_0202665C:
	mov r0, #0x32
	lsl r0, r0, #4
	add r4, r6, r0
	b _02026668
_02026664:
	ldr r0, _020266F4 ; =0x00000321
	add r4, r6, r0
_02026668:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02026464
	add r5, r0, #0
	cmp r5, #2
	bge _020266E8
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	cmp r0, #2
	blo _02026688
	bl GF_AssertFail
_02026688:
	sub r0, r6, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r2, r1, #0
	mov r0, #7
	and r2, r0
	asr r1, r1, #3
	mov r3, #1
	lsl r3, r2
	ldrb r0, [r4, r1]
	mvn r3, r3
	and r0, r3
	strb r0, [r4, r1]
	lsl r0, r7, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	ldrb r3, [r4, r1]
	lsl r0, r2
	orr r0, r3
	strb r0, [r4, r1]
	cmp r5, #0
	bne _020266E8
	add r0, r5, #2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r6, #2
	blo _020266C2
	bl GF_AssertFail
_020266C2:
	sub r0, r5, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #7
	add r1, r2, #0
	and r1, r0
	asr r0, r2, #3
	mov r2, #1
	lsl r2, r1
	ldrb r3, [r4, r0]
	mvn r2, r2
	and r2, r3
	strb r2, [r4, r0]
	add r2, r6, #0
	ldrb r3, [r4, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r4, r0]
_020266E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020266EC: .word 0x000001A6
_020266F0: .word 0x000001E7
_020266F4: .word 0x00000321
	thumb_func_end sub_020265E8

	thumb_func_start sub_020266F8
sub_020266F8: ; 0x020266F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x67
	add r4, r1, #0
	lsl r0, r0, #2
	cmp r4, r0
	beq _02026710
	add r0, r0, #1
	cmp r4, r0
	beq _02026710
	bl GF_AssertFail
_02026710:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _02026722
	mov r0, #0
	pop {r3, r4, r5, pc}
_02026722:
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r4, r0
	bne _0202672E
	sub r0, #0x92
	b _02026730
_0202672E:
	sub r0, #0x91
_02026730:
	add r1, r5, r0
	mov r0, #0
	mov r3, #3
_02026736:
	lsl r2, r0, #0x10
	lsr r5, r2, #0x10
	asr r2, r5, #2
	ldrb r4, [r1, r2]
	lsl r2, r5, #0x1e
	lsr r2, r2, #0x1d
	asr r4, r2
	add r2, r4, #0
	and r2, r3
	cmp r2, #3
	beq _02026752
	add r0, r0, #1
	cmp r0, #3
	blt _02026736
_02026752:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020266F8

	thumb_func_start sub_02026754
sub_02026754: ; 0x02026754
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x67
	add r5, r1, #0
	lsl r0, r0, #2
	add r4, r2, #0
	cmp r5, r0
	beq _0202676E
	add r0, r0, #1
	cmp r5, r0
	beq _0202676E
	bl GF_AssertFail
_0202676E:
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _02026780
	mov r0, #0
	pop {r4, r5, r6, pc}
_02026780:
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r5, r0
	bne _0202678C
	sub r0, #0x92
	b _0202678E
_0202678C:
	sub r0, #0x91
_0202678E:
	add r1, r6, r0
	mov r0, #0
	mov r3, #3
_02026794:
	lsl r2, r0, #0x10
	lsr r6, r2, #0x10
	asr r2, r6, #2
	ldrb r5, [r1, r2]
	lsl r2, r6, #0x1e
	lsr r2, r2, #0x1d
	asr r5, r2
	add r2, r5, #0
	and r2, r3
	cmp r2, r4
	bne _020267AE
	mov r0, #1
	pop {r4, r5, r6, pc}
_020267AE:
	add r0, r0, #1
	cmp r0, #3
	blt _02026794
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02026754

	thumb_func_start sub_020267B8
sub_020267B8: ; 0x020267B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x67
	add r5, r1, #0
	lsl r0, r0, #2
	add r7, r2, #0
	cmp r5, r0
	beq _020267D2
	add r0, r0, #1
	cmp r5, r0
	beq _020267D2
	bl GF_AssertFail
_020267D2:
	lsl r2, r7, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl sub_02026754
	cmp r0, #0
	bne _02026830
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r5, r0
	bne _020267EE
	sub r0, #0x92
	b _020267F0
_020267EE:
	sub r0, #0x91
_020267F0:
	add r4, r6, r0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020266F8
	add r5, r0, #0
	cmp r5, #3
	bge _02026830
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _0202680C
	bl GF_AssertFail
_0202680C:
	lsl r0, r5, #0x10
	lsr r2, r0, #0x10
	lsl r0, r2, #0x1e
	lsr r1, r0, #0x1d
	asr r0, r2, #2
	mov r2, #3
	lsl r2, r1
	ldrb r3, [r4, r0]
	mvn r2, r2
	and r2, r3
	strb r2, [r4, r0]
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	ldrb r3, [r4, r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r4, r0]
_02026830:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020267B8

	thumb_func_start sub_02026834
sub_02026834: ; 0x02026834
	push {r3, r4}
	lsl r2, r2, #2
	add r2, #0x18
	mov r3, #0xf
	lsl r3, r2
	ldr r4, [r0, #0x3c]
	mvn r3, r3
	lsl r1, r2
	and r3, r4
	orr r1, r3
	str r1, [r0, #0x3c]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02026834

	thumb_func_start sub_02026850
sub_02026850: ; 0x02026850
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #4
	blo _02026860
	bl GF_AssertFail
_02026860:
	cmp r6, #0xf
	bls _02026868
	bl GF_AssertFail
_02026868:
	cmp r4, #2
	bhs _02026878
	add r0, r5, #4
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02026834
	pop {r4, r5, r6, pc}
_02026878:
	sub r2, r4, #2
	add r5, #0x44
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_02026834
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02026850

	thumb_func_start sub_0202688C
sub_0202688C: ; 0x0202688C
	cmp r1, #2
	bhs _020268A0
	ldr r2, [r0, #0x40]
	lsl r0, r1, #2
	add r0, #0x18
	add r1, r2, #0
	lsr r1, r0
	mov r0, #0xf
	and r0, r1
	bx lr
_020268A0:
	add r0, #0x80
	ldr r2, [r0, #0]
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r0, #0x18
	add r1, r2, #0
	lsr r1, r0
	mov r0, #0xf
	and r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202688C

	thumb_func_start sub_020268B8
sub_020268B8: ; 0x020268B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_020268BE:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202688C
	cmp r0, #0xf
	beq _020268D2
	add r4, r4, #1
	cmp r4, #4
	blt _020268BE
_020268D2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020268B8

	thumb_func_start sub_020268D8
sub_020268D8: ; 0x020268D8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_020268E0:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_0202688C
	cmp r5, r0
	bne _020268F2
	mov r0, #1
	pop {r4, r5, r6, pc}
_020268F2:
	add r4, r4, #1
	cmp r4, #4
	blt _020268E0
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020268D8

	thumb_func_start sub_020268FC
sub_020268FC: ; 0x020268FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _02026938 ; =0x00000182
	cmp r6, r0
	bne _02026936
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020268D8
	cmp r0, #0
	bne _02026936
	add r0, r5, #0
	bl sub_020268B8
	add r2, r0, #0
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl sub_02026850
_02026936:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02026938: .word 0x00000182
	thumb_func_end sub_020268FC

	thumb_func_start sub_0202693C
sub_0202693C: ; 0x0202693C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xf
_02026944:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_02026850
	add r4, r4, #1
	cmp r4, #4
	blt _02026944
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202693C

	thumb_func_start sub_02026958
sub_02026958: ; 0x02026958
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _020269A0 ; =0x000001DF
	add r5, r1, #0
	cmp r5, r0
	beq _02026968
	bl GF_AssertFail
_02026968:
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _0202697A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202697A:
	mov r2, #0xc7
	lsl r2, r2, #2
	mov r0, #0
	ldr r5, [r4, r2]
	add r1, r0, #0
	mov r3, #7
_02026986:
	lsl r2, r1, #1
	add r2, r1, r2
	add r4, r5, #0
	lsr r4, r2
	add r2, r4, #0
	and r2, r3
	cmp r2, #7
	beq _0202699E
	add r1, r1, #1
	add r0, r0, #1
	cmp r1, #6
	blt _02026986
_0202699E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020269A0: .word 0x000001DF
	thumb_func_end sub_02026958

	thumb_func_start sub_020269A4
sub_020269A4: ; 0x020269A4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _020269FC ; =0x000001DF
	add r5, r1, #0
	add r4, r2, #0
	cmp r5, r0
	beq _020269B6
	bl GF_AssertFail
_020269B6:
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #0
	bne _020269C8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020269C8:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02026958
	mov r1, #0
	cmp r0, #0
	bls _020269F8
	mov r2, #0xc7
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	mov r5, #7
_020269DE:
	lsl r3, r1, #1
	add r3, r1, r3
	add r6, r2, #0
	lsr r6, r3
	add r3, r6, #0
	and r3, r5
	cmp r3, r4
	bne _020269F2
	mov r0, #1
	pop {r4, r5, r6, pc}
_020269F2:
	add r1, r1, #1
	cmp r1, r0
	blo _020269DE
_020269F8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020269FC: .word 0x000001DF
	thumb_func_end sub_020269A4

	thumb_func_start sub_02026A00
sub_02026A00: ; 0x02026A00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02026A5C ; =0x000001DF
	add r6, r1, #0
	add r4, r2, #0
	cmp r6, r0
	beq _02026A12
	bl GF_AssertFail
_02026A12:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl sub_020269A4
	cmp r0, #0
	bne _02026A58
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02026958
	add r6, r0, #0
	cmp r6, #6
	bge _02026A58
	cmp r4, #7
	blo _02026A38
	bl GF_AssertFail
_02026A38:
	lsl r0, r6, #1
	mov r1, #0xc7
	lsl r1, r1, #2
	add r0, r6, r0
	mov r2, #7
	lsl r2, r0
	ldr r3, [r5, r1]
	mvn r2, r2
	and r2, r3
	str r2, [r5, r1]
	add r2, r4, #0
	ldr r3, [r5, r1]
	lsl r2, r0
	add r0, r3, #0
	orr r0, r2
	str r0, [r5, r1]
_02026A58:
	pop {r4, r5, r6, pc}
	nop
_02026A5C: .word 0x000001DF
	thumb_func_end sub_02026A00

	thumb_func_start sub_02026A60
sub_02026A60: ; 0x02026A60
	push {r4, r5, r6, lr}
	ldr r3, _02026B84 ; =0x000001A6
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, r3
	bgt _02026AA2
	bge _02026B0E
	add r6, r3, #0
	sub r6, #0x24
	cmp r4, r6
	bgt _02026A82
	sub r3, #0x24
	cmp r4, r3
	bge _02026B3A
	cmp r4, #0xc9
	beq _02026AD2
	pop {r4, r5, r6, pc}
_02026A82:
	add r0, r3, #0
	sub r0, #9
	cmp r4, r0
	bgt _02026B80
	add r0, r3, #0
	sub r0, #0xa
	cmp r4, r0
	blt _02026B80
	add r0, r3, #0
	sub r0, #0xa
	cmp r4, r0
	beq _02026AE2
	sub r3, #9
	cmp r4, r3
	beq _02026AF8
	pop {r4, r5, r6, pc}
_02026AA2:
	add r0, r3, #0
	add r0, #0x39
	cmp r4, r0
	bgt _02026ABA
	add r0, r3, #0
	add r0, #0x39
	cmp r4, r0
	bge _02026B6C
	add r0, r3, #1
	cmp r4, r0
	beq _02026B24
	pop {r4, r5, r6, pc}
_02026ABA:
	add r0, r3, #0
	add r0, #0x41
	cmp r4, r0
	bgt _02026ACA
	add r3, #0x41
	cmp r4, r3
	beq _02026B56
	pop {r4, r5, r6, pc}
_02026ACA:
	add r3, #0x46
	cmp r4, r3
	beq _02026B40
	pop {r4, r5, r6, pc}
_02026AD2:
	add r0, r2, #0
	bl sub_02076AF8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202643C
	pop {r4, r5, r6, pc}
_02026AE2:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020267B8
	pop {r4, r5, r6, pc}
_02026AF8:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020267B8
	pop {r4, r5, r6, pc}
_02026B0E:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020265E8
	pop {r4, r5, r6, pc}
_02026B24:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020265E8
	pop {r4, r5, r6, pc}
_02026B3A:
	bl sub_020268FC
	pop {r4, r5, r6, pc}
_02026B40:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020265E8
	pop {r4, r5, r6, pc}
_02026B56:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020265E8
	pop {r4, r5, r6, pc}
_02026B6C:
	add r0, r2, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02026A00
_02026B80:
	pop {r4, r5, r6, pc}
	nop
_02026B84: .word 0x000001A6
	thumb_func_end sub_02026A60

	thumb_func_start sub_02026B88
sub_02026B88: ; 0x02026B88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_020986CC
	cmp r0, #6
	beq _02026BAA
	mov r1, #0x4a
	lsl r1, r1, #2
	add r3, r5, r1
	ldrb r2, [r3, r4]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	strb r0, [r3, r4]
_02026BAA:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02026B88

	thumb_func_start sub_02026BAC
sub_02026BAC: ; 0x02026BAC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x12
	add r4, r2, #0
	bl sub_020759F0
	cmp r0, #0xff
	bne _02026BCE
	cmp r4, #0
	bne _02026BC8
	mov r0, #2
	pop {r4, r5, r6, pc}
_02026BC8:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02026BCE:
	sub r0, r6, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r1, #1
	mov r0, #7
	add r3, r2, #0
	and r3, r0
	add r0, r1, #0
	lsl r0, r3
	asr r3, r2, #3
	add r3, r5, r3
	add r3, #0x84
	ldrb r3, [r3]
	tst r0, r3
	bne _02026BEE
	mov r1, #0
_02026BEE:
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	cmp r4, #1
	bne _02026C1E
	add r4, r2, #0
	asr r2, r2, #3
	add r2, r5, r2
	mov r0, #7
	add r2, #0xc4
	mov r3, #1
	and r4, r0
	add r0, r3, #0
	ldrb r2, [r2]
	lsl r0, r4
	tst r0, r2
	bne _02026C10
	mov r3, #0
_02026C10:
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	cmp r0, r1
	bne _02026C20
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02026C1E:
	add r0, r1, #0
_02026C20:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02026BAC

	thumb_func_start sub_02026C24
sub_02026C24: ; 0x02026C24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _02026CC0 ; =0x000001A6
	add r5, r0, #0
	add r7, r2, #0
	cmp r4, r1
	beq _02026C4A
	add r0, r1, #1
	cmp r4, r0
	beq _02026C4A
	add r0, r1, #0
	add r0, #0x46
	cmp r4, r0
	beq _02026C4A
	add r1, #0x41
	cmp r4, r1
	beq _02026C4A
	bl GF_AssertFail
_02026C4A:
	cmp r7, #2
	blt _02026C52
	bl GF_AssertFail
_02026C52:
	ldr r0, _02026CC4 ; =0x000001E7
	cmp r4, r0
	bhi _02026C7C
	bhs _02026C98
	add r1, r0, #0
	sub r1, #0x40
	cmp r4, r1
	bhi _02026C9C
	add r1, r0, #0
	sub r1, #0x41
	cmp r4, r1
	blo _02026C9C
	add r1, r0, #0
	sub r1, #0x41
	cmp r4, r1
	beq _02026C84
	add r1, r0, #0
	sub r1, #0x40
	cmp r4, r1
	beq _02026C8A
	b _02026C9C
_02026C7C:
	add r0, r0, #5
	cmp r4, r0
	beq _02026C90
	b _02026C9C
_02026C84:
	sub r0, #0xdf
	add r6, r5, r0
	b _02026C9C
_02026C8A:
	sub r0, #0xde
	add r6, r5, r0
	b _02026C9C
_02026C90:
	mov r0, #0x32
	lsl r0, r0, #4
	add r6, r5, r0
	b _02026C9C
_02026C98:
	ldr r0, _02026CC8 ; =0x00000321
	add r6, r5, r0
_02026C9C:
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #1
	mov r1, #7
	and r1, r3
	add r2, r0, #0
	lsl r2, r1
	asr r1, r3, #3
	ldrb r1, [r6, r1]
	tst r1, r2
	bne _02026CBC
	mov r0, #0
_02026CBC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026CC0: .word 0x000001A6
_02026CC4: .word 0x000001E7
_02026CC8: .word 0x00000321
	thumb_func_end sub_02026C24

	thumb_func_start sub_02026CCC
sub_02026CCC: ; 0x02026CCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02026CF8 ; =0x000001DF
	add r4, r2, #0
	cmp r1, r0
	beq _02026CDC
	bl GF_AssertFail
_02026CDC:
	cmp r4, #6
	blt _02026CE4
	bl GF_AssertFail
_02026CE4:
	mov r0, #0xc7
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r0, r4, #1
	add r0, r4, r0
	lsr r1, r0
	mov r0, #7
	and r0, r1
	pop {r3, r4, r5, pc}
	nop
_02026CF8: .word 0x000001DF
	thumb_func_end sub_02026CCC

	thumb_func_start sub_02026CFC
sub_02026CFC: ; 0x02026CFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x67
	add r4, r1, #0
	lsl r0, r0, #2
	add r6, r2, #0
	cmp r4, r0
	beq _02026D16
	add r0, r0, #1
	cmp r4, r0
	beq _02026D16
	bl GF_AssertFail
_02026D16:
	cmp r6, #3
	blt _02026D1E
	bl GF_AssertFail
_02026D1E:
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r4, r0
	bne _02026D2A
	sub r0, #0x92
	b _02026D2C
_02026D2A:
	sub r0, #0x91
_02026D2C:
	add r1, r5, r0
	lsl r0, r6, #0x10
	lsr r2, r0, #0x10
	asr r0, r2, #2
	ldrb r1, [r1, r0]
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1d
	asr r1, r0
	mov r0, #3
	and r0, r1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02026CFC

	thumb_func_start sub_02026D44
sub_02026D44: ; 0x02026D44
	push {r4, r5}
	mov r3, #0
	ldr r5, _02026D64 ; =0x020E5AF4
	mov r4, #1
	add r1, r3, #0
_02026D4E:
	ldrh r2, [r5]
	cmp r0, r2
	bne _02026D56
	add r4, r1, #0
_02026D56:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #0xb
	blt _02026D4E
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02026D64: .word 0x020E5AF4
	thumb_func_end sub_02026D44

	thumb_func_start sub_02026D68
sub_02026D68: ; 0x02026D68
	mov r0, #1
	bx lr
	thumb_func_end sub_02026D68

	thumb_func_start sub_02026D6C
sub_02026D6C: ; 0x02026D6C
	push {r4, lr}
	mov r2, #0xc9
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	ldr r0, _02026DC8 ; =0xBEEFCAFE
	mov r1, #0
	str r0, [r4, #0]
	ldr r0, _02026DCC ; =0x0000031B
	mov r2, #0x1c
	strb r1, [r4, r0]
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xff
	bl memset
	mov r0, #0xff
	add r1, r0, #0
	add r1, #9
	strb r0, [r4, r1]
	add r1, r0, #0
	add r1, #0xa
	strb r0, [r4, r1]
	add r1, r0, #0
	add r1, #0xb
	strb r0, [r4, r1]
	add r1, r0, #0
	add r1, #0xc
	strb r0, [r4, r1]
	mov r2, #0
	mov r1, #0xc7
	mvn r2, r2
	lsl r1, r1, #2
	str r2, [r4, r1]
	add r2, r1, #4
	strb r0, [r4, r2]
	add r1, r1, #5
	strb r0, [r4, r1]
	add r0, r4, #0
	bl sub_0202693C
	pop {r4, pc}
	nop
_02026DC8: .word 0xBEEFCAFE
_02026DCC: .word 0x0000031B
	thumb_func_end sub_02026D6C

	thumb_func_start sub_02026DD0
sub_02026DD0: ; 0x02026DD0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02026E04 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026DE0
	bl GF_AssertFail
_02026DE0:
	ldr r7, _02026E08 ; =0x000001ED
	mov r5, #0
	mov r4, #1
_02026DE6:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026F9C
	cmp r0, #1
	bne _02026DF6
	add r5, r5, #1
_02026DF6:
	add r4, r4, #1
	cmp r4, r7
	ble _02026DE6
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026E04: .word 0xBEEFCAFE
_02026E08: .word 0x000001ED
	thumb_func_end sub_02026DD0

	thumb_func_start sub_02026E0C
sub_02026E0C: ; 0x02026E0C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02026E40 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026E1C
	bl GF_AssertFail
_02026E1C:
	ldr r7, _02026E44 ; =0x000001ED
	mov r5, #0
	mov r4, #1
_02026E22:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #1
	bne _02026E32
	add r5, r5, #1
_02026E32:
	add r4, r4, #1
	cmp r4, r7
	ble _02026E22
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026E40: .word 0xBEEFCAFE
_02026E44: .word 0x000001ED
	thumb_func_end sub_02026E0C

	thumb_func_start sub_02026E48
sub_02026E48: ; 0x02026E48
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027474
	cmp r0, #0
	beq _02026E5C
	add r0, r4, #0
	bl sub_02026E0C
	pop {r4, pc}
_02026E5C:
	add r0, r4, #0
	bl sub_02026EAC
	pop {r4, pc}
	thumb_func_end sub_02026E48

	thumb_func_start sub_02026E64
sub_02026E64: ; 0x02026E64
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02026EA4 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026E74
	bl GF_AssertFail
_02026E74:
	ldr r7, _02026EA8 ; =0x000001ED
	mov r5, #0
	mov r4, #1
_02026E7A:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026F9C
	cmp r0, #1
	bne _02026E96
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020775A4
	cmp r0, #0
	beq _02026E96
	add r5, r5, #1
_02026E96:
	add r4, r4, #1
	cmp r4, r7
	ble _02026E7A
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026EA4: .word 0xBEEFCAFE
_02026EA8: .word 0x000001ED
	thumb_func_end sub_02026E64

	thumb_func_start sub_02026EAC
sub_02026EAC: ; 0x02026EAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0]
	ldr r0, _02026EEC ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026EBC
	bl GF_AssertFail
_02026EBC:
	ldr r7, _02026EF0 ; =0x000001ED
	mov r5, #0
	mov r4, #1
_02026EC2:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #1
	bne _02026EDE
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020775A4
	cmp r0, #0
	beq _02026EDE
	add r5, r5, #1
_02026EDE:
	add r4, r4, #1
	cmp r4, r7
	ble _02026EC2
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02026EEC: .word 0xBEEFCAFE
_02026EF0: .word 0x000001ED
	thumb_func_end sub_02026EAC

	thumb_func_start sub_02026EF4
sub_02026EF4: ; 0x02026EF4
	push {r3, lr}
	bl sub_02026F20
	ldr r1, _02026F08 ; =0x000001E2
	cmp r0, r1
	blo _02026F04
	mov r0, #1
	pop {r3, pc}
_02026F04:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02026F08: .word 0x000001E2
	thumb_func_end sub_02026EF4

	thumb_func_start sub_02026F0C
sub_02026F0C: ; 0x02026F0C
	push {r3, lr}
	bl sub_02026F58
	cmp r0, #0xd2
	blo _02026F1A
	mov r0, #1
	pop {r3, pc}
_02026F1A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02026F0C

	thumb_func_start sub_02026F20
sub_02026F20: ; 0x02026F20
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02026F54 ; =0x000001ED
	add r6, r0, #0
	mov r5, #0
	mov r4, #1
_02026F2A:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026F9C
	cmp r0, #1
	bne _02026F4A
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02026D44
	cmp r0, #1
	bne _02026F4A
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_02026F4A:
	add r4, r4, #1
	cmp r4, r7
	ble _02026F2A
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02026F54: .word 0x000001ED
	thumb_func_end sub_02026F20

	thumb_func_start sub_02026F58
sub_02026F58: ; 0x02026F58
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02026F98 ; =0x000001ED
	add r6, r0, #0
	mov r5, #0
	mov r4, #1
_02026F62:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02026FE8
	cmp r0, #1
	bne _02026F8E
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020775A4
	cmp r0, #0
	beq _02026F8E
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02026D68
	cmp r0, #1
	bne _02026F8E
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_02026F8E:
	add r4, r4, #1
	cmp r4, r7
	ble _02026F62
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02026F98: .word 0x000001ED
	thumb_func_end sub_02026F58

	thumb_func_start sub_02026F9C
sub_02026F9C: ; 0x02026F9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02026FE4 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026FAE
	bl GF_AssertFail
_02026FAE:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	beq _02026FBC
	mov r0, #0
	pop {r3, r4, r5, pc}
_02026FBC:
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #1
	mov r1, #7
	and r1, r2
	add r3, r0, #0
	lsl r3, r1
	asr r1, r2, #3
	add r2, r5, r1
	ldrb r1, [r2, #4]
	tst r1, r3
	beq _02026FDE
	add r2, #0x44
	ldrb r1, [r2]
	tst r1, r3
	bne _02026FE0
_02026FDE:
	mov r0, #0
_02026FE0:
	pop {r3, r4, r5, pc}
	nop
_02026FE4: .word 0xBEEFCAFE
	thumb_func_end sub_02026F9C

	thumb_func_start sub_02026FE8
sub_02026FE8: ; 0x02026FE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027028 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02026FFA
	bl GF_AssertFail
_02026FFA:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	beq _02027008
	mov r0, #0
	pop {r3, r4, r5, pc}
_02027008:
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #1
	mov r1, #7
	and r1, r3
	add r2, r0, #0
	lsl r2, r1
	asr r1, r3, #3
	add r1, r5, r1
	add r1, #0x44
	ldrb r1, [r1]
	tst r1, r2
	bne _02027026
	mov r0, #0
_02027026:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02027028: .word 0xBEEFCAFE
	thumb_func_end sub_02026FE8

	thumb_func_start sub_0202702C
sub_0202702C: ; 0x0202702C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027054 ; =0xBEEFCAFE
	cmp r1, r0
	beq _0202703E
	bl GF_AssertFail
_0202703E:
	cmp r4, #0
	bne _0202704A
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r6, [r5, r0]
	b _0202704E
_0202704A:
	bl GF_AssertFail
_0202704E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02027054: .word 0xBEEFCAFE
	thumb_func_end sub_0202702C

	thumb_func_start sub_02027058
sub_02027058: ; 0x02027058
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _020270A8 ; =0xBEEFCAFE
	add r6, r2, #0
	cmp r1, r0
	beq _0202706C
	bl GF_AssertFail
_0202706C:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	beq _0202707C
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0202707C:
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r3, r2, #0
	asr r2, r2, #3
	add r2, r5, r2
	mov r0, #7
	add r2, #0x44
	mov r1, #1
	and r3, r0
	ldrb r2, [r2]
	lsl r1, r3
	tst r1, r2
	beq _020270A4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02026BAC
	pop {r4, r5, r6, pc}
_020270A4:
	sub r0, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020270A8: .word 0xBEEFCAFE
	thumb_func_end sub_02027058

	thumb_func_start sub_020270AC
sub_020270AC: ; 0x020270AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _020270D8 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020270BE
	bl GF_AssertFail
_020270BE:
	add r0, r5, #0
	bl sub_02026400
	cmp r0, r4
	bgt _020270CE
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020270CE:
	mov r0, #0x43
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020270D8: .word 0xBEEFCAFE
	thumb_func_end sub_020270AC

	thumb_func_start sub_020270DC
sub_020270DC: ; 0x020270DC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020270F4 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020270EC
	bl GF_AssertFail
_020270EC:
	add r0, r4, #0
	bl sub_02026400
	pop {r4, pc}
	; .align 2, 0
_020270F4: .word 0xBEEFCAFE
	thumb_func_end sub_020270DC

	thumb_func_start sub_020270F8
sub_020270F8: ; 0x020270F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027128 ; =0xBEEFCAFE
	cmp r1, r0
	beq _0202710A
	bl GF_AssertFail
_0202710A:
	ldr r1, _0202712C ; =0x000001A6
	add r0, r5, #0
	bl sub_02026464
	cmp r0, r4
	bgt _0202711C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0202711C:
	ldr r1, _0202712C ; =0x000001A6
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02026C24
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02027128: .word 0xBEEFCAFE
_0202712C: .word 0x000001A6
	thumb_func_end sub_020270F8

	thumb_func_start sub_02027130
sub_02027130: ; 0x02027130
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0202714C ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027140
	bl GF_AssertFail
_02027140:
	ldr r1, _02027150 ; =0x000001A6
	add r0, r4, #0
	bl sub_02026464
	pop {r4, pc}
	nop
_0202714C: .word 0xBEEFCAFE
_02027150: .word 0x000001A6
	thumb_func_end sub_02027130

	thumb_func_start sub_02027154
sub_02027154: ; 0x02027154
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027184 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027166
	bl GF_AssertFail
_02027166:
	ldr r1, _02027188 ; =0x000001A7
	add r0, r5, #0
	bl sub_02026464
	cmp r0, r4
	bgt _02027178
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02027178:
	ldr r1, _02027188 ; =0x000001A7
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02026C24
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02027184: .word 0xBEEFCAFE
_02027188: .word 0x000001A7
	thumb_func_end sub_02027154

	thumb_func_start sub_0202718C
sub_0202718C: ; 0x0202718C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020271A8 ; =0xBEEFCAFE
	cmp r1, r0
	beq _0202719C
	bl GF_AssertFail
_0202719C:
	ldr r1, _020271AC ; =0x000001A7
	add r0, r4, #0
	bl sub_02026464
	pop {r4, pc}
	nop
_020271A8: .word 0xBEEFCAFE
_020271AC: .word 0x000001A7
	thumb_func_end sub_0202718C

	thumb_func_start sub_020271B0
sub_020271B0: ; 0x020271B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _020271E4 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020271C2
	bl GF_AssertFail
_020271C2:
	mov r1, #0x67
	add r0, r5, #0
	lsl r1, r1, #2
	bl sub_020266F8
	cmp r0, r4
	bgt _020271D6
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020271D6:
	mov r1, #0x67
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r4, #0
	bl sub_02026CFC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020271E4: .word 0xBEEFCAFE
	thumb_func_end sub_020271B0

	thumb_func_start sub_020271E8
sub_020271E8: ; 0x020271E8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _02027204 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020271F8
	bl GF_AssertFail
_020271F8:
	mov r1, #0x67
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_020266F8
	pop {r4, pc}
	; .align 2, 0
_02027204: .word 0xBEEFCAFE
	thumb_func_end sub_020271E8

	thumb_func_start sub_02027208
sub_02027208: ; 0x02027208
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027238 ; =0xBEEFCAFE
	cmp r1, r0
	beq _0202721A
	bl GF_AssertFail
_0202721A:
	ldr r1, _0202723C ; =0x0000019D
	add r0, r5, #0
	bl sub_020266F8
	cmp r0, r4
	bgt _0202722C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0202722C:
	ldr r1, _0202723C ; =0x0000019D
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02026CFC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02027238: .word 0xBEEFCAFE
_0202723C: .word 0x0000019D
	thumb_func_end sub_02027208

	thumb_func_start sub_02027240
sub_02027240: ; 0x02027240
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0202725C ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027250
	bl GF_AssertFail
_02027250:
	ldr r1, _02027260 ; =0x0000019D
	add r0, r4, #0
	bl sub_020266F8
	pop {r4, pc}
	nop
_0202725C: .word 0xBEEFCAFE
_02027260: .word 0x0000019D
	thumb_func_end sub_02027240

	thumb_func_start sub_02027264
sub_02027264: ; 0x02027264
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02027284 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027276
	bl GF_AssertFail
_02027276:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202688C
	pop {r3, r4, r5, pc}
	nop
_02027284: .word 0xBEEFCAFE
	thumb_func_end sub_02027264

	thumb_func_start sub_02027288
sub_02027288: ; 0x02027288
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020272A0 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027298
	bl GF_AssertFail
_02027298:
	add r0, r4, #0
	bl sub_020268B8
	pop {r4, pc}
	; .align 2, 0
_020272A0: .word 0xBEEFCAFE
	thumb_func_end sub_02027288

	thumb_func_start sub_020272A4
sub_020272A4: ; 0x020272A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r1, #0
	ldr r0, [sp]
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_02075D6C
	add r6, r0, #0
	ldr r1, [r5, #0]
	ldr r0, _02027364 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020272DA
	bl GF_AssertFail
_020272DA:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	bne _0202735E
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	mov r1, #1
	mov r0, #7
	add r2, r7, #0
	and r2, r0
	add r0, r1, #0
	asr r3, r7, #3
	lsl r0, r2
	add r2, r5, r3
	add r2, #0x44
	ldrb r2, [r2]
	tst r2, r0
	bne _0202731E
	ldr r1, _02027368 ; =0x00000147
	cmp r4, r1
	bne _0202730E
	ldr r0, [sp, #4]
	sub r1, #0x43
	str r0, [r5, r1]
_0202730E:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	add r3, r4, #0
	bl sub_020263D8
	b _02027340
_0202731E:
	add r2, r5, r3
	add r2, #0x84
	ldrb r2, [r2]
	tst r0, r2
	bne _0202732A
	mov r1, #0
_0202732A:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	cmp r0, r6
	beq _02027340
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	add r3, r4, #0
	bl sub_020263D8
_02027340:
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02026A60
	mov r1, #7
	add r5, #0x44
	asr r0, r7, #3
	ldrb r3, [r5, r0]
	mov r2, #1
	and r1, r7
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	strb r1, [r5, r0]
_0202735E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02027364: .word 0xBEEFCAFE
_02027368: .word 0x00000147
	thumb_func_end sub_020272A4

	thumb_func_start sub_0202736C
sub_0202736C: ; 0x0202736C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r7, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074470
	mov r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [sp]
	add r0, r7, #0
	bl sub_02075D6C
	add r6, r0, #0
	ldr r1, [r5, #0]
	ldr r0, _0202744C ; =0xBEEFCAFE
	cmp r1, r0
	beq _020273AE
	bl GF_AssertFail
_020273AE:
	add r0, r4, #0
	bl sub_02026344
	cmp r0, #0
	bne _02027448
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r2, #1
	mov r0, #7
	and r0, r3
	add r1, r2, #0
	lsl r1, r0
	asr r0, r3, #3
	add r3, r5, r0
	add r3, #0x44
	ldrb r3, [r3]
	tst r3, r1
	bne _020273F0
	ldr r1, _02027450 ; =0x00000147
	cmp r4, r1
	bne _020273E0
	ldr r0, [sp]
	sub r1, #0x43
	str r0, [r5, r1]
_020273E0:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	add r3, r4, #0
	bl sub_020263D8
	b _02027412
_020273F0:
	add r0, r5, r0
	add r0, #0x84
	ldrb r0, [r0]
	tst r0, r1
	bne _020273FC
	mov r2, #0
_020273FC:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	cmp r0, r6
	beq _02027412
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	add r3, r4, #0
	bl sub_020263D8
_02027412:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02026A60
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02026B88
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r1, r5, #4
	asr r0, r6, #3
	mov r2, #7
	ldrb r4, [r1, r0]
	mov r3, #1
	and r2, r6
	lsl r3, r2
	add r2, r4, #0
	orr r2, r3
	add r5, #0x44
	strb r2, [r1, r0]
	ldrb r1, [r5, r0]
	orr r1, r3
	strb r1, [r5, r0]
_02027448:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202744C: .word 0xBEEFCAFE
_02027450: .word 0x00000147
	thumb_func_end sub_0202736C

	thumb_func_start sub_02027454
sub_02027454: ; 0x02027454
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0202746C ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027464
	bl GF_AssertFail
_02027464:
	ldr r0, _02027470 ; =0x0000031B
	mov r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0202746C: .word 0xBEEFCAFE
_02027470: .word 0x0000031B
	thumb_func_end sub_02027454

	thumb_func_start sub_02027474
sub_02027474: ; 0x02027474
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _0202748C ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027484
	bl GF_AssertFail
_02027484:
	ldr r0, _02027490 ; =0x0000031B
	ldrb r0, [r4, r0]
	pop {r4, pc}
	nop
_0202748C: .word 0xBEEFCAFE
_02027490: .word 0x0000031B
	thumb_func_end sub_02027474

	thumb_func_start sub_02027494
sub_02027494: ; 0x02027494
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020274AC ; =0xBEEFCAFE
	cmp r1, r0
	beq _020274A4
	bl GF_AssertFail
_020274A4:
	mov r0, #0xc6
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_020274AC: .word 0xBEEFCAFE
	thumb_func_end sub_02027494

	thumb_func_start sub_020274B0
sub_020274B0: ; 0x020274B0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _020274CC ; =0xBEEFCAFE
	cmp r1, r0
	beq _020274C0
	bl GF_AssertFail
_020274C0:
	mov r0, #0xc6
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r4, r0]
	pop {r4, pc}
	nop
_020274CC: .word 0xBEEFCAFE
	thumb_func_end sub_020274B0

	thumb_func_start sub_020274D0
sub_020274D0: ; 0x020274D0
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, #8
	blo _020274E0
	bl GF_AssertFail
_020274E0:
	ldr r1, [r5, #0]
	ldr r0, _02027504 ; =0xBEEFCAFE
	cmp r1, r0
	beq _020274EC
	bl GF_AssertFail
_020274EC:
	add r0, r6, #0
	bl sub_020986CC
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	mov r0, #0x4a
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	and r0, r2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02027504: .word 0xBEEFCAFE
	thumb_func_end sub_020274D0

	thumb_func_start sub_02027508
sub_02027508: ; 0x02027508
	ldr r1, _02027510 ; =0x00000319
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_02027510: .word 0x00000319
	thumb_func_end sub_02027508

	thumb_func_start sub_02027514
sub_02027514: ; 0x02027514
	ldr r1, _0202751C ; =0x00000319
	ldrb r0, [r0, r1]
	bx lr
	nop
_0202751C: .word 0x00000319
	thumb_func_end sub_02027514

	thumb_func_start sub_02027520
sub_02027520: ; 0x02027520
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _02027538 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027530
	bl GF_AssertFail
_02027530:
	ldr r0, _0202753C ; =0x0000031A
	ldrb r0, [r4, r0]
	pop {r4, pc}
	nop
_02027538: .word 0xBEEFCAFE
_0202753C: .word 0x0000031A
	thumb_func_end sub_02027520

	thumb_func_start sub_02027540
sub_02027540: ; 0x02027540
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _02027558 ; =0xBEEFCAFE
	cmp r1, r0
	beq _02027550
	bl GF_AssertFail
_02027550:
	ldr r0, _0202755C ; =0x0000031A
	mov r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02027558: .word 0xBEEFCAFE
_0202755C: .word 0x0000031A
	thumb_func_end sub_02027540

	thumb_func_start sub_02027560
sub_02027560: ; 0x02027560
	ldr r3, _02027568 ; =sub_020245BC
	mov r1, #7
	bx r3
	nop
_02027568: .word sub_020245BC
	thumb_func_end sub_02027560

	thumb_func_start sub_0202756C
sub_0202756C: ; 0x0202756C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r1, [r6, #0]
	ldr r0, _020276B8 ; =0xBEEFCAFE
	add r4, r2, #0
	cmp r1, r0
	beq _02027580
	bl GF_AssertFail
_02027580:
	ldr r1, _020276BC ; =0x000001A6
	cmp r5, r1
	bgt _020275BC
	bge _02027604
	add r0, r1, #0
	sub r0, #0x24
	cmp r5, r0
	bgt _0202759C
	sub r1, #0x24
	cmp r5, r1
	bge _02027654
	cmp r5, #0xc9
	beq _020275F0
	b _020276B2
_0202759C:
	add r0, r1, #0
	sub r0, #9
	cmp r5, r0
	bgt _020275BA
	add r0, r1, #0
	sub r0, #0xa
	cmp r5, r0
	blt _020275BA
	add r0, r1, #0
	sub r0, #0xa
	cmp r5, r0
	beq _0202762C
	sub r1, #9
	cmp r5, r1
	beq _02027640
_020275BA:
	b _020276B2
_020275BC:
	add r0, r1, #0
	add r0, #0x39
	cmp r5, r0
	bgt _020275D4
	add r0, r1, #0
	add r0, #0x39
	cmp r5, r0
	bge _0202769A
	add r0, r1, #1
	cmp r5, r0
	beq _02027618
	b _020276B2
_020275D4:
	add r0, r1, #0
	add r0, #0x41
	cmp r5, r0
	bgt _020275E6
	add r0, r1, #0
	add r0, #0x41
	cmp r5, r0
	beq _02027682
	b _020276B2
_020275E6:
	add r0, r1, #0
	add r0, #0x46
	cmp r5, r0
	beq _02027668
	b _020276B2
_020275F0:
	add r0, r6, #0
	bl sub_020270DC
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020270AC
	pop {r4, r5, r6, pc}
_02027604:
	add r0, r6, #0
	bl sub_02027130
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020270F8
	pop {r4, r5, r6, pc}
_02027618:
	add r0, r6, #0
	bl sub_0202718C
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027154
	pop {r4, r5, r6, pc}
_0202762C:
	add r0, r6, #0
	bl sub_020271E8
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020271B0
	pop {r4, r5, r6, pc}
_02027640:
	add r0, r6, #0
	bl sub_02027240
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027208
	pop {r4, r5, r6, pc}
_02027654:
	add r0, r6, #0
	bl sub_02027288
	cmp r4, r0
	bhs _020276B2
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027264
	pop {r4, r5, r6, pc}
_02027668:
	add r0, r6, #0
	add r1, #0x46
	bl sub_02026464
	cmp r4, r0
	bge _020276B2
	mov r1, #0x7b
	add r0, r6, #0
	lsl r1, r1, #2
	add r2, r4, #0
	bl sub_02026C24
	pop {r4, r5, r6, pc}
_02027682:
	add r0, r6, #0
	add r1, #0x41
	bl sub_02026464
	cmp r4, r0
	bge _020276B2
	ldr r1, _020276C0 ; =0x000001E7
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02026C24
	pop {r4, r5, r6, pc}
_0202769A:
	add r0, r6, #0
	add r1, #0x39
	bl sub_02026958
	cmp r4, r0
	bge _020276B2
	ldr r1, _020276C4 ; =0x000001DF
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02026CCC
	pop {r4, r5, r6, pc}
_020276B2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020276B8: .word 0xBEEFCAFE
_020276BC: .word 0x000001A6
_020276C0: .word 0x000001E7
_020276C4: .word 0x000001DF
	thumb_func_end sub_0202756C

	thumb_func_start sub_020276C8
sub_020276C8: ; 0x020276C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _0202779C ; =0xBEEFCAFE
	cmp r1, r0
	beq _020276DA
	bl GF_AssertFail
_020276DA:
	ldr r1, _020277A0 ; =0x000001A6
	cmp r4, r1
	bgt _02027716
	bge _02027752
	add r0, r1, #0
	sub r0, #0x24
	cmp r4, r0
	bgt _020276F6
	sub r1, #0x24
	cmp r4, r1
	bge _02027772
	cmp r4, #0xc9
	beq _0202774A
	b _02027798
_020276F6:
	add r0, r1, #0
	sub r0, #9
	cmp r4, r0
	bgt _02027798
	add r0, r1, #0
	sub r0, #0xa
	cmp r4, r0
	blt _02027798
	add r0, r1, #0
	sub r0, #0xa
	cmp r4, r0
	beq _02027762
	sub r1, #9
	cmp r4, r1
	beq _0202776A
	b _02027798
_02027716:
	add r0, r1, #0
	add r0, #0x39
	cmp r4, r0
	bgt _0202772E
	add r0, r1, #0
	add r0, #0x39
	cmp r4, r0
	bge _0202778E
	add r0, r1, #1
	cmp r4, r0
	beq _0202775A
	b _02027798
_0202772E:
	add r0, r1, #0
	add r0, #0x41
	cmp r4, r0
	bgt _02027740
	add r0, r1, #0
	add r0, #0x41
	cmp r4, r0
	beq _02027784
	b _02027798
_02027740:
	add r0, r1, #0
	add r0, #0x46
	cmp r4, r0
	beq _0202777A
	b _02027798
_0202774A:
	add r0, r5, #0
	bl sub_020270DC
	pop {r3, r4, r5, pc}
_02027752:
	add r0, r5, #0
	bl sub_02027130
	pop {r3, r4, r5, pc}
_0202775A:
	add r0, r5, #0
	bl sub_0202718C
	pop {r3, r4, r5, pc}
_02027762:
	add r0, r5, #0
	bl sub_020271E8
	pop {r3, r4, r5, pc}
_0202776A:
	add r0, r5, #0
	bl sub_02027240
	pop {r3, r4, r5, pc}
_02027772:
	add r0, r5, #0
	bl sub_02027288
	pop {r3, r4, r5, pc}
_0202777A:
	add r0, r5, #0
	add r1, #0x46
	bl sub_02026464
	pop {r3, r4, r5, pc}
_02027784:
	add r0, r5, #0
	add r1, #0x41
	bl sub_02026464
	pop {r3, r4, r5, pc}
_0202778E:
	add r0, r5, #0
	add r1, #0x39
	bl sub_02026958
	pop {r3, r4, r5, pc}
_02027798:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202779C: .word 0xBEEFCAFE
_020277A0: .word 0x000001A6
	thumb_func_end sub_020276C8

	.rodata


	.global Unk_020E5AF4
Unk_020E5AF4: ; 0x020E5AF4
	.incbin "incbin/arm9_rodata.bin", 0xEB4, 0x16

