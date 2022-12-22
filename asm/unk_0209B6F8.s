	.include "macros/function.inc"
	.include "include/unk_0209B6F8.inc"

	

	.text


	thumb_func_start sub_0209B6F8
sub_0209B6F8: ; 0x0209B6F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0209B924
	ldr r1, _0209B758 ; =0x00000A54
	add r0, r5, #0
	mov r2, #0xb
	bl sub_0200681C
	ldr r2, _0209B758 ; =0x00000A54
	add r4, r0, #0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl sub_0209B8E8
	add r0, r4, #0
	bl sub_0209B9EC
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	cmp r0, #0
	bne _0209B730
	bl sub_02022974
_0209B730:
	ldr r2, [r4, #0]
	add r0, r4, #0
	add r2, #0x24
	ldrb r2, [r2]
	mov r1, #0xb
	bl ov104_0222E63C
	str r0, [r4, #0x14]
	ldr r1, [r4, #0]
	mov r2, #0
	add r1, #0x24
	ldrb r1, [r1]
	bl ov104_0222E748
	add r0, r4, #0
	bl sub_0209B8C8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0209B758: .word 0x00000A54
	thumb_func_end sub_0209B6F8

	thumb_func_start sub_0209B75C
sub_0209B75C: ; 0x0209B75C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #6
	bls _0209B76E
	b _0209B898
_0209B76E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0209B77A: ; jump table
	.short _0209B788 - _0209B77A - 2 ; case 0
	.short _0209B78E - _0209B77A - 2 ; case 1
	.short _0209B7D0 - _0209B77A - 2 ; case 2
	.short _0209B7D4 - _0209B77A - 2 ; case 3
	.short _0209B7EA - _0209B77A - 2 ; case 4
	.short _0209B832 - _0209B77A - 2 ; case 5
	.short _0209B842 - _0209B77A - 2 ; case 6
_0209B788:
	mov r0, #1
	str r0, [r5, #0]
	b _0209B898
_0209B78E:
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #1
	bne _0209B79C
	mov r0, #2
	str r0, [r5, #0]
	b _0209B898
_0209B79C:
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _0209B898
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	bne _0209B7AE
	mov r0, #5
	str r0, [r5, #0]
	b _0209B898
_0209B7AE:
	ldr r0, [r4, #0x14]
	bl ov104_0222E6A8
	cmp r0, #1
	bne _0209B7C4
	ldr r0, _0209B89C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r1, r0
	beq _0209B7C4
	str r0, [r5, #0]
_0209B7C4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0209B898
	mov r0, #3
	str r0, [r5, #0]
	b _0209B898
_0209B7D0:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0209B7D4:
	ldr r0, [r4, #0x18]
	bl ov104_0223C634
	add r0, r4, #0
	bl sub_0209B8D8
	bl sub_0209B94C
	mov r0, #4
	str r0, [r5, #0]
	b _0209B898
_0209B7EA:
	ldr r0, [r4, #4]
	bl sub_02006844
	cmp r0, #1
	bne _0209B898
	ldr r0, [r4, #4]
	bl sub_02006814
	bl sub_0209B924
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0209B808
	ldr r0, [r4, #8]
	blx r1
_0209B808:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0209B818
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _0209B818
	bl sub_020181C4
_0209B818:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r4, #0
	bl sub_0209B8C8
	ldr r0, [r4, #0x18]
	bl ov104_0223C688
	mov r0, #1
	str r0, [r5, #0]
	b _0209B898
_0209B832:
	bl sub_0209B8D8
	add r0, r4, #0
	bl sub_0209B8E8
	mov r0, #6
	str r0, [r5, #0]
	b _0209B898
_0209B842:
	bl sub_0209B8C8
	ldrh r1, [r4, #0x20]
	ldr r0, _0209B8A0 ; =0x0000FFFF
	cmp r1, r0
	ldr r0, [r4, #0x14]
	bne _0209B85E
	ldr r1, [r4, #0]
	mov r2, #0xb
	add r1, #0x24
	ldrb r1, [r1]
	bl ov104_0222E86C
	b _0209B890
_0209B85E:
	mov r1, #0xb
	bl ov104_0222E8C8
	add r6, r0, #0
	ldr r0, [r4, #0x14]
	bl ov104_0222E710
	ldr r2, [r4, #0]
	add r0, r4, #0
	add r2, #0x24
	ldrb r2, [r2]
	mov r1, #0xb
	bl ov104_0222E63C
	str r0, [r4, #0x14]
	ldr r1, [r4, #0]
	ldrh r2, [r4, #0x20]
	add r1, #0x24
	ldrb r1, [r1]
	bl ov104_0222E748
	ldr r0, [r4, #0x14]
	add r1, r6, #0
	bl ov104_0222E8E8
_0209B890:
	mov r0, #0
	strb r0, [r4, #0x1e]
	mov r0, #1
	str r0, [r5, #0]
_0209B898:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0209B89C: .word 0x021BF67C
_0209B8A0: .word 0x0000FFFF
	thumb_func_end sub_0209B75C

	thumb_func_start sub_0209B8A4
sub_0209B8A4: ; 0x0209B8A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov104_0222E710
	add r0, r4, #0
	bl sub_0209B8D8
	add r0, r5, #0
	bl sub_02006830
	bl sub_0209B94C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0209B8A4

	thumb_func_start sub_0209B8C8
sub_0209B8C8: ; 0x0209B8C8
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0223C2D4
	str r0, [r4, #0x18]
	mov r0, #1
	strb r0, [r4, #0x1d]
	pop {r4, pc}
	thumb_func_end sub_0209B8C8

	thumb_func_start sub_0209B8D8
sub_0209B8D8: ; 0x0209B8D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ov104_0223C4CC
	mov r0, #0
	strb r0, [r4, #0x1d]
	pop {r4, pc}
	thumb_func_end sub_0209B8D8

	thumb_func_start sub_0209B8E8
sub_0209B8E8: ; 0x0209B8E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0209B920 ; =0x0000FFFF
	mov r1, #0
	add r2, r4, #0
_0209B8F2:
	add r1, r1, #1
	strh r0, [r2, #0x24]
	add r2, r2, #4
	cmp r1, #0x18
	blt _0209B8F2
	add r0, r4, #0
	mov r2, #0x1e
	add r0, #0x84
	mov r1, #0
	lsl r2, r2, #6
	bl MI_CpuFill8
	ldr r1, _0209B920 ; =0x0000FFFF
	mov r2, #0
_0209B90E:
	add r0, r4, #0
	add r0, #0x90
	add r2, r2, #1
	add r4, #0x3c
	strh r1, [r0]
	cmp r2, #0x20
	blt _0209B90E
	pop {r4, pc}
	nop
_0209B920: .word 0x0000FFFF
	thumb_func_end sub_0209B8E8

	thumb_func_start sub_0209B924
sub_0209B924: ; 0x0209B924
	push {r3, lr}
	ldr r0, _0209B940 ; =0x00000068
	mov r1, #2
	bl sub_02006590
	ldr r0, _0209B944 ; =0x00000069
	mov r1, #2
	bl sub_02006590
	ldr r0, _0209B948 ; =0x0000003F
	mov r1, #2
	bl sub_02006590
	pop {r3, pc}
	; .align 2, 0
_0209B940: .word 0x00000068
_0209B944: .word 0x00000069
_0209B948: .word 0x0000003F
	thumb_func_end sub_0209B924

	thumb_func_start sub_0209B94C
sub_0209B94C: ; 0x0209B94C
	push {r3, lr}
	ldr r0, _0209B964 ; =0x00000068
	bl sub_02006514
	ldr r0, _0209B968 ; =0x00000069
	bl sub_02006514
	ldr r0, _0209B96C ; =0x0000003F
	bl sub_02006514
	pop {r3, pc}
	nop
_0209B964: .word 0x00000068
_0209B968: .word 0x00000069
_0209B96C: .word 0x0000003F
	thumb_func_end sub_0209B94C

	thumb_func_start sub_0209B970
sub_0209B970: ; 0x0209B970
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0209B970

	thumb_func_start sub_0209B974
sub_0209B974: ; 0x0209B974
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0209B974

	thumb_func_start sub_0209B978
sub_0209B978: ; 0x0209B978
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209B978

	thumb_func_start sub_0209B980
sub_0209B980: ; 0x0209B980
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209B980

	thumb_func_start sub_0209B988
sub_0209B988: ; 0x0209B988
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _0209B99C
	bl sub_02022974
_0209B99C:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0xb
	bl sub_020067E8
	str r0, [r5, #4]
	str r4, [r5, #8]
	ldr r0, [sp, #0x18]
	strb r6, [r5, #0x10]
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209B988

	thumb_func_start sub_0209B9B4
sub_0209B9B4: ; 0x0209B9B4
	mov r1, #1
	add r0, #0x22
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0209B9B4

	thumb_func_start sub_0209B9BC
sub_0209B9BC: ; 0x0209B9BC
	ldr r3, [r0, #0]
	add r3, #0x24
	strb r1, [r3]
	mov r1, #1
	strb r1, [r0, #0x1e]
	strh r2, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209B9BC

	thumb_func_start sub_0209B9CC
sub_0209B9CC: ; 0x0209B9CC
	add r0, #0x24
	bx lr
	thumb_func_end sub_0209B9CC

	thumb_func_start sub_0209B9D0
sub_0209B9D0: ; 0x0209B9D0
	add r0, #0x84
	bx lr
	thumb_func_end sub_0209B9D0

	thumb_func_start sub_0209B9D4
sub_0209B9D4: ; 0x0209B9D4
	mov r2, #0x3c
	add r0, #0x84
	mul r2, r1
	add r0, r0, r2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209B9D4

	thumb_func_start sub_0209B9E0
sub_0209B9E0: ; 0x0209B9E0
	ldr r1, _0209B9E8 ; =0x00000A04
	add r0, r0, r1
	bx lr
	nop
_0209B9E8: .word 0x00000A04
	thumb_func_end sub_0209B9E0

	thumb_func_start sub_0209B9EC
sub_0209B9EC: ; 0x0209B9EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0209BA10 ; =0x00000A04
	mov r1, #0
	add r0, r4, r0
	mov r2, #8
	bl MI_CpuFill8
	ldr r1, _0209BA14 ; =0x0000FFFF
	ldr r0, _0209BA10 ; =0x00000A04
	mov r2, #0
_0209BA02:
	add r2, r2, #1
	strh r1, [r4, r0]
	add r4, r4, #2
	cmp r2, #8
	blt _0209BA02
	pop {r4, pc}
	nop
_0209BA10: .word 0x00000A04
_0209BA14: .word 0x0000FFFF
	thumb_func_end sub_0209B9EC

	.rodata


	.global Unk_020F8BE0
Unk_020F8BE0: ; 0x020F8BE0
	.incbin "incbin/arm9_rodata.bin", 0x13FA0, 0x10

