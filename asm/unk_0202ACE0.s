	.include "macros/function.inc"
	.include "include/unk_0202ACE0.inc"

	

	.text


	thumb_func_start sub_0202ACE0
sub_0202ACE0: ; 0x0202ACE0
	mov r0, #0x23
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202ACE0

	thumb_func_start sub_0202ACE8
sub_0202ACE8: ; 0x0202ACE8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r2, #0x23
	mov r0, #0
	add r1, r7, #0
	lsl r2, r2, #6
	bl sub_020C4BB8
	mov r0, #0x1d
	lsl r0, r0, #4
	add r1, r0, #0
	add r2, r0, #0
	ldr r4, _0202AD24 ; =0x0000FFFF
	mov r5, #0
	add r6, r7, #0
	mov r3, #2
	sub r1, #0x10
	add r2, #0x1e
_0202AD0C:
	strh r4, [r6, r0]
	strh r4, [r6, r1]
	strb r3, [r6, r2]
	add r5, r5, #1
	add r6, #0x38
	cmp r5, #0x20
	blt _0202AD0C
	add r0, r7, #0
	bl sub_02039034
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202AD24: .word 0x0000FFFF
	thumb_func_end sub_0202ACE8

	thumb_func_start sub_0202AD28
sub_0202AD28: ; 0x0202AD28
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202AD28

	thumb_func_start sub_0202AD2C
sub_0202AD2C: ; 0x0202AD2C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	cmp r4, #0x20
	blt _0202AD3C
	bl sub_02022974
_0202AD3C:
	cmp r7, #0xc
	bhi _0202AE0C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202AD4C: ; jump table
	.short _0202AD66 - _0202AD4C - 2 ; case 0
	.short _0202AD74 - _0202AD4C - 2 ; case 1
	.short _0202AD82 - _0202AD4C - 2 ; case 2
	.short _0202AD8E - _0202AD4C - 2 ; case 3
	.short _0202AD9C - _0202AD4C - 2 ; case 4
	.short _0202ADA8 - _0202AD4C - 2 ; case 5
	.short _0202ADB6 - _0202AD4C - 2 ; case 6
	.short _0202ADCE - _0202AD4C - 2 ; case 7
	.short _0202ADC2 - _0202AD4C - 2 ; case 8
	.short _0202ADDA - _0202AD4C - 2 ; case 9
	.short _0202ADE8 - _0202AD4C - 2 ; case 10
	.short _0202ADF4 - _0202AD4C - 2 ; case 11
	.short _0202AE02 - _0202AD4C - 2 ; case 12
_0202AD66:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r6, [r1, r0]
	b _0202AE0C
_0202AD74:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x79
	lsl r0, r0, #2
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202AD82:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE10 ; =0x000001E6
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202AD8E:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202AD9C:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE14 ; =0x000001EA
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202ADA8:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	ldrb r6, [r1, r0]
	b _0202AE0C
_0202ADB6:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE18 ; =0x000001ED
	ldrb r6, [r1, r0]
	b _0202AE0C
_0202ADC2:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE1C ; =0x000001EE
	ldrb r6, [r1, r0]
	b _0202AE0C
_0202ADCE:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE20 ; =0x000001EF
	ldrb r6, [r1, r0]
	b _0202AE0C
_0202ADDA:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x1f
	lsl r0, r0, #4
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202ADE8:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE24 ; =0x000001F2
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202ADF4:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x7d
	lsl r0, r0, #2
	ldrh r6, [r1, r0]
	b _0202AE0C
_0202AE02:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AE28 ; =0x000001F6
	ldrh r6, [r1, r0]
_0202AE0C:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202AE10: .word 0x000001E6
_0202AE14: .word 0x000001EA
_0202AE18: .word 0x000001ED
_0202AE1C: .word 0x000001EE
_0202AE20: .word 0x000001EF
_0202AE24: .word 0x000001F2
_0202AE28: .word 0x000001F6
	thumb_func_end sub_0202AD2C

	thumb_func_start sub_0202AE2C
