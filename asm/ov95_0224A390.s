	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov95_0224A390
ov95_0224A390: ; 0x0224A390
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0xb0
	bl sub_02018144
	add r4, r0, #0
	beq _0224A3C4
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r0, #0x34
	bl ov95_0224A848
	ldr r0, _0224A3C8 ; =ov95_0224AB50
	add r1, r4, #0
	bl sub_02017798
_0224A3C4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224A3C8: .word ov95_0224AB50
	thumb_func_end ov95_0224A390

	thumb_func_start ov95_0224A3CC
ov95_0224A3CC: ; 0x0224A3CC
	push {r4, lr}
	add r4, r0, #0
	beq _0224A3FA
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov95_0224A678
	add r0, r4, #0
	bl ov95_0224A7A0
	add r0, r4, #0
	bl ov95_0224A830
	add r0, r4, #0
	add r0, #0x34
	bl ov95_0224A850
	add r0, r4, #0
	bl sub_020181C4
_0224A3FA:
	pop {r4, pc}
	thumb_func_end ov95_0224A3CC

	thumb_func_start ov95_0224A3FC
ov95_0224A3FC: ; 0x0224A3FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #2
	bhs _0224A424
	lsl r3, r2, #2
	ldr r2, _0224A428 ; =0x0224C11C
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _0224A420
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_0224A420:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224A424:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224A428: .word 0x0224C11C
	thumb_func_end ov95_0224A3FC

	thumb_func_start ov95_0224A42C
ov95_0224A42C: ; 0x0224A42C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov95_0224A518
	add r0, r4, #0
	bl ov95_0224A690
	add r0, r4, #0
	bl ov95_0224A7B0
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	ldr r3, _0224A460 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0224A460: .word 0x00007FFF
	thumb_func_end ov95_0224A42C

	thumb_func_start ov95_0224A464
ov95_0224A464: ; 0x0224A464
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #3
	bhi _0224A50A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A47E: ; jump table
	.short _0224A486 - _0224A47E - 2 ; case 0
	.short _0224A4A6 - _0224A47E - 2 ; case 1
	.short _0224A4D0 - _0224A47E - 2 ; case 2
	.short _0224A4FC - _0224A47E - 2 ; case 3
_0224A486:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224A50A
	ldr r0, [r5, #0x20]
	mov r1, #3
	bl sub_02021D6C
	ldr r0, [r5, #0x20]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A50A
_0224A4A6:
	ldr r0, [r5, #0x20]
	bl sub_02021FD0
	cmp r0, #0
	bne _0224A50A
	ldr r0, _0224A510 ; =0x000006AB
	bl sub_02005748
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x34
	bl ov95_0224A864
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl ov95_022479A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A50A
_0224A4D0:
	add r5, #0x34
	add r0, r5, #0
	bl ov95_0224A924
	cmp r0, #0
	beq _0224A50A
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _0224A514 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224A50A
_0224A4FC:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224A50A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224A50A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224A510: .word 0x000006AB
_0224A514: .word 0x00007FFF
	thumb_func_end ov95_0224A464

	thumb_func_start ov95_0224A518
ov95_0224A518: ; 0x0224A518
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _0224A668 ; =0x0224C160
	bl sub_0201FE94
	ldr r2, _0224A66C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0224A670 ; =0x0224C124
	bl sub_02018368
	ldr r0, [r4, #0x24]
	ldr r2, _0224A674 ; =0x0224C144
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x24]
	ldr r2, _0224A674 ; =0x0224C144
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0]
	bl ov95_02247644
	cmp r0, #3
	bhi _0224A56A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A562: ; jump table
	.short _0224A56A - _0224A562 - 2 ; case 0
	.short _0224A576 - _0224A562 - 2 ; case 1
	.short _0224A582 - _0224A562 - 2 ; case 2
	.short _0224A58E - _0224A562 - 2 ; case 3
_0224A56A:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0
	b _0224A598
_0224A576:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x20
	b _0224A598
_0224A582:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x40
	b _0224A598
_0224A58E:
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r7, #0x19
	mov r6, #0x1a
	mov r5, #0
_0224A598:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	add r1, r7, #0
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	add r1, r7, #0
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x24]
	mov r0, #0x5d
	mov r3, #7
	bl sub_02006E60
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	add r1, r6, #0
	add r3, r5, #0
	bl sub_02006E9C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0x5d
	add r1, r6, #0
	mov r2, #4
	add r3, r5, #0
	bl sub_02006E9C
	mov r1, #3
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x24]
	mov r1, #7
	add r3, #0xfd
	bl sub_02019184
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	bl sub_02039734
	mov r0, #1
	mov r1, #0x39
	bl sub_020397C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224A668: .word 0x0224C160
