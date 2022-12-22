	.include "macros/function.inc"
	.include "include/unk_02005474.inc"

	

	.text


	thumb_func_start sub_02005474
sub_02005474: ; 0x02005474
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02004B18
	bl sub_020040F0
	add r5, r0, #0
	bl sub_020040CC
	add r1, r6, #0
	bl NNS_SndArcPlayerStartSeq
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020054EC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02005474

	thumb_func_start sub_0200549C
sub_0200549C: ; 0x0200549C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02004B18
	add r4, r0, #0
	bl sub_020040F0
	add r6, r0, #0
	cmp r4, #7
	bne _020054BE
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02005508
	add r4, r0, #0
	b _020054D8
_020054BE:
	cmp r4, #1
	bne _020054D0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02005538
	add r4, r0, #0
	b _020054D8
_020054D0:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
_020054D8:
	mov r0, #0
	bl sub_0200501C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020054EC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200549C

	thumb_func_start sub_020054EC
sub_020054EC: ; 0x020054EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020041E8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02004AA0
	mov r0, #1
	bl sub_02003D0C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020054EC

	thumb_func_start sub_02005508
sub_02005508: ; 0x02005508
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #3
	add r4, r2, #0
	bl sub_02004974
	bl sub_0200403C
	add r0, r5, #0
	bl sub_02004068
	mov r0, #0x1b
	bl sub_02003D5C
	bl sub_02004014
	add r0, r4, #0
	bl sub_020040CC
	add r1, r5, #0
	bl NNS_SndArcPlayerStartSeq
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02005508

	thumb_func_start sub_02005538
sub_02005538: ; 0x02005538
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x13
	add r6, r2, #0
	bl sub_02003D5C
	mov r0, #0x20
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0
	bl sub_020040CC
	bl sub_02004B34
	bl sub_02004B48
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020047E8
	add r0, r6, #0
	bl sub_020040CC
	add r6, r0, #0
	ldrh r0, [r4]
	bl sub_02004B48
	mov r1, #0
	mvn r1, r1
	add r2, r0, #0
	add r0, r6, #0
	add r3, r1, #0
	str r5, [sp]
	bl NNS_SndArcPlayerStartSeqEx
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02005538

	thumb_func_start sub_02005588
sub_02005588: ; 0x02005588
	push {r3, r4, r5, lr}
	add r5, r1, #0
	cmp r0, #4
	beq _02005598
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_02005598:
	add r0, r5, #0
	bl sub_02004B18
	cmp r0, #7
	beq _020055AA
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_020055AA:
	add r0, r5, #0
	mov r1, #1
	bl sub_02004080
	mov r0, #7
	bl sub_020040CC
	add r1, r5, #0
	bl NNS_SndArcPlayerStartSeq
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020041E8
	mov r0, #1
	bl sub_02003D0C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005588

	thumb_func_start sub_020055D0
sub_020055D0: ; 0x020055D0
	push {r4, lr}
	add r4, r0, #0
	bl NNS_SndPlayerStopSeqBySeqNo
	add r0, r4, #0
	bl sub_02004B18
	cmp r0, #0xff
	beq _020055EE
	bl sub_020040F0
	bl sub_020040CC
	bl NNS_SndHandleReleaseSeq
_020055EE:
	bl sub_020055F4
	pop {r4, pc}
	thumb_func_end sub_020055D0

	thumb_func_start sub_020055F4
sub_020055F4: ; 0x020055F4
	push {r3, lr}
	mov r0, #0
	bl sub_020041E8
	mov r0, #0
	bl sub_02004208
	mov r0, #0
	bl sub_02003D0C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020055F4

	thumb_func_start sub_0200560C
sub_0200560C: ; 0x0200560C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020041FC
	bl sub_02004B18
	cmp r0, #0xff
	beq _02005648
	bl sub_020040F0
	add r7, r0, #0
	cmp r4, #0
	bne _02005632
	mov r1, #0
	add r2, r1, #0
	bl sub_02004A54
_02005632:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02004A54
	add r0, r5, #0
	bl sub_02004FCC
	mov r0, #3
	bl sub_02003D0C
