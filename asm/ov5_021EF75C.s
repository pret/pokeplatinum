	.include "macros/function.inc"
	.include "include/ov5_021EF75C.inc"

	

	.text


	thumb_func_start ov5_021EF75C
ov5_021EF75C: ; 0x021EF75C
	ldr r2, [r1, #0x14]
	ldr r3, _021EF768 ; =sub_020182F0
	add r1, r1, r2
	sub r1, r1, r0
	bx r3
	nop
_021EF768: .word sub_020182F0
	thumb_func_end ov5_021EF75C

	thumb_func_start ov5_021EF76C
ov5_021EF76C: ; 0x021EF76C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _021EF79C ; =0x00000C28
	mov r0, #4
	bl sub_02018144
	add r4, r0, #0
	mov r0, #4
	mov r1, #0x10
	bl sub_02018184
	mov r1, #0xc2
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r2, #0
	str r5, [r0, #0]
	ldr r0, [r4, r1]
	str r6, [r0, #4]
	ldr r0, [r4, r1]
	str r2, [r0, #0xc]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021EF79C: .word 0x00000C28
	thumb_func_end ov5_021EF76C

	thumb_func_start ov5_021EF7A0
ov5_021EF7A0: ; 0x021EF7A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x110
	add r5, r0, #0
	mov r0, #0xc2
	lsl r0, r0, #4
	ldr r7, [r5, r0]
	sub r0, #8
	ldr r2, [r7, #0]
	add r0, r5, r0
	mov r1, #0x2a
	bl sub_02006AA4
	ldr r1, _021EF9BC ; =0x00000C18
	mov r0, #0x2b
	ldrh r1, [r5, r1]
	mov r2, #4
	bl sub_02006AC0
	ldr r1, _021EF9C0 ; =0x00000C24
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	ldrh r1, [r0]
	mov r0, #3
	lsl r0, r0, #8
	strh r1, [r7, #8]
	cmp r1, r0
	blo _021EF7DA
	bl sub_02022974
_021EF7DA:
	ldr r1, _021EF9C4 ; =0x00000C0C
	mov r0, #0
	str r0, [r5, r1]
	add r1, #0xe
	ldrh r1, [r5, r1]
	mov r0, #0x2c
	mov r2, #4
	bl sub_02006AC0
	ldr r1, _021EF9C8 ; =0x00000C04
	mov r2, #4
	str r0, [r5, r1]
	add r1, #0x14
	ldrh r1, [r5, r1]
	mov r0, #0x47
	bl sub_02006AC0
	ldr r1, _021EF9CC ; =0x00000C08
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl NNS_G3dGetTex
	ldr r1, _021EF9C4 ; =0x00000C0C
	str r0, [r5, r1]
	ldrh r0, [r7, #8]
	cmp r0, #0
	beq _021EF822
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl NNS_G3dGetTex
	mov r1, #0xc1
	lsl r1, r1, #4
	str r0, [r5, r1]
	b _021EF828
_021EF822:
	mov r2, #0
	add r0, r1, #4
	str r2, [r5, r0]
_021EF828:
	ldr r0, _021EF9C4 ; =0x00000C0C
	ldr r0, [r5, r0]
	bl sub_0201CBCC
	cmp r0, #0
	bne _021EF838
	bl sub_02022974
_021EF838:
	ldr r1, _021EF9C8 ; =0x00000C04
	ldr r0, [r5, r1]
	add r1, #8
	ldr r1, [r5, r1]
	bl ov5_021EF75C
	mov r0, #0xc1
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021EF866
	bl sub_0201CBCC
	cmp r0, #0
	bne _021EF85A
	bl sub_02022974
_021EF85A:
	ldr r1, _021EF9CC ; =0x00000C08
	ldr r0, [r5, r1]
	add r1, #8
	ldr r1, [r5, r1]
	bl ov5_021EF75C
_021EF866:
	mov r2, #0
	mov r0, #3
	add r3, r5, #0
	add r1, r2, #0
	lsl r0, r0, #8
_021EF870:
	add r2, r2, #1
	str r1, [r3, #4]
	add r3, r3, #4
	cmp r2, r0
	blt _021EF870
	ldr r0, _021EF9D0 ; =0x00000C14
	str r1, [r5, r0]
	mov r0, #0x28
	mov r1, #4
	bl sub_02006C24
	str r0, [sp, #0xc]
	ldr r0, [r7, #4]
	bl ov5_021D3F84
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrh r0, [r7, #8]
	cmp r0, #0
	ble _021EF928
	ldr r0, [sp, #8]
	str r0, [sp]
_021EF89E:
	ldr r0, _021EF9C0 ; =0x00000C24
	ldr r1, [r5, r0]
	ldr r0, [sp]
	add r0, r1, r0
	ldrh r6, [r0, #2]
	lsl r0, r6, #2
	add r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EF8B6
	bl sub_02022974
_021EF8B6:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #4
	bl sub_02006CB8
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	cmp r6, r0
	bge _021EF902
	ldr r0, [r4, #4]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _021EF8F2
	add r1, r0, #0
	add r1, #8
	beq _021EF8E6
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _021EF8E6
	ldrh r2, [r0, #0xe]
	add r1, r1, r2
	add r1, r1, #4
	b _021EF8E8
_021EF8E6:
	mov r1, #0
_021EF8E8:
	cmp r1, #0
	beq _021EF8F2
	ldr r1, [r1, #0]
	add r1, r0, r1
	b _021EF8F4
_021EF8F2:
	mov r1, #0
_021EF8F4:
	mov r2, #0xc1
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	ldr r3, [r7, #4]
	add r0, r6, #0
	bl ov5_021D3A50
_021EF902:
	mov r1, #0xc1
	lsl r1, r1, #4
	ldr r0, [r4, #4]
	ldr r1, [r5, r1]
	bl sub_0201CBB0
	cmp r0, #0
	bne _021EF916
	bl sub_02022974
_021EF916:
	ldr r0, [sp]
	ldrh r1, [r7, #8]
	add r0, r0, #2
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _021EF89E
_021EF928:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021EF95E
	ldr r0, [sp, #0xc]
	mov r1, #0
	mov r2, #4
	bl sub_02006CB8
	str r0, [r5, #4]
	bl NNS_G3dGetTex
	add r4, r0, #0
	beq _021EF95E
	bl sub_0201CBCC
	cmp r0, #0
	bne _021EF94E
	bl sub_02022974
_021EF94E:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0201CBB0
	cmp r0, #0
	bne _021EF95E
	bl sub_02022974
_021EF95E:
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	ldr r2, _021EF9D4 ; =0x04000060
	ldr r0, _021EF9D8 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	add r0, r5, #0
	bl ov5_021EFAC0
	cmp r0, #0
	bne _021EF984
	ldr r0, _021EF9DC ; =0x021FF588
	bl G3X_SetEdgeColorTable
	b _021EF98A
_021EF984:
	ldr r0, _021EF9E0 ; =0x021FF598
	bl G3X_SetEdgeColorTable
_021EF98A:
	bl ov5_021D56BC
	ldr r1, _021EF9D0 ; =0x00000C14
	str r0, [r5, r1]
	ldr r1, _021EF9E4 ; =0x022020DC
	add r0, sp, #0x10
	bl sprintf
	ldr r1, _021EF9D0 ; =0x00000C14
	add r0, sp, #0x10
	ldr r1, [r5, r1]
	bl ov5_021D56D4
	mov r0, #0xc2
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020181C4
	mov r0, #0xc2
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF9BC: .word 0x00000C18
_021EF9C0: .word 0x00000C24
_021EF9C4: .word 0x00000C0C
_021EF9C8: .word 0x00000C04
_021EF9CC: .word 0x00000C08
_021EF9D0: .word 0x00000C14
_021EF9D4: .word 0x04000060
_021EF9D8: .word 0xFFFFCFFF
_021EF9DC: .word 0x021FF588
_021EF9E0: .word 0x021FF598
_021EF9E4: .word 0x022020DC
	thumb_func_end ov5_021EF7A0

	thumb_func_start ov5_021EF9E8
ov5_021EF9E8: ; 0x021EF9E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021EF9F4
	bl sub_02022974
_021EF9F4:
	add r2, r4, #4
	lsl r1, r5, #2
	ldr r0, [r2, r1]
	cmp r0, #0
	bne _021EFA0C
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021EFA08
	bl sub_02022974
_021EFA08:
	add r0, r4, #4
	pop {r3, r4, r5, pc}
_021EFA0C:
	add r0, r2, r1
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EF9E8

	thumb_func_start ov5_021EFA10
ov5_021EFA10: ; 0x021EFA10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	ldr r0, _021EFA7C ; =0x00000C14
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021EFA22
	bl ov5_021D5778
_021EFA22:
	mov r6, #0
	mov r7, #3
	add r4, r6, #0
	lsl r7, r7, #8
_021EFA2A:
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021EFA38
	bl sub_020181C4
_021EFA38:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r7
	blt _021EFA2A
	ldr r1, [r5, #0]
	ldr r0, _021EFA80 ; =0x00000C24
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, [r5, #0]
	ldr r0, _021EFA84 ; =0x00000C04
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, [r5, #0]
	ldr r0, _021EFA84 ; =0x00000C04
	mov r2, #0
	str r2, [r1, r0]
	ldr r1, [r5, #0]
	add r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r1, [r5, #0]
	ldr r0, _021EFA88 ; =0x00000C08
	mov r2, #0
	str r2, [r1, r0]
	ldr r0, [r5, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFA7C: .word 0x00000C14
_021EFA80: .word 0x00000C24
_021EFA84: .word 0x00000C04
_021EFA88: .word 0x00000C08
	thumb_func_end ov5_021EFA10

	thumb_func_start ov5_021EFA8C
ov5_021EFA8C: ; 0x021EFA8C
	push {r4, lr}
	add r4, r0, #0
	bne _021EFA96
	bl sub_02022974
_021EFA96:
	ldr r0, _021EFA9C ; =0x00000C0C
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021EFA9C: .word 0x00000C0C
	thumb_func_end ov5_021EFA8C

	thumb_func_start ov5_021EFAA0
ov5_021EFAA0: ; 0x021EFAA0
	push {r4, lr}
	add r4, r0, #0
	bne _021EFAAA
	bl sub_02022974
_021EFAAA:
	mov r0, #0xc1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EFAA0

	thumb_func_start ov5_021EFAB4
ov5_021EFAB4: ; 0x021EFAB4
	ldr r1, _021EFABC ; =0x00000C14
	ldr r0, [r0, r1]
	bx lr
	nop
_021EFABC: .word 0x00000C14
	thumb_func_end ov5_021EFAB4

	thumb_func_start ov5_021EFAC0
ov5_021EFAC0: ; 0x021EFAC0
	ldr r1, _021EFAD4 ; =0x00000C1E
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _021EFACC
	cmp r0, #3
	bne _021EFAD0
_021EFACC:
	mov r0, #1
	bx lr
_021EFAD0:
	mov r0, #0
	bx lr
	; .align 2, 0
_021EFAD4: .word 0x00000C1E
	thumb_func_end ov5_021EFAC0

	thumb_func_start ov5_021EFAD8
ov5_021EFAD8: ; 0x021EFAD8
	ldr r1, _021EFAE4 ; =0x00000C1E
	ldrh r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	nop
_021EFAE4: .word 0x00000C1E
	thumb_func_end ov5_021EFAD8

	thumb_func_start ov5_021EFAE8
ov5_021EFAE8: ; 0x021EFAE8
	ldr r2, _021EFAF4 ; =0x00000C24
	ldr r2, [r0, r2]
	lsl r0, r1, #1
	ldrh r0, [r2, r0]
	bx lr
	nop
_021EFAF4: .word 0x00000C24
	thumb_func_end ov5_021EFAE8

	thumb_func_start ov5_021EFAF8
ov5_021EFAF8: ; 0x021EFAF8
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021EFB06
	mov r0, #1
	bx lr
_021EFB06:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EFAF8

	.rodata


	.global Unk_ov5_021FF588
Unk_ov5_021FF588: ; 0x021FF588
	.incbin "incbin/overlay5_rodata.bin", 0x6C74, 0x6C84 - 0x6C74

	.global Unk_ov5_021FF598
Unk_ov5_021FF598: ; 0x021FF598
	.incbin "incbin/overlay5_rodata.bin", 0x6C84, 0x10


	.data


	.global Unk_ov5_022020DC
Unk_ov5_022020DC: ; 0x022020DC
	.incbin "incbin/overlay5_data.bin", 0x3BC, 0x2D