sub_0202AE2C: ; 0x0202AE2C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r4, #0x20
	blt _0202AE3E
	bl sub_02022974
_0202AE3E:
	cmp r7, #9
	bhi _0202AEC4
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202AE4E: ; jump table
	.short _0202AE62 - _0202AE4E - 2 ; case 0
	.short _0202AE70 - _0202AE4E - 2 ; case 1
	.short _0202AE76 - _0202AE4E - 2 ; case 2
	.short _0202AE7C - _0202AE4E - 2 ; case 3
	.short _0202AE82 - _0202AE4E - 2 ; case 4
	.short _0202AE8E - _0202AE4E - 2 ; case 5
	.short _0202AE9C - _0202AE4E - 2 ; case 6
	.short _0202AEB4 - _0202AE4E - 2 ; case 7
	.short _0202AEA8 - _0202AE4E - 2 ; case 8
	.short _0202AEC0 - _0202AE4E - 2 ; case 9
_0202AE62:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	str r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AE70:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_0202AE76:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_0202AE7C:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_0202AE82:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AEC8 ; =0x000001EA
	strh r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AE8E:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x7b
	lsl r0, r0, #2
	strb r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AE9C:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AECC ; =0x000001ED
	strb r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AEA8:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AED0 ; =0x000001EE
	strb r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AEB4:
	mov r0, #0x38
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0202AED4 ; =0x000001EF
	strb r6, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0202AEC0:
	bl sub_02022974
_0202AEC4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202AEC8: .word 0x000001EA
_0202AECC: .word 0x000001ED
_0202AED0: .word 0x000001EE
_0202AED4: .word 0x000001EF
	thumb_func_end sub_0202AE2C

	thumb_func_start sub_0202AED8
sub_0202AED8: ; 0x0202AED8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _0202AEE6
	bl sub_02022974
_0202AEE6:
	mov r0, #0xc
	add r5, #0x40
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202AED8

	thumb_func_start sub_0202AEF0
sub_0202AEF0: ; 0x0202AEF0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _0202AEFE
	bl sub_02022974
_0202AEFE:
	mov r0, #0x1d
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0x38
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202AEF0

	thumb_func_start sub_0202AF0C
sub_0202AF0C: ; 0x0202AF0C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x20
	blt _0202AF1C
	bl sub_02022974
_0202AF1C:
	mov r1, #0x1d
	lsl r1, r1, #4
	add r2, r5, r1
	mov r1, #0x38
	mul r1, r4
	add r1, r2, r1
	add r0, r6, #0
	mov r2, #0x10
	bl sub_02023DF0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202AF0C

	thumb_func_start sub_0202AF34
sub_0202AF34: ; 0x0202AF34
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _0202AF42
	bl sub_02022974
_0202AF42:
	mov r0, #7
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x38
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202AF34

	thumb_func_start sub_0202AF50
sub_0202AF50: ; 0x0202AF50
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x20
	blt _0202AF60
	bl sub_02022974
_0202AF60:
	mov r1, #7
	lsl r1, r1, #6
	add r2, r5, r1
	mov r1, #0x38
	mul r1, r4
	add r1, r2, r1
	add r0, r6, #0
	mov r2, #0x10
	bl sub_02023DF0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202AF50

	thumb_func_start sub_0202AF78
sub_0202AF78: ; 0x0202AF78
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _0202AF86
	bl sub_02022974
_0202AF86:
	mov r0, #0xc
	add r5, #0x40
	mul r0, r4
	add r0, r5, r0
	bl sub_020A4498
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202AF78

	thumb_func_start sub_0202AF94
sub_0202AF94: ; 0x0202AF94
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_0202AF9C:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	beq _0202AFAA
	add r5, r5, #1
_0202AFAA:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0202AF9C
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202AF94

	thumb_func_start sub_0202AFB4
