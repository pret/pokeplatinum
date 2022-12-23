	.include "macros/function.inc"
	.include "overlay006/ov6_02240C9C.inc"

	

	.text


	thumb_func_start ov6_02240C9C
ov6_02240C9C: ; 0x02240C9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02013960
	sub r1, r0, #1
	cmp r1, #1
	bhi _02240CB8
	ldr r0, [r5, #0x6c]
	str r0, [r4, #0]
	ldr r0, [r5, #0x70]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
_02240CB8:
	sub r0, r0, #3
	cmp r0, #1
	bhi _02240CC6
	ldr r0, [r5, #0x74]
	str r0, [r4, #0]
	ldr r0, [r5, #0x78]
	str r0, [r6, #0]
_02240CC6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02240C9C

	thumb_func_start ov6_02240CC8
ov6_02240CC8: ; 0x02240CC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0202D834
	str r0, [sp]
	bl sub_0202D898
	cmp r0, #0
	beq _02240CFE
	ldr r0, [sp]
	mov r1, #2
	bl sub_0202D814
	bl ov6_02243218
	ldr r1, [r5, #0x1c]
	ldr r1, [r1, #0]
	cmp r1, r0
	bne _02240CFE
	ldr r0, [r4, #0x64]
	str r0, [r6, #0]
	ldr r0, [r4, #0x68]
	str r0, [r7, #0]
_02240CFE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02240CC8

	thumb_func_start ov6_02240D00
ov6_02240D00: ; 0x02240D00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203A2FC
	cmp r0, #0
	beq _02240D54
	add r1, sp, #0
	ldr r0, [r5, #0xc]
	add r1, #2
	add r2, sp, #0
	bl sub_0202DA10
	cmp r4, #0
	beq _02240D54
	mov r0, #0x6a
	mov r1, #8
	mov r2, #4
	bl sub_02006ADC
	add r1, sp, #0
	ldrh r2, [r1, #2]
	ldr r1, _02240D58 ; =0x0000FFFF
	cmp r2, r1
	beq _02240D40
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	str r1, [r6, #0]
_02240D40:
	add r1, sp, #0
	ldrh r2, [r1]
	ldr r1, _02240D58 ; =0x0000FFFF
	cmp r2, r1
	beq _02240D50
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	str r1, [r7, #0]
_02240D50:
	bl sub_020181C4
_02240D54:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240D58: .word 0x0000FFFF
	thumb_func_end ov6_02240D00

	thumb_func_start ov6_02240D5C
ov6_02240D5C: ; 0x02240D5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb4
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02054F94
	str r0, [sp, #0x1c]
	add r2, sp, #0x24
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	add r2, #1
	bl ov6_02241874
	add r1, sp, #0x24
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	bne _02240D9A
	add sp, #0xb4
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02240D9A:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0203A640
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	add r2, r4, #0
	add r3, sp, #0x30
	bl ov6_02242634
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D9D8
	cmp r0, #0
	bne _02240DE4
	add r0, r7, #0
	bl sub_02054A40
	mov r1, #1
	str r1, [sp, #0x34]
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x24
	strb r0, [r1, #0x18]
_02240DE4:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	add r3, r0, #0
	ldr r0, [sp, #0x20]
	add r1, sp, #0x24
	str r0, [sp]
	ldrb r1, [r1]
	mov r0, #0
	add r2, sp, #0x30
	bl ov6_0224226C
	add r1, sp, #0x24
	strb r0, [r1]
	add r0, r5, #0
	add r1, sp, #0x24
	bl ov6_02241ABC
	ldr r0, [sp, #0x20]
	add r1, sp, #0x24
	bl ov6_02241A90
	add r1, sp, #0x24
	ldrb r1, [r1]
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	bl ov6_022417C8
	cmp r0, #0
	beq _02240E2A
	mov r0, #1
	str r0, [sp, #0x10]
	b _02240E2E
_02240E2A:
	mov r0, #0
	str r0, [sp, #0x10]
_02240E2E:
	add r1, sp, #0x44
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r1, [sp]
	add r0, sp, #0x48
	str r0, [sp, #4]
	add r0, sp, #0x4c
	add r3, r5, #0
	str r0, [sp, #8]
	add r3, #0x94
	ldr r1, [sp, #0x14]
	ldr r3, [r3, #0]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_020696DC
	cmp r0, #0
	bne _02240E5E
	mov r0, #0
	str r0, [sp, #0x50]
	b _02240E64
_02240E5E:
	mov r0, #1
	str r0, [sp, #0x10]
	str r0, [sp, #0x50]
_02240E64:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02240E70
	add sp, #0xb4
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02240E70:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _02240E84
	mov r0, #1
	str r0, [sp, #0xc]
	b _02240E88
_02240E84:
	mov r0, #0
	str r0, [sp, #0xc]
_02240E88:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02240EF0
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02240EF0
	add r0, r5, #0
	add r1, sp, #0x28
	bl ov6_02242440
	cmp r0, #0
	beq _02240EF0
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl sub_0202D93C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, sp, #0x30
	bl ov6_02242388
	cmp r0, #0
	bne _02240EEA
	mov r0, #0xb
	add r1, r0, #0
	add r1, #0xf5
	bl sub_02051D8C
	str r0, [sp, #0x2c]
	add r1, r5, #0
	bl sub_02052314
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	bl ov6_0224239C
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl sub_02050E10
	add sp, #0xb4
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02240EEA:
	add sp, #0xb4
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02240EF0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02240F0E
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, sp, #0x2c
	bl ov6_02242328
	b _02240F18
_02240F0E:
	mov r0, #0xb
	mov r1, #0x4a
	bl sub_02051D8C
	str r0, [sp, #0x2c]
_02240F18:
	ldr r0, [sp, #0x2c]
	add r1, r5, #0
	bl sub_02052314
	add r0, sp, #0x24
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02240FDC
	mov r7, #4
	mov r0, #0
	add r1, r4, #0
	add r2, sp, #0x54
	add r3, r7, #0
_02240F32:
	ldr r6, [r1, #8]
	add r0, r0, #1
	str r6, [r2, #0]
	ldrsb r6, [r1, r7]
	strh r6, [r2, #4]
	ldrsb r6, [r1, r3]
	add r1, #8
	strh r6, [r2, #6]
	add r2, #8
	cmp r0, #0xc
	blt _02240F32
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027560
	bl sub_02027474
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0x64
	add r2, sp, #0x6c
	bl ov6_02240C9C
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x54
	add r3, sp, #0x5c
	bl ov6_02240CC8
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0x84
	add r3, sp, #0x8c
	bl ov6_02240D00
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x94
	add r3, sp, #0x9c
	bl ov6_022477B8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02240FB2
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r6, #0
	add r3, sp, #0x54
	bl ov6_02242354
	add r0, sp, #0x54
	str r0, [sp]
	add r0, sp, #0x30
	str r0, [sp, #4]
	add r0, sp, #0x44
	str r0, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	add r3, r4, #0
	bl ov6_02241674
	b _02241024
_02240FB2:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B034
	ldr r1, [sp, #0x2c]
	mov r2, #0xb
	str r0, [r1, #0x20]
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, #0xc]
	bl sub_02079170
	add r0, sp, #0x30
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	add r3, sp, #0x54
	bl ov6_0224174C
	b _02241024
_02240FDC:
	cmp r0, #1
	bne _02241014
	mov r0, #0
	add r1, sp, #0x54
	mov r3, #0xd0
	mov r6, #0xd1
_02240FE8:
	add r2, r4, #0
	add r2, #0xd4
	ldr r2, [r2, #0]
	add r0, r0, #1
	str r2, [r1, #0]
	ldrsb r2, [r4, r3]
	strh r2, [r1, #4]
	ldrsb r2, [r4, r6]
	add r4, #8
	strh r2, [r1, #6]
	add r1, #8
	cmp r0, #5
	blt _02240FE8
	add r0, sp, #0x30
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	add r3, sp, #0x54
	bl ov6_02241790
	b _02241024
_02241014:
	bl GF_AssertFail
	ldr r0, [sp, #0x2c]
	bl sub_020520A4
	add sp, #0xb4
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241024:
	cmp r0, #0
	beq _02241032
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl sub_02050E10
	b _02241036
_02241032:
	mov r0, #0
	str r0, [sp, #0x10]
_02241036:
	mov r0, #4
	bl sub_0201833C
	cmp r0, #0
	bne _02241044
	bl GF_AssertFail
_02241044:
	mov r0, #0xb
	bl sub_0201833C
	cmp r0, #0
	bne _02241052
	bl GF_AssertFail
_02241052:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0224105E
	ldr r0, [sp, #0x2c]
	bl sub_020520A4
_0224105E:
	mov r0, #0
	add r5, #0x78
	strh r0, [r5]
	ldr r0, [sp, #0x10]
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02240D5C

	thumb_func_start ov6_0224106C
ov6_0224106C: ; 0x0224106C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	bl ov6_02242164
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	bne _02241086
	add sp, #0x94
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241086:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	mov r2, #0
	add r3, sp, #0x20
	bl ov6_02242634
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	add r3, r0, #0
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	str r0, [sp]
	mov r0, #1
	add r2, sp, #0x20
	bl ov6_0224226C
	add r6, r0, #0
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _022410D8
	bl GF_AssertFail
_022410D8:
	cmp r5, r6
	blt _022410E2
	add sp, #0x94
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022410E2:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	add r1, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	bl ov6_02242328
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	bl sub_02052314
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_0205285C
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A2F0
	cmp r0, #0
	beq _02241154
	ldr r0, [sp, #8]
	bl ov6_02247660
	cmp r0, #0
	beq _02241154
	add r0, sp, #0x18
	add r0, #1
	add r1, sp, #0x18
	bl ov6_02247794
	add r0, sp, #0x1c
	bl ov6_022477A0
	add r0, sp, #0x18
	ldrb r3, [r0, #1]
	ldrb r4, [r0]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	add r0, sp, #0x34
_0224113E:
	lsl r5, r1, #3
	add r1, r1, #1
	lsl r1, r1, #0x18
	add r6, r0, r5
	str r2, [r0, r5]
	strh r3, [r6, #4]
	lsr r1, r1, #0x18
	strh r4, [r6, #6]
	cmp r1, #5
	blo _0224113E
	b _022411A2
_02241154:
	ldr r0, [sp, #8]
	bl sub_0203A640
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _0224116A
	cmp r1, #1
	beq _02241172
	cmp r1, #2
	beq _0224117A
	b _02241180
_0224116A:
	mov r1, #0x4a
	lsl r1, r1, #2
	add r4, r0, r1
	b _02241180
_02241172:
	mov r1, #0x55
	lsl r1, r1, #2
	add r4, r0, r1
	b _02241180
_0224117A:
	mov r1, #6
	lsl r1, r1, #6
	add r4, r0, r1
_02241180:
	mov r6, #0
	add r1, sp, #0x34
	mov r7, #1
_02241186:
	lsl r5, r6, #3
	add r3, r4, r5
	ldr r0, [r3, #4]
	add r2, r1, r5
	str r0, [r1, r5]
	ldrsb r0, [r4, r5]
	strh r0, [r2, #4]
	ldrsb r0, [r3, r7]
	strh r0, [r2, #6]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #5
	blo _02241186
_022411A2:
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0]
	add r3, sp, #0x34
	bl ov6_022417AC
	cmp r0, #0
	bne _022411C2
	add sp, #0x94
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022411C2:
	mov r0, #1
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_0224106C

	thumb_func_start ov6_022411C8
ov6_022411C8: ; 0x022411C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	str r1, [sp, #0xc]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02054F94
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #0x1c
	bl ov6_02241874
	cmp r0, #0
	bne _022411FC
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022411FC:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203A640
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r4, #0
	add r3, sp, #0x28
	bl ov6_02242634
	mov r0, #1
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, sp, #0x3c
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [sp, #0x2c]
	str r1, [r0, #0xc]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _02241248
	mov r0, #1
	str r0, [sp, #0x10]
	b _0224124C
_02241248:
	mov r0, #0
	str r0, [sp, #0x10]
_0224124C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02241294
	add r0, r5, #0
	add r1, sp, #0x20
	bl ov6_02242440
	cmp r0, #0
	beq _02241294
	mov r0, #0xb
	add r1, r0, #0
	add r1, #0xf5
	bl sub_02051D8C
	str r0, [sp, #0x24]
	add r1, r5, #0
	bl sub_02052314
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	bl ov6_0224239C
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02069434
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	bl sub_02050E78
	add sp, #0xac
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02241294:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _022412B2
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, sp, #0x24
	bl ov6_02242328
	b _022412BC
_022412B2:
	mov r0, #0xb
	mov r1, #0x4a
	bl sub_02051D8C
	str r0, [sp, #0x24]
_022412BC:
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	bl sub_02052314
	add r0, sp, #0x1c
	ldrb r0, [r0]
	cmp r0, #0
	bne _02241380
	mov r7, #4
	mov r0, #0
	add r1, r4, #0
	add r2, sp, #0x4c
	add r3, r7, #0
_022412D6:
	ldr r6, [r1, #8]
	add r0, r0, #1
	str r6, [r2, #0]
	ldrsb r6, [r1, r7]
	strh r6, [r2, #4]
	ldrsb r6, [r1, r3]
	add r1, #8
	strh r6, [r2, #6]
	add r2, #8
	cmp r0, #0xc
	blt _022412D6
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027560
	bl sub_02027474
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0x5c
	add r2, sp, #0x64
	bl ov6_02240C9C
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x4c
	add r3, sp, #0x54
	bl ov6_02240CC8
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0x7c
	add r3, sp, #0x84
	bl ov6_02240D00
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x8c
	add r3, sp, #0x94
	bl ov6_022477B8
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02241356
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, r6, #0
	add r3, sp, #0x4c
	bl ov6_02242354
	add r0, sp, #0x4c
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	add r0, sp, #0x3c
	str r0, [sp, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r3, r4, #0
	bl ov6_02241674
	b _022413C2
_02241356:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B034
	ldr r1, [sp, #0x24]
	mov r2, #0xb
	str r0, [r1, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r5, #0xc]
	bl sub_02079170
	add r0, sp, #0x28
	str r0, [sp]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r3, sp, #0x4c
	bl ov6_0224174C
	b _022413C2
_02241380:
	cmp r0, #1
	bne _022413B8
	mov r0, #0
	add r1, sp, #0x4c
	mov r3, #0xd0
	mov r6, #0xd1
_0224138C:
	add r2, r4, #0
	add r2, #0xd4
	ldr r2, [r2, #0]
	add r0, r0, #1
	str r2, [r1, #0]
	ldrsb r2, [r4, r3]
	strh r2, [r1, #4]
	ldrsb r2, [r4, r6]
	add r4, #8
	strh r2, [r1, #6]
	add r1, #8
	cmp r0, #5
	blt _0224138C
	add r0, sp, #0x28
	str r0, [sp]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r3, sp, #0x4c
	bl ov6_02241790
	b _022413C2
_022413B8:
	bl GF_AssertFail
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022413C2:
	cmp r0, #0
	beq _022413D2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	bl sub_02050E78
	b _022413D6
_022413D2:
	bl GF_AssertFail
_022413D6:
	mov r0, #0
	add r5, #0x78
	strh r0, [r5]
	mov r0, #1
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022411C8

	thumb_func_start ov6_022413E4
ov6_022413E4: ; 0x022413E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02054F94
	add r7, r0, #0
	add r2, sp, #0x20
	add r0, r5, #0
	add r1, r7, #0
	add r2, #1
	bl ov6_02241874
	add r1, sp, #0x20
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	bne _02241426
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241426:
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203A640
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r3, sp, #0x28
	bl ov6_02242634
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D9D8
	cmp r0, #0
	bne _02241470
	add r0, r6, #0
	bl sub_02054A40
	mov r1, #1
	str r1, [sp, #0x2c]
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strb r0, [r1, #0x14]
_02241470:
	ldr r0, [r5, #0xc]
	bl sub_0203A790
	bl sub_0203A74C
	add r3, r0, #0
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	str r0, [sp]
	ldrb r1, [r1]
	mov r0, #0
	add r2, sp, #0x28
	bl ov6_0224226C
	add r1, sp, #0x20
	strb r0, [r1]
	add r0, r5, #0
	add r1, sp, #0x20
	bl ov6_02241ABC
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	bl ov6_02241A90
	add r1, sp, #0x20
	ldrb r1, [r1]
	add r0, r5, #0
	add r2, r7, #0
	bl ov6_022417C8
	cmp r0, #0
	beq _022414B6
	mov r0, #1
	str r0, [sp, #0x10]
	b _022414BA
_022414B6:
	mov r0, #0
	str r0, [sp, #0x10]
_022414BA:
	add r1, sp, #0x3c
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [sp, #0x48]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A984
	cmp r0, #0
	beq _022414DC
	mov r0, #1
	str r0, [sp, #0xc]
	b _022414E0
_022414DC:
	mov r0, #0
	str r0, [sp, #0xc]
_022414E0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02241538
	add r0, r5, #0
	add r1, sp, #0x24
	bl ov6_02242440
	cmp r0, #0
	beq _02241538
	ldr r0, [sp, #0x24]
	mov r1, #6
	bl sub_0202D93C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, sp, #0x28
	bl ov6_02242388
	cmp r0, #0
	bne _02241532
	mov r0, #0xb
	add r1, r0, #0
	add r1, #0xf5
	bl sub_02051D8C
	str r0, [r4, #0]
	add r1, r5, #0
	bl sub_02052314
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	ldr r2, [r4, #0]
	bl ov6_0224239C
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
	add sp, #0xac
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02241532:
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241538:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02241556
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r4, #0
	bl ov6_02242328
	b _02241560
_02241556:
	mov r0, #0xb
	mov r1, #0x4a
	bl sub_02051D8C
	str r0, [r4, #0]
_02241560:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_02052314
	add r0, sp, #0x20
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02241624
	mov r7, #4
	ldr r1, [sp, #0x14]
	mov r0, #0
	add r2, sp, #0x4c
	add r3, r7, #0
_0224157A:
	ldr r6, [r1, #8]
	add r0, r0, #1
	str r6, [r2, #0]
	ldrsb r6, [r1, r7]
	strh r6, [r2, #4]
	ldrsb r6, [r1, r3]
	add r1, #8
	strh r6, [r2, #6]
	add r2, #8
	cmp r0, #0xc
	blt _0224157A
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02027560
	bl sub_02027474
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	add r1, sp, #0x5c
	add r2, sp, #0x64
	bl ov6_02240C9C
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r2, sp, #0x4c
	add r3, sp, #0x54
	bl ov6_02240CC8
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0x7c
	add r3, sp, #0x84
	bl ov6_02240D00
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	add r2, sp, #0x8c
	add r3, sp, #0x94
	bl ov6_022477B8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _022415FA
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r2, r6, #0
	add r3, sp, #0x4c
	bl ov6_02242354
	add r0, sp, #0x4c
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	add r0, sp, #0x3c
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [r4, #0]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov6_02241674
	b _02241634
_022415FA:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B034
	ldr r1, [r4, #0]
	mov r2, #0xb
	str r0, [r1, #0x20]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0xc]
	bl sub_02079170
	add r0, sp, #0x28
	str r0, [sp]
	ldr r1, [sp, #0x1c]
	ldr r2, [r4, #0]
	add r0, r5, #0
	add r3, sp, #0x4c
	bl ov6_0224174C
	b _02241634
_02241624:
	bl GF_AssertFail
	ldr r0, [r4, #0]
	bl sub_020520A4
	add sp, #0xac
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241634:
	cmp r0, #0
	bne _0224163C
	mov r0, #0
	str r0, [sp, #0x10]
_0224163C:
	mov r0, #4
	bl sub_0201833C
	cmp r0, #0
	bne _0224164A
	bl GF_AssertFail
_0224164A:
	mov r0, #0xb
	bl sub_0201833C
	cmp r0, #0
	bne _02241658
	bl GF_AssertFail
_02241658:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02241666
	ldr r0, [r4, #0]
	bl sub_020520A4
	b _0224166C
_02241666:
	mov r0, #0
	add r5, #0x78
	strh r0, [r5]
_0224166C:
	ldr r0, [sp, #0x10]
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022413E4

	thumb_func_start ov6_02241674
ov6_02241674: ; 0x02241674
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r6, [sp, #0x38]
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	add r7, r2, #0
	str r1, [sp, #0x10]
	ldr r4, [sp, #0x30]
	cmp r0, #0
	beq _02241722
	ldr r0, [r6, #0]
	cmp r0, #1
	bne _022416A8
	ldr r0, [r3, #0x7c]
	str r0, [r4, #0x20]
	add r0, r3, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r4, #0x28]
	add r0, r3, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r3, #0x88
	str r0, [r4, #0x50]
	ldr r0, [r3, #0]
	str r0, [r4, #0x58]
_022416A8:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl sub_0206978C
	ldr r0, [r6, #4]
	cmp r0, #1
	bne _022416E4
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	bl sub_02025F20
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r2, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r3, [r6, #8]
	bl ov6_02241F2C
	b _022416FE
_022416E4:
	mov r0, #1
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r3, r4, #0
	bl ov6_02241F7C
_022416FE:
	add r4, r0, #0
	cmp r4, #0
	beq _02241744
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r2, r0, #0
	add r0, r5, #0
	add r5, #0x94
	ldr r3, [r5, #0]
	add r1, r6, #0
	bl sub_02069474
	b _02241744
_02241722:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r2, [sp, #0x34]
	mov r1, #0xff
	add r3, r4, #0
	str r7, [sp, #8]
	bl ov6_02241DC4
	add r4, r0, #0
	beq _02241744
	add r5, #0x94
	ldr r0, [r5, #0]
	bl sub_02069434
_02241744:
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02241674

	thumb_func_start ov6_0224174C
ov6_0224174C: ; 0x0224174C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0xff
	add r6, r3, #0
	str r4, [sp, #8]
	bl ov6_02241DC4
	cmp r0, #0
	bne _02241774
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02241774:
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0xff
	add r3, r6, #0
	str r4, [sp, #8]
	bl ov6_02241DC4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_0224174C

	thumb_func_start ov6_02241790
ov6_02241790: ; 0x02241790
	push {lr}
	sub sp, #0xc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r1, #0
	ldr r2, [sp, #0x10]
	mov r1, #0xff
	bl ov6_02241DC4
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov6_02241790

	thumb_func_start ov6_022417AC
ov6_022417AC: ; 0x022417AC
	push {lr}
	sub sp, #0xc
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r1, #0
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl ov6_02241DC4
	add sp, #0xc
	pop {pc}
	thumb_func_end ov6_022417AC

	thumb_func_start ov6_022417C8
ov6_022417C8: ; 0x022417C8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	lsl r1, r7, #8
	add r5, r0, #0
	add r6, r2, #0
	bl ov6_022418B4
	cmp r0, #0
	bne _02241808
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x78
	strh r1, [r0]
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _02241800
	bl GF_AssertFail
_02241800:
	cmp r4, #5
	blo _02241808
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241808:
	add r0, r6, #0
	mov r4, #0x28
	bl sub_0205DAD4
	cmp r0, #0
	beq _0224181C
	add r4, #0x1e
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
	b _0224182C
_0224181C:
	ldr r0, [r5, #0x3c]
	bl sub_0205EB74
	cmp r0, #1
	bne _0224182C
	add r4, #0x1e
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0224182C:
	add r0, r5, #0
	bl sub_02055C40
	add r1, r0, #0
	add r0, r4, #0
	bl ov6_02246B74
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x64
	bls _02241844
	mov r4, #0x64
_02241844:
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x64
	blo _0224185C
	bl GF_AssertFail
_0224185C:
	cmp r6, r4
	bge _02241870
	add r0, r5, #0
	add r1, r7, #0
	bl ov6_022418DC
	cmp r0, #0
	beq _02241870
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241870:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022417C8

	thumb_func_start ov6_02241874
ov6_02241874: ; 0x02241874
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl sub_0205DE6C
	cmp r0, #0
	beq _022418B0
	add r0, r6, #0
	bl sub_0205DB58
	cmp r0, #0
	beq _022418A0
	mov r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl ov6_02242158
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
_022418A0:
	mov r0, #0
	strb r0, [r4]
	add r0, r5, #0
	bl ov6_0224214C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
_022418B0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_02241874

	thumb_func_start ov6_022418B4
ov6_022418B4: ; 0x022418B4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0xa
	bl _u32_div_f
	lsr r1, r0, #8
	cmp r1, #8
	bls _022418C8
	mov r1, #8
_022418C8:
	mov r0, #8
	add r4, #0x78
	sub r1, r0, r1
	ldrh r0, [r4]
	cmp r0, r1
	blo _022418D8
	mov r0, #1
	pop {r4, pc}
_022418D8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov6_022418B4

	thumb_func_start ov6_022418DC
ov6_022418DC: ; 0x022418DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _022418F8
	bl GF_AssertFail
_022418F8:
	cmp r5, r4
	blo _02241900
	mov r0, #0
	pop {r3, r4, r5, pc}
_02241900:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov6_022418DC

	thumb_func_start ov6_02241904
ov6_02241904: ; 0x02241904
	push {r4, lr}
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _0224191E
	bl GF_AssertFail
_0224191E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x14
	bhs _0224192A
	mov r0, #0
	pop {r4, pc}
_0224192A:
	blo _02241934
	cmp r0, #0x28
	bhs _02241934
	mov r0, #1
	pop {r4, pc}
_02241934:
	cmp r0, #0x28
	blo _02241940
	cmp r0, #0x32
	bhs _02241940
	mov r0, #2
	pop {r4, pc}
_02241940:
	cmp r0, #0x32
	blo _0224194C
	cmp r0, #0x3c
	bhs _0224194C
	mov r0, #3
	pop {r4, pc}
_0224194C:
	cmp r0, #0x3c
	blo _02241958
	cmp r0, #0x46
	bhs _02241958
	mov r0, #4
	pop {r4, pc}
_02241958:
	cmp r0, #0x46
	blo _02241964
	cmp r0, #0x50
	bhs _02241964
	mov r0, #5
	pop {r4, pc}
_02241964:
	cmp r0, #0x50
	blo _02241970
	cmp r0, #0x55
	bhs _02241970
	mov r0, #6
	pop {r4, pc}
_02241970:
	cmp r0, #0x55
	blo _0224197C
	cmp r0, #0x5a
	bhs _0224197C
	mov r0, #7
	pop {r4, pc}
_0224197C:
	cmp r0, #0x5a
	blo _02241988
	cmp r0, #0x5e
	bhs _02241988
	mov r0, #8
	pop {r4, pc}
_02241988:
	cmp r0, #0x5e
	blo _02241994
	cmp r0, #0x62
	bhs _02241994
	mov r0, #9
	pop {r4, pc}
_02241994:
	cmp r0, #0x62
	bne _0224199C
	mov r0, #0xa
	pop {r4, pc}
_0224199C:
	mov r0, #0xb
	pop {r4, pc}
	thumb_func_end ov6_02241904

	thumb_func_start ov6_022419A0
ov6_022419A0: ; 0x022419A0
	push {r4, lr}
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _022419BA
	bl GF_AssertFail
_022419BA:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x3c
	bhs _022419C6
	mov r0, #0
	pop {r4, pc}
_022419C6:
	blo _022419D0
	cmp r0, #0x5a
	bhs _022419D0
	mov r0, #1
	pop {r4, pc}
_022419D0:
	cmp r0, #0x5a
	blo _022419DC
	cmp r0, #0x5f
	bhs _022419DC
	mov r0, #2
	pop {r4, pc}
_022419DC:
	cmp r0, #0x5f
	blo _022419E8
	cmp r0, #0x63
	bhs _022419E8
	mov r0, #3
	pop {r4, pc}
_022419E8:
	mov r0, #4
	pop {r4, pc}
	thumb_func_end ov6_022419A0

	thumb_func_start ov6_022419EC
ov6_022419EC: ; 0x022419EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x64
	blo _02241A0A
	bl GF_AssertFail
_02241A0A:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	cmp r5, #0
	beq _02241A1C
	cmp r5, #1
	beq _02241A40
	cmp r5, #2
	beq _02241A64
	b _02241A88
_02241A1C:
	cmp r0, #0x3c
	bhs _02241A24
	mov r4, #0
	b _02241A8C
_02241A24:
	cmp r0, #0x5a
	bhs _02241A2C
	mov r4, #1
	b _02241A8C
_02241A2C:
	cmp r0, #0x5f
	bhs _02241A34
	mov r4, #2
	b _02241A8C
_02241A34:
	cmp r0, #0x63
	bhs _02241A3C
	mov r4, #3
	b _02241A8C
_02241A3C:
	mov r4, #4
	b _02241A8C
_02241A40:
	cmp r0, #0x28
	bhs _02241A48
	mov r4, #0
	b _02241A8C
_02241A48:
	cmp r0, #0x50
	bhs _02241A50
	mov r4, #1
	b _02241A8C
_02241A50:
	cmp r0, #0x5f
	bhs _02241A58
	mov r4, #2
	b _02241A8C
_02241A58:
	cmp r0, #0x63
	bhs _02241A60
	mov r4, #3
	b _02241A8C
_02241A60:
	mov r4, #4
	b _02241A8C
_02241A64:
	cmp r0, #0x28
	bhs _02241A6C
	mov r4, #0
	b _02241A8C
_02241A6C:
	cmp r0, #0x50
	bhs _02241A74
	mov r4, #1
	b _02241A8C
_02241A74:
	cmp r0, #0x5f
	bhs _02241A7C
	mov r4, #2
	b _02241A8C
_02241A7C:
	cmp r0, #0x63
	bhs _02241A84
	mov r4, #3
	b _02241A8C
_02241A84:
	mov r4, #4
	b _02241A8C
_02241A88:
	bl GF_AssertFail
_02241A8C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov6_022419EC

	thumb_func_start ov6_02241A90
ov6_02241A90: ; 0x02241A90
	push {r4, lr}
	add r4, r1, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0xe0
	beq _02241AAC
	mov r0, #5
	lsl r0, r0, #6
	cmp r1, r0
	bne _02241AB8
_02241AAC:
	ldrb r0, [r4]
	mov r1, #3
	lsl r0, r0, #1
	bl _s32_div_f
	strb r0, [r4]
_02241AB8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02241A90

	thumb_func_start ov6_02241ABC
ov6_02241ABC: ; 0x02241ABC
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0202D834
	bl sub_0202DA04
	cmp r0, #1
	bne _02241AD6
	ldrb r0, [r4]
	asr r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_02241AD6:
	cmp r0, #2
	bne _02241AE2
	ldrb r1, [r4]
	lsr r0, r1, #1
	add r0, r1, r0
	strb r0, [r4]
_02241AE2:
	pop {r4, pc}
	thumb_func_end ov6_02241ABC

	thumb_func_start ov6_02241AE4
ov6_02241AE4: ; 0x02241AE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	bne _02241B1E
	ldrb r0, [r1, #0xe]
	cmp r0, #0x1c
	bne _02241B1E
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r5, r0, #0x10
	cmp r5, #2
	blo _02241B04
	bl GF_AssertFail
_02241B04:
	cmp r5, #0
	bne _02241B1E
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	mov r1, #0x19
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_02241B1E:
	bl sub_0201D2E8
	ldr r1, _02241B3C ; =0x00000A3E
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x19
	blo _02241B34
	bl GF_AssertFail
_02241B34:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02241B3C: .word 0x00000A3E
	thumb_func_end ov6_02241AE4

	thumb_func_start ov6_02241B40
ov6_02241B40: ; 0x02241B40
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldrh r2, [r0, #6]
	ldrh r1, [r0, #4]
	cmp r1, r2
	blo _02241B54
	lsl r0, r2, #0x18
	lsr r5, r0, #0x18
	lsl r0, r1, #0x18
	b _02241B5A
_02241B54:
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
	lsl r0, r2, #0x18
_02241B5A:
	lsr r4, r0, #0x18
	bl sub_0201D2E8
	sub r1, r4, r5
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _02241BA4
	ldrb r0, [r7, #0xe]
	cmp r0, #0x37
	beq _02241B84
	cmp r0, #0x48
	beq _02241B84
	cmp r0, #0x2e
	bne _02241BA4
_02241B84:
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r7, r0, #0x10
	cmp r7, #2
	blo _02241B94
	bl GF_AssertFail
_02241B94:
	cmp r7, #0
	bne _02241BA0
	add r0, r5, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02241BA0:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02241BA4:
	add r0, r5, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_02241B40

	thumb_func_start ov6_02241BAC
ov6_02241BAC: ; 0x02241BAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	ldr r6, [sp, #0x40]
	str r1, [sp, #0x14]
	mov r0, #0xb
	str r2, [sp, #0x18]
	add r5, r3, #0
	bl sub_02073C74
	str r0, [sp, #0x1c]
	bl sub_02073C2C
	ldrb r0, [r6, #0xd]
	mov r7, #0
	cmp r0, #0
	bne _02241C38
	ldrb r0, [r6, #0xe]
	cmp r0, #0x38
	bne _02241C16
	ldr r0, [sp, #0x10]
	mov r1, #0x12
	bl sub_020759F0
	cmp r0, #0
	beq _02241C38
	cmp r0, #0xfe
	beq _02241C38
	cmp r0, #0xff
	beq _02241C38
	bl sub_0201D2E8
	ldr r1, _02241CBC ; =0x00005556
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _02241BFE
	bl GF_AssertFail
_02241BFE:
	cmp r4, #0
	beq _02241C38
	ldr r0, [sp, #0x44]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	mov r7, #1
	b _02241C38
_02241C16:
	cmp r0, #0x1c
	bne _02241C38
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _02241C2A
	bl GF_AssertFail
_02241C2A:
	cmp r4, #0
	bne _02241C38
	ldr r0, [sp, #0x44]
	bl sub_02075BCC
	str r0, [sp, #0x20]
	mov r7, #1
_02241C38:
	add r0, r5, #0
	bl sub_02075E64
	add r4, r0, #0
	cmp r7, #0
	beq _02241C86
_02241C44:
	ldrb r0, [r6, #0xe]
	cmp r0, #0x38
	bne _02241C6C
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl sub_02075DAC
	add r7, r0, #0
	cmp r7, #2
	bne _02241C5C
	bl GF_AssertFail
_02241C5C:
	ldr r0, [sp, #0x24]
	cmp r7, r0
	bne _02241C86
	add r0, r5, #0
	bl sub_02075E64
	add r4, r0, #0
	b _02241C44
_02241C6C:
	cmp r0, #0x1c
	bne _02241C44
	add r0, r4, #0
	bl sub_02075BFC
	ldr r1, [sp, #0x20]
	cmp r0, r1
	beq _02241C86
	add r0, r5, #0
	bl sub_02075E64
	add r4, r0, #0
	b _02241C44
_02241C86:
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r6, #0]
	mov r3, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02073D80
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x48]
	add r1, r6, #0
	bl ov6_02242514
	cmp r0, #0
	bne _02241CB2
	bl GF_AssertFail
_02241CB2:
	ldr r0, [sp, #0x1c]
	bl sub_020181C4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02241CBC: .word 0x00005556
	thumb_func_end ov6_02241BAC

	thumb_func_start ov6_02241CC0
ov6_02241CC0: ; 0x02241CC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0xb
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	add r5, r3, #0
	bl sub_02073C74
	add r4, r0, #0
	bl sub_02073C2C
	add r0, r7, #0
	mov r1, #0x12
	mov r6, #1
	bl sub_020759F0
	cmp r0, #0
	beq _02241CEE
	cmp r0, #0xfe
	beq _02241CEE
	cmp r0, #0xff
	bne _02241CF0
_02241CEE:
	mov r6, #0
_02241CF0:
	cmp r6, #0
	beq _02241D80
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _02241D80
	ldrb r0, [r5, #0xe]
	cmp r0, #0x38
	bne _02241D80
	bl sub_0201D2E8
	ldr r1, _02241DC0 ; =0x00005556
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #3
	blo _02241D16
	bl GF_AssertFail
_02241D16:
	cmp r6, #0
	beq _02241D80
	ldr r0, [sp, #0x28]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #1
	bne _02241D30
	mov r6, #0
	b _02241D3C
_02241D30:
	cmp r6, #0
	bne _02241D38
	mov r6, #1
	b _02241D3C
_02241D38:
	bl GF_AssertFail
_02241D3C:
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	bl ov6_02241AE4
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0x20
	bl sub_02074088
	add r0, r4, #0
	mov r1, #7
	add r2, r5, #0
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x2c]
	add r1, r5, #0
	add r2, r4, #0
	bl ov6_02242514
	cmp r0, #0
	bne _02241D76
	bl GF_AssertFail
_02241D76:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241D80:
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	bl ov6_02241AE4
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0x20
	bl sub_02074044
	add r0, r4, #0
	mov r1, #7
	add r2, r5, #0
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x2c]
	add r1, r5, #0
	add r2, r4, #0
	bl ov6_02242514
	cmp r0, #0
	bne _02241DB4
	bl GF_AssertFail
_02241DB4:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02241DC0: .word 0x00005556
	thumb_func_end ov6_02241CC0

	thumb_func_start ov6_02241DC4
ov6_02241DC4: ; 0x02241DC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0xc]
	mov r7, #0
	add r1, sp, #0x10
	strb r7, [r1]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r1, #0
	beq _02241DE8
	cmp r1, #1
	beq _02241E44
	cmp r1, #2
	beq _02241E90
	b _02241EDE
_02241DE8:
	mov r1, #8
	str r1, [sp]
	mov r1, #0x2a
	str r1, [sp, #4]
	add r1, sp, #0x10
	str r1, [sp, #8]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0xc
	bl ov6_0224222C
	cmp r0, #0
	bne _02241E26
	mov r0, #0xd
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0xc
	bl ov6_0224222C
	cmp r0, #0
	bne _02241E26
	bl ov6_02241904
	add r1, sp, #0x10
	strb r0, [r1]
_02241E26:
	add r2, sp, #0x10
	ldrb r2, [r2]
	add r0, r4, #0
	add r1, r5, #0
	bl ov6_022425D4
	add r1, sp, #0x10
	strb r0, [r1]
	ldrb r0, [r1]
	lsl r0, r0, #3
	add r0, r4, r0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	b _02241EE2
_02241E44:
	mov r1, #8
	str r1, [sp]
	mov r1, #0x2a
	str r1, [sp, #4]
	add r1, sp, #0x10
	str r1, [sp, #8]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ov6_0224222C
	mov r0, #0xd
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ov6_0224222C
	cmp r0, #0
	bne _02241E7E
	bl ov6_022419A0
	add r1, sp, #0x10
	strb r0, [r1]
_02241E7E:
	add r0, sp, #0x10
	ldrb r0, [r0]
	add r1, r5, #0
	lsl r0, r0, #3
	add r0, r4, r0
	bl ov6_02241B40
	add r7, r0, #0
	b _02241EE2
_02241E90:
	mov r1, #8
	str r1, [sp]
	mov r1, #0x2a
	str r1, [sp, #4]
	add r1, sp, #0x10
	str r1, [sp, #8]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ov6_0224222C
	mov r0, #0xd
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #5
	bl ov6_0224222C
	cmp r0, #0
	bne _02241ECC
	ldr r0, [sp, #0xc]
	bl ov6_022419EC
	add r1, sp, #0x10
	strb r0, [r1]
_02241ECC:
	add r0, sp, #0x10
	ldrb r0, [r0]
	add r1, r5, #0
	lsl r0, r0, #3
	add r0, r4, r0
	bl ov6_02241B40
	add r7, r0, #0
	b _02241EE2
_02241EDE:
	bl GF_AssertFail
_02241EE2:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov6_022422D0
	cmp r0, #0
	beq _02241EF6
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241EF6:
	add r0, r7, #0
	add r1, r5, #0
	bl ov6_02242388
	cmp r0, #1
	bne _02241F08
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02241F08:
	ldr r0, [sp, #0x30]
	str r6, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x10
	ldrb r0, [r0]
	ldr r2, [sp, #0x2c]
	add r1, r7, #0
	lsl r0, r0, #3
	ldr r0, [r4, r0]
	add r3, r5, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov6_02241CC0
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02241DC4

	thumb_func_start ov6_02241F2C
ov6_02241F2C: ; 0x02241F2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02241F40
	bl GF_AssertFail
_02241F40:
	lsl r0, r4, #0x18
	lsr r1, r0, #0x18
	cmp r7, #0
	beq _02241F62
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl ov6_02241BAC
	b _02241F76
_02241F62:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl ov6_02241CC0
_02241F76:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02241F2C

	thumb_func_start ov6_02241F7C
ov6_02241F7C: ; 0x02241F7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r6, r1, #0
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0]
	mov r0, #8
	str r0, [sp]
	mov r0, #0x2a
	add r5, r3, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r1, r2, #0
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0xc
	bl ov6_0224222C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _02241FD2
	mov r0, #0xd
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0xc
	bl ov6_0224222C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _02241FD2
	bl ov6_02241904
	add r1, sp, #0x10
	strb r0, [r1]
_02241FD2:
	add r0, sp, #0x10
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r5, r0
	ldrh r1, [r1, #4]
	ldr r5, [r5, r0]
	ldr r0, [sp, #0x30]
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	cmp r0, #0
	bne _02241FFE
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02069774
	add r0, r4, #0
	bl sub_02069B74
	b _0224201A
_02241FFE:
	cmp r5, r0
	bne _02242012
	add r5, r0, #0
	ldr r0, [sp, #0x34]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #0
	bl sub_02069B74
	b _0224201A
_02242012:
	add r4, #0x94
	ldr r0, [r4, #0]
	bl sub_02069434
_0224201A:
	ldr r0, [sp, #0x2c]
	str r6, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0xc]
	lsr r0, r0, #0x10
	add r1, r7, #0
	bl ov6_02241CC0
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_02241F7C

	thumb_func_start ov6_02242034
ov6_02242034: ; 0x02242034
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EFFE4
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	bl sub_0207A268
	mov r1, #0
	bl sub_0207A0FC
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0
	add r3, sp, #0x10
	bl ov6_02242634
	bl sub_0201D2E8
	ldr r1, _022420D0 ; =0x00001746
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xb
	blo _02242072
	bl GF_AssertFail
_02242072:
	add r0, r6, #5
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, sp, #0x10
	ldrb r1, [r0, #0xd]
	cmp r1, #0
	bne _022420A4
	ldrb r0, [r0, #0xe]
	cmp r0, #0x37
	beq _0224208E
	cmp r0, #0x48
	beq _0224208E
	cmp r0, #0x2e
	bne _022420A4
_0224208E:
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r6, r0, #0x10
	cmp r6, #2
	blo _0224209E
	bl GF_AssertFail
_0224209E:
	cmp r6, #0
	beq _022420A4
	mov r7, #0xf
_022420A4:
	add r0, r5, #0
	bl ov5_021F0040
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #2
	orr r0, r2
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r2, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r3, sp, #0x10
	str r4, [sp, #4]
	bl ov6_02241CC0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022420D0: .word 0x00001746
	thumb_func_end ov6_02242034

	thumb_func_start ov6_022420D4
ov6_022420D4: ; 0x022420D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r2, [sp, #8]
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	add r6, r3, #0
	bl sub_0207A268
	mov r1, #0
	bl sub_0207A0FC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	add r3, sp, #0xc
	bl ov6_02242634
	str r4, [sp]
	str r6, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r7, #0
	mov r2, #1
	add r3, sp, #0xc
	bl ov6_02241CC0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_022420D4

	thumb_func_start ov6_02242110
ov6_02242110: ; 0x02242110
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r4, #0
	bl sub_0205DE6C
	cmp r0, #0
	beq _0224213E
	add r0, r6, #0
	bl sub_0205DB58
	cmp r0, #0
	beq _02242136
	add r0, r5, #0
	bl ov6_02242158
	add r4, r0, #0
	b _0224213E
_02242136:
	add r0, r5, #0
	bl ov6_0224214C
	add r4, r0, #0
_0224213E:
	cmp r4, #0
	beq _02242146
	mov r0, #1
	pop {r4, r5, r6, pc}
_02242146:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02242110

	thumb_func_start ov6_0224214C
ov6_0224214C: ; 0x0224214C
	push {r3, lr}
	bl sub_0203A640
	ldr r0, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov6_0224214C

	thumb_func_start ov6_02242158
ov6_02242158: ; 0x02242158
	push {r3, lr}
	bl sub_0203A640
	add r0, #0xcc
	ldr r0, [r0, #0]
	pop {r3, pc}
	thumb_func_end ov6_02242158

	thumb_func_start ov6_02242164
ov6_02242164: ; 0x02242164
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203A640
	cmp r4, #0
	beq _0224217A
	cmp r4, #1
	beq _02242182
	cmp r4, #2
	beq _0224218A
	b _02242192
_0224217A:
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
_02242182:
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	pop {r4, pc}
_0224218A:
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
_02242192:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02242164

	thumb_func_start ov6_0224219C
ov6_0224219C: ; 0x0224219C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0
	str r1, [sp]
	add r7, r2, #0
	str r3, [sp, #4]
	add r4, r0, #0
	add r1, sp, #0x10
_022421AE:
	strb r4, [r1, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xc
	blo _022421AE
	ldr r0, [sp]
	add r5, r4, #0
	cmp r0, #0
	bls _02242204
_022421C2:
	lsl r0, r5, #3
	str r0, [sp, #0xc]
	ldr r0, [r6, r0]
	mov r1, #6
	bl sub_020759F0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, #7
	ldr r0, [r6, r0]
	bl sub_020759F0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #8]
	cmp r0, r7
	beq _022421EC
	cmp r1, r7
	bne _022421F8
_022421EC:
	add r1, r4, #1
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r4, r1, #0x18
	add r1, sp, #0x10
	strb r5, [r1, r0]
_022421F8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp]
	cmp r5, r0
	blo _022421C2
_02242204:
	cmp r4, #0
	beq _0224220E
	ldr r0, [sp]
	cmp r4, r0
	bne _02242214
_0224220E:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02242214:
	bl sub_0201D2E8
	add r1, r4, #0
	bl _s32_div_f
	add r0, sp, #0x10
	ldrb r1, [r0, r1]
	ldr r0, [sp, #4]
	strb r1, [r0]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_0224219C

	thumb_func_start ov6_0224222C
ov6_0224222C: ; 0x0224222C
	push {r4, r5, r6, lr}
	ldrb r0, [r1, #0xd]
	add r5, r2, #0
	add r6, r3, #0
	cmp r0, #0
	bne _02242266
	add r0, sp, #0
	ldrb r1, [r1, #0xe]
	ldrb r0, [r0, #0x14]
	cmp r1, r0
	bne _02242266
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _02242252
	bl GF_AssertFail
_02242252:
	cmp r4, #0
	bne _02242266
	add r2, sp, #0
	ldrb r2, [r2, #0x10]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov6_0224219C
	pop {r4, r5, r6, pc}
_02242266:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_0224222C

	thumb_func_start ov6_0224226C
ov6_0224226C: ; 0x0224226C
	push {r3, r4}
	ldrb r4, [r2, #0xd]
	cmp r4, #0
	bne _022422C8
	cmp r0, #0
	ldrb r0, [r2, #0xe]
	beq _0224227E
	cmp r0, #0x3c
	b _022422C2
_0224227E:
	cmp r0, #0x47
	beq _0224228A
	cmp r0, #0x63
	beq _0224228A
	cmp r0, #0x23
	bne _0224228E
_0224228A:
	lsl r1, r1, #1
	b _022422C2
_0224228E:
	cmp r0, #8
	bne _0224229E
	cmp r3, #0xa
	bne _022422C2
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	b _022422C2
_0224229E:
	cmp r0, #0x51
	bne _022422B0
	sub r0, r3, #5
	cmp r0, #2
	bhi _022422C2
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	b _022422C2
_022422B0:
	cmp r0, #0x49
	beq _022422BC
	cmp r0, #0x5f
	beq _022422BC
	cmp r0, #1
	bne _022422C2
_022422BC:
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
_022422C2:
	cmp r1, #0x64
	ble _022422C8
	mov r1, #0x64
_022422C8:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4}
	bx lr
	thumb_func_end ov6_0224226C

	thumb_func_start ov6_022422D0
ov6_022422D0: ; 0x022422D0
	push {r4, lr}
	add r4, r2, #0
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _022422DE
	mov r0, #0
	pop {r4, pc}
_022422DE:
	ldrb r2, [r0, #0xd]
	cmp r2, #0
	bne _02242322
	ldrb r0, [r0, #0xe]
	cmp r0, #0x33
	beq _022422EE
	cmp r0, #0x16
	bne _02242322
_022422EE:
	add r0, r1, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #5
	bhi _02242304
	mov r0, #0
	pop {r4, pc}
_02242304:
	sub r0, r0, #5
	cmp r4, r0
	bgt _02242322
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _0224231A
	bl GF_AssertFail
_0224231A:
	cmp r4, #0
	bne _02242322
	mov r0, #1
	pop {r4, pc}
_02242322:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_022422D0

	thumb_func_start ov6_02242328
ov6_02242328: ; 0x02242328
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0
	bne _0224233C
	mov r0, #0xb
	mov r1, #0
	bl sub_02051D8C
	str r0, [r4, #0]
	pop {r4, pc}
_0224233C:
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A784
	add r1, r0, #0
	ldrh r1, [r1]
	mov r0, #0xb
	bl sub_02051F24
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov6_02242328

	thumb_func_start ov6_02242354
ov6_02242354: ; 0x02242354
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	cmp r1, #0
	beq _02242382
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	mov r1, #1
	bl sub_0202D814
	add r1, r4, #0
	add r1, #0x38
	str r1, [sp]
	ldr r2, [r5, #0x1c]
	add r4, #0x30
	ldr r2, [r2, #0]
	add r1, r6, #0
	add r3, r4, #0
	bl ov6_02242F74
_02242382:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02242354

	thumb_func_start ov6_02242388
ov6_02242388: ; 0x02242388
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02242398
	ldrb r1, [r1, #0xc]
	cmp r1, r0
	bls _02242398
	mov r0, #1
	bx lr
_02242398:
	mov r0, #0
	bx lr
	thumb_func_end ov6_02242388

	thumb_func_start ov6_0224239C
ov6_0224239C: ; 0x0224239C
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r0, #4
	add r6, r2, #0
	bl sub_02073C74
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl sub_0202D93C
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #6
	bl sub_0202D93C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r5, #0
	mov r1, #2
	bl sub_0202D93C
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	bl sub_0202D93C
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #7
	bl sub_0202D93C
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #5
	bl sub_0202D93C
	add r1, sp, #0x10
	strh r0, [r1]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x10
	str r0, [sp]
	ldr r3, [sp, #8]
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_02074158
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x30
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0x14
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa3
	add r2, sp, #0x10
	bl sub_02074B30
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl sub_0207A048
	cmp r0, #0
	bne _02242430
	bl GF_AssertFail
_02242430:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov6_0224239C

	thumb_func_start ov6_02242440
ov6_02242440: ; 0x02242440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [r0, #0xc]
	str r1, [sp, #4]
	mov r5, #0
	bl sub_0202D834
	add r6, r0, #0
	add r4, r5, #0
_02242454:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D8C4
	bl sub_0206C3C8
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D8F8
	cmp r0, #0
	beq _0224248C
	ldr r0, [sp]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	cmp r7, r0
	bne _0224248C
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D924
	lsl r2, r5, #2
	add r1, sp, #8
	str r0, [r1, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0224248C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02242454
	cmp r5, #0
	bne _022424A0
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022424A0:
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _022424B0
	bl GF_AssertFail
_022424B0:
	cmp r4, #0
	bne _022424BA
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022424BA:
	cmp r5, #1
	bls _02242502
	cmp r5, #0
	bne _022424C6
	bl GF_AssertFail
_022424C6:
	cmp r5, #1
	bhi _022424CE
	mov r4, #0
	b _022424F6
_022424CE:
	bl sub_0201D2E8
	add r4, r0, #0
	ldr r0, _02242510 ; =0x0000FFFF
	add r1, r5, #0
	bl _s32_div_f
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _022424F6
	bl GF_AssertFail
_022424F6:
	lsl r1, r4, #2
	add r0, sp, #8
	ldr r1, [r0, r1]
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	b _02242508
_02242502:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	str r1, [r0, #0]
_02242508:
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242510: .word 0x0000FFFF
	thumb_func_end ov6_02242440

	thumb_func_start ov6_02242514
ov6_02242514: ; 0x02242514
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	ldrb r0, [r5, #0xd]
	add r7, r2, #0
	str r3, [sp, #4]
	cmp r0, #0
	bne _02242530
	ldrb r0, [r5, #0xe]
	cmp r0, #0xe
	bne _02242530
	mov r2, #1
	b _02242532
_02242530:
	mov r2, #0
_02242532:
	ldr r1, [sp, #4]
	add r0, r7, #0
	ldr r1, [r1, #0]
	bl sub_02077F0C
	mov r6, #0
	add r0, r7, #0
	mov r1, #5
	add r2, r6, #0
	bl sub_02074470
	ldr r1, _022425C8 ; =0x000001A6
	cmp r0, r1
	bne _02242562
	ldrb r0, [r5, #0xf]
	mov r6, #1
	cmp r0, #0
	add r0, sp, #8
	bne _0224255E
	mov r1, #0
	strb r1, [r0]
	b _022425A6
_0224255E:
	strb r6, [r0]
	b _022425A6
_02242562:
	add r1, r1, #1
	cmp r0, r1
	bne _0224257C
	ldrb r0, [r5, #0x10]
	mov r6, #1
	cmp r0, #0
	add r0, sp, #8
	bne _02242578
	mov r1, #0
	strb r1, [r0]
	b _022425A6
_02242578:
	strb r6, [r0]
	b _022425A6
_0224257C:
	cmp r0, #0xc9
	bne _022425A6
	ldrb r0, [r5, #0x11]
	mov r6, #1
	lsl r1, r0, #3
	ldr r0, _022425CC ; =0x02248FF0
	ldr r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	bl sub_0201D2E8
	add r1, r4, #0
	bl _s32_div_f
	ldrb r0, [r5, #0x11]
	lsl r2, r0, #3
	ldr r0, _022425D0 ; =0x02248FF4
	ldr r0, [r0, r2]
	ldrb r1, [r0, r1]
	add r0, sp, #8
	strb r1, [r0]
_022425A6:
	cmp r6, #0
	beq _022425B4
	add r0, r7, #0
	mov r1, #0x70
	add r2, sp, #8
	bl sub_02074B30
_022425B4:
	ldr r0, [sp]
	lsl r1, r0, #2
	ldr r0, [sp, #4]
	add r0, r0, r1
	ldr r0, [r0, #4]
	add r1, r7, #0
	bl sub_0207A048
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022425C8: .word 0x000001A6
_022425CC: .word 0x02248FF0
_022425D0: .word 0x02248FF4
	thumb_func_end ov6_02242514

	thumb_func_start ov6_022425D4
ov6_022425D4: ; 0x022425D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r1, #0xd]
	add r4, r2, #0
	cmp r0, #0
	bne _02242630
	ldrb r0, [r1, #0xe]
	cmp r0, #0x48
	beq _022425EE
	cmp r0, #0x37
	beq _022425EE
	cmp r0, #0x2e
	bne _02242630
_022425EE:
	bl sub_0201D2E8
	lsl r0, r0, #1
	lsr r6, r0, #0x10
	cmp r6, #2
	blo _022425FE
	bl GF_AssertFail
_022425FE:
	cmp r6, #0
	bne _02242606
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242606:
	mov r1, #0
_02242608:
	lsl r2, r1, #3
	lsl r7, r4, #3
	add r6, r5, r2
	ldr r3, [r5, r2]
	ldr r2, [r5, r7]
	add r0, r5, r7
	cmp r3, r2
	bne _02242622
	ldrh r2, [r6, #4]
	ldrh r0, [r0, #4]
	cmp r2, r0
	bls _02242622
	add r4, r1, #0
_02242622:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #0xc
	blo _02242608
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242630:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov6_022425D4

	thumb_func_start ov6_02242634
ov6_02242634: ; 0x02242634
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	add r5, r2, #0
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	add r4, r3, #0
	bl sub_02074470
	cmp r0, #0
	bne _0224265A
	mov r2, #0
	add r0, r7, #0
	mov r1, #0xa
	strb r2, [r4, #0xd]
	bl sub_02074470
	b _02242660
_0224265A:
	mov r0, #1
	strb r0, [r4, #0xd]
	mov r0, #0x7b
_02242660:
	strb r0, [r4, #0xe]
	mov r0, #0
	strb r0, [r4, #0xc]
	str r0, [r4, #4]
	str r0, [r4, #8]
	cmp r5, #0
	beq _0224269C
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1, #0]
	strb r1, [r4, #0xf]
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	strb r1, [r4, #0x10]
	add r1, r5, #0
	add r1, #0xa0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224269A
	cmp r1, #8
	ble _02242690
	bl GF_AssertFail
_02242690:
	add r5, #0xa0
	ldr r0, [r5, #0]
	sub r0, r0, #1
	strb r0, [r4, #0x11]
	b _0224269C
_0224269A:
	strb r0, [r4, #0x11]
_0224269C:
	ldr r0, [r6, #0xc]
	bl sub_02025E38
	bl sub_02025F20
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02242634

	.rodata


	.global Unk_ov6_02248FC0
Unk_ov6_02248FC0: ; 0x02248FC0
	.incbin "incbin/overlay6_rodata.bin", 0x1AC, 0x1B0 - 0x1AC

	.global Unk_ov6_02248FC4
Unk_ov6_02248FC4: ; 0x02248FC4
	.incbin "incbin/overlay6_rodata.bin", 0x1B0, 0x1B4 - 0x1B0

	.global Unk_ov6_02248FC8
Unk_ov6_02248FC8: ; 0x02248FC8
	.incbin "incbin/overlay6_rodata.bin", 0x1B4, 0x1B8 - 0x1B4

	.global Unk_ov6_02248FCC
Unk_ov6_02248FCC: ; 0x02248FCC
	.incbin "incbin/overlay6_rodata.bin", 0x1B8, 0x1BC - 0x1B8

	.global Unk_ov6_02248FD0
Unk_ov6_02248FD0: ; 0x02248FD0
	.incbin "incbin/overlay6_rodata.bin", 0x1BC, 0x1C0 - 0x1BC

	.global Unk_ov6_02248FD4
Unk_ov6_02248FD4: ; 0x02248FD4
	.incbin "incbin/overlay6_rodata.bin", 0x1C0, 0x1C4 - 0x1C0

	.global Unk_ov6_02248FD8
Unk_ov6_02248FD8: ; 0x02248FD8
	.incbin "incbin/overlay6_rodata.bin", 0x1C4, 0x1C8 - 0x1C4

	.global Unk_ov6_02248FDC
Unk_ov6_02248FDC: ; 0x02248FDC
	.incbin "incbin/overlay6_rodata.bin", 0x1C8, 0x1DC - 0x1C8

	.global Unk_ov6_02248FF0
Unk_ov6_02248FF0: ; 0x02248FF0
	.incbin "incbin/overlay6_rodata.bin", 0x1DC, 0x40

