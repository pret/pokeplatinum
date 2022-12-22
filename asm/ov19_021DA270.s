	.include "macros/function.inc"
	.include "include/ov19_021DA270.inc"

	

	.text


	thumb_func_start ov19_021DA270
ov19_021DA270: ; 0x021DA270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x13
	mov r1, #0xa
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x48]
	bl sub_02006C24
	str r0, [r5, #0x48]
	add r0, sp, #0x1c
	bl NNS_G2dInitImagePaletteProxy
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0xa
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	ldr r0, [r5, #0x48]
	mov r2, #1
	mov r3, #0x40
	bl sub_0200716C
	bl sub_02079FD0
	add r1, r0, #0
	ldr r0, [r5, #0x48]
	add r2, sp, #0x18
	mov r3, #0xa
	bl sub_020071EC
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _021DA308
	add r0, sp, #0x1c
	bl NNS_G2dInitImagePaletteProxy
	ldr r0, [sp, #0x10]
	add r1, sp, #0x14
	bl NNS_G2dGetUnpackedPaletteCompressInfo
	ldr r2, [sp, #0x18]
	add r7, r0, #0
	ldr r0, [r2, #0xc]
	mov r1, #8
	str r1, [sp]
	ldr r2, [r2, #8]
	ldr r3, _021DA380 ; =0x0000057F
	add r1, r0, #0
	lsr r2, r2, #1
	bl ov19_021D78C8
	cmp r7, #0
	beq _021DA2F6
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	mov r2, #0xc0
	mov r3, #1
	bl NNS_G2dLoadPaletteEx
	b _021DA302
_021DA2F6:
	ldr r0, [sp, #0x18]
	mov r1, #0xc0
	mov r2, #1
	add r3, sp, #0x1c
	bl NNS_G2dLoadPalette
_021DA302:
	ldr r0, [sp, #0x10]
	bl sub_020181C4
_021DA308:
	mov r0, #0xa
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	add r3, #0x10
	bl sub_02007204
	str r0, [r5, #8]
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #1
	add r3, r5, #4
	bl sub_02007220
	str r0, [r5, #0]
	mov r0, #0xa
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	add r3, #0x1c
	bl sub_02007204
	str r0, [r5, #0x14]
	mov r0, #0xa
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #1
	add r3, #0x20
	bl sub_02007220
	str r0, [r5, #0x18]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021DA368
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021DA368
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _021DA36E
_021DA368:
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DA36E:
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x24]
	ldr r0, [sp, #8]
	str r0, [r5, #0x40]
	str r6, [r5, #0x44]
	mov r0, #1
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DA380: .word 0x0000057F
	thumb_func_end ov19_021DA270

	thumb_func_start ov19_021DA384
ov19_021DA384: ; 0x021DA384
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DA396
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
_021DA396:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021DA3A4
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
_021DA3A4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021DA3B2
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x14]
_021DA3B2:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021DA3C0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x18]
_021DA3C0:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021DA3CA
	bl sub_02006CA8
_021DA3CA:
	pop {r4, pc}
	thumb_func_end ov19_021DA384

	thumb_func_start ov19_021DA3CC
ov19_021DA3CC: ; 0x021DA3CC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r0, r4, #0
	add r5, r1, #0
	sub r4, r4, #1
	cmp r0, #0
	beq _021DA3EE
	mov r6, #0
_021DA3DC:
	add r0, r5, #4
	str r6, [r5, #0]
	bl NNS_G2dInitImageProxy
	add r0, r4, #0
	add r5, #0x34
	sub r4, r4, #1
	cmp r0, #0
	bne _021DA3DC
_021DA3EE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DA3CC

	thumb_func_start ov19_021DA3F0
ov19_021DA3F0: ; 0x021DA3F0
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r0, r4, #0
	add r5, r1, #0
	sub r4, r4, #1
	cmp r0, #0
	beq _021DA416
	mov r6, #0
_021DA400:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021DA40C
	bl sub_02021BD4
	str r6, [r5, #0]
_021DA40C:
	add r0, r4, #0
	add r5, #0x34
	sub r4, r4, #1
	cmp r0, #0
	bne _021DA400
_021DA416:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DA3F0

	thumb_func_start ov19_021DA418
ov19_021DA418: ; 0x021DA418
	mov r3, #0x34
	mul r3, r2
	add r2, r3, #0
	ldr r3, _021DA424 ; =MIi_CpuCopy32
	bx r3
	nop
_021DA424: .word MIi_CpuCopy32
	thumb_func_end ov19_021DA418

	thumb_func_start ov19_021DA428
ov19_021DA428: ; 0x021DA428
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x64]
	bl sub_02073D20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x44]
	bl ov19_021D77D0
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x58]
	str r0, [sp, #4]
	ldr r3, [r5, #0x10]
	add r0, sp, #0x20
	bl ov19_021D783C
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r6, #0
	bl sub_02079D40
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl sub_02079EDC
	strh r0, [r4, #0x2c]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	strh r0, [r4, #0x30]
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0
	bl sub_02074570
	strh r0, [r4, #0x2e]
	add r0, r4, #4
	bl NNS_G2dInitImageProxy
	add r0, r5, #0
	add r0, #0x4c
	str r0, [sp]
	mov r3, #0xa
	ldr r0, [r5, #0x48]
	ldr r1, [r4, #0x28]
	mov r2, #0
	lsl r3, r3, #6
	bl sub_02006DC8
	add r0, r5, #0
	add r0, #0x4c
	add r1, sp, #0x1c
	bl NNS_G2dGetUnpackedCharacterData
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021DA544 ; =0x00300010
	add r3, r4, #4
	and r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [r0, #8]
	lsr r1, r2, #0x11
	ldr r0, [sp, #0x1c]
	mov r2, #1
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #5
	bl NNS_G2dLoadImage1DMapping
	add r0, r4, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x5c]
	ldr r2, [sp, #8]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r3, [sp, #0xc]
	add r1, sp, #0x20
	bl ov19_021D785C
	str r0, [r4, #0]
	cmp r0, #0
	bne _021DA51E
	bl GF_AssertFail
_021DA51E:
	ldrh r1, [r4, #0x2c]
	ldr r0, [r4, #0]
	add r1, r1, #2
	bl sub_02021E90
	ldr r0, [r5, #0x40]
	bl ov19_021D5EC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DA63C
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl sub_02073D48
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DA544: .word 0x00300010
	thumb_func_end ov19_021DA428

	thumb_func_start ov19_021DA548
ov19_021DA548: ; 0x021DA548
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	str r2, [sp, #8]
	add r7, r3, #0
	ldr r4, [sp, #0x70]
	bl sub_02073D20
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x44]
	bl ov19_021D77D0
	add r2, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x64]
	str r0, [sp, #4]
	ldr r3, [r5, #0x10]
	add r0, sp, #0x1c
	bl ov19_021D783C
	str r7, [r4, #0x28]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_02079EDC
	strh r0, [r4, #0x2c]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074570
	strh r0, [r4, #0x30]
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0
	bl sub_02074570
	strh r0, [r4, #0x2e]
	add r0, r4, #4
	bl NNS_G2dInitImageProxy
	ldr r0, [sp, #0x58]
	add r1, sp, #0x18
	bl NNS_G2dGetUnpackedCharacterData
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021DA638 ; =0x00300010
	add r3, r4, #4
	and r1, r0
	ldr r0, [sp, #0x18]
	str r1, [r0, #8]
	lsr r1, r2, #0x11
	ldr r0, [sp, #0x18]
	mov r2, #1
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x6c]
	ldr r0, [sp, #0x18]
	lsl r1, r1, #5
	bl NNS_G2dLoadImage1DMapping
	add r0, r4, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x68]
	ldr r2, [sp, #0x5c]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r3, [sp, #0x60]
	add r1, sp, #0x1c
	bl ov19_021D785C
	str r0, [r4, #0]
	cmp r0, #0
	bne _021DA610
	bl GF_AssertFail
_021DA610:
	ldrh r1, [r4, #0x2c]
	ldr r0, [r4, #0]
	add r1, r1, #2
	bl sub_02021E90
	ldr r0, [r5, #0x40]
	bl ov19_021D5EC8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov19_021DA63C
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl sub_02073D48
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DA638: .word 0x00300010
	thumb_func_end ov19_021DA548

	thumb_func_start ov19_021DA63C
ov19_021DA63C: ; 0x021DA63C
	push {r4, r5, r6, lr}
	cmp r2, #0
	beq _021DA682
	mov r3, #1
	add r0, r2, #0
	tst r0, r3
	beq _021DA65A
	ldrh r0, [r1, #0x30]
	cmp r0, #0
	bne _021DA65A
	ldr r0, [r1, #0]
	add r1, r3, #0
	bl sub_02021FE0
	pop {r4, r5, r6, pc}
_021DA65A:
	mov r3, #0
	mov r4, #1
	mov r0, #2
_021DA660:
	add r5, r0, #0
	lsl r5, r3
	tst r5, r2
	beq _021DA67C
	add r5, r4, #0
	ldrh r6, [r1, #0x2e]
	lsl r5, r3
	tst r5, r6
	bne _021DA67C
	ldr r0, [r1, #0]
	add r1, r4, #0
	bl sub_02021FE0
	pop {r4, r5, r6, pc}
_021DA67C:
	add r3, r3, #1
	cmp r3, #6
	blt _021DA660
_021DA682:
	ldr r0, [r1, #0]
	mov r1, #0
	bl sub_02021FE0
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DA63C

	thumb_func_start ov19_021DA68C
ov19_021DA68C: ; 0x021DA68C
	strh r2, [r1, #0x2e]
	bx lr
	thumb_func_end ov19_021DA68C

	thumb_func_start ov19_021DA690
ov19_021DA690: ; 0x021DA690
	strh r2, [r1, #0x30]
	bx lr
	thumb_func_end ov19_021DA690

	thumb_func_start ov19_021DA694
ov19_021DA694: ; 0x021DA694
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x30]
	add r6, r2, #0
	cmp r0, #0x70
	bne _021DA6C2
	mov r1, #0
	ldr r0, _021DA740 ; =0x000001E7
	add r2, r1, #0
	bl sub_02079D8C
	ldr r1, [r4, #0x28]
	cmp r1, r0
	bne _021DA6C2
	ldr r0, _021DA740 ; =0x000001E7
	mov r1, #0
	mov r2, #1
	bl sub_02079D8C
	str r0, [r4, #0x28]
	b _021DA70A
_021DA6C2:
	ldrh r0, [r4, #0x30]
	cmp r0, #0x70
	beq _021DA6E6
	ldr r0, _021DA740 ; =0x000001E7
	mov r1, #0
	mov r2, #1
	bl sub_02079D8C
	ldr r1, [r4, #0x28]
	cmp r1, r0
	bne _021DA6E6
	mov r1, #0
	ldr r0, _021DA740 ; =0x000001E7
	add r2, r1, #0
	bl sub_02079D8C
	str r0, [r4, #0x28]
	b _021DA70A
_021DA6E6:
	cmp r6, #1
	bne _021DA73C
	mov r0, #0x7b
	lsl r0, r0, #2
	mov r1, #0
	mov r2, #1
	bl sub_02079D8C
	ldr r1, [r4, #0x28]
	cmp r1, r0
	bne _021DA73C
	mov r0, #0x7b
	mov r1, #0
	lsl r0, r0, #2
	add r2, r1, #0
	bl sub_02079D8C
	str r0, [r4, #0x28]
_021DA70A:
	add r0, r5, #0
	ldr r6, [r4, #8]
	add r0, #0x4c
	str r0, [sp]
	mov r3, #0xa
	mov r7, #0x19
	ldr r0, [r5, #0x48]
	ldr r1, [r4, #0x28]
	mov r2, #0
	lsl r3, r3, #6
	lsl r7, r7, #0x16
	bl sub_02006DC8
	add r5, #0x4c
	add r0, r5, #0
	add r1, sp, #4
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #4]
	mov r2, #2
	ldr r0, [r0, #0x14]
	add r1, r6, r7
	lsl r2, r2, #8
	bl MIi_CpuCopy32
_021DA73C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DA740: .word 0x000001E7
	thumb_func_end ov19_021DA694

	thumb_func_start ov19_021DA744
ov19_021DA744: ; 0x021DA744
	push {r3, lr}
	str r1, [sp]
	ldr r0, [r0, #0x48]
	add r1, r2, #0
	mov r2, #0
	bl sub_02006DC8
	pop {r3, pc}
	thumb_func_end ov19_021DA744

	thumb_func_start ov19_021DA754
ov19_021DA754: ; 0x021DA754
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r6, r2, #0
	cmp r0, #0
	beq _021DA7B0
	add r0, r4, #4
	bl NNS_G2dInitImageProxy
	add r0, r5, #0
	add r0, #0x4c
	str r0, [sp]
	mov r3, #0xa
	ldr r0, [r5, #0x48]
	ldr r1, [r4, #0x28]
	mov r2, #0
	lsl r3, r3, #6
	bl sub_02006DC8
	add r5, #0x4c
	add r0, r5, #0
	add r1, sp, #4
	bl NNS_G2dGetUnpackedCharacterData
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021DA7B4 ; =0x00300010
	add r3, r4, #4
	and r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #8]
	lsr r1, r2, #0x11
	ldr r0, [sp, #4]
	mov r2, #1
	str r1, [r0, #0x10]
	ldr r0, [sp, #4]
	lsl r1, r6, #5
	bl NNS_G2dLoadImage1DMapping
	ldr r0, [r4, #0]
	add r1, r4, #4
	bl sub_02021F7C
_021DA7B0:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DA7B4: .word 0x00300010
	thumb_func_end ov19_021DA754

	thumb_func_start ov19_021DA7B8
ov19_021DA7B8: ; 0x021DA7B8
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	sub r0, r4, #1
	cmp r0, #1
	ldr r0, [r5, #0]
	bhi _021DA7CE
	mov r1, #1
	bl sub_02021CF8
	b _021DA7D4
_021DA7CE:
	mov r1, #0
	bl sub_02021CF8
_021DA7D4:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DA7B8

	thumb_func_start ov19_021DA7E0
ov19_021DA7E0: ; 0x021DA7E0
	push {r3, lr}
	ldr r0, [r1, #0]
	bl sub_02021FD0
	cmp r0, #0
	bne _021DA7F0
	mov r0, #1
	pop {r3, pc}
_021DA7F0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov19_021DA7E0

	thumb_func_start ov19_021DA7F4
ov19_021DA7F4: ; 0x021DA7F4
	cmp r2, #0
	beq _021DA7FC
	mov r2, #6
	b _021DA7FE
_021DA7FC:
	mov r2, #2
_021DA7FE:
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0x2c]
	ldr r3, _021DA808 ; =sub_02021E90
	add r1, r1, r2
	bx r3
	; .align 2, 0
_021DA808: .word sub_02021E90
	thumb_func_end ov19_021DA7F4

	thumb_func_start ov19_021DA80C
ov19_021DA80C: ; 0x021DA80C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov19_021DA80C

	thumb_func_start ov19_021DA810
ov19_021DA810: ; 0x021DA810
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov19_021DA810