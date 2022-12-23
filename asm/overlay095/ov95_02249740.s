	.include "macros/function.inc"
	.include "overlay095/ov95_02249740.inc"

	

	.text


	thumb_func_start ov95_02249740
ov95_02249740: ; 0x02249740
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x3a
	mov r1, #0xa4
	bl sub_02018144
	add r4, r0, #0
	beq _0224976A
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov95_02247628
	str r0, [r4, #0x24]
	mov r0, #0
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x34
	bl ov95_02249C28
_0224976A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov95_02249740

	thumb_func_start ov95_02249770
ov95_02249770: ; 0x02249770
	push {r4, lr}
	add r4, r0, #0
	beq _0224979E
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov95_02249A68
	add r0, r4, #0
	bl ov95_02249B80
	add r0, r4, #0
	bl ov95_02249C10
	add r0, r4, #0
	add r0, #0x34
	bl ov95_02249C30
	add r0, r4, #0
	bl sub_020181C4
_0224979E:
	pop {r4, pc}
	thumb_func_end ov95_02249770

	thumb_func_start ov95_022497A0
ov95_022497A0: ; 0x022497A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0]
	add r5, r0, #0
	cmp r2, #2
	bhs _022497CE
	lsl r3, r2, #2
	ldr r2, _022497D4 ; =0x0224C01C
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _022497C4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #4]
_022497C4:
	add r0, r5, #0
	bl ov95_022497D8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022497CE:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022497D4: .word 0x0224C01C
	thumb_func_end ov95_022497A0

	thumb_func_start ov95_022497D8
