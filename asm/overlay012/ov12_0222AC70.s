	.include "macros/function.inc"
	.include "overlay012/ov12_0222AC70.inc"

	

	.text


	thumb_func_start ov12_0222AC70
ov12_0222AC70: ; 0x0222AC70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	str r0, [sp, #0xc]
	ldrb r0, [r4]
	cmp r0, #3
	bls _0222AC80
	b _0222ADF2
_0222AC80:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AC8C: ; jump table
	.short _0222AC94 - _0222AC8C - 2 ; case 0
	.short _0222AD46 - _0222AC8C - 2 ; case 1
	.short _0222AD64 - _0222AC8C - 2 ; case 2
	.short _0222ADBE - _0222AC8C - 2 ; case 3
_0222AC94:
	ldrb r0, [r4, #4]
	mov r7, #0
	add r1, r7, #0
	add r0, r0, #1
	strb r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov12_02220280
	cmp r0, #0
	ble _0222AD0A
	ldr r6, _0222AE60 ; =0x0223A09E
	add r5, r4, #0
_0222ACAC:
	add r1, sp, #0x10
	ldr r0, [r5, #0x14]
	add r1, #2
	add r2, sp, #0x10
	bl sub_0200D550
	ldrb r1, [r4, #4]
	ldrb r0, [r6]
	cmp r1, r0
	blo _0222ACF0
	add r0, r4, r7
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrb r2, [r0, #1]
	ldrb r1, [r6, #1]
	cmp r2, r1
	blo _0222ACF8
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r5, #0x14]
	bl sub_0200D408
	cmp r0, #1
	ldr r0, [r5, #0x14]
	bne _0222ACE8
	mov r1, #0
	bl sub_0200D3F4
	b _0222ACF8
_0222ACE8:
	mov r1, #1
	bl sub_0200D3F4
	b _0222ACF8
_0222ACF0:
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0200D3F4
_0222ACF8:
	ldr r0, [r4, #8]
	mov r1, #0
	add r5, r5, #4
	add r6, r6, #2
	add r7, r7, #1
	bl ov12_02220280
	cmp r7, r0
	blt _0222ACAC
_0222AD0A:
	ldrb r0, [r4, #4]
	cmp r0, #0x2d
	blo _0222ADA8
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AD3A
	add r6, r4, #0
	mov r7, #1
_0222AD22:
	ldr r0, [r6, #0x14]
	add r1, r7, #0
	bl sub_0200D3F4
	ldr r0, [r4, #8]
	mov r1, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222AD22
_0222AD3A:
	mov r0, #0
	strb r0, [r4, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222AE2C
_0222AD46:
	mov r1, #0x64
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x20
	mov r2, #0x3c
	add r3, r1, #0
	bl ov12_02225EF0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222AE2C
_0222AD64:
	add r0, r4, #0
	add r0, #0x20
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222ADAA
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AE2C
	add r7, r4, #0
	add r6, r4, #0
	add r7, #0x20
_0222AD84:
	add r0, r7, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov12_02225FA4
	ldr r0, [r6, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200D6E8
	ldr r0, [r4, #8]
	mov r1, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222AD84
_0222ADA8:
	b _0222AE2C
_0222ADAA:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	ldrb r0, [r4, #4]
	cmp r0, #0x2d
	blo _0222AE2C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222AE2C
_0222ADBE:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0222ADC8
	sub r0, r0, #1
	strb r0, [r4, #5]
_0222ADC8:
	ldrb r0, [r4, #6]
	cmp r0, #0xf
	bhs _0222ADD2
	add r0, r0, #1
	strb r0, [r4, #6]
_0222ADD2:
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0222ADE4
	ldrb r0, [r4, #6]
	cmp r0, #0xf
	bne _0222ADE4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222ADE4:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #5]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222AE64 ; =0x04000052
	strh r1, [r0]
	b _0222AE2C
_0222ADF2:
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AE1A
	add r6, r4, #0
	add r7, r5, #0
_0222AE04:
	ldr r0, [r6, #0x14]
	bl sub_0200D0F4
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222AE04
_0222AE1A:
	ldr r0, [r4, #8]
	ldr r1, [sp, #0xc]
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0222AE2C:
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AE56
	add r6, r4, #0
	add r7, r5, #0
_0222AE3E:
	ldr r0, [r6, #0x14]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222AE3E
_0222AE56:
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222AE60: .word 0x0223A09E
_0222AE64: .word 0x04000052
	thumb_func_end ov12_0222AC70

	thumb_func_start ov12_0222AE68
ov12_0222AE68: ; 0x0222AE68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_0221FDE4
	mov r1, #0x44
	bl sub_02018144
	add r4, r0, #0
	bne _0222AE86
	bl GF_AssertFail
_0222AE86:
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4]
	str r5, [r4, #0xc]
	ldr r0, [sp]
	str r6, [r4, #0x10]
	str r0, [r4, #8]
	ldr r1, [sp]
	add r0, sp, #8
	bl ov12_0222329C
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl ov12_02235780
	mov r0, #0xf
	strb r0, [r4, #5]
	mov r0, #0
	strb r0, [r4, #6]
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #5]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222AF98 ; =0x04000052
	strh r1, [r0]
	ldr r0, [sp]
	str r7, [r4, #0x14]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_0223525C
	cmp r0, #3
	bne _0222AEE2
	ldr r0, [sp]
	bl ov12_0221FDD4
	add r1, r0, #0
	mov r0, #0
	add r2, sp, #4
	bl ov12_02235350
	b _0222AEF2
_0222AEE2:
	ldr r0, [sp]
	bl ov12_0221FDD4
	add r1, r0, #0
	mov r0, #1
	add r2, sp, #4
	bl ov12_02235350
_0222AEF2:
	ldr r0, [r4, #8]
	mov r1, #0
	mov r6, #1
	bl ov12_02220280
	cmp r0, #1
	ble _0222AF2C
	add r5, r4, #4
	add r7, sp, #4
_0222AF04:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r2, sp, #8
	bl sub_0200CE6C
	str r0, [r5, #0x14]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl sub_0200D4C4
	ldr r0, [r4, #8]
	mov r1, #0
	add r5, r5, #4
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222AF04
_0222AF2C:
	add r3, sp, #4
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0x14]
	bl sub_0200D4C4
	mov r6, #0
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222AF86
	add r5, r4, #0
	add r7, r6, #0
_0222AF4E:
	add r1, r4, r6
	mov r0, #0
	strb r0, [r1, #1]
	ldr r0, [r5, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	mov r2, #0x20
	sub r2, r2, r7
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x14]
	mov r1, #0
	asr r2, r2, #0x10
	bl sub_0200D5DC
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #8]
	mov r1, #0
	add r5, r5, #4
	add r7, r7, #4
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222AF4E
_0222AF86:
	mov r3, #1
	ldr r0, [sp]
	ldr r1, _0222AF9C ; =ov12_0222AC70
	add r2, r4, #0
	lsl r3, r3, #0xc
	bl ov12_022201CC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222AF98: .word 0x04000052
_0222AF9C: .word ov12_0222AC70
	thumb_func_end ov12_0222AE68

	thumb_func_start ov12_0222AFA0
ov12_0222AFA0: ; 0x0222AFA0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	bls _0222AFB0
	b _0222B180
_0222AFB0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AFBC: ; jump table
	.short _0222AFC8 - _0222AFBC - 2 ; case 0
	.short _0222B02A - _0222AFBC - 2 ; case 1
	.short _0222B044 - _0222AFBC - 2 ; case 2
	.short _0222B068 - _0222AFBC - 2 ; case 3
	.short _0222B0C2 - _0222AFBC - 2 ; case 4
	.short _0222B110 - _0222AFBC - 2 ; case 5
_0222AFC8:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _0222B020
	add r0, r4, #0
	add r0, #0x38
	bl ov12_02226138
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r2, #0x38
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02008274
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222B020:
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B02A:
	mov r0, #0x1f
	str r0, [sp]
	mov r1, #0
	ldr r0, [r4, #0x10]
	mov r2, #0xa
	add r3, r1, #0
	bl sub_020086FC
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B044:
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _0222B072
	mov r0, #0x1f
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	add r3, r2, #0
	bl sub_020086FC
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B068:
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	beq _0222B074
_0222B072:
	b _0222B18E
_0222B074:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #8]
	cmp r0, #3
	blo _0222B0BA
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov12_02220280
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov12_02220280
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl ov12_02220280
	str r0, [sp]
	add r0, r4, #0
	lsl r1, r5, #0x10
	lsl r3, r6, #0x10
	add r0, #0x14
	asr r1, r1, #0x10
	mov r2, #0x64
	asr r3, r3, #0x10
	bl ov12_02225E68
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B0BA:
	mov r0, #1
	add sp, #4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B0C2:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	bne _0222B106
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222B106:
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B110:
	add r0, r4, #0
	add r0, #0x14
	bl ov12_02225EB8
	cmp r0, #1
	ldr r0, [r4, #0x10]
	bne _0222B154
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x16
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x28]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222B154:
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	add r2, #0xf3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222B180:
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222B18E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_0222AFA0

	thumb_func_start ov12_0222B194
ov12_0222B194: ; 0x0222B194
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x5c
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #8]
	strb r0, [r4]
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02223354
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x64
	lsl r3, r6, #0x10
	add r0, #0x14
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225E68
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x38
	mov r1, #2
	add r3, r2, #0
	bl ov12_02226108
	ldr r0, [r4, #0xc]
	ldr r1, _0222B21C ; =ov12_0222AFA0
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0222B21C: .word ov12_0222AFA0
	thumb_func_end ov12_0222B194

	thumb_func_start ov12_0222B220
ov12_0222B220: ; 0x0222B220
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #4
	bls _0222B230
	b _0222B448
_0222B230:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222B23C: ; jump table
	.short _0222B246 - _0222B23C - 2 ; case 0
	.short _0222B2AC - _0222B23C - 2 ; case 1
	.short _0222B310 - _0222B23C - 2 ; case 2
	.short _0222B374 - _0222B23C - 2 ; case 3
	.short _0222B3D8 - _0222B23C - 2 ; case 4
_0222B246:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222B28A
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B28A:
	mov r1, #0x96
	str r1, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0x32
	add r0, #0x10
	add r3, r2, #0
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B2AC:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222B2F0
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B2F0:
	mov r2, #0x64
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0x32
	mov r3, #0x96
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B310:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222B354
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B354:
	mov r2, #0x96
	mov r1, #0x64
	str r2, [sp]
	str r1, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	add r3, r1, #0
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B374:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222B3B8
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B3B8:
	mov r2, #0x64
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x96
	add r0, #0x10
	add r3, r1, #0
	bl ov12_02225EF0
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B3D8:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #1
	ldr r0, [r4, #0xc]
	bne _0222B41C
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r3, r4, pc}
_0222B41C:
	mov r1, #0xc
	add r2, r1, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf3
	bl sub_02007DEC
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222B448:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222B220

	thumb_func_start ov12_0222B45C
ov12_0222B45C: ; 0x0222B45C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x58
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_02223354
	str r0, [r4, #4]
	mov r0, #0x32
	str r0, [sp]
	mov r1, #0x64
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	mov r2, #0x96
	add r3, r1, #0
	bl ov12_02225EF0
	ldr r0, [r4, #8]
	ldr r1, _0222B4C4 ; =ov12_0222B220
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0222B4C4: .word ov12_0222B220
	thumb_func_end ov12_0222B45C

	thumb_func_start ov12_0222B4C8
ov12_0222B4C8: ; 0x0222B4C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r2, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _0222B4E2
	cmp r0, #1
	beq _0222B5C8
	cmp r0, #2
	bne _0222B4E0
	b _0222B62A
_0222B4E0:
	b _0222B65E
_0222B4E2:
	ldrb r3, [r5]
	mov r0, #0x1f
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #1
	add r1, r3, #1
	str r0, [sp, #0xc]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r0, #6
	mul r0, r1
	ldr r1, _0222B67C ; =0x0223A102
	ldrsh r2, [r1, r0]
	ldr r1, [sp, #8]
	sub r7, r2, r1
	mov r1, #0xa
	ldrsh r3, [r5, r1]
	ldr r1, _0222B680 ; =0x0223A100
	ldrsh r6, [r1, r0]
	mov r1, #8
	ldrsh r2, [r5, r1]
	ldr r1, _0222B684 ; =0x0223A0FE
	ldrsh r4, [r1, r0]
	lsl r0, r7, #0x10
	str r3, [sp]
	add r1, r2, r4
	lsr r0, r0, #0x10
	add r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x28
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0xa
	ldrsh r3, [r5, r0]
	mov r0, #8
	ldrsh r2, [r5, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	sub r1, r2, r4
	str r3, [sp]
	sub r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x4c
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	mov r0, #6
	mul r0, r1
	ldr r1, _0222B67C ; =0x0223A102
	ldrsh r2, [r1, r0]
	ldr r1, [sp, #8]
	sub r7, r2, r1
	mov r1, #0xa
	ldrsh r3, [r5, r1]
	ldr r1, _0222B680 ; =0x0223A100
	ldrsh r6, [r1, r0]
	mov r1, #8
	ldrsh r2, [r5, r1]
	ldr r1, _0222B684 ; =0x0223A0FE
	ldrsh r4, [r1, r0]
	lsl r0, r7, #0x10
	str r3, [sp]
	add r1, r2, r4
	lsr r0, r0, #0x10
	add r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x70
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0xa
	ldrsh r3, [r5, r0]
	mov r0, #8
	ldrsh r2, [r5, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	sub r1, r2, r4
	str r3, [sp]
	sub r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x94
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_0222B5C8:
	mov r0, #0
	add r7, r5, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r7, #0x28
	add r6, r5, #0
	add r4, r5, #0
_0222B5D6:
	add r0, r7, #0
	bl ov12_02225C14
	cmp r0, #0
	bne _0222B5EC
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	b _0222B5FA
_0222B5EC:
	mov r1, #0x28
	mov r2, #0x2a
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, #0x18]
	bl sub_0200D4C4
_0222B5FA:
	ldr r0, [r4, #0x18]
	bl sub_0200D330
	ldr r0, [sp, #0x14]
	add r7, #0x24
	add r0, r0, #1
	add r6, #0x24
	add r4, r4, #4
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0222B5D6
	ldr r0, [sp, #0x10]
	cmp r0, #4
	bne _0222B670
	ldrb r0, [r5]
	cmp r0, #9
	bne _0222B624
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	b _0222B670
_0222B624:
	mov r0, #0
	strb r0, [r5, #1]
	b _0222B670
_0222B62A:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0222B634
	sub r0, r0, #1
	strb r0, [r5, #4]
_0222B634:
	ldrb r0, [r5, #5]
	cmp r0, #0xf
	bhs _0222B63E
	add r0, r0, #1
	strb r0, [r5, #5]
_0222B63E:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _0222B650
	ldrb r0, [r5, #5]
	cmp r0, #0xf
	bne _0222B650
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_0222B650:
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222B688 ; =0x04000052
	strh r1, [r0]
	b _0222B670
_0222B65E:
	ldr r0, [r5, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0222B670:
	ldr r0, [r5, #0x14]
	bl sub_0200C7EC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B67C: .word 0x0223A102
_0222B680: .word 0x0223A100
_0222B684: .word 0x0223A0FE
_0222B688: .word 0x04000052
	thumb_func_end ov12_0222B4C8

	thumb_func_start ov12_0222B68C
ov12_0222B68C: ; 0x0222B68C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x18]
	bl ov12_0221FDE4
	mov r1, #0xb8
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0x10]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0xc]
	bl ov12_022202EC
	str r0, [r4, #0x14]
	mov r0, #8
	strb r0, [r4, #4]
	mov r1, #6
	strb r1, [r4, #5]
	sub r1, r1, #7
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	bl ov12_02235780
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222B90C ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02223334
	str r0, [sp, #0x20]
	ldr r0, [r4, #0xc]
	bl ov12_0222339C
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02223344
	str r0, [sp, #0x1c]
	mov r6, #0
	add r5, r4, #0
_0222B72A:
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl ov12_022202C0
	mov r1, #1
	str r0, [r5, #0x18]
	bl sub_0200D810
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0222B72A
	ldr r0, [r4, #0xc]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_0223525C
	cmp r0, #3
	ldr r0, [r4, #0x18]
	bne _0222B81A
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x20]
	mov r1, #0x14
	bl sub_0200D474
	ldr r0, [r4, #0x24]
	mov r1, #0x14
	bl sub_0200D474
	ldr r0, [r4, #0x18]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r5, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	bl sub_02003B08
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r5, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xc4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	bl sub_02003B08
	b _0222B8FC
_0222B81A:
	mov r1, #0x14
	bl sub_0200D474
	ldr r0, [r4, #0x1c]
	mov r1, #0x14
	bl sub_0200D474
	ldr r0, [r4, #0x20]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x24]
	mov r1, #0xa
	bl sub_0200D474
	ldr r0, [r4, #0x18]
	add r1, r7, #1
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r7, #1
	bl sub_0200D460
	ldr r0, [r4, #0x20]
	add r1, r7, #1
	bl sub_0200D460
	ldr r0, [r4, #0x24]
	add r1, r7, #1
	bl sub_0200D460
	ldr r0, [r4, #0x18]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	bl sub_0200D460
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r5, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xc4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	bl sub_02003B08
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r5, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	bl sub_02003B08
_0222B8FC:
	ldr r0, [r4, #0xc]
	ldr r1, _0222B910 ; =ov12_0222B4C8
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0222B90C: .word 0x04000052
_0222B910: .word ov12_0222B4C8
	thumb_func_end ov12_0222B68C

	thumb_func_start ov12_0222B914
ov12_0222B914: ; 0x0222B914
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222B926
	cmp r0, #1
	beq _0222B980
	b _0222B9C0
_0222B926:
	ldrb r1, [r4, #2]
	ldr r5, _0222B9D0 ; =0x0223A099
	mov r2, #0x64
	lsl r0, r1, #1
	add r3, r1, r0
	ldr r0, _0222B9D4 ; =0x0223A09A
	ldr r1, _0222B9D8 ; =0x0223A098
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r3, [r5, r3]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc
	bl ov12_02225E68
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldr r0, _0222B9DC ; =0x00007FFF
	bne _0222B95C
	str r0, [sp]
	mov r1, #0
	ldr r0, [r4, #8]
	mov r2, #6
	add r3, r1, #0
	bl sub_020086FC
	b _0222B96A
_0222B95C:
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #8]
	mov r1, #6
	add r3, r2, #0
	bl sub_020086FC
_0222B96A:
	ldrb r1, [r4, #2]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #2]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0222B980:
	add r0, r4, #0
	add r0, #0xc
	bl ov12_02225EB8
	cmp r0, #0
	bne _0222B9A8
	ldr r0, [r4, #8]
	bl sub_020087B4
	cmp r0, #0
	bne _0222B9A8
	ldrb r0, [r4, #1]
	cmp r0, #4
	ldrb r0, [r4]
	bhs _0222B9A4
	sub r0, r0, #1
	strb r0, [r4]
	b _0222B9A8
_0222B9A4:
	add r0, r0, #1
	strb r0, [r4]
_0222B9A8:
	mov r1, #0xc
	ldrsh r2, [r4, r1]
	ldr r0, [r4, #8]
	bl sub_02007DEC
	mov r2, #0xe
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0xd
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_0222B9C0:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222B9D0: .word 0x0223A099
_0222B9D4: .word 0x0223A09A
_0222B9D8: .word 0x0223A098
_0222B9DC: .word 0x00007FFF
	thumb_func_end ov12_0222B914

	thumb_func_start ov12_0222B9E0
ov12_0222B9E0: ; 0x0222B9E0
	push {r3, r4, r5, lr}
	mov r1, #0x30
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #2]
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	ldr r1, _0222BA14 ; =ov12_0222B914
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_0222BA14: .word ov12_0222B914
	thumb_func_end ov12_0222B9E0

	thumb_func_start ov12_0222BA18
ov12_0222BA18: ; 0x0222BA18
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222BA2C
	cmp r0, #1
	beq _0222BA66
	b _0222BABE
_0222BA2C:
	ldrb r1, [r4, #1]
	ldr r2, _0222BAD0 ; =0x0223A0E0
	ldr r5, _0222BAD4 ; =0x0223A0E1
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222BAD8 ; =0x0223A0E2
	ldr r1, _0222BADC ; =0x0223A0DF
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222BAE0 ; =0x0223A0E3
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225EF0
	ldrb r0, [r4, #1]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0222BA66:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222BA84
	ldrb r0, [r4, #1]
	cmp r0, #3
	ldrb r0, [r4]
	bhs _0222BA80
	sub r0, r0, #1
	strb r0, [r4]
	b _0222BA84
_0222BA80:
	add r0, r0, #1
	strb r0, [r4]
_0222BA84:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #2
	mov r1, #4
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	ldr r2, [r4, #0x24]
	bl ov12_02225FD4
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	add sp, #0xc
	pop {r4, r5, pc}
_0222BABE:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222BAD0: .word 0x0223A0E0
_0222BAD4: .word 0x0223A0E1
_0222BAD8: .word 0x0223A0E2
_0222BADC: .word 0x0223A0DF
_0222BAE0: .word 0x0223A0E3
	thumb_func_end ov12_0222BA18

	thumb_func_start ov12_0222BAE4
ov12_0222BAE4: ; 0x0222BAE4
	push {r3, r4, r5, lr}
	mov r1, #0x34
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_02223354
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, _0222BB2C ; =ov12_0222BA18
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222BB2C: .word ov12_0222BA18
	thumb_func_end ov12_0222BAE4

	thumb_func_start ov12_0222BB30
ov12_0222BB30: ; 0x0222BB30
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	bls _0222BB40
	b _0222BCA0
_0222BB40:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222BB4C: ; jump table
	.short _0222BB58 - _0222BB4C - 2 ; case 0
	.short _0222BB92 - _0222BB4C - 2 ; case 1
	.short _0222BBD4 - _0222BB4C - 2 ; case 2
	.short _0222BBFE - _0222BB4C - 2 ; case 3
	.short _0222BC20 - _0222BB4C - 2 ; case 4
	.short _0222BC5E - _0222BB4C - 2 ; case 5
_0222BB58:
	ldrb r1, [r4, #1]
	ldr r2, _0222BCE0 ; =0x0223A0B8
	ldr r5, _0222BCE4 ; =0x0223A0B9
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222BCE8 ; =0x0223A0BA
	ldr r1, _0222BCEC ; =0x0223A0B7
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222BCF0 ; =0x0223A0BB
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225EF0
	ldrb r0, [r4, #1]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0222BB92:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222BBA4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222BBA4:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r4, r5, pc}
_0222BBD4:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	mov r1, #0
	add r3, r0, #0
	lsl r3, r3, #0x10
	str r1, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov12_02225BC8
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0222BBFE:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225C14
	cmp r0, #0
	bne _0222BC10
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222BC10:
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	add sp, #0xc
	pop {r4, r5, pc}
_0222BC20:
	ldrb r1, [r4, #1]
	ldr r2, _0222BCE0 ; =0x0223A0B8
	ldr r5, _0222BCE4 ; =0x0223A0B9
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222BCE8 ; =0x0223A0BA
	ldr r1, _0222BCEC ; =0x0223A0B7
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222BCF0 ; =0x0223A0BB
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225EF0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0222BC5E:
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222BC70
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222BC70:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #1
	str r0, [sp]
	mov r1, #2
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r4, r5, pc}
_0222BCA0:
	mov r2, #4
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf3
	bl sub_02007DEC
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222BCE0: .word 0x0223A0B8
_0222BCE4: .word 0x0223A0B9
_0222BCE8: .word 0x0223A0BA
_0222BCEC: .word 0x0223A0B7
_0222BCF0: .word 0x0223A0BB
	thumb_func_end ov12_0222BB30

	thumb_func_start ov12_0222BCF4
ov12_0222BCF4: ; 0x0222BCF4
	push {r3, r4, r5, lr}
	mov r1, #0x34
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	mov r0, #2
	ldrsh r0, [r4, r0]
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_02223354
	strh r0, [r4, #6]
	ldr r0, [r4, #8]
	ldr r1, _0222BD44 ; =ov12_0222BB30
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_0222BD44: .word ov12_0222BB30
	thumb_func_end ov12_0222BCF4

	thumb_func_start ov12_0222BD48
ov12_0222BD48: ; 0x0222BD48
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #4
	bhi _0222BE32
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222BD62: ; jump table
	.short _0222BD6C - _0222BD62 - 2 ; case 0
	.short _0222BDA6 - _0222BD62 - 2 ; case 1
	.short _0222BDC4 - _0222BD62 - 2 ; case 2
	.short _0222BDDA - _0222BD62 - 2 ; case 3
	.short _0222BE14 - _0222BD62 - 2 ; case 4
_0222BD6C:
	ldr r0, [r4, #8]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0222BE44 ; =0x00007FFF
	mov r1, #1
	str r0, [sp, #8]
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	sub r3, r1, #3
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0x10]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020086FC
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BDA6:
	ldr r0, [r4, #4]
	bl sub_0200384C
	cmp r0, #0
	bne _0222BE40
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _0222BE40
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BDC4:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #5
	bls _0222BE40
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BDDA:
	ldr r0, [r4, #8]
	bl ov12_02222354
	add r2, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0222BE44 ; =0x00007FFF
	mov r1, #1
	str r0, [sp, #8]
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	lsr r2, r2, #0x10
	sub r3, r1, #3
	bl sub_02003178
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x10]
	mov r1, #0x10
	add r3, r2, #0
	bl sub_020086FC
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BE14:
	ldr r0, [r4, #4]
	bl sub_0200384C
	cmp r0, #0
	bne _0222BE40
	ldr r0, [r4, #0x10]
	bl sub_020087B4
	cmp r0, #0
	bne _0222BE40
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222BE32:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222BE40:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0222BE44: .word 0x00007FFF
	thumb_func_end ov12_0222BD48

	thumb_func_start ov12_0222BE48
ov12_0222BE48: ; 0x0222BE48
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_0222332C
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r1, _0222BE7C ; =ov12_0222BD48
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	nop
_0222BE7C: .word ov12_0222BD48
	thumb_func_end ov12_0222BE48

	thumb_func_start ov12_0222BE80
ov12_0222BE80: ; 0x0222BE80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222BE94
	cmp r0, #1
	beq _0222BF00
	b _0222BF74
_0222BE94:
	ldrb r1, [r4, #1]
	ldr r2, _0222BF88 ; =0x0223A0C2
	ldr r5, _0222BF8C ; =0x0223A0C3
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222BF90 ; =0x0223A0C4
	ldr r1, _0222BF94 ; =0x0223A0C1
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222BF98 ; =0x0223A0C5
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov12_02225EF0
	ldrb r1, [r4, #1]
	ldr r6, _0222BF9C ; =0x0223A0A4
	lsl r0, r1, #1
	add r5, r1, r0
	mov r0, #4
	ldrsh r3, [r4, r0]
	ldr r0, _0222BFA0 ; =0x0223A0A5
	mov r1, #0
	ldrb r0, [r0, r5]
	add r2, r1, #0
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, _0222BFA4 ; =0x0223A0A6
	ldrb r0, [r0, r5]
	ldrb r5, [r6, r5]
	str r0, [sp, #4]
	add r3, r3, r5
	add r0, r4, #0
	lsl r3, r3, #0x10
	add r0, #0x34
	asr r3, r3, #0x10
	bl ov12_02225BC8
	ldrb r0, [r4, #1]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222BF00:
	add r0, r4, #0
	add r0, #0x10
	mov r5, #0
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222BF10
	add r5, r5, #1
_0222BF10:
	add r0, r4, #0
	add r0, #0x34
	bl ov12_02225C14
	cmp r0, #0
	bne _0222BF1E
	add r5, r5, #1
_0222BF1E:
	cmp r5, #2
	blt _0222BF44
	ldrb r0, [r4, #1]
	cmp r0, #3
	blo _0222BF40
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	cmp r0, #3
	blo _0222BF44
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222BF44
_0222BF40:
	mov r0, #0
	strb r0, [r4]
_0222BF44:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #0
	str r0, [sp]
	mov r1, #0x36
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov12_02226024
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0222BF74:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0222BF88: .word 0x0223A0C2
_0222BF8C: .word 0x0223A0C3
_0222BF90: .word 0x0223A0C4
_0222BF94: .word 0x0223A0C1
_0222BF98: .word 0x0223A0C5
_0222BF9C: .word 0x0223A0A4
_0222BFA0: .word 0x0223A0A5
_0222BFA4: .word 0x0223A0A6
	thumb_func_end ov12_0222BE80

	thumb_func_start ov12_0222BFA8
ov12_0222BFA8: ; 0x0222BFA8
	push {r3, r4, r5, lr}
	mov r1, #0x58
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov12_02223354
	strh r0, [r4, #6]
	ldr r0, [r4, #8]
	ldr r1, _0222BFF0 ; =ov12_0222BE80
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222BFF0: .word ov12_0222BE80
	thumb_func_end ov12_0222BFA8

	thumb_func_start ov12_0222BFF4
ov12_0222BFF4: ; 0x0222BFF4
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222C00A
	cmp r0, #1
	beq _0222C022
	cmp r0, #2
	beq _0222C042
	b _0222C084
_0222C00A:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	blo _0222C0A0
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C0A0
_0222C022:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl sub_0200D810
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C0A0
_0222C042:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	blo _0222C0A0
	ldr r0, _0222C0B4 ; =0x0400004A
	mov r1, #0x3f
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0222C0B8 ; =0xFFFFC0FF
	lsl r1, r1, #8
	and r2, r3
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C0A0
_0222C084:
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r1, [r3, #0]
	ldr r0, _0222C0BC ; =0xFFFF1FFF
	and r0, r1
	str r0, [r3, #0]
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
_0222C0A0:
	ldr r0, [r4, #0xc]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200D330
	ldr r0, [r4, #8]
	bl sub_0200C7EC
	pop {r4, pc}
	; .align 2, 0
_0222C0B4: .word 0x0400004A
_0222C0B8: .word 0xFFFFC0FF
_0222C0BC: .word 0xFFFF1FFF
	thumb_func_end ov12_0222BFF4

	thumb_func_start ov12_0222C0C0
ov12_0222C0C0: ; 0x0222C0C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x14
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x10]
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0222C198 ; =0xFFFF1FFF
	and r2, r1
	lsr r1, r0, #0xb
	orr r1, r2
	str r1, [r0, #0]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0222C19C ; =0xFFFFC0FF
	and r2, r1
	mov r1, #0x12
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02223334
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02223344
	str r0, [sp, #0x18]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0222332C
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r1, #0x20
	lsl r0, r6, #0x14
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r1, #0xe0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	bl sub_02003B08
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200D3F4
	ldr r0, [r4, #4]
	ldr r1, _0222C1A0 ; =ov12_0222BFF4
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C198: .word 0xFFFF1FFF
_0222C19C: .word 0xFFFFC0FF
_0222C1A0: .word ov12_0222BFF4
	thumb_func_end ov12_0222C0C0

	thumb_func_start ov12_0222C1A4
ov12_0222C1A4: ; 0x0222C1A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _0222C1B4
	b _0222C396
_0222C1B4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222C1C0: ; jump table
	.short _0222C1C8 - _0222C1C0 - 2 ; case 0
	.short _0222C1DA - _0222C1C0 - 2 ; case 1
	.short _0222C2F2 - _0222C1C0 - 2 ; case 2
	.short _0222C32A - _0222C1C0 - 2 ; case 3
_0222C1C8:
	ldr r0, [r4, #0xc]
	mov r1, #0xe
	mov r2, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C1DA:
	mov r0, #0
	add r6, r4, #0
	ldr r7, _0222C3BC ; =0x0223A094
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r5, r4, #0
	add r6, #0x20
_0222C1E8:
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _0222C1F4
	cmp r0, #1
	beq _0222C222
	b _0222C270
_0222C1F4:
	ldrb r0, [r5, #0x19]
	add r0, r0, #1
	strb r0, [r5, #0x19]
	ldrb r1, [r5, #0x19]
	ldrb r0, [r7]
	cmp r1, r0
	blo _0222C276
	mov r0, #5
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #0x64
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #5
	add r3, r1, #0
	bl ov12_02225EF0
	ldrb r0, [r5, #0x18]
	add r0, r0, #1
	strb r0, [r5, #0x18]
	b _0222C276
_0222C222:
	add r0, r6, #0
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222C234
	ldrb r0, [r5, #0x18]
	add r0, r0, #1
	strb r0, [r5, #0x18]
	b _0222C276
_0222C234:
	add r0, r6, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov12_02225FA4
	mov r0, #8
	ldrsb r0, [r4, r0]
	bl _f_itof
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	bl _f_mul
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x24]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	ldr r2, [r4, #4]
	ldrsh r1, [r4, r1]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x34]
	asr r2, r2, #0x10
	bl ov12_0222605C
	b _0222C276
_0222C270:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
_0222C276:
	ldr r0, [r5, #0x1c]
	bl sub_0200D330
	ldr r0, [sp, #0x14]
	add r5, #0x2c
	add r0, r0, #1
	add r7, r7, #1
	add r6, #0x2c
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _0222C1E8
	ldr r0, [sp, #0x10]
	cmp r0, #3
	bge _0222C294
	b _0222C3B2
_0222C294:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhs _0222C2EA
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_0222C2A6:
	add r1, sp, #0x18
	ldr r0, [r5, #0x1c]
	add r1, #2
	add r2, sp, #0x18
	bl sub_0200D550
	add r2, sp, #0x18
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x1c]
	bl sub_0200D4C4
	mov r0, #8
	ldrsb r0, [r4, r0]
	bl _f_itof
	add r1, r0, #0
	mov r2, #0xfe
	ldr r0, [r5, #0x1c]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	strb r7, [r5, #0x18]
	strb r7, [r5, #0x19]
	add r6, r6, #1
	add r5, #0x2c
	cmp r6, #3
	blt _0222C2A6
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C2EA:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C2F2:
	add r5, r4, #0
	mov r7, #0
	add r6, r4, #0
	add r5, #0x20
_0222C2FA:
	ldr r0, [r6, #0x1c]
	mov r1, #0
	bl sub_0200D810
	mov r0, #0x64
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #5
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0x64
	add r3, r1, #0
	bl ov12_02225EF0
	add r7, r7, #1
	add r6, #0x2c
	add r5, #0x2c
	cmp r7, #3
	blt _0222C2FA
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C32A:
	mov r7, #0
	add r6, r4, #0
	str r7, [sp, #0xc]
	add r6, #0x20
	add r5, r4, #0
_0222C334:
	add r0, r6, #0
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222C342
	add r7, r7, #1
	b _0222C37C
_0222C342:
	add r0, r6, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl ov12_02225FA4
	mov r0, #8
	ldrsb r0, [r4, r0]
	bl _f_itof
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	bl _f_mul
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x1c]
	bl sub_0200D6E8
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	ldr r2, [r4, #4]
	ldrsh r1, [r4, r1]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x34]
	asr r2, r2, #0x10
	bl ov12_0222605C
_0222C37C:
	ldr r0, [sp, #0xc]
	add r6, #0x2c
	add r0, r0, #1
	add r5, #0x2c
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _0222C334
	cmp r7, #3
	blt _0222C3B2
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222C3B2
_0222C396:
	ldr r0, [r4, #0xc]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0222C3B2:
	ldr r0, [r4, #0x14]
	bl sub_0200C7EC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222C3BC: .word 0x0223A094
	thumb_func_end ov12_0222C1A4

	thumb_func_start ov12_0222C3C0
ov12_0222C3C0: ; 0x0222C3C0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x9c
	str r0, [sp]
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	ldr r0, [sp]
	str r0, [r4, #0x10]
	bl ov12_022202EC
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov12_022232FC
	str r0, [r4, #0xc]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #2
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #2]
	ldr r0, [r4, #0x10]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov12_02223354
	mov r1, #0
	str r0, [r4, #4]
	mvn r1, r1
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ov12_02235780
	mov r6, #0
	ldr r1, _0222C49C ; =0x0000060C
	ldr r0, _0222C4A0 ; =0x04000052
	add r5, r4, #0
	strh r1, [r0]
	add r7, r6, #0
_0222C42C:
	strb r7, [r5, #0x18]
	strb r7, [r5, #0x19]
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov12_022202C0
	str r0, [r5, #0x1c]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0x1c]
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r5, #0x1c]
	add r1, r6, #1
	bl sub_0200D474
	add r6, r6, #1
	add r5, #0x2c
	cmp r6, #3
	blt _0222C42C
	ldr r0, [sp]
	mov r1, #0
	bl ov12_022234A8
	cmp r0, #1
	bne _0222C46A
	mov r0, #0
	mvn r0, r0
	b _0222C46C
_0222C46A:
	mov r0, #1
_0222C46C:
	strb r0, [r4, #8]
	mov r6, #0
	add r5, r4, #0
	mov r7, #8
_0222C474:
	ldrsb r0, [r4, r7]
	bl _f_itof
	add r1, r0, #0
	mov r2, #0xfe
	ldr r0, [r5, #0x1c]
	lsl r2, r2, #0x16
	bl sub_0200D6E8
	add r6, r6, #1
	add r5, #0x2c
	cmp r6, #3
	blt _0222C474
	ldr r0, [r4, #0x10]
	ldr r1, _0222C4A4 ; =ov12_0222C1A4
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C49C: .word 0x0000060C
_0222C4A0: .word 0x04000052
_0222C4A4: .word ov12_0222C1A4
	thumb_func_end ov12_0222C3C0

	thumb_func_start ov12_0222C4A8
ov12_0222C4A8: ; 0x0222C4A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _0222C4B8
	b _0222C5E2
_0222C4B8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222C4C4: ; jump table
	.short _0222C4CC - _0222C4C4 - 2 ; case 0
	.short _0222C4FE - _0222C4C4 - 2 ; case 1
	.short _0222C512 - _0222C4C4 - 2 ; case 2
	.short _0222C56E - _0222C4C4 - 2 ; case 3
_0222C4CC:
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl ov12_02222354
	add r2, r0, #0
	mov r1, #0
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #1
	add r0, r5, #0
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_02003178
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0222C4FE:
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	bl sub_0200384C
	cmp r0, #0
	bne _0222C5F0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222C512:
	mov r0, #5
	str r0, [sp]
	ldrb r1, [r4, #1]
	add r0, r4, #0
	add r0, #0xb4
	lsl r2, r1, #1
	ldr r1, _0222C5F4 ; =0x0223A0EE
	ldrsh r1, [r1, r2]
	mov r2, #0
	add r3, r2, #0
	bl ov12_02226108
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldr r0, [r4, #0xc]
	bne _0222C544
	bl ov12_0222332C
	mov r1, #0
	mov r2, #0xff
	mov r3, #0xa
	str r1, [sp]
	bl sub_02003A2C
	b _0222C556
_0222C544:
	bl ov12_0222332C
	ldr r1, _0222C5F8 ; =0x00007FFF
	mov r2, #0xff
	str r1, [sp]
	mov r1, #0
	mov r3, #0xa
	bl sub_02003A2C
_0222C556:
	mov r0, #3
	strb r0, [r4, #3]
	ldrb r1, [r4, #2]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #2]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222C56E:
	add r0, r4, #0
	add r0, #0xb4
	bl ov12_02226138
	cmp r0, #0
	bne _0222C58C
	ldrb r0, [r4, #1]
	cmp r0, #8
	ldrb r0, [r4]
	blo _0222C588
	add r0, r0, #1
	strb r0, [r4]
	b _0222C58C
_0222C588:
	sub r0, r0, #1
	strb r0, [r4]
_0222C58C:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0222C5AE
	sub r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0222C5AE
	ldr r0, [r4, #0xc]
	bl ov12_0222332C
	mov r1, #0
	mov r2, #0xff
	add r3, r1, #0
	str r1, [sp]
	bl sub_02003A2C
_0222C5AE:
	mov r6, #0
	add r5, r4, #0
	mov r7, #0x14
_0222C5B4:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0222C5C8
	mov r2, #0xb4
	ldrsh r3, [r4, r2]
	ldrsh r2, [r5, r7]
	mov r1, #0
	add r2, r3, r2
	bl sub_02007DEC
_0222C5C8:
	add r6, r6, #1
	add r5, #0x14
	cmp r6, #4
	blt _0222C5B4
	mov r3, #0xb4
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #0
	bl sub_02019184
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222C5E2:
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222C5F0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222C5F4: .word 0x0223A0EE
_0222C5F8: .word 0x00007FFF
	thumb_func_end ov12_0222C4A8

	thumb_func_start ov12_0222C5FC
ov12_0222C5FC: ; 0x0222C5FC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xd8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl ov12_02220278
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	bl ov12_02223364
	cmp r0, #1
	bne _0222C62E
	mov r1, #0x40
	b _0222C630
_0222C62E:
	mov r1, #0xa
_0222C630:
	add r2, r4, #0
	add r0, r5, #0
	add r2, #0x14
	add r3, r4, #4
	bl ov12_02235998
	ldr r0, [r4, #4]
	mov r6, #0
	cmp r0, #0
	ble _0222C666
	add r5, r4, #0
	add r7, r6, #0
_0222C648:
	ldr r0, [r5, #0x1c]
	add r1, r7, #0
	bl sub_020080C0
	strh r0, [r5, #0x14]
	ldr r0, [r5, #0x1c]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r5, #0x16]
	ldr r0, [r4, #4]
	add r6, r6, #1
	add r5, #0x14
	cmp r6, r0
	blt _0222C648
_0222C666:
	ldr r0, [r4, #0xc]
	ldr r1, _0222C674 ; =ov12_0222C4A8
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C674: .word ov12_0222C4A8
	thumb_func_end ov12_0222C5FC

	thumb_func_start ov12_0222C678
ov12_0222C678: ; 0x0222C678
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0222C6C2
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02225C14
	cmp r0, #0
	bne _0222C696
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222C696:
	add r0, r4, #0
	add r0, #0x1c
	bl ov12_02226138
	add r0, r4, #0
	add r0, #0x64
	bl ov12_02226454
	mov r1, #0x40
	mov r2, #0x42
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x18]
	bl sub_0200D4C4
	ldr r0, [r4, #0x18]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	bl sub_0200C7EC
	pop {r4, pc}
_0222C6C2:
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222C678

	thumb_func_start ov12_0222C6D4
ov12_0222C6D4: ; 0x0222C6D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x8c
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	str r5, [r4, #0xc]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl ov12_02220278
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x18]
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	cmp r0, #0
	ldr r0, [r4, #0xc]
	bne _0222C718
	bl ov12_02220248
	b _0222C71C
_0222C718:
	bl ov12_02220240
_0222C71C:
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x14]
	add r1, r4, #4
	bl ov12_02235918
	ldr r0, [r4, #0x14]
	mov r1, #0x29
	bl sub_020080C0
	mov r1, #6
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #6]
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl ov12_02225964
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl ov12_0222598C
	add r6, r0, #0
	mov r0, #6
	ldrsh r3, [r4, r0]
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r2, #0x14
	add r0, r6, #0
	mul r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	str r2, [sp, #4]
	sub r2, #0x28
	mul r2, r7
	add r2, r1, r2
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x40
	asr r2, r2, #0x10
	bl ov12_02225BC8
	add r0, r5, #0
	mov r1, #2
	bl ov12_022233EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_022233EC
	mov r5, #1
	add r3, r5, #0
	lsl r3, r6
	add r1, r0, #0
	add r6, r3, #0
	mov r2, #0x20
	add r3, r5, #0
	orr r6, r2
	lsl r3, r1
	add r1, r6, #0
	orr r1, r3
	sub r2, #0x21
	ldr r0, [r4, #0xc]
	orr r1, r5
	add r3, r2, #0
	bl ov12_022357BC
	mov r1, #0x1f
	mov r2, #0
	str r1, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x64
	add r3, r2, #0
	bl ov12_02226424
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_0200D810
	ldr r0, [r4, #0xc]
	ldr r1, _0222C7DC ; =ov12_0222C678
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222C7DC: .word ov12_0222C678
	thumb_func_end ov12_0222C6D4

	thumb_func_start ov12_0222C7E0
ov12_0222C7E0: ; 0x0222C7E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222C7F2
	cmp r0, #1
	beq _0222C832
	b _0222C862
_0222C7F2:
	ldrb r0, [r4, #1]
	cmp r0, #0
	ldrb r0, [r4, #2]
	bne _0222C804
	lsl r3, r0, #3
	ldr r0, _0222C87C ; =0x0223A118
	ldr r2, [r0, r3]
	neg r1, r2
	b _0222C80C
_0222C804:
	lsl r3, r0, #3
	ldr r0, _0222C87C ; =0x0223A118
	ldr r1, [r0, r3]
	neg r2, r1
_0222C80C:
	ldr r5, _0222C880 ; =0x0223A11C
	add r0, r4, #0
	ldr r3, [r5, r3]
	add r0, #0x5c
	bl ov12_02225D50
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _0222C824
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
_0222C824:
	ldrb r1, [r4, #1]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222C832:
	add r0, r4, #0
	add r0, #0x5c
	bl ov12_02225DA0
	cmp r0, #1
	bne _0222C84E
	ldr r2, [r4, #0x5c]
	ldr r0, [r4, #0x28]
	lsl r2, r2, #0x10
	mov r1, #9
	lsr r2, r2, #0x10
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_0222C84E:
	ldrb r0, [r4, #2]
	cmp r0, #5
	ldrb r0, [r4]
	blo _0222C85C
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0222C85C:
	sub r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0222C862:
	ldr r0, [r4, #0x28]
	mov r1, #9
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222C87C: .word 0x0223A118
_0222C880: .word 0x0223A11C
	thumb_func_end ov12_0222C7E0

	thumb_func_start ov12_0222C884
ov12_0222C884: ; 0x0222C884
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222C898
	cmp r0, #1
	beq _0222C8BC
	b _0222C8E6
_0222C898:
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r1, #0x1c
	mov r2, #0x1e
	str r0, [sp]
	mov r3, #0x20
	add r0, r4, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, #0x38
	bl ov12_02226108
	ldrb r0, [r4]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0222C8BC:
	ldr r0, [r4, #0x2c]
	add r1, sp, #4
	bl ov12_02235918
	add r0, r4, #0
	add r3, sp, #4
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r3, [r4, #0x2c]
	add r0, #0x38
	bl ov12_0222619C
	cmp r0, #0
	bne _0222C8F4
	ldrb r0, [r4]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_0222C8E6:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
_0222C8F4:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov12_0222C884

	thumb_func_start ov12_0222C8F8
ov12_0222C8F8: ; 0x0222C8F8
	push {r4, r5, r6, lr}
	mov r1, #0x70
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	mov r1, #0xb
	mov r2, #0x64
	bl sub_02007DEC
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #2
	bl ov12_02220280
	strh r0, [r4, #0x1e]
	add r0, r5, #0
	mov r1, #3
	bl ov12_02220280
	strh r0, [r4, #0x20]
	add r0, r5, #0
	mov r1, #4
	bl ov12_02220280
	strh r0, [r4, #0x22]
	add r0, r5, #0
	mov r1, #5
	bl ov12_02220280
	str r0, [r4, #0x24]
	cmp r6, #0
	ldr r0, [r4, #4]
	bne _0222C982
	ldr r1, _0222C98C ; =ov12_0222C7E0
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
_0222C982:
	ldr r1, _0222C990 ; =ov12_0222C884
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222C98C: .word ov12_0222C7E0
_0222C990: .word ov12_0222C884
	thumb_func_end ov12_0222C8F8

	thumb_func_start ov12_0222C994
ov12_0222C994: ; 0x0222C994
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r2, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0222C9A6
	cmp r0, #1
	beq _0222C9C8
	b _0222CA1C
_0222C9A6:
	ldr r2, [r5, #0x48]
	mov r0, #0xa
	add r1, r2, #2
	str r0, [sp]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x4c
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #0
	bl ov12_02226108
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0222C9C8:
	add r0, r5, #0
	add r0, #0x4c
	bl ov12_02226138
	cmp r0, #0
	bne _0222C9DC
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0222C9DC:
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x28
_0222C9E2:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0222C9F6
	mov r2, #0x4c
	ldrsh r3, [r5, r2]
	ldrsh r2, [r4, r7]
	mov r1, #0
	add r2, r3, r2
	bl sub_02007DEC
_0222C9F6:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0222C9E2
	mov r3, #0x4c
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x14]
	mov r1, #3
	mov r2, #0
	bl sub_02019184
	mov r3, #0x4e
	mov r1, #3
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x14]
	add r2, r1, #0
	bl sub_02019184
	pop {r3, r4, r5, r6, r7, pc}
_0222CA1C:
	ldr r0, [r5, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0222C994

	thumb_func_start ov12_0222CA2C
ov12_0222CA2C: ; 0x0222CA2C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x70
	add r4, r0, #0
	bl ov12_02235E50
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_0223595C
	ldr r0, [r7, #4]
	mov r1, #1
	bl ov12_02220540
	cmp r0, #0x46
	bgt _0222CA5C
	bge _0222CA7E
	cmp r0, #0x1e
	bgt _0222CA56
	beq _0222CA8A
	b _0222CA90
_0222CA56:
	cmp r0, #0x32
	beq _0222CA84
	b _0222CA90
_0222CA5C:
	cmp r0, #0x6e
	bgt _0222CA68
	bge _0222CA72
	cmp r0, #0x5a
	beq _0222CA78
	b _0222CA90
_0222CA68:
	cmp r0, #0x96
	bne _0222CA90
	mov r0, #6
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA72:
	mov r0, #5
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA78:
	mov r0, #4
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA7E:
	mov r0, #3
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA84:
	mov r0, #2
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA8A:
	mov r0, #1
	str r0, [r7, #0x48]
	b _0222CA94
_0222CA90:
	mov r0, #0
	str r0, [r7, #0x48]
_0222CA94:
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x28
_0222CA9C:
	ldr r0, [r7, #4]
	add r1, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x38]
	cmp r0, #0
	beq _0222CAB0
	add r1, r5, #0
	bl ov12_02235918
_0222CAB0:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0222CA9C
	ldr r0, [r7, #4]
	ldr r1, _0222CAC8 ; =ov12_0222C994
	add r2, r7, #0
	bl ov12_022201E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CAC8: .word ov12_0222C994
	thumb_func_end ov12_0222CA2C

	thumb_func_start ov12_0222CACC
ov12_0222CACC: ; 0x0222CACC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222CAE0
	cmp r0, #1
	beq _0222CB0E
	b _0222CB7C
_0222CAE0:
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x40
	mov r1, #0x14
	add r3, r2, #0
	bl ov12_02226108
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x64
	mov r1, #2
	add r3, r2, #0
	bl ov12_02226108
	ldrb r0, [r4]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, pc}
_0222CB0E:
	add r0, r4, #0
	add r0, #0x40
	bl ov12_02226138
	cmp r0, #0
	bne _0222CB22
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222CB72
_0222CB22:
	mov r1, #0x2c
	ldrsh r2, [r4, r1]
	mov r1, #0x40
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x38]
	add r1, r2, r1
	mov r2, #0x2e
	ldrsh r3, [r4, r2]
	mov r2, #0x42
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r1, #0x40
	ldrsh r2, [r4, r1]
	mov r1, #0x2c
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x3c]
	sub r1, r2, r1
	mov r2, #0x2e
	ldrsh r3, [r4, r2]
	mov r2, #0x42
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x38]
	bl sub_0200D330
	ldr r0, [r4, #0x3c]
	bl sub_0200D330
_0222CB72:
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	add sp, #4
	pop {r3, r4, pc}
_0222CB7C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov12_0222CACC

	thumb_func_start ov12_0222CB90
ov12_0222CB90: ; 0x0222CB90
	push {r3, r4, r5, lr}
	mov r1, #0x88
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x38]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x34]
	add r1, r4, #0
	ldr r0, [r4, #0x30]
	add r1, #0x28
	bl ov12_02235918
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x2c
	bl ov12_02235918
	ldr r0, [r4, #4]
	ldr r1, _0222CBF8 ; =ov12_0222CACC
	add r2, r4, #0
	bl ov12_022201E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222CBF8: .word ov12_0222CACC
	thumb_func_end ov12_0222CB90

	thumb_func_start ov12_0222CBFC
ov12_0222CBFC: ; 0x0222CBFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	ldr r2, [r4, #0x38]
	add r0, #0x8c
	add r1, #0xb0
	bl ov12_02225D2C
	cmp r0, #0
	bne _0222CC28
	ldr r0, [r4, #0x38]
	bl sub_0200D0F4
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl ov12_02235E80
	pop {r3, r4, r5, pc}
_0222CC28:
	add r0, r4, #0
	add r0, #0xd4
	bl ov12_02225DA0
	cmp r0, #1
	bne _0222CC44
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	ldr r0, [r4, #0x38]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0200D79C
_0222CC44:
	ldr r0, [r4, #0x38]
	bl sub_0200D330
	ldr r0, [r4, #0x20]
	bl sub_0200C7EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222CBFC

	thumb_func_start ov12_0222CC54
ov12_0222CC54: ; 0x0222CC54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0xe8
	add r6, r0, #0
	add r7, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x10
	bl ov12_0223595C
	add r0, r6, #0
	mov r1, #0
	bl ov12_02220280
	strh r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #1
	bl ov12_02220280
	strh r0, [r4, #0xe]
	add r0, r6, #0
	mov r1, #2
	bl ov12_02220280
	str r0, [r4, #4]
	add r0, r6, #0
	mov r1, #3
	bl ov12_02220280
	str r0, [r4, #8]
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02225964
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #2
	str r7, [r4, #0x38]
	bl sub_0200D6A4
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x44]
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	str r0, [r4, #0x58]
	add r1, r4, #0
	ldr r0, [r4, #0x44]
	add r1, #0x40
	bl ov12_02235918
	add r1, r4, #0
	ldr r0, [r4, #0x58]
	add r1, #0x54
	bl ov12_02235918
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	mov r3, #0x54
	str r0, [sp]
	mov r0, #0x56
	ldrsh r2, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r1, r0, #0
	mul r1, r5
	add r0, r2, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r2, #0x40
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldrsh r3, [r4, r3]
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	mov ip, r3
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	add r0, #0x8c
	add r1, #0xb0
	add r7, r3, #0
	mul r7, r5
	mov r3, ip
	add r3, r3, r7
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bl ov12_02225C98
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232B8
	cmp r0, #4
	bne _0222CD5C
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232B8
	cmp r0, #2
	bne _0222CD5C
	mov r0, #0
	mvn r0, r0
	mul r5, r0
_0222CD5C:
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232B8
	cmp r0, #5
	bne _0222CD86
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232B8
	cmp r0, #3
	bne _0222CD86
	mov r0, #0
	mvn r0, r0
	mul r5, r0
_0222CD86:
	cmp r5, #0
	ldr r2, _0222CDE0 ; =0x00005C71
	ble _0222CD9E
	ldr r1, _0222CDE4 ; =0x00000E38
	add r0, r4, #0
	add r0, #0xd4
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
	b _0222CDAE
_0222CD9E:
	ldr r1, _0222CDE8 ; =0x00003FFF
	add r0, r4, #0
	add r0, #0xd4
	mul r1, r5
	mul r2, r5
	mov r3, #0xa
	bl ov12_02225D50
_0222CDAE:
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	ldr r0, [r4, #0x38]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0200D79C
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x38]
	add r0, #0x8c
	add r1, #0xb0
	bl ov12_02225D2C
	ldr r0, [r4, #0x38]
	bl sub_0200D330
	ldr r0, [r4, #0x14]
	ldr r1, _0222CDEC ; =ov12_0222CBFC
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222CDE0: .word 0x00005C71
_0222CDE4: .word 0x00000E38
_0222CDE8: .word 0x00003FFF
_0222CDEC: .word ov12_0222CBFC
	thumb_func_end ov12_0222CC54

	thumb_func_start ov12_0222CDF0
ov12_0222CDF0: ; 0x0222CDF0
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #3
	bls _0222CE00
	b _0222CF6C
_0222CE00:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CE0C: ; jump table
	.short _0222CE14 - _0222CE0C - 2 ; case 0
	.short _0222CE44 - _0222CE0C - 2 ; case 1
	.short _0222CEE4 - _0222CE0C - 2 ; case 2
	.short _0222CEF6 - _0222CE0C - 2 ; case 3
_0222CE14:
	mov r0, #0x12
	ldrsh r2, [r4, r0]
	mov r0, #0x96
	mov r3, #0x3c
	str r0, [sp]
	mov r1, #0x64
	str r1, [sp, #4]
	mov r0, #0xc
	mul r1, r2
	mul r3, r2
	lsl r2, r3, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0x10
	add r0, #0x9c
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #5
	bl ov12_02225EF0
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _0222CF8A
_0222CE44:
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222CE82
	mov r0, #0x12
	ldrsh r2, [r4, r0]
	mov r0, #0xa
	mov r1, #0x3c
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #0xc
	mul r1, r2
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0x10
	mov r3, #0x96
	add r5, r2, #0
	mul r5, r3
	lsl r2, r5, #0x10
	add r0, #0x9c
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02225EF0
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _0222CF8A
_0222CE82:
	add r0, r4, #0
	add r0, #0x9c
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov12_02225FA4
	ldr r0, [r4, #0x40]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200D6E8
	mov r0, #0x16
	add r2, r4, #0
	add r2, #0xb0
	ldrsh r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0x10
	bl ov12_02225FD4
	mov r2, #0x16
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x40]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldrb r1, [r4, #0xc]
	ldrb r0, [r4, #0x10]
	cmp r1, r0
	bhs _0222CECA
	add r0, r1, #1
	strb r0, [r4, #0xc]
_0222CECA:
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x11]
	cmp r1, r0
	bls _0222CED6
	sub r0, r1, #1
	strb r0, [r4, #0xd]
_0222CED6:
	ldrb r0, [r4, #0xd]
	ldrb r1, [r4, #0xc]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222CF9C ; =0x04000052
	strh r1, [r0]
	b _0222CF8A
_0222CEE4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	blt _0222CF8A
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _0222CF8A
_0222CEF6:
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02225F6C
	cmp r0, #0
	bne _0222CF0A
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _0222CF8A
_0222CF0A:
	add r0, r4, #0
	add r0, #0x9c
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov12_02225FA4
	ldr r0, [r4, #0x40]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	mov r0, #0x16
	add r2, r4, #0
	add r2, #0xb0
	ldrsh r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0x10
	bl ov12_02225FD4
	mov r2, #0x16
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x40]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldrb r1, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r1, r0
	bls _0222CF52
	sub r0, r1, #1
	strb r0, [r4, #0xc]
_0222CF52:
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0xf]
	cmp r1, r0
	bhs _0222CF5E
	add r0, r1, #1
	strb r0, [r4, #0xd]
_0222CF5E:
	ldrb r0, [r4, #0xd]
	ldrb r1, [r4, #0xc]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222CF9C ; =0x04000052
	strh r1, [r0]
	b _0222CF8A
_0222CF6C:
	ldr r0, [r4, #0x44]
	bl sub_0200D0F4
	ldr r0, [r4, #0x48]
	bl sub_0200D0F4
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl ov12_02235E80
	add sp, #0x1c
	pop {r4, r5, pc}
_0222CF8A:
	ldr r0, [r4, #0x40]
	bl sub_0200D330
	ldr r0, [r4, #0x28]
	bl sub_0200C7EC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0222CF9C: .word 0x04000052
	thumb_func_end ov12_0222CDF0

	thumb_func_start ov12_0222CFA0
ov12_0222CFA0: ; 0x0222CFA0
	push {r4, r5, lr}
	sub sp, #0x14
	mov r1, #0xd4
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	bl ov12_0223595C
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220298
	str r0, [r4, #0x44]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02220298
	mov r1, #0
	str r0, [r4, #0x48]
	mvn r1, r1
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	bl ov12_02235780
	add r0, r5, #0
	mov r1, #0
	bl ov12_02220280
	mov r1, #0
	strb r1, [r4, #0xc]
	mov r0, #0x1f
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xe]
	strb r0, [r4, #0xf]
	strb r0, [r4, #0x10]
	mov r0, #4
	strb r0, [r4, #0x11]
	add r0, r5, #0
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222D030
	ldr r0, [r4, #0x44]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x48]
	bl sub_0200D3F4
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0xb3
	strh r0, [r4, #0x14]
	mov r0, #0x78
	strh r0, [r4, #0x16]
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	add r1, r1, #1
	bl sub_0200D460
	mov r0, #0
	mvn r0, r0
	strh r0, [r4, #0x12]
	b _0222D090
_0222D030:
	add r0, r5, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223525C
	cmp r0, #4
	bne _0222D060
	ldr r0, [r4, #0x48]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	bl sub_0200D3F4
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_0200D364
	mov r0, #0x90
	strh r0, [r4, #0x14]
	mov r0, #0x40
	strh r0, [r4, #0x16]
	b _0222D08C
_0222D060:
	ldr r0, [r4, #0x44]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x48]
	bl sub_0200D3F4
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x4c
	strh r0, [r4, #0x14]
	mov r0, #0x78
	strh r0, [r4, #0x16]
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	add r1, r1, #1
	bl sub_0200D460
_0222D08C:
	mov r0, #1
	strh r0, [r4, #0x12]
_0222D090:
	mov r1, #0x14
	mov r2, #0x16
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x40]
	bl sub_0200D4C4
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_0200D810
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	mov r3, #0x64
	add r1, r0, #0
	mov r0, #5
	str r0, [sp]
	mul r1, r3
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x9c
	add r2, r1, #0
	bl ov12_02225EF0
	add r0, r4, #0
	add r0, #0x9c
	bl ov12_02225F6C
	add r0, r4, #0
	add r0, #0x9c
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov12_02225FA4
	ldr r0, [r4, #0x40]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl sub_0200D6E8
	mov r0, #0x16
	add r2, r4, #0
	add r2, #0xb0
	ldrsh r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0x10
	bl ov12_02225FD4
	mov r2, #0x16
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x40]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	ldr r1, _0222D124 ; =ov12_0222CDF0
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0222D124: .word ov12_0222CDF0
	thumb_func_end ov12_0222CFA0

	thumb_func_start ov12_0222D128
ov12_0222D128: ; 0x0222D128
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r1, #0
	str r0, [sp, #0x10]
	ldrb r0, [r4]
	cmp r0, #8
	bls _0222D138
	b _0222D48C
_0222D138:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222D144: ; jump table
	.short _0222D156 - _0222D144 - 2 ; case 0
	.short _0222D18E - _0222D144 - 2 ; case 1
	.short _0222D1E8 - _0222D144 - 2 ; case 2
	.short _0222D202 - _0222D144 - 2 ; case 3
	.short _0222D236 - _0222D144 - 2 ; case 4
	.short _0222D2BA - _0222D144 - 2 ; case 5
	.short _0222D34C - _0222D144 - 2 ; case 6
	.short _0222D3EA - _0222D144 - 2 ; case 7
	.short _0222D432 - _0222D144 - 2 ; case 8
_0222D156:
	ldrb r1, [r4, #0xc]
	ldr r2, _0222D470 ; =0x0223A0D1
	ldr r5, _0222D474 ; =0x0223A0D2
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _0222D478 ; =0x0223A0D3
	ldr r1, _0222D47C ; =0x0223A0D0
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _0222D480 ; =0x0223A0D4
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xcc
	bl ov12_02225EF0
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D18E:
	add r0, r4, #0
	add r0, #0xcc
	bl ov12_02225F6C
	cmp r0, #1
	bne _0222D1D4
	mov r2, #0xcc
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl sub_02007DEC
	mov r2, #0xce
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl sub_02007DEC
	mov r0, #0x20
	add r2, r4, #0
	add r2, #0xe0
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x24]
	ldr r2, [r2, #0]
	bl ov12_02225FD4
	mov r2, #0x20
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r2, r3
	bl sub_02007DEC
	b _0222D4C6
_0222D1D4:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	ldrb r0, [r4]
	blo _0222D1E2
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D1E2:
	sub r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D1E8:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #1
	blo _0222D2C6
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #0xc]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D202:
	add r1, sp, #0x2c
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x2c
	bl sub_0200D550
	add r1, sp, #0x14
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	cmp r0, #0x68
	bgt _0222D22E
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	ldr r0, [r4, #0x7c]
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	b _0222D4C6
_0222D22E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D236:
	add r1, sp, #0x28
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x28
	bl sub_0200D550
	add r1, sp, #0x14
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0x68
	bgt _0222D262
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	ldr r0, [r4, #0x7c]
	mov r1, #0
	mov r2, #2
	bl sub_0200D5DC
	b _0222D26E
_0222D262:
	ldr r0, _0222D484 ; =0x04000052
	mov r1, #0x10
	strh r1, [r0]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222D26E:
	ldrb r0, [r4, #1]
	mov r1, #0x10
	add r2, r1, #0
	add r0, r0, #1
	strb r0, [r4, #1]
	add r0, r4, #4
	bl ov12_022267A8
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r0, #8
	sub r2, #0x10
	bl ov12_022267A8
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D484 ; =0x04000052
	strh r1, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	bne _0222D2A8
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0x10
	bl sub_0200D5DC
_0222D2A8:
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	bne _0222D2C6
	ldr r0, [r4, #0x7c]
	mov r1, #0
	mov r2, #0x10
	bl sub_0200D5DC
	b _0222D4C6
_0222D2BA:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhs _0222D2C8
_0222D2C6:
	b _0222D4C6
_0222D2C8:
	mov r0, #0
	strb r0, [r4, #1]
	add r1, sp, #0x24
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x24
	bl sub_0200D550
	add r1, sp, #0x20
	ldr r0, [r4, #0x7c]
	add r1, #2
	add r2, sp, #0x20
	bl sub_0200D550
	add r0, r4, #0
	add r0, #0xc8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	str r0, [sp, #4]
	add r3, sp, #0x14
	mov r0, #0x12
	mov r1, #0x10
	mov r2, #0xe
	mov r5, #0xc
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	bl ov12_02226728
	add r0, r4, #0
	add r0, #0x2c
	str r0, [sp]
	mov r3, #0xca
	add r2, sp, #0x14
	mov r0, #0x12
	mov r1, #0x10
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	mov r2, #0xc8
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	bl ov12_02226744
	add r0, r4, #0
	add r0, #0x28
	str r0, [sp]
	mov r3, #0xca
	add r2, sp, #0x14
	mov r0, #0x12
	mov r1, #0x10
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	mov r2, #0xc8
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	bl ov12_0222676C
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [r4, #0x2c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D34C:
	ldr r3, _0222D488 ; =0x0223A0AD
	add r2, sp, #0x30
	mov r1, #0xa
_0222D352:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222D352
	add r1, sp, #0x1c
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x1c
	bl sub_0200D550
	add r1, sp, #0x18
	ldr r0, [r4, #0x7c]
	add r1, #2
	add r2, sp, #0x18
	bl sub_0200D550
	add r3, sp, #0x14
	mov r0, #8
	ldrsh r0, [r3, r0]
	mov r2, #0xa
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r3, r0]
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #0x2c]
	lsl r5, r1, #1
	add r1, sp, #0x30
	ldrsb r1, [r1, r5]
	mov r5, #6
	mul r1, r0
	str r1, [sp, #0xc]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	add r1, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x34
	add r1, #0x58
	bl ov12_02225C98
	add r3, sp, #0x14
	mov r0, #4
	ldrsh r0, [r3, r0]
	mov r5, #0xa
	str r0, [sp]
	mov r0, #8
	ldrsh r0, [r3, r0]
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #0x2c]
	lsl r2, r1, #1
	add r1, sp, #0x30
	add r1, #1
	ldrsb r1, [r1, r2]
	mov r2, #6
	mul r1, r0
	str r1, [sp, #0xc]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	add r1, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x80
	add r1, #0xa4
	bl ov12_02225C98
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D3EA:
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x34
	add r1, #0x58
	mov r5, #0
	bl ov12_02225D2C
	cmp r0, #0
	bne _0222D402
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0222D402:
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x7c]
	add r0, #0x80
	add r1, #0xa4
	bl ov12_02225D2C
	cmp r0, #0
	bne _0222D41A
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0222D41A:
	cmp r5, #2
	bne _0222D4C6
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	ldrb r0, [r4]
	bne _0222D42C
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D42C:
	sub r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
_0222D432:
	mov r5, #0
	add r0, r4, #4
	add r1, r5, #0
	sub r2, r5, #2
	bl ov12_022267A8
	cmp r0, #1
	bne _0222D444
	add r5, r5, #1
_0222D444:
	add r0, r4, #0
	add r0, #8
	mov r1, #0x10
	mov r2, #2
	bl ov12_022267A8
	cmp r0, #1
	bne _0222D456
	add r5, r5, #1
_0222D456:
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D484 ; =0x04000052
	cmp r5, #2
	strh r1, [r0]
	bne _0222D4C6
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222D4C6
	nop
_0222D470: .word 0x0223A0D1
_0222D474: .word 0x0223A0D2
_0222D478: .word 0x0223A0D3
_0222D47C: .word 0x0223A0D0
_0222D480: .word 0x0223A0D4
_0222D484: .word 0x04000052
_0222D488: .word 0x0223A0AD
_0222D48C:
	mov r6, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222D4B4
	add r5, r4, #0
	add r7, r6, #0
_0222D49E:
	ldr r0, [r5, #0x30]
	bl sub_0200D0F4
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222D49E
_0222D4B4:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x10]
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_0222D4C6:
	mov r6, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222D532
	add r5, r4, #0
	add r7, sp, #0x14
_0222D4D8:
	add r1, sp, #0x14
	ldr r0, [r5, #0x30]
	add r1, #2
	add r2, sp, #0x14
	bl sub_0200D550
	mov r0, #0
	ldrsh r0, [r7, r0]
	cmp r0, #0x50
	bge _0222D4FC
	ldr r0, [r4, #0x10]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	bl sub_0200D460
	b _0222D522
_0222D4FC:
	mov r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #0x80
	ldr r0, [r4, #0x10]
	ble _0222D514
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	bl sub_0200D460
	b _0222D522
_0222D514:
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r1, #1
	bl sub_0200D460
_0222D522:
	ldr r0, [r4, #0x10]
	mov r1, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222D4D8
_0222D532:
	ldrb r0, [r4]
	cmp r0, #4
	blo _0222D566
	mov r5, #0
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222D560
	add r6, r4, #0
	add r7, r5, #0
_0222D54A:
	ldr r0, [r6, #0x30]
	bl sub_0200D330
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r6, #0x4c
	add r5, r5, #1
	bl ov12_02220280
	cmp r5, r0
	blt _0222D54A
_0222D560:
	ldr r0, [r4, #0x18]
	bl sub_0200C7EC
_0222D566:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_0222D128

	thumb_func_start ov12_0222D56C
ov12_0222D56C: ; 0x0222D56C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r1, #0
	mov r1, #0xf0
	str r0, [sp]
	add r6, r2, #0
	add r7, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4]
	ldr r0, [sp]
	strb r1, [r4, #1]
	str r0, [r4, #0x10]
	str r6, [r4, #0x18]
	str r5, [r4, #0x14]
	str r1, [r4, #4]
	mov r0, #0x10
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov12_022232FC
	str r0, [r4, #0x1c]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov12_02223354
	str r0, [r4, #0x24]
	ldr r0, [sp]
	mov r1, #2
	bl ov12_022233EC
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl ov12_022233EC
	mov r2, #1
	add r1, r2, #0
	add r3, r0, #0
	lsl r1, r5
	add r5, r2, #0
	lsl r5, r3
	orr r1, r5
	orr r1, r2
	sub r2, r2, #2
	ldr r0, [r4, #0x10]
	add r3, r2, #0
	bl ov12_022357BC
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222D6A8 ; =0x04000052
	strh r1, [r0]
	ldr r1, [sp]
	add r0, sp, #4
	bl ov12_0222329C
	str r7, [r4, #0x30]
	ldr r0, [r4, #0x10]
	mov r1, #0
	mov r6, #1
	bl ov12_02220280
	cmp r0, #1
	ble _0222D62E
	add r5, r4, #0
	add r5, #0x4c
	add r7, sp, #4
_0222D612:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	add r2, r7, #0
	bl sub_0200CE6C
	str r0, [r5, #0x30]
	ldr r0, [r4, #0x10]
	mov r1, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222D612
_0222D62E:
	mov r6, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov12_02220280
	cmp r0, #0
	ble _0222D668
	add r5, r4, #0
	mov r7, #1
_0222D640:
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	bl sub_0200D810
	ldr r0, [r4, #0x10]
	bl ov12_0222339C
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r1, #1
	bl sub_0200D460
	ldr r0, [r4, #0x10]
	mov r1, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov12_02220280
	cmp r6, r0
	blt _0222D640
_0222D668:
	ldr r0, [sp]
	bl ov12_0221FDD4
	cmp r0, #1
	ldr r0, [r4, #0x30]
	bne _0222D688
	mov r1, #0xa0
	mov r2, #0x36
	bl sub_0200D4C4
	ldr r0, [r4, #0x7c]
	mov r1, #0x50
	mov r2, #0x27
	bl sub_0200D4C4
	b _0222D69A
_0222D688:
	mov r1, #0x64
	mov r2, #0x36
	bl sub_0200D4C4
	ldr r0, [r4, #0x7c]
	mov r1, #0xb4
	mov r2, #0x27
	bl sub_0200D4C4
_0222D69A:
	ldr r0, [r4, #0x10]
	ldr r1, _0222D6AC ; =ov12_0222D128
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D6A8: .word 0x04000052
_0222D6AC: .word ov12_0222D128
	thumb_func_end ov12_0222D56C

	.rodata


	.global Unk_ov12_0223A094
Unk_ov12_0223A094: ; 0x0223A094
	.incbin "incbin/overlay12_rodata.bin", 0x1B00, 0x1B04 - 0x1B00

	.global Unk_ov12_0223A098
Unk_ov12_0223A098: ; 0x0223A098
	.incbin "incbin/overlay12_rodata.bin", 0x1B04, 0x1B0A - 0x1B04

	.global Unk_ov12_0223A09E
Unk_ov12_0223A09E: ; 0x0223A09E
	.incbin "incbin/overlay12_rodata.bin", 0x1B0A, 0x1B10 - 0x1B0A

	.global Unk_ov12_0223A0A4
Unk_ov12_0223A0A4: ; 0x0223A0A4
	.incbin "incbin/overlay12_rodata.bin", 0x1B10, 0x1B19 - 0x1B10

	.global Unk_ov12_0223A0AD
Unk_ov12_0223A0AD: ; 0x0223A0AD
	.incbin "incbin/overlay12_rodata.bin", 0x1B19, 0x1B23 - 0x1B19

	.global Unk_ov12_0223A0B7
Unk_ov12_0223A0B7: ; 0x0223A0B7
	.incbin "incbin/overlay12_rodata.bin", 0x1B23, 0x1B2D - 0x1B23

	.global Unk_ov12_0223A0C1
Unk_ov12_0223A0C1: ; 0x0223A0C1
	.incbin "incbin/overlay12_rodata.bin", 0x1B2D, 0x1B3C - 0x1B2D

	.global Unk_ov12_0223A0D0
Unk_ov12_0223A0D0: ; 0x0223A0D0
	.incbin "incbin/overlay12_rodata.bin", 0x1B3C, 0x1B4B - 0x1B3C

	.global Unk_ov12_0223A0DF
Unk_ov12_0223A0DF: ; 0x0223A0DF
	.incbin "incbin/overlay12_rodata.bin", 0x1B4B, 0x1B5A - 0x1B4B

	.global Unk_ov12_0223A0EE
Unk_ov12_0223A0EE: ; 0x0223A0EE
	.incbin "incbin/overlay12_rodata.bin", 0x1B5A, 0x1B6A - 0x1B5A

	.global Unk_ov12_0223A0FE
Unk_ov12_0223A0FE: ; 0x0223A0FE
	.incbin "incbin/overlay12_rodata.bin", 0x1B6A, 0x1B84 - 0x1B6A

	.global Unk_ov12_0223A118
Unk_ov12_0223A118: ; 0x0223A118
	.incbin "incbin/overlay12_rodata.bin", 0x1B84, 0x28

