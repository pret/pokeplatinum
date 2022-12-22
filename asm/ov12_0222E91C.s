	.include "macros/function.inc"
	.include "include/ov12_0222E91C.inc"

	

	.text


	thumb_func_start ov12_0222E91C
ov12_0222E91C: ; 0x0222E91C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222E930
	cmp r0, #1
	beq _0222EA2E
	b _0222EA7C
_0222E930:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222E9AA
	mov r0, #0x22
	ldrsh r3, [r4, r0]
	mov r0, #0x20
	ldrsh r1, [r4, r0]
	mov r0, #3
	add r2, r1, #0
	str r3, [sp]
	add r2, #0x30
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r0, #0x34
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0x22
	ldrsh r1, [r4, r0]
	mov r0, #0xa4
	ldrsh r0, [r4, r0]
	add r2, r1, r0
	mov r0, #0x20
	ldrsh r1, [r4, r0]
	lsl r0, r2, #0x10
	asr r3, r0, #0x10
	add r2, r1, #0
	add r2, #0x30
	lsl r2, r2, #0x10
	str r3, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x58
	asr r2, r2, #0x10
	bl ov12_02225BC8
	mov r0, #0x22
	ldrsh r1, [r4, r0]
	mov r0, #0xa4
	ldrsh r0, [r4, r0]
	add r2, r1, r0
	mov r0, #0x20
	ldrsh r1, [r4, r0]
	lsl r0, r2, #0x10
	asr r3, r0, #0x10
	add r2, r1, #0
	add r2, #0x30
	lsl r2, r2, #0x10
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x7c
	asr r2, r2, #0x10
	bl ov12_02225BC8
	b _0222EA18
_0222E9AA:
	mov r0, #0x22
	ldrsh r3, [r4, r0]
	mov r0, #0x20
	ldrsh r2, [r4, r0]
	mov r0, #3
	add r1, r2, #0
	str r3, [sp]
	add r1, #0x30
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #0x10
	add r0, #0x34
	asr r1, r1, #0x10
	bl ov12_02225BC8
	mov r0, #0x22
	ldrsh r1, [r4, r0]
	mov r0, #0xa4
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	mov r0, #0x20
	ldrsh r2, [r4, r0]
	lsl r0, r1, #0x10
	asr r3, r0, #0x10
	add r1, r2, #0
	add r1, #0x30
	lsl r1, r1, #0x10
	str r3, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x58
	asr r1, r1, #0x10
	bl ov12_02225BC8
	mov r0, #0x22
	ldrsh r1, [r4, r0]
	mov r0, #0xa4
	ldrsh r0, [r4, r0]
	add r1, r1, r0
	mov r0, #0x20
	ldrsh r2, [r4, r0]
	lsl r0, r1, #0x10
	asr r3, r0, #0x10
	add r1, r2, #0
	add r1, #0x30
	lsl r1, r1, #0x10
	str r3, [sp]
	mov r0, #9
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x7c
	asr r1, r1, #0x10
	bl ov12_02225BC8
_0222EA18:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa0
	strb r1, [r0]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222EA8E