_02005648:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200560C

	thumb_func_start sub_0200564C
sub_0200564C: ; 0x0200564C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020041FC
	bl sub_02004B18
	add r6, r0, #0
	cmp r6, #0xff
	beq _02005682
	bl sub_02005684
	cmp r0, #0
	bne _0200567C
	add r0, r6, #0
	bl sub_020040F0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02004A54
	add r0, r4, #0
	bl sub_02004FCC
_0200567C:
	mov r0, #4
	bl sub_02003D0C
_02005682:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200564C

	thumb_func_start sub_02005684
sub_02005684: ; 0x02005684
	push {r3, lr}
	mov r0, #7
	bl sub_02003D5C
	ldrh r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02005684

	thumb_func_start sub_02005690
sub_02005690: ; 0x02005690
	push {r3, lr}
	bl sub_02004B18
	bl sub_02004B04
	pop {r3, pc}
	thumb_func_end sub_02005690

	thumb_func_start sub_0200569C
sub_0200569C: ; 0x0200569C
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0
	bl NNS_SndPlayerStopSeqAll
	ldrb r0, [r5]
	cmp r0, #1
	bne _020056C0
	mov r0, #0xe
	bl sub_02004CF4
_020056C0:
	ldrb r0, [r4]
	cmp r0, #1
	bne _020056CC
	mov r0, #0xf
	bl sub_02004CF4
_020056CC:
	mov r0, #0
	bl sub_02003D0C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200569C

	thumb_func_start sub_020056D4
sub_020056D4: ; 0x020056D4
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r7, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #7
	bl sub_020040CC
	mov r1, #0
	bl NNS_SndPlayerStopSeq
	bl sub_020055F4
	mov r5, #0
	add r4, r5, #0
_020056FA:
	add r0, r5, #3
	add r1, r4, #0
	bl sub_020057AC
	add r5, r5, #1
	cmp r5, #4
	blt _020056FA
	mov r0, #0
	bl sub_0200592C
	ldrb r0, [r7]
	cmp r0, #1
	bne _0200571A
	mov r0, #0xe
	bl sub_02004CF4
_0200571A:
	ldrb r0, [r6]
	cmp r0, #1
	bne _02005726
	mov r0, #0xf
	bl sub_02004CF4
_02005726:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020056D4

	thumb_func_start sub_02005728
sub_02005728: ; 0x02005728
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02005748
	add r6, r0, #0
	ldr r1, _02005744 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl sub_020057FC
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02005744: .word 0x0000FFFF
	thumb_func_end sub_02005728

	thumb_func_start sub_02005748
sub_02005748: ; 0x02005748
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02004B18
	bl sub_020040F0
	add r5, r0, #0
	bl sub_020040CC
	add r1, r6, #0
	bl NNS_SndArcPlayerStartSeq
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02004AA0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02005748

	thumb_func_start sub_02005770
sub_02005770: ; 0x02005770
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020040F0
	add r6, r0, #0
	bl sub_020040CC
	mov r2, #0
	mvn r2, r2
	add r1, r5, #0
	add r3, r2, #0
	str r4, [sp]
	bl NNS_SndArcPlayerStartSeqEx
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02004AA0
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02005770

	thumb_func_start sub_020057A4
sub_020057A4: ; 0x020057A4
	ldr r3, _020057A8 ; =NNS_SndPlayerStopSeqBySeqNo
	bx r3
	; .align 2, 0
_020057A8: .word NNS_SndPlayerStopSeqBySeqNo
	thumb_func_end sub_020057A4

	thumb_func_start sub_020057AC
sub_020057AC: ; 0x020057AC
	push {r4, lr}
	add r4, r1, #0
	bl sub_020040CC
	add r1, r4, #0
	bl NNS_SndPlayerStopSeq
	pop {r4, pc}
	thumb_func_end sub_020057AC

	thumb_func_start sub_020057BC
sub_020057BC: ; 0x020057BC
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_020057C2:
	add r0, r5, #3
	add r1, r4, #0
	bl sub_020057AC
	add r5, r5, #1
	cmp r5, #4
	blt _020057C2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020057BC

	thumb_func_start sub_020057D4
