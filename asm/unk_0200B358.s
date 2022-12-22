	.include "macros/function.inc"
	.include "include/unk_0200B358.inc"

	

	.text


	thumb_func_start sub_0200B358
sub_0200B358: ; 0x0200B358
	ldr r3, _0200B364 ; =sub_0200B368
	add r2, r0, #0
	mov r0, #8
	mov r1, #0x20
	bx r3
	nop
_0200B364: .word sub_0200B368
	thumb_func_end sub_0200B358

	thumb_func_start sub_0200B368
sub_0200B368: ; 0x0200B368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	bne _0200B378
	bl GF_AssertFail
_0200B378:
	ldr r0, [sp]
	cmp r0, #0
	bne _0200B382
	bl GF_AssertFail
_0200B382:
	ldr r0, [sp, #4]
	mov r1, #0x10
	bl sub_02018184
	add r4, r0, #0
	beq _0200B3E8
	ldr r0, [sp, #4]
	str r7, [r4, #0]
	str r0, [r4, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02023790
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _0200B3E8
	ldr r0, [sp, #4]
	lsl r1, r7, #3
	bl sub_02018184
	str r0, [r4, #8]
	cmp r0, #0
	beq _0200B3E8
	mov r6, #0
	cmp r7, #0
	bls _0200B3DE
	add r5, r6, #0
_0200B3B8:
	add r0, r0, r5
	bl sub_0200B444
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02023790
	ldr r1, [r4, #8]
	add r1, r1, r5
	str r0, [r1, #4]
	ldr r0, [r4, #8]
	add r1, r0, r5
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _0200B3DE
	add r6, r6, #1
	add r5, #8
	cmp r6, r7
	blo _0200B3B8
_0200B3DE:
	cmp r6, r7
	bne _0200B3E8
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0200B3E8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B368

	thumb_func_start sub_0200B3F0
sub_0200B3F0: ; 0x0200B3F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _0200B3FE
	bl GF_AssertFail
_0200B3FE:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0200B42C
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	bls _0200B426
	add r4, r6, #0
_0200B40E:
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0200B426
	bl sub_020237BC
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _0200B40E
_0200B426:
	ldr r0, [r5, #8]
	bl sub_020181C4
_0200B42C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0200B436
	bl sub_020237BC
_0200B436:
	mov r0, #0
	str r0, [r5, #0]
	add r0, r5, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0200B3F0

	thumb_func_start sub_0200B444
sub_0200B444: ; 0x0200B444
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200B444

	thumb_func_start sub_0200B448
sub_0200B448: ; 0x0200B448
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r6, r0
	blo _0200B45C
	bl GF_AssertFail
_0200B45C:
	ldr r0, [r5, #0]
	cmp r6, r0
	bhs _0200B48A
	cmp r4, #0
	beq _0200B47C
	ldrb r0, [r4]
	ldr r3, [r5, #8]
	lsl r2, r6, #3
	strb r0, [r3, r2]
	ldrb r0, [r4, #1]
	add r1, r3, r2
	strb r0, [r1, #1]
	ldrb r0, [r4, #2]
	strb r0, [r1, #2]
	ldrb r0, [r4, #3]
	strb r0, [r1, #3]
_0200B47C:
	ldr r1, [r5, #8]
	lsl r0, r6, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	add r1, r7, #0
	bl sub_02023810
_0200B48A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B448

	thumb_func_start sub_0200B48C
sub_0200B48C: ; 0x0200B48C
	push {r3, lr}
	mov r3, #0
	bl sub_0200B448
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0200B48C

	thumb_func_start sub_0200B498
sub_0200B498: ; 0x0200B498
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_02025EF0
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02023D28
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200B498

	thumb_func_start sub_0200B4BC
sub_0200B4BC: ; 0x0200B4BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_02027848
	bl sub_02027870
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02023D28
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200B4BC

	thumb_func_start sub_0200B4E4
sub_0200B4E4: ; 0x0200B4E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r6, r1, #0
	bl sub_02025E38
	add r7, r0, #0
	ldr r2, _0200B534 ; =0x00000229
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02025F30
	cmp r0, #0
	bne _0200B516
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B1B8
	b _0200B520
_0200B516:
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B1B8
_0200B520:
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r4, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B534: .word 0x00000229
	thumb_func_end sub_0200B4E4

	thumb_func_start sub_0200B538
sub_0200B538: ; 0x0200B538
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	mov r2, #0x67
	add r6, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r1, r0, #0
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r4, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B538

	thumb_func_start sub_0200B578
sub_0200B578: ; 0x0200B578
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B594
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200B578

	thumb_func_start sub_0200B594
sub_0200B594: ; 0x0200B594
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B5C8 ; =0x0000019D
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200B5C8: .word 0x0000019D
	thumb_func_end sub_0200B594

	thumb_func_start sub_0200B5CC
sub_0200B5CC: ; 0x0200B5CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	ldr r2, [r5, #0xc]
	mov r1, #0x77
	bl sub_02074570
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200B5CC

	thumb_func_start sub_0200B5EC
sub_0200B5EC: ; 0x0200B5EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	ldr r2, [r5, #0xc]
	mov r1, #0x91
	bl sub_02074570
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200B5EC

	thumb_func_start sub_0200B60C
sub_0200B60C: ; 0x0200B60C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	str r0, [sp]
	add r1, r2, #0
	add r2, r3, #0
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_020238A0
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200B60C

	thumb_func_start sub_0200B630
sub_0200B630: ; 0x0200B630
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B664 ; =0x00000287
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B662
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B662:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B664: .word 0x00000287
	thumb_func_end sub_0200B630

	thumb_func_start sub_0200B668
sub_0200B668: ; 0x0200B668
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B69C ; =0x00000217
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B69A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B69A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B69C: .word 0x00000217
	thumb_func_end sub_0200B668

	thumb_func_start sub_0200B6A0
sub_0200B6A0: ; 0x0200B6A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B6D4 ; =0x00000262
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B6D2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B6D2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B6D4: .word 0x00000262
	thumb_func_end sub_0200B6A0

	thumb_func_start sub_0200B6D8
sub_0200B6D8: ; 0x0200B6D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xca
	bl sub_0200B144
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B6D8

	thumb_func_start sub_0200B70C
sub_0200B70C: ; 0x0200B70C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x62
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B740
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B740:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B70C

	thumb_func_start sub_0200B744
sub_0200B744: ; 0x0200B744
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B778 ; =0x00000189
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B776
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B776:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B778: .word 0x00000189
	thumb_func_end sub_0200B744

	thumb_func_start sub_0200B77C
sub_0200B77C: ; 0x0200B77C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B7B0 ; =0x0000018A
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B7AE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B7AE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B7B0: .word 0x0000018A
	thumb_func_end sub_0200B77C

	thumb_func_start sub_0200B7B4
sub_0200B7B4: ; 0x0200B7B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x63
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B7E8
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B7E8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B7B4

	thumb_func_start sub_0200B7EC
sub_0200B7EC: ; 0x0200B7EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x27
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B820
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B820:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B7EC

	thumb_func_start sub_0200B824
sub_0200B824: ; 0x0200B824
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B858 ; =0x00000227
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B856
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B856:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B858: .word 0x00000227
	thumb_func_end sub_0200B824

	thumb_func_start sub_0200B85C
sub_0200B85C: ; 0x0200B85C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xdb
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B88E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B88E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200B85C

	thumb_func_start sub_0200B890
sub_0200B890: ; 0x0200B890
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B8C4 ; =0x0000025E
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B8C2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B8C2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B8C4: .word 0x0000025E
	thumb_func_end sub_0200B890

	thumb_func_start sub_0200B8C8
sub_0200B8C8: ; 0x0200B8C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200B920 ; =0x000001B1
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	beq _0200B91E
	cmp r4, #0
	beq _0200B8EC
	bl sub_0200B218
	cmp r4, r0
	blo _0200B902
_0200B8EC:
	add r0, r6, #0
	bl sub_0200B190
	ldr r2, _0200B924 ; =0x000001B2
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	mov r4, #2
_0200B902:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r6, #0
	bl sub_0200B190
_0200B91E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B920: .word 0x000001B1
_0200B924: .word 0x000001B2
	thumb_func_end sub_0200B8C8

	thumb_func_start sub_0200B928
sub_0200B928: ; 0x0200B928
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B95C ; =0x000001C9
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B95A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B95A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B95C: .word 0x000001C9
	thumb_func_end sub_0200B928

	thumb_func_start sub_0200B960
sub_0200B960: ; 0x0200B960
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200B994 ; =0x0000026B
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B992
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B992:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200B994: .word 0x0000026B
	thumb_func_end sub_0200B960

	thumb_func_start sub_0200B998
sub_0200B998: ; 0x0200B998
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x9b
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200B9CC
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200B9CC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200B998

	thumb_func_start sub_0200B9D0
sub_0200B9D0: ; 0x0200B9D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	ldr r2, _0200BA04 ; =0x0000026B
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BA02
	ldrb r1, [r4, #1]
	ldr r2, [r5, #0xc]
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BA02:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BA04: .word 0x0000026B
	thumb_func_end sub_0200B9D0

	thumb_func_start sub_0200BA08
sub_0200BA08: ; 0x0200BA08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BA3C ; =0x0000026A
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BA3A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BA3A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BA3C: .word 0x0000026A
	thumb_func_end sub_0200BA08

	thumb_func_start sub_0200BA40
sub_0200BA40: ; 0x0200BA40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0x15
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BA72
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BA72:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BA40

	thumb_func_start sub_0200BA74
sub_0200BA74: ; 0x0200BA74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r2, #0x14
	add r4, r1, #0
	add r1, r2, #0
	bl sub_02023D28
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200BA74

	thumb_func_start sub_0200BA94
sub_0200BA94: ; 0x0200BA94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x9d
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BAC8
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BAC8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200BA94

	thumb_func_start sub_0200BACC
sub_0200BACC: ; 0x0200BACC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BB00 ; =0x00000275
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BAFE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BAFE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BB00: .word 0x00000275
	thumb_func_end sub_0200BACC

	thumb_func_start sub_0200BB04
sub_0200BB04: ; 0x0200BB04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BB38 ; =0x00000276
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BB36
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BB36:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BB38: .word 0x00000276
	thumb_func_end sub_0200BB04

	thumb_func_start sub_0200BB3C
sub_0200BB3C: ; 0x0200BB3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BB70 ; =0x00000277
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BB6E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BB6E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BB70: .word 0x00000277
	thumb_func_end sub_0200BB3C

	thumb_func_start sub_0200BB74
sub_0200BB74: ; 0x0200BB74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcf
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BBA6
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BBA6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BB74

	thumb_func_start sub_0200BBA8
sub_0200BBA8: ; 0x0200BBA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcc
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BBDA
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BBDA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BBA8

	thumb_func_start sub_0200BBDC
sub_0200BBDC: ; 0x0200BBDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xcc
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BC0E
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BC0E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BBDC

	thumb_func_start sub_0200BC10
sub_0200BC10: ; 0x0200BC10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BC44 ; =0x00000279
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BC42
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BC42:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BC44: .word 0x00000279
	thumb_func_end sub_0200BC10

	thumb_func_start sub_0200BC48
sub_0200BC48: ; 0x0200BC48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x9e
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BC7C
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BC7C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200BC48

	thumb_func_start sub_0200BC80
sub_0200BC80: ; 0x0200BC80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BCB4 ; =0x00000272
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BCB2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BCB2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BCB4: .word 0x00000272
	thumb_func_end sub_0200BC80

	thumb_func_start sub_0200BCB8
sub_0200BCB8: ; 0x0200BCB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BCEC ; =0x00000273
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BCEA
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BCEA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BCEC: .word 0x00000273
	thumb_func_end sub_0200BCB8

	thumb_func_start sub_0200BCF0
sub_0200BCF0: ; 0x0200BCF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r6, r1, #0
	add r4, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd5
	bl sub_0200B144
	add r7, r0, #0
	cmp r4, #0
	beq _0200BD10
	cmp r4, #1
	beq _0200BD1A
	b _0200BD24
_0200BD10:
	ldr r2, [r5, #0xc]
	mov r1, #0x44
	bl sub_0200B1B8
	b _0200BD2A
_0200BD1A:
	ldr r2, [r5, #0xc]
	mov r1, #0x45
	bl sub_0200B1B8
	b _0200BD2A
_0200BD24:
	ldr r0, [r5, #0xc]
	bl sub_020237E8
_0200BD2A:
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200BCF0

	thumb_func_start sub_0200BD40
sub_0200BD40: ; 0x0200BD40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	ldr r2, [r5, #0xc]
	add r1, r3, #0
	bl sub_02079AF4
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0200BD40

	thumb_func_start sub_0200BD60
sub_0200BD60: ; 0x0200BD60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BD94 ; =0x0000017A
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BD92
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BD92:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BD94: .word 0x0000017A
	thumb_func_end sub_0200BD60

	thumb_func_start sub_0200BD98
sub_0200BD98: ; 0x0200BD98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x26
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BDCC
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BDCC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200BD98

	thumb_func_start sub_0200BDD0
sub_0200BDD0: ; 0x0200BDD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BE04 ; =0x000002B6
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BE02
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BE02:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BE04: .word 0x000002B6
	thumb_func_end sub_0200BDD0

	thumb_func_start sub_0200BE08
sub_0200BE08: ; 0x0200BE08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r6, r1, #0
	add r4, r3, #0
	bl sub_02099720
	add r2, r0, #0
	beq _0200BE46
	cmp r4, #0
	beq _0200BE46
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BE46
	ldr r2, [r5, #0xc]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BE46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BE08

	thumb_func_start sub_0200BE48
sub_0200BE48: ; 0x0200BE48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0xc]
	add r0, r2, #0
	bl sub_02014DB8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0200BE48

	thumb_func_start sub_0200BE64
sub_0200BE64: ; 0x0200BE64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xc
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BE96
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BE96:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BE64

	thumb_func_start sub_0200BE98
sub_0200BE98: ; 0x0200BE98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r3, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BECA
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BECA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0200BE98

	thumb_func_start sub_0200BECC
sub_0200BECC: ; 0x0200BECC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	str r1, [sp]
	bl sub_02017038
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02017058
	add r4, r0, #0
	ldr r2, _0200BF68 ; =0x020E4FE4
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BF66
	bl sub_0200B218
	cmp r4, r0
	bhs _0200BF26
	cmp r6, #0
	bne _0200BF08
	cmp r4, #0
	beq _0200BF26
_0200BF08:
	ldr r2, [r5, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r1, [sp]
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
_0200BF26:
	add r0, r7, #0
	bl sub_0200B190
	cmp r6, #0
	bne _0200BF3A
	cmp r4, #0
	bne _0200BF3A
	ldr r2, _0200BF6C ; =0x000001B3
	mov r4, #0xc
	b _0200BF3E
_0200BF3A:
	ldr r2, _0200BF70 ; =0x000001B2
	mov r4, #2
_0200BF3E:
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	beq _0200BF66
	ldr r2, [r5, #0xc]
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r1, [sp]
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r6, #0
	bl sub_0200B190
_0200BF66:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BF68: .word 0x020E4FE4
_0200BF6C: .word 0x000001B3
_0200BF70: .word 0x000001B2
	thumb_func_end sub_0200BECC

	thumb_func_start sub_0200BF74
sub_0200BF74: ; 0x0200BF74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BFA8 ; =0x000001D1
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BFA6
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BFA6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BFA8: .word 0x000001D1
	thumb_func_end sub_0200BF74

	thumb_func_start sub_0200BFAC
sub_0200BFAC: ; 0x0200BFAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200BFE0 ; =0x00000182
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200BFDE
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200BFDE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200BFE0: .word 0x00000182
	thumb_func_end sub_0200BFAC

	thumb_func_start sub_0200BFE4
sub_0200BFE4: ; 0x0200BFE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C018 ; =0x00000183
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C016
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C016:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C018: .word 0x00000183
	thumb_func_end sub_0200BFE4

	thumb_func_start sub_0200C01C
sub_0200C01C: ; 0x0200C01C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0x61
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C050
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C050:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C01C

	thumb_func_start sub_0200C054
sub_0200C054: ; 0x0200C054
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #8]
	add r5, r2, #0
	add r0, r1, #0
	str r3, [sp, #0xc]
	bl sub_0202B4A0
	add r6, r0, #0
	add r1, r5, #0
	bl sub_0202B47C
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202B488
	add r7, r0, #0
	mov r0, #0x40
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202B42C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023D28
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	str r7, [sp, #4]
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0200C054

	thumb_func_start sub_0200C0B0
sub_0200C0B0: ; 0x0200C0B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C0E4 ; =0x0000028B
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C0E2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C0E2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C0E4: .word 0x0000028B
	thumb_func_end sub_0200C0B0

	thumb_func_start sub_0200C0E8
sub_0200C0E8: ; 0x0200C0E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C11C ; =0x00000289
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C11A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C11A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C11C: .word 0x00000289
	thumb_func_end sub_0200C0E8

	thumb_func_start sub_0200C120
sub_0200C120: ; 0x0200C120
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0xa3
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C154
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C154:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C120

	thumb_func_start sub_0200C158
sub_0200C158: ; 0x0200C158
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C18C ; =0x0000029B
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C18A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C18A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C18C: .word 0x0000029B
	thumb_func_end sub_0200C158

	thumb_func_start sub_0200C190
sub_0200C190: ; 0x0200C190
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C1C4 ; =0x00000297
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C1C2
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C1C2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C1C4: .word 0x00000297
	thumb_func_end sub_0200C190

	thumb_func_start sub_0200C1C8
sub_0200C1C8: ; 0x0200C1C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0xa6
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C1FC
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C1FC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C1C8

	thumb_func_start sub_0200C200
sub_0200C200: ; 0x0200C200
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C234 ; =0x0000029A
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C232
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C232:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C234: .word 0x0000029A
	thumb_func_end sub_0200C200

	thumb_func_start sub_0200C238
sub_0200C238: ; 0x0200C238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C26C ; =0x00000299
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C26A
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C26A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C26C: .word 0x00000299
	thumb_func_end sub_0200C238

	thumb_func_start sub_0200C270
sub_0200C270: ; 0x0200C270
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	mov r2, #0xa7
	add r4, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r7, r0, #0
	beq _0200C2A4
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
_0200C2A4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0200C270

	thumb_func_start sub_0200C2A8
sub_0200C2A8: ; 0x0200C2A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0200C2DC ; =0x00000173
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r7, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C2DC: .word 0x00000173
	thumb_func_end sub_0200C2A8

	thumb_func_start sub_0200C2E0
sub_0200C2E0: ; 0x0200C2E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200C320 ; =0x0000019E
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	beq _0200C31E
	cmp r4, #1
	blo _0200C300
	cmp r4, #0xc
	bls _0200C302
_0200C300:
	mov r4, #1
_0200C302:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	sub r1, r4, #1
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r6, #0
	bl sub_0200B190
_0200C31E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200C320: .word 0x0000019E
	thumb_func_end sub_0200C2E0

	thumb_func_start sub_0200C324
sub_0200C324: ; 0x0200C324
	ldr r2, [r0, #8]
	lsl r0, r1, #3
	add r0, r2, r0
	ldr r3, _0200C334 ; =sub_02023F8C
	ldr r0, [r0, #4]
	mov r1, #0
	bx r3
	nop
_0200C334: .word sub_02023F8C
	thumb_func_end sub_0200C324

	thumb_func_start sub_0200C338
sub_0200C338: ; 0x0200C338
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r2, _0200C384 ; =0x00000169
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	cmp r4, #5
	bls _0200C356
	bl GF_AssertFail
_0200C356:
	cmp r6, #0
	beq _0200C380
	cmp r4, #0
	bne _0200C362
	mov r4, #0x79
	b _0200C364
_0200C362:
	add r4, #0x73
_0200C364:
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200B1B8
	ldr r2, [r5, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0200B448
	add r0, r6, #0
	bl sub_0200B190
_0200C380:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C384: .word 0x00000169
	thumb_func_end sub_0200C338

	thumb_func_start sub_0200C388
sub_0200C388: ; 0x0200C388
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	bl sub_02023E2C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_020237E8
	ldrh r1, [r5]
	ldr r0, _0200C414 ; =0x0000FFFF
	cmp r1, r0
	beq _0200C410
_0200C3A4:
	ldr r0, _0200C418 ; =0x0000FFFE
	cmp r1, r0
	bne _0200C3FE
	add r0, r5, #0
	bl sub_0201D108
	cmp r0, #0
	beq _0200C3E0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201D134
	add r4, r0, #0
	ldr r0, [r7, #0]
	cmp r4, r0
	blo _0200C3C8
	bl GF_AssertFail
_0200C3C8:
	ldr r2, [r7, #8]
	lsl r1, r4, #3
	add r1, r2, r1
	ldr r1, [r1, #4]
	add r0, r6, #0
	bl sub_02023F10
	add r0, r5, #0
	bl sub_0201D0C8
	add r5, r0, #0
	b _0200C408
_0200C3E0:
	add r0, r5, #0
	add r4, r5, #0
	bl sub_0201D0C8
	add r5, r0, #0
	cmp r4, r5
	bhs _0200C408
_0200C3EE:
	ldrh r1, [r4]
	add r0, r6, #0
	add r4, r4, #2
	bl sub_02023EB0
	cmp r4, r5
	blo _0200C3EE
	b _0200C408
_0200C3FE:
	ldrh r1, [r5]
	add r0, r6, #0
	add r5, r5, #2
	bl sub_02023EB0
_0200C408:
	ldrh r1, [r5]
	ldr r0, _0200C414 ; =0x0000FFFF
	cmp r1, r0
	bne _0200C3A4
_0200C410:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200C414: .word 0x0000FFFF
_0200C418: .word 0x0000FFFE
	thumb_func_end sub_0200C388

	thumb_func_start sub_0200C41C
sub_0200C41C: ; 0x0200C41C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r6, #0
	cmp r0, #0
	bls _0200C43E
	add r4, r6, #0
_0200C42A:
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldr r0, [r0, #4]
	bl sub_020237E8
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _0200C42A
_0200C43E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0200C41C

	.rodata


	.global Unk_020E4FE4
Unk_020E4FE4: ; 0x020E4FE4
	.incbin "incbin/arm9_rodata.bin", 0x3A4, 0x6

