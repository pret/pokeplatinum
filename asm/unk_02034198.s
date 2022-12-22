	.include "macros/function.inc"
	.include "include/unk_02034198.inc"

	

	.text


	thumb_func_start sub_02034198
sub_02034198: ; 0x02034198
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r4, #0
	ldr r1, _02034350 ; =0x021C07C4
	cmp r0, #0
	strb r4, [r1, #1]
	bne _020341A8
	b _020342F0
_020341A8:
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	ldr r0, _02034350 ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020341C2
	mov r0, #1
	pop {r4, r5, r6, pc}
_020341C2:
	mov r0, #0xf
	bl sub_020363E8
	mov r1, #0x6e
	mov r0, #0xf
	lsl r1, r1, #4
	bl sub_02018144
	ldr r2, _02034350 ; =0x021C07C4
	mov r1, #0x1f
	add r3, r0, #0
	and r3, r1
	mov r1, #0x20
	sub r1, r1, r3
	str r0, [r2, #4]
	add r0, r1, r0
	str r0, [r2, #8]
	mov r2, #0x1b
	add r1, r4, #0
	lsl r2, r2, #6
	bl MI_CpuFill8
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _0203420A
	ldr r0, _02034350 ; =0x021C07C4
	lsl r2, r5, #1
	ldr r1, [r0, #8]
	mov r0, #0x69
	add r2, #0x40
	lsl r0, r0, #4
	str r2, [r1, r0]
	b _02034216
_0203420A:
	ldr r0, _02034350 ; =0x021C07C4
	add r5, #0x40
	ldr r1, [r0, #8]
	mov r0, #0x69
	lsl r0, r0, #4
	str r5, [r1, r0]
_02034216:
	ldr r2, _02034350 ; =0x021C07C4
	mov r1, #0x69
	ldr r0, [r2, #8]
	lsl r1, r1, #4
	ldr r3, [r0, r1]
	add r5, r3, #0
	mul r5, r6
	sub r3, r1, #4
	str r5, [r0, r3]
	add r0, r1, #0
	ldr r3, [r2, #8]
	mov r5, #0
	add r0, #0x1d
	strb r5, [r3, r0]
	add r0, r1, #0
	ldr r3, [r2, #8]
	mov r5, #0x26
	add r0, #0x1e
	strb r5, [r3, r0]
	ldr r2, [r2, #8]
	mov r0, #0xf
	ldr r1, [r2, r1]
	lsl r1, r1, #1
	bl sub_02018144
	ldr r2, _02034350 ; =0x021C07C4
	mov r1, #0x49
	ldr r3, [r2, #8]
	lsl r1, r1, #4
	str r0, [r3, r1]
	mov r1, #0x69
	ldr r2, [r2, #8]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	mov r0, #0xf
	bl sub_02018144
	ldr r2, _02034350 ; =0x021C07C4
	ldr r1, _02034354 ; =0x00000494
	ldr r3, [r2, #8]
	str r0, [r3, r1]
	ldr r2, [r2, #8]
	ldr r1, _02034358 ; =0x0000068C
	mov r0, #0xf
	ldr r1, [r2, r1]
	bl sub_02018144
	ldr r2, _02034350 ; =0x021C07C4
	ldr r1, _0203435C ; =0x0000048C
	ldr r3, [r2, #8]
	str r0, [r3, r1]
	ldr r2, [r2, #8]
	ldr r1, _02034358 ; =0x0000068C
	mov r0, #0xf
	ldr r1, [r2, r1]
	bl sub_02018144
	ldr r1, _02034350 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _02034360 ; =0x00000488
	str r0, [r2, r1]
	bl sub_0203895C
	cmp r0, #0xa
	bne _020342C4
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0x16
	ldr r3, [r0, #8]
	lsl r2, r2, #6
	add r0, r3, r2
	sub r2, #0xe8
	mov r1, #0x64
	add r2, r3, r2
	bl sub_020325EC
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0x5a
	mov r1, #0x32
	ldr r3, [r0, #8]
	lsl r2, r2, #4
	add r0, r3, r2
	sub r2, #0x90
	lsl r1, r1, #4
	add r2, r3, r2
	bl sub_020325EC
	b _020342FC
_020342C4:
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0x16
	ldr r3, [r0, #8]
	lsl r2, r2, #6
	add r0, r3, r2
	sub r2, #0xe8
	mov r1, #0x14
	add r2, r3, r2
	bl sub_020325EC
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0x5a
	add r1, r5, #0
	ldr r3, [r0, #8]
	lsl r2, r2, #4
	add r0, r3, r2
	sub r2, #0x90
	add r1, #0xf2
	add r2, r3, r2
	bl sub_020325EC
	b _020342FC
_020342F0:
	ldr r0, [r1, #8]
	mov r4, #1
	cmp r0, #0
	bne _020342FC
	bl GF_AssertFail
_020342FC:
	ldr r2, _02034350 ; =0x021C07C4
	ldr r1, _02034364 ; =0x00000694
	ldr r3, [r2, #8]
	mov r0, #0
	strh r0, [r3, r1]
	mov r5, #0xff
	add r1, #0x13
_0203430A:
	ldr r3, [r2, #8]
	add r3, r3, r0
	add r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, #4
	blt _0203430A
	cmp r4, #0
	bne _0203431E
	bl sub_0203463C
_0203431E:
	ldr r0, _02034350 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034368 ; =0x0000062C
	add r0, r1, r0
	bl sub_020361BC
	cmp r4, #0
	bne _02034340
	mov r1, #0
	ldr r0, _0203436C ; =sub_0203498C
	add r2, r1, #0
	bl sub_0200DA04
	ldr r1, _02034350 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _02034370 ; =0x0000057C
	str r0, [r2, r1]
_02034340:
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02034374 ; =0x000006B7
	strb r2, [r1, r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02034350: .word 0x021C07C4
_02034354: .word 0x00000494
_02034358: .word 0x0000068C
_0203435C: .word 0x0000048C
_02034360: .word 0x00000488
_02034364: .word 0x00000694
_02034368: .word 0x0000062C
_0203436C: .word sub_0203498C
_02034370: .word 0x0000057C
_02034374: .word 0x000006B7
	thumb_func_end sub_02034198

	thumb_func_start sub_02034378
sub_02034378: ; 0x02034378
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	mov r2, #0x66
	ldr r3, _020345F4 ; =0x021C07C4
	add r7, r0, #1
	ldr r0, [r3, #8]
	mov r1, #0
	lsl r2, r2, #4
	strb r1, [r0, r2]
	add r0, r2, #1
	ldr r4, [r3, #8]
	add r2, #0x2c
	strb r1, [r4, r0]
	ldr r3, [r3, #8]
	ldr r0, _020345F8 ; =0x0000048C
	ldr r2, [r3, r2]
	ldr r0, [r3, r0]
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0x60
	ldr r1, [r0, #8]
	ldr r0, _020345FC ; =0x0000051C
	add r0, r1, r0
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034600 ; =0x0000068C
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _s32_div_f
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	cmp r7, #0
	ble _020343FA
	add r6, r0, #0
	add r5, r0, #0
_020343D6:
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r2, _020345F8 ; =0x0000048C
	ldr r1, [r0, #8]
	ldr r0, _020345FC ; =0x0000051C
	add r0, r1, r0
	ldr r1, [r1, r2]
	add r0, r0, r5
	add r1, r1, r6
	add r2, r4, #0
	bl sub_02032188
	ldr r0, [sp, #4]
	add r6, r6, r4
	add r0, r0, #1
	add r5, #0xc
	str r0, [sp, #4]
	cmp r0, r7
	blt _020343D6
_020343FA:
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r2, _02034600 ; =0x0000068C
	ldr r3, [r0, #8]
	ldr r0, _02034604 ; =0x00000488
	ldr r2, [r3, r2]
	ldr r0, [r3, r0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0x60
	ldr r1, [r0, #8]
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [sp]
	cmp r7, #0
	ble _02034450
	add r6, r0, #0
	add r5, r0, #0
_0203442A:
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r2, _02034604 ; =0x00000488
	ldr r1, [r0, #8]
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r1, [r1, r2]
	add r0, r0, r5
	add r1, r1, r6
	add r2, r4, #0
	bl sub_02032188
	ldr r0, [sp]
	add r6, r6, r4
	add r0, r0, #1
	add r5, #0xc
	str r0, [sp]
	cmp r0, r7
	blt _0203442A
_02034450:
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #6
	ldr r1, [r0, #8]
	mov r0, #0xc2
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	lsl r2, r2, #6
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	mov r1, #0xc2
	ldr r2, [r0, #8]
	mov r0, #0x51
	lsl r0, r0, #4
	lsl r1, r1, #2
	add r0, r2, r0
	add r1, r2, r1
	mov r2, #6
	lsl r2, r2, #6
	bl sub_02032188
	ldr r0, _020345F4 ; =0x021C07C4
	mov r1, #0xee
	ldr r0, [r0, #8]
	add r2, r1, #0
	add r0, #0x80
	add r2, #0x92
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #5
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #0xee
	add r2, r1, #0
	add r2, #0x92
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #2
	ldr r0, [r0, #8]
	lsl r2, r2, #8
	add r0, r0, r2
	mov r1, #0
	sub r2, #0xf8
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #2
	ldr r1, [r0, #8]
	ldr r0, _02034608 ; =0x00000498
	lsl r2, r2, #8
	add r0, r1, r0
	add r1, r1, r2
	sub r2, #0xf8
	bl sub_02032188
	ldr r0, _020345F4 ; =0x021C07C4
	mov r1, #0xee
	ldr r0, [r0, #8]
	mov r2, #0x26
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	mov r1, #0xee
	ldr r0, [r0, #8]
	mov r2, #0x26
	add r0, #0x40
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0xff
	ldr r1, [r0, #8]
	strb r2, [r1]
	ldr r1, [r0, #8]
	add r1, #0x40
	strb r2, [r1]
	ldr r3, [r0, #8]
	mov r2, #0x69
	mov r0, #0x49
	lsl r2, r2, #4
	lsl r0, r0, #4
	ldr r2, [r3, r2]
	ldr r0, [r3, r0]
	mov r1, #0
	lsl r2, r2, #1
	bl MI_CpuFill8
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0x69
	ldr r3, [r0, #8]
	ldr r1, _0203460C ; =0x000004A4
	lsl r2, r2, #4
	add r0, r3, r1
	sub r1, #0x14
	ldr r2, [r3, r2]
	ldr r1, [r3, r1]
	lsl r2, r2, #1
	bl sub_02032188
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0
	ldr r3, [r0, #8]
	ldr r1, _02034610 ; =0x000006B4
	mov ip, r2
	strb r2, [r3, r1]
	ldr r3, [r0, #8]
	add r1, r1, #1
	strb r2, [r3, r1]
	add r1, r2, #0
	add r7, r2, #0
	add r6, r2, #0
_02034534:
	ldr r3, [r0, #8]
	add r4, r3, r2
	ldr r3, _02034614 ; =0x00000697
	strb r6, [r4, r3]
	ldr r3, [r0, #8]
	ldr r4, _02034618 ; =0x0000069F
	add r5, r3, r2
	mov r3, #1
	strb r3, [r5, r4]
	ldr r4, [r0, #8]
	mov r3, ip
	add r4, r4, r3
	ldr r3, _0203461C ; =0x00000644
	add r2, r2, #1
	strh r6, [r4, r3]
	ldr r3, [r0, #8]
	mov r4, #0xee
	add r5, r3, r1
	ldr r3, _02034620 ; =0x000005CA
	strb r4, [r5, r3]
	ldr r3, [r0, #8]
	ldr r4, _02034624 ; =0x0000FFFF
	add r5, r3, r1
	ldr r3, _02034628 ; =0x000005C8
	strh r4, [r5, r3]
	ldr r3, [r0, #8]
	add r4, r3, r1
	ldr r3, _0203462C ; =0x000005C4
	str r6, [r4, r3]
	ldr r3, [r0, #8]
	add r4, r3, r1
	mov r3, #0x17
	lsl r3, r3, #6
	str r6, [r4, r3]
	ldr r3, [r0, #8]
	add r1, #0xc
	add r4, r3, r7
	ldr r3, _02034630 ; =0x0000066C
	add r7, r7, #4
	str r6, [r4, r3]
	mov r3, ip
	add r3, r3, #2
	mov ip, r3
	cmp r2, #8
	blt _02034534
	ldr r1, _020345F4 ; =0x021C07C4
	ldr r0, _02034634 ; =0x00000668
	ldr r2, [r1, #8]
	add r3, r0, #0
	str r6, [r2, r0]
	ldr r4, [r1, #8]
	sub r3, #0x3e
	mov r2, #0xee
	strb r2, [r4, r3]
	add r3, r0, #0
	ldr r4, [r1, #8]
	ldr r2, _02034624 ; =0x0000FFFF
	sub r3, #0x40
	strh r2, [r4, r3]
	add r2, r0, #0
	ldr r3, [r1, #8]
	sub r2, #0x44
	str r6, [r3, r2]
	add r2, r0, #0
	ldr r3, [r1, #8]
	sub r2, #0x48
	str r6, [r3, r2]
	add r3, r0, #0
	ldr r4, [r1, #8]
	add r3, #0x4a
	mov r2, #1
	strb r2, [r4, r3]
	add r3, r0, #0
	ldr r4, [r1, #8]
	add r3, #0x4b
	strb r2, [r4, r3]
	strb r6, [r1]
	ldr r1, [r1, #8]
	sub r0, #0xe8
	add r0, r1, r0
	bl sub_02032618
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_02032618
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02034638 ; =0x000006B8
	strb r2, [r1, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020345F4: .word 0x021C07C4
_020345F8: .word 0x0000048C
_020345FC: .word 0x0000051C
_02034600: .word 0x0000068C
_02034604: .word 0x00000488
_02034608: .word 0x00000498
_0203460C: .word 0x000004A4
_02034610: .word 0x000006B4
_02034614: .word 0x00000697
_02034618: .word 0x0000069F
_0203461C: .word 0x00000644
_02034620: .word 0x000005CA
_02034624: .word 0x0000FFFF
_02034628: .word 0x000005C8
_0203462C: .word 0x000005C4
_02034630: .word 0x0000066C
_02034634: .word 0x00000668
_02034638: .word 0x000006B8
	thumb_func_end sub_02034378

	thumb_func_start sub_0203463C
sub_0203463C: ; 0x0203463C
	push {r4, lr}
	ldr r2, _02034664 ; =0x021C07C4
	ldr r1, _02034668 ; =0x000006AF
	ldr r0, [r2, #8]
	mov r4, #0
	strb r4, [r0, r1]
	ldr r3, [r2, #8]
	add r0, r1, #1
	strb r4, [r3, r0]
	ldr r0, [r2, #8]
	mov r3, #1
	sub r1, #0x4b
	str r3, [r0, r1]
	bl sub_02034378
	ldr r0, _0203466C ; =0x02100A1C
	mov r1, #4
	strb r1, [r0]
	strb r1, [r0, #1]
	pop {r4, pc}
	; .align 2, 0
_02034664: .word 0x021C07C4
_02034668: .word 0x000006AF
_0203466C: .word 0x02100A1C
	thumb_func_end sub_0203463C

	thumb_func_start sub_02034670
sub_02034670: ; 0x02034670
	ldr r3, _02034674 ; =sub_02034378
	bx r3
	; .align 2, 0
_02034674: .word sub_02034378
	thumb_func_end sub_02034670

	thumb_func_start sub_02034678
sub_02034678: ; 0x02034678
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0203471C ; =0x021C07C4
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r3, _02034720 ; =0x00000697
	mov r1, #0
	add r0, r0, r5
	strb r1, [r0, r3]
	ldr r2, [r4, #8]
	mov r0, #1
	add r6, r2, r5
	add r2, r3, #0
	add r2, #8
	strb r0, [r6, r2]
	ldr r2, [r4, #8]
	lsl r0, r5, #2
	add r0, r2, r0
	sub r3, #0x2b
	str r1, [r0, r3]
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r1, r0, #0
	add r0, r4, #0
	ldr r6, [r0, #8]
	ldr r0, _02034724 ; =0x0000068C
	add r1, r1, #1
	ldr r0, [r6, r0]
	bl _s32_div_f
	add r7, r5, #0
	mov r1, #0x4b
	str r0, [sp]
	mul r7, r0
	mov r0, #0xc
	add r4, r5, #0
	lsl r1, r1, #4
	mul r4, r0
	add r0, r6, r1
	sub r1, #0x28
	ldr r1, [r6, r1]
	ldr r2, [sp]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_02032188
	ldr r0, _0203471C ; =0x021C07C4
	ldr r1, _02034728 ; =0x0000051C
	ldr r2, [r0, #8]
	add r0, r2, r1
	sub r1, #0x90
	ldr r1, [r2, r1]
	ldr r2, [sp]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_02032188
	ldr r3, _0203471C ; =0x021C07C4
	ldr r2, _0203472C ; =0x000005CA
	ldr r0, [r3, #8]
	mov r1, #0xee
	add r0, r0, r4
	strb r1, [r0, r2]
	ldr r0, [r3, #8]
	ldr r5, _02034730 ; =0x0000FFFF
	add r1, r0, r4
	sub r0, r2, #2
	strh r5, [r1, r0]
	ldr r1, [r3, #8]
	mov r0, #0
	add r5, r1, r4
	sub r1, r2, #6
	str r0, [r5, r1]
	ldr r1, [r3, #8]
	sub r2, #0xa
	add r1, r1, r4
	str r0, [r1, r2]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203471C: .word 0x021C07C4
_02034720: .word 0x00000697
_02034724: .word 0x0000068C
_02034728: .word 0x0000051C
_0203472C: .word 0x000005CA
_02034730: .word 0x0000FFFF
	thumb_func_end sub_02034678

	thumb_func_start sub_02034734
sub_02034734: ; 0x02034734
	push {r4, r5, r6, lr}
	ldr r4, _02034768 ; =0x021C07C4
	ldr r6, _0203476C ; =0x0000069F
	mov r5, #1
_0203473C:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _02034760
	ldr r0, [r4, #8]
	add r0, r0, r5
	ldrb r0, [r0, r6]
	cmp r0, #0
	bne _02034760
	bl sub_02036180
	cmp r0, #0
	bne _02034760
	add r0, r5, #0
	bl sub_02034678
_02034760:
	add r5, r5, #1
	cmp r5, #8
	blt _0203473C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02034768: .word 0x021C07C4
_0203476C: .word 0x0000069F
	thumb_func_end sub_02034734

	thumb_func_start sub_02034770
sub_02034770: ; 0x02034770
	ldr r3, _02034774 ; =sub_02034678
	bx r3
	; .align 2, 0
_02034774: .word sub_02034678
	thumb_func_end sub_02034770

	thumb_func_start sub_02034778
sub_02034778: ; 0x02034778
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	mov r4, #1
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	bne _020347A2
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020335DC
	add r4, r0, #0
	ldr r0, _020347B0 ; =sub_02034770
	bl sub_02032124
_020347A2:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02034198
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020347B0: .word sub_02034770
	thumb_func_end sub_02034778

	thumb_func_start sub_020347B4
sub_020347B4: ; 0x020347B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #1
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	bne _020347D4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02033650
	add r4, r0, #0
_020347D4:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02034198
	ldr r0, _020347E8 ; =0x02100A1C
	mov r1, #4
	strb r1, [r0, #1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020347E8: .word 0x02100A1C
	thumb_func_end sub_020347B4

	thumb_func_start sub_020347EC
sub_020347EC: ; 0x020347EC
	push {r4, lr}
	mov r4, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02034802
	ldr r0, _0203483C ; =0x02100A1C
	ldrb r0, [r0]
	cmp r0, #4
	beq _0203480A
	pop {r4, pc}
_02034802:
	ldr r0, _0203483C ; =0x02100A1C
	ldrb r0, [r0, #1]
	cmp r0, #4
	bne _02034838
_0203480A:
	ldr r0, _02034840 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034844 ; =0x000006AD
	ldrb r1, [r2, r0]
	cmp r1, #2
	bne _0203481C
	mov r1, #0
	strb r1, [r2, r0]
	mov r4, #1
_0203481C:
	ldr r0, _02034840 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034844 ; =0x000006AD
	ldrb r1, [r2, r0]
	cmp r1, #3
	bne _0203482C
	mov r4, #1
	strb r4, [r2, r0]
_0203482C:
	cmp r4, #0
	beq _02034834
	bl sub_02034670
_02034834:
	bl sub_02035F84
_02034838:
	pop {r4, pc}
	nop
_0203483C: .word 0x02100A1C
_02034840: .word 0x021C07C4
_02034844: .word 0x000006AD
	thumb_func_end sub_020347EC

	thumb_func_start sub_02034848
sub_02034848: ; 0x02034848
	ldr r1, _02034870 ; =0x021C07C4
	ldr r3, [r1, #8]
	ldr r1, _02034874 ; =0x000006AD
	ldrb r2, [r3, r1]
	cmp r2, #0
	bne _0203485E
	cmp r0, #1
	bne _0203485E
	mov r0, #3
	strb r0, [r3, r1]
	bx lr
_0203485E:
	cmp r2, #1
	bne _0203486C
	cmp r0, #0
	bne _0203486C
	ldr r0, _02034874 ; =0x000006AD
	mov r1, #2
	strb r1, [r3, r0]
_0203486C:
	bx lr
	nop
_02034870: .word 0x021C07C4
_02034874: .word 0x000006AD
	thumb_func_end sub_02034848

	thumb_func_start sub_02034878
sub_02034878: ; 0x02034878
	ldr r3, _02034880 ; =sub_02034848
	mov r0, #1
	bx r3
	nop
_02034880: .word sub_02034848
	thumb_func_end sub_02034878

	thumb_func_start sub_02034884
sub_02034884: ; 0x02034884
	ldr r3, _0203488C ; =sub_02034848
	mov r0, #0
	bx r3
	nop
_0203488C: .word sub_02034848
	thumb_func_end sub_02034884

	thumb_func_start sub_02034890
sub_02034890: ; 0x02034890
	ldr r0, _020348A8 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020348AC ; =0x000006AD
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _020348A0
	mov r0, #1
	bx lr
_020348A0:
	cmp r0, #3
	bne _020348A6
	mov r0, #0
_020348A6:
	bx lr
	; .align 2, 0
_020348A8: .word 0x021C07C4
_020348AC: .word 0x000006AD
	thumb_func_end sub_02034890

	thumb_func_start sub_020348B0
sub_020348B0: ; 0x020348B0
	push {r3, lr}
	bl sub_02034890
	cmp r0, #1
	bne _020348BE
	mov r0, #1
	pop {r3, pc}
_020348BE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020348B0

	thumb_func_start sub_020348C4
sub_020348C4: ; 0x020348C4
	push {r4, lr}
	ldr r0, _02034970 ; =0x021C07C4
	mov r4, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020348EE
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _020348E4
	bl ov4_021D2184
	mov r4, #1
	b _020348EE
_020348E4:
	bl sub_02033768
	cmp r0, #0
	beq _020348EE
	mov r4, #1
_020348EE:
	cmp r4, #0
	beq _0203496E
	bl sub_02036438
	bl sub_02032A70
	ldr r0, _02034970 ; =0x021C07C4
	mov r1, #0
	strb r1, [r0, #1]
	ldr r1, [r0, #8]
	ldr r0, _02034974 ; =0x0000057C
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r1, _02034970 ; =0x021C07C4
	ldr r0, _02034974 ; =0x0000057C
	ldr r2, [r1, #8]
	mov r3, #0
	str r3, [r2, r0]
	ldr r1, [r1, #8]
	sub r0, #0xec
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034978 ; =0x00000494
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _0203497C ; =0x0000048C
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034980 ; =0x00000488
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_02032638
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	bl sub_02032638
	ldr r0, _02034970 ; =0x021C07C4
	ldr r0, [r0, #4]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
_0203496E:
	pop {r4, pc}
	; .align 2, 0
_02034970: .word 0x021C07C4
_02034974: .word 0x0000057C
_02034978: .word 0x00000494
_0203497C: .word 0x0000048C
_02034980: .word 0x00000488
	thumb_func_end sub_020348C4

	thumb_func_start sub_02034984
sub_02034984: ; 0x02034984
	ldr r3, _02034988 ; =sub_020339E8
	bx r3
	; .align 2, 0
_02034988: .word sub_020339E8
	thumb_func_end sub_02034984

	thumb_func_start sub_0203498C
sub_0203498C: ; 0x0203498C
	push {r3, lr}
	ldr r0, _020349C0 ; =0x021C07C4
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _020349BE
	bl sub_020353CC
	bl sub_0203608C
	cmp r0, #0
	bne _020349AC
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _020349B4
_020349AC:
	bl sub_02036180
	cmp r0, #0
	beq _020349B8
_020349B4:
	bl sub_02034DC8
_020349B8:
	ldr r0, _020349C0 ; =0x021C07C4
	mov r1, #0
	strb r1, [r0, #1]
_020349BE:
	pop {r3, pc}
	; .align 2, 0
_020349C0: .word 0x021C07C4
	thumb_func_end sub_0203498C

	thumb_func_start sub_020349C4
sub_020349C4: ; 0x020349C4
	push {r3, lr}
	bl sub_0203406C
	cmp r0, #0
	beq _020349E8
	bl sub_0203608C
	cmp r0, #0
	bne _020349E4
	bl sub_02033E48
	cmp r0, #0
	bne _020349E8
	bl sub_020348C4
	pop {r3, pc}
_020349E4:
	bl sub_020348C4
_020349E8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020349C4

	thumb_func_start sub_020349EC
sub_020349EC: ; 0x020349EC
	push {r4, lr}
	bl sub_02036C50
	ldr r3, _02034ACC ; =0x021C07C4
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _02034AB6
	ldr r2, _02034AD0 ; =0x000006BA
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _02034A98
	add r1, r2, #3
	ldrb r1, [r0, r1]
	add r4, r1, #1
	add r1, r2, #3
	strb r4, [r0, r1]
	mov r0, #0
	strb r0, [r3, #1]
	bl sub_020347EC
	ldr r0, _02034ACC ; =0x021C07C4
	ldr r1, _02034AD4 ; =0x021BF67C
	ldr r0, [r0, #8]
	ldr r2, _02034AD8 ; =0x0000065C
	ldr r3, [r1, #0x44]
	ldr r1, _02034ADC ; =0x00007FFF
	ldrh r4, [r0, r2]
	and r1, r3
	orr r1, r4
	strh r1, [r0, r2]
	bl sub_02035534
	bl sub_02034B50
	ldr r0, _02034ACC ; =0x021C07C4
	ldr r1, _02034AD8 ; =0x0000065C
	ldr r3, [r0, #8]
	mov r0, #2
	ldrh r2, [r3, r1]
	lsl r0, r0, #0xe
	and r0, r2
	strh r0, [r3, r1]
	bl sub_02034890
	cmp r0, #0
	bne _02034A4C
	bl sub_02035CA8
_02034A4C:
	bl sub_0203608C
	cmp r0, #0
	bne _02034A5E
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _02034A66
_02034A5E:
	bl sub_02036180
	cmp r0, #0
	beq _02034A76
_02034A66:
	bl sub_0203895C
	bl sub_0203272C
	cmp r0, #0
	bne _02034A76
	bl sub_02034F68
_02034A76:
	bl sub_0203608C
	cmp r0, #0
	beq _02034A8E
	bl sub_02034890
	cmp r0, #1
	beq _02034A8E
	bl sub_02036180
	cmp r0, #0
	beq _02034A92
_02034A8E:
	bl sub_02035CF8
_02034A92:
	ldr r0, _02034ACC ; =0x021C07C4
	mov r1, #1
	strb r1, [r0, #1]
_02034A98:
	ldr r0, _02034ACC ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034AE0 ; =0x00000694
	ldrh r0, [r1, r0]
	bl sub_02033D94
	bl sub_0203608C
	cmp r0, #0
	bne _02034AB0
	bl sub_02034734
_02034AB0:
	bl sub_020349C4
	b _02034ABC
_02034AB6:
	mov r0, #0
	bl sub_02033D94
_02034ABC:
	mov r0, #0
	bl sub_02038A20
	bl sub_0203650C
	mov r0, #1
	pop {r4, pc}
	nop
_02034ACC: .word 0x021C07C4
_02034AD0: .word 0x000006BA
_02034AD4: .word 0x021BF67C
_02034AD8: .word 0x0000065C
_02034ADC: .word 0x00007FFF
_02034AE0: .word 0x00000694
	thumb_func_end sub_020349EC

	thumb_func_start sub_02034AE4
sub_02034AE4: ; 0x02034AE4
	push {r4, lr}
	ldr r0, _02034B00 ; =0x021C07C4
	mov r1, #0
	ldrb r4, [r0, #1]
	strb r1, [r0, #1]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02034AF8
	bl sub_0203463C
_02034AF8:
	ldr r0, _02034B00 ; =0x021C07C4
	strb r4, [r0, #1]
	pop {r4, pc}
	nop
_02034B00: .word 0x021C07C4
	thumb_func_end sub_02034AE4

	thumb_func_start sub_02034B04
sub_02034B04: ; 0x02034B04
	push {r4, lr}
	ldr r0, _02034B24 ; =0x021C07C4
	mov r1, #0
	ldrb r4, [r0, #1]
	strb r1, [r0, #1]
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02034B1E
	ldr r0, _02034B28 ; =0x000006AD
	mov r1, #1
	strb r1, [r2, r0]
	bl sub_0203463C
_02034B1E:
	ldr r0, _02034B24 ; =0x021C07C4
	strb r4, [r0, #1]
	pop {r4, pc}
	; .align 2, 0
_02034B24: .word 0x021C07C4
_02034B28: .word 0x000006AD
	thumb_func_end sub_02034B04

	thumb_func_start sub_02034B2C
sub_02034B2C: ; 0x02034B2C
	push {r4, lr}
	ldr r0, _02034B4C ; =0x021C07C4
	mov r1, #0
	ldrb r4, [r0, #1]
	strb r1, [r0, #1]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02034B44
	bl sub_0203463C
	bl sub_02033518
_02034B44:
	ldr r0, _02034B4C ; =0x021C07C4
	strb r4, [r0, #1]
	pop {r4, pc}
	nop
_02034B4C: .word 0x021C07C4
	thumb_func_end sub_02034B2C

	thumb_func_start sub_02034B50
sub_02034B50: ; 0x02034B50
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203895C
	bl sub_0203272C
	cmp r0, #0
	beq _02034C04
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r1, _02034CE4 ; =0x000006B7
	ldr r0, [r0, #8]
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _02034BC0
	sub r1, #0x53
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02034B92
	bl sub_02034F1C
	cmp r0, #0
	beq _02034BB0
	ldr r0, _02034CE8 ; =0x02100A1C
	ldrb r0, [r0, #1]
	cmp r0, #4
	bne _02034BA8
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r0, [r0, #8]
	bl sub_020357F0
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0, #1]
	b _02034BA8
_02034B92:
	ldr r1, _02034CE8 ; =0x02100A1C
	ldrb r1, [r1, #1]
	cmp r1, #4
	bne _02034BA8
	bl sub_020357F0
	cmp r0, #0
	beq _02034BB0
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0, #1]
_02034BA8:
	bl sub_0203594C
	cmp r0, #0
	beq _02034BB2
_02034BB0:
	b _02034CDC
_02034BB2:
	ldr r0, _02034CE0 ; =0x021C07C4
	mov r1, #0x26
	ldr r0, [r0, #8]
	bl ov4_021D1590
	cmp r0, #0
	bne _02034BC2
_02034BC0:
	b _02034CDC
_02034BC2:
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	mov r4, #0
	cmp r6, #0
	ble _02034BFC
	ldr r7, _02034CE0 ; =0x021C07C4
	add r5, r4, #0
_02034BDA:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02034BF4
	ldr r0, [r7, #8]
	ldr r1, _02034CEC ; =0x0000066C
	add r0, r0, r5
	ldr r1, [r0, r1]
	add r2, r1, #1
	ldr r1, _02034CEC ; =0x0000066C
	str r2, [r0, r1]
_02034BF4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02034BDA
_02034BFC:
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #4
	strb r1, [r0, #1]
	pop {r3, r4, r5, r6, r7, pc}
_02034C04:
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02034C82
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r2, _02034CE4 ; =0x000006B7
	ldr r0, [r0, #8]
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _02034CDC
	add r1, r2, #0
	sub r1, #0x53
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02034C42
	sub r2, #0x4f
	ldr r1, [r0, r2]
	cmp r1, #3
	bgt _02034CDC
	ldr r1, _02034CE8 ; =0x02100A1C
	ldrb r1, [r1, #1]
	cmp r1, #4
	bne _02034C58
	bl sub_020357F0
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0, #1]
	b _02034C58
_02034C42:
	ldr r1, _02034CE8 ; =0x02100A1C
	ldrb r1, [r1, #1]
	cmp r1, #4
	bne _02034C58
	bl sub_020357F0
	cmp r0, #0
	beq _02034CDC
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0, #1]
_02034C58:
	bl sub_0203594C
	cmp r0, #0
	bne _02034CDC
	ldr r0, _02034CE0 ; =0x021C07C4
	mov r1, #0x26
	ldr r0, [r0, #8]
	bl ov4_021D142C
	cmp r0, #0
	beq _02034CDC
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #4
	strb r1, [r0, #1]
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034CF0 ; =0x00000668
	ldr r1, [r2, r0]
	add r1, r1, #1
	str r1, [r2, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02034C82:
	bl sub_02031934
	cmp r0, #4
	bne _02034C96
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02034C9E
_02034C96:
	bl sub_02036180
	cmp r0, #0
	beq _02034CDC
_02034C9E:
	ldr r0, _02034CE8 ; =0x02100A1C
	ldrb r0, [r0, #1]
	cmp r0, #4
	bne _02034CD8
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034CF0 ; =0x00000668
	ldr r1, [r2, r0]
	cmp r1, #3
	bgt _02034CD8
	add r0, #0x47
	ldrb r0, [r2, r0]
	lsl r0, r0, #6
	add r0, r2, r0
	bl sub_020357F0
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034CF4 ; =0x000006AF
	ldrb r1, [r2, r0]
	mov r0, #1
	sub r0, r0, r1
	lsl r0, r0, #6
	add r0, r2, r0
	bl sub_020357F0
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #0
	strb r1, [r0, #1]
_02034CD8:
	bl sub_020353CC
_02034CDC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02034CE0: .word 0x021C07C4
_02034CE4: .word 0x000006B7
_02034CE8: .word 0x02100A1C
_02034CEC: .word 0x0000066C
_02034CF0: .word 0x00000668
_02034CF4: .word 0x000006AF
	thumb_func_end sub_02034B50

	thumb_func_start sub_02034CF8
sub_02034CF8: ; 0x02034CF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r7, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	str r0, [sp, #0xc]
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r0, r0, #1
	str r0, [sp, #8]
	add r0, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _02034DB0
	ldr r0, [sp]
	ldr r6, [sp, #4]
	mov r1, #0xc0
	add r5, r0, #0
	add r4, r6, #0
	mul r5, r1
_02034D34:
	ldr r0, _02034DC4 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r1, r0
	add r0, r0, r6
	bl sub_020322D0
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02034D62
	ldr r0, _02034DC4 ; =0x021C07C4
	ldr r0, [r0, #8]
	add r0, r5, r0
	add r1, r4, r0
	add r1, #0x80
	mov r0, #0xe
	strb r0, [r1]
	b _02034D74
_02034D62:
	ldr r0, _02034DC4 ; =0x021C07C4
	add r7, r7, #1
	ldr r0, [r0, #8]
	add r0, r5, r0
	add r1, r4, r0
	add r1, #0x80
	mov r0, #0xff
	strb r0, [r1]
	b _02034D9E
_02034D74:
	ldr r0, _02034DC4 ; =0x021C07C4
	ldr r2, [sp, #0xc]
	ldr r1, [r0, #8]
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, #0x80
	add r1, r1, r5
	add r0, r0, r6
	add r1, r1, r4
	bl sub_020321F4
	ldr r0, _02034DC4 ; =0x021C07C4
	ldr r0, [r0, #8]
	add r0, r5, r0
	add r0, r4, r0
	add r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _02034D9E
	add r7, r7, #1
_02034D9E:
	ldr r0, [sp, #0xc]
	add r6, #0xc
	add r4, r4, r0
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	cmp r1, r0
	blt _02034D34
_02034DB0:
	ldr r0, [sp, #8]
	cmp r7, r0
	bne _02034DBC
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02034DBC:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02034DC4: .word 0x021C07C4
	thumb_func_end sub_02034CF8

	thumb_func_start sub_02034DC8
sub_02034DC8: ; 0x02034DC8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02034F0C ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02034DDE
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02034DE0
_02034DDE:
	b _02034F08
_02034DE0:
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	cmp r1, #2
	beq _02034E08
	ldrb r0, [r0]
	cmp r0, #0
	bne _02034F08
_02034E08:
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	bl sub_02034890
	cmp r0, #1
	bne _02034E32
	ldr r0, _02034F0C ; =0x021C07C4
	ldrb r1, [r0]
	cmp r1, #0
	bne _02034E32
	ldr r1, [r0, #8]
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bl sub_02034CF8
	ldr r0, _02034F0C ; =0x021C07C4
	mov r1, #1
	strb r1, [r0]
_02034E32:
	bl sub_02031934
	cmp r0, #4
	bne _02034E6C
	bl sub_02036180
	cmp r0, #0
	bne _02034E6C
	ldr r0, _02034F0C ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r3, r1, #0
	mov r1, #0xc0
	add r2, r0, #0
	add r3, #0x80
	mul r2, r1
	add r0, r3, r2
	ldr r3, _02034F14 ; =sub_020353B0
	mov r2, #0xe
	bl sub_02031E9C
	cmp r0, #0
	bne _02034E6C
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	sub r1, r1, #1
	strb r1, [r0]
_02034E6C:
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	cmp r1, #1
	beq _02034E7A
	ldrb r0, [r0]
	cmp r0, #3
	bne _02034EF0
_02034E7A:
	ldr r7, _02034F0C ; =0x021C07C4
	mov r4, #0
	strb r4, [r7]
	cmp r6, #0
	ble _02034EC4
	add r5, r4, #0
_02034E86:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02034EA2
	ldr r0, [r7, #8]
	ldr r1, _02034F18 ; =0x0000066C
	add r0, r0, r5
	ldr r1, [r0, r1]
	add r2, r1, #1
	ldr r1, _02034F18 ; =0x0000066C
	str r2, [r0, r1]
	b _02034EBC
_02034EA2:
	bl sub_02036180
	cmp r0, #0
	beq _02034EBC
	cmp r4, #0
	bne _02034EBC
	ldr r0, [r7, #8]
	ldr r1, _02034F18 ; =0x0000066C
	add r0, r0, r5
	ldr r1, [r0, r1]
	add r2, r1, #1
	ldr r1, _02034F18 ; =0x0000066C
	str r2, [r0, r1]
_02034EBC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02034E86
_02034EC4:
	ldr r0, _02034F0C ; =0x021C07C4
	mov r1, #0x6b
	ldr r2, [r0, #8]
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	add r4, r2, #0
	mov r2, #0xc0
	add r3, r1, #0
	add r4, #0x80
	mul r3, r2
	mov r0, #0
	add r1, r4, r3
	bl sub_020350A4
	ldr r0, _02034F0C ; =0x021C07C4
	mov r1, #0x6b
	ldr r3, [r0, #8]
	lsl r1, r1, #4
	ldrb r2, [r3, r1]
	mov r0, #1
	sub r0, r0, r2
	strb r0, [r3, r1]
_02034EF0:
	bl sub_02031934
	cmp r0, #4
	bne _02034F00
	bl sub_02036180
	cmp r0, #0
	beq _02034F08
_02034F00:
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
_02034F08:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02034F0C: .word 0x021C07C4
_02034F10: .word 0x02100A1C
_02034F14: .word sub_020353B0
_02034F18: .word 0x0000066C
	thumb_func_end sub_02034DC8

	thumb_func_start sub_02034F1C
sub_02034F1C: ; 0x02034F1C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	mov r4, #1
	cmp r6, #1
	ble _02034F5A
	ldr r7, _02034F60 ; =0x021C07C4
	mov r5, #4
_02034F36:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02034F52
	ldr r0, [r7, #8]
	add r1, r0, r5
	ldr r0, _02034F64 ; =0x0000066C
	ldr r0, [r1, r0]
	cmp r0, #3
	ble _02034F52
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02034F52:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02034F36
_02034F5A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02034F60: .word 0x021C07C4
_02034F64: .word 0x0000066C
	thumb_func_end sub_02034F1C

	thumb_func_start sub_02034F68
sub_02034F68: ; 0x02034F68
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02035024
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	beq _0203508A
	ldr r0, _0203508C ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035090 ; =0x00000664
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02034FC0
	bl sub_02034F1C
	cmp r0, #0
	beq _0203508A
	ldr r0, _02035094 ; =0x02100A1C
	ldrb r0, [r0]
	cmp r0, #4
	bne _02034FE0
	bl sub_02034890
	cmp r0, #1
	bne _02034FB8
	mov r0, #0
	bl sub_02034CF8
_02034FB8:
	ldr r0, _02035094 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0]
	b _02034FE0
_02034FC0:
	ldr r0, _02035094 ; =0x02100A1C
	ldrb r0, [r0]
	cmp r0, #4
	bne _02034FDA
	bl sub_02034890
	cmp r0, #1
	bne _02034FDA
	mov r0, #0
	bl sub_02034CF8
	cmp r0, #0
	beq _0203508A
_02034FDA:
	ldr r0, _02035094 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0]
_02034FE0:
	ldr r0, _0203508C ; =0x021C07C4
	mov r1, #0xc0
	ldr r0, [r0, #8]
	add r0, #0x80
	bl ov4_021D14D4
	cmp r0, #0
	beq _0203508A
	ldr r0, _02035094 ; =0x02100A1C
	mov r1, #4
	mov r4, #0
	strb r1, [r0]
	cmp r6, #0
	ble _0203508A
	ldr r7, _0203508C ; =0x021C07C4
	add r5, r4, #0
_02035000:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0203501A
	ldr r0, [r7, #8]
	ldr r1, _02035098 ; =0x0000066C
	add r0, r0, r5
	ldr r1, [r0, r1]
	add r2, r1, #1
	ldr r1, _02035098 ; =0x0000066C
	str r2, [r0, r1]
_0203501A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02035000
	pop {r3, r4, r5, r6, r7, pc}
_02035024:
	bl sub_02031934
	cmp r0, #4
	beq _02035034
	bl sub_02036180
	cmp r0, #0
	beq _0203508A
_02035034:
	ldr r0, _02035094 ; =0x02100A1C
	ldrb r0, [r0]
	cmp r0, #4
	bne _0203508A
	bl sub_02034F1C
	cmp r0, #0
	beq _0203508A
	bl sub_02034890
	cmp r0, #0
	bne _02035080
	ldr r0, _0203508C ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x6b
	add r2, r1, #0
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r2, #0x80
	mul r0, r1
	add r0, r2, r0
	bl sub_020358C0
	ldr r0, _0203508C ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x6b
	add r2, r1, #0
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	mov r0, #1
	add r2, #0x80
	sub r1, r0, r1
	mov r0, #0xc0
	mul r0, r1
	add r0, r2, r0
	bl sub_020358C0
_02035080:
	ldr r0, _02035094 ; =0x02100A1C
	mov r1, #0
	strb r1, [r0]
	bl sub_02034DC8
_0203508A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203508C: .word 0x021C07C4
_02035090: .word 0x00000664
_02035094: .word 0x02100A1C
_02035098: .word 0x0000066C
	thumb_func_end sub_02034F68

	thumb_func_start sub_0203509C
sub_0203509C: ; 0x0203509C
	ldr r3, _020350A0 ; =sub_020350A4
	bx r3
	; .align 2, 0
_020350A0: .word sub_020350A4
	thumb_func_end sub_0203509C

	thumb_func_start sub_020350A4
sub_020350A4: ; 0x020350A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _020351DC ; =0x021C07C4
	add r5, r1, #0
	ldr r2, [r0, #8]
	ldr r0, _020351E0 ; =0x00000668
	ldr r1, [r2, r0]
	sub r1, r1, #1
	str r1, [r2, r0]
	cmp r5, #0
	beq _020350C8
	ldrb r0, [r5]
	cmp r0, #0xb
	bne _020350CE
	bl sub_02034890
	cmp r0, #1
	bne _020350CA
_020350C8:
	b _020351D6
_020350CA:
	add r5, r5, #1
	b _020350D6
_020350CE:
	bl sub_02034890
	cmp r0, #0
	beq _020351D6
_020350D6:
	ldr r0, _020351DC ; =0x021C07C4
	ldr r1, _020351E4 ; =0x000006B2
	ldr r0, [r0, #8]
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _020350EA
	ldrb r2, [r5]
	mov r1, #1
	tst r1, r2
	bne _020351D6
_020350EA:
	ldr r1, _020351E4 ; =0x000006B2
	mov r2, #0
	strb r2, [r0, r1]
	bl sub_02034890
	cmp r0, #1
	bne _020351AA
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r6, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r0, r0, #1
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _020351D6
	sub r0, r6, #1
	add r7, r4, #0
	str r0, [sp]
_02035122:
	ldrb r0, [r5]
	cmp r0, #0xff
	bne _0203513A
	ldr r0, _020351DC ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020351E8 ; =0x00000694
	lsl r2, r4
	ldrh r0, [r1, r0]
	mvn r2, r2
	and r2, r0
	b _02035148
_0203513A:
	ldr r0, _020351DC ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020351E8 ; =0x00000694
	lsl r2, r4
	ldrh r0, [r1, r0]
	orr r2, r0
_02035148:
	ldr r0, _020351E8 ; =0x00000694
	strh r2, [r1, r0]
	ldrb r2, [r5]
	cmp r2, #0xff
	bne _02035156
	add r5, r5, r6
	b _0203519C
_02035156:
	cmp r2, #0xe
	bne _0203515E
	add r5, r5, r6
	b _0203519C
_0203515E:
	ldr r0, _020351DC ; =0x021C07C4
	ldr r3, [r0, #8]
	ldr r0, _020351EC ; =0x0000069F
	add r1, r3, r4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02035176
	mov r0, #1
	tst r0, r2
	beq _02035176
	add r5, r5, r6
	b _0203519C
_02035176:
	ldr r0, _020351F0 ; =0x0000051C
	add r5, r5, #1
	add r0, r3, r0
	mov r3, #0x55
	lsl r3, r3, #4
	ldr r2, [sp]
	add r0, r0, r7
	add r1, r5, #0
	add r3, r4, r3
	bl sub_02032198
	ldr r0, [sp]
	mov r1, #0
	add r5, r5, r0
	ldr r0, _020351DC ; =0x021C07C4
	ldr r0, [r0, #8]
	add r2, r0, r4
	ldr r0, _020351EC ; =0x0000069F
	strb r1, [r2, r0]
_0203519C:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r7, #0xc
	cmp r4, r0
	blt _02035122
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020351AA:
	ldr r1, _020351DC ; =0x021C07C4
	ldrb r3, [r5, #1]
	ldr r2, [r1, #8]
	ldr r0, _020351E8 ; =0x00000694
	strh r3, [r2, r0]
	ldr r3, [r1, #8]
	ldrh r2, [r3, r0]
	lsl r2, r2, #8
	strh r2, [r3, r0]
	ldr r4, [r1, #8]
	ldrb r2, [r5, #2]
	ldrh r3, [r4, r0]
	add r2, r3, r2
	strh r2, [r4, r0]
	ldr r0, [r1, #8]
	ldr r3, _020351F4 ; =0x000004A4
	ldrb r2, [r5, #3]
	add r0, r0, r3
	add r1, r5, #4
	add r3, #0xc0
	bl sub_02032198
_020351D6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020351DC: .word 0x021C07C4
_020351E0: .word 0x00000668
_020351E4: .word 0x000006B2
_020351E8: .word 0x00000694
_020351EC: .word 0x0000069F
_020351F0: .word 0x0000051C
_020351F4: .word 0x000004A4
	thumb_func_end sub_020350A4

	thumb_func_start sub_020351F8
sub_020351F8: ; 0x020351F8
	ldr r3, _020351FC ; =sub_02035200
	bx r3
	; .align 2, 0
_020351FC: .word sub_02035200
	thumb_func_end sub_020351F8

	thumb_func_start sub_02035200
sub_02035200: ; 0x02035200
	push {r4, r5, r6, lr}
	ldr r3, _020352B0 ; =0x021C07C4
	add r5, r0, #0
	ldr r0, [r3, #8]
	ldr r2, _020352B4 ; =0x0000066C
	add r4, r1, #0
	add r1, r0, r2
	lsl r0, r5, #2
	ldr r6, [r1, r0]
	sub r6, r6, #1
	str r6, [r1, r0]
	cmp r4, #0
	beq _020352AE
	ldr r0, [r3, #8]
	add r2, #0x33
	add r0, r0, r2
	ldrb r1, [r0, r5]
	cmp r1, #0
	beq _0203522E
	ldrb r2, [r4]
	mov r1, #1
	tst r1, r2
	bne _020352AE
_0203522E:
	mov r1, #0
	strb r1, [r0, r5]
	bl sub_02034890
	cmp r0, #1
	bne _02035286
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r6, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	ldrb r1, [r4]
	mov r0, #2
	tst r0, r1
	bne _02035276
	ldr r0, _020352B0 ; =0x021C07C4
	mov r3, #0x4b
	ldr r0, [r0, #8]
	lsl r3, r3, #4
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #0
	add r2, r6, #0
	add r3, #0xf9
	bl sub_02032198
_02035276:
	ldr r0, _020352B0 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020352B8 ; =0x00000697
	add r1, r1, r0
	ldrb r0, [r1, r5]
	add r0, r0, #1
	strb r0, [r1, r5]
	pop {r4, r5, r6, pc}
_02035286:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020356A0
	ldrb r1, [r4]
	mov r0, #2
	tst r0, r1
	bne _020352AE
	ldr r0, _020352B0 ; =0x021C07C4
	ldr r3, _020352BC ; =0x0000051C
	ldr r0, [r0, #8]
	mov r2, #0xb
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #1
	add r3, #0x96
	bl sub_02032198
_020352AE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020352B0: .word 0x021C07C4
_020352B4: .word 0x0000066C
_020352B8: .word 0x00000697
_020352BC: .word 0x0000051C
	thumb_func_end sub_02035200

	thumb_func_start sub_020352C0
sub_020352C0: ; 0x020352C0
	push {r4, r5, r6, lr}
	ldr r3, _02035380 ; =0x021C07C4
	add r5, r0, #0
	ldr r0, [r3, #8]
	ldr r2, _02035384 ; =0x0000066C
	add r4, r1, #0
	add r1, r0, r2
	lsl r0, r5, #2
	ldr r6, [r1, r0]
	sub r6, r6, #1
	str r6, [r1, r0]
	cmp r4, #0
	beq _0203537C
	ldr r0, [r3, #8]
	add r2, #0x33
	add r0, r0, r2
	ldrb r1, [r0, r5]
	cmp r1, #0
	beq _020352EE
	ldrb r2, [r4]
	mov r1, #1
	tst r1, r2
	bne _0203537C
_020352EE:
	mov r1, #0
	strb r1, [r0, r5]
	bl sub_02034890
	cmp r0, #1
	bne _0203537C
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r6, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	ldrb r0, [r4]
	ldr r2, _02035388 ; =0x00000694
	cmp r0, #0xff
	bne _0203532C
	ldr r0, _02035380 ; =0x021C07C4
	mov r3, #1
	ldr r1, [r0, #8]
	lsl r3, r5
	ldrh r0, [r1, r2]
	mvn r3, r3
	and r0, r3
	b _02035338
_0203532C:
	ldr r0, _02035380 ; =0x021C07C4
	mov r3, #1
	ldr r1, [r0, #8]
	lsl r3, r5
	ldrh r0, [r1, r2]
	orr r0, r3
_02035338:
	strh r0, [r1, r2]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0203537C
	cmp r0, #2
	beq _0203537C
	cmp r0, #0xe
	beq _0203537C
	ldr r1, _02035380 ; =0x021C07C4
	ldr r2, _0203538C ; =0x0000069F
	ldr r1, [r1, #8]
	add r3, r1, r5
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _0203535C
	mov r2, #1
	tst r0, r2
	bne _0203537C
_0203535C:
	ldr r3, _02035390 ; =0x0000051C
	mov r0, #0xc
	add r1, r1, r3
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #1
	sub r2, r6, #1
	add r3, #0xcf
	bl sub_02032198
	ldr r0, _02035380 ; =0x021C07C4
	mov r2, #0
	ldr r0, [r0, #8]
	add r1, r0, r5
	ldr r0, _0203538C ; =0x0000069F
	strb r2, [r1, r0]
_0203537C:
	pop {r4, r5, r6, pc}
	nop
_02035380: .word 0x021C07C4
_02035384: .word 0x0000066C
_02035388: .word 0x00000694
_0203538C: .word 0x0000069F
_02035390: .word 0x0000051C
	thumb_func_end sub_020352C0

	thumb_func_start sub_02035394
sub_02035394: ; 0x02035394
	push {r3, lr}
	cmp r0, #0
	beq _020353A4
	ldr r0, _020353AC ; =0x02100A1C
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	pop {r3, pc}
_020353A4:
	bl GF_AssertFail
	pop {r3, pc}
	nop
_020353AC: .word 0x02100A1C
	thumb_func_end sub_02035394

	thumb_func_start sub_020353B0
sub_020353B0: ; 0x020353B0
	push {r3, lr}
	cmp r0, #0
	beq _020353C0
	ldr r0, _020353C8 ; =0x02100A1C
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	pop {r3, pc}
_020353C0:
	bl GF_AssertFail
	pop {r3, pc}
	nop
_020353C8: .word 0x02100A1C
	thumb_func_end sub_020353B0

	thumb_func_start sub_020353CC
sub_020353CC: ; 0x020353CC
	push {r4, lr}
	ldr r0, _02035520 ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020353E2
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _020353E4
_020353E2:
	b _0203551C
_020353E4:
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r4, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	bl sub_02036180
	cmp r0, #0
	beq _02035456
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	cmp r1, #2
	beq _02035414
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02035456
_02035414:
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	mov r0, #1
	bl sub_02035394
	ldr r0, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r2, [r0, #8]
	mov r0, #0
	ldrb r1, [r2, r1]
	lsl r1, r1, #6
	add r1, r2, r1
	lsl r2, r4, #0x10
	lsr r2, r2, #0x10
	bl sub_02035200
	ldr r2, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r4, [r2, #8]
	mov r0, #1
	ldrb r3, [r4, r1]
	sub r0, r0, r3
	strb r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r2, #8]
	sub r0, #0x47
	ldr r0, [r2, r0]
	sub r1, #0x47
	add r0, r0, #1
	str r0, [r2, r1]
	pop {r4, pc}
_02035456:
	bl sub_02031934
	cmp r0, #4
	bne _0203551C
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02035470
	bl sub_0203608C
	pop {r4, pc}
_02035470:
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	cmp r1, #2
	beq _0203547E
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0203551C
_0203547E:
	bl sub_0203608C
	cmp r0, #0
	beq _020354D2
	ldr r0, _02035524 ; =0x02100A1C
	ldr r3, _0203552C ; =sub_02035394
	ldrb r1, [r0, #1]
	mov r2, #0xe
	add r1, r1, #1
	strb r1, [r0, #1]
	ldr r0, _02035520 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035528 ; =0x000006AF
	ldrb r0, [r1, r0]
	lsl r0, r0, #6
	add r0, r1, r0
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl sub_02031E9C
	cmp r0, #0
	bne _020354B4
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	sub r1, r1, #1
	strb r1, [r0, #1]
	pop {r4, pc}
_020354B4:
	ldr r2, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r4, [r2, #8]
	mov r0, #1
	ldrb r3, [r4, r1]
	sub r0, r0, r3
	strb r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r2, #8]
	sub r0, #0x47
	ldr r0, [r2, r0]
	sub r1, #0x47
	add r0, r0, #1
	str r0, [r2, r1]
	pop {r4, pc}
_020354D2:
	bl sub_020318EC
	ldr r1, _02035530 ; =0x0000FFFE
	tst r0, r1
	beq _0203551C
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	mov r0, #1
	bl sub_02035394
	ldr r0, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r2, [r0, #8]
	mov r0, #0
	ldrb r1, [r2, r1]
	lsl r1, r1, #6
	add r1, r2, r1
	lsl r2, r4, #0x10
	lsr r2, r2, #0x10
	bl sub_02035200
	ldr r2, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r4, [r2, #8]
	mov r0, #1
	ldrb r3, [r4, r1]
	sub r0, r0, r3
	strb r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r2, #8]
	sub r0, #0x47
	ldr r0, [r2, r0]
	sub r1, #0x47
	add r0, r0, #1
	str r0, [r2, r1]
_0203551C:
	pop {r4, pc}
	nop
_02035520: .word 0x021C07C4
_02035524: .word 0x02100A1C
_02035528: .word 0x000006AF
_0203552C: .word sub_02035394
_02035530: .word 0x0000FFFE
	thumb_func_end sub_020353CC

	thumb_func_start sub_02035534
sub_02035534: ; 0x02035534
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02035658 ; =0x021C07C4
	mov r2, #0x66
	ldr r5, [r7, #8]
	lsl r2, r2, #4
	ldrb r0, [r5, r2]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	beq _02035552
	sub r1, r2, #4
	ldrh r1, [r5, r1]
	mov r3, #0xf0
	tst r3, r1
	bne _02035554
_02035552:
	b _02035656
_02035554:
	cmp r0, #2
	bne _02035592
	mov r0, #0x20
	tst r0, r1
	beq _02035566
	mov r0, #0x10
	orr r0, r6
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02035566:
	mov r0, #0x10
	tst r0, r1
	beq _02035574
	mov r0, #0x20
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02035574:
	mov r0, #0x40
	tst r0, r1
	beq _02035582
	mov r0, #0x80
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02035582:
	mov r0, #0x80
	tst r0, r1
	beq _02035640
	mov r0, #0x40
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02035640
_02035592:
	add r0, r2, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _020355B4
	add r4, r0, #0
	add r0, r2, #1
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	add r0, r2, #1
	strb r1, [r5, r0]
	ldr r1, [r7, #8]
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _02035640
	add r0, r2, #2
	strh r6, [r1, r0]
	b _02035640
_020355B4:
	add r0, r2, #0
	sub r0, #0x34
	add r6, r5, r0
	sub r2, #0x34
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r5, r2]
	ldr r3, [r6, #4]
	bl _ull_mul
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	add r0, r0, r3
	adc r1, r2
	ldr r2, _0203565C ; =0x0000062C
	str r0, [r5, r2]
	mov r2, #0
	str r1, [r6, #4]
	lsr r0, r1, #0x1e
	lsl r1, r2, #2
	orr r1, r0
	cmp r1, #3
	bhi _02035608
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020355F2: ; jump table
	.short _020355FA - _020355F2 - 2 ; case 0
	.short _020355FE - _020355F2 - 2 ; case 1
	.short _02035602 - _020355F2 - 2 ; case 2
	.short _02035606 - _020355F2 - 2 ; case 3
_020355FA:
	mov r4, #0x20
	b _02035608
_020355FE:
	mov r4, #0x10
	b _02035608
_02035602:
	mov r4, #0x40
	b _02035608
_02035606:
	mov r4, #0x80
_02035608:
	ldr r0, _02035658 ; =0x021C07C4
	ldr r5, [r0, #8]
	ldr r0, _0203565C ; =0x0000062C
	add r6, r5, r0
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0]
	ldr r3, [r6, #4]
	bl _ull_mul
	ldr r3, [r6, #0x10]
	ldr r2, [r6, #0x14]
	add r0, r3, r0
	adc r2, r1
	ldr r1, _0203565C ; =0x0000062C
	mov r3, #0
	str r0, [r5, r1]
	str r2, [r6, #4]
	lsr r0, r2, #0x1c
	lsl r2, r3, #4
	orr r2, r0
	add r0, r1, #0
	add r0, #0x35
	strb r2, [r5, r0]
	ldr r0, _02035658 ; =0x021C07C4
	add r1, #0x36
	ldr r0, [r0, #8]
	strh r4, [r0, r1]
_02035640:
	ldr r2, _02035658 ; =0x021C07C4
	ldr r1, _02035660 ; =0x0000065C
	ldr r5, [r2, #8]
	mov r0, #0xf0
	ldrh r3, [r5, r1]
	bic r3, r0
	strh r3, [r5, r1]
	ldr r2, [r2, #8]
	ldrh r0, [r2, r1]
	add r0, r0, r4
	strh r0, [r2, r1]
_02035656:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02035658: .word 0x021C07C4
_0203565C: .word 0x0000062C
_02035660: .word 0x0000065C
	thumb_func_end sub_02035534

	thumb_func_start sub_02035664
sub_02035664: ; 0x02035664
	ldr r0, _02035674 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	mov r0, #0x66
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	nop
_02035674: .word 0x021C07C4
	thumb_func_end sub_02035664

	thumb_func_start sub_02035678
sub_02035678: ; 0x02035678
	ldr r0, _02035688 ; =0x021C07C4
	mov r2, #2
	ldr r1, [r0, #8]
	mov r0, #0x66
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	nop
_02035688: .word 0x021C07C4
	thumb_func_end sub_02035678

	thumb_func_start sub_0203568C
sub_0203568C: ; 0x0203568C
	ldr r0, _0203569C ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	mov r0, #0x66
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	nop
_0203569C: .word 0x021C07C4
	thumb_func_end sub_0203568C

	thumb_func_start sub_020356A0
sub_020356A0: ; 0x020356A0
	push {r4, r5, r6, r7}
	ldr r4, _02035720 ; =0x021C07C4
	lsl r6, r1, #1
	ldr r2, [r4, #8]
	mov r5, #0
	add r3, r2, r6
	ldr r2, _02035724 ; =0x00000644
	strh r5, [r3, r2]
	ldrb r5, [r0]
	mov r3, #0x10
	add r7, r5, #0
	and r7, r3
	cmp r7, #0x10
	bne _02035718
	mov r7, #0xc
	and r5, r7
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	bne _020356D4
	ldr r3, [r4, #8]
	add r4, r3, r2
	ldrh r3, [r4, r6]
	mov r2, #0x40
	orr r2, r3
	strh r2, [r4, r6]
	b _02035706
_020356D4:
	cmp r5, #4
	bne _020356E6
	ldr r3, [r4, #8]
	add r4, r3, r2
	ldrh r3, [r4, r6]
	mov r2, #0x80
	orr r2, r3
	strh r2, [r4, r6]
	b _02035706
_020356E6:
	cmp r5, #8
	bne _020356F8
	ldr r3, [r4, #8]
	add r4, r3, r2
	ldrh r3, [r4, r6]
	mov r2, #0x20
	orr r2, r3
	strh r2, [r4, r6]
	b _02035706
_020356F8:
	cmp r5, #0xc
	bne _02035706
	ldr r4, [r4, #8]
	add r4, r4, r2
	ldrh r2, [r4, r6]
	orr r2, r3
	strh r2, [r4, r6]
_02035706:
	ldrb r0, [r0]
	asr r2, r0, #5
	mov r0, #7
	and r2, r0
	ldr r0, _02035720 ; =0x021C07C4
	ldr r0, [r0, #8]
	add r1, r0, r1
	ldr r0, _02035728 ; =0x00000654
	strb r2, [r1, r0]
_02035718:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02035720: .word 0x021C07C4
_02035724: .word 0x00000644
_02035728: .word 0x00000654
	thumb_func_end sub_020356A0

	thumb_func_start sub_0203572C
sub_0203572C: ; 0x0203572C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203572C

	thumb_func_start sub_02035730
sub_02035730: ; 0x02035730
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020357DC ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020357E0 ; =0x0000065E
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02035744
	mov r0, #0
	pop {r4, pc}
_02035744:
	bl sub_02035EE0
	cmp r0, #0
	bne _02035750
	mov r0, #0
	pop {r4, pc}
_02035750:
	ldr r0, _020357DC ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _020357E4 ; =0x000006B1
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02035760
	sub r1, r1, #1
	strb r1, [r2, r0]
_02035760:
	ldr r1, _020357DC ; =0x021C07C4
	ldr r0, _020357E8 ; =0x0000065C
	ldr r2, [r1, #8]
	mov r3, #0x40
	ldrh r2, [r2, r0]
	tst r3, r2
	beq _02035780
	ldrb r3, [r4]
	mov r2, #0x10
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
	b _020357C6
_02035780:
	mov r3, #0x80
	tst r3, r2
	beq _02035798
	ldrb r3, [r4]
	mov r2, #0x14
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
	b _020357C6
_02035798:
	mov r3, #0x20
	tst r3, r2
	beq _020357B0
	ldrb r3, [r4]
	mov r2, #0x18
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
	b _020357C6
_020357B0:
	mov r3, #0x10
	tst r2, r3
	beq _020357C6
	ldrb r3, [r4]
	mov r2, #0x1c
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
_020357C6:
	ldr r0, _020357DC ; =0x021C07C4
	ldrb r2, [r4]
	ldr r1, [r0, #8]
	ldr r0, _020357EC ; =0x0000065F
	ldrb r0, [r1, r0]
	lsl r0, r0, #5
	orr r0, r2
	strb r0, [r4]
	mov r0, #0
	pop {r4, pc}
	nop
_020357DC: .word 0x021C07C4
_020357E0: .word 0x0000065E
_020357E4: .word 0x000006B1
_020357E8: .word 0x0000065C
_020357EC: .word 0x0000065F
	thumb_func_end sub_02035730

	thumb_func_start sub_020357F0
sub_020357F0: ; 0x020357F0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r5, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	ldr r0, _020358B4 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020358B8 ; =0x000006B4
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02035820
	mov r0, #0
	b _02035822
_02035820:
	mov r0, #1
_02035822:
	strb r0, [r4]
	bl sub_02034890
	cmp r0, #0
	bne _02035832
	add r0, r4, #0
	bl sub_02035730
_02035832:
	ldr r1, _020358B4 ; =0x021C07C4
	ldr r0, _020358B8 ; =0x000006B4
	ldr r2, [r1, #8]
	mov r3, #0
	strb r3, [r2, r0]
	mov r0, #0x16
	ldr r1, [r1, #8]
	lsl r0, r0, #6
	add r0, r1, r0
	bl sub_020322F8
	cmp r0, #0
	beq _02035860
	ldrb r1, [r4]
	mov r0, #2
	orr r0, r1
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #2
	bne _020358AC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02035860:
	sub r0, r5, #1
	str r0, [sp, #4]
	add r0, r4, #1
	str r0, [sp]
	ldr r0, _020358B4 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, sp, #0
	bl sub_02032574
	cmp r0, #0
	bne _02035888
	ldr r0, _020358B4 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020358B8 ; =0x000006B4
	strb r2, [r1, r0]
_02035888:
	bl sub_02034890
	cmp r0, #1
	bne _020358AC
	ldr r2, _020358B4 ; =0x021C07C4
	ldr r1, _020358BC ; =0x00000696
	ldr r3, [r2, #8]
	ldrb r0, [r3, r1]
	add r0, r0, #1
	strb r0, [r3, r1]
	ldr r2, [r2, #8]
	ldrb r0, [r4]
	ldrb r1, [r2, r1]
	lsl r2, r1, #4
	mov r1, #0xf0
	and r1, r2
	orr r0, r1
	strb r0, [r4]
_020358AC:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_020358B4: .word 0x021C07C4
_020358B8: .word 0x000006B4
_020358BC: .word 0x00000696
	thumb_func_end sub_020357F0

	thumb_func_start sub_020358C0
sub_020358C0: ; 0x020358C0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xb
	strb r0, [r4]
	ldr r0, _02035930 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035934 ; =0x000006B5
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _020358DA
	mov r0, #0
	b _020358DC
_020358DA:
	mov r0, #1
_020358DC:
	strb r0, [r4, #1]
	bl sub_020318EC
	asr r1, r0, #8
	strb r1, [r4, #2]
	strb r0, [r4, #3]
	mov r0, #0xbb
	str r0, [sp, #4]
	add r0, r4, #5
	str r0, [sp]
	ldr r0, _02035930 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, sp, #0
	bl sub_02032574
	cmp r0, #0
	beq _0203591C
	ldr r0, _02035930 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02035934 ; =0x000006B5
	strb r2, [r1, r0]
	ldr r1, [sp, #4]
	mov r0, #0xbb
	sub r0, r0, r1
	add sp, #8
	strb r0, [r4, #4]
	pop {r4, pc}
_0203591C:
	ldr r0, _02035930 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02035934 ; =0x000006B5
	strb r2, [r1, r0]
	mov r0, #0xbb
	strb r0, [r4, #4]
	add sp, #8
	pop {r4, pc}
	nop
_02035930: .word 0x021C07C4
_02035934: .word 0x000006B5
	thumb_func_end sub_020358C0

	thumb_func_start sub_02035938
sub_02035938: ; 0x02035938
	ldr r1, _02035944 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _02035948 ; =0x000006BC
	strb r0, [r2, r1]
	bx lr
	nop
_02035944: .word 0x021C07C4
_02035948: .word 0x000006BC
	thumb_func_end sub_02035938

	thumb_func_start sub_0203594C
sub_0203594C: ; 0x0203594C
	push {r3, lr}
	ldr r0, _02035974 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02035978 ; =0x000006BC
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _0203595E
	mov r0, #0
	pop {r3, pc}
_0203595E:
	add r0, r0, #1
	ldrb r0, [r2, r0]
	bl _s32_div_f
	cmp r1, #0
	bne _0203596E
	mov r0, #1
	pop {r3, pc}
_0203596E:
	mov r0, #0
	pop {r3, pc}
	nop
_02035974: .word 0x021C07C4
_02035978: .word 0x000006BC
	thumb_func_end sub_0203594C

	thumb_func_start sub_0203597C
sub_0203597C: ; 0x0203597C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _020359A0
	bl sub_02036180
	cmp r0, #0
	bne _020359A0
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020359A0:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _020359D8 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	cmp r0, #0
	beq _020359C6
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_020359C6:
	bl sub_0203895C
	cmp r0, #0xa
	bne _020359D2
	bl sub_020363BC
_020359D2:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020359D8: .word 0x021C07C4
	thumb_func_end sub_0203597C

	thumb_func_start sub_020359DC
sub_020359DC: ; 0x020359DC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02035A00
	bl sub_02036180
	cmp r0, #0
	bne _02035A00
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035A00:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02035A38 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	cmp r0, #0
	beq _02035A24
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02035A24:
	bl sub_0203895C
	cmp r0, #0xa
	bne _02035A30
	bl sub_020363BC
_02035A30:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02035A38: .word 0x021C07C4
	thumb_func_end sub_020359DC

	thumb_func_start sub_02035A3C
sub_02035A3C: ; 0x02035A3C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203608C
	cmp r0, #0
	beq _02035A58
	bl GF_AssertFail
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035A58:
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _02035A70
	bl sub_02036180
	cmp r0, #0
	bne _02035A70
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035A70:
	bl sub_02034890
	cmp r0, #1
	bne _02035A86
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0203597C
	add sp, #8
	pop {r4, r5, r6, pc}
_02035A86:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02035AC0 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	cmp r0, #0
	beq _02035AAC
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02035AAC:
	bl sub_0203895C
	cmp r0, #0xa
	bne _02035AB8
	bl sub_020363BC
_02035AB8:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02035AC0: .word 0x021C07C4
	thumb_func_end sub_02035A3C

	thumb_func_start sub_02035AC4
sub_02035AC4: ; 0x02035AC4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203608C
	cmp r0, #0
	beq _02035AE0
	bl sub_020363BC
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035AE0:
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _02035AF8
	bl sub_02036180
	cmp r0, #0
	bne _02035AF8
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035AF8:
	bl sub_02034890
	cmp r0, #1
	bne _02035B0E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020359DC
	add sp, #8
	pop {r4, r5, r6, pc}
_02035B0E:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02035B44 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	cmp r0, #0
	beq _02035B32
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02035B32:
	bl sub_0203895C
	cmp r0, #0xa
	bne _02035B3E
	bl sub_020363BC
_02035B3E:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02035B44: .word 0x021C07C4
	thumb_func_end sub_02035AC4

	thumb_func_start sub_02035B48
sub_02035B48: ; 0x02035B48
	ldr r3, _02035B50 ; =sub_02035AC4
	mov r2, #0
	bx r3
	nop
_02035B50: .word sub_02035AC4
	thumb_func_end sub_02035B48

	thumb_func_start sub_02035B54
sub_02035B54: ; 0x02035B54
	ldr r0, _02035B60 ; =0x021C07C4
	ldr r3, _02035B64 ; =sub_0203228C
	ldr r1, [r0, #8]
	ldr r0, _02035B68 ; =0x00000498
	add r0, r1, r0
	bx r3
	; .align 2, 0
_02035B60: .word 0x021C07C4
_02035B64: .word sub_0203228C
_02035B68: .word 0x00000498
	thumb_func_end sub_02035B54

	thumb_func_start sub_02035B6C
sub_02035B6C: ; 0x02035B6C
	push {r4, lr}
	ldr r4, [sp, #8]
	bl sub_020327FC
	mov r0, #0xee
	strb r0, [r4, #0xa]
	ldr r0, _02035B84 ; =0x0000FFFF
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_02035B84: .word 0x0000FFFF
	thumb_func_end sub_02035B6C

	thumb_func_start sub_02035B88
sub_02035B88: ; 0x02035B88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r4, r3, #0
	bl sub_0203226C
	cmp r0, #0
	beq _02035C98
_02035B9C:
	ldrb r7, [r4, #0xa]
	cmp r7, #0xee
	bne _02035BAE
	add r0, r5, #0
	bl sub_02032210
	add r7, r0, #0
	cmp r7, #0xee
	beq _02035C8E
_02035BAE:
	mov r0, #4
	ldrsh r0, [r5, r0]
	strb r7, [r4, #0xa]
	ldrh r6, [r4, #8]
	str r0, [sp, #0x10]
	ldr r0, _02035C9C ; =0x0000FFFF
	cmp r6, r0
	bne _02035C02
	add r0, r7, #0
	bl sub_02032868
	add r6, r0, #0
	ldr r0, _02035CA0 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035CA4 ; =0x000006B9
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02035C98
	ldr r0, _02035C9C ; =0x0000FFFF
	cmp r6, r0
	bne _02035C00
	add r0, r5, #0
	bl sub_0203226C
	cmp r0, #1
	bge _02035BEA
	ldr r0, [sp, #0x10]
	add sp, #0x14
	strh r0, [r5, #4]
	pop {r4, r5, r6, r7, pc}
_02035BEA:
	add r0, r5, #0
	bl sub_02032210
	lsl r6, r0, #8
	add r0, r5, #0
	bl sub_02032210
	add r6, r6, r0
	mov r0, #4
	ldrsh r0, [r5, r0]
	str r0, [sp, #0x10]
_02035C00:
	strh r6, [r4, #8]
_02035C02:
	add r0, r7, #0
	bl sub_020328D0
	cmp r0, #0
	beq _02035C5E
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02035C1E
	ldrh r2, [r4, #8]
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl sub_0203290C
	str r0, [r4, #4]
_02035C1E:
	ldr r2, [r4, #0]
	ldr r1, [sp, #8]
	add r0, r5, #0
	sub r2, r6, r2
	bl sub_020321F4
	ldr r2, [r4, #4]
	str r0, [sp, #0xc]
	cmp r2, #0
	beq _02035C3E
	ldr r1, [r4, #0]
	ldr r0, [sp, #8]
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	bl MI_CpuCopy8
_02035C3E:
	ldr r1, [r4, #0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [r4, #0]
	cmp r0, r6
	blt _02035C8E
	str r4, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r4, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02035B6C
	cmp r7, #0x11
	beq _02035C98
	b _02035C8E
_02035C5E:
	add r0, r5, #0
	bl sub_0203226C
	cmp r0, r6
	blt _02035C86
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_020321F4
	ldr r0, [sp, #4]
	ldr r3, [sp, #8]
	add r1, r7, #0
	add r2, r6, #0
	str r4, [sp]
	bl sub_02035B6C
	cmp r7, #0x11
	beq _02035C98
	b _02035C8E
_02035C86:
	ldr r0, [sp, #0x10]
	add sp, #0x14
	strh r0, [r5, #4]
	pop {r4, r5, r6, r7, pc}
_02035C8E:
	add r0, r5, #0
	bl sub_0203226C
	cmp r0, #0
	bne _02035B9C
_02035C98:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02035C9C: .word 0x0000FFFF
_02035CA0: .word 0x021C07C4
_02035CA4: .word 0x000006B9
	thumb_func_end sub_02035B88

	thumb_func_start sub_02035CA8
sub_02035CA8: ; 0x02035CA8
	push {r4, lr}
	ldr r0, _02035CEC ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02035CEA
	ldr r0, _02035CF0 ; =0x000006BB
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02035CEA
	ldr r0, _02035CF4 ; =0x000004A4
	add r0, r1, r0
	bl sub_020322D0
	ldr r0, _02035CEC ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035CF4 ; =0x000004A4
	add r0, r1, r0
	bl sub_0203226C
	cmp r0, #0
	ble _02035CEA
	ldr r0, _02035CEC ; =0x021C07C4
	mov r3, #0x62
	ldr r4, [r0, #8]
	ldr r2, _02035CF4 ; =0x000004A4
	lsl r3, r3, #4
	add r0, r4, r2
	sub r2, #0x10
	ldr r2, [r4, r2]
	mov r1, #0
	add r3, r4, r3
	bl sub_02035B88
_02035CEA:
	pop {r4, pc}
	; .align 2, 0
_02035CEC: .word 0x021C07C4
_02035CF0: .word 0x000006BB
_02035CF4: .word 0x000004A4
	thumb_func_end sub_02035CA8

	thumb_func_start sub_02035CF8
sub_02035CF8: ; 0x02035CF8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02035D68 ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02035D64
	ldr r0, _02035D6C ; =0x000006BB
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02035D64
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r0, r0, #1
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02035D64
	ldr r7, _02035D68 ; =0x021C07C4
	add r5, r4, #0
_02035D24:
	ldr r1, [r7, #8]
	ldr r0, _02035D70 ; =0x0000051C
	add r0, r1, r0
	add r0, r0, r5
	bl sub_020322D0
	ldr r1, [r7, #8]
	ldr r0, _02035D70 ; =0x0000051C
	add r0, r1, r0
	add r0, r0, r5
	bl sub_0203226C
	cmp r0, #0
	ble _02035D5A
	mov r3, #0x17
	ldr r6, [r7, #8]
	ldr r0, _02035D70 ; =0x0000051C
	ldr r2, _02035D74 ; =0x00000494
	lsl r3, r3, #6
	add r0, r6, r0
	add r3, r6, r3
	ldr r2, [r6, r2]
	add r0, r0, r5
	add r1, r4, #0
	add r3, r3, r5
	bl sub_02035B88
_02035D5A:
	ldr r0, [sp]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _02035D24
_02035D64:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02035D68: .word 0x021C07C4
_02035D6C: .word 0x000006BB
_02035D70: .word 0x0000051C
_02035D74: .word 0x00000494
	thumb_func_end sub_02035CF8

	thumb_func_start sub_02035D78
sub_02035D78: ; 0x02035D78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02035E0C ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02035D88
	mov r0, #0
	pop {r4, pc}
_02035D88:
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02035DB6
	ldr r0, _02035E0C ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035E10 ; =0x000006B7
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02035DB2
	bl ov4_021D99D4
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #1
	add r1, r0, #0
	lsl r1, r4
	tst r1, r2
	bne _02035E08
_02035DB2:
	mov r0, #0
	pop {r4, pc}
_02035DB6:
	bl sub_02035E38
	cmp r0, #0
	bne _02035DC2
	mov r0, #0
	pop {r4, pc}
_02035DC2:
	bl sub_02031934
	cmp r0, #4
	beq _02035DCE
	mov r0, #0
	pop {r4, pc}
_02035DCE:
	bl sub_0203608C
	cmp r4, r0
	bne _02035DDA
	mov r0, #1
	pop {r4, pc}
_02035DDA:
	bl sub_0203608C
	cmp r0, #0
	bne _02035DF4
	bl sub_020318EC
	mov r1, #1
	add r2, r1, #0
	lsl r2, r4
	tst r0, r2
	beq _02035E06
	add r0, r1, #0
	pop {r4, pc}
_02035DF4:
	ldr r0, _02035E0C ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035E14 ; =0x00000694
	ldrh r2, [r1, r0]
	mov r0, #1
	add r1, r0, #0
	lsl r1, r4
	tst r1, r2
	bne _02035E08
_02035E06:
	mov r0, #0
_02035E08:
	pop {r4, pc}
	nop
_02035E0C: .word 0x021C07C4
_02035E10: .word 0x000006B7
_02035E14: .word 0x00000694
	thumb_func_end sub_02035D78

	thumb_func_start sub_02035E18
sub_02035E18: ; 0x02035E18
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r4, #0
_02035E1E:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02035E2C
	add r4, r4, #1
_02035E2C:
	add r5, r5, #1
	cmp r5, #8
	blt _02035E1E
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02035E18

	thumb_func_start sub_02035E38
sub_02035E38: ; 0x02035E38
	push {r3, lr}
	ldr r0, _02035E58 ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02035E52
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02035E52
	mov r0, #1
	pop {r3, pc}
_02035E52:
	bl sub_02033E1C
	pop {r3, pc}
	; .align 2, 0
_02035E58: .word 0x021C07C4
	thumb_func_end sub_02035E38

	thumb_func_start sub_02035E5C
sub_02035E5C: ; 0x02035E5C
	ldr r1, _02035E68 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _02035E6C ; =0x0000065F
	strb r0, [r2, r1]
	bx lr
	nop
_02035E68: .word 0x021C07C4
_02035E6C: .word 0x0000065F
	thumb_func_end sub_02035E5C

	thumb_func_start sub_02035E70
sub_02035E70: ; 0x02035E70
	ldr r1, _02035E7C ; =0x021C07C4
	ldr r1, [r1, #8]
	add r1, r1, r0
	ldr r0, _02035E80 ; =0x00000654
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02035E7C: .word 0x021C07C4
_02035E80: .word 0x00000654
	thumb_func_end sub_02035E70

	thumb_func_start sub_02035E84
sub_02035E84: ; 0x02035E84
	ldr r1, _02035EA0 ; =0x021C07C4
	ldr r2, [r1, #8]
	cmp r2, #0
	bne _02035E90
	mov r0, #0
	bx lr
_02035E90:
	ldr r1, _02035EA4 ; =0x00000644
	add r3, r2, r1
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	mov r1, #0
	strh r1, [r3, r2]
	bx lr
	nop
_02035EA0: .word 0x021C07C4
_02035EA4: .word 0x00000644
	thumb_func_end sub_02035E84

	thumb_func_start sub_02035EA8
sub_02035EA8: ; 0x02035EA8
	ldr r0, _02035EC0 ; =0x021C07C4
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _02035EBC
	ldr r1, _02035EC4 ; =0x0000065C
	mov r0, #2
	ldrh r2, [r3, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	strh r0, [r3, r1]
_02035EBC:
	bx lr
	nop
_02035EC0: .word 0x021C07C4
_02035EC4: .word 0x0000065C
	thumb_func_end sub_02035EA8

	thumb_func_start sub_02035EC8
sub_02035EC8: ; 0x02035EC8
	ldr r0, _02035ED8 ; =0x021C07C4
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02035ED6
	ldr r0, _02035EDC ; =0x0000065C
	mov r1, #0
	strh r1, [r2, r0]
_02035ED6:
	bx lr
	; .align 2, 0
_02035ED8: .word 0x021C07C4
_02035EDC: .word 0x0000065C
	thumb_func_end sub_02035EC8

	thumb_func_start sub_02035EE0
sub_02035EE0: ; 0x02035EE0
	ldr r0, _02035EF8 ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02035EF4
	ldr r0, _02035EFC ; =0x0000065C
	ldrh r1, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	bx lr
_02035EF4:
	mov r0, #1
	bx lr
	; .align 2, 0
_02035EF8: .word 0x021C07C4
_02035EFC: .word 0x0000065C
	thumb_func_end sub_02035EE0

	thumb_func_start sub_02035F00
sub_02035F00: ; 0x02035F00
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02034890
	cmp r0, #1
	bne _02035F32
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02035F54 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	add sp, #8
	pop {r4, r5, r6, pc}
_02035F32:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02035F54 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02035F54: .word 0x021C07C4
	thumb_func_end sub_02035F00

	thumb_func_start sub_02035F58
sub_02035F58: ; 0x02035F58
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02035F80 ; =0x021C07C4
	add r4, r1, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r3, r2, #0
	add r0, r1, r0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02032498
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02035F80: .word 0x021C07C4
	thumb_func_end sub_02035F58

	thumb_func_start sub_02035F84
sub_02035F84: ; 0x02035F84
	push {r3, lr}
	ldr r0, _02035FFC ; =0x021C07C4
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02035FF8
	ldr r1, _02036000 ; =0x000006AB
	ldrb r0, [r2, r1]
	cmp r0, #1
	beq _02035F9C
	cmp r0, #3
	beq _02035FD4
	pop {r3, pc}
_02035F9C:
	bl sub_02034890
	cmp r0, #1
	bne _02035FB4
	ldr r1, _02035FFC ; =0x021C07C4
	mov r0, #0xb
	ldr r2, [r1, #8]
	ldr r1, _02036004 ; =0x000006AC
	add r1, r2, r1
	bl sub_020360D0
	b _02035FC4
_02035FB4:
	ldr r1, _02035FFC ; =0x021C07C4
	mov r0, #0xb
	ldr r2, [r1, #8]
	ldr r1, _02036004 ; =0x000006AC
	add r1, r2, r1
	mov r2, #1
	bl sub_02035AC4
_02035FC4:
	cmp r0, #0
	beq _02035FF8
	ldr r0, _02035FFC ; =0x021C07C4
	mov r2, #2
	ldr r1, [r0, #8]
	ldr r0, _02036000 ; =0x000006AB
	strb r2, [r1, r0]
	pop {r3, pc}
_02035FD4:
	add r1, r1, #1
	mov r0, #0xc
	add r1, r2, r1
	bl sub_020360D0
	cmp r0, #0
	beq _02035FF8
	ldr r0, _02035FFC ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02036004 ; =0x000006AC
	ldrb r0, [r1, r0]
	bl sub_02034848
	ldr r0, _02035FFC ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02036000 ; =0x000006AB
	strb r2, [r1, r0]
_02035FF8:
	pop {r3, pc}
	nop
_02035FFC: .word 0x021C07C4
_02036000: .word 0x000006AB
_02036004: .word 0x000006AC
	thumb_func_end sub_02035F84

	thumb_func_start sub_02036008
sub_02036008: ; 0x02036008
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02036026
	ldr r1, _02036028 ; =0x021C07C4
	ldr r0, _0203602C ; =0x000006AB
	ldr r2, [r1, #8]
	mov r3, #1
	strb r3, [r2, r0]
	ldrb r2, [r4]
	ldr r1, [r1, #8]
	add r0, r0, #1
	strb r2, [r1, r0]
_02036026:
	pop {r4, pc}
	; .align 2, 0
_02036028: .word 0x021C07C4
_0203602C: .word 0x000006AB
	thumb_func_end sub_02036008

	thumb_func_start sub_02036030
sub_02036030: ; 0x02036030
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0203604E
	ldr r1, _02036050 ; =0x021C07C4
	ldrb r3, [r4]
	ldr r2, [r1, #8]
	ldr r0, _02036054 ; =0x000006AC
	strb r3, [r2, r0]
	ldr r1, [r1, #8]
	mov r2, #3
	sub r0, r0, #1
	strb r2, [r1, r0]
_0203604E:
	pop {r4, pc}
	; .align 2, 0
_02036050: .word 0x021C07C4
_02036054: .word 0x000006AC
	thumb_func_end sub_02036030

	thumb_func_start sub_02036058
sub_02036058: ; 0x02036058
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02036080
	ldr r0, _02036084 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02036088 ; =0x000006AB
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02036080
	ldrb r0, [r4]
	bl sub_02034848
	ldr r0, _02036084 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02036088 ; =0x000006AB
	strb r2, [r1, r0]
_02036080:
	pop {r4, pc}
	nop
_02036084: .word 0x021C07C4
_02036088: .word 0x000006AB
	thumb_func_end sub_02036058

	thumb_func_start sub_0203608C
sub_0203608C: ; 0x0203608C
	push {r3, lr}
	ldr r0, _020360CC ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020360C6
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _020360B4
	bl ov4_021D1E30
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _020360C6
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_020360B4:
	bl sub_02036180
	cmp r0, #0
	beq _020360C0
	mov r0, #0
	pop {r3, pc}
_020360C0:
	bl sub_02031F90
	pop {r3, pc}
_020360C6:
	mov r0, #0
	pop {r3, pc}
	nop
_020360CC: .word 0x021C07C4
	thumb_func_end sub_0203608C

	thumb_func_start sub_020360D0
sub_020360D0: ; 0x020360D0
	ldr r3, _020360D8 ; =sub_020359DC
	mov r2, #0
	bx r3
	nop
_020360D8: .word sub_020359DC
	thumb_func_end sub_020360D0

	thumb_func_start sub_020360DC
sub_020360DC: ; 0x020360DC
	ldr r3, _020360E4 ; =sub_020359DC
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_020360E4: .word sub_020359DC
	thumb_func_end sub_020360DC

	thumb_func_start sub_020360E8
sub_020360E8: ; 0x020360E8
	ldr r3, _020360EC ; =sub_02033E48
	bx r3
	; .align 2, 0
_020360EC: .word sub_02033E48
	thumb_func_end sub_020360E8

	thumb_func_start sub_020360F0
sub_020360F0: ; 0x020360F0
	push {r3, lr}
	bl sub_02036180
	cmp r0, #0
	beq _020360FE
	mov r0, #0
	pop {r3, pc}
_020360FE:
	ldr r0, _02036120 ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203611A
	ldr r0, _02036124 ; =0x000006B9
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0203611A
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #1
	pop {r3, pc}
_0203611A:
	bl sub_02033E84
	pop {r3, pc}
	; .align 2, 0
_02036120: .word 0x021C07C4
_02036124: .word 0x000006B9
	thumb_func_end sub_020360F0

	thumb_func_start sub_02036128
sub_02036128: ; 0x02036128
	push {r3, lr}
	bl sub_0203266C
	cmp r0, #5
	blo _02036136
	mov r0, #0xc
	pop {r3, pc}
_02036136:
	bl sub_02034890
	cmp r0, #0
	bne _02036142
	mov r0, #0xc
	pop {r3, pc}
_02036142:
	mov r0, #0x26
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02036128

	thumb_func_start sub_02036148
sub_02036148: ; 0x02036148
	push {r3, lr}
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r0, r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02036148

	thumb_func_start sub_02036158
sub_02036158: ; 0x02036158
	push {r3, lr}
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02032698
	add r0, r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02036158

	thumb_func_start sub_02036168
sub_02036168: ; 0x02036168
	ldr r1, _02036178 ; =0x021C07C4
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02036174
	ldr r1, _0203617C ; =0x000006B6
	strb r0, [r2, r1]
_02036174:
	bx lr
	nop
_02036178: .word 0x021C07C4
_0203617C: .word 0x000006B6
	thumb_func_end sub_02036168

	thumb_func_start sub_02036180
sub_02036180: ; 0x02036180
	ldr r0, _02036194 ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203618E
	ldr r0, _02036198 ; =0x000006B6
	ldrb r0, [r1, r0]
	bx lr
_0203618E:
	mov r0, #0
	bx lr
	nop
_02036194: .word 0x021C07C4
_02036198: .word 0x000006B6
	thumb_func_end sub_02036180

	thumb_func_start sub_0203619C
sub_0203619C: ; 0x0203619C
	push {r3, lr}
	bl sub_0203406C
	cmp r0, #0
	bne _020361B6
	bl sub_0203608C
	cmp r0, #0
	bne _020361B6
	mov r0, #2
	add r1, sp, #0
	bl sub_02035B48
_020361B6:
	bl sub_0203408C
	pop {r3, pc}
	thumb_func_end sub_0203619C

	thumb_func_start sub_020361BC
sub_020361BC: ; 0x020361BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r0, sp, #0x10
	add r1, sp, #4
	bl sub_0201384C
	ldr r0, _02036240 ; =0x021BF67C
	ldr r6, [sp, #0x10]
	mov r5, #0
	lsr r7, r6, #0x1c
	lsl r5, r5, #4
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0x2c]
	lsl r6, r6, #4
	add r3, r1, r0
	ldr r0, [sp, #0x18]
	orr r5, r7
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	add r6, r0, r6
	ldr r0, _02036244 ; =0x00000000
	ldr r2, [sp, #8]
	adc r0, r5
	lsr r5, r6, #0x1b
	lsl r0, r0, #5
	orr r0, r5
	ldr r5, [sp]
	lsl r6, r6, #5
	add r6, r5, r6
	ldr r5, _02036244 ; =0x00000000
	adc r5, r0
	lsr r0, r6, #0x1b
	lsl r5, r5, #5
	orr r5, r0
	lsl r0, r6, #5
	add r6, r1, r0
	ldr r1, _02036244 ; =0x00000000
	adc r1, r5
	lsr r0, r6, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	lsl r0, r6, #6
	add r5, r2, r0
	ldr r2, _02036244 ; =0x00000000
	adc r2, r1
	lsr r0, r5, #0x1a
	lsl r1, r2, #6
	orr r1, r0
	lsl r0, r5, #6
	add r2, r3, r0
	ldr r0, _02036244 ; =0x00000000
	str r2, [r4, #0]
	adc r0, r1
	str r0, [r4, #4]
	ldr r1, _02036248 ; =0x6C078965
	ldr r0, _0203624C ; =0x5D588B65
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, _02036250 ; =0x00269EC3
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02036240: .word 0x021BF67C
_02036244: .word 0x00000000
_02036248: .word 0x6C078965
_0203624C: .word 0x5D588B65
_02036250: .word 0x00269EC3
	thumb_func_end sub_020361BC

	thumb_func_start sub_02036254
sub_02036254: ; 0x02036254
	add r1, r0, #0
	ldr r0, _02036264 ; =0x021C07C4
	ldr r3, _02036268 ; =sub_02032644
	ldr r2, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r2, r0
	bx r3
	; .align 2, 0
_02036264: .word 0x021C07C4
_02036268: .word sub_02032644
	thumb_func_end sub_02036254

	thumb_func_start sub_0203626C
sub_0203626C: ; 0x0203626C
	add r1, r0, #0
	ldr r0, _0203627C ; =0x021C07C4
	ldr r3, _02036280 ; =sub_02032644
	ldr r2, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r2, r0
	bx r3
	; .align 2, 0
_0203627C: .word 0x021C07C4
_02036280: .word sub_02032644
	thumb_func_end sub_0203626C

	thumb_func_start sub_02036284
sub_02036284: ; 0x02036284
	ldr r0, _02036294 ; =0x021C07C4
	ldr r3, _02036298 ; =sub_020322F8
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	bx r3
	nop
_02036294: .word 0x021C07C4
_02036298: .word sub_020322F8
	thumb_func_end sub_02036284

	thumb_func_start sub_0203629C
sub_0203629C: ; 0x0203629C
	ldr r0, _020362AC ; =0x021C07C4
	ldr r3, _020362B0 ; =sub_020322F8
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	bx r3
	nop
_020362AC: .word 0x021C07C4
_020362B0: .word sub_020322F8
	thumb_func_end sub_0203629C

	thumb_func_start sub_020362B4
sub_020362B4: ; 0x020362B4
	ldr r1, _020362C0 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _020362C4 ; =0x000006B7
	strb r0, [r2, r1]
	bx lr
	nop
_020362C0: .word 0x021C07C4
_020362C4: .word 0x000006B7
	thumb_func_end sub_020362B4

	thumb_func_start sub_020362C8
sub_020362C8: ; 0x020362C8
	ldr r0, _020362D4 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020362D8 ; =0x000006B7
	ldrb r0, [r1, r0]
	bx lr
	nop
_020362D4: .word 0x021C07C4
_020362D8: .word 0x000006B7
	thumb_func_end sub_020362C8

	thumb_func_start sub_020362DC
sub_020362DC: ; 0x020362DC
	ldr r2, _020362EC ; =0x021C07C4
	ldr r2, [r2, #8]
	cmp r2, #0
	beq _020362EA
	add r2, r2, r1
	ldr r1, _020362F0 ; =0x000006A7
	strb r0, [r2, r1]
_020362EA:
	bx lr
	; .align 2, 0
_020362EC: .word 0x021C07C4
_020362F0: .word 0x000006A7
	thumb_func_end sub_020362DC

	thumb_func_start sub_020362F4
sub_020362F4: ; 0x020362F4
	ldr r1, _0203630C ; =0x021C07C4
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _02036308
	add r2, r1, r0
	ldr r1, _02036310 ; =0x000006A7
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	beq _02036308
	add r0, r1, #0
_02036308:
	bx lr
	nop
_0203630C: .word 0x021C07C4
_02036310: .word 0x000006A7
	thumb_func_end sub_020362F4

	thumb_func_start sub_02036314
sub_02036314: ; 0x02036314
	push {r3, lr}
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02036328
	bl ov4_021D254C
	pop {r3, pc}
_02036328:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02036314

	thumb_func_start sub_0203632C
sub_0203632C: ; 0x0203632C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _0203636A
	ldr r2, _0203636C ; =0x021C07C4
	ldr r1, _02036370 ; =0x00000664
	ldr r3, [r2, #8]
	ldr r0, [r3, r1]
	cmp r0, r4
	beq _0203636A
	str r4, [r3, r1]
	cmp r4, #0
	beq _0203636A
	ldr r3, [r2, #8]
	mov r0, #0
	add r1, r1, #4
	str r0, [r3, r1]
	ldr r1, _02036374 ; =0x0000066C
	add r5, r0, #0
	add r4, r0, #0
_0203635C:
	ldr r3, [r2, #8]
	add r0, r0, #1
	add r3, r3, r5
	add r5, r5, #4
	str r4, [r3, r1]
	cmp r0, #8
	blt _0203635C
_0203636A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203636C: .word 0x021C07C4
_02036370: .word 0x00000664
_02036374: .word 0x0000066C
	thumb_func_end sub_0203632C

	thumb_func_start sub_02036378
sub_02036378: ; 0x02036378
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203632C
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _0203639E
	cmp r4, #0
	beq _02036398
	mov r0, #0
	bl ov4_021D2598
	pop {r4, pc}
_02036398:
	mov r0, #1
	bl ov4_021D2598
_0203639E:
	pop {r4, pc}
	thumb_func_end sub_02036378

	thumb_func_start sub_020363A0
sub_020363A0: ; 0x020363A0
	ldr r0, _020363B4 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020363B8 ; =0x000006B1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020363B0
	mov r0, #1
	bx lr
_020363B0:
	mov r0, #0
	bx lr
	; .align 2, 0
_020363B4: .word 0x021C07C4
_020363B8: .word 0x000006B1
	thumb_func_end sub_020363A0

	thumb_func_start sub_020363BC
sub_020363BC: ; 0x020363BC
	ldr r0, _020363C8 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020363CC ; =0x000006B9
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_020363C8: .word 0x021C07C4
_020363CC: .word 0x000006B9
	thumb_func_end sub_020363BC

	thumb_func_start sub_020363D0
sub_020363D0: ; 0x020363D0
	ldr r0, _020363E0 ; =0x021C07C4
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _020363DE
	ldr r0, _020363E4 ; =0x000006BA
	mov r1, #1
	strb r1, [r2, r0]
_020363DE:
	bx lr
	; .align 2, 0
_020363E0: .word 0x021C07C4
_020363E4: .word 0x000006BA
	thumb_func_end sub_020363D0

	.data


	.global Unk_02100A1C
Unk_02100A1C: ; 0x02100A1C
	.incbin "incbin/arm9_data.bin", 0x1D3C, 0x1D3D - 0x1D3C

	.global Unk_02100A1D
Unk_02100A1D: ; 0x02100A1D
	.incbin "incbin/arm9_data.bin", 0x1D3D, 0x1



	.bss


	.global Unk_021C07C4
Unk_021C07C4: ; 0x021C07C4
	.space 0x1

	.global Unk_021C07C5
Unk_021C07C5: ; 0x021C07C5
	.space 0x1

	.global Unk_021C07C8
Unk_021C07C8: ; 0x021C07C8
	.space 0x4

	.global Unk_021C07CC
Unk_021C07CC: ; 0x021C07CC
	.space 0x4