ov95_022497D8: ; 0x022497D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _022497F4
	bl G3X_Reset
	ldr r0, [r4, #0x28]
	bl ov95_02247770
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
_022497F4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov95_022497D8

	thumb_func_start ov95_022497F8
ov95_022497F8: ; 0x022497F8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov95_02249910
	add r0, r4, #0
	bl ov95_02249A80
	add r0, r4, #0
	bl ov95_02249B90
	mov r2, #0
	ldr r0, _02249838 ; =ov95_02249F38
	add r1, r4, #0
	str r2, [r4, #0xc]
	bl sub_0200DA3C
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	ldr r3, _0224983C ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02249838: .word ov95_02249F38
_0224983C: .word 0x00007FFF
	thumb_func_end ov95_022497F8

	thumb_func_start ov95_02249840
ov95_02249840: ; 0x02249840
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _022498FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224985A: ; jump table
	.short _02249864 - _0224985A - 2 ; case 0
	.short _02249870 - _0224985A - 2 ; case 1
	.short _0224989A - _0224985A - 2 ; case 2
	.short _022498C4 - _0224985A - 2 ; case 3
	.short _022498EE - _0224985A - 2 ; case 4
_02249864:
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022498FC
_02249870:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0xa
	ble _022498FC
	ldr r0, _02249904 ; =0x000006AC
	bl sub_02005748
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x34
	bl ov95_02249C44
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl ov95_022479A8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022498FC
_0224989A:
	add r0, r5, #0
	add r0, #0x34
	bl ov95_02249CF0
	cmp r0, #0
	beq _022498FC
	ldr r0, _02249908 ; =0x000006AD
	bl sub_02005748
	ldr r0, [r5, #0x20]
	mov r1, #3
	bl sub_02021D6C
	ldr r0, [r5, #0x20]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022498FC
_022498C4:
	ldr r0, [r5, #0x20]
	bl sub_02021FD0
	cmp r0, #0
	bne _022498FC
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _0224990C ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022498FC
_022498EE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _022498FC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_022498FC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02249904: .word 0x000006AC
_02249908: .word 0x000006AD
_0224990C: .word 0x00007FFF
	thumb_func_end ov95_02249840

	thumb_func_start ov95_02249910
ov95_02249910: ; 0x02249910
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _02249A54 ; =0x0224C060
	bl sub_0201FE94
	ldr r2, _02249A58 ; =0x04000304
	ldr r0, _02249A5C ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _02249A60 ; =0x0224C024
	bl sub_02018368
	ldr r0, [r4, #0x24]
	ldr r2, _02249A64 ; =0x0224C044
	mov r1, #3
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x24]
	ldr r2, _02249A64 ; =0x0224C044
	mov r1, #7
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0]
	bl ov95_02247644
	cmp r0, #3
	bhi _02249962
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224995A: ; jump table
	.short _02249962 - _0224995A - 2 ; case 0
	.short _0224996E - _0224995A - 2 ; case 1
	.short _0224997A - _0224995A - 2 ; case 2
	.short _02249986 - _0224995A - 2 ; case 3
_02249962:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0
	b _02249990
_0224996E:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x20
	b _02249990
_0224997A:
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r7, #0x10
	mov r6, #0x11
	mov r5, #0x40
	b _02249990
_02249986:
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r7, #0x19
	mov r6, #0x1a
	mov r5, #0
_02249990:
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
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02249A54: .word 0x0224C060
_02249A58: .word 0x04000304
_02249A5C: .word 0xFFFF7FFF
_02249A60: .word 0x0224C024
_02249A64: .word 0x0224C044
	thumb_func_end ov95_02249910

	thumb_func_start ov95_02249A68
ov95_02249A68: ; 0x02249A68
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
	thumb_func_end ov95_02249A68

	thumb_func_start ov95_02249A80
ov95_02249A80: ; 0x02249A80
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _02249B54 ; =0x04000060
	ldr r1, _02249B58 ; =0xFFFFCFFD
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
	ldr r2, _02249B5C ; =0x0000CFFB
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
	ldr r0, _02249B60 ; =0x0224C034
	bl G3X_SetEdgeColorTable
	mov r1, #0
	ldr r0, _02249B64 ; =0x000043FF
	ldr r2, _02249B68 ; =0x00007FFF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r1, _02249B6C ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _02249B70 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _02249B74 ; =0x04000008
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
	ldr r1, _02249B78 ; =0x000018E3
	str r0, [r4, #0x2c]
	add r0, sp, #0x10
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x10
	bl ov95_02247AB0
	ldr r0, [r4, #0x28]
	ldr r1, _02249B7C ; =0x000007D2
	bl ov95_02247AE0
	ldr r0, [r4, #0x28]
	add r1, sp, #0x18
	bl ov95_02247A90
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_02249B54: .word 0x04000060
_02249B58: .word 0xFFFFCFFD
_02249B5C: .word 0x0000CFFB
_02249B60: .word 0x0224C034
_02249B64: .word 0x000043FF
_02249B68: .word 0x00007FFF
_02249B6C: .word 0x04000540
_02249B70: .word 0xBFFF0000
_02249B74: .word 0x04000008
_02249B78: .word 0x000018E3
_02249B7C: .word 0x000007D2
	thumb_func_end ov95_02249A80

	thumb_func_start ov95_02249B80
ov95_02249B80: ; 0x02249B80
	push {r3, lr}
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02249B8C
	bl ov95_0224773C
_02249B8C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov95_02249B80

	thumb_func_start ov95_02249B90
ov95_02249B90: ; 0x02249B90
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x10
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
	mov r0, #0
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
	thumb_func_end ov95_02249B90

	thumb_func_start ov95_02249C10
ov95_02249C10: ; 0x02249C10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02249C1E
	bl sub_02021BD4
_02249C1E:
	add r4, #0x10
	add r0, r4, #0
	bl ov95_022475A0
	pop {r4, pc}
	thumb_func_end ov95_02249C10

	thumb_func_start ov95_02249C28
ov95_02249C28: ; 0x02249C28
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02249C28

	thumb_func_start ov95_02249C30
ov95_02249C30: ; 0x02249C30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02249C42
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #4]
_02249C42:
	pop {r4, pc}
	thumb_func_end ov95_02249C30

	thumb_func_start ov95_02249C44
ov95_02249C44: ; 0x02249C44
	push {r4, lr}
	add r4, r1, #0
	str r0, [r4, #0]
	ldr r1, [r0, #0x2c]
	ldr r2, _02249CD4 ; =0xFFFFD870
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x28]
	ldr r1, _02249CD8 ; =0xFFF50E00
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	mov r1, #0xe2
	lsl r1, r1, #0xc
	str r1, [r4, #0x18]
	add r1, r4, #0
	add r1, #0x6c
	strh r2, [r1]
	add r1, r4, #0
	ldr r2, _02249CDC ; =0xFFFFF550
	add r1, #0x6e
	strh r2, [r1]
	ldr r1, _02249CE0 ; =0x000134C4
	str r1, [r4, #0x3c]
	ldr r1, _02249CE4 ; =0xFFFF4D56
	str r1, [r4, #0x40]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	mov r1, #2
	str r0, [r4, #0x68]
	lsl r1, r1, #0xc
	strh r1, [r4, #0x34]
	ldr r1, _02249CE8 ; =0xFFFFE000
	strh r1, [r4, #0x36]
	strh r0, [r4, #0x38]
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov95_02247990
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x54]
	mov r0, #0x4a
	lsl r0, r0, #0xa
	str r0, [r4, #0x44]
	mov r0, #0x63
	lsl r0, r0, #0xa
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x5c]
	add r0, r4, #0
	bl ov95_02249D38
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov95_02247978
	ldr r0, _02249CEC ; =ov95_02249E04
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02249CD4: .word 0xFFFFD870
_02249CD8: .word 0xFFF50E00
_02249CDC: .word 0xFFFFF550
_02249CE0: .word 0x000134C4
_02249CE4: .word 0xFFFF4D56
_02249CE8: .word 0xFFFFE000
_02249CEC: .word ov95_02249E04
	thumb_func_end ov95_02249C44

	thumb_func_start ov95_02249CF0
ov95_02249CF0: ; 0x02249CF0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02249CFA
	mov r0, #1
	bx lr
_02249CFA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02249CF0

	thumb_func_start ov95_02249D00
ov95_02249D00: ; 0x02249D00
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	beq _02249D36
	ldr r0, [r5, #0x44]
	sub r0, r1, r0
	add r1, r4, #0
	bl _s32_div_f
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	sub r0, r6, r0
	bl _s32_div_f
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x54]
	add r1, r4, #0
	sub r0, r7, r0
	bl _s32_div_f
	str r0, [r5, #0x58]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x5c]
_02249D36:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov95_02249D00

	thumb_func_start ov95_02249D38
ov95_02249D38: ; 0x02249D38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x6c
	ldrh r0, [r0]
	mov r1, #0xb6
	bl _s32_div_f
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r4, r0
	blt _02249D52
	sub r4, r4, r0
_02249D52:
	mov r0, #0x6c
	ldrsh r1, [r5, r0]
	mov r0, #0x6e
	ldrsh r0, [r5, r0]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x6c
	strh r1, [r0]
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _02249D8C
	ldr r1, [r5, #0x44]
	ldr r0, [r5, #0x4c]
	add r0, r1, r0
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x48]
	ldr r0, [r5, #0x50]
	add r0, r1, r0
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x58]
	add r1, r1, r0
	str r1, [r5, #0x54]
	ldr r0, [r5, #0xc]
	bl ov95_022479D4
	ldr r0, [r5, #0x5c]
	sub r0, r0, #1
	str r0, [r5, #0x5c]
_02249D8C:
	lsl r0, r4, #0x10
	ldr r6, [r5, #0x44]
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ull_mul
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
	bl _ull_mul
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
	add r0, r2, r0
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
	bl VEC_Add
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov95_02249D38

	thumb_func_start ov95_02249E04
ov95_02249E04: ; 0x02249E04
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0x68]
	cmp r1, #0x3c
	bge _02249E14
	add r1, r1, #1
	str r1, [r4, #0x68]
_02249E14:
	ldr r1, [r4, #0x60]
	cmp r1, #4
	bls _02249E1C
	b _02249F2C
_02249E1C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02249E28: ; jump table
	.short _02249E32 - _02249E28 - 2 ; case 0
	.short _02249E66 - _02249E28 - 2 ; case 1
	.short _02249EA4 - _02249E28 - 2 ; case 2
	.short _02249EEA - _02249E28 - 2 ; case 3
	.short _02249F1A - _02249E28 - 2 ; case 4
_02249E32:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_02249D38
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0xc]
	bl ov95_022479DC
	cmp r0, #0
	beq _02249F2C
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249E66:
	ldr r0, [r4, #0xc]
	bl ov95_022479DC
	cmp r0, #0
	bne _02249E80
	ldr r0, [r4, #0]
	bl ov95_02249F30
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249E80:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_02249D38
	ldr r0, [r4, #0xc]
	add r4, #0x28
	add r1, r4, #0
	bl ov95_02247968
	add sp, #4
	pop {r3, r4, pc}
_02249EA4:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov95_02249D38
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0x68]
	cmp r0, #0x3c
	blt _02249F2C
	mov r1, #2
	lsl r1, r1, #0xa
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	lsr r3, r1, #2
	bl ov95_02249D00
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249EEA:
	add r0, r4, #0
	bl ov95_02249D38
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov95_02247968
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	cmp r0, #0xc
	blt _02249F2C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov95_022479A8
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249F1A:
	ldr r1, [r4, #0x64]
	add r1, r1, #1
	str r1, [r4, #0x64]
	cmp r1, #8
	ble _02249F2C
	mov r1, #0
	str r1, [r4, #4]
	bl sub_0200DA58
_02249F2C:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov95_02249E04

	thumb_func_start ov95_02249F30
ov95_02249F30: ; 0x02249F30
	mov r1, #1
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov95_02249F30

	thumb_func_start ov95_02249F38
ov95_02249F38: ; 0x02249F38
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02249F84
	mov r3, #0
	ldr r1, _02249F88 ; =0x00001150
	str r3, [r4, #0xc]
	add r0, sp, #0
	strh r1, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	mov r1, #3
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl sub_02019184
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r4, #0x24]
	mov r1, #7
	add r3, #0xfd
	bl sub_02019184
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl ov95_02247AC0
	ldr r2, _02249F8C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r5, #0
	bl sub_0200DA58
_02249F84:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02249F88: .word 0x00001150
_02249F8C: .word 0x04000304
	thumb_func_end ov95_02249F38

	.rodata


	.global Unk_ov95_0224C01C
Unk_ov95_0224C01C: ; 0x0224C01C
	.incbin "incbin/overlay95_rodata.bin", 0x1A8, 0x1B0 - 0x1A8

	.global Unk_ov95_0224C024
Unk_ov95_0224C024: ; 0x0224C024
	.incbin "incbin/overlay95_rodata.bin", 0x1B0, 0x1C0 - 0x1B0

	.global Unk_ov95_0224C034
Unk_ov95_0224C034: ; 0x0224C034
	.incbin "incbin/overlay95_rodata.bin", 0x1C0, 0x1D0 - 0x1C0

	.global Unk_ov95_0224C044
Unk_ov95_0224C044: ; 0x0224C044
	.incbin "incbin/overlay95_rodata.bin", 0x1D0, 0x1EC - 0x1D0

	.global Unk_ov95_0224C060
Unk_ov95_0224C060: ; 0x0224C060
	.incbin "incbin/overlay95_rodata.bin", 0x1EC, 0x28

