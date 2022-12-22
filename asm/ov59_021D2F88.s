	.include "macros/function.inc"
	.include "include/ov59_021D2F88.inc"

	

	.text


	thumb_func_start ov59_021D2F88
ov59_021D2F88: ; 0x021D2F88
	push {r3, lr}
	bl sub_0202B4A0
	bl ov59_021D2A2C
	pop {r3, pc}
	thumb_func_end ov59_021D2F88

	thumb_func_start ov59_021D2F94
ov59_021D2F94: ; 0x021D2F94
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl sub_0202B4A0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02018184
	add r4, r0, #0
	add r0, r6, #0
	bl ov59_021D2A30
	add r1, r4, #0
	add r2, r5, #0
	bl MIi_CpuCopyFast
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov59_021D2F94

	thumb_func_start ov59_021D2FBC
ov59_021D2FBC: ; 0x021D2FBC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202B4A0
	add r2, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov59_021D2AC4
	pop {r4, pc}
	thumb_func_end ov59_021D2FBC

	thumb_func_start ov59_021D2FD4
ov59_021D2FD4: ; 0x021D2FD4
	push {r3, lr}
	bl sub_0202A750
	bl sub_02029C60
	pop {r3, pc}
	thumb_func_end ov59_021D2FD4

	thumb_func_start ov59_021D2FE0
ov59_021D2FE0: ; 0x021D2FE0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl sub_0202A750
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02018184
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_02029CA8
	add r1, r4, #0
	add r2, r5, #0
	bl MIi_CpuCopyFast
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2FE0

	thumb_func_start ov59_021D300C
