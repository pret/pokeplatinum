	.include "macros/function.inc"
	.include "overlay095/ov95_0224B3D8.inc"

	

	.text


	thumb_func_start ov95_0224B3D8
ov95_0224B3D8: ; 0x0224B3D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x88
	bl sub_02018144
	add r4, r0, #0
	beq _0224B434
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0x58]
	mov r0, #0x3a
	bl sub_0200762C
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0x3a
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0x3a
	bl sub_02023790
	str r0, [r4, #0x70]
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #0x7c]
	add r0, #0x80
	str r1, [r0, #0]
	str r1, [r4, #0x74]
	mov r0, #0x93
	mov r1, #0x3a
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1, #0]
_0224B434:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_0224B3D8

	thumb_func_start ov95_0224B438
ov95_0224B438: ; 0x0224B438
	push {r4, lr}
	add r4, r0, #0
	beq _0224B498
	bl ov95_0224BC10
	add r0, r4, #0
	bl ov95_0224BB8C
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl ov95_0224BCE8
	ldr r0, [r4, #0x6c]
	bl sub_020237BC
	ldr r0, [r4, #0x70]
	bl sub_020237BC
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0224B468
	bl ov95_0224773C
_0224B468:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201A8FC
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0224B482
	bl sub_02007DC8
_0224B482:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_02006CA8
	ldr r0, [r4, #0x10]
	bl sub_02007B6C
	add r0, r4, #0
	bl sub_020181C4
_0224B498:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B438

	thumb_func_start ov95_0224B49C
ov95_0224B49C: ; 0x0224B49C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #4
	bhs _0224B4CA
	lsl r3, r2, #2
	ldr r2, _0224B4D0 ; =0x0224C224
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _0224B4C0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_0224B4C0:
	add r0, r5, #0
	bl ov95_0224B4D4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224B4CA:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224B4D0: .word 0x0224C224
	thumb_func_end ov95_0224B49C

	thumb_func_start ov95_0224B4D4
ov95_0224B4D4: ; 0x0224B4D4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl G3X_Reset
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGeFlushBuffer
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r0, [r4, #0x10]
	bl sub_02008A94
	ldr r0, [r4, #0x10]
	bl sub_02007768
	mov r2, #1
	str r2, [sp]
	mov r0, #0x12
	add r1, sp, #0
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0224B512
	bl ov95_02247770
_0224B512:
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B4D4

	thumb_func_start ov95_0224B520
ov95_0224B520: ; 0x0224B520
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _0224B6D0 ; =0x0224C27C
	bl sub_0201FE94
	ldr r2, _0224B6D4 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224B6D8 ; =0x0224C234
	bl sub_02018368
	ldr r0, [r4, #0x58]
	ldr r2, _0224B6DC ; =0x0224C244
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x58]
	ldr r2, _0224B6E0 ; =0x0224C260
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r2, _0224B6E4 ; =0x04000008
	mov r0, #3
	ldrh r3, [r2]
	mov r1, #1
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x58]
	add r3, r1, #0
	bl sub_020196C0
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x58]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #0]
	bl ov95_02247674
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	ldr r0, [r4, #0x58]
	mov r1, #1
	mov r2, #0x6d
	mov r3, #2
	bl sub_0200DD0C
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	add r1, r4, #0
	str r0, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x58]
	add r1, #0x5c
	mov r3, #2
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0x20
	str r3, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0xe
	mov r1, #7
	mov r2, #0
	bl sub_02006E84
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_02019448
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x58]
	mov r0, #0x5d
	mov r1, #0x16
	mov r3, #2
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x58]
	mov r0, #0x5d
	mov r1, #0x15
	mov r3, #2
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0x17
	add r3, r2, #0
	bl sub_02006E84
	add r0, r4, #0
	bl ov95_0224B9C0
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	str r0, [r4, #0x74]
	add r0, r4, #0
	bl ov95_0224BA8C
	mov r1, #6
	mov r2, #1
	str r0, [r4, #0x14]
	bl sub_02007DEC
	mov r1, #0
	mov r0, #0x13
	str r1, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x74]
	mov r2, #0x5d
	mov r3, #0x1b
	bl ov95_022478B4
	ldr r2, _0224B6E8 ; =0x0224C21C
	str r0, [r4, #0x78]
	ldrh r3, [r2]
	add r0, sp, #0x14
	add r1, sp, #0x14
	strh r3, [r0]
	ldrh r3, [r2, #2]
	ldrh r2, [r2, #4]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	ldr r0, [r4, #0x78]
	bl ov95_02247990
	add r0, r4, #0
	bl ov95_0224BAE8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224B6EC ; =0x04000050
	mov r1, #1
	mov r2, #4
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_0224B6D0: .word 0x0224C27C
_0224B6D4: .word 0x04000304
_0224B6D8: .word 0x0224C234
_0224B6DC: .word 0x0224C244
_0224B6E0: .word 0x0224C260
_0224B6E4: .word 0x04000008
_0224B6E8: .word 0x0224C21C
_0224B6EC: .word 0x04000050
	thumb_func_end ov95_0224B520

	thumb_func_start ov95_0224B6F0
ov95_0224B6F0: ; 0x0224B6F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _0224B716
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224B716
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	pop {r4, pc}
_0224B716:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B6F0

	thumb_func_start ov95_0224B71C
ov95_0224B71C: ; 0x0224B71C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #4
	bhi _0224B816
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224B736: ; jump table
	.short _0224B740 - _0224B736 - 2 ; case 0
	.short _0224B74E - _0224B736 - 2 ; case 1
	.short _0224B77C - _0224B736 - 2 ; case 2
	.short _0224B7A4 - _0224B736 - 2 ; case 3
	.short _0224B806 - _0224B736 - 2 ; case 4
_0224B740:
	add r1, r4, #0
	add r1, #0x80
	bl ov95_0224BC6C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_0224B74E:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0224B816
	ldr r0, [r4, #0x44]
	mov r1, #2
	bl sub_02021D6C
	ldr r0, [r4, #0x44]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x78]
	mov r1, #0
	bl ov95_022479A8
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B816
_0224B77C:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _0224B816
	ldr r0, [r4, #0x14]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0xc
	bl ov95_0224BBB0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0224B816
_0224B7A4:
	bl ov95_0224BC00
	cmp r0, #0
	beq _0224B816
	ldr r0, [r4, #0]
	bl ov95_0224763C
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _0224B7FA
	ldr r0, [r4, #0]
	bl ov95_02247660
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r1, sp, #0
	mov r3, #1
	bl sub_02078A4C
	ldr r0, [r4, #0]
	bl ov95_02247660
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov95_02247668
	add r2, r0, #0
	add r1, sp, #0
	lsl r2, r2, #0x18
	ldrb r1, [r1]
	add r0, r6, #0
	lsr r2, r2, #0x18
	bl sub_0200590C
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02007B98
_0224B7FA:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B816
_0224B806:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x1e
	ble _0224B816
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224B816:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov95_0224B71C

	thumb_func_start ov95_0224B81C
ov95_0224B81C: ; 0x0224B81C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #5
	bhi _0224B858
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224B836: ; jump table
	.short _0224B842 - _0224B836 - 2 ; case 0
	.short _0224B84E - _0224B836 - 2 ; case 1
	.short _0224B8CC - _0224B836 - 2 ; case 2
	.short _0224B92E - _0224B836 - 2 ; case 3
	.short _0224B94E - _0224B836 - 2 ; case 4
	.short _0224B978 - _0224B836 - 2 ; case 5
_0224B842:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B986
_0224B84E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	bgt _0224B85A
_0224B858:
	b _0224B986
_0224B85A:
	ldr r0, [r4, #0]
	bl ov95_02247630
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov95_0224762C
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov95_02247680
	cmp r0, #1
	bne _0224B87A
	mov r1, #2
	add r6, r1, #0
	b _0224B87E
_0224B87A:
	mov r1, #5
	mov r6, #3
_0224B87E:
	ldr r0, [sp, #0xc]
	ldr r2, [r4, #0x6c]
	bl sub_0200B1B8
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #0x6c]
	add r0, r7, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x70]
	add r0, #0x5c
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0x6d
	mov r2, #2
	bl sub_0200E010
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201A954
	ldr r0, _0224B98C ; =0x00000484
	bl sub_02006150
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	str r6, [r5, #0]
	b _0224B986
_0224B8CC:
	mov r1, #0x3c
	bl ov95_0224B990
	cmp r0, #0
	beq _0224B986
	ldr r0, [r4, #0]
	bl ov95_02247630
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov95_0224762C
	add r7, r0, #0
	ldr r2, [r4, #0x6c]
	add r0, r6, #0
	mov r1, #3
	bl sub_0200B1B8
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #0x6c]
	add r0, r7, #0
	bl sub_0200C388
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x70]
	add r0, #0x5c
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	add r0, #0x5c
	bl sub_0201ACCC
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B986
_0224B92E:
	mov r1, #0x3c
	bl ov95_0224B990
	cmp r0, #0
	beq _0224B986
	add r0, r4, #0
	add r0, #0x5c
	mov r1, #0
	bl sub_0200E084
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B986
_0224B94E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _0224B986
	mov r0, #0x10
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0224B986
_0224B978:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224B986
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B986:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B98C: .word 0x00000484
	thumb_func_end ov95_0224B81C

	thumb_func_start ov95_0224B990
ov95_0224B990: ; 0x0224B990
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #0
	beq _0224B9A2
	bl sub_020061E4
	str r0, [r5, #0xc]
_0224B9A2:
	ldr r0, [r5, #8]
	cmp r0, r4
	bge _0224B9B0
	add r0, r0, #1
	str r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224B9B0:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0224B9BA
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224B9BA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224B990

	thumb_func_start ov95_0224B9C0
ov95_0224B9C0: ; 0x0224B9C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _0224BA68 ; =0x04000060
	ldr r2, _0224BA6C ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0224BA70 ; =0x0000CFFB
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
	ldr r1, _0224BA74 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _0224BA78 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
	ldr r3, _0224BA7C ; =0x02100DEC
	mov r0, #1
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0224BA80 ; =0x02100DF4
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	mov r1, #0
	mov r2, #1
	blx r3
	ldr r2, _0224BA84 ; =0x7FFF0000
	add r6, r0, #0
	and r2, r4
	lsl r1, r4, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl sub_02008A78
	ldr r2, _0224BA88 ; =0xFFFF0000
	lsl r1, r6, #0x10
	and r2, r6
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl sub_02008A84
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224BA68: .word 0x04000060
_0224BA6C: .word 0xFFFFCFFD
_0224BA70: .word 0x0000CFFB
_0224BA74: .word 0x04000540
_0224BA78: .word 0xBFFF0000
_0224BA7C: .word 0x02100DEC
_0224BA80: .word 0x02100DF4
_0224BA84: .word 0x7FFF0000
_0224BA88: .word 0xFFFF0000
	thumb_func_end ov95_0224B9C0

	thumb_func_start ov95_0224BA8C
ov95_0224BA8C: ; 0x0224BA8C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov95_0224763C
	add r4, r0, #0
	add r0, sp, #0x10
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl sub_02075F0C
	ldr r0, [r5, #0]
	bl ov95_02247660
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x84
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r1, #0x18
	mov r3, #1
	bl sub_020789BC
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_020765C4
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x10]
	add r3, #0x50
	add r1, sp, #0x10
	mov r2, #0x80
	bl sub_02007C34
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_0224BA8C

	thumb_func_start ov95_0224BAE8
ov95_0224BAE8: ; 0x0224BAE8
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x48
	mov r1, #0x5d
	mov r2, #7
	mov r3, #8
	bl ov95_02247568
	add r0, sp, #0x5c
	bl NNS_G2dInitImagePaletteProxy
	add r0, sp, #0x38
	bl NNS_G2dInitImageProxy
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	mov r0, #0x5d
	mov r1, #9
	bl sub_02006F00
	mov r0, #0x3a
	str r0, [sp]
	add r0, sp, #0x5c
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl sub_02006EE0
	mov r0, #2
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x14
	add r1, #0x48
	add r2, sp, #0x38
	add r3, sp, #0x5c
	bl ov95_022475C4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x64
	bl ov95_022475E4
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x5a
	bl ov95_022475E4
	str r0, [r4, #0x44]
	mov r1, #1
	bl sub_02021E80
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x70
	pop {r4, pc}
	thumb_func_end ov95_0224BAE8

	thumb_func_start ov95_0224BB8C
ov95_0224BB8C: ; 0x0224BB8C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0224BB94:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0224BB9E
	bl sub_02021BD4
_0224BB9E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0224BB94
	add r6, #0x48
	add r0, r6, #0
	bl ov95_022475A0
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_0224BB8C

	thumb_func_start ov95_0224BBB0
ov95_0224BBB0: ; 0x0224BBB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x3a
	mov r1, #0x14
	str r2, [sp]
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	beq _0224BBF6
	str r5, [r4, #0]
	lsl r0, r6, #0xc
	str r0, [r4, #4]
	ldr r0, [sp]
	lsl r1, r0, #0xc
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	add r1, r7, #0
	bl _s32_div_f
	str r0, [r4, #0xc]
	ldr r0, _0224BBF8 ; =ov95_0224BC30
	str r7, [r4, #0x10]
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA04
	str r0, [r5, #0x7c]
	ldr r0, _0224BBFC ; =0x04000050
	mov r1, #1
	add r2, r6, #0
	bl G2x_SetBlendBrightness_
_0224BBF6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BBF8: .word ov95_0224BC30
_0224BBFC: .word 0x04000050
	thumb_func_end ov95_0224BBB0

	thumb_func_start ov95_0224BC00
ov95_0224BC00: ; 0x0224BC00
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	bne _0224BC0A
	mov r0, #1
	bx lr
_0224BC0A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224BC00

	thumb_func_start ov95_0224BC10
ov95_0224BC10: ; 0x0224BC10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0224BC2C
	bl sub_0201CED0
	bl ov95_022476C8
	ldr r0, [r4, #0x7c]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x7c]
_0224BC2C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224BC10

	thumb_func_start ov95_0224BC30
ov95_0224BC30: ; 0x0224BC30
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	ble _0224BC52
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r2, r1, r0
	str r2, [r4, #4]
	ldr r0, _0224BC68 ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl G2x_SetBlendBrightness_
	pop {r4, pc}
_0224BC52:
	ldr r2, [r4, #8]
	ldr r0, _0224BC68 ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl G2x_SetBlendBrightness_
	ldr r0, [r4, #0]
	bl ov95_0224BC10
	pop {r4, pc}
	nop
_0224BC68: .word 0x04000050
	thumb_func_end ov95_0224BC30

	thumb_func_start ov95_0224BC6C
ov95_0224BC6C: ; 0x0224BC6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x3a
	mov r1, #0x44
	bl sub_02018144
	add r4, r0, #0
	beq _0224BCDA
	mov r1, #0
	str r1, [r4, #4]
	str r6, [r4, #0]
	ldr r0, [r5, #0x74]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x78]
	str r0, [r4, #0x14]
	str r5, [r4, #8]
	ldr r0, _0224BCE0 ; =0x000018CC
	str r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #0x14
	str r0, [r4, #0x20]
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r4, #0x3a]
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x14]
	bl ov95_022479AC
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ov95_022479A8
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x24
	bl ov95_02247958
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x34
	bl ov95_02247978
	ldr r0, _0224BCE4 ; =ov95_0224BD5C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r6, #0]
	cmp r0, #0
	bne _0224BCDE
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
_0224BCDA:
	mov r0, #0
	str r0, [r6, #0]
_0224BCDE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224BCE0: .word 0x000018CC
_0224BCE4: .word ov95_0224BD5C
	thumb_func_end ov95_0224BC6C

	thumb_func_start ov95_0224BCE8
ov95_0224BCE8: ; 0x0224BCE8
	push {r4, lr}
	add r4, r0, #0
	beq _0224BD02
	bl sub_0201CED0
	ldr r1, [r0, #0]
	mov r2, #0
	str r2, [r1, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_0224BD02:
	pop {r4, pc}
	thumb_func_end ov95_0224BCE8

	thumb_func_start ov95_0224BD04
ov95_0224BD04: ; 0x0224BD04
	add r1, r0, #0
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0224BD26
	mov r0, #0x3a
	ldrsh r2, [r1, r0]
	mov r0, #0x3c
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strh r0, [r1, #0x3a]
	ldr r0, [r1, #0x40]
	sub r0, r0, #1
	str r0, [r1, #0x40]
	bne _0224BD26
	mov r0, #0x3e
	ldrsh r0, [r1, r0]
	strh r0, [r1, #0x3a]
_0224BD26:
	mov r0, #0x36
	ldrsh r2, [r1, r0]
	mov r0, #0x3a
	ldrsh r0, [r1, r0]
	ldr r3, _0224BD3C ; =ov95_02247990
	add r0, r2, r0
	strh r0, [r1, #0x36]
	ldr r0, [r1, #0x14]
	add r1, #0x34
	bx r3
	nop
_0224BD3C: .word ov95_02247990
	thumb_func_end ov95_0224BD04

	thumb_func_start ov95_0224BD40
ov95_0224BD40: ; 0x0224BD40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	beq _0224BD58
	mov r0, #0x3a
	ldrsh r0, [r5, r0]
	sub r0, r1, r0
	add r1, r4, #0
	bl _s32_div_f
	strh r0, [r5, #0x3c]
	str r4, [r5, #0x40]
_0224BD58:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_0224BD40

	thumb_func_start ov95_0224BD5C
ov95_0224BD5C: ; 0x0224BD5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov95_0224BD04
	ldr r0, [r4, #4]
	cmp r0, #5
	bhi _0224BE6A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BD7A: ; jump table
	.short _0224BD86 - _0224BD7A - 2 ; case 0
	.short _0224BDB6 - _0224BD7A - 2 ; case 1
	.short _0224BDCE - _0224BD7A - 2 ; case 2
	.short _0224BDE4 - _0224BD7A - 2 ; case 3
	.short _0224BE2C - _0224BD7A - 2 ; case 4
	.short _0224BE5A - _0224BD7A - 2 ; case 5
_0224BD86:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224BDA6
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	asr r1, r1, #0xc
	bl ov95_022479AC
	pop {r3, r4, r5, pc}
_0224BDA6:
	ldr r0, [r4, #0x14]
	mov r1, #0x1f
	bl ov95_022479AC
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BDB6:
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #0x1e
	bl ov95_0224BD40
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BDCE:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0xa
	ble _0224BE6A
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BDE4:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	add r0, r1, r0
	str r0, [r4, #0x28]
	mov r0, #0x1e
	ldr r1, [r4, #0x30]
	lsl r0, r0, #6
	sub r0, r1, r0
	str r0, [r4, #0x30]
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x24
	bl ov95_02247968
	ldr r1, [r4, #0x28]
	ldr r0, _0224BE6C ; =0xFFFF5000
	cmp r1, r0
	bge _0224BE6A
	ldr r0, _0224BE70 ; =0x000005E6
	bl sub_02005748
	mov r0, #0
	ldr r1, [r4, #0x30]
	mvn r0, r0
	mul r0, r1
	str r0, [r4, #0x30]
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #0x10
	mov r3, #8
	bl ov95_0224BBB0
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BE2C:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	add r1, r1, r0
	mov r0, #0x13
	lsl r0, r0, #0xc
	str r1, [r4, #0x28]
	cmp r1, r0
	blt _0224BE3E
	str r0, [r4, #0x28]
_0224BE3E:
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x24
	bl ov95_02247968
	mov r0, #0x13
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _0224BE6A
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0224BE5A:
	ldr r0, [r4, #8]
	bl ov95_0224BC00
	cmp r0, #0
	beq _0224BE6A
	add r0, r5, #0
	bl ov95_0224BCE8
_0224BE6A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224BE6C: .word 0xFFFF5000
_0224BE70: .word 0x000005E6
	thumb_func_end ov95_0224BD5C

	.rodata


	.global Unk_ov95_0224C21C
Unk_ov95_0224C21C: ; 0x0224C21C
	.incbin "incbin/overlay95_rodata.bin", 0x3A8, 0x3B0 - 0x3A8

	.global Unk_ov95_0224C224
Unk_ov95_0224C224: ; 0x0224C224
	.incbin "incbin/overlay95_rodata.bin", 0x3B0, 0x3C0 - 0x3B0

	.global Unk_ov95_0224C234
Unk_ov95_0224C234: ; 0x0224C234
	.incbin "incbin/overlay95_rodata.bin", 0x3C0, 0x3D0 - 0x3C0

	.global Unk_ov95_0224C244
Unk_ov95_0224C244: ; 0x0224C244
	.incbin "incbin/overlay95_rodata.bin", 0x3D0, 0x3EC - 0x3D0

	.global Unk_ov95_0224C260
Unk_ov95_0224C260: ; 0x0224C260
	.incbin "incbin/overlay95_rodata.bin", 0x3EC, 0x408 - 0x3EC

	.global Unk_ov95_0224C27C
Unk_ov95_0224C27C: ; 0x0224C27C
	.incbin "incbin/overlay95_rodata.bin", 0x408, 0x28

