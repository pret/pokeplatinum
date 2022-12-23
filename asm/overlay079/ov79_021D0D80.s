	.include "macros/function.inc"
	.include "overlay079/ov79_021D0D80.inc"

	

	.text


	thumb_func_start ov79_021D0D80
ov79_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x2d
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	mov r2, #0x2d
	bl sub_0200681C
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #8
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x2d
	str r0, [r4, #0]
	str r5, [r4, #0x20]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x1b]
	ldr r0, _021D0DC0 ; =0x0000FFFF
	strh r0, [r4, #0x14]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0DC0: .word 0x0000FFFF
	thumb_func_end ov79_021D0D80

	thumb_func_start ov79_021D0DC4
ov79_021D0DC4: ; 0x021D0DC4
	push {r3, lr}
	bl sub_0200682C
	bl ov79_021D0E1C
	cmp r0, #0
	beq _021D0DD6
	mov r0, #1
	pop {r3, pc}
_021D0DD6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov79_021D0DC4

	thumb_func_start ov79_021D0DDC
ov79_021D0DDC: ; 0x021D0DDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldrb r1, [r4, #0x1a]
	ldr r0, [r4, #0x20]
	strb r1, [r0, #1]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	strb r1, [r0, #2]
	ldrb r1, [r4, #0x1b]
	ldr r0, [r4, #0x20]
	strb r1, [r0, #3]
	add r0, r4, #0
	add r0, #0x80
	ldrh r1, [r0]
	ldr r0, [r4, #0x20]
	strh r1, [r0, #4]
	add r0, r4, #0
	add r0, #0x82
	ldrh r1, [r0]
	ldr r0, [r4, #0x20]
	strh r1, [r0, #6]
	add r0, r5, #0
	bl sub_02006830
	ldr r0, [r4, #0]
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov79_021D0DDC

	thumb_func_start ov79_021D0E1C
ov79_021D0E1C: ; 0x021D0E1C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #6
	bls _021D0E2A
	b _021D0F5E
_021D0E2A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0E36: ; jump table
	.short _021D0E44 - _021D0E36 - 2 ; case 0
	.short _021D0E94 - _021D0E36 - 2 ; case 1
	.short _021D0EBC - _021D0E36 - 2 ; case 2
	.short _021D0ECE - _021D0E36 - 2 ; case 3
	.short _021D0F04 - _021D0E36 - 2 ; case 4
	.short _021D0F16 - _021D0E36 - 2 ; case 5
	.short _021D0F24 - _021D0E36 - 2 ; case 6
_021D0E44:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0F70 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0F74 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	b _021D0F64
_021D0E94:
	bl ov79_021D122C
	cmp r0, #0
	bne _021D0EA2
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D0EA2:
	mov r0, #0
	str r0, [r4, #0xc]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #0]
	add r3, r0, #0
	str r2, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	b _021D0F64
_021D0EBC:
	bl ov79_021D21F8
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D0F64
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D0ECE:
	bl ov79_021D21F8
	ldrh r1, [r4, #0x18]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021D0F78 ; =0x021D394C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _021D0EE8
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D0EE8:
	mov r0, #0
	str r0, [r4, #0xc]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r1, [r4, #0]
	add r2, r0, #0
	str r1, [sp, #8]
	add r1, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	b _021D0F64
_021D0F04:
	bl ov79_021D21F8
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D0F64
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D0F16:
	bl ov79_021D12A0
	cmp r0, #0
	bne _021D0F64
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D0F24:
	bl sub_0201E530
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0F70 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0F74 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	b _021D0F64
_021D0F5E:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021D0F64:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021D0F70: .word 0xFFFFE0FF
_021D0F74: .word 0x04001000
_021D0F78: .word 0x021D394C
	thumb_func_end ov79_021D0E1C

	thumb_func_start ov79_021D0F7C
ov79_021D0F7C: ; 0x021D0F7C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D0F8E
	bl sub_0200C800
_021D0F8E:
	bl sub_0201DCAC
	ldr r0, [r4, #0x24]
	bl sub_0201C2B8
	ldr r3, _021D0FA8 ; =0x027E0000
	ldr r1, _021D0FAC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D0FA8: .word 0x027E0000
_021D0FAC: .word 0x00003FF8
	thumb_func_end ov79_021D0F7C

	thumb_func_start ov79_021D0FB0
ov79_021D0FB0: ; 0x021D0FB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D0FE8 ; =0x021D3964
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021D0FE4
	ldr r0, _021D0FE8 ; =0x021D3964
	bl sub_02022644
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021D0FE0
	ldrh r0, [r4, #0x14]
	cmp r0, #1
	bne _021D0FE0
	ldrb r1, [r4, #0x1b]
	add r0, r4, #0
	mov r2, #2
	bl ov79_021D1B24
_021D0FE0:
	mov r0, #0
	mvn r0, r0
_021D0FE4:
	pop {r4, pc}
	nop
_021D0FE8: .word 0x021D3964
	thumb_func_end ov79_021D0FB0

	thumb_func_start ov79_021D0FEC
ov79_021D0FEC: ; 0x021D0FEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	mov r4, #0
	mvn r4, r4
	cmp r1, #0
	bne _021D1002
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D1002:
	bl ov79_021D0FB0
	add r1, r0, #0
	ldr r0, _021D1098 ; =0x021BF67C
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _021D1024
	ldrh r0, [r5, #0x14]
	cmp r0, #0
	bne _021D1036
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	bl sub_02001288
	add r4, r0, #0
	b _021D1036
_021D1024:
	cmp r1, #0
	blt _021D1032
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov79_021D1C44
_021D1032:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D1036:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021D1042
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D1042:
	ldr r0, _021D1098 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _021D105E
	ldr r0, _021D109C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xff
	strb r0, [r5, #0x1a]
	mov r0, #0
	str r0, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D105E:
	mov r0, #1
	tst r0, r1
	beq _021D1092
	ldr r0, _021D109C ; =0x000005DC
	bl sub_02005748
	cmp r4, #0xff
	beq _021D107C
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021D107C
	add r0, r0, #1
	cmp r4, r0
	bne _021D1088
_021D107C:
	mov r0, #0xff
	strb r0, [r5, #0x1a]
	mov r0, #0
	str r0, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1088:
	strb r4, [r5, #0x1a]
	mov r0, #1
	strh r0, [r5, #0x18]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D1092:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1098: .word 0x021BF67C
_021D109C: .word 0x000005DC
	thumb_func_end ov79_021D0FEC

	thumb_func_start ov79_021D10A0
ov79_021D10A0: ; 0x021D10A0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ov79_021D2214
	add r0, r4, #0
	bl ov79_021D1ED8
	mov r0, #2
	strh r0, [r4, #0x18]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D10A0

	thumb_func_start ov79_021D10B8
ov79_021D10B8: ; 0x021D10B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_02001288
	add r4, r0, #0
	ldr r0, _021D1144 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _021D10EA
	ldr r0, _021D1148 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov79_021D1F60
	add r0, r5, #0
	mov r1, #0
	bl ov79_021D2214
	mov r0, #0
	strh r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
_021D10EA:
	mov r0, #1
	tst r0, r1
	beq _021D113E
	ldr r0, _021D1148 ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bhi _021D110E
	bhs _021D112C
	cmp r4, #1
	bhi _021D112C
	cmp r4, #0
	beq _021D1114
	cmp r4, #1
	beq _021D111A
	b _021D112C
_021D110E:
	add r0, r0, #1
	cmp r4, r0
	b _021D112C
_021D1114:
	mov r0, #1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
_021D111A:
	add r0, r5, #0
	bl ov79_021D1F60
	add r0, r5, #0
	bl ov79_021D1FBC
	mov r0, #3
	strh r0, [r5, #0x18]
	b _021D113E
_021D112C:
	add r0, r5, #0
	bl ov79_021D1F60
	add r0, r5, #0
	mov r1, #0
	bl ov79_021D2214
	mov r0, #0
	strh r0, [r5, #0x18]
_021D113E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1144: .word 0x021BF67C
_021D1148: .word 0x000005DC
	thumb_func_end ov79_021D10B8

	thumb_func_start ov79_021D114C
ov79_021D114C: ; 0x021D114C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x1f]
	bl sub_0201D724
	cmp r0, #0
	beq _021D115E
	mov r0, #0
	pop {r4, pc}
_021D115E:
	add r0, r4, #0
	bl ov79_021D2054
	mov r0, #4
	strh r0, [r4, #0x18]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D114C

	thumb_func_start ov79_021D116C
ov79_021D116C: ; 0x021D116C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	bl sub_02002114
	cmp r0, #0
	beq _021D1188
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021D119C
	b _021D11B6
_021D1188:
	ldr r0, _021D11BC ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov79_021D2008
	mov r0, #5
	strh r0, [r4, #0x18]
	mov r0, #0
	pop {r4, pc}
_021D119C:
	ldr r0, _021D11BC ; =0x000005DC
	bl sub_02005748
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #1
	strh r0, [r4, #0x18]
	mov r0, #0
	pop {r4, pc}
_021D11B6:
	mov r0, #0
	pop {r4, pc}
	nop
_021D11BC: .word 0x000005DC
	thumb_func_end ov79_021D116C

	thumb_func_start ov79_021D11C0
ov79_021D11C0: ; 0x021D11C0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x1f]
	bl sub_0201D724
	cmp r0, #0
	beq _021D11D2
	mov r0, #0
	pop {r4, pc}
_021D11D2:
	ldr r0, _021D1228 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _021D11E0
	mov r0, #0
	pop {r4, pc}
_021D11E0:
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	ldrb r0, [r4, #0x1a]
	ldr r3, [r4, #0x20]
	lsl r2, r0, #3
	add r3, #0x20
	ldrb r1, [r3, r2]
	mov r0, #0x40
	orr r0, r1
	strb r0, [r3, r2]
	ldr r0, [r4, #0x20]
	mov r1, #1
	strb r1, [r0, #2]
	add r0, r4, #0
	mov r1, #0
	bl ov79_021D1AB8
	add r0, r4, #0
	bl ov79_021D196C
	add r0, r4, #0
	mov r1, #0
	bl ov79_021D2214
	mov r0, #0
	strh r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
_021D1228: .word 0x021BF67C
	thumb_func_end ov79_021D11C0

	thumb_func_start ov79_021D122C
ov79_021D122C: ; 0x021D122C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #5
	bhi _021D1290
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1242: ; jump table
	.short _021D124E - _021D1242 - 2 ; case 0
	.short _021D1254 - _021D1242 - 2 ; case 1
	.short _021D125A - _021D1242 - 2 ; case 2
	.short _021D1266 - _021D1242 - 2 ; case 3
	.short _021D126C - _021D1242 - 2 ; case 4
	.short _021D1272 - _021D1242 - 2 ; case 5
_021D124E:
	bl ov79_021D132C
	b _021D1290
_021D1254:
	bl ov79_021D13C4
	b _021D1290
_021D125A:
	bl ov79_021D1568
	add r0, r4, #0
	bl ov79_021D14A4
	b _021D1290
_021D1266:
	bl ov79_021D20F4
	b _021D1290
_021D126C:
	bl ov79_021D167C
	b _021D1290
_021D1272:
	bl ov79_021D196C
	ldrb r1, [r4, #0x1b]
	add r0, r4, #0
	mov r2, #4
	bl ov79_021D1B24
	ldr r0, _021D129C ; =ov79_021D0F7C
	add r1, r4, #0
	bl sub_02017798
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021D1290:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	nop
_021D129C: .word ov79_021D0F7C
	thumb_func_end ov79_021D122C

	thumb_func_start ov79_021D12A0
ov79_021D12A0: ; 0x021D12A0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #5
	bhi _021D1302
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D12B6: ; jump table
	.short _021D12C2 - _021D12B6 - 2 ; case 0
	.short _021D12DA - _021D12B6 - 2 ; case 1
	.short _021D12E6 - _021D12B6 - 2 ; case 2
	.short _021D12F2 - _021D12B6 - 2 ; case 3
	.short _021D12F8 - _021D12B6 - 2 ; case 4
	.short _021D12FE - _021D12B6 - 2 ; case 5
_021D12C2:
	add r1, r4, #0
	add r1, #0xd0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _021D12D0
	bl ov79_021D1F60
_021D12D0:
	add r0, r4, #0
	mov r1, #1
	bl ov79_021D1AB8
	b _021D1302
_021D12DA:
	bl ov79_021D17E8
	add r0, r4, #0
	bl ov79_021D21CC
	b _021D1302
_021D12E6:
	bl ov79_021D1548
	add r0, r4, #0
	bl ov79_021D1618
	b _021D1302
_021D12F2:
	bl ov79_021D14A0
	b _021D1302
_021D12F8:
	bl ov79_021D13A4
	b _021D1302
_021D12FE:
	mov r0, #1
	pop {r4, pc}
_021D1302:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D12A0

	thumb_func_start ov79_021D130C
ov79_021D130C: ; 0x021D130C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1328 ; =0x021D3980
	add r3, sp, #0
	mov r2, #5
_021D1316:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1316
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D1328: .word 0x021D3980
	thumb_func_end ov79_021D130C

	thumb_func_start ov79_021D132C
ov79_021D132C: ; 0x021D132C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	add r5, r0, #0
	bl ov79_021D130C
	ldr r0, [r5, #0]
	bl sub_02018340
	add r3, sp, #0
	ldr r4, _021D139C ; =0x021D3910
	str r0, [r5, #0x24]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r4, _021D13A0 ; =0x021D3A10
	add r3, sp, #0x10
	mov r2, #0x15
_021D1358:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1358
	mov r4, #0
	add r7, r4, #0
	add r6, sp, #0x10
_021D1366:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x24]
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #0
	bl sub_020183C4
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x24]
	lsr r1, r1, #0x18
	bl sub_02019EBC
	lsl r0, r4, #0x18
	ldr r3, [r5, #0]
	lsr r0, r0, #0x18
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	add r7, r7, #1
	add r4, r4, #1
	add r6, #0x1c
	cmp r7, #6
	blt _021D1366
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D139C: .word 0x021D3910
_021D13A0: .word 0x021D3A10
	thumb_func_end ov79_021D132C

	thumb_func_start ov79_021D13A4
ov79_021D13A4: ; 0x021D13A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D13AA:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x24]
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	cmp r4, #6
	blt _021D13AA
	ldr r0, [r5, #0x24]
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov79_021D13A4

	thumb_func_start ov79_021D13C4
ov79_021D13C4: ; 0x021D13C4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x53
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x53
	bl sub_0208C210
	mov r0, #3
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x53
	bl sub_0208C210
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x53
	bl sub_0208C210
	mov r1, #0
	str r1, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x53
	bl sub_0208C210
	mov r0, #0xa
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x53
	bl sub_0208C210
	mov r0, #0xb
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x53
	bl sub_0208C210
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_0201C3C0
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov79_021D13C4

	thumb_func_start ov79_021D14A0
ov79_021D14A0: ; 0x021D14A0
	bx lr
	; .align 2, 0
	thumb_func_end ov79_021D14A0

	thumb_func_start ov79_021D14A4
ov79_021D14A4: ; 0x021D14A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	mov r2, #0x1f
	mov r3, #0xf
	bl sub_0200DAA4
	ldr r0, [r6, #0x20]
	ldr r0, [r0, #0x18]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DD0C
	mov r1, #0x1a
	ldr r2, [r6, #0]
	mov r0, #0
	lsl r1, r1, #4
	bl sub_02002E7C
	mov r1, #6
	ldr r2, [r6, #0]
	mov r0, #0
	lsl r1, r1, #6
	bl sub_02002E98
	mov r1, #0x1a
	ldr r2, [r6, #0]
	mov r0, #4
	lsl r1, r1, #4
	bl sub_02002E7C
	add r5, r6, #0
	ldr r4, _021D1544 ; =0x021D39A8
	mov r7, #0
	add r5, #0xe8
_021D1508:
	ldrb r0, [r4, #2]
	add r1, r5, #0
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	ldrb r0, [r4, #4]
	str r0, [sp, #8]
	ldrb r0, [r4, #5]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #6]
	str r0, [sp, #0x10]
	ldrb r2, [r4]
	ldrb r3, [r4, #1]
	ldr r0, [r6, #0x24]
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r7, r7, #1
	add r4, #8
	add r5, #0x10
	cmp r7, #0xd
	blt _021D1508
	add r0, r6, #0
	bl ov79_021D2078
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1544: .word 0x021D39A8
	thumb_func_end ov79_021D14A4

	thumb_func_start ov79_021D1548
ov79_021D1548: ; 0x021D1548
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0xe8
_021D1550:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xd
	blt _021D1550
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov79_021D1548

	thumb_func_start ov79_021D1568
ov79_021D1568: ; 0x021D1568
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #2
	bl sub_02002BB8
	ldr r2, _021D1614 ; =0x000001CF
	ldr r3, [r5, #0]
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0]
	bl sub_020158A8
	str r0, [r5, #0x28]
	ldr r2, [r5, #0]
	mov r0, #2
	mov r1, #0x40
	bl sub_0200B368
	str r0, [r5, #0x30]
	ldr r1, [r5, #0]
	mov r0, #0x40
	bl sub_02023790
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x2c]
	mov r1, #6
	bl sub_0200B1EC
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x2c]
	mov r1, #0x16
	bl sub_0200B1EC
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x2c]
	mov r1, #4
	bl sub_0200B1EC
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x2c]
	mov r1, #7
	bl sub_0200B1EC
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x2c]
	mov r1, #8
	bl sub_0200B1EC
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x2c]
	mov r1, #0
	bl sub_0200B1EC
	str r0, [r5, #0x4c]
	mov r4, #0
	add r6, r5, #0
_021D15E0:
	add r1, r4, #0
	ldr r0, [r5, #0x2c]
	add r1, #0xb
	bl sub_0200B1EC
	str r0, [r6, #0x50]
	cmp r4, #5
	bge _021D1604
	add r1, r4, #0
	ldr r0, [r5, #0x2c]
	add r1, #0x11
	bl sub_0200B1EC
	str r0, [r6, #0x68]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blt _021D15E0
_021D1604:
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0x18]
	bl sub_02027AC0
	add r5, #0x7c
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_021D1614: .word 0x000001CF
	thumb_func_end ov79_021D1568

	thumb_func_start ov79_021D1618
ov79_021D1618: ; 0x021D1618
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021D1620:
	ldr r0, [r5, #0x50]
	bl sub_020237BC
	cmp r4, #5
	bge _021D1638
	ldr r0, [r5, #0x68]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _021D1620
_021D1638:
	ldr r0, [r6, #0x4c]
	bl sub_020237BC
	ldr r0, [r6, #0x48]
	bl sub_020237BC
	ldr r0, [r6, #0x44]
	bl sub_020237BC
	ldr r0, [r6, #0x40]
	bl sub_020237BC
	ldr r0, [r6, #0x3c]
	bl sub_020237BC
	ldr r0, [r6, #0x38]
	bl sub_020237BC
	ldr r0, [r6, #0x34]
	bl sub_020237BC
	ldr r0, [r6, #0x30]
	bl sub_0200B3F0
	ldr r0, [r6, #0x28]
	bl sub_020158F4
	ldr r0, [r6, #0x2c]
	bl sub_0200B190
	mov r0, #2
	bl sub_02002C60
	pop {r4, r5, r6, pc}
	thumb_func_end ov79_021D1618

	thumb_func_start ov79_021D167C
ov79_021D167C: ; 0x021D167C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r6, _021D17D4 ; =0x021D3AB8
	mov r7, #0
	add r4, r5, #0
_021D1688:
	mov r0, #0x6e
	mov r1, #0x6f
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200CA08
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	add r7, r7, #1
	add r6, #0x28
	add r4, r4, #4
	cmp r7, #3
	blt _021D1688
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r6, _021D17D8 ; =0x021D3920
	mov r7, #0
	add r4, r5, #0
_021D16DE:
	mov r0, #0x6e
	mov r1, #0x6f
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021D17DC ; =0x021D3B30
	bl sub_0200CA08
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r7, #3
	bl sub_02021D6C
	mov r0, #0x73
	mov r1, #0
	mov r2, #2
	lsl r0, r0, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, r0]
	bl sub_0200D494
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r7, #5
	blt _021D16DE
	mov r7, #0
	ldr r6, _021D17E0 ; =0x021D3934
	add r4, r5, #0
	str r7, [sp, #0x10]
_021D1730:
	mov r0, #0x6e
	mov r1, #0x6f
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021D17E4 ; =0x021D3B58
	bl sub_0200CA08
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x10]
	bl sub_02021D6C
	mov r0, #0x1e
	lsl r0, r0, #4
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r7, #2
	bl sub_02021E90
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x1e
	mov r1, #0
	mov r2, #2
	lsl r0, r0, #4
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, r0]
	bl sub_0200D494
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #3
	add r4, r4, #4
	add r6, r6, #4
	str r0, [sp, #0x10]
	cmp r7, #6
	blt _021D1730
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x7e
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0xe7
	mov r3, #0x4c
	bl sub_0209916C
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_0200D3F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D17D4: .word 0x021D3AB8
_021D17D8: .word 0x021D3920
_021D17DC: .word 0x021D3B30
_021D17E0: .word 0x021D3934
_021D17E4: .word 0x021D3B58
	thumb_func_end ov79_021D167C

	thumb_func_start ov79_021D17E8
ov79_021D17E8: ; 0x021D17E8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x7e
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl sub_02099370
	mov r7, #0x1e
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #4
_021D1802:
	ldr r0, [r4, r7]
	bl sub_0200C7E4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _021D1802
	mov r7, #0x73
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_021D1818:
	ldr r0, [r4, r7]
	bl sub_0200C7E4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _021D1818
	mov r6, #7
	mov r4, #0
	lsl r6, r6, #6
_021D182C:
	ldr r0, [r5, r6]
	bl sub_0200C7E4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D182C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov79_021D17E8

	.rodata


	.global Unk_ov79_021D3910
Unk_ov79_021D3910: ; 0x021D3910
	.incbin "incbin/overlay79_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov79_021D3920
Unk_ov79_021D3920: ; 0x021D3920
	.incbin "incbin/overlay79_rodata.bin", 0x10, 0x24 - 0x10

	.global Unk_ov79_021D3934
Unk_ov79_021D3934: ; 0x021D3934
	.incbin "incbin/overlay79_rodata.bin", 0x24, 0x3C - 0x24

	.global Unk_ov79_021D394C
Unk_ov79_021D394C: ; 0x021D394C
	.incbin "incbin/overlay79_rodata.bin", 0x3C, 0x54 - 0x3C

	.global Unk_ov79_021D3964
Unk_ov79_021D3964: ; 0x021D3964
	.incbin "incbin/overlay79_rodata.bin", 0x54, 0x70 - 0x54

	.global Unk_ov79_021D3980
Unk_ov79_021D3980: ; 0x021D3980
	.incbin "incbin/overlay79_rodata.bin", 0x70, 0x98 - 0x70

	.global Unk_ov79_021D39A8
Unk_ov79_021D39A8: ; 0x021D39A8
	.incbin "incbin/overlay79_rodata.bin", 0x98, 0x100 - 0x98

	.global Unk_ov79_021D3A10
Unk_ov79_021D3A10: ; 0x021D3A10
	.incbin "incbin/overlay79_rodata.bin", 0x100, 0x1A8 - 0x100

	.global Unk_ov79_021D3AB8
Unk_ov79_021D3AB8: ; 0x021D3AB8
	.incbin "incbin/overlay79_rodata.bin", 0x1A8, 0xC8

