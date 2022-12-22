	.include "macros/function.inc"
	.include "include/unk_0206B70C.inc"

	

	.text


	thumb_func_start sub_0206B70C
sub_0206B70C: ; 0x0206B70C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	str r2, [sp, #4]
	bl sub_020507E4
	add r7, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	str r0, [sp, #0x14]
	bl sub_0203A72C
	mov r2, #5
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #6
	bl memset
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EABC
	str r0, [sp, #0x10]
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r4, #9
	bl sub_0203A720
	ldr r1, [r0, #0]
	ldr r2, _0206B860 ; =0x020EFB28
_0206B75A:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _0206B774
	ldr r1, _0206B864 ; =0x020EFA9C
	lsl r0, r4, #4
	ldr r2, [r1, r0]
	ldr r1, [sp, #0x10]
	sub r1, r1, r2
	str r1, [sp, #0x10]
	ldr r1, _0206B868 ; =0x020EFAA4
	ldr r0, [r1, r0]
	sub r6, r6, r0
	b _0206B77A
_0206B774:
	sub r2, #0x10
	sub r4, r4, #1
	bpl _0206B75A
_0206B77A:
	ldr r1, [sp, #0x10]
	ldr r0, [sp]
	asr r1, r1, #4
	lsr r2, r1, #0x1b
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x2c]
	add r2, r1, r2
	asr r1, r2, #5
	asr r2, r6, #4
	lsr r2, r2, #0x1b
	add r2, r6, r2
	asr r2, r2, #5
	bl sub_02039E30
	bl sub_0203A24C
	cmp r0, #0
	beq _0206B7A6
	ldr r0, [sp, #0x10]
	str r0, [r5, #0]
	str r6, [r5, #4]
	b _0206B7B2
_0206B7A6:
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	str r0, [r5, #0]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	str r0, [r5, #4]
_0206B7B2:
	ldr r0, [sp]
	bl sub_0203D174
	bl sub_02025E38
	bl sub_02025F30
	str r0, [r5, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_0203A790
	bl sub_0203A76C
	str r0, [sp, #0xc]
	ldr r0, [r0, #0]
	mov r1, #6
	add r0, r0, #4
	bl _s32_div_f
	mov r6, #0
	add r4, r5, #0
_0206B7DE:
	ldr r0, [sp, #0xc]
	lsl r2, r1, #2
	add r0, r0, r2
	ldrb r2, [r0, #6]
	str r2, [r4, #0x20]
	ldrb r2, [r0, #7]
	str r2, [r4, #0x24]
	ldrb r2, [r0, #9]
	strh r2, [r4, #0x2a]
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0206B7FA
	mov r0, #4
	b _0206B7FA
_0206B7FA:
	strh r0, [r4, #0x28]
	add r0, r1, #5
	mov r1, #6
	bl _s32_div_f
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #5
	blt _0206B7DE
	mov r6, #0x4f
	mov r4, #0
	lsl r6, r6, #2
_0206B812:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0206B1F0
	cmp r0, #0
	beq _0206B828
	mov r0, #1
	ldrh r1, [r5, r6]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, r6]
_0206B828:
	add r4, r4, #1
	cmp r4, #4
	blt _0206B812
	ldr r6, _0206B86C ; =0x020EFA84
	mov r4, #0
_0206B832:
	ldrb r2, [r6]
	add r0, r7, #0
	mov r1, #2
	bl sub_0206AF3C
	mov r1, #0x49
	add r2, r5, r4
	lsl r1, r1, #2
	add r4, r4, #1
	add r6, r6, #1
	strb r0, [r2, r1]
	cmp r4, #0x14
	blt _0206B832
	ldr r0, [sp]
	ldr r2, _0206B870 ; =0x02100B90
	add r1, r5, #0
	bl sub_0206B878
	ldr r1, _0206B874 ; =0x00000139
	ldr r0, [sp, #4]
	strb r0, [r5, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206B860: .word 0x020EFB28
_0206B864: .word 0x020EFA9C
_0206B868: .word 0x020EFAA4
_0206B86C: .word 0x020EFA84
_0206B870: .word 0x02100B90
_0206B874: .word 0x00000139
	thumb_func_end sub_0206B70C

	thumb_func_start sub_0206B878
sub_0206B878: ; 0x0206B878
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_020507E4
	str r0, [sp]
	add r0, sp, #0x28
	bl FS_InitFile
	add r0, sp, #0x28
	add r1, r4, #0
	bl FS_OpenFile
	cmp r0, #0
	bne _0206B8A4
	bl sub_02022974
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_0206B8A4:
	add r0, sp, #0x28
	add r1, sp, #0x24
	mov r2, #4
	bl FS_ReadFile
	cmp r0, #0
	bge _0206B8B6
	bl sub_02022974
_0206B8B6:
	mov r0, #0xb
	mov r1, #4
	bl sub_02018184
	mov r1, #0
	mov r2, #4
	add r6, r0, #0
	bl MI_CpuFill8
	ldr r1, [sp, #0x24]
	ldr r0, _0206B9D4 ; =0x0000013A
	mov r4, #0
	strb r1, [r5, r0]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	ble _0206B9C2
	mov r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #0x20]
	mov r0, #0x30
	str r0, [sp, #0x1c]
	mov r0, #0xc0
	str r0, [sp, #0x18]
	mov r0, #0x30
	add r5, #0x5c
	str r0, [sp, #0x14]
_0206B8F8:
	add r0, sp, #0x28
	add r1, r6, #0
	mov r2, #4
	bl FS_ReadFile
	ldrb r0, [r6]
	cmp r0, #1
	beq _0206B90E
	cmp r0, #2
	beq _0206B938
	b _0206B95E
_0206B90E:
	ldrb r2, [r6, #1]
	ldr r0, [sp]
	mov r1, #2
	bl sub_0206AF3C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1e
	ldrb r1, [r5, r4]
	ldr r2, [sp, #8]
	lsr r0, r0, #0x1c
	bic r1, r2
	orr r0, r1
	strb r0, [r5, r4]
	ldrb r1, [r5, r4]
	ldr r0, [sp, #4]
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r5, r4]
	b _0206B95E
_0206B938:
	ldrb r1, [r6, #1]
	add r0, r7, #0
	bl sub_0203F188
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1e
	ldrb r1, [r5, r4]
	ldr r2, [sp, #0x10]
	lsr r0, r0, #0x1c
	bic r1, r2
	orr r0, r1
	strb r0, [r5, r4]
	ldrb r1, [r5, r4]
	ldr r0, [sp, #0xc]
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r5, r4]
_0206B95E:
	ldrb r0, [r6, #2]
	cmp r0, #1
	beq _0206B96A
	cmp r0, #2
	beq _0206B994
	b _0206B9BA
_0206B96A:
	ldrb r2, [r6, #3]
	ldr r0, [sp]
	mov r1, #2
	bl sub_0206AF3C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1e
	ldrb r1, [r5, r4]
	ldr r2, [sp, #0x18]
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r5, r4]
	ldrb r1, [r5, r4]
	ldr r0, [sp, #0x14]
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, r4]
	b _0206B9BA
_0206B994:
	ldrb r1, [r6, #3]
	add r0, r7, #0
	bl sub_0203F188
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1e
	ldrb r1, [r5, r4]
	ldr r2, [sp, #0x20]
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r5, r4]
	ldrb r1, [r5, r4]
	ldr r0, [sp, #0x1c]
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, r4]
_0206B9BA:
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	cmp r4, r0
	blt _0206B8F8
_0206B9C2:
	add r0, sp, #0x28
	bl FS_CloseFile
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206B9D4: .word 0x0000013A
	thumb_func_end sub_0206B878

	.rodata


	.global Unk_020EFA84
Unk_020EFA84: ; 0x020EFA84
	.incbin "incbin/arm9_rodata.bin", 0xAE44, 0xAE58 - 0xAE44

	.global Unk_020EFA98
Unk_020EFA98: ; 0x020EFA98
	.incbin "incbin/arm9_rodata.bin", 0xAE58, 0xA0



	.data


	.global Unk_02100B90
Unk_02100B90: ; 0x02100B90
	.incbin "incbin/arm9_data.bin", 0x1EB0, 0x14