sub_020057D4: ; 0x020057D4
	push {r3, lr}
	bl sub_02004B18
	bl sub_02004B04
	pop {r3, pc}
	thumb_func_end sub_020057D4

	thumb_func_start sub_020057E0
sub_020057E0: ; 0x020057E0
	push {r4, lr}
	mov r4, #0
_020057E4:
	add r0, r4, #3
	bl sub_02004B04
	cmp r0, #1
	bne _020057F2
	mov r0, #1
	pop {r4, pc}
_020057F2:
	add r4, r4, #1
	cmp r4, #4
	blt _020057E4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020057E0

	thumb_func_start sub_020057FC
sub_020057FC: ; 0x020057FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02004B18
	bl sub_020040F0
	bl sub_020040CC
	add r1, r5, #0
	add r2, r4, #0
	bl NNS_SndPlayerSetTrackPan
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020057FC

	thumb_func_start sub_02005818
sub_02005818: ; 0x02005818
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #3
	bl sub_020040F0
	ldr r7, _02005840 ; =0x0000FFFF
	add r4, r0, #0
	mov r5, #0
_02005828:
	add r0, r4, r5
	bl sub_020040CC
	add r1, r7, #0
	add r2, r6, #0
	bl NNS_SndPlayerSetTrackPan
	add r5, r5, #1
	cmp r5, #4
	blt _02005828
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02005840: .word 0x0000FFFF
	thumb_func_end sub_02005818

	thumb_func_start sub_02005844