_0224A66C: .word 0x04000304
_0224A670: .word 0x0224C124
_0224A674: .word 0x0224C144
	thumb_func_end ov95_0224A518

	thumb_func_start ov95_0224A678
ov95_0224A678: ; 0x0224A678
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A678

	thumb_func_start ov95_0224A690
ov95_0224A690: ; 0x0224A690
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl sub_020B28CC
	bl sub_020BFB4C
	ldr r0, _0224A770 ; =0x04000060
	ldr r1, _0224A774 ; =0xFFFFCFFD
	ldrh r2, [r0]
	and r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	add r2, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0224A778 ; =0x0000CFFB
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #8
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldr r0, _0224A77C ; =0x0224C134
	bl sub_020BFD2C
	mov r1, #0
	ldr r0, _0224A780 ; =0x000043FF
	ldr r2, _0224A784 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl sub_020BFD58
	ldr r1, _0224A788 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _0224A78C ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl sub_020A5A94
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl sub_020A5D88
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _0224A790 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	str r0, [r4, #0x28]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r2, #0x5d
	mov r3, #0x1b
	bl ov95_022478B4
	ldr r1, _0224A794 ; =0x000018E3
	str r0, [r4, #0x2c]
	add r0, sp, #0x10
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x10
	bl ov95_02247AB0
	ldr r1, _0224A798 ; =0x00001150
	add r0, sp, #0x10
	strh r1, [r0]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x10
	bl ov95_02247AC0
	ldr r0, [r4, #0x28]
	ldr r1, _0224A79C ; =0x000007D2
	bl ov95_02247AE0
	ldr r0, [r4, #0x28]
	add r1, sp, #0x18
	bl ov95_02247A90
	add sp, #0x24
	pop {r3, r4, pc}
	; .align 2, 0
_0224A770: .word 0x04000060
_0224A774: .word 0xFFFFCFFD
_0224A778: .word 0x0000CFFB
_0224A77C: .word 0x0224C134
_0224A780: .word 0x000043FF
_0224A784: .word 0x00007FFF
_0224A788: .word 0x04000540
_0224A78C: .word 0xBFFF0000
_0224A790: .word 0x04000008
_0224A794: .word 0x000018E3
_0224A798: .word 0x00001150
_0224A79C: .word 0x000007D2
	thumb_func_end ov95_0224A690

	thumb_func_start ov95_0224A7A0
ov95_0224A7A0: ; 0x0224A7A0
	push {r3, lr}
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _0224A7AC
	bl ov95_0224773C
_0224A7AC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A7A0

	thumb_func_start ov95_0224A7B0
ov95_0224A7B0: ; 0x0224A7B0
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x10
	mov r1, #0x5d
	mov r2, #7
	mov r3, #8
	bl ov95_02247568
	add r0, sp, #0x5c
	bl sub_020A81D0
	add r0, sp, #0x38
	bl sub_020A818C
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
	mov r0, #1
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x14
	add r1, #0x10
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
	mov r3, #0x60
	bl ov95_022475E4
	mov r1, #0
	str r0, [r4, #0x20]
	bl sub_02021CAC
	add sp, #0x70
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A7B0

	thumb_func_start ov95_0224A830
ov95_0224A830: ; 0x0224A830
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224A83E
	bl sub_02021BD4
_0224A83E:
	add r4, #0x10
	add r0, r4, #0
	bl ov95_022475A0
	pop {r4, pc}
	thumb_func_end ov95_0224A830

	thumb_func_start ov95_0224A848
ov95_0224A848: ; 0x0224A848
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224A848

	thumb_func_start ov95_0224A850
ov95_0224A850: ; 0x0224A850
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224A862
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
_0224A862:
	pop {r4, pc}
	thumb_func_end ov95_0224A850

	thumb_func_start ov95_0224A864
ov95_0224A864: ; 0x0224A864
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	str r0, [r4, #0]
	ldr r1, [r0, #0x2c]
	ldr r2, _0224A904 ; =0xFFFFD870
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x28]
	ldr r1, _0224A908 ; =0x003D6C00
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r1, _0224A90C ; =0xFFE44000
	str r1, [r4, #0x18]
	add r1, r4, #0
	add r1, #0x78
	strh r2, [r1]
	add r1, r4, #0
	ldr r2, _0224A910 ; =0xFFFFF550
	add r1, #0x7a
	strh r2, [r1]
	ldr r1, _0224A914 ; =0xFFFEF2C6
	str r1, [r4, #0x3c]
	ldr r1, _0224A918 ; =0x0000936D
	str r1, [r4, #0x40]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	mov r1, #2
	str r0, [r4, #0x74]
	lsl r1, r1, #0xc
	strh r1, [r4, #0x34]
	ldr r1, _0224A91C ; =0xFFFFE000
	strh r1, [r4, #0x36]
	strh r0, [r4, #0x38]
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov95_02247990
	mov r3, #2
	lsl r3, r3, #8
	mov r1, #0x4a
	mov r2, #0x63
	str r3, [r4, #0x5c]
	lsl r0, r3, #2
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x68]
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	lsl r1, r1, #0xa
	lsl r2, r2, #0xa
	lsl r3, r3, #3
	bl ov95_0224A934
	add r0, r4, #0
	bl ov95_0224A978
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov95_02247978
	ldr r0, _0224A920 ; =ov95_0224AA70
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224A904: .word 0xFFFFD870
_0224A908: .word 0x003D6C00
_0224A90C: .word 0xFFE44000
_0224A910: .word 0xFFFFF550
_0224A914: .word 0xFFFEF2C6
_0224A918: .word 0x0000936D
_0224A91C: .word 0xFFFFE000
_0224A920: .word ov95_0224AA70
	thumb_func_end ov95_0224A864

	thumb_func_start ov95_0224A924
ov95_0224A924: ; 0x0224A924
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224A92E
	mov r0, #1
	bx lr
_0224A92E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224A924

	thumb_func_start ov95_0224A934
ov95_0224A934: ; 0x0224A934
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp]
	cmp r0, #0
	beq _0224A974
	ldr r0, [r5, #0x44]
	ldr r1, [sp]
	sub r0, r4, r0
	bl sub_020E1F6C
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	ldr r1, [sp]
	sub r0, r6, r0
	bl sub_020E1F6C
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x5c]
	ldr r1, [sp]
	sub r0, r7, r0
	bl sub_020E1F6C
	str r0, [r5, #0x60]
	str r4, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x64]
	str r0, [r5, #0x68]
_0224A974:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_0224A934

	thumb_func_start ov95_0224A978
ov95_0224A978: ; 0x0224A978
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224AA6C ; =0x0224C2C0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224AA5A
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	mov r1, #0xb6
	bl sub_020E1F6C
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r4, r0
	blt _0224A99C
	sub r4, r4, r0
_0224A99C:
	mov r0, #0x78
	ldrsh r1, [r5, r0]
	mov r0, #0x7a
	ldrsh r0, [r5, r0]
	sub r1, r1, r0
	add r0, r5, #0
	add r0, #0x78
	strh r1, [r0]
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _0224A9E4
	sub r0, r0, #1
	str r0, [r5, #0x68]
	beq _0224A9D0
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	add r0, r1, r0
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	add r0, r1, r0
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x5c]
	ldr r0, [r5, #0x60]
	add r0, r1, r0
	b _0224A9DA
_0224A9D0:
	ldr r0, [r5, #0x54]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x58]
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x64]
_0224A9DA:
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x5c]
	bl ov95_022479D4
_0224A9E4:
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x44]
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x1c]
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x48]
	lsr r0, r0, #0x10
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x20]
	add r1, r5, #0
	str r3, [r5, #0x24]
	mov r0, #0x34
	ldrsh r2, [r5, r0]
	mov r0, #3
	lsl r0, r0, #8
	sub r0, r2, r0
	strh r0, [r5, #0x34]
	ldr r0, [r5, #0xc]
	add r1, #0x34
	bl ov95_02247990
	add r0, r5, #0
	add r1, r5, #0
	add r5, #0x28
	add r0, #0x1c
	add r1, #0x10
	add r2, r5, #0
	bl sub_020BD17C
	pop {r4, r5, r6, pc}
_0224AA5A:
	add r2, r5, #0
	add r2, #0x10
	ldmia r2!, {r0, r1}
	add r5, #0x28
	stmia r5!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	nop
_0224AA6C: .word 0x0224C2C0
	thumb_func_end ov95_0224A978

	thumb_func_start ov95_0224AA70
ov95_0224AA70: ; 0x0224AA70
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x74]
	cmp r1, #0x46
	bge _0224AA7E
	add r1, r1, #1
	str r1, [r4, #0x74]
_0224AA7E:
	ldr r1, [r4, #0x6c]
	cmp r1, #3
	bhi _0224AB44
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224AA90: ; jump table
	.short _0224AA98 - _0224AA90 - 2 ; case 0
	.short _0224AABE - _0224AA90 - 2 ; case 1
	.short _0224AAF8 - _0224AA90 - 2 ; case 2
	.short _0224AB32 - _0224AA90 - 2 ; case 3
_0224AA98:
	add r0, r4, #0
	bl ov95_0224A978
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0x74]
	add r0, r0, #1
	str r0, [r4, #0x74]
	cmp r0, #0xc
	blt _0224AB44
	mov r0, #0
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
_0224AABE:
	ldr r0, [r4, #0xc]
	bl ov95_022479DC
	cmp r0, #0
	bne _0224AAD6
	ldr r0, [r4, #0]
	bl ov95_0224AB48
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
_0224AAD6:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_0224A978
	ldr r0, [r4, #0xc]
	add r4, #0x28
	add r1, r4, #0
	bl ov95_02247968
	pop {r4, pc}
_0224AAF8:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_0224A978
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0x74]
	cmp r0, #0x46
	blt _0224AB44
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov95_022479A8
	mov r0, #0
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x6c]
	add r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r4, pc}
_0224AB32:
	ldr r1, [r4, #0x70]
	add r1, r1, #1
	str r1, [r4, #0x70]
	cmp r1, #8
	ble _0224AB44
	mov r1, #0
	str r1, [r4, #4]
	bl sub_0200DA58
_0224AB44:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_0224AA70

	thumb_func_start ov95_0224AB48
ov95_0224AB48: ; 0x0224AB48
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224AB48

	thumb_func_start ov95_0224AB50
ov95_0224AB50: ; 0x0224AB50
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0224AB6E
	bl sub_020BFAB8
	ldr r0, [r4, #0x28]
	bl ov95_02247770
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_0224AB6E:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0224ABB0
	ldr r1, _0224ABB4 ; =0x0000EEB0
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	add r3, #0xfd
	bl sub_02019184
	ldr r0, [r4, #0x24]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl ov95_02247AC0
	ldr r2, _0224ABB8 ; =0x04000304
	ldr r0, _0224ABBC ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r0, #0
	str r0, [r4, #0xc]
_0224ABB0:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0224ABB4: .word 0x0000EEB0
_0224ABB8: .word 0x04000304
_0224ABBC: .word 0xFFFF7FFF
	thumb_func_end ov95_0224AB50

	.rodata


	.global Unk_ov95_0224C11C
Unk_ov95_0224C11C: ; 0x0224C11C
	.incbin "incbin/overlay95_rodata.bin", 0x2A8, 0x2B0 - 0x2A8

	.global Unk_ov95_0224C124
Unk_ov95_0224C124: ; 0x0224C124
	.incbin "incbin/overlay95_rodata.bin", 0x2B0, 0x2C0 - 0x2B0

	.global Unk_ov95_0224C134
Unk_ov95_0224C134: ; 0x0224C134
	.incbin "incbin/overlay95_rodata.bin", 0x2C0, 0x2D0 - 0x2C0

	.global Unk_ov95_0224C144
Unk_ov95_0224C144: ; 0x0224C144
	.incbin "incbin/overlay95_rodata.bin", 0x2D0, 0x2EC - 0x2D0

	.global Unk_ov95_0224C160
Unk_ov95_0224C160: ; 0x0224C160
	.incbin "incbin/overlay95_rodata.bin", 0x2EC, 0x28


	.data


	.global Unk_ov95_0224C2C0
Unk_ov95_0224C2C0: ; 0x0224C2C0
	.incbin "incbin/overlay95_data.bin", 0x0, 0x4

