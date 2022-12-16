	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov116_02261870
ov116_02261870: ; 0x02261870
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _022618A4
	bl sub_020AF480
	mov r0, #0x1c
	add r1, r6, #0
	mov r2, #3
	bl sub_020B275C
	mov r0, #0x19
	add r1, r4, #0
	mov r2, #0xc
	bl sub_020B275C
	add r0, r5, #0
	add r0, #0x60
	bl sub_020AF4EC
	add r0, r5, #0
	bl sub_020AFEFC
_022618A4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02261870

	thumb_func_start ov116_022618A8
ov116_022618A8: ; 0x022618A8
	push {r3, lr}
	add r0, #0x78
	mov r3, #0x6a
	bl sub_020170D8
	pop {r3, pc}
	thumb_func_end ov116_022618A8

	thumb_func_start ov116_022618B4
ov116_022618B4: ; 0x022618B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r1, r4, #0
	add r1, #0x78
	bl sub_02017258
	mov r1, #0
	ldr r2, _02261928 ; =0xFFFEC000
	add r0, r4, #0
	add r3, r1, #0
	bl sub_02017350
	cmp r5, #0
	bne _022618E2
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	b _022618F0
_022618E2:
	mov r1, #6
	lsl r1, r1, #0xa
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
_022618F0:
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	mov r2, #0x1e
	lsl r2, r2, #4
	mov r0, #0
	ldr r3, _02261928 ; =0xFFFEC000
	str r0, [r4, r2]
	add r1, r2, #4
	str r3, [r4, r1]
	add r1, r2, #0
	add r1, #8
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x1c
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x20
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0xc
	str r0, [r4, r1]
	mov r0, #1
	add r2, #0x10
	str r0, [r4, r2]
	pop {r3, r4, r5, pc}
	nop
_02261928: .word 0xFFFEC000
	thumb_func_end ov116_022618B4

	thumb_func_start ov116_0226192C
ov116_0226192C: ; 0x0226192C
	mov r1, #0x1f
	ldr r3, _0226193C ; =sub_02017110
	mov r2, #0
	lsl r1, r1, #4
	str r2, [r0, r1]
	add r0, #0x78
	bx r3
	nop
_0226193C: .word sub_02017110
	thumb_func_end ov116_0226192C

	thumb_func_start ov116_02261940
ov116_02261940: ; 0x02261940
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	ldr r4, _02261C04 ; =0x02267A6C
	add r3, sp, #0x18
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	add r0, r2, #0
	bl sub_020BD3E4
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	mov r0, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_020AF51C
	ldr r1, _02261C08 ; =0x00007FFF
	mov r0, #0
	bl sub_020AF558
	ldr r0, _02261C08 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF56C
	ldr r0, _02261C08 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl sub_020AF590
	mov r7, #0
	add r4, r7, #0
