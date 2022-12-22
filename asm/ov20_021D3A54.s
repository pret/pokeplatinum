	.include "macros/function.inc"
	.include "include/ov20_021D3A54.inc"

	

	.text


	thumb_func_start ov20_021D3A54
ov20_021D3A54: ; 0x021D3A54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x23
	mov r1, #0x60
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	add r0, r5, #0
	bl ov20_021D2E04
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x18]
	str r0, [r4, #0x5c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov20_021D3A54

	thumb_func_start ov20_021D3A80
ov20_021D3A80: ; 0x021D3A80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021D3A8E
	bl sub_02021BD4
_021D3A8E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D3A80

	thumb_func_start ov20_021D3A98
ov20_021D3A98: ; 0x021D3A98
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	bl ov20_021D2E04
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #3
	add r2, r4, #0
	bl sub_020070E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #5
	bl ov20_021D3B74
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov20_021D3C78
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov20_021D3D44
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	sub r3, r2, #4
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #2
	bl sub_02019184
	add r0, r5, #0
	bl ov20_021D3E0C
	mov r1, #2
	add r2, r1, #0
	ldr r0, _021D3B68 ; =0x04000050
	sub r2, #0xc
	bl G2x_SetBlendBrightness_
	ldr r0, _021D3B6C ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #0x1f
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r0]
	ldrh r5, [r0, #2]
	mov r1, #0x1d
	bic r5, r2
	orr r1, r5
	orr r1, r3
	strh r1, [r0, #2]
	add r1, r0, #0
	mov r2, #0xff
	sub r1, #8
	strh r2, [r1]
	mov r1, #0xa0
	sub r0, r0, #4
	strh r1, [r0]
	lsl r2, r3, #0x15
	ldr r1, [r2, #0]
	ldr r0, _021D3B70 ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2, #0]
	add r0, r4, #0
	mov r1, #1
	bl sub_02019448
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D3B68: .word 0x04000050
_021D3B6C: .word 0x04000048
_021D3B70: .word 0xFFFF1FFF
	thumb_func_end ov20_021D3A98

	thumb_func_start ov20_021D3B74
ov20_021D3B74: ; 0x021D3B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r2, #0
	mov r2, #0x6d
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x23
	bl sub_0200B144
	str r0, [sp, #0x20]
	mov r0, #9
	mov r7, #1
	str r0, [sp, #0x24]
	mov r4, #0
_021D3B96:
	cmp r4, #0
	beq _021D3BAE
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	bne _021D3BAE
	ldr r0, [sp, #0x24]
	mov r7, #1
	add r0, r0, #3
	str r0, [sp, #0x24]
_021D3BAE:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_02099CA0
	cmp r0, #0
	beq _021D3BCC
	ldr r0, [sp, #0x20]
	add r1, r4, #0
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, _021D3C6C ; =0x0001020F
	str r0, [sp, #0x1c]
	b _021D3BDA
_021D3BCC:
	ldr r0, [sp, #0x20]
	mov r1, #0xc
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, _021D3C70 ; =0x0003040F
	str r0, [sp, #0x1c]
_021D3BDA:
	ldr r0, _021D3C74 ; =0x000003EE
	cmp r6, r0
	blo _021D3BE4
	bl GF_AssertFail
_021D3BE4:
	ldr r0, [sp, #0x24]
	lsl r3, r7, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x28
	mov r2, #1
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, sp, #0x28
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x48
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	add r2, r5, #0
	bl sub_0201D78C
	add r0, sp, #0x28
	bl sub_0201A9F4
	add r0, sp, #0x28
	bl sub_0201ACCC
	add r0, r5, #0
	bl sub_020237BC
	add r0, sp, #0x28
	bl sub_0201A8FC
	add r4, r4, #1
	add r6, #0x12
	add r7, #0xa
	cmp r4, #0xc
	blt _021D3B96
	ldr r0, [sp, #0x20]
	bl sub_0200B190
	add r0, r6, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3C6C: .word 0x0001020F
_021D3C70: .word 0x0003040F
_021D3C74: .word 0x000003EE
	thumb_func_end ov20_021D3B74

	thumb_func_start ov20_021D3C78
ov20_021D3C78: ; 0x021D3C78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	mov r1, #0xce
	add r6, r0, #0
	lsl r1, r1, #2
	add r0, r2, #0
	str r2, [sp, #0x14]
	cmp r0, r1
	blo _021D3C90
	bl GF_AssertFail
_021D3C90:
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x19
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r1, sp, #0x20
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x22
	bl sub_0201A7E8
	mov r0, #4
	mov r1, #0x23
	bl sub_02023790
	add r4, r0, #0
	add r0, sp, #0x20
	mov r1, #0xf
	bl sub_0201ADA4
	bl ov20_021D5044
	add r7, r0, #0
	ldr r5, _021D3D38 ; =0x00000000
	beq _021D3D16
_021D3CD0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov20_021D5048
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov20_021D506C
	ldr r0, [r6, #8]
	add r1, r5, #0
	bl sub_02099CDC
	cmp r0, #0
	beq _021D3CF2
	ldr r1, _021D3D3C ; =0x0001020F
	b _021D3CF4
_021D3CF2:
	ldr r1, _021D3D40 ; =0x0003040F
_021D3CF4:
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r0, sp, #0x20
	mov r1, #0
	add r3, r3, #3
	bl sub_0201D78C
	add r5, r5, #1
	cmp r5, r7
	blo _021D3CD0
_021D3D16:
	add r0, sp, #0x20
	bl sub_0201ACCC
	add r0, sp, #0x20
	bl sub_0201A9F4
	add r0, r4, #0
	bl sub_020237BC
	add r0, sp, #0x20
	bl sub_0201A8FC
	ldr r0, [sp, #0x14]
	add r0, #0xc8
	str r0, [sp, #0x14]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3D38: .word 0x00000000
_021D3D3C: .word 0x0001020F
_021D3D40: .word 0x0003040F
	thumb_func_end ov20_021D3C78

	thumb_func_start ov20_021D3D44
ov20_021D3D44: ; 0x021D3D44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r2, #0
	mov r2, #0x6d
	str r1, [sp, #0x14]
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x23
	bl sub_0200B144
	mov r1, #0xd
	str r0, [sp, #0x20]
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	mov r0, #0
	ldr r1, [sp, #0x1c]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x40
	sub r0, r1, r0
	lsr r0, r0, #1
	ldr r4, _021D3E04 ; =0x021D52E4
	str r0, [sp, #0x18]
	mov r7, #0
	add r6, sp, #0x24
_021D3D7C:
	mov r0, #0x3f
	lsl r0, r0, #4
	cmp r5, r0
	blo _021D3D88
	bl GF_AssertFail
_021D3D88:
	ldrh r0, [r4, #2]
	add r1, r6, #0
	mov r2, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r6, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3E08 ; =0x0001020F
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	mov r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_0201A9F4
	add r0, r6, #0
	bl sub_0201ACCC
	add r0, r6, #0
	bl sub_0201A8FC
	add r7, r7, #1
	add r5, #0x10
	add r4, r4, #4
	cmp r7, #2
	blo _021D3D7C
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_0200B190
	add r0, r5, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3E04: .word 0x021D52E4
_021D3E08: .word 0x0001020F
	thumb_func_end ov20_021D3D44

	thumb_func_start ov20_021D3E0C
ov20_021D3E0C: ; 0x021D3E0C
	push {r3, r4, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r1, sp, #8
	mov r2, #0
	mov r3, #1
	bl ov20_021D2E0C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #8
	mov r2, #0x30
	mov r3, #0x36
	bl ov20_021D2E50
	str r0, [r4, #0x5c]
	mov r1, #4
	bl sub_02021D6C
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x2c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D3E0C

	thumb_func_start ov20_021D3E48
ov20_021D3E48: ; 0x021D3E48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r4, r1, #0
	bl sub_02021CAC
	cmp r4, #0
	beq _021D3E72
	ldr r0, [r5, #4]
	bl ov20_021D1F94
	cmp r0, #0
	ldr r0, [r5, #0x5c]
	bne _021D3E6C
	mov r1, #4
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
_021D3E6C:
	mov r1, #6
	bl sub_02021D6C
_021D3E72:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D3E48

	thumb_func_start ov20_021D3E74
ov20_021D3E74: ; 0x021D3E74
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	bl ov20_021D1F94
	mov r1, #0
	str r1, [sp, #0x10]
	cmp r5, #0xfe
	bne _021D3E96
	mov r0, #0x84
	str r0, [sp, #8]
	mov r0, #0x96
	str r0, [sp, #0xc]
	mov r5, #0x10
	b _021D3ED6
_021D3E96:
	cmp r0, #0
	bne _021D3EBE
	add r0, r5, #0
	mov r1, #3
	bl _u32_div_f
	mov r0, #0x50
	mul r0, r1
	add r0, #0x30
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	bl _u32_div_f
	mov r1, #0x18
	mul r1, r0
	add r1, #0x36
	str r1, [sp, #0xc]
	mov r5, #4
	b _021D3ED6
_021D3EBE:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov20_021D506C
	ldr r0, [sp, #4]
	mov r5, #6
	add r0, #0x1a
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, #0x3e
	str r0, [sp, #0xc]
_021D3ED6:
	ldr r0, [sp, #8]
	add r1, sp, #8
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	bl sub_02021C50
	ldr r0, [r4, #0x5c]
	add r1, r5, #0
	bl sub_02021D6C
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D3E74

	thumb_func_start ov20_021D3EF8
ov20_021D3EF8: ; 0x021D3EF8
	push {r3, lr}
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #0x10
	str r1, [sp]
	mov r1, #2
	add r2, r1, #0
	add r0, #0x1c
	sub r2, #0xc
	bl ov20_021D4FB0
	pop {r3, pc}
	thumb_func_end ov20_021D3EF8

	thumb_func_start ov20_021D3F10
ov20_021D3F10: ; 0x021D3F10
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D3F22
	cmp r0, #1
	beq _021D3F4C
	b _021D3F58
_021D3F22:
	add r0, r4, #0
	add r0, #0x1c
	bl ov20_021D4FF0
	cmp r0, #0
	beq _021D3F58
	mov r0, #0x18
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #1
	ldr r1, [r4, #0xc]
	add r0, #0x3c
	add r3, r2, #0
	bl ov20_021D4E38
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _021D3F58
_021D3F4C:
	add r4, #0x3c
	add r0, r4, #0
	bl ov20_021D4E8C
	add sp, #8
	pop {r4, pc}
_021D3F58:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D3F10

	thumb_func_start ov20_021D3F60
ov20_021D3F60: ; 0x021D3F60
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	mov r0, #0
	str r0, [r1, #0x14]
	sub r0, #0x18
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r1, #0
	mov r2, #1
	ldr r1, [r1, #0xc]
	add r0, #0x3c
	add r3, r2, #0
	bl ov20_021D4E38
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov20_021D3F60

	thumb_func_start ov20_021D3F84
ov20_021D3F84: ; 0x021D3F84
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D3F96
	cmp r0, #1
	beq _021D3FBE
	b _021D3FCA
_021D3F96:
	add r0, r4, #0
	add r0, #0x3c
	bl ov20_021D4E8C
	cmp r0, #0
	beq _021D3FCA
	mov r0, #0x10
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r2, #0
	add r0, #0x1c
	mov r1, #2
	sub r3, #0xa
	bl ov20_021D4FB0
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _021D3FCA
_021D3FBE:
	add r4, #0x1c
	add r0, r4, #0
	bl ov20_021D4FF0
	add sp, #4
	pop {r3, r4, pc}
_021D3FCA:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov20_021D3F84

	thumb_func_start ov20_021D3FD0
ov20_021D3FD0: ; 0x021D3FD0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	mov r1, #1
	mov r2, #3
	mov r3, #2
	bl sub_02019184
	pop {r3, pc}
	thumb_func_end ov20_021D3FD0

	thumb_func_start ov20_021D3FE0
ov20_021D3FE0: ; 0x021D3FE0
	push {r3, lr}
	mov r2, #0
	mov r1, #0x10
	add r3, r2, #0
	str r1, [sp]
	add r0, #0x1c
	mov r1, #2
	sub r3, #0xa
	bl ov20_021D4FB0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov20_021D3FE0

	thumb_func_start ov20_021D3FF8
ov20_021D3FF8: ; 0x021D3FF8
	ldr r3, _021D4000 ; =ov20_021D4FF0
	add r0, #0x1c
	bx r3
	nop
_021D4000: .word ov20_021D4FF0
	thumb_func_end ov20_021D3FF8

	thumb_func_start ov20_021D4004
ov20_021D4004: ; 0x021D4004
	push {r3, lr}
	sub sp, #8
	mov r1, #0
	str r1, [sp]
	mov r1, #0xc
	str r1, [sp, #4]
	add r0, #0x1c
	mov r1, #2
	mov r2, #0x3f
	mov r3, #0x7c
	bl ov20_021D4F1C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov20_021D4004

	thumb_func_start ov20_021D4020
ov20_021D4020: ; 0x021D4020
	push {r3, lr}
	add r0, #0x1c
	bl ov20_021D4F4C
	cmp r0, #0
	beq _021D4038
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #1
	pop {r3, pc}
_021D4038:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov20_021D4020

	thumb_func_start ov20_021D403C
ov20_021D403C: ; 0x021D403C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021D4074 ; =0x04000050
	mov r1, #2
	mov r2, #0x3f
	mov r3, #0
	bl G2x_SetBlendAlpha_
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	mov r0, #0x7c
	str r0, [sp]
	mov r0, #0xc
	add r4, #0x1c
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x3f
	mov r3, #0
	bl ov20_021D4F1C
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D4074: .word 0x04000050
	thumb_func_end ov20_021D403C

	thumb_func_start ov20_021D4078
ov20_021D4078: ; 0x021D4078
	ldr r3, _021D4080 ; =ov20_021D4F4C
	add r0, #0x1c
	bx r3
	nop
_021D4080: .word ov20_021D4F4C
	thumb_func_end ov20_021D4078

	thumb_func_start ov20_021D4084
ov20_021D4084: ; 0x021D4084
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F94
	cmp r0, #0
	bne _021D4098
	mov r3, #3
	mvn r3, r3
	b _021D409A
_021D4098:
	mov r3, #0xfc
_021D409A:
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r2, #0
	bl sub_02019184
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D4084

	thumb_func_start ov20_021D40A8
ov20_021D40A8: ; 0x021D40A8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F94
	cmp r0, #0
	bne _021D40BE
	mov r0, #0xff
	mvn r0, r0
	b _021D40C2
_021D40BE:
	mov r0, #1
	lsl r0, r0, #8
_021D40C2:
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x3c
	mov r2, #1
	mov r3, #0
	bl ov20_021D4E38
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D40A8

	thumb_func_start ov20_021D40DC
ov20_021D40DC: ; 0x021D40DC
	ldr r3, _021D40E4 ; =ov20_021D4E8C
	add r0, #0x3c
	bx r3
	nop
_021D40E4: .word ov20_021D4E8C
	thumb_func_end ov20_021D40DC

	.rodata


	.global Unk_ov20_021D52E4
Unk_ov20_021D52E4: ; 0x021D52E4
	.incbin "incbin/overlay20_rodata.bin", 0x1A4, 0x8

