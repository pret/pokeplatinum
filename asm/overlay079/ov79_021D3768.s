	.include "macros/function.inc"
	.include "overlay079/ov79_021D3768.inc"

	

	.text


	thumb_func_start ov79_021D3768
ov79_021D3768: ; 0x021D3768
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x1c
	add r5, r0, #0
	bl MI_CpuFill8
	bl NNS_G3dInit
	bl G3X_Init
	bl G3X_InitMtxStack
	ldr r0, _021D3804 ; =0x04000060
	ldr r1, _021D3808 ; =0xFFFFCFFD
	ldrh r2, [r0]
	ldr r3, _021D380C ; =0x0000CFFB
	and r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r6, [r0]
	add r1, r1, #2
	sub r3, #0x1c
	and r6, r2
	mov r2, #8
	orr r2, r6
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _021D3810 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _021D3814 ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _021D3818 ; =0xBFFF0000
	str r0, [r1, #0x40]
	add r0, r5, #0
	add r1, r4, #0
	bl ov79_021D3870
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov79_021D38D0
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r1, _021D381C ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3804: .word 0x04000060
_021D3808: .word 0xFFFFCFFD
_021D380C: .word 0x0000CFFB
_021D3810: .word 0x00007FFF
_021D3814: .word 0x04000540
_021D3818: .word 0xBFFF0000
_021D381C: .word 0x04000008
	thumb_func_end ov79_021D3768

	thumb_func_start ov79_021D3820
ov79_021D3820: ; 0x021D3820
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	ldr r2, _021D3854 ; =0x04000440
	mov r3, #0
	add r1, r2, #0
	str r3, [r2, #0]
	add r1, #0x14
	str r3, [r1, #0]
	mov r0, #2
	str r0, [r2, #0]
	str r3, [r1, #0]
	bl NNS_G3dGlbFlushP
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r0, [r4, #4]
	bl sub_02007768
	ldr r0, _021D3858 ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_021D3854: .word 0x04000440
_021D3858: .word 0x04000540
	thumb_func_end ov79_021D3820

	thumb_func_start ov79_021D385C
ov79_021D385C: ; 0x021D385C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020203B8
	ldr r0, [r4, #4]
	bl sub_02007B6C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D385C

	thumb_func_start ov79_021D3870
ov79_021D3870: ; 0x021D3870
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, _021D38C8 ; =0x021D3CEC
	add r4, r0, #0
	add r2, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x10
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, sp, #8
	str r0, [r3, #0]
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	add r0, r2, #0
	bl sub_020203AC
	str r0, [r4, #0]
	mov r1, #1
	str r1, [sp]
	ldr r0, [r4, #0]
	ldr r3, _021D38CC ; =0x000005C1
	str r0, [sp, #4]
	add r0, sp, #0x10
	lsl r1, r1, #0x10
	add r2, sp, #8
	bl sub_02020738
	mov r1, #0x19
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #0xe
	bl sub_020206BC
	ldr r0, [r4, #0]
	bl sub_020206B0
	ldr r0, [r4, #0]
	bl sub_020203D4
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
_021D38C8: .word 0x021D3CEC
_021D38CC: .word 0x000005C1
	thumb_func_end ov79_021D3870

	thumb_func_start ov79_021D38D0
ov79_021D38D0: ; 0x021D38D0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0200762C
	str r0, [r5, #4]
	ldr r1, [r4, #0]
	add r0, sp, #0x10
	mov r2, #2
	bl sub_02075EF4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r1, sp, #0x10
	mov r2, #0x80
	mov r3, #0x60
	bl sub_02007C34
	ldrb r2, [r4, #8]
	mov r1, #0x23
	add r6, r0, #0
	bl sub_02007DEC
	str r6, [r5, #0x18]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov79_021D38D0

	.rodata


	.global Unk_ov79_021D3CEC
Unk_ov79_021D3CEC: ; 0x021D3CEC
	.incbin "incbin/overlay79_rodata.bin", 0x3DC, 0xC

