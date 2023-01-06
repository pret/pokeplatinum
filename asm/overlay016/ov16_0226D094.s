	.include "macros/function.inc"
	.include "overlay016/ov16_0226D094.inc"

	

	.text


	thumb_func_start ov16_0226D094
ov16_0226D094: ; 0x0226D094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x1b
	mov r1, #5
	add r7, r2, #0
	bl sub_02006C24
	add r6, r0, #0
	str r6, [sp]
	mov r0, #0x6e
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0226D114 ; =0x00004E45
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0226D118 ; =0x00004FBD
	mov r3, #0x55
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	lsl r3, r3, #2
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0226D11C ; =0x00004FB7
	ldr r3, _0226D120 ; =0x00000155
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _0226D124 ; =0x00004FAC
	ldr r3, _0226D128 ; =0x00000156
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200CE54
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226D114: .word 0x00004E45
_0226D118: .word 0x00004FBD
_0226D11C: .word 0x00004FB7
_0226D120: .word 0x00000155
_0226D124: .word 0x00004FAC
_0226D128: .word 0x00000156
	thumb_func_end ov16_0226D094

	thumb_func_start ov16_0226D12C
ov16_0226D12C: ; 0x0226D12C
	push {r4, lr}
	ldr r1, _0226D150 ; =0x00004FBD
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0226D154 ; =0x00004E45
	add r0, r4, #0
	bl sub_0200D080
	ldr r1, _0226D158 ; =0x00004FB7
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0226D15C ; =0x00004FAC
	add r0, r4, #0
	bl sub_0200D0A0
	pop {r4, pc}
	; .align 2, 0
_0226D150: .word 0x00004FBD
_0226D154: .word 0x00004E45
_0226D158: .word 0x00004FB7
_0226D15C: .word 0x00004FAC
	thumb_func_end ov16_0226D12C

	thumb_func_start ov16_0226D160
ov16_0226D160: ; 0x0226D160
	push {r4, lr}
	mov r0, #5
	lsl r1, r0, #6
	bl sub_02018144
	mov r2, #5
	mov r1, #0
	lsl r2, r2, #6
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0226D160

	thumb_func_start ov16_0226D17C
ov16_0226D17C: ; 0x0226D17C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0226D18A
	bl GF_AssertFail
_0226D18A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0226D17C

	thumb_func_start ov16_0226D194
