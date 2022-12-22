	.include "macros/function.inc"
	.include "include/unk_0200762C.inc"

	

	.text


	thumb_func_start sub_0200762C
sub_0200762C: ; 0x0200762C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0xce
	lsl r1, r1, #2
	add r5, r0, #0
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0xba
	lsl r0, r0, #2
	add r1, r0, #0
	add r3, r0, #0
	str r5, [r4, r0]
	mov r2, #0
	add r1, #0x48
	strb r2, [r4, r1]
	add r1, r0, #4
	str r2, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0xe
	add r3, #8
	str r1, [r4, r3]
	add r3, r0, #0
	add r3, #0xc
	str r2, [r4, r3]
	mov r2, #0x80
	add r0, #0x10
	str r2, [r4, r0]
	add r0, r5, #0
	bl sub_02018144
	mov r1, #0xbf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #0xc0
	bl sub_02018144
	mov r1, #3
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #4
	bl MIi_CpuClearFast
	add r0, r5, #0
	mov r1, #0xc0
	bl sub_02018144
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #4
	bl MIi_CpuClearFast
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_020076A6:
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0xac
	bl MIi_CpuClearFast
	add r6, r6, #1
	add r5, #0xac
	cmp r6, #4
	blt _020076A6
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r2, _0200775C ; =0x00000333
	mov r0, #0
	strb r0, [r4, r2]
	sub r2, #0x4b
	ldr r2, [r4, r2]
	mov r0, #0x75
	mov r1, #0xfb
	bl sub_02006AC0
	add r1, sp, #0xc
	str r0, [sp, #4]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #0xc]
	mov r1, #0xc3
	ldr r0, [r0, #4]
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	ldr r2, [r0, #8]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [sp, #0xc]
	add r1, #8
	ldr r0, [r0, #0xc]
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x14]
	str r0, [sp, #8]
	bl sub_02009348
	ldr r1, [sp, #8]
	mov r0, #0xbf
	lsl r0, r0, #2
	mov r2, #2
	ldrb r1, [r1]
	ldr r0, [r4, r0]
	lsl r2, r2, #0xe
	bl MI_CpuFill8
	mov r0, #0
	mov r7, #0xbf
	ldr r6, _02007760 ; =0x00005050
	mov ip, r0
	str r0, [sp]
	add r3, r0, #0
	lsl r7, r7, #2
_0200771A:
	ldr r2, [sp, #8]
	ldr r0, [sp]
	mov r1, #0
	add r2, r2, r0
_02007722:
	ldr r5, [r4, r7]
	ldrb r0, [r2]
	add r5, r3, r5
	add r5, r1, r5
	add r1, r1, #1
	add r2, r2, #1
	strb r0, [r5, r6]
	cmp r1, #0x28
	blt _02007722
	ldr r0, [sp]
	add r3, #0x80
	add r0, #0x50
	str r0, [sp]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x50
	blt _0200771A
	ldr r0, [sp, #4]
	bl sub_020181C4
	ldr r0, _02007764 ; =0x00000331
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200775C: .word 0x00000333
_02007760: .word 0x00005050
_02007764: .word 0x00000331
	thumb_func_end sub_0200762C

	thumb_func_start sub_02007768
sub_02007768: ; 0x02007768
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_02008B78
	add r0, r5, #0
	bl sub_02008FC8
	bl NNS_G3dGeFlushBuffer
	mov r6, #0xb3
	mov r0, #0
	ldr r4, _02007ADC ; =0x04000444
	lsl r6, r6, #2
	str r0, [r4, #0]
	str r0, [sp, #0x18]
	add r0, r6, #0
	sub r0, #0xc
	ldr r1, [r5, r0]
	add r3, r6, #0
	ldr r2, [r5, r6]
	add r0, r6, #0
	sub r3, #8
	add r6, #0x20
	ldr r3, [r5, r3]
	ldr r6, [r5, r6]
	sub r0, #0x10
	ldr r0, [r5, r0]
	lsr r6, r6, #3
	lsl r3, r3, #0x1a
	orr r6, r3
	mov r3, #1
	lsl r3, r3, #0x1e
	lsl r0, r0, #0x14
	orr r3, r6
	lsl r1, r1, #0x17
	orr r0, r3
	lsl r2, r2, #0x1d
	orr r0, r1
	orr r0, r2
	str r0, [r4, #0x64]
	ldr r0, [sp, #0x18]
	ldr r7, _02007AE0 ; =0x020E4ECC
	add r4, r5, #0
	str r0, [sp, #0x14]
_020077C2:
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _020077D8
	ldr r0, [r4, #0x54]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _020077D8
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	beq _020077DA
_020077D8:
	b _02007B42
_020077DA:
	ldr r2, [r4, #0x68]
	cmp r2, #0
	beq _020077E8
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x24
	blx r2
_020077E8:
	bl NNS_G3dGeFlushBuffer
	ldr r0, _02007AE4 ; =0x00000333
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _020077FA
	ldr r0, _02007AE8 ; =0x04000454
	mov r1, #0
	str r1, [r0, #0]
_020077FA:
	add r0, r4, #0
	bl sub_020088D8
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _0200780E
	mov r0, #1
	b _02007810
_0200780E:
	mov r0, #0
_02007810:
	mov r1, #0xbd
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r3, #0x40
	add r2, r2, r1
	mov r1, #4
	sub r0, r1, r0
	add r1, r2, #0
	lsr r1, r0
	ldr r0, _02007AEC ; =0x040004AC
	str r1, [r0, #0]
	ldr r0, [r4, #0x28]
	ldrsh r3, [r4, r3]
	lsl r2, r0, #0xc
	mov r0, #0x26
	ldrsh r1, [r4, r0]
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	lsl r1, r0, #0xc
	mov r0, #0x24
	ldrsh r0, [r4, r0]
	add r0, r0, r3
	lsl r3, r0, #0xc
	ldr r0, _02007AF0 ; =0x04000470
	str r3, [r0, #0]
	str r1, [r0, #0]
	str r2, [r0, #0]
	ldrh r0, [r4, #0x38]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _02007AF4 ; =0x020F983C
	add r1, r0, r2
	ldrsh r0, [r0, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	bl G3_RotX
	ldrh r0, [r4, #0x3a]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _02007AF4 ; =0x020F983C
	add r1, r0, r2
	ldrsh r0, [r0, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	bl G3_RotY
	ldrh r0, [r4, #0x3c]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _02007AF4 ; =0x020F983C
	add r1, r0, r2
	ldrsh r0, [r0, r2]
	mov r2, #2
	ldrsh r1, [r1, r2]
	bl G3_RotZ
	ldr r0, [r4, #0x28]
	mov r3, #0x40
	lsl r0, r0, #0xc
	neg r2, r0
	mov r0, #0x26
	ldrsh r1, [r4, r0]
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	ldrsh r3, [r4, r3]
	add r0, r1, r0
	lsl r0, r0, #0xc
	neg r1, r0
	mov r0, #0x24
	ldrsh r0, [r4, r0]
	add r0, r0, r3
	lsl r0, r0, #0xc
	neg r3, r0
	ldr r0, _02007AF0 ; =0x04000470
	str r3, [r0, #0]
	str r1, [r0, #0]
	str r2, [r0, #0]
	ldr r0, [r4, #0x50]
	lsl r1, r0, #0x11
	lsr r1, r1, #0x1b
	lsl r3, r0, #0x16
	lsl r2, r1, #0xa
	lsl r1, r0, #0x1b
	lsr r3, r3, #0x1b
	lsr r1, r1, #0x1b
	lsl r3, r3, #5
	orr r1, r3
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	lsl r1, r0, #2
	lsr r1, r1, #0x1b
	lsl r2, r1, #0xa
	lsl r1, r0, #0xc
	lsl r0, r0, #7
	lsr r0, r0, #0x1b
	lsr r1, r1, #0x1b
	lsl r0, r0, #5
	orr r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	add r1, r3, #0
	orr r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	orr r1, r0
	ldr r0, _02007AF8 ; =0x040004C0
	str r1, [r0, #0]
	ldr r1, _02007AFC ; =0x00004210
	add r0, r0, #4
	str r1, [r0, #0]
	ldr r1, [r4, #0]
	ldr r0, [r4, #0x54]
	lsl r1, r1, #0x19
	lsl r0, r0, #0x19
	lsr r1, r1, #0x1a
	lsr r0, r0, #0x1b
	lsl r2, r1, #0x18
	mov r1, #0xc0
	lsl r0, r0, #0x10
	orr r1, r2
	orr r1, r0
	ldr r0, _02007B00 ; =0x040004A4
	str r1, [r0, #0]
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02007992
	add r0, r4, #0
	add r0, #0x5b
	ldrb r0, [r0]
	add r1, r4, #0
	add r1, #0x44
	lsl r3, r0, #4
	ldrb r2, [r1]
	ldr r1, [r7, r3]
	add r0, r7, r3
	add r6, r2, r1
	add r1, r4, #0
	add r1, #0x46
	ldrb r1, [r1]
	add r3, r4, #0
	add r3, #0x47
	str r1, [sp, #0x1c]
	add r1, r4, #0
	add r1, #0x45
	ldrb r3, [r3]
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	mov ip, r3
	str r3, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r1, r0
	str r6, [sp, #4]
	str r0, [sp, #8]
	add r3, r3, r6
	str r3, [sp, #0xc]
	mov r3, ip
	add r0, r3, r0
	str r0, [sp, #0x10]
	mov r3, #0x24
	ldrsh r3, [r4, r3]
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	sub r3, #0x28
	add r2, r3, r2
	add r0, r0, r2
	mov r3, #0x26
	ldrsh r3, [r4, r3]
	mov r2, #0x2e
	lsl r0, r0, #0x10
	sub r3, #0x28
	add r1, r3, r1
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x28]
	asr r0, r0, #0x10
	add r2, r2, r1
	mov r1, #0x6e
	ldrsb r1, [r4, r1]
	sub r1, r2, r1
	ldr r2, [r4, #0x30]
	lsl r1, r1, #0x10
	add r2, r3, r2
	ldr r3, [sp, #0x1c]
	asr r1, r1, #0x10
	bl NNS_G2dDrawSpriteFast
	b _020079FE
_02007992:
	mov r0, #0x34
	ldrsh r1, [r4, r0]
	mov r0, #0x50
	mul r0, r1
	asr r3, r0, #8
	mov r0, #0x36
	ldrsh r1, [r4, r0]
	mov r0, #0x50
	mul r0, r1
	asr r6, r0, #8
	add r0, r4, #0
	add r0, #0x5b
	ldrb r0, [r0]
	lsl r1, r0, #4
	str r6, [sp]
	add r0, r7, r1
	ldr r1, [r7, r1]
	str r1, [sp, #4]
	ldr r1, [r0, #4]
	str r1, [sp, #8]
	ldr r1, [r0, #8]
	str r1, [sp, #0xc]
	ldr r0, [r0, #0xc]
	lsr r1, r3, #0x1f
	str r0, [sp, #0x10]
	mov r0, #0x24
	add r1, r3, r1
	ldrsh r0, [r4, r0]
	asr r1, r1, #1
	sub r0, r0, r1
	mov r1, #0x2c
	ldrsh r1, [r4, r1]
	add r0, r0, r1
	mov r1, #0x26
	ldrsh r2, [r4, r1]
	lsr r1, r6, #0x1f
	add r1, r6, r1
	asr r1, r1, #1
	sub r1, r2, r1
	mov r2, #0x2e
	ldrsh r2, [r4, r2]
	lsl r0, r0, #0x10
	ldr r6, [r4, #0x28]
	add r1, r1, r2
	mov r2, #0x6e
	ldrsb r2, [r4, r2]
	asr r0, r0, #0x10
	sub r1, r1, r2
	ldr r2, [r4, #0x30]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r6, r2
	bl NNS_G2dDrawSpriteFast
_020079FE:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1e
	beq _02007A24
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	beq _02007A24
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02007A24
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _02007A26
_02007A24:
	b _02007B42
_02007A26:
	ldr r0, _02007AE4 ; =0x00000333
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _02007A34
	ldr r0, _02007AE8 ; =0x04000454
	mov r1, #0
	str r1, [r0, #0]
_02007A34:
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _02007A42
	mov r1, #1
	b _02007A44
_02007A42:
	mov r1, #0
_02007A44:
	add r2, r4, #0
	add r2, #0x6c
	ldrh r2, [r2]
	mov r0, #0xbd
	lsl r0, r0, #2
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	add r2, r2, #3
	ldr r0, [r5, r0]
	lsl r2, r2, #5
	add r2, r0, r2
	mov r0, #4
	sub r0, r0, r1
	add r1, r2, #0
	lsr r1, r0
	ldr r0, _02007AEC ; =0x040004AC
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _02007A84
	mov r0, #0x34
	ldrsh r0, [r4, r0]
	lsl r0, r0, #6
	asr r3, r0, #8
	mov r0, #0x36
	ldrsh r0, [r4, r0]
	lsl r0, r0, #4
	asr r1, r0, #8
	b _02007A88
_02007A84:
	mov r3, #0x40
	mov r1, #0x10
_02007A88:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _02007AAA
	mov r0, #0x74
	ldrsh r2, [r4, r0]
	mov r0, #0x24
	mov r6, #0x2c
	ldrsh r0, [r4, r0]
	ldrsh r6, [r4, r6]
	add r0, r0, r6
	add r2, r2, r0
	add r0, r4, #0
	add r0, #0x70
	strh r2, [r0]
_02007AAA:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02007ACC
	mov r0, #0x76
	ldrsh r2, [r4, r0]
	mov r0, #0x26
	mov r6, #0x2e
	ldrsh r0, [r4, r0]
	ldrsh r6, [r4, r6]
	add r0, r0, r6
	add r2, r2, r0
	add r0, r4, #0
	add r0, #0x72
	strh r2, [r0]
_02007ACC:
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	lsl r2, r0, #4
	ldr r0, _02007B04 ; =0x020E4D50
	b _02007B08
	; .align 2, 0
_02007ADC: .word 0x04000444
_02007AE0: .word 0x020E4ECC
_02007AE4: .word 0x00000333
_02007AE8: .word 0x04000454
_02007AEC: .word 0x040004AC
_02007AF0: .word 0x04000470
_02007AF4: .word 0x020F983C
_02007AF8: .word 0x040004C0
_02007AFC: .word 0x00004210
_02007B00: .word 0x040004A4
_02007B04: .word 0x020E4D50
_02007B08:
	str r1, [sp]
	add r6, r0, r2
	ldr r0, [r0, r2]
	lsr r2, r3, #0x1f
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	add r2, r3, r2
	str r0, [sp, #8]
	ldr r0, [r6, #8]
	asr r2, r2, #1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x70
	ldrsh r0, [r4, r0]
	sub r0, r0, r2
	mov r2, #0x72
	ldrsh r6, [r4, r2]
	lsr r2, r1, #0x1f
	add r2, r1, r2
	asr r1, r2, #1
	sub r1, r6, r1
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r2, _02007B64 ; =0xFFFFFC18
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl NNS_G2dDrawSpriteFast
_02007B42:
	ldr r0, [sp, #0x14]
	add r4, #0xac
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, #0x20
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	bge _02007B58
	b _020077C2
_02007B58:
	ldr r0, _02007B68 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02007B64: .word 0xFFFFFC18
_02007B68: .word 0x04000448
	thumb_func_end sub_02007768

	thumb_func_start sub_02007B6C
sub_02007B6C: ; 0x02007B6C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02007B6C

	thumb_func_start sub_02007B98
sub_02007B98: ; 0x02007B98
	push {r3, r4}
	add r1, r0, #0
	mov r3, #0
	add r1, #0x59
	strb r3, [r1]
	add r1, r3, #0
_02007BA4:
	add r2, r0, r3
	add r2, #0x5c
	add r3, r3, #1
	strb r1, [r2]
	cmp r3, #0xa
	blt _02007BA4
	add r2, r0, #0
	add r2, #0x59
	ldrb r2, [r2]
	lsl r2, r2, #2
	add r3, r0, r2
	mov r2, #0x84
	ldrsb r4, [r3, r2]
	add r3, r2, #0
	sub r3, #0x85
	cmp r4, r3
	bne _02007BCE
	add r0, #0x5b
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_02007BCE:
	add r1, r0, #0
	mov r3, #1
	add r1, #0x58
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	ldrsb r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x5b
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	add r1, #0x85
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x5a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r2, r0, r1
	mov r1, #0x86
	ldrsb r1, [r2, r1]
	strh r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02007B98

	thumb_func_start sub_02007C10
sub_02007C10: ; 0x02007C10
	add r2, r0, #0
	ldr r3, _02007C20 ; =MI_CpuCopy8
	add r2, #0x84
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x28
	bx r3
	nop
_02007C20: .word MI_CpuCopy8
	thumb_func_end sub_02007C10

	thumb_func_start sub_02007C24
sub_02007C24: ; 0x02007C24
	add r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _02007C30
	mov r0, #1
	bx lr
_02007C30:
	mov r0, #0
	bx lr
	thumb_func_end sub_02007C24

	thumb_func_start sub_02007C34
sub_02007C34: ; 0x02007C34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x14]
	mov r4, #0
_02007C42:
	ldr r1, [r0, #0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	beq _02007C52
	add r4, r4, #1
	add r0, #0xac
	cmp r4, #4
	blt _02007C42
_02007C52:
	cmp r4, #4
	bne _02007C5A
	bl sub_02022974
_02007C5A:
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	add r2, r7, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02007C7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02007C34

	thumb_func_start sub_02007C7C
sub_02007C7C: ; 0x02007C7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	add r4, r0, #0
	mov r0, #0xac
	add r6, r1, #0
	mul r6, r0
	ldr r0, [r4, r6]
	str r2, [sp]
	lsl r0, r0, #0x1f
	str r3, [sp, #4]
	lsr r0, r0, #0x1f
	beq _02007C9C
	bl sub_02022974
_02007C9C:
	add r5, r4, r6
	mov r0, #0
	add r1, r5, #0
	mov r2, #0xac
	bl MIi_CpuClearFast
	ldr r1, [r4, r6]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r4, r6]
	ldr r1, [r4, r6]
	mov r0, #0x80
	orr r0, r1
	str r0, [r4, r6]
	mov r0, #0x80
	ldr r1, [r4, r6]
	add r0, #0x80
	orr r0, r1
	str r0, [r4, r6]
	add r2, r5, #0
	ldr r0, [r4, r6]
	mov r1, #0x7e
	bic r0, r1
	ldr r1, [sp, #0x24]
	add r7, r2, #4
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, r6]
	ldr r0, [sp, #8]
	mov ip, r0
	mov r3, ip
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	add r7, r2, #0
	ldr r3, [sp, #8]
	add r7, #0x14
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	str r3, [sp, #8]
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r7, r1, #0x10
	strh r0, [r2, #0x24]
	str r3, [sp, #8]
	ldr r1, [sp, #0x20]
	strh r7, [r2, #0x26]
	str r1, [r2, #0x28]
	mov r1, #0x80
	add r1, #0x80
	strh r1, [r2, #0x34]
	strh r1, [r2, #0x36]
	ldr r1, [r5, #0x54]
	mov r3, #0x7c
	bic r1, r3
	mov r3, #0x7c
	orr r1, r3
	str r1, [r5, #0x54]
	ldr r1, [r5, #0x50]
	mov r3, #0x1f
	bic r1, r3
	mov r3, #0x1f
	orr r3, r1
	ldr r1, _02007DB4 ; =0xFFFFFC1F
	and r1, r3
	mov r3, #0x1f
	lsl r3, r3, #5
	orr r3, r1
	ldr r1, _02007DB8 ; =0xFFFF83FF
	and r1, r3
	mov r3, #0x1f
	lsl r3, r3, #0xa
	orr r3, r1
	ldr r1, _02007DBC ; =0xFFF07FFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0xc
	orr r3, r1
	ldr r1, _02007DC0 ; =0xFE0FFFFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0x11
	orr r3, r1
	ldr r1, _02007DC4 ; =0xC1FFFFFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0x16
	orr r1, r3
	str r1, [r5, #0x50]
	ldr r1, [sp, #0x30]
	str r1, [r2, #0x68]
	add r1, r2, #0
	add r1, #0x70
	strh r0, [r1]
	add r2, #0x72
	add r0, r5, #0
	strh r7, [r2]
	add r0, #0x6c
	ldrh r1, [r0]
	mov r0, #4
	orr r1, r0
	add r0, r5, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x6c
	ldrh r1, [r0]
	mov r0, #8
	orr r1, r0
	add r0, r5, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x6c
	ldrh r1, [r0]
	mov r0, #0x10
	add r5, #0x6c
	orr r0, r1
	strh r0, [r5]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _02007DAC
	add r1, r4, r6
	add r1, #0x84
	mov r2, #0x28
	bl MI_CpuCopy8
_02007DAC:
	add r0, r4, r6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02007DB4: .word 0xFFFFFC1F
_02007DB8: .word 0xFFFF83FF
_02007DBC: .word 0xFFF07FFF
_02007DC0: .word 0xFE0FFFFF
_02007DC4: .word 0xC1FFFFFF
	thumb_func_end sub_02007C7C

	thumb_func_start sub_02007DC8
sub_02007DC8: ; 0x02007DC8
	ldr r2, [r0, #0]
	mov r1, #1
	bic r2, r1
	str r2, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02007DC8

	thumb_func_start sub_02007DD4
sub_02007DD4: ; 0x02007DD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02007DDA:
	add r0, r5, #0
	bl sub_02007DC8
	add r4, r4, #1
	add r5, #0xac
	cmp r4, #4
	blt _02007DDA
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02007DD4

	thumb_func_start sub_02007DEC
sub_02007DEC: ; 0x02007DEC
	cmp r1, #0x2e
	bls _02007DF2
	b _02008094
_02007DF2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02007DFE: ; jump table
	.short _02007E5C - _02007DFE - 2 ; case 0
	.short _02007E60 - _02007DFE - 2 ; case 1
	.short _02007E64 - _02007DFE - 2 ; case 2
	.short _02007E68 - _02007DFE - 2 ; case 3
	.short _02007E6C - _02007DFE - 2 ; case 4
	.short _02007E70 - _02007DFE - 2 ; case 5
	.short _02007E74 - _02007DFE - 2 ; case 6
	.short _02007E84 - _02007DFE - 2 ; case 7
	.short _02007E88 - _02007DFE - 2 ; case 8
	.short _02007E8C - _02007DFE - 2 ; case 9
	.short _02007E90 - _02007DFE - 2 ; case 10
	.short _02007E96 - _02007DFE - 2 ; case 11
	.short _02007E9C - _02007DFE - 2 ; case 12
	.short _02007EA0 - _02007DFE - 2 ; case 13
	.short _02007EA4 - _02007DFE - 2 ; case 14
	.short _02007EB4 - _02007DFE - 2 ; case 15
	.short _02007EBA - _02007DFE - 2 ; case 16
	.short _02007EC0 - _02007DFE - 2 ; case 17
	.short _02007EC6 - _02007DFE - 2 ; case 18
	.short _02007ECC - _02007DFE - 2 ; case 19
	.short _02007ED2 - _02007DFE - 2 ; case 20
	.short _02007ED8 - _02007DFE - 2 ; case 21
	.short _02007EDE - _02007DFE - 2 ; case 22
	.short _02007EE4 - _02007DFE - 2 ; case 23
	.short _02007EF4 - _02007DFE - 2 ; case 24
	.short _02007F04 - _02007DFE - 2 ; case 25
	.short _02007F14 - _02007DFE - 2 ; case 26
	.short _02007F24 - _02007DFE - 2 ; case 27
	.short _02007F34 - _02007DFE - 2 ; case 28
	.short _02007F44 - _02007DFE - 2 ; case 29
	.short _02007F54 - _02007DFE - 2 ; case 30
	.short _02007F6E - _02007DFE - 2 ; case 31
	.short _02007F7C - _02007DFE - 2 ; case 32
	.short _02007F8E - _02007DFE - 2 ; case 33
	.short _02007FA0 - _02007DFE - 2 ; case 34
	.short _02007FA6 - _02007DFE - 2 ; case 35
	.short _02007FBE - _02007DFE - 2 ; case 36
	.short _02007FD6 - _02007DFE - 2 ; case 37
	.short _02007FE6 - _02007DFE - 2 ; case 38
	.short _02008094 - _02007DFE - 2 ; case 39
	.short _02007FEC - _02007DFE - 2 ; case 40
	.short _02008004 - _02007DFE - 2 ; case 41
	.short _0200800A - _02007DFE - 2 ; case 42
	.short _0200802E - _02007DFE - 2 ; case 43
	.short _02008048 - _02007DFE - 2 ; case 44
	.short _02008062 - _02007DFE - 2 ; case 45
	.short _0200807C - _02007DFE - 2 ; case 46
_02007E5C:
	strh r2, [r0, #0x24]
	bx lr
_02007E60:
	strh r2, [r0, #0x26]
	bx lr
_02007E64:
	str r2, [r0, #0x28]
	bx lr
_02007E68:
	strh r2, [r0, #0x2c]
	bx lr
_02007E6C:
	strh r2, [r0, #0x2e]
	bx lr
_02007E70:
	str r2, [r0, #0x30]
	bx lr
_02007E74:
	ldr r3, [r0, #0x54]
	mov r1, #1
	bic r3, r1
	mov r1, #1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007E84:
	strh r2, [r0, #0x38]
	bx lr
_02007E88:
	strh r2, [r0, #0x3a]
	bx lr
_02007E8C:
	strh r2, [r0, #0x3c]
	bx lr
_02007E90:
	add r0, #0x40
	strh r2, [r0]
	bx lr
_02007E96:
	add r0, #0x42
	strh r2, [r0]
	bx lr
_02007E9C:
	strh r2, [r0, #0x34]
	bx lr
_02007EA0:
	strh r2, [r0, #0x36]
	bx lr
_02007EA4:
	ldr r3, [r0, #0x54]
	mov r1, #2
	bic r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x1e
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007EB4:
	add r0, #0x44
	strb r2, [r0]
	bx lr
_02007EBA:
	add r0, #0x45
	strb r2, [r0]
	bx lr
_02007EC0:
	add r0, #0x46
	strb r2, [r0]
	bx lr
_02007EC6:
	add r0, #0x47
	strb r2, [r0]
	bx lr
_02007ECC:
	add r0, #0x70
	strh r2, [r0]
	bx lr
_02007ED2:
	add r0, #0x72
	strh r2, [r0]
	bx lr
_02007ED8:
	add r0, #0x74
	strh r2, [r0]
	bx lr
_02007EDE:
	add r0, #0x76
	strh r2, [r0]
	bx lr
_02007EE4:
	ldr r3, [r0, #0x54]
	mov r1, #0x7c
	bic r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x19
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007EF4:
	ldr r3, [r0, #0x50]
	mov r1, #0x1f
	bic r3, r1
	mov r1, #0x1f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F04:
	ldr r3, [r0, #0x50]
	ldr r1, _02008098 ; =0xFFFFFC1F
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x16
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F14:
	ldr r3, [r0, #0x50]
	ldr r1, _0200809C ; =0xFFFF83FF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x11
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F24:
	ldr r3, [r0, #0x50]
	ldr r1, _020080A0 ; =0xFFF07FFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0xc
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F34:
	ldr r3, [r0, #0x50]
	ldr r1, _020080A4 ; =0xFE0FFFFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #7
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F44:
	ldr r3, [r0, #0x50]
	ldr r1, _020080A8 ; =0xC1FFFFFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #2
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007F54:
	ldr r3, [r0, #0x54]
	ldr r1, _020080AC ; =0xFFFFEFFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x13
	orr r1, r3
	str r1, [r0, #0x54]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007F6E:
	str r2, [r0, #0x4c]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007F7C:
	add r1, r0, #0
	add r1, #0x48
	strb r2, [r1]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007F8E:
	add r1, r0, #0
	add r1, #0x49
	strb r2, [r1]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007FA0:
	add r0, #0x4a
	strb r2, [r0]
	bx lr
_02007FA6:
	ldr r3, [r0, #0x54]
	ldr r1, _020080B0 ; =0xFFFFFDFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x16
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0, #0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007FBE:
	ldr r3, [r0, #0x54]
	ldr r1, _020080B4 ; =0xFFFFFBFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x15
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0, #0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02007FD6:
	ldr r3, [r0, #0x54]
	ldr r1, _020080B8 ; =0xFFFFF7FF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x14
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007FE6:
	add r0, #0x5b
	strb r2, [r0]
	bx lr
_02007FEC:
	ldr r3, [r0, #0x54]
	ldr r1, _020080BC ; =0xFFFE1FFF
	and r3, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0xf
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0, #0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_02008004:
	add r0, #0x6e
	strb r2, [r0]
	bx lr
_0200800A:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #3
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	mov r2, #3
	and r1, r2
	orr r3, r1
	add r1, r0, #0
	add r1, #0x6c
	strh r3, [r1]
	ldr r1, [r0, #0]
	add r2, #0xfd
	orr r1, r2
	str r1, [r0, #0]
	bx lr
_0200802E:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #4
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r1, r3
	strh r1, [r0]
	bx lr
_02008048:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #8
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1c
	orr r1, r3
	strh r1, [r0]
	bx lr
_02008062:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #0x10
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r1, r3
	strh r1, [r0]
	bx lr
_0200807C:
	add r1, r0, #0
	add r1, #0x6c
	ldrh r3, [r1]
	mov r1, #0x60
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r1, r3
	strh r1, [r0]
_02008094:
	bx lr
	nop
_02008098: .word 0xFFFFFC1F
_0200809C: .word 0xFFFF83FF
_020080A0: .word 0xFFF07FFF
_020080A4: .word 0xFE0FFFFF
_020080A8: .word 0xC1FFFFFF
_020080AC: .word 0xFFFFEFFF
_020080B0: .word 0xFFFFFDFF
_020080B4: .word 0xFFFFFBFF
_020080B8: .word 0xFFFFF7FF
_020080BC: .word 0xFFFE1FFF
	thumb_func_end sub_02007DEC

	thumb_func_start sub_020080C0
sub_020080C0: ; 0x020080C0
	push {r3, lr}
	cmp r1, #0x2e
	bls _020080C8
	b _0200826A
_020080C8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020080D4: ; jump table
	.short _02008132 - _020080D4 - 2 ; case 0
	.short _02008138 - _020080D4 - 2 ; case 1
	.short _0200813E - _020080D4 - 2 ; case 2
	.short _02008142 - _020080D4 - 2 ; case 3
	.short _02008148 - _020080D4 - 2 ; case 4
	.short _0200814E - _020080D4 - 2 ; case 5
	.short _02008152 - _020080D4 - 2 ; case 6
	.short _0200815A - _020080D4 - 2 ; case 7
	.short _0200815E - _020080D4 - 2 ; case 8
	.short _02008162 - _020080D4 - 2 ; case 9
	.short _02008166 - _020080D4 - 2 ; case 10
	.short _0200816C - _020080D4 - 2 ; case 11
	.short _02008172 - _020080D4 - 2 ; case 12
	.short _02008178 - _020080D4 - 2 ; case 13
	.short _0200817E - _020080D4 - 2 ; case 14
	.short _02008186 - _020080D4 - 2 ; case 15
	.short _0200818C - _020080D4 - 2 ; case 16
	.short _02008192 - _020080D4 - 2 ; case 17
	.short _02008198 - _020080D4 - 2 ; case 18
	.short _0200819E - _020080D4 - 2 ; case 19
	.short _020081A4 - _020080D4 - 2 ; case 20
	.short _020081AA - _020080D4 - 2 ; case 21
	.short _020081B0 - _020080D4 - 2 ; case 22
	.short _020081B6 - _020080D4 - 2 ; case 23
	.short _020081BE - _020080D4 - 2 ; case 24
	.short _020081C6 - _020080D4 - 2 ; case 25
	.short _020081CE - _020080D4 - 2 ; case 26
	.short _020081D6 - _020080D4 - 2 ; case 27
	.short _020081DE - _020080D4 - 2 ; case 28
	.short _020081E6 - _020080D4 - 2 ; case 29
	.short _020081EE - _020080D4 - 2 ; case 30
	.short _020081F6 - _020080D4 - 2 ; case 31
	.short _020081FA - _020080D4 - 2 ; case 32
	.short _02008200 - _020080D4 - 2 ; case 33
	.short _02008206 - _020080D4 - 2 ; case 34
	.short _0200820C - _020080D4 - 2 ; case 35
	.short _02008214 - _020080D4 - 2 ; case 36
	.short _0200821C - _020080D4 - 2 ; case 37
	.short _02008224 - _020080D4 - 2 ; case 38
	.short _0200826A - _020080D4 - 2 ; case 39
	.short _0200822A - _020080D4 - 2 ; case 40
	.short _02008232 - _020080D4 - 2 ; case 41
	.short _02008238 - _020080D4 - 2 ; case 42
	.short _02008242 - _020080D4 - 2 ; case 43
	.short _0200824C - _020080D4 - 2 ; case 44
	.short _02008256 - _020080D4 - 2 ; case 45
	.short _02008260 - _020080D4 - 2 ; case 46
_02008132:
	mov r1, #0x24
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008138:
	mov r1, #0x26
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_0200813E:
	ldr r0, [r0, #0x28]
	pop {r3, pc}
_02008142:
	mov r1, #0x2c
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008148:
	mov r1, #0x2e
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_0200814E:
	ldr r0, [r0, #0x30]
	pop {r3, pc}
_02008152:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0200815A:
	ldrh r0, [r0, #0x38]
	pop {r3, pc}
_0200815E:
	ldrh r0, [r0, #0x3a]
	pop {r3, pc}
_02008162:
	ldrh r0, [r0, #0x3c]
	pop {r3, pc}
_02008166:
	mov r1, #0x40
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_0200816C:
	mov r1, #0x42
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008172:
	mov r1, #0x34
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02008178:
	mov r1, #0x36
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_0200817E:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008186:
	add r0, #0x44
	ldrb r0, [r0]
	pop {r3, pc}
_0200818C:
	add r0, #0x45
	ldrb r0, [r0]
	pop {r3, pc}
_02008192:
	add r0, #0x46
	ldrb r0, [r0]
	pop {r3, pc}
_02008198:
	add r0, #0x47
	ldrb r0, [r0]
	pop {r3, pc}
_0200819E:
	mov r1, #0x70
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020081A4:
	mov r1, #0x72
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020081AA:
	mov r1, #0x74
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020081B0:
	mov r1, #0x76
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020081B6:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081BE:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081C6:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081CE:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081D6:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081DE:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #7
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081E6:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #2
	lsr r0, r0, #0x1b
	pop {r3, pc}
_020081EE:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	pop {r3, pc}
_020081F6:
	ldr r0, [r0, #0x4c]
	pop {r3, pc}
_020081FA:
	add r0, #0x48
	ldrb r0, [r0]
	pop {r3, pc}
_02008200:
	add r0, #0x49
	ldrb r0, [r0]
	pop {r3, pc}
_02008206:
	add r0, #0x4a
	ldrb r0, [r0]
	pop {r3, pc}
_0200820C:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008214:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0200821C:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008224:
	add r0, #0x5b
	ldrb r0, [r0]
	pop {r3, pc}
_0200822A:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	pop {r3, pc}
_02008232:
	mov r1, #0x6e
	ldrsb r0, [r0, r1]
	pop {r3, pc}
_02008238:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	pop {r3, pc}
_02008242:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0200824C:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008256:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02008260:
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	pop {r3, pc}
_0200826A:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020080C0

	thumb_func_start sub_02008274
sub_02008274: ; 0x02008274
	push {r3, r4}
	add r3, r0, #0
	add r0, r2, #0
	cmp r1, #0x2e
	bls _02008280
	b _020086A6
_02008280:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200828C: ; jump table
	.short _020082EA - _0200828C - 2 ; case 0
	.short _020082F6 - _0200828C - 2 ; case 1
	.short _02008302 - _0200828C - 2 ; case 2
	.short _0200830C - _0200828C - 2 ; case 3
	.short _02008318 - _0200828C - 2 ; case 4
	.short _02008324 - _0200828C - 2 ; case 5
	.short _0200832E - _0200828C - 2 ; case 6
	.short _02008348 - _0200828C - 2 ; case 7
	.short _02008352 - _0200828C - 2 ; case 8
	.short _0200835C - _0200828C - 2 ; case 9
	.short _02008366 - _0200828C - 2 ; case 10
	.short _02008374 - _0200828C - 2 ; case 11
	.short _02008382 - _0200828C - 2 ; case 12
	.short _0200838E - _0200828C - 2 ; case 13
	.short _0200839A - _0200828C - 2 ; case 14
	.short _020083B4 - _0200828C - 2 ; case 15
	.short _020083C4 - _0200828C - 2 ; case 16
	.short _020083D4 - _0200828C - 2 ; case 17
	.short _020083E4 - _0200828C - 2 ; case 18
	.short _020083F4 - _0200828C - 2 ; case 19
	.short _02008402 - _0200828C - 2 ; case 20
	.short _02008410 - _0200828C - 2 ; case 21
	.short _0200841E - _0200828C - 2 ; case 22
	.short _0200842C - _0200828C - 2 ; case 23
	.short _02008446 - _0200828C - 2 ; case 24
	.short _02008460 - _0200828C - 2 ; case 25
	.short _02008478 - _0200828C - 2 ; case 26
	.short _02008490 - _0200828C - 2 ; case 27
	.short _020084A8 - _0200828C - 2 ; case 28
	.short _020084C0 - _0200828C - 2 ; case 29
	.short _020084D8 - _0200828C - 2 ; case 30
	.short _020084FA - _0200828C - 2 ; case 31
	.short _0200850E - _0200828C - 2 ; case 32
	.short _0200852A - _0200828C - 2 ; case 33
	.short _02008546 - _0200828C - 2 ; case 34
	.short _02008556 - _0200828C - 2 ; case 35
	.short _02008576 - _0200828C - 2 ; case 36
	.short _02008596 - _0200828C - 2 ; case 37
	.short _020085AE - _0200828C - 2 ; case 38
	.short _020086A6 - _0200828C - 2 ; case 39
	.short _020085BE - _0200828C - 2 ; case 40
	.short _020085DE - _0200828C - 2 ; case 41
	.short _020085EC - _0200828C - 2 ; case 42
	.short _0200861A - _0200828C - 2 ; case 43
	.short _0200863E - _0200828C - 2 ; case 44
	.short _02008662 - _0200828C - 2 ; case 45
	.short _02008686 - _0200828C - 2 ; case 46
_020082EA:
	mov r1, #0x24
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x24]
	pop {r3, r4}
	bx lr
_020082F6:
	mov r1, #0x26
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x26]
	pop {r3, r4}
	bx lr
_02008302:
	ldr r1, [r3, #0x28]
	add r0, r1, r0
	str r0, [r3, #0x28]
	pop {r3, r4}
	bx lr
_0200830C:
	mov r1, #0x2c
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x2c]
	pop {r3, r4}
	bx lr
_02008318:
	mov r1, #0x2e
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x2e]
	pop {r3, r4}
	bx lr
_02008324:
	ldr r1, [r3, #0x30]
	add r0, r1, r0
	str r0, [r3, #0x30]
	pop {r3, r4}
	bx lr
_0200832E:
	ldr r4, [r3, #0x54]
	mov r2, #1
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1f
	lsr r2, r2, #0x1f
	add r2, r2, r0
	mov r0, #1
	and r0, r2
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_02008348:
	ldrh r1, [r3, #0x38]
	add r0, r1, r0
	strh r0, [r3, #0x38]
	pop {r3, r4}
	bx lr
_02008352:
	ldrh r1, [r3, #0x3a]
	add r0, r1, r0
	strh r0, [r3, #0x3a]
	pop {r3, r4}
	bx lr
_0200835C:
	ldrh r1, [r3, #0x3c]
	add r0, r1, r0
	strh r0, [r3, #0x3c]
	pop {r3, r4}
	bx lr
_02008366:
	mov r1, #0x40
	ldrsh r1, [r3, r1]
	add r3, #0x40
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008374:
	mov r1, #0x42
	ldrsh r1, [r3, r1]
	add r3, #0x42
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008382:
	mov r1, #0x34
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x34]
	pop {r3, r4}
	bx lr
_0200838E:
	mov r1, #0x36
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x36]
	pop {r3, r4}
	bx lr
_0200839A:
	ldr r4, [r3, #0x54]
	mov r2, #2
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1e
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1e
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_020083B4:
	add r1, r3, #0
	add r1, #0x44
	ldrb r1, [r1]
	add r3, #0x44
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020083C4:
	add r1, r3, #0
	add r1, #0x45
	ldrb r1, [r1]
	add r3, #0x45
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020083D4:
	add r1, r3, #0
	add r1, #0x46
	ldrb r1, [r1]
	add r3, #0x46
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020083E4:
	add r1, r3, #0
	add r1, #0x47
	ldrb r1, [r1]
	add r3, #0x47
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020083F4:
	mov r1, #0x70
	ldrsh r1, [r3, r1]
	add r3, #0x70
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008402:
	mov r1, #0x72
	ldrsh r1, [r3, r1]
	add r3, #0x72
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008410:
	mov r1, #0x74
	ldrsh r1, [r3, r1]
	add r3, #0x74
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_0200841E:
	mov r1, #0x76
	ldrsh r1, [r3, r1]
	add r3, #0x76
	add r0, r1, r0
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_0200842C:
	ldr r4, [r3, #0x54]
	mov r2, #0x7c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x19
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x19
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_02008446:
	ldr r4, [r3, #0x50]
	mov r2, #0x1f
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1b
	lsr r2, r2, #0x1b
	add r2, r2, r0
	mov r0, #0x1f
	and r0, r2
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008460:
	ldr r2, [r3, #0x50]
	ldr r1, _020086AC ; =0xFFFFFC1F
	and r1, r2
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008478:
	ldr r2, [r3, #0x50]
	ldr r1, _020086B0 ; =0xFFFF83FF
	and r1, r2
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_02008490:
	ldr r2, [r3, #0x50]
	ldr r1, _020086B4 ; =0xFFF07FFF
	and r1, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_020084A8:
	ldr r2, [r3, #0x50]
	ldr r1, _020086B8 ; =0xFE0FFFFF
	and r1, r2
	lsl r2, r2, #7
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_020084C0:
	ldr r2, [r3, #0x50]
	ldr r1, _020086BC ; =0xC1FFFFFF
	and r1, r2
	lsl r2, r2, #2
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3, r4}
	bx lr
_020084D8:
	ldr r2, [r3, #0x54]
	ldr r1, _020086C0 ; =0xFFFFEFFF
	and r1, r2
	lsl r2, r2, #0x13
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r3, #0x54]
	mov r0, #1
	ldr r1, [r3, #0]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_020084FA:
	ldr r1, [r3, #0x4c]
	add r0, r1, r0
	str r0, [r3, #0x4c]
	mov r0, #1
	ldr r1, [r3, #0]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_0200850E:
	add r1, r3, #0
	add r1, #0x48
	ldrb r1, [r1]
	add r1, r1, r0
	add r0, r3, #0
	add r0, #0x48
	strb r1, [r0]
	mov r0, #1
	ldr r1, [r3, #0]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_0200852A:
	add r1, r3, #0
	add r1, #0x49
	ldrb r1, [r1]
	add r1, r1, r0
	add r0, r3, #0
	add r0, #0x49
	strb r1, [r0]
	mov r0, #1
	ldr r1, [r3, #0]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_02008546:
	add r1, r3, #0
	add r1, #0x4a
	ldrb r1, [r1]
	add r3, #0x4a
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_02008556:
	ldr r2, [r3, #0x54]
	ldr r1, _020086C4 ; =0xFFFFFDFF
	and r1, r2
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3, #0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_02008576:
	ldr r2, [r3, #0x54]
	ldr r1, _020086C8 ; =0xFFFFFBFF
	and r1, r2
	lsl r2, r2, #0x15
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x15
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3, #0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_02008596:
	ldr r2, [r3, #0x54]
	ldr r1, _020086CC ; =0xFFFFF7FF
	and r1, r2
	lsl r2, r2, #0x14
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x14
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3, r4}
	bx lr
_020085AE:
	add r1, r3, #0
	add r1, #0x5b
	ldrb r1, [r1]
	add r3, #0x5b
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020085BE:
	ldr r2, [r3, #0x54]
	ldr r1, _020086D0 ; =0xFFFE1FFF
	and r1, r2
	lsl r2, r2, #0xf
	lsr r2, r2, #0x1c
	add r0, r2, r0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0xf
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3, #0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_020085DE:
	mov r1, #0x6e
	ldrsb r1, [r3, r1]
	add r3, #0x6e
	add r0, r1, r0
	strb r0, [r3]
	pop {r3, r4}
	bx lr
_020085EC:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #3
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1e
	lsr r2, r2, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #3
	and r0, r2
	orr r1, r0
	add r0, r3, #0
	add r0, #0x6c
	strh r1, [r0]
	ldr r0, [r3, #0]
	add r2, #0xfd
	orr r0, r2
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
_0200861A:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #4
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1d
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1d
	orr r0, r1
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_0200863E:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #8
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1c
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1c
	orr r0, r1
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008662:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #0x10
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1b
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strh r0, [r3]
	pop {r3, r4}
	bx lr
_02008686:
	add r1, r3, #0
	add r1, #0x6c
	ldrh r4, [r1]
	mov r2, #0x60
	add r3, #0x6c
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x19
	lsr r2, r2, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x19
	orr r0, r1
	strh r0, [r3]
_020086A6:
	pop {r3, r4}
	bx lr
	nop
_020086AC: .word 0xFFFFFC1F
_020086B0: .word 0xFFFF83FF
_020086B4: .word 0xFFF07FFF
_020086B8: .word 0xFE0FFFFF
_020086BC: .word 0xC1FFFFFF
_020086C0: .word 0xFFFFEFFF
_020086C4: .word 0xFFFFFDFF
_020086C8: .word 0xFFFFFBFF
_020086CC: .word 0xFFFFF7FF
_020086D0: .word 0xFFFE1FFF
	thumb_func_end sub_02008274

	thumb_func_start sub_020086D4
sub_020086D4: ; 0x020086D4
	push {r4, r5}
	ldr r5, [r0, #0x54]
	mov r4, #2
	orr r4, r5
	str r4, [r0, #0x54]
	add r4, r0, #0
	add r4, #0x44
	strb r1, [r4]
	add r1, r0, #0
	add r1, #0x45
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x46
	strb r3, [r1]
	ldr r1, [sp, #8]
	add r0, #0x47
	strb r1, [r0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020086D4

	thumb_func_start sub_020086FC
sub_020086FC: ; 0x020086FC
	push {r4, r5}
	mov r4, #1
	ldr r5, [r0, #0x54]
	lsl r4, r4, #0xc
	orr r4, r5
	str r4, [r0, #0x54]
	add r4, r0, #0
	add r4, #0x48
	strb r1, [r4]
	add r1, r0, #0
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x4a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4b
	strb r3, [r1]
	ldr r1, [sp, #8]
	str r1, [r0, #0x4c]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020086FC

	thumb_func_start sub_0200872C
sub_0200872C: ; 0x0200872C
	push {r4, r5, r6, r7}
	add r4, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
	lsl r0, r3, #0x18
	ldr r2, [sp, #0x10]
	mov r1, #0
	lsr r0, r0, #0x18
_02008744:
	ldr r3, [r4, #0]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1f
	beq _02008772
	mov r3, #1
	ldr r7, [r4, #0x54]
	lsl r3, r3, #0xc
	orr r3, r7
	str r3, [r4, #0x54]
	add r3, r4, #0
	add r3, #0x48
	strb r6, [r3]
	add r3, r4, #0
	add r3, #0x49
	add r7, r4, #0
	strb r5, [r3]
	add r7, #0x4a
	mov r3, #0
	strb r3, [r7]
	add r3, r4, #0
	add r3, #0x4b
	strb r0, [r3]
	str r2, [r4, #0x4c]
_02008772:
	add r1, r1, #1
	add r4, #0xac
	cmp r1, #4
	blt _02008744
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0200872C

	thumb_func_start sub_02008780
sub_02008780: ; 0x02008780
	ldr r2, [r0, #0x54]
	ldr r1, _020087B0 ; =0xFFFFEFFF
	and r1, r2
	str r1, [r0, #0x54]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x48
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4b
	strb r2, [r1]
	str r2, [r0, #0x4c]
	mov r1, #1
	ldr r2, [r0, #0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020087B0: .word 0xFFFFEFFF
	thumb_func_end sub_02008780

	thumb_func_start sub_020087B4
sub_020087B4: ; 0x020087B4
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _020087C2
	mov r0, #1
	bx lr
_020087C2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020087B4

	thumb_func_start sub_020087C8
sub_020087C8: ; 0x020087C8
	mov r2, #0x28
	sub r2, r2, r1
	mov r1, #0x36
	ldrsh r1, [r0, r1]
	mul r1, r2
	asr r1, r1, #8
	sub r1, r2, r1
	strh r1, [r0, #0x2e]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020087C8

	thumb_func_start sub_020087DC
sub_020087DC: ; 0x020087DC
	push {r4, r5, r6, r7}
	add r1, r0, #0
	add r1, #0x58
	ldrb r1, [r1]
	cmp r1, #0
	beq _020088D2
	add r1, r0, #0
	add r1, #0x5a
	ldrb r1, [r1]
	cmp r1, #0
	bne _020088C6
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	add r6, r0, #0
	add r6, #0x59
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0x59
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r3, [r1]
	lsl r1, r3, #2
	add r2, r0, r1
	mov r1, #0x84
	ldrsb r4, [r2, r1]
	sub r1, #0x85
	cmp r4, r1
	bge _02008878
	mov r2, #0
	sub r1, r2, #2
_0200881C:
	add r4, r0, r3
	add r4, #0x5c
	ldrb r4, [r4]
	add r3, r0, r3
	add r3, #0x5c
	add r4, r4, #1
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0x59
	ldrb r5, [r3]
	lsl r3, r5, #2
	add r4, r0, r3
	add r3, r4, #0
	add r7, r0, r5
	add r3, #0x85
	add r7, #0x5c
	ldrb r3, [r3]
	ldrb r7, [r7]
	cmp r3, r7
	beq _02008848
	cmp r3, #0
	bne _02008856
_02008848:
	add r3, r0, r5
	add r3, #0x5c
	strb r2, [r3]
	ldrb r3, [r6]
	add r3, r3, #1
	strb r3, [r6]
	b _02008862
_02008856:
	mov r3, #0x84
	ldrsb r3, [r4, r3]
	sub r4, r1, r3
	add r3, r0, #0
	add r3, #0x59
	strb r4, [r3]
_02008862:
	add r3, r0, #0
	add r3, #0x59
	ldrb r3, [r3]
	lsl r4, r3, #2
	add r5, r0, r4
	mov r4, #0x84
	ldrsb r4, [r5, r4]
	mov r5, #0
	mvn r5, r5
	cmp r4, r5
	blt _0200881C
_02008878:
	cmp r3, #0xa
	bhs _02008884
	mov r1, #0
	mvn r1, r1
	cmp r4, r1
	bne _02008898
_02008884:
	add r1, r0, #0
	mov r2, #0
	add r1, #0x5b
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x58
	strb r2, [r1]
	strh r2, [r0, #0x2c]
	pop {r4, r5, r6, r7}
	bx lr
_02008898:
	add r1, r0, #0
	add r1, #0x5b
	strb r4, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r0, r1
	add r1, #0x85
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x5a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x59
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r2, r0, r1
	mov r1, #0x86
	ldrsb r1, [r2, r1]
	strh r1, [r0, #0x2c]
	pop {r4, r5, r6, r7}
	bx lr
_020088C6:
	add r1, r0, #0
	add r1, #0x5a
	ldrb r1, [r1]
	add r0, #0x5a
	sub r1, r1, #1
	strb r1, [r0]
_020088D2:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020087DC

	thumb_func_start sub_020088D8
sub_020088D8: ; 0x020088D8
	ldr r3, _020088DC ; =sub_020087DC
	bx r3
	; .align 2, 0
_020088DC: .word sub_020087DC
	thumb_func_end sub_020088D8

	thumb_func_start sub_020088E0
sub_020088E0: ; 0x020088E0
	mov r2, #1
	strb r2, [r0]
	mov r3, #0
	strb r3, [r0, #2]
	ldrsb r2, [r1, r3]
	strb r2, [r0, #1]
	ldrb r2, [r1, #1]
	strb r2, [r0, #3]
	str r1, [r0, #0x10]
	add r2, r3, #0
_020088F4:
	add r1, r0, r3
	add r3, r3, #1
	strb r2, [r1, #4]
	cmp r3, #0xa
	blt _020088F4
	bx lr
	thumb_func_end sub_020088E0

	thumb_func_start sub_02008900
sub_02008900: ; 0x02008900
	push {r4, r5, r6, r7}
	ldrb r1, [r0]
	cmp r1, #0
	beq _02008996
	add r3, r0, #2
	ldr r4, [r0, #0x10]
	cmp r1, #0
	beq _02008990
	ldrb r1, [r0, #3]
	cmp r1, #0
	bne _0200898C
	ldrb r1, [r3]
	add r1, r1, #1
	strb r1, [r3]
	ldrb r2, [r3]
	mov r1, #0
	mvn r1, r1
	lsl r5, r2, #2
	ldrsb r6, [r4, r5]
	cmp r6, r1
	bge _02008968
	mov r1, #0
_0200892C:
	add r5, r0, r2
	ldrb r2, [r5, #4]
	add r2, r2, #1
	strb r2, [r5, #4]
	ldrb r2, [r3]
	add r5, r0, r2
	lsl r2, r2, #2
	add r2, r4, r2
	ldrb r7, [r2, #1]
	ldrb r6, [r5, #4]
	cmp r7, r6
	beq _02008948
	cmp r7, #0
	bne _0200894E
_02008948:
	strb r1, [r5, #4]
	add r3, r3, #1
	b _0200895A
_0200894E:
	mov r5, #0
	ldrsb r5, [r2, r5]
	mov r2, #1
	mvn r2, r2
	sub r2, r2, r5
	strb r2, [r3]
_0200895A:
	ldrb r2, [r3]
	mov r6, #0
	mvn r6, r6
	lsl r5, r2, #2
	ldrsb r7, [r4, r5]
	cmp r7, r6
	blt _0200892C
_02008968:
	ldrsb r5, [r4, r5]
	mov r1, #0
	mvn r1, r1
	cmp r5, r1
	beq _02008976
	cmp r2, #0xa
	blo _0200897E
_02008976:
	mov r1, #0
	strb r1, [r0, #1]
	strb r1, [r0]
	b _02008990
_0200897E:
	strb r5, [r0, #1]
	ldrb r1, [r3]
	lsl r1, r1, #2
	add r1, r4, r1
	ldrb r1, [r1, #1]
	strb r1, [r0, #3]
	b _02008990
_0200898C:
	sub r1, r1, #1
	strb r1, [r0, #3]
_02008990:
	ldrb r0, [r0, #1]
	pop {r4, r5, r6, r7}
	bx lr
_02008996:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02008900

	thumb_func_start sub_020089A0
sub_020089A0: ; 0x020089A0
	ldr r2, [r0, #0]
	mov r1, #0x80
	orr r2, r1
	add r1, #0x80
	orr r1, r2
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020089A0

	thumb_func_start sub_020089B0
sub_020089B0: ; 0x020089B0
	push {r3, r4}
	add r2, r0, #0
	add r3, r2, #0
	add r4, r2, #4
	add r3, #0x14
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	add r0, #0x6c
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x78
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x6e
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x7a
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x70
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x7c
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x72
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x7e
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x74
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x80
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x76
	ldrh r0, [r0]
	add r2, #0x82
	strh r0, [r2]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020089B0

	thumb_func_start sub_02008A0C
sub_02008A0C: ; 0x02008A0C
	push {r3, r4}
	add r2, r0, #0
	add r4, r2, #0
	add r4, #0x14
	add r3, r2, #4
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	add r0, #0x78
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x7a
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x6e
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x7c
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x70
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x7e
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x72
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x80
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x74
	strh r1, [r0]
	add r0, r2, #0
	add r0, #0x82
	ldrh r1, [r0]
	add r0, r2, #0
	add r0, #0x76
	strh r1, [r0]
	ldr r1, [r2, #0]
	mov r0, #0x80
	orr r1, r0
	add r0, #0x80
	orr r0, r1
	str r0, [r2, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02008A0C

	thumb_func_start sub_02008A78
sub_02008A78: ; 0x02008A78
	mov r3, #0xbb
	lsl r3, r3, #2
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end sub_02008A78

	thumb_func_start sub_02008A84
sub_02008A84: ; 0x02008A84
	mov r3, #0xbd
	lsl r3, r3, #2
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end sub_02008A84

	thumb_func_start sub_02008A90
sub_02008A90: ; 0x02008A90
	add r0, r0, #4
	bx lr
	thumb_func_end sub_02008A90

	thumb_func_start sub_02008A94
sub_02008A94: ; 0x02008A94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02008B24 ; =0x00000331
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02008AE2
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x81
	add r0, r4, r0
	bl NNS_G2dInitImageProxy
	mov r3, #0xc2
	lsl r3, r3, #2
	mov r1, #0x20
	strh r1, [r4, r3]
	add r0, r3, #2
	strh r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0x18
	ldr r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x10
	str r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0xc
	ldr r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x14
	str r1, [r4, r0]
	add r1, r3, #0
	sub r1, #0x1c
	add r0, r4, r3
	sub r3, #0x58
	ldr r1, [r4, r1]
	mov r2, #0
	add r3, r4, r3
	bl NNS_G2dLoadImage2DMapping
_02008AE2:
	ldr r0, _02008B28 ; =0x00000332
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02008B22
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, #0x5e
	add r0, r4, r0
	bl NNS_G2dInitImagePaletteProxy
	mov r3, #0xbe
	lsl r3, r3, #2
	add r0, r3, #0
	ldr r1, [r4, r3]
	add r0, #0x30
	str r1, [r4, r0]
	add r0, r3, #0
	add r0, #8
	ldr r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x34
	str r1, [r4, r0]
	add r0, r3, #0
	sub r1, r3, #4
	add r0, #0x28
	sub r3, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	add r3, r4, r3
	bl NNS_G2dLoadPalette
_02008B22:
	pop {r4, pc}
	; .align 2, 0
_02008B24: .word 0x00000331
_02008B28: .word 0x00000332
	thumb_func_end sub_02008A94

	thumb_func_start sub_02008B2C
sub_02008B2C: ; 0x02008B2C
	ldr r2, _02008B34 ; =0x00000333
	strb r1, [r0, r2]
	bx lr
	nop
_02008B34: .word 0x00000333
	thumb_func_end sub_02008B2C

	thumb_func_start sub_02008B38
sub_02008B38: ; 0x02008B38
	push {r4, lr}
	add r4, r0, #0
	bne _02008B42
	bl sub_02022974
_02008B42:
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02008B4E
	mov r0, #1
	pop {r4, pc}
_02008B4E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02008B38

	thumb_func_start sub_02008B54
sub_02008B54: ; 0x02008B54
	mov r2, #0xcd
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	orr r1, r3
	str r1, [r0, r2]
	bx lr
	thumb_func_end sub_02008B54

	thumb_func_start sub_02008B60
sub_02008B60: ; 0x02008B60
	push {r3, r4}
	mov r3, #0xcd
	lsl r3, r3, #2
	mov r2, #0
	mvn r2, r2
	ldr r4, [r0, r3]
	eor r1, r2
	and r1, r4
	str r1, [r0, r3]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02008B60

	thumb_func_start sub_02008B78
sub_02008B78: ; 0x02008B78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x44]
	str r0, [sp, #0x38]
_02008B8A:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _02008B9A
	lsl r0, r1, #0x18
	lsr r0, r0, #0x1f
	bne _02008B9C
_02008B9A:
	b _02008F96
_02008B9C:
	mov r0, #0x80
	bic r1, r0
	ldr r0, [sp, #0x44]
	mov r2, #0xba
	str r1, [r0, #0]
	mov r0, #1
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x44]
	lsl r2, r2, #2
	ldrh r0, [r0, #4]
	ldrh r1, [r1, #6]
	ldr r2, [r6, r2]
	bl sub_02006AC0
	add r1, sp, #0x58
	str r0, [sp, #0x4c]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #0x58]
	mov r1, #0xc3
	ldr r0, [r0, #4]
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [sp, #0x58]
	ldr r2, [r0, #8]
	add r0, r1, #4
	str r2, [r6, r0]
	ldr r0, [sp, #0x58]
	add r1, #8
	ldr r0, [r0, #0xc]
	str r0, [r6, r1]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x44]
	ldr r0, [r0, #0x14]
	ldrh r1, [r1, #4]
	str r0, [sp, #0x50]
	bl sub_020093A0
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x50]
	bl sub_020091C0
	ldr r0, [sp, #0x54]
	cmp r0, #3
	beq _02008BFA
	b _02008E28
_02008BFA:
	mov r5, #0
	add r0, r5, #0
	str r5, [sp, #0x14]
	str r0, [sp, #0x24]
_02008C02:
	ldr r0, [sp, #0x14]
	mov r1, #0x4f
	sub r2, r1, r0
	mov r0, #0x50
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x50]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x24]
	add r7, r1, r0
	ldr r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	lsl r0, r0, #7
	str r0, [sp, #0x10]
_02008C2A:
	cmp r4, #0x28
	bge _02008D16
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _02008C5A
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _02008C5A
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008C5A:
	cmp r0, #0
	beq _02008C7A
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008C7A:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _02008C98
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r0, [sp, #0x20]
	ldr r1, [r6, r1]
	ldrb r0, [r0]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008C98:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #0xc]
	beq _02008D04
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #1
	bl _u32_div_f
	cmp r1, #0
	beq _02008CC8
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r0, r4, r0
	add r0, #0x50
	add r1, r5, r1
	add r1, r4, r1
	ldrb r0, [r0]
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008CC8:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl _u32_div_f
	cmp r1, #0
	beq _02008CEA
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r2, r5, r0
	add r0, r2, r4
	add r0, #0x4f
	ldrb r1, [r0]
	add r0, r2, r4
	add r0, #0x50
	strb r1, [r0]
	b _02008E02
_02008CEA:
	ldrb r1, [r7]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008D04:
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r7]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1]
	b _02008E02
_02008D16:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _02008D46
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _02008D46
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008D46:
	cmp r0, #0
	beq _02008D6A
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008D6A:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _02008D88
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r0, [sp, #0x20]
	ldr r1, [r6, r1]
	ldrb r0, [r0]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008D88:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #8]
	beq _02008DF2
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #1
	bl _u32_div_f
	cmp r1, #0
	beq _02008DB8
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r2, r4, r0
	ldr r0, _02008FBC ; =0x00002828
	add r1, r5, r1
	ldrb r0, [r2, r0]
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008DB8:
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl _u32_div_f
	cmp r1, #0
	beq _02008DD8
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02008FC0 ; =0x00002827
	add r0, r5, r0
	add r0, r0, r4
	ldrb r2, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
	b _02008E02
_02008DD8:
	ldrb r1, [r7]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
	b _02008E02
_02008DF2:
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r7]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _02008FBC ; =0x00002828
	strb r0, [r2, r1]
_02008E02:
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	add r0, r0, #1
	add r7, r7, #1
	str r0, [sp, #0x20]
	cmp r4, #0x50
	bge _02008E12
	b _02008C2A
_02008E12:
	ldr r0, [sp, #0x24]
	add r5, #0x80
	add r0, #0x50
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x50
	bge _02008E26
	b _02008C02
_02008E26:
	b _02008F90
_02008E28:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
_02008E30:
	ldr r0, [sp]
	mov r1, #0x4f
	sub r2, r1, r0
	mov r0, #0x50
	add r1, r2, #0
	mul r1, r0
	ldr r0, [sp, #0x50]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x3c]
	add r7, r1, r0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x40]
	str r7, [sp, #0x2c]
	add r5, r1, r0
	ldr r0, [sp]
	sub r0, r0, #1
	lsl r1, r0, #7
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	str r0, [sp, #0x28]
_02008E62:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _02008EAA
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _02008EAA
	cmp r4, #0x28
	bge _02008E8E
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x30]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008E8E:
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x30]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008EAA:
	cmp r0, #0
	beq _02008EE6
	cmp r4, #0x28
	bge _02008ECA
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008ECA:
	add r1, r4, #0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	bl sub_020091AC
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008EE6:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _02008F00
	ldr r0, [sp, #0x34]
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r0]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008F00:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #4]
	beq _02008F5C
	ldr r1, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #1
	bl _u32_div_f
	cmp r1, #0
	beq _02008F28
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x28]
	add r1, r1, r0
	ldrb r1, [r4, r1]
	add r0, r5, r0
	strb r1, [r4, r0]
	b _02008F68
_02008F28:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl _u32_div_f
	cmp r1, #0
	beq _02008F46
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r5, r0
	add r0, r1, r4
	sub r0, r0, #1
	ldrb r0, [r0]
	strb r0, [r1, r4]
	b _02008F68
_02008F46:
	ldrb r1, [r7]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008F68
_02008F5C:
	mov r1, #0xbf
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldrb r0, [r7]
	add r1, r5, r1
	strb r0, [r4, r1]
_02008F68:
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r0, r0, #1
	add r7, r7, #1
	str r0, [sp, #0x34]
	cmp r4, #0x50
	bge _02008F78
	b _02008E62
_02008F78:
	ldr r0, [sp, #0x40]
	add r0, #0x80
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r0, #0x50
	str r0, [sp, #0x3c]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x50
	bge _02008F90
	b _02008E30
_02008F90:
	ldr r0, [sp, #0x4c]
	bl sub_020181C4
_02008F96:
	ldr r0, [sp, #0x44]
	mov r1, #0xa
	add r0, #0xac
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x54]
	add r0, r0, #1
	str r0, [sp, #0x54]
	cmp r0, #4
	bge _02008FB2
	b _02008B8A
_02008FB2:
	ldr r1, _02008FC4 ; =0x00000331
	ldr r0, [sp, #0x48]
	strb r0, [r6, r1]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02008FBC: .word 0x00002828
_02008FC0: .word 0x00002827
_02008FC4: .word 0x00000331
	thumb_func_end sub_02008B78

	thumb_func_start sub_02008FC8
sub_02008FC8: ; 0x02008FC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r4, r5, #0
	str r0, [sp, #8]
_02008FDA:
	ldr r1, [r4, #0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _020090B4
	lsl r0, r1, #0x17
	lsr r0, r0, #0x1f
	beq _020090B4
	ldr r0, _020091A0 ; =0xFFFFFEFF
	mov r2, #0xba
	and r0, r1
	str r0, [r4, #0]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r2, r2, #2
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #8]
	ldr r2, [r5, r2]
	bl sub_02006AC0
	add r1, sp, #0x18
	str r0, [sp, #0x10]
	bl NNS_G2dGetUnpackedPaletteData
	ldr r0, [sp, #0x18]
	mov r7, #0
	ldr r1, [r0, #0]
	mov r0, #0x32
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r2, r7, #0
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #8]
	lsl r3, r0, #1
_0200901E:
	mov r6, #3
	lsl r6, r6, #8
	ldr r6, [r5, r6]
	ldrh r0, [r1]
	add r6, r3, r6
	add r7, r7, #1
	strh r0, [r2, r6]
	mov r6, #0xc1
	lsl r6, r6, #2
	ldrh r0, [r1]
	ldr r6, [r5, r6]
	add r1, r1, #2
	add r6, r3, r6
	strh r0, [r2, r6]
	add r2, r2, #2
	cmp r7, #0x10
	blt _0200901E
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _020090B4
	mov r2, #0xba
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r0, #0x75
	mov r1, #0xfc
	bl sub_02006AC0
	add r1, sp, #0x18
	str r0, [sp, #4]
	bl NNS_G2dGetUnpackedPaletteData
	ldr r0, [sp, #0x18]
	mov r7, #0xc1
	ldr r0, [r0, #0xc]
	mov r1, #0
	lsl r7, r7, #2
_02009072:
	add r6, r4, #0
	add r6, #0x6c
	ldrh r6, [r6]
	mov r2, #3
	lsl r2, r2, #8
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x1e
	add r6, r6, #3
	lsl r6, r6, #4
	add r6, r1, r6
	ldrh r3, [r0]
	ldr r2, [r5, r2]
	lsl r6, r6, #1
	strh r3, [r2, r6]
	add r6, r4, #0
	add r6, #0x6c
	ldrh r6, [r6]
	ldrh r3, [r0]
	ldr r2, [r5, r7]
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x1e
	add r6, r6, #3
	lsl r6, r6, #4
	add r6, r1, r6
	lsl r6, r6, #1
	add r1, r1, #1
	add r0, r0, #2
	strh r3, [r2, r6]
	cmp r1, #0x10
	blt _02009072
	ldr r0, [sp, #4]
	bl sub_020181C4
_020090B4:
	ldr r0, [r4, #0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02009182
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	beq _02009182
	add r0, r4, #0
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0
	bne _02009174
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x4b
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, [sp, #8]
	mov r2, #0xc1
	lsl r1, r0, #1
	ldr r0, [r4, #0x4c]
	add r3, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	sub r2, r2, #4
	add r3, #0x48
	ldr r2, [r5, r2]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3]
	mov r2, #0x10
	bl sub_0200393C
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _02009136
	add r0, r0, #3
	lsl r1, r0, #5
	ldr r0, [r4, #0x4c]
	mov r2, #0xc1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r3, r4, #0
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	sub r2, r2, #4
	add r3, #0x48
	ldr r2, [r5, r2]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3]
	mov r2, #0x10
	bl sub_0200393C
_02009136:
	add r0, r4, #0
	add r0, #0x49
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, r1
	bne _02009150
	ldr r1, [r4, #0x54]
	ldr r0, _020091A4 ; =0xFFFFEFFF
	and r0, r1
	str r0, [r4, #0x54]
	b _02009182
_02009150:
	cmp r0, r1
	bls _02009164
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x48
	strb r1, [r0]
	b _02009182
_02009164:
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x48
	strb r1, [r0]
	b _02009182
_02009174:
	add r0, r4, #0
	add r0, #0x4a
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x4a
	strb r1, [r0]
_02009182:
	ldr r0, [sp, #8]
	add r4, #0xac
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	bge _02009196
	b _02008FDA
_02009196:
	ldr r1, _020091A8 ; =0x00000332
	ldr r0, [sp, #0xc]
	strb r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020091A0: .word 0xFFFFFEFF
_020091A4: .word 0xFFFFEFFF
_020091A8: .word 0x00000332
	thumb_func_end sub_02008FC8

	thumb_func_start sub_020091AC
sub_020091AC: ; 0x020091AC
	mov r1, #0xf0
	and r1, r0
	lsl r1, r1, #0x14
	lsl r0, r0, #0x1c
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_020091AC

	thumb_func_start sub_020091C0
sub_020091C0: ; 0x020091C0
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #0xa]
	cmp r0, #0
	beq _020091D4
	add r0, r1, #0
	ldr r1, [r2, #0x10]
	mov r2, #1
	bl sub_020091D8
_020091D4:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020091C0

	thumb_func_start sub_020091D8
sub_020091D8: ; 0x020091D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r3, r0, #0
	add r0, r1, #0
	mov lr, r0
	mov r0, #0
	mov ip, r0
	ldr r0, _02009324 ; =0x021007A4
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #0x10]
_020091EE:
	ldr r0, [sp, #0x10]
	mov r1, #0
	ldr r6, [r0, #0]
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _02009266
	ldr r0, [sp]
	mov r2, #0xf
	and r0, r2
	str r0, [sp, #0xc]
	sub r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp]
	mov r2, #0xf0
	and r0, r2
	lsr r7, r0, #4
	sub r7, #8
_02009210:
	lsl r0, r1, #1
	add r2, r6, r0
	ldrb r4, [r6, r0]
	ldrb r2, [r2, #1]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r2, r7, r2
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r4, r2, #0x18
	mov r2, #0x50
	mul r2, r4
	lsr r5, r0, #1
	add r2, r5, r2
	mov r4, #1
	tst r0, r4
	ldrb r4, [r3, r2]
	beq _02009248
	mov r0, #0xf0
	and r0, r4
	cmp r0, #0x10
	blt _02009258
	cmp r0, #0x30
	bgt _02009258
	add r4, #0x50
	strb r4, [r3, r2]
	b _02009258
_02009248:
	mov r0, #0xf
	and r0, r4
	cmp r0, #1
	blt _02009258
	cmp r0, #3
	bgt _02009258
	add r0, r4, #5
	strb r0, [r3, r2]
_02009258:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r1, #1
	ldrb r0, [r6, r0]
	cmp r0, #0xff
	bne _02009210
_02009266:
	ldr r0, [sp]
	lsr r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #4
	blt _020091EE
	mov r0, lr
	str r0, [sp]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0200931E
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _02009324 ; =0x021007A4
	str r0, [sp, #0x18]
_0200928E:
	ldr r0, [sp, #0x18]
	mov r4, #0
	ldr r2, [r0, #0]
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _02009308
	ldr r0, [sp]
	mov r1, #0xf
	and r0, r1
	str r0, [sp, #0x14]
	add r0, #0x48
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #0xf0
	and r0, r1
	lsr r7, r0, #4
	sub r7, #8
_020092B0:
	lsl r0, r4, #1
	add r5, r2, r0
	ldrb r1, [r2, r0]
	ldrb r5, [r5, #1]
	ldr r0, [sp, #0x14]
	sub r1, #0xe
	add r0, r0, r1
	add r5, r7, r5
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r1, r0, #0x18
	lsr r6, r5, #0x18
	mov r5, #0x50
	lsr r0, r1, #1
	mul r5, r6
	add r0, r0, r5
	mov r5, #1
	tst r1, r5
	ldrb r5, [r3, r0]
	beq _020092EA
	mov r1, #0xf0
	and r1, r5
	cmp r1, #0x10
	blt _020092FA
	cmp r1, #0x30
	bgt _020092FA
	add r5, #0x50
	strb r5, [r3, r0]
	b _020092FA
_020092EA:
	mov r1, #0xf
	and r1, r5
	cmp r1, #1
	blt _020092FA
	cmp r1, #3
	bgt _020092FA
	add r1, r5, #5
	strb r1, [r3, r0]
_020092FA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r0, r4, #1
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	bne _020092B0
_02009308:
	ldr r0, [sp]
	lsr r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _0200928E
_0200931E:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02009324: .word 0x021007A4
	thumb_func_end sub_020091D8

	thumb_func_start sub_02009328
sub_02009328: ; 0x02009328
	ldr r2, [r0, #0]
	ldr r1, _02009340 ; =0x41C64E6D
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02009344 ; =0x00006073
	add r1, r3, r1
	str r1, [r0, #0]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_02009340: .word 0x41C64E6D
_02009344: .word 0x00006073
	thumb_func_end sub_02009328

	thumb_func_start sub_02009348
sub_02009348: ; 0x02009348
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r6, #0x32
	mov r4, #0
	str r0, [sp]
	add r7, sp, #0
	lsl r6, r6, #6
_02009358:
	ldrh r1, [r5]
	ldr r0, [sp]
	eor r0, r1
	strh r0, [r5]
	add r0, r7, #0
	bl sub_02009328
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r6
	blt _02009358
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02009348

	thumb_func_start sub_02009370
sub_02009370: ; 0x02009370
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0200939C ; =0x000018FE
	mov r6, #0
	ldrh r2, [r0, r1]
	lsr r4, r1, #1
	add r5, r0, r1
	str r2, [sp]
	add r7, sp, #0
	mvn r6, r6
_02009382:
	ldrh r1, [r5]
	ldr r0, [sp]
	eor r0, r1
	strh r0, [r5]
	add r0, r7, #0
	bl sub_02009328
	sub r4, r4, #1
	sub r5, r5, #2
	cmp r4, r6
	bgt _02009382
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0200939C: .word 0x000018FE
	thumb_func_end sub_02009370

	thumb_func_start sub_020093A0
sub_020093A0: ; 0x020093A0
	push {r3, lr}
	sub r1, #0xa5
	cmp r1, #1
	bhi _020093AE
	bl sub_02009370
	pop {r3, pc}
_020093AE:
	bl sub_02009348
	pop {r3, pc}
	thumb_func_end sub_020093A0

	.rodata


	.global Unk_020E4D50
Unk_020E4D50: ; 0x020E4D50
	.incbin "incbin/arm9_rodata.bin", 0x110, 0x150 - 0x110

	.global Unk_020E4D90
Unk_020E4D90: ; 0x020E4D90
	.incbin "incbin/arm9_rodata.bin", 0x150, 0x1B8 - 0x150

	.global Unk_020E4DF8
Unk_020E4DF8: ; 0x020E4DF8
	.incbin "incbin/arm9_rodata.bin", 0x1B8, 0x222 - 0x1B8

	.global Unk_020E4E62
Unk_020E4E62: ; 0x020E4E62
	.incbin "incbin/arm9_rodata.bin", 0x222, 0x28C - 0x222

	.global Unk_020E4ECC
Unk_020E4ECC: ; 0x020E4ECC
	.incbin "incbin/arm9_rodata.bin", 0x28C, 0x30C - 0x28C

	.global Unk_020E4F4C
Unk_020E4F4C: ; 0x020E4F4C
	.incbin "incbin/arm9_rodata.bin", 0x30C, 0x96



	.data


	.global Unk_021007A4
Unk_021007A4: ; 0x021007A4
	.incbin "incbin/arm9_data.bin", 0x1AC4, 0x10

