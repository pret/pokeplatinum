	.include "macros/function.inc"
	.include "overlay104/ov104_0223C2D4.inc"

	

	.text


	thumb_func_start ov104_0223C2D4
ov104_0223C2D4: ; 0x0223C2D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0209B970
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_02025E38
	add r7, r0, #0
	mov r0, #0
	add r4, #0x24
	add r1, r0, #0
	ldrb r5, [r4]
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _0223C49C ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0223C4A0 ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0223C4A4 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #9
	mov r0, #3
	mov r1, #0x5e
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r0, #0x5e
	mov r1, #0xc4
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc4
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	str r6, [r4, #8]
	add r0, #0xc1
	ldr r1, _0223C4A8 ; =0x0000FFFF
	strb r5, [r0]
	mov r2, #0
	add r3, r4, #0
_0223C356:
	add r0, r3, #0
	add r0, #0x70
	add r2, r2, #1
	add r3, r3, #2
	strh r1, [r0]
	cmp r2, #8
	blt _0223C356
	mov r0, #0x5e
	bl ov104_0223CF4C
	str r0, [r4, #0xc]
	mov r0, #0x5e
	bl sub_02002F38
	str r0, [r4, #4]
	mov r1, #1
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #4]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x5e
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #4]
	lsl r2, r1, #9
	mov r3, #0x5e
	bl sub_02002F70
	mov r2, #7
	ldr r0, [r4, #4]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x5e
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #4]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x5e
	bl sub_02002F70
	mov r0, #0x5e
	bl sub_02018340
	str r0, [r4, #0]
	mov r0, #0x40
	mov r1, #0x5e
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov104_0223C948
	add r0, r4, #0
	bl ov104_0223CB80
	add r0, r4, #0
	bl ov104_0223CC10
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl ov104_0223CFF4
	mov r0, #0x5e
	bl ov104_0223D5D0
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov104_0223CC74
	ldr r0, _0223C4AC ; =ov104_0223C720
	ldr r2, _0223C4B0 ; =0x0000EA60
	add r1, r4, #0
	bl sub_0200D9E8
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1, #0]
	ldr r0, _0223C4B4 ; =ov104_0223C72C
	ldr r2, _0223C4B8 ; =0x0000EE48
	add r1, r4, #0
	bl sub_0200D9E8
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1, #0]
	ldr r0, _0223C4BC ; =ov104_0223C738
	ldr r2, _0223C4C0 ; =0x00013880
	add r1, r4, #0
	bl sub_0200D9E8
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add r0, r5, #0
	mov r1, #3
	bl ov104_0222EA90
	add r1, r0, #0
	lsl r1, r1, #0x10
	mov r0, #4
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002B20
	ldr r0, _0223C4C4 ; =ov104_0223C6EC
	add r1, r4, #0
	bl sub_02017798
	ldr r0, _0223C4C8 ; =ov104_0223C71C
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200DA04
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1, #0]
	add r2, r4, #0
	add r2, #0xc1
	add r1, r4, #0
	ldrb r2, [r2]
	add r0, r4, #0
	add r1, #0x90
	bl ov104_0222EB8C
	bl sub_02039734
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C49C: .word 0xFFFFE0FF
_0223C4A0: .word 0x04001000
_0223C4A4: .word 0xFFFF1FFF
_0223C4A8: .word 0x0000FFFF
_0223C4AC: .word ov104_0223C720
_0223C4B0: .word 0x0000EA60
_0223C4B4: .word ov104_0223C72C
_0223C4B8: .word 0x0000EE48
_0223C4BC: .word ov104_0223C738
_0223C4C0: .word 0x00013880
_0223C4C4: .word ov104_0223C6EC
_0223C4C8: .word ov104_0223C71C
	thumb_func_end ov104_0223C2D4

	thumb_func_start ov104_0223C4CC
ov104_0223C4CC: ; 0x0223C4CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0209B970
	add r2, r4, #0
	add r2, #0xc1
	add r1, r4, #0
	ldrb r2, [r2]
	add r0, r4, #0
	add r1, #0x90
	bl ov104_0222EBA4
	add r0, r4, #0
	bl ov104_0223CEEC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #3
	bl sub_02019044
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	bl ov104_0223D058
	ldr r0, [r4, #0x10]
	bl ov104_0223D5F0
	bl sub_0201DC3C
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #4]
	bl sub_02002F54
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	bl sub_0200DA58
	ldr r0, [r4, #0xc]
	bl ov104_0223CFEC
	bl sub_0201E530
	add r0, r4, #0
	bl sub_020181C4
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0223C614 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0223C618 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	mov r0, #0x5e
	bl sub_0201807C
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	bl sub_02039794
	mov r1, #5
	mov r2, #2
	ldr r0, _0223C61C ; =0x00007FFF
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	bl MIi_CpuClear16
	mov r2, #2
	ldr r0, _0223C61C ; =0x00007FFF
	ldr r1, _0223C620 ; =0x05000200
	lsl r2, r2, #8
	bl MIi_CpuClear16
	mov r2, #2
	ldr r0, _0223C61C ; =0x00007FFF
	ldr r1, _0223C624 ; =0x05000400
	lsl r2, r2, #8
	bl MIi_CpuClear16
	mov r2, #2
	ldr r0, _0223C61C ; =0x00007FFF
	ldr r1, _0223C628 ; =0x05000600
	lsl r2, r2, #8
	bl MIi_CpuClear16
	ldr r0, _0223C62C ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0223C630 ; =0x04001050
	strh r1, [r0]
	pop {r4, pc}
	nop
_0223C614: .word 0xFFFF1FFF
_0223C618: .word 0x04001000
_0223C61C: .word 0x00007FFF
_0223C620: .word 0x05000200
_0223C624: .word 0x05000400
_0223C628: .word 0x05000600
_0223C62C: .word 0x04000050
_0223C630: .word 0x04001050
	thumb_func_end ov104_0223C4CC

	thumb_func_start ov104_0223C634
ov104_0223C634: ; 0x0223C634
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r5, #0
	mov r7, #6
_0223C63C:
	ldr r0, [r6, #8]
	add r1, r5, #0
	bl sub_0209B9D4
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223C67A
	add r1, r7, #0
	bl ov63_0222BF90
	strb r0, [r4, #0x12]
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov63_0222BF90
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov63_0222BF90
	strh r0, [r4, #0xe]
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov63_0222BF90
	strh r0, [r4, #0x10]
	ldr r0, [r4, #4]
	bl ov63_0222CFFC
	strb r0, [r4, #0x13]
_0223C67A:
	add r5, r5, #1
	cmp r5, #0x20
	blt _0223C63C
	add r0, r6, #0
	bl ov104_0223D3B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223C634

	thumb_func_start ov104_0223C688
ov104_0223C688: ; 0x0223C688
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_0209B9CC
	ldr r7, _0223C6E8 ; =0x0000FFFF
	add r4, r0, #0
	mov r6, #0
_0223C69A:
	ldrh r1, [r4]
	cmp r1, r7
	beq _0223C6AA
	ldrb r2, [r4, #2]
	ldr r0, [r5, #0x20]
	mov r3, #0x5e
	bl ov63_0222CDE8
_0223C6AA:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x18
	blt _0223C69A
	ldr r7, _0223C6E8 ; =0x0000FFFF
	mov r4, #0
	add r6, sp, #0
_0223C6B8:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_0209B9D4
	ldrh r1, [r0, #0xc]
	cmp r1, r7
	beq _0223C6D6
	add r1, r6, #0
	bl ov104_0223D570
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov104_0223D180
_0223C6D6:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0223C6B8
	add r0, r5, #0
	bl ov104_0223D498
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C6E8: .word 0x0000FFFF
	thumb_func_end ov104_0223C688

	thumb_func_start ov104_0223C6EC
ov104_0223C6EC: ; 0x0223C6EC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r0, [r4, #4]
	bl sub_02003694
	ldr r0, [r4, #0]
	bl sub_0201C2B8
	ldr r3, _0223C714 ; =0x027E0000
	ldr r1, _0223C718 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0223C714: .word 0x027E0000
_0223C718: .word 0x00003FF8
	thumb_func_end ov104_0223C6EC

	thumb_func_start ov104_0223C71C
ov104_0223C71C: ; 0x0223C71C
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223C71C

	thumb_func_start ov104_0223C720
ov104_0223C720: ; 0x0223C720
	ldr r3, _0223C728 ; =ov63_0222BE84
	ldr r0, [r1, #0x14]
	bx r3
	nop
_0223C728: .word ov63_0222BE84
	thumb_func_end ov104_0223C720

	thumb_func_start ov104_0223C72C
ov104_0223C72C: ; 0x0223C72C
	ldr r3, _0223C734 ; =ov104_0223C8E8
	add r0, r1, #0
	bx r3
	nop
_0223C734: .word ov104_0223C8E8
	thumb_func_end ov104_0223C72C

	thumb_func_start ov104_0223C738
ov104_0223C738: ; 0x0223C738
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r0, [r7, #8]
	mov r1, #0x1f
	bl sub_0209B9D4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0223C752
	add r0, r7, #0
	add r0, #0x1c
	bl ov63_0222D160
_0223C752:
	add r0, r7, #0
	bl ov104_0223C798
	ldr r0, [r7, #0x20]
	bl ov63_0222CEE4
	ldr r4, [r7, #0x6c]
	mov r6, #0
	add r5, r7, #0
_0223C764:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _0223C774
	mov r1, #1
	tst r1, r4
	beq _0223C774
	bl sub_0200D330
_0223C774:
	add r6, r6, #1
	lsr r4, r4, #1
	add r5, r5, #4
	cmp r6, #8
	blt _0223C764
	ldr r0, [r7, #0x38]
	bl sub_0200C7EC
	bl sub_0200C808
	bl ov104_0223D6A8
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223C738

	thumb_func_start ov104_0223C798
ov104_0223C798: ; 0x0223C798
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_0209B970
	add r4, r0, #0
	add r0, #0x24
	ldrb r0, [r0]
	mov r1, #0xc
	bl ov104_0222EA90
	cmp r0, #0
	beq _0223C7B6
	cmp r0, #1
	beq _0223C7E4
_0223C7B6:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0223C7C4
	add r1, r5, #0
	add r1, #0x1c
	bl ov63_0222D228
_0223C7C4:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0223C7EA
	add r4, #0x24
	ldrb r0, [r4]
	mov r1, #0xd
	bl ov104_0222EA90
	cmp r0, #1
	bne _0223C7EA
	ldr r0, [r5, #0x28]
	add r5, #0x1c
	add r1, r5, #0
	bl ov63_0222D228
	pop {r3, r4, r5, pc}
_0223C7E4:
	add r0, r5, #0
	bl ov104_0223C7EC
_0223C7EA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223C798

	thumb_func_start ov104_0223C7EC
ov104_0223C7EC: ; 0x0223C7EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_0209B970
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x1c
	bl ov63_0222D1B0
	mov r1, #0xaa
	ldrsh r1, [r5, r1]
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0x1c
	bl ov63_0222D1B8
	mov r1, #0xa8
	ldrsh r1, [r5, r1]
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	cmp r4, #0
	ble _0223C836
	lsl r0, r4, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	str r0, [sp, #4]
	b _0223C846
_0223C836:
	lsl r0, r4, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	str r0, [sp, #4]
_0223C846:
	cmp r6, #0
	ble _0223C85E
	lsl r0, r6, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	str r0, [sp]
	b _0223C86E
_0223C85E:
	lsl r0, r6, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	str r0, [sp]
_0223C86E:
	ldr r0, [r5, #0x34]
	bl sub_0200C738
	str r0, [sp, #8]
	ldr r0, [sp]
	bl _f_ftoi
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	bl _f_ftoi
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_0200962C
	ldr r0, [r5, #0]
	mov r1, #3
	mov r2, #0
	add r3, r6, #0
	bl sub_0201C63C
	mov r1, #3
	ldr r0, [r5, #0]
	add r2, r1, #0
	add r3, r4, #0
	bl sub_0201C63C
	add r0, r7, #0
	add r0, #0x24
	ldrb r0, [r0]
	mov r1, #9
	bl ov104_0222EA90
	ldr r1, _0223C8E4 ; =0x0000FFFF
	cmp r0, r1
	beq _0223C8DE
	add r7, #0x24
	ldrb r0, [r7]
	mov r1, #0xd
	bl ov104_0222EA90
	cmp r0, #1
	bne _0223C8DE
	ldr r0, [r5, #0]
	mov r1, #2
	mov r2, #0
	add r3, r6, #0
	bl sub_0201C63C
	ldr r0, [r5, #0]
	mov r1, #2
	mov r2, #3
	add r3, r4, #0
	bl sub_0201C63C
_0223C8DE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C8E4: .word 0x0000FFFF
	thumb_func_end ov104_0223C7EC

	thumb_func_start ov104_0223C8E8
ov104_0223C8E8: ; 0x0223C8E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r1, sp, #0
	bl ov63_0222D810
	cmp r0, #1
	bne _0223C910
	add r4, sp, #0
_0223C8FC:
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl ov63_0222BE70
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	bl ov63_0222D810
	cmp r0, #1
	beq _0223C8FC
_0223C910:
	ldr r0, [r5, #0x2c]
	add r1, sp, #8
	bl ov63_0222D8D0
	cmp r0, #1
	bne _0223C944
	add r6, sp, #0
	add r4, sp, #8
_0223C920:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	add r2, r4, #0
	add r3, r6, #0
	bl ov63_0222CA88
	cmp r0, #1
	bne _0223C938
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl ov63_0222BE70
_0223C938:
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl ov63_0222D8D0
	cmp r0, #1
	beq _0223C920
_0223C944:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov104_0223C8E8

	thumb_func_start ov104_0223C948
ov104_0223C948: ; 0x0223C948
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa8
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl ov104_0222EA90
	add r4, r0, #0
	bl sub_0201FF00
	ldr r6, _0223CB68 ; =0x0224135C
	add r3, sp, #0x2c
	mov r2, #5
_0223C964:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C964
	add r0, sp, #0x2c
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	ldr r6, _0223CB6C ; =0x022412E4
	add r3, sp, #0x1c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	str r4, [sp, #0x20]
	bl sub_02018368
	ldr r6, _0223CB70 ; =0x02241384
	add r3, sp, #0x54
	mov r2, #0xa
_0223C9C6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C9C6
	ldr r0, [r6, #0]
	cmp r4, #0
	str r0, [r3, #0]
	bne _0223C9E4
	mov r2, #0
	add r1, sp, #0x74
	strb r2, [r1, #0xd]
	add r0, sp, #0x94
	strb r2, [r0, #9]
	strb r2, [r1, #0x10]
	strb r2, [r0, #0xc]
_0223C9E4:
	add r0, r7, #0
	mov r1, #4
	bl ov104_0222EA90
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, sp, #0x94
	strb r6, [r0, #8]
	add r0, r7, #0
	mov r1, #9
	bl ov104_0222EA90
	ldr r1, _0223CB74 ; =0x0000FFFF
	cmp r0, r1
	beq _0223CA06
	add r0, sp, #0x74
	strb r6, [r0, #0xc]
_0223CA06:
	cmp r4, #0
	add r2, sp, #0x54
	bne _0223CA90
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #2
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #3
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	b _0223CB12
_0223CA90:
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r1, #2
	add r0, r5, #0
	add r2, sp, #0x70
	add r3, r1, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #3
	add r2, sp, #0x8c
	mov r3, #2
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
_0223CB12:
	ldr r1, _0223CB78 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r4, _0223CB7C ; =0x02241320
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r5, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #4
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #4
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add sp, #0xa8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CB68: .word 0x0224135C
_0223CB6C: .word 0x022412E4
_0223CB70: .word 0x02241384
_0223CB74: .word 0x0000FFFF
_0223CB78: .word 0x04000008
_0223CB7C: .word 0x02241320
	thumb_func_end ov104_0223C948

	thumb_func_start ov104_0223CB80
ov104_0223CB80: ; 0x0223CB80
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r1, #0xe
	mov r2, #6
	mov r3, #0x5e
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	mov r1, #0xe
	mov r2, #7
	mov r3, #0x5e
	bl sub_02003050
	ldr r0, [r4, #8]
	bl sub_0209B970
	ldr r0, [r0, #4]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x5e
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _0223CC08 ; =0x000003E2
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DD0C
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0xb0
	mov r3, #0x20
	bl sub_02003070
	mov r0, #0
	str r0, [sp]
	mov r0, #0x5e
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r2, _0223CC0C ; =0x000003D9
	mov r1, #1
	mov r3, #0xc
	bl sub_0200DAA4
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0xc0
	mov r3, #0x20
	bl sub_02003070
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223CC08: .word 0x000003E2
_0223CC0C: .word 0x000003D9
	thumb_func_end ov104_0223CB80

	thumb_func_start ov104_0223CC10
ov104_0223CC10: ; 0x0223CC10
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x96
	mov r1, #0x5e
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x5e
	str r1, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r1, #0x7d
	mov r3, #4
	add r4, r0, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x7e
	mov r3, #4
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #0x96
	mov r2, #0xab
	mov r3, #0x5e
	bl sub_02003050
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223CC10

	thumb_func_start ov104_0223CC74
ov104_0223CC74: ; 0x0223CC74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x20
	mov r1, #0x5e
	add r6, r2, #0
	bl ov63_0222BE18
	str r0, [r5, #0x14]
	mov r0, #0x10
	add r1, r0, #0
	mov r2, #0x5e
	bl ov63_0222BCE8
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0x1c
	bl ov63_0222D19C
	ldr r0, [r5, #0x38]
	bl sub_0200D9B0
	add r7, r0, #0
	add r0, r6, #0
	bl ov104_0222E5F0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x5e
	str r0, [sp, #8]
	ldr r1, [r5, #4]
	add r0, r7, #0
	mov r2, #0x20
	bl ov63_0222CD2C
	ldr r3, _0223CEE0 ; =0x022412D8
	str r0, [r5, #0x20]
	add r2, sp, #0x20
	mov r1, #0xb
_0223CCCA:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0223CCCA
	add r0, r4, #0
	mov r1, #5
	bl ov104_0222EA90
	add r1, sp, #0x18
	strb r0, [r1, #0x10]
	add r0, r4, #0
	mov r1, #6
	bl ov104_0222EA90
	add r1, sp, #0x18
	strb r0, [r1, #0x11]
	add r0, r4, #0
	mov r1, #0xc
	bl ov104_0222EA90
	add r6, r0, #0
	bne _0223CD0C
	ldr r0, [r5, #0x34]
	bl sub_0200C738
	ldr r1, [r5, #0]
	add r2, sp, #0x20
	mov r3, #0x5e
	bl ov63_0222D1C0
	str r0, [r5, #0x24]
_0223CD0C:
	add r0, r4, #0
	mov r1, #9
	bl ov104_0222EA90
	ldr r1, _0223CEE4 ; =0x0000FFFF
	cmp r0, r1
	beq _0223CD4A
	add r0, r4, #0
	mov r1, #9
	bl ov104_0222EA90
	add r1, sp, #0x18
	strb r0, [r1, #0x11]
	mov r0, #2
	strb r0, [r1, #9]
	mov r2, #1
	mov r0, #8
	strb r2, [r1, #0xb]
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	cmp r6, #0
	bne _0223CD4A
	ldr r0, [r5, #0x34]
	bl sub_0200C738
	ldr r1, [r5, #0]
	add r2, sp, #0x20
	mov r3, #0x5e
	bl ov63_0222D1C0
	str r0, [r5, #0x28]
_0223CD4A:
	mov r0, #0x80
	mov r1, #0x5e
	bl ov63_0222D848
	str r0, [r5, #0x2c]
	mov r0, #0x80
	mov r1, #0x5e
	bl ov63_0222D77C
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x18]
	ldr r1, _0223CEE8 ; =0x022413D8
	bl ov63_0222BD50
	add r0, r4, #0
	mov r1, #0
	bl ov104_0222EA90
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #5
	bl ov104_0222EA90
	mov r1, #0x5e
	str r0, [sp, #0x10]
	bl sub_02006C24
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #7
	bl ov104_0222EA90
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r3, #3
	bl sub_020070E8
	cmp r7, #0
	bne _0223CDCA
	add r0, r4, #0
	mov r1, #8
	bl ov104_0222EA90
	add r2, r0, #0
	mov r1, #0
	mov r0, #0x16
	str r1, [sp]
	lsl r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x10]
	mov r3, #0x5e
	bl sub_02003050
	b _0223CE08
_0223CDCA:
	add r0, r4, #0
	mov r1, #8
	bl ov104_0222EA90
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #0x1c
	mov r3, #0x5e
	bl sub_020071EC
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	bl DC_FlushRange
	bl GX_BeginLoadBGExtPltt
	ldr r0, [sp, #0x1c]
	mov r1, #6
	mov r2, #2
	ldr r0, [r0, #0xc]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldr r0, [sp, #0x14]
	bl sub_020181C4
_0223CE08:
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r2, #2
	add r3, r1, #0
	bl sub_020038B0
	add r0, r4, #0
	mov r1, #6
	bl ov104_0222EA90
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r3, #3
	bl sub_0200710C
	add r0, r4, #0
	mov r1, #9
	bl ov104_0222EA90
	ldr r1, _0223CEE4 ; =0x0000FFFF
	cmp r0, r1
	beq _0223CECE
	add r0, r4, #0
	mov r1, #0xa
	bl ov104_0222EA90
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r3, #2
	bl sub_020070E8
	add r0, r4, #0
	mov r1, #9
	bl ov104_0222EA90
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r3, #2
	bl sub_0200710C
	cmp r7, #0
	beq _0223CECE
	add r0, r4, #0
	mov r1, #0xb
	bl ov104_0222EA90
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #0x18
	mov r3, #0x5e
	bl sub_020071EC
	ldr r1, [sp, #0x18]
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	bl DC_FlushRange
	bl GX_BeginLoadBGExtPltt
	ldr r0, [sp, #0x18]
	mov r1, #1
	lsl r1, r1, #0xe
	ldr r0, [r0, #0xc]
	lsr r2, r1, #1
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	add r0, r4, #0
	bl sub_020181C4
_0223CECE:
	ldr r0, [r5, #0]
	mov r1, #3
	bl sub_0201C3C0
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CEE0: .word 0x022412D8
_0223CEE4: .word 0x0000FFFF
_0223CEE8: .word 0x022413D8
	thumb_func_end ov104_0223CC74

	thumb_func_start ov104_0223CEEC
ov104_0223CEEC: ; 0x0223CEEC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #8]
	bl sub_0209B9D0
	add r5, r0, #0
	mov r4, #0
_0223CEFA:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223CF0E
	bl ov63_0222BF08
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0223CF0E
	bl GF_AssertFail
_0223CF0E:
	add r4, r4, #1
	add r5, #0x3c
	cmp r4, #0x20
	blt _0223CEFA
	ldr r0, [r6, #0x14]
	bl ov63_0222BE58
	ldr r0, [r6, #0x18]
	bl ov63_0222BD30
	ldr r0, [r6, #0x20]
	bl ov63_0222CD9C
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _0223CF32
	bl ov63_0222D214
_0223CF32:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0223CF3C
	bl ov63_0222D214
_0223CF3C:
	ldr r0, [r6, #0x2c]
	bl ov63_0222D880
	ldr r0, [r6, #0x30]
	bl ov63_0222D7B4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_0223CEEC

	thumb_func_start ov104_0223CF4C
ov104_0223CF4C: ; 0x0223CF4C
	push {r3, lr}
	sub sp, #8
	mov r2, #1
	ldr r1, _0223CF64 ; =ov104_0223CF68
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_0223CF64: .word ov104_0223CF68
	thumb_func_end ov104_0223CF4C

	thumb_func_start ov104_0223CF68
ov104_0223CF68: ; 0x0223CF68
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0223CFD4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0223CFD8 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0223CFDC ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _0223CFE0 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _0223CFE4 ; =0xBFFF0000
	ldr r0, _0223CFE8 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0223CFD4: .word 0x04000008
_0223CFD8: .word 0xFFFFCFFD
_0223CFDC: .word 0x0000CFFB
_0223CFE0: .word 0x00007FFF
_0223CFE4: .word 0xBFFF0000
_0223CFE8: .word 0x04000580
	thumb_func_end ov104_0223CF68

	thumb_func_start ov104_0223CFEC
ov104_0223CFEC: ; 0x0223CFEC
	ldr r3, _0223CFF0 ; =sub_020242C4
	bx r3
	; .align 2, 0
_0223CFF0: .word sub_020242C4
	thumb_func_end ov104_0223CFEC

	thumb_func_start ov104_0223CFF4
ov104_0223CFF4: ; 0x0223CFF4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5e
	bl sub_0200C6E4
	ldr r1, _0223D048 ; =0x0224133C
	ldr r2, _0223D04C ; =0x022412F4
	mov r3, #0x20
	str r0, [r4, #0x34]
	bl sub_0200C73C
	ldr r1, _0223D050 ; =0x00200010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r4, #0x34]
	bl sub_0200C704
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	mov r2, #0x80
	bl sub_0200C7C0
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	ldr r2, _0223D054 ; =0x02241308
	bl sub_0200CB30
	ldr r0, [r4, #0x34]
	bl sub_0200C738
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	pop {r4, pc}
	nop
_0223D048: .word 0x0224133C
_0223D04C: .word 0x022412F4
_0223D050: .word 0x00200010
_0223D054: .word 0x02241308
	thumb_func_end ov104_0223CFF4

	thumb_func_start ov104_0223D058
ov104_0223D058: ; 0x0223D058
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
_0223D060:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0223D06A
	bl ov104_0223D858
_0223D06A:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	blt _0223D060
	ldr r7, _0223D0E4 ; =0x0000FFFF
	mov r6, #0
	add r4, r5, #0
_0223D078:
	add r0, r4, #0
	add r0, #0x70
	ldrh r1, [r0]
	cmp r1, r7
	beq _0223D088
	ldr r0, [r5, #0x38]
	bl ov104_0223D7EC
_0223D088:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #8
	blt _0223D078
	ldr r7, _0223D0E8 ; =0x0000C350
	mov r4, #0
	add r6, r5, #0
_0223D096:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223D0CA
	bl sub_0200D0F4
	ldr r1, _0223D0E8 ; =0x0000C350
	ldr r0, [r5, #0x38]
	add r1, r4, r1
	bl sub_0200D070
	ldr r1, _0223D0E8 ; =0x0000C350
	ldr r0, [r5, #0x38]
	add r1, r4, r1
	bl sub_0200D080
	ldr r1, _0223D0E8 ; =0x0000C350
	ldr r0, [r5, #0x38]
	add r1, r4, r1
	bl sub_0200D090
	ldr r0, [r5, #0x38]
	add r1, r4, r7
	bl sub_0200D0A0
_0223D0CA:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _0223D096
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl sub_0200D0B0
	ldr r0, [r5, #0x34]
	bl sub_0200C8D4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D0E4: .word 0x0000FFFF
_0223D0E8: .word 0x0000C350
	thumb_func_end ov104_0223D058

	thumb_func_start ov104_0223D0EC
ov104_0223D0EC: ; 0x0223D0EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #8]
	add r5, r1, #0
	bl sub_0209B9CC
	add r7, r0, #0
	ldrh r3, [r5]
	mov r1, #0
	add r2, r7, #0
_0223D100:
	ldrh r0, [r2]
	cmp r3, r0
	beq _0223D142
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x18
	blt _0223D100
	ldr r0, _0223D144 ; =0x0000FFFF
	mov r4, #0
	add r2, r7, #0
_0223D114:
	ldrh r1, [r2]
	cmp r1, r0
	beq _0223D122
	add r4, r4, #1
	add r2, r2, #4
	cmp r4, #0x18
	blt _0223D114
_0223D122:
	cmp r4, #0x18
	bne _0223D12A
	bl GF_AssertFail
_0223D12A:
	ldrh r0, [r5]
	lsl r2, r4, #2
	add r1, r7, r2
	strh r0, [r7, r2]
	ldrh r0, [r5, #2]
	mov r3, #0x5e
	strh r0, [r1, #2]
	ldrh r1, [r5]
	ldrb r2, [r5, #2]
	ldr r0, [r6, #0x20]
	bl ov63_0222CDE8
_0223D142:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D144: .word 0x0000FFFF
	thumb_func_end ov104_0223D0EC

	thumb_func_start ov104_0223D148
ov104_0223D148: ; 0x0223D148
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #8]
	add r5, r1, #0
	bl sub_0209B9CC
	add r7, r0, #0
	mov r4, #0
	add r1, r7, #0
_0223D15A:
	ldrh r0, [r1]
	cmp r5, r0
	bne _0223D170
	ldr r0, [r6, #0x20]
	add r1, r5, #0
	bl ov63_0222CE0C
	ldr r1, _0223D17C ; =0x0000FFFF
	lsl r0, r4, #2
	strh r1, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0223D170:
	add r4, r4, #1
	add r1, r1, #4
	cmp r4, #0x18
	blt _0223D15A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D17C: .word 0x0000FFFF
	thumb_func_end ov104_0223D148

	thumb_func_start ov104_0223D180
ov104_0223D180: ; 0x0223D180
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, [r6, #8]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0209B9D0
	mov r1, #0
	mvn r1, r1
	cmp r4, r1
	bne _0223D1B0
	mov r4, #0
_0223D19A:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0223D1A8
	add r4, r4, #1
	add r0, #0x3c
	cmp r4, #0x20
	blt _0223D19A
_0223D1A8:
	cmp r4, #0x20
	bne _0223D1B0
	bl GF_AssertFail
_0223D1B0:
	mov r0, #6
	ldrsh r0, [r5, r0]
	add r1, sp, #8
	strh r0, [r1]
	mov r0, #8
	ldrsh r0, [r5, r0]
	strh r0, [r1, #2]
	ldrh r0, [r5, #4]
	strh r0, [r1, #4]
	ldrh r0, [r5, #2]
	strh r0, [r1, #6]
	ldrb r0, [r5, #0xa]
	strh r0, [r1, #8]
	ldrh r0, [r5]
	strh r0, [r1, #0xa]
	ldr r0, [r6, #0x14]
	add r1, sp, #8
	bl ov63_0222BEC0
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	ldr r1, [sp, #4]
	mov r2, #0
	mov r3, #0x5e
	bl ov63_0222CE44
	ldrb r1, [r5, #0xb]
	add r7, r0, #0
	bl ov63_0222D008
	str r5, [sp]
	ldr r0, [r6, #8]
	ldr r2, [sp, #4]
	add r1, r4, #0
	add r3, r7, #0
	bl ov104_0223D584
	ldr r0, [sp, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223D180

	thumb_func_start ov104_0223D200
ov104_0223D200: ; 0x0223D200
	push {r3, r4, r5, lr}
	ldr r0, [r0, #8]
	add r5, r1, #0
	bl sub_0209B9D0
	add r4, r0, #0
	mov r1, #0
	add r2, r4, #0
_0223D210:
	ldr r0, [r2, #0]
	cmp r0, r5
	bne _0223D248
	mov r0, #0x3c
	add r5, r1, #0
	mul r5, r0
	ldr r0, [r4, r5]
	bl ov63_0222BF08
	add r0, r4, r5
	ldr r0, [r0, #4]
	bl ov63_0222CECC
	add r0, r4, r5
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _0223D236
	bl GF_AssertFail
_0223D236:
	add r0, r4, r5
	mov r1, #0
	mov r2, #0x3c
	bl MI_CpuFill8
	ldr r1, _0223D254 ; =0x0000FFFF
	add r0, r4, r5
	strh r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
_0223D248:
	add r1, r1, #1
	add r2, #0x3c
	cmp r1, #0x20
	blt _0223D210
	pop {r3, r4, r5, pc}
	nop
_0223D254: .word 0x0000FFFF
	thumb_func_end ov104_0223D200

	thumb_func_start ov104_0223D258
ov104_0223D258: ; 0x0223D258
	push {r4, r5, r6, lr}
	ldr r0, [r0, #8]
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0209B9D0
	mov r1, #0
	add r3, r0, #0
_0223D26A:
	ldrh r2, [r3, #0xc]
	cmp r5, r2
	bne _0223D28C
	cmp r4, #0
	beq _0223D27C
	mov r2, #0x3c
	mul r2, r1
	ldr r2, [r0, r2]
	str r2, [r4, #0]
_0223D27C:
	cmp r6, #0
	beq _0223D298
	mov r2, #0x3c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #4]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
_0223D28C:
	add r1, r1, #1
	add r3, #0x3c
	cmp r1, #0x20
	blt _0223D26A
	bl GF_AssertFail
_0223D298:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_0223D258

	thumb_func_start ov104_0223D29C
ov104_0223D29C: ; 0x0223D29C
	push {r3, r4, r5, lr}
	ldr r3, _0223D2C8 ; =0x0000FFFF
	mov r4, #0
	add r5, r0, #0
_0223D2A4:
	add r2, r5, #0
	add r2, #0x70
	ldrh r2, [r2]
	cmp r2, r3
	bne _0223D2B8
	lsl r2, r4, #1
	add r0, r0, r2
	add r0, #0x70
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_0223D2B8:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #8
	blt _0223D2A4
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	nop
_0223D2C8: .word 0x0000FFFF
	thumb_func_end ov104_0223D29C

	thumb_func_start ov104_0223D2CC
ov104_0223D2CC: ; 0x0223D2CC
	push {r3, r4}
	mov r3, #0
	add r4, r0, #0
_0223D2D2:
	add r2, r4, #0
	add r2, #0x70
	ldrh r2, [r2]
	cmp r1, r2
	bne _0223D2EA
	lsl r1, r3, #1
	add r0, r0, r1
	ldr r2, _0223D2F8 ; =0x0000FFFF
	add r0, #0x70
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_0223D2EA:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #8
	blt _0223D2D2
	pop {r3, r4}
	bx lr
	nop
_0223D2F8: .word 0x0000FFFF
	thumb_func_end ov104_0223D2CC

	thumb_func_start ov104_0223D2FC
ov104_0223D2FC: ; 0x0223D2FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	blo _0223D30E
	bl GF_AssertFail
_0223D30E:
	add r7, r5, #0
	lsl r0, r4, #2
	add r7, #0x3c
	str r0, [sp]
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _0223D320
	bl GF_AssertFail
_0223D320:
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	add r2, r6, #0
	bl ov104_0223D828
	ldr r1, [sp]
	str r0, [sp, #4]
	str r0, [r7, r1]
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0x5c
	strh r6, [r0]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov104_0223D378
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223D2FC

	thumb_func_start ov104_0223D348
ov104_0223D348: ; 0x0223D348
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blo _0223D356
	bl GF_AssertFail
_0223D356:
	lsl r4, r4, #2
	add r5, #0x3c
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0223D364
	bl GF_AssertFail
_0223D364:
	ldr r0, [r5, r4]
	bl ov104_0223D858
	mov r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223D348

	thumb_func_start ov104_0223D370
ov104_0223D370: ; 0x0223D370
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x3c]
	bx lr
	thumb_func_end ov104_0223D370

	thumb_func_start ov104_0223D378
ov104_0223D378: ; 0x0223D378
	push {r3, r4}
	cmp r2, #1
	bne _0223D38E
	mov r2, #1
	ldr r3, [r0, #0x6c]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r0, #0x6c]
	pop {r3, r4}
	bx lr
_0223D38E:
	mov r2, #1
	add r3, r2, #0
	lsl r3, r1
	sub r1, r2, #2
	ldr r4, [r0, #0x6c]
	eor r1, r3
	and r1, r4
	str r1, [r0, #0x6c]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223D378

	thumb_func_start ov104_0223D3A4
ov104_0223D3A4: ; 0x0223D3A4
	ldr r0, [r0, #0x6c]
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	thumb_func_end ov104_0223D3A4

	thumb_func_start ov104_0223D3B0
ov104_0223D3B0: ; 0x0223D3B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #8]
	bl sub_0209B9E0
	ldr r4, [sp]
	add r6, r0, #0
	ldr r0, _0223D484 ; =0x0000FFFF
	add r4, #0x3c
	mov r3, #0
_0223D3C6:
	lsl r2, r3, #1
	add r1, r4, r2
	ldrh r1, [r1, #0x34]
	cmp r1, r0
	beq _0223D3D4
	strh r1, [r6, r2]
	add r3, r3, #1
_0223D3D4:
	add r3, r3, #1
	cmp r3, #8
	blt _0223D3C6
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x12
	str r0, [sp, #8]
	add r0, r6, #0
	add r5, r6, #0
	str r0, [sp, #4]
	add r0, #0x10
	mov r7, #0
	add r5, #0x16
	str r4, [sp, #0xc]
	str r0, [sp, #4]
_0223D3F2:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223D460
	bl sub_0200D37C
	strb r0, [r6, #0x15]
	ldr r0, [r4, #0]
	bl sub_0200D3E0
	ldrh r2, [r5]
	ldr r1, _0223D488 ; =0xFFFFE000
	and r1, r2
	ldr r2, _0223D48C ; =0x00001FFF
	and r0, r2
	orr r0, r1
	strh r0, [r5]
	lsl r1, r7, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	bl ov104_0223D3A4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	ldrh r2, [r5]
	ldr r1, _0223D490 ; =0xFFFFDFFF
	lsr r0, r0, #0x12
	and r1, r2
	orr r0, r1
	strh r0, [r5]
	ldr r0, [r4, #0]
	bl sub_0200D408
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	ldrh r2, [r5]
	ldr r1, _0223D494 ; =0xFFFFBFFF
	lsr r0, r0, #0x11
	and r1, r2
	orr r0, r1
	strh r0, [r5]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldrh r0, [r0, #0x20]
	ldr r2, [sp, #8]
	strb r0, [r6, #0x14]
	ldr r0, [r4, #0]
	bl sub_0200D550
	mov r0, #2
	ldrh r1, [r5]
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r5]
_0223D460:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, #8
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r6, #8
	add r0, #8
	add r5, #8
	str r0, [sp, #4]
	cmp r7, #8
	blt _0223D3F2
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D484: .word 0x0000FFFF
_0223D488: .word 0xFFFFE000
_0223D48C: .word 0x00001FFF
_0223D490: .word 0xFFFFDFFF
_0223D494: .word 0xFFFFBFFF
	thumb_func_end ov104_0223D3B0

	thumb_func_start ov104_0223D498
ov104_0223D498: ; 0x0223D498
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r7, #8]
	bl sub_0209B9E0
	add r5, r0, #0
	mov r0, #0x97
	mov r1, #0x5e
	bl sub_02006C24
	str r0, [sp, #4]
	mov r6, #0
	add r4, r5, #0
_0223D4B4:
	ldrh r1, [r4]
	ldr r0, _0223D550 ; =0x0000FFFF
	cmp r1, r0
	beq _0223D4D2
	str r1, [sp]
	ldr r0, [r7, #0x34]
	ldr r1, [r7, #0x38]
	ldr r2, [sp, #4]
	ldr r3, [r7, #4]
	bl ov104_0223D768
	ldrh r1, [r4]
	add r0, r7, #0
	bl ov104_0223D29C
_0223D4D2:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #8
	blt _0223D4B4
	add r4, r5, #0
	mov r6, #0
	add r4, #0x16
_0223D4E0:
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0223D534
	ldrb r2, [r5, #0x14]
	lsl r1, r6, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl ov104_0223D2FC
	mov r1, #0x10
	mov r2, #0x12
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	str r0, [sp, #8]
	bl sub_0200D4C4
	ldrh r1, [r4]
	ldr r0, [sp, #8]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1f
	bl sub_0200D3F4
	ldrh r2, [r4]
	lsl r1, r6, #0x10
	add r0, r7, #0
	lsl r2, r2, #0x12
	lsr r1, r1, #0x10
	lsr r2, r2, #0x1f
	bl ov104_0223D378
	ldrb r1, [r5, #0x15]
	ldr r0, [sp, #8]
	bl sub_0200D364
	ldrh r1, [r4]
	ldr r0, [sp, #8]
	lsl r1, r1, #0x13
	lsr r1, r1, #0x13
	bl sub_0200D3CC
_0223D534:
	add r6, r6, #1
	add r4, #8
	add r5, #8
	cmp r6, #8
	blt _0223D4E0
	ldr r0, [sp, #4]
	bl sub_02006CA8
	ldr r0, [r7, #8]
	bl sub_0209B9EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223D550: .word 0x0000FFFF
	thumb_func_end ov104_0223D498

	thumb_func_start ov104_0223D554
ov104_0223D554: ; 0x0223D554
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x1c
	add r6, r1, #0
	add r4, r2, #0
	bl ov63_0222D1B0
	add r5, #0x1c
	strh r0, [r4]
	add r0, r5, #0
	bl ov63_0222D1B8
	strh r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0223D554

	thumb_func_start ov104_0223D570
ov104_0223D570: ; 0x0223D570
	add r0, #8
	mov r3, #0xf
_0223D574:
	ldrh r2, [r0]
	add r0, r0, #2
	strh r2, [r1]
	add r1, r1, #2
	sub r3, r3, #1
	bne _0223D574
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223D570

	thumb_func_start ov104_0223D584
ov104_0223D584: ; 0x0223D584
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0209B9D4
	str r5, [r0, #0]
	str r4, [r0, #4]
	ldr r3, [sp, #0x10]
	add r0, #8
	mov r2, #0xf
_0223D598:
	ldrh r1, [r3]
	add r3, r3, #2
	strh r1, [r0]
	add r0, r0, #2
	sub r2, r2, #1
	bne _0223D598
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0223D584

	thumb_func_start ov104_0223D5A8
ov104_0223D5A8: ; 0x0223D5A8
	push {r4, lr}
	add r4, r1, #0
	bl sub_0209B9D0
	mov r2, #0
_0223D5B2:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0223D5BE
	ldrh r1, [r0, #0xc]
	cmp r1, r4
	beq _0223D5CC
_0223D5BE:
	add r2, r2, #1
	add r0, #0x3c
	cmp r2, #0x20
	blt _0223D5B2
	bl GF_AssertFail
	mov r0, #0
_0223D5CC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223D5A8

	.rodata


	.global Unk_ov104_022412D8
Unk_ov104_022412D8: ; 0x022412D8
	.incbin "incbin/overlay104_rodata.bin", 0x2048, 0x2054 - 0x2048

	.global Unk_ov104_022412E4
Unk_ov104_022412E4: ; 0x022412E4
	.incbin "incbin/overlay104_rodata.bin", 0x2054, 0x2064 - 0x2054

	.global Unk_ov104_022412F4
Unk_ov104_022412F4: ; 0x022412F4
	.incbin "incbin/overlay104_rodata.bin", 0x2064, 0x2078 - 0x2064

	.global Unk_ov104_02241308
Unk_ov104_02241308: ; 0x02241308
	.incbin "incbin/overlay104_rodata.bin", 0x2078, 0x2090 - 0x2078

	.global Unk_ov104_02241320
Unk_ov104_02241320: ; 0x02241320
	.incbin "incbin/overlay104_rodata.bin", 0x2090, 0x20AC - 0x2090

	.global Unk_ov104_0224133C
Unk_ov104_0224133C: ; 0x0224133C
	.incbin "incbin/overlay104_rodata.bin", 0x20AC, 0x20CC - 0x20AC

	.global Unk_ov104_0224135C
Unk_ov104_0224135C: ; 0x0224135C
	.incbin "incbin/overlay104_rodata.bin", 0x20CC, 0x20F4 - 0x20CC

	.global Unk_ov104_02241384
Unk_ov104_02241384: ; 0x02241384
	.incbin "incbin/overlay104_rodata.bin", 0x20F4, 0x2148 - 0x20F4

	.global Unk_ov104_022413D8
Unk_ov104_022413D8: ; 0x022413D8
	.incbin "incbin/overlay104_rodata.bin", 0x2148, 0x400

