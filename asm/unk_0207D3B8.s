	.include "macros/function.inc"
	.include "include/unk_0207D3B8.inc"

	

	.text


	thumb_func_start sub_0207D3B8
sub_0207D3B8: ; 0x0207D3B8
	ldr r0, _0207D3BC ; =0x00000774
	bx lr
	; .align 2, 0
_0207D3BC: .word 0x00000774
	thumb_func_end sub_0207D3B8

	thumb_func_start sub_0207D3C0
sub_0207D3C0: ; 0x0207D3C0
	push {r4, lr}
	ldr r1, _0207D3D4 ; =0x00000774
	bl sub_02018144
	add r4, r0, #0
	bl sub_0207D3D8
	add r0, r4, #0
	pop {r4, pc}
	nop
_0207D3D4: .word 0x00000774
	thumb_func_end sub_0207D3C0

	thumb_func_start sub_0207D3D8
sub_0207D3D8: ; 0x0207D3D8
	ldr r3, _0207D3E4 ; =sub_020C4AF0
	add r1, r0, #0
	mov r0, #0
	ldr r2, _0207D3E8 ; =0x00000774
	bx r3
	nop
_0207D3E4: .word sub_020C4AF0
_0207D3E8: .word 0x00000774
	thumb_func_end sub_0207D3D8

	thumb_func_start sub_0207D3EC
sub_0207D3EC: ; 0x0207D3EC
	ldr r3, _0207D3F4 ; =sub_020C4DB0
	ldr r2, _0207D3F8 ; =0x00000774
	bx r3
	nop
_0207D3F4: .word sub_020C4DB0
_0207D3F8: .word 0x00000774
	thumb_func_end sub_0207D3EC

	thumb_func_start sub_0207D3FC
sub_0207D3FC: ; 0x0207D3FC
	mov r1, #0x77
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_0207D3FC

	thumb_func_start sub_0207D404
sub_0207D404: ; 0x0207D404
	mov r2, #0x77
	lsl r2, r2, #4
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_0207D404

	thumb_func_start sub_0207D40C