ov59_021D300C: ; 0x021D300C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202A750
	add r2, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0x18
	ldr r3, [r4, #0x10]
	lsr r0, r0, #0x18
	bl sub_0202A6A8
	pop {r4, pc}
	thumb_func_end ov59_021D300C

	thumb_func_start ov59_021D3028
ov59_021D3028: ; 0x021D3028
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202440C
	ldr r1, [r4, #0x14]
	str r1, [sp]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov59_021D2F10
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D3028

	thumb_func_start ov59_021D3048
ov59_021D3048: ; 0x021D3048
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202440C
	ldr r1, [r4, #0x14]
	str r1, [sp]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov59_021D2F38
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D3048

	thumb_func_start ov59_021D3068
ov59_021D3068: ; 0x021D3068
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202440C
	ldr r1, [r4, #0x14]
	str r1, [sp]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov59_021D2F60
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D3068

	thumb_func_start ov59_021D3088
ov59_021D3088: ; 0x021D3088
	ldr r3, _021D308C ; =sub_0202E9FC
	bx r3
	; .align 2, 0
_021D308C: .word sub_0202E9FC
	thumb_func_end ov59_021D3088

	thumb_func_start ov59_021D3090
ov59_021D3090: ; 0x021D3090
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202E8C0
	ldr r0, [r4, #0]
	str r0, [sp]
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	lsl r2, r2, #0x18
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x10]
	lsr r2, r2, #0x18
	bl sub_0202ED0C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov59_021D3090

	thumb_func_start ov59_021D30B4
ov59_021D30B4: ; 0x021D30B4
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r0, r1, #0
	add r1, r5, #0
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	bl MI_CpuFill8
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_02073700
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov59_021D30B4

	thumb_func_start ov59_021D30DC
ov59_021D30DC: ; 0x021D30DC
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D30DC

	thumb_func_start ov59_021D30E0
ov59_021D30E0: ; 0x021D30E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	ldr r6, _021D3134 ; =0x00000BB8
	ldr r5, _021D3138 ; =0x021D33FC
	str r1, [sp, #4]
	str r0, [sp, #8]
_021D30F0:
	ldr r0, [sp]
	ldr r1, [r5, #0]
	blx r1
	add r4, r0, #0
	ldr r0, [sp]
	ldr r3, [r5, #4]
	mov r1, #0x33
	add r2, r4, #0
	blx r3
	add r7, r0, #0
	cmp r6, r4
	bhi _021D310C
	bl sub_02022974
_021D310C:
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	bl MIi_CpuCopyFast
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #4]
	sub r6, r6, r4
	add r0, r0, r4
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r5, #0xc
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0xa
	blt _021D30F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3134: .word 0x00000BB8
_021D3138: .word 0x021D33FC
	thumb_func_end ov59_021D30E0

	thumb_func_start ov59_021D313C
ov59_021D313C: ; 0x021D313C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r0, [sp]
	ldr r0, _021D3280 ; =0x00000BB8
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	mov r0, #0x33
	str r0, [sp, #0x50]
	ldr r0, [sp]
	mov r7, #0
	str r0, [sp, #0x54]
	bl sub_0203608C
	add r5, r7, #0
	str r0, [sp, #0x5c]
	mov r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x3c
	str r0, [sp, #0x60]
	add r0, sp, #0x28
	ldr r4, _021D3284 ; =0x021D33FC
	str r0, [sp, #0x64]
	str r5, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r5, [sp, #0x24]
_021D316E:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	blx r1
	ldr r1, [sp, #0x1c]
	add r5, r5, #1
	add r0, r1, r0
	add r4, #0xc
	str r0, [sp, #0x1c]
	cmp r5, #2
	blt _021D316E
	ldr r4, _021D3284 ; =0x021D33FC
	mov r5, #0
_021D3186:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	blx r1
	ldr r1, [sp, #0x20]
	add r5, r5, #1
	add r0, r1, r0
	add r4, #0xc
	str r0, [sp, #0x20]
	cmp r5, #3
	blt _021D3186
	ldr r4, _021D3284 ; =0x021D33FC
	mov r5, #0
_021D319E:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	blx r1
	ldr r1, [sp, #0x24]
	add r5, r5, #1
	add r0, r1, r0
	add r4, #0xc
	str r0, [sp, #0x24]
	cmp r5, #4
	blt _021D319E
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _021D3284 ; =0x021D33FC
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	str r0, [sp, #0xc]
_021D31BE:
	ldr r1, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r1, r0
	bhi _021D31D2
	bl sub_02022974
_021D31D2:
	mov r6, #0
	ldr r4, [sp, #4]
	add r5, r6, #0
_021D31D8:
	add r0, r6, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D31EA
	ldr r0, [sp, #0x60]
	add r1, r4, r7
	str r1, [r0, r5]
	b _021D31F0
_021D31EA:
	ldr r1, [sp, #0x60]
	mov r0, #0
	str r0, [r1, r5]
_021D31F0:
	mov r0, #0x2f
	lsl r0, r0, #6
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, #4
	cmp r6, #5
	blt _021D31D8
	ldr r0, [sp, #8]
	cmp r0, #7
	beq _021D320C
	cmp r0, #8
	beq _021D320C
	cmp r0, #9
	bne _021D323E
_021D320C:
	mov r6, #0
	ldr r4, [sp, #4]
	add r5, r6, #0
_021D3212:
	add r0, r6, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D322A
	ldr r0, [sp, #0xc]
	sub r0, #0x1c
	ldr r0, [r0, #0]
	add r1, r4, r0
	ldr r0, [sp, #0x64]
	str r1, [r0, r5]
	b _021D3230
_021D322A:
	ldr r1, [sp, #0x64]
	mov r0, #0
	str r0, [r1, r5]
_021D3230:
	mov r0, #0x2f
	lsl r0, r0, #6
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, #4
	cmp r6, #5
	blt _021D3212
_021D323E:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021D324A
	add r0, sp, #0x50
	blx r1
_021D324A:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r7, r7, r0
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0xa
	blo _021D31BE
	ldr r0, [sp]
	bl sub_0202440C
	add r4, r0, #0
	bl sub_0202E2EC
	add r0, r4, #0
	bl sub_0202E35C
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3280: .word 0x00000BB8
_021D3284: .word 0x021D33FC
	thumb_func_end ov59_021D313C

	.rodata


	.global Unk_ov59_021D33FC
Unk_ov59_021D33FC: ; 0x021D33FC
	.incbin "incbin/overlay59_rodata.bin", 0x174, 0x78

