	.include "macros/function.inc"
	.include "include/ov22_022589E0.inc"

	

	.text


	thumb_func_start ov22_022589E0
ov22_022589E0: ; 0x022589E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov22_022588F0
	mov r0, #0xd
	mov r1, #0x34
	bl sub_02018144
	str r0, [r5, #0]
	mov r1, #0
	mov r2, #0x34
	bl memset
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x18]
	str r4, [r1, #4]
	str r6, [r1, #8]
	str r7, [r1, #0]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x2c]
	ldr r0, _02258A24 ; =ov22_02258A48
	str r0, [r5, #4]
	ldr r0, _02258A28 ; =ov22_02258BB8
	str r0, [r5, #8]
	ldr r0, _02258A2C ; =ov22_02258D4C
	str r0, [r5, #0xc]
	ldr r0, _02258A30 ; =ov22_02258A34
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258A24: .word ov22_02258A48
_02258A28: .word ov22_02258BB8
_02258A2C: .word ov22_02258D4C
_02258A30: .word ov22_02258A34
	thumb_func_end ov22_022589E0

	thumb_func_start ov22_02258A34
ov22_02258A34: ; 0x02258A34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl ov22_022588F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02258A34

	thumb_func_start ov22_02258A48
ov22_02258A48: ; 0x02258A48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #4]
	bl ov22_02257BE8
	cmp r0, #0
	beq _02258ACA
	ldr r3, [r4, #0]
	ldr r0, [r4, #4]
	ldr r3, [r3, #0x38]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02257C20
	add r6, r0, #0
	beq _02258A7A
	ldr r0, [r6, #4]
	cmp r0, #3
	bne _02258A7A
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _02258A7A
	mov r6, #0
_02258A7A:
	cmp r6, #0
	beq _02258B06
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _02258A90
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov22_02257A80
	mov r7, #0
	b _02258AAC
_02258A90:
	add r0, r6, #0
	bl ov22_022579E8
	ldr r0, [r6, #0]
	bl ov22_022591E0
	add r1, r4, #0
	add r2, r4, #0
	add r7, r0, #0
	add r0, r6, #0
	add r1, #0x24
	add r2, #0x28
	bl ov22_02259648
_02258AAC:
	ldr r0, [r4, #4]
	bl ov22_02257B10
	ldr r0, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	mov r2, #1
	bl ov22_02258E88
	bl ov22_02255390
	b _02258B06
_02258ACA:
	ldr r0, [r4, #8]
	bl ov22_022582E8
	cmp r0, #0
	beq _02258B06
	ldr r3, [r4, #0]
	ldr r0, [r4, #8]
	ldr r3, [r3, #0x38]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02258320
	add r6, r0, #0
	beq _02258B06
	bl ov22_022581B8
	ldr r0, [r4, #8]
	bl ov22_022581EC
	ldr r0, [sp, #8]
	mov r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl ov22_02258E88
	bl ov22_02255390
_02258B06:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02258B50
	ldr r1, [r1, #4]
	ldr r0, _02258B54 ; =0x000005EB
	cmp r1, #0
	beq _02258B1E
	cmp r1, #1
	beq _02258B28
	cmp r1, #3
	beq _02258B3A
	b _02258B42
_02258B1E:
	ldr r1, _02258B58 ; =ov22_02258BB8
	str r1, [r5, #8]
	ldr r1, _02258B5C ; =ov22_02258D4C
	str r1, [r5, #0xc]
	b _02258B42
_02258B28:
	ldr r0, _02258B60 ; =ov22_02258B78
	str r0, [r5, #8]
	ldr r0, _02258B64 ; =ov22_02258B74
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl ov22_02258E5C
	ldr r0, _02258B68 ; =0x0000067E
	b _02258B42
_02258B3A:
	ldr r1, _02258B6C ; =ov22_02258D7C
	str r1, [r5, #8]
	ldr r1, _02258B70 ; =ov22_02258DAC
	str r1, [r5, #0xc]
_02258B42:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
	add r0, r4, #0
	bl ov22_02259040
_02258B50:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02258B54: .word 0x000005EB
_02258B58: .word ov22_02258BB8
_02258B5C: .word ov22_02258D4C
_02258B60: .word ov22_02258B78
_02258B64: .word ov22_02258B74
_02258B68: .word 0x0000067E
_02258B6C: .word ov22_02258D7C
_02258B70: .word ov22_02258DAC
	thumb_func_end ov22_02258A48

	thumb_func_start ov22_02258B74
ov22_02258B74: ; 0x02258B74
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02258B74

	thumb_func_start ov22_02258B78
ov22_02258B78: ; 0x02258B78
	push {r4, lr}
	sub sp, #8
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02258BB2
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _02258B8E
	bl sub_02022974
_02258B8E:
	ldr r0, [r4, #0x10]
	mov r2, #0x1c
	ldr r0, [r0, #4]
	mov r3, #0x1e
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	mov r1, #4
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r4, #0
	bl ov22_02258F4C
	add r0, r4, #0
	bl ov22_02258EE4
_02258BB2:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02258B78

	thumb_func_start ov22_02258BB8
ov22_02258BB8: ; 0x02258BB8
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r6, r0, #0
	ldr r4, [r6, #0]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _02258BC8
	b _02258D36
_02258BC8:
	add r1, sp, #0x18
	str r1, [sp]
	add r1, sp, #0x24
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov22_02258F38
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	bl ov22_02257C04
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	bl ov22_02257C04
	add r5, r5, r0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	bl ov22_02257C04
	add r5, r5, r0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov22_02257C04
	add r0, r5, r0
	cmp r0, #4
	blt _02258C6A
	ldr r2, [r4, #0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #0x38]
	bl ov22_02257A5C
	cmp r0, #0
	bne _02258C54
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, _02258D3C ; =0x00000683
	bl sub_02005748
	ldr r0, [r4, #0xc]
	ldr r2, _02258D40 ; =0x00000181
	mov r1, #0x1a
	mov r3, #3
	bl ov22_0225A628
	ldr r0, [r4, #0x10]
	mov r1, #4
	ldr r0, [r0, #4]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov22_02258F4C
	b _02258D30
_02258C54:
	ldr r0, [r4, #4]
	bl ov22_02257B10
	bl ov22_02255360
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, _02258D44 ; =0x000005EA
	bl sub_02005748
	b _02258D30
_02258C6A:
	ldr r0, [r4, #0x10]
	add r1, sp, #0x24
	ldr r5, [r0, #0]
	add r0, sp, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov22_02258EF8
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	bl ov22_02258304
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov22_02258304
	add r0, r6, r0
	cmp r0, #2
	bge _02258CE8
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02258CD4
	ldr r0, [r4, #0x10]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov22_02259698
	bl sub_0201D35C
	ldr r2, [sp, #0x14]
	mov r1, #0x6c
	sub r1, r1, r2
	bl _u32_div_f
	add r1, #0xa
	str r1, [sp, #0xc]
	bl sub_0201D35C
	ldr r2, [sp, #0x10]
	mov r1, #0x7d
	sub r1, r1, r2
	bl _u32_div_f
	add r1, #0x12
	str r1, [sp, #8]
	b _02258CE0
_02258CD4:
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	str r0, [sp, #8]
_02258CE0:
	ldr r0, _02258D3C ; =0x00000683
	bl sub_02005748
	b _02258CF8
_02258CE8:
	ldr r0, [r4, #0x10]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259648
	ldr r0, _02258D48 ; =0x000005EB
	bl sub_02005748
_02258CF8:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02258D16
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #8]
	ldr r0, [r0, #4]
	ldr r1, [r5, #0]
	ldr r2, [r2, #4]
	bl ov22_02257FB0
	add r1, r4, #0
	add r1, #0x21
	strb r0, [r1]
_02258D16:
	ldr r0, [r4, #0x10]
	mov r1, #4
	ldr r0, [r0, #4]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov22_02258F4C
_02258D30:
	add r0, r4, #0
	bl ov22_02258EE4
_02258D36:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_02258D3C: .word 0x00000683
_02258D40: .word 0x00000181
_02258D44: .word 0x000005EA
_02258D48: .word 0x000005EB
	thumb_func_end ov22_02258BB8

	thumb_func_start ov22_02258D4C
ov22_02258D4C: ; 0x02258D4C
	push {r4, lr}
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	beq _02258D70
	ldr r3, _02258D74 ; =0x021BF6BC
	ldr r1, _02258D78 ; =0x0000FFFF
	ldrh r4, [r3, #0x1c]
	cmp r4, r1
	beq _02258D70
	beq _02258D70
	ldrh r3, [r3, #0x1e]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x18]
	sub r1, r4, r1
	sub r2, r3, r2
	bl ov22_022595F8
_02258D70:
	pop {r4, pc}
	nop
_02258D74: .word 0x021BF6BC
_02258D78: .word 0x0000FFFF
	thumb_func_end ov22_02258D4C

	thumb_func_start ov22_02258D7C
ov22_02258D7C: ; 0x02258D7C
	push {r4, lr}
	ldr r4, [r0, #0]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02258DA6
	ldr r0, [r4, #4]
	bl ov22_022579D8
	ldr r0, [r4, #4]
	bl ov22_02257B10
	bl ov22_02255360
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, _02258DA8 ; =0x000005EB
	bl sub_02005748
	add r0, r4, #0
	bl ov22_02258EE4
_02258DA6:
	pop {r4, pc}
	; .align 2, 0
_02258DA8: .word 0x000005EB
	thumb_func_end ov22_02258D7C

	thumb_func_start ov22_02258DAC
ov22_02258DAC: ; 0x02258DAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, [r0, #0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02258E50
	ldr r1, _02258E54 ; =0x021BF6BC
	ldrh r2, [r1, #0x1c]
	ldr r1, _02258E58 ; =0x0000FFFF
	cmp r2, r1
	beq _02258E50
	beq _02258E50
	add r1, sp, #8
	str r1, [sp]
	add r1, sp, #0x14
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl ov22_022596B0
	ldr r0, [r4, #0x10]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov22_02259698
	ldr r0, _02258E54 ; =0x021BF6BC
	ldr r1, [r4, #0x14]
	ldrh r2, [r0, #0x1c]
	ldr r3, [sp, #0x18]
	sub r5, r2, r1
	ldrh r1, [r0, #0x1e]
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0x1c]
	sub r6, r1, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	sub r0, r2, r0
	ldr r2, [sp, #8]
	add r7, r6, r1
	sub r2, r3, r2
	ldr r3, [sp, #0x14]
	str r2, [sp, #0x18]
	add r2, r5, r3
	str r0, [sp, #0x1c]
	cmp r2, #0x8a
	bgt _02258E0E
	mov r0, #0x8a
	sub r5, r0, r3
	b _02258E18
_02258E0E:
	add r2, r5, r0
	cmp r2, #0xf6
	blt _02258E18
	mov r2, #0xf6
	sub r5, r2, r0
_02258E18:
	cmp r7, #0x12
	bgt _02258E22
	mov r0, #0x12
	sub r6, r0, r1
	b _02258E2E
_02258E22:
	ldr r1, [sp, #0x18]
	add r0, r6, r1
	cmp r0, #0x8f
	blt _02258E2E
	mov r0, #0x8f
	sub r6, r0, r1
_02258E2E:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov22_02259074
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov22_02257D04
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, r5, r1
	add r2, r6, r2
	bl ov22_02259074
_02258E50:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02258E54: .word 0x021BF6BC
_02258E58: .word 0x0000FFFF
	thumb_func_end ov22_02258DAC

	thumb_func_start ov22_02258E5C
ov22_02258E5C: ; 0x02258E5C
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02258E84
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _02258E70
	bl sub_02022974
_02258E70:
	ldr r0, [r4, #0x10]
	ldr r5, [r0, #0]
	ldr r0, [r4, #4]
	bl ov22_02257CD4
	ldr r0, [r4, #4]
	ldr r1, [r5, #0]
	mov r2, #0xe
	bl ov22_02257C88
_02258E84:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02258E5C

	thumb_func_start ov22_02258E88
ov22_02258E88: ; 0x02258E88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	add r7, r3, #0
	bl ov22_02259648
	str r4, [r5, #0x10]
	ldr r0, [sp, #4]
	strh r0, [r5, #0x1c]
	ldr r0, [sp]
	strh r0, [r5, #0x1e]
	add r0, r5, #0
	add r0, #0x20
	strb r6, [r0]
	ldr r0, [sp, #0x20]
	str r7, [r5, #0x14]
	str r0, [r5, #0x18]
	cmp r6, #0
	bne _02258ECA
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [r1, #4]
	bl ov22_02258424
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
	b _02258ED2
_02258ECA:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
_02258ED2:
	mov r0, #1
	str r0, [r5, #0x30]
	ldr r1, [sp, #0x24]
	add r0, r4, #0
	bl ov22_02259560
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02258E88

	thumb_func_start ov22_02258EE4
ov22_02258EE4: ; 0x02258EE4
	mov r2, #0
	str r2, [r0, #0x10]
	strh r2, [r0, #0x1c]
	add r1, r0, #0
	strh r2, [r0, #0x1e]
	add r1, #0x20
	strb r2, [r1]
	add r0, #0x21
	strb r2, [r0]
	bx lr
	thumb_func_end ov22_02258EE4

	thumb_func_start ov22_02258EF8
ov22_02258EF8: ; 0x02258EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [r0, #0]
	add r5, r1, #0
	ldr r0, [r4, #0x10]
	add r6, r2, #0
	add r1, sp, #0xc
	add r2, sp, #8
	add r7, r3, #0
	bl ov22_02259698
	ldr r0, [r4, #0x10]
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r0, [sp]
	str r0, [r5, #0]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r6, #0]
	ldr r0, [sp, #4]
	str r0, [r7, #0]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	str r1, [r0, #0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02258EF8

	thumb_func_start ov22_02258F38
ov22_02258F38: ; 0x02258F38
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl ov22_02259724
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov22_02258F38

	thumb_func_start ov22_02258F4C
ov22_02258F4C: ; 0x02258F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r0, _02258FBC ; =ov22_02258FC0
	mov r1, #0x2c
	mov r2, #0
	mov r3, #0xd
	bl sub_0200679C
	bl sub_0201CED0
	add r4, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #8
	str r0, [r4, #0]
	ldr r0, [r5, #0x10]
	add r2, sp, #4
	str r0, [r4, #4]
	str r6, [r4, #0x20]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x1c]
	ldr r0, [r5, #8]
	add r0, #0x3c
	str r0, [r4, #0x24]
	add r0, r5, #0
	add r0, #0x30
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x10]
	bl ov22_02259648
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #8]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02258FBC: .word ov22_02258FC0
	thumb_func_end ov22_02258F4C

	thumb_func_start ov22_02258FC0
ov22_02258FC0: ; 0x02258FC0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0225903A
	ldr r0, [r4, #4]
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r1, [sp, #4]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	bmi _02258FFE
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02259030
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02259030
_02258FFE:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov22_022595F8
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #4]
	bl ov22_0225818C
	ldr r0, [r4, #0]
	bl ov22_022581EC
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02259026
	bl ov22_02255360
_02259026:
	add r0, r5, #0
	bl sub_020067D0
	add sp, #8
	pop {r3, r4, r5, pc}
_02259030:
	ldr r0, [r4, #4]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov22_022595F8
_0225903A:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02258FC0

	thumb_func_start ov22_02259040
ov22_02259040: ; 0x02259040
	push {r3, lr}
	ldr r3, [r0, #0x10]
	ldr r1, [r3, #4]
	cmp r1, #0
	bne _0225905A
	ldr r3, [r3, #0]
	ldr r0, [r0, #0xc]
	ldr r2, _02259070 ; =0x00000182
	ldr r3, [r3, #0]
	mov r1, #0x1a
	bl ov22_0225A628
	pop {r3, pc}
_0225905A:
	cmp r1, #1
	bne _0225906E
	ldr r3, [r3, #0]
	mov r2, #0x61
	ldr r0, [r0, #0xc]
	ldr r3, [r3, #0]
	mov r1, #0x1a
	lsl r2, r2, #2
	bl ov22_0225A628
_0225906E:
	pop {r3, pc}
	; .align 2, 0
_02259070: .word 0x00000182
	thumb_func_end ov22_02259040

	thumb_func_start ov22_02259074
ov22_02259074: ; 0x02259074
	push {r4, r5, r6, lr}
	ldr r4, [r0, #0]
	add r5, r1, #0
	ldr r0, [r4, #0x10]
	add r6, r2, #0
	bl ov22_022595F8
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #4]
	sub r1, r5, r1
	sub r2, r6, r2
	bl ov22_02257ACC
	str r5, [r4, #0x24]
	str r6, [r4, #0x28]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_02259074