sub_02005844: ; 0x02005844
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x12
	str r1, [sp, #4]
	bl sub_02003D5C
	add r7, r0, #0
	mov r0, #0x24
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x35
	bl sub_02003D5C
	add r4, r0, #0
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02006038
	cmp r0, #1
	bne _02005872
	ldr r5, _02005904 ; =0x000001EE
_02005872:
	ldr r0, _02005904 ; =0x000001EE
	cmp r5, r0
	beq _02005884
	add r0, r0, #1
	cmp r5, r0
	bhi _02005882
	cmp r5, #0
	bne _02005884
_02005882:
	mov r5, #1
_02005884:
	ldr r0, _02005908 ; =0x000001B9
	cmp r5, r0
	bne _020058A6
	mov r1, #0
	ldr r0, [r6, #0]
	mov r2, #0x7f
	add r3, r1, #0
	bl sub_0200629C
	cmp r0, #1
	bne _020058A6
	mov r0, #0
	bl sub_020063D4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020058A6:
	ldrb r0, [r7]
	cmp r0, #0
	bne _020058D8
	ldrb r0, [r4]
	cmp r0, #0
	bne _020058B8
	mov r0, #0
	bl sub_0200592C
_020058B8:
	mov r0, #1
	bl sub_020040CC
	mov r1, #2
	str r1, [sp]
	sub r1, r1, #3
	add r2, r5, #0
	add r3, r1, #0
	bl NNS_SndArcPlayerStartSeqEx
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_02004AA0
	b _020058F6
_020058D8:
	mov r0, #8
	bl sub_020040CC
	mov r1, #2
	str r1, [sp]
	sub r1, r1, #3
	add r2, r5, #0
	add r3, r1, #0
	bl NNS_SndArcPlayerStartSeqEx
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_02004AA0
_020058F6:
	mov r0, #0
	bl sub_020063D4
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02005904: .word 0x000001EE
_02005908: .word 0x000001B9
	thumb_func_end sub_02005844

	thumb_func_start sub_0200590C
sub_0200590C: ; 0x0200590C
	push {lr}
	sub sp, #0xc
	add r3, r0, #0
	mov r0, #0xb
	str r0, [sp]
	str r1, [sp, #4]
	add r1, r3, #0
	mov r0, #0
	str r2, [sp, #8]
	add r2, r0, #0
	mov r3, #0x7f
	bl sub_02005F4C
	mov r0, #1
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_0200590C

	thumb_func_start sub_0200592C
sub_0200592C: ; 0x0200592C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x10
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0xf
	bl sub_02003D5C
	mov r0, #1
	bl sub_020040CC
	add r1, r5, #0
	bl NNS_SndPlayerStopSeq
	mov r0, #8
	bl sub_020040CC
	add r1, r5, #0
	bl NNS_SndPlayerStopSeq
	ldrb r0, [r6]
	cmp r0, #1
	bne _02005970
	mov r0, #0xe
	bl sub_02004E84
	mov r0, #0xe
	bl sub_02004C4C
_02005970:
	ldrb r0, [r4]
	cmp r0, #1
	bne _02005982
	mov r0, #0xf
	bl sub_02004E84
	mov r0, #0xf
	bl sub_02004C4C
_02005982:
	bl sub_02006350
	bl sub_0200605C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200592C

	thumb_func_start sub_0200598C
sub_0200598C: ; 0x0200598C
	push {r3, r4, r5, lr}
	mov r0, #0x10
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0xf
	bl sub_02003D5C
	mov r0, #0x2e
	bl sub_02003D5C
	ldrb r0, [r5]
	cmp r0, #1
	bne _020059B8
	mov r0, #0xe
	bl sub_02004D04
	pop {r3, r4, r5, pc}
_020059B8:
	ldrb r0, [r4]
	cmp r0, #1
	bne _020059C6
	mov r0, #0xf
	bl sub_02004D04
	pop {r3, r4, r5, pc}
_020059C6:
	mov r0, #0
	bl sub_02004B04
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200598C

	thumb_func_start sub_020059D0
sub_020059D0: ; 0x020059D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r4, r1, #0
	str r0, [sp, #0x38]
	mov r0, #0x10
	add r6, r2, #0
	add r7, r3, #0
	ldr r5, [sp, #0x3c]
	bl sub_02003D5C
	str r0, [sp, #0x14]
	mov r0, #0x11
	bl sub_02003D5C
	str r0, [sp, #0x10]
	mov r0, #0x12
	bl sub_02003D5C
	str r0, [sp, #0xc]
	mov r0, #0x1e
	bl sub_02003D5C
	str r0, [sp, #8]
	mov r0, #0x24
	bl sub_02003D5C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02006038
	cmp r0, #1
	bne _02005A16
	ldr r4, _02005D6C ; =0x000001EE
_02005A16:
	ldr r0, _02005D6C ; =0x000001EE
	cmp r4, r0
	beq _02005A28
	add r0, r0, #1
	cmp r4, r0
	bhi _02005A26
	cmp r4, #0
	bne _02005A28
_02005A26:
	mov r4, #1
_02005A28:
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r0, r0, #1
	str r0, [sp, #0x1c]
	add r0, #0x40
	str r0, [sp, #0x1c]
	add r0, r7, #0
	str r0, [sp, #0x18]
	sub r0, #0x1e
	str r0, [sp, #0x18]
	cmp r0, #0
	bgt _02005A44
	mov r0, #1
	str r0, [sp, #0x18]
_02005A44:
	ldr r0, [sp, #0xc]
	mov r1, #0
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02005A5E
	mov r0, #0xe
	bl sub_02004E84
	mov r0, #0xe
	bl sub_02004C4C
_02005A5E:
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02005A72
	mov r0, #0xf
	bl sub_02004E84
	mov r0, #0xf
	bl sub_02004C4C
_02005A72:
	ldr r0, _02005D70 ; =0x000001B9
	cmp r4, r0
	bne _02005B06
	ldr r1, [sp, #4]
	cmp r1, #0xc
	bhi _02005B00
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02005A8A: ; jump table
	.short _02005AA4 - _02005A8A - 2 ; case 0
	.short _02005AA4 - _02005A8A - 2 ; case 1
	.short _02005AA4 - _02005A8A - 2 ; case 2
	.short _02005B00 - _02005A8A - 2 ; case 3
	.short _02005B00 - _02005A8A - 2 ; case 4
	.short _02005AA4 - _02005A8A - 2 ; case 5
	.short _02005B00 - _02005A8A - 2 ; case 6
	.short _02005B00 - _02005A8A - 2 ; case 7
	.short _02005B00 - _02005A8A - 2 ; case 8
	.short _02005B00 - _02005A8A - 2 ; case 9
	.short _02005B00 - _02005A8A - 2 ; case 10
	.short _02005AA4 - _02005A8A - 2 ; case 11
	.short _02005AA4 - _02005A8A - 2 ; case 12
_02005AA4:
	add r1, r5, #0
	bl sub_02005844
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	cmp r0, #0
	bne _02005AC8
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	b _02005AFA
_02005AC8:
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02005AE6
	ldr r1, [sp, #0x1c]
	mov r0, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02004D14
	mov r0, #0xe
	add r1, r7, #0
	bl sub_02004D40
	b _02005AFA
_02005AE6:
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
_02005AFA:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02005B00:
	mov r0, #1
	bl sub_020063D4
_02005B06:
	ldr r0, [sp, #4]
	cmp r0, #0xe
	bls _02005B0E
	b _02005E40
_02005B0E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02005B1A: ; jump table
	.short _02005B38 - _02005B1A - 2 ; case 0
	.short _02005B56 - _02005B1A - 2 ; case 1
	.short _02005B7C - _02005B1A - 2 ; case 2
	.short _02005BC2 - _02005B1A - 2 ; case 3
	.short _02005C10 - _02005B1A - 2 ; case 4
	.short _02005C62 - _02005B1A - 2 ; case 5
	.short _02005C8C - _02005B1A - 2 ; case 6
	.short _02005CD4 - _02005B1A - 2 ; case 7
	.short _02005D06 - _02005B1A - 2 ; case 8
	.short _02005D36 - _02005B1A - 2 ; case 9
	.short _02005D78 - _02005B1A - 2 ; case 10
	.short _02005DAA - _02005B1A - 2 ; case 11
	.short _02005DD4 - _02005B1A - 2 ; case 12
	.short _02005E06 - _02005B1A - 2 ; case 13
	.short _02005E38 - _02005B1A - 2 ; case 14
_02005B38:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	b _02005E40
_02005B56:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x14
	bl sub_02005E64
	b _02005E40
_02005B7C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0x40
	bl sub_02004F68
	add r0, r4, #0
	mov r1, #0x14
	add r2, r5, #0
	bl sub_020060EC
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02004F94
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	bl sub_02005E4C
	b _02005E40
_02005BC2:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x1e
	bl sub_02005E64
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0xc0
	bl sub_02004F68
	add r0, r4, #0
	mov r1, #0x10
	add r2, r5, #0
	bl sub_020060EC
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02004F94
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	bl sub_02005E4C
	b _02005E40
_02005C10:
	mov r0, #0xe
	bl sub_02004BCC
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0xe
	bl sub_02004D78
	ldr r1, [sp, #0x1c]
	mov r0, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02004D14
	ldr r1, [sp, #0x38]
	mov r0, #0xf
	bl sub_02005E64
	mov r1, #0x86
	mov r0, #0xe
	lsl r1, r1, #8
	bl sub_02004D2C
	ldr r0, [sp, #0x38]
	mov r1, #0x3f
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mvn r1, r1
	bl sub_02006120
	mov r1, #0x86
	mov r0, #0xf
	lsl r1, r1, #8
	bl sub_02004D2C
	b _02005E40
_02005C62:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005D74 ; =0x0000FFFF
	sub r2, #0xe1
	bl sub_02004F68
	b _02005E40
_02005C8C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0x2c
	bl sub_02004F68
	mov r1, #0x3f
	add r0, r4, #0
	mvn r1, r1
	add r2, r5, #0
	bl sub_020060EC
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02004F94
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r1, #8
	bl sub_02005E4C
	b _02005E40
_02005CD4:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0xb
	bl sub_02005E64
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005D74 ; =0x0000FFFF
	sub r2, #0x81
	bl sub_02004F68
	b _02005E40
_02005D06:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x3c
	bl sub_02005E64
	ldr r1, _02005D74 ; =0x0000FFFF
	mov r0, #1
	mov r2, #0x3c
	bl sub_02004F68
	b _02005E40
_02005D36:
	mov r0, #0xe
	bl sub_02004BCC
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0xe
	bl sub_02004D78
	ldr r1, [sp, #0x1c]
	mov r0, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02004D14
	ldr r1, [sp, #0x38]
	mov r0, #0xd
	bl sub_02005E64
	mov r1, #0x1a
	mov r0, #0xe
	lsl r1, r1, #0xa
	bl sub_02004D2C
	b _02005E40
	; .align 2, 0
_02005D6C: .word 0x000001EE
_02005D70: .word 0x000001B9
_02005D74: .word 0x0000FFFF
_02005D78:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005E48 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x64
	bl sub_02005E64
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005E48 ; =0x0000FFFF
	sub r2, #0x2d
	bl sub_02004F68
	b _02005E40
_02005DAA:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005E48 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005E48 ; =0x0000FFFF
	sub r2, #0x61
	bl sub_02004F68
	b _02005E40
_02005DD4:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	ldr r1, _02005E48 ; =0x0000FFFF
	mov r0, #1
	add r2, r6, #0
	bl sub_02004F94
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02005E4C
	ldr r1, [sp, #0x38]
	mov r0, #0x14
	bl sub_02005E64
	mov r0, #1
	add r2, r0, #0
	ldr r1, _02005E48 ; =0x0000FFFF
	sub r2, #0x61
	bl sub_02004F68
	b _02005E40
_02005E06:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x7f
	bl sub_02005E4C
	add r0, r4, #0
	mov r1, #0x14
	add r2, r5, #0
	bl sub_020060EC
	ldr r1, _02005E48 ; =0x0000FFFF
	mov r0, #8
	add r2, r6, #0
	bl sub_02004F94
	mov r0, #8
	add r1, r7, #0
	mov r2, #0
	bl sub_02004A54
	b _02005E40
_02005E38:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02005844
_02005E40:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02005E48: .word 0x0000FFFF
	thumb_func_end sub_020059D0

	thumb_func_start sub_02005E4C
sub_02005E4C: ; 0x02005E4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	bl sub_02004A68
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02004AA0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005E4C

	thumb_func_start sub_02005E64
sub_02005E64: ; 0x02005E64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x23
	bl sub_02003D5C
	add r6, r0, #0
	bl sub_02005F24
	add r0, r4, #0
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	bne _02005E88
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_02005E88:
	mov r2, #0
	strb r2, [r4]
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	strb r2, [r4, #4]
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	ldr r0, _02005EAC ; =sub_02005EB0
	add r1, r4, #0
	str r5, [r4, #0]
	bl sub_0200D9E8
	str r0, [r4, #4]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	nop
_02005EAC: .word sub_02005EB0
	thumb_func_end sub_02005E64

	thumb_func_start sub_02005EB0
sub_02005EB0: ; 0x02005EB0
	push {r4, r5, r6, lr}
	mov r0, #0x10
	add r5, r1, #0
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x11
	bl sub_02003D5C
	ldr r2, [r5, #0]
	add r4, r0, #0
	cmp r2, #0xa
	bne _02005EDC
	mov r0, #1
	mov r1, #0
	bl sub_02004A54
	ldr r2, [r5, #0]
	mov r0, #8
	mov r1, #0
	bl sub_02004A54
_02005EDC:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	bl sub_0200598C
	cmp r0, #0
	bne _02005EEE
	mov r0, #0
	str r0, [r5, #0]
_02005EEE:
	ldr r0, [r5, #0]
	cmp r0, #0
	bgt _02005F22
	mov r0, #0
	bl sub_0200592C
	ldrb r0, [r6]
	cmp r0, #1
	bne _02005F0C
	mov r0, #0xe
	bl sub_02004E84
	mov r0, #0xe
	bl sub_02004C4C
_02005F0C:
	ldrb r0, [r4]
	cmp r0, #1
	bne _02005F1E
	mov r0, #0xf
	bl sub_02004E84
	mov r0, #0xf
	bl sub_02004C4C
_02005F1E:
	bl sub_02005F24
_02005F22:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02005EB0

	thumb_func_start sub_02005F24
sub_02005F24: ; 0x02005F24
	push {r3, r4, r5, lr}
	mov r0, #0x23
	bl sub_02003D5C
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02005F46
	bl sub_0201CED0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200DA58
	add r0, r5, #0
	bl sub_020181C4
_02005F46:
	mov r0, #0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02005F24

	thumb_func_start sub_02005F4C
sub_02005F4C: ; 0x02005F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	mov r0, #6
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x35
	bl sub_02003D5C
	str r0, [sp, #0xc]
	ldrb r0, [r4]
	cmp r0, #0
	bne _02005FA0
	mov r0, #0x29
	bl sub_02003D5C
	str r0, [sp, #0x24]
	mov r0, #0x2d
	bl sub_02003D5C
	str r0, [sp, #0x20]
	mov r0, #0x2a
	bl sub_02003D5C
	str r0, [sp, #0x1c]
	mov r0, #0x2b
	bl sub_02003D5C
	str r0, [sp, #0x18]
	mov r0, #0x2c
	bl sub_02003D5C
	str r0, [sp, #0x14]
	mov r0, #0x2e
	bl sub_02003D5C
	str r0, [sp, #0x10]
	b _02005FD0
_02005FA0:
	mov r0, #0x2f
	bl sub_02003D5C
	str r0, [sp, #0x24]
	mov r0, #0x33
	bl sub_02003D5C
	str r0, [sp, #0x20]
	mov r0, #0x30
	bl sub_02003D5C
	str r0, [sp, #0x1c]
	mov r0, #0x31
	bl sub_02003D5C
	str r0, [sp, #0x18]
	mov r0, #0x32
	bl sub_02003D5C
	str r0, [sp, #0x14]
	mov r0, #0x34
	bl sub_02003D5C
	str r0, [sp, #0x10]
_02005FD0:
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	cmp r0, #1
	bne _02005FE0
	ldrb r1, [r4]
	mov r0, #1
	eor r0, r1
	strb r0, [r4]
_02005FE0:
	add r1, sp, #0x30
	ldrb r1, [r1, #0x18]
	add r0, r5, #0
	bl sub_02006038
	cmp r0, #1
	bne _02005FF0
	ldr r5, _02006034 ; =0x000001EE
_02005FF0:
	cmp r5, #0
	beq _02006030
	add r1, sp, #0x30
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _02006014
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldrb r0, [r1, #0x18]
	add r1, r5, #0
	add r2, r7, #0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_020059D0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_02006014:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #8]
	str r6, [r1, #0]
	ldr r1, [sp, #0x20]
	strh r5, [r1]
	ldr r1, [sp, #0x1c]
	str r7, [r1, #0]
	ldr r1, [sp, #0x18]
	str r2, [r1, #0]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x14]
	str r2, [r1, #0]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
_02006030:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02006034: .word 0x000001EE
	thumb_func_end sub_02005F4C

	thumb_func_start sub_02006038
sub_02006038: ; 0x02006038
	mov r2, #0x7b
	lsl r2, r2, #2
	cmp r0, r2
	bne _02006048
	cmp r1, #1
	bne _02006048
	mov r0, #1
	bx lr
_02006048:
	ldr r1, _02006058 ; =0x000001EE
	cmp r0, r1
	bne _02006052
	mov r0, #1
	bx lr
_02006052:
	mov r0, #0
	bx lr
	nop
_02006058: .word 0x000001EE
	thumb_func_end sub_02006038

	thumb_func_start sub_0200605C
sub_0200605C: ; 0x0200605C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r0, #0x29
	bl sub_02003D5C
	add r5, r0, #0
	mov r0, #0x2d
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #0x2a
	bl sub_02003D5C
	add r6, r0, #0
	mov r0, #0x2b
	bl sub_02003D5C
	add r7, r0, #0
	mov r0, #0x2c
	bl sub_02003D5C
	str r0, [sp]
	mov r0, #0x2e
	bl sub_02003D5C
	str r0, [sp, #4]
	mov r0, #0x2f
	bl sub_02003D5C
	str r0, [sp, #8]
	mov r0, #0x33
	bl sub_02003D5C
	str r0, [sp, #0xc]
	mov r0, #0x30
	bl sub_02003D5C
	str r0, [sp, #0x10]
	mov r0, #0x31
	bl sub_02003D5C
	str r0, [sp, #0x14]
	mov r0, #0x32
	bl sub_02003D5C
	str r0, [sp, #0x18]
	mov r0, #0x34
	bl sub_02003D5C
	mov r1, #0
	str r1, [r5, #0]
	strh r1, [r4]
	str r1, [r6, #0]
	ldr r2, [sp]
	str r1, [r7, #0]
	str r1, [r2, #0]
	ldr r2, [sp, #4]
	strb r1, [r2]
	ldr r2, [sp, #8]
	str r1, [r2, #0]
	ldr r2, [sp, #0xc]
	strh r1, [r2]
	ldr r2, [sp, #0x10]
	str r1, [r2, #0]
	ldr r2, [sp, #0x14]
	str r1, [r2, #0]
	ldr r2, [sp, #0x18]
	str r1, [r2, #0]
	strb r1, [r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200605C

	thumb_func_start sub_020060EC
sub_020060EC: ; 0x020060EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x12
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02003D5C
	mov r1, #1
	strb r1, [r0]
	add r0, r1, #0
	bl sub_020063D4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02005844
	add r5, r0, #0
	ldr r1, _0200611C ; =0x0000FFFF
	mov r0, #8
	add r2, r4, #0
	bl sub_02004F68
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0200611C: .word 0x0000FFFF
	thumb_func_end sub_020060EC

	thumb_func_start sub_02006120
sub_02006120: ; 0x02006120
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x12
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02003D5C
	mov r1, #1
	strb r1, [r0]
	mov r0, #0xf
	bl sub_02004BCC
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0xf
	bl sub_02004D78
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02006120

	thumb_func_start sub_02006150
sub_02006150: ; 0x02006150
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02004B3C
	add r0, r5, #0
	bl sub_02006214
	bl sub_020041FC
	bl sub_02004B18
	cmp r0, #0xff
	beq _02006170
	mov r1, #1
	bl sub_020049F4
_02006170:
	mov r0, #0x1d
	bl sub_02003D5C
	bl sub_02004014
	add r0, r5, #0
	mov r1, #3
	bl sub_02004080
	mov r0, #2
	bl sub_020040CC
	add r1, r5, #0
	bl NNS_SndArcPlayerStartSeq
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_02004AA0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02006150

	thumb_func_start sub_0200619C
sub_0200619C: ; 0x0200619C
	push {r4, lr}
	mov r0, #0xe
	bl sub_02003D5C
	add r4, r0, #0
	mov r0, #2
	bl sub_02004B04
	cmp r0, #0
	beq _020061B4
	mov r0, #1
	pop {r4, pc}
_020061B4:
	ldrh r0, [r4]
	cmp r0, #0
	beq _020061C2
	sub r0, r0, #1
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_020061C2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0200619C

	thumb_func_start sub_020061C8
sub_020061C8: ; 0x020061C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_020040CC
	add r1, r4, #0
	bl NNS_SndPlayerStopSeq
	mov r0, #6
	bl sub_02004974
	bl sub_0200403C
	pop {r4, pc}
	thumb_func_end sub_020061C8

	thumb_func_start sub_020061E4
sub_020061E4: ; 0x020061E4
	push {r3, lr}
	mov r0, #0xe
	bl sub_02003D5C
	bl sub_0200619C
	cmp r0, #1
	bne _020061F8
	mov r0, #1
	pop {r3, pc}
_020061F8:
	mov r0, #0
	bl sub_020061C8
	bl sub_020041FC
	bl sub_02004B18
	cmp r0, #0xff
	beq _02006210
	mov r1, #0
	bl sub_020049F4
_02006210:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020061E4

	thumb_func_start sub_02006214
sub_02006214: ; 0x02006214
	push {r3, lr}
	mov r0, #0xe
	bl sub_02003D5C
	mov r1, #0xf
	strh r1, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02006214