ov16_0226D194: ; 0x0226D194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x38]
	add r6, r1, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	str r2, [sp, #0x18]
	str r0, [sp, #0x3c]
	str r3, [sp, #0x1c]
	bl ov16_0226D160
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x1c]
	str r1, [sp]
	ldr r3, [sp, #0x38]
	add r1, r6, #0
	add r7, r0, #0
	bl ov16_0226D2A0
	add r5, r7, #0
	mov r4, #0
	add r5, #0x1c
_0226D1C2:
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	ldrb r0, [r0, r4]
	bl ov16_0226DB04
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	mov r1, #0x4f
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	lsl r1, r1, #2
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r7, r1
	add r2, r6, #0
	bl ov16_0226D540
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #6
	blt _0226D1C2
	add r0, r7, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0226D194

	thumb_func_start ov16_0226D1FC
ov16_0226D1FC: ; 0x0226D1FC
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _0226D21A
	mov r2, #0
_0226D204:
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _0226D212
	add r2, r2, #1
	add r0, #0x30
	cmp r2, #6
	blt _0226D204
_0226D212:
	cmp r2, #6
	bne _0226D21A
	mov r0, #1
	bx lr
_0226D21A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0226D1FC

	thumb_func_start ov16_0226D220
ov16_0226D220: ; 0x0226D220
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	cmp r6, #0
	bne _0226D230
	bl GF_AssertFail
_0226D230:
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_0226D3F8
	add r5, r6, #0
	mov r4, #0
	add r5, #0x1c
	add r6, #0x18
_0226D240:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov16_0226D938
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #6
	blt _0226D240
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0226D220

	thumb_func_start ov16_0226D258
ov16_0226D258: ; 0x0226D258
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _0226D276
	mov r2, #0
_0226D260:
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _0226D26E
	add r2, r2, #1
	add r0, #0x30
	cmp r2, #6
	blt _0226D260
_0226D26E:
	cmp r2, #6
	bne _0226D276
	mov r0, #1
	bx lr
_0226D276:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0226D258

	thumb_func_start ov16_0226D27C
ov16_0226D27C: ; 0x0226D27C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200D0F4
	mov r4, #0
	add r5, r6, #0
_0226D28A:
	ldr r0, [r5, #0x1c]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #6
	blt _0226D28A
	add r0, r6, #0
	bl ov16_0226D17C
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0226D27C

	thumb_func_start ov16_0226D2A0
ov16_0226D2A0: ; 0x0226D2A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	mov r1, #0
	cmp r0, #0
	bne _0226D2BA
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0226D2BA
	mov r1, #1
_0226D2BA:
	cmp r1, #0
	bne _0226D2C2
	bl GF_AssertFail
_0226D2C2:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	ldr r1, [sp, #0x18]
	ldr r2, _0226D338 ; =0x02270A3C
	add r0, r7, #0
	bl sub_0200CE6C
	str r0, [r5, #0]
	cmp r6, #0
	ldr r0, [r5, #0]
	bne _0226D2F8
	ldr r2, _0226D33C ; =0x02270A2C
	lsl r3, r4, #1
	ldrsh r2, [r2, r3]
	mov r1, #0x16
	lsl r1, r1, #4
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	mov r1, #8
	ldr r0, [r0, #0]
	bl sub_02021D6C
	b _0226D310
_0226D2F8:
	ldr r2, _0226D340 ; =0x02270A24
	lsl r3, r4, #1
	ldrsh r2, [r2, r3]
	mov r1, #0x5f
	mvn r1, r1
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	mov r1, #7
	ldr r0, [r0, #0]
	bl sub_02021D6C
_0226D310:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	str r6, [r5, #0xc]
	mov r2, #0x7d
	str r4, [r5, #0x10]
	mov r0, #0
	strb r0, [r5, #0x1a]
	ldr r0, _0226D344 ; =ov16_0226D34C
	add r1, r5, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	str r0, [r5, #4]
	ldr r0, _0226D348 ; =0x00000711
	bl sub_02005748
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226D338: .word Unk_ov16_02270A3C
_0226D33C: .word Unk_ov16_02270A2C
_0226D340: .word Unk_ov16_02270A24
_0226D344: .word ov16_0226D34C
_0226D348: .word 0x00000711
	thumb_func_end ov16_0226D2A0

	thumb_func_start ov16_0226D34C
ov16_0226D34C: ; 0x0226D34C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #0x1a]
	cmp r1, #0
	beq _0226D35E
	cmp r1, #1
	beq _0226D37A
	b _0226D3E2
_0226D35E:
	add r1, sp, #0
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0226D37A:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	cmp r0, #0
	bne _0226D3B2
	mov r0, #0x12
	lsl r0, r0, #8
	sub r1, r1, r0
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r1, [r4, #0x14]
	cmp r1, r0
	bgt _0226D39A
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0226D39A:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	lsl r3, r2, #1
	ldr r2, _0226D3F0 ; =0x02270A2C
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	add sp, #4
	pop {r3, r4, pc}
_0226D3B2:
	mov r0, #0x12
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #0xc
	str r1, [r4, #0x14]
	cmp r1, r0
	blt _0226D3CA
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0226D3CA:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	lsl r3, r2, #1
	ldr r2, _0226D3F4 ; =0x02270A24
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	add sp, #4
	pop {r3, r4, pc}
_0226D3E2:
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0226D3F0: .word Unk_ov16_02270A2C
_0226D3F4: .word Unk_ov16_02270A24
	thumb_func_end ov16_0226D34C

	thumb_func_start ov16_0226D3F8
ov16_0226D3F8: ; 0x0226D3F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #0
	beq _0226D40A
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0226D40E
_0226D40A:
	bl GF_AssertFail
_0226D40E:
	mov r0, #0
	strb r0, [r5, #0x1a]
	str r4, [r5, #8]
	cmp r4, #0
	bne _0226D41C
	mov r0, #4
	b _0226D41C
_0226D41C:
	strb r0, [r5, #0x1b]
	mov r2, #0x7d
	ldr r0, _0226D430 ; =ov16_0226D434
	add r1, r5, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	nop
_0226D430: .word ov16_0226D434
	thumb_func_end ov16_0226D3F8

	thumb_func_start ov16_0226D434
ov16_0226D434: ; 0x0226D434
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _0226D44C
	cmp r0, #1
	beq _0226D48C
	cmp r0, #2
	beq _0226D4A0
	b _0226D51E
_0226D44C:
	add r1, sp, #4
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r1, #1
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl sub_0200D810
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r4, #0x18]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	mov r1, #0
	mov r2, #0x3f
	asr r3, r0, #8
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _0226D530 ; =0x04000050
	bl G2x_SetBlendAlpha_
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0226D48C:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0226D49A
	sub r0, r0, #1
	add sp, #8
	strb r0, [r4, #0x1b]
	pop {r3, r4, r5, pc}
_0226D49A:
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0226D4A0:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0226D4E4
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	cmp r0, #0
	bne _0226D4CA
	mov r0, #1
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [r4, #0x14]
	ldr r2, [r4, #0x10]
	lsl r1, r1, #8
	lsl r3, r2, #1
	ldr r2, _0226D534 ; =0x02270A2C
	ldr r0, [r4, #0]
	ldrsh r2, [r2, r3]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	b _0226D4E4
_0226D4CA:
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r1, r0
	str r1, [r4, #0x14]
	ldr r2, [r4, #0x10]
	lsl r1, r1, #8
	lsl r3, r2, #1
	ldr r2, _0226D538 ; =0x02270A24
	ldr r0, [r4, #0]
	ldrsh r2, [r2, r3]
	asr r1, r1, #0x10
	bl sub_0200D4C4
_0226D4E4:
	mov r1, #0x18
	ldrsh r2, [r4, r1]
	add r0, r1, #0
	add r0, #0xe8
	sub r0, r2, r0
	strh r0, [r4, #0x18]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0226D508
	mov r1, #0
	strh r1, [r4, #0x18]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D3EC
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0226D508:
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	add sp, #8
	asr r1, r0, #8
	mov r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0226D53C ; =0x04000052
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_0226D51E:
	bl ov16_0223F9F0
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226D530: .word 0x04000050
_0226D534: .word Unk_ov16_02270A2C
_0226D538: .word Unk_ov16_02270A24
_0226D53C: .word 0x04000052
	thumb_func_end ov16_0226D434

	thumb_func_start ov16_0226D540
ov16_0226D540: ; 0x0226D540
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r7, r1, #0
	add r6, r2, #0
	mov r1, #0
	str r3, [sp]
	ldr r4, [sp, #0x1c]
	cmp r0, #0
	bne _0226D55C
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0226D55C
	mov r1, #1
_0226D55C:
	cmp r1, #0
	bne _0226D564
	bl GF_AssertFail
_0226D564:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r2, _0226D634 ; =0x02270A70
	bl sub_0200CE6C
	str r0, [r5, #0]
	cmp r6, #0
	ldr r0, [r5, #0]
	bne _0226D592
	ldr r2, [sp, #0x18]
	mov r1, #0x45
	lsl r3, r2, #1
	ldr r2, _0226D638 ; =0x02270A34
	lsl r1, r1, #2
	ldrsh r2, [r2, r3]
	bl sub_0200D4C4
	b _0226D5A2
_0226D592:
	ldr r2, [sp, #0x18]
	mov r1, #0x13
	lsl r3, r2, #1
	ldr r2, _0226D63C ; =0x02270A1C
	mvn r1, r1
	ldrsh r2, [r2, r3]
	bl sub_0200D4C4
_0226D5A2:
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	bl sub_02021D6C
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r0, r5, #0
	str r6, [r5, #8]
	add r0, #0x2d
	strb r4, [r0]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x20]
	bl ov16_0226DB44
	add r1, r5, #0
	add r1, #0x2e
	strb r0, [r1]
	ldr r0, [sp, #0x20]
	str r7, [r5, #0x14]
	cmp r0, #6
	bne _0226D5D8
	ldr r0, _0226D640 ; =0x00000713
	b _0226D5DA
_0226D5D8:
	ldr r0, _0226D644 ; =0x00000712
_0226D5DA:
	strh r0, [r5, #0x2a]
	cmp r6, #0
	bne _0226D5EE
	lsl r0, r4, #4
	add r0, #0xa2
	str r0, [r5, #0x20]
	mov r0, #0xf
	mul r0, r4
	add r0, #0x9c
	b _0226D600
_0226D5EE:
	lsl r1, r4, #4
	mov r0, #0x5e
	sub r0, r0, r1
	str r0, [r5, #0x20]
	mov r0, #0xf
	add r1, r4, #0
	mul r1, r0
	mov r0, #0x64
	sub r0, r0, r1
_0226D600:
	str r0, [r5, #0x24]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [sp]
	ldr r2, _0226D648 ; =0x000001F5
	cmp r0, #0
	bne _0226D626
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r0, #5
	strh r0, [r5, #0x28]
	ldr r0, _0226D64C ; =ov16_0226D654
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0226D626:
	ldr r0, _0226D650 ; =ov16_0226D854
	strh r1, [r5, #0x28]
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226D634: .word Unk_ov16_02270A70
_0226D638: .word Unk_ov16_02270A34
_0226D63C: .word Unk_ov16_02270A1C
_0226D640: .word 0x00000713
_0226D644: .word 0x00000712
_0226D648: .word 0x000001F5
_0226D64C: .word ov16_0226D654
_0226D650: .word ov16_0226D854
	thumb_func_end ov16_0226D540

	thumb_func_start ov16_0226D654
ov16_0226D654: ; 0x0226D654
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #6
	bls _0226D666
	b _0226D836
_0226D666:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226D672: ; jump table
	.short _0226D680 - _0226D672 - 2 ; case 0
	.short _0226D6A4 - _0226D672 - 2 ; case 1
	.short _0226D6B2 - _0226D672 - 2 ; case 2
	.short _0226D734 - _0226D672 - 2 ; case 3
	.short _0226D74C - _0226D672 - 2 ; case 4
	.short _0226D78C - _0226D672 - 2 ; case 5
	.short _0226D7BA - _0226D672 - 2 ; case 6
_0226D680:
	add r1, sp, #0
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #8
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D6A4:
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226D6B2
	sub r0, r0, #1
	strh r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0226D6B2:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	bne _0226D6F6
	mov r0, #0x12
	lsl r0, r0, #8
	sub r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	lsl r0, r0, #8
	cmp r1, r0
	bgt _0226D6E0
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #0x2a]
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D6E0:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0226D84C ; =0x02270A34
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	b _0226D72A
_0226D6F6:
	mov r0, #0x12
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	lsl r0, r0, #8
	cmp r1, r0
	blt _0226D716
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D716:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0226D850 ; =0x02270A1C
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	bl sub_0200D4C4
_0226D72A:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	pop {r3, r4, r5, pc}
_0226D734:
	ldr r1, [r4, #0x14]
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D74C:
	ldr r1, [r4, #0x14]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	beq _0226D760
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	pop {r3, r4, r5, pc}
_0226D760:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _0226D772
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021E50
	b _0226D77A
_0226D772:
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021E50
_0226D77A:
	mov r0, #0
	strh r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D78C:
	mov r0, #0x28
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x28]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	blt _0226D84A
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x2e
	ldrb r1, [r1]
	ldr r0, [r0, #0]
	bl sub_02021D6C
	mov r0, #0
	strh r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D7BA:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	bne _0226D7F8
	mov r0, #6
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #8
	cmp r1, r0
	blt _0226D7E2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D7E2:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0226D84C ; =0x02270A34
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	b _0226D82C
_0226D7F8:
	mov r0, #6
	lsl r0, r0, #8
	sub r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #8
	cmp r1, r0
	bgt _0226D818
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D818:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0226D850 ; =0x02270A1C
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	bl sub_0200D4C4
_0226D82C:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	pop {r3, r4, r5, pc}
_0226D836:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021E50
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
_0226D84A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226D84C: .word Unk_ov16_02270A34
_0226D850: .word Unk_ov16_02270A1C
	thumb_func_end ov16_0226D654

	thumb_func_start ov16_0226D854
ov16_0226D854: ; 0x0226D854
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _0226D86C
	cmp r1, #1
	beq _0226D89A
	cmp r1, #2
	beq _0226D8AA
	b _0226D922
_0226D86C:
	add r1, sp, #0
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r1, #0
	lsl r0, r0, #8
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_02021E50
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D89A:
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226D8AA
	sub r0, r0, #1
	add sp, #4
	strh r0, [r4, #0x28]
	pop {r3, r4, pc}
_0226D8AA:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	bne _0226D8EA
	mov r0, #0x12
	lsl r0, r0, #8
	sub r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #8
	cmp r1, r0
	bgt _0226D8D2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D8D2:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0226D930 ; =0x02270A34
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	add sp, #4
	pop {r3, r4, pc}
_0226D8EA:
	mov r0, #0x12
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #8
	cmp r1, r0
	blt _0226D90A
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D90A:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0226D934 ; =0x02270A1C
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	add sp, #4
	pop {r3, r4, pc}
_0226D922:
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0226D930: .word Unk_ov16_02270A34
_0226D934: .word Unk_ov16_02270A1C
	thumb_func_end ov16_0226D854

	thumb_func_start ov16_0226D938
ov16_0226D938: ; 0x0226D938
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _0226D94E
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0226D952
_0226D94E:
	bl GF_AssertFail
_0226D952:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x2c
	strb r1, [r0]
	cmp r7, #0
	str r4, [r5, #0x18]
	ldr r2, _0226D990 ; =0x000001F5
	bne _0226D97C
	lsl r0, r6, #1
	add r0, r6, r0
	strh r0, [r5, #0x28]
	add r0, r5, #0
	mov r1, #4
	add r0, #0x2f
	strb r1, [r0]
	ldr r0, _0226D994 ; =ov16_0226D99C
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0226D97C:
	add r0, r5, #0
	strh r1, [r5, #0x28]
	add r0, #0x2f
	strb r1, [r0]
	ldr r0, _0226D998 ; =ov16_0226DAAC
	add r1, r5, #0
	bl sub_0200D9E8
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226D990: .word 0x000001F5
_0226D994: .word ov16_0226D99C
_0226D998: .word ov16_0226DAAC
	thumb_func_end ov16_0226D938

	thumb_func_start ov16_0226D99C
ov16_0226D99C: ; 0x0226D99C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x18]
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bne _0226D9B4
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x2c
	strb r1, [r0]
_0226D9B4:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bgt _0226D9CE
	cmp r0, #0
	blt _0226DA8A
	beq _0226D9D2
	cmp r0, #1
	beq _0226D9FE
	cmp r0, #2
	beq _0226DA24
	b _0226DA8A
_0226D9CE:
	cmp r0, #0x64
	b _0226DA8A
_0226D9D2:
	add r1, sp, #0
	ldr r0, [r4, #0]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r1, #1
	lsl r0, r0, #8
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0]
	bl sub_0200D810
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226D9FE:
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0226DA16
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	add r4, #0x2f
	sub r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0226DA16:
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226DA24
	sub r0, r0, #1
	strh r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0226DA24:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	bne _0226DA48
	mov r0, #3
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	lsl r1, r1, #8
	lsl r3, r2, #1
	ldr r2, _0226DAA0 ; =0x02270A34
	ldr r0, [r4, #0]
	ldrsh r2, [r2, r3]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	b _0226DA62
_0226DA48:
	mov r0, #3
	lsl r0, r0, #0xa
	add r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	lsl r1, r1, #8
	lsl r3, r2, #1
	ldr r2, _0226DAA4 ; =0x02270A1C
	ldr r0, [r4, #0]
	ldrsh r2, [r2, r3]
	asr r1, r1, #0x10
	bl sub_0200D4C4
_0226DA62:
	ldr r1, [r4, #0x1c]
	ldr r0, _0226DAA8 ; =0xFFFFF000
	cmp r1, r0
	blt _0226DA72
	mov r0, #0x11
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _0226DA80
_0226DA72:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0226DA80:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	pop {r3, r4, r5, pc}
_0226DA8A:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_0200D3EC
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226DAA0: .word Unk_ov16_02270A34
_0226DAA4: .word Unk_ov16_02270A1C
_0226DAA8: .word 0xFFFFF000
	thumb_func_end ov16_0226D99C

	thumb_func_start ov16_0226DAAC
ov16_0226DAAC: ; 0x0226DAAC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x18]
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bne _0226DAC4
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x2c
	strb r1, [r0]
_0226DAC4:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0226DAD6
	cmp r0, #1
	beq _0226DB00
	cmp r0, #0x64
	b _0226DAEC
_0226DAD6:
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200D810
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r4, #0x2c
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0226DAEC:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_0200D3EC
	add r0, r5, #0
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
_0226DB00:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0226DAAC

	thumb_func_start ov16_0226DB04
ov16_0226DB04: ; 0x0226DB04
	cmp r0, #3
	bhi _0226DB1C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226DB14: ; jump table
	.short _0226DB1C - _0226DB14 - 2 ; case 0
	.short _0226DB20 - _0226DB14 - 2 ; case 1
	.short _0226DB2C - _0226DB14 - 2 ; case 2
	.short _0226DB38 - _0226DB14 - 2 ; case 3
_0226DB1C:
	mov r0, #6
	bx lr
_0226DB20:
	cmp r1, #0
	bne _0226DB28
	mov r0, #3
	bx lr
_0226DB28:
	mov r0, #0
	bx lr
_0226DB2C:
	cmp r1, #0
	bne _0226DB34
	mov r0, #5
	bx lr
_0226DB34:
	mov r0, #2
	bx lr
_0226DB38:
	cmp r1, #0
	bne _0226DB40
	mov r0, #4
	bx lr
_0226DB40:
	mov r0, #1
	bx lr
	thumb_func_end ov16_0226DB04

	thumb_func_start ov16_0226DB44
ov16_0226DB44: ; 0x0226DB44
	cmp r0, #6
	bhi _0226DB7A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226DB54: ; jump table
	.short _0226DB68 - _0226DB54 - 2 ; case 0
	.short _0226DB78 - _0226DB54 - 2 ; case 1
	.short _0226DB70 - _0226DB54 - 2 ; case 2
	.short _0226DB64 - _0226DB54 - 2 ; case 3
	.short _0226DB74 - _0226DB54 - 2 ; case 4
	.short _0226DB6C - _0226DB54 - 2 ; case 5
	.short _0226DB62 - _0226DB54 - 2 ; case 6
_0226DB62:
	bx lr
_0226DB64:
	mov r0, #0
	bx lr
_0226DB68:
	mov r0, #3
	bx lr
_0226DB6C:
	mov r0, #2
	bx lr
_0226DB70:
	mov r0, #5
	bx lr
_0226DB74:
	mov r0, #1
	bx lr
_0226DB78:
	mov r0, #4
_0226DB7A:
	bx lr
	thumb_func_end ov16_0226DB44

	.rodata


	.global Unk_ov16_02270A1C
Unk_ov16_02270A1C: ; 0x02270A1C
	.incbin "incbin/overlay16_rodata.bin", 0x27C0, 0x27C8 - 0x27C0

	.global Unk_ov16_02270A24
Unk_ov16_02270A24: ; 0x02270A24
	.incbin "incbin/overlay16_rodata.bin", 0x27C8, 0x27D0 - 0x27C8

	.global Unk_ov16_02270A2C
Unk_ov16_02270A2C: ; 0x02270A2C
	.incbin "incbin/overlay16_rodata.bin", 0x27D0, 0x27D8 - 0x27D0

	.global Unk_ov16_02270A34
Unk_ov16_02270A34: ; 0x02270A34
	.incbin "incbin/overlay16_rodata.bin", 0x27D8, 0x27E0 - 0x27D8

	.global Unk_ov16_02270A3C
Unk_ov16_02270A3C: ; 0x02270A3C
	.incbin "incbin/overlay16_rodata.bin", 0x27E0, 0x2814 - 0x27E0

	.global Unk_ov16_02270A70
Unk_ov16_02270A70: ; 0x02270A70
	.incbin "incbin/overlay16_rodata.bin", 0x2814, 0x34

