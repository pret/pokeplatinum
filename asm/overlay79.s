	.include "macros/function.inc"


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
	bl sub_020C4CF4
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

	thumb_func_start ov79_021D183C
ov79_021D183C: ; 0x021D183C
	ldrb r2, [r0, #4]
	mov r1, #0x20
	bic r2, r1
	strb r2, [r0, #4]
	mov r1, #0xff
	strb r1, [r0, #6]
	ldrb r1, [r0, #6]
	strb r1, [r0, #7]
	bx lr
	; .align 2, 0
	thumb_func_end ov79_021D183C

	thumb_func_start ov79_021D1850
ov79_021D1850: ; 0x021D1850
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r3, #0
	beq _021D186E
	mov r0, #0x42
	lsl r0, r0, #2
	mov r1, #1
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
_021D186E:
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, #0xe8
	mov r2, #0
	add r0, r5, r0
	mov r1, #0xff
	add r3, r2, #0
	bl sub_0201AE78
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r3, #0
	str r3, [sp]
	ldr r0, _021D18B0 ; =0x0001020F
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	strb r0, [r5, #0x1f]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D18B0: .word 0x0001020F
	thumb_func_end ov79_021D1850

	thumb_func_start ov79_021D18B4
ov79_021D18B4: ; 0x021D18B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #0xff
	strb r0, [r5, #0x1e]
	ldrb r0, [r5, #0x1e]
	strb r0, [r5, #0x1d]
	ldrb r2, [r5, #0x1b]
	cmp r2, #5
	bne _021D18D2
	mov r7, #0x1f
	b _021D18E8
_021D18D2:
	mov r7, #1
	ldr r1, [sp, #4]
	cmp r2, #0
	ble _021D18E8
_021D18DA:
	lsl r0, r7, #0x19
	lsr r7, r0, #0x18
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, r2
	blt _021D18DA
_021D18E8:
	ldr r0, [sp]
	mov r6, #0
	ldrb r0, [r0]
	cmp r0, #0
	ble _021D195E
	ldr r0, [sp]
	str r0, [sp, #8]
	add r0, #0x1c
	str r0, [sp, #8]
_021D18FA:
	ldr r0, [sp, #8]
	lsl r1, r6, #3
	add r4, r0, r1
	add r0, r4, #0
	bl ov79_021D183C
	ldrb r0, [r4, #4]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	beq _021D1950
	lsl r1, r0, #0x19
	lsr r1, r1, #0x1f
	bne _021D1950
	mov r1, #0x1f
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	tst r1, r7
	beq _021D1950
	mov r1, #0x20
	orr r0, r1
	strb r0, [r4, #4]
	ldrb r0, [r5, #0x1d]
	cmp r0, #0xff
	ldrb r0, [r4, #5]
	bne _021D1932
	strb r0, [r5, #0x1d]
	b _021D193E
_021D1932:
	ldrb r1, [r5, #0x1e]
	lsl r2, r1, #3
	ldr r1, [sp]
	add r1, r1, r2
	add r1, #0x23
	strb r0, [r1]
_021D193E:
	ldrb r0, [r5, #0x1e]
	strb r0, [r4, #6]
	ldrb r0, [r4, #5]
	strb r0, [r5, #0x1e]
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
_021D1950:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp]
	ldrb r0, [r0]
	cmp r6, r0
	blt _021D18FA
_021D195E:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov79_021D18B4

	thumb_func_start ov79_021D196C
ov79_021D196C: ; 0x021D196C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r1, r5, #0
	bl ov79_021D18B4
	strb r0, [r5, #0x1c]
	ldrb r0, [r5, #0x1c]
	ldr r1, [r5, #0]
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1, #0]
	ldrb r4, [r5, #0x1e]
	cmp r4, #0xff
	beq _021D19E6
	mov r7, #0
_021D1992:
	ldr r1, [r5, #0x20]
	lsl r0, r4, #3
	add r1, #0x1c
	add r6, r1, r0
	ldrb r4, [r6, #6]
	ldrb r1, [r6, #2]
	ldr r0, [r5, #0x28]
	bl sub_02015918
	add r2, r0, #0
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	add r3, r7, #0
	bl sub_0200B48C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r2, [r6, #1]
	ldr r0, [r5, #0x30]
	mov r1, #1
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x3c]
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0xcc
	ldrb r2, [r6, #5]
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x34]
	bl sub_02013A6C
	cmp r4, #0xff
	bne _021D1992
_021D19E6:
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x38]
	mov r2, #0xff
	bl sub_02013A6C
	add r1, r5, #0
	ldr r0, _021D1AB4 ; =0x021D3BB0
	add r1, #0x84
	mov r2, #0x20
	bl sub_020C4DB0
	ldr r0, [r5, #0x20]
	ldrh r1, [r0, #6]
	add r0, r5, #0
	add r0, #0x82
	strh r1, [r0]
	ldr r0, [r5, #0x20]
	ldrh r1, [r0, #4]
	add r0, r5, #0
	add r0, #0x80
	strh r1, [r0]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021D1A64
	add r0, r5, #0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	bne _021D1A48
	add r0, r5, #0
	add r0, #0x82
	ldrh r1, [r0]
	cmp r1, #0
	beq _021D1A5E
	ldrb r0, [r5, #0x1c]
	sub r0, r0, #1
	cmp r1, r0
	blt _021D1A5E
	add r0, r5, #0
	add r0, #0x82
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x82
	strh r1, [r0]
	b _021D1A5E
_021D1A48:
	add r1, r0, #6
	ldrb r0, [r5, #0x1c]
	cmp r1, r0
	blt _021D1A5E
	add r0, r5, #0
	add r0, #0x80
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x80
	strh r1, [r0]
_021D1A5E:
	ldr r0, [r5, #0x20]
	mov r1, #0
	strb r1, [r0, #2]
_021D1A64:
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0xe8
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xa0
	str r5, [r0, #0]
	add r0, r5, #0
	add r2, r5, #0
	ldrb r1, [r5, #0x1c]
	add r0, #0x94
	add r2, #0x82
	strh r1, [r0]
	mov r0, #0
	strh r0, [r5, #0x16]
	add r1, r5, #0
	add r1, #0x80
	ldr r3, [r5, #0]
	add r0, r5, #0
	lsl r3, r3, #0x18
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r0, #0x84
	lsr r3, r3, #0x18
	bl sub_0200112C
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	mov r0, #1
	strh r0, [r5, #0x16]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1AB4: .word 0x021D3BB0
	thumb_func_end ov79_021D196C

	thumb_func_start ov79_021D1AB8
ov79_021D1AB8: ; 0x021D1AB8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xb0
	str r0, [sp]
	mov r0, #0x60
	add r4, r1, #0
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe8
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	cmp r4, #0
	beq _021D1AE2
	add r0, r5, #0
	add r0, #0xe8
	bl sub_0201ACF4
_021D1AE2:
	add r0, r5, #0
	add r0, #0xc4
	add r1, r5, #0
	add r2, r5, #0
	ldr r0, [r0, #0]
	add r1, #0x80
	add r2, #0x82
	bl sub_02001384
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_02013A3C
	add r0, r5, #0
	add r0, #0x80
	ldrh r1, [r0]
	ldr r0, [r5, #0x20]
	strh r1, [r0, #4]
	add r0, r5, #0
	add r0, #0x82
	ldrh r1, [r0]
	ldr r0, [r5, #0x20]
	strh r1, [r0, #6]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r5, #0xcc
	str r1, [r5, #0]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov79_021D1AB8

	thumb_func_start ov79_021D1B24
ov79_021D1B24: ; 0x021D1B24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r2, #4
	bls _021D1B30
	b _021D1C36
_021D1B30:
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1B3C: ; jump table
	.short _021D1B46 - _021D1B3C - 2 ; case 0
	.short _021D1B76 - _021D1B3C - 2 ; case 1
	.short _021D1BA6 - _021D1B3C - 2 ; case 2
	.short _021D1BD4 - _021D1B3C - 2 ; case 3
	.short _021D1C02 - _021D1B3C - 2 ; case 4
_021D1B46:
	mov r0, #0x1e
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r7, r5, #2
	lsl r1, r5, #1
	ldr r0, [r6, r7]
	add r1, r5, r1
	bl sub_02021D6C
	ldr r0, [r6, r7]
	mov r1, #0
	bl sub_02021CC8
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	bl sub_0201C04C
	b _021D1C36
_021D1B76:
	mov r0, #0x1e
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r7, r5, #2
	ldr r0, [r6, r7]
	bl sub_02021DE0
	ldr r0, [r6, r7]
	mov r1, #1
	bl sub_02021CC8
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	mov r2, #4
	add r3, r1, #0
	bl sub_0201C04C
	mov r0, #1
	strh r0, [r4, #0x14]
	b _021D1C36
_021D1BA6:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r1, r5, #1
	add r1, r5, r1
	add r1, r1, #1
	bl sub_02021D6C
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	bl sub_0201C04C
	mov r0, #0
	strh r0, [r4, #0x14]
	b _021D1C36
_021D1BD4:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r1, r5, #1
	add r1, r5, r1
	add r1, r1, #2
	bl sub_02021D6C
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	mov r2, #2
	add r3, r1, #0
	bl sub_0201C04C
	mov r0, #1
	strh r0, [r4, #0x14]
	b _021D1C36
_021D1C02:
	mov r0, #0x1e
	lsl r0, r0, #4
	lsl r1, r5, #1
	add r1, r5, r1
	add r6, r4, r0
	lsl r7, r5, #2
	ldr r0, [r6, r7]
	add r1, r1, #1
	bl sub_02021D6C
	ldr r0, [r6, r7]
	mov r1, #1
	bl sub_02021CC8
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	mov r2, #2
	add r3, r1, #0
	bl sub_0201C04C
	mov r0, #0
	strh r0, [r4, #0x14]
_021D1C36:
	add r0, r5, #7
	add r4, #0xe8
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A954
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov79_021D1B24

	thumb_func_start ov79_021D1C44
ov79_021D1C44: ; 0x021D1C44
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _021D1D14 ; =0x000005E4
	add r5, r1, #0
	bl sub_02005748
	ldrh r1, [r4, #0x14]
	ldr r0, _021D1D18 ; =0x0000FFFF
	cmp r1, r0
	beq _021D1C76
	ldrb r1, [r4, #0x1b]
	cmp r5, r1
	bne _021D1C6E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov79_021D1B24
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D1C6E:
	add r0, r4, #0
	mov r2, #0
	bl ov79_021D1B24
_021D1C76:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov79_021D1B24
	add r0, r4, #0
	mov r1, #0
	strb r5, [r4, #0x1b]
	bl ov79_021D1AB8
	add r0, r4, #0
	mov r2, #0
	add r0, #0x82
	strh r2, [r0]
	add r0, r4, #0
	add r0, #0x82
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x80
	strh r1, [r0]
	ldr r0, [r4, #0x20]
	strh r2, [r0, #6]
	ldr r1, [r4, #0x20]
	ldrh r0, [r1, #6]
	strh r0, [r1, #4]
	add r0, r4, #0
	bl ov79_021D196C
	mov r1, #0xa0
	str r1, [sp]
	mov r0, #0x18
	add r1, #0xa8
	str r0, [sp, #4]
	add r0, r4, r1
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	ldrb r1, [r4, #0x1b]
	cmp r1, #5
	bne _021D1CD8
	mov r0, #0x52
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A954
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D1CD8:
	lsl r1, r1, #2
	add r1, r4, r1
	mov r0, #0
	ldr r1, [r1, #0x68]
	add r2, r0, #0
	bl sub_02002D7C
	mov r2, #0xa0
	sub r3, r2, r0
	mov r0, #3
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1D1C ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r2, #0xa8
	str r1, [sp, #0xc]
	add r0, r4, r2
	ldrb r2, [r4, #0x1b]
	lsl r2, r2, #2
	add r2, r4, r2
	lsr r4, r3, #0x1f
	add r4, r3, r4
	ldr r2, [r2, #0x68]
	asr r3, r4, #1
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D1D14: .word 0x000005E4
_021D1D18: .word 0x0000FFFF
_021D1D1C: .word 0x00010200
	thumb_func_end ov79_021D1C44

	thumb_func_start ov79_021D1D20
ov79_021D1D20: ; 0x021D1D20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r6, _021D1D84 ; =0x00000001
	bne _021D1D4A
	mov r4, #0
	mov r6, #0x73
	add r7, r4, #0
	lsl r6, r6, #2
_021D1D32:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021D1D32
	pop {r3, r4, r5, r6, r7, pc}
_021D1D4A:
	mov r4, #0
_021D1D4C:
	ldrb r0, [r7, #4]
	tst r0, r6
	beq _021D1D64
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	b _021D1D74
_021D1D64:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
_021D1D74:
	lsl r0, r6, #0x19
	lsr r6, r0, #0x18
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021D1D4C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1D84: .word 0x00000001
	thumb_func_end ov79_021D1D20

	thumb_func_start ov79_021D1D88
ov79_021D1D88: ; 0x021D1D88
	ldr r3, _021D1D90 ; =sub_02001504
	mov r1, #0x13
	bx r3
	nop
_021D1D90: .word sub_02001504
	thumb_func_end ov79_021D1D88

	thumb_func_start ov79_021D1D94
ov79_021D1D94: ; 0x021D1D94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x13
	add r7, r0, #0
	add r6, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r6, #0
	bne _021D1DB0
	ldr r0, _021D1ED0 ; =0x000005DC
	bl sub_02005748
_021D1DB0:
	add r1, sp, #0x10
	add r0, r7, #0
	add r1, #2
	add r2, sp, #0x10
	bl sub_020014DC
	add r2, sp, #0x10
	ldrh r2, [r2]
	mov r0, #7
	lsl r0, r0, #6
	lsl r2, r2, #4
	add r2, #0x28
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0x69
	asr r2, r2, #0x10
	bl sub_0200D494
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _021D1DEA
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _021D1DF6
_021D1DEA:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
_021D1DF6:
	add r0, sp, #0x10
	ldrh r1, [r0, #2]
	ldrb r0, [r4, #0x1c]
	sub r0, r0, #6
	cmp r1, r0
	bge _021D1E10
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	b _021D1E1C
_021D1E10:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_021D1E1C:
	mov r0, #0x50
	str r0, [sp]
	mov r1, #0
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xf8
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	cmp r5, #0xff
	bne _021D1E58
	add r0, r4, #0
	mov r1, #0
	bl ov79_021D1D20
	add r0, r4, #0
	add r0, #0xf8
	bl sub_0201A954
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_0200D3F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D1E58:
	ldr r1, [r4, #0x20]
	lsl r5, r5, #3
	add r1, #0x1c
	add r0, r4, #0
	add r1, r1, r5
	bl ov79_021D1D20
	ldr r0, [r4, #0x34]
	bl sub_020237E8
	ldr r0, [r4, #0x20]
	add r0, r0, r5
	ldrb r2, [r0, #0x1f]
	cmp r2, #0x63
	bls _021D1E78
	mov r2, #0x63
_021D1E78:
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	ldr r0, _021D1ED4 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x34]
	add r0, #0xf8
	mov r3, #8
	bl sub_0201D78C
	ldr r2, [r4, #0x20]
	mov r1, #0x7e
	lsl r1, r1, #2
	add r2, r2, r5
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldrb r2, [r2, #0x1e]
	ldr r1, [r4, r1]
	bl sub_0209933C
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0, #4]
	bl sub_0200D3F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1ED0: .word 0x000005DC
_021D1ED4: .word 0x00010200
	thumb_func_end ov79_021D1D94

	thumb_func_start ov79_021D1ED8
ov79_021D1ED8: ; 0x021D1ED8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #3
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
	mov r4, #0
_021D1EEC:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r2, r4, #1
	add r3, r4, #0
	bl sub_02013A4C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D1EEC
	add r1, r5, #0
	ldr r0, _021D1F5C ; =0x021D3B90
	add r1, #0xa4
	mov r2, #0x20
	bl sub_020C4DB0
	mov r0, #0x46
	lsl r0, r0, #2
	add r1, r5, #0
	add r0, r5, r0
	add r1, #0xb0
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xd0
	ldr r2, [r1, #0]
	add r1, r5, #0
	add r1, #0xa4
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0xc0
	str r5, [r1, #0]
	add r1, r5, #0
	mov r2, #3
	add r1, #0xb4
	strh r2, [r1]
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xf
	bl sub_0200DC48
	ldr r3, [r5, #0]
	add r0, r5, #0
	mov r1, #0
	lsl r3, r3, #0x18
	add r0, #0xa4
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_0200112C
	add r5, #0xc8
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	nop
_021D1F5C: .word 0x021D3B90
	thumb_func_end ov79_021D1ED8

	thumb_func_start ov79_021D1F60
ov79_021D1F60: ; 0x021D1F60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xc8
	add r2, sp, #0
	ldr r0, [r0, #0]
	add r1, sp, #0
	add r2, #2
	bl sub_02001384
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02013A3C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r4, #0xd0
	str r1, [r4, #0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D1F60

	thumb_func_start ov79_021D1FA8
ov79_021D1FA8: ; 0x021D1FA8
	push {r3, lr}
	cmp r2, #0
	bne _021D1FB4
	ldr r0, _021D1FB8 ; =0x000005DC
	bl sub_02005748
_021D1FB4:
	pop {r3, pc}
	nop
_021D1FB8: .word 0x000005DC
	thumb_func_end ov79_021D1FA8

	thumb_func_start ov79_021D1FBC
ov79_021D1FBC: ; 0x021D1FBC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_020237E8
	ldrb r1, [r4, #0x1a]
	ldr r2, [r4, #0x20]
	ldr r0, [r4, #0x28]
	lsl r1, r1, #3
	add r1, r2, r1
	ldrb r1, [r1, #0x1e]
	bl sub_02015918
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200B48C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x44]
	bl sub_0200C388
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r4, #0x7c
	ldrb r2, [r4]
	mov r3, #1
	bl ov79_021D1850
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D1FBC

	thumb_func_start ov79_021D2008
ov79_021D2008: ; 0x021D2008
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_020237E8
	ldrb r1, [r4, #0x1a]
	ldr r2, [r4, #0x20]
	ldr r0, [r4, #0x28]
	lsl r1, r1, #3
	add r1, r2, r1
	ldrb r1, [r1, #0x1e]
	bl sub_02015918
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200B48C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x48]
	bl sub_0200C388
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r4, #0x7c
	ldrb r2, [r4]
	mov r3, #0
	bl ov79_021D1850
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D2008

	thumb_func_start ov79_021D2054
ov79_021D2054: ; 0x021D2054
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _021D2074 ; =0x021D3B88
	str r0, [sp]
	ldr r0, [r4, #0x24]
	mov r2, #0x1f
	mov r3, #0xf
	bl sub_02002100
	add r4, #0xd4
	str r0, [r4, #0]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D2074: .word 0x021D3B88
	thumb_func_end ov79_021D2054

	thumb_func_start ov79_021D2078
ov79_021D2078: ; 0x021D2078
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	ldr r0, _021D20E8 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r2, [r5, #0x4c]
	add r0, r5, r0
	mov r3, #4
	bl sub_0201D78C
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0xe8
	ldr r4, _021D20EC ; =0x021D3B80
	mov r6, #0
	str r0, [sp, #0x10]
_021D20A4:
	ldr r1, [r5, #0x50]
	mov r0, #2
	mov r2, #0
	bl sub_02002D7C
	mov r1, #0x40
	sub r3, r1, r0
	ldrb r0, [r4]
	lsr r7, r3, #0x1f
	add r7, r3, r7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021D20F0 ; =0x00020301
	asr r3, r7, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #7
	lsl r1, r0, #4
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x50]
	add r0, r0, r1
	mov r1, #2
	bl sub_0201D78C
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #1
	cmp r6, #6
	blt _021D20A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D20E8: .word 0x00010200
_021D20EC: .word 0x021D3B80
_021D20F0: .word 0x00020301
	thumb_func_end ov79_021D2078

	thumb_func_start ov79_021D20F4
ov79_021D20F4: ; 0x021D20F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #0x20
	bl sub_0201DBEC
	ldr r0, [r4, #0]
	bl sub_0200C6E4
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_0200C704
	mov r7, #0x6f
	lsl r7, r7, #2
	add r2, sp, #0x34
	ldr r3, _021D21C0 ; =0x021D3C00
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021D21C4 ; =0x021D3BD0
	stmia r2!, {r0, r1}
	add r3, sp, #0x20
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [r3, #0]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl sub_0200C73C
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0xe
	bl sub_0200C7C0
	ldr r0, [r4, #0]
	bl sub_0200A93C
	ldr r0, [r4, #0]
	bl sub_0200A944
	ldr r5, _021D21C8 ; =0x021D3BE4
	add r3, sp, #4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	sub r1, r7, #4
	str r0, [r3, #0]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8F0
	mov r1, #1
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02098FFC
	add r1, r7, #0
	add r1, #0x3c
	str r0, [r4, r1]
	bl sub_02035E38
	cmp r0, #0
	beq _021D21AC
	bl sub_02039734
_021D21AC:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D21C0: .word 0x021D3C00
_021D21C4: .word 0x021D3BD0
_021D21C8: .word 0x021D3BE4
	thumb_func_end ov79_021D20F4

	thumb_func_start ov79_021D21CC
ov79_021D21CC: ; 0x021D21CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0209903C
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200C8B0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200C8D4
	bl sub_0201DC3C
	pop {r4, pc}
	thumb_func_end ov79_021D21CC

	thumb_func_start ov79_021D21F8
ov79_021D21F8: ; 0x021D21F8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200C7EC
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02099160
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D21F8

	thumb_func_start ov79_021D2214
ov79_021D2214: ; 0x021D2214
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _021D2242
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021E90
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	pop {r4, pc}
_021D2242:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #9
	bl sub_02021E90
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	pop {r4, pc}
	thumb_func_end ov79_021D2214

	thumb_func_start ov79_021D2268
ov79_021D2268: ; 0x021D2268
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	add r4, r2, #0
	str r0, [r1, #8]
	add r7, r3, #0
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl sub_020BCFD0
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl sub_020BCFD0
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl sub_020BCFD0
	add r2, sp, #0
	str r0, [r5, #8]
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r6, #0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov79_021D2268

	thumb_func_start ov79_021D22AC
ov79_021D22AC: ; 0x021D22AC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x2e
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x6f
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x2e
	bl sub_0200681C
	mov r2, #0x6f
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0x2e
	str r0, [r4, #0]
	str r5, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov79_021D22AC

	thumb_func_start ov79_021D22E4
ov79_021D22E4: ; 0x021D22E4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #2
	blt _021D2308
	cmp r0, #5
	bgt _021D2308
	add r0, r4, #0
	add r0, #0x40
	bl ov79_021D3820
	ldr r0, [r4, #0x5c]
	bl sub_02099160
_021D2308:
	ldr r0, [r5, #0]
	cmp r0, #7
	bls _021D2310
	b _021D2442
_021D2310:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D231C: ; jump table
	.short _021D232C - _021D231C - 2 ; case 0
	.short _021D2372 - _021D231C - 2 ; case 1
	.short _021D238C - _021D231C - 2 ; case 2
	.short _021D23B6 - _021D231C - 2 ; case 3
	.short _021D23C4 - _021D231C - 2 ; case 4
	.short _021D23EE - _021D231C - 2 ; case 5
	.short _021D23FC - _021D231C - 2 ; case 6
	.short _021D240C - _021D231C - 2 ; case 7
_021D232C:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D2454 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D2458 ; =0x04001000
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
	b _021D2448
_021D2372:
	add r0, r4, #0
	bl ov79_021D247C
	cmp r0, #0
	bne _021D2382
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D2382:
	ldr r0, _021D245C ; =ov79_021D252C
	add r1, r4, #0
	bl sub_02017798
	b _021D2448
_021D238C:
	ldr r1, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #4]
	cmp r1, #4
	bge _021D239C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D239C:
	mov r0, #0
	str r0, [r4, #4]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #0]
	add r3, r0, #0
	str r2, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	b _021D2448
_021D23B6:
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D2448
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D23C4:
	add r0, r4, #0
	bl ov79_021D2928
	cmp r0, #0
	bne _021D23D4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D23D4:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	b _021D2448
_021D23EE:
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D2448
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D23FC:
	add r0, r4, #0
	bl ov79_021D24D4
	cmp r0, #0
	bne _021D2448
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021D240C:
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
	ldr r0, _021D2454 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D2458 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	b _021D2448
_021D2442:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021D2448:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D2454: .word 0xFFFFE0FF
_021D2458: .word 0x04001000
_021D245C: .word ov79_021D252C
	thumb_func_end ov79_021D22E4

	thumb_func_start ov79_021D2460
ov79_021D2460: ; 0x021D2460
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006830
	ldr r0, [r4, #0]
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov79_021D2460

	thumb_func_start ov79_021D247C
ov79_021D247C: ; 0x021D247C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021D2490
	cmp r1, #1
	beq _021D249C
	cmp r1, #2
	beq _021D24A8
	b _021D24C8
_021D2490:
	bl ov79_021D257C
	add r0, r4, #0
	bl ov79_021D2634
	b _021D24C8
_021D249C:
	bl ov79_021D2768
	add r0, r4, #0
	bl ov79_021D270C
	b _021D24C8
_021D24A8:
	bl ov79_021D27D8
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0]
	add r0, #0x40
	add r1, #0x30
	bl ov79_021D3768
	add r0, r4, #0
	bl ov79_021D2864
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021D24C8:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D247C

	thumb_func_start ov79_021D24D4
ov79_021D24D4: ; 0x021D24D4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #3
	bhi _021D2520
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D24EA: ; jump table
	.short _021D24F2 - _021D24EA - 2 ; case 0
	.short _021D2506 - _021D24EA - 2 ; case 1
	.short _021D2512 - _021D24EA - 2 ; case 2
	.short _021D2518 - _021D24EA - 2 ; case 3
_021D24F2:
	bl ov79_021D2908
	add r0, r4, #0
	add r0, #0x40
	bl ov79_021D385C
	add r0, r4, #0
	bl ov79_021D2858
	b _021D2520
_021D2506:
	bl ov79_021D2754
	add r0, r4, #0
	bl ov79_021D27AC
	b _021D2520
_021D2512:
	bl ov79_021D260C
	b _021D2520
_021D2518:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021D2520:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D24D4

	thumb_func_start ov79_021D252C
ov79_021D252C: ; 0x021D252C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	bl sub_0201C2B8
	ldr r0, [r4, #0x44]
	bl sub_02008A94
	bl sub_0200C800
	bl sub_0201DCAC
	ldr r3, _021D2554 ; =0x027E0000
	ldr r1, _021D2558 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D2554: .word 0x027E0000
_021D2558: .word 0x00003FF8
	thumb_func_end ov79_021D252C

	thumb_func_start ov79_021D255C
ov79_021D255C: ; 0x021D255C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D2578 ; =0x021D3C70
	add r3, sp, #0
	mov r2, #5
_021D2566:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2566
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D2578: .word 0x021D3C70
	thumb_func_end ov79_021D255C

	thumb_func_start ov79_021D257C
ov79_021D257C: ; 0x021D257C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r0, #0
	bl ov79_021D255C
	ldr r0, [r5, #0]
	bl sub_02018340
	add r3, sp, #8
	ldr r4, _021D2600 ; =0x021D3C2C
	str r0, [r5, #0x68]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r4, _021D2604 ; =0x021D3C98
	add r3, sp, #0x18
	mov r2, #0xa
_021D25A8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D25A8
	ldr r1, _021D2608 ; =0x021D3C20
	ldr r0, [r4, #0]
	ldrb r2, [r1]
	str r0, [r3, #0]
	add r0, sp, #4
	strb r2, [r0]
	ldrb r2, [r1, #1]
	ldrb r1, [r1, #2]
	add r4, sp, #4
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	mov r0, #0
	str r0, [sp]
	add r6, sp, #0x18
_021D25CC:
	ldrb r7, [r4]
	ldr r0, [r5, #0x68]
	add r2, r6, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #0x68]
	add r1, r7, #0
	bl sub_02019EBC
	ldr r3, [r5, #0]
	add r0, r7, #0
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #1
	add r6, #0x1c
	str r0, [sp]
	cmp r0, #3
	blt _021D25CC
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2600: .word 0x021D3C2C
_021D2604: .word 0x021D3C98
_021D2608: .word 0x021D3C20
	thumb_func_end ov79_021D257C

	thumb_func_start ov79_021D260C
ov79_021D260C: ; 0x021D260C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #1
_021D2612:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x68]
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	cmp r4, #3
	blt _021D2612
	ldr r0, [r5, #0x68]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r5, #0x68]
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov79_021D260C

	thumb_func_start ov79_021D2634
ov79_021D2634: ; 0x021D2634
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x57
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r0, #3
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r1, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x20
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xa0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	mov r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0]
	add r2, r4, #0
	mov r3, #0x57
	bl sub_0208C210
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [r5, #0x68]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r5, #0x68]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov79_021D2634

	thumb_func_start ov79_021D270C
ov79_021D270C: ; 0x021D270C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x68]
	ldr r2, _021D2750 ; =0x021D3C24
	add r1, #0x6c
	bl sub_0201A8D4
	add r0, r4, #0
	add r0, #0x6c
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0x10]
	mov r1, #1
	ldrb r0, [r0, #0xb]
	add r2, r1, #0
	mov r3, #0xe
	str r0, [sp]
	ldr r0, [r4, #0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x68]
	bl sub_0200DD0C
	mov r1, #0x1e
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #4
	bl sub_02002E98
	add sp, #8
	pop {r4, pc}
	nop
_021D2750: .word 0x021D3C24
	thumb_func_end ov79_021D270C

	thumb_func_start ov79_021D2754
ov79_021D2754: ; 0x021D2754
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x6c
	bl sub_0201ACF4
	add r4, #0x6c
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov79_021D2754

	thumb_func_start ov79_021D2768
ov79_021D2768: ; 0x021D2768
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r2, _021D27A8 ; =0x000001CE
	ldr r3, [r6, #0]
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [r6, #0x18]
	ldr r2, [r6, #0]
	mov r0, #1
	mov r1, #0x40
	bl sub_0200B368
	str r0, [r6, #0x1c]
	ldr r1, [r6, #0]
	mov r0, #0x40
	bl sub_02023790
	str r0, [r6, #0x20]
	mov r4, #0
	add r5, r6, #0
_021D2794:
	ldr r0, [r6, #0x18]
	add r1, r4, #0
	bl sub_0200B1EC
	str r0, [r5, #0x24]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D2794
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D27A8: .word 0x000001CE
	thumb_func_end ov79_021D2768

	thumb_func_start ov79_021D27AC
ov79_021D27AC: ; 0x021D27AC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021D27B4:
	ldr r0, [r5, #0x24]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D27B4
	ldr r0, [r6, #0x20]
	bl sub_020237BC
	ldr r0, [r6, #0x1c]
	bl sub_0200B3F0
	ldr r0, [r6, #0x18]
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov79_021D27AC

	thumb_func_start ov79_021D27D8
ov79_021D27D8: ; 0x021D27D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #5
	ldr r0, [r0, #0]
	mov r2, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	bl sub_02074470
	strh r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	bl sub_02075D6C
	add r1, r4, #0
	add r1, #0x37
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	bl sub_02075BCC
	add r1, r4, #0
	add r1, #0x36
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	mov r1, #0x70
	ldr r0, [r0, #0]
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldrh r0, [r4, #0x34]
	mov r2, #0x1c
	bl sub_020759CC
	mov r1, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x38
	strb r1, [r0]
	ldr r1, [r4, #0]
	mov r0, #0xc
	bl sub_02023790
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x3c]
	ldr r0, [r0, #0]
	mov r1, #0x77
	bl sub_02074470
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x36
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	bl sub_02098EAC
	add r4, #0x39
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D27D8

	thumb_func_start ov79_021D2858
ov79_021D2858: ; 0x021D2858
	ldr r3, _021D2860 ; =sub_020237BC
	ldr r0, [r0, #0x3c]
	bx r3
	nop
_021D2860: .word sub_020237BC
	thumb_func_end ov79_021D2858

	thumb_func_start ov79_021D2864
ov79_021D2864: ; 0x021D2864
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r4, r0, #0
	ldr r1, [r4, #0]
	mov r0, #0x20
	bl sub_0201DBEC
	ldr r0, [r4, #0]
	bl sub_0200C6E4
	add r2, sp, #0x24
	ldr r5, _021D2900 ; =0x021D3C50
	str r0, [r4, #0x7c]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _021D2904 ; =0x021D3C3C
	stmia r2!, {r0, r1}
	add r5, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	ldr r0, [r4, #0x7c]
	mov r3, #0x20
	bl sub_0200C73C
	ldr r0, [r4, #0]
	bl sub_0200A93C
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #1
	bl sub_02098FFC
	str r0, [r4, #0x5c]
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x5c]
	ldrh r1, [r1, #8]
	mov r2, #0x64
	mov r3, #0x5a
	bl sub_0209916C
	str r0, [r4, #0x60]
	ldr r0, [r0, #4]
	mov r1, #0
	bl sub_0200D3F4
	bl sub_02035E38
	cmp r0, #0
	beq _021D28F4
	bl sub_02039734
_021D28F4:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D2900: .word 0x021D3C50
_021D2904: .word 0x021D3C3C
	thumb_func_end ov79_021D2864

	thumb_func_start ov79_021D2908
ov79_021D2908: ; 0x021D2908
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x60]
	bl sub_02099370
	ldr r0, [r4, #0x5c]
	bl sub_0209903C
	ldr r0, [r4, #0x7c]
	bl sub_0200C8D4
	bl sub_0201DC3C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D2908

	thumb_func_start ov79_021D2928
ov79_021D2928: ; 0x021D2928
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #8
	bhi _021D29A8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D293E: ; jump table
	.short _021D2950 - _021D293E - 2 ; case 0
	.short _021D295C - _021D293E - 2 ; case 1
	.short _021D2968 - _021D293E - 2 ; case 2
	.short _021D2974 - _021D293E - 2 ; case 3
	.short _021D2980 - _021D293E - 2 ; case 4
	.short _021D298C - _021D293E - 2 ; case 5
	.short _021D2998 - _021D293E - 2 ; case 6
	.short _021D29A0 - _021D293E - 2 ; case 7
	.short _021D29A8 - _021D293E - 2 ; case 8
_021D2950:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2A04
	str r0, [r4, #4]
	b _021D29B0
_021D295C:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2AE0
	str r0, [r4, #4]
	b _021D29B0
_021D2968:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2AF0
	str r0, [r4, #4]
	b _021D29B0
_021D2974:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2B3C
	str r0, [r4, #4]
	b _021D29B0
_021D2980:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2B54
	str r0, [r4, #4]
	b _021D29B0
_021D298C:
	add r1, r4, #0
	add r1, #0x80
	bl ov79_021D2B84
	str r0, [r4, #4]
	b _021D29B0
_021D2998:
	bl ov79_021D2B94
	str r0, [r4, #4]
	b _021D29B0
_021D29A0:
	bl ov79_021D2C08
	str r0, [r4, #4]
	b _021D29B0
_021D29A8:
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021D29B0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D2928

	thumb_func_start ov79_021D29B4
ov79_021D29B4: ; 0x021D29B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r3, r5, #0
	add r0, r1, #0
	mov r2, #0x1c
	add r3, #0xcc
	mul r0, r2
	add r4, r3, r0
	add r0, r4, #0
	mov r1, #0
	bl sub_020C4CF4
	str r5, [r4, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #0x18]
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov79_021D29B4

	thumb_func_start ov79_021D29E4
ov79_021D29E4: ; 0x021D29E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0200DA58
	ldr r1, [r4, #0x14]
	mov r2, #0x1c
	ldr r0, [r1, #4]
	sub r0, r0, #1
	str r0, [r1, #4]
	add r0, r4, #0
	mov r1, #0
	bl sub_020C4CF4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov79_021D29E4

	thumb_func_start ov79_021D2A04
ov79_021D2A04: ; 0x021D2A04
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	mov r2, #0x4f
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	ldr r0, [r5, #0x60]
	mov r2, #0x18
	ldr r0, [r0, #4]
	ldr r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0, #0]
	ldr r1, [r5, #0x58]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r5, #0x39
	ldrb r0, [r5]
	mov r1, #2
	lsl r1, r1, #0x12
	str r0, [r4, #8]
	str r2, [r4, #0]
	mov r0, #0xe
	str r1, [r4, #0xc]
	lsl r0, r0, #0x10
	str r0, [r4, #0x10]
	str r1, [r4, #0x18]
	lsl r0, r2, #0xe
	str r0, [r4, #0x1c]
	lsr r0, r1, #7
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	lsr r0, r1, #8
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	add r1, r4, #0
	str r2, [r4, #0x64]
	mov r0, #0
	str r0, [r4, #0x60]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, #0xc
	bl sub_02021C50
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc
	add r1, #0x18
	add r2, sp, #0xc
	bl sub_020BD1B0
	add r1, r4, #0
	mov r3, #6
	add r0, sp, #0
	add r1, #0x48
	add r2, sp, #0xc
	lsl r3, r3, #0xe
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CF8
	add r0, r4, #0
	add r0, #0xc4
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r1, #0x30
	bl sub_02021C70
	ldr r2, _021D2AD0 ; =ov79_021D2C50
	add r0, r4, #0
	mov r1, #0
	bl ov79_021D29B4
	ldr r2, _021D2AD4 ; =ov79_021D2D7C
	add r0, r4, #0
	mov r1, #1
	bl ov79_021D29B4
	ldr r2, _021D2AD8 ; =ov79_021D2F4C
	add r0, r4, #0
	mov r1, #2
	bl ov79_021D29B4
	ldr r2, _021D2ADC ; =ov79_021D3094
	add r0, r4, #0
	mov r1, #3
	bl ov79_021D29B4
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D2AD0: .word ov79_021D2C50
_021D2AD4: .word ov79_021D2D7C
_021D2AD8: .word ov79_021D2F4C
_021D2ADC: .word ov79_021D3094
	thumb_func_end ov79_021D2A04

	thumb_func_start ov79_021D2AE0
ov79_021D2AE0: ; 0x021D2AE0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _021D2AEA
	mov r0, #1
	bx lr
_021D2AEA:
	mov r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end ov79_021D2AE0

	thumb_func_start ov79_021D2AF0
ov79_021D2AF0: ; 0x021D2AF0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	add r1, r4, #0
	add r1, #0x39
	ldrb r1, [r1]
	cmp r1, #1
	ldr r1, [r4, #0]
	bne _021D2B22
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r1, [r4, #0x34]
	mov r0, #0xb
	mov r2, #0
	mov r3, #0x7f
	bl sub_020059D0
	b _021D2B36
_021D2B22:
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0
	ldrh r1, [r4, #0x34]
	add r2, r0, #0
	mov r3, #0x7f
	bl sub_020059D0
_021D2B36:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov79_021D2AF0

	thumb_func_start ov79_021D2B3C
ov79_021D2B3C: ; 0x021D2B3C
	push {r3, lr}
	bl sub_0200598C
	cmp r0, #0
	beq _021D2B4A
	mov r0, #3
	pop {r3, pc}
_021D2B4A:
	mov r0, #0
	bl sub_0200592C
	mov r0, #4
	pop {r3, pc}
	thumb_func_end ov79_021D2B3C

	thumb_func_start ov79_021D2B54
ov79_021D2B54: ; 0x021D2B54
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	mov r2, #0x5c
	bl sub_020C4CF4
	ldr r2, _021D2B7C ; =ov79_021D3290
	add r0, r4, #0
	mov r1, #0
	bl ov79_021D29B4
	ldr r2, _021D2B80 ; =ov79_021D33DC
	add r0, r4, #0
	mov r1, #1
	bl ov79_021D29B4
	mov r0, #5
	pop {r4, pc}
	; .align 2, 0
_021D2B7C: .word ov79_021D3290
_021D2B80: .word ov79_021D33DC
	thumb_func_end ov79_021D2B54

	thumb_func_start ov79_021D2B84
ov79_021D2B84: ; 0x021D2B84
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _021D2B8E
	mov r0, #5
	bx lr
_021D2B8E:
	mov r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end ov79_021D2B84

	thumb_func_start ov79_021D2B94
ov79_021D2B94: ; 0x021D2B94
	push {r4, lr}
	sub sp, #0x10
	mov r1, #1
	add r4, r0, #0
	add r0, #0x6c
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
	add r0, r4, #0
	add r0, #0x6c
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r0, [r4, #0x20]
	bl sub_020237E8
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x3c]
	mov r1, #0
	bl sub_0200B48C
	add r2, r4, #0
	add r2, #0x39
	ldrb r2, [r2]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x10]
	mov r1, #1
	ldrb r0, [r0, #0xa]
	str r0, [sp, #4]
	ldr r0, _021D2C04 ; =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x20]
	add r0, #0x6c
	bl sub_0201D78C
	strh r0, [r4, #0xc]
	mov r0, #0
	strh r0, [r4, #0xe]
	mov r0, #7
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D2C04: .word 0x0001020F
	thumb_func_end ov79_021D2B94

	thumb_func_start ov79_021D2C08
ov79_021D2C08: ; 0x021D2C08
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _021D2C1E
	mov r0, #7
	pop {r4, pc}
_021D2C1E:
	ldr r0, _021D2C4C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _021D2C36
	ldrh r1, [r4, #0xe]
	add r0, r1, #1
	strh r0, [r4, #0xe]
	cmp r1, #0x5a
	bhs _021D2C36
	mov r0, #7
	pop {r4, pc}
_021D2C36:
	add r0, r4, #0
	add r0, #0x6c
	mov r1, #1
	bl sub_0200E084
	add r4, #0x6c
	add r0, r4, #0
	bl sub_0201ACF4
	mov r0, #8
	pop {r4, pc}
	; .align 2, 0
_021D2C4C: .word 0x021BF67C
	thumb_func_end ov79_021D2C08

	thumb_func_start ov79_021D2C50
ov79_021D2C50: ; 0x021D2C50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	mov r0, #0x18
	add r5, r4, #0
	str r0, [r6, #4]
	mov r0, #1
	add r5, #0xc
	lsl r0, r0, #0xc
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	lsr r0, r0, #1
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x24
	add r1, #0x30
	add r2, sp, #0xc
	bl sub_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D2C96
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D2CA4
_021D2C96:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D2CA4:
	bl sub_020E1740
	add r1, r5, #0
	add r3, r0, #0
	add r0, sp, #0
	add r1, #0x3c
	add r2, sp, #0xc
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CAC
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CF8
	add r4, #0xc4
	add r5, #0x24
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02021C70
	ldr r1, _021D2CE8 ; =ov79_021D2CEC
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2CE8: .word ov79_021D2CEC
	thumb_func_end ov79_021D2C50

	thumb_func_start ov79_021D2CEC
ov79_021D2CEC: ; 0x021D2CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	add r4, r6, #0
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r4, #0xc
	ldr r0, [r4, #0x3c]
	ldr r2, [r5, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	add r3, r1, #0
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r7
	ldr r1, [r4, #0x24]
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	sub r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x40]
	ldr r2, [r5, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r3, #2
	ldr r2, [r4, #0x28]
	add r4, r7, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	sub r0, r2, r1
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, sp, #0
	bl sub_02021C70
	mov r0, #1
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D2D78
	add r6, #0xc4
	ldr r0, [r6, #0]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r5, #0
	bl ov79_021D29E4
_021D2D78:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov79_021D2CEC

	thumb_func_start ov79_021D2D7C
ov79_021D2D7C: ; 0x021D2D7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	add r7, r0, #0
	add r3, sp, #0xc
	mov r0, #0
	str r0, [r3, #0]
	str r0, [r3, #4]
	str r0, [r3, #8]
	mov r2, #0x18
	mov r1, #2
	add r4, r6, #0
	mov r0, #0xe
	str r2, [r5, #4]
	lsl r1, r1, #0x12
	add r4, #0xc
	str r1, [r6, #0xc]
	lsl r0, r0, #0x10
	str r0, [r4, #4]
	str r1, [r4, #0xc]
	lsl r0, r2, #0xe
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xc
	add r1, r4, #0
	add r2, r3, #0
	bl sub_020BD1B0
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021D2DCE
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D2DDC
_021D2DCE:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D2DDC:
	bl sub_020E1740
	add r1, r4, #0
	add r3, r0, #0
	add r0, sp, #0
	add r1, #0x18
	add r2, sp, #0xc
	bl ov79_021D2268
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021D2E06
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D2E14
_021D2E06:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D2E14:
	bl sub_020E1740
	add r1, r0, #0
	mov r0, #0x2d
	lsl r0, r0, #0xe
	bl sub_020BCFD0
	str r0, [r4, #0x48]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021D2E3C
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D2E4A
_021D2E3C:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D2E4A:
	bl sub_020E1740
	add r1, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_020BCFD0
	add r6, #0xc4
	str r0, [r4, #0x4c]
	ldr r0, [r6, #0]
	add r1, r4, #0
	bl sub_02021C50
	ldr r1, _021D2E70 ; =ov79_021D2E74
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2E70: .word ov79_021D2E74
	thumb_func_end ov79_021D2D7C

	thumb_func_start ov79_021D2E74
ov79_021D2E74: ; 0x021D2E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	ldr r2, [r5, #0xc]
	add r4, r6, #0
	add r4, #0xc
	ldr r0, [r4, #0x18]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	add r3, r1, #0
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r7
	ldr r1, [r6, #0xc]
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldr r2, [r5, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	mov r0, #2
	add r3, r1, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r7
	ldr r1, [r4, #4]
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x48]
	ldr r2, [r5, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	add r3, r7, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, _021D2F48 ; =0xFFFC0000
	asr r1, r0, #0x1f
	asr r3, r2, #0x12
	bl sub_020E1F1C
	add r3, r7, #0
	mov r7, #2
	add r2, r1, #0
	lsl r7, r7, #0xa
	add r0, r0, r7
	adc r2, r3
	lsl r2, r2, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	asr r4, r0, #0x1f
	lsr r2, r0, #0x14
	lsl r4, r4, #0xc
	orr r4, r2
	lsl r0, r0, #0xc
	add r2, r0, r7
	adc r4, r3
	ldr r1, [sp, #4]
	lsl r0, r4, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	add r0, r1, r2
	add r6, #0xc4
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	add r1, sp, #0
	bl sub_02021C50
	ldr r1, [r5, #0xc]
	lsl r0, r7, #1
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D2F44
	add r0, r5, #0
	bl ov79_021D29E4
_021D2F44:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2F48: .word 0xFFFC0000
	thumb_func_end ov79_021D2E74

	thumb_func_start ov79_021D2F4C
ov79_021D2F4C: ; 0x021D2F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	add r5, r4, #0
	mov r1, #0x18
	mov r0, #1
	add r5, #0x68
	str r1, [r6, #4]
	lsl r0, r0, #0xc
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	lsl r0, r1, #8
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x30
	add r1, #0x24
	add r2, sp, #0xc
	bl sub_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D2F92
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D2FA0
_021D2F92:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D2FA0:
	bl sub_020E1740
	add r5, #0x3c
	add r3, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	add r2, sp, #0xc
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc8
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r0, #0]
	add r2, #0xf4
	bl sub_02007DEC
	add r4, #0xc8
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r1, _021D2FDC ; =ov79_021D2FE0
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2FDC: .word ov79_021D2FE0
	thumb_func_end ov79_021D2F4C

	thumb_func_start ov79_021D2FE0
ov79_021D2FE0: ; 0x021D2FE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	ldr r0, [r5, #0xc]
	add r4, r6, #0
	add r4, #0x68
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	ldr r0, [r4, #0x40]
	ldr r2, [sp, #4]
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl sub_020E1F1C
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021D3090 ; =0x00000000
	ldr r0, [r4, #0x28]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #4]
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	add r3, r0, #0
	add r0, r6, #0
	add r7, r1, #0
	add r0, #0xc8
	lsl r2, r2, #0xa
	mov r1, #0xc
	add r3, r3, r2
	ldr r2, _021D3090 ; =0x00000000
	ldr r4, [r4, #0x24]
	adc r7, r2
	lsl r2, r7, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	add r2, r4, r3
	ldr r0, [r0, #0]
	asr r2, r2, #4
	bl sub_02007DEC
	add r0, r6, #0
	add r0, #0xc8
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #0xd
	asr r2, r2, #4
	bl sub_02007DEC
	mov r0, #1
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D308A
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #0x80
	bl sub_02007DEC
	add r6, #0xc8
	ldr r0, [r6, #0]
	mov r1, #1
	mov r2, #0x60
	bl sub_02007DEC
	add r0, r5, #0
	bl ov79_021D29E4
_021D308A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3090: .word 0x00000000
	thumb_func_end ov79_021D2FE0

	thumb_func_start ov79_021D3094
ov79_021D3094: ; 0x021D3094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	mov r0, #0x18
	mov r1, #2
	add r5, r4, #0
	str r0, [r6, #4]
	lsl r1, r1, #0x12
	add r5, #0x68
	str r1, [r4, #0x68]
	lsl r0, r0, #0xe
	str r0, [r5, #4]
	mov r0, #7
	str r1, [r5, #0xc]
	lsl r0, r0, #0x10
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r0, #0xc
	add r1, r5, #0
	add r2, sp, #0xc
	bl sub_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D30DC
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D30EA
_021D30DC:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D30EA:
	bl sub_020E1740
	add r1, r5, #0
	add r3, r0, #0
	add r0, sp, #0
	add r1, #0x18
	add r2, sp, #0xc
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc8
	ldr r2, [r5, #0]
	ldr r0, [r0, #0]
	mov r1, #0
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r4, #0xc8
	ldr r2, [r5, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r1, _021D3128 ; =ov79_021D312C
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3128: .word ov79_021D312C
	thumb_func_end ov79_021D3094

	thumb_func_start ov79_021D312C
ov79_021D312C: ; 0x021D312C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	ldr r5, [r6, #0x14]
	ldr r7, [r6, #0xc]
	add r4, r5, #0
	str r0, [sp]
	asr r0, r7, #0x1f
	str r0, [sp, #8]
	add r4, #0x68
	ldr r0, [r4, #0x1c]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021D3260 ; =0x00000000
	ldr r0, [r4, #4]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov ip, r0
	ldr r2, [r5, #0x68]
	add r7, r1, #0
	str r2, [sp, #0xc]
	mov r2, #2
	add r0, r5, #0
	add r0, #0xc8
	mov r1, #0
	mov r3, ip
	lsl r2, r2, #0xa
	add r2, r3, r2
	adc r7, r1
	lsl r3, r7, #0x14
	lsr r2, r2, #0xc
	orr r2, r3
	ldr r3, [sp, #0xc]
	ldr r0, [r0, #0]
	add r2, r3, r2
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r0, r5, #0
	add r0, #0xc8
	ldr r2, [sp, #4]
	ldr r0, [r0, #0]
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	sub r0, r0, #4
	add r1, r0, #0
	mul r1, r0
	mov r0, #0x10
	sub r0, r0, r1
	neg r0, r0
	cmp r0, #0
	ble _021D31D2
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D31E0
_021D31D2:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D31E0:
	bl sub_020E1740
	ldr r2, _021D3264 ; =0x00001666
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	add r3, r1, #0
	mov r1, #4
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc8
	lsl r2, r1, #9
	add r7, r7, r2
	ldr r2, _021D3260 ; =0x00000000
	ldr r0, [r0, #0]
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r3, r7, #0xc
	orr r3, r2
	asr r2, r3, #0xc
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x50
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, #8
	bls _021D322E
	add r0, r4, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
_021D322E:
	mov r0, #1
	ldr r1, [r6, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r6, #0xc]
	ldr r1, [r6, #4]
	sub r0, r1, #1
	str r0, [r6, #4]
	cmp r1, #0
	bne _021D325C
	add r5, #0xc8
	ldr r0, [r5, #0]
	mov r1, #4
	mov r2, #0
	bl sub_02007DEC
	mov r0, #0
	add r4, #0x50
	strh r0, [r4]
	ldr r0, [sp]
	ldr r1, _021D3268 ; =ov79_021D326C
	bl sub_0201CECC
_021D325C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3260: .word 0x00000000
_021D3264: .word 0x00001666
_021D3268: .word ov79_021D326C
	thumb_func_end ov79_021D312C

	thumb_func_start ov79_021D326C
ov79_021D326C: ; 0x021D326C
	push {r3, lr}
	ldr r3, [r1, #0x14]
	add r3, #0x68
	add r0, r3, #0
	add r0, #0x50
	ldrh r2, [r0]
	add r0, r3, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r3, #0x50
	add r0, r0, #1
	strh r0, [r3]
	cmp r2, #4
	blo _021D328E
	add r0, r1, #0
	bl ov79_021D29E4
_021D328E:
	pop {r3, pc}
	thumb_func_end ov79_021D326C

	thumb_func_start ov79_021D3290
ov79_021D3290: ; 0x021D3290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	add r5, r4, #0
	mov r1, #8
	mov r0, #6
	add r5, #0x68
	str r1, [r6, #4]
	lsl r0, r0, #0xa
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	lsl r0, r1, #9
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x30
	add r1, #0x24
	add r2, sp, #0xc
	bl sub_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D32D6
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D32E4
_021D32D6:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D32E4:
	bl sub_020E1740
	add r5, #0x3c
	add r3, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	add r2, sp, #0xc
	bl ov79_021D2268
	add r0, r4, #0
	add r0, #0xc8
	mov r1, #0xc
	ldr r0, [r0, #0]
	lsl r2, r1, #5
	bl sub_02007DEC
	add r4, #0xc8
	mov r2, #6
	ldr r0, [r4, #0]
	mov r1, #0xd
	lsl r2, r2, #6
	bl sub_02007DEC
	ldr r1, _021D3320 ; =ov79_021D3324
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3320: .word ov79_021D3324
	thumb_func_end ov79_021D3290

	thumb_func_start ov79_021D3324
ov79_021D3324: ; 0x021D3324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	ldr r0, [r5, #0xc]
	add r4, r6, #0
	add r4, #0x68
	str r0, [sp, #4]
	asr r7, r0, #0x1f
	ldr r0, [r4, #0x40]
	ldr r2, [sp, #4]
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl sub_020E1F1C
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021D33D8 ; =0x00000000
	ldr r0, [r4, #0x28]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	ldr r2, [sp, #4]
	asr r1, r0, #0x1f
	add r3, r7, #0
	bl sub_020E1F1C
	mov r2, #2
	add r3, r0, #0
	add r0, r6, #0
	add r7, r1, #0
	add r0, #0xc8
	lsl r2, r2, #0xa
	mov r1, #0xc
	add r3, r3, r2
	ldr r2, _021D33D8 ; =0x00000000
	ldr r4, [r4, #0x24]
	adc r7, r2
	lsl r2, r7, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	add r2, r4, r3
	ldr r0, [r0, #0]
	asr r2, r2, #4
	bl sub_02007DEC
	add r0, r6, #0
	add r0, #0xc8
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #0xd
	asr r2, r2, #4
	bl sub_02007DEC
	mov r0, #1
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D33D2
	add r0, r6, #0
	add r0, #0xc8
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r0, #0]
	add r2, #0xf4
	bl sub_02007DEC
	add r6, #0xc8
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r6, #0]
	add r2, #0xf3
	bl sub_02007DEC
	add r0, r5, #0
	bl ov79_021D29E4
_021D33D2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D33D8: .word 0x00000000
	thumb_func_end ov79_021D3324

	thumb_func_start ov79_021D33DC
ov79_021D33DC: ; 0x021D33DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldr r4, [r6, #0x14]
	add r7, r0, #0
	mov r0, #8
	add r5, r4, #0
	str r0, [r6, #4]
	lsl r1, r0, #0x10
	mov r0, #7
	add r5, #0x68
	str r1, [r4, #0x68]
	lsl r0, r0, #0x10
	str r0, [r5, #4]
	mov r0, #6
	str r1, [r5, #0xc]
	lsl r0, r0, #0x10
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r0, #0xc
	add r1, r5, #0
	add r2, sp, #0xc
	bl sub_020BD1B0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D3424
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D3432
_021D3424:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D3432:
	bl sub_020E1740
	add r1, r5, #0
	add r3, r0, #0
	add r0, sp, #0
	add r1, #0x18
	add r2, sp, #0xc
	bl ov79_021D2268
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _021D345C
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D346A
_021D345C:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D346A:
	bl sub_020E1740
	add r1, r0, #0
	mov r0, #0x2d
	lsl r0, r0, #0xe
	bl sub_020BCFD0
	str r0, [r5, #0x48]
	add r0, r4, #0
	add r0, #0xc8
	ldr r2, [r5, #0]
	ldr r0, [r0, #0]
	mov r1, #0
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r4, #0xc8
	ldr r2, [r5, #4]
	ldr r0, [r4, #0]
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r1, _021D34A4 ; =ov79_021D34A8
	add r0, r7, #0
	bl sub_0201CECC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D34A4: .word ov79_021D34A8
	thumb_func_end ov79_021D33DC

	thumb_func_start ov79_021D34A8
ov79_021D34A8: ; 0x021D34A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	ldr r5, [r6, #0x14]
	ldr r7, [r6, #0xc]
	add r4, r5, #0
	str r0, [sp]
	asr r0, r7, #0x1f
	str r0, [sp, #8]
	add r4, #0x68
	ldr r0, [r4, #0x1c]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021D35A4 ; =0x00000000
	ldr r0, [r4, #4]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r3, [sp, #8]
	asr r1, r0, #0x1f
	add r2, r7, #0
	bl sub_020E1F1C
	mov ip, r0
	ldr r2, [r5, #0x68]
	add r7, r1, #0
	str r2, [sp, #0xc]
	mov r2, #2
	add r0, r5, #0
	add r0, #0xc8
	mov r1, #0
	mov r3, ip
	lsl r2, r2, #0xa
	add r2, r3, r2
	adc r7, r1
	lsl r3, r7, #0x14
	lsr r2, r2, #0xc
	orr r2, r3
	ldr r3, [sp, #0xc]
	ldr r0, [r0, #0]
	add r2, r3, r2
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r0, r5, #0
	add r0, #0xc8
	ldr r2, [sp, #4]
	ldr r0, [r0, #0]
	mov r1, #1
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r0, [r4, #0x48]
	ldr r2, [r6, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, _021D35A8 ; =0xFFFFA000
	asr r1, r0, #0x1f
	asr r3, r2, #0xf
	bl sub_020E1F1C
	add r4, r1, #0
	mov r1, #4
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0xc8
	mov r7, #0
	lsl r2, r1, #9
	add r2, r3, r2
	adc r4, r7
	lsl r3, r4, #0x14
	lsr r2, r2, #0xc
	orr r2, r3
	ldr r0, [r0, #0]
	asr r2, r2, #0xc
	bl sub_02007DEC
	add r2, r6, #0
	add r2, #0xc
	mov r0, #1
	ldr r1, [r2, #0]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r2, #0]
	ldr r0, [r6, #4]
	sub r0, r0, #1
	str r0, [r6, #4]
	bne _021D359E
	add r5, #0xc8
	ldr r0, [r5, #0]
	mov r1, #4
	add r2, r7, #0
	bl sub_02007DEC
	ldr r0, [sp]
	ldr r1, _021D35AC ; =ov79_021D35B0
	bl sub_0201CECC
_021D359E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D35A4: .word 0x00000000
_021D35A8: .word 0xFFFFA000
_021D35AC: .word ov79_021D35B0
	thumb_func_end ov79_021D34A8

	thumb_func_start ov79_021D35B0
ov79_021D35B0: ; 0x021D35B0
	push {r3, lr}
	ldr r3, [r1, #4]
	add r2, r3, #1
	str r2, [r1, #4]
	cmp r3, #4
	blt _021D35E0
	ldr r2, [r1, #0x14]
	ldr r2, [r2, #8]
	cmp r2, #0
	beq _021D35CA
	cmp r2, #1
	beq _021D35D2
	b _021D35DA
_021D35CA:
	ldr r1, _021D35E4 ; =ov79_021D35EC
	bl sub_0201CECC
	pop {r3, pc}
_021D35D2:
	ldr r1, _021D35E8 ; =ov79_021D36CC
	bl sub_0201CECC
	pop {r3, pc}
_021D35DA:
	add r0, r1, #0
	bl ov79_021D29E4
_021D35E0:
	pop {r3, pc}
	nop
_021D35E4: .word ov79_021D35EC
_021D35E8: .word ov79_021D36CC
	thumb_func_end ov79_021D35B0

	thumb_func_start ov79_021D35EC
ov79_021D35EC: ; 0x021D35EC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, #0x68
	mov r2, #0x5c
	bl sub_020C4CF4
	mov r0, #3
	str r0, [r4, #4]
	ldr r1, _021D360C ; =ov79_021D3610
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D360C: .word ov79_021D3610
	thumb_func_end ov79_021D35EC

	thumb_func_start ov79_021D3610
ov79_021D3610: ; 0x021D3610
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r7, [r5, #0x14]
	add r4, r7, #0
	add r4, #0x68
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	sub r0, r0, #4
	add r1, r0, #0
	mul r1, r0
	mov r0, #0x10
	sub r0, r0, r1
	neg r0, r0
	cmp r0, #0
	ble _021D3642
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D3650
_021D3642:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D3650:
	bl sub_020E1740
	ldr r2, _021D36C4 ; =0x00001666
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	add r6, r1, #0
	mov r1, #4
	add r3, r0, #0
	add r0, r7, #0
	add r0, #0xc8
	lsl r2, r1, #9
	add r3, r3, r2
	ldr r2, _021D36C8 ; =0x00000000
	ldr r0, [r0, #0]
	adc r6, r2
	lsl r2, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	asr r2, r3, #0xc
	bl sub_02007DEC
	add r1, r4, #0
	mov r0, #0
	add r1, #0x52
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	add r2, r1, #1
	add r1, r4, #0
	add r1, #0x50
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	cmp r1, #8
	bls _021D36A8
	add r4, #0x50
	strh r0, [r4]
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
_021D36A8:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021D36C0
	add r7, #0xc8
	ldr r0, [r7, #0]
	mov r1, #4
	mov r2, #0
	bl sub_02007DEC
	add r0, r5, #0
	bl ov79_021D29E4
_021D36C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D36C4: .word 0x00001666
_021D36C8: .word 0x00000000
	thumb_func_end ov79_021D3610

	thumb_func_start ov79_021D36CC
ov79_021D36CC: ; 0x021D36CC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
	add r0, #0x68
	mov r2, #0x5c
	bl sub_020C4CF4
	mov r0, #0x20
	str r0, [r4, #4]
	ldr r1, _021D36EC ; =ov79_021D36F0
	add r0, r5, #0
	bl sub_0201CECC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D36EC: .word ov79_021D36F0
	thumb_func_end ov79_021D36CC

	thumb_func_start ov79_021D36F0
ov79_021D36F0: ; 0x021D36F0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r6, [r5, #0x14]
	add r4, r6, #0
	add r4, #0x68
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	bl sub_0201D250
	asr r1, r0, #0x1f
	lsr r2, r0, #0x13
	lsl r1, r1, #0xd
	orr r1, r2
	mov r2, #2
	lsl r3, r0, #0xd
	mov r0, #0
	lsl r2, r2, #0xa
	add r2, r3, r2
	adc r1, r0
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r1, r4, #0
	add r1, #0x50
	ldrh r3, [r1]
	ldr r1, _021D3764 ; =0x00000167
	cmp r3, r1
	bls _021D372C
	b _021D3734
_021D372C:
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r0, #0x5a
_021D3734:
	add r4, #0x50
	strh r0, [r4]
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #3
	asr r2, r2, #0xc
	bl sub_02007DEC
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021D3760
	add r6, #0xc8
	ldr r0, [r6, #0]
	mov r1, #3
	mov r2, #0
	bl sub_02007DEC
	add r0, r5, #0
	bl ov79_021D29E4
_021D3760:
	pop {r4, r5, r6, pc}
	nop
_021D3764: .word 0x00000167
	thumb_func_end ov79_021D36F0

	thumb_func_start ov79_021D3768
ov79_021D3768: ; 0x021D3768
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x1c
	add r5, r0, #0
	bl sub_020C4CF4
	bl sub_020B28CC
	bl sub_020BF9AC
	bl sub_020BFB4C
	ldr r0, _021D3804 ; =0x04000060
	ldr r1, _021D3808 ; =0xFFFFCFFD
	ldrh r2, [r0]
	ldr r3, _021D380C ; =0x0000CFFB
	and r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r6, [r0]
	add r1, r1, #2
	sub r3, #0x1c
	and r6, r2
	mov r2, #8
	orr r2, r6
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _021D3810 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _021D3814 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _021D3818 ; =0xBFFF0000
	str r0, [r1, #0x40]
	add r0, r5, #0
	add r1, r4, #0
	bl ov79_021D3870
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov79_021D38D0
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _021D381C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3804: .word 0x04000060
_021D3808: .word 0xFFFFCFFD
_021D380C: .word 0x0000CFFB
_021D3810: .word 0x00007FFF
_021D3814: .word 0x04000540
_021D3818: .word 0xBFFF0000
_021D381C: .word 0x04000008
	thumb_func_end ov79_021D3768

	thumb_func_start ov79_021D3820
ov79_021D3820: ; 0x021D3820
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	ldr r2, _021D3854 ; =0x04000440
	mov r3, #0
	add r1, r2, #0
	str r3, [r2, #0]
	add r1, #0x14
	str r3, [r1, #0]
	mov r0, #2
	str r0, [r2, #0]
	str r3, [r1, #0]
	bl sub_020AF480
	bl sub_020A73C0
	ldr r0, [r4, #4]
	bl sub_02007768
	ldr r0, _021D3858 ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_021D3854: .word 0x04000440
_021D3858: .word 0x04000540
	thumb_func_end ov79_021D3820

	thumb_func_start ov79_021D385C
ov79_021D385C: ; 0x021D385C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020203B8
	ldr r0, [r4, #4]
	bl sub_02007B6C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D385C

	thumb_func_start ov79_021D3870
ov79_021D3870: ; 0x021D3870
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, _021D38C8 ; =0x021D3CEC
	add r4, r0, #0
	add r2, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x10
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, sp, #8
	str r0, [r3, #0]
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	add r0, r2, #0
	bl sub_020203AC
	str r0, [r4, #0]
	mov r1, #1
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r3, _021D38CC ; =0x000005C1
	str r0, [sp, #4]
	add r0, sp, #0x10
	lsl r1, r1, #0x10
	add r2, sp, #8
	bl sub_02020738
	mov r1, #0x19
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	ldr r0, [r4, #0]
	bl sub_020206B0
	ldr r0, [r4, #0]
	bl sub_020203D4
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_021D38C8: .word 0x021D3CEC
_021D38CC: .word 0x000005C1
	thumb_func_end ov79_021D3870

	thumb_func_start ov79_021D38D0
ov79_021D38D0: ; 0x021D38D0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0200762C
	str r0, [r5, #4]
	ldr r1, [r4, #0]
	add r0, sp, #0x10
	mov r2, #2
	bl sub_02075EF4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r1, sp, #0x10
	mov r2, #0x80
	mov r3, #0x60
	bl sub_02007C34
	ldrb r2, [r4, #8]
	mov r1, #0x23
	add r6, r0, #0
	bl sub_02007DEC
	str r6, [r5, #0x18]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov79_021D38D0
	; 0x021D3910

	.incbin "data/overlay79.bin"