_0226199C:
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	add r6, r0, r4
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r1, #0x1b
	mov r2, #0x1e
	lsl r1, r1, #4
	lsl r2, r2, #4
	add r0, r6, #0
	add r1, r6, r1
	add r2, r6, r2
	bl ov116_02261870
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x12
	add r1, sp, #0x14
	mov r2, #1
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C0C ; =0x00000BD8
	add r0, r1, r0
	mov r1, #1
	add r0, r0, r4
	lsl r1, r1, #0xc
	bl sub_020171CC
	mov r0, #0x83
	lsl r0, r0, #2
	add r7, r7, #1
	add r4, r4, r0
	cmp r7, #8
	blt _0226199C
	ldr r1, [r5, #4]
	sub r0, #0xfc
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261A00
	cmp r0, #1
	beq _02261A40
	cmp r0, #2
	beq _02261A74
	b _02261AA8
_02261A00:
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C10 ; =0x0000052C
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C14 ; =0x00000738
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	mov r0, #0xea
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r2, r1, r0
	ldr r0, _02261C18 ; =0x00000514
	ldr r1, [r1, r0]
	mov r0, #0x14
	mul r0, r1
	mov r1, #1
	add r0, r2, r0
	lsl r1, r1, #0xc
	bl sub_020171CC
	b _02261AA8
_02261A40:
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C10 ; =0x0000052C
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C14 ; =0x00000738
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C1C ; =0x000005B4
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_02017204
	b _02261AA8
_02261A74:
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C10 ; =0x0000052C
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r1, [r5, #4]
	ldr r0, _02261C14 ; =0x00000738
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x1f
	ldr r1, [r5, #4]
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_02017204
_02261AA8:
	mov r0, #0x32
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r4, r1, r0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	add r0, #0xfc
	add r6, r1, #0
	mov r1, #0
	mul r6, r0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, r6
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp, #0x10]
	mov r0, #0x12
	add r1, sp, #0x10
	bl sub_020B275C
	mov r0, #0x45
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp, #0xc]
	mov r0, #0x12
	add r1, sp, #0xc
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C20 ; =0x00000944
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp, #8]
	mov r0, #0x12
	add r1, sp, #8
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C24 ; =0x00001FAC
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261BA6
	ldr r0, _02261C28 ; =0x00001DBC
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0x12
	add r1, sp, #4
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C2C ; =0x00001FA8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261BA6
	ldr r0, _02261C30 ; =0x00001E44
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_02017204
	add r4, r0, #0
	ldr r1, [r5, #4]
	ldr r0, _02261C34 ; =0x00001E58
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_02017204
	cmp r4, #0
	beq _02261BA6
	cmp r0, #0
	beq _02261BA6
	ldr r1, [r5, #4]
	ldr r0, _02261C2C ; =0x00001FA8
	mov r2, #0
	str r2, [r1, r0]
_02261BA6:
	ldr r1, [r5, #4]
	ldr r0, _02261C38 ; =0x00001DA0
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261BF0
	ldr r0, _02261C3C ; =0x00001BB0
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov116_02261870
	mov r2, #1
	str r2, [sp]
	mov r0, #0x12
	add r1, sp, #0
	bl sub_020B275C
	ldr r1, [r5, #4]
	ldr r0, _02261C40 ; =0x00001D9C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261BF0
	ldr r0, _02261C44 ; =0x00001C4C
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_020171CC
_02261BF0:
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	ldr r0, [r5, #0x54]
	bl sub_0200C7EC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02261C04: .word 0x02267A6C
_02261C08: .word 0x00007FFF
_02261C0C: .word 0x00000BD8
_02261C10: .word 0x0000052C
_02261C14: .word 0x00000738
_02261C18: .word 0x00000514
_02261C1C: .word 0x000005B4
_02261C20: .word 0x00000944
_02261C24: .word 0x00001FAC
_02261C28: .word 0x00001DBC
_02261C2C: .word 0x00001FA8
_02261C30: .word 0x00001E44
_02261C34: .word 0x00001E58
_02261C38: .word 0x00001DA0
_02261C3C: .word 0x00001BB0
_02261C40: .word 0x00001D9C
_02261C44: .word 0x00001C4C
	thumb_func_end ov116_02261940

	thumb_func_start ov116_02261C48
ov116_02261C48: ; 0x02261C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02261C84 ; =0x00000514
	add r4, r1, #0
	ldr r1, [r5, r0]
	cmp r4, r1
	beq _02261C82
	mov r2, #0x32
	lsl r2, r2, #4
	add r0, r5, r2
	add r2, #0x88
	add r3, r5, r2
	mov r2, #0x14
	mul r2, r1
	add r1, r3, r2
	bl sub_02017288
	ldr r0, _02261C84 ; =0x00000514
	mov r1, #0x32
	lsl r1, r1, #4
	str r4, [r5, r0]
	add r0, r5, r1
	add r1, #0x88
	add r2, r5, r1
	mov r1, #0x14
	mul r1, r4
	add r1, r2, r1
	bl sub_0201727C
_02261C82:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02261C84: .word 0x00000514
	thumb_func_end ov116_02261C48

	thumb_func_start ov116_02261C88
ov116_02261C88: ; 0x02261C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r6, _02261CD0 ; =0x02267A60
	add r4, r0, #0
	ldmia r6!, {r0, r1}
	add r5, sp, #8
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	mov r2, #0xb6
	add r7, sp, #0x14
	mov r3, #0
	str r3, [r7, #0]
	str r3, [r7, #4]
	str r3, [r7, #8]
	str r0, [r5, #0]
	str r3, [sp]
	ldr r0, [r4, #0x64]
	lsl r2, r2, #4
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02020784
	mov r1, #0xfa
	ldr r0, _02261CD4 ; =0xFFC18000
	ldr r2, [r4, #0x64]
	lsl r1, r1, #0xe
	bl sub_020206BC
	ldr r0, [r4, #0x64]
	bl sub_020203D4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261CD0: .word 0x02267A60
_02261CD4: .word 0xFFC18000
	thumb_func_end ov116_02261C88

	thumb_func_start ov116_02261CD8
ov116_02261CD8: ; 0x02261CD8
	push {r3, r4}
	strh r1, [r0]
	strh r2, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r2, #2
	str r2, [r0, #0x2c]
	str r1, [r0, #0x30]
	ldr r1, [sp, #8]
	ldr r4, [sp, #0xc]
	str r1, [r0, #0xc]
	str r4, [r0, #0x14]
	str r4, [r0, #0x18]
	str r4, [r0, #0x1c]
	str r4, [r0, #0x20]
	sub r1, r2, #3
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov116_02261CD8

	thumb_func_start ov116_02261D08
ov116_02261D08: ; 0x02261D08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, [r0, #0x14]
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	mov r6, #0
	ldr r7, [r1, #0xc]
	ldr r5, [sp, #8]
	str r0, [sp, #0xc]
	add r4, r6, #0
_02261D1C:
	mov r0, #3
	str r0, [sp]
	ldr r0, _02261D6C ; =0x0000232E
	lsl r1, r4, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x10
	asr r1, r1, #0x10
	mov r2, #0x14
	mov r3, #1
	bl ov116_02261CD8
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_0200CE6C
	mov r1, #3
	str r0, [r5, #0x40]
	bl sub_0200D430
	add r0, r6, #0
	mov r1, #0xb
	bl sub_020E1F6C
	ldr r0, [r5, #0x40]
	add r1, r1, #1
	bl sub_0200D364
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #0x24
	blt _02261D1C
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r1, #0
	bl ov116_02261E0C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02261D6C: .word 0x0000232E
	thumb_func_end ov116_02261D08

	thumb_func_start ov116_02261D70
ov116_02261D70: ; 0x02261D70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r1, [r5, #0x14]
	add r4, sp, #0xc
	ldr r0, [r1, #8]
	ldr r7, [r1, #0xc]
	ldr r1, _02261DE8 ; =0x02267A58
	str r0, [sp, #8]
	ldrh r2, [r1]
	add r0, sp, #0xc
	mov r6, #0
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
_02261D96:
	mov r0, #1
	str r0, [sp]
	ldr r0, _02261DEC ; =0x0000232C
	mov r1, #0
	str r0, [sp, #4]
	ldrsh r1, [r4, r1]
	add r0, sp, #0x14
	mov r2, #0xe0
	mov r3, #1
	bl ov116_02261CD8
	mov r0, #0
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	add r1, r7, #0
	add r2, sp, #0x14
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200D33C
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D430
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #4
	blt _02261D96
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261DE8: .word 0x02267A58
_02261DEC: .word 0x0000232C
	thumb_func_end ov116_02261D70

	thumb_func_start ov116_02261DF0
ov116_02261DF0: ; 0x02261DF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02261DF6:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02261DF6
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02261DF0

	thumb_func_start ov116_02261E0C
ov116_02261E0C: ; 0x02261E0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02261E14:
	ldr r0, [r5, #0x40]
	add r1, r6, #0
	bl sub_0200D3F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x24
	blt _02261E14
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02261E0C

	thumb_func_start ov116_02261E28
ov116_02261E28: ; 0x02261E28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02261E2E:
	ldr r0, [r5, #0x40]
	bl sub_0200D33C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x24
	blt _02261E2E
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02261E28

	thumb_func_start ov116_02261E40
ov116_02261E40: ; 0x02261E40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02261E46:
	ldr r0, [r5, #0x40]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x24
	blt _02261E46
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov116_02261E40

	thumb_func_start ov116_02261E58
ov116_02261E58: ; 0x02261E58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, _02261EA0 ; =0x02267AD0
	add r6, r2, #0
	add r2, sp, #0
	add r5, r0, #0
	add r3, r1, #0
	add r7, r2, #0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r3, #1
	add r0, r5, r0
	add r0, #0xf4
	lsl r4, r6, #3
	ldrh r0, [r0]
	ldr r1, [r7, r4]
	lsl r6, r0, #2
	add r0, r5, r6
	ldr r0, [r0, #0x1c]
	bl sub_0200D364
	add r0, r5, r6
	add r1, sp, #4
	ldr r0, [r0, #0x28]
	ldr r1, [r1, r4]
	bl sub_0200D364
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261EA0: .word 0x02267AD0
	thumb_func_end ov116_02261E58

	thumb_func_start ov116_02261EA4
ov116_02261EA4: ; 0x02261EA4
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r3, _02261F04 ; =0x02267A90
	add r2, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0xf4
	ldrh r0, [r0]
	lsl r6, r0, #2
	add r0, r5, r6
	ldr r0, [r0, #0x1c]
	bl sub_0200D37C
	add r4, r0, #0
	add r0, r5, r6
	ldr r0, [r0, #0x28]
	bl sub_0200D37C
	mov r2, #0
	add r3, sp, #0
_02261EE0:
	ldr r1, [r3, #0]
	cmp r4, r1
	bne _02261EF2
	ldr r1, [r3, #4]
	cmp r0, r1
	bne _02261EF2
	add sp, #0x20
	add r0, r2, #0
	pop {r4, r5, r6, pc}
_02261EF2:
	add r2, r2, #1
	add r3, #8
	cmp r2, #4
	blt _02261EE0
	bl sub_02022974
	mov r0, #0
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02261F04: .word 0x02267A90
	thumb_func_end ov116_02261EA4

	thumb_func_start ov116_02261F08
ov116_02261F08: ; 0x02261F08
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	ble _02261F38
	add r5, r6, #0
_02261F16:
	ldr r0, [r6, #0]
	cmp r4, r0
	beq _02261F30
	ldr r0, [r5, #0x1c]
	bl sub_0200D33C
	ldr r0, [r5, #0x28]
	bl sub_0200D33C
	ldr r0, [r5, #0x34]
	bl sub_0200D33C
	add r5, r5, #4
_02261F30:
	ldr r0, [r6, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02261F16
_02261F38:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02261F08

	thumb_func_start ov116_02261F3C
ov116_02261F3C: ; 0x02261F3C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	ble _02261F6C
	add r5, r6, #0
_02261F4A:
	ldr r0, [r6, #0]
	cmp r4, r0
	beq _02261F64
	ldr r0, [r5, #0x1c]
	bl sub_0200D0F4
	ldr r0, [r5, #0x28]
	bl sub_0200D0F4
	ldr r0, [r5, #0x34]
	bl sub_0200D0F4
	add r5, r5, #4
_02261F64:
	ldr r0, [r6, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02261F4A
_02261F6C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov116_02261F3C

	thumb_func_start ov116_02261F70
ov116_02261F70: ; 0x02261F70
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _02261FFC ; =0x00001FE0
	add r0, r5, r0
	bl sub_0201A7A0
	mov r1, #0x13
	str r1, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r1, #4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x14]
	ldr r1, _02261FFC ; =0x00001FE0
	ldr r0, [r0, #0x10]
	add r1, r5, r1
	mov r2, #7
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _02261FFC ; =0x00001FE0
	mov r1, #0xff
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r2, _02262000 ; =0x0000019A
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x6a
	bl sub_0200B144
	mov r1, #0
	add r6, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r1, #0
	ldr r0, _02261FFC ; =0x00001FE0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, r5, r0
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	ldr r0, _02261FFC ; =0x00001FE0
	mov r1, #0
	add r0, r5, r0
	mov r2, #0xb4
	mov r3, #0xd
	bl sub_0200DC48
	ldr r0, _02261FFC ; =0x00001FE0
	add r0, r5, r0
	bl sub_0201A954
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02261FFC: .word 0x00001FE0
_02262000: .word 0x0000019A
	thumb_func_end ov116_02261F70

	thumb_func_start ov116_02262004
ov116_02262004: ; 0x02262004
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02262030 ; =0x00001FE0
	add r0, r4, r0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0226202E
	ldr r0, _02262030 ; =0x00001FE0
	mov r1, #1
	add r0, r4, r0
	bl sub_0200DC9C
	ldr r0, _02262030 ; =0x00001FE0
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _02262030 ; =0x00001FE0
	add r0, r4, r0
	bl sub_0201A8FC
_0226202E:
	pop {r4, pc}
	; .align 2, 0
_02262030: .word 0x00001FE0
	thumb_func_end ov116_02262004

	thumb_func_start ov116_02262034
ov116_02262034: ; 0x02262034
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, [r7, #0x5c]
	mov r4, #0
	str r0, [sp, #0x10]
	mov r0, #0x14
	ldr r2, _02262088 ; =0x02267F20
	mul r0, r1
	add r5, r4, #0
	add r6, r2, r0
_0226204A:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r4, #1
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r7, #4]
	mov r2, #0x49
	ldr r1, [r0, #4]
	mov r0, #0x50
	mul r0, r1
	add r0, r6, r0
	add r0, r5, r0
	sub r0, #0x4c
	ldr r0, [r0, #0]
	mov r1, #0xa4
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r3, #0x6a
	bl sub_02002FEC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0226204A
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02262088: .word 0x02267F20
	thumb_func_end ov116_02262034

	thumb_func_start ov116_0226208C
ov116_0226208C: ; 0x0226208C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201C294
	lsl r0, r0, #3
	sub r1, r0, r4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov116_0226208C

	thumb_func_start ov116_022620AC
ov116_022620AC: ; 0x022620AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r0, r0, #8
	add r5, r1, #0
	ldr r3, _02262254 ; =0x02267AF0
	str r0, [sp, #0x24]
	add r2, sp, #0x34
	mov r1, #0x24
_022620C0:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _022620C0
	ldr r0, [r5, #4]
	cmp r0, #2
	beq _022620DC
	cmp r0, #3
	beq _022620F8
	cmp r0, #4
	beq _02262114
	b _02262130
_022620DC:
	ldr r2, [r5, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	mov r1, #0x4f
	mov r3, #7
	bl sub_0200710C
	b _02262134
_022620F8:
	ldr r2, [r5, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	mov r1, #0x50
	mov r3, #7
	bl sub_0200710C
	b _02262134
_02262114:
	ldr r2, [r5, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	mov r1, #0x51
	mov r3, #7
	bl sub_0200710C
	b _02262134
_02262130:
	bl sub_02022974
_02262134:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	bgt _0226213E
	b _02262250
_0226213E:
	ldr r0, _02262258 ; =0x00001FF0
	str r6, [sp, #0x1c]
	add r4, r5, r0
	ldr r0, [sp, #0x18]
	add r0, #0x8c
	str r0, [sp, #0x18]
_0226214A:
	ldr r0, [r5, #0]
	cmp r6, r0
	beq _02262246
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	bl ov114_0225C7A4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	bl ov114_0225C7CC
	str r0, [sp, #0x2c]
	add r0, r4, #0
	bl sub_0201A7A0
	ldr r1, [r5, #4]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x34
	add r1, r0, r2
	ldr r0, [sp, #0x1c]
	mov r2, #7
	add r7, r1, r0
	mov r0, #0x2b
	mvn r0, r0
	ldrsh r0, [r7, r0]
	add r3, r2, #0
	sub r3, #0x37
	str r0, [sp, #0x20]
	mov r0, #0x29
	mvn r0, r0
	ldrsh r0, [r7, r0]
	add r1, r4, #0
	str r0, [sp, #0x30]
	mov r0, #0x2d
	mvn r0, r0
	ldrsh r0, [r7, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrsh r3, [r7, r3]
	ldr r0, [r5, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x10]
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x24]
	mov r1, #0xff
	add r0, r0, r2
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x2c]
	mov r1, #0x6a
	bl sub_02025F04
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov116_0226208C
	add r3, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02262216
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0226225C ; =0x0005060F
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0201D7E0
	b _02262232
_02262216:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02262260 ; =0x0001020F
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0201D7E0
_02262232:
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A954
	ldr r0, [sp, #0x1c]
	add r4, #0x10
	add r0, #8
	str r0, [sp, #0x1c]
_02262246:
	ldr r0, [r5, #4]
	add r6, r6, #1
	cmp r6, r0
	bge _02262250
	b _0226214A
_02262250:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02262254: .word 0x02267AF0
_02262258: .word 0x00001FF0
_0226225C: .word 0x0005060F
_02262260: .word 0x0001020F
	thumb_func_end ov116_022620AC

	thumb_func_start ov116_02262264
ov116_02262264: ; 0x02262264
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	ble _022622A6
	ldr r0, _022622C4 ; =0x00001FF0
	mov r7, #1
	add r5, r6, r0
_02262278:
	ldr r0, [r6, #0]
	cmp r4, r0
	beq _0226229E
	add r0, r5, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0226229C
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0200DC9C
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
_0226229C:
	add r5, #0x10
_0226229E:
	ldr r0, [r6, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02262278
_022622A6:
	ldr r2, [r6, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	mov r1, #0x4e
	mov r3, #7
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022622C4: .word 0x00001FF0
	thumb_func_end ov116_02262264

	thumb_func_start ov116_022622C8
ov116_022622C8: ; 0x022622C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [r0, #0x48]
	ldr r5, [r0, #0x54]
	ldr r6, [r0, #0x50]
	ldr r7, [r0, #0x5c]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0226258C ; =0x00002328
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x54
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226258C ; =0x00002328
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x53
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226258C ; =0x00002328
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x52
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x55
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0226258C ; =0x00002328
	mov r1, #3
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02262590 ; =0x0000232B
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x1d
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262590 ; =0x0000232B
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x1c
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262590 ; =0x0000232B
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x1b
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02262590 ; =0x0000232B
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02262594 ; =0x0000232C
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xd
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262594 ; =0x0000232C
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xc
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262594 ; =0x0000232C
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xb
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02262594 ; =0x0000232C
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02262598 ; =0x0000232D
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x15
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262598 ; =0x0000232D
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x14
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262598 ; =0x0000232D
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x13
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02262598 ; =0x0000232D
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0226259C ; =0x0000232E
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x11
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226259C ; =0x0000232E
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x10
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226259C ; =0x0000232E
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xf
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0226259C ; =0x0000232E
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022625A0 ; =0x0000232A
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x19
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022625A0 ; =0x0000232A
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x18
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022625A0 ; =0x0000232A
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x17
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022625A0 ; =0x0000232A
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0xab
	mov r1, #0x6a
	bl sub_02006C24
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022625A4 ; =0x0000232F
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x15
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022625A4 ; =0x0000232F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x16
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022625A4 ; =0x0000232F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x17
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022625A4 ; =0x0000232F
	add r2, r6, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r3, r5, #0
	bl sub_0200CDC4
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226258C: .word 0x00002328
_02262590: .word 0x0000232B
_02262594: .word 0x0000232C
_02262598: .word 0x0000232D
_0226259C: .word 0x0000232E
_022625A0: .word 0x0000232A
_022625A4: .word 0x0000232F
	thumb_func_end ov116_022622C8

	thumb_func_start ov116_022625A8
ov116_022625A8: ; 0x022625A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r6, r1, #0
	ldr r1, [r6, #0x14]
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	mov r4, #0
	str r0, [sp, #0x18]
	ldr r0, [r1, #0xc]
	str r4, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	cmp r0, #0
	bgt _022625C6
	b _022626DC
_022625C6:
	str r6, [sp, #0xc]
	add r7, r4, #0
	add r5, r6, #0
_022625CC:
	ldr r1, [sp, #0xc]
	mov r0, #0xff
	add r1, #0xf4
	strh r0, [r1]
	ldr r0, [r6, #0]
	cmp r4, r0
	beq _022626CC
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, #0xf4
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022626E0 ; =0x00002328
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r0, sp, #0x1c
	mul r2, r1
	ldr r1, _022626E4 ; =0x02267A78
	mov r3, #2
	add r1, r1, r2
	add r2, r7, r1
	mov r1, #5
	mvn r1, r1
	ldrsh r1, [r2, r1]
	mov r2, #0xf0
	bl ov116_02261CD8
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	bl sub_0200CE6C
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [sp]
	ldr r0, _022626E0 ; =0x00002328
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r0, sp, #0x1c
	mul r2, r1
	ldr r1, _022626E4 ; =0x02267A78
	mov r3, #2
	add r1, r1, r2
	add r2, r7, r1
	mov r1, #5
	mvn r1, r1
	ldrsh r1, [r2, r1]
	mov r2, #0xf0
	bl ov116_02261CD8
	mov r0, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	bl sub_0200CE6C
	str r0, [r5, #0x28]
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov116_02264680
	add r1, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_0200D430
	mov r0, #0
	str r0, [sp]
	ldr r0, _022626E0 ; =0x00002328
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r0, sp, #0x1c
	mul r2, r1
	ldr r1, _022626E4 ; =0x02267A78
	mov r3, #2
	add r1, r1, r2
	add r2, r7, r1
	mov r1, #5
	mvn r1, r1
	ldrsh r1, [r2, r1]
	mov r2, #0xf0
	bl ov116_02261CD8
	mov r0, #3
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	bl sub_0200CE6C
	str r0, [r5, #0x34]
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov116_02264680
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0200D430
	ldr r0, [r5, #0x34]
	mov r1, #5
	bl sub_0200D364
	ldr r0, [r5, #0x1c]
	bl sub_0200D33C
	ldr r0, [r5, #0x28]
	bl sub_0200D33C
	ldr r0, [r5, #0x34]
	bl sub_0200D33C
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov116_02261E58
	ldr r0, [sp, #0x10]
	add r7, r7, #2
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x10]
_022626CC:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r6, #4]
	cmp r4, r0
	bge _022626DC
	b _022625CC
_022626DC:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022626E0: .word 0x00002328
_022626E4: .word 0x02267A78
	thumb_func_end ov116_022625A8

	thumb_func_start ov116_022626E8
ov116_022626E8: ; 0x022626E8
	push {r4, r5, lr}
	sub sp, #0x3c
	ldr r0, [r0, #0x14]
	mov r3, #1
	ldr r4, [r0, #8]
	ldr r5, [r0, #0xc]
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262720 ; =0x0000232B
	str r0, [sp, #4]
	add r0, sp, #8
	bl ov116_02261CD8
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #8
	bl sub_0200CE6C
	add r4, r0, #0
	bl sub_0200D33C
	add r0, r4, #0
	add sp, #0x3c
	pop {r4, r5, pc}
	nop
_02262720: .word 0x0000232B
	thumb_func_end ov116_022626E8

	thumb_func_start ov116_02262724
ov116_02262724: ; 0x02262724
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r7, sp, #0xc
	ldr r6, [r0, #8]
	ldr r4, [r0, #0xc]
	mov r0, #0
	str r0, [sp, #8]
_02262736:
	mov r0, #4
	str r0, [sp]
	ldr r0, _02262814 ; =0x0000232A
	mov r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r1, #0
	mov r3, #1
	bl ov116_02261CD8
	mov r0, #2
	str r0, [sp, #0x38]
	mov r0, #0x14
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D364
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0200D430
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D810
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0
	str r0, [sp]
	ldr r0, _02262818 ; =0x00002328
	mov r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r1, #0
	mov r3, #2
	bl ov116_02261CD8
	mov r0, #2
	str r0, [sp, #0x38]
	mov r0, #0x14
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_0200D364
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D430
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D810
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _02262736
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262814: .word 0x0000232A
_02262818: .word 0x00002328
	thumb_func_end ov116_02262724

	thumb_func_start ov116_0226281C
ov116_0226281C: ; 0x0226281C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02262822:
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02262822
	pop {r3, r4, r5, pc}
	thumb_func_end ov116_0226281C

	thumb_func_start ov116_02262840
ov116_02262840: ; 0x02262840
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0x80
	ldr r6, [r0, #8]
	ldr r4, [r0, #0xc]
	mov r0, #7
	str r0, [sp]
	ldr r0, _022628A8 ; =0x0000232F
	add r2, r1, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r3, #1
	bl ov116_02261CD8
	mov r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #8
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D364
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r5, #0xf0
	ldr r0, [r5, #0]
	mov r1, #7
	bl sub_0200D430
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_022628A8: .word 0x0000232F
	thumb_func_end ov116_02262840

	thumb_func_start ov116_022628AC
ov116_022628AC: ; 0x022628AC
	ldr r3, _022628B4 ; =sub_0200D0F4
	add r0, #0xf0
	ldr r0, [r0, #0]
	bx r3
	; .align 2, 0
_022628B4: .word sub_0200D0F4
	thumb_func_end ov116_022628AC

	thumb_func_start ov116_022628B8
ov116_022628B8: ; 0x022628B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, [r0, #0x58]
	ldr r4, [r0, #0x48]
	ldr r6, [r0, #0x5c]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x48
	add r2, r5, #0
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, r5, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4a
	add r2, r5, #0
	mov r3, #4
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4c
	add r2, r5, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4d
	add r2, r5, #0
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4e
	add r2, r5, #0
	mov r3, #7
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0x49
	mov r3, #0x6a
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #5
	add r2, r5, #0
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #8
	add r2, r5, #0
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #7
	add r2, r5, #0
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #9
	add r2, r5, #0
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6a
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xa
	add r2, r5, #0
	mov r3, #2
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #6
	mov r3, #0x6a
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #7
	mov r3, #0x6a
	bl sub_02003050
	bl sub_0200DAA0
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x26
	mov r3, #0x6a
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6a
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0xb4
	mov r3, #0xd
	bl sub_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov116_022628B8

	.rodata


	.global Unk_ov116_02267A58
Unk_ov116_02267A58: ; 0x02267A58
	.incbin "incbin/overlay116_rodata.bin", 0x318, 0x320 - 0x318

	.global Unk_ov116_02267A60
Unk_ov116_02267A60: ; 0x02267A60
	.incbin "incbin/overlay116_rodata.bin", 0x320, 0x32C - 0x320

	.global Unk_ov116_02267A6C
Unk_ov116_02267A6C: ; 0x02267A6C
	.incbin "incbin/overlay116_rodata.bin", 0x32C, 0x338 - 0x32C

	.global Unk_ov116_02267A78
Unk_ov116_02267A78: ; 0x02267A78
	.incbin "incbin/overlay116_rodata.bin", 0x338, 0x350 - 0x338

	.global Unk_ov116_02267A90
Unk_ov116_02267A90: ; 0x02267A90
	.incbin "incbin/overlay116_rodata.bin", 0x350, 0x370 - 0x350

	.global Unk_ov116_02267AB0
Unk_ov116_02267AB0: ; 0x02267AB0
	.incbin "incbin/overlay116_rodata.bin", 0x370, 0x390 - 0x370

	.global Unk_ov116_02267AD0
Unk_ov116_02267AD0: ; 0x02267AD0
	.incbin "incbin/overlay116_rodata.bin", 0x390, 0x3B0 - 0x390

	.global Unk_ov116_02267AF0
Unk_ov116_02267AF0: ; 0x02267AF0
	.incbin "incbin/overlay116_rodata.bin", 0x3B0, 0x48


	.data


	.global Unk_ov116_02267F20
Unk_ov116_02267F20: ; 0x02267F20
	.incbin "incbin/overlay116_data.bin", 0x0, 0x140