sub_0207D40C: ; 0x0207D40C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r4, r0, #0
	add r0, r1, #0
	ldr r2, [sp, #0x10]
	mov r1, #5
	add r6, r3, #0
	bl sub_0207CFF0
	cmp r0, #7
	bhi _0207D49C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207D42E: ; jump table
	.short _0207D44C - _0207D42E - 2 ; case 0
	.short _0207D460 - _0207D42E - 2 ; case 1
	.short _0207D46C - _0207D42E - 2 ; case 2
	.short _0207D490 - _0207D42E - 2 ; case 3
	.short _0207D454 - _0207D42E - 2 ; case 4
	.short _0207D484 - _0207D42E - 2 ; case 5
	.short _0207D478 - _0207D42E - 2 ; case 6
	.short _0207D43E - _0207D42E - 2 ; case 7
_0207D43E:
	mov r1, #0xa5
	lsl r1, r1, #2
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x32
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D44C:
	str r4, [r5, #0]
	mov r1, #0xa5
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D454:
	ldr r1, _0207D4A0 ; =0x000005BC
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x40
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D460:
	ldr r1, _0207D4A4 ; =0x0000051C
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x28
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D46C:
	ldr r1, _0207D4A8 ; =0x000006BC
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0xf
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D478:
	ldr r1, _0207D4AC ; =0x000006F8
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x1e
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D484:
	ldr r1, _0207D4B0 ; =0x000004EC
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0xc
	str r1, [r6, #0]
	pop {r4, r5, r6, pc}
_0207D490:
	mov r1, #0xd7
	lsl r1, r1, #2
	add r1, r4, r1
	str r1, [r5, #0]
	mov r1, #0x64
	str r1, [r6, #0]
_0207D49C:
	pop {r4, r5, r6, pc}
	nop
_0207D4A0: .word 0x000005BC
_0207D4A4: .word 0x0000051C
_0207D4A8: .word 0x000006BC
_0207D4AC: .word 0x000006F8
_0207D4B0: .word 0x000004EC
	thumb_func_end sub_0207D40C

	thumb_func_start sub_0207D4B4
sub_0207D4B4: ; 0x0207D4B4
	push {r4, r5, r6, r7}
	add r5, r1, #0
	mov r1, #0
	add r7, r0, #0
	add r4, r2, #0
	mov ip, r3
	mvn r1, r1
	mov r0, #0
	cmp r5, #0
	bls _0207D502
	add r2, r7, #0
	add r3, r1, #0
_0207D4CC:
	ldrh r6, [r2]
	cmp r4, r6
	bne _0207D4EA
	lsl r0, r0, #2
	add r0, r7, r0
	ldrh r2, [r0, #2]
	mov r1, ip
	add r2, r1, r2
	add r1, sp, #0
	ldrh r1, [r1, #0x10]
	cmp r2, r1
	ble _0207D514
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0207D4EA:
	cmp r1, r3
	bne _0207D4FA
	cmp r6, #0
	bne _0207D4FA
	ldrh r6, [r2, #2]
	cmp r6, #0
	bne _0207D4FA
	add r1, r0, #0
_0207D4FA:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, r5
	blo _0207D4CC
_0207D502:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0207D510
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0207D510:
	lsl r0, r1, #2
	add r0, r7, r0
_0207D514:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0207D4B4

	thumb_func_start sub_0207D518
sub_0207D518: ; 0x0207D518
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	str r3, [sp]
	add r2, sp, #8
	add r3, sp, #4
	add r5, r1, #0
	bl sub_0207D40C
	cmp r0, #3
	bne _0207D542
	mov r0, #0x63
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0207D4B4
	add sp, #0xc
	pop {r4, r5, pc}
_0207D542:
	ldr r0, _0207D558 ; =0x000003E7
	add r2, r5, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r3, r4, #0
	bl sub_0207D4B4
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0207D558: .word 0x000003E7
	thumb_func_end sub_0207D518

	thumb_func_start sub_0207D55C
sub_0207D55C: ; 0x0207D55C
	push {r3, lr}
	bl sub_0207D518
	cmp r0, #0
	beq _0207D56A
	mov r0, #1
	pop {r3, pc}
_0207D56A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207D55C

	thumb_func_start sub_0207D570
sub_0207D570: ; 0x0207D570
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0207D518
	str r0, [sp, #8]
	cmp r0, #0
	bne _0207D58C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207D58C:
	strh r5, [r0]
	ldr r1, [sp, #8]
	add r2, sp, #8
	ldrh r0, [r1, #2]
	add r3, sp, #4
	add r0, r0, r4
	strh r0, [r1, #2]
	add r0, r7, #0
	add r1, r5, #0
	str r6, [sp]
	bl sub_0207D40C
	sub r0, r0, #3
	cmp r0, #1
	bhi _0207D5B2
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_0207D7CC
_0207D5B2:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207D570

	thumb_func_start sub_0207D5B8
sub_0207D5B8: ; 0x0207D5B8
	push {r3, r4, r5, r6}
	mov r5, #0
	cmp r1, #0
	bls _0207D5E0
	add r6, r0, #0
_0207D5C2:
	ldrh r4, [r6]
	cmp r2, r4
	bne _0207D5D8
	lsl r1, r5, #2
	add r0, r0, r1
	ldrh r1, [r0, #2]
	cmp r1, r3
	bhs _0207D5E2
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_0207D5D8:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, r1
	blo _0207D5C2
_0207D5E0:
	mov r0, #0
_0207D5E2:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207D5B8

	thumb_func_start sub_0207D5E8
sub_0207D5E8: ; 0x0207D5E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	str r3, [sp]
	add r2, sp, #8
	add r3, sp, #4
	add r5, r1, #0
	bl sub_0207D40C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0207D5B8
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207D5E8

	thumb_func_start sub_0207D60C
sub_0207D60C: ; 0x0207D60C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0207D5E8
	str r0, [sp, #8]
	cmp r0, #0
	bne _0207D628
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207D628:
	ldrh r1, [r0, #2]
	sub r1, r1, r5
	strh r1, [r0, #2]
	ldr r1, [sp, #8]
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _0207D63A
	mov r0, #0
	strh r0, [r1]
_0207D63A:
	str r4, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #8
	add r3, sp, #4
	bl sub_0207D40C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_0207D780
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207D60C

	thumb_func_start sub_0207D658
sub_0207D658: ; 0x0207D658
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r3, #0
	bl sub_0207D5B8
	cmp r0, #0
	bne _0207D66C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0207D66C:
	ldrh r1, [r0, #2]
	sub r1, r1, r4
	strh r1, [r0, #2]
	ldrh r1, [r0, #2]
	cmp r1, #0
	bne _0207D67C
	mov r1, #0
	strh r1, [r0]
_0207D67C:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0207D780
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207D658

	thumb_func_start sub_0207D688
sub_0207D688: ; 0x0207D688
	push {r3, lr}
	bl sub_0207D5E8
	cmp r0, #0
	beq _0207D696
	mov r0, #1
	pop {r3, pc}
_0207D696:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207D688

	thumb_func_start sub_0207D69C
sub_0207D69C: ; 0x0207D69C
	cmp r1, #7
	bhi _0207D6FC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207D6AC: ; jump table
	.short _0207D6C6 - _0207D6AC - 2 ; case 0
	.short _0207D6D2 - _0207D6AC - 2 ; case 1
	.short _0207D6DA - _0207D6AC - 2 ; case 2
	.short _0207D6F2 - _0207D6AC - 2 ; case 3
	.short _0207D6CA - _0207D6AC - 2 ; case 4
	.short _0207D6EA - _0207D6AC - 2 ; case 5
	.short _0207D6E2 - _0207D6AC - 2 ; case 6
	.short _0207D6BC - _0207D6AC - 2 ; case 7
_0207D6BC:
	mov r1, #0xa5
	lsl r1, r1, #2
	add r0, r0, r1
	mov r2, #0x32
	b _0207D700
_0207D6C6:
	mov r2, #0xa5
	b _0207D700
_0207D6CA:
	ldr r1, _0207D71C ; =0x000005BC
	mov r2, #0x40
	add r0, r0, r1
	b _0207D700
_0207D6D2:
	ldr r1, _0207D720 ; =0x0000051C
	mov r2, #0x28
	add r0, r0, r1
	b _0207D700
_0207D6DA:
	ldr r1, _0207D724 ; =0x000006BC
	mov r2, #0xf
	add r0, r0, r1
	b _0207D700
_0207D6E2:
	ldr r1, _0207D728 ; =0x000006F8
	mov r2, #0x1e
	add r0, r0, r1
	b _0207D700
_0207D6EA:
	ldr r1, _0207D72C ; =0x000004EC
	mov r2, #0xc
	add r0, r0, r1
	b _0207D700
_0207D6F2:
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r0, r1
	mov r2, #0x64
	b _0207D700
_0207D6FC:
	mov r0, #0
	bx lr
_0207D700:
	mov r3, #0
	cmp r2, #0
	bls _0207D718
_0207D706:
	ldrh r1, [r0]
	cmp r1, #0
	beq _0207D710
	mov r0, #1
	bx lr
_0207D710:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, r2
	blo _0207D706
_0207D718:
	mov r0, #0
	bx lr
	; .align 2, 0
_0207D71C: .word 0x000005BC
_0207D720: .word 0x0000051C
_0207D724: .word 0x000006BC
_0207D728: .word 0x000006F8
_0207D72C: .word 0x000004EC
	thumb_func_end sub_0207D69C

	thumb_func_start sub_0207D730
sub_0207D730: ; 0x0207D730
	push {r3, lr}
	add r3, r2, #0
	mov r2, #1
	bl sub_0207D5E8
	cmp r0, #0
	bne _0207D742
	mov r0, #0
	pop {r3, pc}
_0207D742:
	ldrh r0, [r0, #2]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207D730

	thumb_func_start sub_0207D748
sub_0207D748: ; 0x0207D748
	push {r3, lr}
	mov r3, #1
	bl sub_0207D5B8
	cmp r0, #0
	bne _0207D758
	mov r0, #0
	pop {r3, pc}
_0207D758:
	ldrh r0, [r0, #2]
	pop {r3, pc}
	thumb_func_end sub_0207D748

	thumb_func_start sub_0207D75C
sub_0207D75C: ; 0x0207D75C
	push {r3}
	sub sp, #4
	ldrh r3, [r0]
	add r2, sp, #0
	strh r3, [r2]
	ldrh r3, [r0, #2]
	strh r3, [r2, #2]
	ldrh r3, [r1]
	strh r3, [r0]
	ldrh r3, [r1, #2]
	strh r3, [r0, #2]
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	add sp, #4
	pop {r3}
	bx lr
	thumb_func_end sub_0207D75C

	thumb_func_start sub_0207D780
sub_0207D780: ; 0x0207D780
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	add r7, r1, #0
	str r0, [sp, #4]
	sub r0, r7, #1
	str r0, [sp, #8]
	beq _0207D7C6
	ldr r4, [sp]
_0207D794:
	ldr r0, [sp, #4]
	add r6, r0, #1
	cmp r6, r7
	bhs _0207D7B8
	ldr r0, [sp]
	lsl r1, r6, #2
	add r5, r0, r1
_0207D7A2:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0207D7B0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0207D75C
_0207D7B0:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blo _0207D7A2
_0207D7B8:
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	cmp r1, r0
	blo _0207D794
_0207D7C6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207D780

	thumb_func_start sub_0207D7CC
sub_0207D7CC: ; 0x0207D7CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	add r7, r1, #0
	str r0, [sp, #4]
	sub r0, r7, #1
	str r0, [sp, #8]
	beq _0207D820
	ldr r4, [sp]
_0207D7E0:
	ldr r0, [sp, #4]
	add r6, r0, #1
	cmp r6, r7
	bhs _0207D812
	ldr r0, [sp]
	lsl r1, r6, #2
	add r5, r0, r1
_0207D7EE:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0207D802
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0207D80A
	ldrh r1, [r4]
	ldrh r0, [r5]
	cmp r1, r0
	bls _0207D80A
_0207D802:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0207D75C
_0207D80A:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blo _0207D7EE
_0207D812:
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	cmp r1, r0
	blo _0207D7E0
_0207D820:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207D7CC

	thumb_func_start sub_0207D824
sub_0207D824: ; 0x0207D824
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r2, #0x18
	add r7, r1, #0
	lsr r0, r0, #0x18
	bl sub_0207CB08
	add r6, r0, #0
	ldrb r0, [r7]
	mov r4, #0
	cmp r0, #0xff
	beq _0207D8F6
_0207D83C:
	ldrb r0, [r7, r4]
	cmp r0, #7
	bhi _0207D8EE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207D84E: ; jump table
	.short _0207D872 - _0207D84E - 2 ; case 0
	.short _0207D894 - _0207D84E - 2 ; case 1
	.short _0207D8A6 - _0207D84E - 2 ; case 2
	.short _0207D8DC - _0207D84E - 2 ; case 3
	.short _0207D882 - _0207D84E - 2 ; case 4
	.short _0207D8CA - _0207D84E - 2 ; case 5
	.short _0207D8B8 - _0207D84E - 2 ; case 6
	.short _0207D85E - _0207D84E - 2 ; case 7
_0207D85E:
	mov r1, #0xa5
	lsl r1, r1, #2
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #7
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D872:
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D882:
	ldr r1, _0207D8FC ; =0x000005BC
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D894:
	ldr r1, _0207D900 ; =0x0000051C
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D8A6:
	ldr r1, _0207D904 ; =0x000006BC
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D8B8:
	ldr r1, _0207D908 ; =0x000006F8
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #6
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D8CA:
	ldr r1, _0207D90C ; =0x000004EC
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #5
	lsr r3, r3, #0x18
	bl sub_0207CB48
	b _0207D8EE
_0207D8DC:
	mov r1, #0xd7
	lsl r1, r1, #2
	lsl r3, r4, #0x18
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #3
	lsr r3, r3, #0x18
	bl sub_0207CB48
_0207D8EE:
	add r4, r4, #1
	ldrb r0, [r7, r4]
	cmp r0, #0xff
	bne _0207D83C
_0207D8F6:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207D8FC: .word 0x000005BC
_0207D900: .word 0x0000051C
_0207D904: .word 0x000006BC
_0207D908: .word 0x000006F8
_0207D90C: .word 0x000004EC
	thumb_func_end sub_0207D824

	thumb_func_start sub_0207D910
sub_0207D910: ; 0x0207D910
	cmp r1, #7
	bhi _0207D96E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207D920: ; jump table
	.short _0207D93A - _0207D920 - 2 ; case 0
	.short _0207D946 - _0207D920 - 2 ; case 1
	.short _0207D94E - _0207D920 - 2 ; case 2
	.short _0207D966 - _0207D920 - 2 ; case 3
	.short _0207D93E - _0207D920 - 2 ; case 4
	.short _0207D95E - _0207D920 - 2 ; case 5
	.short _0207D956 - _0207D920 - 2 ; case 6
	.short _0207D930 - _0207D920 - 2 ; case 7
_0207D930:
	mov r1, #0xa5
	lsl r1, r1, #2
	add r0, r0, r1
	mov r3, #0x32
	b _0207D96E
_0207D93A:
	mov r3, #0xa5
	b _0207D96E
_0207D93E:
	ldr r1, _0207D97C ; =0x000005BC
	mov r3, #0x40
	add r0, r0, r1
	b _0207D96E
_0207D946:
	ldr r1, _0207D980 ; =0x0000051C
	mov r3, #0x28
	add r0, r0, r1
	b _0207D96E
_0207D94E:
	ldr r1, _0207D984 ; =0x000006BC
	mov r3, #0xf
	add r0, r0, r1
	b _0207D96E
_0207D956:
	ldr r1, _0207D988 ; =0x000006F8
	mov r3, #0x1e
	add r0, r0, r1
	b _0207D96E
_0207D95E:
	ldr r1, _0207D98C ; =0x000004EC
	mov r3, #0xc
	add r0, r0, r1
	b _0207D96E
_0207D966:
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r0, r1
	mov r3, #0x64
_0207D96E:
	cmp r2, r3
	blo _0207D976
	mov r0, #0
	bx lr
_0207D976:
	lsl r1, r2, #2
	add r0, r0, r1
	bx lr
	; .align 2, 0
_0207D97C: .word 0x000005BC
_0207D980: .word 0x0000051C
_0207D984: .word 0x000006BC
_0207D988: .word 0x000006F8
_0207D98C: .word 0x000004EC
	thumb_func_end sub_0207D910

	thumb_func_start sub_0207D990
sub_0207D990: ; 0x0207D990
	ldr r3, _0207D998 ; =sub_020245BC
	mov r1, #3
	bx r3
	nop
_0207D998: .word sub_020245BC
	thumb_func_end sub_0207D990

	thumb_func_start sub_0207D99C
sub_0207D99C: ; 0x0207D99C
	push {r4, lr}
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x24
	bl sub_020C4AF0
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0207D99C

	thumb_func_start sub_0207D9B4
sub_0207D9B4: ; 0x0207D9B4
	push {r3, r4}
	add r4, r0, r1
	ldrb r4, [r4, #8]
	strb r4, [r2]
	ldrb r0, [r0, r1]
	strb r0, [r3]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207D9B4

	thumb_func_start sub_0207D9C4
sub_0207D9C4: ; 0x0207D9C4
	ldrh r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0207D9C4

	thumb_func_start sub_0207D9C8
sub_0207D9C8: ; 0x0207D9C8
	push {r3, r4}
	add r4, r0, r1
	strb r2, [r4, #8]
	strb r3, [r0, r1]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0207D9C8

	thumb_func_start sub_0207D9D4
sub_0207D9D4: ; 0x0207D9D4
	strh r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_0207D9D4

	thumb_func_start sub_0207D9D8
sub_0207D9D8: ; 0x0207D9D8
	add r1, r0, r1
	ldrb r0, [r1, #0x19]
	strb r0, [r2]
	ldrb r0, [r1, #0x14]
	strb r0, [r3]
	bx lr
	thumb_func_end sub_0207D9D8

	thumb_func_start sub_0207D9E4
sub_0207D9E4: ; 0x0207D9E4
	ldrh r0, [r0, #0x1e]
	bx lr
	thumb_func_end sub_0207D9E4

	thumb_func_start sub_0207D9E8
sub_0207D9E8: ; 0x0207D9E8
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_0207D9E8

	thumb_func_start sub_0207D9EC
sub_0207D9EC: ; 0x0207D9EC
	ldrh r0, [r0, #0x22]
	bx lr
	thumb_func_end sub_0207D9EC

	thumb_func_start sub_0207D9F0
sub_0207D9F0: ; 0x0207D9F0
	add r0, r0, r1
	strb r2, [r0, #0x19]
	strb r3, [r0, #0x14]
	bx lr
	thumb_func_end sub_0207D9F0

	thumb_func_start sub_0207D9F8
sub_0207D9F8: ; 0x0207D9F8
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0207DA00:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0207D9F0
	add r4, r4, #1
	cmp r4, #5
	blo _0207DA00
	add r0, r5, #0
	mov r1, #0
	bl sub_0207DA24
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207D9F8

	thumb_func_start sub_0207DA1C
sub_0207DA1C: ; 0x0207DA1C
	strh r1, [r0, #0x1e]
	strh r2, [r0, #0x20]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207DA1C

	thumb_func_start sub_0207DA24
sub_0207DA24: ; 0x0207DA24
	strh r1, [r0, #0x22]
	bx lr
	thumb_func_end sub_0207DA24