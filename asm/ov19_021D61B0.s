	.include "macros/function.inc"
	.include "include/ov19_021D61B0.inc"

	

	.text


	thumb_func_start ov19_021D61B0
ov19_021D61B0: ; 0x021D61B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	str r0, [sp, #0x14]
	ldr r1, _021D6430 ; =0x0000B3B4
	mov r0, #0xa
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	beq _021D61DE
	mov r0, #0x16
	lsl r0, r0, #4
	str r5, [r4, r0]
	mov r0, #0xa
	bl sub_02018340
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D61E0
_021D61DE:
	b _021D642A
_021D61E0:
	mov r0, #0x12
	mov r1, #0xa
	mov r5, #1
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r3, _021D6434 ; =0xFFFFE0FF
	and r0, r3
	str r0, [r1, #0]
	ldr r0, _021D6438 ; =0x04001000
	ldr r2, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _021D643C ; =0xFFCFFFEF
	and r3, r2
	ldr r2, _021D6440 ; =0x00100010
	orr r2, r3
	str r2, [r1, #0]
	ldr r2, [r0, #0]
	ldr r1, _021D643C ; =0xFFCFFFEF
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	str r1, [r0, #0]
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r2, #0x80
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r1, #0xa
	str r1, [sp, #0x10]
	add r1, r2, #0
	add r2, r0, #0
	bl sub_0200A784
	add r1, r4, #0
	mov r0, #0x80
	add r1, #0x1c
	mov r2, #0xa
	bl sub_020095C4
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r2, #6
	add r0, #0x1c
	mov r1, #0
	lsl r2, r2, #0x12
	bl sub_0200964C
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r4, r0
	bl NNS_G2dInitImagePaletteProxy
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x1a
	add r2, r5, #0
	mov r3, #0
	bl sub_0200716C
	mov r0, #0
	mov r1, #0xa
	bl sub_02002BEC
	mov r0, #0xa
	bl sub_0200762C
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #0
	add r2, r4, #0
	add r0, r1, #0
_021D62A2:
	add r1, r1, #1
	str r0, [r2, #8]
	add r2, r2, #4
	cmp r1, #4
	blo _021D62A2
	bl ov19_021D7970
	ldr r0, [sp, #0x14]
	mov r2, #0x59
	str r4, [r0, #0]
	lsl r2, r2, #2
	str r6, [sp]
	add r0, r4, r2
	sub r2, r2, #4
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x18]
	add r1, r4, #0
	bl ov19_021DA270
	and r5, r0
	ldr r0, [r4, #0x18]
	mov r3, #0x16
	str r0, [sp]
	lsl r3, r3, #4
	mov r0, #0x43
	ldr r2, [r4, r3]
	sub r3, r3, #4
	lsl r0, r0, #4
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021D79F8
	mov r2, #0x16
	and r5, r0
	str r6, [sp]
	ldr r0, _021D6444 ; =0x00005DC0
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x18]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021D8B54
	mov r2, #0x16
	and r5, r0
	str r6, [sp]
	ldr r0, _021D6448 ; =0x00006558
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x18]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021DA814
	and r5, r0
	add r0, r7, #0
	bl ov19_021D5DE8
	ldr r1, [r4, #0x18]
	mov r3, #0x16
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021D644C ; =0x000065A0
	str r6, [sp, #8]
	lsl r3, r3, #4
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021DA92C
	and r5, r0
	add r0, r7, #0
	bl ov19_021D5DE8
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl ov19_021D5DF0
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl ov19_021D5DF8
	ldr r1, [r4, #0x18]
	mov r3, #0x16
	str r1, [sp]
	ldr r1, [sp, #0x18]
	lsl r3, r3, #4
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r0, _021D6450 ; =0x000065F4
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021DB2FC
	and r5, r0
	ldr r0, [r4, #0x18]
	mov r3, #0x16
	str r0, [sp]
	ldr r0, _021D6454 ; =0x0000662C
	str r6, [sp, #4]
	lsl r3, r3, #4
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021DB8E4
	and r5, r0
	ldr r0, [r4, #0x18]
	mov r3, #0x16
	str r0, [sp]
	ldr r0, _021D6458 ; =0x0000B22C
	str r6, [sp, #4]
	lsl r3, r3, #4
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021DC5F0
	and r5, r0
	ldr r0, [r4, #0x18]
	mov r3, #0x16
	str r0, [sp]
	lsl r3, r3, #4
	ldr r0, _021D645C ; =0x0000B3A4
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021DCF88
	and r5, r0
	ldr r0, [r4, #0x18]
	mov r3, #0x16
	str r0, [sp]
	lsl r3, r3, #4
	ldr r0, _021D6460 ; =0x0000B3A8
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021DE3E8
	and r5, r0
	add r0, r7, #0
	bl ov19_021D5DE8
	ldr r1, [r4, #0x18]
	mov r3, #0x16
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021D6464 ; =0x0000B3AC
	str r6, [sp, #8]
	lsl r3, r3, #4
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r1, r4, #0
	bl ov19_021DEC04
	and r5, r0
	ldr r0, _021D6468 ; =0x0000B3B0
	add r1, r4, #0
	str r7, [r4, r0]
	ldr r0, _021D646C ; =ov19_021D6474
	mov r2, #2
	bl sub_0200D9E8
	str r0, [r4, #0]
	ldr r0, _021D6470 ; =ov19_021D6664
	add r1, r4, #0
	mov r2, #1
	bl ov19_021D77C8
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x20
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D642A:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6430: .word 0x0000B3B4
_021D6434: .word 0xFFFFE0FF
_021D6438: .word 0x04001000
_021D643C: .word 0xFFCFFFEF
_021D6440: .word 0x00100010
_021D6444: .word 0x00005DC0
_021D6448: .word 0x00006558
_021D644C: .word 0x000065A0
_021D6450: .word 0x000065F4
_021D6454: .word 0x0000662C
_021D6458: .word 0x0000B22C
_021D645C: .word 0x0000B3A4
_021D6460: .word 0x0000B3A8
_021D6464: .word 0x0000B3AC
_021D6468: .word 0x0000B3B0
_021D646C: .word ov19_021D6474
_021D6470: .word ov19_021D6664
	thumb_func_end ov19_021D61B0

	thumb_func_start ov19_021D6474
ov19_021D6474: ; 0x021D6474
	push {r4, lr}
	add r4, r1, #0
	bl ov19_021D797C
	bl G3X_Reset
	bl G3X_ResetMtxStack
	bl NNS_G2dSetupSoftwareSpriteCamera
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007768
	ldr r0, _021D649C ; =0x04000540
	mov r1, #0
	str r1, [r0, #0]
	pop {r4, pc}
	nop
_021D649C: .word 0x04000540
	thumb_func_end ov19_021D6474

	thumb_func_start ov19_021D64A0
ov19_021D64A0: ; 0x021D64A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	ldr r0, [r4, #0]
	bl sub_0200DA58
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, _021D6570 ; =0x0000B3AC
	ldr r0, [r4, r0]
	bl ov19_021DECAC
	ldr r0, _021D6574 ; =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DE440
	ldr r0, _021D6578 ; =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD078
	ldr r0, _021D657C ; =0x0000B22C
	add r0, r4, r0
	bl ov19_021DC680
	ldr r0, _021D6580 ; =0x0000662C
	add r0, r4, r0
	bl ov19_021DBAD0
	ldr r0, _021D6584 ; =0x000065F4
	add r0, r4, r0
	bl ov19_021DB370
	ldr r0, _021D6588 ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DA9E0
	ldr r0, _021D658C ; =0x00006558
	add r0, r4, r0
	bl ov19_021DA8D8
	ldr r0, _021D6590 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D8E84
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov19_021D7A74
	mov r0, #0x59
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov19_021DA384
	ldr r0, [r4, #0x18]
	bl sub_02021964
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl sub_02019044
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02019044
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02019044
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_02019044
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007B6C
	mov r0, #0
	bl sub_02002C28
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	bl sub_0200A878
	pop {r4, pc}
	; .align 2, 0
_021D6570: .word 0x0000B3AC
_021D6574: .word 0x0000B3A8
_021D6578: .word 0x0000B3A4
_021D657C: .word 0x0000B22C
_021D6580: .word 0x0000662C
_021D6584: .word 0x000065F4
_021D6588: .word 0x000065A0
_021D658C: .word 0x00006558
_021D6590: .word 0x00005DC0
	thumb_func_end ov19_021D64A0

	thumb_func_start ov19_021D6594
ov19_021D6594: ; 0x021D6594
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #0x34
	bhs _021D65F0
	mov r4, #0
	add r1, r5, #0
_021D65A2:
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _021D65E6
	ldr r0, _021D65F8 ; =0x021DFF9C
	lsl r7, r6, #3
	ldr r0, [r0, r7]
	str r0, [sp]
	ldr r1, [sp]
	mov r0, #0xa
	add r1, #0x14
	bl sub_02018144
	add r1, r0, #0
	beq _021D65E0
	str r6, [r1, #0]
	strh r4, [r1, #4]
	mov r0, #0
	strh r0, [r1, #6]
	ldr r0, [sp]
	str r5, [r1, #0xc]
	add r0, r1, r0
	str r0, [r1, #0x10]
	ldr r0, _021D65FC ; =0x021DFF98
	mov r2, #1
	ldr r0, [r0, r7]
	bl sub_0200D9E8
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021D65E0:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021D65E6:
	add r4, r4, #1
	add r1, r1, #4
	cmp r4, #4
	blo _021D65A2
	pop {r3, r4, r5, r6, r7, pc}
_021D65F0:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D65F8: .word 0x021DFF9C
_021D65FC: .word 0x021DFF98
	thumb_func_end ov19_021D6594

	thumb_func_start ov19_021D6600
ov19_021D6600: ; 0x021D6600
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021D6608:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D661C
	bl sub_0201CED0
	ldr r0, [r0, #0]
	cmp r0, r6
	bne _021D661C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D661C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D6608
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D6600

	thumb_func_start ov19_021D6628
ov19_021D6628: ; 0x021D6628
	mov r2, #0
_021D662A:
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021D6634
	mov r0, #0
	bx lr
_021D6634:
	add r2, r2, #1
	add r0, r0, #4
	cmp r2, #4
	blt _021D662A
	mov r0, #1
	bx lr
	thumb_func_end ov19_021D6628

	thumb_func_start ov19_021D6640
ov19_021D6640: ; 0x021D6640
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	ldr r4, [r5, #0xc]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl sub_0200DA58
	ldrh r0, [r5, #4]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #8]
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D6640

	thumb_func_start ov19_021D6664
ov19_021D6664: ; 0x021D6664
	push {r4, lr}
	ldr r0, _021D6688 ; =0x000065A0
	add r4, r1, #0
	add r0, r4, r0
	bl ov19_021DAA80
	ldr r0, [r4, #0x18]
	bl sub_020219F8
	bl sub_0200A858
	ldr r3, _021D668C ; =0x027E0000
	ldr r1, _021D6690 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_021D6688: .word 0x000065A0
_021D668C: .word 0x027E0000
_021D6690: .word 0x00003FF8
	thumb_func_end ov19_021D6664

	thumb_func_start ov19_021D6694
ov19_021D6694: ; 0x021D6694
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r0, #0x16
	ldr r4, [r5, #0xc]
	lsl r0, r0, #4
	ldr r6, [r4, r0]
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _021D66AC
	cmp r0, #1
	beq _021D66FA
	pop {r3, r4, r5, r6, r7, pc}
_021D66AC:
	mov r0, #0x12
	mov r1, #0xa
	bl sub_02006C24
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov19_021D74B4
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov19_021D75CC
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov19_021D7774
	add r0, r7, #0
	bl sub_02006CA8
	add r0, r6, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D66F2
	ldr r0, _021D6718 ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DAA90
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
_021D66F2:
	add r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, r6, r7, pc}
_021D66FA:
	ldr r0, _021D6718 ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DAAC4
	cmp r0, #0
	beq _021D6714
	ldr r0, _021D6718 ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DAF98
	add r0, r5, #0
	bl ov19_021D6640
_021D6714:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D6718: .word 0x000065A0
	thumb_func_end ov19_021D6694

	thumb_func_start ov19_021D671C
ov19_021D671C: ; 0x021D671C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021D6730
	cmp r0, #1
	beq _021D6766
	add sp, #0xc
	pop {r3, r4, pc}
_021D6730:
	ldr r0, _021D6778 ; =0x0000060D
	bl sub_02005748
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021D677C ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	mov r3, #6
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrh r0, [r4, #6]
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, pc}
_021D6766:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D6774
	add r0, r4, #0
	bl ov19_021D6640
_021D6774:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021D6778: .word 0x0000060D
_021D677C: .word 0x04000050
	thumb_func_end ov19_021D671C

	thumb_func_start ov19_021D6780
ov19_021D6780: ; 0x021D6780
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021D6794
	cmp r0, #1
	beq _021D67C4
	add sp, #0xc
	pop {r3, r4, pc}
_021D6794:
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021D67D8 ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	mov r3, #6
	bl G2x_SetBlendAlpha_
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrh r0, [r4, #6]
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, pc}
_021D67C4:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D67D2
	add r0, r4, #0
	bl ov19_021D6640
_021D67D2:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D67D8: .word 0x04000050
	thumb_func_end ov19_021D6780

	thumb_func_start ov19_021D67DC
ov19_021D67DC: ; 0x021D67DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021D67F0
	cmp r0, #1
	beq _021D6812
	add sp, #0xc
	pop {r3, r4, pc}
_021D67F0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrh r0, [r4, #6]
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, pc}
_021D6812:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D6820
	add r0, r4, #0
	bl ov19_021D6640
_021D6820:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov19_021D67DC

	thumb_func_start ov19_021D6824
ov19_021D6824: ; 0x021D6824
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r0, #0x16
	ldr r5, [r4, #0xc]
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	ldrh r0, [r4, #6]
	cmp r0, #4
	bhi _021D68DA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D6842: ; jump table
	.short _021D684C - _021D6842 - 2 ; case 0
	.short _021D685A - _021D6842 - 2 ; case 1
	.short _021D686C - _021D6842 - 2 ; case 2
	.short _021D68AC - _021D6842 - 2 ; case 3
	.short _021D68C8 - _021D6842 - 2 ; case 4
_021D684C:
	ldr r0, _021D68DC ; =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE9B8
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_021D685A:
	ldr r0, _021D68DC ; =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE9E4
	cmp r0, #0
	beq _021D68DA
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_021D686C:
	mov r0, #0x43
	add r1, r6, #0
	lsl r0, r0, #4
	add r1, #0x40
	ldrb r0, [r5, r0]
	ldrb r1, [r1]
	bl ov19_021D77A4
	add r7, r0, #0
	mov r0, #0x43
	lsl r0, r0, #4
	add r1, r6, #0
	add r0, r5, r0
	add r1, #0x40
	add r2, r7, #0
	mov r3, #1
	bl ov19_021D7B4C
	mov r0, #0x43
	lsl r0, r0, #4
	add r6, #0x40
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov19_021D7D70
	ldr r0, _021D68E0 ; =0x000005DC
	bl sub_02005748
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_021D68AC:
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov19_021D7E1C
	cmp r0, #0
	beq _021D68DA
	ldr r0, _021D68DC ; =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE7A0
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_021D68C8:
	ldr r0, _021D68DC ; =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE800
	cmp r0, #0
	beq _021D68DA
	add r0, r4, #0
	bl ov19_021D6640
_021D68DA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D68DC: .word 0x0000B3A8
_021D68E0: .word 0x000005DC
	thumb_func_end ov19_021D6824

	thumb_func_start ov19_021D68E4
ov19_021D68E4: ; 0x021D68E4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D68F6
	cmp r0, #1
	beq _021D6914
	pop {r3, r4, r5, pc}
_021D68F6:
	ldr r0, _021D6934 ; =0x000005DC
	bl sub_02005748
	ldr r0, _021D6938 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D8F60
	ldr r0, _021D693C ; =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DE7A0
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6914:
	ldr r0, _021D6938 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9074
	cmp r0, #0
	beq _021D6932
	ldr r0, _021D693C ; =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DE800
	cmp r0, #0
	beq _021D6932
	add r0, r5, #0
	bl ov19_021D6640
_021D6932:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6934: .word 0x000005DC
_021D6938: .word 0x00005DC0
_021D693C: .word 0x0000B3A8
	thumb_func_end ov19_021D68E4

	thumb_func_start ov19_021D6940
ov19_021D6940: ; 0x021D6940
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x16
	ldr r4, [r5, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E08
	cmp r0, #4
	ldrh r0, [r5, #6]
	beq _021D6984
	cmp r0, #0
	beq _021D6960
	cmp r0, #1
	beq _021D6970
	pop {r3, r4, r5, pc}
_021D6960:
	ldr r0, _021D69B4 ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DAFF8
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6970:
	ldr r0, _021D69B4 ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DB220
	cmp r0, #0
	beq _021D69B0
	add r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
_021D6984:
	cmp r0, #0
	beq _021D698E
	cmp r0, #1
	beq _021D699E
	pop {r3, r4, r5, pc}
_021D698E:
	ldr r0, _021D69B8 ; =0x0000B3AC
	ldr r0, [r4, r0]
	bl ov19_021DEE34
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D699E:
	ldr r0, _021D69B8 ; =0x0000B3AC
	ldr r0, [r4, r0]
	bl ov19_021DEE84
	cmp r0, #0
	beq _021D69B0
	add r0, r5, #0
	bl ov19_021D6640
_021D69B0:
	pop {r3, r4, r5, pc}
	nop
_021D69B4: .word 0x000065A0
_021D69B8: .word 0x0000B3AC
	thumb_func_end ov19_021D6940

	thumb_func_start ov19_021D69BC
ov19_021D69BC: ; 0x021D69BC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #0x16
	ldr r4, [r5, #0xc]
	lsl r0, r0, #4
	ldr r6, [r4, r0]
	add r0, r6, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D69DC
	ldr r0, _021D6A10 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9A64
	b _021D6A00
_021D69DC:
	add r0, r6, #0
	bl ov19_021D5E10
	cmp r0, #0
	beq _021D69EC
	cmp r0, #1
	beq _021D69F8
	b _021D6A00
_021D69EC:
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov19_021D8A24
	b _021D6A00
_021D69F8:
	ldr r0, _021D6A14 ; =0x0000B22C
	add r0, r4, r0
	bl ov19_021DCC14
_021D6A00:
	ldr r0, _021D6A18 ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DB224
	add r0, r5, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D6A10: .word 0x00005DC0
_021D6A14: .word 0x0000B22C
_021D6A18: .word 0x000065A0
	thumb_func_end ov19_021D69BC

	thumb_func_start ov19_021D6A1C
ov19_021D6A1C: ; 0x021D6A1C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D6A34 ; =0x000065A0
	add r0, r1, r0
	bl ov19_021DB078
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D6A34: .word 0x000065A0
	thumb_func_end ov19_021D6A1C

	thumb_func_start ov19_021D6A38
ov19_021D6A38: ; 0x021D6A38
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6A4A
	cmp r0, #1
	beq _021D6A5A
	pop {r4, pc}
_021D6A4A:
	ldr r0, _021D6A70 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D9230
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6A5A:
	ldr r0, _021D6A70 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D9278
	cmp r0, #0
	beq _021D6A6C
	add r0, r4, #0
	bl ov19_021D6640
_021D6A6C:
	pop {r4, pc}
	nop
_021D6A70: .word 0x00005DC0
	thumb_func_end ov19_021D6A38

	thumb_func_start ov19_021D6A74
ov19_021D6A74: ; 0x021D6A74
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6A86
	cmp r0, #1
	beq _021D6A96
	pop {r4, pc}
_021D6A86:
	ldr r0, _021D6AAC ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D9368
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6A96:
	ldr r0, _021D6AAC ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D939C
	cmp r0, #0
	beq _021D6AA8
	add r0, r4, #0
	bl ov19_021D6640
_021D6AA8:
	pop {r4, pc}
	nop
_021D6AAC: .word 0x00005DC0
	thumb_func_end ov19_021D6A74

	thumb_func_start ov19_021D6AB0
ov19_021D6AB0: ; 0x021D6AB0
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6AC2
	cmp r0, #1
	beq _021D6AD2
	pop {r4, pc}
_021D6AC2:
	ldr r0, _021D6AE8 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D94B4
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6AD2:
	ldr r0, _021D6AE8 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D9530
	cmp r0, #0
	beq _021D6AE4
	add r0, r4, #0
	bl ov19_021D6640
_021D6AE4:
	pop {r4, pc}
	nop
_021D6AE8: .word 0x00005DC0
	thumb_func_end ov19_021D6AB0

	thumb_func_start ov19_021D6AEC
ov19_021D6AEC: ; 0x021D6AEC
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6AFE
	cmp r0, #1
	beq _021D6B0E
	pop {r4, pc}
_021D6AFE:
	ldr r0, _021D6B18 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D9900
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6B0E:
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D6B18: .word 0x00005DC0
	thumb_func_end ov19_021D6AEC

	thumb_func_start ov19_021D6B1C
ov19_021D6B1C: ; 0x021D6B1C
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6B32
	cmp r0, #1
	beq _021D6B42
	cmp r0, #2
	beq _021D6B52
	pop {r4, pc}
_021D6B32:
	ldr r0, _021D6B68 ; =0x0000B22C
	add r0, r1, r0
	bl ov19_021DCAC0
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6B42:
	ldr r0, _021D6B68 ; =0x0000B22C
	add r0, r1, r0
	bl ov19_021DC834
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6B52:
	ldr r0, _021D6B68 ; =0x0000B22C
	add r0, r1, r0
	bl ov19_021DC95C
	cmp r0, #0
	beq _021D6B64
	add r0, r4, #0
	bl ov19_021D6640
_021D6B64:
	pop {r4, pc}
	nop
_021D6B68: .word 0x0000B22C
	thumb_func_end ov19_021D6B1C

	thumb_func_start ov19_021D6B6C
ov19_021D6B6C: ; 0x021D6B6C
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6B7E
	cmp r0, #1
	beq _021D6B8E
	pop {r4, pc}
_021D6B7E:
	ldr r0, _021D6BA4 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D9938
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6B8E:
	ldr r0, _021D6BA4 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D995C
	cmp r0, #0
	beq _021D6BA0
	add r0, r4, #0
	bl ov19_021D6640
_021D6BA0:
	pop {r4, pc}
	nop
_021D6BA4: .word 0x00005DC0
	thumb_func_end ov19_021D6B6C

	thumb_func_start ov19_021D6BA8
ov19_021D6BA8: ; 0x021D6BA8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r1, [r5, #6]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r4, [r5, #0xc]
	cmp r1, #0
	ldr r0, [r4, r0]
	beq _021D6BC0
	cmp r1, #1
	beq _021D6BD8
	pop {r3, r4, r5, pc}
_021D6BC0:
	bl ov19_021D5E24
	add r1, r0, #0
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov19_021D8860
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6BD8:
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov19_021D8898
	cmp r0, #0
	beq _021D6BEC
	add r0, r5, #0
	bl ov19_021D6640
_021D6BEC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021D6BA8

	thumb_func_start ov19_021D6BF0
ov19_021D6BF0: ; 0x021D6BF0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r1, [r5, #6]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r4, [r5, #0xc]
	cmp r1, #0
	ldr r0, [r4, r0]
	beq _021D6C08
	cmp r1, #1
	beq _021D6C1E
	pop {r3, r4, r5, pc}
_021D6C08:
	bl ov19_021D5E2C
	add r1, r0, #0
	ldr r0, _021D6C34 ; =0x0000B22C
	add r0, r4, r0
	bl ov19_021DCAFC
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6C1E:
	ldr r0, _021D6C34 ; =0x0000B22C
	add r0, r4, r0
	bl ov19_021DCB20
	cmp r0, #0
	beq _021D6C30
	add r0, r5, #0
	bl ov19_021D6640
_021D6C30:
	pop {r3, r4, r5, pc}
	nop
_021D6C34: .word 0x0000B22C
	thumb_func_end ov19_021D6BF0

	thumb_func_start ov19_021D6C38
ov19_021D6C38: ; 0x021D6C38
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6C4A
	cmp r0, #1
	beq _021D6C5A
	pop {r4, pc}
_021D6C4A:
	ldr r0, _021D6C70 ; =0x0000662C
	add r0, r1, r0
	bl ov19_021DC29C
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6C5A:
	ldr r0, _021D6C70 ; =0x0000662C
	add r0, r1, r0
	bl ov19_021DC364
	cmp r0, #0
	beq _021D6C6C
	add r0, r4, #0
	bl ov19_021D6640
_021D6C6C:
	pop {r4, pc}
	nop
_021D6C70: .word 0x0000662C
	thumb_func_end ov19_021D6C38

	thumb_func_start ov19_021D6C74
ov19_021D6C74: ; 0x021D6C74
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6C86
	cmp r0, #1
	beq _021D6C96
	pop {r4, pc}
_021D6C86:
	ldr r0, _021D6CAC ; =0x0000662C
	add r0, r1, r0
	bl ov19_021DC3F4
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6C96:
	ldr r0, _021D6CAC ; =0x0000662C
	add r0, r1, r0
	bl ov19_021DC43C
	cmp r0, #0
	beq _021D6CA8
	add r0, r4, #0
	bl ov19_021D6640
_021D6CA8:
	pop {r4, pc}
	nop
_021D6CAC: .word 0x0000662C
	thumb_func_end ov19_021D6C74

	thumb_func_start ov19_021D6CB0
ov19_021D6CB0: ; 0x021D6CB0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6CC2
	cmp r0, #1
	beq _021D6CD2
	pop {r3, r4, r5, pc}
_021D6CC2:
	ldr r0, _021D6CF0 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9B34
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6CD2:
	ldr r0, _021D6CF0 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9B64
	cmp r0, #0
	beq _021D6CEC
	ldr r0, _021D6CF4 ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DB2B0
	add r0, r5, #0
	bl ov19_021D6640
_021D6CEC:
	pop {r3, r4, r5, pc}
	nop
_021D6CF0: .word 0x00005DC0
_021D6CF4: .word 0x000065A0
	thumb_func_end ov19_021D6CB0

	thumb_func_start ov19_021D6CF8
ov19_021D6CF8: ; 0x021D6CF8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6D0A
	cmp r0, #1
	beq _021D6D1A
	pop {r3, r4, r5, pc}
_021D6D0A:
	ldr r0, _021D6D38 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9BD4
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6D1A:
	ldr r0, _021D6D38 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9C04
	cmp r0, #0
	beq _021D6D34
	ldr r0, _021D6D3C ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DB2B0
	add r0, r5, #0
	bl ov19_021D6640
_021D6D34:
	pop {r3, r4, r5, pc}
	nop
_021D6D38: .word 0x00005DC0
_021D6D3C: .word 0x000065A0
	thumb_func_end ov19_021D6CF8

	thumb_func_start ov19_021D6D40
ov19_021D6D40: ; 0x021D6D40
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6D52
	cmp r0, #1
	beq _021D6D62
	pop {r3, r4, r5, pc}
_021D6D52:
	ldr r0, _021D6D80 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9C74
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6D62:
	ldr r0, _021D6D80 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9CA0
	cmp r0, #0
	beq _021D6D7C
	ldr r0, _021D6D84 ; =0x000065A0
	add r0, r4, r0
	bl ov19_021DB2B0
	add r0, r5, #0
	bl ov19_021D6640
_021D6D7C:
	pop {r3, r4, r5, pc}
	nop
_021D6D80: .word 0x00005DC0
_021D6D84: .word 0x000065A0
	thumb_func_end ov19_021D6D40

	thumb_func_start ov19_021D6D88
ov19_021D6D88: ; 0x021D6D88
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r0, #0x16
	ldr r4, [r7, #0xc]
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	add r0, r5, #0
	bl ov19_021D5E74
	add r6, r0, #0
	add r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D6DB2
	ldr r0, _021D6DF0 ; =0x00005DC0
	add r1, r6, #0
	add r0, r4, r0
	bl ov19_021D9AB0
	b _021D6DE8
_021D6DB2:
	add r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	beq _021D6DD4
	cmp r0, #1
	bne _021D6DE8
	add r0, r5, #0
	bl ov19_021D5E2C
	add r1, r0, #0
	ldr r0, _021D6DF4 ; =0x0000B22C
	add r2, r6, #0
	add r0, r4, r0
	bl ov19_021DCBDC
	b _021D6DE8
_021D6DD4:
	add r0, r5, #0
	bl ov19_021D5E24
	add r1, r0, #0
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r4, r0
	add r2, r6, #0
	bl ov19_021D8988
_021D6DE8:
	add r0, r7, #0
	bl ov19_021D6640
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6DF0: .word 0x00005DC0
_021D6DF4: .word 0x0000B22C
	thumb_func_end ov19_021D6D88

	thumb_func_start ov19_021D6DF8
ov19_021D6DF8: ; 0x021D6DF8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6E0A
	cmp r0, #1
	beq _021D6E22
	pop {r3, r4, r5, pc}
_021D6E0A:
	ldr r0, _021D6E40 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9D10
	ldr r0, _021D6E44 ; =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DEB18
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6E22:
	ldr r0, _021D6E44 ; =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DEB60
	cmp r0, #0
	beq _021D6E3C
	ldr r0, _021D6E40 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9D28
	add r0, r5, #0
	bl ov19_021D6640
_021D6E3C:
	pop {r3, r4, r5, pc}
	nop
_021D6E40: .word 0x00005DC0
_021D6E44: .word 0x0000B3A8
	thumb_func_end ov19_021D6DF8

	thumb_func_start ov19_021D6E48
ov19_021D6E48: ; 0x021D6E48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x16
	ldr r4, [r5, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E94
	add r1, r0, #0
	ldr r0, _021D6E6C ; =0x000065F4
	add r0, r4, r0
	bl ov19_021DB448
	add r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
	nop
_021D6E6C: .word 0x000065F4
	thumb_func_end ov19_021D6E48

	thumb_func_start ov19_021D6E70
ov19_021D6E70: ; 0x021D6E70
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r0, #0x16
	ldr r4, [r6, #0xc]
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	add r0, r5, #0
	bl ov19_021D5E94
	add r1, r0, #0
	ldr r0, _021D6EA0 ; =0x000065F4
	add r0, r4, r0
	bl ov19_021DB448
	ldr r0, _021D6EA0 ; =0x000065F4
	add r5, #0x74
	add r0, r4, r0
	add r1, r5, #0
	bl ov19_021DB57C
	add r0, r6, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D6EA0: .word 0x000065F4
	thumb_func_end ov19_021D6E70

	thumb_func_start ov19_021D6EA4
ov19_021D6EA4: ; 0x021D6EA4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D6EBC ; =0x000065F4
	add r0, r1, r0
	bl ov19_021DB6F0
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D6EBC: .word 0x000065F4
	thumb_func_end ov19_021D6EA4

	thumb_func_start ov19_021D6EC0
ov19_021D6EC0: ; 0x021D6EC0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D6ED8 ; =0x000065F4
	add r0, r1, r0
	bl ov19_021DB724
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D6ED8: .word 0x000065F4
	thumb_func_end ov19_021D6EC0

	thumb_func_start ov19_021D6EDC
ov19_021D6EDC: ; 0x021D6EDC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r0, #0x16
	ldr r4, [r6, #0xc]
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	ldr r0, _021D6F04 ; =0x000005DC
	bl sub_02005748
	ldr r0, _021D6F08 ; =0x000065F4
	add r5, #0x74
	add r0, r4, r0
	add r1, r5, #0
	bl ov19_021DB748
	add r0, r6, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
	nop
_021D6F04: .word 0x000005DC
_021D6F08: .word 0x000065F4
	thumb_func_end ov19_021D6EDC

	thumb_func_start ov19_021D6F0C
ov19_021D6F0C: ; 0x021D6F0C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r0, #0x16
	ldr r4, [r6, #0xc]
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	ldr r0, _021D6F34 ; =0x000005DD
	bl sub_02005748
	ldr r0, _021D6F38 ; =0x000065F4
	add r5, #0x74
	add r0, r4, r0
	add r1, r5, #0
	bl ov19_021DB790
	add r0, r6, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
	nop
_021D6F34: .word 0x000005DD
_021D6F38: .word 0x000065F4
	thumb_func_end ov19_021D6F0C

	thumb_func_start ov19_021D6F3C
ov19_021D6F3C: ; 0x021D6F3C
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6F4E
	cmp r0, #1
	beq _021D6F5E
	pop {r4, pc}
_021D6F4E:
	ldr r0, _021D6F74 ; =0x0000662C
	add r0, r1, r0
	bl ov19_021DBB48
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6F5E:
	ldr r0, _021D6F74 ; =0x0000662C
	add r0, r1, r0
	bl ov19_021DBB68
	cmp r0, #0
	beq _021D6F70
	add r0, r4, #0
	bl ov19_021D6640
_021D6F70:
	pop {r4, pc}
	nop
_021D6F74: .word 0x0000662C
	thumb_func_end ov19_021D6F3C

	thumb_func_start ov19_021D6F78
ov19_021D6F78: ; 0x021D6F78
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6F8A
	cmp r0, #1
	beq _021D6FA0
	pop {r3, r4, r5, pc}
_021D6F8A:
	ldr r0, _021D6FA8 ; =0x000005DD
	bl sub_02005748
	ldr r0, _021D6FAC ; =0x0000662C
	add r0, r4, r0
	bl ov19_021DBB70
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6FA0:
	add r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D6FA8: .word 0x000005DD
_021D6FAC: .word 0x0000662C
	thumb_func_end ov19_021D6F78

	thumb_func_start ov19_021D6FB0
ov19_021D6FB0: ; 0x021D6FB0
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6FC2
	cmp r0, #1
	beq _021D6FD2
	pop {r4, pc}
_021D6FC2:
	ldr r0, _021D6FE8 ; =0x0000662C
	add r0, r1, r0
	bl ov19_021DBB94
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6FD2:
	ldr r0, _021D6FE8 ; =0x0000662C
	add r0, r1, r0
	bl ov19_021DBBA0
	cmp r0, #0
	beq _021D6FE4
	add r0, r4, #0
	bl ov19_021D6640
_021D6FE4:
	pop {r4, pc}
	nop
_021D6FE8: .word 0x0000662C
	thumb_func_end ov19_021D6FB0

	thumb_func_start ov19_021D6FEC
ov19_021D6FEC: ; 0x021D6FEC
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6FFE
	cmp r0, #1
	beq _021D7010
	pop {r4, pc}
_021D6FFE:
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov19_021D8350
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D7010:
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov19_021D8370
	cmp r0, #0
	beq _021D7024
	add r0, r4, #0
	bl ov19_021D6640
_021D7024:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021D6FEC

	thumb_func_start ov19_021D7028
ov19_021D7028: ; 0x021D7028
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r0, #0x16
	ldr r5, [r4, #0xc]
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	ldrh r0, [r4, #6]
	cmp r0, #3
	bhi _021D70DA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D7046: ; jump table
	.short _021D704E - _021D7046 - 2 ; case 0
	.short _021D7064 - _021D7046 - 2 ; case 1
	.short _021D70A2 - _021D7046 - 2 ; case 2
	.short _021D70C8 - _021D7046 - 2 ; case 3
_021D704E:
	ldr r0, _021D70DC ; =0x000005DD
	bl sub_02005748
	ldr r0, _021D70E0 ; =0x00005DC0
	add r0, r5, r0
	bl ov19_021D9690
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_021D7064:
	ldr r0, _021D70E0 ; =0x00005DC0
	add r0, r5, r0
	bl ov19_021D9704
	cmp r0, #0
	beq _021D70DA
	add r0, r6, #0
	bl ov19_021D5E10
	cmp r0, #3
	beq _021D7080
	cmp r0, #4
	beq _021D708C
	b _021D7096
_021D7080:
	ldr r0, _021D70E4 ; =0x00006558
	mov r1, #1
	add r0, r5, r0
	bl ov19_021DA8FC
	b _021D7096
_021D708C:
	ldr r0, _021D70E4 ; =0x00006558
	mov r1, #2
	add r0, r5, r0
	bl ov19_021DA8FC
_021D7096:
	mov r0, #0
	strh r0, [r4, #8]
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_021D70A2:
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #6
	blo _021D70DA
	ldr r0, _021D70E0 ; =0x00005DC0
	add r0, r5, r0
	bl ov19_021D97FC
	ldr r0, _021D70E4 ; =0x00006558
	mov r1, #0
	add r0, r5, r0
	bl ov19_021DA8FC
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_021D70C8:
	ldr r0, _021D70E0 ; =0x00005DC0
	add r0, r5, r0
	bl ov19_021D9858
	cmp r0, #0
	beq _021D70DA
	add r0, r4, #0
	bl ov19_021D6640
_021D70DA:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D70DC: .word 0x000005DD
_021D70E0: .word 0x00005DC0
_021D70E4: .word 0x00006558
	thumb_func_end ov19_021D7028

	thumb_func_start ov19_021D70E8
ov19_021D70E8: ; 0x021D70E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D70FA
	cmp r0, #1
	beq _021D7118
	pop {r3, r4, r5, pc}
_021D70FA:
	ldr r0, _021D712C ; =0x00000633
	bl sub_02005748
	ldr r0, _021D7130 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D99F4
	ldr r0, _021D7134 ; =0x0000B22C
	add r0, r4, r0
	bl ov19_021DC6C8
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D7118:
	ldr r0, _021D7134 ; =0x0000B22C
	add r0, r4, r0
	bl ov19_021DC6F8
	cmp r0, #0
	beq _021D712A
	add r0, r5, #0
	bl ov19_021D6640
_021D712A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D712C: .word 0x00000633
_021D7130: .word 0x00005DC0
_021D7134: .word 0x0000B22C
	thumb_func_end ov19_021D70E8

	thumb_func_start ov19_021D7138
ov19_021D7138: ; 0x021D7138
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r5, [r4, #0xc]
	cmp r0, #3
	bhi _021D71A8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D7150: ; jump table
	.short _021D7158 - _021D7150 - 2 ; case 0
	.short _021D7166 - _021D7150 - 2 ; case 1
	.short _021D7178 - _021D7150 - 2 ; case 2
	.short _021D718E - _021D7150 - 2 ; case 3
_021D7158:
	ldr r0, _021D71AC ; =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE9B8
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_021D7166:
	ldr r0, _021D71AC ; =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE9E4
	cmp r0, #0
	beq _021D71A8
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
_021D7178:
	ldr r0, _021D71B0 ; =0x00000634
	bl sub_02005748
	ldr r0, _021D71B4 ; =0x0000B22C
	add r0, r5, r0
	bl ov19_021DC768
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, r5, pc}
_021D718E:
	ldr r0, _021D71B4 ; =0x0000B22C
	add r0, r5, r0
	bl ov19_021DC788
	cmp r0, #0
	beq _021D71A8
	ldr r0, _021D71B8 ; =0x00005DC0
	add r0, r5, r0
	bl ov19_021D9A2C
	add r0, r4, #0
	bl ov19_021D6640
_021D71A8:
	pop {r3, r4, r5, pc}
	nop
_021D71AC: .word 0x0000B3A8
_021D71B0: .word 0x00000634
_021D71B4: .word 0x0000B22C
_021D71B8: .word 0x00005DC0
	thumb_func_end ov19_021D7138

	thumb_func_start ov19_021D71BC
ov19_021D71BC: ; 0x021D71BC
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D71CE
	cmp r0, #1
	beq _021D71DE
	pop {r4, pc}
_021D71CE:
	ldr r0, _021D71F4 ; =0x0000B22C
	add r0, r1, r0
	bl ov19_021DC834
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D71DE:
	ldr r0, _021D71F4 ; =0x0000B22C
	add r0, r1, r0
	bl ov19_021DC95C
	cmp r0, #0
	beq _021D71F0
	add r0, r4, #0
	bl ov19_021D6640
_021D71F0:
	pop {r4, pc}
	nop
_021D71F4: .word 0x0000B22C
	thumb_func_end ov19_021D71BC

	thumb_func_start ov19_021D71F8
ov19_021D71F8: ; 0x021D71F8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r1, [r5, #6]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r4, [r5, #0xc]
	cmp r1, #0
	ldr r0, [r4, r0]
	beq _021D7210
	cmp r1, #1
	beq _021D7230
	pop {r3, r4, r5, pc}
_021D7210:
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D7228
	ldr r0, _021D7244 ; =0x0000B22C
	add r0, r4, r0
	bl ov19_021DC96C
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D7228:
	add r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
_021D7230:
	ldr r0, _021D7244 ; =0x0000B22C
	add r0, r4, r0
	bl ov19_021DCA08
	cmp r0, #0
	beq _021D7242
	add r0, r5, #0
	bl ov19_021D6640
_021D7242:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D7244: .word 0x0000B22C
	thumb_func_end ov19_021D71F8

	thumb_func_start ov19_021D7248
ov19_021D7248: ; 0x021D7248
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x43
	ldr r4, [r5, #0xc]
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov19_021D8938
	ldr r0, _021D7270 ; =0x0000B22C
	add r0, r4, r0
	bl ov19_021DCBA0
	ldr r0, _021D7274 ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9A8C
	add r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D7270: .word 0x0000B22C
_021D7274: .word 0x00005DC0
	thumb_func_end ov19_021D7248

	thumb_func_start ov19_021D7278
ov19_021D7278: ; 0x021D7278
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r0, #0x16
	ldr r4, [r5, #0xc]
	lsl r0, r0, #4
	ldr r6, [r4, r0]
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _021D7294
	cmp r0, #1
	beq _021D72A4
	cmp r0, #2
	beq _021D72D0
	pop {r4, r5, r6, pc}
_021D7294:
	ldr r0, _021D72E4 ; =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD378
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r4, r5, r6, pc}
_021D72A4:
	ldr r0, _021D72E4 ; =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD45C
	cmp r0, #0
	beq _021D72E2
	add r6, #0x9c
	ldrb r0, [r6]
	cmp r0, #0
	bne _021D72C0
	add r0, r5, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
_021D72C0:
	ldr r0, _021D72E4 ; =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD714
	ldrh r0, [r5, #6]
	add r0, r0, #1
	strh r0, [r5, #6]
	pop {r4, r5, r6, pc}
_021D72D0:
	ldr r0, _021D72E4 ; =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD740
	cmp r0, #0
	beq _021D72E2
	add r0, r5, #0
	bl ov19_021D6640
_021D72E2:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D72E4: .word 0x0000B3A4
	thumb_func_end ov19_021D7278

	thumb_func_start ov19_021D72E8
ov19_021D72E8: ; 0x021D72E8
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D72FA
	cmp r0, #1
	beq _021D730A
	pop {r4, pc}
_021D72FA:
	ldr r0, _021D7320 ; =0x0000B3A4
	ldr r0, [r1, r0]
	bl ov19_021DD768
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D730A:
	ldr r0, _021D7320 ; =0x0000B3A4
	ldr r0, [r1, r0]
	bl ov19_021DD820
	cmp r0, #0
	beq _021D731C
	add r0, r4, #0
	bl ov19_021D6640
_021D731C:
	pop {r4, pc}
	nop
_021D7320: .word 0x0000B3A4
	thumb_func_end ov19_021D72E8

	thumb_func_start ov19_021D7324
ov19_021D7324: ; 0x021D7324
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D733C ; =0x0000B3A4
	ldr r0, [r1, r0]
	bl ov19_021DE2F4
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D733C: .word 0x0000B3A4
	thumb_func_end ov19_021D7324

	thumb_func_start ov19_021D7340
ov19_021D7340: ; 0x021D7340
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D7358 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D9AEC
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D7358: .word 0x00005DC0
	thumb_func_end ov19_021D7340

	thumb_func_start ov19_021D735C
ov19_021D735C: ; 0x021D735C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5, #0xc]
	ldr r0, _021D737C ; =0x00005DC0
	add r0, r4, r0
	bl ov19_021D9B10
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov19_021D8A6C
	add r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D737C: .word 0x00005DC0
	thumb_func_end ov19_021D735C

	thumb_func_start ov19_021D7380
ov19_021D7380: ; 0x021D7380
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x43
	ldr r1, [r4, #0xc]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov19_021D8B14
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	thumb_func_end ov19_021D7380

	thumb_func_start ov19_021D7398
ov19_021D7398: ; 0x021D7398
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x43
	ldr r1, [r4, #0xc]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov19_021D8A6C
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	thumb_func_end ov19_021D7398

	thumb_func_start ov19_021D73B0
ov19_021D73B0: ; 0x021D73B0
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D73C2
	cmp r0, #1
	beq _021D73D2
	pop {r4, pc}
_021D73C2:
	ldr r0, _021D73E8 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D9230
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D73D2:
	ldr r0, _021D73E8 ; =0x00005DC0
	add r0, r1, r0
	bl ov19_021D9278
	cmp r0, #0
	beq _021D73E4
	add r0, r4, #0
	bl ov19_021D6640
_021D73E4:
	pop {r4, pc}
	nop
_021D73E8: .word 0x00005DC0
	thumb_func_end ov19_021D73B0

	thumb_func_start ov19_021D73EC
ov19_021D73EC: ; 0x021D73EC
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D7404 ; =0x0000B3AC
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov19_021DEDDC
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	; .align 2, 0
_021D7404: .word 0x0000B3AC
	thumb_func_end ov19_021D73EC

	thumb_func_start ov19_021D7408
ov19_021D7408: ; 0x021D7408
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D7420 ; =0x0000B3AC
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov19_021DEDDC
	add r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	; .align 2, 0
_021D7420: .word 0x0000B3AC
	thumb_func_end ov19_021D7408

	thumb_func_start ov19_021D7424
ov19_021D7424: ; 0x021D7424
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D7436
	cmp r0, #1
	beq _021D7446
	pop {r4, pc}
_021D7436:
	ldr r0, _021D745C ; =0x0000B3AC
	ldr r0, [r1, r0]
	bl ov19_021DEE88
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D7446:
	ldr r0, _021D745C ; =0x0000B3AC
	ldr r0, [r1, r0]
	bl ov19_021DEEA8
	cmp r0, #0
	beq _021D7458
	add r0, r4, #0
	bl ov19_021D6640
_021D7458:
	pop {r4, pc}
	nop
_021D745C: .word 0x0000B3AC
	thumb_func_end ov19_021D7424

	thumb_func_start ov19_021D7460
ov19_021D7460: ; 0x021D7460
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021D7474
	cmp r0, #1
	beq _021D749C
	add sp, #0xc
	pop {r3, r4, pc}
_021D7474:
	ldr r0, _021D74B0 ; =0x0000060E
	bl sub_02005748
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrh r0, [r4, #6]
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, pc}
_021D749C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D74AA
	add r0, r4, #0
	bl ov19_021D6640
_021D74AA:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D74B0: .word 0x0000060E
	thumb_func_end ov19_021D7460

	thumb_func_start ov19_021D74B4
ov19_021D74B4: ; 0x021D74B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D759C ; =0x021DFF70
	add r4, r1, #0
	bl sub_0201FE94
	ldr r2, _021D75A0 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #1
	mov r1, #0
	add r2, r0, #0
	bl GX_SetGraphicsMode
	ldr r0, _021D75A4 ; =0x021DFE48
	bl sub_02018368
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75A8 ; =0x021DFF1C
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75AC ; =0x021DFF00
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75B0 ; =0x021DFEC8
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D7556
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75B4 ; =0x021DFEE4
	mov r1, #4
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75B8 ; =0x021DFEAC
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75BC ; =0x021DFE90
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75C0 ; =0x021DFE74
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	b _021D7596
_021D7556:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75B4 ; =0x021DFEE4
	mov r1, #4
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75C4 ; =0x021DFF54
	mov r1, #5
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75C8 ; =0x021DFE58
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75C0 ; =0x021DFE74
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
_021D7596:
	bl ov19_021D76FC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D759C: .word 0x021DFF70
_021D75A0: .word 0x04000304
_021D75A4: .word 0x021DFE48
_021D75A8: .word 0x021DFF1C
_021D75AC: .word 0x021DFF00
_021D75B0: .word 0x021DFEC8
_021D75B4: .word 0x021DFEE4
_021D75B8: .word 0x021DFEAC
_021D75BC: .word 0x021DFE90
_021D75C0: .word 0x021DFE74
_021D75C4: .word 0x021DFF54
_021D75C8: .word 0x021DFE58
	thumb_func_end ov19_021D74B4

	thumb_func_start ov19_021D75CC
ov19_021D75CC: ; 0x021D75CC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	add r4, r2, #0
	mov r2, #0x57
	add r6, r1, #0
	str r3, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #4
	bl sub_020070E8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02019448
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	mov r2, #0x57
	str r1, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #2
	bl sub_020070E8
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0xa
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02007130
	add r0, r6, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D7670
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xa
	mov r2, #0x57
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #2
	bl sub_0200710C
_021D7670:
	mov r0, #0x43
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov19_021D7A9C
	mov r0, #0x43
	lsl r0, r0, #4
	add r1, r6, #0
	add r0, r5, r0
	add r1, #0x40
	mov r2, #0
	mov r3, #1
	bl ov19_021D7B4C
	ldr r0, _021D76E4 ; =0x000065A0
	add r0, r5, r0
	bl ov19_021DAADC
	ldr r0, _021D76E8 ; =0x000065F4
	add r0, r5, r0
	bl ov19_021DB3C4
	ldr r0, _021D76EC ; =0x0000662C
	add r0, r5, r0
	bl ov19_021DBA9C
	ldr r0, _021D76F0 ; =0x0000B3A4
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov19_021DD114
	ldr r0, _021D76F4 ; =0x0000B3AC
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl ov19_021DECE8
	add r0, r6, #0
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D76CA
	ldr r0, _021D76F8 ; =0x0000B22C
	add r0, r5, r0
	bl ov19_021DC6A0
_021D76CA:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	bl GX_DispOn
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D76E4: .word 0x000065A0
_021D76E8: .word 0x000065F4
_021D76EC: .word 0x0000662C
_021D76F0: .word 0x0000B3A4
_021D76F4: .word 0x0000B3AC
_021D76F8: .word 0x0000B22C
	thumb_func_end ov19_021D75CC

	thumb_func_start ov19_021D76FC
ov19_021D76FC: ; 0x021D76FC
	push {r3, lr}
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _021D7760 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	ldr r2, _021D7764 ; =0xFFFFCFFD
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _021D7768 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _021D776C ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _021D7770 ; =0xBFFF0000
	str r0, [r1, #0x40]
	pop {r3, pc}
	; .align 2, 0
_021D7760: .word 0x04000008
_021D7764: .word 0xFFFFCFFD
_021D7768: .word 0x0000CFFB
_021D776C: .word 0x04000540
_021D7770: .word 0xBFFF0000
	thumb_func_end ov19_021D76FC

	thumb_func_start ov19_021D7774
ov19_021D7774: ; 0x021D7774
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D7798 ; =0x00005DC0
	add r4, r2, #0
	add r0, r5, r0
	add r1, r4, #0
	bl ov19_021D8C1C
	ldr r0, _021D779C ; =0x00006558
	add r1, r4, #0
	add r0, r5, r0
	bl ov19_021DA864
	ldr r0, _021D77A0 ; =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE584
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D7798: .word 0x00005DC0
_021D779C: .word 0x00006558
_021D77A0: .word 0x0000B3A8
	thumb_func_end ov19_021D7774

	thumb_func_start ov19_021D77A4
ov19_021D77A4: ; 0x021D77A4
	cmp r1, r0
	bls _021D77B2
	mov r2, #0x12
	sub r3, r1, r0
	sub r1, r2, r1
	add r0, r0, r1
	b _021D77BA
_021D77B2:
	mov r2, #0x12
	sub r2, r2, r0
	add r3, r1, r2
	sub r0, r0, r1
_021D77BA:
	cmp r3, r0
	blt _021D77C4
	mov r0, #0
	mvn r0, r0
	bx lr
_021D77C4:
	mov r0, #1
	bx lr
	thumb_func_end ov19_021D77A4

	thumb_func_start ov19_021D77C8
ov19_021D77C8: ; 0x021D77C8
	ldr r3, _021D77CC ; =sub_0200DA04
	bx r3
	; .align 2, 0
_021D77CC: .word sub_0200DA04
	thumb_func_end ov19_021D77C8

	thumb_func_start ov19_021D77D0
ov19_021D77D0: ; 0x021D77D0
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end ov19_021D77D0

	thumb_func_start ov19_021D77D8
ov19_021D77D8: ; 0x021D77D8
	mov r1, #0x59
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end ov19_021D77D8

	thumb_func_start ov19_021D77E0
ov19_021D77E0: ; 0x021D77E0
	mov r1, #0x43
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end ov19_021D77E0

	thumb_func_start ov19_021D77E8
ov19_021D77E8: ; 0x021D77E8
	ldr r1, _021D77F0 ; =0x0000B22C
	add r0, r0, r1
	bx lr
	nop
_021D77F0: .word 0x0000B22C
	thumb_func_end ov19_021D77E8

	thumb_func_start ov19_021D77F4
ov19_021D77F4: ; 0x021D77F4
	ldr r1, _021D77FC ; =0x00005DC0
	add r0, r0, r1
	bx lr
	nop
_021D77FC: .word 0x00005DC0
	thumb_func_end ov19_021D77F4

	thumb_func_start ov19_021D7800
ov19_021D7800: ; 0x021D7800
	ldr r1, _021D7808 ; =0x0000B3A8
	ldr r0, [r0, r1]
	bx lr
	nop
_021D7808: .word 0x0000B3A8
	thumb_func_end ov19_021D7800

	thumb_func_start ov19_021D780C
ov19_021D780C: ; 0x021D780C
	ldr r1, _021D7814 ; =0x0000662C
	add r0, r0, r1
	bx lr
	nop
_021D7814: .word 0x0000662C
	thumb_func_end ov19_021D780C

	thumb_func_start ov19_021D7818
ov19_021D7818: ; 0x021D7818
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D7818

	thumb_func_start ov19_021D7820
ov19_021D7820: ; 0x021D7820
	push {r3, lr}
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D7834
	mov r0, #0
	pop {r3, pc}
_021D7834:
	mov r0, #0x2b
	mvn r0, r0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov19_021D7820

	thumb_func_start ov19_021D783C
ov19_021D783C: ; 0x021D783C
	str r1, [r0, #0]
	str r2, [r0, #8]
	ldr r1, [sp]
	str r3, [r0, #0xc]
	str r1, [r0, #0x10]
	add r1, r0, #0
	ldr r2, [sp, #4]
	add r1, #0x20
	strb r2, [r1]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	; .align 2, 0
	thumb_func_end ov19_021D783C

	thumb_func_start ov19_021D785C
ov19_021D785C: ; 0x021D785C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	str r0, [sp]
	lsl r0, r2, #0xc
	str r0, [sp, #8]
	lsl r0, r3, #0xc
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x18]
	mov r0, #0xa
	str r0, [sp, #0x1c]
	bl OS_DisableInterrupts
	add r4, r0, #0
	add r0, sp, #0
	bl sub_02021B90
	add r5, r0, #0
	add r0, r4, #0
	bl OS_RestoreInterrupts
	cmp r5, #0
	beq _021D78A6
	add r0, r5, #0
	mov r1, #1
	bl sub_02021CC8
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02021CE4
_021D78A6:
	add r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D785C

	thumb_func_start ov19_021D78AC
ov19_021D78AC: ; 0x021D78AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl OS_DisableInterrupts
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021F58
	add r0, r6, #0
	bl OS_RestoreInterrupts
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D78AC

	thumb_func_start ov19_021D78C8
ov19_021D78C8: ; 0x021D78C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	lsl r1, r3, #0x1b
	lsr r1, r1, #0x13
	mov ip, r1
	asr r1, r3, #5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x13
	mov lr, r1
	asr r1, r3, #0xa
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x13
	str r1, [sp, #4]
	add r7, r0, #0
	str r2, [sp]
	add r1, r2, #0
	sub r2, r2, #1
	ldr r0, [sp, #0x20]
	str r2, [sp]
	cmp r1, #0
	beq _021D795E
_021D78F4:
	ldrh r1, [r7]
	add r7, r7, #2
	lsl r2, r1, #0x1b
	lsr r4, r2, #0x13
	asr r2, r1, #5
	asr r1, r1, #0xa
	lsl r2, r2, #0x1b
	lsl r1, r1, #0x1b
	lsr r3, r2, #0x13
	lsr r2, r1, #0x13
	mov r1, ip
	sub r5, r1, r4
	asr r1, r5, #3
	lsr r1, r1, #0x1c
	add r1, r5, r1
	asr r1, r1, #4
	mul r1, r0
	add r5, r4, r1
	mov r1, lr
	sub r1, r1, r3
	asr r4, r1, #3
	lsr r4, r4, #0x1c
	add r4, r1, r4
	asr r1, r4, #4
	mul r1, r0
	add r3, r3, r1
	ldr r1, [sp, #4]
	sub r1, r1, r2
	asr r4, r1, #3
	lsr r4, r4, #0x1c
	add r4, r1, r4
	asr r1, r4, #4
	mul r1, r0
	add r4, r2, r1
	asr r2, r5, #8
	mov r1, #0x1f
	and r1, r2
	asr r2, r3, #8
	asr r3, r4, #8
	lsl r3, r3, #0x1b
	lsl r2, r2, #0x1b
	lsr r3, r3, #0x11
	lsr r2, r2, #0x16
	orr r2, r3
	orr r1, r2
	strh r1, [r6]
	ldr r1, [sp]
	add r6, r6, #2
	add r2, r1, #0
	sub r2, r2, #1
	str r2, [sp]
	cmp r1, #0
	bne _021D78F4
_021D795E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021D78C8

	thumb_func_start ov19_021D7964
ov19_021D7964: ; 0x021D7964
	ldr r1, _021D796C ; =0x0000B3B0
	ldr r0, [r0, r1]
	bx lr
	nop
_021D796C: .word 0x0000B3B0
	thumb_func_end ov19_021D7964

	thumb_func_start ov19_021D7970
ov19_021D7970: ; 0x021D7970
	ldr r0, _021D7978 ; =0x021E05EC
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_021D7978: .word 0x021E05EC
	thumb_func_end ov19_021D7970

	thumb_func_start ov19_021D797C
ov19_021D797C: ; 0x021D797C
	push {r4, r5, r6, lr}
	ldr r6, _021D79B0 ; =0x021E05EC
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _021D79AE
	mov r4, #0
	cmp r0, #0
	bls _021D79A8
	ldr r5, _021D79B4 ; =0x021E05F0
_021D798E:
	ldr r0, [r5, #8]
	bl sub_020181C4
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021D799E
	ldr r0, [r5, #4]
	blx r1
_021D799E:
	ldr r0, [r6, #0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blo _021D798E
_021D79A8:
	ldr r0, _021D79B0 ; =0x021E05EC
	mov r1, #0
	str r1, [r0, #0]
_021D79AE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D79B0: .word 0x021E05EC
_021D79B4: .word 0x021E05F0
	thumb_func_end ov19_021D797C

	thumb_func_start ov19_021D79B8
ov19_021D79B8: ; 0x021D79B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021D79E8 ; =0x021E05EC
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0x20
	blo _021D79CC
	bl GF_AssertFail
_021D79CC:
	ldr r2, _021D79E8 ; =0x021E05EC
	mov r1, #0xc
	ldr r0, [r2, #0]
	ldr r3, _021D79EC ; =0x021E05F8
	mul r1, r0
	str r5, [r3, r1]
	ldr r3, _021D79F0 ; =0x021E05F0
	add r0, r0, #1
	str r4, [r3, r1]
	ldr r3, _021D79F4 ; =0x021E05F4
	str r0, [r2, #0]
	str r6, [r3, r1]
	pop {r4, r5, r6, pc}
	nop
_021D79E8: .word 0x021E05EC
_021D79EC: .word 0x021E05F8
_021D79F0: .word 0x021E05F0
_021D79F4: .word 0x021E05F4
	thumb_func_end ov19_021D79B8

	.rodata


	.global Unk_ov19_021DFE48
Unk_ov19_021DFE48: ; 0x021DFE48
	.incbin "incbin/overlay19_rodata.bin", 0x58, 0x68 - 0x58

	.global Unk_ov19_021DFE58
Unk_ov19_021DFE58: ; 0x021DFE58
	.incbin "incbin/overlay19_rodata.bin", 0x68, 0x84 - 0x68

	.global Unk_ov19_021DFE74
Unk_ov19_021DFE74: ; 0x021DFE74
	.incbin "incbin/overlay19_rodata.bin", 0x84, 0xA0 - 0x84

	.global Unk_ov19_021DFE90
Unk_ov19_021DFE90: ; 0x021DFE90
	.incbin "incbin/overlay19_rodata.bin", 0xA0, 0xBC - 0xA0

	.global Unk_ov19_021DFEAC
Unk_ov19_021DFEAC: ; 0x021DFEAC
	.incbin "incbin/overlay19_rodata.bin", 0xBC, 0xD8 - 0xBC

	.global Unk_ov19_021DFEC8
Unk_ov19_021DFEC8: ; 0x021DFEC8
	.incbin "incbin/overlay19_rodata.bin", 0xD8, 0xF4 - 0xD8

	.global Unk_ov19_021DFEE4
Unk_ov19_021DFEE4: ; 0x021DFEE4
	.incbin "incbin/overlay19_rodata.bin", 0xF4, 0x110 - 0xF4

	.global Unk_ov19_021DFF00
Unk_ov19_021DFF00: ; 0x021DFF00
	.incbin "incbin/overlay19_rodata.bin", 0x110, 0x12C - 0x110

	.global Unk_ov19_021DFF1C
Unk_ov19_021DFF1C: ; 0x021DFF1C
	.incbin "incbin/overlay19_rodata.bin", 0x12C, 0x148 - 0x12C

	.global Unk_ov19_021DFF38
Unk_ov19_021DFF38: ; 0x021DFF38
	.incbin "incbin/overlay19_rodata.bin", 0x148, 0x164 - 0x148

	.global Unk_ov19_021DFF54
Unk_ov19_021DFF54: ; 0x021DFF54
	.incbin "incbin/overlay19_rodata.bin", 0x164, 0x180 - 0x164

	.global Unk_ov19_021DFF70
Unk_ov19_021DFF70: ; 0x021DFF70
	.incbin "incbin/overlay19_rodata.bin", 0x180, 0x1A8 - 0x180

	.global Unk_ov19_021DFF98
Unk_ov19_021DFF98: ; 0x021DFF98
	.incbin "incbin/overlay19_rodata.bin", 0x1A8, 0x1A0


	.bss


	.global Unk_ov19_021E05EC
Unk_ov19_021E05EC: ; 0x021E05EC
	.space 0x4

	.global Unk_ov19_021E05F0
Unk_ov19_021E05F0: ; 0x021E05F0
	.space 0x180

