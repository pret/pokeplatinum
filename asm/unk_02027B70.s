	.include "macros/function.inc"
	.include "include/unk_02027B70.inc"

	

	.text


	thumb_func_start sub_02027B70
sub_02027B70: ; 0x02027B70
	push {r4, lr}
	mov r2, #7
	mov r1, #0
	lsl r2, r2, #8
	add r4, r0, #0
	bl sub_020C4CF4
	mov r1, #0
	add r0, r1, #0
_02027B82:
	strb r0, [r4, #1]
	strb r0, [r4]
	add r1, r1, #1
	add r4, #0xe
	cmp r1, #0x80
	blt _02027B82
	pop {r4, pc}
	thumb_func_end sub_02027B70

	thumb_func_start sub_02027B90
sub_02027B90: ; 0x02027B90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02027BF4
	mov r4, #0
	str r0, [sp, #8]
	add r6, r4, #0
	b _02027BDE
_02027BA8:
	add r0, r5, #0
	bl sub_02027C50
	ldr r0, [sp]
	lsl r1, r6, #1
	add r7, r0, r1
	ldrh r0, [r0, r1]
	sub r0, #0x94
	strb r0, [r5]
	mov r0, #5
	strb r0, [r5, #1]
	ldrb r1, [r5]
	ldrb r2, [r5, #0xc]
	ldr r0, [sp, #8]
	bl sub_02027C7C
	lsl r0, r0, #2
	strh r0, [r5, #2]
	ldrh r0, [r7, #2]
	add r6, r6, #2
	add r4, r4, #1
	strh r0, [r5, #8]
	mov r0, #0x64
	strb r0, [r5, #0xa]
	mov r0, #3
	strb r0, [r5, #0xb]
	add r5, #0xe
_02027BDE:
	cmp r4, #0x80
	blt _02027BA8
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _02027BA8
	ldr r0, [sp, #8]
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02027B90

	thumb_func_start sub_02027BF4
sub_02027BF4: ; 0x02027BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	bl sub_0209739C
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0xc0
	bl sub_02018144
	str r0, [sp, #4]
	mov r6, #0
	add r5, r0, #0
_02027C0E:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020973A8
	add r4, r0, #0
	mov r1, #3
	bl sub_020973D4
	strb r0, [r5]
	add r0, r4, #0
	mov r1, #4
	bl sub_020973D4
	strb r0, [r5, #1]
	add r0, r4, #0
	mov r1, #2
	bl sub_020973D4
	strb r0, [r5, #2]
	add r0, r4, #0
	bl sub_020181C4
	add r6, r6, #1
	add r5, r5, #3
	cmp r6, #0x40
	blt _02027C0E
	ldr r0, [sp]
	bl sub_020973B0
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02027BF4

	thumb_func_start sub_02027C50
sub_02027C50: ; 0x02027C50
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	strh r1, [r0, #8]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	bx lr
	thumb_func_end sub_02027C50

	thumb_func_start sub_02027C68
sub_02027C68: ; 0x02027C68
	ldrb r2, [r0, #0xb]
	ldrb r0, [r0]
	sub r3, r0, #1
	lsl r0, r3, #1
	add r0, r3, r0
	add r0, r1, r0
	ldrb r0, [r0, #2]
	mul r0, r2
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027C68

	thumb_func_start sub_02027C7C
sub_02027C7C: ; 0x02027C7C
	sub r3, r1, #1
	lsl r1, r3, #1
	add r1, r3, r1
	ldrb r1, [r0, r1]
	mov r0, #0x3c
	mul r0, r1
	cmp r2, #1
	bne _02027C9A
	lsl r1, r0, #1
	add r1, r0, r1
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	bx lr
_02027C9A:
	cmp r2, #2
	bne _02027CA6
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	add r0, r0, r1
_02027CA6:
	bx lr
	thumb_func_end sub_02027C7C

	thumb_func_start sub_02027CA8
sub_02027CA8: ; 0x02027CA8
	sub r3, r1, #1
	lsl r1, r3, #1
	add r1, r3, r1
	add r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r2, #2
	bne _02027CBE
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	bx lr
_02027CBE:
	cmp r2, #1
	bne _02027CCA
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	add r0, r0, r1
_02027CCA:
	bx lr
	thumb_func_end sub_02027CA8

	thumb_func_start sub_02027CCC
sub_02027CCC: ; 0x02027CCC
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _02027CD6
	mov r0, #6
	bx lr
_02027CD6:
	mov r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027CCC

	thumb_func_start sub_02027CDC
sub_02027CDC: ; 0x02027CDC
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _02027CE6
	mov r0, #0xf
	bx lr
_02027CE6:
	mov r0, #0xa
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027CDC

	thumb_func_start sub_02027CEC
sub_02027CEC: ; 0x02027CEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02027CCC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02027CDC
	add r1, r4, #3
	mul r0, r1
	add r0, r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02027CEC

	thumb_func_start sub_02027D04
sub_02027D04: ; 0x02027D04
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D04

	thumb_func_start sub_02027D10
sub_02027D10: ; 0x02027D10
	mov r2, #0xe
	mul r2, r1
	ldrb r0, [r0, r2]
	bx lr
	thumb_func_end sub_02027D10

	thumb_func_start sub_02027D18
sub_02027D18: ; 0x02027D18
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _02027D28
	mov r0, #0
	bx lr
_02027D28:
	cmp r0, #0x32
	bgt _02027D30
	mov r0, #1
	bx lr
_02027D30:
	mov r0, #2
	bx lr
	thumb_func_end sub_02027D18

	thumb_func_start sub_02027D34
sub_02027D34: ; 0x02027D34
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0xb]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D34

	thumb_func_start sub_02027D40
sub_02027D40: ; 0x02027D40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xe
	mul r4, r0
	strb r3, [r5, r4]
	mov r0, #1
	add r6, r5, r4
	strb r0, [r6, #1]
	add r0, r2, #0
	ldrb r2, [r6, #0xc]
	add r1, r3, #0
	bl sub_02027C7C
	add r1, r6, #0
	strh r0, [r1, #2]
	mov r0, #0
	strh r0, [r1, #4]
	strb r0, [r1, #6]
	strh r0, [r1, #8]
	mov r0, #0x64
	strb r0, [r1, #0xa]
	mov r0, #5
	strb r0, [r1, #0xb]
	mov r0, #1
	strb r0, [r1, #0xd]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02027D40

	thumb_func_start sub_02027D78
sub_02027D78: ; 0x02027D78
	mov r2, #0xe
	mul r2, r1
	mov r3, #0x64
	add r0, r0, r2
	strb r3, [r0, #0xa]
	bx lr
	thumb_func_end sub_02027D78

	thumb_func_start sub_02027D84
sub_02027D84: ; 0x02027D84
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0xd]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D84

	thumb_func_start sub_02027D90
sub_02027D90: ; 0x02027D90
	mov r3, #0xe
	mul r3, r1
	add r0, r0, r3
	strb r2, [r0, #0xd]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D90

	thumb_func_start sub_02027D9C
sub_02027D9C: ; 0x02027D9C
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027D9C

	thumb_func_start sub_02027DA8
sub_02027DA8: ; 0x02027DA8
	mov r3, #0xe
	mul r3, r1
	add r0, r0, r3
	strb r2, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027DA8

	thumb_func_start sub_02027DB4
sub_02027DB4: ; 0x02027DB4
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrh r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02027DB4

	thumb_func_start sub_02027DC0
sub_02027DC0: ; 0x02027DC0
	push {r4, lr}
	mov r2, #0xe
	mul r2, r1
	add r0, r0, r2
	ldrh r4, [r0, #8]
	bl sub_02027C50
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02027DC0

	thumb_func_start sub_02027DD4
sub_02027DD4: ; 0x02027DD4
	push {r4, lr}
	add r4, r0, #0
	ldrb r2, [r4, #1]
	cmp r2, #5
	bhi _02027E3C
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02027DEA: ; jump table
	.short _02027DF6 - _02027DEA - 2 ; case 0
	.short _02027DFC - _02027DEA - 2 ; case 1
	.short _02027DFC - _02027DEA - 2 ; case 2
	.short _02027DFC - _02027DEA - 2 ; case 3
	.short _02027E02 - _02027DEA - 2 ; case 4
	.short _02027E1A - _02027DEA - 2 ; case 5
_02027DF6:
	bl sub_02022974
	pop {r4, pc}
_02027DFC:
	add r0, r2, #1
	strb r0, [r4, #1]
	pop {r4, pc}
_02027E02:
	bl sub_02027C68
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #2
	bhs _02027E12
	mov r0, #2
	strh r0, [r4, #8]
_02027E12:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
_02027E1A:
	mov r1, #0
	strh r1, [r4, #8]
	mov r1, #2
	strb r1, [r4, #1]
	mov r1, #5
	strb r1, [r4, #0xb]
	ldrb r1, [r4, #6]
	add r1, r1, #1
	strb r1, [r4, #6]
	bl sub_02027CDC
	ldrb r1, [r4, #6]
	cmp r1, r0
	bne _02027E3C
	add r0, r4, #0
	bl sub_02027C50
_02027E3C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02027DD4

	thumb_func_start sub_02027E40
sub_02027E40: ; 0x02027E40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #1]
	add r7, r2, #0
	cmp r0, #5
	beq _02027EAA
	add r0, r1, #0
	ldrb r1, [r5]
	ldrb r2, [r5, #0xc]
	bl sub_02027CA8
	add r6, r0, #0
	ldrh r0, [r5, #4]
	mov r1, #0x3c
	str r0, [sp]
	add r0, r7, r0
	bl sub_020E1F6C
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x3c
	add r0, r7, r0
	bl sub_020E1F6C
	strh r1, [r5, #4]
	cmp r4, #0
	beq _02027EAA
	ldrb r1, [r5, #0xa]
	add r0, r6, #0
	mul r0, r4
	cmp r1, r0
	blt _02027E86
	sub r0, r1, r0
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02027E86:
	cmp r1, #0
	beq _02027E9A
	sub r0, r6, #1
	add r0, r1, r0
	add r1, r6, #0
	bl sub_020E1F6C
	sub r4, r4, r0
	mov r0, #0
	strb r0, [r5, #0xa]
_02027E9A:
	ldrb r0, [r5, #0xb]
	cmp r0, r4
	ble _02027EA6
	sub r0, r0, r4
	strb r0, [r5, #0xb]
	pop {r3, r4, r5, r6, r7, pc}
_02027EA6:
	mov r0, #0
	strb r0, [r5, #0xb]
_02027EAA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02027E40

	thumb_func_start sub_02027EAC
sub_02027EAC: ; 0x02027EAC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r0, [sp]
_02027EB8:
	ldrb r1, [r4]
	cmp r1, #0
	beq _02027F40
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02027F40
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _02027F40
	ldrb r2, [r4, #0xc]
	add r0, r6, #0
	bl sub_02027C7C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02027CEC
	mul r0, r5
	cmp r7, r0
	blt _02027EE8
	add r0, r4, #0
	bl sub_02027C50
	b _02027F40
_02027EE8:
	add r5, r7, #0
	b _02027F36
_02027EEC:
	ldrh r2, [r4, #2]
	cmp r2, r5
	ble _02027F04
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02027E40
	ldrh r0, [r4, #2]
	sub r0, r0, r5
	strh r0, [r4, #2]
	b _02027F40
_02027F04:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02027E40
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02027DD4
	ldrh r0, [r4, #2]
	ldrb r1, [r4]
	ldrb r2, [r4, #0xc]
	sub r5, r5, r0
	add r0, r6, #0
	bl sub_02027C7C
	strh r0, [r4, #2]
	ldrb r0, [r4, #1]
	cmp r0, #5
	bne _02027F36
	add r0, r4, #0
	bl sub_02027CCC
	ldrh r1, [r4, #2]
	mul r0, r1
	strh r0, [r4, #2]
_02027F36:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02027F40
	cmp r5, #0
	bne _02027EEC
_02027F40:
	ldr r0, [sp]
	add r4, #0xe
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x80
	blt _02027EB8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02027EAC