sub_0202AFB4: ; 0x0202AFB4
	push {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
_0202AFBC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	beq _0202AFCA
	add r6, r4, #1
_0202AFCA:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0202AFBC
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202AFB4

	thumb_func_start sub_0202AFD4
sub_0202AFD4: ; 0x0202AFD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	cmp r5, #0x20
	blt _0202AFE4
	bl sub_02022974
_0202AFE4:
	cmp r5, #0x1f
	bge _0202B03E
	mov r1, #7
	ldr r0, [sp]
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0x38
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
	ldr r0, [sp]
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, #0x40
	str r0, [sp, #8]
	mov r0, #0xc
	mul r1, r0
	ldr r0, [sp, #8]
	add r4, r0, r1
_0202B00E:
	add r7, r5, #1
	mov r0, #0x38
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r2, #0x38
	add r0, r0, r1
	add r1, r6, #0
	bl sub_020C4DB0
	mov r0, #0xc
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #8]
	mov r2, #0xc
	add r0, r0, r1
	add r1, r4, #0
	bl sub_020C4DB0
	add r5, r5, #1
	add r6, #0x38
	add r4, #0xc
	cmp r5, #0x1f
	blt _0202B00E
_0202B03E:
	mov r2, #7
	ldr r1, [sp]
	lsl r2, r2, #6
	add r2, r1, r2
	ldr r1, _0202B07C ; =0x000006C8
	mov r0, #0
	add r1, r2, r1
	mov r2, #0x38
	bl sub_020C4BB8
	ldr r2, [sp]
	mov r1, #0x5d
	add r2, #0x40
	lsl r1, r1, #2
	add r1, r2, r1
	mov r0, #0
	mov r2, #0xc
	bl sub_020C4BB8
	ldr r2, _0202B080 ; =0x00000898
	ldr r3, _0202B084 ; =0x0000FFFF
	ldr r0, [sp]
	add r1, r2, #0
	strh r3, [r0, r2]
	sub r1, #0x10
	strh r3, [r0, r1]
	mov r1, #2
	add r2, #0x1e
	strb r1, [r0, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202B07C: .word 0x000006C8
_0202B080: .word 0x00000898
_0202B084: .word 0x0000FFFF
	thumb_func_end sub_0202AFD4

	thumb_func_start sub_0202B088
sub_0202B088: ; 0x0202B088
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r2, #0x38
	add r5, r0, #0
	lsl r0, r2, #3
	add r3, r1, #0
	mul r5, r2
	add r4, r7, r0
	mul r3, r2
	str r1, [sp]
	add r0, r4, r5
	add r1, r4, r3
	bl sub_020C4DB0
	ldr r0, [sp, #4]
	add r6, r7, #0
	mov r3, #0xc
	add r1, r0, #0
	mul r1, r3
	add r6, #0x40
	str r1, [sp, #8]
	add r0, r6, r1
	ldr r1, [sp]
	add r2, r1, #0
	mul r2, r3
	add r1, r6, r2
	add r2, r3, #0
	bl sub_020C4DB0
	mov r0, #0
	add r1, r4, r5
	mov r2, #0x38
	bl sub_020C4BB8
	ldr r1, [sp, #8]
	mov r0, #0
	add r1, r6, r1
	mov r2, #0xc
	bl sub_020C4BB8
	mov r0, #0x1d
	ldr r1, _0202B0F4 ; =0x0000FFFF
	add r2, r7, r5
	lsl r0, r0, #4
	strh r1, [r2, r0]
	strh r1, [r4, r5]
	mov r1, #2
	add r0, #0x1e
	strb r1, [r2, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202B0F4: .word 0x0000FFFF
	thumb_func_end sub_0202B088

	thumb_func_start sub_0202B0F8
sub_0202B0F8: ; 0x0202B0F8
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mvn r5, r5
	add r6, r0, #0
	mov r4, #0
	add r7, r5, #0
_0202B104:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202AF78
	cmp r0, #0
	beq _0202B128
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _0202B132
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202B088
	add r4, r7, #0
	add r5, r7, #0
	b _0202B132
_0202B128:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _0202B132
	add r5, r4, #0
_0202B132:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0202B104
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202B0F8

	thumb_func_start sub_0202B13C
sub_0202B13C: ; 0x0202B13C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	bl sub_020138A4
	mov r0, #0x38
	add r2, r4, #0
	mul r2, r0
	mov r0, #0x7d
	ldr r1, [sp]
	lsl r0, r0, #4
	add r1, r1, r0
	ldr r0, _0202B170 ; =0x000001EA
	add r3, r5, r2
	strh r1, [r3, r0]
	add r1, r0, #2
	ldr r2, [sp, #4]
	add r0, r0, #3
	strb r2, [r3, r1]
	ldr r1, [sp, #8]
	strb r1, [r3, r0]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0202B170: .word 0x000001EA
	thumb_func_end sub_0202B13C

	thumb_func_start sub_0202B174
sub_0202B174: ; 0x0202B174
	push {r4, r5, r6, lr}
	mov r5, #0x79
	add r4, r0, #0
	mov r0, #0x38
	lsl r5, r5, #2
	mul r0, r1
	add r5, r4, r5
	ldrh r6, [r5, r0]
	add r2, r6, r2
	strh r2, [r5, r0]
	ldrh r6, [r5, r0]
	ldr r2, _0202B1C8 ; =0x0000270F
	cmp r6, r2
	bls _0202B192
	strh r2, [r5, r0]
_0202B192:
	ldr r2, _0202B1CC ; =0x000001E6
	add r2, r4, r2
	ldrh r5, [r2, r0]
	add r3, r5, r3
	strh r3, [r2, r0]
	ldrh r5, [r2, r0]
	ldr r3, _0202B1C8 ; =0x0000270F
	cmp r5, r3
	bls _0202B1A6
	strh r3, [r2, r0]
_0202B1A6:
	mov r2, #0x7a
	lsl r2, r2, #2
	add r2, r4, r2
	ldrh r5, [r2, r0]
	ldr r3, [sp, #0x10]
	add r3, r5, r3
	strh r3, [r2, r0]
	ldrh r5, [r2, r0]
	ldr r3, _0202B1C8 ; =0x0000270F
	cmp r5, r3
	bls _0202B1BE
	strh r3, [r2, r0]
_0202B1BE:
	add r0, r4, #0
	bl sub_0202B13C
	pop {r4, r5, r6, pc}
	nop
_0202B1C8: .word 0x0000270F
_0202B1CC: .word 0x000001E6
	thumb_func_end sub_0202B174

	thumb_func_start sub_0202B1D0
sub_0202B1D0: ; 0x0202B1D0
	push {r3, r4, r5, lr}
	mov r3, #0x1f
	lsl r3, r3, #4
	add r4, r0, r3
	mov r3, #0x38
	mul r3, r1
	ldrh r5, [r4, r3]
	add r2, r5, r2
	strh r2, [r4, r3]
	ldrh r5, [r4, r3]
	ldr r2, _0202B1F4 ; =0x0000270F
	cmp r5, r2
	bls _0202B1EC
	strh r2, [r4, r3]
_0202B1EC:
	bl sub_0202B13C
	pop {r3, r4, r5, pc}
	nop
_0202B1F4: .word 0x0000270F
	thumb_func_end sub_0202B1D0

	thumb_func_start sub_0202B1F8
sub_0202B1F8: ; 0x0202B1F8
	push {r3, r4, r5, lr}
	ldr r3, _0202B218 ; =0x000001F2
	add r4, r0, r3
	mov r3, #0x38
	mul r3, r1
	ldrh r5, [r4, r3]
	add r2, r5, r2
	strh r2, [r4, r3]
	ldrh r5, [r4, r3]
	ldr r2, _0202B21C ; =0x0000270F
	cmp r5, r2
	bls _0202B212
	strh r2, [r4, r3]
_0202B212:
	bl sub_0202B13C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202B218: .word 0x000001F2
_0202B21C: .word 0x0000270F
	thumb_func_end sub_0202B1F8

	thumb_func_start sub_0202B220
sub_0202B220: ; 0x0202B220
	push {r3, r4, r5, lr}
	mov r3, #0x7d
	lsl r3, r3, #2
	add r4, r0, r3
	mov r3, #0x38
	mul r3, r1
	ldrh r5, [r4, r3]
	add r2, r5, r2
	strh r2, [r4, r3]
	ldrh r5, [r4, r3]
	ldr r2, _0202B244 ; =0x0000270F
	cmp r5, r2
	bls _0202B23C
	strh r2, [r4, r3]
_0202B23C:
	bl sub_0202B13C
	pop {r3, r4, r5, pc}
	nop
_0202B244: .word 0x0000270F
	thumb_func_end sub_0202B220

	thumb_func_start sub_0202B248
sub_0202B248: ; 0x0202B248
	push {r3, r4, r5, lr}
	ldr r3, _0202B268 ; =0x000001F6
	add r4, r0, r3
	mov r3, #0x38
	mul r3, r1
	ldrh r5, [r4, r3]
	add r2, r5, r2
	strh r2, [r4, r3]
	ldrh r5, [r4, r3]
	ldr r2, _0202B26C ; =0x0000270F
	cmp r5, r2
	bls _0202B262
	strh r2, [r4, r3]
_0202B262:
	bl sub_0202B13C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202B268: .word 0x000001F6
_0202B26C: .word 0x0000270F
	thumb_func_end sub_0202B248

	thumb_func_start sub_0202B270
sub_0202B270: ; 0x0202B270
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x38
	mov r3, #0x79
	mul r4, r0
	add r1, r2, #0
	lsl r3, r3, #2
	mul r1, r0
	add r2, r5, r3
	add r6, r5, r4
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B298
	strh r0, [r2, r1]
_0202B298:
	ldr r3, _0202B360 ; =0x000001E6
	add r6, r5, r4
	add r2, r5, r3
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B2B0
	strh r0, [r2, r1]
_0202B2B0:
	mov r3, #0x7a
	lsl r3, r3, #2
	add r2, r5, r3
	add r6, r5, r4
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B2CA
	strh r0, [r2, r1]
_0202B2CA:
	mov r3, #0x1f
	lsl r3, r3, #4
	add r2, r5, r3
	add r6, r5, r4
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B2E4
	strh r0, [r2, r1]
_0202B2E4:
	ldr r3, _0202B364 ; =0x000001F2
	add r6, r5, r4
	add r2, r5, r3
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B2FC
	strh r0, [r2, r1]
_0202B2FC:
	mov r3, #0x7d
	lsl r3, r3, #2
	add r2, r5, r3
	add r6, r5, r4
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B316
	strh r0, [r2, r1]
_0202B316:
	ldr r3, _0202B368 ; =0x000001F6
	add r6, r5, r4
	add r2, r5, r3
	ldrh r0, [r2, r1]
	ldrh r3, [r6, r3]
	add r0, r0, r3
	strh r0, [r2, r1]
	ldrh r3, [r2, r1]
	ldr r0, _0202B35C ; =0x0000270F
	cmp r3, r0
	bls _0202B32E
	strh r0, [r2, r1]
_0202B32E:
	mov r0, #7
	lsl r0, r0, #6
	add r6, r5, r0
	add r0, r6, r4
	add r1, r6, r1
	mov r2, #0x10
	bl sub_020C4C14
	mov r0, #0
	add r1, r6, r4
	mov r2, #0x38
	bl sub_020C4BB8
	mov r0, #0x1d
	ldr r1, _0202B36C ; =0x0000FFFF
	add r2, r5, r4
	lsl r0, r0, #4
	strh r1, [r2, r0]
	strh r1, [r6, r4]
	mov r1, #2
	add r0, #0x1e
	strb r1, [r2, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202B35C: .word 0x0000270F
_0202B360: .word 0x000001E6
_0202B364: .word 0x000001F2
_0202B368: .word 0x000001F6
_0202B36C: .word 0x0000FFFF
	thumb_func_end sub_0202B270

	thumb_func_start sub_0202B370
sub_0202B370: ; 0x0202B370
	ldr r3, _0202B378 ; =sub_020245BC
	mov r1, #0x1d
	bx r3
	nop
_0202B378: .word sub_020245BC
	thumb_func_end sub_0202B370