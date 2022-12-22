	.include "macros/function.inc"
	.include "include/ov97_02233B18.inc"

	

	.text


	thumb_func_start ov97_02233B18
ov97_02233B18: ; 0x02233B18
	cmp r0, #0
	bgt _02233B20
	mov r0, #1
	bx lr
_02233B20:
	cmp r0, #0xfb
	bgt _02233B28
	mov r0, #0
	bx lr
_02233B28:
	ldr r1, _02233B40 ; =0x00000115
	cmp r0, r1
	bge _02233B32
	mov r0, #1
	bx lr
_02233B32:
	add r1, #0x86
	cmp r0, r1
	ble _02233B3C
	mov r0, #1
	bx lr
_02233B3C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02233B40: .word 0x00000115
	thumb_func_end ov97_02233B18

	thumb_func_start ov97_02233B44
ov97_02233B44: ; 0x02233B44
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02235DB0
	cmp r0, #4
	bhi _02233B84
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233B5C: ; jump table
	.short _02233B66 - _02233B5C - 2 ; case 0
	.short _02233B6C - _02233B5C - 2 ; case 1
	.short _02233B72 - _02233B5C - 2 ; case 2
	.short _02233B78 - _02233B5C - 2 ; case 3
	.short _02233B7E - _02233B5C - 2 ; case 4