_0222EA2E:
	add r0, r4, #0
	ldr r1, [r4, #0x28]
	add r0, #0x58
	mov r5, #0
	bl ov12_02225C50
	cmp r0, #0
	bne _0222EA40
	add r5, r5, #1
_0222EA40:
	add r0, r4, #0
	ldr r1, [r4, #0x24]
	add r0, #0x34
	bl ov12_02225C74
	cmp r0, #0
	bne _0222EA50
	add r5, r5, #1
_0222EA50:
	add r0, r4, #0
	ldr r1, [r4, #0x30]
	add r0, #0x7c
	bl ov12_02225C50
	cmp r0, #0
	bne _0222EA60
	add r5, r5, #1
_0222EA60:
	cmp r5, #3
	blt _0222EA8E
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #1
	ldrb r0, [r4]
	bne _0222EA76
	sub r0, r0, #1
	strb r0, [r4]
	b _0222EA8E
_0222EA76:
	add r0, r0, #1
	strb r0, [r4]
	b _0222EA8E
_0222EA7C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl ov12_02235E80
	add sp, #8
	pop {r3, r4, r5, pc}
_0222EA8E:
	ldr r0, [r4, #0x28]
	bl sub_0200D330
	ldr r0, [r4, #0xc]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222E91C

	thumb_func_start ov12_0222EAA0
ov12_0222EAA0: ; 0x0222EAA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r1, #0xa8
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa1
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0xa2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa3
	strb r1, [r0]
	sub r1, #9
	ldr r0, [r4, #4]
	add r2, r1, #0
	bl ov12_02235780
	add r0, r4, #0
	add r0, #0xa2
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xa3
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222EC10 ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	str r0, [r4, #0x24]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #0x22]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x24]
	mov r1, #0x29
	bl sub_020080C0
	neg r1, r0
	add r0, r4, #0
	add r0, #0xa4
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
	ldr r0, [r4, #4]
	ldr r5, [r4, #0x28]
	bl ov12_0222339C
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0222332C
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r6, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xc4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	bl sub_02003B08
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #4]
	ldr r5, [r4, #0x30]
	bl ov12_0222339C
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #1
	bl sub_0200D460
	ldr r0, [r5, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0222332C
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	bl ov12_0221FDE4
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r6, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xc4
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	bl sub_02003B08
	add r0, r5, #0
	mov r1, #1
	bl sub_0200D810
	ldr r0, [r4, #4]
	ldr r1, _0222EC14 ; =ov12_0222E91C
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0222EC10: .word 0x04000052
_0222EC14: .word ov12_0222E91C
	thumb_func_end ov12_0222EAA0

	thumb_func_start ov12_0222EC18
ov12_0222EC18: ; 0x0222EC18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r7, r6, #0
	add r4, r1, #0
	add r5, r1, #0
_0222EC28:
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x1e]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	cmp r0, #0x20
	blt _0222EC50
	ldr r0, [r5, #0x30]
	bl ov12_0222E248
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	cmp r0, #0xa0
	blt _0222EC50
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl sub_0200D3F4
	add r6, r6, #1
_0222EC50:
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, #8
	blt _0222EC28
	cmp r6, #8
	bne _0222EC84
	ldr r4, [sp, #4]
	mov r5, #0
_0222EC62:
	ldr r0, [r4, #0x30]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _0222EC62
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r0, #4]
	bl ov12_02220220
	ldr r0, [sp, #4]
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0222EC84:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	bl sub_0200C7EC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0222EC18

	thumb_func_start ov12_0222EC90
ov12_0222EC90: ; 0x0222EC90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	mov r1, #0x74
	add r6, r0, #0
	add r5, r3, #0
	bl ov12_02235E50
	add r4, r0, #0
	mov r0, #0xa
	strh r0, [r4, #0x1c]
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r1, [r4, #4]
	add r0, sp, #0x24
	bl ov12_0222329C
	str r5, [r4, #0x30]
	mov r6, #1
	add r5, r4, #4
	mov r7, #0x1f
_0222ECBC:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	add r2, sp, #0x24
	bl sub_0200CE6C
	str r0, [r5, #0x30]
	lsr r1, r6, #0x1f
	lsl r0, r6, #0x1f
	sub r0, r0, r1
	ror r0, r7
	add r0, r1, r0
	beq _0222ECDC
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_0200D7D4
_0222ECDC:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #8
	blt _0222ECBC
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	mov r1, #0
	add r5, r0, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_022232FC
	mov r1, #0
	str r0, [sp, #0x1c]
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [sp, #0x1c]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x50
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ov12_02225BC8
	mov r7, #0
	ldr r0, [r4, #4]
	add r6, r7, #0
	str r7, [sp, #0x14]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0223525C
	cmp r0, #4
	bne _0222ED60
	mov r0, #1
	str r0, [sp, #0x14]
_0222ED60:
	add r0, r4, #0
	str r0, [sp, #0x20]
	add r0, #0x50
	add r5, r4, #0
	str r0, [sp, #0x20]
_0222ED6A:
	ldr r0, [sp, #0x20]
	bl ov12_02225C14
	str r0, [sp, #0x18]
	lsr r2, r7, #0x1f
	lsl r1, r7, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _0222EDA2
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0222ED9E
	cmp r6, #8
	bge _0222EDA2
	mov r1, #0x50
	mov r2, #0x52
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x30]
	bl sub_0200D4C4
	add r5, r5, #4
	add r6, r6, #1
	b _0222EDA2
_0222ED9E:
	mov r0, #0
	str r0, [sp, #0x14]
_0222EDA2:
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	cmp r0, #1
	beq _0222ED6A
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_02223428
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_02223428
	add r7, r0, #0
	mov r6, #0
	str r4, [sp, #0xc]
	add r5, r4, #0
_0222EDC4:
	mov r0, #8
	sub r0, r0, r6
	str r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	strh r1, [r0, #0x1e]
	ldr r0, [r4, #4]
	bl ov12_0221FDD4
	cmp r0, #0
	bne _0222EE20
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0223525C
	cmp r0, #3
	bne _0222EE02
	cmp r6, #4
	ldr r0, [r5, #0x30]
	bge _0222EDFA
	add r1, r7, #0
	bl sub_0200D460
	b _0222EE16
_0222EDFA:
	ldr r1, [sp, #0x10]
	bl sub_0200D460
	b _0222EE16
_0222EE02:
	cmp r6, #4
	ldr r0, [r5, #0x30]
	blt _0222EE10
	add r1, r7, #0
	bl sub_0200D460
	b _0222EE16
_0222EE10:
	ldr r1, [sp, #0x10]
	bl sub_0200D460
_0222EE16:
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #8]
	bl sub_0200D474
	b _0222EE30
_0222EE20:
	ldr r0, [r5, #0x30]
	add r1, r6, #0
	bl sub_0200D474
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	bl sub_0200D460
_0222EE30:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r0, r0, #2
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r6, #8
	blt _0222EDC4
	ldr r0, [r4, #4]
	ldr r1, _0222EE4C ; =ov12_0222EC18
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222EE4C: .word ov12_0222EC18
	thumb_func_end ov12_0222EC90

	thumb_func_start ov12_0222EE50
ov12_0222EE50: ; 0x0222EE50
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0222EE66
	cmp r0, #1
	beq _0222EEF4
	cmp r0, #2
	b _0222EF52
_0222EE66:
	ldr r0, [r5, #0x28]
	cmp r0, #0xe
	ble _0222EEBC
	ldr r0, [r5, #0x30]
	ldr r1, _0222EF98 ; =0x3E4CCCCD
	bl _f_sub
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	ldr r1, _0222EF98 ; =0x3E4CCCCD
	bl _f_add
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	bl _f_ftod
	ldr r2, _0222EF9C ; =0x9999999A
	ldr r3, _0222EFA0 ; =0x3FC99999
	bl _d_fle
	bhi _0222EEA0
	ldrb r0, [r5]
	mov r1, #0
	add r0, r0, #1
	strb r0, [r5]
	ldr r0, [r5, #0x1c]
	bl sub_0200D3F4
	b _0222EF7A
_0222EEA0:
	mov r0, #0x36
	ldrsb r0, [r5, r0]
	bl _f_itof
	add r1, r0, #0
	ldr r0, [r5, #0x2c]
	bl _f_mul
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x30]
	bl sub_0200D6E8
	b _0222EF7A
_0222EEBC:
	add r0, r5, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x34
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x35
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x35
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x34
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x35
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222EFA4 ; =0x04000052
	strh r1, [r0]
	ldr r0, [r5, #0x28]
	add r0, r0, #1
	str r0, [r5, #0x28]
	b _0222EF7A
_0222EEF4:
	ldr r0, [r5, #0x3c]
	bl ov12_02226848
	cmp r0, #0
	bne _0222EF7A
	ldr r0, [r5, #0x38]
	bl ov12_02226858
	ldr r0, [r5, #0x3c]
	bl ov12_02226858
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	lsl r3, r4, #0x14
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, _0222EFA8 ; =0x0000FFFF
	mov r2, #2
	str r0, [sp, #0x14]
	ldr r0, _0222EFAC ; =0x0000044C
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x18]
	bl ov12_02226870
	str r0, [r5, #0x3c]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _0222EF7A
_0222EF52:
	ldr r0, [r5, #0x3c]
	bl ov12_02226848
	cmp r0, #0
	bne _0222EF7A
	ldr r0, [r5, #0x20]
	bl sub_0200D330
	ldr r0, [r5, #0x3c]
	bl ov12_02226858
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov12_02220220
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x1c
	pop {r4, r5, pc}
_0222EF7A:
	ldr r0, [r5, #0x1c]
	bl sub_0200D330
	ldr r0, [r5, #0x20]
	bl sub_0200D330
	ldr r0, [r5, #0x24]
	bl sub_0200D330
	ldr r0, [r5, #0xc]
	bl sub_0200C7EC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0222EF98: .word 0x3E4CCCCD
_0222EF9C: .word 0x9999999A
_0222EFA0: .word 0x3FC99999
_0222EFA4: .word 0x04000052
_0222EFA8: .word 0x0000FFFF
_0222EFAC: .word 0x0000044C
	thumb_func_end ov12_0222EE50

	thumb_func_start ov12_0222EFB0
ov12_0222EFB0: ; 0x0222EFB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r1, #0x40
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_022202C0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov12_022202C0
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	mov r1, #2
	bl ov12_022202C0
	str r0, [r4, #0x24]
	mov r6, #0
	str r6, [r4, #0x28]
	add r0, r5, #0
	sub r6, #0x20
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02225964
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mul r0, r6
	add r6, r0, #0
	mov r0, #0xfe
	lsl r0, r0, #0x16
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl ov12_022234A8
	cmp r0, #1
	bne _0222F01A
	mov r1, #0
	mvn r1, r1
	b _0222F01C
_0222F01A:
	mov r1, #1
_0222F01C:
	add r0, r4, #0
	add r0, #0x36
	strb r1, [r0]
	add r1, sp, #0x24
	ldr r0, [r4, #0x20]
	add r1, #2
	add r2, sp, #0x24
	bl sub_0200D550
	add r2, sp, #0x24
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r1, r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x1c]
	asr r1, r1, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_0200D6A4
	mov r0, #0x36
	ldrsb r0, [r4, r0]
	bl _f_itof
	add r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl _f_mul
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x30]
	bl sub_0200D6E8
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	lsl r3, r6, #0x14
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	ldr r0, _0222F1F8 ; =0x0000FFFF
	mov r2, #2
	str r0, [sp, #0x14]
	ldr r0, _0222F1FC ; =0x0000044C
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x18]
	bl ov12_02226870
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0]
	bl sub_02021F9C
	mov r1, #1
	bl sub_0201FAB4
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDE4
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	lsl r3, r6, #0x14
	str r2, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	ldr r0, _0222F1F8 ; =0x0000FFFF
	mov r2, #2
	str r0, [sp, #0x14]
	ldr r0, _0222F1FC ; =0x0000044C
	lsr r3, r3, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x18]
	bl ov12_02226870
	str r0, [r4, #0x3c]
	ldr r0, [r4, #4]
	bl ov12_02220240
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_02235254
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r4, #4]
	bl ov12_0221FDD4
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #0x2c
	bl ov12_02235350
	add r2, sp, #0x28
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x28
	add r2, #2
	bl sub_0200D550
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222F138
	ldr r0, [r4, #0x1c]
	mov r1, #1
	mov r5, #0
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl sub_0200D474
	b _0222F14A
_0222F138:
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl sub_0200D460
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0200D474
	mov r5, #2
_0222F14A:
	ldr r0, [r4, #4]
	bl ov12_02220248
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_022232D0
	add r7, r0, #0
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_022232C4
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_022232E0
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_022232EC
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	lsl r0, r7, #0x10
	lsl r1, r1, #0x18
	lsl r2, r5, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02076648
	add r2, r0, #0
	add r5, sp, #0x24
	mov r3, #0xa
	ldrsh r3, [r5, r3]
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r2, r3, r2
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x1c]
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0200D3F4
	add r0, r4, #0
	mov r1, #0
	add r0, #0x34
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x35
	strb r1, [r0]
	sub r1, #0x10
	ldr r0, [r4, #4]
	add r2, r1, #0
	bl ov12_02235780
	add r0, r4, #0
	add r0, #0x34
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	add r2, r4, #0
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0222F200 ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, _0222F204 ; =ov12_0222EE50
	bl ov12_022201E8
	add r1, r4, #0
	bl ov12_0222EE50
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F1F8: .word 0x0000FFFF
_0222F1FC: .word 0x0000044C
_0222F200: .word 0x04000052
_0222F204: .word ov12_0222EE50
	thumb_func_end ov12_0222EFB0

	thumb_func_start ov12_0222F208
ov12_0222F208: ; 0x0222F208
	push {r3, r4, r5, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222F21C
	cmp r0, #1
	beq _0222F262
	b _0222F2DC
_0222F21C:
	ldr r0, [r4, #0x68]
	mov r1, #0x20
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r0, [r2, #0x78]
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	str r3, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	ldr r2, [r2, #0x6c]
	add r0, r4, #0
	lsl r2, r2, #0x10
	ldrsh r1, [r4, r1]
	add r0, #0x30
	asr r2, r2, #0x10
	bl ov12_02225BC8
	ldr r2, [r4, #0x68]
	ldr r0, [r4, #0x24]
	lsl r2, r2, #2
	add r2, r4, r2
	add r2, #0x84
	ldr r2, [r2, #0]
	mov r1, #2
	bl sub_02007DEC
	ldr r0, [r4, #0x24]
	mov r1, #0x2c
	mov r2, #1
	bl sub_02007DEC
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0222F262:
	add r0, r4, #0
	add r0, #0x30
	bl ov12_02225C14
	cmp r0, #0
	bne _0222F2C0
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	cmp r0, #2
	ble _0222F280
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0222F2B6
_0222F280:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _0222F2B2
	ldr r0, [r4, #4]
	add r1, sp, #8
	mov r2, #3
	bl ov12_02220590
	ldr r0, [r4, #0x68]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0222F2A6
	bl ov12_0221FDE4
	add r1, r0, #0
	add r0, sp, #8
	bl ov12_022382BC
	b _0222F2B2
_0222F2A6:
	bl ov12_0221FDE4
	add r1, r0, #0
	add r0, sp, #8
	bl ov12_022380CC
_0222F2B2:
	mov r0, #0
	strb r0, [r4]
_0222F2B6:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4, #0x20]
_0222F2C0:
	mov r2, #0x30
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02007DEC
	mov r2, #0x32
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_02007DEC
	add sp, #0x58
	pop {r3, r4, r5, pc}
_0222F2DC:
	ldr r0, [r4, #0x24]
	mov r1, #0x2c
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x58
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0222F208

	thumb_func_start ov12_0222F2F8
ov12_0222F2F8: ; 0x0222F2F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x90
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223595C
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	add r2, r4, #0
	ldr r0, [r4, #4]
	add r2, #0x5c
	bl ov12_022353AC
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	add r2, r4, #0
	ldr r0, [r4, #4]
	add r2, #0x60
	bl ov12_022353AC
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	bne _0222F34A
	mov r1, #1
	b _0222F34E
_0222F34A:
	mov r1, #0
	mvn r1, r1
_0222F34E:
	add r0, r4, #0
	add r0, #0x54
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_02220240
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0223525C
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov12_02220248
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov12_0223525C
	cmp r6, r0
	bne _0222F37A
	mov r0, #1
	b _0222F37C
_0222F37A:
	mov r0, #0
_0222F37C:
	str r0, [r4, #0x58]
	mov r1, #0
	add r0, r5, #0
	str r1, [r4, #0x68]
	bl ov12_02220280
	add r2, r4, #0
	add r1, r0, #0
	add r0, r5, #0
	add r2, #0x1c
	add r3, sp, #0
	bl ov12_02235998
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl sub_020080C0
	mov r1, #0x5e
	ldrsh r2, [r4, r1]
	mov r3, #0x54
	sub r0, r0, r2
	ldrsh r2, [r4, r3]
	cmp r2, #0
	ble _0222F3EE
	add r2, r3, #0
	add r2, #0xfb
	str r2, [r4, #0x6c]
	sub r3, #0xa4
	str r3, [r4, #0x70]
	mov r2, #0x5c
	ldrsh r2, [r4, r2]
	str r2, [r4, #0x74]
	ldrsh r2, [r4, r1]
	add r2, r2, r0
	str r2, [r4, #0x78]
	mov r2, #0x62
	ldrsh r2, [r4, r2]
	add r2, r2, r0
	str r2, [r4, #0x7c]
	ldrsh r1, [r4, r1]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0222F444 ; =0xFFFFFD76
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_020080C0
	b _0222F42E
_0222F3EE:
	add r2, r3, #0
	sub r2, #0xa4
	str r2, [r4, #0x6c]
	add r3, #0xfb
	str r3, [r4, #0x70]
	mov r2, #0x5c
	ldrsh r2, [r4, r2]
	str r2, [r4, #0x74]
	ldrsh r2, [r4, r1]
	add r2, r2, r0
	str r2, [r4, #0x78]
	mov r2, #0x62
	ldrsh r2, [r4, r2]
	add r2, r2, r0
	str r2, [r4, #0x7c]
	ldrsh r1, [r4, r1]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0222F444 ; =0xFFFFFD76
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl sub_020080C0
_0222F42E:
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1, #0]
	ldr r0, [r4, #4]
	ldr r1, _0222F448 ; =ov12_0222F208
	add r2, r4, #0
	bl ov12_022201E8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0222F444: .word 0xFFFFFD76
_0222F448: .word ov12_0222F208
	thumb_func_end ov12_0222F2F8

	thumb_func_start ov12_0222F44C
ov12_0222F44C: ; 0x0222F44C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	ldr r2, [sp, #0x10]
	str r2, [sp]
	mov r2, #0x50
	sub r2, r2, r3
	add r3, r4, #0
	bl sub_020086D4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_0222F44C

	thumb_func_start ov12_0222F464
ov12_0222F464: ; 0x0222F464
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	bls _0222F478
	b _0222F59A
_0222F478:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F484: ; jump table
	.short _0222F48C - _0222F484 - 2 ; case 0
	.short _0222F4E8 - _0222F484 - 2 ; case 1
	.short _0222F52A - _0222F484 - 2 ; case 2
	.short _0222F580 - _0222F484 - 2 ; case 3
_0222F48C:
	ldr r2, [r4, #0x10]
	add r2, #0x4f
	str r2, [r4, #0x10]
	cmp r2, #0x50
	blt _0222F4B4
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add sp, #4
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
	ldr r1, [r4, #0x14]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, pc}
_0222F4B4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0222F4D0
	mov r0, #2
	str r0, [sp]
	ldr r3, [r4, #0]
	ldr r0, [r4, #0x1c]
	add r3, r3, #2
	mov r1, #0
	lsl r3, r3, #1
	bl ov12_0222F44C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222F4D0:
	mov r0, #2
	str r0, [sp]
	ldr r3, [r4, #0]
	mov r1, #0x50
	add r3, r3, #2
	ldr r0, [r4, #0x1c]
	sub r1, r1, r2
	lsl r3, r3, #1
	bl ov12_0222F44C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222F4E8:
	ldr r0, [r4, #4]
	mov r3, #0xff
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	lsl r3, r3, #8
	add r2, r0, #1
	str r2, [r4, #0xc]
	ldr r6, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r6, #8
	add r5, r0, #0
	add r6, #0x50
	lsl r0, r6, #0x18
	and r5, r3
	lsr r0, r0, #0x18
	lsl r1, r1, #8
	orr r5, r0
	ldr r0, _0222F5E4 ; =0x04000040
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	strh r5, [r0]
	orr r1, r3
	strh r1, [r0, #4]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222F52A:
	ldr r0, [r4, #4]
	mov r3, #0xff
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	lsl r3, r3, #8
	add r2, r0, #1
	str r2, [r4, #0xc]
	ldr r6, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r6, #8
	add r5, r0, #0
	add r6, #0x50
	lsl r0, r6, #0x18
	and r5, r3
	lsr r0, r0, #0x18
	lsl r1, r1, #8
	orr r5, r0
	ldr r0, _0222F5E4 ; =0x04000040
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	strh r5, [r0]
	orr r1, r3
	strh r1, [r0, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #0x26
	ble _0222F576
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222F576:
	mov r0, #0
	add r4, #0x20
	add sp, #4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222F580:
	ldr r0, [r4, #0x1c]
	mov r1, #0xe
	mov r2, #0
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0222F59A:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r3, [r0, #0]
	ldr r1, _0222F5E8 ; =0xFFFF1FFF
	and r1, r3
	add r3, r0, #0
	str r1, [r0, #0]
	add r3, #0x48
	ldrh r5, [r3]
	mov r1, #0x3f
	bic r5, r1
	strh r5, [r3]
	add r3, r0, #0
	add r3, #0x4a
	ldrh r5, [r3]
	bic r5, r1
	add r1, r0, #0
	strh r5, [r3]
	mov r3, #0
	add r1, #0x40
	strh r3, [r1]
	add r0, #0x44
	strh r3, [r0]
	ldr r0, [r4, #0x24]
	add r1, r2, #0
	bl ov12_02220220
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x18]
	mov r1, #0x17
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222F5E4: .word 0x04000040
_0222F5E8: .word 0xFFFF1FFF
	thumb_func_end ov12_0222F464

	thumb_func_start ov12_0222F5EC
ov12_0222F5EC: ; 0x0222F5EC
	push {r4, r5, r6, lr}
	mov r1, #0x50
	add r5, r0, #0
	bl ov12_02235E50
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x20
	bl ov12_0223595C
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_022232FC
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02235254
	cmp r0, #3
	beq _0222F62C
	cmp r0, #4
	bne _0222F640
_0222F62C:
	add r0, r5, #0
	bl ov12_0222339C
	add r1, r0, #0
	sub r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	bl sub_02019060
_0222F640:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_020080C0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0x1c]
	mov r1, #0x29
	bl sub_020080C0
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #0x1c]
	mov r1, #0x17
	bl sub_020080C0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	mov r1, #0x17
	mov r2, #8
	bl sub_02007DEC
	sub r6, #0x28
	str r6, [r4, #8]
	add r5, #0x28
	mov r6, #1
	lsl r6, r6, #0x1a
	add r3, r6, #0
	str r5, [r4, #4]
	mov r1, #0
	str r1, [r4, #0x10]
	ldr r0, [r4, #4]
	add r3, #0x48
	str r0, [r4, #0xc]
	str r1, [r4, #0x14]
	ldr r1, [r6, #0]
	ldr r0, _0222F6F8 ; =0xFFFF1FFF
	and r1, r0
	lsr r0, r6, #0xd
	orr r0, r1
	str r0, [r6, #0]
	ldrh r2, [r3]
	mov r1, #0x3f
	mov r0, #0x1f
	bic r2, r1
	orr r0, r2
	mov r2, #0x20
	orr r0, r2
	strh r0, [r3]
	add r3, r6, #0
	add r3, #0x4a
	ldrh r5, [r3]
	mov r0, #0x1b
	bic r5, r1
	orr r0, r5
	orr r0, r2
	strh r0, [r3]
	ldr r2, [r4, #8]
	mov r0, #0xff
	lsl r1, r2, #8
	add r2, #0x50
	lsl r0, r0, #8
	lsl r2, r2, #0x18
	and r1, r0
	lsr r2, r2, #0x18
	orr r2, r1
	add r1, r6, #0
	ldr r5, [r4, #0xc]
	ldr r3, [r4, #4]
	add r1, #0x40
	strh r2, [r1]
	lsl r1, r3, #8
	and r1, r0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	add r6, #0x44
	strh r0, [r6]
	ldr r0, [r4, #0x24]
	ldr r1, _0222F6FC ; =ov12_0222F464
	add r2, r4, #0
	bl ov12_022201E8
	pop {r4, r5, r6, pc}
	nop
_0222F6F8: .word 0xFFFF1FFF
_0222F6FC: .word ov12_0222F464
	thumb_func_end ov12_0222F5EC