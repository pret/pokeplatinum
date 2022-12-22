	.include "macros/function.inc"
	.include "include/ov95_02247B6C.inc"

	

	.text


	thumb_func_start ov95_02247B6C
ov95_02247B6C: ; 0x02247B6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x84
	bl sub_02018144
	add r4, r0, #0
	beq _02247BC2
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0x54]
	mov r0, #0x3a
	bl sub_0200762C
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0x3a
	bl sub_02023790
	str r0, [r4, #0x68]
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0x3a
	bl sub_02023790
	str r0, [r4, #0x6c]
	mov r0, #0
	str r0, [r4, #0x78]
	str r0, [r4, #0x7c]
	mov r0, #0x93
	mov r1, #0x3a
	bl sub_02006C24
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
_02247BC2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_02247B6C

	thumb_func_start ov95_02247BC8
ov95_02247BC8: ; 0x02247BC8
	push {r4, lr}
	add r4, r0, #0
	beq _02247C30
	bl ov95_022483C4
	add r0, r4, #0
	bl ov95_02248490
	add r0, r4, #0
	bl ov95_02248340
	ldr r0, [r4, #0x68]
	bl sub_020237BC
	ldr r0, [r4, #0x6c]
	bl sub_020237BC
	ldr r0, [r4, #0x70]
	bl ov95_0224773C
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x54]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x54]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02006CA8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02247C24
	bl sub_02007DC8
_02247C24:
	ldr r0, [r4, #0xc]
	bl sub_02007B6C
	add r0, r4, #0
	bl sub_020181C4
_02247C30:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02247BC8

	thumb_func_start ov95_02247C34
ov95_02247C34: ; 0x02247C34
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #4
	bhs _02247C62
	lsl r3, r2, #2
	ldr r2, _02247C68 ; =0x0224BF04
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _02247C58
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_02247C58:
	add r0, r5, #0
	bl ov95_02247C6C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02247C62:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02247C68: .word 0x0224BF04
	thumb_func_end ov95_02247C34

	thumb_func_start ov95_02247C6C
ov95_02247C6C: ; 0x02247C6C
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
	ldr r0, [r4, #0xc]
	bl sub_02008A94
	ldr r0, [r4, #0xc]
	bl sub_02007768
	mov r2, #1
	str r2, [sp]
	mov r0, #0x12
	add r1, sp, #0
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r4, #0x70]
	bl ov95_02247770
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02247C6C

	thumb_func_start ov95_02247CB4
ov95_02247CB4: ; 0x02247CB4
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _02247EB0 ; =0x0224BF5C
	bl sub_0201FE94
	ldr r2, _02247EB4 ; =0x04000304
	ldr r0, _02247EB8 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _02247EBC ; =0x0224BF14
	bl sub_02018368
	ldr r0, [r4, #0x54]
	ldr r2, _02247EC0 ; =0x0224BF24
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x54]
	ldr r2, _02247EC4 ; =0x0224BF40
	mov r1, #2
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x54]
	ldr r2, _02247EC4 ; =0x0224BF40
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r2, _02247EC8 ; =0x04000008
	mov r0, #3
	ldrh r3, [r2]
	mov r1, #1
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl sub_020196C0
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r4, #0x54]
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
	ldr r0, [r4, #0x54]
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
	ldr r0, [r4, #0x54]
	add r1, #0x58
	mov r3, #2
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x58
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
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
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
	ldr r2, [r4, #0x54]
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
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0x5d
	mov r1, #0x16
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0x5d
	mov r1, #0x15
	mov r3, #6
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3a
	str r0, [sp, #4]
	mov r0, #0x5d
	mov r1, #0x17
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl sub_02019448
	add r0, r4, #0
	bl ov95_02248174
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	add r3, r1, #0
	bl ov95_022476F0
	str r0, [r4, #0x70]
	add r0, r4, #0
	bl ov95_02248240
	str r0, [r4, #0x10]
	mov r1, #0
	mov r0, #0x6a
	str r1, [sp]
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	ldr r0, _02247ECC ; =0x00073800
	mov r2, #0x5d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x70]
	mov r3, #0x1b
	bl ov95_022478B4
	ldr r2, _02247ED0 ; =0x0224BEFC
	str r0, [r4, #0x74]
	ldrh r3, [r2]
	add r0, sp, #0x14
	add r1, sp, #0x14
	strh r3, [r0]
	ldrh r3, [r2, #2]
	ldrh r2, [r2, #4]
	strh r3, [r0, #2]
	strh r2, [r0, #4]
	ldr r0, [r4, #0x74]
	bl ov95_02247990
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add r0, r4, #0
	bl ov95_0224829C
	ldr r0, _02247ED4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bl sub_02039734
	mov r0, #1
	mov r1, #0x39
	bl sub_020397C8
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_02247EB0: .word 0x0224BF5C
_02247EB4: .word 0x04000304
_02247EB8: .word 0xFFFF7FFF
_02247EBC: .word 0x0224BF14
_02247EC0: .word 0x0224BF24
_02247EC4: .word 0x0224BF40
_02247EC8: .word 0x04000008
_02247ECC: .word 0x00073800
_02247ED0: .word 0x0224BEFC
_02247ED4: .word 0x04000050
	thumb_func_end ov95_02247CB4

	thumb_func_start ov95_02247ED8
ov95_02247ED8: ; 0x02247ED8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _02247EFE
	bl sub_0200F2AC
	cmp r0, #0
	beq _02247EFE
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_02021D6C
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	pop {r4, pc}
_02247EFE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02247ED8

	thumb_func_start ov95_02247F04
ov95_02247F04: ; 0x02247F04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _02247F3E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02247F1E: ; jump table
	.short _02247F28 - _02247F1E - 2 ; case 0
	.short _02247F34 - _02247F1E - 2 ; case 1
	.short _02247FA8 - _02247F1E - 2 ; case 2
	.short _02248058 - _02247F1E - 2 ; case 3
	.short _02248078 - _02247F1E - 2 ; case 4
_02247F28:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02248088
_02247F34:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	bgt _02247F40
_02247F3E:
	b _02248088
_02247F40:
	ldr r0, [r4, #0]
	bl ov95_02247630
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov95_0224762C
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov95_02247680
	cmp r0, #1
	bne _02247F60
	mov r1, #0
	mov r6, #2
	b _02247F64
_02247F60:
	mov r1, #4
	mov r6, #3
_02247F64:
	ldr r0, [sp, #0xc]
	ldr r2, [r4, #0x68]
	bl sub_0200B1B8
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	add r0, r7, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x58
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0x6d
	mov r2, #2
	bl sub_0200E010
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A954
	mov r0, #0
	str r0, [r4, #8]
	str r6, [r5, #0]
	b _02248088
_02247FA8:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x3c
	ble _02248088
	ldr r0, [r4, #0]
	bl ov95_02247630
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov95_0224762C
	add r7, r0, #0
	ldr r2, [r4, #0x68]
	add r0, r6, #0
	mov r1, #1
	bl sub_0200B1B8
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	add r0, r7, #0
	bl sub_0200C388
	ldr r0, [r4, #0]
	bl ov95_02247634
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074570
	cmp r0, #0
	bne _02248024
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007B98
	ldr r0, [r4, #0]
	bl ov95_0224764C
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r1, sp, #0x10
	mov r3, #1
	bl sub_02078A4C
	ldr r0, [r4, #0]
	bl ov95_0224764C
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov95_02247654
	add r2, r0, #0
	add r1, sp, #0x10
	lsl r2, r2, #0x18
	ldrb r1, [r1]
	add r0, r6, #0
	lsr r2, r2, #0x18
	bl sub_0200590C
_02248024:
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x58
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201ACCC
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02248088
_02248058:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x3c
	ble _02248088
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02248088
_02248078:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x14
	ble _02248088
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02248088:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov95_02247F04

	thumb_func_start ov95_02248090
ov95_02248090: ; 0x02248090
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #4
	bhi _0224816A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022480AA: ; jump table
	.short _022480B4 - _022480AA - 2 ; case 0
	.short _022480CE - _022480AA - 2 ; case 1
	.short _022480F4 - _022480AA - 2 ; case 2
	.short _02248120 - _022480AA - 2 ; case 3
	.short _02248152 - _022480AA - 2 ; case 4
_022480B4:
	ldr r0, _02248170 ; =0x000006A8
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xc
	bl ov95_02248364
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224816A
_022480CE:
	bl ov95_022483B4
	cmp r0, #0
	beq _0224816A
	ldr r0, [r5, #0x10]
	bl sub_02007DC8
	ldr r0, [r5, #0x40]
	mov r1, #0
	bl sub_02021D6C
	ldr r0, [r5, #0x40]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224816A
_022480F4:
	ldr r0, [r5, #0x40]
	bl sub_02021FD0
	cmp r0, #0
	bne _0224816A
	ldr r0, [r5, #0x74]
	mov r1, #1
	bl ov95_022479A8
	mov r1, #0x10
	add r0, r5, #0
	mov r2, #0
	add r3, r1, #0
	bl ov95_02248364
	add r0, r5, #0
	bl ov95_02248420
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224816A
_02248120:
	bl ov95_0224847C
	cmp r0, #2
	bge _02248132
	add r0, r5, #0
	bl ov95_0224846C
	cmp r0, #1
	bne _0224816A
_02248132:
	mov r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0224816A
_02248152:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224816A
	add r0, r5, #0
	bl ov95_0224846C
	cmp r0, #0
	beq _0224816A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224816A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02248170: .word 0x000006A8
	thumb_func_end ov95_02248090

	thumb_func_start ov95_02248174
ov95_02248174: ; 0x02248174
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _0224821C ; =0x04000060
	ldr r2, _02248220 ; =0xFFFFCFFD
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
	ldr r1, _02248224 ; =0x0000CFFB
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
	ldr r1, _02248228 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _0224822C ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
	ldr r3, _02248230 ; =0x02100DEC
	mov r0, #1
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _02248234 ; =0x02100DF4
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0x80
	mov r1, #0
	mov r2, #1
	blx r3
	ldr r2, _02248238 ; =0x7FFF0000
	add r6, r0, #0
	and r2, r4
	lsl r1, r4, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl sub_02008A78
	ldr r2, _0224823C ; =0xFFFF0000
	lsl r1, r6, #0x10
	and r2, r6
	lsr r2, r2, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl sub_02008A84
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224821C: .word 0x04000060
_02248220: .word 0xFFFFCFFD
_02248224: .word 0x0000CFFB
_02248228: .word 0x04000540
_0224822C: .word 0xBFFF0000
_02248230: .word 0x02100DEC
_02248234: .word 0x02100DF4
_02248238: .word 0x7FFF0000
_0224823C: .word 0xFFFF0000
	thumb_func_end ov95_02248174

	thumb_func_start ov95_02248240
ov95_02248240: ; 0x02248240
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov95_02247634
	add r4, r0, #0
	add r0, sp, #0x10
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl sub_02075F0C
	ldr r0, [r5, #0]
	bl ov95_0224764C
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x80
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r1, #0x14
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
	add r0, #0x14
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0xc]
	add r3, #0x50
	add r1, sp, #0x10
	mov r2, #0x80
	bl sub_02007C34
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov95_02248240

	thumb_func_start ov95_0224829C
ov95_0224829C: ; 0x0224829C
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x44
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
	add r1, #0x44
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
	str r0, [r4, #0x3c]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x5a
	bl ov95_022475E4
	str r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021E80
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x70
	pop {r4, pc}
	thumb_func_end ov95_0224829C

	thumb_func_start ov95_02248340
ov95_02248340: ; 0x02248340
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02248348:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _02248352
	bl sub_02021BD4
_02248352:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02248348
	add r6, #0x44
	add r0, r6, #0
	bl ov95_022475A0
	pop {r4, r5, r6, pc}
	thumb_func_end ov95_02248340

	thumb_func_start ov95_02248364
ov95_02248364: ; 0x02248364
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x3a
	mov r1, #0x14
	str r2, [sp]
	add r7, r3, #0
	bl sub_02018144
	add r4, r0, #0
	beq _022483AA
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
	ldr r0, _022483AC ; =ov95_022483E4
	str r7, [r4, #0x10]
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA04
	str r0, [r5, #0x78]
	ldr r0, _022483B0 ; =0x04000050
	mov r1, #1
	add r2, r6, #0
	bl G2x_SetBlendBrightness_
_022483AA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022483AC: .word ov95_022483E4
_022483B0: .word 0x04000050
	thumb_func_end ov95_02248364

	thumb_func_start ov95_022483B4
ov95_022483B4: ; 0x022483B4
	ldr r0, [r0, #0x78]
	cmp r0, #0
	bne _022483BE
	mov r0, #1
	bx lr
_022483BE:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_022483B4

	thumb_func_start ov95_022483C4
ov95_022483C4: ; 0x022483C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _022483E0
	bl sub_0201CED0
	bl ov95_022476C8
	ldr r0, [r4, #0x78]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x78]
_022483E0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_022483C4

	thumb_func_start ov95_022483E4
ov95_022483E4: ; 0x022483E4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	ble _02248406
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r2, r1, r0
	str r2, [r4, #4]
	ldr r0, _0224841C ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl G2x_SetBlendBrightness_
	pop {r4, pc}
_02248406:
	ldr r2, [r4, #8]
	ldr r0, _0224841C ; =0x04000050
	mov r1, #1
	asr r2, r2, #0xc
	bl G2x_SetBlendBrightness_
	ldr r0, [r4, #0]
	bl ov95_022483C4
	pop {r4, pc}
	nop
_0224841C: .word 0x04000050
	thumb_func_end ov95_022483E4

	thumb_func_start ov95_02248420
ov95_02248420: ; 0x02248420
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	beq _02248460
	str r5, [r4, #0]
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	str r0, [r4, #4]
	add r1, #8
	bl ov95_02247958
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x14
	bl ov95_02247978
	ldr r0, _02248464 ; =0x00002F60
	mov r2, #0
	str r0, [r4, #0x1c]
	str r2, [r4, #0x20]
	strh r2, [r4, #0x2c]
	str r2, [r4, #0x24]
	ldr r0, _02248468 ; =ov95_022484B0
	add r1, r4, #0
	str r2, [r4, #0x28]
	bl sub_0200D9E8
	str r0, [r5, #0x7c]
_02248460:
	pop {r3, r4, r5, pc}
	nop
_02248464: .word 0x00002F60
_02248468: .word ov95_022484B0
	thumb_func_end ov95_02248420

	thumb_func_start ov95_0224846C
ov95_0224846C: ; 0x0224846C
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	bne _02248476
	mov r0, #1
	bx lr
_02248476:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_0224846C

	thumb_func_start ov95_0224847C
ov95_0224847C: ; 0x0224847C
	push {r3, lr}
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	beq _0224848C
	bl sub_0201CED0
	ldr r0, [r0, #0x20]
	pop {r3, pc}
_0224848C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov95_0224847C

	thumb_func_start ov95_02248490
ov95_02248490: ; 0x02248490
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _022484AC
	bl sub_0201CED0
	bl sub_020181C4
	ldr r0, [r4, #0x7c]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x7c]
_022484AC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_02248490

	thumb_func_start ov95_022484B0
ov95_022484B0: ; 0x022484B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02248524
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	blt _022484D2
	mov r0, #0x1e
	lsl r0, r0, #6
	sub r0, r1, r0
	str r0, [r4, #0x1c]
	b _02248524
_022484D2:
	mov r0, #0x1e
	lsl r0, r0, #6
	sub r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0xc]
	ldr r0, _02248588 ; =0xFFFFC000
	cmp r1, r0
	bgt _02248524
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	mov r0, #0x2c
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	neg r1, r0
	mov r0, #0xfa
	lsl r0, r0, #4
	str r1, [r4, #0x1c]
	cmp r1, r0
	bge _02248500
	mov r0, #1
	str r0, [r4, #0x24]
_02248500:
	ldr r0, _0224858C ; =0x000005E6
	bl sub_02005748
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	cmp r0, #1
	beq _02248516
	cmp r0, #3
	beq _0224851C
	b _02248524
_02248516:
	mov r0, #0xb0
	strh r0, [r4, #0x2c]
	b _02248524
_0224851C:
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	add r0, #0x50
	strh r0, [r4, #0x2c]
_02248524:
	mov r0, #0x14
	mov r2, #0x2c
	ldrsh r3, [r4, r0]
	ldrsh r0, [r4, r2]
	add r1, r4, #0
	add r1, #0x14
	add r0, r3, r0
	strh r0, [r4, #0x14]
	mov r0, #0x18
	ldrsh r3, [r4, r0]
	ldrsh r0, [r4, r2]
	sub r0, r3, r0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	bl ov95_02247990
	mov r2, #0x2c
	ldrsh r3, [r4, r2]
	ldr r5, [r4, #8]
	add r1, r4, #0
	lsl r0, r3, #2
	add r0, r3, r0
	add r0, r5, r0
	str r0, [r4, #8]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r1, #8
	lsl r0, r2, #2
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	bl ov95_02247968
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _02248586
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	sub r0, #0xe
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	cmp r0, #0x1e
	ble _02248586
	ldr r0, [r4, #0]
	bl ov95_02248490
_02248586:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02248588: .word 0xFFFFC000
_0224858C: .word 0x000005E6
	thumb_func_end ov95_022484B0

	.rodata


	.global Unk_ov95_0224BEFC
Unk_ov95_0224BEFC: ; 0x0224BEFC
	.incbin "incbin/overlay95_rodata.bin", 0x88, 0x90 - 0x88

	.global Unk_ov95_0224BF04
Unk_ov95_0224BF04: ; 0x0224BF04
	.incbin "incbin/overlay95_rodata.bin", 0x90, 0xA0 - 0x90

	.global Unk_ov95_0224BF14
Unk_ov95_0224BF14: ; 0x0224BF14
	.incbin "incbin/overlay95_rodata.bin", 0xA0, 0xB0 - 0xA0

	.global Unk_ov95_0224BF24
Unk_ov95_0224BF24: ; 0x0224BF24
	.incbin "incbin/overlay95_rodata.bin", 0xB0, 0xCC - 0xB0

	.global Unk_ov95_0224BF40
Unk_ov95_0224BF40: ; 0x0224BF40
	.incbin "incbin/overlay95_rodata.bin", 0xCC, 0xE8 - 0xCC

	.global Unk_ov95_0224BF5C
Unk_ov95_0224BF5C: ; 0x0224BF5C
	.incbin "incbin/overlay95_rodata.bin", 0xE8, 0x28

