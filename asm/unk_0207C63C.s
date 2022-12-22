	.include "macros/function.inc"
	.include "include/unk_0207C63C.inc"

	

	.text


	thumb_func_start sub_0207C63C
sub_0207C63C: ; 0x0207C63C
	push {r3, lr}
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0207C65C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0207C660 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_0207C65C: .word 0xFFFFE0FF
_0207C660: .word 0x04001000
	thumb_func_end sub_0207C63C

	thumb_func_start sub_0207C664
sub_0207C664: ; 0x0207C664
	push {r3, lr}
	mov r0, #7
	str r0, [sp]
	ldr r0, _0207C688 ; =0x04000050
	mov r1, #0
	mov r2, #0xe
	mov r3, #0xb
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _0207C68C ; =0x04001050
	mov r1, #0
	mov r2, #0xe
	mov r3, #7
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	; .align 2, 0
_0207C688: .word 0x04000050
_0207C68C: .word 0x04001050
	thumb_func_end sub_0207C664

	thumb_func_start sub_0207C690
sub_0207C690: ; 0x0207C690
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	ldr r1, _0207C6A8 ; =sub_0207C6AC
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_0207C6A8: .word sub_0207C6AC
	thumb_func_end sub_0207C690

	thumb_func_start sub_0207C6AC
sub_0207C6AC: ; 0x0207C6AC
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0207C718 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0207C71C ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0207C720 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _0207C724 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _0207C728 ; =0xBFFF0000
	ldr r0, _0207C72C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0207C718: .word 0x04000008
_0207C71C: .word 0xFFFFCFFD
_0207C720: .word 0x0000CFFB
_0207C724: .word 0x00007FFF
_0207C728: .word 0xBFFF0000
_0207C72C: .word 0x04000580
	thumb_func_end sub_0207C6AC

	thumb_func_start sub_0207C730
sub_0207C730: ; 0x0207C730
	push {r3, r4, r5, lr}
	ldr r3, _0207C768 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0207C76C ; =0x02100DF4
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0xa0
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _0207C758
	bl sub_02022974
_0207C758:
	cmp r5, #0
	bne _0207C760
	bl sub_02022974
_0207C760:
	bl sub_02014000
	pop {r3, r4, r5, pc}
	nop
_0207C768: .word 0x02100DEC
_0207C76C: .word 0x02100DF4
	thumb_func_end sub_0207C730

	thumb_func_start sub_0207C770
sub_0207C770: ; 0x0207C770
	push {r3, lr}
	bl sub_020241B4
	bl sub_0201469C
	cmp r0, #0
	ble _0207C786
	bl sub_020241B4
	bl NNS_G2dSetupSoftwareSpriteCamera
_0207C786:
	bl sub_020146C0
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
	pop {r3, pc}
	thumb_func_end sub_0207C770

	thumb_func_start sub_0207C794
sub_0207C794: ; 0x0207C794
	push {r4, lr}
	ldr r3, _0207C7AC ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145B4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0207C7AC: .word 0x02100DEC
	thumb_func_end sub_0207C794

	thumb_func_start sub_0207C7B0
sub_0207C7B0: ; 0x0207C7B0
	push {r4, lr}
	ldr r3, _0207C7C8 ; =0x02100DF4
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145F4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0207C7C8: .word 0x02100DF4
	thumb_func_end sub_0207C7B0

	thumb_func_start sub_0207C7CC
sub_0207C7CC: ; 0x0207C7CC
	push {r4, lr}
	sub sp, #8
	mov r1, #0x12
	lsl r1, r1, #0xa
	add r4, r0, #0
	bl sub_02018144
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #0x12
	ldr r0, _0207C80C ; =sub_0207C794
	ldr r1, _0207C810 ; =sub_0207C7B0
	lsl r3, r3, #0xa
	str r4, [sp, #4]
	bl sub_02014014
	add r4, r0, #0
	bl sub_02014784
	add r2, r0, #0
	beq _0207C804
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
_0207C804:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_0207C80C: .word sub_0207C794
_0207C810: .word sub_0207C7B0
	thumb_func_end sub_0207C7CC

	thumb_func_start sub_0207C814
sub_0207C814: ; 0x0207C814
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_0207C7CC
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020144C4
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xa
	mov r3, #1
	bl sub_020144CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207C814

	thumb_func_start sub_0207C83C
sub_0207C83C: ; 0x0207C83C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02014730
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201411C
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207C83C

	thumb_func_start sub_0207C854
sub_0207C854: ; 0x0207C854
	push {r3}
	sub sp, #0xc
	add r1, sp, #0
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	mov r1, #0x56
	lsl r1, r1, #4
	str r2, [sp]
	str r2, [sp, #8]
	str r1, [sp, #4]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #4]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #8]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
	add sp, #0xc
	pop {r3}
	bx lr
	thumb_func_end sub_0207C854

	thumb_func_start sub_0207C894
sub_0207C894: ; 0x0207C894
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	bne _0207C8A8
	bl sub_02022974
_0207C8A8:
	ldr r0, [r5, #0]
	ldr r2, [r5, #4]
	mov r1, #0x7c
	str r0, [r4, #0]
	str r2, [r4, #4]
	ldr r0, [r4, #0]
	bl sub_0207C814
	mov r1, #1
	str r0, [r4, #0xc]
	bl sub_02014788
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207C894

	thumb_func_start sub_0207C8C4
sub_0207C8C4: ; 0x0207C8C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r2, _0207C8DC ; =sub_0207C854
	add r3, r4, #0
	bl sub_020146F4
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02014788
	pop {r4, pc}
	; .align 2, 0
_0207C8DC: .word sub_0207C854
	thumb_func_end sub_0207C8C4

	thumb_func_start sub_0207C8E0
sub_0207C8E0: ; 0x0207C8E0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02014710
	cmp r0, #0
	beq _0207C8F0
	mov r0, #1
	pop {r3, pc}
_0207C8F0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0207C8E0

	thumb_func_start sub_0207C8F4
sub_0207C8F4: ; 0x0207C8F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207C83C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0207C8F4