_02233B66:
	mov r0, #2
	str r0, [r4, #0]
	pop {r4, pc}
_02233B6C:
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02233B72:
	mov r0, #5
	str r0, [r4, #0]
	pop {r4, pc}
_02233B78:
	mov r0, #4
	str r0, [r4, #0]
	pop {r4, pc}
_02233B7E:
	mov r0, #3
	str r0, [r4, #0]
	pop {r4, pc}
_02233B84:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov97_02233B44

	thumb_func_start ov97_02233B8C
ov97_02233B8C: ; 0x02233B8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r1, _02233CE0 ; =0x0000E890
	add r5, r0, #0
	add r4, r5, r1
	ldr r1, [r4, #0]
	cmp r1, #9
	bls _02233B9E
	b _02233CD8
_02233B9E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02233BAA: ; jump table
	.short _02233BBE - _02233BAA - 2 ; case 0
	.short _02233BDE - _02233BAA - 2 ; case 1
	.short _02233BF6 - _02233BAA - 2 ; case 2
	.short _02233C06 - _02233BAA - 2 ; case 3
	.short _02233C16 - _02233BAA - 2 ; case 4
	.short _02233C32 - _02233BAA - 2 ; case 5
	.short _02233C46 - _02233BAA - 2 ; case 6
	.short _02233C62 - _02233BAA - 2 ; case 7
	.short _02233C8E - _02233BAA - 2 ; case 8
	.short _02233CB4 - _02233BAA - 2 ; case 9
_02233BBE:
	bl ov97_02233D10
	ldr r0, [r5, #0x10]
	bl sub_02024440
	add r5, r0, #0
	bl ov97_0223635C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202EFB8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233BDE:
	bl OS_GetTick
	mov r2, #0x78
	mov r3, #0
	bl _ull_mod
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233BF6:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	bne _02233CD8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C06:
	ldr r0, [r5, #0x10]
	mov r1, #2
	bl sub_02024814
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C16:
	ldr r0, [r5, #0x10]
	bl sub_02024828
	cmp r0, #3
	bne _02233C26
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233C26:
	cmp r0, #1
	bne _02233CD8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C32:
	mov r0, #0
	add r1, r0, #0
	add r2, sp, #0
	mov r3, #0x10
	bl CTRDG_ReadAgbFlash
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C46:
	bl ov97_02236280
	cmp r0, #0
	bne _02233C5A
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233C5A:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C62:
	bl ov97_02236308
	cmp r0, #9
	beq _02233CD8
	bl ov97_02236308
	cmp r0, #0xb
	bne _02233C7A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C7A:
	bl ov97_022362C8
	cmp r0, #8
	bne _02233CD8
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233C8E:
	ldr r0, [r5, #0x10]
	bl sub_02024828
	cmp r0, #3
	bne _02233C9E
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233C9E:
	cmp r0, #2
	bne _02233C8E
	bl ov97_022362C8
	mov r0, #1
	bl sub_02017B7C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233CB4:
	bl ov97_022362C8
	cmp r0, #8
	bne _02233CC8
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233CC8:
	cmp r0, #0
	bne _02233CD8
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x10
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02233CD8:
	mov r0, #0xa
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02233CE0: .word 0x0000E890
	thumb_func_end ov97_02233B8C

	thumb_func_start ov97_02233CE4
ov97_02233CE4: ; 0x02233CE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_02024440
	add r4, r0, #0
	bl ov97_0223635C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202EFB8
	mov r0, #4
	bl sub_02017DE0
	ldr r0, [r5, #0x10]
	bl sub_020246E0
	mov r0, #4
	bl sub_02017DF0
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02233CE4

	thumb_func_start ov97_02233D10
ov97_02233D10: ; 0x02233D10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xf4
	add r7, r0, #0
	ldr r0, [r7, #0x10]
	bl sub_02024440
	str r0, [sp]
	add r0, sp, #8
	bl sub_02076B10
	add r6, r0, #0
	mov r4, #0
	add r5, r7, #0
_02233D2A:
	ldr r0, _02233DA8 ; =0x0000E880
	mov r1, #0x3d
	lsl r1, r1, #4
	ldr r0, [r7, r0]
	ldr r2, [r5, r1]
	mov r1, #0x96
	lsl r1, r1, #4
	add r0, r0, #4
	mul r1, r2
	add r0, r0, r1
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0x50
	mul r1, r2
	add r0, r0, r1
	add r1, r6, #0
	bl ov97_02236E90
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202EFA4
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #6
	blt _02233D2A
	mov r5, #0
	add r0, sp, #4
	strh r5, [r0]
	add r4, r7, #0
	sub r6, r5, #1
_02233D6C:
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r0, r0, #4
	ldr r1, [r4, r0]
	cmp r2, r6
	beq _02233D9A
	cmp r1, #0xe
	beq _02233D9A
	ldr r0, _02233DA8 ; =0x0000E880
	mov r3, #0x96
	ldr r0, [r7, r0]
	lsl r3, r3, #4
	mul r3, r1
	add r0, r0, #4
	mov r1, #0x50
	mul r1, r2
	add r0, r0, r3
	add r0, r0, r1
	mov r1, #0xb
	add r2, sp, #4
	bl ov97_02236CA4
_02233D9A:
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #6
	blt _02233D6C
	add sp, #0xf4
	pop {r4, r5, r6, r7, pc}
	nop
_02233DA8: .word 0x0000E880
	thumb_func_end ov97_02233D10

	thumb_func_start ov97_02233DAC
ov97_02233DAC: ; 0x02233DAC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	tst r2, r0
	beq _02233DCA
	mov r2, #0
	bl sub_02002D7C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	pop {r4, pc}
_02233DCA:
	ldr r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02233DAC

	thumb_func_start ov97_02233DD0
ov97_02233DD0: ; 0x02233DD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r7, [r5, #0x44]
	add r6, r0, #0
	add r4, r2, #0
	cmp r7, #0
	bne _02233DE2
	mov r7, #0xff
_02233DE2:
	ldr r1, [r5, #0]
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _02233E20
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #8]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r6, #0x20]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
_02233E20:
	mov r0, #2
	tst r0, r4
	bne _02233E32
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201ADA4
_02233E32:
	mov r0, #0
	ldr r1, [r5, #0x34]
	mvn r0, r0
	cmp r1, r0
	beq _02233EC2
	ldr r2, _02233F64 ; =0x000001C6
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x4e
	bl sub_0200B144
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02233E5A
	mov r0, #0x4e
	bl sub_0200B358
	str r0, [sp, #0x14]
_02233E5A:
	ldr r0, _02233F68 ; =0x00012608
	ldr r0, [r6, r0]
	bl sub_020237E8
	ldr r0, _02233F68 ; =0x00012608
	ldr r1, [r5, #0x34]
	ldr r0, [r6, r0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r1, _02233F68 ; =0x00012608
	ldr r0, [sp, #0x14]
	ldr r1, [r6, r1]
	ldr r2, [sp, #0x20]
	bl sub_0200C388
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	add r2, r4, #0
	bl ov97_02233DAC
	add r3, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x28]
	bl sub_0201D78C
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _02233EB6
	ldr r0, [sp, #0x14]
	bl sub_0200B3F0
_02233EB6:
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x34]
_02233EC2:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	beq _02233EFE
	ldr r0, _02233F6C ; =0x0001260C
	mov r2, #0x40
	ldr r6, [r6, r0]
	add r0, r6, #0
	bl sub_02023D8C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov97_02233DAC
	add r3, r0, #0
	ldr r0, [r5, #0x1c]
	add r2, r6, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x28]
	bl sub_0201D78C
	str r0, [r5, #0x48]
	mov r0, #0
	str r0, [r5, #0x38]
_02233EFE:
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _02233F2C
	add r0, r5, #0
	add r2, r4, #0
	bl ov97_02233DAC
	add r3, r0, #0
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x3c]
	bl sub_0201D78C
	str r0, [r5, #0x48]
	mov r0, #0
	str r0, [r5, #0x3c]
_02233F2C:
	mov r0, #4
	tst r0, r4
	bne _02233F38
	ldr r0, [r5, #0]
	bl sub_0201A954
_02233F38:
	mov r0, #8
	tst r0, r4
	beq _02233F60
	mov r0, #0x10
	tst r0, r4
	ldr r0, [r5, #0]
	beq _02233F54
	ldr r2, _02233F70 ; =0x000003D2
	mov r1, #0
	mov r3, #0xd
	bl sub_0200E060
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02233F54:
	mov r2, #0x3f
	mov r1, #0
	lsl r2, r2, #4
	mov r3, #0xe
	bl sub_0200DC48
_02233F60:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02233F64: .word 0x000001C6
_02233F68: .word 0x00012608
_02233F6C: .word 0x0001260C
_02233F70: .word 0x000003D2
	thumb_func_end ov97_02233DD0

	thumb_func_start ov97_02233F74
ov97_02233F74: ; 0x02233F74
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02233FA0 ; =0x0223D874
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x4e
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02233FA0: .word 0x0223D874
	thumb_func_end ov97_02233F74

	thumb_func_start ov97_02233FA4
ov97_02233FA4: ; 0x02233FA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x4e
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add r1, r6, #0
	mov r0, #0x50
	add r1, #0x2c
	mov r2, #0x4e
	bl sub_020095C4
	str r0, [r6, #0x28]
	add r0, r6, #0
	mov r2, #1
	add r0, #0x2c
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r7, #0x55
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02233FEA:
	mov r0, #3
	add r1, r4, #0
	mov r2, #0x4e
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02233FEA
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0x74
	mov r2, #0x1a
	bl sub_0200985C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4e
	sub r1, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	mov r1, #0x74
	mov r2, #0x17
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r6, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4e
	sub r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	mov r1, #0x74
	mov r2, #0x19
	mov r3, #1
	bl sub_02009918
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4e
	sub r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	mov r1, #0x74
	mov r2, #0x18
	mov r3, #1
	bl sub_02009918
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	bl sub_0200A328
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200A5C8
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0
	mov r2, #1
	str r0, [sp]
	mov r0, #0x4e
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #0x13
	add r3, #0xff
	bl sub_02006E84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov97_02233FA4

	thumb_func_start ov97_022340B0
ov97_022340B0: ; 0x022340B0
	push {lr}
	sub sp, #0x2c
	mov r1, #0
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #0x55
	str r1, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x30
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x2c
	pop {pc}
	thumb_func_end ov97_022340B0

	thumb_func_start ov97_022340FC
ov97_022340FC: ; 0x022340FC
	ldr r2, [r1, #0x28]
	str r2, [r0, #0]
	mov r2, #0x61
	lsl r2, r2, #2
	add r1, r1, r2
	str r1, [r0, #4]
	mov r2, #0
	mov r1, #1
	str r2, [r0, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	strh r2, [r0, #0x20]
	mov r1, #0x14
	str r1, [r0, #0x24]
	str r3, [r0, #0x28]
	mov r1, #0x4e
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end ov97_022340FC

	thumb_func_start ov97_02234124
ov97_02234124: ; 0x02234124
	ldr r3, _02234140 ; =0x0000E880
	ldr r0, [r0, r3]
	add r3, r0, #4
	mov r0, #0x96
	lsl r0, r0, #4
	mul r0, r1
	add r1, r3, r0
	mov r0, #0x50
	mul r0, r2
	add r0, r1, r0
	ldr r3, _02234144 ; =ov97_02236924
	mov r1, #0xb
	mov r2, #0
	bx r3
	; .align 2, 0
_02234140: .word 0x0000E880
_02234144: .word ov97_02236924
	thumb_func_end ov97_02234124

	thumb_func_start ov97_02234148
ov97_02234148: ; 0x02234148
	ldr r3, _02234164 ; =0x0000E880
	ldr r0, [r0, r3]
	add r3, r0, #4
	mov r0, #0x96
	lsl r0, r0, #4
	mul r0, r1
	add r1, r3, r0
	mov r0, #0x50
	mul r0, r2
	add r0, r1, r0
	ldr r3, _02234168 ; =ov97_02236924
	mov r1, #0x2d
	mov r2, #0
	bx r3
	; .align 2, 0
_02234164: .word 0x0000E880
_02234168: .word ov97_02236924
	thumb_func_end ov97_02234148

	thumb_func_start ov97_0223416C
ov97_0223416C: ; 0x0223416C
	ldr r3, _02234188 ; =0x0000E880
	ldr r0, [r0, r3]
	add r3, r0, #4
	mov r0, #0x96
	lsl r0, r0, #4
	mul r0, r1
	add r1, r3, r0
	mov r0, #0x50
	mul r0, r2
	add r0, r1, r0
	mov r1, #0
	ldr r3, _0223418C ; =ov97_02236924
	add r2, r1, #0
	bx r3
	; .align 2, 0
_02234188: .word 0x0000E880
_0223418C: .word ov97_02236924
	thumb_func_end ov97_0223416C

	thumb_func_start ov97_02234190
ov97_02234190: ; 0x02234190
	push {r4, r5}
	ldr r5, [sp, #8]
	lsr r4, r5, #0x1f
	add r4, r5, r4
	asr r4, r4, #1
	sub r5, r2, r4
	strb r5, [r0]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	sub r3, r1, r5
	strb r3, [r0, #2]
	add r2, r2, r4
	strb r2, [r0, #1]
	add r1, r1, r5
	strb r1, [r0, #3]
	pop {r4, r5}
	bx lr
	thumb_func_end ov97_02234190

	thumb_func_start ov97_022341B4
ov97_022341B4: ; 0x022341B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r0, r3, #0
	lsl r1, r1, #0xc
	add r7, r2, #0
	bl sub_02018184
	add r4, r0, #0
	beq _022341E8
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02006AA4
	add r0, r4, #0
	add r1, r7, #0
	bl NNS_G2dGetUnpackedBGCharacterData
	cmp r0, #0
	bne _022341E8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022341E8:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_022341B4

	thumb_func_start ov97_022341EC
ov97_022341EC: ; 0x022341EC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, r3, #0
	add r1, r6, #0
	bl sub_02006D28
	add r0, r4, #0
	add r1, r5, #0
	bl NNS_G2dGetUnpackedBGCharacterData
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_022341EC

	thumb_func_start ov97_02234208
ov97_02234208: ; 0x02234208
	push {r4, lr}
	add r3, r1, #0
	mov r4, #0
	cmp r0, #0xc9
	beq _0223421A
	ldr r1, _02234274 ; =0x00000182
	cmp r0, r1
	beq _02234244
	b _0223426E
_0223421A:
	mov r4, #3
	lsl r0, r4, #8
	add r2, r3, #0
	and r0, r3
	lsr r1, r0, #6
	lsl r0, r4, #0x18
	and r2, r4
	and r0, r3
	lsl r4, r4, #0x10
	and r3, r4
	lsr r0, r0, #0x12
	lsr r3, r3, #0xc
	orr r0, r3
	orr r0, r1
	orr r0, r2
	mov r1, #0x1c
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	b _0223426E
_02234244:
	cmp r2, #5
	bhi _02234260
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234254: ; jump table
	.short _02234260 - _02234254 - 2 ; case 0
	.short _02234260 - _02234254 - 2 ; case 1
	.short _02234260 - _02234254 - 2 ; case 2
	.short _0223426C - _02234254 - 2 ; case 3
	.short _02234264 - _02234254 - 2 ; case 4
	.short _02234268 - _02234254 - 2 ; case 5
_02234260:
	mov r4, #0
	b _0223426E
_02234264:
	mov r4, #1
	b _0223426E
_02234268:
	mov r4, #2
	b _0223426E
_0223426C:
	mov r4, #3
_0223426E:
	add r0, r4, #0
	pop {r4, pc}
	nop
_02234274: .word 0x00000182
	thumb_func_end ov97_02234208

	thumb_func_start ov97_02234278
ov97_02234278: ; 0x02234278
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r7, r3, #0
	add r5, r1, #0
	bl ov97_02236DD0
	add r1, r6, #0
	add r2, r7, #0
	add r4, r0, #0
	bl ov97_02234208
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02079D8C
	add r1, r0, #0
	mov r0, #0x13
	add r2, sp, #0
	mov r3, #0x4e
	bl ov97_022341B4
	add r6, r0, #0
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	lsl r1, r1, #4
	add r1, #0x64
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #5
	lsl r2, r2, #8
	bl GX_LoadOBJ
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	add r1, #8
	bl sub_02021E90
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02234278

	thumb_func_start ov97_022342E4
ov97_022342E4: ; 0x022342E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	ldr r1, _02234360 ; =0x0223F434
	str r2, [sp]
	ldr r2, [r1, #0]
	mov r1, #0x83
	add r5, r3, #0
	lsl r1, r1, #2
	mul r1, r5
	add r4, r2, r1
	ldr r1, [sp, #0x20]
	add r6, r0, #0
	cmp r1, #0
	beq _02234358
	bl ov97_02233B18
	cmp r0, #0
	bne _02234314
	add r0, r6, #0
	bl ov97_02236DD0
	add r6, r0, #0
	b _02234316
_02234314:
	mov r6, #0
_02234316:
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02079D8C
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r1, sp, #4
	bl ov97_022341EC
	ldr r0, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	ldr r0, [r0, #0x14]
	add r1, #0xc
	lsl r2, r2, #8
	bl MIi_CpuCopyFast
	lsl r0, r5, #4
	add r0, #0x64
	lsl r0, r0, #5
	str r0, [r4, #0]
	ldr r0, [sp, #0x20]
	ldr r1, [sp]
	str r0, [r4, #8]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_02079EDC
	add r0, #8
	add sp, #8
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02234358:
	mov r0, #0
	str r0, [r4, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234360: .word 0x0223F434
	thumb_func_end ov97_022342E4

	thumb_func_start ov97_02234364
ov97_02234364: ; 0x02234364
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022343A4 ; =0x0223F434
	mov r6, #2
	lsl r6, r6, #8
	add r7, r6, #0
	ldr r5, [r0, #0]
	mov r4, #0
	add r7, #0xc
_02234374:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02234398
	add r0, r5, #0
	add r0, #0xc
	add r1, r6, #0
	bl DC_FlushRange
	add r0, r5, #0
	ldr r1, [r5, #0]
	add r0, #0xc
	add r2, r6, #0
	bl GX_LoadOBJ
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	bl sub_02021E90
_02234398:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x1e
	blt _02234374
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022343A4: .word 0x0223F434
	thumb_func_end ov97_02234364

	thumb_func_start ov97_022343A8
ov97_022343A8: ; 0x022343A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	mov r0, #0x13
	mov r1, #0x4e
	bl sub_02006C24
	mov r1, #1
	str r0, [sp, #0x10]
	mov r0, #0x4e
	lsl r1, r1, #0xc
	bl sub_02018184
	mov r7, #0
	str r0, [sp, #0x14]
	str r7, [sp, #0xc]
	add r5, r6, #0
_022343CA:
	ldr r0, _022344F4 ; =0x0000E880
	ldr r1, _022344F8 ; =0x0000E884
	ldr r0, [r6, r0]
	ldr r2, [r6, r1]
	mov r1, #0x96
	lsl r1, r1, #4
	mul r1, r2
	add r0, r0, #4
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r0, r1, r0
	mov r1, #5
	bl ov97_02236924
	cmp r0, #0
	beq _0223448E
	ldr r1, _022344F8 ; =0x0000E884
	add r0, r6, #0
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl ov97_02234124
	ldr r1, _022344F8 ; =0x0000E884
	str r0, [sp, #0x1c]
	ldr r1, [r6, r1]
	add r0, r6, #0
	add r2, r7, #0
	bl ov97_02234148
	ldr r1, _022344F8 ; =0x0000E884
	str r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r0, r6, #0
	add r2, r7, #0
	bl ov97_0223416C
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov97_02236DD0
	ldr r2, _022344FC ; =0x021BF6DC
	add r1, r4, #0
	ldrb r2, [r2, #6]
	bl ov97_02234208
	add r4, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	bl ov97_022342E4
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _022344F4 ; =0x0000E880
	ldr r1, _022344F8 ; =0x0000E884
	ldr r0, [r6, r0]
	ldr r2, [r6, r1]
	mov r1, #0x96
	lsl r1, r1, #4
	mul r1, r2
	add r0, r0, #4
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r0, r1, r0
	mov r1, #0xc
	bl ov97_02236924
	cmp r0, #0
	beq _02234480
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	b _022344BE
_02234480:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	b _022344BE
_0223448E:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r3, r7, #0
	bl ov97_022342E4
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_022344BE:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r0, #0x50
	add r5, #0xc
	str r0, [sp, #0xc]
	cmp r7, #0x1e
	bge _022344CE
	b _022343CA
_022344CE:
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	ldr r0, [sp, #0x10]
	bl sub_02006CA8
	ldr r1, _02234500 ; =ov97_02234364
	ldr r0, _02234504 ; =0x00012604
	str r1, [r6, r0]
	ldr r1, _022344F8 ; =0x0000E884
	add r0, r6, #0
	ldr r1, [r6, r1]
	bl ov97_02234A2C
	add r0, r6, #0
	bl ov97_022349E0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022344F4: .word 0x0000E880
_022344F8: .word 0x0000E884
_022344FC: .word 0x021BF6DC
_02234500: .word ov97_02234364
_02234504: .word 0x00012604
	thumb_func_end ov97_022343A8

	thumb_func_start ov97_02234508
ov97_02234508: ; 0x02234508
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	mov r2, #0x61
	add r5, r0, #0
	lsl r2, r2, #2
	add r0, sp, #0x14
	add r1, r5, #0
	add r2, r5, r2
	mov r3, #1
	bl ov97_022340FC
	mov r0, #0x28
	str r0, [sp, #8]
	mov r0, #0x31
	mov r4, #0
	lsl r0, r0, #4
	str r4, [sp, #0xc]
	add r7, r5, r0
_0223452C:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	mov r6, #0x1c
	lsl r0, r0, #0xc
	str r0, [sp, #4]
_02234538:
	mov r0, #0x1c
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #0x1c
	bl ov97_02234190
	lsl r0, r6, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	str r0, [sp, #0x20]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02234566
	add r0, sp, #0x14
	bl sub_02021AA0
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
_02234566:
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x6a
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0xa
	bl sub_02021D6C
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E80
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x6a
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x64
	bl sub_02021F58
	mov r0, #6
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #3
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x20]
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022345D0
	add r0, sp, #0x14
	bl sub_02021AA0
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
_022345D0:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x28
	bl sub_02021D6C
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E80
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021F58
	add r4, r4, #1
	add r7, r7, #4
	add r5, #0xc
	cmp r4, #0x1e
	beq _02234634
	ldr r0, [sp, #0x10]
	add r6, #0x28
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #6
	blt _02234538
	ldr r0, [sp, #8]
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #5
	bge _02234634
	b _0223452C
_02234634:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov97_02234508

	thumb_func_start ov97_02234638
ov97_02234638: ; 0x02234638
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r2, #0
	mov r2, #0x61
	add r6, r0, #0
	lsl r2, r2, #2
	add r5, r1, #0
	add r7, r3, #0
	add r0, sp, #0
	add r1, r6, #0
	add r2, r6, r2
	mov r3, #1
	bl ov97_022340FC
	lsl r0, r5, #0xc
	str r0, [sp, #8]
	lsl r0, r4, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl sub_02021AA0
	add r4, r0, #0
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02021D6C
	add r0, r4, #0
	mov r1, #1
	bl sub_02021E80
	ldr r1, [sp, #0x48]
	add r0, r4, #0
	bl sub_02021CAC
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02234638

	thumb_func_start ov97_0223468C
ov97_0223468C: ; 0x0223468C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r6, r0
	mov r1, #0xe4
	mov r2, #0xb0
	mov r3, #0x32
	bl ov97_02234190
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0xe4
	mov r2, #0xb0
	mov r3, #6
	bl ov97_02234638
	mov r1, #0xe6
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #8
	add r0, r6, r1
	mov r1, #0xb0
	mov r3, #0x20
	add r2, r1, #0
	str r3, [sp]
	bl ov97_02234190
	mov r0, #1
	mov r1, #0xb0
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	mov r3, #3
	bl ov97_02234638
	mov r1, #0xea
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0x1c
	mov r3, #0x20
	add r0, r6, r1
	mov r1, #0x18
	mov r2, #0xb0
	str r3, [sp]
	bl ov97_02234190
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0xb0
	mov r3, #0
	bl ov97_02234638
	mov r1, #0xee
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r7, #0
	mov r0, #0xff
	sub r1, #0x24
	strb r0, [r6, r1]
	add r4, r7, #0
	add r5, r6, #0
_02234712:
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x40
	mov r3, #9
	bl ov97_02234638
	mov r1, #0xf2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0
	mov r0, #0xf3
	mvn r1, r1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #4
	str r1, [r5, r0]
	add r7, r7, #1
	add r4, #0x24
	add r5, #0xc
	cmp r7, #6
	blt _02234712
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0223468C

	thumb_func_start ov97_0223474C
ov97_0223474C: ; 0x0223474C
	push {r3, lr}
	ldr r3, _02234780 ; =0x0000E880
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r2, r2, r0
	mov r0, #0x50
	mul r0, r1
	add r0, r2, r0
	mov r1, #0x41
	mov r2, #0
	bl ov97_02236924
	mov r1, #0x67
	lsl r1, r1, #2
	cmp r0, r1
	bne _0223477A
	mov r0, #1
	pop {r3, pc}
_0223477A:
	mov r0, #0
	pop {r3, pc}
	nop
_02234780: .word 0x0000E880
	thumb_func_end ov97_0223474C

	thumb_func_start ov97_02234784
ov97_02234784: ; 0x02234784
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _022347D0 ; =0x0000E880
	mov r5, #0
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r4, r2, r0
	mov r0, #0x50
	add r6, r1, #0
	mul r6, r0
	add r7, r5, #0
_022347A2:
	add r1, r5, #0
	add r0, r4, r6
	add r1, #0xd
	add r2, r7, #0
	bl ov97_02236924
	ldr r3, _022347D4 ; =0x0223EA98
	add r2, r0, #0
	mov r1, #0
_022347B4:
	ldr r0, [r3, #0]
	cmp r2, r0
	bne _022347BE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022347BE:
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, #8
	blo _022347B4
	add r5, r5, #1
	cmp r5, #4
	blt _022347A2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022347D0: .word 0x0000E880
_022347D4: .word 0x0223EA98
	thumb_func_end ov97_02234784

	thumb_func_start ov97_022347D8
ov97_022347D8: ; 0x022347D8
	push {r3, lr}
	ldr r3, _0223481C ; =0x0000E880
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r2, r2, r0
	mov r0, #0x50
	mul r0, r1
	add r0, r2, r0
	mov r1, #0xc
	mov r2, #0
	bl ov97_02236924
	ldr r1, _02234820 ; =0x0223EAA8
	ldrh r1, [r1, #0x30]
	cmp r1, #0
	beq _02234816
	ldr r2, _02234824 ; =0x0223EAD8
_02234804:
	ldrh r1, [r2]
	cmp r0, r1
	bne _0223480E
	mov r0, #1
	pop {r3, pc}
_0223480E:
	add r2, r2, #2
	ldrh r1, [r2]
	cmp r1, #0
	bne _02234804
_02234816:
	mov r0, #0
	pop {r3, pc}
	nop
_0223481C: .word 0x0000E880
_02234820: .word 0x0223EAA8
_02234824: .word 0x0223EAD8
	thumb_func_end ov97_022347D8

	thumb_func_start ov97_02234828
ov97_02234828: ; 0x02234828
	push {r3, lr}
	ldr r3, _02234850 ; =0x0000E880
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r2, r2, r0
	mov r0, #0x50
	mul r0, r1
	add r0, r2, r0
	mov r1, #0xb
	mov r2, #0
	bl ov97_02236924
	bl ov97_02233B18
	pop {r3, pc}
	; .align 2, 0
_02234850: .word 0x0000E880
	thumb_func_end ov97_02234828

	thumb_func_start ov97_02234854
ov97_02234854: ; 0x02234854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp]
	add r6, r1, #0
	mov r0, #0xc
	mul r0, r6
	ldr r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02234880
	bl sub_02021D34
	cmp r0, #0
	bne _02234880
	add sp, #0x14
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_02234880:
	mov r5, #0
	mov r7, #0x3d
	mvn r5, r5
	mov r2, #0
	add r3, r4, #0
	lsl r7, r7, #4
	b _022348A8
_0223488E:
	ldr r0, _022349DC ; =0x0000E884
	ldr r1, [r4, r0]
	ldr r0, [r3, r7]
	cmp r1, r0
	bne _022348A4
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	cmp r6, r0
	bne _022348A4
	add r5, r2, #0
_022348A4:
	add r3, #0xc
	add r2, r2, #1
_022348A8:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _022348B4
	cmp r2, #6
	blt _0223488E
_022348B4:
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_0223474C
	cmp r0, #1
	bne _022348C6
	add sp, #0x14
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_022348C6:
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_02234784
	cmp r0, #1
	bne _022348D8
	add sp, #0x14
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_022348D8:
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_022347D8
	cmp r0, #1
	bne _022348EA
	add sp, #0x14
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_022348EA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_02234828
	cmp r0, #1
	bne _022348FC
	add sp, #0x14
	mov r0, #7
	pop {r4, r5, r6, r7, pc}
_022348FC:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _022349A4
	mov r0, #0x41
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _02234914
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02234914:
	mov r5, #0
	mov r0, #0xf3
	add r3, r4, #0
	lsl r0, r0, #2
	sub r1, r5, #1
_0223491E:
	ldr r2, [r3, r0]
	cmp r2, r1
	bne _0223499A
	ldr r1, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r1, r0]
	bl sub_02021D28
	add r1, r0, #0
	mov r0, #0xc
	add r7, r5, #0
	mul r7, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	add r5, r4, r0
	ldr r0, [r5, r7]
	bl sub_02021C50
	ldr r0, [r5, r7]
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #2
	str r0, [r2, #0]
	ldr r0, [sp, #8]
	lsl r1, r1, #0xe
	sub r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsr r1, r1, #1
	sub r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r5, r7]
	mov r1, ip
	bl sub_02021C50
	ldr r0, [r5, r7]
	mov r1, #1
	bl sub_02021CAC
	mov r1, #0xf3
	add r3, r4, r7
	lsl r1, r1, #2
	ldr r0, _022349DC ; =0x0000E884
	str r6, [r3, r1]
	ldr r2, [r4, r0]
	add r0, r1, #4
	str r2, [r3, r0]
	add r0, r1, #0
	add r0, #0x44
	ldr r0, [r4, r0]
	add r1, #0x44
	add r0, r0, #1
	str r0, [r4, r1]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223499A:
	add r5, r5, #1
	add r3, #0xc
	cmp r5, #6
	blt _0223491E
	b _022349D6
_022349A4:
	mov r0, #0xc
	add r6, r5, #0
	mul r6, r0
	mov r0, #0xf2
	add r1, r4, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r2, #0
	mov r1, #0xf3
	mvn r2, r2
	add r0, r4, r6
	lsl r1, r1, #2
	str r2, [r0, r1]
	add r0, r1, #0
	add r0, #0x44
	ldr r0, [r4, r0]
	add r1, #0x44
	sub r0, r0, #1
	str r0, [r4, r1]
	add sp, #0x14
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_022349D6:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022349DC: .word 0x0000E884
	thumb_func_end ov97_02234854

	thumb_func_start ov97_022349E0
ov97_022349E0: ; 0x022349E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	sub r7, r4, #1
_022349EA:
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, r7
	beq _02234A10
	ldr r0, _02234A28 ; =0x0000E884
	ldr r1, [r6, r0]
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	bne _02234A10
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	b _02234A1C
_02234A10:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_02234A1C:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #6
	blt _022349EA
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234A28: .word 0x0000E884
	thumb_func_end ov97_022349E0

	thumb_func_start ov97_02234A2C
ov97_02234A2C: ; 0x02234A2C
	push {r3, r4, r5, lr}
	sub sp, #0x60
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	add r3, sp, #0x14
	add r1, r0, #0
	mov r2, #4
_02234A3C:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02234A3C
	stmia r3!, {r0, r1}
	str r0, [r3, #0]
	ldr r0, _02234AA4 ; =0x00000478
	add r0, r5, r0
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x1c]
	mov r0, #0x15
	str r0, [sp, #0x20]
	mov r0, #0xd
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	sub r0, r0, #3
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldr r0, _02234AA8 ; =0x00010200
	str r0, [sp, #0x40]
	mov r0, #0xa0
	str r0, [sp, #0x34]
	bl ov97_02235DBC
	add r3, r0, #0
	ldr r0, _02234AAC ; =0x0000E880
	mov r2, #9
	ldr r1, [r5, r0]
	ldr r0, _02234AB0 ; =0x00008344
	add r1, r1, r0
	lsl r0, r4, #3
	add r0, r4, r0
	add r0, r1, r0
	add r1, sp, #0
	bl ov97_0223936C
	add r0, sp, #0
	str r0, [sp, #0x4c]
	add r0, r5, #0
	add r1, sp, #0x14
	mov r2, #1
	bl ov97_02233DD0
	add sp, #0x60
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02234AA4: .word 0x00000478
_02234AA8: .word 0x00010200
_02234AAC: .word 0x0000E880
_02234AB0: .word 0x00008344
	thumb_func_end ov97_02234A2C

	thumb_func_start ov97_02234AB4
ov97_02234AB4: ; 0x02234AB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #2
	bl sub_02019FE4
	add r4, r0, #0
	cmp r6, #0
	beq _02234AD8
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl ov97_02236924
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	b _02234ADA
_02234AD8:
	mov r1, #0
_02234ADA:
	mov r2, #0
	mov r0, #1
_02234ADE:
	add r3, r1, #0
	tst r3, r0
	beq _02234AEA
	add r6, r2, #0
	add r6, #0x80
	b _02234AEE
_02234AEA:
	add r6, r2, #0
	add r6, #0x60
_02234AEE:
	add r3, r4, #0
	add r3, #0xd6
	lsl r1, r1, #0x17
	add r2, r2, #1
	strh r6, [r3]
	lsr r1, r1, #0x18
	add r4, r4, #2
	cmp r2, #4
	blt _02234ADE
	ldr r0, [r5, #0x20]
	mov r1, #2
	bl sub_02019448
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02234AB4

	thumb_func_start ov97_02234B0C
ov97_02234B0C: ; 0x02234B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	add r3, sp, #0x2c
	add r1, r0, #0
	mov r2, #4
_02234B1C:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02234B1C
	stmia r3!, {r0, r1}
	str r0, [r3, #0]
	mov r1, #0x20
	str r1, [sp, #0x3c]
	mov r1, #1
	ldr r0, _02234CBC ; =0x00000488
	str r1, [sp, #0x50]
	str r1, [sp, #0x54]
	mov r1, #0xbc
	str r1, [sp, #0x4c]
	ldr r1, _02234CC0 ; =0x000F0200
	add r0, r5, r0
	str r1, [sp, #0x58]
	mov r1, #0x2c
	str r0, [sp, #0x2c]
	mov r0, #0
	str r1, [sp, #0x60]
	mov r1, #0x90
	mov r2, #4
	str r1, [sp, #0x44]
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x64]
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	str r2, [sp, #0x40]
	bl ov97_02233DD0
	mov r0, #0x2b
	str r0, [sp, #0x60]
	mov r0, #0x50
	str r0, [sp, #0x44]
	mov r0, #8
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #6
	bl ov97_02233DD0
	add r0, r5, #0
	add r1, r4, #0
	bl ov97_02234AB4
	cmp r4, #0
	bne _02234B8A
	ldr r0, [sp, #0x2c]
	bl sub_0201A954
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
_02234B8A:
	add r2, sp, #0x1c
	add r0, r4, #0
	mov r1, #2
	add r2, #2
	bl ov97_02236924
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov97_02236924
	add r3, r0, #0
	add r0, sp, #0x1c
	add r0, #2
	add r1, sp, #8
	mov r2, #0xb
	bl ov97_0223936C
	add r0, sp, #8
	str r0, [sp, #0x64]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x60]
	mov r0, #8
	str r0, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #6
	bl ov97_02233DD0
	mov r0, #0x40
	mov r1, #0x4e
	bl sub_02023790
	mov r2, #0x67
	add r6, r0, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x4e
	bl sub_0200B144
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	bl ov97_02236924
	bl ov97_02236DD0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	bl sub_0200B1B8
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x60]
	mov r0, #0x10
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #6
	str r6, [sp, #0x68]
	bl ov97_02233DD0
	add r0, r7, #0
	bl sub_0200B190
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl ov97_02236924
	cmp r0, #0
	beq _02234C6E
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207CF10
	add r7, r0, #0
	mov r0, #0x40
	mov r1, #0x4e
	bl sub_02023790
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x4e
	add r6, r0, #0
	bl sub_0207CFA0
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x60]
	mov r0, #0x98
	str r0, [sp, #0x44]
	mov r0, #0x10
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #6
	str r6, [sp, #0x68]
	bl ov97_02233DD0
	add r0, r6, #0
	bl sub_020237BC
_02234C6E:
	add r0, r4, #0
	bl ov97_02236E00
	add r6, r0, #0
	mov r0, #0xa
	mov r1, #0x4e
	bl sub_02023790
	mov r3, #1
	add r1, r6, #0
	mov r2, #3
	add r4, r0, #0
	str r3, [sp]
	bl sub_020238A0
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x60]
	mov r0, #0x64
	str r0, [sp, #0x44]
	mov r0, #8
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #2
	str r4, [sp, #0x68]
	bl ov97_02233DD0
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #4]
	mov r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005844
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234CBC: .word 0x00000488
_02234CC0: .word 0x000F0200
	thumb_func_end ov97_02234B0C

	thumb_func_start ov97_02234CC4
ov97_02234CC4: ; 0x02234CC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	add r6, r2, #0
	mov r0, #0
	add r4, r3, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	cmp r4, #0
	beq _02234CEC
	mov r0, #0x17
	str r0, [r4, #0]
_02234CEC:
	str r6, [r5, #0x24]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02234CC4

	thumb_func_start ov97_02234CF4
ov97_02234CF4: ; 0x02234CF4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	add r4, r3, #0
	str r0, [sp, #4]
	mov r0, #0x4e
	add r6, r2, #0
	str r0, [sp, #8]
	ldr r3, _02234D24 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	cmp r4, #0
	beq _02234D1C
	mov r0, #0x17
	str r0, [r4, #0]
_02234D1C:
	str r6, [r5, #0x24]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02234D24: .word 0x00007FFF
	thumb_func_end ov97_02234CF4

	thumb_func_start ov97_02234D28
ov97_02234D28: ; 0x02234D28
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02234DE8 ; =0x0223D884
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02234DEC ; =0x0223D894
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _02234DF0 ; =0x0223D8B0
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02234DF4 ; =0x0223D8CC
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02234DF8 ; =0x0223D8E8
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_02234DE8: .word 0x0223D884
_02234DEC: .word 0x0223D894
_02234DF0: .word 0x0223D8B0
_02234DF4: .word 0x0223D8CC
_02234DF8: .word 0x0223D8E8
	thumb_func_end ov97_02234D28

	thumb_func_start ov97_02234DFC
ov97_02234DFC: ; 0x02234DFC
	push {r3, r4, r5, lr}
	sub sp, #0x38
	ldr r5, _02234E74 ; =0x0223D904
	add r4, r0, #0
	add r3, sp, #0x10
	mov r2, #5
_02234E08:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02234E08
	add r0, sp, #0x10
	bl sub_0201FE94
	ldr r0, [r4, #0x20]
	bl ov97_02234D28
	ldr r0, _02234E78 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl sub_0201D710
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x4e
	bl sub_02002E7C
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x4e
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x13
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4e
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x20]
	mov r0, #0x74
	mov r1, #0x16
	mov r3, #2
	bl sub_02006E3C
	mov r0, #2
	mov r1, #0x4e
	bl sub_02002BB8
	add sp, #0x38
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02234E74: .word 0x0223D904
_02234E78: .word 0x021BF6DC
	thumb_func_end ov97_02234DFC

	thumb_func_start ov97_02234E7C
ov97_02234E7C: ; 0x02234E7C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4e
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x20]
	mov r0, #0x74
	mov r1, #0x14
	mov r3, #2
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r2, #0
	ldr r1, [r4, #0]
	ldr r0, _02234EC8 ; =0x0223EA60
	add r3, r2, #0
	ldrb r0, [r0, r1]
	mov r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	bl sub_02019E2C
	ldr r0, [r4, #0x20]
	mov r1, #2
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02234EC8: .word 0x0223EA60
	thumb_func_end ov97_02234E7C

	thumb_func_start ov97_02234ECC
ov97_02234ECC: ; 0x02234ECC
	push {r4, lr}
	sub sp, #8
	mov r1, #7
	add r4, r0, #0
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x4e
	bl sub_02002E7C
	mov r1, #0
	mov r2, #0x3f
	str r1, [sp]
	mov r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	lsl r2, r2, #4
	mov r3, #0xe
	bl sub_0200DAA4
	ldr r0, [r4, #0x1c]
	ldr r2, _02234F74 ; =0x000003D2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	mov r1, #0
	mov r3, #0xd
	bl sub_0200DD0C
	ldr r0, _02234F78 ; =0x0000042C
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x4c
	bl memset
	ldr r0, _02234F7C ; =0x00000498
	mov r3, #0x1b
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x6c
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #2
	sub r1, #0x64
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #1
	sub r1, #0x60
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0x5c
	str r3, [r4, r1]
	add r1, r0, #0
	mov r3, #4
	sub r1, #0x58
	str r3, [r4, r1]
	add r3, r0, #0
	mov r1, #0
	sub r3, #0x48
	str r1, [r4, r3]
	add r3, r0, #0
	sub r3, #0x44
	str r2, [r4, r3]
	add r3, r0, #0
	sub r3, #0x4c
	str r2, [r4, r3]
	add r2, r0, #0
	ldr r3, _02234F80 ; =0x0001020F
	sub r2, #0x40
	str r3, [r4, r2]
	add r2, r0, #0
	ldr r3, _02234F84 ; =0x000F020F
	sub r2, #0x3c
	str r3, [r4, r2]
	add r2, r0, #0
	sub r2, #0x34
	str r1, [r4, r2]
	sub r0, #0x30
	str r1, [r4, r0]
	add sp, #8
	pop {r4, pc}
	nop
_02234F74: .word 0x000003D2
_02234F78: .word 0x0000042C
_02234F7C: .word 0x00000498
_02234F80: .word 0x0001020F
_02234F84: .word 0x000F020F
	thumb_func_end ov97_02234ECC

	thumb_func_start ov97_02234F88
ov97_02234F88: ; 0x02234F88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r6, r0, #0
	mov r7, #0x6b
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02234F96:
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, r7]
	mov r1, #0
	bl sub_02021CAC
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #0x1e
	blt _02234F96
	mov r7, #0xf2
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02234FBA:
	ldr r0, [r4, r7]
	mov r1, #0
	bl sub_02021CAC
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #6
	blt _02234FBA
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r2, #0x61
	lsl r2, r2, #2
	add r0, sp, #0x1c
	add r1, r6, #0
	add r2, r6, r2
	mov r3, #1
	bl ov97_022340FC
	mov r0, #0x1c
	mov r7, #0
	str r0, [sp, #0x10]
	add r4, r6, #0
	add r5, r6, #0
_02235008:
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0x8e
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	add r0, sp, #0x1c
	bl sub_02021AA0
	ldr r1, _02235148 ; =0x00000414
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _02235148 ; =0x00000414
	add r1, r7, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	bl sub_02021D6C
	ldr r0, _02235148 ; =0x00000414
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021E80
	ldr r0, _02235148 ; =0x00000414
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r1, #0x3d
	mov r2, #0xf3
	lsl r1, r1, #4
	lsl r2, r2, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r6, #0
	bl ov97_02234124
	mov r1, #0x3d
	mov r2, #0xf3
	lsl r1, r1, #4
	lsl r2, r2, #2
	str r0, [sp, #0x14]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r6, #0
	bl ov97_02234148
	mov r1, #0x3d
	mov r2, #0xf3
	lsl r1, r1, #4
	lsl r2, r2, #2
	str r0, [sp, #0x18]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r6, #0
	bl ov97_0223416C
	add r2, r0, #0
	ldr r0, _02235148 ; =0x00000414
	str r7, [sp]
	ldr r0, [r4, r0]
	ldr r3, _0223514C ; =0x021BF6DC
	str r0, [sp, #4]
	ldrb r3, [r3, #6]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov97_02234278
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, #0x28
	str r0, [sp, #0x10]
	add r4, r4, #4
	add r5, #0xc
	cmp r7, #6
	blt _02235008
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4e
	str r0, [sp, #0xc]
	ldr r2, [r6, #0x20]
	mov r0, #0x74
	mov r1, #0x15
	mov r3, #2
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r2, #0
	ldr r1, [r6, #0]
	ldr r0, _02235150 ; =0x0223EA60
	add r3, r2, #0
	ldrb r0, [r0, r1]
	mov r1, #2
	str r0, [sp, #8]
	ldr r0, [r6, #0x20]
	bl sub_02019E2C
	ldr r0, [r6, #0x20]
	mov r1, #2
	bl sub_02019448
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r1, #7
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x4e
	bl sub_02002E7C
	mov r1, #0
	mov r2, #0x3f
	str r1, [sp]
	mov r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	lsl r2, r2, #4
	mov r3, #0xe
	bl sub_0200DAA4
	ldr r0, [r6, #0x1c]
	ldr r2, _02235154 ; =0x000003D2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	mov r1, #0
	mov r3, #0xd
	bl sub_0200DD0C
	add r0, r6, #0
	bl ov97_02234ECC
	mov r1, #0x46
	mov r0, #0xa
	lsl r1, r1, #4
	str r0, [r6, r1]
	sub r1, #0x34
	add r0, r6, #0
	add r1, r6, r1
	mov r2, #0x18
	bl ov97_02233DD0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02235148: .word 0x00000414
_0223514C: .word 0x021BF6DC
_02235150: .word 0x0223EA60
_02235154: .word 0x000003D2
	thumb_func_end ov97_02234F88

	thumb_func_start ov97_02235158
ov97_02235158: ; 0x02235158
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02235174
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0201ACF4
	add r0, r4, #0
	bl sub_0201A8FC
_02235174:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02235158

	thumb_func_start ov97_02235178
ov97_02235178: ; 0x02235178
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _022351E8 ; =0x00000414
	mov r4, #0
	add r5, r6, #0
_02235182:
	ldr r0, [r5, r7]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02235182
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _022351EC ; =0x00000498
	add r0, r6, r0
	bl ov97_02235158
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xf3
	mov r5, #0
	lsl r0, r0, #2
	add r4, r6, #0
	sub r3, r5, #1
	mov r2, #0xe
	add r1, r0, #4
_022351D2:
	str r3, [r4, r0]
	str r2, [r4, r1]
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #6
	blt _022351D2
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022351E8: .word 0x00000414
_022351EC: .word 0x00000498
	thumb_func_end ov97_02235178

	thumb_func_start ov97_022351F0
ov97_022351F0: ; 0x022351F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r7, #0x6a
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02235204:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223520E
	bl sub_02021BD4
_0223520E:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223521C
	bl sub_02021BD4
_0223521C:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0x1e
	blt _02235204
	mov r7, #0xf2
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_0223522C:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02235236
	bl sub_02021BD4
_02235236:
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #6
	blt _0223522C
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223524C
	bl sub_02021BD4
_0223524C:
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223525A
	bl sub_02021BD4
_0223525A:
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02235268
	bl sub_02021BD4
_02235268:
	ldr r0, _022352FC ; =0x00000478
	add r0, r6, r0
	bl ov97_02235158
	ldr r0, _02235300 ; =0x00000488
	add r0, r6, r0
	bl ov97_02235158
	ldr r0, _02235304 ; =0x00000498
	add r0, r6, r0
	bl ov97_02235158
	mov r0, #2
	bl sub_02002C60
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r7, #0x55
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_022352A2:
	ldr r0, [r4, r7]
	bl sub_02009754
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _022352A2
	ldr r0, [r6, #0x28]
	bl sub_02021964
	mov r0, #0
	str r0, [r6, #0x28]
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	ldr r0, _02235308 ; =0x0000E88C
	ldr r0, [r6, r0]
	bl sub_02015938
	ldr r0, _0223530C ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r0, [r6, #0x20]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r6, #0x20]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r6, #0x20]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r6, #0x20]
	mov r1, #3
	bl sub_02019044
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022352FC: .word 0x00000478
_02235300: .word 0x00000488
_02235304: .word 0x00000498
_02235308: .word 0x0000E88C
_0223530C: .word 0x021BF6DC
	thumb_func_end ov97_022351F0

	thumb_func_start ov97_02235310
ov97_02235310: ; 0x02235310
	push {lr}
	sub sp, #0x14
	ldr r1, [r0, #0x20]
	mov r2, #0x19
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #8
	str r1, [sp, #0xc]
	add r1, sp, #0
	strb r2, [r1, #0x10]
	mov r2, #7
	strb r2, [r1, #0x11]
	ldr r1, _02235340 ; =0x0000E88C
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl sub_02015958
	add sp, #0x14
	pop {pc}
	nop
_02235340: .word 0x0000E88C
	thumb_func_end ov97_02235310

	thumb_func_start ov97_02235344
ov97_02235344: ; 0x02235344
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl ov97_02236378
	add r4, r0, #0
	bl ov97_02235DBC
	add r3, r0, #0
	add r0, r4, #0
	add r1, sp, #8
	mov r2, #8
	bl ov97_0223936C
	mov r0, #0x4e
	bl sub_0200B358
	add r4, r0, #0
	mov r0, #8
	mov r1, #0x4e
	bl sub_02023790
	add r1, sp, #8
	add r6, r0, #0
	bl sub_02023D28
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r5, #0
	bl ov97_02234ECC
	ldr r0, [r5, #0]
	mov r2, #0x18
	lsl r1, r0, #2
	ldr r0, _022353C8 ; =0x0223EA80
	ldr r0, [r0, r1]
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	sub r1, #0x34
	str r4, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	bl ov97_02233DD0
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r5, #0
	bl ov97_02235310
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_022353C8: .word 0x0223EA80
	thumb_func_end ov97_02235344

	thumb_func_start ov97_022353CC
ov97_022353CC: ; 0x022353CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022353FC ; =0x00012604
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022353E0
	blx r0
	ldr r0, _022353FC ; =0x00012604
	mov r1, #0
	str r1, [r4, r0]
_022353E0:
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, [r4, #0x20]
	bl sub_0201C2B8
	ldr r3, _02235400 ; =0x027E0000
	ldr r1, _02235404 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_022353FC: .word 0x00012604
_02235400: .word 0x027E0000
_02235404: .word 0x00003FF8
	thumb_func_end ov97_022353CC

	thumb_func_start ov97_02235408
ov97_02235408: ; 0x02235408
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x10]
	bl sub_02024440
	str r0, [sp, #8]
	bl sub_0202F0E0
	cmp r0, #0
	bne _0223545C
	ldr r0, [sp, #8]
	bl sub_0202F088
	cmp r0, #0
	bne _0223542E
	add sp, #0xc
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0223542E:
	ldr r0, [sp, #8]
	bl sub_0202F0BC
	cmp r0, #0
	bne _0223543E
	add sp, #0xc
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0223543E:
	bl ov97_0223635C
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_0202F050
	cmp r0, #0
	bne _02235450
	ldr r0, _022354B8 ; =0x0002A300
_02235450:
	ldr r1, _022354BC ; =0x00015180
	cmp r0, r1
	bge _0223545C
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0223545C:
	mov r6, #0
	str r6, [sp, #4]
	add r7, r6, #0
_02235462:
	mov r4, #0
	add r5, r4, #0
_02235466:
	ldr r1, [sp]
	ldr r0, _022354C0 ; =0x0000E880
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #5
	add r0, r0, #4
	add r0, r0, r7
	add r0, r0, r5
	bl ov97_02236924
	cmp r0, #0
	beq _02235480
	add r6, r6, #1
_02235480:
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #0x1e
	blt _02235466
	mov r0, #0x96
	lsl r0, r0, #4
	add r7, r7, r0
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xe
	blt _02235462
	cmp r6, #6
	bge _022354A2
	add sp, #0xc
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_022354A2:
	ldr r0, [sp, #8]
	bl sub_0202F028
	cmp r0, #0
	beq _022354B2
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_022354B2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022354B8: .word 0x0002A300
_022354BC: .word 0x00015180
_022354C0: .word 0x0000E880
	thumb_func_end ov97_02235408

	thumb_func_start ov97_022354C4
ov97_022354C4: ; 0x022354C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _02235500
	bl ov97_02234ECC
	mov r0, #1
	bl sub_02002B20
	ldr r0, _02235520 ; =0x0223EAB8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r1, #0x34
	mov r2, #1
	add r0, #0x10
	str r2, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x18
	bl ov97_02233DD0
	mov r0, #0
	str r0, [r5, #4]
	b _0223551A
_02235500:
	ldr r0, _02235524 ; =0x00000474
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223551A
	mov r0, #0
	bl sub_02002B20
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223551A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02235520: .word 0x0223EAB8
_02235524: .word 0x00000474
	thumb_func_end ov97_022354C4

	thumb_func_start ov97_02235528
ov97_02235528: ; 0x02235528
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _02235564
	bl ov97_02234ECC
	mov r0, #1
	bl sub_02002B20
	ldr r0, _02235588 ; =0x0223EAB8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r1, #0x34
	mov r2, #1
	add r0, #0x10
	str r2, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x18
	bl ov97_02233DD0
	mov r0, #0
	str r0, [r5, #4]
	b _02235584
_02235564:
	ldr r0, _0223558C ; =0x00000474
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02235584
	add r0, r5, #0
	bl ov97_02235310
	mov r0, #0
	bl sub_02002B20
	mov r0, #1
	pop {r3, r4, r5, pc}
_02235584:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02235588: .word 0x0223EAB8
_0223558C: .word 0x00000474
	thumb_func_end ov97_02235528

	thumb_func_start ov97_02235590
ov97_02235590: ; 0x02235590
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	ldr r2, [r5, #8]
	mvn r1, r1
	cmp r2, r1
	beq _022355D2
	bl ov97_02234ECC
	mov r0, #1
	bl sub_02002B20
	mov r1, #0x46
	ldr r0, [r5, #8]
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x10
	sub r1, #0x34
	str r4, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x18
	bl ov97_02233DD0
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #8]
	ldr r0, _02235614 ; =0x000005DC
	bl sub_02005748
	b _02235610
_022355D2:
	cmp r4, #0
	beq _022355F0
	ldr r0, _02235618 ; =0x00000474
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02235610
	mov r0, #0
	bl sub_02002B20
	mov r0, #1
	pop {r3, r4, r5, pc}
_022355F0:
	ldr r0, _0223561C ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _02235600
	ldr r0, _02235620 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02235610
_02235600:
	mov r0, #0
	bl sub_02002B20
	ldr r0, _02235614 ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	pop {r3, r4, r5, pc}
_02235610:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02235614: .word 0x000005DC
_02235618: .word 0x00000474
_0223561C: .word 0x021BF6BC
_02235620: .word 0x021BF67C
	thumb_func_end ov97_02235590

	thumb_func_start ov97_02235624
ov97_02235624: ; 0x02235624
	push {r3, r4, r5, lr}
	mov r2, #0xe
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x4e
	lsl r2, r2, #0xe
	bl sub_02017FC8
	ldr r1, _022356CC ; =0x00012610
	add r0, r5, #0
	mov r2, #0x4e
	bl sub_0200681C
	ldr r2, _022356CC ; =0x00012610
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x4e
	bl sub_02018340
	str r0, [r4, #0x20]
	mov r0, #0x4e
	bl sub_02015920
	ldr r1, _022356D0 ; =0x0000E88C
	str r0, [r4, r1]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #0x10]
	bl sub_02025E38
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl sub_02025E44
	str r0, [r4, #0x18]
	bl sub_02027B50
	str r0, [r4, #0x1c]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x4e
	bl sub_02023790
	ldr r1, _022356D4 ; =0x00012608
	str r0, [r4, r1]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x4e
	bl sub_02023790
	ldr r1, _022356D8 ; =0x0001260C
	mov r2, #1
	str r0, [r4, r1]
	ldr r1, _022356DC ; =0x00000496
	mov r0, #9
	bl sub_02004550
	bl OS_IsTickAvailable
	cmp r0, #0
	bne _022356BA
	bl OS_InitTick
_022356BA:
	bl ov97_02238440
	ldr r0, _022356E0 ; =0x0000E89C
	add r1, r4, r0
	ldr r0, _022356E4 ; =0x0223F434
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022356CC: .word 0x00012610
_022356D0: .word 0x0000E88C
_022356D4: .word 0x00012608
_022356D8: .word 0x0001260C
_022356DC: .word 0x00000496
_022356E0: .word 0x0000E89C
_022356E4: .word 0x0223F434
	thumb_func_end ov97_02235624

	thumb_func_start ov97_022356E8
ov97_022356E8: ; 0x022356E8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	bl CTRDG_IsExisting
	bl CTRDG_IsPulledOut
	cmp r0, #1
	beq _02235706
	ldr r0, _02235A0C ; =0x02101D24
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223571C
_02235706:
	ldr r0, _02235A10 ; =0x0000E890
	ldr r0, [r4, r0]
	sub r0, r0, #3
	cmp r0, #1
	bhi _02235716
	ldr r0, [r4, #0x10]
	bl sub_02024850
_02235716:
	mov r0, #0x4e
	bl sub_0209A8E0
_0223571C:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r5, #0]
	cmp r0, #0x18
	bhi _02235818
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235734: ; jump table
	.short _02235766 - _02235734 - 2 ; case 0
	.short _022357AE - _02235734 - 2 ; case 1
	.short _022357F4 - _02235734 - 2 ; case 2
	.short _02235808 - _02235734 - 2 ; case 3
	.short _02235842 - _02235734 - 2 ; case 4
	.short _0223585A - _02235734 - 2 ; case 5
	.short _022358B0 - _02235734 - 2 ; case 6
	.short _022358C2 - _02235734 - 2 ; case 7
	.short _022358E0 - _02235734 - 2 ; case 8
	.short _022358F2 - _02235734 - 2 ; case 9
	.short _02235950 - _02235734 - 2 ; case 10
	.short _02235968 - _02235734 - 2 ; case 11
	.short _0223597C - _02235734 - 2 ; case 12
	.short _022359BC - _02235734 - 2 ; case 13
	.short _02235AEA - _02235734 - 2 ; case 14
	.short _02235B04 - _02235734 - 2 ; case 15
	.short _02235B20 - _02235734 - 2 ; case 16
	.short _02235B3A - _02235734 - 2 ; case 17
	.short _02235B70 - _02235734 - 2 ; case 18
	.short _02235B96 - _02235734 - 2 ; case 19
	.short _02235C00 - _02235734 - 2 ; case 20
	.short _02235C0C - _02235734 - 2 ; case 21
	.short _02235C4E - _02235734 - 2 ; case 22
	.short _02235C72 - _02235734 - 2 ; case 23
	.short _02235C80 - _02235734 - 2 ; case 24
_02235766:
	bl ov97_02235DA4
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov97_02235D2C
	ldr r1, _02235A14 ; =0x000004A8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _022357A2
	bl ov97_022360D8
	ldr r1, _02235A18 ; =0x000004AC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0223579E
	bl ov97_02236340
	ldr r1, _02235A1C ; =0x0000E880
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldrb r2, [r0]
	add r0, r1, #4
	str r2, [r4, r0]
	b _022357A2
_0223579E:
	mov r0, #1
	str r0, [r4, #4]
_022357A2:
	add r0, r4, #0
	bl ov97_02233B44
	mov r0, #1
	str r0, [r5, #0]
	b _02235C8A
_022357AE:
	add r0, r4, #0
	bl ov97_02234DFC
	bl ov97_02233F74
	add r0, r4, #0
	bl ov97_02233FA4
	add r0, r4, #0
	bl ov97_022340B0
	add r0, r4, #0
	bl ov97_0223468C
	ldr r0, _02235A20 ; =ov97_022353CC
	add r1, r4, #0
	bl sub_02017798
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _022357EE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_022357EE:
	mov r0, #2
	str r0, [r5, #0]
	b _02235C8A
_022357F4:
	add r0, r4, #0
	bl ov97_02235344
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235808:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _0223581A
	cmp r0, #2
	beq _0223582C
_02235818:
	b _02235C8A
_0223581A:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	mov r0, #0x22
	str r0, [r4, #8]
	mov r0, #4
	str r0, [r5, #0]
	b _02235C8A
_0223582C:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	b _02235C8A
_02235842:
	add r0, r4, #0
	mov r1, #1
	bl ov97_02235590
	cmp r0, #0
	beq _0223586A
	add r0, r4, #0
	bl ov97_02235310
	mov r0, #5
	str r0, [r5, #0]
	b _02235C8A
_0223585A:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _0223586C
	cmp r0, #2
	beq _0223589A
_0223586A:
	b _02235C8A
_0223586C:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	bl ov97_02235408
	str r0, [r4, #4]
	cmp r0, #0
	beq _02235892
	sub r0, r0, #3
	cmp r0, #1
	bhi _0223588C
	mov r0, #8
	str r0, [r5, #0]
	b _02235C8A
_0223588C:
	mov r0, #0xb
	str r0, [r5, #0]
	b _02235C8A
_02235892:
	mov r0, #6
	str r0, [r4, #8]
	str r0, [r5, #0]
	b _02235C8A
_0223589A:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	b _02235C8A
_022358B0:
	add r0, r4, #0
	mov r1, #1
	bl ov97_02235590
	cmp r0, #0
	beq _02235902
	mov r0, #7
	str r0, [r5, #0]
	b _02235C8A
_022358C2:
	ldr r0, _02235A28 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _022358D2
	ldr r0, _02235A2C ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02235902
_022358D2:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_022358E0:
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov97_02235528
	cmp r0, #0
	beq _02235902
	mov r0, #9
	str r0, [r5, #0]
	b _02235C8A
_022358F2:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _02235904
	cmp r0, #2
	beq _0223593A
_02235902:
	b _02235C8A
_02235904:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	mov r1, #0x47
	lsl r1, r1, #4
	mov r2, #0
	add r0, r1, #0
	str r2, [r4, r1]
	sub r1, #0x44
	mov r3, #0x28
	sub r0, #0x10
	str r3, [r4, r0]
	add r0, r4, #0
	add r1, r4, r1
	bl ov97_02233DD0
	ldr r1, _02235A30 ; =0x00000498
	add r0, r4, r1
	sub r1, #0xc6
	bl sub_0200E7FC
	ldr r1, _02235A34 ; =0x0000E898
	str r0, [r4, r1]
	mov r0, #0xa
	str r0, [r5, #0]
	b _02235C8A
_0223593A:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	b _02235C8A
_02235950:
	add r0, r4, #0
	bl ov97_02233CE4
	ldr r0, _02235A34 ; =0x0000E898
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	mov r0, #7
	str r0, [r4, #4]
	mov r0, #0xb
	str r0, [r5, #0]
	b _02235C8A
_02235968:
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov97_022354C4
	cmp r0, #0
	bne _02235976
	b _02235C8A
_02235976:
	mov r0, #0x16
	str r0, [r5, #0]
	b _02235C8A
_0223597C:
	ldr r0, _02235A30 ; =0x00000498
	add r0, r4, r0
	bl ov97_02235158
	add r0, r4, #0
	bl ov97_02234E7C
	add r0, r4, #0
	bl ov97_02234508
	add r0, r4, #0
	bl ov97_022343A8
	ldr r0, _02235A20 ; =ov97_022353CC
	add r1, r4, #0
	bl sub_02017798
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #0
	bl ov97_02234B0C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xd
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_022359BC:
	mov r0, #0x31
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02022664
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02235A96
	cmp r6, #0x1e
	bge _02235A8C
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_02234854
	cmp r0, #1
	bne _02235A46
	ldr r2, _02235A1C ; =0x0000E880
	add r0, r4, #0
	ldr r1, [r4, r2]
	add r2, r2, #4
	ldr r3, [r4, r2]
	mov r2, #0x96
	lsl r2, r2, #4
	add r1, r1, #4
	mul r2, r3
	add r2, r1, r2
	mov r1, #0x50
	mul r1, r6
	add r1, r2, r1
	bl ov97_02234B0C
	mov r0, #0x41
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _02235A96
	ldr r0, _02235A38 ; =0x0000E888
	b _02235A3C
	; .align 2, 0
_02235A0C: .word 0x02101D24
_02235A10: .word 0x0000E890
_02235A14: .word 0x000004A8
_02235A18: .word 0x000004AC
_02235A1C: .word 0x0000E880
_02235A20: .word ov97_022353CC
_02235A24: .word 0x0000E88C
_02235A28: .word 0x021BF6BC
_02235A2C: .word 0x021BF67C
_02235A30: .word 0x00000498
_02235A34: .word 0x0000E898
_02235A38: .word 0x0000E888
_02235A3C:
	mov r1, #0x2d
	str r1, [r4, r0]
	mov r0, #0xf
	str r0, [r5, #0]
	b _02235C8A
_02235A46:
	cmp r0, #2
	bne _02235A54
	add r0, r4, #0
	mov r1, #0
	bl ov97_02234B0C
	b _02235C8A
_02235A54:
	cmp r0, #4
	bne _02235A62
	mov r0, #8
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r5, #0]
	b _02235C8A
_02235A62:
	cmp r0, #5
	bne _02235A70
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r5, #0]
	b _02235C8A
_02235A70:
	cmp r0, #6
	bne _02235A7E
	mov r0, #0x26
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r5, #0]
	b _02235C8A
_02235A7E:
	cmp r0, #7
	bne _02235A96
	mov r0, #0x26
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r5, #0]
	b _02235C8A
_02235A8C:
	beq _02235AD6
	cmp r6, #0x1f
	beq _02235A98
	cmp r6, #0x20
	beq _02235AB6
_02235A96:
	b _02235C8A
_02235A98:
	ldr r0, _02235C98 ; =0x0000E884
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02235AA4
	mov r1, #0xd
	b _02235AA6
_02235AA4:
	sub r1, r1, #1
_02235AA6:
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov97_022343A8
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	b _02235C8A
_02235AB6:
	ldr r0, _02235C98 ; =0x0000E884
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0xe
	bne _02235AC8
	mov r1, #0
	str r1, [r4, r0]
_02235AC8:
	add r0, r4, #0
	bl ov97_022343A8
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	b _02235C8A
_02235AD6:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	b _02235C8A
_02235AEA:
	add r0, r4, #0
	mov r1, #0
	bl ov97_02235590
	cmp r0, #0
	beq _02235B4A
	ldr r0, _02235CA0 ; =0x00000498
	add r0, r4, r0
	bl ov97_02235158
	mov r0, #0xd
	str r0, [r5, #0]
	b _02235C8A
_02235B04:
	ldr r0, _02235CA4 ; =0x0000E888
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02235B4A
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235B20:
	add r0, r4, #0
	bl ov97_02234F88
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x11
	add r3, r5, #0
	bl ov97_02234CC4
	add r0, r4, #0
	bl ov97_02235310
	b _02235C8A
_02235B3A:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _02235B4C
	cmp r0, #2
	beq _02235B5A
_02235B4A:
	b _02235C8A
_02235B4C:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	mov r0, #0x12
	str r0, [r5, #0]
	b _02235C8A
_02235B5A:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235B70:
	mov r1, #0x46
	mov r0, #0xb
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x34
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	bl ov97_02233DD0
	add r0, r4, #0
	bl ov97_02235310
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	mov r0, #0x13
	str r0, [r5, #0]
	b _02235C8A
_02235B96:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _02235BA8
	cmp r0, #2
	beq _02235BEA
	b _02235C8A
_02235BA8:
	ldr r0, [r4, #0]
	mov r2, #0
	lsl r1, r0, #2
	ldr r0, _02235CAC ; =0x0223EA68
	ldr r0, [r0, r1]
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x34
	add r0, r4, #0
	add r1, r4, r1
	bl ov97_02233DD0
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	ldr r0, _02235CB0 ; =0x0000E890
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, _02235CA0 ; =0x00000498
	add r0, r4, r1
	sub r1, #0xc6
	bl sub_0200E7FC
	ldr r1, _02235CB4 ; =0x0000E898
	str r0, [r4, r1]
	mov r0, #0x15
	str r0, [r5, #0]
	mov r0, #4
	bl sub_02017DE0
	b _02235C8A
_02235BEA:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235C00:
	add r0, r4, #0
	bl ov97_02235178
	mov r0, #0xc
	str r0, [r5, #0]
	b _02235C8A
_02235C0C:
	add r0, r4, #0
	bl ov97_02233B8C
	add r6, r0, #0
	cmp r6, #0xa
	beq _02235C8A
	ldr r0, _02235CB4 ; =0x0000E898
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	ldr r0, _02235CB8 ; =0x0000061B
	bl sub_02005748
	cmp r6, #0xb
	bne _02235C2E
	mov r1, #0x1d
	b _02235C30
_02235C2E:
	mov r1, #0x24
_02235C30:
	mov r0, #0x46
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _02235CBC ; =0x0000042C
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	bl ov97_02233DD0
	mov r0, #0x16
	str r0, [r5, #0]
	mov r0, #4
	bl sub_02017DF0
	b _02235C8A
_02235C4E:
	ldr r0, _02235CC0 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _02235C5E
	ldr r0, _02235CC4 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02235C8A
_02235C5E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	b _02235C8A
_02235C72:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02235C8A
	ldr r0, [r4, #0x24]
	str r0, [r5, #0]
	b _02235C8A
_02235C80:
	add r0, r4, #0
	bl ov97_022351F0
	mov r0, #1
	pop {r4, r5, r6, pc}
_02235C8A:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02235C94
	bl sub_020219F8
_02235C94:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02235C98: .word 0x0000E884
_02235C9C: .word 0x000005DC
_02235CA0: .word 0x00000498
_02235CA4: .word 0x0000E888
_02235CA8: .word 0x0000E88C
_02235CAC: .word 0x0223EA68
_02235CB0: .word 0x0000E890
_02235CB4: .word 0x0000E898
_02235CB8: .word 0x0000061B
_02235CBC: .word 0x0000042C
_02235CC0: .word 0x021BF6BC
_02235CC4: .word 0x021BF67C
	thumb_func_end ov97_022356E8

	thumb_func_start ov97_02235CC8
ov97_02235CC8: ; 0x02235CC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _02235D08 ; =0x00012608
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _02235D0C ; =0x0001260C
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, [r4, #0x20]
	bl sub_020181C4
	ldr r0, _02235D10 ; =0x0000004D
	ldr r1, _02235D14 ; =0x021D742C
	bl sub_02000EC4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x4e
	bl sub_0201807C
	mov r0, #0
	bl ov97_02238400
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02235D08: .word 0x00012608
_02235D0C: .word 0x0001260C
_02235D10: .word 0x0000004D
_02235D14: .word 0x021D742C
	thumb_func_end ov97_02235CC8

	.rodata


	.global Unk_ov97_0223D864
Unk_ov97_0223D864: ; 0x0223D864
	.incbin "incbin/overlay97_rodata.bin", 0x1F0, 0x200 - 0x1F0

	.global Unk_ov97_0223D874
Unk_ov97_0223D874: ; 0x0223D874
	.incbin "incbin/overlay97_rodata.bin", 0x200, 0x210 - 0x200

	.global Unk_ov97_0223D884
Unk_ov97_0223D884: ; 0x0223D884
	.incbin "incbin/overlay97_rodata.bin", 0x210, 0x220 - 0x210

	.global Unk_ov97_0223D894
Unk_ov97_0223D894: ; 0x0223D894
	.incbin "incbin/overlay97_rodata.bin", 0x220, 0x23C - 0x220

	.global Unk_ov97_0223D8B0
Unk_ov97_0223D8B0: ; 0x0223D8B0
	.incbin "incbin/overlay97_rodata.bin", 0x23C, 0x258 - 0x23C

	.global Unk_ov97_0223D8CC
Unk_ov97_0223D8CC: ; 0x0223D8CC
	.incbin "incbin/overlay97_rodata.bin", 0x258, 0x274 - 0x258

	.global Unk_ov97_0223D8E8
Unk_ov97_0223D8E8: ; 0x0223D8E8
	.incbin "incbin/overlay97_rodata.bin", 0x274, 0x290 - 0x274

	.global Unk_ov97_0223D904
Unk_ov97_0223D904: ; 0x0223D904
	.incbin "incbin/overlay97_rodata.bin", 0x290, 0x28


	.data


	.global Unk_ov97_0223EA60
Unk_ov97_0223EA60: ; 0x0223EA60
	.incbin "incbin/overlay97_data.bin", 0xB20, 0xB28 - 0xB20

	.global Unk_ov97_0223EA68
Unk_ov97_0223EA68: ; 0x0223EA68
	.incbin "incbin/overlay97_data.bin", 0xB28, 0xB40 - 0xB28

	.global Unk_ov97_0223EA80
Unk_ov97_0223EA80: ; 0x0223EA80
	.incbin "incbin/overlay97_data.bin", 0xB40, 0xB58 - 0xB40

	.global Unk_ov97_0223EA98
Unk_ov97_0223EA98: ; 0x0223EA98
	.incbin "incbin/overlay97_data.bin", 0xB58, 0xB78 - 0xB58

	.global Unk_ov97_0223EAB8
Unk_ov97_0223EAB8: ; 0x0223EAB8
	.incbin "incbin/overlay97_data.bin", 0xB78, 0xB98 - 0xB78

	.global Unk_ov97_0223EAD8
Unk_ov97_0223EAD8: ; 0x0223EAD8
	.incbin "incbin/overlay97_data.bin", 0xB98, 0x124


	.bss


	.global Unk_ov97_0223F434
Unk_ov97_0223F434: ; 0x0223F434
	.space 0x4

