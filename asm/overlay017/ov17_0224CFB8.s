	.include "macros/function.inc"
	.include "overlay017/ov17_0224CFB8.inc"

	

	.text


	thumb_func_start ov17_0224CFB8
ov17_0224CFB8: ; 0x0224CFB8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _0224CFEC ; =0x022549E4
	add r3, sp, #0
	str r1, [sp]
	mov r1, #0xd
	strh r1, [r3, #4]
	ldr r1, [r0, #0]
	ldr r2, _0224CFF0 ; =0x00000123
	ldrb r1, [r1, r2]
	strb r1, [r3, #6]
	sub r1, r2, #7
	ldr r4, [r0, #0]
	add r2, #0x4e
	ldrb r1, [r4, r1]
	strb r1, [r3, #8]
	ldr r1, [r0, #0]
	ldrb r1, [r1, r2]
	strb r1, [r3, #7]
	ldr r1, _0224CFF4 ; =0x00001174
	add r0, r0, r1
	add r1, sp, #0
	bl ov17_0224F18C
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0224CFEC: .word 0x022549E4
_0224CFF0: .word 0x00000123
_0224CFF4: .word 0x00001174
	thumb_func_end ov17_0224CFB8

	thumb_func_start ov17_0224CFF8
ov17_0224CFF8: ; 0x0224CFF8
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224CFF8

	thumb_func_start ov17_0224D00C
ov17_0224D00C: ; 0x0224D00C
	push {r3, lr}
	add r1, r2, #0
	mov r2, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D00C

	thumb_func_start ov17_0224D01C
ov17_0224D01C: ; 0x0224D01C
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224D01C

	thumb_func_start ov17_0224D020
ov17_0224D020: ; 0x0224D020
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D020

	thumb_func_start ov17_0224D034
ov17_0224D034: ; 0x0224D034
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x17
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224D070 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0224D074 ; =ov17_0224D078
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D070: .word 0x00007530
_0224D074: .word ov17_0224D078
	thumb_func_end ov17_0224D034

	thumb_func_start ov17_0224D078
ov17_0224D078: ; 0x0224D078
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _0224D088
	b _0224D1AE
_0224D088:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D09C
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_0224D09C:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D0B0
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_0224D0B0:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x74]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _0224D128
_0224D0C8:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	ldr r0, _0224D1CC ; =0x022549C4
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _0224D122
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r0, [r0, #0x12]
	mov r7, #0x3f
	str r5, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _0224D1D0 ; =0x022549CC
	lsl r7, r7, #0xa
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r0, r0, #5
	add r6, r1, r0
	b _0224D11C
_0224D0F8:
	mov r4, #0
	b _0224D110
_0224D0FC:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_0224D110:
	cmp r4, #8
	blt _0224D0FC
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_0224D11C:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _0224D0F8
_0224D122:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0224D128:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _0224D0C8
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0224D16A
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0224D16A
	ldr r0, _0224D1CC ; =0x022549C4
	sub r1, r1, #1
	ldrsb r0, [r0, r1]
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #0x3f
	str r0, [sp, #4]
	lsl r1, r1, #0xa
	b _0224D164
_0224D154:
	ldr r0, [sp, #4]
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r1
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0224D164:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0224D154
_0224D16A:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x74]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _0224D1C8
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _0224D1C8
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_0224D1AE:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224D1C8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D1CC: .word 0x022549C4
_0224D1D0: .word 0x022549CC
	thumb_func_end ov17_0224D078

	thumb_func_start ov17_0224D1D4
ov17_0224D1D4: ; 0x0224D1D4
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D1D4

	thumb_func_start ov17_0224D1E8
ov17_0224D1E8: ; 0x0224D1E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #0x17
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	str r6, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224D230 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0224D234 ; =ov17_0224D240
	str r7, [r4, #0xc]
	bl sub_0200D9E8
	ldr r0, _0224D238 ; =0x00001150
	mov r1, #0
	strb r1, [r6, r0]
	ldr r0, _0224D23C ; =0x0000046F
	bl sub_0200549C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D230: .word 0x00007530
_0224D234: .word ov17_0224D240
_0224D238: .word 0x00001150
_0224D23C: .word 0x0000046F
	thumb_func_end ov17_0224D1E8

	thumb_func_start ov17_0224D240
ov17_0224D240: ; 0x0224D240
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	str r1, [sp]
	cmp r0, #0
	beq _0224D250
	b _0224D39E
_0224D250:
	ldr r0, [sp]
	mov r1, #0x14
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D264
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
_0224D264:
	ldr r0, [sp]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	cmp r0, #0
	ble _0224D278
	sub r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x13]
	pop {r4, r5, r6, r7, pc}
_0224D278:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x13]
	ldr r0, [r0, #0]
	mov r1, #2
	ldr r0, [r0, #0x74]
	bl sub_02019FE4
	mov ip, r0
	mov r0, #0
	str r0, [sp, #8]
	b _0224D2F8
_0224D290:
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	mov r0, #4
	sub r1, r0, r1
	ldr r0, _0224D3BC ; =0x022549C4
	ldrsb r1, [r0, r1]
	ldr r0, [sp, #8]
	add r0, r1, r0
	bmi _0224D2F2
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	ldr r0, [sp]
	mov r5, #0
	ldrb r1, [r0, #0x12]
	mov r0, #0xb
	mov r7, #0x3f
	sub r0, r0, r1
	lsl r1, r0, #1
	ldr r0, _0224D3C0 ; =0x022549CC
	str r5, [sp, #4]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #8]
	lsl r7, r7, #0xa
	lsl r0, r0, #5
	add r6, r1, r0
	b _0224D2EC
_0224D2C8:
	mov r4, #0
	b _0224D2E0
_0224D2CC:
	add r0, r5, r4
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	and r0, r7
	strh r0, [r3, r2]
	ldrh r1, [r3, r2]
	add r0, r6, r4
	add r4, r4, #1
	orr r0, r1
	strh r0, [r3, r2]
_0224D2E0:
	cmp r4, #8
	blt _0224D2CC
	ldr r0, [sp, #4]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #4]
_0224D2EC:
	ldr r0, [sp, #4]
	cmp r0, #4
	blt _0224D2C8
_0224D2F2:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0224D2F8:
	ldr r0, [sp, #8]
	cmp r0, #4
	blt _0224D290
	ldr r0, [sp]
	mov r1, #0x11
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0224D35A
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	bne _0224D35A
	mov r0, #5
	sub r1, r0, r1
	ldr r0, _0224D3BC ; =0x022549C4
	mov r7, #0x3f
	ldrsb r0, [r0, r1]
	lsl r7, r7, #0xa
	mov r6, #0x1d
	add r0, r0, #3
	lsl r1, r0, #6
	mov r0, ip
	add r3, r0, r1
	mov r0, #0
	mov r1, #2
	str r0, [sp, #4]
	lsl r1, r1, #8
	b _0224D354
_0224D32E:
	ldr r0, [sp, #4]
	ldr r5, [sp, #4]
	lsl r4, r0, #1
	ldrh r0, [r3, r4]
	lsl r5, r5, #0x1d
	and r0, r7
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	ldrh r2, [r3, r4]
	lsr r0, r0, #0x1f
	sub r5, r5, r0
	ror r5, r6
	add r0, r0, r5
	add r0, r0, r1
	orr r0, r2
	strh r0, [r3, r4]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0224D354:
	ldr r0, [sp, #4]
	cmp r0, #0x20
	blt _0224D32E
_0224D35A:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x74]
	bl sub_0201C3C0
	ldr r0, [sp]
	ldrb r0, [r0, #0x12]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #0x12]
	ldrb r0, [r0, #0x12]
	cmp r0, #0xc
	blo _0224D3B8
	ldr r1, [sp]
	mov r0, #0
	mov r2, #0x11
	strb r0, [r1, #0x12]
	ldrsb r1, [r1, r2]
	add r3, r1, #1
	ldr r1, [sp]
	strb r3, [r1, #0x11]
	strb r0, [r1, #0x14]
	add r0, r1, #0
	ldrsb r0, [r0, r2]
	cmp r0, #5
	blo _0224D3B8
	add r0, r1, #0
	ldrb r0, [r0, #0x10]
	add r1, r0, #1
	ldr r0, [sp]
	add sp, #0xc
	strb r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_0224D39E:
	add r0, r1, #0
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r1, r1, #4
	add r3, r2, #0
	bl ov17_0224F26C
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224D3B8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D3BC: .word 0x022549C4
_0224D3C0: .word 0x022549CC
	thumb_func_end ov17_0224D240

	thumb_func_start ov17_0224D3C4
ov17_0224D3C4: ; 0x0224D3C4
	push {r3, lr}
	lsl r2, r2, #0x10
	mov r3, #0
	mov r1, #0xff
	lsr r2, r2, #0x10
	str r3, [sp]
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D3C4

	thumb_func_start ov17_0224D3D8
ov17_0224D3D8: ; 0x0224D3D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x17
	mov r1, #0x14
	add r5, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r7, [r4, #0]
	ldrh r0, [r5]
	ldr r2, _0224D414 ; =0x00007530
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	ldr r0, _0224D418 ; =ov17_0224D41C
	str r6, [r4, #0xc]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D414: .word 0x00007530
_0224D418: .word ov17_0224D41C
	thumb_func_end ov17_0224D3D8

	thumb_func_start ov17_0224D41C
ov17_0224D41C: ; 0x0224D41C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #5
	bhi _0224D4C0
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224D434: ; jump table
	.short _0224D440 - _0224D434 - 2 ; case 0
	.short _0224D450 - _0224D434 - 2 ; case 1
	.short _0224D460 - _0224D434 - 2 ; case 2
	.short _0224D482 - _0224D434 - 2 ; case 3
	.short _0224D49C - _0224D434 - 2 ; case 4
	.short _0224D4B4 - _0224D434 - 2 ; case 5
_0224D440:
	ldr r0, _0224D4DC ; =0x0000046F
	mov r1, #0x1e
	bl sub_020055D0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D450:
	bl sub_02005684
	cmp r0, #0
	bne _0224D4D8
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D460:
	ldr r0, _0224D4E0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bl ov17_0224C84C
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x14
	bl ov17_0224ABDC
	ldr r0, _0224D4E4 ; =0x000006EC
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D482:
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x12]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0224D4D8
	mov r0, #0
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D49C:
	ldr r0, [r4, #0]
	ldr r1, _0224D4E8 ; =0x00000123
	ldr r2, [r0, #0]
	ldrb r1, [r2, r1]
	add r2, r4, #0
	add r2, #0x11
	bl ov17_0224C6B0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D4B4:
	ldrb r1, [r4, #0x11]
	cmp r1, #1
	bne _0224D4D8
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224D4C0:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224D4D8:
	pop {r3, r4, r5, pc}
	nop
_0224D4DC: .word 0x0000046F
_0224D4E0: .word 0x04000050
_0224D4E4: .word 0x000006EC
_0224D4E8: .word 0x00000123
	thumb_func_end ov17_0224D41C

	thumb_func_start ov17_0224D4EC
ov17_0224D4EC: ; 0x0224D4EC
	push {r3, lr}
	mov r1, #4
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D4EC

	thumb_func_start ov17_0224D500
ov17_0224D500: ; 0x0224D500
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	add r2, r3, #0
	ldr r0, _0224D53C ; =0x00001C0C
	mov r1, #1
	strb r1, [r5, r0]
	ldr r3, _0224D540 ; =0x00000172
	mov r1, #0
_0224D514:
	ldr r6, [r5, #0]
	ldrb r0, [r2, r1]
	add r6, r6, r1
	add r1, r1, #1
	strb r0, [r6, r3]
	cmp r1, #4
	blt _0224D514
	ldr r0, [r5, #0]
	bl sub_02094EDC
	cmp r0, #0
	bne _0224D538
	mov r2, #0
	add r0, r4, #0
	add r1, r7, #0
	add r3, r2, #0
	bl ov17_0224F26C
_0224D538:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D53C: .word 0x00001C0C
_0224D540: .word 0x00000172
	thumb_func_end ov17_0224D500

	thumb_func_start ov17_0224D544
ov17_0224D544: ; 0x0224D544
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D544

	thumb_func_start ov17_0224D558
ov17_0224D558: ; 0x0224D558
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	mov r1, #0x57
	add r7, r0, #0
	mov r0, #0x17
	lsl r1, r1, #2
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	mov r2, #0x57
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	str r6, [r4, #0]
	ldrh r0, [r5]
	add r3, r4, #0
	add r3, #0x18
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	mov r2, #7
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	ldr r5, [sp, #4]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224D596:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224D596
	ldr r0, [r5, #0]
	ldr r2, _0224D654 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224D658 ; =ov17_0224D710
	add r1, r4, #0
	str r6, [r4, #0x54]
	bl sub_0200D9E8
	mov r7, #0
	add r5, r4, #0
_0224D5B2:
	ldr r1, [r6, #0]
	ldr r0, _0224D65C ; =0x00000127
	ldrb r0, [r1, r0]
	cmp r7, r0
	bge _0224D5C6
	add r0, r6, #0
	mov r1, #0
	bl ov17_0224D668
	b _0224D5CE
_0224D5C6:
	add r0, r6, #0
	mov r1, #1
	bl ov17_0224D668
_0224D5CE:
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _0224D5B2
	ldr r1, [r4, #0]
	ldr r2, _0224D660 ; =0x00000123
	ldr r3, [r1, #0]
	mov r0, #0
	ldrb r3, [r3, r2]
_0224D5E6:
	add r2, r4, r0
	ldrb r2, [r2, #0x1a]
	cmp r3, r2
	bne _0224D5F4
	ldr r2, _0224D664 ; =0x00000AE8
	strb r0, [r1, r2]
	b _0224D5FA
_0224D5F4:
	add r0, r0, #1
	cmp r0, #4
	blt _0224D5E6
_0224D5FA:
	add r0, r6, #0
	bl ov17_0224DF54
	ldr r1, [r6, #0]
	ldr r0, _0224D65C ; =0x00000127
	ldrb r5, [r1, r0]
	cmp r5, #4
	bge _0224D650
	ldr r0, [sp, #4]
	lsl r1, r5, #2
	add r7, r0, r1
	add r1, r4, #0
	mov r0, #0x3c
	add r1, #0x5c
	mul r0, r5
	add r0, r1, r0
	str r0, [sp, #8]
_0224D61C:
	mov r2, #0
_0224D61E:
	add r0, r4, r2
	ldrb r0, [r0, #0x1a]
	cmp r5, r0
	beq _0224D62C
	add r2, r2, #1
	cmp r2, #4
	blt _0224D61E
_0224D62C:
	ldr r0, [r6, #0]
	add r1, r0, r5
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [r7, #0x14]
	bl ov17_0224E930
	ldr r0, [sp, #8]
	add r5, r5, #1
	add r0, #0x3c
	add r7, r7, #4
	str r0, [sp, #8]
	cmp r5, #4
	blt _0224D61C
_0224D650:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D654: .word 0x00007530
_0224D658: .word ov17_0224D710
_0224D65C: .word 0x00000127
_0224D660: .word 0x00000123
_0224D664: .word 0x00000AE8
	thumb_func_end ov17_0224D558

	thumb_func_start ov17_0224D668
ov17_0224D668: ; 0x0224D668
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x17
	mov r1, #0x14
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl MI_CpuFill8
	str r5, [r4, #4]
	ldr r0, _0224D694 ; =ov17_0224D6CC
	ldr r2, _0224D698 ; =0x00007594
	add r1, r4, #0
	strb r6, [r4, #0x12]
	bl sub_0200D9E8
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224D694: .word ov17_0224D6CC
_0224D698: .word 0x00007594
	thumb_func_end ov17_0224D668

	thumb_func_start ov17_0224D69C
ov17_0224D69C: ; 0x0224D69C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224D69C

	thumb_func_start ov17_0224D6B0
ov17_0224D6B0: ; 0x0224D6B0
	ldrh r2, [r1]
	strh r2, [r0, #8]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #4]
	strh r2, [r0, #0xc]
	ldrh r2, [r1, #6]
	strh r2, [r0, #0xe]
	ldrh r1, [r1, #8]
	strh r1, [r0, #0x10]
	mov r1, #1
	strb r1, [r0, #0x13]
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224D6B0

	thumb_func_start ov17_0224D6CC
ov17_0224D6CC: ; 0x0224D6CC
	push {r4, lr}
	add r4, r1, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _0224D708
	ldr r0, [r4, #4]
	ldr r1, _0224D70C ; =0x00000171
	ldr r2, [r0, #0]
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0224D6E8
	ldrb r1, [r4, #0x12]
	cmp r1, #1
	bne _0224D6F6
_0224D6E8:
	add r1, r4, #0
	add r1, #8
	bl ov17_0224B20C
	mov r0, #0
	strb r0, [r4, #0x13]
	pop {r4, pc}
_0224D6F6:
	add r1, r4, #0
	mov r0, #0x19
	add r1, #8
	bl sub_020360D0
	cmp r0, #1
	bne _0224D708
	mov r0, #0
	strb r0, [r4, #0x13]
_0224D708:
	pop {r4, pc}
	nop
_0224D70C: .word 0x00000171
	thumb_func_end ov17_0224D6CC

	thumb_func_start ov17_0224D710
ov17_0224D710: ; 0x0224D710
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r1, #0
	ldr r3, [r4, #0]
	str r0, [sp, #0x1c]
	ldr r1, [r3, #0]
	ldr r0, _0224DA50 ; =0x00000123
	ldrb r1, [r1, r0]
	ldrb r0, [r4, #0x18]
	cmp r1, r0
	beq _0224D72A
	mov r7, #1
	b _0224D72C
_0224D72A:
	mov r7, #0
_0224D72C:
	ldr r0, _0224DA54 ; =0x00001154
	ldr r2, [r4, #0x24]
	ldr r1, [r3, r0]
	add r0, #8
	ldr r0, [r3, r0]
	sub r0, r1, r0
	lsr r1, r2, #1
	str r0, [sp, #0x24]
	cmp r0, r1
	blo _0224D746
	mov r0, #1
	str r0, [sp, #0x20]
	b _0224D74A
_0224D746:
	mov r0, #0
	str r0, [sp, #0x20]
_0224D74A:
	ldrb r0, [r4, #0x10]
	cmp r0, #3
	bls _0224D752
	b _0224DBD0
_0224D752:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224D75E: ; jump table
	.short _0224D766 - _0224D75E - 2 ; case 0
	.short _0224D7E0 - _0224D75E - 2 ; case 1
	.short _0224D84C - _0224D75E - 2 ; case 2
	.short _0224DB4E - _0224D75E - 2 ; case 3
_0224D766:
	add r3, #0x14
	add r0, r3, #0
	mov r1, #0
	bl ov17_0224B068
	ldr r0, [r4, #0]
	bl ov17_0224BC4C
	add r3, r4, #0
	ldrb r2, [r4, #0x18]
	mov r1, #0x3c
	add r3, #0x5c
	mul r1, r2
	add r1, r3, r1
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x20]
	bl ov17_0224E990
	mov r0, #0x21
	ldr r2, [r4, #0]
	ldr r1, _0224DA58 ; =0x00000B1B
	lsl r0, r0, #4
	ldrb r1, [r2, r1]
	ldr r0, [r2, r0]
	bl ov17_0224C54C
	ldr r1, [r4, #0]
	ldr r0, _0224DA5C ; =0x000009B4
	add r0, r1, r0
	mov r1, #1
	bl ov17_0224C47C
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov17_0224C864
	ldr r0, [r4, #0]
	bl ov17_0224C9A4
	add r0, r4, #0
	add r0, #0x41
	ldrb r1, [r0]
	add r0, sp, #0x30
	cmp r7, #0
	strb r1, [r0, #4]
	ldr r0, [r4, #0]
	add r2, sp, #0x30
	bne _0224D7D0
	mov r1, #4
	bl ov17_0224C5A0
	b _0224D7D6
_0224D7D0:
	mov r1, #5
	bl ov17_0224C5A0
_0224D7D6:
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224D7E0:
	ldrb r2, [r4, #0x19]
	add r1, r4, #0
	add r0, r3, #0
	add r1, #0x3c
	bl ov17_0224C6A8
	mov r3, #0
	mov r2, #0
	sub r0, r2, r0
	sbc r3, r1
	bge _0224D7F8
	b _0224DBFE
_0224D7F8:
	ldr r0, [r4, #0]
	bl ov17_0224C640
	ldr r5, [r4, #0]
	add r1, r4, #0
	ldrb r2, [r4, #0x19]
	add r0, r5, #0
	add r1, #0x3c
	bl ov17_0224C6A8
	ldr r2, _0224DA54 ; =0x00001154
	add r6, r0, #0
	add r0, r1, #0
	add r1, r2, #4
	ldr r3, [r5, r2]
	ldr r1, [r5, r1]
	add r3, r3, r6
	adc r1, r0
	add r0, r2, #0
	add r0, #8
	add r2, #0xc
	str r3, [r5, r0]
	str r1, [r5, r2]
	cmp r7, #0
	bne _0224D838
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov17_0224C9F0
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
_0224D838:
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0]
	mov r2, #0
	bl ov17_0224CDC0
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224D84C:
	ldr r5, _0224DA58 ; =0x00000B1B
	add r0, r3, #0
	ldrb r3, [r3, r5]
	ldr r1, [sp, #0x24]
	add r0, #0x14
	bl ov17_0224A368
	mov r0, #0x21
	ldr r3, [r4, #0]
	ldr r1, _0224DA54 ; =0x00001154
	lsl r0, r0, #4
	ldr r2, [r3, r1]
	add r1, #8
	ldr r1, [r3, r1]
	ldr r0, [r3, r0]
	sub r1, r2, r1
	ldrb r3, [r3, r5]
	ldr r2, [r4, #0x24]
	bl ov17_0224C49C
	ldr r3, [r4, #0]
	ldr r1, _0224DA54 ; =0x00001154
	ldr r0, _0224DA5C ; =0x000009B4
	ldr r2, [r3, r1]
	add r1, #8
	ldr r1, [r3, r1]
	add r0, r3, r0
	sub r1, r2, r1
	ldrb r3, [r3, r5]
	ldr r2, [r4, #0x24]
	bl ov17_0224C434
	ldr r5, [r4, #0x24]
	ldr r0, [sp, #0x24]
	cmp r0, r5
	blo _0224D954
	ldrb r0, [r4, #0x16]
	ldr r1, _0224DA54 ; =0x00001154
	add r0, r0, #1
	strb r0, [r4, #0x16]
	ldr r5, [r4, #0]
	add r0, r5, r1
	ldmia r0!, {r2, r3}
	add r1, #8
	add r0, r5, r1
	stmia r0!, {r2, r3}
	mov r0, #0
	strb r0, [r4, #0x11]
	strb r0, [r4, #0x12]
	ldr r0, [r4, #0]
	bl ov17_0224DF54
	mov r0, #0
	strb r0, [r4, #0x17]
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _0224DA60 ; =0x00000127
	ldrb r6, [r1, r0]
	cmp r6, #4
	bge _0224D8DC
	add r1, r4, #0
	mov r0, #0x3c
	add r1, #0x5c
	mul r0, r6
	add r5, r1, r0
_0224D8CE:
	add r0, r5, #0
	bl ov17_0224E958
	add r6, r6, #1
	add r5, #0x3c
	cmp r6, #4
	blt _0224D8CE
_0224D8DC:
	ldr r0, [r4, #0]
	add r0, #0x14
	bl ov17_0224A580
	ldr r0, [r4, #0]
	bl ov17_0224BC4C
	add r3, r4, #0
	ldrb r2, [r4, #0x18]
	mov r1, #0x3c
	add r3, #0x5c
	mul r1, r2
	add r1, r3, r1
	ldr r0, [r4, #0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x20]
	bl ov17_0224E990
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov17_0224C864
	add r0, r4, #0
	add r0, #0x40
	ldrb r1, [r4, #0x16]
	ldrb r0, [r0]
	cmp r1, r0
	ldr r0, [r4, #0]
	blo _0224D92E
	bl ov17_0224CE08
	ldr r0, [r4, #0]
	mov r1, #2
	add r0, #0x14
	bl ov17_0224B068
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224D92E:
	ldrb r1, [r4, #0x18]
	mov r2, #0
	bl ov17_0224CDC0
	cmp r7, #0
	bne _0224D940
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _0224D942
_0224D940:
	b _0224DBFE
_0224D942:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov17_0224C9F0
	ldrb r0, [r4, #0x11]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x11]
	pop {r3, r4, r5, r6, r7, pc}
_0224D954:
	ldr r1, [r4, #0]
	ldr r0, _0224DA64 ; =0x00000AE8
	ldrb r6, [r1, r0]
	ldr r0, [sp, #0x24]
	lsr r1, r5, #1
	cmp r0, r1
	blo _0224D966
	mov r0, #1
	b _0224D968
_0224D966:
	mov r0, #0
_0224D968:
	cmp r7, #0
	bne _0224DA0A
	cmp r0, #0
	bne _0224D9A0
	add r0, r4, #0
	add r0, #0x41
	ldrb r1, [r4, #0x17]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0224D9A0
	ldr r0, [r4, #0x20]
	ldr r1, _0224DA68 ; =0x00002710
	lsr r0, r0, #2
	bl _u32_div_f
	lsr r1, r5, #1
	sub r1, r1, r0
	ldr r0, [sp, #0x24]
	cmp r0, r1
	bhs _0224D9A0
	add r0, r4, #0
	mov r2, #0
	add r0, #0x54
	add r1, sp, #0x38
	add r3, r2, #0
	bl ov17_0224DC1C
	b _0224D9AE
_0224D9A0:
	add r0, r4, #0
	mov r2, #1
	add r0, #0x54
	add r1, sp, #0x38
	add r3, r2, #0
	bl ov17_0224DC1C
_0224D9AE:
	mov r0, #0
	ldr r1, [sp, #0x38]
	mvn r0, r0
	cmp r1, r0
	bne _0224D9BA
	b _0224DAD4
_0224D9BA:
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x44
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r2, [r4, #0x17]
	str r2, [sp, #0x10]
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	str r2, [sp, #0x14]
	ldr r2, _0224DA58 ; =0x00000B1B
	ldrb r2, [r0, r2]
	str r2, [sp, #0x18]
	ldr r2, [r0, #0]
	ldr r0, _0224DA50 ; =0x00000123
	ldr r3, [r4, #0x20]
	ldrb r0, [r2, r0]
	ldr r2, [sp, #0x24]
	bl ov17_0224DE54
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _0224DA50 ; =0x00000123
	ldrb r1, [r1, r0]
	add r0, #0x29
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x3c
	bl ov17_0224D6B0
	ldrb r0, [r4, #0x17]
	add r0, r0, #1
	strb r0, [r4, #0x17]
	b _0224DAD4
_0224DA0A:
	cmp r0, #1
	bne _0224DA6C
	add r0, r4, #0
	add r0, #0x41
	ldrb r1, [r4, #0x17]
	ldrb r0, [r0]
	cmp r1, r0
	bhs _0224DA6C
	ldr r0, [r4, #0x20]
	ldr r1, _0224DA68 ; =0x00002710
	lsr r0, r0, #2
	bl _u32_div_f
	sub r1, r5, r0
	ldr r0, [sp, #0x24]
	cmp r0, r1
	bhs _0224DA6C
	add r0, r4, #0
	mov r2, #0
	add r0, #0x54
	add r1, sp, #0x38
	add r3, r2, #0
	bl ov17_0224DC1C
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0224DA7A
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov17_0224C9F0
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	b _0224DA7A
	; .align 2, 0
_0224DA50: .word 0x00000123
_0224DA54: .word 0x00001154
_0224DA58: .word 0x00000B1B
_0224DA5C: .word 0x000009B4
_0224DA60: .word 0x00000127
_0224DA64: .word 0x00000AE8
_0224DA68: .word 0x00002710
_0224DA6C:
	add r0, r4, #0
	mov r2, #1
	add r0, #0x54
	add r1, sp, #0x38
	add r3, r2, #0
	bl ov17_0224DC1C
_0224DA7A:
	mov r0, #0
	ldr r1, [sp, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _0224DAD4
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r2, #0x44
	str r2, [sp]
	add r2, sp, #0x3c
	str r2, [sp, #4]
	ldr r2, _0224DC04 ; =0x00001BB4
	add r2, r0, r2
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r2, [r4, #0x17]
	str r2, [sp, #0x10]
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	str r2, [sp, #0x14]
	ldr r2, _0224DC08 ; =0x00000B1B
	ldrb r2, [r0, r2]
	str r2, [sp, #0x18]
	ldr r2, [r0, #0]
	ldr r0, _0224DC0C ; =0x00000123
	ldr r3, [r4, #0x20]
	ldrb r0, [r2, r0]
	ldr r2, [sp, #0x24]
	bl ov17_0224DE54
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _0224DC0C ; =0x00000123
	ldrb r1, [r1, r0]
	add r0, #0x29
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, sp, #0x3c
	bl ov17_0224D6B0
	ldrb r0, [r4, #0x17]
	add r0, r0, #1
	strb r0, [r4, #0x17]
_0224DAD4:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0]
	ldr r0, _0224DC10 ; =0x00000127
	ldrb r7, [r1, r0]
	cmp r7, #4
	bge _0224DB20
	lsl r0, r7, #2
	add r5, r4, r0
	add r1, r4, #0
	mov r0, #0x3c
	add r1, #0x5c
	mul r0, r7
	add r6, r1, r0
	add r0, r4, #0
	str r0, [sp, #0x2c]
	add r0, #0x3c
	str r0, [sp, #0x2c]
_0224DAF6:
	ldr r0, [r4, #0x24]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	ldr r0, [r4, #0x20]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #0]
	bl ov17_0224ED8C
	add r7, r7, #1
	add r5, r5, #4
	add r6, #0x3c
	cmp r7, #4
	blt _0224DAF6
_0224DB20:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0224DB3C
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _0224DB3C
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #0]
	mov r2, #1
	bl ov17_0224CDC0
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0224DB3C:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0224DBFE
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x24]
	bl ov17_0224C8E8
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_0224DB4E:
	add r0, r4, #0
	add r0, #0x54
	add r1, sp, #0x38
	mov r2, #1
	mov r3, #0
	bl ov17_0224DC1C
	cmp r0, #1
	bne _0224DBFE
	ldr r0, [r4, #0]
	add r0, #0x14
	bl ov17_0224A580
	ldr r5, [r4, #0]
	ldr r3, _0224DC08 ; =0x00000B1B
	add r0, r5, #0
	ldrb r3, [r5, r3]
	ldr r2, [r4, #0x24]
	add r0, #0x14
	mov r1, #0
	bl ov17_0224A368
	mov r0, #0x21
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov17_0224C540
	ldr r1, [r4, #0]
	ldr r0, _0224DC14 ; =0x000009B4
	add r0, r1, r0
	mov r1, #0
	bl ov17_0224C47C
	ldr r0, [r4, #0]
	mov r1, #2
	add r0, #0x14
	bl ov17_0224B068
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov17_0224C864
	ldr r0, [r4, #0]
	bl ov17_0224C9D4
	ldr r1, [r4, #0]
	ldr r0, _0224DC18 ; =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249814
	cmp r0, #0
	beq _0224DBC6
	ldr r1, [r4, #0]
	ldr r0, _0224DC18 ; =0x0000114C
	mov r2, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov17_0224A0E0
_0224DBC6:
	ldrb r0, [r4, #0x10]
	add sp, #0x48
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224DBD0:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	mov r7, #0x53
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_0224DBE4:
	ldr r0, [r5, r7]
	bl ov17_0224D69C
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0224DBE4
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #0x1c]
	bl sub_0200DA58
_0224DBFE:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DC04: .word 0x00001BB4
_0224DC08: .word 0x00000B1B
_0224DC0C: .word 0x00000123
_0224DC10: .word 0x00000127
_0224DC14: .word 0x000009B4
_0224DC18: .word 0x0000114C
	thumb_func_end ov17_0224D710

	thumb_func_start ov17_0224DC1C
ov17_0224DC1C: ; 0x0224DC1C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r1, #0
	sub r0, r4, #1
	add r6, r2, #0
	str r3, [sp]
	str r0, [r7, #0]
	cmp r6, #0
	bne _0224DC4E
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224DC4E
	sub r0, r0, #1
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _0224DC4E
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	add r2, r4, #0
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ov17_0224A0E0
_0224DC4E:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0224DC5E
	cmp r0, #1
	beq _0224DC84
	cmp r0, #2
	beq _0224DCC6
	b _0224DCEC
_0224DC5E:
	cmp r6, #0
	bne _0224DC80
	ldr r0, [sp]
	cmp r0, #0
	bne _0224DC80
	mov r1, #0
	strb r1, [r5, #5]
	ldr r2, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	ldr r0, [r2, r0]
	add r2, r1, #0
	bl ov17_0224A0E0
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	b _0224DCEC
_0224DC80:
	mov r4, #1
	b _0224DCEC
_0224DC84:
	cmp r6, #1
	beq _0224DC8E
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224DC92
_0224DC8E:
	mov r4, #1
	b _0224DCEC
_0224DC92:
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249760
	mov r1, #0
	mvn r1, r1
	str r0, [r7, #0]
	cmp r0, r1
	beq _0224DCC2
	ldr r1, [r5, #0]
	ldr r0, _0224DD20 ; =0x00000B04
	ldr r0, [r1, r0]
	ldr r1, _0224DD24 ; =0x00002710
	bl _u32_div_f
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	sub r0, r0, #2
	strb r0, [r5, #5]
	ldrb r0, [r5, #4]
	add r0, r0, #1
	strb r0, [r5, #4]
	b _0224DCEC
_0224DCC2:
	mov r4, #1
	b _0224DCEC
_0224DCC6:
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249804
	cmp r0, #1
	bne _0224DCEC
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224DCE8
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	mov r2, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov17_0224A0E0
_0224DCE8:
	mov r0, #1
	strb r0, [r5, #4]
_0224DCEC:
	ldr r0, [sp]
	cmp r0, #1
	bne _0224DD16
	cmp r4, #1
	bne _0224DD16
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	ldr r0, [r1, r0]
	bl ov17_02249814
	cmp r0, #0
	beq _0224DD16
	ldr r1, [r5, #0]
	ldr r0, _0224DD1C ; =0x0000114C
	mov r2, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov17_0224A0E0
	mov r0, #0
	strb r0, [r5, #4]
_0224DD16:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DD1C: .word 0x0000114C
_0224DD20: .word 0x00000B04
_0224DD24: .word 0x00002710
	thumb_func_end ov17_0224DC1C

	thumb_func_start ov17_0224DD28
ov17_0224DD28: ; 0x0224DD28
	push {r3, lr}
	cmp r0, #3
	bhi _0224DD52
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224DD3A: ; jump table
	.short _0224DD42 - _0224DD3A - 2 ; case 0
	.short _0224DD46 - _0224DD3A - 2 ; case 1
	.short _0224DD4A - _0224DD3A - 2 ; case 2
	.short _0224DD4E - _0224DD3A - 2 ; case 3
_0224DD42:
	mov r0, #1
	pop {r3, pc}
_0224DD46:
	mov r0, #2
	pop {r3, pc}
_0224DD4A:
	mov r0, #3
	pop {r3, pc}
_0224DD4E:
	mov r0, #4
	pop {r3, pc}
_0224DD52:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224DD28

	thumb_func_start ov17_0224DD5C
ov17_0224DD5C: ; 0x0224DD5C
	push {r3, lr}
	cmp r0, #4
	bhi _0224DD88
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224DD6E: ; jump table
	.short _0224DD88 - _0224DD6E - 2 ; case 0
	.short _0224DD78 - _0224DD6E - 2 ; case 1
	.short _0224DD7C - _0224DD6E - 2 ; case 2
	.short _0224DD80 - _0224DD6E - 2 ; case 3
	.short _0224DD84 - _0224DD6E - 2 ; case 4
_0224DD78:
	mov r0, #0
	pop {r3, pc}
_0224DD7C:
	mov r0, #1
	pop {r3, pc}
_0224DD80:
	mov r0, #2
	pop {r3, pc}
_0224DD84:
	mov r0, #3
	pop {r3, pc}
_0224DD88:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov17_0224DD5C

	thumb_func_start ov17_0224DD90
ov17_0224DD90: ; 0x0224DD90
	push {r3, r4}
	ldrb r4, [r1]
	cmp r0, r4
	bgt _0224DDA2
	mov r0, #0
	strb r0, [r2]
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDA2:
	ldrb r4, [r1, #1]
	cmp r0, r4
	bgt _0224DDB4
	mov r0, #0
	strb r0, [r2]
	mov r0, #1
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDB4:
	ldrb r4, [r1, #2]
	cmp r0, r4
	bgt _0224DDC6
	mov r0, #1
	strb r0, [r2]
	mov r0, #2
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDC6:
	ldrb r1, [r1, #3]
	cmp r0, r1
	bgt _0224DDD8
	mov r0, #1
	strb r0, [r2]
	mov r0, #3
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_0224DDD8:
	mov r0, #2
	strb r0, [r2]
	mov r0, #4
	strb r0, [r3]
	pop {r3, r4}
	bx lr
	thumb_func_end ov17_0224DD90

	thumb_func_start ov17_0224DDE4
ov17_0224DDE4: ; 0x0224DDE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r6, r0, #0
	mov r0, #0
	ldr r2, _0224DE4C ; =0x00002710
	str r3, [sp]
	mul r6, r2
	lsr r1, r1, #1
	add r5, r0, #0
	add r4, r0, #0
	cmp r6, #0
	bls _0224DE0A
	bls _0224DE08
_0224DE00:
	add r4, r4, r1
	add r5, r5, #1
	cmp r4, r6
	blo _0224DE00
_0224DE08:
	sub r0, r4, r1
_0224DE0A:
	ldr r1, _0224DE50 ; =0x00001388
	add r0, r0, r1
	lsl r1, r1, #1
	bl _u32_div_f
	ldr r1, _0224DE50 ; =0x00001388
	str r0, [sp, #4]
	add r0, r4, r1
	lsl r1, r1, #1
	bl _u32_div_f
	add r4, r0, #0
	ldr r1, _0224DE4C ; =0x00002710
	add r0, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #4]
	sub r1, r0, r1
	bpl _0224DE32
	neg r1, r1
_0224DE32:
	sub r0, r0, r4
	bpl _0224DE38
	neg r0, r0
_0224DE38:
	cmp r1, r0
	bhi _0224DE40
	sub r5, r5, #1
	b _0224DE42
_0224DE40:
	add r1, r0, #0
_0224DE42:
	ldr r0, [sp]
	str r1, [r7, #0]
	str r5, [r0, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DE4C: .word 0x00002710
_0224DE50: .word 0x00001388
	thumb_func_end ov17_0224DDE4

	thumb_func_start ov17_0224DE54
ov17_0224DE54: ; 0x0224DE54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r0, r1, #0
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x38]
	mov r7, #0
	bl ov17_0224DD28
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl ov17_0224DDE4
	cmp r6, #0
	beq _0224DEB6
	ldr r0, [sp, #0x48]
	mov r1, #4
	bl ov17_0223F0BC
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	ldr r2, [sp, #0x14]
	add r4, r7, #0
	sub r0, r2, r0
	add r1, r6, #0
	add r2, r6, #0
_0224DE94:
	ldrb r3, [r1, #8]
	lsl r3, r3, #0x1d
	lsr r3, r3, #0x1f
	cmp r3, #1
	bne _0224DEA4
	ldrb r3, [r2, #6]
	cmp r0, r3
	beq _0224DEAE
_0224DEA4:
	add r4, r4, #1
	add r1, #0xa
	add r2, #0xa
	cmp r4, #8
	blo _0224DE94
_0224DEAE:
	cmp r4, #8
	bne _0224DEB6
	mov r0, #0xff
	str r0, [sp, #0x18]
_0224DEB6:
	add r2, sp, #0x10
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x30]
	add r2, #1
	add r3, sp, #0x10
	bl ov17_0224DD90
	cmp r6, #0
	beq _0224DEF6
	cmp r4, #8
	beq _0224DEF6
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0224DED8
	cmp r0, #1
	bne _0224DEF6
_0224DED8:
	mov r0, #0xa
	mul r0, r4
	add r0, r6, r0
	ldrb r1, [r0, #3]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	beq _0224DEF6
	mov r0, #0xff
	str r0, [sp, #0x18]
	mov r1, #4
	add r0, sp, #0x10
	strb r1, [r0]
	mov r1, #2
	strb r1, [r0, #1]
	mov r7, #1
_0224DEF6:
	ldr r0, [sp]
	strb r0, [r5, #2]
	ldr r0, [sp, #4]
	strh r0, [r5]
	ldr r0, [sp, #0xc]
	strb r0, [r5, #3]
	add r0, sp, #0x10
	ldrb r1, [r0, #1]
	strb r1, [r5, #4]
	ldrb r0, [r0]
	ldr r1, [sp, #0x40]
	strb r0, [r5, #5]
	ldr r0, [sp, #0x14]
	strb r0, [r5, #6]
	ldr r0, [sp, #0x3c]
	strb r0, [r5, #7]
	ldr r0, [sp, #0x44]
	sub r0, r0, #1
	cmp r1, r0
	blt _0224DF22
	mov r1, #1
	b _0224DF24
_0224DF22:
	mov r1, #0
_0224DF24:
	ldrb r2, [r5, #8]
	mov r0, #1
	bic r2, r0
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	mov r0, #1
	and r0, r1
	orr r0, r2
	strb r0, [r5, #8]
	ldrb r1, [r5, #8]
	mov r0, #2
	bic r1, r0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1e
	orr r0, r1
	strb r0, [r5, #8]
	ldrb r1, [r5, #8]
	mov r0, #4
	orr r0, r1
	strb r0, [r5, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224DE54

	thumb_func_start ov17_0224DF54
ov17_0224DF54: ; 0x0224DF54
	push {r4, r5}
	ldr r1, _0224DF7C ; =0x00000AD9
	mov r5, #0
	add r3, r5, #0
	add r2, r1, #4
_0224DF5E:
	add r4, r0, r5
	strb r3, [r4, r1]
	add r5, r5, #1
	strb r3, [r4, r2]
	cmp r5, #4
	blt _0224DF5E
	ldr r1, _0224DF80 ; =0x00000AE1
	strb r3, [r0, r1]
	add r2, r1, #1
	strb r3, [r0, r2]
	add r1, r1, #2
	strb r3, [r0, r1]
	pop {r4, r5}
	bx lr
	nop
_0224DF7C: .word 0x00000AD9
_0224DF80: .word 0x00000AE1
	thumb_func_end ov17_0224DF54

	thumb_func_start ov17_0224DF84
ov17_0224DF84: ; 0x0224DF84
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224DF84

	thumb_func_start ov17_0224DF88
ov17_0224DF88: ; 0x0224DF88
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224DF88

	thumb_func_start ov17_0224DF9C
ov17_0224DF9C: ; 0x0224DF9C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x17
	str r1, [sp]
	add r1, r0, #0
	add r1, #0xed
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r2, #0x41
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	add r3, r4, #0
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r3, #0xc8
	mov r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224DFD8:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224DFD8
	ldr r0, [r6, #0]
	ldr r2, _0224DFF0 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224DFF4 ; =ov17_0224DFF8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DFF0: .word 0x00007530
_0224DFF4: .word ov17_0224DFF8
	thumb_func_end ov17_0224DF9C

	thumb_func_start ov17_0224DFF8
ov17_0224DFF8: ; 0x0224DFF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #5
	bls _0224E008
	b _0224E1B8
_0224E008:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224E014: ; jump table
	.short _0224E020 - _0224E014 - 2 ; case 0
	.short _0224E070 - _0224E014 - 2 ; case 1
	.short _0224E09E - _0224E014 - 2 ; case 2
	.short _0224E152 - _0224E014 - 2 ; case 3
	.short _0224E174 - _0224E014 - 2 ; case 4
	.short _0224E198 - _0224E014 - 2 ; case 5
_0224E020:
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov17_0224CDB4
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r2, _0224E1D4 ; =0x00001FE3
	sub r3, r1, #3
	bl sub_02003178
	add r6, r4, #0
	mov r5, #0
	mov r7, #0x10
	add r6, #0x11
_0224E04A:
	str r7, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r6, r5
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r2, _0224E1D8 ; =0x00007FFF
	ldr r3, _0224E1DC ; =0x0000254A
	add r1, r5, #0
	bl ov17_0224CEE4
	add r5, r5, #1
	cmp r5, #4
	blt _0224E04A
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E070:
	ldr r0, [r4, #0]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _0224E092
	mov r1, #0
_0224E080:
	add r0, r4, r1
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	beq _0224E08E
	add r1, r1, #1
	cmp r1, #4
	blt _0224E080
_0224E08E:
	cmp r1, #4
	beq _0224E094
_0224E092:
	b _0224E1D0
_0224E094:
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E09E:
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x18
	mov r6, #0
	str r0, [sp, #0xc]
_0224E0A8:
	add r0, r4, r6
	add r0, #0xca
	ldrb r1, [r0]
	mov r2, #0x2c
	add r7, r1, #0
	mul r7, r2
	ldr r2, [r4, #0]
	lsl r0, r1, #2
	ldr r2, [r2, #0x14]
	add r5, r4, r7
	ldr r2, [r2, r0]
	str r2, [r5, #0x18]
	ldr r2, [r4, #0]
	add r0, r2, r0
	ldr r0, [r0, #0x5c]
	str r0, [r5, #0x1c]
	ldr r2, [r4, #0]
	lsl r0, r1, #4
	add r2, #0x18
	add r0, r2, r0
	str r0, [r5, #0x20]
	mov r0, #0xb1
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, _0224E1E0 ; =0x00002710
	bl _u32_div_f
	mov r1, #0x28
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x64
	bl _u32_div_f
	strh r0, [r5, #0x26]
	add r0, r5, #0
	add r0, #0x24
	strb r6, [r0]
	cmp r6, #0
	bne _0224E0FE
	add r5, #0x25
	mov r0, #3
	b _0224E102
_0224E0FE:
	sub r0, r6, #1
	add r5, #0x25
_0224E102:
	ldr r1, [sp, #0xc]
	strb r0, [r5]
	ldr r0, _0224E1E4 ; =ov17_0224E1F4
	ldr r2, _0224E1E8 ; =0x00009CA4
	add r1, r1, r7
	bl sub_0200D9E8
	add r6, r6, #1
	cmp r6, #4
	blt _0224E0A8
	add r0, r4, #0
	add r0, #0xf1
	ldrb r1, [r0]
	add r0, sp, #0x10
	strb r1, [r0, #4]
	ldr r0, [r4, #0]
	add r1, r4, #0
	add r1, #0xcb
	ldrb r3, [r1]
	ldr r2, [r0, #0]
	ldr r1, _0224E1EC ; =0x00000123
	ldrb r1, [r2, r1]
	cmp r3, r1
	add r2, sp, #0x10
	bne _0224E13C
	mov r1, #4
	bl ov17_0224C5A0
	b _0224E142
_0224E13C:
	mov r1, #5
	bl ov17_0224C5A0
_0224E142:
	ldr r0, _0224E1F0 ; =0x000006F7
	bl sub_02005748
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E152:
	mov r2, #0
_0224E154:
	add r0, r1, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224E166
	add r2, r2, #1
	add r1, #0x2c
	cmp r2, #4
	blt _0224E154
_0224E166:
	cmp r2, #4
	bne _0224E1D0
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E174:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r2, _0224E1D4 ; =0x00001FE3
	sub r3, r1, #3
	bl sub_02003178
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E198:
	ldr r0, [r4, #0]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _0224E1D0
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov17_0224CDB4
	ldrb r0, [r4, #0x10]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E1B8:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224E1D0:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E1D4: .word 0x00001FE3
_0224E1D8: .word 0x00007FFF
_0224E1DC: .word 0x0000254A
_0224E1E0: .word 0x00002710
_0224E1E4: .word ov17_0224E1F4
_0224E1E8: .word 0x00009CA4
_0224E1EC: .word 0x00000123
_0224E1F0: .word 0x000006F7
	thumb_func_end ov17_0224DFF8

	thumb_func_start ov17_0224E1F4
ov17_0224E1F4: ; 0x0224E1F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, #0x2a
	ldrb r1, [r1]
	cmp r1, #0
	beq _0224E208
	cmp r1, #1
	beq _0224E2C4
	b _0224E426
_0224E208:
	ldr r0, [r5, #8]
	ldr r0, [r0, #4]
	lsl r0, r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	lsl r0, r0, #8
	str r0, [r5, #0x14]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0xc]
	lsl r0, r0, #8
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0xc]
	bl ov17_0224A0FC
	lsl r4, r0, #8
	ldrb r0, [r5, #0xc]
	bl ov17_0224A10C
	lsl r0, r0, #8
	str r0, [sp, #8]
	ldrb r0, [r5, #0xc]
	bl ov17_0224A120
	lsl r0, r0, #8
	str r0, [sp, #4]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0224E246
	cmp r0, #3
	bne _0224E278
_0224E246:
	cmp r0, #0
	bne _0224E24E
	ldr r0, _0224E434 ; =0xFFFFB000
	b _0224E252
_0224E24E:
	mov r0, #0x59
	lsl r0, r0, #0xa
_0224E252:
	ldrh r1, [r5, #0xe]
	sub r0, r0, r4
	lsr r1, r1, #1
	bl _s32_div_f
	str r0, [r5, #0x1c]
	ldrh r1, [r5, #0xe]
	mov r0, #0
	lsr r1, r1, #1
	bl _s32_div_f
	str r0, [r5, #0x20]
	ldrh r1, [r5, #0xe]
	mov r0, #0
	lsr r1, r1, #1
	bl _s32_div_f
	str r0, [r5, #0x24]
	b _0224E2B4
_0224E278:
	bl ov17_0224A0FC
	lsl r6, r0, #8
	ldrb r0, [r5, #0xd]
	bl ov17_0224A10C
	lsl r0, r0, #8
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A120
	lsl r7, r0, #8
	ldrh r1, [r5, #0xe]
	sub r0, r6, r4
	bl _s32_div_f
	str r0, [r5, #0x1c]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	ldrh r1, [r5, #0xe]
	bl _s32_div_f
	str r0, [r5, #0x20]
	ldr r0, [sp, #4]
	ldrh r1, [r5, #0xe]
	sub r0, r7, r0
	bl _s32_div_f
	str r0, [r5, #0x24]
_0224E2B4:
	add r0, r5, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r5, #0x2a
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0224E2C4:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x1c]
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x20]
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x24]
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldrh r0, [r5, #0x28]
	add r0, r0, #1
	strh r0, [r5, #0x28]
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _0224E2EC
	cmp r0, #3
	bne _0224E38E
_0224E2EC:
	ldrh r1, [r5, #0xe]
	ldrh r2, [r5, #0x28]
	lsr r1, r1, #1
	cmp r2, r1
	bne _0224E3A4
	cmp r0, #0
	bne _0224E314
	ldr r0, _0224E438 ; =0xFFFF9C00
	mov r1, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0]
	bl ov22_0225B07C
	ldr r0, [r5, #8]
	mov r1, #0x64
	ldr r0, [r0, #0]
	bl ov22_0225B1AC
	b _0224E334
_0224E314:
	bl ov17_0224A0FC
	add r0, #0x50
	lsl r0, r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	mov r1, #0
	ldr r0, [r0, #0]
	bl ov22_0225B07C
	ldr r0, [r5, #8]
	mov r1, #0x63
	ldr r0, [r0, #0]
	mvn r1, r1
	bl ov22_0225B1AC
_0224E334:
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_020765B8
	add r4, r0, #0
	ldrb r0, [r5, #0xd]
	bl ov17_0224A10C
	add r0, r4, r0
	lsl r0, r0, #8
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A120
	lsl r0, r0, #8
	str r0, [r5, #0x18]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A0FC
	ldrh r2, [r5, #0xe]
	ldrh r1, [r5, #0x28]
	lsl r0, r0, #8
	ldr r7, [r5, #0x14]
	sub r1, r2, r1
	sub r4, r1, #1
	ldr r1, [r5, #0x10]
	ldr r6, [r5, #0x18]
	sub r0, r0, r1
	add r1, r4, #0
	bl _s32_div_f
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	sub r0, r7, r0
	bl _s32_div_f
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	sub r0, r6, r0
	bl _s32_div_f
	str r0, [r5, #0x24]
	b _0224E3A4
_0224E38E:
	bl ov17_0224A0FC
	ldr r1, [r5, #0x10]
	lsl r0, r0, #8
	cmp r1, r0
	bge _0224E3A4
	ldrb r0, [r5, #0xd]
	bl ov17_0224A0FC
	lsl r0, r0, #8
	str r0, [r5, #0x10]
_0224E3A4:
	ldrh r1, [r5, #0x28]
	ldrh r0, [r5, #0xe]
	cmp r1, r0
	blo _0224E3E4
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_020765B8
	add r4, r0, #0
	ldrb r0, [r5, #0xd]
	bl ov17_0224A0FC
	lsl r0, r0, #8
	str r0, [r5, #0x10]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A10C
	add r0, r4, r0
	lsl r0, r0, #8
	str r0, [r5, #0x14]
	ldrb r0, [r5, #0xd]
	bl ov17_0224A120
	lsl r0, r0, #8
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x2a
	strb r1, [r0]
_0224E3E4:
	ldr r1, [r5, #0x10]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r5, #8]
	str r1, [r0, #4]
	ldr r1, [r5, #0x14]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r5, #8]
	str r1, [r0, #8]
	ldr r1, [r5, #0x18]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	ldr r0, [r5, #8]
	str r1, [r0, #0xc]
	ldr r2, [r5, #8]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl ov22_0225B100
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	bl ov17_0224B09C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224E426:
	mov r1, #1
	add r5, #0x2b
	strb r1, [r5]
	bl sub_0200DA58
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E434: .word 0xFFFFB000
_0224E438: .word 0xFFFF9C00
	thumb_func_end ov17_0224E1F4

	thumb_func_start ov17_0224E43C
ov17_0224E43C: ; 0x0224E43C
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E43C

	thumb_func_start ov17_0224E450
ov17_0224E450: ; 0x0224E450
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x50
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x50
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	add r3, r4, #0
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r3, #0x10
	mov r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224E488:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224E488
	ldr r0, [r6, #0]
	ldr r2, _0224E4A0 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224E4A4 ; =ov17_0224E4A8
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E4A0: .word 0x00007530
_0224E4A4: .word ov17_0224E4A8
	thumb_func_end ov17_0224E450

	thumb_func_start ov17_0224E4A8
ov17_0224E4A8: ; 0x0224E4A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224E4F8
	mov r4, #0
_0224E4BA:
	add r1, r5, r4
	ldrb r1, [r1, #0x12]
	ldr r0, [r5, #0]
	add r2, r4, #0
	bl ov17_0224BC68
	add r4, r4, #1
	cmp r4, #4
	blt _0224E4BA
	ldr r1, [r5, #0]
	ldr r0, _0224E514 ; =0x0000114C
	mov r3, #0
	ldr r0, [r1, r0]
	mov r1, #1
	add r2, r1, #0
	bl ov17_02249640
	ldr r1, [r5, #0]
	ldr r0, _0224E514 ; =0x0000114C
	mov r2, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov17_0224A0E0
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	add r5, #0x4c
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_0224E4F8:
	mov r2, #0
	ldr r0, [r5, #0xc]
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_0224E514: .word 0x0000114C
	thumb_func_end ov17_0224E4A8

	thumb_func_start ov17_0224E518
ov17_0224E518: ; 0x0224E518
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E518

	thumb_func_start ov17_0224E52C
ov17_0224E52C: ; 0x0224E52C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x50
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x50
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	add r3, r4, #0
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r3, #0x10
	mov r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224E564:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224E564
	ldr r0, [r6, #0]
	ldr r2, _0224E57C ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224E580 ; =ov17_0224E584
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E57C: .word 0x00007530
_0224E580: .word ov17_0224E584
	thumb_func_end ov17_0224E52C

	thumb_func_start ov17_0224E584
ov17_0224E584: ; 0x0224E584
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224E59A
	cmp r0, #1
	beq _0224E5D2
	b _0224E60A
_0224E59A:
	ldr r0, [r5, #0]
	bl ov17_0224B5C8
	cmp r0, #0
	beq _0224E640
	mov r4, #0
	mov r6, #2
	mov r7, #5
_0224E5AA:
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl ov17_0224BD28
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r7, #0
	bl ov17_0224BD28
	add r4, r4, #1
	cmp r4, #4
	blt _0224E5AA
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	add r5, #0x4c
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224E5D2:
	mov r6, #0
	add r4, r6, #0
_0224E5D6:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov17_0224BDF0
	cmp r0, #1
	bne _0224E5E4
	add r6, r6, #1
_0224E5E4:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov17_0224BE24
	add r4, r4, #1
	cmp r4, #4
	blt _0224E5D6
	cmp r6, #4
	blt _0224E640
	ldr r0, [r5, #0]
	bl ov17_0224BD00
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	add r5, #0x4c
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224E60A:
	ldr r1, [r5, #0]
	ldr r0, _0224E644 ; =0x0000114C
	mov r2, #1
	ldr r0, [r1, r0]
	mov r1, #0
	add r3, r1, #0
	bl ov17_02249640
	ldr r1, [r5, #0]
	ldr r0, _0224E644 ; =0x0000114C
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	bl ov17_0224A0E0
	mov r2, #0
	ldr r0, [r5, #0xc]
	add r1, r5, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224E640:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E644: .word 0x0000114C
	thumb_func_end ov17_0224E584

	thumb_func_start ov17_0224E648
ov17_0224E648: ; 0x0224E648
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E648

	thumb_func_start ov17_0224E65C
ov17_0224E65C: ; 0x0224E65C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x20
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	ldr r2, _0224E6C0 ; =0x00007530
	str r0, [r4, #0]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r4, #4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #6]
	ldrh r0, [r6, #4]
	strh r0, [r4, #8]
	ldrh r0, [r6, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrb r0, [r5]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #0x30]
	strh r0, [r4, #0x14]
	ldrh r0, [r5, #0x32]
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x34]
	strh r0, [r4, #0x18]
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	add r5, #0x37
	strb r0, [r4, #0x1c]
	ldrb r0, [r5]
	strb r0, [r4, #0x1b]
	ldr r0, _0224E6C4 ; =ov17_0224E6C8
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E6C0: .word 0x00007530
_0224E6C4: .word ov17_0224E6C8
	thumb_func_end ov17_0224E65C

	thumb_func_start ov17_0224E6C8
ov17_0224E6C8: ; 0x0224E6C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0224E6DE
	cmp r0, #1
	beq _0224E716
	cmp r0, #2
	beq _0224E728
	b _0224E760
_0224E6DE:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _0224E710
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x78
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x74]
	bl sub_0201C3C0
	add r2, r4, #0
	ldrb r1, [r4, #0x1a]
	ldr r0, [r4, #0]
	add r2, #0x14
	bl ov17_0224C2CC
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E710:
	mov r0, #0x64
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E716:
	ldr r0, [r4, #0]
	bl ov17_0224C300
	cmp r0, #0
	bne _0224E778
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E728:
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _0224E73C
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E73C:
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x1b]
	cmp r1, r0
	blo _0224E778
	ldr r0, [r4, #0]
	mov r1, #1
	add r0, #0x78
	bl sub_0200E084
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x74]
	bl sub_0201C3C0
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0224E760:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224E778:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E6C8

	thumb_func_start ov17_0224E77C
ov17_0224E77C: ; 0x0224E77C
	push {r3, lr}
	mov r1, #0x30
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E77C

	thumb_func_start ov17_0224E790
ov17_0224E790: ; 0x0224E790
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _0224E7B0 ; =0x00000AEC
	mov r5, #6
	add r6, r1, r0
_0224E79A:
	ldmia r3!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r5, r5, #1
	bne _0224E79A
	add r1, r2, #0
	mov r2, #0
	add r0, r4, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224E7B0: .word 0x00000AEC
	thumb_func_end ov17_0224E790

	thumb_func_start ov17_0224E7B4
ov17_0224E7B4: ; 0x0224E7B4
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E7B4

	thumb_func_start ov17_0224E7C8
ov17_0224E7C8: ; 0x0224E7C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	bl sub_0200569C
	ldrh r0, [r4, #0x24]
	bl sub_0200549C
	ldr r0, _0224E7FC ; =0x00001150
	mov r1, #1
	strb r1, [r5, r0]
	add r1, r0, #4
	add r0, #0xc
	add r1, r5, r1
	ldmia r1!, {r2, r3}
	add r0, r5, r0
	stmia r0!, {r2, r3}
	mov r2, #0
	add r0, r6, #0
	add r1, r7, #0
	add r3, r2, #0
	bl ov17_0224F26C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E7FC: .word 0x00001150
	thumb_func_end ov17_0224E7C8

	thumb_func_start ov17_0224E800
ov17_0224E800: ; 0x0224E800
	push {r3, lr}
	mov r1, #0x3c
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r1, #0xff
	lsr r2, r2, #0x10
	bl ov17_0224F1F8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov17_0224E800

	thumb_func_start ov17_0224E814
ov17_0224E814: ; 0x0224E814
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0x17
	mov r1, #0x54
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x54
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	add r3, r4, #0
	str r0, [r4, #0]
	ldrh r0, [r5]
	add r3, #0x10
	mov r2, #7
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
	str r7, [r4, #0xc]
_0224E84C:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224E84C
	ldr r0, [r6, #0]
	ldr r2, _0224E864 ; =0x00007530
	str r0, [r3, #0]
	ldr r0, _0224E868 ; =ov17_0224E86C
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E864: .word 0x00007530
_0224E868: .word ov17_0224E86C
	thumb_func_end ov17_0224E814

	thumb_func_start ov17_0224E86C
ov17_0224E86C: ; 0x0224E86C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0224E90A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224E888: ; jump table
	.short _0224E892 - _0224E888 - 2 ; case 0
	.short _0224E8A8 - _0224E888 - 2 ; case 1
	.short _0224E8C0 - _0224E888 - 2 ; case 2
	.short _0224E8D4 - _0224E888 - 2 ; case 3
	.short _0224E8F0 - _0224E888 - 2 ; case 4
_0224E892:
	ldr r1, [r4, #0]
	ldr r0, _0224E924 ; =0x00001150
	mov r2, #0
	strb r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8A8:
	ldrh r0, [r4, #0x34]
	bl sub_02005690
	cmp r0, #0
	bne _0224E922
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8C0:
	ldr r0, [r4, #0]
	bl ov17_0224CE28
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8D4:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
	cmp r0, #0x3c
	bls _0224E922
	mov r0, #0
	str r0, [r4, #0x4c]
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E8F0:
	ldr r0, _0224E928 ; =0x0000046F
	bl sub_0200549C
	ldr r0, _0224E92C ; =0x000006E5
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0224E90A:
	mov r2, #0
	ldr r0, [r4, #0xc]
	add r1, r4, #4
	add r3, r2, #0
	bl ov17_0224F26C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0224E922:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E924: .word 0x00001150
_0224E928: .word 0x0000046F
_0224E92C: .word 0x000006E5
	thumb_func_end ov17_0224E86C

	.rodata


	.global Unk_ov17_022549C4
Unk_ov17_022549C4: ; 0x022549C4
	.incbin "incbin/overlay17_rodata.bin", 0x1C38, 0x1C40 - 0x1C38

	.global Unk_ov17_022549CC
Unk_ov17_022549CC: ; 0x022549CC
	.incbin "incbin/overlay17_rodata.bin", 0x1C40, 0x1C58 - 0x1C40

	.global Unk_ov17_022549E4
Unk_ov17_022549E4: ; 0x022549E4
	.incbin "incbin/overlay17_rodata.bin", 0x1C58, 0x9C

